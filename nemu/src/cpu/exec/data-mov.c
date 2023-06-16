#include "cpu/exec.h"

make_EHelper(mov)
{
    operand_write(id_dest, &id_src->val);
    print_asm_template2(mov);
}

make_EHelper(push)
{
    rtl_push(&id_dest->val);
    print_asm_template1(push);
}

make_EHelper(pop)
{
    rtl_pop(&id_dest->val);
    operand_write(id_dest, &id_dest->val);
    print_asm_template1(pop);
}

make_EHelper(pusha)
{
    rtlreg_t tmp,resp;
    if (decoding.is_operand_size_16) {
        rtl_lr_w(&resp, R_SP);
        rtl_lr_w(&tmp, R_AX);
        rtl_push(&tmp);
        rtl_lr_w(&tmp, R_CX);
        rtl_push(&tmp);
        rtl_lr_w(&tmp, R_DX);
        rtl_push(&tmp);
        rtl_lr_w(&tmp, R_BX);
        rtl_push(&tmp);
        rtl_push(&resp);
        rtl_lr_w(&tmp, R_BP);
        rtl_push(&tmp);
        rtl_lr_w(&tmp, R_SI);
        rtl_push(&tmp);
        rtl_lr_w(&tmp, R_DI);
        rtl_push(&tmp);

    } else {
        rtl_lr_l(&resp, R_ESP);
        rtl_lr_l(&tmp, R_EAX);
        rtl_push(&tmp);
        rtl_lr_l(&tmp, R_ECX);
        rtl_push(&tmp);
        rtl_lr_l(&tmp, R_EDX);
        rtl_push(&tmp);
        rtl_lr_l(&tmp, R_EBX);
        rtl_push(&tmp);
        rtl_push(&resp);
        rtl_lr_l(&tmp, R_EBP);
        rtl_push(&tmp);
        rtl_lr_l(&tmp, R_ESI);
        rtl_push(&tmp);
        rtl_lr_l(&tmp, R_EDI);
        rtl_push(&tmp);
    }
    print_asm("pusha");
}

make_EHelper(popa)
{
    rtlreg_t tmp;
    if (decoding.is_operand_size_16) {
        rtl_pop(&tmp);
        rtl_sr_w(R_DI, &tmp);
        rtl_pop(&tmp);
        rtl_sr_w(R_SI, &tmp);
        rtl_pop(&tmp);
        rtl_sr_w(R_BP, &tmp);
        rtl_pop(&tmp);
        rtl_pop(&tmp);
        rtl_sr_w(R_BX, &tmp);
        rtl_pop(&tmp);
        rtl_sr_w(R_DX, &tmp);
        rtl_pop(&tmp);
        rtl_sr_w(R_CX, &tmp);
        rtl_pop(&tmp);
        rtl_sr_w(R_AX, &tmp);
    } else {
        rtl_pop(&tmp);
        rtl_sr_l(R_EDI, &tmp);
        rtl_pop(&tmp);
        rtl_sr_l(R_ESI, &tmp);
        rtl_pop(&tmp);
        rtl_sr_l(R_EBP, &tmp);
        rtl_pop(&tmp);
        rtl_pop(&tmp);
        rtl_sr_l(R_EBX, &tmp);
        rtl_pop(&tmp);
        rtl_sr_l(R_EDX, &tmp);
        rtl_pop(&tmp);
        rtl_sr_l(R_ECX, &tmp);
        rtl_pop(&tmp);
        rtl_sr_l(R_EAX, &tmp);
    }

    print_asm("popa");
}

make_EHelper(leave)
{
    rtl_mv(&cpu.esp, &cpu.ebp);
    rtl_pop(&cpu.ebp);

    print_asm("leave");
}

make_EHelper(cltd)
{
    if (decoding.is_operand_size_16) {
        if ((int16_t)(cpu.eax) < 0) {
            cpu.edx = 0xffff;
        } else {
            cpu.edx = 0;
        }
    } else {
        if ((int32_t)(cpu.eax) < 0) {
            cpu.edx = 0xffffffff;
        } else {
            cpu.edx = 0;
        }
    }

    print_asm(decoding.is_operand_size_16 ? "cwtl" : "cltd");
}

make_EHelper(cwtl)
{
    if (decoding.is_operand_size_16) {
        rtl_lr_b(&t0, R_AL);
        rtl_sext(&t0, &t0, 1);
        rtl_sr_w(R_AX, &t0);
    } else {
        rtl_lr_w(&t0, R_AX);
        rtl_sext(&t0, &t0, 2);
        rtl_sr_l(R_EAX, &t0);
    }

    print_asm(decoding.is_operand_size_16 ? "cbtw" : "cwtl");
}

make_EHelper(movsx)
{
    id_dest->width = decoding.is_operand_size_16 ? 2 : 4;
    rtl_sext(&t2, &id_src->val, id_src->width);
    operand_write(id_dest, &t2);
    print_asm_template2(movsx);
}

make_EHelper(movzx)
{
    id_dest->width = decoding.is_operand_size_16 ? 2 : 4;
    operand_write(id_dest, &id_src->val);
    print_asm_template2(movzx);
}

make_EHelper(lea)
{
    rtl_li(&t2, id_src->addr);
    operand_write(id_dest, &t2);
    print_asm_template2(lea);
}
