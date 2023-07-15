08048cab <func4>:
 8048cab:	56                   	push   %esi
 8048cac:	53                   	push   %ebx
 8048cad:	83 ec 14             	sub    $0x14,%esp
 8048cb0:	8b 54 24 20          	mov    0x20(%esp),%edx
 8048cb4:	8b 44 24 24          	mov    0x24(%esp),%eax
 8048cb8:	8b 74 24 28          	mov    0x28(%esp),%esi
 8048cbc:	89 f1                	mov    %esi,%ecx
 8048cbe:	29 c1                	sub    %eax,%ecx
 8048cc0:	89 cb                	mov    %ecx,%ebx
 8048cc2:	c1 eb 1f             	shr    $0x1f,%ebx
 8048cc5:	01 d9                	add    %ebx,%ecx
 8048cc7:	d1 f9                	sar    %ecx
 8048cc9:	8d 1c 01             	lea    (%ecx,%eax,1),%ebx
 8048ccc:	39 d3                	cmp    %edx,%ebx
 8048cce:	7e 17                	jle    8048ce7 <func4+0x3c>
 8048cd0:	8d 4b ff             	lea    -0x1(%ebx),%ecx
 8048cd3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8048cd7:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048cdb:	89 14 24             	mov    %edx,(%esp)
 8048cde:	e8 c8 ff ff ff       	call   8048cab <func4>
 8048ce3:	01 d8                	add    %ebx,%eax
 8048ce5:	eb 1b                	jmp    8048d02 <func4+0x57>
 8048ce7:	89 d8                	mov    %ebx,%eax
 8048ce9:	39 d3                	cmp    %edx,%ebx
 8048ceb:	7d 15                	jge    8048d02 <func4+0x57>
 8048ced:	89 74 24 08          	mov    %esi,0x8(%esp)
 8048cf1:	8d 43 01             	lea    0x1(%ebx),%eax
 8048cf4:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048cf8:	89 14 24             	mov    %edx,(%esp)
 8048cfb:	e8 ab ff ff ff       	call   8048cab <func4>
 8048d00:	01 d8                	add    %ebx,%eax
 8048d02:	83 c4 14             	add    $0x14,%esp
 8048d05:	5b                   	pop    %ebx
 8048d06:	5e                   	pop    %esi
 8048d07:	c3                   	ret    

08048d08 <phase_4>:
 8048d08:	83 ec 2c             	sub    $0x2c,%esp
 8048d0b:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048d0f:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048d13:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048d17:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048d1b:	c7 44 24 04 91 a4 04 	movl   $0x804a491,0x4(%esp)
 8048d22:	08 
 8048d23:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048d27:	89 04 24             	mov    %eax,(%esp)
 8048d2a:	e8 a1 fa ff ff       	call   80487d0 <__isoc99_sscanf@plt>
 8048d2f:	83 f8 02             	cmp    $0x2,%eax
 8048d32:	75 07                	jne    8048d3b <phase_4+0x33>
 8048d34:	83 7c 24 1c 0e       	cmpl   $0xe,0x1c(%esp)
 8048d39:	76 05                	jbe    8048d40 <phase_4+0x38>
 8048d3b:	e8 bf 04 00 00       	call   80491ff <explode_bomb>
 8048d40:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 8048d47:	00 
 8048d48:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048d4f:	00 
 8048d50:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048d54:	89 04 24             	mov    %eax,(%esp)
 8048d57:	e8 4f ff ff ff       	call   8048cab <func4>
 8048d5c:	83 f8 13             	cmp    $0x13,%eax
 8048d5f:	75 07                	jne    8048d68 <phase_4+0x60>
 8048d61:	83 7c 24 18 13       	cmpl   $0x13,0x18(%esp)
 8048d66:	74 05                	je     8048d6d <phase_4+0x65>
 8048d68:	e8 92 04 00 00       	call   80491ff <explode_bomb>
 8048d6d:	83 c4 2c             	add    $0x2c,%esp
 8048d70:	c3                   	ret
