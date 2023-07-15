
bomb：     文件格式 elf32-i386


Disassembly of section .init:

08048694 <_init>:
 8048694:	53                   	push   %ebx
 8048695:	83 ec 08             	sub    $0x8,%esp
 8048698:	e8 13 02 00 00       	call   80488b0 <__x86.get_pc_thunk.bx>
 804869d:	81 c3 63 39 00 00    	add    $0x3963,%ebx
 80486a3:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80486a9:	85 c0                	test   %eax,%eax
 80486ab:	74 05                	je     80486b2 <_init+0x1e>
 80486ad:	e8 be 01 00 00       	call   8048870 <__ctype_b_loc@plt+0x10>
 80486b2:	83 c4 08             	add    $0x8,%esp
 80486b5:	5b                   	pop    %ebx
 80486b6:	c3                   	ret    

Disassembly of section .plt:

080486c0 <read@plt-0x10>:
 80486c0:	ff 35 04 c0 04 08    	pushl  0x804c004
 80486c6:	ff 25 08 c0 04 08    	jmp    *0x804c008
 80486cc:	00 00                	add    %al,(%eax)
	...

080486d0 <read@plt>:
 80486d0:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 80486d6:	68 00 00 00 00       	push   $0x0
 80486db:	e9 e0 ff ff ff       	jmp    80486c0 <_init+0x2c>

080486e0 <printf@plt>:
 80486e0:	ff 25 10 c0 04 08    	jmp    *0x804c010
 80486e6:	68 08 00 00 00       	push   $0x8
 80486eb:	e9 d0 ff ff ff       	jmp    80486c0 <_init+0x2c>

080486f0 <fflush@plt>:
 80486f0:	ff 25 14 c0 04 08    	jmp    *0x804c014
 80486f6:	68 10 00 00 00       	push   $0x10
 80486fb:	e9 c0 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048700 <memcpy@plt>:
 8048700:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048706:	68 18 00 00 00       	push   $0x18
 804870b:	e9 b0 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048710 <fgets@plt>:
 8048710:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048716:	68 20 00 00 00       	push   $0x20
 804871b:	e9 a0 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048720 <signal@plt>:
 8048720:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048726:	68 28 00 00 00       	push   $0x28
 804872b:	e9 90 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048730 <sleep@plt>:
 8048730:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048736:	68 30 00 00 00       	push   $0x30
 804873b:	e9 80 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048740 <alarm@plt>:
 8048740:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048746:	68 38 00 00 00       	push   $0x38
 804874b:	e9 70 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048750 <bcopy@plt>:
 8048750:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 8048756:	68 40 00 00 00       	push   $0x40
 804875b:	e9 60 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048760 <strcpy@plt>:
 8048760:	ff 25 30 c0 04 08    	jmp    *0x804c030
 8048766:	68 48 00 00 00       	push   $0x48
 804876b:	e9 50 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048770 <getenv@plt>:
 8048770:	ff 25 34 c0 04 08    	jmp    *0x804c034
 8048776:	68 50 00 00 00       	push   $0x50
 804877b:	e9 40 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048780 <puts@plt>:
 8048780:	ff 25 38 c0 04 08    	jmp    *0x804c038
 8048786:	68 58 00 00 00       	push   $0x58
 804878b:	e9 30 ff ff ff       	jmp    80486c0 <_init+0x2c>

08048790 <exit@plt>:
 8048790:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 8048796:	68 60 00 00 00       	push   $0x60
 804879b:	e9 20 ff ff ff       	jmp    80486c0 <_init+0x2c>

080487a0 <__libc_start_main@plt>:
 80487a0:	ff 25 40 c0 04 08    	jmp    *0x804c040
 80487a6:	68 68 00 00 00       	push   $0x68
 80487ab:	e9 10 ff ff ff       	jmp    80486c0 <_init+0x2c>

080487b0 <fprintf@plt>:
 80487b0:	ff 25 44 c0 04 08    	jmp    *0x804c044
 80487b6:	68 70 00 00 00       	push   $0x70
 80487bb:	e9 00 ff ff ff       	jmp    80486c0 <_init+0x2c>

080487c0 <write@plt>:
 80487c0:	ff 25 48 c0 04 08    	jmp    *0x804c048
 80487c6:	68 78 00 00 00       	push   $0x78
 80487cb:	e9 f0 fe ff ff       	jmp    80486c0 <_init+0x2c>

080487d0 <__isoc99_sscanf@plt>:
 80487d0:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 80487d6:	68 80 00 00 00       	push   $0x80
 80487db:	e9 e0 fe ff ff       	jmp    80486c0 <_init+0x2c>

080487e0 <fopen@plt>:
 80487e0:	ff 25 50 c0 04 08    	jmp    *0x804c050
 80487e6:	68 88 00 00 00       	push   $0x88
 80487eb:	e9 d0 fe ff ff       	jmp    80486c0 <_init+0x2c>

080487f0 <__errno_location@plt>:
 80487f0:	ff 25 54 c0 04 08    	jmp    *0x804c054
 80487f6:	68 90 00 00 00       	push   $0x90
 80487fb:	e9 c0 fe ff ff       	jmp    80486c0 <_init+0x2c>

08048800 <sprintf@plt>:
 8048800:	ff 25 58 c0 04 08    	jmp    *0x804c058
 8048806:	68 98 00 00 00       	push   $0x98
 804880b:	e9 b0 fe ff ff       	jmp    80486c0 <_init+0x2c>

08048810 <socket@plt>:
 8048810:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 8048816:	68 a0 00 00 00       	push   $0xa0
 804881b:	e9 a0 fe ff ff       	jmp    80486c0 <_init+0x2c>

08048820 <gethostbyname@plt>:
 8048820:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048826:	68 a8 00 00 00       	push   $0xa8
 804882b:	e9 90 fe ff ff       	jmp    80486c0 <_init+0x2c>

08048830 <strtol@plt>:
 8048830:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048836:	68 b0 00 00 00       	push   $0xb0
 804883b:	e9 80 fe ff ff       	jmp    80486c0 <_init+0x2c>

08048840 <connect@plt>:
 8048840:	ff 25 68 c0 04 08    	jmp    *0x804c068
 8048846:	68 b8 00 00 00       	push   $0xb8
 804884b:	e9 70 fe ff ff       	jmp    80486c0 <_init+0x2c>

08048850 <close@plt>:
 8048850:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 8048856:	68 c0 00 00 00       	push   $0xc0
 804885b:	e9 60 fe ff ff       	jmp    80486c0 <_init+0x2c>

08048860 <__ctype_b_loc@plt>:
 8048860:	ff 25 70 c0 04 08    	jmp    *0x804c070
 8048866:	68 c8 00 00 00       	push   $0xc8
 804886b:	e9 50 fe ff ff       	jmp    80486c0 <_init+0x2c>

Disassembly of section .plt.got:

08048870 <.plt.got>:
 8048870:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 8048876:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048880 <_start>:
 8048880:	31 ed                	xor    %ebp,%ebp
 8048882:	5e                   	pop    %esi
 8048883:	89 e1                	mov    %esp,%ecx
 8048885:	83 e4 f0             	and    $0xfffffff0,%esp
 8048888:	50                   	push   %eax
 8048889:	54                   	push   %esp
 804888a:	52                   	push   %edx
 804888b:	68 90 a0 04 08       	push   $0x804a090
 8048890:	68 20 a0 04 08       	push   $0x804a020
 8048895:	51                   	push   %ecx
 8048896:	56                   	push   %esi
 8048897:	68 7d 89 04 08       	push   $0x804897d
 804889c:	e8 ff fe ff ff       	call   80487a0 <__libc_start_main@plt>
 80488a1:	f4                   	hlt    
 80488a2:	66 90                	xchg   %ax,%ax
 80488a4:	66 90                	xchg   %ax,%ax
 80488a6:	66 90                	xchg   %ax,%ax
 80488a8:	66 90                	xchg   %ax,%ax
 80488aa:	66 90                	xchg   %ax,%ax
 80488ac:	66 90                	xchg   %ax,%ax
 80488ae:	66 90                	xchg   %ax,%ax

080488b0 <__x86.get_pc_thunk.bx>:
 80488b0:	8b 1c 24             	mov    (%esp),%ebx
 80488b3:	c3                   	ret    
 80488b4:	66 90                	xchg   %ax,%ax
 80488b6:	66 90                	xchg   %ax,%ax
 80488b8:	66 90                	xchg   %ax,%ax
 80488ba:	66 90                	xchg   %ax,%ax
 80488bc:	66 90                	xchg   %ax,%ax
 80488be:	66 90                	xchg   %ax,%ax

080488c0 <deregister_tm_clones>:
 80488c0:	b8 c3 c7 04 08       	mov    $0x804c7c3,%eax
 80488c5:	2d c0 c7 04 08       	sub    $0x804c7c0,%eax
 80488ca:	83 f8 06             	cmp    $0x6,%eax
 80488cd:	77 01                	ja     80488d0 <deregister_tm_clones+0x10>
 80488cf:	c3                   	ret    
 80488d0:	b8 00 00 00 00       	mov    $0x0,%eax
 80488d5:	85 c0                	test   %eax,%eax
 80488d7:	74 f6                	je     80488cf <deregister_tm_clones+0xf>
 80488d9:	55                   	push   %ebp
 80488da:	89 e5                	mov    %esp,%ebp
 80488dc:	83 ec 18             	sub    $0x18,%esp
 80488df:	c7 04 24 c0 c7 04 08 	movl   $0x804c7c0,(%esp)
 80488e6:	ff d0                	call   *%eax
 80488e8:	c9                   	leave  
 80488e9:	c3                   	ret    
 80488ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

080488f0 <register_tm_clones>:
 80488f0:	b8 c0 c7 04 08       	mov    $0x804c7c0,%eax
 80488f5:	2d c0 c7 04 08       	sub    $0x804c7c0,%eax
 80488fa:	c1 f8 02             	sar    $0x2,%eax
 80488fd:	89 c2                	mov    %eax,%edx
 80488ff:	c1 ea 1f             	shr    $0x1f,%edx
 8048902:	01 d0                	add    %edx,%eax
 8048904:	d1 f8                	sar    %eax
 8048906:	75 01                	jne    8048909 <register_tm_clones+0x19>
 8048908:	c3                   	ret    
 8048909:	ba 00 00 00 00       	mov    $0x0,%edx
 804890e:	85 d2                	test   %edx,%edx
 8048910:	74 f6                	je     8048908 <register_tm_clones+0x18>
 8048912:	55                   	push   %ebp
 8048913:	89 e5                	mov    %esp,%ebp
 8048915:	83 ec 18             	sub    $0x18,%esp
 8048918:	89 44 24 04          	mov    %eax,0x4(%esp)
 804891c:	c7 04 24 c0 c7 04 08 	movl   $0x804c7c0,(%esp)
 8048923:	ff d2                	call   *%edx
 8048925:	c9                   	leave  
 8048926:	c3                   	ret    
 8048927:	89 f6                	mov    %esi,%esi
 8048929:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048930 <__do_global_dtors_aux>:
 8048930:	80 3d e4 c7 04 08 00 	cmpb   $0x0,0x804c7e4
 8048937:	75 13                	jne    804894c <__do_global_dtors_aux+0x1c>
 8048939:	55                   	push   %ebp
 804893a:	89 e5                	mov    %esp,%ebp
 804893c:	83 ec 08             	sub    $0x8,%esp
 804893f:	e8 7c ff ff ff       	call   80488c0 <deregister_tm_clones>
 8048944:	c6 05 e4 c7 04 08 01 	movb   $0x1,0x804c7e4
 804894b:	c9                   	leave  
 804894c:	f3 c3                	repz ret 
 804894e:	66 90                	xchg   %ax,%ax

08048950 <frame_dummy>:
 8048950:	a1 10 bf 04 08       	mov    0x804bf10,%eax
 8048955:	85 c0                	test   %eax,%eax
 8048957:	74 1f                	je     8048978 <frame_dummy+0x28>
 8048959:	b8 00 00 00 00       	mov    $0x0,%eax
 804895e:	85 c0                	test   %eax,%eax
 8048960:	74 16                	je     8048978 <frame_dummy+0x28>
 8048962:	55                   	push   %ebp
 8048963:	89 e5                	mov    %esp,%ebp
 8048965:	83 ec 18             	sub    $0x18,%esp
 8048968:	c7 04 24 10 bf 04 08 	movl   $0x804bf10,(%esp)
 804896f:	ff d0                	call   *%eax
 8048971:	c9                   	leave  
 8048972:	e9 79 ff ff ff       	jmp    80488f0 <register_tm_clones>
 8048977:	90                   	nop
 8048978:	e9 73 ff ff ff       	jmp    80488f0 <register_tm_clones>

0804897d <main>:
 804897d:	55                   	push   %ebp
 804897e:	89 e5                	mov    %esp,%ebp
 8048980:	53                   	push   %ebx
 8048981:	83 e4 f0             	and    $0xfffffff0,%esp
 8048984:	83 ec 10             	sub    $0x10,%esp
 8048987:	8b 45 08             	mov    0x8(%ebp),%eax
 804898a:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804898d:	83 f8 01             	cmp    $0x1,%eax
 8048990:	75 0c                	jne    804899e <main+0x21>
 8048992:	a1 c4 c7 04 08       	mov    0x804c7c4,%eax
 8048997:	a3 ec c7 04 08       	mov    %eax,0x804c7ec
 804899c:	eb 64                	jmp    8048a02 <main+0x85>
 804899e:	83 f8 02             	cmp    $0x2,%eax
 80489a1:	75 41                	jne    80489e4 <main+0x67>
 80489a3:	c7 44 24 04 cc a0 04 	movl   $0x804a0cc,0x4(%esp)
 80489aa:	08 
 80489ab:	8b 43 04             	mov    0x4(%ebx),%eax
 80489ae:	89 04 24             	mov    %eax,(%esp)
 80489b1:	e8 2a fe ff ff       	call   80487e0 <fopen@plt>
 80489b6:	a3 ec c7 04 08       	mov    %eax,0x804c7ec
 80489bb:	85 c0                	test   %eax,%eax
 80489bd:	75 43                	jne    8048a02 <main+0x85>
 80489bf:	8b 43 04             	mov    0x4(%ebx),%eax
 80489c2:	89 44 24 08          	mov    %eax,0x8(%esp)
 80489c6:	8b 03                	mov    (%ebx),%eax
 80489c8:	89 44 24 04          	mov    %eax,0x4(%esp)
 80489cc:	c7 04 24 ce a0 04 08 	movl   $0x804a0ce,(%esp)
 80489d3:	e8 08 fd ff ff       	call   80486e0 <printf@plt>
 80489d8:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80489df:	e8 ac fd ff ff       	call   8048790 <exit@plt>
 80489e4:	8b 03                	mov    (%ebx),%eax
 80489e6:	89 44 24 04          	mov    %eax,0x4(%esp)
 80489ea:	c7 04 24 eb a0 04 08 	movl   $0x804a0eb,(%esp)
 80489f1:	e8 ea fc ff ff       	call   80486e0 <printf@plt>
 80489f6:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80489fd:	e8 8e fd ff ff       	call   8048790 <exit@plt>
 8048a02:	e8 3f 06 00 00       	call   8049046 <initialize_bomb>
 8048a07:	c7 04 24 50 a1 04 08 	movl   $0x804a150,(%esp)
 8048a0e:	e8 6d fd ff ff       	call   8048780 <puts@plt>
 8048a13:	c7 04 24 8c a1 04 08 	movl   $0x804a18c,(%esp)
 8048a1a:	e8 61 fd ff ff       	call   8048780 <puts@plt>
 8048a1f:	e8 5a 08 00 00       	call   804927e <read_line>
 8048a24:	89 04 24             	mov    %eax,(%esp)
 8048a27:	e8 b4 00 00 00       	call   8048ae0 <phase_1>
 8048a2c:	e8 81 09 00 00       	call   80493b2 <phase_defused>
 8048a31:	c7 04 24 b8 a1 04 08 	movl   $0x804a1b8,(%esp)
 8048a38:	e8 43 fd ff ff       	call   8048780 <puts@plt>
 8048a3d:	e8 3c 08 00 00       	call   804927e <read_line>
 8048a42:	89 04 24             	mov    %eax,(%esp)
 8048a45:	e8 ba 00 00 00       	call   8048b04 <phase_2>
 8048a4a:	e8 63 09 00 00       	call   80493b2 <phase_defused>
 8048a4f:	c7 04 24 05 a1 04 08 	movl   $0x804a105,(%esp)
 8048a56:	e8 25 fd ff ff       	call   8048780 <puts@plt>
 8048a5b:	e8 1e 08 00 00       	call   804927e <read_line>
 8048a60:	89 04 24             	mov    %eax,(%esp)
 8048a63:	e8 ea 00 00 00       	call   8048b52 <phase_3>
 8048a68:	e8 45 09 00 00       	call   80493b2 <phase_defused>
 8048a6d:	c7 04 24 23 a1 04 08 	movl   $0x804a123,(%esp)
 8048a74:	e8 07 fd ff ff       	call   8048780 <puts@plt>
 8048a79:	e8 00 08 00 00       	call   804927e <read_line>
 8048a7e:	89 04 24             	mov    %eax,(%esp)
 8048a81:	e8 65 02 00 00       	call   8048ceb <phase_4>
 8048a86:	e8 27 09 00 00       	call   80493b2 <phase_defused>
 8048a8b:	c7 04 24 e4 a1 04 08 	movl   $0x804a1e4,(%esp)
 8048a92:	e8 e9 fc ff ff       	call   8048780 <puts@plt>
 8048a97:	e8 e2 07 00 00       	call   804927e <read_line>
 8048a9c:	89 04 24             	mov    %eax,(%esp)
 8048a9f:	e8 a7 02 00 00       	call   8048d4b <phase_5>
 8048aa4:	e8 09 09 00 00       	call   80493b2 <phase_defused>
 8048aa9:	c7 04 24 32 a1 04 08 	movl   $0x804a132,(%esp)
 8048ab0:	e8 cb fc ff ff       	call   8048780 <puts@plt>
 8048ab5:	e8 c4 07 00 00       	call   804927e <read_line>
 8048aba:	89 04 24             	mov    %eax,(%esp)
 8048abd:	e8 d2 02 00 00       	call   8048d94 <phase_6>
 8048ac2:	e8 eb 08 00 00       	call   80493b2 <phase_defused>
 8048ac7:	b8 00 00 00 00       	mov    $0x0,%eax
 8048acc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048acf:	c9                   	leave  
 8048ad0:	c3                   	ret    
 8048ad1:	66 90                	xchg   %ax,%ax
 8048ad3:	66 90                	xchg   %ax,%ax
 8048ad5:	66 90                	xchg   %ax,%ax
 8048ad7:	66 90                	xchg   %ax,%ax
 8048ad9:	66 90                	xchg   %ax,%ax
 8048adb:	66 90                	xchg   %ax,%ax
 8048add:	66 90                	xchg   %ax,%ax
 8048adf:	90                   	nop

08048ae0 <phase_1>:
 8048ae0:	83 ec 1c             	sub    $0x1c,%esp
 8048ae3:	c7 44 24 04 08 a2 04 	movl   $0x804a208,0x4(%esp)
 8048aea:	08 
 8048aeb:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048aef:	89 04 24             	mov    %eax,(%esp)
 8048af2:	e8 e3 04 00 00       	call   8048fda <strings_not_equal>
 8048af7:	85 c0                	test   %eax,%eax
 8048af9:	74 05                	je     8048b00 <phase_1+0x20>
 8048afb:	e8 ef 06 00 00       	call   80491ef <explode_bomb>
 8048b00:	83 c4 1c             	add    $0x1c,%esp
 8048b03:	c3                   	ret    

08048b04 <phase_2>:
 8048b04:	56                   	push   %esi
 8048b05:	53                   	push   %ebx
 8048b06:	83 ec 34             	sub    $0x34,%esp
 8048b09:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048b0d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b11:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048b15:	89 04 24             	mov    %eax,(%esp)
 8048b18:	e8 11 07 00 00       	call   804922e <read_six_numbers>
 8048b1d:	83 7c 24 18 01       	cmpl   $0x1,0x18(%esp)
 8048b22:	74 1e                	je     8048b42 <phase_2+0x3e>
 8048b24:	e8 c6 06 00 00       	call   80491ef <explode_bomb>
 8048b29:	eb 17                	jmp    8048b42 <phase_2+0x3e>
 8048b2b:	8b 43 fc             	mov    -0x4(%ebx),%eax
 8048b2e:	01 c0                	add    %eax,%eax
 8048b30:	39 03                	cmp    %eax,(%ebx)
 8048b32:	74 05                	je     8048b39 <phase_2+0x35>
 8048b34:	e8 b6 06 00 00       	call   80491ef <explode_bomb>
 8048b39:	83 c3 04             	add    $0x4,%ebx
 8048b3c:	39 f3                	cmp    %esi,%ebx
 8048b3e:	75 eb                	jne    8048b2b <phase_2+0x27>
 8048b40:	eb 0a                	jmp    8048b4c <phase_2+0x48>
 8048b42:	8d 5c 24 1c          	lea    0x1c(%esp),%ebx
 8048b46:	8d 74 24 30          	lea    0x30(%esp),%esi
 8048b4a:	eb df                	jmp    8048b2b <phase_2+0x27>
 8048b4c:	83 c4 34             	add    $0x34,%esp
 8048b4f:	5b                   	pop    %ebx
 8048b50:	5e                   	pop    %esi
 8048b51:	c3                   	ret    

08048b52 <phase_3>:
 8048b52:	83 ec 3c             	sub    $0x3c,%esp
 8048b55:	8d 44 24 28          	lea    0x28(%esp),%eax
 8048b59:	89 44 24 10          	mov    %eax,0x10(%esp)
 8048b5d:	8d 44 24 27          	lea    0x27(%esp),%eax
 8048b61:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048b65:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8048b69:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048b6d:	c7 44 24 04 6a a2 04 	movl   $0x804a26a,0x4(%esp)
 8048b74:	08 
 8048b75:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048b79:	89 04 24             	mov    %eax,(%esp)
 8048b7c:	e8 4f fc ff ff       	call   80487d0 <__isoc99_sscanf@plt>
 8048b81:	83 f8 02             	cmp    $0x2,%eax
 8048b84:	7f 05                	jg     8048b8b <phase_3+0x39>
 8048b86:	e8 64 06 00 00       	call   80491ef <explode_bomb>
 8048b8b:	83 7c 24 2c 07       	cmpl   $0x7,0x2c(%esp)
 8048b90:	0f 87 f2 00 00 00    	ja     8048c88 <phase_3+0x136>
 8048b96:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8048b9a:	ff 24 85 80 a2 04 08 	jmp    *0x804a280(,%eax,4)
 8048ba1:	b8 66 00 00 00       	mov    $0x66,%eax
 8048ba6:	81 7c 24 28 e6 01 00 	cmpl   $0x1e6,0x28(%esp)
 8048bad:	00 
 8048bae:	0f 84 de 00 00 00    	je     8048c92 <phase_3+0x140>
 8048bb4:	e8 36 06 00 00       	call   80491ef <explode_bomb>
 8048bb9:	b8 66 00 00 00       	mov    $0x66,%eax
 8048bbe:	e9 cf 00 00 00       	jmp    8048c92 <phase_3+0x140>
 8048bc3:	b8 64 00 00 00       	mov    $0x64,%eax
 8048bc8:	83 7c 24 28 48       	cmpl   $0x48,0x28(%esp)
 8048bcd:	0f 84 bf 00 00 00    	je     8048c92 <phase_3+0x140>
 8048bd3:	e8 17 06 00 00       	call   80491ef <explode_bomb>
 8048bd8:	b8 64 00 00 00       	mov    $0x64,%eax
 8048bdd:	e9 b0 00 00 00       	jmp    8048c92 <phase_3+0x140>
 8048be2:	b8 72 00 00 00       	mov    $0x72,%eax
 8048be7:	81 7c 24 28 76 03 00 	cmpl   $0x376,0x28(%esp)
 8048bee:	00 
 8048bef:	0f 84 9d 00 00 00    	je     8048c92 <phase_3+0x140>
 8048bf5:	e8 f5 05 00 00       	call   80491ef <explode_bomb>
 8048bfa:	b8 72 00 00 00       	mov    $0x72,%eax
 8048bff:	e9 8e 00 00 00       	jmp    8048c92 <phase_3+0x140>
 8048c04:	b8 6c 00 00 00       	mov    $0x6c,%eax
 8048c09:	81 7c 24 28 d1 00 00 	cmpl   $0xd1,0x28(%esp)
 8048c10:	00 
 8048c11:	74 7f                	je     8048c92 <phase_3+0x140>
 8048c13:	e8 d7 05 00 00       	call   80491ef <explode_bomb>
 8048c18:	b8 6c 00 00 00       	mov    $0x6c,%eax
 8048c1d:	eb 73                	jmp    8048c92 <phase_3+0x140>
 8048c1f:	b8 62 00 00 00       	mov    $0x62,%eax
 8048c24:	83 7c 24 28 7d       	cmpl   $0x7d,0x28(%esp)
 8048c29:	74 67                	je     8048c92 <phase_3+0x140>
 8048c2b:	e8 bf 05 00 00       	call   80491ef <explode_bomb>
 8048c30:	b8 62 00 00 00       	mov    $0x62,%eax
 8048c35:	eb 5b                	jmp    8048c92 <phase_3+0x140>
 8048c37:	b8 71 00 00 00       	mov    $0x71,%eax
 8048c3c:	81 7c 24 28 ea 02 00 	cmpl   $0x2ea,0x28(%esp)
 8048c43:	00 
 8048c44:	74 4c                	je     8048c92 <phase_3+0x140>
 8048c46:	e8 a4 05 00 00       	call   80491ef <explode_bomb>
 8048c4b:	b8 71 00 00 00       	mov    $0x71,%eax
 8048c50:	eb 40                	jmp    8048c92 <phase_3+0x140>
 8048c52:	b8 6b 00 00 00       	mov    $0x6b,%eax
 8048c57:	81 7c 24 28 3c 02 00 	cmpl   $0x23c,0x28(%esp)
 8048c5e:	00 
 8048c5f:	74 31                	je     8048c92 <phase_3+0x140>
 8048c61:	e8 89 05 00 00       	call   80491ef <explode_bomb>
 8048c66:	b8 6b 00 00 00       	mov    $0x6b,%eax
 8048c6b:	eb 25                	jmp    8048c92 <phase_3+0x140>
 8048c6d:	b8 70 00 00 00       	mov    $0x70,%eax
 8048c72:	81 7c 24 28 fd 00 00 	cmpl   $0xfd,0x28(%esp)
 8048c79:	00 
 8048c7a:	74 16                	je     8048c92 <phase_3+0x140>
 8048c7c:	e8 6e 05 00 00       	call   80491ef <explode_bomb>
 8048c81:	b8 70 00 00 00       	mov    $0x70,%eax
 8048c86:	eb 0a                	jmp    8048c92 <phase_3+0x140>
 8048c88:	e8 62 05 00 00       	call   80491ef <explode_bomb>
 8048c8d:	b8 6a 00 00 00       	mov    $0x6a,%eax
 8048c92:	3a 44 24 27          	cmp    0x27(%esp),%al
 8048c96:	74 05                	je     8048c9d <phase_3+0x14b>
 8048c98:	e8 52 05 00 00       	call   80491ef <explode_bomb>
 8048c9d:	83 c4 3c             	add    $0x3c,%esp
 8048ca0:	c3                   	ret    

08048ca1 <func4>:
 8048ca1:	57                   	push   %edi
 8048ca2:	56                   	push   %esi
 8048ca3:	53                   	push   %ebx
 8048ca4:	83 ec 10             	sub    $0x10,%esp
 8048ca7:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8048cab:	8b 74 24 24          	mov    0x24(%esp),%esi
 8048caf:	85 db                	test   %ebx,%ebx
 8048cb1:	7e 2c                	jle    8048cdf <func4+0x3e>
 8048cb3:	89 f0                	mov    %esi,%eax
 8048cb5:	83 fb 01             	cmp    $0x1,%ebx
 8048cb8:	74 2a                	je     8048ce4 <func4+0x43>
 8048cba:	89 74 24 04          	mov    %esi,0x4(%esp)
 8048cbe:	8d 43 ff             	lea    -0x1(%ebx),%eax
 8048cc1:	89 04 24             	mov    %eax,(%esp)
 8048cc4:	e8 d8 ff ff ff       	call   8048ca1 <func4>
 8048cc9:	8d 3c 30             	lea    (%eax,%esi,1),%edi
 8048ccc:	89 74 24 04          	mov    %esi,0x4(%esp)
 8048cd0:	83 eb 02             	sub    $0x2,%ebx
 8048cd3:	89 1c 24             	mov    %ebx,(%esp)
 8048cd6:	e8 c6 ff ff ff       	call   8048ca1 <func4>
 8048cdb:	01 f8                	add    %edi,%eax
 8048cdd:	eb 05                	jmp    8048ce4 <func4+0x43>
 8048cdf:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ce4:	83 c4 10             	add    $0x10,%esp
 8048ce7:	5b                   	pop    %ebx
 8048ce8:	5e                   	pop    %esi
 8048ce9:	5f                   	pop    %edi
 8048cea:	c3                   	ret    

08048ceb <phase_4>:
 8048ceb:	83 ec 2c             	sub    $0x2c,%esp
 8048cee:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048cf2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048cf6:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048cfa:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048cfe:	c7 44 24 04 b1 a4 04 	movl   $0x804a4b1,0x4(%esp)
 8048d05:	08 
 8048d06:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048d0a:	89 04 24             	mov    %eax,(%esp)
 8048d0d:	e8 be fa ff ff       	call   80487d0 <__isoc99_sscanf@plt>
 8048d12:	83 f8 02             	cmp    $0x2,%eax
 8048d15:	75 0c                	jne    8048d23 <phase_4+0x38>
 8048d17:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048d1b:	83 e8 02             	sub    $0x2,%eax
 8048d1e:	83 f8 02             	cmp    $0x2,%eax
 8048d21:	76 05                	jbe    8048d28 <phase_4+0x3d>
 8048d23:	e8 c7 04 00 00       	call   80491ef <explode_bomb>
 8048d28:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048d2c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d30:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
 8048d37:	e8 65 ff ff ff       	call   8048ca1 <func4>
 8048d3c:	3b 44 24 18          	cmp    0x18(%esp),%eax
 8048d40:	74 05                	je     8048d47 <phase_4+0x5c>
 8048d42:	e8 a8 04 00 00       	call   80491ef <explode_bomb>
 8048d47:	83 c4 2c             	add    $0x2c,%esp
 8048d4a:	c3                   	ret    

08048d4b <phase_5>:
 8048d4b:	53                   	push   %ebx
 8048d4c:	83 ec 18             	sub    $0x18,%esp
 8048d4f:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8048d53:	89 1c 24             	mov    %ebx,(%esp)
 8048d56:	e8 60 02 00 00       	call   8048fbb <string_length>
 8048d5b:	83 f8 06             	cmp    $0x6,%eax
 8048d5e:	74 05                	je     8048d65 <phase_5+0x1a>
 8048d60:	e8 8a 04 00 00       	call   80491ef <explode_bomb>
 8048d65:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d6a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d6f:	0f b6 0c 03          	movzbl (%ebx,%eax,1),%ecx
 8048d73:	83 e1 0f             	and    $0xf,%ecx
 8048d76:	03 14 8d a0 a2 04 08 	add    0x804a2a0(,%ecx,4),%edx
 8048d7d:	83 c0 01             	add    $0x1,%eax
 8048d80:	83 f8 06             	cmp    $0x6,%eax
 8048d83:	75 ea                	jne    8048d6f <phase_5+0x24>
 8048d85:	83 fa 27             	cmp    $0x27,%edx
 8048d88:	74 05                	je     8048d8f <phase_5+0x44>
 8048d8a:	e8 60 04 00 00       	call   80491ef <explode_bomb>
 8048d8f:	83 c4 18             	add    $0x18,%esp
 8048d92:	5b                   	pop    %ebx
 8048d93:	c3                   	ret    

08048d94 <phase_6>:
 8048d94:	56                   	push   %esi
 8048d95:	53                   	push   %ebx
 8048d96:	83 ec 44             	sub    $0x44,%esp
 8048d99:	8d 44 24 28          	lea    0x28(%esp),%eax
 8048d9d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048da1:	8b 44 24 50          	mov    0x50(%esp),%eax
 8048da5:	89 04 24             	mov    %eax,(%esp)
 8048da8:	e8 81 04 00 00       	call   804922e <read_six_numbers>
 8048dad:	be 00 00 00 00       	mov    $0x0,%esi
 8048db2:	8b 44 b4 28          	mov    0x28(%esp,%esi,4),%eax
 8048db6:	83 e8 01             	sub    $0x1,%eax
 8048db9:	83 f8 05             	cmp    $0x5,%eax
 8048dbc:	76 05                	jbe    8048dc3 <phase_6+0x2f>
 8048dbe:	e8 2c 04 00 00       	call   80491ef <explode_bomb>
 8048dc3:	83 c6 01             	add    $0x1,%esi
 8048dc6:	83 fe 06             	cmp    $0x6,%esi
 8048dc9:	74 1b                	je     8048de6 <phase_6+0x52>
 8048dcb:	89 f3                	mov    %esi,%ebx
 8048dcd:	8b 44 9c 28          	mov    0x28(%esp,%ebx,4),%eax
 8048dd1:	39 44 b4 24          	cmp    %eax,0x24(%esp,%esi,4)
 8048dd5:	75 05                	jne    8048ddc <phase_6+0x48>
 8048dd7:	e8 13 04 00 00       	call   80491ef <explode_bomb>
 8048ddc:	83 c3 01             	add    $0x1,%ebx
 8048ddf:	83 fb 05             	cmp    $0x5,%ebx
 8048de2:	7e e9                	jle    8048dcd <phase_6+0x39>
 8048de4:	eb cc                	jmp    8048db2 <phase_6+0x1e>
 8048de6:	8d 44 24 28          	lea    0x28(%esp),%eax
 8048dea:	8d 5c 24 40          	lea    0x40(%esp),%ebx
 8048dee:	b9 07 00 00 00       	mov    $0x7,%ecx
 8048df3:	89 ca                	mov    %ecx,%edx
 8048df5:	2b 10                	sub    (%eax),%edx
 8048df7:	89 10                	mov    %edx,(%eax)
 8048df9:	83 c0 04             	add    $0x4,%eax
 8048dfc:	39 d8                	cmp    %ebx,%eax
 8048dfe:	75 f3                	jne    8048df3 <phase_6+0x5f>
 8048e00:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048e05:	eb 1d                	jmp    8048e24 <phase_6+0x90>
 8048e07:	8b 52 08             	mov    0x8(%edx),%edx
 8048e0a:	83 c0 01             	add    $0x1,%eax
 8048e0d:	39 c8                	cmp    %ecx,%eax
 8048e0f:	75 f6                	jne    8048e07 <phase_6+0x73>
 8048e11:	eb 05                	jmp    8048e18 <phase_6+0x84>
 8048e13:	ba 54 c1 04 08       	mov    $0x804c154,%edx
 8048e18:	89 54 b4 10          	mov    %edx,0x10(%esp,%esi,4)
 8048e1c:	83 c3 01             	add    $0x1,%ebx
 8048e1f:	83 fb 06             	cmp    $0x6,%ebx
 8048e22:	74 17                	je     8048e3b <phase_6+0xa7>
 8048e24:	89 de                	mov    %ebx,%esi
 8048e26:	8b 4c 9c 28          	mov    0x28(%esp,%ebx,4),%ecx
 8048e2a:	83 f9 01             	cmp    $0x1,%ecx
 8048e2d:	7e e4                	jle    8048e13 <phase_6+0x7f>
 8048e2f:	b8 01 00 00 00       	mov    $0x1,%eax
 8048e34:	ba 54 c1 04 08       	mov    $0x804c154,%edx
 8048e39:	eb cc                	jmp    8048e07 <phase_6+0x73>
 8048e3b:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048e3f:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048e43:	8d 74 24 28          	lea    0x28(%esp),%esi
 8048e47:	89 d9                	mov    %ebx,%ecx
 8048e49:	8b 10                	mov    (%eax),%edx
 8048e4b:	89 51 08             	mov    %edx,0x8(%ecx)
 8048e4e:	83 c0 04             	add    $0x4,%eax
 8048e51:	39 f0                	cmp    %esi,%eax
 8048e53:	74 04                	je     8048e59 <phase_6+0xc5>
 8048e55:	89 d1                	mov    %edx,%ecx
 8048e57:	eb f0                	jmp    8048e49 <phase_6+0xb5>
 8048e59:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 8048e60:	be 05 00 00 00       	mov    $0x5,%esi
 8048e65:	8b 43 08             	mov    0x8(%ebx),%eax
 8048e68:	8b 00                	mov    (%eax),%eax
 8048e6a:	39 03                	cmp    %eax,(%ebx)
 8048e6c:	7d 05                	jge    8048e73 <phase_6+0xdf>
 8048e6e:	e8 7c 03 00 00       	call   80491ef <explode_bomb>
 8048e73:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048e76:	83 ee 01             	sub    $0x1,%esi
 8048e79:	75 ea                	jne    8048e65 <phase_6+0xd1>
 8048e7b:	83 c4 44             	add    $0x44,%esp
 8048e7e:	5b                   	pop    %ebx
 8048e7f:	5e                   	pop    %esi
 8048e80:	c3                   	ret    

08048e81 <fun7>:
 8048e81:	53                   	push   %ebx
 8048e82:	83 ec 18             	sub    $0x18,%esp
 8048e85:	8b 54 24 20          	mov    0x20(%esp),%edx
 8048e89:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 8048e8d:	85 d2                	test   %edx,%edx
 8048e8f:	74 37                	je     8048ec8 <fun7+0x47>
 8048e91:	8b 1a                	mov    (%edx),%ebx
 8048e93:	39 cb                	cmp    %ecx,%ebx
 8048e95:	7e 13                	jle    8048eaa <fun7+0x29>
 8048e97:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048e9b:	8b 42 04             	mov    0x4(%edx),%eax
 8048e9e:	89 04 24             	mov    %eax,(%esp)
 8048ea1:	e8 db ff ff ff       	call   8048e81 <fun7>
 8048ea6:	01 c0                	add    %eax,%eax
 8048ea8:	eb 23                	jmp    8048ecd <fun7+0x4c>
 8048eaa:	b8 00 00 00 00       	mov    $0x0,%eax
 8048eaf:	39 cb                	cmp    %ecx,%ebx
 8048eb1:	74 1a                	je     8048ecd <fun7+0x4c>
 8048eb3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048eb7:	8b 42 08             	mov    0x8(%edx),%eax
 8048eba:	89 04 24             	mov    %eax,(%esp)
 8048ebd:	e8 bf ff ff ff       	call   8048e81 <fun7>
 8048ec2:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048ec6:	eb 05                	jmp    8048ecd <fun7+0x4c>
 8048ec8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048ecd:	83 c4 18             	add    $0x18,%esp
 8048ed0:	5b                   	pop    %ebx
 8048ed1:	c3                   	ret    

08048ed2 <secret_phase>:
 8048ed2:	53                   	push   %ebx
 8048ed3:	83 ec 18             	sub    $0x18,%esp
 8048ed6:	e8 a3 03 00 00       	call   804927e <read_line>
 8048edb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 8048ee2:	00 
 8048ee3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048eea:	00 
 8048eeb:	89 04 24             	mov    %eax,(%esp)
 8048eee:	e8 3d f9 ff ff       	call   8048830 <strtol@plt>
 8048ef3:	89 c3                	mov    %eax,%ebx
 8048ef5:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048ef8:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048efd:	76 05                	jbe    8048f04 <secret_phase+0x32>
 8048eff:	e8 eb 02 00 00       	call   80491ef <explode_bomb>
 8048f04:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048f08:	c7 04 24 a0 c0 04 08 	movl   $0x804c0a0,(%esp)
 8048f0f:	e8 6d ff ff ff       	call   8048e81 <fun7>
 8048f14:	83 f8 03             	cmp    $0x3,%eax
 8048f17:	74 05                	je     8048f1e <secret_phase+0x4c>
 8048f19:	e8 d1 02 00 00       	call   80491ef <explode_bomb>
 8048f1e:	c7 04 24 44 a2 04 08 	movl   $0x804a244,(%esp)
 8048f25:	e8 56 f8 ff ff       	call   8048780 <puts@plt>
 8048f2a:	e8 83 04 00 00       	call   80493b2 <phase_defused>
 8048f2f:	83 c4 18             	add    $0x18,%esp
 8048f32:	5b                   	pop    %ebx
 8048f33:	c3                   	ret    
 8048f34:	66 90                	xchg   %ax,%ax
 8048f36:	66 90                	xchg   %ax,%ax
 8048f38:	66 90                	xchg   %ax,%ax
 8048f3a:	66 90                	xchg   %ax,%ax
 8048f3c:	66 90                	xchg   %ax,%ax
 8048f3e:	66 90                	xchg   %ax,%ax

08048f40 <sig_handler>:
 8048f40:	83 ec 1c             	sub    $0x1c,%esp
 8048f43:	c7 04 24 e0 a2 04 08 	movl   $0x804a2e0,(%esp)
 8048f4a:	e8 31 f8 ff ff       	call   8048780 <puts@plt>
 8048f4f:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048f56:	e8 d5 f7 ff ff       	call   8048730 <sleep@plt>
 8048f5b:	c7 04 24 2d a4 04 08 	movl   $0x804a42d,(%esp)
 8048f62:	e8 79 f7 ff ff       	call   80486e0 <printf@plt>
 8048f67:	a1 e0 c7 04 08       	mov    0x804c7e0,%eax
 8048f6c:	89 04 24             	mov    %eax,(%esp)
 8048f6f:	e8 7c f7 ff ff       	call   80486f0 <fflush@plt>
 8048f74:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f7b:	e8 b0 f7 ff ff       	call   8048730 <sleep@plt>
 8048f80:	c7 04 24 35 a4 04 08 	movl   $0x804a435,(%esp)
 8048f87:	e8 f4 f7 ff ff       	call   8048780 <puts@plt>
 8048f8c:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048f93:	e8 f8 f7 ff ff       	call   8048790 <exit@plt>

08048f98 <invalid_phase>:
 8048f98:	83 ec 1c             	sub    $0x1c,%esp
 8048f9b:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048f9f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048fa3:	c7 04 24 3d a4 04 08 	movl   $0x804a43d,(%esp)
 8048faa:	e8 31 f7 ff ff       	call   80486e0 <printf@plt>
 8048faf:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048fb6:	e8 d5 f7 ff ff       	call   8048790 <exit@plt>

08048fbb <string_length>:
 8048fbb:	8b 54 24 04          	mov    0x4(%esp),%edx
 8048fbf:	80 3a 00             	cmpb   $0x0,(%edx)
 8048fc2:	74 10                	je     8048fd4 <string_length+0x19>
 8048fc4:	b8 00 00 00 00       	mov    $0x0,%eax
 8048fc9:	83 c0 01             	add    $0x1,%eax
 8048fcc:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8048fd0:	75 f7                	jne    8048fc9 <string_length+0xe>
 8048fd2:	f3 c3                	repz ret 
 8048fd4:	b8 00 00 00 00       	mov    $0x0,%eax
 8048fd9:	c3                   	ret    

08048fda <strings_not_equal>:
 8048fda:	57                   	push   %edi
 8048fdb:	56                   	push   %esi
 8048fdc:	53                   	push   %ebx
 8048fdd:	83 ec 04             	sub    $0x4,%esp
 8048fe0:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048fe4:	8b 74 24 18          	mov    0x18(%esp),%esi
 8048fe8:	89 1c 24             	mov    %ebx,(%esp)
 8048feb:	e8 cb ff ff ff       	call   8048fbb <string_length>
 8048ff0:	89 c7                	mov    %eax,%edi
 8048ff2:	89 34 24             	mov    %esi,(%esp)
 8048ff5:	e8 c1 ff ff ff       	call   8048fbb <string_length>
 8048ffa:	ba 01 00 00 00       	mov    $0x1,%edx
 8048fff:	39 c7                	cmp    %eax,%edi
 8049001:	75 3a                	jne    804903d <strings_not_equal+0x63>
 8049003:	0f b6 03             	movzbl (%ebx),%eax
 8049006:	84 c0                	test   %al,%al
 8049008:	74 20                	je     804902a <strings_not_equal+0x50>
 804900a:	3a 06                	cmp    (%esi),%al
 804900c:	74 08                	je     8049016 <strings_not_equal+0x3c>
 804900e:	66 90                	xchg   %ax,%ax
 8049010:	eb 1f                	jmp    8049031 <strings_not_equal+0x57>
 8049012:	3a 06                	cmp    (%esi),%al
 8049014:	75 22                	jne    8049038 <strings_not_equal+0x5e>
 8049016:	83 c3 01             	add    $0x1,%ebx
 8049019:	83 c6 01             	add    $0x1,%esi
 804901c:	0f b6 03             	movzbl (%ebx),%eax
 804901f:	84 c0                	test   %al,%al
 8049021:	75 ef                	jne    8049012 <strings_not_equal+0x38>
 8049023:	ba 00 00 00 00       	mov    $0x0,%edx
 8049028:	eb 13                	jmp    804903d <strings_not_equal+0x63>
 804902a:	ba 00 00 00 00       	mov    $0x0,%edx
 804902f:	eb 0c                	jmp    804903d <strings_not_equal+0x63>
 8049031:	ba 01 00 00 00       	mov    $0x1,%edx
 8049036:	eb 05                	jmp    804903d <strings_not_equal+0x63>
 8049038:	ba 01 00 00 00       	mov    $0x1,%edx
 804903d:	89 d0                	mov    %edx,%eax
 804903f:	83 c4 04             	add    $0x4,%esp
 8049042:	5b                   	pop    %ebx
 8049043:	5e                   	pop    %esi
 8049044:	5f                   	pop    %edi
 8049045:	c3                   	ret    

08049046 <initialize_bomb>:
 8049046:	81 ec 1c 20 00 00    	sub    $0x201c,%esp
 804904c:	c7 44 24 04 40 8f 04 	movl   $0x8048f40,0x4(%esp)
 8049053:	08 
 8049054:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804905b:	e8 c0 f6 ff ff       	call   8048720 <signal@plt>
 8049060:	8d 44 24 10          	lea    0x10(%esp),%eax
 8049064:	89 04 24             	mov    %eax,(%esp)
 8049067:	e8 4e 0d 00 00       	call   8049dba <init_driver>
 804906c:	85 c0                	test   %eax,%eax
 804906e:	79 20                	jns    8049090 <initialize_bomb+0x4a>
 8049070:	8d 44 24 10          	lea    0x10(%esp),%eax
 8049074:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049078:	c7 04 24 4e a4 04 08 	movl   $0x804a44e,(%esp)
 804907f:	e8 5c f6 ff ff       	call   80486e0 <printf@plt>
 8049084:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804908b:	e8 00 f7 ff ff       	call   8048790 <exit@plt>
 8049090:	81 c4 1c 20 00 00    	add    $0x201c,%esp
 8049096:	c3                   	ret    

08049097 <initialize_bomb_solve>:
 8049097:	f3 c3                	repz ret 

08049099 <blank_line>:
 8049099:	56                   	push   %esi
 804909a:	53                   	push   %ebx
 804909b:	83 ec 04             	sub    $0x4,%esp
 804909e:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 80490a2:	eb 16                	jmp    80490ba <blank_line+0x21>
 80490a4:	e8 b7 f7 ff ff       	call   8048860 <__ctype_b_loc@plt>
 80490a9:	83 c3 01             	add    $0x1,%ebx
 80490ac:	89 f2                	mov    %esi,%edx
 80490ae:	0f be f2             	movsbl %dl,%esi
 80490b1:	8b 00                	mov    (%eax),%eax
 80490b3:	f6 44 70 01 20       	testb  $0x20,0x1(%eax,%esi,2)
 80490b8:	74 10                	je     80490ca <blank_line+0x31>
 80490ba:	0f b6 33             	movzbl (%ebx),%esi
 80490bd:	89 f0                	mov    %esi,%eax
 80490bf:	84 c0                	test   %al,%al
 80490c1:	75 e1                	jne    80490a4 <blank_line+0xb>
 80490c3:	b8 01 00 00 00       	mov    $0x1,%eax
 80490c8:	eb 05                	jmp    80490cf <blank_line+0x36>
 80490ca:	b8 00 00 00 00       	mov    $0x0,%eax
 80490cf:	83 c4 04             	add    $0x4,%esp
 80490d2:	5b                   	pop    %ebx
 80490d3:	5e                   	pop    %esi
 80490d4:	c3                   	ret    

080490d5 <skip>:
 80490d5:	53                   	push   %ebx
 80490d6:	83 ec 18             	sub    $0x18,%esp
 80490d9:	a1 ec c7 04 08       	mov    0x804c7ec,%eax
 80490de:	89 44 24 08          	mov    %eax,0x8(%esp)
 80490e2:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 80490e9:	00 
 80490ea:	a1 e8 c7 04 08       	mov    0x804c7e8,%eax
 80490ef:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80490f2:	c1 e0 04             	shl    $0x4,%eax
 80490f5:	05 00 c8 04 08       	add    $0x804c800,%eax
 80490fa:	89 04 24             	mov    %eax,(%esp)
 80490fd:	e8 0e f6 ff ff       	call   8048710 <fgets@plt>
 8049102:	89 c3                	mov    %eax,%ebx
 8049104:	85 c0                	test   %eax,%eax
 8049106:	74 0c                	je     8049114 <skip+0x3f>
 8049108:	89 04 24             	mov    %eax,(%esp)
 804910b:	e8 89 ff ff ff       	call   8049099 <blank_line>
 8049110:	85 c0                	test   %eax,%eax
 8049112:	75 c5                	jne    80490d9 <skip+0x4>
 8049114:	89 d8                	mov    %ebx,%eax
 8049116:	83 c4 18             	add    $0x18,%esp
 8049119:	5b                   	pop    %ebx
 804911a:	c3                   	ret    

0804911b <send_msg>:
 804911b:	57                   	push   %edi
 804911c:	53                   	push   %ebx
 804911d:	81 ec 24 40 00 00    	sub    $0x4024,%esp
 8049123:	8b 15 e8 c7 04 08    	mov    0x804c7e8,%edx
 8049129:	8d 5c 92 fb          	lea    -0x5(%edx,%edx,4),%ebx
 804912d:	c1 e3 04             	shl    $0x4,%ebx
 8049130:	81 c3 00 c8 04 08    	add    $0x804c800,%ebx
 8049136:	89 df                	mov    %ebx,%edi
 8049138:	b8 00 00 00 00       	mov    $0x0,%eax
 804913d:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049142:	f2 ae                	repnz scas %es:(%edi),%al
 8049144:	f7 d1                	not    %ecx
 8049146:	83 c1 63             	add    $0x63,%ecx
 8049149:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 804914f:	76 18                	jbe    8049169 <send_msg+0x4e>
 8049151:	c7 04 24 18 a3 04 08 	movl   $0x804a318,(%esp)
 8049158:	e8 83 f5 ff ff       	call   80486e0 <printf@plt>
 804915d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049164:	e8 27 f6 ff ff       	call   8048790 <exit@plt>
 8049169:	83 bc 24 30 40 00 00 	cmpl   $0x0,0x4030(%esp)
 8049170:	00 
 8049171:	b8 68 a4 04 08       	mov    $0x804a468,%eax
 8049176:	b9 70 a4 04 08       	mov    $0x804a470,%ecx
 804917b:	0f 44 c1             	cmove  %ecx,%eax
 804917e:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 8049182:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049186:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804918a:	a1 a0 c5 04 08       	mov    0x804c5a0,%eax
 804918f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049193:	c7 44 24 04 79 a4 04 	movl   $0x804a479,0x4(%esp)
 804919a:	08 
 804919b:	8d 9c 24 20 20 00 00 	lea    0x2020(%esp),%ebx
 80491a2:	89 1c 24             	mov    %ebx,(%esp)
 80491a5:	e8 56 f6 ff ff       	call   8048800 <sprintf@plt>
 80491aa:	8d 44 24 20          	lea    0x20(%esp),%eax
 80491ae:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80491b2:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80491b9:	00 
 80491ba:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80491be:	c7 04 24 a0 c1 04 08 	movl   $0x804c1a0,(%esp)
 80491c5:	e8 c8 0d 00 00       	call   8049f92 <driver_post>
 80491ca:	85 c0                	test   %eax,%eax
 80491cc:	79 18                	jns    80491e6 <send_msg+0xcb>
 80491ce:	8d 44 24 20          	lea    0x20(%esp),%eax
 80491d2:	89 04 24             	mov    %eax,(%esp)
 80491d5:	e8 a6 f5 ff ff       	call   8048780 <puts@plt>
 80491da:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491e1:	e8 aa f5 ff ff       	call   8048790 <exit@plt>
 80491e6:	81 c4 24 40 00 00    	add    $0x4024,%esp
 80491ec:	5b                   	pop    %ebx
 80491ed:	5f                   	pop    %edi
 80491ee:	c3                   	ret    

080491ef <explode_bomb>:
 80491ef:	83 ec 1c             	sub    $0x1c,%esp
 80491f2:	c7 04 24 85 a4 04 08 	movl   $0x804a485,(%esp)
 80491f9:	e8 82 f5 ff ff       	call   8048780 <puts@plt>
 80491fe:	c7 04 24 8e a4 04 08 	movl   $0x804a48e,(%esp)
 8049205:	e8 76 f5 ff ff       	call   8048780 <puts@plt>
 804920a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049211:	e8 05 ff ff ff       	call   804911b <send_msg>
 8049216:	c7 04 24 3c a3 04 08 	movl   $0x804a33c,(%esp)
 804921d:	e8 5e f5 ff ff       	call   8048780 <puts@plt>
 8049222:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049229:	e8 62 f5 ff ff       	call   8048790 <exit@plt>

0804922e <read_six_numbers>:
 804922e:	83 ec 2c             	sub    $0x2c,%esp
 8049231:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049235:	8d 50 14             	lea    0x14(%eax),%edx
 8049238:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 804923c:	8d 50 10             	lea    0x10(%eax),%edx
 804923f:	89 54 24 18          	mov    %edx,0x18(%esp)
 8049243:	8d 50 0c             	lea    0xc(%eax),%edx
 8049246:	89 54 24 14          	mov    %edx,0x14(%esp)
 804924a:	8d 50 08             	lea    0x8(%eax),%edx
 804924d:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049251:	8d 50 04             	lea    0x4(%eax),%edx
 8049254:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049258:	89 44 24 08          	mov    %eax,0x8(%esp)
 804925c:	c7 44 24 04 a5 a4 04 	movl   $0x804a4a5,0x4(%esp)
 8049263:	08 
 8049264:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049268:	89 04 24             	mov    %eax,(%esp)
 804926b:	e8 60 f5 ff ff       	call   80487d0 <__isoc99_sscanf@plt>
 8049270:	83 f8 05             	cmp    $0x5,%eax
 8049273:	7f 05                	jg     804927a <read_six_numbers+0x4c>
 8049275:	e8 75 ff ff ff       	call   80491ef <explode_bomb>
 804927a:	83 c4 2c             	add    $0x2c,%esp
 804927d:	c3                   	ret    

0804927e <read_line>:
 804927e:	57                   	push   %edi
 804927f:	56                   	push   %esi
 8049280:	53                   	push   %ebx
 8049281:	83 ec 10             	sub    $0x10,%esp
 8049284:	e8 4c fe ff ff       	call   80490d5 <skip>
 8049289:	85 c0                	test   %eax,%eax
 804928b:	75 6c                	jne    80492f9 <read_line+0x7b>
 804928d:	a1 c4 c7 04 08       	mov    0x804c7c4,%eax
 8049292:	39 05 ec c7 04 08    	cmp    %eax,0x804c7ec
 8049298:	75 18                	jne    80492b2 <read_line+0x34>
 804929a:	c7 04 24 b7 a4 04 08 	movl   $0x804a4b7,(%esp)
 80492a1:	e8 da f4 ff ff       	call   8048780 <puts@plt>
 80492a6:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80492ad:	e8 de f4 ff ff       	call   8048790 <exit@plt>
 80492b2:	c7 04 24 d5 a4 04 08 	movl   $0x804a4d5,(%esp)
 80492b9:	e8 b2 f4 ff ff       	call   8048770 <getenv@plt>
 80492be:	85 c0                	test   %eax,%eax
 80492c0:	74 0c                	je     80492ce <read_line+0x50>
 80492c2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80492c9:	e8 c2 f4 ff ff       	call   8048790 <exit@plt>
 80492ce:	a1 c4 c7 04 08       	mov    0x804c7c4,%eax
 80492d3:	a3 ec c7 04 08       	mov    %eax,0x804c7ec
 80492d8:	e8 f8 fd ff ff       	call   80490d5 <skip>
 80492dd:	85 c0                	test   %eax,%eax
 80492df:	75 18                	jne    80492f9 <read_line+0x7b>
 80492e1:	c7 04 24 b7 a4 04 08 	movl   $0x804a4b7,(%esp)
 80492e8:	e8 93 f4 ff ff       	call   8048780 <puts@plt>
 80492ed:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80492f4:	e8 97 f4 ff ff       	call   8048790 <exit@plt>
 80492f9:	8b 15 e8 c7 04 08    	mov    0x804c7e8,%edx
 80492ff:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 8049302:	c1 e3 04             	shl    $0x4,%ebx
 8049305:	81 c3 00 c8 04 08    	add    $0x804c800,%ebx
 804930b:	89 df                	mov    %ebx,%edi
 804930d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049312:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049317:	f2 ae                	repnz scas %es:(%edi),%al
 8049319:	f7 d1                	not    %ecx
 804931b:	83 e9 01             	sub    $0x1,%ecx
 804931e:	83 f9 4e             	cmp    $0x4e,%ecx
 8049321:	7e 6f                	jle    8049392 <read_line+0x114>
 8049323:	c7 04 24 e0 a4 04 08 	movl   $0x804a4e0,(%esp)
 804932a:	e8 51 f4 ff ff       	call   8048780 <puts@plt>
 804932f:	a1 e8 c7 04 08       	mov    0x804c7e8,%eax
 8049334:	8d 50 01             	lea    0x1(%eax),%edx
 8049337:	89 15 e8 c7 04 08    	mov    %edx,0x804c7e8
 804933d:	6b c0 50             	imul   $0x50,%eax,%eax
 8049340:	8d 90 00 c8 04 08    	lea    0x804c800(%eax),%edx
 8049346:	89 d7                	mov    %edx,%edi
 8049348:	be fb a4 04 08       	mov    $0x804a4fb,%esi
 804934d:	b8 10 00 00 00       	mov    $0x10,%eax
 8049352:	f6 c2 01             	test   $0x1,%dl
 8049355:	74 03                	je     804935a <read_line+0xdc>
 8049357:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049358:	b0 0f                	mov    $0xf,%al
 804935a:	f7 c7 02 00 00 00    	test   $0x2,%edi
 8049360:	74 05                	je     8049367 <read_line+0xe9>
 8049362:	66 a5                	movsw  %ds:(%esi),%es:(%edi)
 8049364:	83 e8 02             	sub    $0x2,%eax
 8049367:	89 c1                	mov    %eax,%ecx
 8049369:	c1 e9 02             	shr    $0x2,%ecx
 804936c:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804936e:	ba 00 00 00 00       	mov    $0x0,%edx
 8049373:	a8 02                	test   $0x2,%al
 8049375:	74 0b                	je     8049382 <read_line+0x104>
 8049377:	0f b7 16             	movzwl (%esi),%edx
 804937a:	66 89 17             	mov    %dx,(%edi)
 804937d:	ba 02 00 00 00       	mov    $0x2,%edx
 8049382:	a8 01                	test   $0x1,%al
 8049384:	74 07                	je     804938d <read_line+0x10f>
 8049386:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 804938a:	88 04 17             	mov    %al,(%edi,%edx,1)
 804938d:	e8 5d fe ff ff       	call   80491ef <explode_bomb>
 8049392:	8d 04 92             	lea    (%edx,%edx,4),%eax
 8049395:	c1 e0 04             	shl    $0x4,%eax
 8049398:	c6 84 01 ff c7 04 08 	movb   $0x0,0x804c7ff(%ecx,%eax,1)
 804939f:	00 
 80493a0:	83 c2 01             	add    $0x1,%edx
 80493a3:	89 15 e8 c7 04 08    	mov    %edx,0x804c7e8
 80493a9:	89 d8                	mov    %ebx,%eax
 80493ab:	83 c4 10             	add    $0x10,%esp
 80493ae:	5b                   	pop    %ebx
 80493af:	5e                   	pop    %esi
 80493b0:	5f                   	pop    %edi
 80493b1:	c3                   	ret    

080493b2 <phase_defused>:
 80493b2:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 80493b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80493bf:	e8 57 fd ff ff       	call   804911b <send_msg>
 80493c4:	83 3d e8 c7 04 08 06 	cmpl   $0x6,0x804c7e8
 80493cb:	75 7e                	jne    804944b <phase_defused+0x99>
 80493cd:	8d 44 24 30          	lea    0x30(%esp),%eax
 80493d1:	89 44 24 10          	mov    %eax,0x10(%esp)
 80493d5:	8d 44 24 28          	lea    0x28(%esp),%eax
 80493d9:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80493dd:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 80493e1:	89 44 24 08          	mov    %eax,0x8(%esp)
 80493e5:	c7 44 24 04 0b a5 04 	movl   $0x804a50b,0x4(%esp)
 80493ec:	08 
 80493ed:	c7 04 24 f0 c8 04 08 	movl   $0x804c8f0,(%esp)
 80493f4:	e8 d7 f3 ff ff       	call   80487d0 <__isoc99_sscanf@plt>
 80493f9:	83 f8 03             	cmp    $0x3,%eax
 80493fc:	75 35                	jne    8049433 <phase_defused+0x81>
 80493fe:	c7 44 24 04 14 a5 04 	movl   $0x804a514,0x4(%esp)
 8049405:	08 
 8049406:	8d 44 24 30          	lea    0x30(%esp),%eax
 804940a:	89 04 24             	mov    %eax,(%esp)
 804940d:	e8 c8 fb ff ff       	call   8048fda <strings_not_equal>
 8049412:	85 c0                	test   %eax,%eax
 8049414:	75 1d                	jne    8049433 <phase_defused+0x81>
 8049416:	c7 04 24 60 a3 04 08 	movl   $0x804a360,(%esp)
 804941d:	e8 5e f3 ff ff       	call   8048780 <puts@plt>
 8049422:	c7 04 24 88 a3 04 08 	movl   $0x804a388,(%esp)
 8049429:	e8 52 f3 ff ff       	call   8048780 <puts@plt>
 804942e:	e8 9f fa ff ff       	call   8048ed2 <secret_phase>
 8049433:	c7 04 24 c0 a3 04 08 	movl   $0x804a3c0,(%esp)
 804943a:	e8 41 f3 ff ff       	call   8048780 <puts@plt>
 804943f:	c7 04 24 ec a3 04 08 	movl   $0x804a3ec,(%esp)
 8049446:	e8 35 f3 ff ff       	call   8048780 <puts@plt>
 804944b:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 8049451:	c3                   	ret    
 8049452:	66 90                	xchg   %ax,%ax
 8049454:	66 90                	xchg   %ax,%ax
 8049456:	66 90                	xchg   %ax,%ax
 8049458:	66 90                	xchg   %ax,%ax
 804945a:	66 90                	xchg   %ax,%ax
 804945c:	66 90                	xchg   %ax,%ax
 804945e:	66 90                	xchg   %ax,%ax

08049460 <sigalrm_handler>:
 8049460:	83 ec 1c             	sub    $0x1c,%esp
 8049463:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804946a:	00 
 804946b:	c7 44 24 04 68 a5 04 	movl   $0x804a568,0x4(%esp)
 8049472:	08 
 8049473:	a1 c0 c7 04 08       	mov    0x804c7c0,%eax
 8049478:	89 04 24             	mov    %eax,(%esp)
 804947b:	e8 30 f3 ff ff       	call   80487b0 <fprintf@plt>
 8049480:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049487:	e8 04 f3 ff ff       	call   8048790 <exit@plt>

0804948c <rio_readlineb>:
 804948c:	55                   	push   %ebp
 804948d:	57                   	push   %edi
 804948e:	56                   	push   %esi
 804948f:	53                   	push   %ebx
 8049490:	83 ec 3c             	sub    $0x3c,%esp
 8049493:	89 d5                	mov    %edx,%ebp
 8049495:	83 f9 01             	cmp    $0x1,%ecx
 8049498:	0f 86 c6 00 00 00    	jbe    8049564 <rio_readlineb+0xd8>
 804949e:	89 c3                	mov    %eax,%ebx
 80494a0:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 80494a4:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
 80494ab:	00 
 80494ac:	8d 78 0c             	lea    0xc(%eax),%edi
 80494af:	eb 34                	jmp    80494e5 <rio_readlineb+0x59>
 80494b1:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 80494b8:	00 
 80494b9:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80494bd:	8b 03                	mov    (%ebx),%eax
 80494bf:	89 04 24             	mov    %eax,(%esp)
 80494c2:	e8 09 f2 ff ff       	call   80486d0 <read@plt>
 80494c7:	89 43 04             	mov    %eax,0x4(%ebx)
 80494ca:	85 c0                	test   %eax,%eax
 80494cc:	79 0f                	jns    80494dd <rio_readlineb+0x51>
 80494ce:	e8 1d f3 ff ff       	call   80487f0 <__errno_location@plt>
 80494d3:	83 38 04             	cmpl   $0x4,(%eax)
 80494d6:	74 0d                	je     80494e5 <rio_readlineb+0x59>
 80494d8:	e9 99 00 00 00       	jmp    8049576 <rio_readlineb+0xea>
 80494dd:	85 c0                	test   %eax,%eax
 80494df:	90                   	nop
 80494e0:	74 66                	je     8049548 <rio_readlineb+0xbc>
 80494e2:	89 7b 08             	mov    %edi,0x8(%ebx)
 80494e5:	8b 73 04             	mov    0x4(%ebx),%esi
 80494e8:	85 f6                	test   %esi,%esi
 80494ea:	7e c5                	jle    80494b1 <rio_readlineb+0x25>
 80494ec:	85 f6                	test   %esi,%esi
 80494ee:	0f 95 c0             	setne  %al
 80494f1:	0f b6 c0             	movzbl %al,%eax
 80494f4:	89 44 24 14          	mov    %eax,0x14(%esp)
 80494f8:	8b 4b 08             	mov    0x8(%ebx),%ecx
 80494fb:	89 44 24 08          	mov    %eax,0x8(%esp)
 80494ff:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 8049503:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8049507:	8d 54 24 2f          	lea    0x2f(%esp),%edx
 804950b:	89 14 24             	mov    %edx,(%esp)
 804950e:	e8 ed f1 ff ff       	call   8048700 <memcpy@plt>
 8049513:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 8049517:	8b 54 24 14          	mov    0x14(%esp),%edx
 804951b:	01 d1                	add    %edx,%ecx
 804951d:	89 4b 08             	mov    %ecx,0x8(%ebx)
 8049520:	29 d6                	sub    %edx,%esi
 8049522:	89 73 04             	mov    %esi,0x4(%ebx)
 8049525:	83 fa 01             	cmp    $0x1,%edx
 8049528:	75 11                	jne    804953b <rio_readlineb+0xaf>
 804952a:	83 c5 01             	add    $0x1,%ebp
 804952d:	0f b6 44 24 2f       	movzbl 0x2f(%esp),%eax
 8049532:	88 45 ff             	mov    %al,-0x1(%ebp)
 8049535:	3c 0a                	cmp    $0xa,%al
 8049537:	75 1a                	jne    8049553 <rio_readlineb+0xc7>
 8049539:	eb 31                	jmp    804956c <rio_readlineb+0xe0>
 804953b:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
 8049540:	75 3b                	jne    804957d <rio_readlineb+0xf1>
 8049542:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049546:	eb 04                	jmp    804954c <rio_readlineb+0xc0>
 8049548:	8b 44 24 10          	mov    0x10(%esp),%eax
 804954c:	83 f8 01             	cmp    $0x1,%eax
 804954f:	75 1b                	jne    804956c <rio_readlineb+0xe0>
 8049551:	eb 31                	jmp    8049584 <rio_readlineb+0xf8>
 8049553:	83 44 24 10 01       	addl   $0x1,0x10(%esp)
 8049558:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804955c:	39 44 24 10          	cmp    %eax,0x10(%esp)
 8049560:	74 0a                	je     804956c <rio_readlineb+0xe0>
 8049562:	eb 81                	jmp    80494e5 <rio_readlineb+0x59>
 8049564:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
 804956b:	00 
 804956c:	c6 45 00 00          	movb   $0x0,0x0(%ebp)
 8049570:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049574:	eb 13                	jmp    8049589 <rio_readlineb+0xfd>
 8049576:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804957b:	eb 0c                	jmp    8049589 <rio_readlineb+0xfd>
 804957d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049582:	eb 05                	jmp    8049589 <rio_readlineb+0xfd>
 8049584:	b8 00 00 00 00       	mov    $0x0,%eax
 8049589:	83 c4 3c             	add    $0x3c,%esp
 804958c:	5b                   	pop    %ebx
 804958d:	5e                   	pop    %esi
 804958e:	5f                   	pop    %edi
 804958f:	5d                   	pop    %ebp
 8049590:	c3                   	ret    

08049591 <submitr>:
 8049591:	55                   	push   %ebp
 8049592:	57                   	push   %edi
 8049593:	56                   	push   %esi
 8049594:	53                   	push   %ebx
 8049595:	81 ec 5c a0 00 00    	sub    $0xa05c,%esp
 804959b:	8b 9c 24 84 a0 00 00 	mov    0xa084(%esp),%ebx
 80495a2:	c7 84 24 30 20 00 00 	movl   $0x0,0x2030(%esp)
 80495a9:	00 00 00 00 
 80495ad:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80495b4:	00 
 80495b5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80495bc:	00 
 80495bd:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80495c4:	e8 47 f2 ff ff       	call   8048810 <socket@plt>
 80495c9:	89 c5                	mov    %eax,%ebp
 80495cb:	85 c0                	test   %eax,%eax
 80495cd:	79 55                	jns    8049624 <submitr+0x93>
 80495cf:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 80495d6:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80495dc:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80495e3:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80495ea:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80495f1:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80495f8:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80495ff:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049606:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804960d:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049614:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804961a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804961f:	e9 54 07 00 00       	jmp    8049d78 <submitr+0x7e7>
 8049624:	8b 84 24 70 a0 00 00 	mov    0xa070(%esp),%eax
 804962b:	89 04 24             	mov    %eax,(%esp)
 804962e:	e8 ed f1 ff ff       	call   8048820 <gethostbyname@plt>
 8049633:	85 c0                	test   %eax,%eax
 8049635:	75 6f                	jne    80496a6 <submitr+0x115>
 8049637:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 804963e:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049644:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 804964b:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 8049652:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 8049659:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049660:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049667:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 804966e:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 8049675:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 804967c:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 8049683:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 804968a:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 8049690:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 8049694:	89 2c 24             	mov    %ebp,(%esp)
 8049697:	e8 b4 f1 ff ff       	call   8048850 <close@plt>
 804969c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496a1:	e9 d2 06 00 00       	jmp    8049d78 <submitr+0x7e7>
 80496a6:	8d b4 24 40 a0 00 00 	lea    0xa040(%esp),%esi
 80496ad:	c7 84 24 40 a0 00 00 	movl   $0x0,0xa040(%esp)
 80496b4:	00 00 00 00 
 80496b8:	c7 84 24 44 a0 00 00 	movl   $0x0,0xa044(%esp)
 80496bf:	00 00 00 00 
 80496c3:	c7 84 24 48 a0 00 00 	movl   $0x0,0xa048(%esp)
 80496ca:	00 00 00 00 
 80496ce:	c7 84 24 4c a0 00 00 	movl   $0x0,0xa04c(%esp)
 80496d5:	00 00 00 00 
 80496d9:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%esp)
 80496e0:	00 02 00 
 80496e3:	8b 50 0c             	mov    0xc(%eax),%edx
 80496e6:	89 54 24 08          	mov    %edx,0x8(%esp)
 80496ea:	8d 94 24 44 a0 00 00 	lea    0xa044(%esp),%edx
 80496f1:	89 54 24 04          	mov    %edx,0x4(%esp)
 80496f5:	8b 40 10             	mov    0x10(%eax),%eax
 80496f8:	8b 00                	mov    (%eax),%eax
 80496fa:	89 04 24             	mov    %eax,(%esp)
 80496fd:	e8 4e f0 ff ff       	call   8048750 <bcopy@plt>
 8049702:	0f b7 84 24 74 a0 00 	movzwl 0xa074(%esp),%eax
 8049709:	00 
 804970a:	66 c1 c8 08          	ror    $0x8,%ax
 804970e:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%esp)
 8049715:	00 
 8049716:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804971d:	00 
 804971e:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049722:	89 2c 24             	mov    %ebp,(%esp)
 8049725:	e8 16 f1 ff ff       	call   8048840 <connect@plt>
 804972a:	85 c0                	test   %eax,%eax
 804972c:	79 61                	jns    804978f <submitr+0x1fe>
 804972e:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049735:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804973b:	c7 40 04 72 3a 20 55 	movl   $0x55203a72,0x4(%eax)
 8049742:	c7 40 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%eax)
 8049749:	c7 40 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%eax)
 8049750:	c7 40 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%eax)
 8049757:	c7 40 14 6e 65 63 74 	movl   $0x7463656e,0x14(%eax)
 804975e:	c7 40 18 20 74 6f 20 	movl   $0x206f7420,0x18(%eax)
 8049765:	c7 40 1c 74 68 65 20 	movl   $0x20656874,0x1c(%eax)
 804976c:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 8049773:	66 c7 40 24 65 72    	movw   $0x7265,0x24(%eax)
 8049779:	c6 40 26 00          	movb   $0x0,0x26(%eax)
 804977d:	89 2c 24             	mov    %ebp,(%esp)
 8049780:	e8 cb f0 ff ff       	call   8048850 <close@plt>
 8049785:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804978a:	e9 e9 05 00 00       	jmp    8049d78 <submitr+0x7e7>
 804978f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 8049794:	89 df                	mov    %ebx,%edi
 8049796:	b8 00 00 00 00       	mov    $0x0,%eax
 804979b:	89 d1                	mov    %edx,%ecx
 804979d:	f2 ae                	repnz scas %es:(%edi),%al
 804979f:	f7 d1                	not    %ecx
 80497a1:	89 ce                	mov    %ecx,%esi
 80497a3:	8b bc 24 78 a0 00 00 	mov    0xa078(%esp),%edi
 80497aa:	89 d1                	mov    %edx,%ecx
 80497ac:	f2 ae                	repnz scas %es:(%edi),%al
 80497ae:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 80497b2:	8b bc 24 7c a0 00 00 	mov    0xa07c(%esp),%edi
 80497b9:	89 d1                	mov    %edx,%ecx
 80497bb:	f2 ae                	repnz scas %es:(%edi),%al
 80497bd:	f7 d1                	not    %ecx
 80497bf:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 80497c3:	8b bc 24 80 a0 00 00 	mov    0xa080(%esp),%edi
 80497ca:	89 d1                	mov    %edx,%ecx
 80497cc:	f2 ae                	repnz scas %es:(%edi),%al
 80497ce:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80497d2:	2b 44 24 18          	sub    0x18(%esp),%eax
 80497d6:	29 c8                	sub    %ecx,%eax
 80497d8:	89 c2                	mov    %eax,%edx
 80497da:	8d 44 76 fd          	lea    -0x3(%esi,%esi,2),%eax
 80497de:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
 80497e2:	3d 00 20 00 00       	cmp    $0x2000,%eax
 80497e7:	76 7a                	jbe    8049863 <submitr+0x2d2>
 80497e9:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 80497f0:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80497f6:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 80497fd:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049804:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 804980b:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049812:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049819:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 8049820:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049827:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804982e:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049835:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 804983c:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049843:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 804984a:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 8049851:	89 2c 24             	mov    %ebp,(%esp)
 8049854:	e8 f7 ef ff ff       	call   8048850 <close@plt>
 8049859:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804985e:	e9 15 05 00 00       	jmp    8049d78 <submitr+0x7e7>
 8049863:	8d 94 24 34 40 00 00 	lea    0x4034(%esp),%edx
 804986a:	b9 00 08 00 00       	mov    $0x800,%ecx
 804986f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049874:	89 d7                	mov    %edx,%edi
 8049876:	f3 ab                	rep stos %eax,%es:(%edi)
 8049878:	89 df                	mov    %ebx,%edi
 804987a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804987f:	f2 ae                	repnz scas %es:(%edi),%al
 8049881:	f7 d1                	not    %ecx
 8049883:	83 e9 01             	sub    $0x1,%ecx
 8049886:	89 ce                	mov    %ecx,%esi
 8049888:	0f 84 00 04 00 00    	je     8049c8e <submitr+0x6fd>
 804988e:	89 d7                	mov    %edx,%edi
 8049890:	0f b6 03             	movzbl (%ebx),%eax
 8049893:	3c 2a                	cmp    $0x2a,%al
 8049895:	74 21                	je     80498b8 <submitr+0x327>
 8049897:	8d 50 d3             	lea    -0x2d(%eax),%edx
 804989a:	80 fa 01             	cmp    $0x1,%dl
 804989d:	76 19                	jbe    80498b8 <submitr+0x327>
 804989f:	3c 5f                	cmp    $0x5f,%al
 80498a1:	74 15                	je     80498b8 <submitr+0x327>
 80498a3:	8d 50 d0             	lea    -0x30(%eax),%edx
 80498a6:	80 fa 09             	cmp    $0x9,%dl
 80498a9:	76 0d                	jbe    80498b8 <submitr+0x327>
 80498ab:	89 c2                	mov    %eax,%edx
 80498ad:	83 e2 df             	and    $0xffffffdf,%edx
 80498b0:	83 ea 41             	sub    $0x41,%edx
 80498b3:	80 fa 19             	cmp    $0x19,%dl
 80498b6:	77 07                	ja     80498bf <submitr+0x32e>
 80498b8:	8d 57 01             	lea    0x1(%edi),%edx
 80498bb:	88 07                	mov    %al,(%edi)
 80498bd:	eb 51                	jmp    8049910 <submitr+0x37f>
 80498bf:	3c 20                	cmp    $0x20,%al
 80498c1:	75 08                	jne    80498cb <submitr+0x33a>
 80498c3:	8d 57 01             	lea    0x1(%edi),%edx
 80498c6:	c6 07 2b             	movb   $0x2b,(%edi)
 80498c9:	eb 45                	jmp    8049910 <submitr+0x37f>
 80498cb:	8d 50 e0             	lea    -0x20(%eax),%edx
 80498ce:	80 fa 5f             	cmp    $0x5f,%dl
 80498d1:	76 08                	jbe    80498db <submitr+0x34a>
 80498d3:	3c 09                	cmp    $0x9,%al
 80498d5:	0f 85 1d 04 00 00    	jne    8049cf8 <submitr+0x767>
 80498db:	0f b6 c0             	movzbl %al,%eax
 80498de:	89 44 24 08          	mov    %eax,0x8(%esp)
 80498e2:	c7 44 24 04 74 a6 04 	movl   $0x804a674,0x4(%esp)
 80498e9:	08 
 80498ea:	8d 44 24 28          	lea    0x28(%esp),%eax
 80498ee:	89 04 24             	mov    %eax,(%esp)
 80498f1:	e8 0a ef ff ff       	call   8048800 <sprintf@plt>
 80498f6:	0f b6 44 24 28       	movzbl 0x28(%esp),%eax
 80498fb:	88 07                	mov    %al,(%edi)
 80498fd:	0f b6 44 24 29       	movzbl 0x29(%esp),%eax
 8049902:	88 47 01             	mov    %al,0x1(%edi)
 8049905:	8d 57 03             	lea    0x3(%edi),%edx
 8049908:	0f b6 44 24 2a       	movzbl 0x2a(%esp),%eax
 804990d:	88 47 02             	mov    %al,0x2(%edi)
 8049910:	83 c3 01             	add    $0x1,%ebx
 8049913:	83 ee 01             	sub    $0x1,%esi
 8049916:	0f 84 72 03 00 00    	je     8049c8e <submitr+0x6fd>
 804991c:	89 d7                	mov    %edx,%edi
 804991e:	e9 6d ff ff ff       	jmp    8049890 <submitr+0x2ff>
 8049923:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049927:	89 74 24 04          	mov    %esi,0x4(%esp)
 804992b:	89 2c 24             	mov    %ebp,(%esp)
 804992e:	e8 8d ee ff ff       	call   80487c0 <write@plt>
 8049933:	85 c0                	test   %eax,%eax
 8049935:	7f 10                	jg     8049947 <submitr+0x3b6>
 8049937:	e8 b4 ee ff ff       	call   80487f0 <__errno_location@plt>
 804993c:	83 38 04             	cmpl   $0x4,(%eax)
 804993f:	90                   	nop
 8049940:	75 0f                	jne    8049951 <submitr+0x3c0>
 8049942:	b8 00 00 00 00       	mov    $0x0,%eax
 8049947:	01 c6                	add    %eax,%esi
 8049949:	29 c3                	sub    %eax,%ebx
 804994b:	75 d6                	jne    8049923 <submitr+0x392>
 804994d:	85 ff                	test   %edi,%edi
 804994f:	79 65                	jns    80499b6 <submitr+0x425>
 8049951:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049958:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804995e:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049965:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804996c:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049973:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804997a:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049981:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 8049988:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 804998f:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 8049996:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 804999d:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 80499a4:	89 2c 24             	mov    %ebp,(%esp)
 80499a7:	e8 a4 ee ff ff       	call   8048850 <close@plt>
 80499ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499b1:	e9 c2 03 00 00       	jmp    8049d78 <submitr+0x7e7>
 80499b6:	89 ac 24 34 80 00 00 	mov    %ebp,0x8034(%esp)
 80499bd:	c7 84 24 38 80 00 00 	movl   $0x0,0x8038(%esp)
 80499c4:	00 00 00 00 
 80499c8:	8d 84 24 40 80 00 00 	lea    0x8040(%esp),%eax
 80499cf:	89 84 24 3c 80 00 00 	mov    %eax,0x803c(%esp)
 80499d6:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80499db:	8d 94 24 34 60 00 00 	lea    0x6034(%esp),%edx
 80499e2:	8d 84 24 34 80 00 00 	lea    0x8034(%esp),%eax
 80499e9:	e8 9e fa ff ff       	call   804948c <rio_readlineb>
 80499ee:	85 c0                	test   %eax,%eax
 80499f0:	7f 79                	jg     8049a6b <submitr+0x4da>
 80499f2:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 80499f9:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80499ff:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049a06:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049a0d:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049a14:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049a1b:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049a22:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049a29:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 8049a30:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 8049a37:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 8049a3e:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 8049a45:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 8049a4c:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 8049a53:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 8049a59:	89 2c 24             	mov    %ebp,(%esp)
 8049a5c:	e8 ef ed ff ff       	call   8048850 <close@plt>
 8049a61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a66:	e9 0d 03 00 00       	jmp    8049d78 <submitr+0x7e7>
 8049a6b:	8d 44 24 30          	lea    0x30(%esp),%eax
 8049a6f:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049a73:	8d 84 24 30 20 00 00 	lea    0x2030(%esp),%eax
 8049a7a:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049a7e:	8d 84 24 34 20 00 00 	lea    0x2034(%esp),%eax
 8049a85:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049a89:	c7 44 24 04 7b a6 04 	movl   $0x804a67b,0x4(%esp)
 8049a90:	08 
 8049a91:	8d 84 24 34 60 00 00 	lea    0x6034(%esp),%eax
 8049a98:	89 04 24             	mov    %eax,(%esp)
 8049a9b:	e8 30 ed ff ff       	call   80487d0 <__isoc99_sscanf@plt>
 8049aa0:	8b 84 24 30 20 00 00 	mov    0x2030(%esp),%eax
 8049aa7:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049aac:	0f 84 c1 00 00 00    	je     8049b73 <submitr+0x5e2>
 8049ab2:	8d 54 24 30          	lea    0x30(%esp),%edx
 8049ab6:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049aba:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049abe:	c7 44 24 04 8c a5 04 	movl   $0x804a58c,0x4(%esp)
 8049ac5:	08 
 8049ac6:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049acd:	89 04 24             	mov    %eax,(%esp)
 8049ad0:	e8 2b ed ff ff       	call   8048800 <sprintf@plt>
 8049ad5:	89 2c 24             	mov    %ebp,(%esp)
 8049ad8:	e8 73 ed ff ff       	call   8048850 <close@plt>
 8049add:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ae2:	e9 91 02 00 00       	jmp    8049d78 <submitr+0x7e7>
 8049ae7:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049aec:	8d 94 24 34 60 00 00 	lea    0x6034(%esp),%edx
 8049af3:	8d 84 24 34 80 00 00 	lea    0x8034(%esp),%eax
 8049afa:	e8 8d f9 ff ff       	call   804948c <rio_readlineb>
 8049aff:	85 c0                	test   %eax,%eax
 8049b01:	7f 70                	jg     8049b73 <submitr+0x5e2>
 8049b03:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049b0a:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049b10:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049b17:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049b1e:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049b25:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049b2c:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049b33:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049b3a:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 8049b41:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 8049b48:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 8049b4f:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 8049b56:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 8049b5d:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 8049b61:	89 2c 24             	mov    %ebp,(%esp)
 8049b64:	e8 e7 ec ff ff       	call   8048850 <close@plt>
 8049b69:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b6e:	e9 05 02 00 00       	jmp    8049d78 <submitr+0x7e7>
 8049b73:	80 bc 24 34 60 00 00 	cmpb   $0xd,0x6034(%esp)
 8049b7a:	0d 
 8049b7b:	0f 85 66 ff ff ff    	jne    8049ae7 <submitr+0x556>
 8049b81:	80 bc 24 35 60 00 00 	cmpb   $0xa,0x6035(%esp)
 8049b88:	0a 
 8049b89:	0f 85 58 ff ff ff    	jne    8049ae7 <submitr+0x556>
 8049b8f:	80 bc 24 36 60 00 00 	cmpb   $0x0,0x6036(%esp)
 8049b96:	00 
 8049b97:	0f 85 4a ff ff ff    	jne    8049ae7 <submitr+0x556>
 8049b9d:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049ba2:	8d 94 24 34 60 00 00 	lea    0x6034(%esp),%edx
 8049ba9:	8d 84 24 34 80 00 00 	lea    0x8034(%esp),%eax
 8049bb0:	e8 d7 f8 ff ff       	call   804948c <rio_readlineb>
 8049bb5:	85 c0                	test   %eax,%eax
 8049bb7:	7f 7a                	jg     8049c33 <submitr+0x6a2>
 8049bb9:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049bc0:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049bc6:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049bcd:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049bd4:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049bdb:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049be2:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049be9:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049bf0:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049bf7:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049bfe:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049c05:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049c0c:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049c13:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049c1a:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049c21:	89 2c 24             	mov    %ebp,(%esp)
 8049c24:	e8 27 ec ff ff       	call   8048850 <close@plt>
 8049c29:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c2e:	e9 45 01 00 00       	jmp    8049d78 <submitr+0x7e7>
 8049c33:	8d 84 24 34 60 00 00 	lea    0x6034(%esp),%eax
 8049c3a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049c3e:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049c45:	89 04 24             	mov    %eax,(%esp)
 8049c48:	e8 13 eb ff ff       	call   8048760 <strcpy@plt>
 8049c4d:	89 2c 24             	mov    %ebp,(%esp)
 8049c50:	e8 fb eb ff ff       	call   8048850 <close@plt>
 8049c55:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049c5c:	0f b6 00             	movzbl (%eax),%eax
 8049c5f:	83 e8 4f             	sub    $0x4f,%eax
 8049c62:	75 1b                	jne    8049c7f <submitr+0x6ee>
 8049c64:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049c6b:	0f b6 40 01          	movzbl 0x1(%eax),%eax
 8049c6f:	83 e8 4b             	sub    $0x4b,%eax
 8049c72:	75 0b                	jne    8049c7f <submitr+0x6ee>
 8049c74:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049c7b:	0f b6 40 02          	movzbl 0x2(%eax),%eax
 8049c7f:	85 c0                	test   %eax,%eax
 8049c81:	0f 95 c0             	setne  %al
 8049c84:	0f b6 c0             	movzbl %al,%eax
 8049c87:	f7 d8                	neg    %eax
 8049c89:	e9 ea 00 00 00       	jmp    8049d78 <submitr+0x7e7>
 8049c8e:	8d 84 24 34 40 00 00 	lea    0x4034(%esp),%eax
 8049c95:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049c99:	8b 84 24 80 a0 00 00 	mov    0xa080(%esp),%eax
 8049ca0:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049ca4:	8b 84 24 7c a0 00 00 	mov    0xa07c(%esp),%eax
 8049cab:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049caf:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
 8049cb6:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049cba:	c7 44 24 04 bc a5 04 	movl   $0x804a5bc,0x4(%esp)
 8049cc1:	08 
 8049cc2:	8d bc 24 34 60 00 00 	lea    0x6034(%esp),%edi
 8049cc9:	89 3c 24             	mov    %edi,(%esp)
 8049ccc:	e8 2f eb ff ff       	call   8048800 <sprintf@plt>
 8049cd1:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cd6:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049cdb:	f2 ae                	repnz scas %es:(%edi),%al
 8049cdd:	f7 d1                	not    %ecx
 8049cdf:	83 e9 01             	sub    $0x1,%ecx
 8049ce2:	89 cf                	mov    %ecx,%edi
 8049ce4:	0f 84 cc fc ff ff    	je     80499b6 <submitr+0x425>
 8049cea:	89 cb                	mov    %ecx,%ebx
 8049cec:	8d b4 24 34 60 00 00 	lea    0x6034(%esp),%esi
 8049cf3:	e9 2b fc ff ff       	jmp    8049923 <submitr+0x392>
 8049cf8:	8b bc 24 88 a0 00 00 	mov    0xa088(%esp),%edi
 8049cff:	be 08 a6 04 08       	mov    $0x804a608,%esi
 8049d04:	b8 43 00 00 00       	mov    $0x43,%eax
 8049d09:	f7 c7 01 00 00 00    	test   $0x1,%edi
 8049d0f:	74 1d                	je     8049d2e <submitr+0x79d>
 8049d11:	0f b6 05 08 a6 04 08 	movzbl 0x804a608,%eax
 8049d18:	88 07                	mov    %al,(%edi)
 8049d1a:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049d21:	8d 78 01             	lea    0x1(%eax),%edi
 8049d24:	be 09 a6 04 08       	mov    $0x804a609,%esi
 8049d29:	b8 42 00 00 00       	mov    $0x42,%eax
 8049d2e:	f7 c7 02 00 00 00    	test   $0x2,%edi
 8049d34:	74 0f                	je     8049d45 <submitr+0x7b4>
 8049d36:	0f b7 16             	movzwl (%esi),%edx
 8049d39:	66 89 17             	mov    %dx,(%edi)
 8049d3c:	83 c7 02             	add    $0x2,%edi
 8049d3f:	83 c6 02             	add    $0x2,%esi
 8049d42:	83 e8 02             	sub    $0x2,%eax
 8049d45:	89 c1                	mov    %eax,%ecx
 8049d47:	c1 e9 02             	shr    $0x2,%ecx
 8049d4a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049d4c:	ba 00 00 00 00       	mov    $0x0,%edx
 8049d51:	a8 02                	test   $0x2,%al
 8049d53:	74 0b                	je     8049d60 <submitr+0x7cf>
 8049d55:	0f b7 16             	movzwl (%esi),%edx
 8049d58:	66 89 17             	mov    %dx,(%edi)
 8049d5b:	ba 02 00 00 00       	mov    $0x2,%edx
 8049d60:	a8 01                	test   $0x1,%al
 8049d62:	74 07                	je     8049d6b <submitr+0x7da>
 8049d64:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 8049d68:	88 04 17             	mov    %al,(%edi,%edx,1)
 8049d6b:	89 2c 24             	mov    %ebp,(%esp)
 8049d6e:	e8 dd ea ff ff       	call   8048850 <close@plt>
 8049d73:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d78:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
 8049d7e:	5b                   	pop    %ebx
 8049d7f:	5e                   	pop    %esi
 8049d80:	5f                   	pop    %edi
 8049d81:	5d                   	pop    %ebp
 8049d82:	c3                   	ret    

08049d83 <init_timeout>:
 8049d83:	53                   	push   %ebx
 8049d84:	83 ec 18             	sub    $0x18,%esp
 8049d87:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8049d8b:	85 db                	test   %ebx,%ebx
 8049d8d:	74 26                	je     8049db5 <init_timeout+0x32>
 8049d8f:	c7 44 24 04 60 94 04 	movl   $0x8049460,0x4(%esp)
 8049d96:	08 
 8049d97:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 8049d9e:	e8 7d e9 ff ff       	call   8048720 <signal@plt>
 8049da3:	85 db                	test   %ebx,%ebx
 8049da5:	b8 00 00 00 00       	mov    $0x0,%eax
 8049daa:	0f 48 d8             	cmovs  %eax,%ebx
 8049dad:	89 1c 24             	mov    %ebx,(%esp)
 8049db0:	e8 8b e9 ff ff       	call   8048740 <alarm@plt>
 8049db5:	83 c4 18             	add    $0x18,%esp
 8049db8:	5b                   	pop    %ebx
 8049db9:	c3                   	ret    

08049dba <init_driver>:
 8049dba:	57                   	push   %edi
 8049dbb:	56                   	push   %esi
 8049dbc:	53                   	push   %ebx
 8049dbd:	83 ec 20             	sub    $0x20,%esp
 8049dc0:	8b 74 24 30          	mov    0x30(%esp),%esi
 8049dc4:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049dcb:	00 
 8049dcc:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 8049dd3:	e8 48 e9 ff ff       	call   8048720 <signal@plt>
 8049dd8:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049ddf:	00 
 8049de0:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049de7:	e8 34 e9 ff ff       	call   8048720 <signal@plt>
 8049dec:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049df3:	00 
 8049df4:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049dfb:	e8 20 e9 ff ff       	call   8048720 <signal@plt>
 8049e00:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049e07:	00 
 8049e08:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049e0f:	00 
 8049e10:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049e17:	e8 f4 e9 ff ff       	call   8048810 <socket@plt>
 8049e1c:	89 c3                	mov    %eax,%ebx
 8049e1e:	85 c0                	test   %eax,%eax
 8049e20:	79 4e                	jns    8049e70 <init_driver+0xb6>
 8049e22:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049e28:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049e2f:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049e36:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049e3d:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049e44:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049e4b:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049e52:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049e59:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049e60:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049e66:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e6b:	e9 1b 01 00 00       	jmp    8049f8b <init_driver+0x1d1>
 8049e70:	c7 04 24 8c a6 04 08 	movl   $0x804a68c,(%esp)
 8049e77:	e8 a4 e9 ff ff       	call   8048820 <gethostbyname@plt>
 8049e7c:	85 c0                	test   %eax,%eax
 8049e7e:	75 68                	jne    8049ee8 <init_driver+0x12e>
 8049e80:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049e86:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 8049e8d:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 8049e94:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 8049e9b:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049ea2:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049ea9:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 8049eb0:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 8049eb7:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 8049ebe:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 8049ec5:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 8049ecc:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 8049ed2:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 8049ed6:	89 1c 24             	mov    %ebx,(%esp)
 8049ed9:	e8 72 e9 ff ff       	call   8048850 <close@plt>
 8049ede:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ee3:	e9 a3 00 00 00       	jmp    8049f8b <init_driver+0x1d1>
 8049ee8:	8d 7c 24 10          	lea    0x10(%esp),%edi
 8049eec:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8049ef3:	00 
 8049ef4:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8049efb:	00 
 8049efc:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 8049f03:	00 
 8049f04:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 8049f0b:	00 
 8049f0c:	66 c7 44 24 10 02 00 	movw   $0x2,0x10(%esp)
 8049f13:	8b 50 0c             	mov    0xc(%eax),%edx
 8049f16:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049f1a:	8d 54 24 14          	lea    0x14(%esp),%edx
 8049f1e:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049f22:	8b 40 10             	mov    0x10(%eax),%eax
 8049f25:	8b 00                	mov    (%eax),%eax
 8049f27:	89 04 24             	mov    %eax,(%esp)
 8049f2a:	e8 21 e8 ff ff       	call   8048750 <bcopy@plt>
 8049f2f:	66 c7 44 24 12 3b 6e 	movw   $0x6e3b,0x12(%esp)
 8049f36:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049f3d:	00 
 8049f3e:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049f42:	89 1c 24             	mov    %ebx,(%esp)
 8049f45:	e8 f6 e8 ff ff       	call   8048840 <connect@plt>
 8049f4a:	85 c0                	test   %eax,%eax
 8049f4c:	79 27                	jns    8049f75 <init_driver+0x1bb>
 8049f4e:	c7 44 24 08 8c a6 04 	movl   $0x804a68c,0x8(%esp)
 8049f55:	08 
 8049f56:	c7 44 24 04 4c a6 04 	movl   $0x804a64c,0x4(%esp)
 8049f5d:	08 
 8049f5e:	89 34 24             	mov    %esi,(%esp)
 8049f61:	e8 9a e8 ff ff       	call   8048800 <sprintf@plt>
 8049f66:	89 1c 24             	mov    %ebx,(%esp)
 8049f69:	e8 e2 e8 ff ff       	call   8048850 <close@plt>
 8049f6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049f73:	eb 16                	jmp    8049f8b <init_driver+0x1d1>
 8049f75:	89 1c 24             	mov    %ebx,(%esp)
 8049f78:	e8 d3 e8 ff ff       	call   8048850 <close@plt>
 8049f7d:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049f82:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049f86:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f8b:	83 c4 20             	add    $0x20,%esp
 8049f8e:	5b                   	pop    %ebx
 8049f8f:	5e                   	pop    %esi
 8049f90:	5f                   	pop    %edi
 8049f91:	c3                   	ret    

08049f92 <driver_post>:
 8049f92:	53                   	push   %ebx
 8049f93:	83 ec 28             	sub    $0x28,%esp
 8049f96:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049f9a:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 8049f9e:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
 8049fa3:	74 24                	je     8049fc9 <driver_post+0x37>
 8049fa5:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049fa9:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049fad:	c7 04 24 9a a6 04 08 	movl   $0x804a69a,(%esp)
 8049fb4:	e8 27 e7 ff ff       	call   80486e0 <printf@plt>
 8049fb9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049fbe:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049fc2:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fc7:	eb 4d                	jmp    804a016 <driver_post+0x84>
 8049fc9:	85 c0                	test   %eax,%eax
 8049fcb:	74 3b                	je     804a008 <driver_post+0x76>
 8049fcd:	80 38 00             	cmpb   $0x0,(%eax)
 8049fd0:	74 36                	je     804a008 <driver_post+0x76>
 8049fd2:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8049fd6:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049fda:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049fde:	c7 44 24 10 b1 a6 04 	movl   $0x804a6b1,0x10(%esp)
 8049fe5:	08 
 8049fe6:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049fea:	c7 44 24 08 bf a6 04 	movl   $0x804a6bf,0x8(%esp)
 8049ff1:	08 
 8049ff2:	c7 44 24 04 6e 3b 00 	movl   $0x3b6e,0x4(%esp)
 8049ff9:	00 
 8049ffa:	c7 04 24 8c a6 04 08 	movl   $0x804a68c,(%esp)
 804a001:	e8 8b f5 ff ff       	call   8049591 <submitr>
 804a006:	eb 0e                	jmp    804a016 <driver_post+0x84>
 804a008:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 804a00d:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a011:	b8 00 00 00 00       	mov    $0x0,%eax
 804a016:	83 c4 28             	add    $0x28,%esp
 804a019:	5b                   	pop    %ebx
 804a01a:	c3                   	ret    
 804a01b:	66 90                	xchg   %ax,%ax
 804a01d:	66 90                	xchg   %ax,%ax
 804a01f:	90                   	nop

0804a020 <__libc_csu_init>:
 804a020:	55                   	push   %ebp
 804a021:	57                   	push   %edi
 804a022:	31 ff                	xor    %edi,%edi
 804a024:	56                   	push   %esi
 804a025:	53                   	push   %ebx
 804a026:	e8 85 e8 ff ff       	call   80488b0 <__x86.get_pc_thunk.bx>
 804a02b:	81 c3 d5 1f 00 00    	add    $0x1fd5,%ebx
 804a031:	83 ec 1c             	sub    $0x1c,%esp
 804a034:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 804a038:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804a03e:	e8 51 e6 ff ff       	call   8048694 <_init>
 804a043:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 804a049:	29 c6                	sub    %eax,%esi
 804a04b:	c1 fe 02             	sar    $0x2,%esi
 804a04e:	85 f6                	test   %esi,%esi
 804a050:	74 27                	je     804a079 <__libc_csu_init+0x59>
 804a052:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a058:	8b 44 24 38          	mov    0x38(%esp),%eax
 804a05c:	89 2c 24             	mov    %ebp,(%esp)
 804a05f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a063:	8b 44 24 34          	mov    0x34(%esp),%eax
 804a067:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a06b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804a072:	83 c7 01             	add    $0x1,%edi
 804a075:	39 f7                	cmp    %esi,%edi
 804a077:	75 df                	jne    804a058 <__libc_csu_init+0x38>
 804a079:	83 c4 1c             	add    $0x1c,%esp
 804a07c:	5b                   	pop    %ebx
 804a07d:	5e                   	pop    %esi
 804a07e:	5f                   	pop    %edi
 804a07f:	5d                   	pop    %ebp
 804a080:	c3                   	ret    
 804a081:	eb 0d                	jmp    804a090 <__libc_csu_fini>
 804a083:	90                   	nop
 804a084:	90                   	nop
 804a085:	90                   	nop
 804a086:	90                   	nop
 804a087:	90                   	nop
 804a088:	90                   	nop
 804a089:	90                   	nop
 804a08a:	90                   	nop
 804a08b:	90                   	nop
 804a08c:	90                   	nop
 804a08d:	90                   	nop
 804a08e:	90                   	nop
 804a08f:	90                   	nop

0804a090 <__libc_csu_fini>:
 804a090:	f3 c3                	repz ret 

Disassembly of section .fini:

0804a094 <_fini>:
 804a094:	53                   	push   %ebx
 804a095:	83 ec 08             	sub    $0x8,%esp
 804a098:	e8 13 e8 ff ff       	call   80488b0 <__x86.get_pc_thunk.bx>
 804a09d:	81 c3 63 1f 00 00    	add    $0x1f63,%ebx
 804a0a3:	83 c4 08             	add    $0x8,%esp
 804a0a6:	5b                   	pop    %ebx
 804a0a7:	c3                   	ret    
