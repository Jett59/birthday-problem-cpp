
a.out:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	55                   	push   %rbp
   140001001:	48 89 e5             	mov    %rsp,%rbp
   140001004:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001008:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000100c:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140001010:	44 89 4d 28          	mov    %r9d,0x28(%rbp)
   140001014:	90                   	nop
   140001015:	5d                   	pop    %rbp
   140001016:	c3                   	ret    

0000000140001017 <pre_c_init>:
   140001017:	55                   	push   %rbp
   140001018:	48 89 e5             	mov    %rsp,%rbp
   14000101b:	48 83 ec 20          	sub    $0x20,%rsp
   14000101f:	e8 5c 04 00 00       	call   140001480 <check_managed_app>
   140001024:	89 05 f6 ef 00 00    	mov    %eax,0xeff6(%rip)        # 140010020 <managedapp>
   14000102a:	48 8b 05 6f a8 00 00 	mov    0xa86f(%rip),%rax        # 14000b8a0 <.refptr.mingw_app_type>
   140001031:	8b 00                	mov    (%rax),%eax
   140001033:	85 c0                	test   %eax,%eax
   140001035:	74 0c                	je     140001043 <pre_c_init+0x2c>
   140001037:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000103c:	e8 b7 77 00 00       	call   1400087f8 <__set_app_type>
   140001041:	eb 0a                	jmp    14000104d <pre_c_init+0x36>
   140001043:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001048:	e8 ab 77 00 00       	call   1400087f8 <__set_app_type>
   14000104d:	e8 0e 80 00 00       	call   140009060 <__p__fmode>
   140001052:	48 8b 15 07 a8 00 00 	mov    0xa807(%rip),%rdx        # 14000b860 <.refptr._fmode>
   140001059:	8b 12                	mov    (%rdx),%edx
   14000105b:	89 10                	mov    %edx,(%rax)
   14000105d:	e8 ee 7f 00 00       	call   140009050 <__p__commode>
   140001062:	48 8b 15 d7 a7 00 00 	mov    0xa7d7(%rip),%rdx        # 14000b840 <.refptr._commode>
   140001069:	8b 12                	mov    (%rdx),%edx
   14000106b:	89 10                	mov    %edx,(%rax)
   14000106d:	e8 9e 0a 00 00       	call   140001b10 <_setargv>
   140001072:	48 8b 05 87 a6 00 00 	mov    0xa687(%rip),%rax        # 14000b700 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   140001079:	8b 00                	mov    (%rax),%eax
   14000107b:	83 f8 01             	cmp    $0x1,%eax
   14000107e:	75 0f                	jne    14000108f <pre_c_init+0x78>
   140001080:	48 8b 05 f9 a7 00 00 	mov    0xa7f9(%rip),%rax        # 14000b880 <.refptr._matherr>
   140001087:	48 89 c1             	mov    %rax,%rcx
   14000108a:	e8 4b 15 00 00       	call   1400025da <__mingw_setusermatherr>
   14000108f:	b8 00 00 00 00       	mov    $0x0,%eax
   140001094:	48 83 c4 20          	add    $0x20,%rsp
   140001098:	5d                   	pop    %rbp
   140001099:	c3                   	ret    

000000014000109a <pre_cpp_init>:
   14000109a:	55                   	push   %rbp
   14000109b:	48 89 e5             	mov    %rsp,%rbp
   14000109e:	48 83 ec 30          	sub    $0x30,%rsp
   1400010a2:	48 8b 05 e7 a7 00 00 	mov    0xa7e7(%rip),%rax        # 14000b890 <.refptr._newmode>
   1400010a9:	8b 00                	mov    (%rax),%eax
   1400010ab:	89 05 77 ef 00 00    	mov    %eax,0xef77(%rip)        # 140010028 <startinfo>
   1400010b1:	48 8b 05 98 a7 00 00 	mov    0xa798(%rip),%rax        # 14000b850 <.refptr._dowildcard>
   1400010b8:	8b 10                	mov    (%rax),%edx
   1400010ba:	48 8d 05 67 ef 00 00 	lea    0xef67(%rip),%rax        # 140010028 <startinfo>
   1400010c1:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400010c6:	41 89 d1             	mov    %edx,%r9d
   1400010c9:	4c 8d 05 40 ef 00 00 	lea    0xef40(%rip),%r8        # 140010010 <envp>
   1400010d0:	48 8d 05 31 ef 00 00 	lea    0xef31(%rip),%rax        # 140010008 <argv>
   1400010d7:	48 89 c2             	mov    %rax,%rdx
   1400010da:	48 8d 05 23 ef 00 00 	lea    0xef23(%rip),%rax        # 140010004 <argc>
   1400010e1:	48 89 c1             	mov    %rax,%rcx
   1400010e4:	e8 1f 77 00 00       	call   140008808 <__getmainargs>
   1400010e9:	89 05 29 ef 00 00    	mov    %eax,0xef29(%rip)        # 140010018 <argret>
   1400010ef:	90                   	nop
   1400010f0:	48 83 c4 30          	add    $0x30,%rsp
   1400010f4:	5d                   	pop    %rbp
   1400010f5:	c3                   	ret    

00000001400010f6 <WinMainCRTStartup>:
   1400010f6:	55                   	push   %rbp
   1400010f7:	48 89 e5             	mov    %rsp,%rbp
   1400010fa:	48 83 ec 30          	sub    $0x30,%rsp
   1400010fe:	c7 45 fc ff 00 00 00 	movl   $0xff,-0x4(%rbp)

0000000140001105 <.l_startw>:
   140001105:	48 8b 05 94 a7 00 00 	mov    0xa794(%rip),%rax        # 14000b8a0 <.refptr.mingw_app_type>
   14000110c:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001112:	e8 3d 00 00 00       	call   140001154 <__tmainCRTStartup>
   140001117:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000111a:	90                   	nop

000000014000111b <.l_endw>:
   14000111b:	90                   	nop
   14000111c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000111f:	48 83 c4 30          	add    $0x30,%rsp
   140001123:	5d                   	pop    %rbp
   140001124:	c3                   	ret    

0000000140001125 <mainCRTStartup>:
   140001125:	55                   	push   %rbp
   140001126:	48 89 e5             	mov    %rsp,%rbp
   140001129:	48 83 ec 30          	sub    $0x30,%rsp
   14000112d:	c7 45 fc ff 00 00 00 	movl   $0xff,-0x4(%rbp)

0000000140001134 <.l_start>:
   140001134:	48 8b 05 65 a7 00 00 	mov    0xa765(%rip),%rax        # 14000b8a0 <.refptr.mingw_app_type>
   14000113b:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001141:	e8 0e 00 00 00       	call   140001154 <__tmainCRTStartup>
   140001146:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140001149:	90                   	nop

000000014000114a <.l_end>:
   14000114a:	90                   	nop
   14000114b:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000114e:	48 83 c4 30          	add    $0x30,%rsp
   140001152:	5d                   	pop    %rbp
   140001153:	c3                   	ret    

0000000140001154 <__tmainCRTStartup>:
   140001154:	55                   	push   %rbp
   140001155:	48 89 e5             	mov    %rsp,%rbp
   140001158:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
   14000115f:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140001166:	00 
   140001167:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   14000116e:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
   140001175:	41 b8 68 00 00 00    	mov    $0x68,%r8d
   14000117b:	ba 00 00 00 00       	mov    $0x0,%edx
   140001180:	48 89 c1             	mov    %rax,%rcx
   140001183:	e8 d8 75 00 00       	call   140008760 <memset>
   140001188:	48 8b 05 11 a7 00 00 	mov    0xa711(%rip),%rax        # 14000b8a0 <.refptr.mingw_app_type>
   14000118f:	8b 00                	mov    (%rax),%eax
   140001191:	85 c0                	test   %eax,%eax
   140001193:	74 13                	je     1400011a8 <__tmainCRTStartup+0x54>
   140001195:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
   14000119c:	48 89 c1             	mov    %rax,%rcx
   14000119f:	48 8b 05 ee 01 01 00 	mov    0x101ee(%rip),%rax        # 140011394 <__imp_GetStartupInfoA>
   1400011a6:	ff d0                	call   *%rax
   1400011a8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   1400011af:	00 
   1400011b0:	c7 45 dc 30 00 00 00 	movl   $0x30,-0x24(%rbp)
   1400011b7:	8b 45 dc             	mov    -0x24(%rbp),%eax
   1400011ba:	65 48 8b 00          	mov    %gs:(%rax),%rax
   1400011be:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   1400011c2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   1400011c6:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400011ca:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400011ce:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
   1400011d5:	eb 21                	jmp    1400011f8 <__tmainCRTStartup+0xa4>
   1400011d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400011db:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
   1400011df:	75 09                	jne    1400011ea <__tmainCRTStartup+0x96>
   1400011e1:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
   1400011e8:	eb 45                	jmp    14000122f <__tmainCRTStartup+0xdb>
   1400011ea:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011ef:	48 8b 05 d6 01 01 00 	mov    0x101d6(%rip),%rax        # 1400113cc <__imp_Sleep>
   1400011f6:	ff d0                	call   *%rax
   1400011f8:	48 8b 05 d1 a5 00 00 	mov    0xa5d1(%rip),%rax        # 14000b7d0 <.refptr.__native_startup_lock>
   1400011ff:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   140001203:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140001207:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   14000120b:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
   140001212:	00 
   140001213:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
   140001217:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   14000121b:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   14000121f:	f0 48 0f b1 0a       	lock cmpxchg %rcx,(%rdx)
   140001224:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140001228:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   14000122d:	75 a8                	jne    1400011d7 <__tmainCRTStartup+0x83>
   14000122f:	48 8b 05 aa a5 00 00 	mov    0xa5aa(%rip),%rax        # 14000b7e0 <.refptr.__native_startup_state>
   140001236:	8b 00                	mov    (%rax),%eax
   140001238:	83 f8 01             	cmp    $0x1,%eax
   14000123b:	75 0c                	jne    140001249 <__tmainCRTStartup+0xf5>
   14000123d:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001242:	e8 a1 75 00 00       	call   1400087e8 <_amsg_exit>
   140001247:	eb 3f                	jmp    140001288 <__tmainCRTStartup+0x134>
   140001249:	48 8b 05 90 a5 00 00 	mov    0xa590(%rip),%rax        # 14000b7e0 <.refptr.__native_startup_state>
   140001250:	8b 00                	mov    (%rax),%eax
   140001252:	85 c0                	test   %eax,%eax
   140001254:	75 28                	jne    14000127e <__tmainCRTStartup+0x12a>
   140001256:	48 8b 05 83 a5 00 00 	mov    0xa583(%rip),%rax        # 14000b7e0 <.refptr.__native_startup_state>
   14000125d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001263:	48 8b 05 c6 a5 00 00 	mov    0xa5c6(%rip),%rax        # 14000b830 <.refptr.__xi_z>
   14000126a:	48 89 c2             	mov    %rax,%rdx
   14000126d:	48 8b 05 ac a5 00 00 	mov    0xa5ac(%rip),%rax        # 14000b820 <.refptr.__xi_a>
   140001274:	48 89 c1             	mov    %rax,%rcx
   140001277:	e8 54 75 00 00       	call   1400087d0 <_initterm>
   14000127c:	eb 0a                	jmp    140001288 <__tmainCRTStartup+0x134>
   14000127e:	c7 05 9c ed 00 00 01 	movl   $0x1,0xed9c(%rip)        # 140010024 <has_cctor>
   140001285:	00 00 00 
   140001288:	48 8b 05 51 a5 00 00 	mov    0xa551(%rip),%rax        # 14000b7e0 <.refptr.__native_startup_state>
   14000128f:	8b 00                	mov    (%rax),%eax
   140001291:	83 f8 01             	cmp    $0x1,%eax
   140001294:	75 26                	jne    1400012bc <__tmainCRTStartup+0x168>
   140001296:	48 8b 05 73 a5 00 00 	mov    0xa573(%rip),%rax        # 14000b810 <.refptr.__xc_z>
   14000129d:	48 89 c2             	mov    %rax,%rdx
   1400012a0:	48 8b 05 59 a5 00 00 	mov    0xa559(%rip),%rax        # 14000b800 <.refptr.__xc_a>
   1400012a7:	48 89 c1             	mov    %rax,%rcx
   1400012aa:	e8 21 75 00 00       	call   1400087d0 <_initterm>
   1400012af:	48 8b 05 2a a5 00 00 	mov    0xa52a(%rip),%rax        # 14000b7e0 <.refptr.__native_startup_state>
   1400012b6:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400012bc:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
   1400012c0:	75 1f                	jne    1400012e1 <__tmainCRTStartup+0x18d>
   1400012c2:	48 8b 05 07 a5 00 00 	mov    0xa507(%rip),%rax        # 14000b7d0 <.refptr.__native_startup_lock>
   1400012c9:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   1400012cd:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   1400012d4:	00 
   1400012d5:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
   1400012d9:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
   1400012dd:	48 87 10             	xchg   %rdx,(%rax)
   1400012e0:	90                   	nop
   1400012e1:	48 8b 05 68 a4 00 00 	mov    0xa468(%rip),%rax        # 14000b750 <.refptr.__dyn_tls_init_callback>
   1400012e8:	48 8b 00             	mov    (%rax),%rax
   1400012eb:	48 85 c0             	test   %rax,%rax
   1400012ee:	74 1c                	je     14000130c <__tmainCRTStartup+0x1b8>
   1400012f0:	48 8b 05 59 a4 00 00 	mov    0xa459(%rip),%rax        # 14000b750 <.refptr.__dyn_tls_init_callback>
   1400012f7:	48 8b 00             	mov    (%rax),%rax
   1400012fa:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140001300:	ba 02 00 00 00       	mov    $0x2,%edx
   140001305:	b9 00 00 00 00       	mov    $0x0,%ecx
   14000130a:	ff d0                	call   *%rax
   14000130c:	e8 ac 11 00 00       	call   1400024bd <_pei386_runtime_relocator>
   140001311:	48 8b 05 58 a5 00 00 	mov    0xa558(%rip),%rax        # 14000b870 <.refptr._gnu_exception_handler>
   140001318:	48 89 c1             	mov    %rax,%rcx
   14000131b:	48 8b 05 a2 00 01 00 	mov    0x100a2(%rip),%rax        # 1400113c4 <__imp_SetUnhandledExceptionFilter>
   140001322:	ff d0                	call   *%rax
   140001324:	48 8b 15 95 a4 00 00 	mov    0xa495(%rip),%rdx        # 14000b7c0 <.refptr.__mingw_oldexcpt_handler>
   14000132b:	48 89 02             	mov    %rax,(%rdx)
   14000132e:	48 8d 05 cb fc ff ff 	lea    -0x335(%rip),%rax        # 140001000 <__mingw_invalidParameterHandler>
   140001335:	48 89 c1             	mov    %rax,%rcx
   140001338:	e8 a3 7b 00 00       	call   140008ee0 <_set_invalid_parameter_handler>
   14000133d:	e8 0e 0a 00 00       	call   140001d50 <_fpreset>
   140001342:	48 8d 05 9f f8 00 00 	lea    0xf89f(%rip),%rax        # 140010be8 <__mingw_winmain_hInstance>
   140001349:	48 8b 15 20 a4 00 00 	mov    0xa420(%rip),%rdx        # 14000b770 <.refptr.__image_base__>
   140001350:	48 89 10             	mov    %rdx,(%rax)
   140001353:	e8 e8 7c 00 00       	call   140009040 <__p__acmdln>
   140001358:	48 8b 00             	mov    (%rax),%rax
   14000135b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000135f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140001364:	74 66                	je     1400013cc <__tmainCRTStartup+0x278>
   140001366:	eb 1d                	jmp    140001385 <__tmainCRTStartup+0x231>
   140001368:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000136c:	0f b6 00             	movzbl (%rax),%eax
   14000136f:	3c 22                	cmp    $0x22,%al
   140001371:	75 0d                	jne    140001380 <__tmainCRTStartup+0x22c>
   140001373:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   140001377:	0f 94 c0             	sete   %al
   14000137a:	0f b6 c0             	movzbl %al,%eax
   14000137d:	89 45 f4             	mov    %eax,-0xc(%rbp)
   140001380:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
   140001385:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001389:	0f b6 00             	movzbl (%rax),%eax
   14000138c:	3c 20                	cmp    $0x20,%al
   14000138e:	7f d8                	jg     140001368 <__tmainCRTStartup+0x214>
   140001390:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001394:	0f b6 00             	movzbl (%rax),%eax
   140001397:	84 c0                	test   %al,%al
   140001399:	74 0d                	je     1400013a8 <__tmainCRTStartup+0x254>
   14000139b:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   14000139f:	75 c7                	jne    140001368 <__tmainCRTStartup+0x214>
   1400013a1:	eb 05                	jmp    1400013a8 <__tmainCRTStartup+0x254>
   1400013a3:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
   1400013a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400013ac:	0f b6 00             	movzbl (%rax),%eax
   1400013af:	84 c0                	test   %al,%al
   1400013b1:	74 0b                	je     1400013be <__tmainCRTStartup+0x26a>
   1400013b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400013b7:	0f b6 00             	movzbl (%rax),%eax
   1400013ba:	3c 20                	cmp    $0x20,%al
   1400013bc:	7e e5                	jle    1400013a3 <__tmainCRTStartup+0x24f>
   1400013be:	48 8d 05 1b f8 00 00 	lea    0xf81b(%rip),%rax        # 140010be0 <__mingw_winmain_lpCmdLine>
   1400013c5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   1400013c9:	48 89 10             	mov    %rdx,(%rax)
   1400013cc:	48 8b 05 cd a4 00 00 	mov    0xa4cd(%rip),%rax        # 14000b8a0 <.refptr.mingw_app_type>
   1400013d3:	8b 00                	mov    (%rax),%eax
   1400013d5:	85 c0                	test   %eax,%eax
   1400013d7:	74 21                	je     1400013fa <__tmainCRTStartup+0x2a6>
   1400013d9:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
   1400013df:	83 e0 01             	and    $0x1,%eax
   1400013e2:	85 c0                	test   %eax,%eax
   1400013e4:	74 09                	je     1400013ef <__tmainCRTStartup+0x29b>
   1400013e6:	0f b7 45 80          	movzwl -0x80(%rbp),%eax
   1400013ea:	0f b7 c0             	movzwl %ax,%eax
   1400013ed:	eb 05                	jmp    1400013f4 <__tmainCRTStartup+0x2a0>
   1400013ef:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400013f4:	89 05 06 8c 00 00    	mov    %eax,0x8c06(%rip)        # 14000a000 <__data_start__>
   1400013fa:	8b 05 04 ec 00 00    	mov    0xec04(%rip),%eax        # 140010004 <argc>
   140001400:	48 8d 15 01 ec 00 00 	lea    0xec01(%rip),%rdx        # 140010008 <argv>
   140001407:	89 c1                	mov    %eax,%ecx
   140001409:	e8 83 01 00 00       	call   140001591 <duplicate_ppstrings>
   14000140e:	e8 b4 06 00 00       	call   140001ac7 <__main>
   140001413:	48 8b 05 66 a3 00 00 	mov    0xa366(%rip),%rax        # 14000b780 <.refptr.__imp___initenv>
   14000141a:	48 8b 00             	mov    (%rax),%rax
   14000141d:	48 8b 15 ec eb 00 00 	mov    0xebec(%rip),%rdx        # 140010010 <envp>
   140001424:	48 89 10             	mov    %rdx,(%rax)
   140001427:	48 8b 0d e2 eb 00 00 	mov    0xebe2(%rip),%rcx        # 140010010 <envp>
   14000142e:	48 8b 15 d3 eb 00 00 	mov    0xebd3(%rip),%rdx        # 140010008 <argv>
   140001435:	8b 05 c9 eb 00 00    	mov    0xebc9(%rip),%eax        # 140010004 <argc>
   14000143b:	49 89 c8             	mov    %rcx,%r8
   14000143e:	89 c1                	mov    %eax,%ecx
   140001440:	e8 3b 7f 00 00       	call   140009380 <main>
   140001445:	89 05 d1 eb 00 00    	mov    %eax,0xebd1(%rip)        # 14001001c <mainret>
   14000144b:	8b 05 cf eb 00 00    	mov    0xebcf(%rip),%eax        # 140010020 <managedapp>
   140001451:	85 c0                	test   %eax,%eax
   140001453:	75 0d                	jne    140001462 <__tmainCRTStartup+0x30e>
   140001455:	8b 05 c1 eb 00 00    	mov    0xebc1(%rip),%eax        # 14001001c <mainret>
   14000145b:	89 c1                	mov    %eax,%ecx
   14000145d:	e8 3e 73 00 00       	call   1400087a0 <exit>
   140001462:	8b 05 bc eb 00 00    	mov    0xebbc(%rip),%eax        # 140010024 <has_cctor>
   140001468:	85 c0                	test   %eax,%eax
   14000146a:	75 05                	jne    140001471 <__tmainCRTStartup+0x31d>
   14000146c:	e8 6f 73 00 00       	call   1400087e0 <_cexit>
   140001471:	8b 05 a5 eb 00 00    	mov    0xeba5(%rip),%eax        # 14001001c <mainret>
   140001477:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
   14000147e:	5d                   	pop    %rbp
   14000147f:	c3                   	ret    

0000000140001480 <check_managed_app>:
   140001480:	55                   	push   %rbp
   140001481:	48 89 e5             	mov    %rsp,%rbp
   140001484:	48 83 ec 20          	sub    $0x20,%rsp
   140001488:	48 8b 05 31 a4 00 00 	mov    0xa431(%rip),%rax        # 14000b8c0 <.refptr.mingw_initltsdrot_force>
   14000148f:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001495:	48 8b 05 34 a4 00 00 	mov    0xa434(%rip),%rax        # 14000b8d0 <.refptr.mingw_initltsdyn_force>
   14000149c:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014a2:	48 8b 05 37 a4 00 00 	mov    0xa437(%rip),%rax        # 14000b8e0 <.refptr.mingw_initltssuo_force>
   1400014a9:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014af:	48 8b 05 fa a3 00 00 	mov    0xa3fa(%rip),%rax        # 14000b8b0 <.refptr.mingw_initcharmax>
   1400014b6:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014bc:	48 8b 05 ad a2 00 00 	mov    0xa2ad(%rip),%rax        # 14000b770 <.refptr.__image_base__>
   1400014c3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400014c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400014cb:	0f b7 00             	movzwl (%rax),%eax
   1400014ce:	66 3d 4d 5a          	cmp    $0x5a4d,%ax
   1400014d2:	74 0a                	je     1400014de <check_managed_app+0x5e>
   1400014d4:	b8 00 00 00 00       	mov    $0x0,%eax
   1400014d9:	e9 ad 00 00 00       	jmp    14000158b <check_managed_app+0x10b>
   1400014de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400014e2:	8b 40 3c             	mov    0x3c(%rax),%eax
   1400014e5:	48 63 d0             	movslq %eax,%rdx
   1400014e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400014ec:	48 01 d0             	add    %rdx,%rax
   1400014ef:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400014f3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400014f7:	8b 00                	mov    (%rax),%eax
   1400014f9:	3d 50 45 00 00       	cmp    $0x4550,%eax
   1400014fe:	74 0a                	je     14000150a <check_managed_app+0x8a>
   140001500:	b8 00 00 00 00       	mov    $0x0,%eax
   140001505:	e9 81 00 00 00       	jmp    14000158b <check_managed_app+0x10b>
   14000150a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000150e:	48 83 c0 18          	add    $0x18,%rax
   140001512:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140001516:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000151a:	0f b7 00             	movzwl (%rax),%eax
   14000151d:	0f b7 c0             	movzwl %ax,%eax
   140001520:	3d 0b 01 00 00       	cmp    $0x10b,%eax
   140001525:	74 09                	je     140001530 <check_managed_app+0xb0>
   140001527:	3d 0b 02 00 00       	cmp    $0x20b,%eax
   14000152c:	74 29                	je     140001557 <check_managed_app+0xd7>
   14000152e:	eb 56                	jmp    140001586 <check_managed_app+0x106>
   140001530:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001534:	8b 40 5c             	mov    0x5c(%rax),%eax
   140001537:	83 f8 0e             	cmp    $0xe,%eax
   14000153a:	77 07                	ja     140001543 <check_managed_app+0xc3>
   14000153c:	b8 00 00 00 00       	mov    $0x0,%eax
   140001541:	eb 48                	jmp    14000158b <check_managed_app+0x10b>
   140001543:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001547:	8b 80 d0 00 00 00    	mov    0xd0(%rax),%eax
   14000154d:	85 c0                	test   %eax,%eax
   14000154f:	0f 95 c0             	setne  %al
   140001552:	0f b6 c0             	movzbl %al,%eax
   140001555:	eb 34                	jmp    14000158b <check_managed_app+0x10b>
   140001557:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000155b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   14000155f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140001563:	8b 40 6c             	mov    0x6c(%rax),%eax
   140001566:	83 f8 0e             	cmp    $0xe,%eax
   140001569:	77 07                	ja     140001572 <check_managed_app+0xf2>
   14000156b:	b8 00 00 00 00       	mov    $0x0,%eax
   140001570:	eb 19                	jmp    14000158b <check_managed_app+0x10b>
   140001572:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140001576:	8b 80 e0 00 00 00    	mov    0xe0(%rax),%eax
   14000157c:	85 c0                	test   %eax,%eax
   14000157e:	0f 95 c0             	setne  %al
   140001581:	0f b6 c0             	movzbl %al,%eax
   140001584:	eb 05                	jmp    14000158b <check_managed_app+0x10b>
   140001586:	b8 00 00 00 00       	mov    $0x0,%eax
   14000158b:	48 83 c4 20          	add    $0x20,%rsp
   14000158f:	5d                   	pop    %rbp
   140001590:	c3                   	ret    

0000000140001591 <duplicate_ppstrings>:
   140001591:	55                   	push   %rbp
   140001592:	53                   	push   %rbx
   140001593:	48 83 ec 48          	sub    $0x48,%rsp
   140001597:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   14000159c:	89 4d 20             	mov    %ecx,0x20(%rbp)
   14000159f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400015a3:	8b 45 20             	mov    0x20(%rbp),%eax
   1400015a6:	83 c0 01             	add    $0x1,%eax
   1400015a9:	48 98                	cltq   
   1400015ab:	48 c1 e0 03          	shl    $0x3,%rax
   1400015af:	48 89 c1             	mov    %rax,%rcx
   1400015b2:	e8 b9 71 00 00       	call   140008770 <malloc>
   1400015b7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400015bb:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400015bf:	48 8b 00             	mov    (%rax),%rax
   1400015c2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400015c6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400015cd:	e9 8c 00 00 00       	jmp    14000165e <duplicate_ppstrings+0xcd>
   1400015d2:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400015d5:	48 98                	cltq   
   1400015d7:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400015de:	00 
   1400015df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400015e3:	48 01 d0             	add    %rdx,%rax
   1400015e6:	48 8b 00             	mov    (%rax),%rax
   1400015e9:	48 89 c1             	mov    %rax,%rcx
   1400015ec:	e8 57 71 00 00       	call   140008748 <strlen>
   1400015f1:	48 83 c0 01          	add    $0x1,%rax
   1400015f5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400015f9:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400015fc:	48 98                	cltq   
   1400015fe:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001605:	00 
   140001606:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000160a:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
   14000160e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140001612:	48 89 c1             	mov    %rax,%rcx
   140001615:	e8 56 71 00 00       	call   140008770 <malloc>
   14000161a:	48 89 03             	mov    %rax,(%rbx)
   14000161d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001620:	48 98                	cltq   
   140001622:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001629:	00 
   14000162a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000162e:	48 01 d0             	add    %rdx,%rax
   140001631:	48 8b 10             	mov    (%rax),%rdx
   140001634:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001637:	48 98                	cltq   
   140001639:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
   140001640:	00 
   140001641:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001645:	48 01 c8             	add    %rcx,%rax
   140001648:	48 8b 00             	mov    (%rax),%rax
   14000164b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
   14000164f:	49 89 c8             	mov    %rcx,%r8
   140001652:	48 89 c1             	mov    %rax,%rcx
   140001655:	e8 0e 71 00 00       	call   140008768 <memcpy>
   14000165a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   14000165e:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001661:	3b 45 20             	cmp    0x20(%rbp),%eax
   140001664:	0f 8c 68 ff ff ff    	jl     1400015d2 <duplicate_ppstrings+0x41>
   14000166a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000166d:	48 98                	cltq   
   14000166f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001676:	00 
   140001677:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000167b:	48 01 d0             	add    %rdx,%rax
   14000167e:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140001685:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140001689:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   14000168d:	48 89 10             	mov    %rdx,(%rax)
   140001690:	90                   	nop
   140001691:	48 83 c4 48          	add    $0x48,%rsp
   140001695:	5b                   	pop    %rbx
   140001696:	5d                   	pop    %rbp
   140001697:	c3                   	ret    

0000000140001698 <atexit>:
   140001698:	55                   	push   %rbp
   140001699:	48 89 e5             	mov    %rsp,%rbp
   14000169c:	48 83 ec 20          	sub    $0x20,%rsp
   1400016a0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400016a4:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   1400016a8:	e8 1b 71 00 00       	call   1400087c8 <_onexit>
   1400016ad:	48 85 c0             	test   %rax,%rax
   1400016b0:	74 07                	je     1400016b9 <atexit+0x21>
   1400016b2:	b8 00 00 00 00       	mov    $0x0,%eax
   1400016b7:	eb 05                	jmp    1400016be <atexit+0x26>
   1400016b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400016be:	48 83 c4 20          	add    $0x20,%rsp
   1400016c2:	5d                   	pop    %rbp
   1400016c3:	c3                   	ret    
   1400016c4:	90                   	nop
   1400016c5:	90                   	nop
   1400016c6:	90                   	nop
   1400016c7:	90                   	nop
   1400016c8:	90                   	nop
   1400016c9:	90                   	nop
   1400016ca:	90                   	nop
   1400016cb:	90                   	nop
   1400016cc:	90                   	nop
   1400016cd:	90                   	nop
   1400016ce:	90                   	nop
   1400016cf:	90                   	nop

00000001400016d0 <.weak.__register_frame_info.hmod_libgcc>:
   1400016d0:	c3                   	ret    
   1400016d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400016d8:	00 00 00 00 
   1400016dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400016e0 <.weak.__deregister_frame_info.hmod_libgcc>:
   1400016e0:	31 c0                	xor    %eax,%eax
   1400016e2:	c3                   	ret    
   1400016e3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400016ea:	00 00 00 00 
   1400016ee:	66 90                	xchg   %ax,%ax

00000001400016f0 <__gcc_register_frame>:
   1400016f0:	55                   	push   %rbp
   1400016f1:	41 55                	push   %r13
   1400016f3:	41 54                	push   %r12
   1400016f5:	53                   	push   %rbx
   1400016f6:	48 83 ec 28          	sub    $0x28,%rsp
   1400016fa:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400016ff:	4c 8d 2d fa 98 00 00 	lea    0x98fa(%rip),%r13        # 14000b000 <.rdata>
   140001706:	4c 89 e9             	mov    %r13,%rcx
   140001709:	ff 15 75 fc 00 00    	call   *0xfc75(%rip)        # 140011384 <__imp_GetModuleHandleA>
   14000170f:	49 89 c4             	mov    %rax,%r12
   140001712:	48 85 c0             	test   %rax,%rax
   140001715:	74 59                	je     140001770 <__gcc_register_frame+0x80>
   140001717:	4c 89 e9             	mov    %r13,%rcx
   14000171a:	ff 15 94 fc 00 00    	call   *0xfc94(%rip)        # 1400113b4 <__imp_LoadLibraryA>
   140001720:	4c 8b 2d 65 fc 00 00 	mov    0xfc65(%rip),%r13        # 14001138c <__imp_GetProcAddress>
   140001727:	48 8d 15 e5 98 00 00 	lea    0x98e5(%rip),%rdx        # 14000b013 <.rdata+0x13>
   14000172e:	4c 89 e1             	mov    %r12,%rcx
   140001731:	48 89 05 08 e9 00 00 	mov    %rax,0xe908(%rip)        # 140010040 <hmod_libgcc>
   140001738:	41 ff d5             	call   *%r13
   14000173b:	48 8d 15 e7 98 00 00 	lea    0x98e7(%rip),%rdx        # 14000b029 <.rdata+0x29>
   140001742:	4c 89 e1             	mov    %r12,%rcx
   140001745:	48 89 c3             	mov    %rax,%rbx
   140001748:	41 ff d5             	call   *%r13
   14000174b:	48 89 05 be 88 00 00 	mov    %rax,0x88be(%rip)        # 14000a010 <deregister_frame_fn>
   140001752:	48 85 db             	test   %rbx,%rbx
   140001755:	75 2e                	jne    140001785 <__gcc_register_frame+0x95>
   140001757:	48 8d 0d 42 00 00 00 	lea    0x42(%rip),%rcx        # 1400017a0 <__gcc_deregister_frame>
   14000175e:	48 83 c4 28          	add    $0x28,%rsp
   140001762:	5b                   	pop    %rbx
   140001763:	41 5c                	pop    %r12
   140001765:	41 5d                	pop    %r13
   140001767:	5d                   	pop    %rbp
   140001768:	e9 2b ff ff ff       	jmp    140001698 <atexit>
   14000176d:	0f 1f 00             	nopl   (%rax)
   140001770:	48 8d 05 69 ff ff ff 	lea    -0x97(%rip),%rax        # 1400016e0 <.weak.__deregister_frame_info.hmod_libgcc>
   140001777:	48 8d 1d 52 ff ff ff 	lea    -0xae(%rip),%rbx        # 1400016d0 <.weak.__register_frame_info.hmod_libgcc>
   14000177e:	48 89 05 8b 88 00 00 	mov    %rax,0x888b(%rip)        # 14000a010 <deregister_frame_fn>
   140001785:	48 8d 15 d4 e8 00 00 	lea    0xe8d4(%rip),%rdx        # 140010060 <obj>
   14000178c:	48 8d 0d 6d b8 00 00 	lea    0xb86d(%rip),%rcx        # 14000d000 <__EH_FRAME_BEGIN__>
   140001793:	ff d3                	call   *%rbx
   140001795:	eb c0                	jmp    140001757 <__gcc_register_frame+0x67>
   140001797:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000179e:	00 00 

00000001400017a0 <__gcc_deregister_frame>:
   1400017a0:	55                   	push   %rbp
   1400017a1:	48 89 e5             	mov    %rsp,%rbp
   1400017a4:	48 83 ec 20          	sub    $0x20,%rsp
   1400017a8:	48 8b 05 61 88 00 00 	mov    0x8861(%rip),%rax        # 14000a010 <deregister_frame_fn>
   1400017af:	48 85 c0             	test   %rax,%rax
   1400017b2:	74 09                	je     1400017bd <__gcc_deregister_frame+0x1d>
   1400017b4:	48 8d 0d 45 b8 00 00 	lea    0xb845(%rip),%rcx        # 14000d000 <__EH_FRAME_BEGIN__>
   1400017bb:	ff d0                	call   *%rax
   1400017bd:	48 8b 0d 7c e8 00 00 	mov    0xe87c(%rip),%rcx        # 140010040 <hmod_libgcc>
   1400017c4:	48 85 c9             	test   %rcx,%rcx
   1400017c7:	74 0f                	je     1400017d8 <__gcc_deregister_frame+0x38>
   1400017c9:	48 83 c4 20          	add    $0x20,%rsp
   1400017cd:	5d                   	pop    %rbp
   1400017ce:	48 ff 25 9f fb 00 00 	rex.W jmp *0xfb9f(%rip)        # 140011374 <__imp_FreeLibrary>
   1400017d5:	0f 1f 00             	nopl   (%rax)
   1400017d8:	48 83 c4 20          	add    $0x20,%rsp
   1400017dc:	5d                   	pop    %rbp
   1400017dd:	c3                   	ret    
   1400017de:	90                   	nop
   1400017df:	90                   	nop

00000001400017e0 <_ZL6printfPKcz>:
   1400017e0:	41 54                	push   %r12
   1400017e2:	53                   	push   %rbx
   1400017e3:	48 83 ec 38          	sub    $0x38,%rsp
   1400017e7:	48 8d 5c 24 58       	lea    0x58(%rsp),%rbx
   1400017ec:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   1400017f1:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400017f6:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400017fb:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
   140001800:	49 89 cc             	mov    %rcx,%r12
   140001803:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001808:	ff 15 c2 88 00 00    	call   *0x88c2(%rip)        # 14000a0d0 <__imp___acrt_iob_func>
   14000180e:	48 89 c1             	mov    %rax,%rcx
   140001811:	49 89 d8             	mov    %rbx,%r8
   140001814:	4c 89 e2             	mov    %r12,%rdx
   140001817:	e8 14 18 00 00       	call   140003030 <__mingw_vfprintf>
   14000181c:	48 83 c4 38          	add    $0x38,%rsp
   140001820:	5b                   	pop    %rbx
   140001821:	41 5c                	pop    %r12
   140001823:	c3                   	ret    
   140001824:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000182b:	00 00 00 00 
   14000182f:	90                   	nop

0000000140001830 <_Z14workerFunctionP6Worker>:
   140001830:	41 55                	push   %r13
   140001832:	41 54                	push   %r12
   140001834:	55                   	push   %rbp
   140001835:	57                   	push   %rdi
   140001836:	56                   	push   %rsi
   140001837:	53                   	push   %rbx
   140001838:	48 81 ec 98 01 00 00 	sub    $0x198,%rsp
   14000183f:	8b 79 08             	mov    0x8(%rcx),%edi
   140001842:	48 8b 31             	mov    (%rcx),%rsi
   140001845:	e8 5e 6f 00 00       	call   1400087a8 <clock>
   14000184a:	31 c9                	xor    %ecx,%ecx
   14000184c:	48 63 d8             	movslq %eax,%rbx
   14000184f:	ff 15 37 fc 00 00    	call   *0xfc37(%rip)        # 14001148c <__imp__time64>
   140001855:	48 01 c3             	add    %rax,%rbx
   140001858:	85 ff                	test   %edi,%edi
   14000185a:	0f 8e b0 00 00 00    	jle    140001910 <_Z14workerFunctionP6Worker+0xe0>
   140001860:	48 83 c6 08          	add    $0x8,%rsi
   140001864:	41 bc 02 00 00 00    	mov    $0x2,%r12d
   14000186a:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   14000186f:	48 bd 37 9f 71 16 60 	movabs $0x6719f36016719f37,%rbp
   140001876:	f3 19 67 
   140001879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001880:	45 31 ed             	xor    %r13d,%r13d
   140001883:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001888:	41 b8 6d 01 00 00    	mov    $0x16d,%r8d
   14000188e:	31 d2                	xor    %edx,%edx
   140001890:	e8 cb 6e 00 00       	call   140008760 <memset>
   140001895:	48 89 c1             	mov    %rax,%rcx
   140001898:	45 31 c0             	xor    %r8d,%r8d
   14000189b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400018a0:	48 89 d8             	mov    %rbx,%rax
   1400018a3:	48 c1 e0 0d          	shl    $0xd,%rax
   1400018a7:	48 31 d8             	xor    %rbx,%rax
   1400018aa:	48 89 c2             	mov    %rax,%rdx
   1400018ad:	48 c1 ea 07          	shr    $0x7,%rdx
   1400018b1:	48 31 d0             	xor    %rdx,%rax
   1400018b4:	48 89 c3             	mov    %rax,%rbx
   1400018b7:	48 c1 e3 11          	shl    $0x11,%rbx
   1400018bb:	48 31 c3             	xor    %rax,%rbx
   1400018be:	48 89 d8             	mov    %rbx,%rax
   1400018c1:	48 f7 e5             	mul    %rbp
   1400018c4:	48 89 d8             	mov    %rbx,%rax
   1400018c7:	48 29 d0             	sub    %rdx,%rax
   1400018ca:	48 d1 e8             	shr    %rax
   1400018cd:	48 01 c2             	add    %rax,%rdx
   1400018d0:	48 c1 ea 08          	shr    $0x8,%rdx
   1400018d4:	48 69 d2 6d 01 00 00 	imul   $0x16d,%rdx,%rdx
   1400018db:	48 89 d8             	mov    %rbx,%rax
   1400018de:	48 29 d0             	sub    %rdx,%rax
   1400018e1:	48 98                	cltq   
   1400018e3:	80 7c 04 20 00       	cmpb   $0x0,0x20(%rsp,%rax,1)
   1400018e8:	75 36                	jne    140001920 <_Z14workerFunctionP6Worker+0xf0>
   1400018ea:	41 ff c0             	inc    %r8d
   1400018ed:	c6 44 04 20 01       	movb   $0x1,0x20(%rsp,%rax,1)
   1400018f2:	45 39 e0             	cmp    %r12d,%r8d
   1400018f5:	75 a9                	jne    1400018a0 <_Z14workerFunctionP6Worker+0x70>
   1400018f7:	41 ff c5             	inc    %r13d
   1400018fa:	44 39 ef             	cmp    %r13d,%edi
   1400018fd:	75 89                	jne    140001888 <_Z14workerFunctionP6Worker+0x58>
   1400018ff:	41 ff c4             	inc    %r12d
   140001902:	48 83 c6 04          	add    $0x4,%rsi
   140001906:	41 83 fc 65          	cmp    $0x65,%r12d
   14000190a:	0f 85 70 ff ff ff    	jne    140001880 <_Z14workerFunctionP6Worker+0x50>
   140001910:	48 81 c4 98 01 00 00 	add    $0x198,%rsp
   140001917:	5b                   	pop    %rbx
   140001918:	5e                   	pop    %rsi
   140001919:	5f                   	pop    %rdi
   14000191a:	5d                   	pop    %rbp
   14000191b:	41 5c                	pop    %r12
   14000191d:	41 5d                	pop    %r13
   14000191f:	c3                   	ret    
   140001920:	f0 ff 06             	lock incl (%rsi)
   140001923:	41 ff c5             	inc    %r13d
   140001926:	44 39 ef             	cmp    %r13d,%edi
   140001929:	0f 85 59 ff ff ff    	jne    140001888 <_Z14workerFunctionP6Worker+0x58>
   14000192f:	eb ce                	jmp    1400018ff <_Z14workerFunctionP6Worker+0xcf>
   140001931:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001938:	00 00 00 00 
   14000193c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001940 <__tcf_0>:
   140001940:	48 8d 0d 59 e7 00 00 	lea    0xe759(%rip),%rcx        # 1400100a0 <_ZStL8__ioinit>
   140001947:	e9 94 00 00 00       	jmp    1400019e0 <_ZNSt8ios_base4InitD1Ev>
   14000194c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001950 <_ZL6printfPKcz.constprop.0>:
   140001950:	53                   	push   %rbx
   140001951:	48 83 ec 30          	sub    $0x30,%rsp
   140001955:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000195a:	48 8d 5c 24 48       	lea    0x48(%rsp),%rbx
   14000195f:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
   140001964:	4c 89 44 24 50       	mov    %r8,0x50(%rsp)
   140001969:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
   14000196e:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
   140001973:	ff 15 57 87 00 00    	call   *0x8757(%rip)        # 14000a0d0 <__imp___acrt_iob_func>
   140001979:	48 89 c1             	mov    %rax,%rcx
   14000197c:	49 89 d8             	mov    %rbx,%r8
   14000197f:	48 8d 15 ca 96 00 00 	lea    0x96ca(%rip),%rdx        # 14000b050 <.rdata>
   140001986:	e8 a5 16 00 00       	call   140003030 <__mingw_vfprintf>
   14000198b:	48 83 c4 30          	add    $0x30,%rsp
   14000198f:	5b                   	pop    %rbx
   140001990:	c3                   	ret    
   140001991:	90                   	nop
   140001992:	90                   	nop
   140001993:	90                   	nop
   140001994:	90                   	nop
   140001995:	90                   	nop
   140001996:	90                   	nop
   140001997:	90                   	nop
   140001998:	90                   	nop
   140001999:	90                   	nop
   14000199a:	90                   	nop
   14000199b:	90                   	nop
   14000199c:	90                   	nop
   14000199d:	90                   	nop
   14000199e:	90                   	nop
   14000199f:	90                   	nop

00000001400019a0 <__gxx_personality_seh0>:
   1400019a0:	ff 25 ae f9 00 00    	jmp    *0xf9ae(%rip)        # 140011354 <__imp___gxx_personality_seh0>
   1400019a6:	90                   	nop
   1400019a7:	90                   	nop

00000001400019a8 <__cxa_throw_bad_array_new_length>:
   1400019a8:	ff 25 9e f9 00 00    	jmp    *0xf99e(%rip)        # 14001134c <__imp___cxa_throw_bad_array_new_length>
   1400019ae:	90                   	nop
   1400019af:	90                   	nop

00000001400019b0 <_Znwy>:
   1400019b0:	ff 25 8e f9 00 00    	jmp    *0xf98e(%rip)        # 140011344 <__imp__Znwy>
   1400019b6:	90                   	nop
   1400019b7:	90                   	nop

00000001400019b8 <_Znay>:
   1400019b8:	ff 25 7e f9 00 00    	jmp    *0xf97e(%rip)        # 14001133c <__imp__Znay>
   1400019be:	90                   	nop
   1400019bf:	90                   	nop

00000001400019c0 <_ZdlPvy>:
   1400019c0:	ff 25 6e f9 00 00    	jmp    *0xf96e(%rip)        # 140011334 <__imp__ZdlPvy>
   1400019c6:	90                   	nop
   1400019c7:	90                   	nop

00000001400019c8 <_ZdaPv>:
   1400019c8:	ff 25 5e f9 00 00    	jmp    *0xf95e(%rip)        # 14001132c <__imp__ZdaPv>
   1400019ce:	90                   	nop
   1400019cf:	90                   	nop

00000001400019d0 <_ZSt9terminatev>:
   1400019d0:	ff 25 3e f9 00 00    	jmp    *0xf93e(%rip)        # 140011314 <__imp__ZSt9terminatev>
   1400019d6:	90                   	nop
   1400019d7:	90                   	nop

00000001400019d8 <_ZSt20__throw_length_errorPKc>:
   1400019d8:	ff 25 2e f9 00 00    	jmp    *0xf92e(%rip)        # 14001130c <__imp__ZSt20__throw_length_errorPKc>
   1400019de:	90                   	nop
   1400019df:	90                   	nop

00000001400019e0 <_ZNSt8ios_base4InitD1Ev>:
   1400019e0:	ff 25 1e f9 00 00    	jmp    *0xf91e(%rip)        # 140011304 <__imp__ZNSt8ios_base4InitD1Ev>
   1400019e6:	90                   	nop
   1400019e7:	90                   	nop

00000001400019e8 <_ZNSt8ios_base4InitC1Ev>:
   1400019e8:	ff 25 0e f9 00 00    	jmp    *0xf90e(%rip)        # 1400112fc <__imp__ZNSt8ios_base4InitC1Ev>
   1400019ee:	90                   	nop
   1400019ef:	90                   	nop

00000001400019f0 <_ZNSt6thread6_StateD2Ev>:
   1400019f0:	ff 25 fe f8 00 00    	jmp    *0xf8fe(%rip)        # 1400112f4 <__imp__ZNSt6thread6_StateD2Ev>
   1400019f6:	90                   	nop
   1400019f7:	90                   	nop

00000001400019f8 <_ZNSt6thread4joinEv>:
   1400019f8:	ff 25 ee f8 00 00    	jmp    *0xf8ee(%rip)        # 1400112ec <__imp__ZNSt6thread4joinEv>
   1400019fe:	90                   	nop
   1400019ff:	90                   	nop

0000000140001a00 <_ZNSt6thread20hardware_concurrencyEv>:
   140001a00:	ff 25 de f8 00 00    	jmp    *0xf8de(%rip)        # 1400112e4 <__imp__ZNSt6thread20hardware_concurrencyEv>
   140001a06:	90                   	nop
   140001a07:	90                   	nop

0000000140001a08 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE>:
   140001a08:	ff 25 ce f8 00 00    	jmp    *0xf8ce(%rip)        # 1400112dc <__imp__ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE>
   140001a0e:	90                   	nop
   140001a0f:	90                   	nop

0000000140001a10 <__do_global_dtors>:
   140001a10:	55                   	push   %rbp
   140001a11:	48 89 e5             	mov    %rsp,%rbp
   140001a14:	48 83 ec 20          	sub    $0x20,%rsp
   140001a18:	eb 1e                	jmp    140001a38 <__do_global_dtors+0x28>
   140001a1a:	48 8b 05 ff 85 00 00 	mov    0x85ff(%rip),%rax        # 14000a020 <p.0>
   140001a21:	48 8b 00             	mov    (%rax),%rax
   140001a24:	ff d0                	call   *%rax
   140001a26:	48 8b 05 f3 85 00 00 	mov    0x85f3(%rip),%rax        # 14000a020 <p.0>
   140001a2d:	48 83 c0 08          	add    $0x8,%rax
   140001a31:	48 89 05 e8 85 00 00 	mov    %rax,0x85e8(%rip)        # 14000a020 <p.0>
   140001a38:	48 8b 05 e1 85 00 00 	mov    0x85e1(%rip),%rax        # 14000a020 <p.0>
   140001a3f:	48 8b 00             	mov    (%rax),%rax
   140001a42:	48 85 c0             	test   %rax,%rax
   140001a45:	75 d3                	jne    140001a1a <__do_global_dtors+0xa>
   140001a47:	90                   	nop
   140001a48:	90                   	nop
   140001a49:	48 83 c4 20          	add    $0x20,%rsp
   140001a4d:	5d                   	pop    %rbp
   140001a4e:	c3                   	ret    

0000000140001a4f <__do_global_ctors>:
   140001a4f:	55                   	push   %rbp
   140001a50:	48 89 e5             	mov    %rsp,%rbp
   140001a53:	48 83 ec 30          	sub    $0x30,%rsp
   140001a57:	48 8b 05 b2 9c 00 00 	mov    0x9cb2(%rip),%rax        # 14000b710 <.refptr.__CTOR_LIST__>
   140001a5e:	48 8b 00             	mov    (%rax),%rax
   140001a61:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140001a64:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
   140001a68:	75 25                	jne    140001a8f <__do_global_ctors+0x40>
   140001a6a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001a71:	eb 04                	jmp    140001a77 <__do_global_ctors+0x28>
   140001a73:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001a77:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001a7a:	8d 50 01             	lea    0x1(%rax),%edx
   140001a7d:	48 8b 05 8c 9c 00 00 	mov    0x9c8c(%rip),%rax        # 14000b710 <.refptr.__CTOR_LIST__>
   140001a84:	89 d2                	mov    %edx,%edx
   140001a86:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
   140001a8a:	48 85 c0             	test   %rax,%rax
   140001a8d:	75 e4                	jne    140001a73 <__do_global_ctors+0x24>
   140001a8f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001a92:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140001a95:	eb 14                	jmp    140001aab <__do_global_ctors+0x5c>
   140001a97:	48 8b 05 72 9c 00 00 	mov    0x9c72(%rip),%rax        # 14000b710 <.refptr.__CTOR_LIST__>
   140001a9e:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140001aa1:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
   140001aa5:	ff d0                	call   *%rax
   140001aa7:	83 6d f8 01          	subl   $0x1,-0x8(%rbp)
   140001aab:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   140001aaf:	75 e6                	jne    140001a97 <__do_global_ctors+0x48>
   140001ab1:	48 8d 05 58 ff ff ff 	lea    -0xa8(%rip),%rax        # 140001a10 <__do_global_dtors>
   140001ab8:	48 89 c1             	mov    %rax,%rcx
   140001abb:	e8 d8 fb ff ff       	call   140001698 <atexit>
   140001ac0:	90                   	nop
   140001ac1:	48 83 c4 30          	add    $0x30,%rsp
   140001ac5:	5d                   	pop    %rbp
   140001ac6:	c3                   	ret    

0000000140001ac7 <__main>:
   140001ac7:	55                   	push   %rbp
   140001ac8:	48 89 e5             	mov    %rsp,%rbp
   140001acb:	48 83 ec 20          	sub    $0x20,%rsp
   140001acf:	8b 05 db e5 00 00    	mov    0xe5db(%rip),%eax        # 1400100b0 <initialized>
   140001ad5:	85 c0                	test   %eax,%eax
   140001ad7:	75 0f                	jne    140001ae8 <__main+0x21>
   140001ad9:	c7 05 cd e5 00 00 01 	movl   $0x1,0xe5cd(%rip)        # 1400100b0 <initialized>
   140001ae0:	00 00 00 
   140001ae3:	e8 67 ff ff ff       	call   140001a4f <__do_global_ctors>
   140001ae8:	90                   	nop
   140001ae9:	48 83 c4 20          	add    $0x20,%rsp
   140001aed:	5d                   	pop    %rbp
   140001aee:	c3                   	ret    
   140001aef:	90                   	nop

0000000140001af0 <my_lconv_init>:
   140001af0:	55                   	push   %rbp
   140001af1:	48 89 e5             	mov    %rsp,%rbp
   140001af4:	48 83 ec 20          	sub    $0x20,%rsp
   140001af8:	48 8b 05 2d f9 00 00 	mov    0xf92d(%rip),%rax        # 14001142c <__imp___lconv_init>
   140001aff:	ff d0                	call   *%rax
   140001b01:	48 83 c4 20          	add    $0x20,%rsp
   140001b05:	5d                   	pop    %rbp
   140001b06:	c3                   	ret    
   140001b07:	90                   	nop
   140001b08:	90                   	nop
   140001b09:	90                   	nop
   140001b0a:	90                   	nop
   140001b0b:	90                   	nop
   140001b0c:	90                   	nop
   140001b0d:	90                   	nop
   140001b0e:	90                   	nop
   140001b0f:	90                   	nop

0000000140001b10 <_setargv>:
   140001b10:	55                   	push   %rbp
   140001b11:	48 89 e5             	mov    %rsp,%rbp
   140001b14:	b8 00 00 00 00       	mov    $0x0,%eax
   140001b19:	5d                   	pop    %rbp
   140001b1a:	c3                   	ret    
   140001b1b:	90                   	nop
   140001b1c:	90                   	nop
   140001b1d:	90                   	nop
   140001b1e:	90                   	nop
   140001b1f:	90                   	nop

0000000140001b20 <__dyn_tls_init>:
   140001b20:	55                   	push   %rbp
   140001b21:	48 89 e5             	mov    %rsp,%rbp
   140001b24:	48 83 ec 30          	sub    $0x30,%rsp
   140001b28:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001b2c:	89 55 18             	mov    %edx,0x18(%rbp)
   140001b2f:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140001b33:	48 8b 05 b6 9b 00 00 	mov    0x9bb6(%rip),%rax        # 14000b6f0 <.refptr._CRT_MT>
   140001b3a:	8b 00                	mov    (%rax),%eax
   140001b3c:	83 f8 02             	cmp    $0x2,%eax
   140001b3f:	74 0d                	je     140001b4e <__dyn_tls_init+0x2e>
   140001b41:	48 8b 05 a8 9b 00 00 	mov    0x9ba8(%rip),%rax        # 14000b6f0 <.refptr._CRT_MT>
   140001b48:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001b4e:	83 7d 18 02          	cmpl   $0x2,0x18(%rbp)
   140001b52:	74 22                	je     140001b76 <__dyn_tls_init+0x56>
   140001b54:	83 7d 18 01          	cmpl   $0x1,0x18(%rbp)
   140001b58:	75 15                	jne    140001b6f <__dyn_tls_init+0x4f>
   140001b5a:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140001b5e:	8b 45 18             	mov    0x18(%rbp),%eax
   140001b61:	49 89 d0             	mov    %rdx,%r8
   140001b64:	89 c2                	mov    %eax,%edx
   140001b66:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001b6a:	e8 c2 0e 00 00       	call   140002a31 <__mingw_TLScallback>
   140001b6f:	b8 01 00 00 00       	mov    $0x1,%eax
   140001b74:	eb 46                	jmp    140001bbc <__dyn_tls_init+0x9c>
   140001b76:	48 8d 05 db 04 01 00 	lea    0x104db(%rip),%rax        # 140012058 <___crt_xp_end__>
   140001b7d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001b81:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
   140001b86:	eb 22                	jmp    140001baa <__dyn_tls_init+0x8a>
   140001b88:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001b8c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001b90:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001b94:	48 8b 00             	mov    (%rax),%rax
   140001b97:	48 85 c0             	test   %rax,%rax
   140001b9a:	74 09                	je     140001ba5 <__dyn_tls_init+0x85>
   140001b9c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001ba0:	48 8b 00             	mov    (%rax),%rax
   140001ba3:	ff d0                	call   *%rax
   140001ba5:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
   140001baa:	48 8d 05 af 04 01 00 	lea    0x104af(%rip),%rax        # 140012060 <__xd_z>
   140001bb1:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
   140001bb5:	75 d1                	jne    140001b88 <__dyn_tls_init+0x68>
   140001bb7:	b8 01 00 00 00       	mov    $0x1,%eax
   140001bbc:	48 83 c4 30          	add    $0x30,%rsp
   140001bc0:	5d                   	pop    %rbp
   140001bc1:	c3                   	ret    

0000000140001bc2 <__tlregdtor>:
   140001bc2:	55                   	push   %rbp
   140001bc3:	48 89 e5             	mov    %rsp,%rbp
   140001bc6:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001bca:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140001bcf:	75 07                	jne    140001bd8 <__tlregdtor+0x16>
   140001bd1:	b8 00 00 00 00       	mov    $0x0,%eax
   140001bd6:	eb 05                	jmp    140001bdd <__tlregdtor+0x1b>
   140001bd8:	b8 00 00 00 00       	mov    $0x0,%eax
   140001bdd:	5d                   	pop    %rbp
   140001bde:	c3                   	ret    

0000000140001bdf <__dyn_tls_dtor>:
   140001bdf:	55                   	push   %rbp
   140001be0:	48 89 e5             	mov    %rsp,%rbp
   140001be3:	48 83 ec 20          	sub    $0x20,%rsp
   140001be7:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001beb:	89 55 18             	mov    %edx,0x18(%rbp)
   140001bee:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140001bf2:	83 7d 18 03          	cmpl   $0x3,0x18(%rbp)
   140001bf6:	74 0d                	je     140001c05 <__dyn_tls_dtor+0x26>
   140001bf8:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   140001bfc:	74 07                	je     140001c05 <__dyn_tls_dtor+0x26>
   140001bfe:	b8 01 00 00 00       	mov    $0x1,%eax
   140001c03:	eb 1a                	jmp    140001c1f <__dyn_tls_dtor+0x40>
   140001c05:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140001c09:	8b 45 18             	mov    0x18(%rbp),%eax
   140001c0c:	49 89 d0             	mov    %rdx,%r8
   140001c0f:	89 c2                	mov    %eax,%edx
   140001c11:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001c15:	e8 17 0e 00 00       	call   140002a31 <__mingw_TLScallback>
   140001c1a:	b8 01 00 00 00       	mov    $0x1,%eax
   140001c1f:	48 83 c4 20          	add    $0x20,%rsp
   140001c23:	5d                   	pop    %rbp
   140001c24:	c3                   	ret    
   140001c25:	90                   	nop
   140001c26:	90                   	nop
   140001c27:	90                   	nop
   140001c28:	90                   	nop
   140001c29:	90                   	nop
   140001c2a:	90                   	nop
   140001c2b:	90                   	nop
   140001c2c:	90                   	nop
   140001c2d:	90                   	nop
   140001c2e:	90                   	nop
   140001c2f:	90                   	nop

0000000140001c30 <_matherr>:
   140001c30:	55                   	push   %rbp
   140001c31:	53                   	push   %rbx
   140001c32:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   140001c39:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   140001c3e:	0f 29 75 00          	movaps %xmm6,0x0(%rbp)
   140001c42:	0f 29 7d 10          	movaps %xmm7,0x10(%rbp)
   140001c46:	44 0f 29 45 20       	movaps %xmm8,0x20(%rbp)
   140001c4b:	48 89 4d 50          	mov    %rcx,0x50(%rbp)
   140001c4f:	48 8b 45 50          	mov    0x50(%rbp),%rax
   140001c53:	8b 00                	mov    (%rax),%eax
   140001c55:	83 f8 06             	cmp    $0x6,%eax
   140001c58:	77 70                	ja     140001cca <_matherr+0x9a>
   140001c5a:	89 c0                	mov    %eax,%eax
   140001c5c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140001c63:	00 
   140001c64:	48 8d 05 99 95 00 00 	lea    0x9599(%rip),%rax        # 14000b204 <.rdata+0x124>
   140001c6b:	8b 04 02             	mov    (%rdx,%rax,1),%eax
   140001c6e:	48 98                	cltq   
   140001c70:	48 8d 15 8d 95 00 00 	lea    0x958d(%rip),%rdx        # 14000b204 <.rdata+0x124>
   140001c77:	48 01 d0             	add    %rdx,%rax
   140001c7a:	ff e0                	jmp    *%rax
   140001c7c:	48 8d 05 5d 94 00 00 	lea    0x945d(%rip),%rax        # 14000b0e0 <.rdata>
   140001c83:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001c87:	eb 4d                	jmp    140001cd6 <_matherr+0xa6>
   140001c89:	48 8d 05 6f 94 00 00 	lea    0x946f(%rip),%rax        # 14000b0ff <.rdata+0x1f>
   140001c90:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001c94:	eb 40                	jmp    140001cd6 <_matherr+0xa6>
   140001c96:	48 8d 05 83 94 00 00 	lea    0x9483(%rip),%rax        # 14000b120 <.rdata+0x40>
   140001c9d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001ca1:	eb 33                	jmp    140001cd6 <_matherr+0xa6>
   140001ca3:	48 8d 05 96 94 00 00 	lea    0x9496(%rip),%rax        # 14000b140 <.rdata+0x60>
   140001caa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001cae:	eb 26                	jmp    140001cd6 <_matherr+0xa6>
   140001cb0:	48 8d 05 b1 94 00 00 	lea    0x94b1(%rip),%rax        # 14000b168 <.rdata+0x88>
   140001cb7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001cbb:	eb 19                	jmp    140001cd6 <_matherr+0xa6>
   140001cbd:	48 8d 05 cc 94 00 00 	lea    0x94cc(%rip),%rax        # 14000b190 <.rdata+0xb0>
   140001cc4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001cc8:	eb 0c                	jmp    140001cd6 <_matherr+0xa6>
   140001cca:	48 8d 05 f5 94 00 00 	lea    0x94f5(%rip),%rax        # 14000b1c6 <.rdata+0xe6>
   140001cd1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001cd5:	90                   	nop
   140001cd6:	48 8b 45 50          	mov    0x50(%rbp),%rax
   140001cda:	f2 44 0f 10 40 20    	movsd  0x20(%rax),%xmm8
   140001ce0:	48 8b 45 50          	mov    0x50(%rbp),%rax
   140001ce4:	f2 0f 10 78 18       	movsd  0x18(%rax),%xmm7
   140001ce9:	48 8b 45 50          	mov    0x50(%rbp),%rax
   140001ced:	f2 0f 10 70 10       	movsd  0x10(%rax),%xmm6
   140001cf2:	48 8b 45 50          	mov    0x50(%rbp),%rax
   140001cf6:	48 8b 58 08          	mov    0x8(%rax),%rbx
   140001cfa:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001cff:	e8 ac 71 00 00       	call   140008eb0 <__acrt_iob_func>
   140001d04:	48 89 c1             	mov    %rax,%rcx
   140001d07:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001d0b:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001d12:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001d18:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001d1e:	49 89 d9             	mov    %rbx,%r9
   140001d21:	49 89 c0             	mov    %rax,%r8
   140001d24:	48 8d 05 ad 94 00 00 	lea    0x94ad(%rip),%rax        # 14000b1d8 <.rdata+0xf8>
   140001d2b:	48 89 c2             	mov    %rax,%rdx
   140001d2e:	e8 65 6a 00 00       	call   140008798 <fprintf>
   140001d33:	b8 00 00 00 00       	mov    $0x0,%eax
   140001d38:	0f 28 75 00          	movaps 0x0(%rbp),%xmm6
   140001d3c:	0f 28 7d 10          	movaps 0x10(%rbp),%xmm7
   140001d40:	44 0f 28 45 20       	movaps 0x20(%rbp),%xmm8
   140001d45:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
   140001d4c:	5b                   	pop    %rbx
   140001d4d:	5d                   	pop    %rbp
   140001d4e:	c3                   	ret    
   140001d4f:	90                   	nop

0000000140001d50 <_fpreset>:
   140001d50:	55                   	push   %rbp
   140001d51:	48 89 e5             	mov    %rsp,%rbp
   140001d54:	db e3                	fninit 
   140001d56:	90                   	nop
   140001d57:	5d                   	pop    %rbp
   140001d58:	c3                   	ret    
   140001d59:	90                   	nop
   140001d5a:	90                   	nop
   140001d5b:	90                   	nop
   140001d5c:	90                   	nop
   140001d5d:	90                   	nop
   140001d5e:	90                   	nop
   140001d5f:	90                   	nop

0000000140001d60 <__report_error>:
   140001d60:	55                   	push   %rbp
   140001d61:	53                   	push   %rbx
   140001d62:	48 83 ec 38          	sub    $0x38,%rsp
   140001d66:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140001d6b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140001d6f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140001d73:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140001d77:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   140001d7b:	48 8d 45 28          	lea    0x28(%rbp),%rax
   140001d7f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001d83:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001d88:	e8 23 71 00 00       	call   140008eb0 <__acrt_iob_func>
   140001d8d:	49 89 c1             	mov    %rax,%r9
   140001d90:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001d96:	ba 01 00 00 00       	mov    $0x1,%edx
   140001d9b:	48 8d 05 7e 94 00 00 	lea    0x947e(%rip),%rax        # 14000b220 <.rdata>
   140001da2:	48 89 c1             	mov    %rax,%rcx
   140001da5:	e8 d6 69 00 00       	call   140008780 <fwrite>
   140001daa:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   140001dae:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001db3:	e8 f8 70 00 00       	call   140008eb0 <__acrt_iob_func>
   140001db8:	49 89 d8             	mov    %rbx,%r8
   140001dbb:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140001dbf:	48 89 c1             	mov    %rax,%rcx
   140001dc2:	e8 71 69 00 00       	call   140008738 <vfprintf>
   140001dc7:	e8 ec 69 00 00       	call   1400087b8 <abort>
   140001dcc:	90                   	nop

0000000140001dcd <mark_section_writable>:
   140001dcd:	55                   	push   %rbp
   140001dce:	48 89 e5             	mov    %rsp,%rbp
   140001dd1:	48 83 ec 60          	sub    $0x60,%rsp
   140001dd5:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001dd9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001de0:	e9 82 00 00 00       	jmp    140001e67 <mark_section_writable+0x9a>
   140001de5:	48 8b 0d 24 e3 00 00 	mov    0xe324(%rip),%rcx        # 140010110 <the_secs>
   140001dec:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001def:	48 63 d0             	movslq %eax,%rdx
   140001df2:	48 89 d0             	mov    %rdx,%rax
   140001df5:	48 c1 e0 02          	shl    $0x2,%rax
   140001df9:	48 01 d0             	add    %rdx,%rax
   140001dfc:	48 c1 e0 03          	shl    $0x3,%rax
   140001e00:	48 01 c8             	add    %rcx,%rax
   140001e03:	48 8b 40 18          	mov    0x18(%rax),%rax
   140001e07:	48 39 45 10          	cmp    %rax,0x10(%rbp)
   140001e0b:	72 56                	jb     140001e63 <mark_section_writable+0x96>
   140001e0d:	48 8b 0d fc e2 00 00 	mov    0xe2fc(%rip),%rcx        # 140010110 <the_secs>
   140001e14:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001e17:	48 63 d0             	movslq %eax,%rdx
   140001e1a:	48 89 d0             	mov    %rdx,%rax
   140001e1d:	48 c1 e0 02          	shl    $0x2,%rax
   140001e21:	48 01 d0             	add    %rdx,%rax
   140001e24:	48 c1 e0 03          	shl    $0x3,%rax
   140001e28:	48 01 c8             	add    %rcx,%rax
   140001e2b:	48 8b 48 18          	mov    0x18(%rax),%rcx
   140001e2f:	4c 8b 05 da e2 00 00 	mov    0xe2da(%rip),%r8        # 140010110 <the_secs>
   140001e36:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001e39:	48 63 d0             	movslq %eax,%rdx
   140001e3c:	48 89 d0             	mov    %rdx,%rax
   140001e3f:	48 c1 e0 02          	shl    $0x2,%rax
   140001e43:	48 01 d0             	add    %rdx,%rax
   140001e46:	48 c1 e0 03          	shl    $0x3,%rax
   140001e4a:	4c 01 c0             	add    %r8,%rax
   140001e4d:	48 8b 40 20          	mov    0x20(%rax),%rax
   140001e51:	8b 40 08             	mov    0x8(%rax),%eax
   140001e54:	89 c0                	mov    %eax,%eax
   140001e56:	48 01 c8             	add    %rcx,%rax
   140001e59:	48 39 45 10          	cmp    %rax,0x10(%rbp)
   140001e5d:	0f 82 3c 02 00 00    	jb     14000209f <mark_section_writable+0x2d2>
   140001e63:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001e67:	8b 05 ab e2 00 00    	mov    0xe2ab(%rip),%eax        # 140010118 <maxSections>
   140001e6d:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140001e70:	0f 8c 6f ff ff ff    	jl     140001de5 <mark_section_writable+0x18>
   140001e76:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001e7a:	e8 89 0e 00 00       	call   140002d08 <__mingw_GetSectionForAddress>
   140001e7f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001e83:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140001e88:	75 13                	jne    140001e9d <mark_section_writable+0xd0>
   140001e8a:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140001e8e:	48 8d 05 ab 93 00 00 	lea    0x93ab(%rip),%rax        # 14000b240 <.rdata+0x20>
   140001e95:	48 89 c1             	mov    %rax,%rcx
   140001e98:	e8 c3 fe ff ff       	call   140001d60 <__report_error>
   140001e9d:	48 8b 0d 6c e2 00 00 	mov    0xe26c(%rip),%rcx        # 140010110 <the_secs>
   140001ea4:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001ea7:	48 63 d0             	movslq %eax,%rdx
   140001eaa:	48 89 d0             	mov    %rdx,%rax
   140001ead:	48 c1 e0 02          	shl    $0x2,%rax
   140001eb1:	48 01 d0             	add    %rdx,%rax
   140001eb4:	48 c1 e0 03          	shl    $0x3,%rax
   140001eb8:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
   140001ebc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001ec0:	48 89 42 20          	mov    %rax,0x20(%rdx)
   140001ec4:	48 8b 0d 45 e2 00 00 	mov    0xe245(%rip),%rcx        # 140010110 <the_secs>
   140001ecb:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001ece:	48 63 d0             	movslq %eax,%rdx
   140001ed1:	48 89 d0             	mov    %rdx,%rax
   140001ed4:	48 c1 e0 02          	shl    $0x2,%rax
   140001ed8:	48 01 d0             	add    %rdx,%rax
   140001edb:	48 c1 e0 03          	shl    $0x3,%rax
   140001edf:	48 01 c8             	add    %rcx,%rax
   140001ee2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001ee8:	e8 67 0f 00 00       	call   140002e54 <_GetPEImageBase>
   140001eed:	48 89 c1             	mov    %rax,%rcx
   140001ef0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001ef4:	8b 40 0c             	mov    0xc(%rax),%eax
   140001ef7:	41 89 c1             	mov    %eax,%r9d
   140001efa:	4c 8b 05 0f e2 00 00 	mov    0xe20f(%rip),%r8        # 140010110 <the_secs>
   140001f01:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001f04:	48 63 d0             	movslq %eax,%rdx
   140001f07:	48 89 d0             	mov    %rdx,%rax
   140001f0a:	48 c1 e0 02          	shl    $0x2,%rax
   140001f0e:	48 01 d0             	add    %rdx,%rax
   140001f11:	48 c1 e0 03          	shl    $0x3,%rax
   140001f15:	4c 01 c0             	add    %r8,%rax
   140001f18:	4a 8d 14 09          	lea    (%rcx,%r9,1),%rdx
   140001f1c:	48 89 50 18          	mov    %rdx,0x18(%rax)
   140001f20:	48 8b 0d e9 e1 00 00 	mov    0xe1e9(%rip),%rcx        # 140010110 <the_secs>
   140001f27:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001f2a:	48 63 d0             	movslq %eax,%rdx
   140001f2d:	48 89 d0             	mov    %rdx,%rax
   140001f30:	48 c1 e0 02          	shl    $0x2,%rax
   140001f34:	48 01 d0             	add    %rdx,%rax
   140001f37:	48 c1 e0 03          	shl    $0x3,%rax
   140001f3b:	48 01 c8             	add    %rcx,%rax
   140001f3e:	48 8b 40 18          	mov    0x18(%rax),%rax
   140001f42:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
   140001f46:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001f4c:	48 89 c1             	mov    %rax,%rcx
   140001f4f:	48 8b 05 8e f4 00 00 	mov    0xf48e(%rip),%rax        # 1400113e4 <__imp_VirtualQuery>
   140001f56:	ff d0                	call   *%rax
   140001f58:	48 85 c0             	test   %rax,%rax
   140001f5b:	75 3d                	jne    140001f9a <mark_section_writable+0x1cd>
   140001f5d:	48 8b 0d ac e1 00 00 	mov    0xe1ac(%rip),%rcx        # 140010110 <the_secs>
   140001f64:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001f67:	48 63 d0             	movslq %eax,%rdx
   140001f6a:	48 89 d0             	mov    %rdx,%rax
   140001f6d:	48 c1 e0 02          	shl    $0x2,%rax
   140001f71:	48 01 d0             	add    %rdx,%rax
   140001f74:	48 c1 e0 03          	shl    $0x3,%rax
   140001f78:	48 01 c8             	add    %rcx,%rax
   140001f7b:	48 8b 50 18          	mov    0x18(%rax),%rdx
   140001f7f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001f83:	8b 40 08             	mov    0x8(%rax),%eax
   140001f86:	49 89 d0             	mov    %rdx,%r8
   140001f89:	89 c2                	mov    %eax,%edx
   140001f8b:	48 8d 05 ce 92 00 00 	lea    0x92ce(%rip),%rax        # 14000b260 <.rdata+0x40>
   140001f92:	48 89 c1             	mov    %rax,%rcx
   140001f95:	e8 c6 fd ff ff       	call   140001d60 <__report_error>
   140001f9a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001f9d:	83 f8 40             	cmp    $0x40,%eax
   140001fa0:	0f 84 e8 00 00 00    	je     14000208e <mark_section_writable+0x2c1>
   140001fa6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001fa9:	83 f8 04             	cmp    $0x4,%eax
   140001fac:	0f 84 dc 00 00 00    	je     14000208e <mark_section_writable+0x2c1>
   140001fb2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001fb5:	3d 80 00 00 00       	cmp    $0x80,%eax
   140001fba:	0f 84 ce 00 00 00    	je     14000208e <mark_section_writable+0x2c1>
   140001fc0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001fc3:	83 f8 08             	cmp    $0x8,%eax
   140001fc6:	0f 84 c2 00 00 00    	je     14000208e <mark_section_writable+0x2c1>
   140001fcc:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001fcf:	83 f8 02             	cmp    $0x2,%eax
   140001fd2:	75 09                	jne    140001fdd <mark_section_writable+0x210>
   140001fd4:	c7 45 f8 04 00 00 00 	movl   $0x4,-0x8(%rbp)
   140001fdb:	eb 07                	jmp    140001fe4 <mark_section_writable+0x217>
   140001fdd:	c7 45 f8 40 00 00 00 	movl   $0x40,-0x8(%rbp)
   140001fe4:	48 8b 0d 25 e1 00 00 	mov    0xe125(%rip),%rcx        # 140010110 <the_secs>
   140001feb:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001fee:	48 63 d0             	movslq %eax,%rdx
   140001ff1:	48 89 d0             	mov    %rdx,%rax
   140001ff4:	48 c1 e0 02          	shl    $0x2,%rax
   140001ff8:	48 01 d0             	add    %rdx,%rax
   140001ffb:	48 c1 e0 03          	shl    $0x3,%rax
   140001fff:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
   140002003:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   140002007:	48 89 42 08          	mov    %rax,0x8(%rdx)
   14000200b:	48 8b 0d fe e0 00 00 	mov    0xe0fe(%rip),%rcx        # 140010110 <the_secs>
   140002012:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140002015:	48 63 d0             	movslq %eax,%rdx
   140002018:	48 89 d0             	mov    %rdx,%rax
   14000201b:	48 c1 e0 02          	shl    $0x2,%rax
   14000201f:	48 01 d0             	add    %rdx,%rax
   140002022:	48 c1 e0 03          	shl    $0x3,%rax
   140002026:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
   14000202a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   14000202e:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140002032:	48 8b 0d d7 e0 00 00 	mov    0xe0d7(%rip),%rcx        # 140010110 <the_secs>
   140002039:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000203c:	48 63 d0             	movslq %eax,%rdx
   14000203f:	48 89 d0             	mov    %rdx,%rax
   140002042:	48 c1 e0 02          	shl    $0x2,%rax
   140002046:	48 01 d0             	add    %rdx,%rax
   140002049:	48 c1 e0 03          	shl    $0x3,%rax
   14000204d:	48 01 c8             	add    %rcx,%rax
   140002050:	49 89 c0             	mov    %rax,%r8
   140002053:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
   140002057:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   14000205b:	8b 4d f8             	mov    -0x8(%rbp),%ecx
   14000205e:	4d 89 c1             	mov    %r8,%r9
   140002061:	41 89 c8             	mov    %ecx,%r8d
   140002064:	48 89 c1             	mov    %rax,%rcx
   140002067:	48 8b 05 6e f3 00 00 	mov    0xf36e(%rip),%rax        # 1400113dc <__imp_VirtualProtect>
   14000206e:	ff d0                	call   *%rax
   140002070:	85 c0                	test   %eax,%eax
   140002072:	75 1a                	jne    14000208e <mark_section_writable+0x2c1>
   140002074:	48 8b 05 01 f3 00 00 	mov    0xf301(%rip),%rax        # 14001137c <__imp_GetLastError>
   14000207b:	ff d0                	call   *%rax
   14000207d:	89 c2                	mov    %eax,%edx
   14000207f:	48 8d 05 12 92 00 00 	lea    0x9212(%rip),%rax        # 14000b298 <.rdata+0x78>
   140002086:	48 89 c1             	mov    %rax,%rcx
   140002089:	e8 d2 fc ff ff       	call   140001d60 <__report_error>
   14000208e:	8b 05 84 e0 00 00    	mov    0xe084(%rip),%eax        # 140010118 <maxSections>
   140002094:	83 c0 01             	add    $0x1,%eax
   140002097:	89 05 7b e0 00 00    	mov    %eax,0xe07b(%rip)        # 140010118 <maxSections>
   14000209d:	eb 01                	jmp    1400020a0 <mark_section_writable+0x2d3>
   14000209f:	90                   	nop
   1400020a0:	48 83 c4 60          	add    $0x60,%rsp
   1400020a4:	5d                   	pop    %rbp
   1400020a5:	c3                   	ret    

00000001400020a6 <restore_modified_sections>:
   1400020a6:	55                   	push   %rbp
   1400020a7:	48 89 e5             	mov    %rsp,%rbp
   1400020aa:	48 83 ec 30          	sub    $0x30,%rsp
   1400020ae:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400020b5:	e9 a3 00 00 00       	jmp    14000215d <restore_modified_sections+0xb7>
   1400020ba:	48 8b 0d 4f e0 00 00 	mov    0xe04f(%rip),%rcx        # 140010110 <the_secs>
   1400020c1:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400020c4:	48 63 d0             	movslq %eax,%rdx
   1400020c7:	48 89 d0             	mov    %rdx,%rax
   1400020ca:	48 c1 e0 02          	shl    $0x2,%rax
   1400020ce:	48 01 d0             	add    %rdx,%rax
   1400020d1:	48 c1 e0 03          	shl    $0x3,%rax
   1400020d5:	48 01 c8             	add    %rcx,%rax
   1400020d8:	8b 00                	mov    (%rax),%eax
   1400020da:	85 c0                	test   %eax,%eax
   1400020dc:	74 7a                	je     140002158 <restore_modified_sections+0xb2>
   1400020de:	48 8b 0d 2b e0 00 00 	mov    0xe02b(%rip),%rcx        # 140010110 <the_secs>
   1400020e5:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400020e8:	48 63 d0             	movslq %eax,%rdx
   1400020eb:	48 89 d0             	mov    %rdx,%rax
   1400020ee:	48 c1 e0 02          	shl    $0x2,%rax
   1400020f2:	48 01 d0             	add    %rdx,%rax
   1400020f5:	48 c1 e0 03          	shl    $0x3,%rax
   1400020f9:	48 01 c8             	add    %rcx,%rax
   1400020fc:	44 8b 00             	mov    (%rax),%r8d
   1400020ff:	48 8b 0d 0a e0 00 00 	mov    0xe00a(%rip),%rcx        # 140010110 <the_secs>
   140002106:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140002109:	48 63 d0             	movslq %eax,%rdx
   14000210c:	48 89 d0             	mov    %rdx,%rax
   14000210f:	48 c1 e0 02          	shl    $0x2,%rax
   140002113:	48 01 d0             	add    %rdx,%rax
   140002116:	48 c1 e0 03          	shl    $0x3,%rax
   14000211a:	48 01 c8             	add    %rcx,%rax
   14000211d:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002121:	4c 8b 0d e8 df 00 00 	mov    0xdfe8(%rip),%r9        # 140010110 <the_secs>
   140002128:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000212b:	48 63 c8             	movslq %eax,%rcx
   14000212e:	48 89 c8             	mov    %rcx,%rax
   140002131:	48 c1 e0 02          	shl    $0x2,%rax
   140002135:	48 01 c8             	add    %rcx,%rax
   140002138:	48 c1 e0 03          	shl    $0x3,%rax
   14000213c:	4c 01 c8             	add    %r9,%rax
   14000213f:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002143:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
   140002147:	49 89 c9             	mov    %rcx,%r9
   14000214a:	48 89 c1             	mov    %rax,%rcx
   14000214d:	48 8b 05 88 f2 00 00 	mov    0xf288(%rip),%rax        # 1400113dc <__imp_VirtualProtect>
   140002154:	ff d0                	call   *%rax
   140002156:	eb 01                	jmp    140002159 <restore_modified_sections+0xb3>
   140002158:	90                   	nop
   140002159:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   14000215d:	8b 05 b5 df 00 00    	mov    0xdfb5(%rip),%eax        # 140010118 <maxSections>
   140002163:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140002166:	0f 8c 4e ff ff ff    	jl     1400020ba <restore_modified_sections+0x14>
   14000216c:	90                   	nop
   14000216d:	90                   	nop
   14000216e:	48 83 c4 30          	add    $0x30,%rsp
   140002172:	5d                   	pop    %rbp
   140002173:	c3                   	ret    

0000000140002174 <__write_memory>:
   140002174:	55                   	push   %rbp
   140002175:	48 89 e5             	mov    %rsp,%rbp
   140002178:	48 83 ec 20          	sub    $0x20,%rsp
   14000217c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002180:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002184:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140002188:	48 83 7d 20 00       	cmpq   $0x0,0x20(%rbp)
   14000218d:	74 22                	je     1400021b1 <__write_memory+0x3d>
   14000218f:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140002193:	e8 35 fc ff ff       	call   140001dcd <mark_section_writable>
   140002198:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   14000219c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400021a0:	49 89 d0             	mov    %rdx,%r8
   1400021a3:	48 89 c2             	mov    %rax,%rdx
   1400021a6:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   1400021aa:	e8 b9 65 00 00       	call   140008768 <memcpy>
   1400021af:	eb 01                	jmp    1400021b2 <__write_memory+0x3e>
   1400021b1:	90                   	nop
   1400021b2:	48 83 c4 20          	add    $0x20,%rsp
   1400021b6:	5d                   	pop    %rbp
   1400021b7:	c3                   	ret    

00000001400021b8 <do_pseudo_reloc>:
   1400021b8:	55                   	push   %rbp
   1400021b9:	48 89 e5             	mov    %rsp,%rbp
   1400021bc:	48 83 ec 60          	sub    $0x60,%rsp
   1400021c0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400021c4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400021c8:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   1400021cc:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400021d0:	48 2b 45 10          	sub    0x10(%rbp),%rax
   1400021d4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400021d8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400021dc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400021e0:	48 83 7d e0 07       	cmpq   $0x7,-0x20(%rbp)
   1400021e5:	0f 8e cb 02 00 00    	jle    1400024b6 <do_pseudo_reloc+0x2fe>
   1400021eb:	48 83 7d e0 0b       	cmpq   $0xb,-0x20(%rbp)
   1400021f0:	7e 25                	jle    140002217 <do_pseudo_reloc+0x5f>
   1400021f2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400021f6:	8b 00                	mov    (%rax),%eax
   1400021f8:	85 c0                	test   %eax,%eax
   1400021fa:	75 1b                	jne    140002217 <do_pseudo_reloc+0x5f>
   1400021fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002200:	8b 40 04             	mov    0x4(%rax),%eax
   140002203:	85 c0                	test   %eax,%eax
   140002205:	75 10                	jne    140002217 <do_pseudo_reloc+0x5f>
   140002207:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000220b:	8b 40 08             	mov    0x8(%rax),%eax
   14000220e:	85 c0                	test   %eax,%eax
   140002210:	75 05                	jne    140002217 <do_pseudo_reloc+0x5f>
   140002212:	48 83 45 f8 0c       	addq   $0xc,-0x8(%rbp)
   140002217:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000221b:	8b 00                	mov    (%rax),%eax
   14000221d:	85 c0                	test   %eax,%eax
   14000221f:	75 0b                	jne    14000222c <do_pseudo_reloc+0x74>
   140002221:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002225:	8b 40 04             	mov    0x4(%rax),%eax
   140002228:	85 c0                	test   %eax,%eax
   14000222a:	74 59                	je     140002285 <do_pseudo_reloc+0xcd>
   14000222c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002230:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002234:	eb 40                	jmp    140002276 <do_pseudo_reloc+0xbe>
   140002236:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000223a:	8b 40 04             	mov    0x4(%rax),%eax
   14000223d:	89 c2                	mov    %eax,%edx
   14000223f:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002243:	48 01 d0             	add    %rdx,%rax
   140002246:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   14000224a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000224e:	8b 10                	mov    (%rax),%edx
   140002250:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002254:	8b 00                	mov    (%rax),%eax
   140002256:	01 d0                	add    %edx,%eax
   140002258:	89 45 cc             	mov    %eax,-0x34(%rbp)
   14000225b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000225f:	48 8d 55 cc          	lea    -0x34(%rbp),%rdx
   140002263:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140002269:	48 89 c1             	mov    %rax,%rcx
   14000226c:	e8 03 ff ff ff       	call   140002174 <__write_memory>
   140002271:	48 83 45 e8 08       	addq   $0x8,-0x18(%rbp)
   140002276:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000227a:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   14000227e:	72 b6                	jb     140002236 <do_pseudo_reloc+0x7e>
   140002280:	e9 32 02 00 00       	jmp    1400024b7 <do_pseudo_reloc+0x2ff>
   140002285:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002289:	8b 40 08             	mov    0x8(%rax),%eax
   14000228c:	83 f8 01             	cmp    $0x1,%eax
   14000228f:	74 18                	je     1400022a9 <do_pseudo_reloc+0xf1>
   140002291:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002295:	8b 40 08             	mov    0x8(%rax),%eax
   140002298:	89 c2                	mov    %eax,%edx
   14000229a:	48 8d 05 1f 90 00 00 	lea    0x901f(%rip),%rax        # 14000b2c0 <.rdata+0xa0>
   1400022a1:	48 89 c1             	mov    %rax,%rcx
   1400022a4:	e8 b7 fa ff ff       	call   140001d60 <__report_error>
   1400022a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400022ad:	48 83 c0 0c          	add    $0xc,%rax
   1400022b1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400022b5:	e9 ec 01 00 00       	jmp    1400024a6 <do_pseudo_reloc+0x2ee>
   1400022ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400022be:	8b 40 04             	mov    0x4(%rax),%eax
   1400022c1:	89 c2                	mov    %eax,%edx
   1400022c3:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400022c7:	48 01 d0             	add    %rdx,%rax
   1400022ca:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400022ce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400022d2:	8b 00                	mov    (%rax),%eax
   1400022d4:	89 c2                	mov    %eax,%edx
   1400022d6:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400022da:	48 01 d0             	add    %rdx,%rax
   1400022dd:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   1400022e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1400022e5:	48 8b 00             	mov    (%rax),%rax
   1400022e8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   1400022ec:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400022f0:	8b 40 08             	mov    0x8(%rax),%eax
   1400022f3:	0f b6 c0             	movzbl %al,%eax
   1400022f6:	83 f8 40             	cmp    $0x40,%eax
   1400022f9:	0f 84 b6 00 00 00    	je     1400023b5 <do_pseudo_reloc+0x1fd>
   1400022ff:	83 f8 40             	cmp    $0x40,%eax
   140002302:	0f 87 ba 00 00 00    	ja     1400023c2 <do_pseudo_reloc+0x20a>
   140002308:	83 f8 20             	cmp    $0x20,%eax
   14000230b:	74 77                	je     140002384 <do_pseudo_reloc+0x1cc>
   14000230d:	83 f8 20             	cmp    $0x20,%eax
   140002310:	0f 87 ac 00 00 00    	ja     1400023c2 <do_pseudo_reloc+0x20a>
   140002316:	83 f8 08             	cmp    $0x8,%eax
   140002319:	74 0a                	je     140002325 <do_pseudo_reloc+0x16d>
   14000231b:	83 f8 10             	cmp    $0x10,%eax
   14000231e:	74 38                	je     140002358 <do_pseudo_reloc+0x1a0>
   140002320:	e9 9d 00 00 00       	jmp    1400023c2 <do_pseudo_reloc+0x20a>
   140002325:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002329:	0f b6 00             	movzbl (%rax),%eax
   14000232c:	0f b6 c0             	movzbl %al,%eax
   14000232f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140002333:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140002337:	25 80 00 00 00       	and    $0x80,%eax
   14000233c:	48 85 c0             	test   %rax,%rax
   14000233f:	0f 84 a0 00 00 00    	je     1400023e5 <do_pseudo_reloc+0x22d>
   140002345:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140002349:	48 0d 00 ff ff ff    	or     $0xffffffffffffff00,%rax
   14000234f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140002353:	e9 8d 00 00 00       	jmp    1400023e5 <do_pseudo_reloc+0x22d>
   140002358:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000235c:	0f b7 00             	movzwl (%rax),%eax
   14000235f:	0f b7 c0             	movzwl %ax,%eax
   140002362:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140002366:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000236a:	25 00 80 00 00       	and    $0x8000,%eax
   14000236f:	48 85 c0             	test   %rax,%rax
   140002372:	74 74                	je     1400023e8 <do_pseudo_reloc+0x230>
   140002374:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140002378:	48 0d 00 00 ff ff    	or     $0xffffffffffff0000,%rax
   14000237e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140002382:	eb 64                	jmp    1400023e8 <do_pseudo_reloc+0x230>
   140002384:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002388:	8b 00                	mov    (%rax),%eax
   14000238a:	89 c0                	mov    %eax,%eax
   14000238c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140002390:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140002394:	25 00 00 00 80       	and    $0x80000000,%eax
   140002399:	48 85 c0             	test   %rax,%rax
   14000239c:	74 4d                	je     1400023eb <do_pseudo_reloc+0x233>
   14000239e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   1400023a2:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
   1400023a9:	ff ff ff 
   1400023ac:	48 09 d0             	or     %rdx,%rax
   1400023af:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   1400023b3:	eb 36                	jmp    1400023eb <do_pseudo_reloc+0x233>
   1400023b5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400023b9:	48 8b 00             	mov    (%rax),%rax
   1400023bc:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   1400023c0:	eb 2a                	jmp    1400023ec <do_pseudo_reloc+0x234>
   1400023c2:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
   1400023c9:	00 
   1400023ca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400023ce:	8b 40 08             	mov    0x8(%rax),%eax
   1400023d1:	0f b6 c0             	movzbl %al,%eax
   1400023d4:	89 c2                	mov    %eax,%edx
   1400023d6:	48 8d 05 1b 8f 00 00 	lea    0x8f1b(%rip),%rax        # 14000b2f8 <.rdata+0xd8>
   1400023dd:	48 89 c1             	mov    %rax,%rcx
   1400023e0:	e8 7b f9 ff ff       	call   140001d60 <__report_error>
   1400023e5:	90                   	nop
   1400023e6:	eb 04                	jmp    1400023ec <do_pseudo_reloc+0x234>
   1400023e8:	90                   	nop
   1400023e9:	eb 01                	jmp    1400023ec <do_pseudo_reloc+0x234>
   1400023eb:	90                   	nop
   1400023ec:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
   1400023f0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400023f4:	8b 00                	mov    (%rax),%eax
   1400023f6:	89 c1                	mov    %eax,%ecx
   1400023f8:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400023fc:	48 01 c1             	add    %rax,%rcx
   1400023ff:	48 89 d0             	mov    %rdx,%rax
   140002402:	48 29 c8             	sub    %rcx,%rax
   140002405:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140002409:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
   14000240d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140002411:	48 01 d0             	add    %rdx,%rax
   140002414:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140002418:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000241c:	8b 40 08             	mov    0x8(%rax),%eax
   14000241f:	0f b6 c0             	movzbl %al,%eax
   140002422:	83 f8 40             	cmp    $0x40,%eax
   140002425:	74 63                	je     14000248a <do_pseudo_reloc+0x2d2>
   140002427:	83 f8 40             	cmp    $0x40,%eax
   14000242a:	77 75                	ja     1400024a1 <do_pseudo_reloc+0x2e9>
   14000242c:	83 f8 20             	cmp    $0x20,%eax
   14000242f:	74 41                	je     140002472 <do_pseudo_reloc+0x2ba>
   140002431:	83 f8 20             	cmp    $0x20,%eax
   140002434:	77 6b                	ja     1400024a1 <do_pseudo_reloc+0x2e9>
   140002436:	83 f8 08             	cmp    $0x8,%eax
   140002439:	74 07                	je     140002442 <do_pseudo_reloc+0x28a>
   14000243b:	83 f8 10             	cmp    $0x10,%eax
   14000243e:	74 1a                	je     14000245a <do_pseudo_reloc+0x2a2>
   140002440:	eb 5f                	jmp    1400024a1 <do_pseudo_reloc+0x2e9>
   140002442:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002446:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
   14000244a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140002450:	48 89 c1             	mov    %rax,%rcx
   140002453:	e8 1c fd ff ff       	call   140002174 <__write_memory>
   140002458:	eb 47                	jmp    1400024a1 <do_pseudo_reloc+0x2e9>
   14000245a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000245e:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
   140002462:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140002468:	48 89 c1             	mov    %rax,%rcx
   14000246b:	e8 04 fd ff ff       	call   140002174 <__write_memory>
   140002470:	eb 2f                	jmp    1400024a1 <do_pseudo_reloc+0x2e9>
   140002472:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002476:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
   14000247a:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140002480:	48 89 c1             	mov    %rax,%rcx
   140002483:	e8 ec fc ff ff       	call   140002174 <__write_memory>
   140002488:	eb 17                	jmp    1400024a1 <do_pseudo_reloc+0x2e9>
   14000248a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000248e:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
   140002492:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002498:	48 89 c1             	mov    %rax,%rcx
   14000249b:	e8 d4 fc ff ff       	call   140002174 <__write_memory>
   1400024a0:	90                   	nop
   1400024a1:	48 83 45 f0 0c       	addq   $0xc,-0x10(%rbp)
   1400024a6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400024aa:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   1400024ae:	0f 82 06 fe ff ff    	jb     1400022ba <do_pseudo_reloc+0x102>
   1400024b4:	eb 01                	jmp    1400024b7 <do_pseudo_reloc+0x2ff>
   1400024b6:	90                   	nop
   1400024b7:	48 83 c4 60          	add    $0x60,%rsp
   1400024bb:	5d                   	pop    %rbp
   1400024bc:	c3                   	ret    

00000001400024bd <_pei386_runtime_relocator>:
   1400024bd:	55                   	push   %rbp
   1400024be:	48 89 e5             	mov    %rsp,%rbp
   1400024c1:	48 83 ec 30          	sub    $0x30,%rsp
   1400024c5:	8b 05 51 dc 00 00    	mov    0xdc51(%rip),%eax        # 14001011c <was_init.0>
   1400024cb:	85 c0                	test   %eax,%eax
   1400024cd:	0f 85 88 00 00 00    	jne    14000255b <_pei386_runtime_relocator+0x9e>
   1400024d3:	8b 05 43 dc 00 00    	mov    0xdc43(%rip),%eax        # 14001011c <was_init.0>
   1400024d9:	83 c0 01             	add    $0x1,%eax
   1400024dc:	89 05 3a dc 00 00    	mov    %eax,0xdc3a(%rip)        # 14001011c <was_init.0>
   1400024e2:	e8 71 08 00 00       	call   140002d58 <__mingw_GetSectionCount>
   1400024e7:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400024ea:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400024ed:	48 63 d0             	movslq %eax,%rdx
   1400024f0:	48 89 d0             	mov    %rdx,%rax
   1400024f3:	48 c1 e0 02          	shl    $0x2,%rax
   1400024f7:	48 01 d0             	add    %rdx,%rax
   1400024fa:	48 c1 e0 03          	shl    $0x3,%rax
   1400024fe:	48 83 c0 0f          	add    $0xf,%rax
   140002502:	48 c1 e8 04          	shr    $0x4,%rax
   140002506:	48 c1 e0 04          	shl    $0x4,%rax
   14000250a:	e8 e1 0a 00 00       	call   140002ff0 <___chkstk_ms>
   14000250f:	48 29 c4             	sub    %rax,%rsp
   140002512:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140002517:	48 83 c0 0f          	add    $0xf,%rax
   14000251b:	48 c1 e8 04          	shr    $0x4,%rax
   14000251f:	48 c1 e0 04          	shl    $0x4,%rax
   140002523:	48 89 05 e6 db 00 00 	mov    %rax,0xdbe6(%rip)        # 140010110 <the_secs>
   14000252a:	c7 05 e4 db 00 00 00 	movl   $0x0,0xdbe4(%rip)        # 140010118 <maxSections>
   140002531:	00 00 00 
   140002534:	4c 8b 05 35 92 00 00 	mov    0x9235(%rip),%r8        # 14000b770 <.refptr.__image_base__>
   14000253b:	48 8b 05 de 91 00 00 	mov    0x91de(%rip),%rax        # 14000b720 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140002542:	48 89 c2             	mov    %rax,%rdx
   140002545:	48 8b 05 e4 91 00 00 	mov    0x91e4(%rip),%rax        # 14000b730 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   14000254c:	48 89 c1             	mov    %rax,%rcx
   14000254f:	e8 64 fc ff ff       	call   1400021b8 <do_pseudo_reloc>
   140002554:	e8 4d fb ff ff       	call   1400020a6 <restore_modified_sections>
   140002559:	eb 01                	jmp    14000255c <_pei386_runtime_relocator+0x9f>
   14000255b:	90                   	nop
   14000255c:	48 89 ec             	mov    %rbp,%rsp
   14000255f:	5d                   	pop    %rbp
   140002560:	c3                   	ret    
   140002561:	90                   	nop
   140002562:	90                   	nop
   140002563:	90                   	nop
   140002564:	90                   	nop
   140002565:	90                   	nop
   140002566:	90                   	nop
   140002567:	90                   	nop
   140002568:	90                   	nop
   140002569:	90                   	nop
   14000256a:	90                   	nop
   14000256b:	90                   	nop
   14000256c:	90                   	nop
   14000256d:	90                   	nop
   14000256e:	90                   	nop
   14000256f:	90                   	nop

0000000140002570 <__mingw_raise_matherr>:
   140002570:	55                   	push   %rbp
   140002571:	48 89 e5             	mov    %rsp,%rbp
   140002574:	48 83 ec 50          	sub    $0x50,%rsp
   140002578:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000257b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000257f:	f2 0f 11 55 20       	movsd  %xmm2,0x20(%rbp)
   140002584:	f2 0f 11 5d 28       	movsd  %xmm3,0x28(%rbp)
   140002589:	48 8b 05 90 db 00 00 	mov    0xdb90(%rip),%rax        # 140010120 <stUserMathErr>
   140002590:	48 85 c0             	test   %rax,%rax
   140002593:	74 3e                	je     1400025d3 <__mingw_raise_matherr+0x63>
   140002595:	8b 45 10             	mov    0x10(%rbp),%eax
   140002598:	89 45 d0             	mov    %eax,-0x30(%rbp)
   14000259b:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000259f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   1400025a3:	f2 0f 10 45 20       	movsd  0x20(%rbp),%xmm0
   1400025a8:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
   1400025ad:	f2 0f 10 45 28       	movsd  0x28(%rbp),%xmm0
   1400025b2:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
   1400025b7:	f2 0f 10 45 30       	movsd  0x30(%rbp),%xmm0
   1400025bc:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
   1400025c1:	48 8b 15 58 db 00 00 	mov    0xdb58(%rip),%rdx        # 140010120 <stUserMathErr>
   1400025c8:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   1400025cc:	48 89 c1             	mov    %rax,%rcx
   1400025cf:	ff d2                	call   *%rdx
   1400025d1:	eb 01                	jmp    1400025d4 <__mingw_raise_matherr+0x64>
   1400025d3:	90                   	nop
   1400025d4:	48 83 c4 50          	add    $0x50,%rsp
   1400025d8:	5d                   	pop    %rbp
   1400025d9:	c3                   	ret    

00000001400025da <__mingw_setusermatherr>:
   1400025da:	55                   	push   %rbp
   1400025db:	48 89 e5             	mov    %rsp,%rbp
   1400025de:	48 83 ec 20          	sub    $0x20,%rsp
   1400025e2:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400025e6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400025ea:	48 89 05 2f db 00 00 	mov    %rax,0xdb2f(%rip)        # 140010120 <stUserMathErr>
   1400025f1:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   1400025f5:	e8 f6 61 00 00       	call   1400087f0 <__setusermatherr>
   1400025fa:	90                   	nop
   1400025fb:	48 83 c4 20          	add    $0x20,%rsp
   1400025ff:	5d                   	pop    %rbp
   140002600:	c3                   	ret    
   140002601:	90                   	nop
   140002602:	90                   	nop
   140002603:	90                   	nop
   140002604:	90                   	nop
   140002605:	90                   	nop
   140002606:	90                   	nop
   140002607:	90                   	nop
   140002608:	90                   	nop
   140002609:	90                   	nop
   14000260a:	90                   	nop
   14000260b:	90                   	nop
   14000260c:	90                   	nop
   14000260d:	90                   	nop
   14000260e:	90                   	nop
   14000260f:	90                   	nop

0000000140002610 <_gnu_exception_handler>:
   140002610:	55                   	push   %rbp
   140002611:	48 89 e5             	mov    %rsp,%rbp
   140002614:	48 83 ec 30          	sub    $0x30,%rsp
   140002618:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000261c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140002623:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   14000262a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000262e:	48 8b 00             	mov    (%rax),%rax
   140002631:	8b 00                	mov    (%rax),%eax
   140002633:	25 ff ff ff 20       	and    $0x20ffffff,%eax
   140002638:	3d 43 43 47 20       	cmp    $0x20474343,%eax
   14000263d:	75 1b                	jne    14000265a <_gnu_exception_handler+0x4a>
   14000263f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002643:	48 8b 00             	mov    (%rax),%rax
   140002646:	8b 40 04             	mov    0x4(%rax),%eax
   140002649:	83 e0 01             	and    $0x1,%eax
   14000264c:	85 c0                	test   %eax,%eax
   14000264e:	75 0a                	jne    14000265a <_gnu_exception_handler+0x4a>
   140002650:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002655:	e9 d0 01 00 00       	jmp    14000282a <_gnu_exception_handler+0x21a>
   14000265a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000265e:	48 8b 00             	mov    (%rax),%rax
   140002661:	8b 00                	mov    (%rax),%eax
   140002663:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140002668:	0f 87 8d 01 00 00    	ja     1400027fb <_gnu_exception_handler+0x1eb>
   14000266e:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
   140002673:	73 43                	jae    1400026b8 <_gnu_exception_handler+0xa8>
   140002675:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   14000267a:	0f 84 bf 00 00 00    	je     14000273f <_gnu_exception_handler+0x12f>
   140002680:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002685:	0f 87 70 01 00 00    	ja     1400027fb <_gnu_exception_handler+0x1eb>
   14000268b:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140002690:	0f 84 5c 01 00 00    	je     1400027f2 <_gnu_exception_handler+0x1e2>
   140002696:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   14000269b:	0f 87 5a 01 00 00    	ja     1400027fb <_gnu_exception_handler+0x1eb>
   1400026a1:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   1400026a6:	0f 84 46 01 00 00    	je     1400027f2 <_gnu_exception_handler+0x1e2>
   1400026ac:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   1400026b1:	74 35                	je     1400026e8 <_gnu_exception_handler+0xd8>
   1400026b3:	e9 43 01 00 00       	jmp    1400027fb <_gnu_exception_handler+0x1eb>
   1400026b8:	05 74 ff ff 3f       	add    $0x3fffff74,%eax
   1400026bd:	83 f8 0a             	cmp    $0xa,%eax
   1400026c0:	0f 87 35 01 00 00    	ja     1400027fb <_gnu_exception_handler+0x1eb>
   1400026c6:	89 c0                	mov    %eax,%eax
   1400026c8:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   1400026cf:	00 
   1400026d0:	48 8d 05 59 8c 00 00 	lea    0x8c59(%rip),%rax        # 14000b330 <.rdata>
   1400026d7:	8b 04 02             	mov    (%rdx,%rax,1),%eax
   1400026da:	48 98                	cltq   
   1400026dc:	48 8d 15 4d 8c 00 00 	lea    0x8c4d(%rip),%rdx        # 14000b330 <.rdata>
   1400026e3:	48 01 d0             	add    %rdx,%rax
   1400026e6:	ff e0                	jmp    *%rax
   1400026e8:	ba 00 00 00 00       	mov    $0x0,%edx
   1400026ed:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400026f2:	e8 61 60 00 00       	call   140008758 <signal>
   1400026f7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400026fb:	48 83 7d f0 01       	cmpq   $0x1,-0x10(%rbp)
   140002700:	75 1b                	jne    14000271d <_gnu_exception_handler+0x10d>
   140002702:	ba 01 00 00 00       	mov    $0x1,%edx
   140002707:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000270c:	e8 47 60 00 00       	call   140008758 <signal>
   140002711:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   140002718:	e9 e1 00 00 00       	jmp    1400027fe <_gnu_exception_handler+0x1ee>
   14000271d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140002722:	0f 84 d6 00 00 00    	je     1400027fe <_gnu_exception_handler+0x1ee>
   140002728:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000272c:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002731:	ff d0                	call   *%rax
   140002733:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   14000273a:	e9 bf 00 00 00       	jmp    1400027fe <_gnu_exception_handler+0x1ee>
   14000273f:	ba 00 00 00 00       	mov    $0x0,%edx
   140002744:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002749:	e8 0a 60 00 00       	call   140008758 <signal>
   14000274e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002752:	48 83 7d f0 01       	cmpq   $0x1,-0x10(%rbp)
   140002757:	75 1b                	jne    140002774 <_gnu_exception_handler+0x164>
   140002759:	ba 01 00 00 00       	mov    $0x1,%edx
   14000275e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002763:	e8 f0 5f 00 00       	call   140008758 <signal>
   140002768:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   14000276f:	e9 8d 00 00 00       	jmp    140002801 <_gnu_exception_handler+0x1f1>
   140002774:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140002779:	0f 84 82 00 00 00    	je     140002801 <_gnu_exception_handler+0x1f1>
   14000277f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002783:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002788:	ff d0                	call   *%rax
   14000278a:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   140002791:	eb 6e                	jmp    140002801 <_gnu_exception_handler+0x1f1>
   140002793:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
   14000279a:	ba 00 00 00 00       	mov    $0x0,%edx
   14000279f:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027a4:	e8 af 5f 00 00       	call   140008758 <signal>
   1400027a9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400027ad:	48 83 7d f0 01       	cmpq   $0x1,-0x10(%rbp)
   1400027b2:	75 23                	jne    1400027d7 <_gnu_exception_handler+0x1c7>
   1400027b4:	ba 01 00 00 00       	mov    $0x1,%edx
   1400027b9:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027be:	e8 95 5f 00 00       	call   140008758 <signal>
   1400027c3:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   1400027c7:	74 05                	je     1400027ce <_gnu_exception_handler+0x1be>
   1400027c9:	e8 82 f5 ff ff       	call   140001d50 <_fpreset>
   1400027ce:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   1400027d5:	eb 2d                	jmp    140002804 <_gnu_exception_handler+0x1f4>
   1400027d7:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400027dc:	74 26                	je     140002804 <_gnu_exception_handler+0x1f4>
   1400027de:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400027e2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027e7:	ff d0                	call   *%rax
   1400027e9:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   1400027f0:	eb 12                	jmp    140002804 <_gnu_exception_handler+0x1f4>
   1400027f2:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   1400027f9:	eb 0a                	jmp    140002805 <_gnu_exception_handler+0x1f5>
   1400027fb:	90                   	nop
   1400027fc:	eb 07                	jmp    140002805 <_gnu_exception_handler+0x1f5>
   1400027fe:	90                   	nop
   1400027ff:	eb 04                	jmp    140002805 <_gnu_exception_handler+0x1f5>
   140002801:	90                   	nop
   140002802:	eb 01                	jmp    140002805 <_gnu_exception_handler+0x1f5>
   140002804:	90                   	nop
   140002805:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140002809:	75 1c                	jne    140002827 <_gnu_exception_handler+0x217>
   14000280b:	48 8b 05 2e d9 00 00 	mov    0xd92e(%rip),%rax        # 140010140 <__mingw_oldexcpt_handler>
   140002812:	48 85 c0             	test   %rax,%rax
   140002815:	74 10                	je     140002827 <_gnu_exception_handler+0x217>
   140002817:	48 8b 05 22 d9 00 00 	mov    0xd922(%rip),%rax        # 140010140 <__mingw_oldexcpt_handler>
   14000281e:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140002822:	ff d0                	call   *%rax
   140002824:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140002827:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000282a:	48 83 c4 30          	add    $0x30,%rsp
   14000282e:	5d                   	pop    %rbp
   14000282f:	c3                   	ret    

0000000140002830 <___w64_mingwthr_add_key_dtor>:
   140002830:	55                   	push   %rbp
   140002831:	48 89 e5             	mov    %rsp,%rbp
   140002834:	48 83 ec 30          	sub    $0x30,%rsp
   140002838:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000283b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000283f:	8b 05 43 d9 00 00    	mov    0xd943(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   140002845:	85 c0                	test   %eax,%eax
   140002847:	75 07                	jne    140002850 <___w64_mingwthr_add_key_dtor+0x20>
   140002849:	b8 00 00 00 00       	mov    $0x0,%eax
   14000284e:	eb 7b                	jmp    1400028cb <___w64_mingwthr_add_key_dtor+0x9b>
   140002850:	ba 18 00 00 00       	mov    $0x18,%edx
   140002855:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000285a:	e8 51 5f 00 00       	call   1400087b0 <calloc>
   14000285f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002863:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002868:	75 07                	jne    140002871 <___w64_mingwthr_add_key_dtor+0x41>
   14000286a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000286f:	eb 5a                	jmp    1400028cb <___w64_mingwthr_add_key_dtor+0x9b>
   140002871:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002875:	8b 55 10             	mov    0x10(%rbp),%edx
   140002878:	89 10                	mov    %edx,(%rax)
   14000287a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000287e:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140002882:	48 89 50 08          	mov    %rdx,0x8(%rax)
   140002886:	48 8d 05 d3 d8 00 00 	lea    0xd8d3(%rip),%rax        # 140010160 <__mingwthr_cs>
   14000288d:	48 89 c1             	mov    %rax,%rcx
   140002890:	48 8b 05 d5 ea 00 00 	mov    0xead5(%rip),%rax        # 14001136c <__imp_EnterCriticalSection>
   140002897:	ff d0                	call   *%rax
   140002899:	48 8b 15 f0 d8 00 00 	mov    0xd8f0(%rip),%rdx        # 140010190 <key_dtor_list>
   1400028a0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400028a4:	48 89 50 10          	mov    %rdx,0x10(%rax)
   1400028a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400028ac:	48 89 05 dd d8 00 00 	mov    %rax,0xd8dd(%rip)        # 140010190 <key_dtor_list>
   1400028b3:	48 8d 05 a6 d8 00 00 	lea    0xd8a6(%rip),%rax        # 140010160 <__mingwthr_cs>
   1400028ba:	48 89 c1             	mov    %rax,%rcx
   1400028bd:	48 8b 05 e8 ea 00 00 	mov    0xeae8(%rip),%rax        # 1400113ac <__imp_LeaveCriticalSection>
   1400028c4:	ff d0                	call   *%rax
   1400028c6:	b8 00 00 00 00       	mov    $0x0,%eax
   1400028cb:	48 83 c4 30          	add    $0x30,%rsp
   1400028cf:	5d                   	pop    %rbp
   1400028d0:	c3                   	ret    

00000001400028d1 <___w64_mingwthr_remove_key_dtor>:
   1400028d1:	55                   	push   %rbp
   1400028d2:	48 89 e5             	mov    %rsp,%rbp
   1400028d5:	48 83 ec 30          	sub    $0x30,%rsp
   1400028d9:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400028dc:	8b 05 a6 d8 00 00    	mov    0xd8a6(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   1400028e2:	85 c0                	test   %eax,%eax
   1400028e4:	75 0a                	jne    1400028f0 <___w64_mingwthr_remove_key_dtor+0x1f>
   1400028e6:	b8 00 00 00 00       	mov    $0x0,%eax
   1400028eb:	e9 9c 00 00 00       	jmp    14000298c <___w64_mingwthr_remove_key_dtor+0xbb>
   1400028f0:	48 8d 05 69 d8 00 00 	lea    0xd869(%rip),%rax        # 140010160 <__mingwthr_cs>
   1400028f7:	48 89 c1             	mov    %rax,%rcx
   1400028fa:	48 8b 05 6b ea 00 00 	mov    0xea6b(%rip),%rax        # 14001136c <__imp_EnterCriticalSection>
   140002901:	ff d0                	call   *%rax
   140002903:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   14000290a:	00 
   14000290b:	48 8b 05 7e d8 00 00 	mov    0xd87e(%rip),%rax        # 140010190 <key_dtor_list>
   140002912:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002916:	eb 55                	jmp    14000296d <___w64_mingwthr_remove_key_dtor+0x9c>
   140002918:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000291c:	8b 00                	mov    (%rax),%eax
   14000291e:	39 45 10             	cmp    %eax,0x10(%rbp)
   140002921:	75 36                	jne    140002959 <___w64_mingwthr_remove_key_dtor+0x88>
   140002923:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002928:	75 11                	jne    14000293b <___w64_mingwthr_remove_key_dtor+0x6a>
   14000292a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000292e:	48 8b 40 10          	mov    0x10(%rax),%rax
   140002932:	48 89 05 57 d8 00 00 	mov    %rax,0xd857(%rip)        # 140010190 <key_dtor_list>
   140002939:	eb 10                	jmp    14000294b <___w64_mingwthr_remove_key_dtor+0x7a>
   14000293b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000293f:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002943:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002947:	48 89 50 10          	mov    %rdx,0x10(%rax)
   14000294b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000294f:	48 89 c1             	mov    %rax,%rcx
   140002952:	e8 31 5e 00 00       	call   140008788 <free>
   140002957:	eb 1b                	jmp    140002974 <___w64_mingwthr_remove_key_dtor+0xa3>
   140002959:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000295d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002961:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002965:	48 8b 40 10          	mov    0x10(%rax),%rax
   140002969:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000296d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140002972:	75 a4                	jne    140002918 <___w64_mingwthr_remove_key_dtor+0x47>
   140002974:	48 8d 05 e5 d7 00 00 	lea    0xd7e5(%rip),%rax        # 140010160 <__mingwthr_cs>
   14000297b:	48 89 c1             	mov    %rax,%rcx
   14000297e:	48 8b 05 27 ea 00 00 	mov    0xea27(%rip),%rax        # 1400113ac <__imp_LeaveCriticalSection>
   140002985:	ff d0                	call   *%rax
   140002987:	b8 00 00 00 00       	mov    $0x0,%eax
   14000298c:	48 83 c4 30          	add    $0x30,%rsp
   140002990:	5d                   	pop    %rbp
   140002991:	c3                   	ret    

0000000140002992 <__mingwthr_run_key_dtors>:
   140002992:	55                   	push   %rbp
   140002993:	48 89 e5             	mov    %rsp,%rbp
   140002996:	48 83 ec 30          	sub    $0x30,%rsp
   14000299a:	8b 05 e8 d7 00 00    	mov    0xd7e8(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   1400029a0:	85 c0                	test   %eax,%eax
   1400029a2:	0f 84 82 00 00 00    	je     140002a2a <__mingwthr_run_key_dtors+0x98>
   1400029a8:	48 8d 05 b1 d7 00 00 	lea    0xd7b1(%rip),%rax        # 140010160 <__mingwthr_cs>
   1400029af:	48 89 c1             	mov    %rax,%rcx
   1400029b2:	48 8b 05 b3 e9 00 00 	mov    0xe9b3(%rip),%rax        # 14001136c <__imp_EnterCriticalSection>
   1400029b9:	ff d0                	call   *%rax
   1400029bb:	48 8b 05 ce d7 00 00 	mov    0xd7ce(%rip),%rax        # 140010190 <key_dtor_list>
   1400029c2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400029c6:	eb 46                	jmp    140002a0e <__mingwthr_run_key_dtors+0x7c>
   1400029c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400029cc:	8b 00                	mov    (%rax),%eax
   1400029ce:	89 c1                	mov    %eax,%ecx
   1400029d0:	48 8b 05 fd e9 00 00 	mov    0xe9fd(%rip),%rax        # 1400113d4 <__imp_TlsGetValue>
   1400029d7:	ff d0                	call   *%rax
   1400029d9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400029dd:	48 8b 05 98 e9 00 00 	mov    0xe998(%rip),%rax        # 14001137c <__imp_GetLastError>
   1400029e4:	ff d0                	call   *%rax
   1400029e6:	85 c0                	test   %eax,%eax
   1400029e8:	75 18                	jne    140002a02 <__mingwthr_run_key_dtors+0x70>
   1400029ea:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400029ef:	74 11                	je     140002a02 <__mingwthr_run_key_dtors+0x70>
   1400029f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400029f5:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400029f9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400029fd:	48 89 c1             	mov    %rax,%rcx
   140002a00:	ff d2                	call   *%rdx
   140002a02:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002a06:	48 8b 40 10          	mov    0x10(%rax),%rax
   140002a0a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002a0e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002a13:	75 b3                	jne    1400029c8 <__mingwthr_run_key_dtors+0x36>
   140002a15:	48 8d 05 44 d7 00 00 	lea    0xd744(%rip),%rax        # 140010160 <__mingwthr_cs>
   140002a1c:	48 89 c1             	mov    %rax,%rcx
   140002a1f:	48 8b 05 86 e9 00 00 	mov    0xe986(%rip),%rax        # 1400113ac <__imp_LeaveCriticalSection>
   140002a26:	ff d0                	call   *%rax
   140002a28:	eb 01                	jmp    140002a2b <__mingwthr_run_key_dtors+0x99>
   140002a2a:	90                   	nop
   140002a2b:	48 83 c4 30          	add    $0x30,%rsp
   140002a2f:	5d                   	pop    %rbp
   140002a30:	c3                   	ret    

0000000140002a31 <__mingw_TLScallback>:
   140002a31:	55                   	push   %rbp
   140002a32:	48 89 e5             	mov    %rsp,%rbp
   140002a35:	48 83 ec 30          	sub    $0x30,%rsp
   140002a39:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002a3d:	89 55 18             	mov    %edx,0x18(%rbp)
   140002a40:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140002a44:	83 7d 18 03          	cmpl   $0x3,0x18(%rbp)
   140002a48:	0f 84 cc 00 00 00    	je     140002b1a <__mingw_TLScallback+0xe9>
   140002a4e:	83 7d 18 03          	cmpl   $0x3,0x18(%rbp)
   140002a52:	0f 87 ca 00 00 00    	ja     140002b22 <__mingw_TLScallback+0xf1>
   140002a58:	83 7d 18 02          	cmpl   $0x2,0x18(%rbp)
   140002a5c:	0f 84 b1 00 00 00    	je     140002b13 <__mingw_TLScallback+0xe2>
   140002a62:	83 7d 18 02          	cmpl   $0x2,0x18(%rbp)
   140002a66:	0f 87 b6 00 00 00    	ja     140002b22 <__mingw_TLScallback+0xf1>
   140002a6c:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   140002a70:	74 33                	je     140002aa5 <__mingw_TLScallback+0x74>
   140002a72:	83 7d 18 01          	cmpl   $0x1,0x18(%rbp)
   140002a76:	0f 85 a6 00 00 00    	jne    140002b22 <__mingw_TLScallback+0xf1>
   140002a7c:	8b 05 06 d7 00 00    	mov    0xd706(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   140002a82:	85 c0                	test   %eax,%eax
   140002a84:	75 13                	jne    140002a99 <__mingw_TLScallback+0x68>
   140002a86:	48 8d 05 d3 d6 00 00 	lea    0xd6d3(%rip),%rax        # 140010160 <__mingwthr_cs>
   140002a8d:	48 89 c1             	mov    %rax,%rcx
   140002a90:	48 8b 05 05 e9 00 00 	mov    0xe905(%rip),%rax        # 14001139c <__imp_InitializeCriticalSection>
   140002a97:	ff d0                	call   *%rax
   140002a99:	c7 05 e5 d6 00 00 01 	movl   $0x1,0xd6e5(%rip)        # 140010188 <__mingwthr_cs_init>
   140002aa0:	00 00 00 
   140002aa3:	eb 7d                	jmp    140002b22 <__mingw_TLScallback+0xf1>
   140002aa5:	e8 e8 fe ff ff       	call   140002992 <__mingwthr_run_key_dtors>
   140002aaa:	8b 05 d8 d6 00 00    	mov    0xd6d8(%rip),%eax        # 140010188 <__mingwthr_cs_init>
   140002ab0:	83 f8 01             	cmp    $0x1,%eax
   140002ab3:	75 6c                	jne    140002b21 <__mingw_TLScallback+0xf0>
   140002ab5:	48 8b 05 d4 d6 00 00 	mov    0xd6d4(%rip),%rax        # 140010190 <key_dtor_list>
   140002abc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002ac0:	eb 20                	jmp    140002ae2 <__mingw_TLScallback+0xb1>
   140002ac2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ac6:	48 8b 40 10          	mov    0x10(%rax),%rax
   140002aca:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002ace:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ad2:	48 89 c1             	mov    %rax,%rcx
   140002ad5:	e8 ae 5c 00 00       	call   140008788 <free>
   140002ada:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002ade:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002ae2:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002ae7:	75 d9                	jne    140002ac2 <__mingw_TLScallback+0x91>
   140002ae9:	48 c7 05 9c d6 00 00 	movq   $0x0,0xd69c(%rip)        # 140010190 <key_dtor_list>
   140002af0:	00 00 00 00 
   140002af4:	c7 05 8a d6 00 00 00 	movl   $0x0,0xd68a(%rip)        # 140010188 <__mingwthr_cs_init>
   140002afb:	00 00 00 
   140002afe:	48 8d 05 5b d6 00 00 	lea    0xd65b(%rip),%rax        # 140010160 <__mingwthr_cs>
   140002b05:	48 89 c1             	mov    %rax,%rcx
   140002b08:	48 8b 05 55 e8 00 00 	mov    0xe855(%rip),%rax        # 140011364 <__imp_DeleteCriticalSection>
   140002b0f:	ff d0                	call   *%rax
   140002b11:	eb 0e                	jmp    140002b21 <__mingw_TLScallback+0xf0>
   140002b13:	e8 38 f2 ff ff       	call   140001d50 <_fpreset>
   140002b18:	eb 08                	jmp    140002b22 <__mingw_TLScallback+0xf1>
   140002b1a:	e8 73 fe ff ff       	call   140002992 <__mingwthr_run_key_dtors>
   140002b1f:	eb 01                	jmp    140002b22 <__mingw_TLScallback+0xf1>
   140002b21:	90                   	nop
   140002b22:	b8 01 00 00 00       	mov    $0x1,%eax
   140002b27:	48 83 c4 30          	add    $0x30,%rsp
   140002b2b:	5d                   	pop    %rbp
   140002b2c:	c3                   	ret    
   140002b2d:	90                   	nop
   140002b2e:	90                   	nop
   140002b2f:	90                   	nop

0000000140002b30 <_ValidateImageBase>:
   140002b30:	55                   	push   %rbp
   140002b31:	48 89 e5             	mov    %rsp,%rbp
   140002b34:	48 83 ec 20          	sub    $0x20,%rsp
   140002b38:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002b3c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002b40:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002b44:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002b48:	0f b7 00             	movzwl (%rax),%eax
   140002b4b:	66 3d 4d 5a          	cmp    $0x5a4d,%ax
   140002b4f:	74 07                	je     140002b58 <_ValidateImageBase+0x28>
   140002b51:	b8 00 00 00 00       	mov    $0x0,%eax
   140002b56:	eb 4e                	jmp    140002ba6 <_ValidateImageBase+0x76>
   140002b58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002b5c:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002b5f:	48 63 d0             	movslq %eax,%rdx
   140002b62:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002b66:	48 01 d0             	add    %rdx,%rax
   140002b69:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002b6d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002b71:	8b 00                	mov    (%rax),%eax
   140002b73:	3d 50 45 00 00       	cmp    $0x4550,%eax
   140002b78:	74 07                	je     140002b81 <_ValidateImageBase+0x51>
   140002b7a:	b8 00 00 00 00       	mov    $0x0,%eax
   140002b7f:	eb 25                	jmp    140002ba6 <_ValidateImageBase+0x76>
   140002b81:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002b85:	48 83 c0 18          	add    $0x18,%rax
   140002b89:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002b8d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002b91:	0f b7 00             	movzwl (%rax),%eax
   140002b94:	66 3d 0b 02          	cmp    $0x20b,%ax
   140002b98:	74 07                	je     140002ba1 <_ValidateImageBase+0x71>
   140002b9a:	b8 00 00 00 00       	mov    $0x0,%eax
   140002b9f:	eb 05                	jmp    140002ba6 <_ValidateImageBase+0x76>
   140002ba1:	b8 01 00 00 00       	mov    $0x1,%eax
   140002ba6:	48 83 c4 20          	add    $0x20,%rsp
   140002baa:	5d                   	pop    %rbp
   140002bab:	c3                   	ret    

0000000140002bac <_FindPESection>:
   140002bac:	55                   	push   %rbp
   140002bad:	48 89 e5             	mov    %rsp,%rbp
   140002bb0:	48 83 ec 20          	sub    $0x20,%rsp
   140002bb4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002bb8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002bbc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002bc0:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002bc3:	48 63 d0             	movslq %eax,%rdx
   140002bc6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002bca:	48 01 d0             	add    %rdx,%rax
   140002bcd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002bd1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140002bd8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002bdc:	0f b7 40 14          	movzwl 0x14(%rax),%eax
   140002be0:	0f b7 d0             	movzwl %ax,%edx
   140002be3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002be7:	48 01 d0             	add    %rdx,%rax
   140002bea:	48 83 c0 18          	add    $0x18,%rax
   140002bee:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002bf2:	eb 36                	jmp    140002c2a <_FindPESection+0x7e>
   140002bf4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002bf8:	8b 40 0c             	mov    0xc(%rax),%eax
   140002bfb:	89 c0                	mov    %eax,%eax
   140002bfd:	48 39 45 18          	cmp    %rax,0x18(%rbp)
   140002c01:	72 1e                	jb     140002c21 <_FindPESection+0x75>
   140002c03:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002c07:	8b 50 0c             	mov    0xc(%rax),%edx
   140002c0a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002c0e:	8b 40 08             	mov    0x8(%rax),%eax
   140002c11:	01 d0                	add    %edx,%eax
   140002c13:	89 c0                	mov    %eax,%eax
   140002c15:	48 39 45 18          	cmp    %rax,0x18(%rbp)
   140002c19:	73 06                	jae    140002c21 <_FindPESection+0x75>
   140002c1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002c1f:	eb 1e                	jmp    140002c3f <_FindPESection+0x93>
   140002c21:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140002c25:	48 83 45 f8 28       	addq   $0x28,-0x8(%rbp)
   140002c2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002c2e:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002c32:	0f b7 c0             	movzwl %ax,%eax
   140002c35:	39 45 f4             	cmp    %eax,-0xc(%rbp)
   140002c38:	72 ba                	jb     140002bf4 <_FindPESection+0x48>
   140002c3a:	b8 00 00 00 00       	mov    $0x0,%eax
   140002c3f:	48 83 c4 20          	add    $0x20,%rsp
   140002c43:	5d                   	pop    %rbp
   140002c44:	c3                   	ret    

0000000140002c45 <_FindPESectionByName>:
   140002c45:	55                   	push   %rbp
   140002c46:	48 89 e5             	mov    %rsp,%rbp
   140002c49:	48 83 ec 40          	sub    $0x40,%rsp
   140002c4d:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002c51:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140002c55:	e8 ee 5a 00 00       	call   140008748 <strlen>
   140002c5a:	48 83 f8 08          	cmp    $0x8,%rax
   140002c5e:	76 0a                	jbe    140002c6a <_FindPESectionByName+0x25>
   140002c60:	b8 00 00 00 00       	mov    $0x0,%eax
   140002c65:	e9 98 00 00 00       	jmp    140002d02 <_FindPESectionByName+0xbd>
   140002c6a:	48 8b 05 ff 8a 00 00 	mov    0x8aff(%rip),%rax        # 14000b770 <.refptr.__image_base__>
   140002c71:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002c75:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002c79:	48 89 c1             	mov    %rax,%rcx
   140002c7c:	e8 af fe ff ff       	call   140002b30 <_ValidateImageBase>
   140002c81:	85 c0                	test   %eax,%eax
   140002c83:	75 07                	jne    140002c8c <_FindPESectionByName+0x47>
   140002c85:	b8 00 00 00 00       	mov    $0x0,%eax
   140002c8a:	eb 76                	jmp    140002d02 <_FindPESectionByName+0xbd>
   140002c8c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002c90:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002c93:	48 63 d0             	movslq %eax,%rdx
   140002c96:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002c9a:	48 01 d0             	add    %rdx,%rax
   140002c9d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140002ca1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140002ca8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002cac:	0f b7 40 14          	movzwl 0x14(%rax),%eax
   140002cb0:	0f b7 d0             	movzwl %ax,%edx
   140002cb3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002cb7:	48 01 d0             	add    %rdx,%rax
   140002cba:	48 83 c0 18          	add    $0x18,%rax
   140002cbe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002cc2:	eb 29                	jmp    140002ced <_FindPESectionByName+0xa8>
   140002cc4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002cc8:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002cce:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140002cd2:	48 89 c1             	mov    %rax,%rcx
   140002cd5:	e8 66 5a 00 00       	call   140008740 <strncmp>
   140002cda:	85 c0                	test   %eax,%eax
   140002cdc:	75 06                	jne    140002ce4 <_FindPESectionByName+0x9f>
   140002cde:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ce2:	eb 1e                	jmp    140002d02 <_FindPESectionByName+0xbd>
   140002ce4:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140002ce8:	48 83 45 f8 28       	addq   $0x28,-0x8(%rbp)
   140002ced:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002cf1:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002cf5:	0f b7 c0             	movzwl %ax,%eax
   140002cf8:	39 45 f4             	cmp    %eax,-0xc(%rbp)
   140002cfb:	72 c7                	jb     140002cc4 <_FindPESectionByName+0x7f>
   140002cfd:	b8 00 00 00 00       	mov    $0x0,%eax
   140002d02:	48 83 c4 40          	add    $0x40,%rsp
   140002d06:	5d                   	pop    %rbp
   140002d07:	c3                   	ret    

0000000140002d08 <__mingw_GetSectionForAddress>:
   140002d08:	55                   	push   %rbp
   140002d09:	48 89 e5             	mov    %rsp,%rbp
   140002d0c:	48 83 ec 30          	sub    $0x30,%rsp
   140002d10:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002d14:	48 8b 05 55 8a 00 00 	mov    0x8a55(%rip),%rax        # 14000b770 <.refptr.__image_base__>
   140002d1b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002d1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d23:	48 89 c1             	mov    %rax,%rcx
   140002d26:	e8 05 fe ff ff       	call   140002b30 <_ValidateImageBase>
   140002d2b:	85 c0                	test   %eax,%eax
   140002d2d:	75 07                	jne    140002d36 <__mingw_GetSectionForAddress+0x2e>
   140002d2f:	b8 00 00 00 00       	mov    $0x0,%eax
   140002d34:	eb 1c                	jmp    140002d52 <__mingw_GetSectionForAddress+0x4a>
   140002d36:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002d3a:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
   140002d3e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002d42:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140002d46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d4a:	48 89 c1             	mov    %rax,%rcx
   140002d4d:	e8 5a fe ff ff       	call   140002bac <_FindPESection>
   140002d52:	48 83 c4 30          	add    $0x30,%rsp
   140002d56:	5d                   	pop    %rbp
   140002d57:	c3                   	ret    

0000000140002d58 <__mingw_GetSectionCount>:
   140002d58:	55                   	push   %rbp
   140002d59:	48 89 e5             	mov    %rsp,%rbp
   140002d5c:	48 83 ec 30          	sub    $0x30,%rsp
   140002d60:	48 8b 05 09 8a 00 00 	mov    0x8a09(%rip),%rax        # 14000b770 <.refptr.__image_base__>
   140002d67:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002d6b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d6f:	48 89 c1             	mov    %rax,%rcx
   140002d72:	e8 b9 fd ff ff       	call   140002b30 <_ValidateImageBase>
   140002d77:	85 c0                	test   %eax,%eax
   140002d79:	75 07                	jne    140002d82 <__mingw_GetSectionCount+0x2a>
   140002d7b:	b8 00 00 00 00       	mov    $0x0,%eax
   140002d80:	eb 20                	jmp    140002da2 <__mingw_GetSectionCount+0x4a>
   140002d82:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d86:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002d89:	48 63 d0             	movslq %eax,%rdx
   140002d8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d90:	48 01 d0             	add    %rdx,%rax
   140002d93:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002d97:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002d9b:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002d9f:	0f b7 c0             	movzwl %ax,%eax
   140002da2:	48 83 c4 30          	add    $0x30,%rsp
   140002da6:	5d                   	pop    %rbp
   140002da7:	c3                   	ret    

0000000140002da8 <_FindPESectionExec>:
   140002da8:	55                   	push   %rbp
   140002da9:	48 89 e5             	mov    %rsp,%rbp
   140002dac:	48 83 ec 40          	sub    $0x40,%rsp
   140002db0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002db4:	48 8b 05 b5 89 00 00 	mov    0x89b5(%rip),%rax        # 14000b770 <.refptr.__image_base__>
   140002dbb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002dbf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002dc3:	48 89 c1             	mov    %rax,%rcx
   140002dc6:	e8 65 fd ff ff       	call   140002b30 <_ValidateImageBase>
   140002dcb:	85 c0                	test   %eax,%eax
   140002dcd:	75 07                	jne    140002dd6 <_FindPESectionExec+0x2e>
   140002dcf:	b8 00 00 00 00       	mov    $0x0,%eax
   140002dd4:	eb 78                	jmp    140002e4e <_FindPESectionExec+0xa6>
   140002dd6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002dda:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002ddd:	48 63 d0             	movslq %eax,%rdx
   140002de0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002de4:	48 01 d0             	add    %rdx,%rax
   140002de7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140002deb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140002df2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002df6:	0f b7 40 14          	movzwl 0x14(%rax),%eax
   140002dfa:	0f b7 d0             	movzwl %ax,%edx
   140002dfd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002e01:	48 01 d0             	add    %rdx,%rax
   140002e04:	48 83 c0 18          	add    $0x18,%rax
   140002e08:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002e0c:	eb 2b                	jmp    140002e39 <_FindPESectionExec+0x91>
   140002e0e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002e12:	8b 40 24             	mov    0x24(%rax),%eax
   140002e15:	25 00 00 00 20       	and    $0x20000000,%eax
   140002e1a:	85 c0                	test   %eax,%eax
   140002e1c:	74 12                	je     140002e30 <_FindPESectionExec+0x88>
   140002e1e:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140002e23:	75 06                	jne    140002e2b <_FindPESectionExec+0x83>
   140002e25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002e29:	eb 23                	jmp    140002e4e <_FindPESectionExec+0xa6>
   140002e2b:	48 83 6d 10 01       	subq   $0x1,0x10(%rbp)
   140002e30:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140002e34:	48 83 45 f8 28       	addq   $0x28,-0x8(%rbp)
   140002e39:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002e3d:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002e41:	0f b7 c0             	movzwl %ax,%eax
   140002e44:	39 45 f4             	cmp    %eax,-0xc(%rbp)
   140002e47:	72 c5                	jb     140002e0e <_FindPESectionExec+0x66>
   140002e49:	b8 00 00 00 00       	mov    $0x0,%eax
   140002e4e:	48 83 c4 40          	add    $0x40,%rsp
   140002e52:	5d                   	pop    %rbp
   140002e53:	c3                   	ret    

0000000140002e54 <_GetPEImageBase>:
   140002e54:	55                   	push   %rbp
   140002e55:	48 89 e5             	mov    %rsp,%rbp
   140002e58:	48 83 ec 30          	sub    $0x30,%rsp
   140002e5c:	48 8b 05 0d 89 00 00 	mov    0x890d(%rip),%rax        # 14000b770 <.refptr.__image_base__>
   140002e63:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002e67:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002e6b:	48 89 c1             	mov    %rax,%rcx
   140002e6e:	e8 bd fc ff ff       	call   140002b30 <_ValidateImageBase>
   140002e73:	85 c0                	test   %eax,%eax
   140002e75:	75 07                	jne    140002e7e <_GetPEImageBase+0x2a>
   140002e77:	b8 00 00 00 00       	mov    $0x0,%eax
   140002e7c:	eb 04                	jmp    140002e82 <_GetPEImageBase+0x2e>
   140002e7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002e82:	48 83 c4 30          	add    $0x30,%rsp
   140002e86:	5d                   	pop    %rbp
   140002e87:	c3                   	ret    

0000000140002e88 <_IsNonwritableInCurrentImage>:
   140002e88:	55                   	push   %rbp
   140002e89:	48 89 e5             	mov    %rsp,%rbp
   140002e8c:	48 83 ec 40          	sub    $0x40,%rsp
   140002e90:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002e94:	48 8b 05 d5 88 00 00 	mov    0x88d5(%rip),%rax        # 14000b770 <.refptr.__image_base__>
   140002e9b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002e9f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ea3:	48 89 c1             	mov    %rax,%rcx
   140002ea6:	e8 85 fc ff ff       	call   140002b30 <_ValidateImageBase>
   140002eab:	85 c0                	test   %eax,%eax
   140002ead:	75 07                	jne    140002eb6 <_IsNonwritableInCurrentImage+0x2e>
   140002eaf:	b8 00 00 00 00       	mov    $0x0,%eax
   140002eb4:	eb 3d                	jmp    140002ef3 <_IsNonwritableInCurrentImage+0x6b>
   140002eb6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002eba:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
   140002ebe:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002ec2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140002ec6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002eca:	48 89 c1             	mov    %rax,%rcx
   140002ecd:	e8 da fc ff ff       	call   140002bac <_FindPESection>
   140002ed2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002ed6:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   140002edb:	75 07                	jne    140002ee4 <_IsNonwritableInCurrentImage+0x5c>
   140002edd:	b8 00 00 00 00       	mov    $0x0,%eax
   140002ee2:	eb 0f                	jmp    140002ef3 <_IsNonwritableInCurrentImage+0x6b>
   140002ee4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002ee8:	8b 40 24             	mov    0x24(%rax),%eax
   140002eeb:	f7 d0                	not    %eax
   140002eed:	c1 e8 1f             	shr    $0x1f,%eax
   140002ef0:	0f b6 c0             	movzbl %al,%eax
   140002ef3:	48 83 c4 40          	add    $0x40,%rsp
   140002ef7:	5d                   	pop    %rbp
   140002ef8:	c3                   	ret    

0000000140002ef9 <__mingw_enum_import_library_names>:
   140002ef9:	55                   	push   %rbp
   140002efa:	48 89 e5             	mov    %rsp,%rbp
   140002efd:	48 83 ec 50          	sub    $0x50,%rsp
   140002f01:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140002f04:	48 8b 05 65 88 00 00 	mov    0x8865(%rip),%rax        # 14000b770 <.refptr.__image_base__>
   140002f0b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002f0f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002f13:	48 89 c1             	mov    %rax,%rcx
   140002f16:	e8 15 fc ff ff       	call   140002b30 <_ValidateImageBase>
   140002f1b:	85 c0                	test   %eax,%eax
   140002f1d:	75 0a                	jne    140002f29 <__mingw_enum_import_library_names+0x30>
   140002f1f:	b8 00 00 00 00       	mov    $0x0,%eax
   140002f24:	e9 ab 00 00 00       	jmp    140002fd4 <__mingw_enum_import_library_names+0xdb>
   140002f29:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002f2d:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002f30:	48 63 d0             	movslq %eax,%rdx
   140002f33:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002f37:	48 01 d0             	add    %rdx,%rax
   140002f3a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002f3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002f42:	8b 80 90 00 00 00    	mov    0x90(%rax),%eax
   140002f48:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   140002f4b:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   140002f4f:	75 07                	jne    140002f58 <__mingw_enum_import_library_names+0x5f>
   140002f51:	b8 00 00 00 00       	mov    $0x0,%eax
   140002f56:	eb 7c                	jmp    140002fd4 <__mingw_enum_import_library_names+0xdb>
   140002f58:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140002f5b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002f5f:	48 89 c1             	mov    %rax,%rcx
   140002f62:	e8 45 fc ff ff       	call   140002bac <_FindPESection>
   140002f67:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140002f6b:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
   140002f70:	75 07                	jne    140002f79 <__mingw_enum_import_library_names+0x80>
   140002f72:	b8 00 00 00 00       	mov    $0x0,%eax
   140002f77:	eb 5b                	jmp    140002fd4 <__mingw_enum_import_library_names+0xdb>
   140002f79:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140002f7c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002f80:	48 01 d0             	add    %rdx,%rax
   140002f83:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002f87:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002f8c:	75 07                	jne    140002f95 <__mingw_enum_import_library_names+0x9c>
   140002f8e:	b8 00 00 00 00       	mov    $0x0,%eax
   140002f93:	eb 3f                	jmp    140002fd4 <__mingw_enum_import_library_names+0xdb>
   140002f95:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002f99:	8b 40 04             	mov    0x4(%rax),%eax
   140002f9c:	85 c0                	test   %eax,%eax
   140002f9e:	75 0b                	jne    140002fab <__mingw_enum_import_library_names+0xb2>
   140002fa0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002fa4:	8b 40 0c             	mov    0xc(%rax),%eax
   140002fa7:	85 c0                	test   %eax,%eax
   140002fa9:	74 23                	je     140002fce <__mingw_enum_import_library_names+0xd5>
   140002fab:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
   140002faf:	7f 12                	jg     140002fc3 <__mingw_enum_import_library_names+0xca>
   140002fb1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002fb5:	8b 40 0c             	mov    0xc(%rax),%eax
   140002fb8:	89 c2                	mov    %eax,%edx
   140002fba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002fbe:	48 01 d0             	add    %rdx,%rax
   140002fc1:	eb 11                	jmp    140002fd4 <__mingw_enum_import_library_names+0xdb>
   140002fc3:	83 6d 10 01          	subl   $0x1,0x10(%rbp)
   140002fc7:	48 83 45 f8 14       	addq   $0x14,-0x8(%rbp)
   140002fcc:	eb c7                	jmp    140002f95 <__mingw_enum_import_library_names+0x9c>
   140002fce:	90                   	nop
   140002fcf:	b8 00 00 00 00       	mov    $0x0,%eax
   140002fd4:	48 83 c4 50          	add    $0x50,%rsp
   140002fd8:	5d                   	pop    %rbp
   140002fd9:	c3                   	ret    
   140002fda:	90                   	nop
   140002fdb:	90                   	nop
   140002fdc:	90                   	nop
   140002fdd:	90                   	nop
   140002fde:	90                   	nop
   140002fdf:	90                   	nop

0000000140002fe0 <_Unwind_Resume>:
   140002fe0:	ff 25 e6 e2 00 00    	jmp    *0xe2e6(%rip)        # 1400112cc <__IAT_start__>
   140002fe6:	90                   	nop
   140002fe7:	90                   	nop
   140002fe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002fef:	00 

0000000140002ff0 <___chkstk_ms>:
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:117
   140002ff0:	51                   	push   %rcx
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:119
   140002ff1:	50                   	push   %rax
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:121
   140002ff2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:122
   140002ff8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:123
   140002ffd:	72 19                	jb     140003018 <___chkstk_ms+0x28>
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:125
   140002fff:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:126
   140003006:	48 83 09 00          	orq    $0x0,(%rcx)
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:127
   14000300a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:128
   140003010:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:129
   140003016:	77 e7                	ja     140002fff <___chkstk_ms+0xf>
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:131
   140003018:	48 29 c1             	sub    %rax,%rcx
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:132
   14000301b:	48 83 09 00          	orq    $0x0,(%rcx)
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:134
   14000301f:	58                   	pop    %rax
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:136
   140003020:	59                   	pop    %rcx
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/cygwin.S:138
   140003021:	c3                   	ret    
   140003022:	90                   	nop
   140003023:	90                   	nop
   140003024:	90                   	nop
   140003025:	90                   	nop
   140003026:	90                   	nop
   140003027:	90                   	nop
   140003028:	90                   	nop
   140003029:	90                   	nop
   14000302a:	90                   	nop
   14000302b:	90                   	nop
   14000302c:	90                   	nop
   14000302d:	90                   	nop
   14000302e:	90                   	nop
   14000302f:	90                   	nop

0000000140003030 <__mingw_vfprintf>:
   140003030:	55                   	push   %rbp
   140003031:	53                   	push   %rbx
   140003032:	48 83 ec 38          	sub    $0x38,%rsp
   140003036:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000303b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000303f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140003043:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140003047:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000304b:	e8 d0 5e 00 00       	call   140008f20 <_lock_file>
   140003050:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140003054:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003058:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000305d:	49 89 d1             	mov    %rdx,%r9
   140003060:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140003066:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   14000306a:	b9 00 60 00 00       	mov    $0x6000,%ecx
   14000306f:	e8 eb 1d 00 00       	call   140004e5f <__mingw_pformat>
   140003074:	89 c3                	mov    %eax,%ebx
   140003076:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000307a:	e8 31 5f 00 00       	call   140008fb0 <_unlock_file>
   14000307f:	89 d8                	mov    %ebx,%eax
   140003081:	48 83 c4 38          	add    $0x38,%rsp
   140003085:	5b                   	pop    %rbx
   140003086:	5d                   	pop    %rbp
   140003087:	c3                   	ret    
   140003088:	90                   	nop
   140003089:	90                   	nop
   14000308a:	90                   	nop
   14000308b:	90                   	nop
   14000308c:	90                   	nop
   14000308d:	90                   	nop
   14000308e:	90                   	nop
   14000308f:	90                   	nop

0000000140003090 <__pformat_putc>:
   140003090:	55                   	push   %rbp
   140003091:	48 89 e5             	mov    %rsp,%rbp
   140003094:	48 83 ec 20          	sub    $0x20,%rsp
   140003098:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000309b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000309f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030a3:	8b 40 08             	mov    0x8(%rax),%eax
   1400030a6:	25 00 40 00 00       	and    $0x4000,%eax
   1400030ab:	85 c0                	test   %eax,%eax
   1400030ad:	75 12                	jne    1400030c1 <__pformat_putc+0x31>
   1400030af:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030b3:	8b 50 28             	mov    0x28(%rax),%edx
   1400030b6:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030ba:	8b 40 24             	mov    0x24(%rax),%eax
   1400030bd:	39 c2                	cmp    %eax,%edx
   1400030bf:	7e 3c                	jle    1400030fd <__pformat_putc+0x6d>
   1400030c1:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030c5:	8b 40 08             	mov    0x8(%rax),%eax
   1400030c8:	25 00 20 00 00       	and    $0x2000,%eax
   1400030cd:	85 c0                	test   %eax,%eax
   1400030cf:	74 14                	je     1400030e5 <__pformat_putc+0x55>
   1400030d1:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030d5:	48 8b 00             	mov    (%rax),%rax
   1400030d8:	48 89 c2             	mov    %rax,%rdx
   1400030db:	8b 4d 10             	mov    0x10(%rbp),%ecx
   1400030de:	e8 ad 56 00 00       	call   140008790 <fputc>
   1400030e3:	eb 18                	jmp    1400030fd <__pformat_putc+0x6d>
   1400030e5:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030e9:	48 8b 10             	mov    (%rax),%rdx
   1400030ec:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030f0:	8b 40 24             	mov    0x24(%rax),%eax
   1400030f3:	48 98                	cltq   
   1400030f5:	48 01 d0             	add    %rdx,%rax
   1400030f8:	8b 55 10             	mov    0x10(%rbp),%edx
   1400030fb:	88 10                	mov    %dl,(%rax)
   1400030fd:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003101:	8b 40 24             	mov    0x24(%rax),%eax
   140003104:	8d 50 01             	lea    0x1(%rax),%edx
   140003107:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000310b:	89 50 24             	mov    %edx,0x24(%rax)
   14000310e:	90                   	nop
   14000310f:	48 83 c4 20          	add    $0x20,%rsp
   140003113:	5d                   	pop    %rbp
   140003114:	c3                   	ret    

0000000140003115 <__pformat_putchars>:
   140003115:	55                   	push   %rbp
   140003116:	48 89 e5             	mov    %rsp,%rbp
   140003119:	48 83 ec 20          	sub    $0x20,%rsp
   14000311d:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003121:	89 55 18             	mov    %edx,0x18(%rbp)
   140003124:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140003128:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000312c:	8b 40 10             	mov    0x10(%rax),%eax
   14000312f:	85 c0                	test   %eax,%eax
   140003131:	78 16                	js     140003149 <__pformat_putchars+0x34>
   140003133:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003137:	8b 40 10             	mov    0x10(%rax),%eax
   14000313a:	39 45 18             	cmp    %eax,0x18(%rbp)
   14000313d:	7e 0a                	jle    140003149 <__pformat_putchars+0x34>
   14000313f:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003143:	8b 40 10             	mov    0x10(%rax),%eax
   140003146:	89 45 18             	mov    %eax,0x18(%rbp)
   140003149:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000314d:	8b 40 0c             	mov    0xc(%rax),%eax
   140003150:	39 45 18             	cmp    %eax,0x18(%rbp)
   140003153:	7d 15                	jge    14000316a <__pformat_putchars+0x55>
   140003155:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003159:	8b 40 0c             	mov    0xc(%rax),%eax
   14000315c:	2b 45 18             	sub    0x18(%rbp),%eax
   14000315f:	89 c2                	mov    %eax,%edx
   140003161:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003165:	89 50 0c             	mov    %edx,0xc(%rax)
   140003168:	eb 0b                	jmp    140003175 <__pformat_putchars+0x60>
   14000316a:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000316e:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rax)
   140003175:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003179:	8b 40 0c             	mov    0xc(%rax),%eax
   14000317c:	85 c0                	test   %eax,%eax
   14000317e:	7e 57                	jle    1400031d7 <__pformat_putchars+0xc2>
   140003180:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003184:	8b 40 08             	mov    0x8(%rax),%eax
   140003187:	25 00 04 00 00       	and    $0x400,%eax
   14000318c:	85 c0                	test   %eax,%eax
   14000318e:	75 47                	jne    1400031d7 <__pformat_putchars+0xc2>
   140003190:	eb 11                	jmp    1400031a3 <__pformat_putchars+0x8e>
   140003192:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003196:	48 89 c2             	mov    %rax,%rdx
   140003199:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000319e:	e8 ed fe ff ff       	call   140003090 <__pformat_putc>
   1400031a3:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400031a7:	8b 40 0c             	mov    0xc(%rax),%eax
   1400031aa:	8d 48 ff             	lea    -0x1(%rax),%ecx
   1400031ad:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   1400031b1:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   1400031b4:	85 c0                	test   %eax,%eax
   1400031b6:	75 da                	jne    140003192 <__pformat_putchars+0x7d>
   1400031b8:	eb 1d                	jmp    1400031d7 <__pformat_putchars+0xc2>
   1400031ba:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400031be:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400031c2:	48 89 55 10          	mov    %rdx,0x10(%rbp)
   1400031c6:	0f b6 00             	movzbl (%rax),%eax
   1400031c9:	0f be c0             	movsbl %al,%eax
   1400031cc:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   1400031d0:	89 c1                	mov    %eax,%ecx
   1400031d2:	e8 b9 fe ff ff       	call   140003090 <__pformat_putc>
   1400031d7:	8b 45 18             	mov    0x18(%rbp),%eax
   1400031da:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400031dd:	89 55 18             	mov    %edx,0x18(%rbp)
   1400031e0:	85 c0                	test   %eax,%eax
   1400031e2:	75 d6                	jne    1400031ba <__pformat_putchars+0xa5>
   1400031e4:	eb 11                	jmp    1400031f7 <__pformat_putchars+0xe2>
   1400031e6:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400031ea:	48 89 c2             	mov    %rax,%rdx
   1400031ed:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400031f2:	e8 99 fe ff ff       	call   140003090 <__pformat_putc>
   1400031f7:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400031fb:	8b 40 0c             	mov    0xc(%rax),%eax
   1400031fe:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140003201:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140003205:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   140003208:	85 c0                	test   %eax,%eax
   14000320a:	7f da                	jg     1400031e6 <__pformat_putchars+0xd1>
   14000320c:	90                   	nop
   14000320d:	90                   	nop
   14000320e:	48 83 c4 20          	add    $0x20,%rsp
   140003212:	5d                   	pop    %rbp
   140003213:	c3                   	ret    

0000000140003214 <__pformat_puts>:
   140003214:	55                   	push   %rbp
   140003215:	48 89 e5             	mov    %rsp,%rbp
   140003218:	48 83 ec 20          	sub    $0x20,%rsp
   14000321c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003220:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140003224:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140003229:	75 0b                	jne    140003236 <__pformat_puts+0x22>
   14000322b:	48 8d 05 2e 81 00 00 	lea    0x812e(%rip),%rax        # 14000b360 <.rdata>
   140003232:	48 89 45 10          	mov    %rax,0x10(%rbp)
   140003236:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000323a:	8b 40 10             	mov    0x10(%rax),%eax
   14000323d:	85 c0                	test   %eax,%eax
   14000323f:	78 29                	js     14000326a <__pformat_puts+0x56>
   140003241:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003245:	8b 40 10             	mov    0x10(%rax),%eax
   140003248:	48 98                	cltq   
   14000324a:	48 89 c2             	mov    %rax,%rdx
   14000324d:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003251:	e8 3a 54 00 00       	call   140008690 <strnlen>
   140003256:	89 c2                	mov    %eax,%edx
   140003258:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000325c:	49 89 c0             	mov    %rax,%r8
   14000325f:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003263:	e8 ad fe ff ff       	call   140003115 <__pformat_putchars>
   140003268:	eb 1b                	jmp    140003285 <__pformat_puts+0x71>
   14000326a:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000326e:	e8 d5 54 00 00       	call   140008748 <strlen>
   140003273:	89 c2                	mov    %eax,%edx
   140003275:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003279:	49 89 c0             	mov    %rax,%r8
   14000327c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003280:	e8 90 fe ff ff       	call   140003115 <__pformat_putchars>
   140003285:	90                   	nop
   140003286:	48 83 c4 20          	add    $0x20,%rsp
   14000328a:	5d                   	pop    %rbp
   14000328b:	c3                   	ret    

000000014000328c <__pformat_wputchars>:
   14000328c:	55                   	push   %rbp
   14000328d:	48 89 e5             	mov    %rsp,%rbp
   140003290:	48 83 ec 50          	sub    $0x50,%rsp
   140003294:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003298:	89 55 18             	mov    %edx,0x18(%rbp)
   14000329b:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   14000329f:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
   1400032a3:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1400032a7:	49 89 d0             	mov    %rdx,%r8
   1400032aa:	ba 00 00 00 00       	mov    $0x0,%edx
   1400032af:	48 89 c1             	mov    %rax,%rcx
   1400032b2:	e8 39 5a 00 00       	call   140008cf0 <wcrtomb>
   1400032b7:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400032ba:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400032be:	8b 40 10             	mov    0x10(%rax),%eax
   1400032c1:	85 c0                	test   %eax,%eax
   1400032c3:	78 16                	js     1400032db <__pformat_wputchars+0x4f>
   1400032c5:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400032c9:	8b 40 10             	mov    0x10(%rax),%eax
   1400032cc:	39 45 18             	cmp    %eax,0x18(%rbp)
   1400032cf:	7e 0a                	jle    1400032db <__pformat_wputchars+0x4f>
   1400032d1:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400032d5:	8b 40 10             	mov    0x10(%rax),%eax
   1400032d8:	89 45 18             	mov    %eax,0x18(%rbp)
   1400032db:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400032df:	8b 40 0c             	mov    0xc(%rax),%eax
   1400032e2:	39 45 18             	cmp    %eax,0x18(%rbp)
   1400032e5:	7d 15                	jge    1400032fc <__pformat_wputchars+0x70>
   1400032e7:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400032eb:	8b 40 0c             	mov    0xc(%rax),%eax
   1400032ee:	2b 45 18             	sub    0x18(%rbp),%eax
   1400032f1:	89 c2                	mov    %eax,%edx
   1400032f3:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400032f7:	89 50 0c             	mov    %edx,0xc(%rax)
   1400032fa:	eb 0b                	jmp    140003307 <__pformat_wputchars+0x7b>
   1400032fc:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003300:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rax)
   140003307:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000330b:	8b 40 0c             	mov    0xc(%rax),%eax
   14000330e:	85 c0                	test   %eax,%eax
   140003310:	7e 6e                	jle    140003380 <__pformat_wputchars+0xf4>
   140003312:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003316:	8b 40 08             	mov    0x8(%rax),%eax
   140003319:	25 00 04 00 00       	and    $0x400,%eax
   14000331e:	85 c0                	test   %eax,%eax
   140003320:	75 5e                	jne    140003380 <__pformat_wputchars+0xf4>
   140003322:	eb 11                	jmp    140003335 <__pformat_wputchars+0xa9>
   140003324:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003328:	48 89 c2             	mov    %rax,%rdx
   14000332b:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003330:	e8 5b fd ff ff       	call   140003090 <__pformat_putc>
   140003335:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003339:	8b 40 0c             	mov    0xc(%rax),%eax
   14000333c:	8d 48 ff             	lea    -0x1(%rax),%ecx
   14000333f:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140003343:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   140003346:	85 c0                	test   %eax,%eax
   140003348:	75 da                	jne    140003324 <__pformat_wputchars+0x98>
   14000334a:	eb 34                	jmp    140003380 <__pformat_wputchars+0xf4>
   14000334c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   140003350:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140003354:	eb 1d                	jmp    140003373 <__pformat_wputchars+0xe7>
   140003356:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000335a:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000335e:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003362:	0f b6 00             	movzbl (%rax),%eax
   140003365:	0f be c0             	movsbl %al,%eax
   140003368:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   14000336c:	89 c1                	mov    %eax,%ecx
   14000336e:	e8 1d fd ff ff       	call   140003090 <__pformat_putc>
   140003373:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140003376:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003379:	89 55 fc             	mov    %edx,-0x4(%rbp)
   14000337c:	85 c0                	test   %eax,%eax
   14000337e:	7f d6                	jg     140003356 <__pformat_wputchars+0xca>
   140003380:	8b 45 18             	mov    0x18(%rbp),%eax
   140003383:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003386:	89 55 18             	mov    %edx,0x18(%rbp)
   140003389:	85 c0                	test   %eax,%eax
   14000338b:	7e 41                	jle    1400033ce <__pformat_wputchars+0x142>
   14000338d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003391:	48 8d 50 02          	lea    0x2(%rax),%rdx
   140003395:	48 89 55 10          	mov    %rdx,0x10(%rbp)
   140003399:	0f b7 00             	movzwl (%rax),%eax
   14000339c:	0f b7 d0             	movzwl %ax,%edx
   14000339f:	48 8d 4d d8          	lea    -0x28(%rbp),%rcx
   1400033a3:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1400033a7:	49 89 c8             	mov    %rcx,%r8
   1400033aa:	48 89 c1             	mov    %rax,%rcx
   1400033ad:	e8 3e 59 00 00       	call   140008cf0 <wcrtomb>
   1400033b2:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400033b5:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400033b9:	7f 91                	jg     14000334c <__pformat_wputchars+0xc0>
   1400033bb:	eb 11                	jmp    1400033ce <__pformat_wputchars+0x142>
   1400033bd:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400033c1:	48 89 c2             	mov    %rax,%rdx
   1400033c4:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400033c9:	e8 c2 fc ff ff       	call   140003090 <__pformat_putc>
   1400033ce:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400033d2:	8b 40 0c             	mov    0xc(%rax),%eax
   1400033d5:	8d 48 ff             	lea    -0x1(%rax),%ecx
   1400033d8:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   1400033dc:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   1400033df:	85 c0                	test   %eax,%eax
   1400033e1:	7f da                	jg     1400033bd <__pformat_wputchars+0x131>
   1400033e3:	90                   	nop
   1400033e4:	90                   	nop
   1400033e5:	48 83 c4 50          	add    $0x50,%rsp
   1400033e9:	5d                   	pop    %rbp
   1400033ea:	c3                   	ret    

00000001400033eb <__pformat_wcputs>:
   1400033eb:	55                   	push   %rbp
   1400033ec:	48 89 e5             	mov    %rsp,%rbp
   1400033ef:	48 83 ec 20          	sub    $0x20,%rsp
   1400033f3:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400033f7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400033fb:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140003400:	75 0b                	jne    14000340d <__pformat_wcputs+0x22>
   140003402:	48 8d 05 5f 7f 00 00 	lea    0x7f5f(%rip),%rax        # 14000b368 <.rdata+0x8>
   140003409:	48 89 45 10          	mov    %rax,0x10(%rbp)
   14000340d:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003411:	8b 40 10             	mov    0x10(%rax),%eax
   140003414:	85 c0                	test   %eax,%eax
   140003416:	78 29                	js     140003441 <__pformat_wcputs+0x56>
   140003418:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000341c:	8b 40 10             	mov    0x10(%rax),%eax
   14000341f:	48 98                	cltq   
   140003421:	48 89 c2             	mov    %rax,%rdx
   140003424:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003428:	e8 b3 52 00 00       	call   1400086e0 <wcsnlen>
   14000342d:	89 c2                	mov    %eax,%edx
   14000342f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003433:	49 89 c0             	mov    %rax,%r8
   140003436:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000343a:	e8 4d fe ff ff       	call   14000328c <__pformat_wputchars>
   14000343f:	eb 1b                	jmp    14000345c <__pformat_wcputs+0x71>
   140003441:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003445:	e8 e6 52 00 00       	call   140008730 <wcslen>
   14000344a:	89 c2                	mov    %eax,%edx
   14000344c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003450:	49 89 c0             	mov    %rax,%r8
   140003453:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003457:	e8 30 fe ff ff       	call   14000328c <__pformat_wputchars>
   14000345c:	90                   	nop
   14000345d:	48 83 c4 20          	add    $0x20,%rsp
   140003461:	5d                   	pop    %rbp
   140003462:	c3                   	ret    

0000000140003463 <__pformat_int_bufsiz>:
   140003463:	55                   	push   %rbp
   140003464:	48 89 e5             	mov    %rsp,%rbp
   140003467:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000346a:	89 55 18             	mov    %edx,0x18(%rbp)
   14000346d:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140003471:	8b 45 18             	mov    0x18(%rbp),%eax
   140003474:	83 e8 01             	sub    $0x1,%eax
   140003477:	48 98                	cltq   
   140003479:	48 83 c0 40          	add    $0x40,%rax
   14000347d:	8b 55 18             	mov    0x18(%rbp),%edx
   140003480:	48 63 ca             	movslq %edx,%rcx
   140003483:	ba 00 00 00 00       	mov    $0x0,%edx
   140003488:	48 f7 f1             	div    %rcx
   14000348b:	89 c2                	mov    %eax,%edx
   14000348d:	8b 45 10             	mov    0x10(%rbp),%eax
   140003490:	01 d0                	add    %edx,%eax
   140003492:	89 45 18             	mov    %eax,0x18(%rbp)
   140003495:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003499:	8b 40 10             	mov    0x10(%rax),%eax
   14000349c:	ba 00 00 00 00       	mov    $0x0,%edx
   1400034a1:	85 c0                	test   %eax,%eax
   1400034a3:	0f 48 c2             	cmovs  %edx,%eax
   1400034a6:	01 45 18             	add    %eax,0x18(%rbp)
   1400034a9:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400034ad:	8b 40 08             	mov    0x8(%rax),%eax
   1400034b0:	25 00 10 00 00       	and    $0x1000,%eax
   1400034b5:	85 c0                	test   %eax,%eax
   1400034b7:	74 2a                	je     1400034e3 <__pformat_int_bufsiz+0x80>
   1400034b9:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400034bd:	0f b7 40 20          	movzwl 0x20(%rax),%eax
   1400034c1:	66 85 c0             	test   %ax,%ax
   1400034c4:	74 1d                	je     1400034e3 <__pformat_int_bufsiz+0x80>
   1400034c6:	8b 45 18             	mov    0x18(%rbp),%eax
   1400034c9:	48 63 d0             	movslq %eax,%rdx
   1400034cc:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
   1400034d3:	48 c1 ea 20          	shr    $0x20,%rdx
   1400034d7:	c1 f8 1f             	sar    $0x1f,%eax
   1400034da:	89 c1                	mov    %eax,%ecx
   1400034dc:	89 d0                	mov    %edx,%eax
   1400034de:	29 c8                	sub    %ecx,%eax
   1400034e0:	01 45 18             	add    %eax,0x18(%rbp)
   1400034e3:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400034e7:	8b 50 0c             	mov    0xc(%rax),%edx
   1400034ea:	8b 45 18             	mov    0x18(%rbp),%eax
   1400034ed:	39 c2                	cmp    %eax,%edx
   1400034ef:	0f 4d c2             	cmovge %edx,%eax
   1400034f2:	5d                   	pop    %rbp
   1400034f3:	c3                   	ret    

00000001400034f4 <__pformat_int>:
   1400034f4:	55                   	push   %rbp
   1400034f5:	53                   	push   %rbx
   1400034f6:	48 83 ec 58          	sub    $0x58,%rsp
   1400034fa:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   1400034ff:	48 89 cb             	mov    %rcx,%rbx
   140003502:	48 8b 0b             	mov    (%rbx),%rcx
   140003505:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   140003509:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
   14000350d:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   140003511:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140003515:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003519:	49 89 c0             	mov    %rax,%r8
   14000351c:	ba 03 00 00 00       	mov    $0x3,%edx
   140003521:	b9 01 00 00 00       	mov    $0x1,%ecx
   140003526:	e8 38 ff ff ff       	call   140003463 <__pformat_int_bufsiz>
   14000352b:	89 45 f0             	mov    %eax,-0x10(%rbp)
   14000352e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   140003535:	00 
   140003536:	8b 45 f0             	mov    -0x10(%rbp),%eax
   140003539:	48 98                	cltq   
   14000353b:	48 83 c0 0f          	add    $0xf,%rax
   14000353f:	48 c1 e8 04          	shr    $0x4,%rax
   140003543:	48 c1 e0 04          	shl    $0x4,%rax
   140003547:	e8 a4 fa ff ff       	call   140002ff0 <___chkstk_ms>
   14000354c:	48 29 c4             	sub    %rax,%rsp
   14000354f:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140003554:	48 83 c0 0f          	add    $0xf,%rax
   140003558:	48 c1 e8 04          	shr    $0x4,%rax
   14000355c:	48 c1 e0 04          	shl    $0x4,%rax
   140003560:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140003564:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140003568:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000356c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003570:	8b 40 08             	mov    0x8(%rax),%eax
   140003573:	25 80 00 00 00       	and    $0x80,%eax
   140003578:	85 c0                	test   %eax,%eax
   14000357a:	0f 84 df 00 00 00    	je     14000365f <__pformat_int+0x16b>
   140003580:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140003584:	48 85 c0             	test   %rax,%rax
   140003587:	79 10                	jns    140003599 <__pformat_int+0xa5>
   140003589:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000358d:	48 f7 d8             	neg    %rax
   140003590:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140003594:	e9 c6 00 00 00       	jmp    14000365f <__pformat_int+0x16b>
   140003599:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000359d:	8b 40 08             	mov    0x8(%rax),%eax
   1400035a0:	24 7f                	and    $0x7f,%al
   1400035a2:	89 c2                	mov    %eax,%edx
   1400035a4:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400035a8:	89 50 08             	mov    %edx,0x8(%rax)
   1400035ab:	e9 af 00 00 00       	jmp    14000365f <__pformat_int+0x16b>
   1400035b0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400035b4:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
   1400035b8:	74 49                	je     140003603 <__pformat_int+0x10f>
   1400035ba:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400035be:	8b 40 08             	mov    0x8(%rax),%eax
   1400035c1:	25 00 10 00 00       	and    $0x1000,%eax
   1400035c6:	85 c0                	test   %eax,%eax
   1400035c8:	74 39                	je     140003603 <__pformat_int+0x10f>
   1400035ca:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400035ce:	0f b7 40 20          	movzwl 0x20(%rax),%eax
   1400035d2:	66 85 c0             	test   %ax,%ax
   1400035d5:	74 2c                	je     140003603 <__pformat_int+0x10f>
   1400035d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400035db:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
   1400035df:	48 99                	cqto   
   1400035e1:	48 c1 ea 3e          	shr    $0x3e,%rdx
   1400035e5:	48 01 d0             	add    %rdx,%rax
   1400035e8:	83 e0 03             	and    $0x3,%eax
   1400035eb:	48 29 d0             	sub    %rdx,%rax
   1400035ee:	48 83 f8 03          	cmp    $0x3,%rax
   1400035f2:	75 0f                	jne    140003603 <__pformat_int+0x10f>
   1400035f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400035f8:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400035fc:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   140003600:	c6 00 2c             	movb   $0x2c,(%rax)
   140003603:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
   140003607:	48 ba cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rdx
   14000360e:	cc cc cc 
   140003611:	48 89 c8             	mov    %rcx,%rax
   140003614:	48 f7 e2             	mul    %rdx
   140003617:	48 c1 ea 03          	shr    $0x3,%rdx
   14000361b:	48 89 d0             	mov    %rdx,%rax
   14000361e:	48 c1 e0 02          	shl    $0x2,%rax
   140003622:	48 01 d0             	add    %rdx,%rax
   140003625:	48 01 c0             	add    %rax,%rax
   140003628:	48 29 c1             	sub    %rax,%rcx
   14000362b:	48 89 ca             	mov    %rcx,%rdx
   14000362e:	89 d0                	mov    %edx,%eax
   140003630:	8d 48 30             	lea    0x30(%rax),%ecx
   140003633:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003637:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000363b:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   14000363f:	89 ca                	mov    %ecx,%edx
   140003641:	88 10                	mov    %dl,(%rax)
   140003643:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140003647:	48 ba cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rdx
   14000364e:	cc cc cc 
   140003651:	48 f7 e2             	mul    %rdx
   140003654:	48 89 d0             	mov    %rdx,%rax
   140003657:	48 c1 e8 03          	shr    $0x3,%rax
   14000365b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   14000365f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140003663:	48 85 c0             	test   %rax,%rax
   140003666:	0f 85 44 ff ff ff    	jne    1400035b0 <__pformat_int+0xbc>
   14000366c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003670:	8b 40 10             	mov    0x10(%rax),%eax
   140003673:	85 c0                	test   %eax,%eax
   140003675:	7e 3e                	jle    1400036b5 <__pformat_int+0x1c1>
   140003677:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000367b:	8b 40 10             	mov    0x10(%rax),%eax
   14000367e:	89 c2                	mov    %eax,%edx
   140003680:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003684:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
   140003688:	89 c1                	mov    %eax,%ecx
   14000368a:	89 d0                	mov    %edx,%eax
   14000368c:	29 c8                	sub    %ecx,%eax
   14000368e:	89 45 f4             	mov    %eax,-0xc(%rbp)
   140003691:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   140003695:	7e 1e                	jle    1400036b5 <__pformat_int+0x1c1>
   140003697:	eb 0f                	jmp    1400036a8 <__pformat_int+0x1b4>
   140003699:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000369d:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400036a1:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   1400036a5:	c6 00 30             	movb   $0x30,(%rax)
   1400036a8:	8b 45 f4             	mov    -0xc(%rbp),%eax
   1400036ab:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400036ae:	89 55 f4             	mov    %edx,-0xc(%rbp)
   1400036b1:	85 c0                	test   %eax,%eax
   1400036b3:	7f e4                	jg     140003699 <__pformat_int+0x1a5>
   1400036b5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400036b9:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
   1400036bd:	75 1a                	jne    1400036d9 <__pformat_int+0x1e5>
   1400036bf:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400036c3:	8b 40 10             	mov    0x10(%rax),%eax
   1400036c6:	85 c0                	test   %eax,%eax
   1400036c8:	74 0f                	je     1400036d9 <__pformat_int+0x1e5>
   1400036ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400036ce:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400036d2:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   1400036d6:	c6 00 30             	movb   $0x30,(%rax)
   1400036d9:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400036dd:	8b 40 0c             	mov    0xc(%rax),%eax
   1400036e0:	85 c0                	test   %eax,%eax
   1400036e2:	0f 8e ce 00 00 00    	jle    1400037b6 <__pformat_int+0x2c2>
   1400036e8:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400036ec:	8b 40 0c             	mov    0xc(%rax),%eax
   1400036ef:	89 c2                	mov    %eax,%edx
   1400036f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400036f5:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
   1400036f9:	89 c1                	mov    %eax,%ecx
   1400036fb:	89 d0                	mov    %edx,%eax
   1400036fd:	29 c8                	sub    %ecx,%eax
   1400036ff:	89 c2                	mov    %eax,%edx
   140003701:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003705:	89 50 0c             	mov    %edx,0xc(%rax)
   140003708:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000370c:	8b 40 0c             	mov    0xc(%rax),%eax
   14000370f:	85 c0                	test   %eax,%eax
   140003711:	0f 8e 9f 00 00 00    	jle    1400037b6 <__pformat_int+0x2c2>
   140003717:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000371b:	8b 40 08             	mov    0x8(%rax),%eax
   14000371e:	25 c0 01 00 00       	and    $0x1c0,%eax
   140003723:	85 c0                	test   %eax,%eax
   140003725:	74 11                	je     140003738 <__pformat_int+0x244>
   140003727:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000372b:	8b 40 0c             	mov    0xc(%rax),%eax
   14000372e:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003731:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003735:	89 50 0c             	mov    %edx,0xc(%rax)
   140003738:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000373c:	8b 40 10             	mov    0x10(%rax),%eax
   14000373f:	85 c0                	test   %eax,%eax
   140003741:	79 3b                	jns    14000377e <__pformat_int+0x28a>
   140003743:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003747:	8b 40 08             	mov    0x8(%rax),%eax
   14000374a:	25 00 06 00 00       	and    $0x600,%eax
   14000374f:	3d 00 02 00 00       	cmp    $0x200,%eax
   140003754:	75 28                	jne    14000377e <__pformat_int+0x28a>
   140003756:	eb 0f                	jmp    140003767 <__pformat_int+0x273>
   140003758:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000375c:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003760:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   140003764:	c6 00 30             	movb   $0x30,(%rax)
   140003767:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000376b:	8b 40 0c             	mov    0xc(%rax),%eax
   14000376e:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140003771:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140003775:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   140003778:	85 c0                	test   %eax,%eax
   14000377a:	7f dc                	jg     140003758 <__pformat_int+0x264>
   14000377c:	eb 38                	jmp    1400037b6 <__pformat_int+0x2c2>
   14000377e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003782:	8b 40 08             	mov    0x8(%rax),%eax
   140003785:	25 00 04 00 00       	and    $0x400,%eax
   14000378a:	85 c0                	test   %eax,%eax
   14000378c:	75 28                	jne    1400037b6 <__pformat_int+0x2c2>
   14000378e:	eb 11                	jmp    1400037a1 <__pformat_int+0x2ad>
   140003790:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003794:	48 89 c2             	mov    %rax,%rdx
   140003797:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000379c:	e8 ef f8 ff ff       	call   140003090 <__pformat_putc>
   1400037a1:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400037a5:	8b 40 0c             	mov    0xc(%rax),%eax
   1400037a8:	8d 48 ff             	lea    -0x1(%rax),%ecx
   1400037ab:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   1400037af:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   1400037b2:	85 c0                	test   %eax,%eax
   1400037b4:	7f da                	jg     140003790 <__pformat_int+0x29c>
   1400037b6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400037ba:	8b 40 08             	mov    0x8(%rax),%eax
   1400037bd:	25 80 00 00 00       	and    $0x80,%eax
   1400037c2:	85 c0                	test   %eax,%eax
   1400037c4:	74 11                	je     1400037d7 <__pformat_int+0x2e3>
   1400037c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400037ca:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400037ce:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   1400037d2:	c6 00 2d             	movb   $0x2d,(%rax)
   1400037d5:	eb 5a                	jmp    140003831 <__pformat_int+0x33d>
   1400037d7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400037db:	8b 40 08             	mov    0x8(%rax),%eax
   1400037de:	25 00 01 00 00       	and    $0x100,%eax
   1400037e3:	85 c0                	test   %eax,%eax
   1400037e5:	74 11                	je     1400037f8 <__pformat_int+0x304>
   1400037e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400037eb:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400037ef:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   1400037f3:	c6 00 2b             	movb   $0x2b,(%rax)
   1400037f6:	eb 39                	jmp    140003831 <__pformat_int+0x33d>
   1400037f8:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400037fc:	8b 40 08             	mov    0x8(%rax),%eax
   1400037ff:	83 e0 40             	and    $0x40,%eax
   140003802:	85 c0                	test   %eax,%eax
   140003804:	74 2b                	je     140003831 <__pformat_int+0x33d>
   140003806:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000380a:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000380e:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   140003812:	c6 00 20             	movb   $0x20,(%rax)
   140003815:	eb 1a                	jmp    140003831 <__pformat_int+0x33d>
   140003817:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
   14000381c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003820:	0f b6 00             	movzbl (%rax),%eax
   140003823:	0f be c0             	movsbl %al,%eax
   140003826:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   14000382a:	89 c1                	mov    %eax,%ecx
   14000382c:	e8 5f f8 ff ff       	call   140003090 <__pformat_putc>
   140003831:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003835:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
   140003839:	77 dc                	ja     140003817 <__pformat_int+0x323>
   14000383b:	eb 11                	jmp    14000384e <__pformat_int+0x35a>
   14000383d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003841:	48 89 c2             	mov    %rax,%rdx
   140003844:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003849:	e8 42 f8 ff ff       	call   140003090 <__pformat_putc>
   14000384e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003852:	8b 40 0c             	mov    0xc(%rax),%eax
   140003855:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140003858:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   14000385c:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   14000385f:	85 c0                	test   %eax,%eax
   140003861:	7f da                	jg     14000383d <__pformat_int+0x349>
   140003863:	90                   	nop
   140003864:	90                   	nop
   140003865:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140003869:	5b                   	pop    %rbx
   14000386a:	5d                   	pop    %rbp
   14000386b:	c3                   	ret    

000000014000386c <__pformat_xint>:
   14000386c:	55                   	push   %rbp
   14000386d:	53                   	push   %rbx
   14000386e:	48 83 ec 68          	sub    $0x68,%rsp
   140003872:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
   140003877:	89 4d 20             	mov    %ecx,0x20(%rbp)
   14000387a:	48 89 d3             	mov    %rdx,%rbx
   14000387d:	48 8b 03             	mov    (%rbx),%rax
   140003880:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   140003884:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   140003888:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
   14000388c:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140003890:	83 7d 20 6f          	cmpl   $0x6f,0x20(%rbp)
   140003894:	75 07                	jne    14000389d <__pformat_xint+0x31>
   140003896:	b8 03 00 00 00       	mov    $0x3,%eax
   14000389b:	eb 05                	jmp    1400038a2 <__pformat_xint+0x36>
   14000389d:	b8 04 00 00 00       	mov    $0x4,%eax
   1400038a2:	89 45 ec             	mov    %eax,-0x14(%rbp)
   1400038a5:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   1400038a9:	8b 45 ec             	mov    -0x14(%rbp),%eax
   1400038ac:	49 89 d0             	mov    %rdx,%r8
   1400038af:	89 c2                	mov    %eax,%edx
   1400038b1:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400038b6:	e8 a8 fb ff ff       	call   140003463 <__pformat_int_bufsiz>
   1400038bb:	89 45 e8             	mov    %eax,-0x18(%rbp)
   1400038be:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
   1400038c5:	00 
   1400038c6:	8b 45 e8             	mov    -0x18(%rbp),%eax
   1400038c9:	48 98                	cltq   
   1400038cb:	48 83 c0 0f          	add    $0xf,%rax
   1400038cf:	48 c1 e8 04          	shr    $0x4,%rax
   1400038d3:	48 c1 e0 04          	shl    $0x4,%rax
   1400038d7:	e8 14 f7 ff ff       	call   140002ff0 <___chkstk_ms>
   1400038dc:	48 29 c4             	sub    %rax,%rsp
   1400038df:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   1400038e4:	48 83 c0 0f          	add    $0xf,%rax
   1400038e8:	48 c1 e8 04          	shr    $0x4,%rax
   1400038ec:	48 c1 e0 04          	shl    $0x4,%rax
   1400038f0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400038f4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400038f8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400038fc:	83 7d 20 6f          	cmpl   $0x6f,0x20(%rbp)
   140003900:	75 07                	jne    140003909 <__pformat_xint+0x9d>
   140003902:	b8 07 00 00 00       	mov    $0x7,%eax
   140003907:	eb 05                	jmp    14000390e <__pformat_xint+0xa2>
   140003909:	b8 0f 00 00 00       	mov    $0xf,%eax
   14000390e:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140003911:	eb 5e                	jmp    140003971 <__pformat_xint+0x105>
   140003913:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   140003917:	89 c2                	mov    %eax,%edx
   140003919:	8b 45 dc             	mov    -0x24(%rbp),%eax
   14000391c:	21 d0                	and    %edx,%eax
   14000391e:	8d 48 30             	lea    0x30(%rax),%ecx
   140003921:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003925:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003929:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   14000392d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140003931:	89 ca                	mov    %ecx,%edx
   140003933:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140003937:	88 10                	mov    %dl,(%rax)
   140003939:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000393d:	0f b6 00             	movzbl (%rax),%eax
   140003940:	3c 39                	cmp    $0x39,%al
   140003942:	7e 1a                	jle    14000395e <__pformat_xint+0xf2>
   140003944:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140003948:	0f b6 00             	movzbl (%rax),%eax
   14000394b:	83 c0 07             	add    $0x7,%eax
   14000394e:	89 c2                	mov    %eax,%edx
   140003950:	8b 45 20             	mov    0x20(%rbp),%eax
   140003953:	83 e0 20             	and    $0x20,%eax
   140003956:	09 c2                	or     %eax,%edx
   140003958:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000395c:	88 10                	mov    %dl,(%rax)
   14000395e:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
   140003962:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140003965:	89 c1                	mov    %eax,%ecx
   140003967:	48 d3 ea             	shr    %cl,%rdx
   14000396a:	48 89 d0             	mov    %rdx,%rax
   14000396d:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   140003971:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   140003975:	48 85 c0             	test   %rax,%rax
   140003978:	75 99                	jne    140003913 <__pformat_xint+0xa7>
   14000397a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000397e:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
   140003982:	75 13                	jne    140003997 <__pformat_xint+0x12b>
   140003984:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003988:	8b 40 08             	mov    0x8(%rax),%eax
   14000398b:	80 e4 f7             	and    $0xf7,%ah
   14000398e:	89 c2                	mov    %eax,%edx
   140003990:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003994:	89 50 08             	mov    %edx,0x8(%rax)
   140003997:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000399b:	8b 40 10             	mov    0x10(%rax),%eax
   14000399e:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400039a1:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400039a5:	7e 3a                	jle    1400039e1 <__pformat_xint+0x175>
   1400039a7:	8b 55 fc             	mov    -0x4(%rbp),%edx
   1400039aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400039ae:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
   1400039b2:	89 c1                	mov    %eax,%ecx
   1400039b4:	89 d0                	mov    %edx,%eax
   1400039b6:	29 c8                	sub    %ecx,%eax
   1400039b8:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400039bb:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400039bf:	7e 20                	jle    1400039e1 <__pformat_xint+0x175>
   1400039c1:	eb 0f                	jmp    1400039d2 <__pformat_xint+0x166>
   1400039c3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400039c7:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400039cb:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   1400039cf:	c6 00 30             	movb   $0x30,(%rax)
   1400039d2:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400039d5:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400039d8:	89 55 fc             	mov    %edx,-0x4(%rbp)
   1400039db:	85 c0                	test   %eax,%eax
   1400039dd:	7f e4                	jg     1400039c3 <__pformat_xint+0x157>
   1400039df:	eb 25                	jmp    140003a06 <__pformat_xint+0x19a>
   1400039e1:	83 7d 20 6f          	cmpl   $0x6f,0x20(%rbp)
   1400039e5:	75 1f                	jne    140003a06 <__pformat_xint+0x19a>
   1400039e7:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400039eb:	8b 40 08             	mov    0x8(%rax),%eax
   1400039ee:	25 00 08 00 00       	and    $0x800,%eax
   1400039f3:	85 c0                	test   %eax,%eax
   1400039f5:	74 0f                	je     140003a06 <__pformat_xint+0x19a>
   1400039f7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400039fb:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400039ff:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003a03:	c6 00 30             	movb   $0x30,(%rax)
   140003a06:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003a0a:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
   140003a0e:	75 1a                	jne    140003a2a <__pformat_xint+0x1be>
   140003a10:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003a14:	8b 40 10             	mov    0x10(%rax),%eax
   140003a17:	85 c0                	test   %eax,%eax
   140003a19:	74 0f                	je     140003a2a <__pformat_xint+0x1be>
   140003a1b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003a1f:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003a23:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003a27:	c6 00 30             	movb   $0x30,(%rax)
   140003a2a:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003a2e:	8b 40 0c             	mov    0xc(%rax),%eax
   140003a31:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140003a35:	48 2b 55 e0          	sub    -0x20(%rbp),%rdx
   140003a39:	89 55 fc             	mov    %edx,-0x4(%rbp)
   140003a3c:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140003a3f:	7d 15                	jge    140003a56 <__pformat_xint+0x1ea>
   140003a41:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003a45:	8b 40 0c             	mov    0xc(%rax),%eax
   140003a48:	2b 45 fc             	sub    -0x4(%rbp),%eax
   140003a4b:	89 c2                	mov    %eax,%edx
   140003a4d:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003a51:	89 50 0c             	mov    %edx,0xc(%rax)
   140003a54:	eb 0b                	jmp    140003a61 <__pformat_xint+0x1f5>
   140003a56:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003a5a:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rax)
   140003a61:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003a65:	8b 40 0c             	mov    0xc(%rax),%eax
   140003a68:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140003a6b:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140003a6f:	7e 1a                	jle    140003a8b <__pformat_xint+0x21f>
   140003a71:	83 7d 20 6f          	cmpl   $0x6f,0x20(%rbp)
   140003a75:	74 14                	je     140003a8b <__pformat_xint+0x21f>
   140003a77:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003a7b:	8b 40 08             	mov    0x8(%rax),%eax
   140003a7e:	25 00 08 00 00       	and    $0x800,%eax
   140003a83:	85 c0                	test   %eax,%eax
   140003a85:	74 04                	je     140003a8b <__pformat_xint+0x21f>
   140003a87:	83 6d fc 02          	subl   $0x2,-0x4(%rbp)
   140003a8b:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140003a8f:	7e 3c                	jle    140003acd <__pformat_xint+0x261>
   140003a91:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003a95:	8b 40 10             	mov    0x10(%rax),%eax
   140003a98:	85 c0                	test   %eax,%eax
   140003a9a:	79 31                	jns    140003acd <__pformat_xint+0x261>
   140003a9c:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003aa0:	8b 40 08             	mov    0x8(%rax),%eax
   140003aa3:	25 00 06 00 00       	and    $0x600,%eax
   140003aa8:	3d 00 02 00 00       	cmp    $0x200,%eax
   140003aad:	75 1e                	jne    140003acd <__pformat_xint+0x261>
   140003aaf:	eb 0f                	jmp    140003ac0 <__pformat_xint+0x254>
   140003ab1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003ab5:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003ab9:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003abd:	c6 00 30             	movb   $0x30,(%rax)
   140003ac0:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140003ac3:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003ac6:	89 55 fc             	mov    %edx,-0x4(%rbp)
   140003ac9:	85 c0                	test   %eax,%eax
   140003acb:	7f e4                	jg     140003ab1 <__pformat_xint+0x245>
   140003acd:	83 7d 20 6f          	cmpl   $0x6f,0x20(%rbp)
   140003ad1:	74 30                	je     140003b03 <__pformat_xint+0x297>
   140003ad3:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003ad7:	8b 40 08             	mov    0x8(%rax),%eax
   140003ada:	25 00 08 00 00       	and    $0x800,%eax
   140003adf:	85 c0                	test   %eax,%eax
   140003ae1:	74 20                	je     140003b03 <__pformat_xint+0x297>
   140003ae3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003ae7:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003aeb:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003aef:	8b 55 20             	mov    0x20(%rbp),%edx
   140003af2:	88 10                	mov    %dl,(%rax)
   140003af4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003af8:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003afc:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003b00:	c6 00 30             	movb   $0x30,(%rax)
   140003b03:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140003b07:	7e 4c                	jle    140003b55 <__pformat_xint+0x2e9>
   140003b09:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003b0d:	8b 40 08             	mov    0x8(%rax),%eax
   140003b10:	25 00 04 00 00       	and    $0x400,%eax
   140003b15:	85 c0                	test   %eax,%eax
   140003b17:	75 3c                	jne    140003b55 <__pformat_xint+0x2e9>
   140003b19:	eb 11                	jmp    140003b2c <__pformat_xint+0x2c0>
   140003b1b:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003b1f:	48 89 c2             	mov    %rax,%rdx
   140003b22:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003b27:	e8 64 f5 ff ff       	call   140003090 <__pformat_putc>
   140003b2c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140003b2f:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003b32:	89 55 fc             	mov    %edx,-0x4(%rbp)
   140003b35:	85 c0                	test   %eax,%eax
   140003b37:	7f e2                	jg     140003b1b <__pformat_xint+0x2af>
   140003b39:	eb 1a                	jmp    140003b55 <__pformat_xint+0x2e9>
   140003b3b:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
   140003b40:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003b44:	0f b6 00             	movzbl (%rax),%eax
   140003b47:	0f be c0             	movsbl %al,%eax
   140003b4a:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   140003b4e:	89 c1                	mov    %eax,%ecx
   140003b50:	e8 3b f5 ff ff       	call   140003090 <__pformat_putc>
   140003b55:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003b59:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
   140003b5d:	77 dc                	ja     140003b3b <__pformat_xint+0x2cf>
   140003b5f:	eb 11                	jmp    140003b72 <__pformat_xint+0x306>
   140003b61:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003b65:	48 89 c2             	mov    %rax,%rdx
   140003b68:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003b6d:	e8 1e f5 ff ff       	call   140003090 <__pformat_putc>
   140003b72:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140003b75:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003b78:	89 55 fc             	mov    %edx,-0x4(%rbp)
   140003b7b:	85 c0                	test   %eax,%eax
   140003b7d:	7f e2                	jg     140003b61 <__pformat_xint+0x2f5>
   140003b7f:	90                   	nop
   140003b80:	90                   	nop
   140003b81:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140003b85:	5b                   	pop    %rbx
   140003b86:	5d                   	pop    %rbp
   140003b87:	c3                   	ret    

0000000140003b88 <__pformat_cvt>:
   140003b88:	55                   	push   %rbp
   140003b89:	53                   	push   %rbx
   140003b8a:	48 83 ec 68          	sub    $0x68,%rsp
   140003b8e:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
   140003b93:	89 4d 20             	mov    %ecx,0x20(%rbp)
   140003b96:	48 89 d3             	mov    %rdx,%rbx
   140003b99:	44 89 45 30          	mov    %r8d,0x30(%rbp)
   140003b9d:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   140003ba1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140003ba8:	db 2b                	fldt   (%rbx)
   140003baa:	db 7d e0             	fstpt  -0x20(%rbp)
   140003bad:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   140003bb1:	48 89 c1             	mov    %rax,%rcx
   140003bb4:	e8 d7 49 00 00       	call   140008590 <__fpclassifyl>
   140003bb9:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140003bbc:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140003bbf:	25 00 01 00 00       	and    $0x100,%eax
   140003bc4:	85 c0                	test   %eax,%eax
   140003bc6:	74 1d                	je     140003be5 <__pformat_cvt+0x5d>
   140003bc8:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140003bcb:	25 00 04 00 00       	and    $0x400,%eax
   140003bd0:	85 c0                	test   %eax,%eax
   140003bd2:	74 07                	je     140003bdb <__pformat_cvt+0x53>
   140003bd4:	b8 03 00 00 00       	mov    $0x3,%eax
   140003bd9:	eb 05                	jmp    140003be0 <__pformat_cvt+0x58>
   140003bdb:	b8 04 00 00 00       	mov    $0x4,%eax
   140003be0:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140003be3:	eb 4a                	jmp    140003c2f <__pformat_cvt+0xa7>
   140003be5:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140003be8:	25 00 04 00 00       	and    $0x400,%eax
   140003bed:	85 c0                	test   %eax,%eax
   140003bef:	74 37                	je     140003c28 <__pformat_cvt+0xa0>
   140003bf1:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140003bf4:	25 00 40 00 00       	and    $0x4000,%eax
   140003bf9:	85 c0                	test   %eax,%eax
   140003bfb:	74 10                	je     140003c0d <__pformat_cvt+0x85>
   140003bfd:	c7 45 f8 02 00 00 00 	movl   $0x2,-0x8(%rbp)
   140003c04:	c7 45 fc c3 bf ff ff 	movl   $0xffffbfc3,-0x4(%rbp)
   140003c0b:	eb 22                	jmp    140003c2f <__pformat_cvt+0xa7>
   140003c0d:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
   140003c14:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
   140003c18:	98                   	cwtl   
   140003c19:	25 ff 7f 00 00       	and    $0x7fff,%eax
   140003c1e:	2d 3e 40 00 00       	sub    $0x403e,%eax
   140003c23:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140003c26:	eb 07                	jmp    140003c2f <__pformat_cvt+0xa7>
   140003c28:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   140003c2f:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140003c32:	83 f8 04             	cmp    $0x4,%eax
   140003c35:	74 0e                	je     140003c45 <__pformat_cvt+0xbd>
   140003c37:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
   140003c3b:	98                   	cwtl   
   140003c3c:	25 00 80 00 00       	and    $0x8000,%eax
   140003c41:	89 c2                	mov    %eax,%edx
   140003c43:	eb 05                	jmp    140003c4a <__pformat_cvt+0xc2>
   140003c45:	ba 00 00 00 00       	mov    $0x0,%edx
   140003c4a:	48 8b 45 40          	mov    0x40(%rbp),%rax
   140003c4e:	89 10                	mov    %edx,(%rax)
   140003c50:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140003c53:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
   140003c57:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
   140003c5b:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140003c60:	48 8b 55 38          	mov    0x38(%rbp),%rdx
   140003c64:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140003c69:	8b 55 30             	mov    0x30(%rbp),%edx
   140003c6c:	89 54 24 28          	mov    %edx,0x28(%rsp)
   140003c70:	8b 55 20             	mov    0x20(%rbp),%edx
   140003c73:	89 54 24 20          	mov    %edx,0x20(%rsp)
   140003c77:	49 89 c9             	mov    %rcx,%r9
   140003c7a:	49 89 d8             	mov    %rbx,%r8
   140003c7d:	89 c2                	mov    %eax,%edx
   140003c7f:	48 8d 05 0a 64 00 00 	lea    0x640a(%rip),%rax        # 14000a090 <fpi.0>
   140003c86:	48 89 c1             	mov    %rax,%rcx
   140003c89:	e8 8c 20 00 00       	call   140005d1a <__gdtoa>
   140003c8e:	48 83 c4 68          	add    $0x68,%rsp
   140003c92:	5b                   	pop    %rbx
   140003c93:	5d                   	pop    %rbp
   140003c94:	c3                   	ret    

0000000140003c95 <__pformat_ecvt>:
   140003c95:	55                   	push   %rbp
   140003c96:	53                   	push   %rbx
   140003c97:	48 83 ec 68          	sub    $0x68,%rsp
   140003c9b:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
   140003ca0:	48 89 cb             	mov    %rcx,%rbx
   140003ca3:	db 2b                	fldt   (%rbx)
   140003ca5:	db 7d e0             	fstpt  -0x20(%rbp)
   140003ca8:	89 55 28             	mov    %edx,0x28(%rbp)
   140003cab:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140003caf:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   140003cb3:	db 6d e0             	fldt   -0x20(%rbp)
   140003cb6:	db 7d f0             	fstpt  -0x10(%rbp)
   140003cb9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003cbd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140003cc1:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140003cc5:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   140003cc9:	4c 8b 45 30          	mov    0x30(%rbp),%r8
   140003ccd:	8b 4d 28             	mov    0x28(%rbp),%ecx
   140003cd0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140003cd4:	48 8b 55 38          	mov    0x38(%rbp),%rdx
   140003cd8:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140003cdd:	4d 89 c1             	mov    %r8,%r9
   140003ce0:	41 89 c8             	mov    %ecx,%r8d
   140003ce3:	48 89 c2             	mov    %rax,%rdx
   140003ce6:	b9 02 00 00 00       	mov    $0x2,%ecx
   140003ceb:	e8 98 fe ff ff       	call   140003b88 <__pformat_cvt>
   140003cf0:	48 83 c4 68          	add    $0x68,%rsp
   140003cf4:	5b                   	pop    %rbx
   140003cf5:	5d                   	pop    %rbp
   140003cf6:	c3                   	ret    

0000000140003cf7 <__pformat_fcvt>:
   140003cf7:	55                   	push   %rbp
   140003cf8:	53                   	push   %rbx
   140003cf9:	48 83 ec 68          	sub    $0x68,%rsp
   140003cfd:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
   140003d02:	48 89 cb             	mov    %rcx,%rbx
   140003d05:	db 2b                	fldt   (%rbx)
   140003d07:	db 7d e0             	fstpt  -0x20(%rbp)
   140003d0a:	89 55 28             	mov    %edx,0x28(%rbp)
   140003d0d:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140003d11:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   140003d15:	db 6d e0             	fldt   -0x20(%rbp)
   140003d18:	db 7d f0             	fstpt  -0x10(%rbp)
   140003d1b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003d1f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140003d23:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140003d27:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   140003d2b:	4c 8b 45 30          	mov    0x30(%rbp),%r8
   140003d2f:	8b 4d 28             	mov    0x28(%rbp),%ecx
   140003d32:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140003d36:	48 8b 55 38          	mov    0x38(%rbp),%rdx
   140003d3a:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140003d3f:	4d 89 c1             	mov    %r8,%r9
   140003d42:	41 89 c8             	mov    %ecx,%r8d
   140003d45:	48 89 c2             	mov    %rax,%rdx
   140003d48:	b9 03 00 00 00       	mov    $0x3,%ecx
   140003d4d:	e8 36 fe ff ff       	call   140003b88 <__pformat_cvt>
   140003d52:	48 83 c4 68          	add    $0x68,%rsp
   140003d56:	5b                   	pop    %rbx
   140003d57:	5d                   	pop    %rbp
   140003d58:	c3                   	ret    

0000000140003d59 <__pformat_emit_radix_point>:
   140003d59:	55                   	push   %rbp
   140003d5a:	41 55                	push   %r13
   140003d5c:	41 54                	push   %r12
   140003d5e:	57                   	push   %rdi
   140003d5f:	56                   	push   %rsi
   140003d60:	53                   	push   %rbx
   140003d61:	48 83 ec 68          	sub    $0x68,%rsp
   140003d65:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
   140003d6a:	48 89 4d 40          	mov    %rcx,0x40(%rbp)
   140003d6e:	48 8b 45 40          	mov    0x40(%rbp),%rax
   140003d72:	8b 40 14             	mov    0x14(%rax),%eax
   140003d75:	83 f8 fd             	cmp    $0xfffffffd,%eax
   140003d78:	75 57                	jne    140003dd1 <__pformat_emit_radix_point+0x78>
   140003d7a:	48 8d 45 cc          	lea    -0x34(%rbp),%rax
   140003d7e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140003d84:	ba 00 00 00 00       	mov    $0x0,%edx
   140003d89:	48 89 c1             	mov    %rax,%rcx
   140003d8c:	e8 cf 49 00 00       	call   140008760 <memset>
   140003d91:	e8 e2 49 00 00       	call   140008778 <localeconv>
   140003d96:	48 8b 10             	mov    (%rax),%rdx
   140003d99:	48 8d 4d cc          	lea    -0x34(%rbp),%rcx
   140003d9d:	48 8d 45 d6          	lea    -0x2a(%rbp),%rax
   140003da1:	49 89 c9             	mov    %rcx,%r9
   140003da4:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   140003daa:	48 89 c1             	mov    %rax,%rcx
   140003dad:	e8 3c 4c 00 00       	call   1400089ee <mbrtowc>
   140003db2:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140003db5:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
   140003db9:	7e 0c                	jle    140003dc7 <__pformat_emit_radix_point+0x6e>
   140003dbb:	0f b7 55 d6          	movzwl -0x2a(%rbp),%edx
   140003dbf:	48 8b 45 40          	mov    0x40(%rbp),%rax
   140003dc3:	66 89 50 18          	mov    %dx,0x18(%rax)
   140003dc7:	48 8b 45 40          	mov    0x40(%rbp),%rax
   140003dcb:	8b 55 ec             	mov    -0x14(%rbp),%edx
   140003dce:	89 50 14             	mov    %edx,0x14(%rax)
   140003dd1:	48 8b 45 40          	mov    0x40(%rbp),%rax
   140003dd5:	0f b7 40 18          	movzwl 0x18(%rax),%eax
   140003dd9:	66 85 c0             	test   %ax,%ax
   140003ddc:	0f 84 df 00 00 00    	je     140003ec1 <__pformat_emit_radix_point+0x168>
   140003de2:	48 89 e0             	mov    %rsp,%rax
   140003de5:	48 89 c3             	mov    %rax,%rbx
   140003de8:	48 8b 45 40          	mov    0x40(%rbp),%rax
   140003dec:	8b 40 14             	mov    0x14(%rax),%eax
   140003def:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140003df2:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140003df5:	48 63 d0             	movslq %eax,%rdx
   140003df8:	48 83 ea 01          	sub    $0x1,%rdx
   140003dfc:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   140003e00:	48 63 d0             	movslq %eax,%rdx
   140003e03:	49 89 d4             	mov    %rdx,%r12
   140003e06:	41 bd 00 00 00 00    	mov    $0x0,%r13d
   140003e0c:	48 63 d0             	movslq %eax,%rdx
   140003e0f:	48 89 d6             	mov    %rdx,%rsi
   140003e12:	bf 00 00 00 00       	mov    $0x0,%edi
   140003e17:	48 98                	cltq   
   140003e19:	48 83 c0 0f          	add    $0xf,%rax
   140003e1d:	48 c1 e8 04          	shr    $0x4,%rax
   140003e21:	48 c1 e0 04          	shl    $0x4,%rax
   140003e25:	e8 c6 f1 ff ff       	call   140002ff0 <___chkstk_ms>
   140003e2a:	48 29 c4             	sub    %rax,%rsp
   140003e2d:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140003e32:	48 83 c0 00          	add    $0x0,%rax
   140003e36:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140003e3a:	48 8d 45 c4          	lea    -0x3c(%rbp),%rax
   140003e3e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140003e44:	ba 00 00 00 00       	mov    $0x0,%edx
   140003e49:	48 89 c1             	mov    %rax,%rcx
   140003e4c:	e8 0f 49 00 00       	call   140008760 <memset>
   140003e51:	48 8b 45 40          	mov    0x40(%rbp),%rax
   140003e55:	0f b7 40 18          	movzwl 0x18(%rax),%eax
   140003e59:	0f b7 d0             	movzwl %ax,%edx
   140003e5c:	48 8d 4d c4          	lea    -0x3c(%rbp),%rcx
   140003e60:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140003e64:	49 89 c8             	mov    %rcx,%r8
   140003e67:	48 89 c1             	mov    %rax,%rcx
   140003e6a:	e8 81 4e 00 00       	call   140008cf0 <wcrtomb>
   140003e6f:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140003e72:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140003e76:	7e 36                	jle    140003eae <__pformat_emit_radix_point+0x155>
   140003e78:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140003e7c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140003e80:	eb 1d                	jmp    140003e9f <__pformat_emit_radix_point+0x146>
   140003e82:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003e86:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003e8a:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003e8e:	0f b6 00             	movzbl (%rax),%eax
   140003e91:	0f be c0             	movsbl %al,%eax
   140003e94:	48 8b 55 40          	mov    0x40(%rbp),%rdx
   140003e98:	89 c1                	mov    %eax,%ecx
   140003e9a:	e8 f1 f1 ff ff       	call   140003090 <__pformat_putc>
   140003e9f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140003ea2:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003ea5:	89 55 fc             	mov    %edx,-0x4(%rbp)
   140003ea8:	85 c0                	test   %eax,%eax
   140003eaa:	7f d6                	jg     140003e82 <__pformat_emit_radix_point+0x129>
   140003eac:	eb 0e                	jmp    140003ebc <__pformat_emit_radix_point+0x163>
   140003eae:	48 8b 55 40          	mov    0x40(%rbp),%rdx
   140003eb2:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140003eb7:	e8 d4 f1 ff ff       	call   140003090 <__pformat_putc>
   140003ebc:	48 89 dc             	mov    %rbx,%rsp
   140003ebf:	eb 0e                	jmp    140003ecf <__pformat_emit_radix_point+0x176>
   140003ec1:	48 8b 55 40          	mov    0x40(%rbp),%rdx
   140003ec5:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140003eca:	e8 c1 f1 ff ff       	call   140003090 <__pformat_putc>
   140003ecf:	90                   	nop
   140003ed0:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140003ed4:	5b                   	pop    %rbx
   140003ed5:	5e                   	pop    %rsi
   140003ed6:	5f                   	pop    %rdi
   140003ed7:	41 5c                	pop    %r12
   140003ed9:	41 5d                	pop    %r13
   140003edb:	5d                   	pop    %rbp
   140003edc:	c3                   	ret    

0000000140003edd <__pformat_emit_numeric_value>:
   140003edd:	55                   	push   %rbp
   140003ede:	48 89 e5             	mov    %rsp,%rbp
   140003ee1:	48 83 ec 30          	sub    $0x30,%rsp
   140003ee5:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140003ee8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140003eec:	83 7d 10 2e          	cmpl   $0x2e,0x10(%rbp)
   140003ef0:	75 0e                	jne    140003f00 <__pformat_emit_numeric_value+0x23>
   140003ef2:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003ef6:	48 89 c1             	mov    %rax,%rcx
   140003ef9:	e8 5b fe ff ff       	call   140003d59 <__pformat_emit_radix_point>
   140003efe:	eb 44                	jmp    140003f44 <__pformat_emit_numeric_value+0x67>
   140003f00:	83 7d 10 2c          	cmpl   $0x2c,0x10(%rbp)
   140003f04:	75 2f                	jne    140003f35 <__pformat_emit_numeric_value+0x58>
   140003f06:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003f0a:	0f b7 40 20          	movzwl 0x20(%rax),%eax
   140003f0e:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
   140003f12:	0f b7 45 fe          	movzwl -0x2(%rbp),%eax
   140003f16:	66 85 c0             	test   %ax,%ax
   140003f19:	74 29                	je     140003f44 <__pformat_emit_numeric_value+0x67>
   140003f1b:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140003f1f:	48 8d 45 fe          	lea    -0x2(%rbp),%rax
   140003f23:	49 89 d0             	mov    %rdx,%r8
   140003f26:	ba 01 00 00 00       	mov    $0x1,%edx
   140003f2b:	48 89 c1             	mov    %rax,%rcx
   140003f2e:	e8 59 f3 ff ff       	call   14000328c <__pformat_wputchars>
   140003f33:	eb 0f                	jmp    140003f44 <__pformat_emit_numeric_value+0x67>
   140003f35:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003f39:	48 89 c2             	mov    %rax,%rdx
   140003f3c:	8b 4d 10             	mov    0x10(%rbp),%ecx
   140003f3f:	e8 4c f1 ff ff       	call   140003090 <__pformat_putc>
   140003f44:	90                   	nop
   140003f45:	48 83 c4 30          	add    $0x30,%rsp
   140003f49:	5d                   	pop    %rbp
   140003f4a:	c3                   	ret    

0000000140003f4b <__pformat_emit_inf_or_nan>:
   140003f4b:	55                   	push   %rbp
   140003f4c:	48 89 e5             	mov    %rsp,%rbp
   140003f4f:	48 83 ec 40          	sub    $0x40,%rsp
   140003f53:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140003f56:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140003f5a:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140003f5e:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
   140003f62:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140003f66:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003f6a:	c7 40 10 ff ff ff ff 	movl   $0xffffffff,0x10(%rax)
   140003f71:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
   140003f75:	74 11                	je     140003f88 <__pformat_emit_inf_or_nan+0x3d>
   140003f77:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003f7b:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003f7f:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003f83:	c6 00 2d             	movb   $0x2d,(%rax)
   140003f86:	eb 3e                	jmp    140003fc6 <__pformat_emit_inf_or_nan+0x7b>
   140003f88:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003f8c:	8b 40 08             	mov    0x8(%rax),%eax
   140003f8f:	25 00 01 00 00       	and    $0x100,%eax
   140003f94:	85 c0                	test   %eax,%eax
   140003f96:	74 11                	je     140003fa9 <__pformat_emit_inf_or_nan+0x5e>
   140003f98:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003f9c:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003fa0:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003fa4:	c6 00 2b             	movb   $0x2b,(%rax)
   140003fa7:	eb 1d                	jmp    140003fc6 <__pformat_emit_inf_or_nan+0x7b>
   140003fa9:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003fad:	8b 40 08             	mov    0x8(%rax),%eax
   140003fb0:	83 e0 40             	and    $0x40,%eax
   140003fb3:	85 c0                	test   %eax,%eax
   140003fb5:	74 0f                	je     140003fc6 <__pformat_emit_inf_or_nan+0x7b>
   140003fb7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003fbb:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003fbf:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003fc3:	c6 00 20             	movb   $0x20,(%rax)
   140003fc6:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
   140003fcd:	eb 38                	jmp    140004007 <__pformat_emit_inf_or_nan+0xbc>
   140003fcf:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003fd3:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003fd7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140003fdb:	0f b6 00             	movzbl (%rax),%eax
   140003fde:	83 e0 df             	and    $0xffffffdf,%eax
   140003fe1:	41 89 c0             	mov    %eax,%r8d
   140003fe4:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003fe8:	8b 40 08             	mov    0x8(%rax),%eax
   140003feb:	83 e0 20             	and    $0x20,%eax
   140003fee:	89 c1                	mov    %eax,%ecx
   140003ff0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140003ff4:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003ff8:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140003ffc:	44 89 c2             	mov    %r8d,%edx
   140003fff:	09 ca                	or     %ecx,%edx
   140004001:	88 10                	mov    %dl,(%rax)
   140004003:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
   140004007:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   14000400b:	7f c2                	jg     140003fcf <__pformat_emit_inf_or_nan+0x84>
   14000400d:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
   140004011:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140004015:	48 29 d0             	sub    %rdx,%rax
   140004018:	89 c1                	mov    %eax,%ecx
   14000401a:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   14000401e:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
   140004022:	49 89 d0             	mov    %rdx,%r8
   140004025:	89 ca                	mov    %ecx,%edx
   140004027:	48 89 c1             	mov    %rax,%rcx
   14000402a:	e8 e6 f0 ff ff       	call   140003115 <__pformat_putchars>
   14000402f:	90                   	nop
   140004030:	48 83 c4 40          	add    $0x40,%rsp
   140004034:	5d                   	pop    %rbp
   140004035:	c3                   	ret    

0000000140004036 <__pformat_emit_float>:
   140004036:	55                   	push   %rbp
   140004037:	48 89 e5             	mov    %rsp,%rbp
   14000403a:	48 83 ec 30          	sub    $0x30,%rsp
   14000403e:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140004041:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140004045:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140004049:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   14000404d:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   140004051:	7e 2e                	jle    140004081 <__pformat_emit_float+0x4b>
   140004053:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004057:	8b 40 0c             	mov    0xc(%rax),%eax
   14000405a:	39 45 20             	cmp    %eax,0x20(%rbp)
   14000405d:	7f 15                	jg     140004074 <__pformat_emit_float+0x3e>
   14000405f:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004063:	8b 40 0c             	mov    0xc(%rax),%eax
   140004066:	2b 45 20             	sub    0x20(%rbp),%eax
   140004069:	89 c2                	mov    %eax,%edx
   14000406b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000406f:	89 50 0c             	mov    %edx,0xc(%rax)
   140004072:	eb 29                	jmp    14000409d <__pformat_emit_float+0x67>
   140004074:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004078:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rax)
   14000407f:	eb 1c                	jmp    14000409d <__pformat_emit_float+0x67>
   140004081:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004085:	8b 40 0c             	mov    0xc(%rax),%eax
   140004088:	85 c0                	test   %eax,%eax
   14000408a:	7e 11                	jle    14000409d <__pformat_emit_float+0x67>
   14000408c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004090:	8b 40 0c             	mov    0xc(%rax),%eax
   140004093:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004096:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000409a:	89 50 0c             	mov    %edx,0xc(%rax)
   14000409d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040a1:	8b 40 0c             	mov    0xc(%rax),%eax
   1400040a4:	85 c0                	test   %eax,%eax
   1400040a6:	78 2b                	js     1400040d3 <__pformat_emit_float+0x9d>
   1400040a8:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040ac:	8b 50 0c             	mov    0xc(%rax),%edx
   1400040af:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040b3:	8b 40 10             	mov    0x10(%rax),%eax
   1400040b6:	39 c2                	cmp    %eax,%edx
   1400040b8:	7e 19                	jle    1400040d3 <__pformat_emit_float+0x9d>
   1400040ba:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040be:	8b 50 0c             	mov    0xc(%rax),%edx
   1400040c1:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040c5:	8b 40 10             	mov    0x10(%rax),%eax
   1400040c8:	29 c2                	sub    %eax,%edx
   1400040ca:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040ce:	89 50 0c             	mov    %edx,0xc(%rax)
   1400040d1:	eb 0b                	jmp    1400040de <__pformat_emit_float+0xa8>
   1400040d3:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040d7:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rax)
   1400040de:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040e2:	8b 40 0c             	mov    0xc(%rax),%eax
   1400040e5:	85 c0                	test   %eax,%eax
   1400040e7:	7e 2c                	jle    140004115 <__pformat_emit_float+0xdf>
   1400040e9:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040ed:	8b 40 10             	mov    0x10(%rax),%eax
   1400040f0:	85 c0                	test   %eax,%eax
   1400040f2:	7f 10                	jg     140004104 <__pformat_emit_float+0xce>
   1400040f4:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400040f8:	8b 40 08             	mov    0x8(%rax),%eax
   1400040fb:	25 00 08 00 00       	and    $0x800,%eax
   140004100:	85 c0                	test   %eax,%eax
   140004102:	74 11                	je     140004115 <__pformat_emit_float+0xdf>
   140004104:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004108:	8b 40 0c             	mov    0xc(%rax),%eax
   14000410b:	8d 50 ff             	lea    -0x1(%rax),%edx
   14000410e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004112:	89 50 0c             	mov    %edx,0xc(%rax)
   140004115:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   140004119:	7e 68                	jle    140004183 <__pformat_emit_float+0x14d>
   14000411b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000411f:	8b 40 08             	mov    0x8(%rax),%eax
   140004122:	25 00 10 00 00       	and    $0x1000,%eax
   140004127:	85 c0                	test   %eax,%eax
   140004129:	74 58                	je     140004183 <__pformat_emit_float+0x14d>
   14000412b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000412f:	0f b7 40 20          	movzwl 0x20(%rax),%eax
   140004133:	66 85 c0             	test   %ax,%ax
   140004136:	74 4b                	je     140004183 <__pformat_emit_float+0x14d>
   140004138:	8b 45 20             	mov    0x20(%rbp),%eax
   14000413b:	83 c0 02             	add    $0x2,%eax
   14000413e:	48 63 d0             	movslq %eax,%rdx
   140004141:	48 69 d2 56 55 55 55 	imul   $0x55555556,%rdx,%rdx
   140004148:	48 c1 ea 20          	shr    $0x20,%rdx
   14000414c:	c1 f8 1f             	sar    $0x1f,%eax
   14000414f:	89 c1                	mov    %eax,%ecx
   140004151:	89 d0                	mov    %edx,%eax
   140004153:	29 c8                	sub    %ecx,%eax
   140004155:	83 e8 01             	sub    $0x1,%eax
   140004158:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000415b:	eb 15                	jmp    140004172 <__pformat_emit_float+0x13c>
   14000415d:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
   140004161:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004165:	8b 40 0c             	mov    0xc(%rax),%eax
   140004168:	8d 50 ff             	lea    -0x1(%rax),%edx
   14000416b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000416f:	89 50 0c             	mov    %edx,0xc(%rax)
   140004172:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140004176:	7e 0b                	jle    140004183 <__pformat_emit_float+0x14d>
   140004178:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000417c:	8b 40 0c             	mov    0xc(%rax),%eax
   14000417f:	85 c0                	test   %eax,%eax
   140004181:	7f da                	jg     14000415d <__pformat_emit_float+0x127>
   140004183:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004187:	8b 40 0c             	mov    0xc(%rax),%eax
   14000418a:	85 c0                	test   %eax,%eax
   14000418c:	7e 27                	jle    1400041b5 <__pformat_emit_float+0x17f>
   14000418e:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
   140004192:	75 10                	jne    1400041a4 <__pformat_emit_float+0x16e>
   140004194:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004198:	8b 40 08             	mov    0x8(%rax),%eax
   14000419b:	25 c0 01 00 00       	and    $0x1c0,%eax
   1400041a0:	85 c0                	test   %eax,%eax
   1400041a2:	74 11                	je     1400041b5 <__pformat_emit_float+0x17f>
   1400041a4:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400041a8:	8b 40 0c             	mov    0xc(%rax),%eax
   1400041ab:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400041ae:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400041b2:	89 50 0c             	mov    %edx,0xc(%rax)
   1400041b5:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400041b9:	8b 40 0c             	mov    0xc(%rax),%eax
   1400041bc:	85 c0                	test   %eax,%eax
   1400041be:	7e 38                	jle    1400041f8 <__pformat_emit_float+0x1c2>
   1400041c0:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400041c4:	8b 40 08             	mov    0x8(%rax),%eax
   1400041c7:	25 00 06 00 00       	and    $0x600,%eax
   1400041cc:	85 c0                	test   %eax,%eax
   1400041ce:	75 28                	jne    1400041f8 <__pformat_emit_float+0x1c2>
   1400041d0:	eb 11                	jmp    1400041e3 <__pformat_emit_float+0x1ad>
   1400041d2:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400041d6:	48 89 c2             	mov    %rax,%rdx
   1400041d9:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400041de:	e8 ad ee ff ff       	call   140003090 <__pformat_putc>
   1400041e3:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400041e7:	8b 40 0c             	mov    0xc(%rax),%eax
   1400041ea:	8d 48 ff             	lea    -0x1(%rax),%ecx
   1400041ed:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   1400041f1:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   1400041f4:	85 c0                	test   %eax,%eax
   1400041f6:	7f da                	jg     1400041d2 <__pformat_emit_float+0x19c>
   1400041f8:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
   1400041fc:	74 13                	je     140004211 <__pformat_emit_float+0x1db>
   1400041fe:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004202:	48 89 c2             	mov    %rax,%rdx
   140004205:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   14000420a:	e8 81 ee ff ff       	call   140003090 <__pformat_putc>
   14000420f:	eb 42                	jmp    140004253 <__pformat_emit_float+0x21d>
   140004211:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004215:	8b 40 08             	mov    0x8(%rax),%eax
   140004218:	25 00 01 00 00       	and    $0x100,%eax
   14000421d:	85 c0                	test   %eax,%eax
   14000421f:	74 13                	je     140004234 <__pformat_emit_float+0x1fe>
   140004221:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004225:	48 89 c2             	mov    %rax,%rdx
   140004228:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   14000422d:	e8 5e ee ff ff       	call   140003090 <__pformat_putc>
   140004232:	eb 1f                	jmp    140004253 <__pformat_emit_float+0x21d>
   140004234:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004238:	8b 40 08             	mov    0x8(%rax),%eax
   14000423b:	83 e0 40             	and    $0x40,%eax
   14000423e:	85 c0                	test   %eax,%eax
   140004240:	74 11                	je     140004253 <__pformat_emit_float+0x21d>
   140004242:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004246:	48 89 c2             	mov    %rax,%rdx
   140004249:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000424e:	e8 3d ee ff ff       	call   140003090 <__pformat_putc>
   140004253:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004257:	8b 40 0c             	mov    0xc(%rax),%eax
   14000425a:	85 c0                	test   %eax,%eax
   14000425c:	7e 3b                	jle    140004299 <__pformat_emit_float+0x263>
   14000425e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004262:	8b 40 08             	mov    0x8(%rax),%eax
   140004265:	25 00 06 00 00       	and    $0x600,%eax
   14000426a:	3d 00 02 00 00       	cmp    $0x200,%eax
   14000426f:	75 28                	jne    140004299 <__pformat_emit_float+0x263>
   140004271:	eb 11                	jmp    140004284 <__pformat_emit_float+0x24e>
   140004273:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004277:	48 89 c2             	mov    %rax,%rdx
   14000427a:	b9 30 00 00 00       	mov    $0x30,%ecx
   14000427f:	e8 0c ee ff ff       	call   140003090 <__pformat_putc>
   140004284:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004288:	8b 40 0c             	mov    0xc(%rax),%eax
   14000428b:	8d 48 ff             	lea    -0x1(%rax),%ecx
   14000428e:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004292:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   140004295:	85 c0                	test   %eax,%eax
   140004297:	7f da                	jg     140004273 <__pformat_emit_float+0x23d>
   140004299:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   14000429d:	0f 8e a4 00 00 00    	jle    140004347 <__pformat_emit_float+0x311>
   1400042a3:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400042a7:	0f b6 00             	movzbl (%rax),%eax
   1400042aa:	84 c0                	test   %al,%al
   1400042ac:	74 14                	je     1400042c2 <__pformat_emit_float+0x28c>
   1400042ae:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400042b2:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400042b6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400042ba:	0f b6 00             	movzbl (%rax),%eax
   1400042bd:	0f be c0             	movsbl %al,%eax
   1400042c0:	eb 05                	jmp    1400042c7 <__pformat_emit_float+0x291>
   1400042c2:	b8 30 00 00 00       	mov    $0x30,%eax
   1400042c7:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   1400042cb:	89 c1                	mov    %eax,%ecx
   1400042cd:	e8 be ed ff ff       	call   140003090 <__pformat_putc>
   1400042d2:	83 6d 20 01          	subl   $0x1,0x20(%rbp)
   1400042d6:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   1400042da:	74 5f                	je     14000433b <__pformat_emit_float+0x305>
   1400042dc:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400042e0:	8b 40 08             	mov    0x8(%rax),%eax
   1400042e3:	25 00 10 00 00       	and    $0x1000,%eax
   1400042e8:	85 c0                	test   %eax,%eax
   1400042ea:	74 4f                	je     14000433b <__pformat_emit_float+0x305>
   1400042ec:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400042f0:	0f b7 40 20          	movzwl 0x20(%rax),%eax
   1400042f4:	66 85 c0             	test   %ax,%ax
   1400042f7:	74 42                	je     14000433b <__pformat_emit_float+0x305>
   1400042f9:	8b 55 20             	mov    0x20(%rbp),%edx
   1400042fc:	48 63 c2             	movslq %edx,%rax
   1400042ff:	48 69 c0 56 55 55 55 	imul   $0x55555556,%rax,%rax
   140004306:	48 c1 e8 20          	shr    $0x20,%rax
   14000430a:	89 d1                	mov    %edx,%ecx
   14000430c:	c1 f9 1f             	sar    $0x1f,%ecx
   14000430f:	29 c8                	sub    %ecx,%eax
   140004311:	89 c1                	mov    %eax,%ecx
   140004313:	01 c9                	add    %ecx,%ecx
   140004315:	01 c1                	add    %eax,%ecx
   140004317:	89 d0                	mov    %edx,%eax
   140004319:	29 c8                	sub    %ecx,%eax
   14000431b:	85 c0                	test   %eax,%eax
   14000431d:	75 1c                	jne    14000433b <__pformat_emit_float+0x305>
   14000431f:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004323:	48 83 c0 20          	add    $0x20,%rax
   140004327:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   14000432b:	49 89 d0             	mov    %rdx,%r8
   14000432e:	ba 01 00 00 00       	mov    $0x1,%edx
   140004333:	48 89 c1             	mov    %rax,%rcx
   140004336:	e8 51 ef ff ff       	call   14000328c <__pformat_wputchars>
   14000433b:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   14000433f:	0f 8f 5e ff ff ff    	jg     1400042a3 <__pformat_emit_float+0x26d>
   140004345:	eb 11                	jmp    140004358 <__pformat_emit_float+0x322>
   140004347:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000434b:	48 89 c2             	mov    %rax,%rdx
   14000434e:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004353:	e8 38 ed ff ff       	call   140003090 <__pformat_putc>
   140004358:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000435c:	8b 40 10             	mov    0x10(%rax),%eax
   14000435f:	85 c0                	test   %eax,%eax
   140004361:	7f 10                	jg     140004373 <__pformat_emit_float+0x33d>
   140004363:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004367:	8b 40 08             	mov    0x8(%rax),%eax
   14000436a:	25 00 08 00 00       	and    $0x800,%eax
   14000436f:	85 c0                	test   %eax,%eax
   140004371:	74 0c                	je     14000437f <__pformat_emit_float+0x349>
   140004373:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004377:	48 89 c1             	mov    %rax,%rcx
   14000437a:	e8 da f9 ff ff       	call   140003d59 <__pformat_emit_radix_point>
   14000437f:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   140004383:	79 5f                	jns    1400043e4 <__pformat_emit_float+0x3ae>
   140004385:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004389:	8b 50 10             	mov    0x10(%rax),%edx
   14000438c:	8b 45 20             	mov    0x20(%rbp),%eax
   14000438f:	01 c2                	add    %eax,%edx
   140004391:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004395:	89 50 10             	mov    %edx,0x10(%rax)
   140004398:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000439c:	48 89 c2             	mov    %rax,%rdx
   14000439f:	b9 30 00 00 00       	mov    $0x30,%ecx
   1400043a4:	e8 e7 ec ff ff       	call   140003090 <__pformat_putc>
   1400043a9:	83 45 20 01          	addl   $0x1,0x20(%rbp)
   1400043ad:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   1400043b1:	78 e5                	js     140004398 <__pformat_emit_float+0x362>
   1400043b3:	eb 2f                	jmp    1400043e4 <__pformat_emit_float+0x3ae>
   1400043b5:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400043b9:	0f b6 00             	movzbl (%rax),%eax
   1400043bc:	84 c0                	test   %al,%al
   1400043be:	74 14                	je     1400043d4 <__pformat_emit_float+0x39e>
   1400043c0:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400043c4:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400043c8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400043cc:	0f b6 00             	movzbl (%rax),%eax
   1400043cf:	0f be c0             	movsbl %al,%eax
   1400043d2:	eb 05                	jmp    1400043d9 <__pformat_emit_float+0x3a3>
   1400043d4:	b8 30 00 00 00       	mov    $0x30,%eax
   1400043d9:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   1400043dd:	89 c1                	mov    %eax,%ecx
   1400043df:	e8 ac ec ff ff       	call   140003090 <__pformat_putc>
   1400043e4:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400043e8:	8b 40 10             	mov    0x10(%rax),%eax
   1400043eb:	8d 48 ff             	lea    -0x1(%rax),%ecx
   1400043ee:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   1400043f2:	89 4a 10             	mov    %ecx,0x10(%rdx)
   1400043f5:	85 c0                	test   %eax,%eax
   1400043f7:	7f bc                	jg     1400043b5 <__pformat_emit_float+0x37f>
   1400043f9:	90                   	nop
   1400043fa:	90                   	nop
   1400043fb:	48 83 c4 30          	add    $0x30,%rsp
   1400043ff:	5d                   	pop    %rbp
   140004400:	c3                   	ret    

0000000140004401 <__pformat_emit_efloat>:
   140004401:	55                   	push   %rbp
   140004402:	48 89 e5             	mov    %rsp,%rbp
   140004405:	48 83 ec 50          	sub    $0x50,%rsp
   140004409:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000440c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140004410:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140004414:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140004418:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
   14000441f:	83 6d 20 01          	subl   $0x1,0x20(%rbp)
   140004423:	8b 45 20             	mov    0x20(%rbp),%eax
   140004426:	48 98                	cltq   
   140004428:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   14000442c:	eb 04                	jmp    140004432 <__pformat_emit_efloat+0x31>
   14000442e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140004432:	8b 45 20             	mov    0x20(%rbp),%eax
   140004435:	48 63 d0             	movslq %eax,%rdx
   140004438:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
   14000443f:	48 c1 ea 20          	shr    $0x20,%rdx
   140004443:	c1 fa 02             	sar    $0x2,%edx
   140004446:	c1 f8 1f             	sar    $0x1f,%eax
   140004449:	89 c1                	mov    %eax,%ecx
   14000444b:	89 d0                	mov    %edx,%eax
   14000444d:	29 c8                	sub    %ecx,%eax
   14000444f:	89 45 20             	mov    %eax,0x20(%rbp)
   140004452:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   140004456:	75 d6                	jne    14000442e <__pformat_emit_efloat+0x2d>
   140004458:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000445c:	8b 40 2c             	mov    0x2c(%rax),%eax
   14000445f:	83 f8 ff             	cmp    $0xffffffff,%eax
   140004462:	75 0b                	jne    14000446f <__pformat_emit_efloat+0x6e>
   140004464:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004468:	c7 40 2c 02 00 00 00 	movl   $0x2,0x2c(%rax)
   14000446f:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004473:	8b 40 2c             	mov    0x2c(%rax),%eax
   140004476:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140004479:	7d 0a                	jge    140004485 <__pformat_emit_efloat+0x84>
   14000447b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000447f:	8b 40 2c             	mov    0x2c(%rax),%eax
   140004482:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140004485:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004489:	8b 40 0c             	mov    0xc(%rax),%eax
   14000448c:	83 45 fc 02          	addl   $0x2,-0x4(%rbp)
   140004490:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140004493:	7d 15                	jge    1400044aa <__pformat_emit_efloat+0xa9>
   140004495:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004499:	8b 40 0c             	mov    0xc(%rax),%eax
   14000449c:	2b 45 fc             	sub    -0x4(%rbp),%eax
   14000449f:	89 c2                	mov    %eax,%edx
   1400044a1:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400044a5:	89 50 0c             	mov    %edx,0xc(%rax)
   1400044a8:	eb 0b                	jmp    1400044b5 <__pformat_emit_efloat+0xb4>
   1400044aa:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400044ae:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rax)
   1400044b5:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   1400044b9:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400044bd:	49 89 d1             	mov    %rdx,%r9
   1400044c0:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1400044c6:	48 89 c2             	mov    %rax,%rdx
   1400044c9:	8b 4d 10             	mov    0x10(%rbp),%ecx
   1400044cc:	e8 65 fb ff ff       	call   140004036 <__pformat_emit_float>
   1400044d1:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400044d5:	8b 50 2c             	mov    0x2c(%rax),%edx
   1400044d8:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400044dc:	89 50 10             	mov    %edx,0x10(%rax)
   1400044df:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400044e3:	8b 40 08             	mov    0x8(%rax),%eax
   1400044e6:	0d c0 01 00 00       	or     $0x1c0,%eax
   1400044eb:	89 c2                	mov    %eax,%edx
   1400044ed:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400044f1:	89 50 08             	mov    %edx,0x8(%rax)
   1400044f4:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400044f8:	8b 40 08             	mov    0x8(%rax),%eax
   1400044fb:	83 e0 20             	and    $0x20,%eax
   1400044fe:	83 c8 45             	or     $0x45,%eax
   140004501:	89 c1                	mov    %eax,%ecx
   140004503:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004507:	48 89 c2             	mov    %rax,%rdx
   14000450a:	e8 81 eb ff ff       	call   140003090 <__pformat_putc>
   14000450f:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004513:	8b 50 0c             	mov    0xc(%rax),%edx
   140004516:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140004519:	83 e8 01             	sub    $0x1,%eax
   14000451c:	01 c2                	add    %eax,%edx
   14000451e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004522:	89 50 0c             	mov    %edx,0xc(%rax)
   140004525:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140004529:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   14000452d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140004531:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   140004535:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004539:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   14000453d:	48 89 c1             	mov    %rax,%rcx
   140004540:	e8 af ef ff ff       	call   1400034f4 <__pformat_int>
   140004545:	90                   	nop
   140004546:	48 83 c4 50          	add    $0x50,%rsp
   14000454a:	5d                   	pop    %rbp
   14000454b:	c3                   	ret    

000000014000454c <__pformat_float>:
   14000454c:	55                   	push   %rbp
   14000454d:	53                   	push   %rbx
   14000454e:	48 83 ec 58          	sub    $0x58,%rsp
   140004552:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   140004557:	48 89 cb             	mov    %rcx,%rbx
   14000455a:	db 2b                	fldt   (%rbx)
   14000455c:	db 7d e0             	fstpt  -0x20(%rbp)
   14000455f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140004563:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004567:	8b 40 10             	mov    0x10(%rax),%eax
   14000456a:	85 c0                	test   %eax,%eax
   14000456c:	79 0b                	jns    140004579 <__pformat_float+0x2d>
   14000456e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004572:	c7 40 10 06 00 00 00 	movl   $0x6,0x10(%rax)
   140004579:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000457d:	8b 50 10             	mov    0x10(%rax),%edx
   140004580:	db 6d e0             	fldt   -0x20(%rbp)
   140004583:	db 7d d0             	fstpt  -0x30(%rbp)
   140004586:	4c 8d 45 f4          	lea    -0xc(%rbp),%r8
   14000458a:	48 8d 4d f0          	lea    -0x10(%rbp),%rcx
   14000458e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140004592:	4d 89 c1             	mov    %r8,%r9
   140004595:	49 89 c8             	mov    %rcx,%r8
   140004598:	48 89 c1             	mov    %rax,%rcx
   14000459b:	e8 57 f7 ff ff       	call   140003cf7 <__pformat_fcvt>
   1400045a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400045a4:	8b 45 f0             	mov    -0x10(%rbp),%eax
   1400045a7:	3d 00 80 ff ff       	cmp    $0xffff8000,%eax
   1400045ac:	75 17                	jne    1400045c5 <__pformat_float+0x79>
   1400045ae:	8b 45 f4             	mov    -0xc(%rbp),%eax
   1400045b1:	48 8b 4d 28          	mov    0x28(%rbp),%rcx
   1400045b5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   1400045b9:	49 89 c8             	mov    %rcx,%r8
   1400045bc:	89 c1                	mov    %eax,%ecx
   1400045be:	e8 88 f9 ff ff       	call   140003f4b <__pformat_emit_inf_or_nan>
   1400045c3:	eb 43                	jmp    140004608 <__pformat_float+0xbc>
   1400045c5:	8b 4d f0             	mov    -0x10(%rbp),%ecx
   1400045c8:	8b 45 f4             	mov    -0xc(%rbp),%eax
   1400045cb:	4c 8b 45 28          	mov    0x28(%rbp),%r8
   1400045cf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   1400045d3:	4d 89 c1             	mov    %r8,%r9
   1400045d6:	41 89 c8             	mov    %ecx,%r8d
   1400045d9:	89 c1                	mov    %eax,%ecx
   1400045db:	e8 56 fa ff ff       	call   140004036 <__pformat_emit_float>
   1400045e0:	eb 11                	jmp    1400045f3 <__pformat_float+0xa7>
   1400045e2:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400045e6:	48 89 c2             	mov    %rax,%rdx
   1400045e9:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400045ee:	e8 9d ea ff ff       	call   140003090 <__pformat_putc>
   1400045f3:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400045f7:	8b 40 0c             	mov    0xc(%rax),%eax
   1400045fa:	8d 48 ff             	lea    -0x1(%rax),%ecx
   1400045fd:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004601:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   140004604:	85 c0                	test   %eax,%eax
   140004606:	7f da                	jg     1400045e2 <__pformat_float+0x96>
   140004608:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000460c:	48 89 c1             	mov    %rax,%rcx
   14000460f:	e8 fb 12 00 00       	call   14000590f <__freedtoa>
   140004614:	90                   	nop
   140004615:	48 83 c4 58          	add    $0x58,%rsp
   140004619:	5b                   	pop    %rbx
   14000461a:	5d                   	pop    %rbp
   14000461b:	c3                   	ret    

000000014000461c <__pformat_efloat>:
   14000461c:	55                   	push   %rbp
   14000461d:	53                   	push   %rbx
   14000461e:	48 83 ec 58          	sub    $0x58,%rsp
   140004622:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   140004627:	48 89 cb             	mov    %rcx,%rbx
   14000462a:	db 2b                	fldt   (%rbx)
   14000462c:	db 7d e0             	fstpt  -0x20(%rbp)
   14000462f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140004633:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004637:	8b 40 10             	mov    0x10(%rax),%eax
   14000463a:	85 c0                	test   %eax,%eax
   14000463c:	79 0b                	jns    140004649 <__pformat_efloat+0x2d>
   14000463e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004642:	c7 40 10 06 00 00 00 	movl   $0x6,0x10(%rax)
   140004649:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000464d:	8b 40 10             	mov    0x10(%rax),%eax
   140004650:	8d 50 01             	lea    0x1(%rax),%edx
   140004653:	db 6d e0             	fldt   -0x20(%rbp)
   140004656:	db 7d d0             	fstpt  -0x30(%rbp)
   140004659:	4c 8d 45 f4          	lea    -0xc(%rbp),%r8
   14000465d:	48 8d 4d f0          	lea    -0x10(%rbp),%rcx
   140004661:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140004665:	4d 89 c1             	mov    %r8,%r9
   140004668:	49 89 c8             	mov    %rcx,%r8
   14000466b:	48 89 c1             	mov    %rax,%rcx
   14000466e:	e8 22 f6 ff ff       	call   140003c95 <__pformat_ecvt>
   140004673:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140004677:	8b 45 f0             	mov    -0x10(%rbp),%eax
   14000467a:	3d 00 80 ff ff       	cmp    $0xffff8000,%eax
   14000467f:	75 17                	jne    140004698 <__pformat_efloat+0x7c>
   140004681:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140004684:	48 8b 4d 28          	mov    0x28(%rbp),%rcx
   140004688:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   14000468c:	49 89 c8             	mov    %rcx,%r8
   14000468f:	89 c1                	mov    %eax,%ecx
   140004691:	e8 b5 f8 ff ff       	call   140003f4b <__pformat_emit_inf_or_nan>
   140004696:	eb 1b                	jmp    1400046b3 <__pformat_efloat+0x97>
   140004698:	8b 4d f0             	mov    -0x10(%rbp),%ecx
   14000469b:	8b 45 f4             	mov    -0xc(%rbp),%eax
   14000469e:	4c 8b 45 28          	mov    0x28(%rbp),%r8
   1400046a2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   1400046a6:	4d 89 c1             	mov    %r8,%r9
   1400046a9:	41 89 c8             	mov    %ecx,%r8d
   1400046ac:	89 c1                	mov    %eax,%ecx
   1400046ae:	e8 4e fd ff ff       	call   140004401 <__pformat_emit_efloat>
   1400046b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400046b7:	48 89 c1             	mov    %rax,%rcx
   1400046ba:	e8 50 12 00 00       	call   14000590f <__freedtoa>
   1400046bf:	90                   	nop
   1400046c0:	48 83 c4 58          	add    $0x58,%rsp
   1400046c4:	5b                   	pop    %rbx
   1400046c5:	5d                   	pop    %rbp
   1400046c6:	c3                   	ret    

00000001400046c7 <__pformat_gfloat>:
   1400046c7:	55                   	push   %rbp
   1400046c8:	53                   	push   %rbx
   1400046c9:	48 83 ec 58          	sub    $0x58,%rsp
   1400046cd:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   1400046d2:	48 89 cb             	mov    %rcx,%rbx
   1400046d5:	db 2b                	fldt   (%rbx)
   1400046d7:	db 7d e0             	fstpt  -0x20(%rbp)
   1400046da:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400046de:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400046e2:	8b 40 10             	mov    0x10(%rax),%eax
   1400046e5:	85 c0                	test   %eax,%eax
   1400046e7:	79 0d                	jns    1400046f6 <__pformat_gfloat+0x2f>
   1400046e9:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400046ed:	c7 40 10 06 00 00 00 	movl   $0x6,0x10(%rax)
   1400046f4:	eb 16                	jmp    14000470c <__pformat_gfloat+0x45>
   1400046f6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400046fa:	8b 40 10             	mov    0x10(%rax),%eax
   1400046fd:	85 c0                	test   %eax,%eax
   1400046ff:	75 0b                	jne    14000470c <__pformat_gfloat+0x45>
   140004701:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004705:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%rax)
   14000470c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004710:	8b 50 10             	mov    0x10(%rax),%edx
   140004713:	db 6d e0             	fldt   -0x20(%rbp)
   140004716:	db 7d d0             	fstpt  -0x30(%rbp)
   140004719:	4c 8d 45 f4          	lea    -0xc(%rbp),%r8
   14000471d:	48 8d 4d f0          	lea    -0x10(%rbp),%rcx
   140004721:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140004725:	4d 89 c1             	mov    %r8,%r9
   140004728:	49 89 c8             	mov    %rcx,%r8
   14000472b:	48 89 c1             	mov    %rax,%rcx
   14000472e:	e8 62 f5 ff ff       	call   140003c95 <__pformat_ecvt>
   140004733:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140004737:	8b 45 f0             	mov    -0x10(%rbp),%eax
   14000473a:	3d 00 80 ff ff       	cmp    $0xffff8000,%eax
   14000473f:	75 1a                	jne    14000475b <__pformat_gfloat+0x94>
   140004741:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140004744:	48 8b 4d 28          	mov    0x28(%rbp),%rcx
   140004748:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   14000474c:	49 89 c8             	mov    %rcx,%r8
   14000474f:	89 c1                	mov    %eax,%ecx
   140004751:	e8 f5 f7 ff ff       	call   140003f4b <__pformat_emit_inf_or_nan>
   140004756:	e9 2d 01 00 00       	jmp    140004888 <__pformat_gfloat+0x1c1>
   14000475b:	8b 45 f0             	mov    -0x10(%rbp),%eax
   14000475e:	83 f8 fd             	cmp    $0xfffffffd,%eax
   140004761:	0f 8c cb 00 00 00    	jl     140004832 <__pformat_gfloat+0x16b>
   140004767:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000476b:	8b 50 10             	mov    0x10(%rax),%edx
   14000476e:	8b 45 f0             	mov    -0x10(%rbp),%eax
   140004771:	39 c2                	cmp    %eax,%edx
   140004773:	0f 8c b9 00 00 00    	jl     140004832 <__pformat_gfloat+0x16b>
   140004779:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000477d:	8b 40 08             	mov    0x8(%rax),%eax
   140004780:	25 00 08 00 00       	and    $0x800,%eax
   140004785:	85 c0                	test   %eax,%eax
   140004787:	74 17                	je     1400047a0 <__pformat_gfloat+0xd9>
   140004789:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000478d:	8b 40 10             	mov    0x10(%rax),%eax
   140004790:	8b 4d f0             	mov    -0x10(%rbp),%ecx
   140004793:	29 c8                	sub    %ecx,%eax
   140004795:	89 c2                	mov    %eax,%edx
   140004797:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000479b:	89 50 10             	mov    %edx,0x10(%rax)
   14000479e:	eb 4d                	jmp    1400047ed <__pformat_gfloat+0x126>
   1400047a0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400047a4:	48 89 c1             	mov    %rax,%rcx
   1400047a7:	e8 9c 3f 00 00       	call   140008748 <strlen>
   1400047ac:	89 c2                	mov    %eax,%edx
   1400047ae:	8b 45 f0             	mov    -0x10(%rbp),%eax
   1400047b1:	89 c1                	mov    %eax,%ecx
   1400047b3:	89 d0                	mov    %edx,%eax
   1400047b5:	29 c8                	sub    %ecx,%eax
   1400047b7:	89 c2                	mov    %eax,%edx
   1400047b9:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400047bd:	89 50 10             	mov    %edx,0x10(%rax)
   1400047c0:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400047c4:	8b 40 10             	mov    0x10(%rax),%eax
   1400047c7:	85 c0                	test   %eax,%eax
   1400047c9:	79 22                	jns    1400047ed <__pformat_gfloat+0x126>
   1400047cb:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400047cf:	8b 40 0c             	mov    0xc(%rax),%eax
   1400047d2:	85 c0                	test   %eax,%eax
   1400047d4:	7e 17                	jle    1400047ed <__pformat_gfloat+0x126>
   1400047d6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400047da:	8b 50 0c             	mov    0xc(%rax),%edx
   1400047dd:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400047e1:	8b 40 10             	mov    0x10(%rax),%eax
   1400047e4:	01 c2                	add    %eax,%edx
   1400047e6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400047ea:	89 50 0c             	mov    %edx,0xc(%rax)
   1400047ed:	8b 4d f0             	mov    -0x10(%rbp),%ecx
   1400047f0:	8b 45 f4             	mov    -0xc(%rbp),%eax
   1400047f3:	4c 8b 45 28          	mov    0x28(%rbp),%r8
   1400047f7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   1400047fb:	4d 89 c1             	mov    %r8,%r9
   1400047fe:	41 89 c8             	mov    %ecx,%r8d
   140004801:	89 c1                	mov    %eax,%ecx
   140004803:	e8 2e f8 ff ff       	call   140004036 <__pformat_emit_float>
   140004808:	eb 11                	jmp    14000481b <__pformat_gfloat+0x154>
   14000480a:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000480e:	48 89 c2             	mov    %rax,%rdx
   140004811:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004816:	e8 75 e8 ff ff       	call   140003090 <__pformat_putc>
   14000481b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000481f:	8b 40 0c             	mov    0xc(%rax),%eax
   140004822:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140004825:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004829:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   14000482c:	85 c0                	test   %eax,%eax
   14000482e:	7f da                	jg     14000480a <__pformat_gfloat+0x143>
   140004830:	eb 56                	jmp    140004888 <__pformat_gfloat+0x1c1>
   140004832:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004836:	8b 40 08             	mov    0x8(%rax),%eax
   140004839:	25 00 08 00 00       	and    $0x800,%eax
   14000483e:	85 c0                	test   %eax,%eax
   140004840:	74 13                	je     140004855 <__pformat_gfloat+0x18e>
   140004842:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004846:	8b 40 10             	mov    0x10(%rax),%eax
   140004849:	8d 50 ff             	lea    -0x1(%rax),%edx
   14000484c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004850:	89 50 10             	mov    %edx,0x10(%rax)
   140004853:	eb 18                	jmp    14000486d <__pformat_gfloat+0x1a6>
   140004855:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140004859:	48 89 c1             	mov    %rax,%rcx
   14000485c:	e8 e7 3e 00 00       	call   140008748 <strlen>
   140004861:	83 e8 01             	sub    $0x1,%eax
   140004864:	89 c2                	mov    %eax,%edx
   140004866:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000486a:	89 50 10             	mov    %edx,0x10(%rax)
   14000486d:	8b 4d f0             	mov    -0x10(%rbp),%ecx
   140004870:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140004873:	4c 8b 45 28          	mov    0x28(%rbp),%r8
   140004877:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   14000487b:	4d 89 c1             	mov    %r8,%r9
   14000487e:	41 89 c8             	mov    %ecx,%r8d
   140004881:	89 c1                	mov    %eax,%ecx
   140004883:	e8 79 fb ff ff       	call   140004401 <__pformat_emit_efloat>
   140004888:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000488c:	48 89 c1             	mov    %rax,%rcx
   14000488f:	e8 7b 10 00 00       	call   14000590f <__freedtoa>
   140004894:	90                   	nop
   140004895:	48 83 c4 58          	add    $0x58,%rsp
   140004899:	5b                   	pop    %rbx
   14000489a:	5d                   	pop    %rbp
   14000489b:	c3                   	ret    

000000014000489c <__pformat_emit_xfloat>:
   14000489c:	55                   	push   %rbp
   14000489d:	53                   	push   %rbx
   14000489e:	48 83 ec 78          	sub    $0x78,%rsp
   1400048a2:	48 8d 6c 24 70       	lea    0x70(%rsp),%rbp
   1400048a7:	48 89 cb             	mov    %rcx,%rbx
   1400048aa:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400048ae:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   1400048b2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400048b6:	66 c7 45 f6 02 00    	movw   $0x2,-0xa(%rbp)
   1400048bc:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400048c0:	8b 40 10             	mov    0x10(%rax),%eax
   1400048c3:	85 c0                	test   %eax,%eax
   1400048c5:	0f 88 72 01 00 00    	js     140004a3d <__pformat_emit_xfloat+0x1a1>
   1400048cb:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400048cf:	8b 40 10             	mov    0x10(%rax),%eax
   1400048d2:	83 f8 0e             	cmp    $0xe,%eax
   1400048d5:	0f 8f 62 01 00 00    	jg     140004a3d <__pformat_emit_xfloat+0x1a1>
   1400048db:	eb 09                	jmp    1400048e6 <__pformat_emit_xfloat+0x4a>
   1400048dd:	48 8b 03             	mov    (%rbx),%rax
   1400048e0:	48 01 c0             	add    %rax,%rax
   1400048e3:	48 89 03             	mov    %rax,(%rbx)
   1400048e6:	48 8b 03             	mov    (%rbx),%rax
   1400048e9:	48 85 c0             	test   %rax,%rax
   1400048ec:	79 ef                	jns    1400048dd <__pformat_emit_xfloat+0x41>
   1400048ee:	48 8b 03             	mov    (%rbx),%rax
   1400048f1:	48 d1 e8             	shr    %rax
   1400048f4:	48 89 03             	mov    %rax,(%rbx)
   1400048f7:	48 8b 13             	mov    (%rbx),%rdx
   1400048fa:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400048fe:	8b 48 10             	mov    0x10(%rax),%ecx
   140004901:	b8 0e 00 00 00       	mov    $0xe,%eax
   140004906:	29 c8                	sub    %ecx,%eax
   140004908:	c1 e0 02             	shl    $0x2,%eax
   14000490b:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140004911:	89 c1                	mov    %eax,%ecx
   140004913:	49 d3 e0             	shl    %cl,%r8
   140004916:	4c 89 c0             	mov    %r8,%rax
   140004919:	48 01 d0             	add    %rdx,%rax
   14000491c:	48 89 03             	mov    %rax,(%rbx)
   14000491f:	48 8b 03             	mov    (%rbx),%rax
   140004922:	48 85 c0             	test   %rax,%rax
   140004925:	78 0b                	js     140004932 <__pformat_emit_xfloat+0x96>
   140004927:	48 8b 03             	mov    (%rbx),%rax
   14000492a:	48 01 c0             	add    %rax,%rax
   14000492d:	48 89 03             	mov    %rax,(%rbx)
   140004930:	eb 0b                	jmp    14000493d <__pformat_emit_xfloat+0xa1>
   140004932:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
   140004936:	83 c0 01             	add    $0x1,%eax
   140004939:	66 89 43 08          	mov    %ax,0x8(%rbx)
   14000493d:	48 8b 13             	mov    (%rbx),%rdx
   140004940:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004944:	8b 48 10             	mov    0x10(%rax),%ecx
   140004947:	b8 0f 00 00 00       	mov    $0xf,%eax
   14000494c:	29 c8                	sub    %ecx,%eax
   14000494e:	c1 e0 02             	shl    $0x2,%eax
   140004951:	89 c1                	mov    %eax,%ecx
   140004953:	48 d3 ea             	shr    %cl,%rdx
   140004956:	48 89 d0             	mov    %rdx,%rax
   140004959:	48 89 03             	mov    %rax,(%rbx)
   14000495c:	e9 dc 00 00 00       	jmp    140004a3d <__pformat_emit_xfloat+0x1a1>
   140004961:	48 8b 03             	mov    (%rbx),%rax
   140004964:	83 e0 0f             	and    $0xf,%eax
   140004967:	89 45 e8             	mov    %eax,-0x18(%rbp)
   14000496a:	8b 55 e8             	mov    -0x18(%rbp),%edx
   14000496d:	48 8b 03             	mov    (%rbx),%rax
   140004970:	48 39 c2             	cmp    %rax,%rdx
   140004973:	75 55                	jne    1400049ca <__pformat_emit_xfloat+0x12e>
   140004975:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140004979:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
   14000497d:	77 1b                	ja     14000499a <__pformat_emit_xfloat+0xfe>
   14000497f:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004983:	8b 40 08             	mov    0x8(%rax),%eax
   140004986:	25 00 08 00 00       	and    $0x800,%eax
   14000498b:	85 c0                	test   %eax,%eax
   14000498d:	75 0b                	jne    14000499a <__pformat_emit_xfloat+0xfe>
   14000498f:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004993:	8b 40 10             	mov    0x10(%rax),%eax
   140004996:	85 c0                	test   %eax,%eax
   140004998:	7e 25                	jle    1400049bf <__pformat_emit_xfloat+0x123>
   14000499a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000499e:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400049a2:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   1400049a6:	c6 00 2e             	movb   $0x2e,(%rax)
   1400049a9:	eb 14                	jmp    1400049bf <__pformat_emit_xfloat+0x123>
   1400049ab:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
   1400049af:	83 e8 01             	sub    $0x1,%eax
   1400049b2:	66 89 43 08          	mov    %ax,0x8(%rbx)
   1400049b6:	48 8b 03             	mov    (%rbx),%rax
   1400049b9:	48 d1 e8             	shr    %rax
   1400049bc:	48 89 03             	mov    %rax,(%rbx)
   1400049bf:	48 8b 03             	mov    (%rbx),%rax
   1400049c2:	48 83 f8 01          	cmp    $0x1,%rax
   1400049c6:	77 e3                	ja     1400049ab <__pformat_emit_xfloat+0x10f>
   1400049c8:	eb 1c                	jmp    1400049e6 <__pformat_emit_xfloat+0x14a>
   1400049ca:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400049ce:	8b 40 10             	mov    0x10(%rax),%eax
   1400049d1:	85 c0                	test   %eax,%eax
   1400049d3:	7e 11                	jle    1400049e6 <__pformat_emit_xfloat+0x14a>
   1400049d5:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400049d9:	8b 40 10             	mov    0x10(%rax),%eax
   1400049dc:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400049df:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400049e3:	89 50 10             	mov    %edx,0x10(%rax)
   1400049e6:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
   1400049ea:	75 15                	jne    140004a01 <__pformat_emit_xfloat+0x165>
   1400049ec:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   1400049f0:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
   1400049f4:	77 0b                	ja     140004a01 <__pformat_emit_xfloat+0x165>
   1400049f6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400049fa:	8b 40 10             	mov    0x10(%rax),%eax
   1400049fd:	85 c0                	test   %eax,%eax
   1400049ff:	78 32                	js     140004a33 <__pformat_emit_xfloat+0x197>
   140004a01:	83 7d e8 09          	cmpl   $0x9,-0x18(%rbp)
   140004a05:	76 16                	jbe    140004a1d <__pformat_emit_xfloat+0x181>
   140004a07:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140004a0a:	8d 50 37             	lea    0x37(%rax),%edx
   140004a0d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004a11:	8b 40 08             	mov    0x8(%rax),%eax
   140004a14:	83 e0 20             	and    $0x20,%eax
   140004a17:	09 d0                	or     %edx,%eax
   140004a19:	89 c1                	mov    %eax,%ecx
   140004a1b:	eb 08                	jmp    140004a25 <__pformat_emit_xfloat+0x189>
   140004a1d:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140004a20:	83 c0 30             	add    $0x30,%eax
   140004a23:	89 c1                	mov    %eax,%ecx
   140004a25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140004a29:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004a2d:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   140004a31:	88 08                	mov    %cl,(%rax)
   140004a33:	48 8b 03             	mov    (%rbx),%rax
   140004a36:	48 c1 e8 04          	shr    $0x4,%rax
   140004a3a:	48 89 03             	mov    %rax,(%rbx)
   140004a3d:	48 8b 03             	mov    (%rbx),%rax
   140004a40:	48 85 c0             	test   %rax,%rax
   140004a43:	0f 85 18 ff ff ff    	jne    140004961 <__pformat_emit_xfloat+0xc5>
   140004a49:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140004a4d:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
   140004a51:	75 39                	jne    140004a8c <__pformat_emit_xfloat+0x1f0>
   140004a53:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004a57:	8b 40 10             	mov    0x10(%rax),%eax
   140004a5a:	85 c0                	test   %eax,%eax
   140004a5c:	7f 10                	jg     140004a6e <__pformat_emit_xfloat+0x1d2>
   140004a5e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004a62:	8b 40 08             	mov    0x8(%rax),%eax
   140004a65:	25 00 08 00 00       	and    $0x800,%eax
   140004a6a:	85 c0                	test   %eax,%eax
   140004a6c:	74 0f                	je     140004a7d <__pformat_emit_xfloat+0x1e1>
   140004a6e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140004a72:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004a76:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   140004a7a:	c6 00 2e             	movb   $0x2e,(%rax)
   140004a7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140004a81:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004a85:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   140004a89:	c6 00 30             	movb   $0x30,(%rax)
   140004a8c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004a90:	8b 40 0c             	mov    0xc(%rax),%eax
   140004a93:	85 c0                	test   %eax,%eax
   140004a95:	0f 8e e5 00 00 00    	jle    140004b80 <__pformat_emit_xfloat+0x2e4>
   140004a9b:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
   140004a9f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140004aa3:	48 29 d0             	sub    %rdx,%rax
   140004aa6:	89 45 f0             	mov    %eax,-0x10(%rbp)
   140004aa9:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
   140004aad:	98                   	cwtl   
   140004aae:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140004ab1:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004ab5:	8b 40 10             	mov    0x10(%rax),%eax
   140004ab8:	85 c0                	test   %eax,%eax
   140004aba:	7e 0a                	jle    140004ac6 <__pformat_emit_xfloat+0x22a>
   140004abc:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004ac0:	8b 40 10             	mov    0x10(%rax),%eax
   140004ac3:	01 45 f0             	add    %eax,-0x10(%rbp)
   140004ac6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004aca:	8b 40 08             	mov    0x8(%rax),%eax
   140004acd:	25 c0 01 00 00       	and    $0x1c0,%eax
   140004ad2:	85 c0                	test   %eax,%eax
   140004ad4:	74 07                	je     140004add <__pformat_emit_xfloat+0x241>
   140004ad6:	b8 06 00 00 00       	mov    $0x6,%eax
   140004adb:	eb 05                	jmp    140004ae2 <__pformat_emit_xfloat+0x246>
   140004add:	b8 05 00 00 00       	mov    $0x5,%eax
   140004ae2:	01 45 f0             	add    %eax,-0x10(%rbp)
   140004ae5:	eb 0f                	jmp    140004af6 <__pformat_emit_xfloat+0x25a>
   140004ae7:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
   140004aeb:	0f b7 45 f6          	movzwl -0xa(%rbp),%eax
   140004aef:	83 c0 01             	add    $0x1,%eax
   140004af2:	66 89 45 f6          	mov    %ax,-0xa(%rbp)
   140004af6:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140004af9:	48 63 d0             	movslq %eax,%rdx
   140004afc:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
   140004b03:	48 c1 ea 20          	shr    $0x20,%rdx
   140004b07:	c1 fa 02             	sar    $0x2,%edx
   140004b0a:	c1 f8 1f             	sar    $0x1f,%eax
   140004b0d:	89 c1                	mov    %eax,%ecx
   140004b0f:	89 d0                	mov    %edx,%eax
   140004b11:	29 c8                	sub    %ecx,%eax
   140004b13:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140004b16:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
   140004b1a:	75 cb                	jne    140004ae7 <__pformat_emit_xfloat+0x24b>
   140004b1c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b20:	8b 40 0c             	mov    0xc(%rax),%eax
   140004b23:	39 45 f0             	cmp    %eax,-0x10(%rbp)
   140004b26:	7d 4d                	jge    140004b75 <__pformat_emit_xfloat+0x2d9>
   140004b28:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b2c:	8b 40 0c             	mov    0xc(%rax),%eax
   140004b2f:	2b 45 f0             	sub    -0x10(%rbp),%eax
   140004b32:	89 c2                	mov    %eax,%edx
   140004b34:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b38:	89 50 0c             	mov    %edx,0xc(%rax)
   140004b3b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b3f:	8b 40 08             	mov    0x8(%rax),%eax
   140004b42:	25 00 06 00 00       	and    $0x600,%eax
   140004b47:	85 c0                	test   %eax,%eax
   140004b49:	75 35                	jne    140004b80 <__pformat_emit_xfloat+0x2e4>
   140004b4b:	eb 11                	jmp    140004b5e <__pformat_emit_xfloat+0x2c2>
   140004b4d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b51:	48 89 c2             	mov    %rax,%rdx
   140004b54:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004b59:	e8 32 e5 ff ff       	call   140003090 <__pformat_putc>
   140004b5e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b62:	8b 40 0c             	mov    0xc(%rax),%eax
   140004b65:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140004b68:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004b6c:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   140004b6f:	85 c0                	test   %eax,%eax
   140004b71:	7f da                	jg     140004b4d <__pformat_emit_xfloat+0x2b1>
   140004b73:	eb 0b                	jmp    140004b80 <__pformat_emit_xfloat+0x2e4>
   140004b75:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b79:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rax)
   140004b80:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b84:	8b 40 08             	mov    0x8(%rax),%eax
   140004b87:	25 80 00 00 00       	and    $0x80,%eax
   140004b8c:	85 c0                	test   %eax,%eax
   140004b8e:	74 13                	je     140004ba3 <__pformat_emit_xfloat+0x307>
   140004b90:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004b94:	48 89 c2             	mov    %rax,%rdx
   140004b97:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140004b9c:	e8 ef e4 ff ff       	call   140003090 <__pformat_putc>
   140004ba1:	eb 42                	jmp    140004be5 <__pformat_emit_xfloat+0x349>
   140004ba3:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004ba7:	8b 40 08             	mov    0x8(%rax),%eax
   140004baa:	25 00 01 00 00       	and    $0x100,%eax
   140004baf:	85 c0                	test   %eax,%eax
   140004bb1:	74 13                	je     140004bc6 <__pformat_emit_xfloat+0x32a>
   140004bb3:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004bb7:	48 89 c2             	mov    %rax,%rdx
   140004bba:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   140004bbf:	e8 cc e4 ff ff       	call   140003090 <__pformat_putc>
   140004bc4:	eb 1f                	jmp    140004be5 <__pformat_emit_xfloat+0x349>
   140004bc6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004bca:	8b 40 08             	mov    0x8(%rax),%eax
   140004bcd:	83 e0 40             	and    $0x40,%eax
   140004bd0:	85 c0                	test   %eax,%eax
   140004bd2:	74 11                	je     140004be5 <__pformat_emit_xfloat+0x349>
   140004bd4:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004bd8:	48 89 c2             	mov    %rax,%rdx
   140004bdb:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004be0:	e8 ab e4 ff ff       	call   140003090 <__pformat_putc>
   140004be5:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004be9:	48 89 c2             	mov    %rax,%rdx
   140004bec:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004bf1:	e8 9a e4 ff ff       	call   140003090 <__pformat_putc>
   140004bf6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004bfa:	8b 40 08             	mov    0x8(%rax),%eax
   140004bfd:	83 e0 20             	and    $0x20,%eax
   140004c00:	83 c8 58             	or     $0x58,%eax
   140004c03:	89 c1                	mov    %eax,%ecx
   140004c05:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004c09:	48 89 c2             	mov    %rax,%rdx
   140004c0c:	e8 7f e4 ff ff       	call   140003090 <__pformat_putc>
   140004c11:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004c15:	8b 40 0c             	mov    0xc(%rax),%eax
   140004c18:	85 c0                	test   %eax,%eax
   140004c1a:	7e 54                	jle    140004c70 <__pformat_emit_xfloat+0x3d4>
   140004c1c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004c20:	8b 40 08             	mov    0x8(%rax),%eax
   140004c23:	25 00 02 00 00       	and    $0x200,%eax
   140004c28:	85 c0                	test   %eax,%eax
   140004c2a:	74 44                	je     140004c70 <__pformat_emit_xfloat+0x3d4>
   140004c2c:	eb 11                	jmp    140004c3f <__pformat_emit_xfloat+0x3a3>
   140004c2e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004c32:	48 89 c2             	mov    %rax,%rdx
   140004c35:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004c3a:	e8 51 e4 ff ff       	call   140003090 <__pformat_putc>
   140004c3f:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004c43:	8b 40 0c             	mov    0xc(%rax),%eax
   140004c46:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140004c49:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004c4d:	89 4a 0c             	mov    %ecx,0xc(%rdx)
   140004c50:	85 c0                	test   %eax,%eax
   140004c52:	7f da                	jg     140004c2e <__pformat_emit_xfloat+0x392>
   140004c54:	eb 1a                	jmp    140004c70 <__pformat_emit_xfloat+0x3d4>
   140004c56:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
   140004c5b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140004c5f:	0f b6 00             	movzbl (%rax),%eax
   140004c62:	0f be c0             	movsbl %al,%eax
   140004c65:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004c69:	89 c1                	mov    %eax,%ecx
   140004c6b:	e8 6d f2 ff ff       	call   140003edd <__pformat_emit_numeric_value>
   140004c70:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140004c74:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
   140004c78:	77 dc                	ja     140004c56 <__pformat_emit_xfloat+0x3ba>
   140004c7a:	eb 11                	jmp    140004c8d <__pformat_emit_xfloat+0x3f1>
   140004c7c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004c80:	48 89 c2             	mov    %rax,%rdx
   140004c83:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004c88:	e8 03 e4 ff ff       	call   140003090 <__pformat_putc>
   140004c8d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004c91:	8b 40 10             	mov    0x10(%rax),%eax
   140004c94:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140004c97:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004c9b:	89 4a 10             	mov    %ecx,0x10(%rdx)
   140004c9e:	85 c0                	test   %eax,%eax
   140004ca0:	7f da                	jg     140004c7c <__pformat_emit_xfloat+0x3e0>
   140004ca2:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004ca6:	8b 40 08             	mov    0x8(%rax),%eax
   140004ca9:	83 e0 20             	and    $0x20,%eax
   140004cac:	83 c8 50             	or     $0x50,%eax
   140004caf:	89 c1                	mov    %eax,%ecx
   140004cb1:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004cb5:	48 89 c2             	mov    %rax,%rdx
   140004cb8:	e8 d3 e3 ff ff       	call   140003090 <__pformat_putc>
   140004cbd:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004cc1:	8b 50 0c             	mov    0xc(%rax),%edx
   140004cc4:	0f bf 45 f6          	movswl -0xa(%rbp),%eax
   140004cc8:	01 c2                	add    %eax,%edx
   140004cca:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004cce:	89 50 0c             	mov    %edx,0xc(%rax)
   140004cd1:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004cd5:	8b 40 08             	mov    0x8(%rax),%eax
   140004cd8:	0d c0 01 00 00       	or     $0x1c0,%eax
   140004cdd:	89 c2                	mov    %eax,%edx
   140004cdf:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004ce3:	89 50 08             	mov    %edx,0x8(%rax)
   140004ce6:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
   140004cea:	66 85 c0             	test   %ax,%ax
   140004ced:	79 09                	jns    140004cf8 <__pformat_emit_xfloat+0x45c>
   140004cef:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   140004cf6:	eb 05                	jmp    140004cfd <__pformat_emit_xfloat+0x461>
   140004cf8:	b8 00 00 00 00       	mov    $0x0,%eax
   140004cfd:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   140004d01:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
   140004d05:	48 0f bf c0          	movswq %ax,%rax
   140004d09:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   140004d0d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   140004d11:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   140004d15:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   140004d19:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
   140004d1d:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004d21:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140004d25:	48 89 c1             	mov    %rax,%rcx
   140004d28:	e8 c7 e7 ff ff       	call   1400034f4 <__pformat_int>
   140004d2d:	90                   	nop
   140004d2e:	48 83 c4 78          	add    $0x78,%rsp
   140004d32:	5b                   	pop    %rbx
   140004d33:	5d                   	pop    %rbp
   140004d34:	c3                   	ret    

0000000140004d35 <__pformat_xldouble>:
   140004d35:	55                   	push   %rbp
   140004d36:	53                   	push   %rbx
   140004d37:	48 83 ec 78          	sub    $0x78,%rsp
   140004d3b:	48 8d 6c 24 70       	lea    0x70(%rsp),%rbp
   140004d40:	48 89 cb             	mov    %rcx,%rbx
   140004d43:	db 2b                	fldt   (%rbx)
   140004d45:	db 7d d0             	fstpt  -0x30(%rbp)
   140004d48:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140004d4c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140004d53:	db 6d d0             	fldt   -0x30(%rbp)
   140004d56:	db 7d e0             	fstpt  -0x20(%rbp)
   140004d59:	db 6d d0             	fldt   -0x30(%rbp)
   140004d5c:	db 7d c0             	fstpt  -0x40(%rbp)
   140004d5f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   140004d63:	48 89 c1             	mov    %rax,%rcx
   140004d66:	e8 b5 38 00 00       	call   140008620 <__isnanl>
   140004d6b:	85 c0                	test   %eax,%eax
   140004d6d:	74 1d                	je     140004d8c <__pformat_xldouble+0x57>
   140004d6f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140004d72:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004d76:	49 89 d0             	mov    %rdx,%r8
   140004d79:	48 8d 15 f6 65 00 00 	lea    0x65f6(%rip),%rdx        # 14000b376 <.rdata+0x16>
   140004d80:	89 c1                	mov    %eax,%ecx
   140004d82:	e8 c4 f1 ff ff       	call   140003f4b <__pformat_emit_inf_or_nan>
   140004d87:	e9 cb 00 00 00       	jmp    140004e57 <__pformat_xldouble+0x122>
   140004d8c:	0f b7 45 e8          	movzwl -0x18(%rbp),%eax
   140004d90:	98                   	cwtl   
   140004d91:	25 00 80 00 00       	and    $0x8000,%eax
   140004d96:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140004d99:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140004d9d:	74 12                	je     140004db1 <__pformat_xldouble+0x7c>
   140004d9f:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004da3:	8b 40 08             	mov    0x8(%rax),%eax
   140004da6:	0c 80                	or     $0x80,%al
   140004da8:	89 c2                	mov    %eax,%edx
   140004daa:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004dae:	89 50 08             	mov    %edx,0x8(%rax)
   140004db1:	db 6d d0             	fldt   -0x30(%rbp)
   140004db4:	db 7d c0             	fstpt  -0x40(%rbp)
   140004db7:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   140004dbb:	48 89 c1             	mov    %rax,%rcx
   140004dbe:	e8 cd 37 00 00       	call   140008590 <__fpclassifyl>
   140004dc3:	3d 00 05 00 00       	cmp    $0x500,%eax
   140004dc8:	75 1a                	jne    140004de4 <__pformat_xldouble+0xaf>
   140004dca:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140004dcd:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004dd1:	49 89 d0             	mov    %rdx,%r8
   140004dd4:	48 8d 15 9f 65 00 00 	lea    0x659f(%rip),%rdx        # 14000b37a <.rdata+0x1a>
   140004ddb:	89 c1                	mov    %eax,%ecx
   140004ddd:	e8 69 f1 ff ff       	call   140003f4b <__pformat_emit_inf_or_nan>
   140004de2:	eb 73                	jmp    140004e57 <__pformat_xldouble+0x122>
   140004de4:	0f b7 45 e8          	movzwl -0x18(%rbp),%eax
   140004de8:	66 25 ff 7f          	and    $0x7fff,%ax
   140004dec:	66 89 45 e8          	mov    %ax,-0x18(%rbp)
   140004df0:	0f b7 45 e8          	movzwl -0x18(%rbp),%eax
   140004df4:	66 85 c0             	test   %ax,%ax
   140004df7:	75 32                	jne    140004e2b <__pformat_xldouble+0xf6>
   140004df9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140004dfd:	48 85 c0             	test   %rax,%rax
   140004e00:	74 35                	je     140004e37 <__pformat_xldouble+0x102>
   140004e02:	66 c7 45 e8 02 c0    	movw   $0xc002,-0x18(%rbp)
   140004e08:	eb 16                	jmp    140004e20 <__pformat_xldouble+0xeb>
   140004e0a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140004e0e:	48 01 c0             	add    %rax,%rax
   140004e11:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140004e15:	0f b7 45 e8          	movzwl -0x18(%rbp),%eax
   140004e19:	83 e8 01             	sub    $0x1,%eax
   140004e1c:	66 89 45 e8          	mov    %ax,-0x18(%rbp)
   140004e20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140004e24:	48 85 c0             	test   %rax,%rax
   140004e27:	79 e1                	jns    140004e0a <__pformat_xldouble+0xd5>
   140004e29:	eb 0c                	jmp    140004e37 <__pformat_xldouble+0x102>
   140004e2b:	0f b7 45 e8          	movzwl -0x18(%rbp),%eax
   140004e2f:	66 2d ff 3f          	sub    $0x3fff,%ax
   140004e33:	66 89 45 e8          	mov    %ax,-0x18(%rbp)
   140004e37:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140004e3b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   140004e3f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   140004e43:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
   140004e47:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140004e4b:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140004e4f:	48 89 c1             	mov    %rax,%rcx
   140004e52:	e8 45 fa ff ff       	call   14000489c <__pformat_emit_xfloat>
   140004e57:	90                   	nop
   140004e58:	48 83 c4 78          	add    $0x78,%rsp
   140004e5c:	5b                   	pop    %rbx
   140004e5d:	5d                   	pop    %rbp
   140004e5e:	c3                   	ret    

0000000140004e5f <__mingw_pformat>:
   140004e5f:	55                   	push   %rbp
   140004e60:	48 89 e5             	mov    %rsp,%rbp
   140004e63:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
   140004e6a:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140004e6d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140004e71:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140004e75:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140004e79:	e8 5a 39 00 00       	call   1400087d8 <_errno>
   140004e7e:	8b 00                	mov    (%rax),%eax
   140004e80:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140004e83:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140004e87:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
   140004e8b:	81 65 10 00 60 00 00 	andl   $0x6000,0x10(%rbp)
   140004e92:	8b 45 10             	mov    0x10(%rbp),%eax
   140004e95:	89 45 a8             	mov    %eax,-0x58(%rbp)
   140004e98:	c7 45 ac ff ff ff ff 	movl   $0xffffffff,-0x54(%rbp)
   140004e9f:	c7 45 b0 ff ff ff ff 	movl   $0xffffffff,-0x50(%rbp)
   140004ea6:	c7 45 b4 fd ff ff ff 	movl   $0xfffffffd,-0x4c(%rbp)
   140004ead:	66 c7 45 b8 00 00    	movw   $0x0,-0x48(%rbp)
   140004eb3:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%rbp)
   140004eba:	66 c7 45 c0 00 00    	movw   $0x0,-0x40(%rbp)
   140004ec0:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
   140004ec7:	8b 45 20             	mov    0x20(%rbp),%eax
   140004eca:	89 45 c8             	mov    %eax,-0x38(%rbp)
   140004ecd:	c7 45 cc ff ff ff ff 	movl   $0xffffffff,-0x34(%rbp)
   140004ed4:	e9 4b 09 00 00       	jmp    140005824 <__mingw_pformat+0x9c5>
   140004ed9:	83 7d e8 25          	cmpl   $0x25,-0x18(%rbp)
   140004edd:	0f 85 33 09 00 00    	jne    140005816 <__mingw_pformat+0x9b7>
   140004ee3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140004eea:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   140004ef1:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004ef5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140004ef9:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140004efd:	48 83 c0 0c          	add    $0xc,%rax
   140004f01:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140004f05:	8b 45 10             	mov    0x10(%rbp),%eax
   140004f08:	89 45 a8             	mov    %eax,-0x58(%rbp)
   140004f0b:	c7 45 b0 ff ff ff ff 	movl   $0xffffffff,-0x50(%rbp)
   140004f12:	8b 45 b0             	mov    -0x50(%rbp),%eax
   140004f15:	89 45 ac             	mov    %eax,-0x54(%rbp)
   140004f18:	e9 e8 08 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   140004f1d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140004f21:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004f25:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140004f29:	0f b6 00             	movzbl (%rax),%eax
   140004f2c:	0f be c0             	movsbl %al,%eax
   140004f2f:	89 45 e8             	mov    %eax,-0x18(%rbp)
   140004f32:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140004f35:	83 e8 20             	sub    $0x20,%eax
   140004f38:	83 f8 5a             	cmp    $0x5a,%eax
   140004f3b:	0f 87 38 08 00 00    	ja     140005779 <__mingw_pformat+0x91a>
   140004f41:	89 c0                	mov    %eax,%eax
   140004f43:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140004f4a:	00 
   140004f4b:	48 8d 05 2e 64 00 00 	lea    0x642e(%rip),%rax        # 14000b380 <.rdata+0x20>
   140004f52:	8b 04 02             	mov    (%rdx,%rax,1),%eax
   140004f55:	48 98                	cltq   
   140004f57:	48 8d 15 22 64 00 00 	lea    0x6422(%rip),%rdx        # 14000b380 <.rdata+0x20>
   140004f5e:	48 01 d0             	add    %rdx,%rax
   140004f61:	ff e0                	jmp    *%rax
   140004f63:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140004f67:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140004f6a:	89 c1                	mov    %eax,%ecx
   140004f6c:	e8 1f e1 ff ff       	call   140003090 <__pformat_putc>
   140004f71:	e9 5e ff ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140004f76:	c7 45 f8 02 00 00 00 	movl   $0x2,-0x8(%rbp)
   140004f7d:	c7 45 b0 ff ff ff ff 	movl   $0xffffffff,-0x50(%rbp)
   140004f84:	83 7d f8 02          	cmpl   $0x2,-0x8(%rbp)
   140004f88:	74 06                	je     140004f90 <__mingw_pformat+0x131>
   140004f8a:	83 7d f8 03          	cmpl   $0x3,-0x8(%rbp)
   140004f8e:	75 30                	jne    140004fc0 <__mingw_pformat+0x161>
   140004f90:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140004f94:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140004f98:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140004f9c:	8b 00                	mov    (%rax),%eax
   140004f9e:	66 89 45 8e          	mov    %ax,-0x72(%rbp)
   140004fa2:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140004fa6:	48 8d 45 8e          	lea    -0x72(%rbp),%rax
   140004faa:	49 89 d0             	mov    %rdx,%r8
   140004fad:	ba 01 00 00 00       	mov    $0x1,%edx
   140004fb2:	48 89 c1             	mov    %rax,%rcx
   140004fb5:	e8 d2 e2 ff ff       	call   14000328c <__pformat_wputchars>
   140004fba:	90                   	nop
   140004fbb:	e9 14 ff ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140004fc0:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140004fc4:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140004fc8:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140004fcc:	8b 00                	mov    (%rax),%eax
   140004fce:	88 45 90             	mov    %al,-0x70(%rbp)
   140004fd1:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140004fd5:	48 8d 45 90          	lea    -0x70(%rbp),%rax
   140004fd9:	49 89 d0             	mov    %rdx,%r8
   140004fdc:	ba 01 00 00 00       	mov    $0x1,%edx
   140004fe1:	48 89 c1             	mov    %rax,%rcx
   140004fe4:	e8 2c e1 ff ff       	call   140003115 <__pformat_putchars>
   140004fe9:	e9 e6 fe ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140004fee:	c7 45 f8 02 00 00 00 	movl   $0x2,-0x8(%rbp)
   140004ff5:	83 7d f8 02          	cmpl   $0x2,-0x8(%rbp)
   140004ff9:	74 06                	je     140005001 <__mingw_pformat+0x1a2>
   140004ffb:	83 7d f8 03          	cmpl   $0x3,-0x8(%rbp)
   140004fff:	75 20                	jne    140005021 <__mingw_pformat+0x1c2>
   140005001:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005005:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140005009:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   14000500d:	48 8b 00             	mov    (%rax),%rax
   140005010:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140005014:	48 89 c1             	mov    %rax,%rcx
   140005017:	e8 cf e3 ff ff       	call   1400033eb <__pformat_wcputs>
   14000501c:	e9 b3 fe ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005021:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005025:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140005029:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   14000502d:	48 8b 00             	mov    (%rax),%rax
   140005030:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140005034:	48 89 c1             	mov    %rax,%rcx
   140005037:	e8 d8 e1 ff ff       	call   140003214 <__pformat_puts>
   14000503c:	e9 93 fe ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005041:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140005044:	89 c1                	mov    %eax,%ecx
   140005046:	e8 05 37 00 00       	call   140008750 <strerror>
   14000504b:	48 89 c1             	mov    %rax,%rcx
   14000504e:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140005052:	48 89 c2             	mov    %rax,%rdx
   140005055:	e8 ba e1 ff ff       	call   140003214 <__pformat_puts>
   14000505a:	e9 75 fe ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   14000505f:	83 7d f8 03          	cmpl   $0x3,-0x8(%rbp)
   140005063:	75 15                	jne    14000507a <__mingw_pformat+0x21b>
   140005065:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005069:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000506d:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005071:	48 8b 00             	mov    (%rax),%rax
   140005074:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   140005078:	eb 54                	jmp    1400050ce <__mingw_pformat+0x26f>
   14000507a:	83 7d f8 02          	cmpl   $0x2,-0x8(%rbp)
   14000507e:	75 16                	jne    140005096 <__mingw_pformat+0x237>
   140005080:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005084:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140005088:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   14000508c:	8b 00                	mov    (%rax),%eax
   14000508e:	89 c0                	mov    %eax,%eax
   140005090:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   140005094:	eb 38                	jmp    1400050ce <__mingw_pformat+0x26f>
   140005096:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000509a:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000509e:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   1400050a2:	8b 00                	mov    (%rax),%eax
   1400050a4:	89 c0                	mov    %eax,%eax
   1400050a6:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   1400050aa:	83 7d f8 01          	cmpl   $0x1,-0x8(%rbp)
   1400050ae:	75 0d                	jne    1400050bd <__mingw_pformat+0x25e>
   1400050b0:	0f b7 45 90          	movzwl -0x70(%rbp),%eax
   1400050b4:	0f b7 c0             	movzwl %ax,%eax
   1400050b7:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   1400050bb:	eb 11                	jmp    1400050ce <__mingw_pformat+0x26f>
   1400050bd:	83 7d f8 05          	cmpl   $0x5,-0x8(%rbp)
   1400050c1:	75 0b                	jne    1400050ce <__mingw_pformat+0x26f>
   1400050c3:	0f b6 45 90          	movzbl -0x70(%rbp),%eax
   1400050c7:	0f b6 c0             	movzbl %al,%eax
   1400050ca:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   1400050ce:	83 7d e8 75          	cmpl   $0x75,-0x18(%rbp)
   1400050d2:	75 2e                	jne    140005102 <__mingw_pformat+0x2a3>
   1400050d4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
   1400050d8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
   1400050dc:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
   1400050e3:	48 89 95 78 ff ff ff 	mov    %rdx,-0x88(%rbp)
   1400050ea:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   1400050ee:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
   1400050f5:	48 89 c1             	mov    %rax,%rcx
   1400050f8:	e8 f7 e3 ff ff       	call   1400034f4 <__pformat_int>
   1400050fd:	e9 d2 fd ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005102:	48 8b 45 90          	mov    -0x70(%rbp),%rax
   140005106:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
   14000510a:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
   140005111:	48 89 95 78 ff ff ff 	mov    %rdx,-0x88(%rbp)
   140005118:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
   14000511c:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
   140005123:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140005126:	49 89 c8             	mov    %rcx,%r8
   140005129:	89 c1                	mov    %eax,%ecx
   14000512b:	e8 3c e7 ff ff       	call   14000386c <__pformat_xint>
   140005130:	e9 9f fd ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005135:	8b 45 a8             	mov    -0x58(%rbp),%eax
   140005138:	0c 80                	or     $0x80,%al
   14000513a:	89 45 a8             	mov    %eax,-0x58(%rbp)
   14000513d:	83 7d f8 03          	cmpl   $0x3,-0x8(%rbp)
   140005141:	75 15                	jne    140005158 <__mingw_pformat+0x2f9>
   140005143:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005147:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000514b:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   14000514f:	48 8b 00             	mov    (%rax),%rax
   140005152:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   140005156:	eb 56                	jmp    1400051ae <__mingw_pformat+0x34f>
   140005158:	83 7d f8 02          	cmpl   $0x2,-0x8(%rbp)
   14000515c:	75 16                	jne    140005174 <__mingw_pformat+0x315>
   14000515e:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005162:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140005166:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   14000516a:	8b 00                	mov    (%rax),%eax
   14000516c:	48 98                	cltq   
   14000516e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   140005172:	eb 3a                	jmp    1400051ae <__mingw_pformat+0x34f>
   140005174:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005178:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000517c:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005180:	8b 00                	mov    (%rax),%eax
   140005182:	48 98                	cltq   
   140005184:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   140005188:	83 7d f8 01          	cmpl   $0x1,-0x8(%rbp)
   14000518c:	75 0e                	jne    14000519c <__mingw_pformat+0x33d>
   14000518e:	0f b7 45 90          	movzwl -0x70(%rbp),%eax
   140005192:	48 0f bf c0          	movswq %ax,%rax
   140005196:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   14000519a:	eb 12                	jmp    1400051ae <__mingw_pformat+0x34f>
   14000519c:	83 7d f8 05          	cmpl   $0x5,-0x8(%rbp)
   1400051a0:	75 0c                	jne    1400051ae <__mingw_pformat+0x34f>
   1400051a2:	0f b6 45 90          	movzbl -0x70(%rbp),%eax
   1400051a6:	48 0f be c0          	movsbq %al,%rax
   1400051aa:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   1400051ae:	48 8b 45 90          	mov    -0x70(%rbp),%rax
   1400051b2:	48 85 c0             	test   %rax,%rax
   1400051b5:	79 09                	jns    1400051c0 <__mingw_pformat+0x361>
   1400051b7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   1400051be:	eb 05                	jmp    1400051c5 <__mingw_pformat+0x366>
   1400051c0:	b8 00 00 00 00       	mov    $0x0,%eax
   1400051c5:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   1400051c9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
   1400051cd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
   1400051d1:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
   1400051d8:	48 89 95 78 ff ff ff 	mov    %rdx,-0x88(%rbp)
   1400051df:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   1400051e3:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
   1400051ea:	48 89 c1             	mov    %rax,%rcx
   1400051ed:	e8 02 e3 ff ff       	call   1400034f4 <__pformat_int>
   1400051f2:	e9 dd fc ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400051f7:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400051fb:	75 18                	jne    140005215 <__mingw_pformat+0x3b6>
   1400051fd:	8b 45 a8             	mov    -0x58(%rbp),%eax
   140005200:	39 45 10             	cmp    %eax,0x10(%rbp)
   140005203:	75 10                	jne    140005215 <__mingw_pformat+0x3b6>
   140005205:	8b 45 a8             	mov    -0x58(%rbp),%eax
   140005208:	80 cc 02             	or     $0x2,%ah
   14000520b:	89 45 a8             	mov    %eax,-0x58(%rbp)
   14000520e:	c7 45 b0 10 00 00 00 	movl   $0x10,-0x50(%rbp)
   140005215:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005219:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000521d:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005221:	48 8b 00             	mov    (%rax),%rax
   140005224:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   140005228:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
   14000522f:	00 
   140005230:	48 8b 45 90          	mov    -0x70(%rbp),%rax
   140005234:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
   140005238:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
   14000523f:	48 89 95 78 ff ff ff 	mov    %rdx,-0x88(%rbp)
   140005246:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   14000524a:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
   140005251:	49 89 d0             	mov    %rdx,%r8
   140005254:	48 89 c2             	mov    %rax,%rdx
   140005257:	b9 78 00 00 00       	mov    $0x78,%ecx
   14000525c:	e8 0b e6 ff ff       	call   14000386c <__pformat_xint>
   140005261:	e9 6e fc ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005266:	8b 45 a8             	mov    -0x58(%rbp),%eax
   140005269:	83 c8 20             	or     $0x20,%eax
   14000526c:	89 45 a8             	mov    %eax,-0x58(%rbp)
   14000526f:	8b 45 a8             	mov    -0x58(%rbp),%eax
   140005272:	83 e0 04             	and    $0x4,%eax
   140005275:	85 c0                	test   %eax,%eax
   140005277:	74 2f                	je     1400052a8 <__mingw_pformat+0x449>
   140005279:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000527d:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140005281:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005285:	48 8b 00             	mov    (%rax),%rax
   140005288:	db 28                	fldt   (%rax)
   14000528a:	db bd 60 ff ff ff    	fstpt  -0xa0(%rbp)
   140005290:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140005294:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   14000529b:	48 89 c1             	mov    %rax,%rcx
   14000529e:	e8 79 f3 ff ff       	call   14000461c <__pformat_efloat>
   1400052a3:	e9 2c fc ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400052a8:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400052ac:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400052b0:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   1400052b4:	f2 0f 10 00          	movsd  (%rax),%xmm0
   1400052b8:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
   1400052bf:	ff 
   1400052c0:	dd 85 58 ff ff ff    	fldl   -0xa8(%rbp)
   1400052c6:	db bd 60 ff ff ff    	fstpt  -0xa0(%rbp)
   1400052cc:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   1400052d0:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   1400052d7:	48 89 c1             	mov    %rax,%rcx
   1400052da:	e8 3d f3 ff ff       	call   14000461c <__pformat_efloat>
   1400052df:	e9 f0 fb ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400052e4:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400052e7:	83 c8 20             	or     $0x20,%eax
   1400052ea:	89 45 a8             	mov    %eax,-0x58(%rbp)
   1400052ed:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400052f0:	83 e0 04             	and    $0x4,%eax
   1400052f3:	85 c0                	test   %eax,%eax
   1400052f5:	74 2f                	je     140005326 <__mingw_pformat+0x4c7>
   1400052f7:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400052fb:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400052ff:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005303:	48 8b 00             	mov    (%rax),%rax
   140005306:	db 28                	fldt   (%rax)
   140005308:	db bd 60 ff ff ff    	fstpt  -0xa0(%rbp)
   14000530e:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140005312:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   140005319:	48 89 c1             	mov    %rax,%rcx
   14000531c:	e8 2b f2 ff ff       	call   14000454c <__pformat_float>
   140005321:	e9 ae fb ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005326:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000532a:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000532e:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005332:	f2 0f 10 08          	movsd  (%rax),%xmm1
   140005336:	f2 0f 11 8d 58 ff ff 	movsd  %xmm1,-0xa8(%rbp)
   14000533d:	ff 
   14000533e:	dd 85 58 ff ff ff    	fldl   -0xa8(%rbp)
   140005344:	db bd 60 ff ff ff    	fstpt  -0xa0(%rbp)
   14000534a:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   14000534e:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   140005355:	48 89 c1             	mov    %rax,%rcx
   140005358:	e8 ef f1 ff ff       	call   14000454c <__pformat_float>
   14000535d:	e9 72 fb ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005362:	8b 45 a8             	mov    -0x58(%rbp),%eax
   140005365:	83 c8 20             	or     $0x20,%eax
   140005368:	89 45 a8             	mov    %eax,-0x58(%rbp)
   14000536b:	8b 45 a8             	mov    -0x58(%rbp),%eax
   14000536e:	83 e0 04             	and    $0x4,%eax
   140005371:	85 c0                	test   %eax,%eax
   140005373:	74 2f                	je     1400053a4 <__mingw_pformat+0x545>
   140005375:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005379:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000537d:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005381:	48 8b 00             	mov    (%rax),%rax
   140005384:	db 28                	fldt   (%rax)
   140005386:	db bd 60 ff ff ff    	fstpt  -0xa0(%rbp)
   14000538c:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140005390:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   140005397:	48 89 c1             	mov    %rax,%rcx
   14000539a:	e8 28 f3 ff ff       	call   1400046c7 <__pformat_gfloat>
   14000539f:	e9 30 fb ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400053a4:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400053a8:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400053ac:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   1400053b0:	f2 0f 10 10          	movsd  (%rax),%xmm2
   1400053b4:	f2 0f 11 95 58 ff ff 	movsd  %xmm2,-0xa8(%rbp)
   1400053bb:	ff 
   1400053bc:	dd 85 58 ff ff ff    	fldl   -0xa8(%rbp)
   1400053c2:	db bd 60 ff ff ff    	fstpt  -0xa0(%rbp)
   1400053c8:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   1400053cc:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   1400053d3:	48 89 c1             	mov    %rax,%rcx
   1400053d6:	e8 ec f2 ff ff       	call   1400046c7 <__pformat_gfloat>
   1400053db:	e9 f4 fa ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400053e0:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400053e3:	83 c8 20             	or     $0x20,%eax
   1400053e6:	89 45 a8             	mov    %eax,-0x58(%rbp)
   1400053e9:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400053ec:	83 e0 04             	and    $0x4,%eax
   1400053ef:	85 c0                	test   %eax,%eax
   1400053f1:	74 2f                	je     140005422 <__mingw_pformat+0x5c3>
   1400053f3:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400053f7:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400053fb:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   1400053ff:	48 8b 00             	mov    (%rax),%rax
   140005402:	db 28                	fldt   (%rax)
   140005404:	db bd 60 ff ff ff    	fstpt  -0xa0(%rbp)
   14000540a:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   14000540e:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   140005415:	48 89 c1             	mov    %rax,%rcx
   140005418:	e8 18 f9 ff ff       	call   140004d35 <__pformat_xldouble>
   14000541d:	e9 b2 fa ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005422:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005426:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000542a:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   14000542e:	f2 0f 10 18          	movsd  (%rax),%xmm3
   140005432:	f2 0f 11 9d 58 ff ff 	movsd  %xmm3,-0xa8(%rbp)
   140005439:	ff 
   14000543a:	dd 85 58 ff ff ff    	fldl   -0xa8(%rbp)
   140005440:	db bd 60 ff ff ff    	fstpt  -0xa0(%rbp)
   140005446:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   14000544a:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
   140005451:	48 89 c1             	mov    %rax,%rcx
   140005454:	e8 dc f8 ff ff       	call   140004d35 <__pformat_xldouble>
   140005459:	e9 76 fa ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   14000545e:	83 7d f8 05          	cmpl   $0x5,-0x8(%rbp)
   140005462:	75 1b                	jne    14000547f <__mingw_pformat+0x620>
   140005464:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
   140005467:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000546b:	48 8d 50 08          	lea    0x8(%rax),%rdx
   14000546f:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005473:	48 8b 00             	mov    (%rax),%rax
   140005476:	89 ca                	mov    %ecx,%edx
   140005478:	88 10                	mov    %dl,(%rax)
   14000547a:	e9 55 fa ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   14000547f:	83 7d f8 01          	cmpl   $0x1,-0x8(%rbp)
   140005483:	75 1c                	jne    1400054a1 <__mingw_pformat+0x642>
   140005485:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
   140005488:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000548c:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140005490:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005494:	48 8b 00             	mov    (%rax),%rax
   140005497:	89 ca                	mov    %ecx,%edx
   140005499:	66 89 10             	mov    %dx,(%rax)
   14000549c:	e9 33 fa ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400054a1:	83 7d f8 02          	cmpl   $0x2,-0x8(%rbp)
   1400054a5:	75 19                	jne    1400054c0 <__mingw_pformat+0x661>
   1400054a7:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400054ab:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400054af:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   1400054b3:	48 8b 00             	mov    (%rax),%rax
   1400054b6:	8b 55 c4             	mov    -0x3c(%rbp),%edx
   1400054b9:	89 10                	mov    %edx,(%rax)
   1400054bb:	e9 14 fa ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400054c0:	83 7d f8 03          	cmpl   $0x3,-0x8(%rbp)
   1400054c4:	75 1d                	jne    1400054e3 <__mingw_pformat+0x684>
   1400054c6:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
   1400054c9:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400054cd:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400054d1:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   1400054d5:	48 8b 00             	mov    (%rax),%rax
   1400054d8:	48 63 d1             	movslq %ecx,%rdx
   1400054db:	48 89 10             	mov    %rdx,(%rax)
   1400054de:	e9 f1 f9 ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400054e3:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400054e7:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400054eb:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   1400054ef:	48 8b 00             	mov    (%rax),%rax
   1400054f2:	8b 55 c4             	mov    -0x3c(%rbp),%edx
   1400054f5:	89 10                	mov    %edx,(%rax)
   1400054f7:	e9 d8 f9 ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   1400054fc:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140005500:	0f b6 00             	movzbl (%rax),%eax
   140005503:	3c 68                	cmp    $0x68,%al
   140005505:	75 0e                	jne    140005515 <__mingw_pformat+0x6b6>
   140005507:	48 83 45 28 01       	addq   $0x1,0x28(%rbp)
   14000550c:	c7 45 f8 05 00 00 00 	movl   $0x5,-0x8(%rbp)
   140005513:	eb 07                	jmp    14000551c <__mingw_pformat+0x6bd>
   140005515:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
   14000551c:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   140005523:	e9 dd 02 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   140005528:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
   14000552f:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   140005536:	e9 ca 02 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   14000553b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000553f:	0f b6 00             	movzbl (%rax),%eax
   140005542:	3c 36                	cmp    $0x36,%al
   140005544:	75 1d                	jne    140005563 <__mingw_pformat+0x704>
   140005546:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000554a:	48 83 c0 01          	add    $0x1,%rax
   14000554e:	0f b6 00             	movzbl (%rax),%eax
   140005551:	3c 34                	cmp    $0x34,%al
   140005553:	75 0e                	jne    140005563 <__mingw_pformat+0x704>
   140005555:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
   14000555c:	48 83 45 28 02       	addq   $0x2,0x28(%rbp)
   140005561:	eb 2f                	jmp    140005592 <__mingw_pformat+0x733>
   140005563:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140005567:	0f b6 00             	movzbl (%rax),%eax
   14000556a:	3c 33                	cmp    $0x33,%al
   14000556c:	75 1d                	jne    14000558b <__mingw_pformat+0x72c>
   14000556e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140005572:	48 83 c0 01          	add    $0x1,%rax
   140005576:	0f b6 00             	movzbl (%rax),%eax
   140005579:	3c 32                	cmp    $0x32,%al
   14000557b:	75 0e                	jne    14000558b <__mingw_pformat+0x72c>
   14000557d:	c7 45 f8 02 00 00 00 	movl   $0x2,-0x8(%rbp)
   140005584:	48 83 45 28 02       	addq   $0x2,0x28(%rbp)
   140005589:	eb 07                	jmp    140005592 <__mingw_pformat+0x733>
   14000558b:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
   140005592:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   140005599:	e9 67 02 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   14000559e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400055a2:	0f b6 00             	movzbl (%rax),%eax
   1400055a5:	3c 6c                	cmp    $0x6c,%al
   1400055a7:	75 0e                	jne    1400055b7 <__mingw_pformat+0x758>
   1400055a9:	48 83 45 28 01       	addq   $0x1,0x28(%rbp)
   1400055ae:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
   1400055b5:	eb 07                	jmp    1400055be <__mingw_pformat+0x75f>
   1400055b7:	c7 45 f8 02 00 00 00 	movl   $0x2,-0x8(%rbp)
   1400055be:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   1400055c5:	e9 3b 02 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   1400055ca:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400055cd:	83 c8 04             	or     $0x4,%eax
   1400055d0:	89 45 a8             	mov    %eax,-0x58(%rbp)
   1400055d3:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   1400055da:	e9 26 02 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   1400055df:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
   1400055e6:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   1400055ed:	e9 13 02 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   1400055f2:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
   1400055f9:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   140005600:	e9 00 02 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   140005605:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
   140005609:	77 1f                	ja     14000562a <__mingw_pformat+0x7cb>
   14000560b:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%rbp)
   140005612:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140005616:	48 83 c0 10          	add    $0x10,%rax
   14000561a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000561e:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
   140005625:	e9 db 01 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   14000562a:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   140005631:	e9 cf 01 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   140005636:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   14000563b:	74 4c                	je     140005689 <__mingw_pformat+0x82a>
   14000563d:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140005641:	74 06                	je     140005649 <__mingw_pformat+0x7ea>
   140005643:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
   140005647:	75 40                	jne    140005689 <__mingw_pformat+0x82a>
   140005649:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000564d:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140005651:	48 89 55 30          	mov    %rdx,0x30(%rbp)
   140005655:	8b 10                	mov    (%rax),%edx
   140005657:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000565b:	89 10                	mov    %edx,(%rax)
   14000565d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005661:	8b 00                	mov    (%rax),%eax
   140005663:	85 c0                	test   %eax,%eax
   140005665:	79 29                	jns    140005690 <__mingw_pformat+0x831>
   140005667:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   14000566b:	75 13                	jne    140005680 <__mingw_pformat+0x821>
   14000566d:	8b 45 a8             	mov    -0x58(%rbp),%eax
   140005670:	80 cc 04             	or     $0x4,%ah
   140005673:	89 45 a8             	mov    %eax,-0x58(%rbp)
   140005676:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140005679:	f7 d8                	neg    %eax
   14000567b:	89 45 ac             	mov    %eax,-0x54(%rbp)
   14000567e:	eb 10                	jmp    140005690 <__mingw_pformat+0x831>
   140005680:	c7 45 b0 ff ff ff ff 	movl   $0xffffffff,-0x50(%rbp)
   140005687:	eb 07                	jmp    140005690 <__mingw_pformat+0x831>
   140005689:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   140005690:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
   140005697:	00 
   140005698:	e9 68 01 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   14000569d:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400056a1:	0f 85 5e 01 00 00    	jne    140005805 <__mingw_pformat+0x9a6>
   1400056a7:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400056aa:	80 cc 08             	or     $0x8,%ah
   1400056ad:	89 45 a8             	mov    %eax,-0x58(%rbp)
   1400056b0:	e9 50 01 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   1400056b5:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400056b9:	0f 85 46 01 00 00    	jne    140005805 <__mingw_pformat+0x9a6>
   1400056bf:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400056c2:	80 cc 01             	or     $0x1,%ah
   1400056c5:	89 45 a8             	mov    %eax,-0x58(%rbp)
   1400056c8:	e9 38 01 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   1400056cd:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400056d1:	0f 85 2e 01 00 00    	jne    140005805 <__mingw_pformat+0x9a6>
   1400056d7:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400056da:	80 cc 04             	or     $0x4,%ah
   1400056dd:	89 45 a8             	mov    %eax,-0x58(%rbp)
   1400056e0:	e9 20 01 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   1400056e5:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400056e9:	0f 85 16 01 00 00    	jne    140005805 <__mingw_pformat+0x9a6>
   1400056ef:	8b 45 a8             	mov    -0x58(%rbp),%eax
   1400056f2:	80 cc 10             	or     $0x10,%ah
   1400056f5:	89 45 a8             	mov    %eax,-0x58(%rbp)
   1400056f8:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
   1400056fc:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140005702:	ba 00 00 00 00       	mov    $0x0,%edx
   140005707:	48 89 c1             	mov    %rax,%rcx
   14000570a:	e8 51 30 00 00       	call   140008760 <memset>
   14000570f:	e8 64 30 00 00       	call   140008778 <localeconv>
   140005714:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140005718:	48 8d 4d 84          	lea    -0x7c(%rbp),%rcx
   14000571c:	48 8d 45 8c          	lea    -0x74(%rbp),%rax
   140005720:	49 89 c9             	mov    %rcx,%r9
   140005723:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   140005729:	48 89 c1             	mov    %rax,%rcx
   14000572c:	e8 bd 32 00 00       	call   1400089ee <mbrtowc>
   140005731:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140005734:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
   140005738:	7e 08                	jle    140005742 <__mingw_pformat+0x8e3>
   14000573a:	0f b7 45 8c          	movzwl -0x74(%rbp),%eax
   14000573e:	66 89 45 c0          	mov    %ax,-0x40(%rbp)
   140005742:	8b 45 dc             	mov    -0x24(%rbp),%eax
   140005745:	89 45 bc             	mov    %eax,-0x44(%rbp)
   140005748:	e9 b8 00 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   14000574d:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140005751:	0f 85 ae 00 00 00    	jne    140005805 <__mingw_pformat+0x9a6>
   140005757:	8b 45 a8             	mov    -0x58(%rbp),%eax
   14000575a:	83 c8 40             	or     $0x40,%eax
   14000575d:	89 45 a8             	mov    %eax,-0x58(%rbp)
   140005760:	e9 a0 00 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   140005765:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140005769:	75 0e                	jne    140005779 <__mingw_pformat+0x91a>
   14000576b:	8b 45 a8             	mov    -0x58(%rbp),%eax
   14000576e:	80 cc 02             	or     $0x2,%ah
   140005771:	89 45 a8             	mov    %eax,-0x58(%rbp)
   140005774:	e9 8c 00 00 00       	jmp    140005805 <__mingw_pformat+0x9a6>
   140005779:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
   14000577d:	77 68                	ja     1400057e7 <__mingw_pformat+0x988>
   14000577f:	83 7d e8 39          	cmpl   $0x39,-0x18(%rbp)
   140005783:	7f 62                	jg     1400057e7 <__mingw_pformat+0x988>
   140005785:	83 7d e8 2f          	cmpl   $0x2f,-0x18(%rbp)
   140005789:	7e 5c                	jle    1400057e7 <__mingw_pformat+0x988>
   14000578b:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   14000578f:	75 09                	jne    14000579a <__mingw_pformat+0x93b>
   140005791:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
   140005798:	eb 0d                	jmp    1400057a7 <__mingw_pformat+0x948>
   14000579a:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
   14000579e:	75 07                	jne    1400057a7 <__mingw_pformat+0x948>
   1400057a0:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
   1400057a7:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400057ac:	74 57                	je     140005805 <__mingw_pformat+0x9a6>
   1400057ae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400057b2:	8b 00                	mov    (%rax),%eax
   1400057b4:	85 c0                	test   %eax,%eax
   1400057b6:	79 0e                	jns    1400057c6 <__mingw_pformat+0x967>
   1400057b8:	8b 45 e8             	mov    -0x18(%rbp),%eax
   1400057bb:	8d 50 d0             	lea    -0x30(%rax),%edx
   1400057be:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400057c2:	89 10                	mov    %edx,(%rax)
   1400057c4:	eb 3f                	jmp    140005805 <__mingw_pformat+0x9a6>
   1400057c6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400057ca:	8b 10                	mov    (%rax),%edx
   1400057cc:	89 d0                	mov    %edx,%eax
   1400057ce:	c1 e0 02             	shl    $0x2,%eax
   1400057d1:	01 d0                	add    %edx,%eax
   1400057d3:	01 c0                	add    %eax,%eax
   1400057d5:	89 c2                	mov    %eax,%edx
   1400057d7:	8b 45 e8             	mov    -0x18(%rbp),%eax
   1400057da:	01 d0                	add    %edx,%eax
   1400057dc:	8d 50 d0             	lea    -0x30(%rax),%edx
   1400057df:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400057e3:	89 10                	mov    %edx,(%rax)
   1400057e5:	eb 1e                	jmp    140005805 <__mingw_pformat+0x9a6>
   1400057e7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400057eb:	48 89 45 28          	mov    %rax,0x28(%rbp)
   1400057ef:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   1400057f3:	48 89 c2             	mov    %rax,%rdx
   1400057f6:	b9 25 00 00 00       	mov    $0x25,%ecx
   1400057fb:	e8 90 d8 ff ff       	call   140003090 <__pformat_putc>
   140005800:	e9 cf f6 ff ff       	jmp    140004ed4 <__mingw_pformat+0x75>
   140005805:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140005809:	0f b6 00             	movzbl (%rax),%eax
   14000580c:	84 c0                	test   %al,%al
   14000580e:	0f 85 09 f7 ff ff    	jne    140004f1d <__mingw_pformat+0xbe>
   140005814:	eb 0e                	jmp    140005824 <__mingw_pformat+0x9c5>
   140005816:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   14000581a:	8b 45 e8             	mov    -0x18(%rbp),%eax
   14000581d:	89 c1                	mov    %eax,%ecx
   14000581f:	e8 6c d8 ff ff       	call   140003090 <__pformat_putc>
   140005824:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140005828:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000582c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140005830:	0f b6 00             	movzbl (%rax),%eax
   140005833:	0f be c0             	movsbl %al,%eax
   140005836:	89 45 e8             	mov    %eax,-0x18(%rbp)
   140005839:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
   14000583d:	0f 85 96 f6 ff ff    	jne    140004ed9 <__mingw_pformat+0x7a>
   140005843:	8b 45 c4             	mov    -0x3c(%rbp),%eax
   140005846:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
   14000584d:	5d                   	pop    %rbp
   14000584e:	c3                   	ret    
   14000584f:	90                   	nop

0000000140005850 <__rv_alloc_D2A>:
   140005850:	55                   	push   %rbp
   140005851:	48 89 e5             	mov    %rsp,%rbp
   140005854:	48 83 ec 30          	sub    $0x30,%rsp
   140005858:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000585b:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
   140005862:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   140005869:	eb 07                	jmp    140005872 <__rv_alloc_D2A+0x22>
   14000586b:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   14000586f:	d1 65 fc             	shll   -0x4(%rbp)
   140005872:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140005875:	83 c0 17             	add    $0x17,%eax
   140005878:	39 45 10             	cmp    %eax,0x10(%rbp)
   14000587b:	7f ee                	jg     14000586b <__rv_alloc_D2A+0x1b>
   14000587d:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140005880:	89 c1                	mov    %eax,%ecx
   140005882:	e8 1f 1e 00 00       	call   1400076a6 <__Balloc_D2A>
   140005887:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000588b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000588f:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140005892:	89 10                	mov    %edx,(%rax)
   140005894:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005898:	48 83 c0 04          	add    $0x4,%rax
   14000589c:	48 83 c4 30          	add    $0x30,%rsp
   1400058a0:	5d                   	pop    %rbp
   1400058a1:	c3                   	ret    

00000001400058a2 <__nrv_alloc_D2A>:
   1400058a2:	55                   	push   %rbp
   1400058a3:	48 89 e5             	mov    %rsp,%rbp
   1400058a6:	48 83 ec 30          	sub    $0x30,%rsp
   1400058aa:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400058ae:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400058b2:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   1400058b6:	8b 45 20             	mov    0x20(%rbp),%eax
   1400058b9:	89 c1                	mov    %eax,%ecx
   1400058bb:	e8 90 ff ff ff       	call   140005850 <__rv_alloc_D2A>
   1400058c0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400058c4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400058c8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400058cc:	eb 05                	jmp    1400058d3 <__nrv_alloc_D2A+0x31>
   1400058ce:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
   1400058d3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400058d7:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400058db:	48 89 55 10          	mov    %rdx,0x10(%rbp)
   1400058df:	0f b6 10             	movzbl (%rax),%edx
   1400058e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400058e6:	88 10                	mov    %dl,(%rax)
   1400058e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400058ec:	0f b6 00             	movzbl (%rax),%eax
   1400058ef:	84 c0                	test   %al,%al
   1400058f1:	75 db                	jne    1400058ce <__nrv_alloc_D2A+0x2c>
   1400058f3:	48 83 7d 18 00       	cmpq   $0x0,0x18(%rbp)
   1400058f8:	74 0b                	je     140005905 <__nrv_alloc_D2A+0x63>
   1400058fa:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400058fe:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140005902:	48 89 10             	mov    %rdx,(%rax)
   140005905:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005909:	48 83 c4 30          	add    $0x30,%rsp
   14000590d:	5d                   	pop    %rbp
   14000590e:	c3                   	ret    

000000014000590f <__freedtoa>:
   14000590f:	55                   	push   %rbp
   140005910:	48 89 e5             	mov    %rsp,%rbp
   140005913:	48 83 ec 30          	sub    $0x30,%rsp
   140005917:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000591b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000591f:	48 83 e8 04          	sub    $0x4,%rax
   140005923:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140005927:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000592b:	8b 10                	mov    (%rax),%edx
   14000592d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140005931:	89 50 08             	mov    %edx,0x8(%rax)
   140005934:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140005938:	8b 40 08             	mov    0x8(%rax),%eax
   14000593b:	ba 01 00 00 00       	mov    $0x1,%edx
   140005940:	89 c1                	mov    %eax,%ecx
   140005942:	d3 e2                	shl    %cl,%edx
   140005944:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140005948:	89 50 0c             	mov    %edx,0xc(%rax)
   14000594b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000594f:	48 89 c1             	mov    %rax,%rcx
   140005952:	e8 91 1e 00 00       	call   1400077e8 <__Bfree_D2A>
   140005957:	90                   	nop
   140005958:	48 83 c4 30          	add    $0x30,%rsp
   14000595c:	5d                   	pop    %rbp
   14000595d:	c3                   	ret    

000000014000595e <__quorem_D2A>:
   14000595e:	55                   	push   %rbp
   14000595f:	48 89 e5             	mov    %rsp,%rbp
   140005962:	48 83 ec 70          	sub    $0x70,%rsp
   140005966:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000596a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000596e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140005972:	8b 40 14             	mov    0x14(%rax),%eax
   140005975:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140005978:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000597c:	8b 40 14             	mov    0x14(%rax),%eax
   14000597f:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140005982:	7e 0a                	jle    14000598e <__quorem_D2A+0x30>
   140005984:	b8 00 00 00 00       	mov    $0x0,%eax
   140005989:	e9 3f 02 00 00       	jmp    140005bcd <__quorem_D2A+0x26f>
   14000598e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140005992:	48 83 c0 18          	add    $0x18,%rax
   140005996:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   14000599a:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
   14000599e:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400059a1:	48 98                	cltq   
   1400059a3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   1400059aa:	00 
   1400059ab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1400059af:	48 01 d0             	add    %rdx,%rax
   1400059b2:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   1400059b6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400059ba:	48 83 c0 18          	add    $0x18,%rax
   1400059be:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400059c2:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400059c5:	48 98                	cltq   
   1400059c7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   1400059ce:	00 
   1400059cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400059d3:	48 01 d0             	add    %rdx,%rax
   1400059d6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400059da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400059de:	8b 00                	mov    (%rax),%eax
   1400059e0:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
   1400059e4:	8b 12                	mov    (%rdx),%edx
   1400059e6:	8d 4a 01             	lea    0x1(%rdx),%ecx
   1400059e9:	ba 00 00 00 00       	mov    $0x0,%edx
   1400059ee:	f7 f1                	div    %ecx
   1400059f0:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   1400059f3:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   1400059f7:	0f 84 c4 00 00 00    	je     140005ac1 <__quorem_D2A+0x163>
   1400059fd:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
   140005a04:	00 
   140005a05:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   140005a0c:	00 
   140005a0d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140005a11:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140005a15:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   140005a19:	8b 00                	mov    (%rax),%eax
   140005a1b:	89 c2                	mov    %eax,%edx
   140005a1d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140005a20:	48 0f af d0          	imul   %rax,%rdx
   140005a24:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140005a28:	48 01 d0             	add    %rdx,%rax
   140005a2b:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140005a2f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140005a33:	48 c1 e8 20          	shr    $0x20,%rax
   140005a37:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   140005a3b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005a3f:	8b 00                	mov    (%rax),%eax
   140005a41:	89 c2                	mov    %eax,%edx
   140005a43:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140005a47:	89 c1                	mov    %eax,%ecx
   140005a49:	48 89 d0             	mov    %rdx,%rax
   140005a4c:	48 29 c8             	sub    %rcx,%rax
   140005a4f:	48 2b 45 d0          	sub    -0x30(%rbp),%rax
   140005a53:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   140005a57:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
   140005a5b:	48 c1 e8 20          	shr    $0x20,%rax
   140005a5f:	83 e0 01             	and    $0x1,%eax
   140005a62:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140005a66:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005a6a:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140005a6e:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140005a72:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   140005a76:	89 10                	mov    %edx,(%rax)
   140005a78:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140005a7c:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
   140005a80:	76 8b                	jbe    140005a0d <__quorem_D2A+0xaf>
   140005a82:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005a86:	8b 00                	mov    (%rax),%eax
   140005a88:	85 c0                	test   %eax,%eax
   140005a8a:	75 35                	jne    140005ac1 <__quorem_D2A+0x163>
   140005a8c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140005a90:	48 83 c0 18          	add    $0x18,%rax
   140005a94:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140005a98:	eb 04                	jmp    140005a9e <__quorem_D2A+0x140>
   140005a9a:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
   140005a9e:	48 83 6d e8 04       	subq   $0x4,-0x18(%rbp)
   140005aa3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005aa7:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
   140005aab:	76 0a                	jbe    140005ab7 <__quorem_D2A+0x159>
   140005aad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005ab1:	8b 00                	mov    (%rax),%eax
   140005ab3:	85 c0                	test   %eax,%eax
   140005ab5:	74 e3                	je     140005a9a <__quorem_D2A+0x13c>
   140005ab7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140005abb:	8b 55 fc             	mov    -0x4(%rbp),%edx
   140005abe:	89 50 14             	mov    %edx,0x14(%rax)
   140005ac1:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140005ac5:	48 89 c2             	mov    %rax,%rdx
   140005ac8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140005acc:	e8 79 24 00 00       	call   140007f4a <__cmp_D2A>
   140005ad1:	85 c0                	test   %eax,%eax
   140005ad3:	0f 88 f1 00 00 00    	js     140005bca <__quorem_D2A+0x26c>
   140005ad9:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
   140005add:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
   140005ae4:	00 
   140005ae5:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   140005aec:	00 
   140005aed:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140005af1:	48 83 c0 18          	add    $0x18,%rax
   140005af5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140005af9:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140005afd:	48 83 c0 18          	add    $0x18,%rax
   140005b01:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140005b05:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140005b09:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140005b0d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   140005b11:	8b 00                	mov    (%rax),%eax
   140005b13:	89 c2                	mov    %eax,%edx
   140005b15:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140005b19:	48 01 d0             	add    %rdx,%rax
   140005b1c:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140005b20:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140005b24:	48 c1 e8 20          	shr    $0x20,%rax
   140005b28:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   140005b2c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005b30:	8b 00                	mov    (%rax),%eax
   140005b32:	89 c2                	mov    %eax,%edx
   140005b34:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140005b38:	89 c1                	mov    %eax,%ecx
   140005b3a:	48 89 d0             	mov    %rdx,%rax
   140005b3d:	48 29 c8             	sub    %rcx,%rax
   140005b40:	48 2b 45 d0          	sub    -0x30(%rbp),%rax
   140005b44:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   140005b48:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
   140005b4c:	48 c1 e8 20          	shr    $0x20,%rax
   140005b50:	83 e0 01             	and    $0x1,%eax
   140005b53:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140005b57:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005b5b:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140005b5f:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140005b63:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   140005b67:	89 10                	mov    %edx,(%rax)
   140005b69:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140005b6d:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
   140005b71:	76 92                	jbe    140005b05 <__quorem_D2A+0x1a7>
   140005b73:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140005b77:	48 83 c0 18          	add    $0x18,%rax
   140005b7b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140005b7f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140005b82:	48 98                	cltq   
   140005b84:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140005b8b:	00 
   140005b8c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005b90:	48 01 d0             	add    %rdx,%rax
   140005b93:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140005b97:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005b9b:	8b 00                	mov    (%rax),%eax
   140005b9d:	85 c0                	test   %eax,%eax
   140005b9f:	75 29                	jne    140005bca <__quorem_D2A+0x26c>
   140005ba1:	eb 04                	jmp    140005ba7 <__quorem_D2A+0x249>
   140005ba3:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
   140005ba7:	48 83 6d e8 04       	subq   $0x4,-0x18(%rbp)
   140005bac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005bb0:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
   140005bb4:	76 0a                	jbe    140005bc0 <__quorem_D2A+0x262>
   140005bb6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005bba:	8b 00                	mov    (%rax),%eax
   140005bbc:	85 c0                	test   %eax,%eax
   140005bbe:	74 e3                	je     140005ba3 <__quorem_D2A+0x245>
   140005bc0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140005bc4:	8b 55 fc             	mov    -0x4(%rbp),%edx
   140005bc7:	89 50 14             	mov    %edx,0x14(%rax)
   140005bca:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140005bcd:	48 83 c4 70          	add    $0x70,%rsp
   140005bd1:	5d                   	pop    %rbp
   140005bd2:	c3                   	ret    
   140005bd3:	90                   	nop
   140005bd4:	90                   	nop
   140005bd5:	90                   	nop
   140005bd6:	90                   	nop
   140005bd7:	90                   	nop
   140005bd8:	90                   	nop
   140005bd9:	90                   	nop
   140005bda:	90                   	nop
   140005bdb:	90                   	nop
   140005bdc:	90                   	nop
   140005bdd:	90                   	nop
   140005bde:	90                   	nop
   140005bdf:	90                   	nop

0000000140005be0 <__hi0bits_D2A>:
   140005be0:	55                   	push   %rbp
   140005be1:	48 89 e5             	mov    %rsp,%rbp
   140005be4:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140005be7:	0f bd 45 10          	bsr    0x10(%rbp),%eax
   140005beb:	83 f0 1f             	xor    $0x1f,%eax
   140005bee:	5d                   	pop    %rbp
   140005bef:	c3                   	ret    

0000000140005bf0 <bitstob>:
   140005bf0:	55                   	push   %rbp
   140005bf1:	53                   	push   %rbx
   140005bf2:	48 83 ec 58          	sub    $0x58,%rsp
   140005bf6:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   140005bfb:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140005bff:	89 55 28             	mov    %edx,0x28(%rbp)
   140005c02:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140005c06:	c7 45 fc 20 00 00 00 	movl   $0x20,-0x4(%rbp)
   140005c0d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   140005c14:	eb 07                	jmp    140005c1d <bitstob+0x2d>
   140005c16:	d1 65 fc             	shll   -0x4(%rbp)
   140005c19:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   140005c1d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140005c20:	3b 45 28             	cmp    0x28(%rbp),%eax
   140005c23:	7c f1                	jl     140005c16 <bitstob+0x26>
   140005c25:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140005c28:	89 c1                	mov    %eax,%ecx
   140005c2a:	e8 77 1a 00 00       	call   1400076a6 <__Balloc_D2A>
   140005c2f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140005c33:	8b 45 28             	mov    0x28(%rbp),%eax
   140005c36:	83 e8 01             	sub    $0x1,%eax
   140005c39:	c1 f8 05             	sar    $0x5,%eax
   140005c3c:	48 98                	cltq   
   140005c3e:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140005c45:	00 
   140005c46:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140005c4a:	48 01 d0             	add    %rdx,%rax
   140005c4d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140005c51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005c55:	48 83 c0 18          	add    $0x18,%rax
   140005c59:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140005c5d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140005c61:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140005c65:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005c69:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140005c6d:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140005c71:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140005c75:	8b 12                	mov    (%rdx),%edx
   140005c77:	89 10                	mov    %edx,(%rax)
   140005c79:	48 83 45 20 04       	addq   $0x4,0x20(%rbp)
   140005c7e:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140005c82:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
   140005c86:	76 dd                	jbe    140005c65 <bitstob+0x75>
   140005c88:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140005c8c:	48 2b 45 d8          	sub    -0x28(%rbp),%rax
   140005c90:	48 c1 f8 02          	sar    $0x2,%rax
   140005c94:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140005c97:	eb 1d                	jmp    140005cb6 <bitstob+0xc6>
   140005c99:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140005c9d:	75 17                	jne    140005cb6 <bitstob+0xc6>
   140005c9f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005ca3:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
   140005caa:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005cae:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140005cb4:	eb 59                	jmp    140005d0f <bitstob+0x11f>
   140005cb6:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
   140005cba:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140005cbd:	48 98                	cltq   
   140005cbf:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140005cc6:	00 
   140005cc7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140005ccb:	48 01 d0             	add    %rdx,%rax
   140005cce:	8b 00                	mov    (%rax),%eax
   140005cd0:	85 c0                	test   %eax,%eax
   140005cd2:	74 c5                	je     140005c99 <bitstob+0xa9>
   140005cd4:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140005cd7:	8d 50 01             	lea    0x1(%rax),%edx
   140005cda:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005cde:	89 50 14             	mov    %edx,0x14(%rax)
   140005ce1:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140005ce4:	83 c0 01             	add    $0x1,%eax
   140005ce7:	c1 e0 05             	shl    $0x5,%eax
   140005cea:	89 c3                	mov    %eax,%ebx
   140005cec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005cf0:	8b 55 fc             	mov    -0x4(%rbp),%edx
   140005cf3:	48 63 d2             	movslq %edx,%rdx
   140005cf6:	48 83 c2 04          	add    $0x4,%rdx
   140005cfa:	8b 44 90 08          	mov    0x8(%rax,%rdx,4),%eax
   140005cfe:	89 c1                	mov    %eax,%ecx
   140005d00:	e8 db fe ff ff       	call   140005be0 <__hi0bits_D2A>
   140005d05:	29 c3                	sub    %eax,%ebx
   140005d07:	89 da                	mov    %ebx,%edx
   140005d09:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005d0d:	89 10                	mov    %edx,(%rax)
   140005d0f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140005d13:	48 83 c4 58          	add    $0x58,%rsp
   140005d17:	5b                   	pop    %rbx
   140005d18:	5d                   	pop    %rbp
   140005d19:	c3                   	ret    

0000000140005d1a <__gdtoa>:
   140005d1a:	55                   	push   %rbp
   140005d1b:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   140005d22:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140005d29:	00 
   140005d2a:	48 89 8d 90 00 00 00 	mov    %rcx,0x90(%rbp)
   140005d31:	89 95 98 00 00 00    	mov    %edx,0x98(%rbp)
   140005d37:	4c 89 85 a0 00 00 00 	mov    %r8,0xa0(%rbp)
   140005d3e:	4c 89 8d a8 00 00 00 	mov    %r9,0xa8(%rbp)
   140005d45:	c7 45 64 00 00 00 00 	movl   $0x0,0x64(%rbp)
   140005d4c:	48 8b 85 a8 00 00 00 	mov    0xa8(%rbp),%rax
   140005d53:	8b 00                	mov    (%rax),%eax
   140005d55:	83 e0 cf             	and    $0xffffffcf,%eax
   140005d58:	89 c2                	mov    %eax,%edx
   140005d5a:	48 8b 85 a8 00 00 00 	mov    0xa8(%rbp),%rax
   140005d61:	89 10                	mov    %edx,(%rax)
   140005d63:	48 8b 85 a8 00 00 00 	mov    0xa8(%rbp),%rax
   140005d6a:	8b 00                	mov    (%rax),%eax
   140005d6c:	89 45 04             	mov    %eax,0x4(%rbp)
   140005d6f:	8b 45 04             	mov    0x4(%rbp),%eax
   140005d72:	83 e0 07             	and    $0x7,%eax
   140005d75:	83 f8 04             	cmp    $0x4,%eax
   140005d78:	0f 84 b3 00 00 00    	je     140005e31 <__gdtoa+0x117>
   140005d7e:	83 f8 04             	cmp    $0x4,%eax
   140005d81:	0f 8f db 00 00 00    	jg     140005e62 <__gdtoa+0x148>
   140005d87:	83 f8 03             	cmp    $0x3,%eax
   140005d8a:	74 74                	je     140005e00 <__gdtoa+0xe6>
   140005d8c:	83 f8 03             	cmp    $0x3,%eax
   140005d8f:	0f 8f cd 00 00 00    	jg     140005e62 <__gdtoa+0x148>
   140005d95:	85 c0                	test   %eax,%eax
   140005d97:	0f 84 0b 01 00 00    	je     140005ea8 <__gdtoa+0x18e>
   140005d9d:	85 c0                	test   %eax,%eax
   140005d9f:	0f 88 bd 00 00 00    	js     140005e62 <__gdtoa+0x148>
   140005da5:	83 e8 01             	sub    $0x1,%eax
   140005da8:	83 f8 01             	cmp    $0x1,%eax
   140005dab:	0f 87 b1 00 00 00    	ja     140005e62 <__gdtoa+0x148>
   140005db1:	90                   	nop
   140005db2:	48 8b 85 90 00 00 00 	mov    0x90(%rbp),%rax
   140005db9:	8b 00                	mov    (%rax),%eax
   140005dbb:	89 45 00             	mov    %eax,0x0(%rbp)
   140005dbe:	48 8d 4d bc          	lea    -0x44(%rbp),%rcx
   140005dc2:	8b 55 00             	mov    0x0(%rbp),%edx
   140005dc5:	48 8b 85 a0 00 00 00 	mov    0xa0(%rbp),%rax
   140005dcc:	49 89 c8             	mov    %rcx,%r8
   140005dcf:	48 89 c1             	mov    %rax,%rcx
   140005dd2:	e8 19 fe ff ff       	call   140005bf0 <bitstob>
   140005dd7:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140005ddb:	8b 85 98 00 00 00    	mov    0x98(%rbp),%eax
   140005de1:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140005de4:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005de8:	48 89 c1             	mov    %rax,%rcx
   140005deb:	e8 ee 15 00 00       	call   1400073de <__trailz_D2A>
   140005df0:	89 45 b8             	mov    %eax,-0x48(%rbp)
   140005df3:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140005df6:	85 c0                	test   %eax,%eax
   140005df8:	0f 84 91 00 00 00    	je     140005e8f <__gdtoa+0x175>
   140005dfe:	eb 6c                	jmp    140005e6c <__gdtoa+0x152>
   140005e00:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
   140005e07:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   140005e0d:	48 8b 85 c8 00 00 00 	mov    0xc8(%rbp),%rax
   140005e14:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140005e1a:	48 89 c2             	mov    %rax,%rdx
   140005e1d:	48 8d 05 cc 56 00 00 	lea    0x56cc(%rip),%rax        # 14000b4f0 <.rdata>
   140005e24:	48 89 c1             	mov    %rax,%rcx
   140005e27:	e8 76 fa ff ff       	call   1400058a2 <__nrv_alloc_D2A>
   140005e2c:	e9 09 14 00 00       	jmp    14000723a <__gdtoa+0x1520>
   140005e31:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
   140005e38:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   140005e3e:	48 8b 85 c8 00 00 00 	mov    0xc8(%rbp),%rax
   140005e45:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140005e4b:	48 89 c2             	mov    %rax,%rdx
   140005e4e:	48 8d 05 a4 56 00 00 	lea    0x56a4(%rip),%rax        # 14000b4f9 <.rdata+0x9>
   140005e55:	48 89 c1             	mov    %rax,%rcx
   140005e58:	e8 45 fa ff ff       	call   1400058a2 <__nrv_alloc_D2A>
   140005e5d:	e9 d8 13 00 00       	jmp    14000723a <__gdtoa+0x1520>
   140005e62:	b8 00 00 00 00       	mov    $0x0,%eax
   140005e67:	e9 ce 13 00 00       	jmp    14000723a <__gdtoa+0x1520>
   140005e6c:	8b 55 b8             	mov    -0x48(%rbp),%edx
   140005e6f:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005e73:	48 89 c1             	mov    %rax,%rcx
   140005e76:	e8 0a 14 00 00       	call   140007285 <__rshift_D2A>
   140005e7b:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140005e7e:	01 85 98 00 00 00    	add    %eax,0x98(%rbp)
   140005e84:	8b 45 bc             	mov    -0x44(%rbp),%eax
   140005e87:	8b 55 b8             	mov    -0x48(%rbp),%edx
   140005e8a:	29 d0                	sub    %edx,%eax
   140005e8c:	89 45 bc             	mov    %eax,-0x44(%rbp)
   140005e8f:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005e93:	8b 40 14             	mov    0x14(%rax),%eax
   140005e96:	85 c0                	test   %eax,%eax
   140005e98:	75 40                	jne    140005eda <__gdtoa+0x1c0>
   140005e9a:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005e9e:	48 89 c1             	mov    %rax,%rcx
   140005ea1:	e8 42 19 00 00       	call   1400077e8 <__Bfree_D2A>
   140005ea6:	eb 01                	jmp    140005ea9 <__gdtoa+0x18f>
   140005ea8:	90                   	nop
   140005ea9:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
   140005eb0:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140005eb6:	48 8b 85 c8 00 00 00 	mov    0xc8(%rbp),%rax
   140005ebd:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140005ec3:	48 89 c2             	mov    %rax,%rdx
   140005ec6:	48 8d 05 30 56 00 00 	lea    0x5630(%rip),%rax        # 14000b4fd <.rdata+0xd>
   140005ecd:	48 89 c1             	mov    %rax,%rcx
   140005ed0:	e8 cd f9 ff ff       	call   1400058a2 <__nrv_alloc_D2A>
   140005ed5:	e9 60 13 00 00       	jmp    14000723a <__gdtoa+0x1520>
   140005eda:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
   140005ede:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140005ee2:	48 89 c1             	mov    %rax,%rcx
   140005ee5:	e8 29 23 00 00       	call   140008213 <__b2d_D2A>
   140005eea:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140005eef:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   140005ef3:	8b 55 bc             	mov    -0x44(%rbp),%edx
   140005ef6:	8b 85 98 00 00 00    	mov    0x98(%rbp),%eax
   140005efc:	01 d0                	add    %edx,%eax
   140005efe:	83 e8 01             	sub    $0x1,%eax
   140005f01:	89 45 b8             	mov    %eax,-0x48(%rbp)
   140005f04:	8b 45 b4             	mov    -0x4c(%rbp),%eax
   140005f07:	25 ff ff 0f 00       	and    $0xfffff,%eax
   140005f0c:	89 45 b4             	mov    %eax,-0x4c(%rbp)
   140005f0f:	8b 45 b4             	mov    -0x4c(%rbp),%eax
   140005f12:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   140005f17:	89 45 b4             	mov    %eax,-0x4c(%rbp)
   140005f1a:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   140005f1f:	f2 0f 10 15 f1 55 00 	movsd  0x55f1(%rip),%xmm2        # 14000b518 <.rdata+0x28>
   140005f26:	00 
   140005f27:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140005f2b:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
   140005f2f:	f2 0f 10 05 e9 55 00 	movsd  0x55e9(%rip),%xmm0        # 14000b520 <.rdata+0x30>
   140005f36:	00 
   140005f37:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   140005f3b:	f2 0f 10 05 e5 55 00 	movsd  0x55e5(%rip),%xmm0        # 14000b528 <.rdata+0x38>
   140005f42:	00 
   140005f43:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   140005f47:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140005f4a:	66 0f ef d2          	pxor   %xmm2,%xmm2
   140005f4e:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   140005f52:	f2 0f 10 05 d6 55 00 	movsd  0x55d6(%rip),%xmm0        # 14000b530 <.rdata+0x40>
   140005f59:	00 
   140005f5a:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
   140005f5e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   140005f62:	f2 0f 11 45 10       	movsd  %xmm0,0x10(%rbp)
   140005f67:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140005f6a:	89 45 60             	mov    %eax,0x60(%rbp)
   140005f6d:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   140005f71:	79 03                	jns    140005f76 <__gdtoa+0x25c>
   140005f73:	f7 5d 60             	negl   0x60(%rbp)
   140005f76:	81 6d 60 35 04 00 00 	subl   $0x435,0x60(%rbp)
   140005f7d:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   140005f81:	7e 23                	jle    140005fa6 <__gdtoa+0x28c>
   140005f83:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140005f87:	f2 0f 2a 4d 60       	cvtsi2sdl 0x60(%rbp),%xmm1
   140005f8c:	f2 0f 10 05 a4 55 00 	movsd  0x55a4(%rip),%xmm0        # 14000b538 <.rdata+0x48>
   140005f93:	00 
   140005f94:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140005f98:	f2 0f 10 4d 10       	movsd  0x10(%rbp),%xmm1
   140005f9d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   140005fa1:	f2 0f 11 45 10       	movsd  %xmm0,0x10(%rbp)
   140005fa6:	f2 0f 10 45 10       	movsd  0x10(%rbp),%xmm0
   140005fab:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   140005faf:	89 45 5c             	mov    %eax,0x5c(%rbp)
   140005fb2:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140005fb6:	66 0f 2f 45 10       	comisd 0x10(%rbp),%xmm0
   140005fbb:	76 1b                	jbe    140005fd8 <__gdtoa+0x2be>
   140005fbd:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140005fc1:	f2 0f 2a 45 5c       	cvtsi2sdl 0x5c(%rbp),%xmm0
   140005fc6:	66 0f 2e 45 10       	ucomisd 0x10(%rbp),%xmm0
   140005fcb:	7a 07                	jp     140005fd4 <__gdtoa+0x2ba>
   140005fcd:	66 0f 2e 45 10       	ucomisd 0x10(%rbp),%xmm0
   140005fd2:	74 04                	je     140005fd8 <__gdtoa+0x2be>
   140005fd4:	83 6d 5c 01          	subl   $0x1,0x5c(%rbp)
   140005fd8:	c7 45 58 01 00 00 00 	movl   $0x1,0x58(%rbp)
   140005fdf:	8b 55 b4             	mov    -0x4c(%rbp),%edx
   140005fe2:	8b 4d bc             	mov    -0x44(%rbp),%ecx
   140005fe5:	8b 85 98 00 00 00    	mov    0x98(%rbp),%eax
   140005feb:	01 c8                	add    %ecx,%eax
   140005fed:	83 e8 01             	sub    $0x1,%eax
   140005ff0:	c1 e0 14             	shl    $0x14,%eax
   140005ff3:	01 d0                	add    %edx,%eax
   140005ff5:	89 45 b4             	mov    %eax,-0x4c(%rbp)
   140005ff8:	83 7d 5c 00          	cmpl   $0x0,0x5c(%rbp)
   140005ffc:	78 2e                	js     14000602c <__gdtoa+0x312>
   140005ffe:	83 7d 5c 16          	cmpl   $0x16,0x5c(%rbp)
   140006002:	7f 28                	jg     14000602c <__gdtoa+0x312>
   140006004:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006009:	48 8b 05 e0 57 00 00 	mov    0x57e0(%rip),%rax        # 14000b7f0 <.refptr.__tens_D2A>
   140006010:	8b 55 5c             	mov    0x5c(%rbp),%edx
   140006013:	48 63 d2             	movslq %edx,%rdx
   140006016:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
   14000601b:	66 0f 2f c1          	comisd %xmm1,%xmm0
   14000601f:	76 04                	jbe    140006025 <__gdtoa+0x30b>
   140006021:	83 6d 5c 01          	subl   $0x1,0x5c(%rbp)
   140006025:	c7 45 58 00 00 00 00 	movl   $0x0,0x58(%rbp)
   14000602c:	8b 45 bc             	mov    -0x44(%rbp),%eax
   14000602f:	8b 55 b8             	mov    -0x48(%rbp),%edx
   140006032:	29 d0                	sub    %edx,%eax
   140006034:	83 e8 01             	sub    $0x1,%eax
   140006037:	89 45 60             	mov    %eax,0x60(%rbp)
   14000603a:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   14000603e:	78 0f                	js     14000604f <__gdtoa+0x335>
   140006040:	c7 45 7c 00 00 00 00 	movl   $0x0,0x7c(%rbp)
   140006047:	8b 45 60             	mov    0x60(%rbp),%eax
   14000604a:	89 45 44             	mov    %eax,0x44(%rbp)
   14000604d:	eb 0f                	jmp    14000605e <__gdtoa+0x344>
   14000604f:	8b 45 60             	mov    0x60(%rbp),%eax
   140006052:	f7 d8                	neg    %eax
   140006054:	89 45 7c             	mov    %eax,0x7c(%rbp)
   140006057:	c7 45 44 00 00 00 00 	movl   $0x0,0x44(%rbp)
   14000605e:	83 7d 5c 00          	cmpl   $0x0,0x5c(%rbp)
   140006062:	78 15                	js     140006079 <__gdtoa+0x35f>
   140006064:	c7 45 78 00 00 00 00 	movl   $0x0,0x78(%rbp)
   14000606b:	8b 45 5c             	mov    0x5c(%rbp),%eax
   14000606e:	89 45 40             	mov    %eax,0x40(%rbp)
   140006071:	8b 45 5c             	mov    0x5c(%rbp),%eax
   140006074:	01 45 44             	add    %eax,0x44(%rbp)
   140006077:	eb 15                	jmp    14000608e <__gdtoa+0x374>
   140006079:	8b 45 5c             	mov    0x5c(%rbp),%eax
   14000607c:	29 45 7c             	sub    %eax,0x7c(%rbp)
   14000607f:	8b 45 5c             	mov    0x5c(%rbp),%eax
   140006082:	f7 d8                	neg    %eax
   140006084:	89 45 78             	mov    %eax,0x78(%rbp)
   140006087:	c7 45 40 00 00 00 00 	movl   $0x0,0x40(%rbp)
   14000608e:	83 bd b0 00 00 00 00 	cmpl   $0x0,0xb0(%rbp)
   140006095:	78 09                	js     1400060a0 <__gdtoa+0x386>
   140006097:	83 bd b0 00 00 00 09 	cmpl   $0x9,0xb0(%rbp)
   14000609e:	7e 0a                	jle    1400060aa <__gdtoa+0x390>
   1400060a0:	c7 85 b0 00 00 00 00 	movl   $0x0,0xb0(%rbp)
   1400060a7:	00 00 00 
   1400060aa:	c7 45 38 01 00 00 00 	movl   $0x1,0x38(%rbp)
   1400060b1:	83 bd b0 00 00 00 05 	cmpl   $0x5,0xb0(%rbp)
   1400060b8:	7e 10                	jle    1400060ca <__gdtoa+0x3b0>
   1400060ba:	83 ad b0 00 00 00 04 	subl   $0x4,0xb0(%rbp)
   1400060c1:	c7 45 38 00 00 00 00 	movl   $0x0,0x38(%rbp)
   1400060c8:	eb 1b                	jmp    1400060e5 <__gdtoa+0x3cb>
   1400060ca:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400060cd:	3d f9 03 00 00       	cmp    $0x3f9,%eax
   1400060d2:	7f 0a                	jg     1400060de <__gdtoa+0x3c4>
   1400060d4:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400060d7:	3d 02 fc ff ff       	cmp    $0xfffffc02,%eax
   1400060dc:	7d 07                	jge    1400060e5 <__gdtoa+0x3cb>
   1400060de:	c7 45 38 00 00 00 00 	movl   $0x0,0x38(%rbp)
   1400060e5:	c7 45 54 01 00 00 00 	movl   $0x1,0x54(%rbp)
   1400060ec:	c7 45 68 ff ff ff ff 	movl   $0xffffffff,0x68(%rbp)
   1400060f3:	8b 45 68             	mov    0x68(%rbp),%eax
   1400060f6:	89 45 6c             	mov    %eax,0x6c(%rbp)
   1400060f9:	83 bd b0 00 00 00 05 	cmpl   $0x5,0xb0(%rbp)
   140006100:	0f 87 b7 00 00 00    	ja     1400061bd <__gdtoa+0x4a3>
   140006106:	8b 85 b0 00 00 00    	mov    0xb0(%rbp),%eax
   14000610c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140006113:	00 
   140006114:	48 8d 05 e5 53 00 00 	lea    0x53e5(%rip),%rax        # 14000b500 <.rdata+0x10>
   14000611b:	8b 04 02             	mov    (%rdx,%rax,1),%eax
   14000611e:	48 98                	cltq   
   140006120:	48 8d 15 d9 53 00 00 	lea    0x53d9(%rip),%rdx        # 14000b500 <.rdata+0x10>
   140006127:	48 01 d0             	add    %rdx,%rax
   14000612a:	ff e0                	jmp    *%rax
   14000612c:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140006130:	f2 0f 2a 4d 00       	cvtsi2sdl 0x0(%rbp),%xmm1
   140006135:	f2 0f 10 05 03 54 00 	movsd  0x5403(%rip),%xmm0        # 14000b540 <.rdata+0x50>
   14000613c:	00 
   14000613d:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140006141:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   140006145:	83 c0 03             	add    $0x3,%eax
   140006148:	89 45 b8             	mov    %eax,-0x48(%rbp)
   14000614b:	c7 85 b8 00 00 00 00 	movl   $0x0,0xb8(%rbp)
   140006152:	00 00 00 
   140006155:	eb 66                	jmp    1400061bd <__gdtoa+0x4a3>
   140006157:	c7 45 54 00 00 00 00 	movl   $0x0,0x54(%rbp)
   14000615e:	83 bd b8 00 00 00 00 	cmpl   $0x0,0xb8(%rbp)
   140006165:	7f 0a                	jg     140006171 <__gdtoa+0x457>
   140006167:	c7 85 b8 00 00 00 01 	movl   $0x1,0xb8(%rbp)
   14000616e:	00 00 00 
   140006171:	8b 85 b8 00 00 00    	mov    0xb8(%rbp),%eax
   140006177:	89 45 b8             	mov    %eax,-0x48(%rbp)
   14000617a:	8b 45 b8             	mov    -0x48(%rbp),%eax
   14000617d:	89 45 68             	mov    %eax,0x68(%rbp)
   140006180:	8b 45 68             	mov    0x68(%rbp),%eax
   140006183:	89 45 6c             	mov    %eax,0x6c(%rbp)
   140006186:	eb 35                	jmp    1400061bd <__gdtoa+0x4a3>
   140006188:	c7 45 54 00 00 00 00 	movl   $0x0,0x54(%rbp)
   14000618f:	8b 95 b8 00 00 00    	mov    0xb8(%rbp),%edx
   140006195:	8b 45 5c             	mov    0x5c(%rbp),%eax
   140006198:	01 d0                	add    %edx,%eax
   14000619a:	83 c0 01             	add    $0x1,%eax
   14000619d:	89 45 b8             	mov    %eax,-0x48(%rbp)
   1400061a0:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400061a3:	89 45 6c             	mov    %eax,0x6c(%rbp)
   1400061a6:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400061a9:	83 e8 01             	sub    $0x1,%eax
   1400061ac:	89 45 68             	mov    %eax,0x68(%rbp)
   1400061af:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400061b2:	85 c0                	test   %eax,%eax
   1400061b4:	7f 07                	jg     1400061bd <__gdtoa+0x4a3>
   1400061b6:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%rbp)
   1400061bd:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400061c0:	89 c1                	mov    %eax,%ecx
   1400061c2:	e8 89 f6 ff ff       	call   140005850 <__rv_alloc_D2A>
   1400061c7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400061cb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400061cf:	48 89 45 08          	mov    %rax,0x8(%rbp)
   1400061d3:	48 8b 85 90 00 00 00 	mov    0x90(%rbp),%rax
   1400061da:	8b 40 0c             	mov    0xc(%rax),%eax
   1400061dd:	83 e8 01             	sub    $0x1,%eax
   1400061e0:	89 45 48             	mov    %eax,0x48(%rbp)
   1400061e3:	83 7d 48 00          	cmpl   $0x0,0x48(%rbp)
   1400061e7:	74 22                	je     14000620b <__gdtoa+0x4f1>
   1400061e9:	83 7d 48 00          	cmpl   $0x0,0x48(%rbp)
   1400061ed:	79 07                	jns    1400061f6 <__gdtoa+0x4dc>
   1400061ef:	c7 45 48 02 00 00 00 	movl   $0x2,0x48(%rbp)
   1400061f6:	8b 45 04             	mov    0x4(%rbp),%eax
   1400061f9:	83 e0 08             	and    $0x8,%eax
   1400061fc:	85 c0                	test   %eax,%eax
   1400061fe:	74 0b                	je     14000620b <__gdtoa+0x4f1>
   140006200:	b8 03 00 00 00       	mov    $0x3,%eax
   140006205:	2b 45 48             	sub    0x48(%rbp),%eax
   140006208:	89 45 48             	mov    %eax,0x48(%rbp)
   14000620b:	83 7d 6c 00          	cmpl   $0x0,0x6c(%rbp)
   14000620f:	0f 88 b9 04 00 00    	js     1400066ce <__gdtoa+0x9b4>
   140006215:	83 7d 6c 0e          	cmpl   $0xe,0x6c(%rbp)
   140006219:	0f 8f af 04 00 00    	jg     1400066ce <__gdtoa+0x9b4>
   14000621f:	83 7d 38 00          	cmpl   $0x0,0x38(%rbp)
   140006223:	0f 84 a5 04 00 00    	je     1400066ce <__gdtoa+0x9b4>
   140006229:	83 7d 48 00          	cmpl   $0x0,0x48(%rbp)
   14000622d:	0f 85 9b 04 00 00    	jne    1400066ce <__gdtoa+0x9b4>
   140006233:	83 7d 5c 00          	cmpl   $0x0,0x5c(%rbp)
   140006237:	0f 85 91 04 00 00    	jne    1400066ce <__gdtoa+0x9b4>
   14000623d:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%rbp)
   140006244:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   140006249:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
   14000624e:	8b 45 5c             	mov    0x5c(%rbp),%eax
   140006251:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   140006254:	8b 45 6c             	mov    0x6c(%rbp),%eax
   140006257:	89 45 e0             	mov    %eax,-0x20(%rbp)
   14000625a:	c7 45 70 02 00 00 00 	movl   $0x2,0x70(%rbp)
   140006261:	83 7d 5c 00          	cmpl   $0x0,0x5c(%rbp)
   140006265:	0f 8e 98 00 00 00    	jle    140006303 <__gdtoa+0x5e9>
   14000626b:	8b 45 5c             	mov    0x5c(%rbp),%eax
   14000626e:	83 e0 0f             	and    $0xf,%eax
   140006271:	89 c2                	mov    %eax,%edx
   140006273:	48 8b 05 76 55 00 00 	mov    0x5576(%rip),%rax        # 14000b7f0 <.refptr.__tens_D2A>
   14000627a:	48 63 d2             	movslq %edx,%rdx
   14000627d:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
   140006282:	f2 0f 11 45 10       	movsd  %xmm0,0x10(%rbp)
   140006287:	8b 45 5c             	mov    0x5c(%rbp),%eax
   14000628a:	c1 f8 04             	sar    $0x4,%eax
   14000628d:	89 45 60             	mov    %eax,0x60(%rbp)
   140006290:	8b 45 60             	mov    0x60(%rbp),%eax
   140006293:	83 e0 10             	and    $0x10,%eax
   140006296:	85 c0                	test   %eax,%eax
   140006298:	74 5e                	je     1400062f8 <__gdtoa+0x5de>
   14000629a:	83 65 60 0f          	andl   $0xf,0x60(%rbp)
   14000629e:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400062a3:	48 8b 05 96 54 00 00 	mov    0x5496(%rip),%rax        # 14000b740 <.refptr.__bigtens_D2A>
   1400062aa:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
   1400062af:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
   1400062b3:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   1400062b8:	83 45 70 01          	addl   $0x1,0x70(%rbp)
   1400062bc:	eb 3a                	jmp    1400062f8 <__gdtoa+0x5de>
   1400062be:	8b 45 60             	mov    0x60(%rbp),%eax
   1400062c1:	83 e0 01             	and    $0x1,%eax
   1400062c4:	85 c0                	test   %eax,%eax
   1400062c6:	74 24                	je     1400062ec <__gdtoa+0x5d2>
   1400062c8:	83 45 70 01          	addl   $0x1,0x70(%rbp)
   1400062cc:	8b 55 b8             	mov    -0x48(%rbp),%edx
   1400062cf:	48 8b 05 6a 54 00 00 	mov    0x546a(%rip),%rax        # 14000b740 <.refptr.__bigtens_D2A>
   1400062d6:	48 63 d2             	movslq %edx,%rdx
   1400062d9:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
   1400062de:	f2 0f 10 4d 10       	movsd  0x10(%rbp),%xmm1
   1400062e3:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   1400062e7:	f2 0f 11 45 10       	movsd  %xmm0,0x10(%rbp)
   1400062ec:	d1 7d 60             	sarl   0x60(%rbp)
   1400062ef:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400062f2:	83 c0 01             	add    $0x1,%eax
   1400062f5:	89 45 b8             	mov    %eax,-0x48(%rbp)
   1400062f8:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   1400062fc:	75 c0                	jne    1400062be <__gdtoa+0x5a4>
   1400062fe:	e9 8b 00 00 00       	jmp    14000638e <__gdtoa+0x674>
   140006303:	f2 0f 10 05 3d 52 00 	movsd  0x523d(%rip),%xmm0        # 14000b548 <.rdata+0x58>
   14000630a:	00 
   14000630b:	f2 0f 11 45 10       	movsd  %xmm0,0x10(%rbp)
   140006310:	8b 45 5c             	mov    0x5c(%rbp),%eax
   140006313:	f7 d8                	neg    %eax
   140006315:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140006318:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
   14000631c:	74 70                	je     14000638e <__gdtoa+0x674>
   14000631e:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006323:	8b 45 dc             	mov    -0x24(%rbp),%eax
   140006326:	83 e0 0f             	and    $0xf,%eax
   140006329:	89 c2                	mov    %eax,%edx
   14000632b:	48 8b 05 be 54 00 00 	mov    0x54be(%rip),%rax        # 14000b7f0 <.refptr.__tens_D2A>
   140006332:	48 63 d2             	movslq %edx,%rdx
   140006335:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
   14000633a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   14000633e:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   140006343:	8b 45 dc             	mov    -0x24(%rbp),%eax
   140006346:	c1 f8 04             	sar    $0x4,%eax
   140006349:	89 45 60             	mov    %eax,0x60(%rbp)
   14000634c:	eb 3a                	jmp    140006388 <__gdtoa+0x66e>
   14000634e:	8b 45 60             	mov    0x60(%rbp),%eax
   140006351:	83 e0 01             	and    $0x1,%eax
   140006354:	85 c0                	test   %eax,%eax
   140006356:	74 24                	je     14000637c <__gdtoa+0x662>
   140006358:	83 45 70 01          	addl   $0x1,0x70(%rbp)
   14000635c:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006361:	8b 55 b8             	mov    -0x48(%rbp),%edx
   140006364:	48 8b 05 d5 53 00 00 	mov    0x53d5(%rip),%rax        # 14000b740 <.refptr.__bigtens_D2A>
   14000636b:	48 63 d2             	movslq %edx,%rdx
   14000636e:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
   140006373:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140006377:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   14000637c:	d1 7d 60             	sarl   0x60(%rbp)
   14000637f:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006382:	83 c0 01             	add    $0x1,%eax
   140006385:	89 45 b8             	mov    %eax,-0x48(%rbp)
   140006388:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   14000638c:	75 c0                	jne    14000634e <__gdtoa+0x634>
   14000638e:	83 7d 58 00          	cmpl   $0x0,0x58(%rbp)
   140006392:	74 47                	je     1400063db <__gdtoa+0x6c1>
   140006394:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006399:	f2 0f 10 05 a7 51 00 	movsd  0x51a7(%rip),%xmm0        # 14000b548 <.rdata+0x58>
   1400063a0:	00 
   1400063a1:	66 0f 2f c1          	comisd %xmm1,%xmm0
   1400063a5:	76 34                	jbe    1400063db <__gdtoa+0x6c1>
   1400063a7:	83 7d 6c 00          	cmpl   $0x0,0x6c(%rbp)
   1400063ab:	7e 2e                	jle    1400063db <__gdtoa+0x6c1>
   1400063ad:	83 7d 68 00          	cmpl   $0x0,0x68(%rbp)
   1400063b1:	0f 8e f5 02 00 00    	jle    1400066ac <__gdtoa+0x992>
   1400063b7:	8b 45 68             	mov    0x68(%rbp),%eax
   1400063ba:	89 45 6c             	mov    %eax,0x6c(%rbp)
   1400063bd:	83 6d 5c 01          	subl   $0x1,0x5c(%rbp)
   1400063c1:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   1400063c6:	f2 0f 10 05 82 51 00 	movsd  0x5182(%rip),%xmm0        # 14000b550 <.rdata+0x60>
   1400063cd:	00 
   1400063ce:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   1400063d2:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   1400063d7:	83 45 70 01          	addl   $0x1,0x70(%rbp)
   1400063db:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400063df:	f2 0f 2a 4d 70       	cvtsi2sdl 0x70(%rbp),%xmm1
   1400063e4:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400063e9:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   1400063ed:	f2 0f 10 05 63 51 00 	movsd  0x5163(%rip),%xmm0        # 14000b558 <.rdata+0x68>
   1400063f4:	00 
   1400063f5:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   1400063f9:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
   1400063fe:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140006401:	2d 00 00 40 03       	sub    $0x3400000,%eax
   140006406:	89 45 ac             	mov    %eax,-0x54(%rbp)
   140006409:	83 7d 6c 00          	cmpl   $0x0,0x6c(%rbp)
   14000640d:	75 5f                	jne    14000646e <__gdtoa+0x754>
   14000640f:	48 c7 45 20 00 00 00 	movq   $0x0,0x20(%rbp)
   140006416:	00 
   140006417:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000641b:	48 89 45 18          	mov    %rax,0x18(%rbp)
   14000641f:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   140006424:	f2 0f 10 0d 34 51 00 	movsd  0x5134(%rip),%xmm1        # 14000b560 <.rdata+0x70>
   14000642b:	00 
   14000642c:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140006430:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   140006435:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   14000643a:	f2 0f 10 4d a8       	movsd  -0x58(%rbp),%xmm1
   14000643f:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140006443:	0f 87 c5 07 00 00    	ja     140006c0e <__gdtoa+0xef4>
   140006449:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   14000644e:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
   140006453:	f3 0f 7e 15 15 51 00 	movq   0x5115(%rip),%xmm2        # 14000b570 <.rdata+0x80>
   14000645a:	00 
   14000645b:	66 0f 57 c2          	xorpd  %xmm2,%xmm0
   14000645f:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140006463:	0f 87 87 07 00 00    	ja     140006bf0 <__gdtoa+0xed6>
   140006469:	e9 42 02 00 00       	jmp    1400066b0 <__gdtoa+0x996>
   14000646e:	83 7d 54 00          	cmpl   $0x0,0x54(%rbp)
   140006472:	0f 84 22 01 00 00    	je     14000659a <__gdtoa+0x880>
   140006478:	f2 0f 10 4d 10       	movsd  0x10(%rbp),%xmm1
   14000647d:	f2 0f 10 05 fb 50 00 	movsd  0x50fb(%rip),%xmm0        # 14000b580 <.rdata+0x90>
   140006484:	00 
   140006485:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140006489:	8b 45 6c             	mov    0x6c(%rbp),%eax
   14000648c:	8d 50 ff             	lea    -0x1(%rax),%edx
   14000648f:	48 8b 05 5a 53 00 00 	mov    0x535a(%rip),%rax        # 14000b7f0 <.refptr.__tens_D2A>
   140006496:	48 63 d2             	movslq %edx,%rdx
   140006499:	f2 0f 10 0c d0       	movsd  (%rax,%rdx,8),%xmm1
   14000649e:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
   1400064a2:	f2 0f 10 4d a8       	movsd  -0x58(%rbp),%xmm1
   1400064a7:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   1400064ab:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
   1400064b0:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%rbp)
   1400064b7:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400064bc:	f2 0f 5e 45 10       	divsd  0x10(%rbp),%xmm0
   1400064c1:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   1400064c5:	89 45 d8             	mov    %eax,-0x28(%rbp)
   1400064c8:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400064cd:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400064d1:	f2 0f 2a 4d d8       	cvtsi2sdl -0x28(%rbp),%xmm1
   1400064d6:	f2 0f 59 4d 10       	mulsd  0x10(%rbp),%xmm1
   1400064db:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   1400064df:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   1400064e4:	8b 45 d8             	mov    -0x28(%rbp),%eax
   1400064e7:	8d 48 30             	lea    0x30(%rax),%ecx
   1400064ea:	48 8b 45 08          	mov    0x8(%rbp),%rax
   1400064ee:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400064f2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   1400064f6:	89 ca                	mov    %ecx,%edx
   1400064f8:	88 10                	mov    %dl,(%rax)
   1400064fa:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   1400064ff:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
   140006504:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140006508:	76 29                	jbe    140006533 <__gdtoa+0x819>
   14000650a:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   14000650f:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140006513:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   140006517:	7a 0e                	jp     140006527 <__gdtoa+0x80d>
   140006519:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000651d:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   140006521:	0f 84 ba 0c 00 00    	je     1400071e1 <__gdtoa+0x14c7>
   140006527:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   14000652e:	e9 ae 0c 00 00       	jmp    1400071e1 <__gdtoa+0x14c7>
   140006533:	f2 0f 10 55 b0       	movsd  -0x50(%rbp),%xmm2
   140006538:	f2 0f 10 45 10       	movsd  0x10(%rbp),%xmm0
   14000653d:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140006541:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
   140006545:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
   14000654a:	66 0f 2f c1          	comisd %xmm1,%xmm0
   14000654e:	0f 87 c3 02 00 00    	ja     140006817 <__gdtoa+0xafd>
   140006554:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006557:	83 c0 01             	add    $0x1,%eax
   14000655a:	89 45 b8             	mov    %eax,-0x48(%rbp)
   14000655d:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006560:	39 45 6c             	cmp    %eax,0x6c(%rbp)
   140006563:	0f 8e 46 01 00 00    	jle    1400066af <__gdtoa+0x995>
   140006569:	f2 0f 10 4d a8       	movsd  -0x58(%rbp),%xmm1
   14000656e:	f2 0f 10 05 da 4f 00 	movsd  0x4fda(%rip),%xmm0        # 14000b550 <.rdata+0x60>
   140006575:	00 
   140006576:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   14000657a:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
   14000657f:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006584:	f2 0f 10 05 c4 4f 00 	movsd  0x4fc4(%rip),%xmm0        # 14000b550 <.rdata+0x60>
   14000658b:	00 
   14000658c:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140006590:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   140006595:	e9 1d ff ff ff       	jmp    1400064b7 <__gdtoa+0x79d>
   14000659a:	f2 0f 10 4d a8       	movsd  -0x58(%rbp),%xmm1
   14000659f:	8b 45 6c             	mov    0x6c(%rbp),%eax
   1400065a2:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400065a5:	48 8b 05 44 52 00 00 	mov    0x5244(%rip),%rax        # 14000b7f0 <.refptr.__tens_D2A>
   1400065ac:	48 63 d2             	movslq %edx,%rdx
   1400065af:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
   1400065b4:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   1400065b8:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
   1400065bd:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%rbp)
   1400065c4:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400065c9:	f2 0f 5e 45 10       	divsd  0x10(%rbp),%xmm0
   1400065ce:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   1400065d2:	89 45 d8             	mov    %eax,-0x28(%rbp)
   1400065d5:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
   1400065d9:	74 1c                	je     1400065f7 <__gdtoa+0x8dd>
   1400065db:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400065e0:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400065e4:	f2 0f 2a 4d d8       	cvtsi2sdl -0x28(%rbp),%xmm1
   1400065e9:	f2 0f 59 4d 10       	mulsd  0x10(%rbp),%xmm1
   1400065ee:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   1400065f2:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   1400065f7:	8b 45 d8             	mov    -0x28(%rbp),%eax
   1400065fa:	8d 48 30             	lea    0x30(%rax),%ecx
   1400065fd:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006601:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006605:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006609:	89 ca                	mov    %ecx,%edx
   14000660b:	88 10                	mov    %dl,(%rax)
   14000660d:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006610:	39 45 6c             	cmp    %eax,0x6c(%rbp)
   140006613:	75 73                	jne    140006688 <__gdtoa+0x96e>
   140006615:	f2 0f 10 4d 10       	movsd  0x10(%rbp),%xmm1
   14000661a:	f2 0f 10 05 5e 4f 00 	movsd  0x4f5e(%rip),%xmm0        # 14000b580 <.rdata+0x90>
   140006621:	00 
   140006622:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140006626:	f2 0f 11 45 10       	movsd  %xmm0,0x10(%rbp)
   14000662b:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   140006630:	f2 0f 10 4d a8       	movsd  -0x58(%rbp),%xmm1
   140006635:	f2 0f 58 4d 10       	addsd  0x10(%rbp),%xmm1
   14000663a:	66 0f 2f c1          	comisd %xmm1,%xmm0
   14000663e:	0f 87 d6 01 00 00    	ja     14000681a <__gdtoa+0xb00>
   140006644:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006649:	f2 0f 10 55 a8       	movsd  -0x58(%rbp),%xmm2
   14000664e:	f2 0f 10 45 10       	movsd  0x10(%rbp),%xmm0
   140006653:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   140006657:	66 0f 2f c1          	comisd %xmm1,%xmm0
   14000665b:	77 02                	ja     14000665f <__gdtoa+0x945>
   14000665d:	eb 51                	jmp    1400066b0 <__gdtoa+0x996>
   14000665f:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   140006664:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140006668:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   14000666c:	7a 0e                	jp     14000667c <__gdtoa+0x962>
   14000666e:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140006672:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   140006676:	0f 84 f4 01 00 00    	je     140006870 <__gdtoa+0xb56>
   14000667c:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   140006683:	e9 e8 01 00 00       	jmp    140006870 <__gdtoa+0xb56>
   140006688:	8b 45 b8             	mov    -0x48(%rbp),%eax
   14000668b:	83 c0 01             	add    $0x1,%eax
   14000668e:	89 45 b8             	mov    %eax,-0x48(%rbp)
   140006691:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006696:	f2 0f 10 05 b2 4e 00 	movsd  0x4eb2(%rip),%xmm0        # 14000b550 <.rdata+0x60>
   14000669d:	00 
   14000669e:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   1400066a2:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   1400066a7:	e9 18 ff ff ff       	jmp    1400065c4 <__gdtoa+0x8aa>
   1400066ac:	90                   	nop
   1400066ad:	eb 01                	jmp    1400066b0 <__gdtoa+0x996>
   1400066af:	90                   	nop
   1400066b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400066b4:	48 89 45 08          	mov    %rax,0x8(%rbp)
   1400066b8:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
   1400066bd:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   1400066c2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   1400066c5:	89 45 5c             	mov    %eax,0x5c(%rbp)
   1400066c8:	8b 45 e0             	mov    -0x20(%rbp),%eax
   1400066cb:	89 45 6c             	mov    %eax,0x6c(%rbp)
   1400066ce:	83 bd 98 00 00 00 00 	cmpl   $0x0,0x98(%rbp)
   1400066d5:	0f 88 d8 01 00 00    	js     1400068b3 <__gdtoa+0xb99>
   1400066db:	48 8b 85 90 00 00 00 	mov    0x90(%rbp),%rax
   1400066e2:	8b 40 14             	mov    0x14(%rax),%eax
   1400066e5:	39 45 5c             	cmp    %eax,0x5c(%rbp)
   1400066e8:	0f 8f c5 01 00 00    	jg     1400068b3 <__gdtoa+0xb99>
   1400066ee:	48 8b 05 fb 50 00 00 	mov    0x50fb(%rip),%rax        # 14000b7f0 <.refptr.__tens_D2A>
   1400066f5:	8b 55 5c             	mov    0x5c(%rbp),%edx
   1400066f8:	48 63 d2             	movslq %edx,%rdx
   1400066fb:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
   140006700:	f2 0f 11 45 10       	movsd  %xmm0,0x10(%rbp)
   140006705:	83 bd b8 00 00 00 00 	cmpl   $0x0,0xb8(%rbp)
   14000670c:	79 45                	jns    140006753 <__gdtoa+0xa39>
   14000670e:	83 7d 6c 00          	cmpl   $0x0,0x6c(%rbp)
   140006712:	7f 3f                	jg     140006753 <__gdtoa+0xa39>
   140006714:	48 c7 45 20 00 00 00 	movq   $0x0,0x20(%rbp)
   14000671b:	00 
   14000671c:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006720:	48 89 45 18          	mov    %rax,0x18(%rbp)
   140006724:	83 7d 6c 00          	cmpl   $0x0,0x6c(%rbp)
   140006728:	0f 88 c5 04 00 00    	js     140006bf3 <__gdtoa+0xed9>
   14000672e:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006733:	f2 0f 10 55 10       	movsd  0x10(%rbp),%xmm2
   140006738:	f2 0f 10 05 20 4e 00 	movsd  0x4e20(%rip),%xmm0        # 14000b560 <.rdata+0x70>
   14000673f:	00 
   140006740:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
   140006744:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140006748:	0f 83 a5 04 00 00    	jae    140006bf3 <__gdtoa+0xed9>
   14000674e:	e9 bf 04 00 00       	jmp    140006c12 <__gdtoa+0xef8>
   140006753:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%rbp)
   14000675a:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   14000675f:	f2 0f 5e 45 10       	divsd  0x10(%rbp),%xmm0
   140006764:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   140006768:	89 45 d8             	mov    %eax,-0x28(%rbp)
   14000676b:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   140006770:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140006774:	f2 0f 2a 4d d8       	cvtsi2sdl -0x28(%rbp),%xmm1
   140006779:	f2 0f 59 4d 10       	mulsd  0x10(%rbp),%xmm1
   14000677e:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140006782:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   140006787:	8b 45 d8             	mov    -0x28(%rbp),%eax
   14000678a:	8d 48 30             	lea    0x30(%rax),%ecx
   14000678d:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006791:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006795:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006799:	89 ca                	mov    %ecx,%edx
   14000679b:	88 10                	mov    %dl,(%rax)
   14000679d:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400067a2:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400067a6:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   1400067aa:	7a 0e                	jp     1400067ba <__gdtoa+0xaa0>
   1400067ac:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400067b0:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   1400067b4:	0f 84 f3 00 00 00    	je     1400068ad <__gdtoa+0xb93>
   1400067ba:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400067bd:	39 45 6c             	cmp    %eax,0x6c(%rbp)
   1400067c0:	0f 85 c3 00 00 00    	jne    140006889 <__gdtoa+0xb6f>
   1400067c6:	83 7d 48 00          	cmpl   $0x0,0x48(%rbp)
   1400067ca:	74 12                	je     1400067de <__gdtoa+0xac4>
   1400067cc:	83 7d 48 01          	cmpl   $0x1,0x48(%rbp)
   1400067d0:	74 4b                	je     14000681d <__gdtoa+0xb03>
   1400067d2:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   1400067d9:	e9 07 0a 00 00       	jmp    1400071e5 <__gdtoa+0x14cb>
   1400067de:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400067e3:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
   1400067e7:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   1400067ec:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400067f1:	66 0f 2f 45 10       	comisd 0x10(%rbp),%xmm0
   1400067f6:	77 28                	ja     140006820 <__gdtoa+0xb06>
   1400067f8:	f2 0f 10 45 b0       	movsd  -0x50(%rbp),%xmm0
   1400067fd:	66 0f 2e 45 10       	ucomisd 0x10(%rbp),%xmm0
   140006802:	7a 63                	jp     140006867 <__gdtoa+0xb4d>
   140006804:	66 0f 2e 45 10       	ucomisd 0x10(%rbp),%xmm0
   140006809:	75 5c                	jne    140006867 <__gdtoa+0xb4d>
   14000680b:	8b 45 d8             	mov    -0x28(%rbp),%eax
   14000680e:	83 e0 01             	and    $0x1,%eax
   140006811:	85 c0                	test   %eax,%eax
   140006813:	74 52                	je     140006867 <__gdtoa+0xb4d>
   140006815:	eb 09                	jmp    140006820 <__gdtoa+0xb06>
   140006817:	90                   	nop
   140006818:	eb 07                	jmp    140006821 <__gdtoa+0xb07>
   14000681a:	90                   	nop
   14000681b:	eb 04                	jmp    140006821 <__gdtoa+0xb07>
   14000681d:	90                   	nop
   14000681e:	eb 01                	jmp    140006821 <__gdtoa+0xb07>
   140006820:	90                   	nop
   140006821:	c7 45 64 20 00 00 00 	movl   $0x20,0x64(%rbp)
   140006828:	eb 17                	jmp    140006841 <__gdtoa+0xb27>
   14000682a:	48 8b 45 08          	mov    0x8(%rbp),%rax
   14000682e:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
   140006832:	75 0d                	jne    140006841 <__gdtoa+0xb27>
   140006834:	83 45 5c 01          	addl   $0x1,0x5c(%rbp)
   140006838:	48 8b 45 08          	mov    0x8(%rbp),%rax
   14000683c:	c6 00 30             	movb   $0x30,(%rax)
   14000683f:	eb 10                	jmp    140006851 <__gdtoa+0xb37>
   140006841:	48 83 6d 08 01       	subq   $0x1,0x8(%rbp)
   140006846:	48 8b 45 08          	mov    0x8(%rbp),%rax
   14000684a:	0f b6 00             	movzbl (%rax),%eax
   14000684d:	3c 39                	cmp    $0x39,%al
   14000684f:	74 d9                	je     14000682a <__gdtoa+0xb10>
   140006851:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006855:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006859:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   14000685d:	0f b6 10             	movzbl (%rax),%edx
   140006860:	83 c2 01             	add    $0x1,%edx
   140006863:	88 10                	mov    %dl,(%rax)
   140006865:	eb 47                	jmp    1400068ae <__gdtoa+0xb94>
   140006867:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   14000686e:	eb 01                	jmp    140006871 <__gdtoa+0xb57>
   140006870:	90                   	nop
   140006871:	90                   	nop
   140006872:	48 83 6d 08 01       	subq   $0x1,0x8(%rbp)
   140006877:	48 8b 45 08          	mov    0x8(%rbp),%rax
   14000687b:	0f b6 00             	movzbl (%rax),%eax
   14000687e:	3c 30                	cmp    $0x30,%al
   140006880:	74 f0                	je     140006872 <__gdtoa+0xb58>
   140006882:	48 83 45 08 01       	addq   $0x1,0x8(%rbp)
   140006887:	eb 25                	jmp    1400068ae <__gdtoa+0xb94>
   140006889:	8b 45 b8             	mov    -0x48(%rbp),%eax
   14000688c:	83 c0 01             	add    $0x1,%eax
   14000688f:	89 45 b8             	mov    %eax,-0x48(%rbp)
   140006892:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
   140006897:	f2 0f 10 05 b1 4c 00 	movsd  0x4cb1(%rip),%xmm0        # 14000b550 <.rdata+0x60>
   14000689e:	00 
   14000689f:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   1400068a3:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
   1400068a8:	e9 ad fe ff ff       	jmp    14000675a <__gdtoa+0xa40>
   1400068ad:	90                   	nop
   1400068ae:	e9 32 09 00 00       	jmp    1400071e5 <__gdtoa+0x14cb>
   1400068b3:	8b 45 7c             	mov    0x7c(%rbp),%eax
   1400068b6:	89 45 50             	mov    %eax,0x50(%rbp)
   1400068b9:	8b 45 78             	mov    0x78(%rbp),%eax
   1400068bc:	89 45 4c             	mov    %eax,0x4c(%rbp)
   1400068bf:	48 c7 45 28 00 00 00 	movq   $0x0,0x28(%rbp)
   1400068c6:	00 
   1400068c7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400068cb:	48 89 45 20          	mov    %rax,0x20(%rbp)
   1400068cf:	83 7d 54 00          	cmpl   $0x0,0x54(%rbp)
   1400068d3:	0f 84 e0 00 00 00    	je     1400069b9 <__gdtoa+0xc9f>
   1400068d9:	8b 55 bc             	mov    -0x44(%rbp),%edx
   1400068dc:	8b 45 00             	mov    0x0(%rbp),%eax
   1400068df:	29 d0                	sub    %edx,%eax
   1400068e1:	89 45 b8             	mov    %eax,-0x48(%rbp)
   1400068e4:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400068e7:	8d 50 01             	lea    0x1(%rax),%edx
   1400068ea:	89 55 b8             	mov    %edx,-0x48(%rbp)
   1400068ed:	8b 95 98 00 00 00    	mov    0x98(%rbp),%edx
   1400068f3:	29 c2                	sub    %eax,%edx
   1400068f5:	48 8b 85 90 00 00 00 	mov    0x90(%rbp),%rax
   1400068fc:	8b 40 04             	mov    0x4(%rax),%eax
   1400068ff:	39 c2                	cmp    %eax,%edx
   140006901:	7d 43                	jge    140006946 <__gdtoa+0xc2c>
   140006903:	83 bd b0 00 00 00 03 	cmpl   $0x3,0xb0(%rbp)
   14000690a:	74 3a                	je     140006946 <__gdtoa+0xc2c>
   14000690c:	83 bd b0 00 00 00 05 	cmpl   $0x5,0xb0(%rbp)
   140006913:	74 31                	je     140006946 <__gdtoa+0xc2c>
   140006915:	48 8b 85 90 00 00 00 	mov    0x90(%rbp),%rax
   14000691c:	8b 50 04             	mov    0x4(%rax),%edx
   14000691f:	8b 85 98 00 00 00    	mov    0x98(%rbp),%eax
   140006925:	29 d0                	sub    %edx,%eax
   140006927:	83 c0 01             	add    $0x1,%eax
   14000692a:	89 45 b8             	mov    %eax,-0x48(%rbp)
   14000692d:	83 bd b0 00 00 00 01 	cmpl   $0x1,0xb0(%rbp)
   140006934:	7e 68                	jle    14000699e <__gdtoa+0xc84>
   140006936:	83 7d 6c 00          	cmpl   $0x0,0x6c(%rbp)
   14000693a:	7e 62                	jle    14000699e <__gdtoa+0xc84>
   14000693c:	8b 45 b8             	mov    -0x48(%rbp),%eax
   14000693f:	39 45 6c             	cmp    %eax,0x6c(%rbp)
   140006942:	7d 5a                	jge    14000699e <__gdtoa+0xc84>
   140006944:	eb 0a                	jmp    140006950 <__gdtoa+0xc36>
   140006946:	83 bd b0 00 00 00 01 	cmpl   $0x1,0xb0(%rbp)
   14000694d:	7e 50                	jle    14000699f <__gdtoa+0xc85>
   14000694f:	90                   	nop
   140006950:	8b 45 6c             	mov    0x6c(%rbp),%eax
   140006953:	83 e8 01             	sub    $0x1,%eax
   140006956:	89 45 60             	mov    %eax,0x60(%rbp)
   140006959:	8b 45 4c             	mov    0x4c(%rbp),%eax
   14000695c:	3b 45 60             	cmp    0x60(%rbp),%eax
   14000695f:	7c 08                	jl     140006969 <__gdtoa+0xc4f>
   140006961:	8b 45 60             	mov    0x60(%rbp),%eax
   140006964:	29 45 4c             	sub    %eax,0x4c(%rbp)
   140006967:	eb 19                	jmp    140006982 <__gdtoa+0xc68>
   140006969:	8b 45 4c             	mov    0x4c(%rbp),%eax
   14000696c:	29 45 60             	sub    %eax,0x60(%rbp)
   14000696f:	8b 45 60             	mov    0x60(%rbp),%eax
   140006972:	01 45 40             	add    %eax,0x40(%rbp)
   140006975:	8b 45 60             	mov    0x60(%rbp),%eax
   140006978:	01 45 78             	add    %eax,0x78(%rbp)
   14000697b:	c7 45 4c 00 00 00 00 	movl   $0x0,0x4c(%rbp)
   140006982:	8b 45 6c             	mov    0x6c(%rbp),%eax
   140006985:	89 45 b8             	mov    %eax,-0x48(%rbp)
   140006988:	8b 45 b8             	mov    -0x48(%rbp),%eax
   14000698b:	85 c0                	test   %eax,%eax
   14000698d:	79 10                	jns    14000699f <__gdtoa+0xc85>
   14000698f:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006992:	29 45 50             	sub    %eax,0x50(%rbp)
   140006995:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%rbp)
   14000699c:	eb 01                	jmp    14000699f <__gdtoa+0xc85>
   14000699e:	90                   	nop
   14000699f:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400069a2:	01 45 7c             	add    %eax,0x7c(%rbp)
   1400069a5:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400069a8:	01 45 44             	add    %eax,0x44(%rbp)
   1400069ab:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400069b0:	e8 e6 0f 00 00       	call   14000799b <__i2b_D2A>
   1400069b5:	48 89 45 20          	mov    %rax,0x20(%rbp)
   1400069b9:	83 7d 50 00          	cmpl   $0x0,0x50(%rbp)
   1400069bd:	7e 26                	jle    1400069e5 <__gdtoa+0xccb>
   1400069bf:	83 7d 44 00          	cmpl   $0x0,0x44(%rbp)
   1400069c3:	7e 20                	jle    1400069e5 <__gdtoa+0xccb>
   1400069c5:	8b 55 44             	mov    0x44(%rbp),%edx
   1400069c8:	8b 45 50             	mov    0x50(%rbp),%eax
   1400069cb:	39 c2                	cmp    %eax,%edx
   1400069cd:	0f 4e c2             	cmovle %edx,%eax
   1400069d0:	89 45 b8             	mov    %eax,-0x48(%rbp)
   1400069d3:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400069d6:	29 45 7c             	sub    %eax,0x7c(%rbp)
   1400069d9:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400069dc:	29 45 50             	sub    %eax,0x50(%rbp)
   1400069df:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400069e2:	29 45 44             	sub    %eax,0x44(%rbp)
   1400069e5:	83 7d 78 00          	cmpl   $0x0,0x78(%rbp)
   1400069e9:	7e 7e                	jle    140006a69 <__gdtoa+0xd4f>
   1400069eb:	83 7d 54 00          	cmpl   $0x0,0x54(%rbp)
   1400069ef:	74 65                	je     140006a56 <__gdtoa+0xd3c>
   1400069f1:	83 7d 4c 00          	cmpl   $0x0,0x4c(%rbp)
   1400069f5:	7e 3b                	jle    140006a32 <__gdtoa+0xd18>
   1400069f7:	8b 55 4c             	mov    0x4c(%rbp),%edx
   1400069fa:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400069fe:	48 89 c1             	mov    %rax,%rcx
   140006a01:	e8 01 12 00 00       	call   140007c07 <__pow5mult_D2A>
   140006a06:	48 89 45 20          	mov    %rax,0x20(%rbp)
   140006a0a:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   140006a0e:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006a12:	48 89 c1             	mov    %rax,%rcx
   140006a15:	e8 c7 0f 00 00       	call   1400079e1 <__mult_D2A>
   140006a1a:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140006a1e:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006a22:	48 89 c1             	mov    %rax,%rcx
   140006a25:	e8 be 0d 00 00       	call   1400077e8 <__Bfree_D2A>
   140006a2a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140006a2e:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140006a32:	8b 45 78             	mov    0x78(%rbp),%eax
   140006a35:	2b 45 4c             	sub    0x4c(%rbp),%eax
   140006a38:	89 45 60             	mov    %eax,0x60(%rbp)
   140006a3b:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   140006a3f:	74 28                	je     140006a69 <__gdtoa+0xd4f>
   140006a41:	8b 55 60             	mov    0x60(%rbp),%edx
   140006a44:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006a48:	48 89 c1             	mov    %rax,%rcx
   140006a4b:	e8 b7 11 00 00       	call   140007c07 <__pow5mult_D2A>
   140006a50:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140006a54:	eb 13                	jmp    140006a69 <__gdtoa+0xd4f>
   140006a56:	8b 55 78             	mov    0x78(%rbp),%edx
   140006a59:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006a5d:	48 89 c1             	mov    %rax,%rcx
   140006a60:	e8 a2 11 00 00       	call   140007c07 <__pow5mult_D2A>
   140006a65:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140006a69:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006a6e:	e8 28 0f 00 00       	call   14000799b <__i2b_D2A>
   140006a73:	48 89 45 18          	mov    %rax,0x18(%rbp)
   140006a77:	83 7d 40 00          	cmpl   $0x0,0x40(%rbp)
   140006a7b:	7e 13                	jle    140006a90 <__gdtoa+0xd76>
   140006a7d:	8b 55 40             	mov    0x40(%rbp),%edx
   140006a80:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140006a84:	48 89 c1             	mov    %rax,%rcx
   140006a87:	e8 7b 11 00 00       	call   140007c07 <__pow5mult_D2A>
   140006a8c:	48 89 45 18          	mov    %rax,0x18(%rbp)
   140006a90:	c7 45 3c 00 00 00 00 	movl   $0x0,0x3c(%rbp)
   140006a97:	83 bd b0 00 00 00 01 	cmpl   $0x1,0xb0(%rbp)
   140006a9e:	7f 29                	jg     140006ac9 <__gdtoa+0xdaf>
   140006aa0:	8b 45 bc             	mov    -0x44(%rbp),%eax
   140006aa3:	83 f8 01             	cmp    $0x1,%eax
   140006aa6:	75 21                	jne    140006ac9 <__gdtoa+0xdaf>
   140006aa8:	48 8b 85 90 00 00 00 	mov    0x90(%rbp),%rax
   140006aaf:	8b 40 04             	mov    0x4(%rax),%eax
   140006ab2:	83 c0 01             	add    $0x1,%eax
   140006ab5:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140006ab8:	7e 0f                	jle    140006ac9 <__gdtoa+0xdaf>
   140006aba:	83 45 7c 01          	addl   $0x1,0x7c(%rbp)
   140006abe:	83 45 44 01          	addl   $0x1,0x44(%rbp)
   140006ac2:	c7 45 3c 01 00 00 00 	movl   $0x1,0x3c(%rbp)
   140006ac9:	83 7d 40 00          	cmpl   $0x0,0x40(%rbp)
   140006acd:	74 22                	je     140006af1 <__gdtoa+0xdd7>
   140006acf:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140006ad3:	8b 40 14             	mov    0x14(%rax),%eax
   140006ad6:	8d 50 ff             	lea    -0x1(%rax),%edx
   140006ad9:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140006add:	48 63 d2             	movslq %edx,%rdx
   140006ae0:	48 83 c2 04          	add    $0x4,%rdx
   140006ae4:	8b 44 90 08          	mov    0x8(%rax,%rdx,4),%eax
   140006ae8:	89 c1                	mov    %eax,%ecx
   140006aea:	e8 f1 f0 ff ff       	call   140005be0 <__hi0bits_D2A>
   140006aef:	eb 05                	jmp    140006af6 <__gdtoa+0xddc>
   140006af1:	b8 1f 00 00 00       	mov    $0x1f,%eax
   140006af6:	2b 45 44             	sub    0x44(%rbp),%eax
   140006af9:	83 e8 04             	sub    $0x4,%eax
   140006afc:	83 e0 1f             	and    $0x1f,%eax
   140006aff:	89 45 b8             	mov    %eax,-0x48(%rbp)
   140006b02:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006b05:	01 45 50             	add    %eax,0x50(%rbp)
   140006b08:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006b0b:	01 45 7c             	add    %eax,0x7c(%rbp)
   140006b0e:	83 7d 7c 00          	cmpl   $0x0,0x7c(%rbp)
   140006b12:	7e 13                	jle    140006b27 <__gdtoa+0xe0d>
   140006b14:	8b 55 7c             	mov    0x7c(%rbp),%edx
   140006b17:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006b1b:	48 89 c1             	mov    %rax,%rcx
   140006b1e:	e8 9d 12 00 00       	call   140007dc0 <__lshift_D2A>
   140006b23:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140006b27:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006b2a:	01 45 44             	add    %eax,0x44(%rbp)
   140006b2d:	83 7d 44 00          	cmpl   $0x0,0x44(%rbp)
   140006b31:	7e 13                	jle    140006b46 <__gdtoa+0xe2c>
   140006b33:	8b 55 44             	mov    0x44(%rbp),%edx
   140006b36:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140006b3a:	48 89 c1             	mov    %rax,%rcx
   140006b3d:	e8 7e 12 00 00       	call   140007dc0 <__lshift_D2A>
   140006b42:	48 89 45 18          	mov    %rax,0x18(%rbp)
   140006b46:	83 7d 58 00          	cmpl   $0x0,0x58(%rbp)
   140006b4a:	74 5a                	je     140006ba6 <__gdtoa+0xe8c>
   140006b4c:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140006b50:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006b54:	48 89 c1             	mov    %rax,%rcx
   140006b57:	e8 ee 13 00 00       	call   140007f4a <__cmp_D2A>
   140006b5c:	85 c0                	test   %eax,%eax
   140006b5e:	79 46                	jns    140006ba6 <__gdtoa+0xe8c>
   140006b60:	83 6d 5c 01          	subl   $0x1,0x5c(%rbp)
   140006b64:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006b68:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140006b6e:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006b73:	48 89 c1             	mov    %rax,%rcx
   140006b76:	e8 f5 0c 00 00       	call   140007870 <__multadd_D2A>
   140006b7b:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140006b7f:	83 7d 54 00          	cmpl   $0x0,0x54(%rbp)
   140006b83:	74 1b                	je     140006ba0 <__gdtoa+0xe86>
   140006b85:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006b89:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140006b8f:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006b94:	48 89 c1             	mov    %rax,%rcx
   140006b97:	e8 d4 0c 00 00       	call   140007870 <__multadd_D2A>
   140006b9c:	48 89 45 20          	mov    %rax,0x20(%rbp)
   140006ba0:	8b 45 68             	mov    0x68(%rbp),%eax
   140006ba3:	89 45 6c             	mov    %eax,0x6c(%rbp)
   140006ba6:	83 7d 6c 00          	cmpl   $0x0,0x6c(%rbp)
   140006baa:	0f 8f 81 00 00 00    	jg     140006c31 <__gdtoa+0xf17>
   140006bb0:	83 bd b0 00 00 00 02 	cmpl   $0x2,0xb0(%rbp)
   140006bb7:	7e 78                	jle    140006c31 <__gdtoa+0xf17>
   140006bb9:	83 7d 6c 00          	cmpl   $0x0,0x6c(%rbp)
   140006bbd:	78 37                	js     140006bf6 <__gdtoa+0xedc>
   140006bbf:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140006bc3:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140006bc9:	ba 05 00 00 00       	mov    $0x5,%edx
   140006bce:	48 89 c1             	mov    %rax,%rcx
   140006bd1:	e8 9a 0c 00 00       	call   140007870 <__multadd_D2A>
   140006bd6:	48 89 45 18          	mov    %rax,0x18(%rbp)
   140006bda:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140006bde:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006be2:	48 89 c1             	mov    %rax,%rcx
   140006be5:	e8 60 13 00 00       	call   140007f4a <__cmp_D2A>
   140006bea:	85 c0                	test   %eax,%eax
   140006bec:	7f 23                	jg     140006c11 <__gdtoa+0xef7>
   140006bee:	eb 06                	jmp    140006bf6 <__gdtoa+0xedc>
   140006bf0:	90                   	nop
   140006bf1:	eb 04                	jmp    140006bf7 <__gdtoa+0xedd>
   140006bf3:	90                   	nop
   140006bf4:	eb 01                	jmp    140006bf7 <__gdtoa+0xedd>
   140006bf6:	90                   	nop
   140006bf7:	8b 85 b8 00 00 00    	mov    0xb8(%rbp),%eax
   140006bfd:	f7 d0                	not    %eax
   140006bff:	89 45 5c             	mov    %eax,0x5c(%rbp)
   140006c02:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   140006c09:	e9 95 05 00 00       	jmp    1400071a3 <__gdtoa+0x1489>
   140006c0e:	90                   	nop
   140006c0f:	eb 01                	jmp    140006c12 <__gdtoa+0xef8>
   140006c11:	90                   	nop
   140006c12:	c7 45 64 20 00 00 00 	movl   $0x20,0x64(%rbp)
   140006c19:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006c1d:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006c21:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006c25:	c6 00 31             	movb   $0x31,(%rax)
   140006c28:	83 45 5c 01          	addl   $0x1,0x5c(%rbp)
   140006c2c:	e9 72 05 00 00       	jmp    1400071a3 <__gdtoa+0x1489>
   140006c31:	83 7d 54 00          	cmpl   $0x0,0x54(%rbp)
   140006c35:	0f 84 12 04 00 00    	je     14000704d <__gdtoa+0x1333>
   140006c3b:	83 7d 50 00          	cmpl   $0x0,0x50(%rbp)
   140006c3f:	7e 13                	jle    140006c54 <__gdtoa+0xf3a>
   140006c41:	8b 55 50             	mov    0x50(%rbp),%edx
   140006c44:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006c48:	48 89 c1             	mov    %rax,%rcx
   140006c4b:	e8 70 11 00 00       	call   140007dc0 <__lshift_D2A>
   140006c50:	48 89 45 20          	mov    %rax,0x20(%rbp)
   140006c54:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006c58:	48 89 45 28          	mov    %rax,0x28(%rbp)
   140006c5c:	83 7d 3c 00          	cmpl   $0x0,0x3c(%rbp)
   140006c60:	74 57                	je     140006cb9 <__gdtoa+0xf9f>
   140006c62:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006c66:	8b 40 08             	mov    0x8(%rax),%eax
   140006c69:	89 c1                	mov    %eax,%ecx
   140006c6b:	e8 36 0a 00 00       	call   1400076a6 <__Balloc_D2A>
   140006c70:	48 89 45 20          	mov    %rax,0x20(%rbp)
   140006c74:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140006c78:	8b 40 14             	mov    0x14(%rax),%eax
   140006c7b:	48 98                	cltq   
   140006c7d:	48 83 c0 02          	add    $0x2,%rax
   140006c81:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
   140006c88:	00 
   140006c89:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140006c8d:	48 8d 50 10          	lea    0x10(%rax),%rdx
   140006c91:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006c95:	48 83 c0 10          	add    $0x10,%rax
   140006c99:	49 89 c8             	mov    %rcx,%r8
   140006c9c:	48 89 c1             	mov    %rax,%rcx
   140006c9f:	e8 c4 1a 00 00       	call   140008768 <memcpy>
   140006ca4:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006ca8:	ba 01 00 00 00       	mov    $0x1,%edx
   140006cad:	48 89 c1             	mov    %rax,%rcx
   140006cb0:	e8 0b 11 00 00       	call   140007dc0 <__lshift_D2A>
   140006cb5:	48 89 45 20          	mov    %rax,0x20(%rbp)
   140006cb9:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%rbp)
   140006cc0:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140006cc4:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006cc8:	48 89 c1             	mov    %rax,%rcx
   140006ccb:	e8 8e ec ff ff       	call   14000595e <__quorem_D2A>
   140006cd0:	83 c0 30             	add    $0x30,%eax
   140006cd3:	89 45 74             	mov    %eax,0x74(%rbp)
   140006cd6:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140006cda:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006cde:	48 89 c1             	mov    %rax,%rcx
   140006ce1:	e8 64 12 00 00       	call   140007f4a <__cmp_D2A>
   140006ce6:	89 45 60             	mov    %eax,0x60(%rbp)
   140006ce9:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140006ced:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140006cf1:	48 89 c1             	mov    %rax,%rcx
   140006cf4:	e8 21 13 00 00       	call   14000801a <__diff_D2A>
   140006cf9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   140006cfd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140006d01:	8b 40 10             	mov    0x10(%rax),%eax
   140006d04:	85 c0                	test   %eax,%eax
   140006d06:	75 12                	jne    140006d1a <__gdtoa+0x1000>
   140006d08:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   140006d0c:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006d10:	48 89 c1             	mov    %rax,%rcx
   140006d13:	e8 32 12 00 00       	call   140007f4a <__cmp_D2A>
   140006d18:	eb 05                	jmp    140006d1f <__gdtoa+0x1005>
   140006d1a:	b8 01 00 00 00       	mov    $0x1,%eax
   140006d1f:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140006d22:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140006d26:	48 89 c1             	mov    %rax,%rcx
   140006d29:	e8 ba 0a 00 00       	call   1400077e8 <__Bfree_D2A>
   140006d2e:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
   140006d32:	75 70                	jne    140006da4 <__gdtoa+0x108a>
   140006d34:	83 bd b0 00 00 00 00 	cmpl   $0x0,0xb0(%rbp)
   140006d3b:	75 67                	jne    140006da4 <__gdtoa+0x108a>
   140006d3d:	48 8b 85 a0 00 00 00 	mov    0xa0(%rbp),%rax
   140006d44:	8b 00                	mov    (%rax),%eax
   140006d46:	83 e0 01             	and    $0x1,%eax
   140006d49:	85 c0                	test   %eax,%eax
   140006d4b:	75 57                	jne    140006da4 <__gdtoa+0x108a>
   140006d4d:	83 7d 48 00          	cmpl   $0x0,0x48(%rbp)
   140006d51:	75 51                	jne    140006da4 <__gdtoa+0x108a>
   140006d53:	83 7d 74 39          	cmpl   $0x39,0x74(%rbp)
   140006d57:	0f 84 01 02 00 00    	je     140006f5e <__gdtoa+0x1244>
   140006d5d:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   140006d61:	7f 20                	jg     140006d83 <__gdtoa+0x1069>
   140006d63:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006d67:	8b 40 14             	mov    0x14(%rax),%eax
   140006d6a:	83 f8 01             	cmp    $0x1,%eax
   140006d6d:	7f 0b                	jg     140006d7a <__gdtoa+0x1060>
   140006d6f:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006d73:	8b 40 18             	mov    0x18(%rax),%eax
   140006d76:	85 c0                	test   %eax,%eax
   140006d78:	74 14                	je     140006d8e <__gdtoa+0x1074>
   140006d7a:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   140006d81:	eb 0b                	jmp    140006d8e <__gdtoa+0x1074>
   140006d83:	83 45 74 01          	addl   $0x1,0x74(%rbp)
   140006d87:	c7 45 64 20 00 00 00 	movl   $0x20,0x64(%rbp)
   140006d8e:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006d92:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006d96:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006d9a:	8b 55 74             	mov    0x74(%rbp),%edx
   140006d9d:	88 10                	mov    %dl,(%rax)
   140006d9f:	e9 ff 03 00 00       	jmp    1400071a3 <__gdtoa+0x1489>
   140006da4:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   140006da8:	78 2b                	js     140006dd5 <__gdtoa+0x10bb>
   140006daa:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   140006dae:	0f 85 96 01 00 00    	jne    140006f4a <__gdtoa+0x1230>
   140006db4:	83 bd b0 00 00 00 00 	cmpl   $0x0,0xb0(%rbp)
   140006dbb:	0f 85 89 01 00 00    	jne    140006f4a <__gdtoa+0x1230>
   140006dc1:	48 8b 85 a0 00 00 00 	mov    0xa0(%rbp),%rax
   140006dc8:	8b 00                	mov    (%rax),%eax
   140006dca:	83 e0 01             	and    $0x1,%eax
   140006dcd:	85 c0                	test   %eax,%eax
   140006dcf:	0f 85 75 01 00 00    	jne    140006f4a <__gdtoa+0x1230>
   140006dd5:	83 7d 48 00          	cmpl   $0x0,0x48(%rbp)
   140006dd9:	0f 84 db 00 00 00    	je     140006eba <__gdtoa+0x11a0>
   140006ddf:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006de3:	8b 40 14             	mov    0x14(%rax),%eax
   140006de6:	83 f8 01             	cmp    $0x1,%eax
   140006de9:	7f 0f                	jg     140006dfa <__gdtoa+0x10e0>
   140006deb:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006def:	8b 40 18             	mov    0x18(%rax),%eax
   140006df2:	85 c0                	test   %eax,%eax
   140006df4:	0f 84 c0 00 00 00    	je     140006eba <__gdtoa+0x11a0>
   140006dfa:	83 7d 48 02          	cmpl   $0x2,0x48(%rbp)
   140006dfe:	0f 85 83 00 00 00    	jne    140006e87 <__gdtoa+0x116d>
   140006e04:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   140006e0b:	e9 24 01 00 00       	jmp    140006f34 <__gdtoa+0x121a>
   140006e10:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006e14:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006e18:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006e1c:	8b 55 74             	mov    0x74(%rbp),%edx
   140006e1f:	88 10                	mov    %dl,(%rax)
   140006e21:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006e25:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140006e2b:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006e30:	48 89 c1             	mov    %rax,%rcx
   140006e33:	e8 38 0a 00 00       	call   140007870 <__multadd_D2A>
   140006e38:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   140006e3c:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140006e40:	48 3b 45 20          	cmp    0x20(%rbp),%rax
   140006e44:	75 08                	jne    140006e4e <__gdtoa+0x1134>
   140006e46:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   140006e4a:	48 89 45 28          	mov    %rax,0x28(%rbp)
   140006e4e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   140006e52:	48 89 45 20          	mov    %rax,0x20(%rbp)
   140006e56:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006e5a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140006e60:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006e65:	48 89 c1             	mov    %rax,%rcx
   140006e68:	e8 03 0a 00 00       	call   140007870 <__multadd_D2A>
   140006e6d:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140006e71:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140006e75:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006e79:	48 89 c1             	mov    %rax,%rcx
   140006e7c:	e8 dd ea ff ff       	call   14000595e <__quorem_D2A>
   140006e81:	83 c0 30             	add    $0x30,%eax
   140006e84:	89 45 74             	mov    %eax,0x74(%rbp)
   140006e87:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140006e8b:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140006e8f:	48 89 c1             	mov    %rax,%rcx
   140006e92:	e8 b3 10 00 00       	call   140007f4a <__cmp_D2A>
   140006e97:	85 c0                	test   %eax,%eax
   140006e99:	0f 8f 71 ff ff ff    	jg     140006e10 <__gdtoa+0x10f6>
   140006e9f:	8b 45 74             	mov    0x74(%rbp),%eax
   140006ea2:	8d 50 01             	lea    0x1(%rax),%edx
   140006ea5:	89 55 74             	mov    %edx,0x74(%rbp)
   140006ea8:	83 f8 39             	cmp    $0x39,%eax
   140006eab:	0f 84 b0 00 00 00    	je     140006f61 <__gdtoa+0x1247>
   140006eb1:	c7 45 64 20 00 00 00 	movl   $0x20,0x64(%rbp)
   140006eb8:	eb 7a                	jmp    140006f34 <__gdtoa+0x121a>
   140006eba:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
   140006ebe:	7e 53                	jle    140006f13 <__gdtoa+0x11f9>
   140006ec0:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006ec4:	ba 01 00 00 00       	mov    $0x1,%edx
   140006ec9:	48 89 c1             	mov    %rax,%rcx
   140006ecc:	e8 ef 0e 00 00       	call   140007dc0 <__lshift_D2A>
   140006ed1:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140006ed5:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140006ed9:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006edd:	48 89 c1             	mov    %rax,%rcx
   140006ee0:	e8 65 10 00 00       	call   140007f4a <__cmp_D2A>
   140006ee5:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140006ee8:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
   140006eec:	7f 10                	jg     140006efe <__gdtoa+0x11e4>
   140006eee:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
   140006ef2:	75 18                	jne    140006f0c <__gdtoa+0x11f2>
   140006ef4:	8b 45 74             	mov    0x74(%rbp),%eax
   140006ef7:	83 e0 01             	and    $0x1,%eax
   140006efa:	85 c0                	test   %eax,%eax
   140006efc:	74 0e                	je     140006f0c <__gdtoa+0x11f2>
   140006efe:	8b 45 74             	mov    0x74(%rbp),%eax
   140006f01:	8d 50 01             	lea    0x1(%rax),%edx
   140006f04:	89 55 74             	mov    %edx,0x74(%rbp)
   140006f07:	83 f8 39             	cmp    $0x39,%eax
   140006f0a:	74 58                	je     140006f64 <__gdtoa+0x124a>
   140006f0c:	c7 45 64 20 00 00 00 	movl   $0x20,0x64(%rbp)
   140006f13:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006f17:	8b 40 14             	mov    0x14(%rax),%eax
   140006f1a:	83 f8 01             	cmp    $0x1,%eax
   140006f1d:	7f 0b                	jg     140006f2a <__gdtoa+0x1210>
   140006f1f:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006f23:	8b 40 18             	mov    0x18(%rax),%eax
   140006f26:	85 c0                	test   %eax,%eax
   140006f28:	74 09                	je     140006f33 <__gdtoa+0x1219>
   140006f2a:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   140006f31:	eb 01                	jmp    140006f34 <__gdtoa+0x121a>
   140006f33:	90                   	nop
   140006f34:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006f38:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006f3c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006f40:	8b 55 74             	mov    0x74(%rbp),%edx
   140006f43:	88 10                	mov    %dl,(%rax)
   140006f45:	e9 59 02 00 00       	jmp    1400071a3 <__gdtoa+0x1489>
   140006f4a:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
   140006f4e:	7e 52                	jle    140006fa2 <__gdtoa+0x1288>
   140006f50:	83 7d 48 02          	cmpl   $0x2,0x48(%rbp)
   140006f54:	74 4c                	je     140006fa2 <__gdtoa+0x1288>
   140006f56:	83 7d 74 39          	cmpl   $0x39,0x74(%rbp)
   140006f5a:	75 24                	jne    140006f80 <__gdtoa+0x1266>
   140006f5c:	eb 07                	jmp    140006f65 <__gdtoa+0x124b>
   140006f5e:	90                   	nop
   140006f5f:	eb 04                	jmp    140006f65 <__gdtoa+0x124b>
   140006f61:	90                   	nop
   140006f62:	eb 01                	jmp    140006f65 <__gdtoa+0x124b>
   140006f64:	90                   	nop
   140006f65:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006f69:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006f6d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006f71:	c6 00 39             	movb   $0x39,(%rax)
   140006f74:	c7 45 64 20 00 00 00 	movl   $0x20,0x64(%rbp)
   140006f7b:	e9 9d 01 00 00       	jmp    14000711d <__gdtoa+0x1403>
   140006f80:	c7 45 64 20 00 00 00 	movl   $0x20,0x64(%rbp)
   140006f87:	8b 45 74             	mov    0x74(%rbp),%eax
   140006f8a:	8d 48 01             	lea    0x1(%rax),%ecx
   140006f8d:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006f91:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006f95:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006f99:	89 ca                	mov    %ecx,%edx
   140006f9b:	88 10                	mov    %dl,(%rax)
   140006f9d:	e9 01 02 00 00       	jmp    1400071a3 <__gdtoa+0x1489>
   140006fa2:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140006fa6:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006faa:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140006fae:	8b 55 74             	mov    0x74(%rbp),%edx
   140006fb1:	88 10                	mov    %dl,(%rax)
   140006fb3:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140006fb6:	39 45 6c             	cmp    %eax,0x6c(%rbp)
   140006fb9:	0f 84 ea 00 00 00    	je     1400070a9 <__gdtoa+0x138f>
   140006fbf:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140006fc3:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140006fc9:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006fce:	48 89 c1             	mov    %rax,%rcx
   140006fd1:	e8 9a 08 00 00       	call   140007870 <__multadd_D2A>
   140006fd6:	48 89 45 30          	mov    %rax,0x30(%rbp)
   140006fda:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140006fde:	48 3b 45 20          	cmp    0x20(%rbp),%rax
   140006fe2:	75 25                	jne    140007009 <__gdtoa+0x12ef>
   140006fe4:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140006fe8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140006fee:	ba 0a 00 00 00       	mov    $0xa,%edx
   140006ff3:	48 89 c1             	mov    %rax,%rcx
   140006ff6:	e8 75 08 00 00       	call   140007870 <__multadd_D2A>
   140006ffb:	48 89 45 20          	mov    %rax,0x20(%rbp)
   140006fff:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140007003:	48 89 45 28          	mov    %rax,0x28(%rbp)
   140007007:	eb 36                	jmp    14000703f <__gdtoa+0x1325>
   140007009:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000700d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140007013:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007018:	48 89 c1             	mov    %rax,%rcx
   14000701b:	e8 50 08 00 00       	call   140007870 <__multadd_D2A>
   140007020:	48 89 45 28          	mov    %rax,0x28(%rbp)
   140007024:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140007028:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   14000702e:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007033:	48 89 c1             	mov    %rax,%rcx
   140007036:	e8 35 08 00 00       	call   140007870 <__multadd_D2A>
   14000703b:	48 89 45 20          	mov    %rax,0x20(%rbp)
   14000703f:	8b 45 b8             	mov    -0x48(%rbp),%eax
   140007042:	83 c0 01             	add    $0x1,%eax
   140007045:	89 45 b8             	mov    %eax,-0x48(%rbp)
   140007048:	e9 73 fc ff ff       	jmp    140006cc0 <__gdtoa+0xfa6>
   14000704d:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%rbp)
   140007054:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140007058:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000705c:	48 89 c1             	mov    %rax,%rcx
   14000705f:	e8 fa e8 ff ff       	call   14000595e <__quorem_D2A>
   140007064:	83 c0 30             	add    $0x30,%eax
   140007067:	89 45 74             	mov    %eax,0x74(%rbp)
   14000706a:	48 8b 45 08          	mov    0x8(%rbp),%rax
   14000706e:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140007072:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140007076:	8b 55 74             	mov    0x74(%rbp),%edx
   140007079:	88 10                	mov    %dl,(%rax)
   14000707b:	8b 45 b8             	mov    -0x48(%rbp),%eax
   14000707e:	39 45 6c             	cmp    %eax,0x6c(%rbp)
   140007081:	7e 29                	jle    1400070ac <__gdtoa+0x1392>
   140007083:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140007087:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   14000708d:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007092:	48 89 c1             	mov    %rax,%rcx
   140007095:	e8 d6 07 00 00       	call   140007870 <__multadd_D2A>
   14000709a:	48 89 45 30          	mov    %rax,0x30(%rbp)
   14000709e:	8b 45 b8             	mov    -0x48(%rbp),%eax
   1400070a1:	83 c0 01             	add    $0x1,%eax
   1400070a4:	89 45 b8             	mov    %eax,-0x48(%rbp)
   1400070a7:	eb ab                	jmp    140007054 <__gdtoa+0x133a>
   1400070a9:	90                   	nop
   1400070aa:	eb 01                	jmp    1400070ad <__gdtoa+0x1393>
   1400070ac:	90                   	nop
   1400070ad:	83 7d 48 00          	cmpl   $0x0,0x48(%rbp)
   1400070b1:	74 26                	je     1400070d9 <__gdtoa+0x13bf>
   1400070b3:	83 7d 48 02          	cmpl   $0x2,0x48(%rbp)
   1400070b7:	0f 84 ae 00 00 00    	je     14000716b <__gdtoa+0x1451>
   1400070bd:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400070c1:	8b 40 14             	mov    0x14(%rax),%eax
   1400070c4:	83 f8 01             	cmp    $0x1,%eax
   1400070c7:	7f 50                	jg     140007119 <__gdtoa+0x13ff>
   1400070c9:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400070cd:	8b 40 18             	mov    0x18(%rax),%eax
   1400070d0:	85 c0                	test   %eax,%eax
   1400070d2:	75 45                	jne    140007119 <__gdtoa+0x13ff>
   1400070d4:	e9 92 00 00 00       	jmp    14000716b <__gdtoa+0x1451>
   1400070d9:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400070dd:	ba 01 00 00 00       	mov    $0x1,%edx
   1400070e2:	48 89 c1             	mov    %rax,%rcx
   1400070e5:	e8 d6 0c 00 00       	call   140007dc0 <__lshift_D2A>
   1400070ea:	48 89 45 30          	mov    %rax,0x30(%rbp)
   1400070ee:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   1400070f2:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400070f6:	48 89 c1             	mov    %rax,%rcx
   1400070f9:	e8 4c 0e 00 00       	call   140007f4a <__cmp_D2A>
   1400070fe:	89 45 60             	mov    %eax,0x60(%rbp)
   140007101:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   140007105:	7f 15                	jg     14000711c <__gdtoa+0x1402>
   140007107:	83 7d 60 00          	cmpl   $0x0,0x60(%rbp)
   14000710b:	75 61                	jne    14000716e <__gdtoa+0x1454>
   14000710d:	8b 45 74             	mov    0x74(%rbp),%eax
   140007110:	83 e0 01             	and    $0x1,%eax
   140007113:	85 c0                	test   %eax,%eax
   140007115:	74 57                	je     14000716e <__gdtoa+0x1454>
   140007117:	eb 03                	jmp    14000711c <__gdtoa+0x1402>
   140007119:	90                   	nop
   14000711a:	eb 01                	jmp    14000711d <__gdtoa+0x1403>
   14000711c:	90                   	nop
   14000711d:	c7 45 64 20 00 00 00 	movl   $0x20,0x64(%rbp)
   140007124:	eb 1f                	jmp    140007145 <__gdtoa+0x142b>
   140007126:	48 8b 45 08          	mov    0x8(%rbp),%rax
   14000712a:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
   14000712e:	75 15                	jne    140007145 <__gdtoa+0x142b>
   140007130:	83 45 5c 01          	addl   $0x1,0x5c(%rbp)
   140007134:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140007138:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000713c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140007140:	c6 00 31             	movb   $0x31,(%rax)
   140007143:	eb 5e                	jmp    1400071a3 <__gdtoa+0x1489>
   140007145:	48 83 6d 08 01       	subq   $0x1,0x8(%rbp)
   14000714a:	48 8b 45 08          	mov    0x8(%rbp),%rax
   14000714e:	0f b6 00             	movzbl (%rax),%eax
   140007151:	3c 39                	cmp    $0x39,%al
   140007153:	74 d1                	je     140007126 <__gdtoa+0x140c>
   140007155:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140007159:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000715d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
   140007161:	0f b6 10             	movzbl (%rax),%edx
   140007164:	83 c2 01             	add    $0x1,%edx
   140007167:	88 10                	mov    %dl,(%rax)
   140007169:	eb 38                	jmp    1400071a3 <__gdtoa+0x1489>
   14000716b:	90                   	nop
   14000716c:	eb 01                	jmp    14000716f <__gdtoa+0x1455>
   14000716e:	90                   	nop
   14000716f:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140007173:	8b 40 14             	mov    0x14(%rax),%eax
   140007176:	83 f8 01             	cmp    $0x1,%eax
   140007179:	7f 0b                	jg     140007186 <__gdtoa+0x146c>
   14000717b:	48 8b 45 30          	mov    0x30(%rbp),%rax
   14000717f:	8b 40 18             	mov    0x18(%rax),%eax
   140007182:	85 c0                	test   %eax,%eax
   140007184:	74 07                	je     14000718d <__gdtoa+0x1473>
   140007186:	c7 45 64 10 00 00 00 	movl   $0x10,0x64(%rbp)
   14000718d:	90                   	nop
   14000718e:	48 83 6d 08 01       	subq   $0x1,0x8(%rbp)
   140007193:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140007197:	0f b6 00             	movzbl (%rax),%eax
   14000719a:	3c 30                	cmp    $0x30,%al
   14000719c:	74 f0                	je     14000718e <__gdtoa+0x1474>
   14000719e:	48 83 45 08 01       	addq   $0x1,0x8(%rbp)
   1400071a3:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400071a7:	48 89 c1             	mov    %rax,%rcx
   1400071aa:	e8 39 06 00 00       	call   1400077e8 <__Bfree_D2A>
   1400071af:	48 83 7d 20 00       	cmpq   $0x0,0x20(%rbp)
   1400071b4:	74 2e                	je     1400071e4 <__gdtoa+0x14ca>
   1400071b6:	48 83 7d 28 00       	cmpq   $0x0,0x28(%rbp)
   1400071bb:	74 16                	je     1400071d3 <__gdtoa+0x14b9>
   1400071bd:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400071c1:	48 3b 45 20          	cmp    0x20(%rbp),%rax
   1400071c5:	74 0c                	je     1400071d3 <__gdtoa+0x14b9>
   1400071c7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400071cb:	48 89 c1             	mov    %rax,%rcx
   1400071ce:	e8 15 06 00 00       	call   1400077e8 <__Bfree_D2A>
   1400071d3:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400071d7:	48 89 c1             	mov    %rax,%rcx
   1400071da:	e8 09 06 00 00       	call   1400077e8 <__Bfree_D2A>
   1400071df:	eb 04                	jmp    1400071e5 <__gdtoa+0x14cb>
   1400071e1:	90                   	nop
   1400071e2:	eb 01                	jmp    1400071e5 <__gdtoa+0x14cb>
   1400071e4:	90                   	nop
   1400071e5:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400071e9:	48 89 c1             	mov    %rax,%rcx
   1400071ec:	e8 f7 05 00 00       	call   1400077e8 <__Bfree_D2A>
   1400071f1:	48 8b 45 08          	mov    0x8(%rbp),%rax
   1400071f5:	c6 00 00             	movb   $0x0,(%rax)
   1400071f8:	8b 45 5c             	mov    0x5c(%rbp),%eax
   1400071fb:	8d 50 01             	lea    0x1(%rax),%edx
   1400071fe:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
   140007205:	89 10                	mov    %edx,(%rax)
   140007207:	48 83 bd c8 00 00 00 	cmpq   $0x0,0xc8(%rbp)
   14000720e:	00 
   14000720f:	74 0e                	je     14000721f <__gdtoa+0x1505>
   140007211:	48 8b 85 c8 00 00 00 	mov    0xc8(%rbp),%rax
   140007218:	48 8b 55 08          	mov    0x8(%rbp),%rdx
   14000721c:	48 89 10             	mov    %rdx,(%rax)
   14000721f:	48 8b 85 a8 00 00 00 	mov    0xa8(%rbp),%rax
   140007226:	8b 00                	mov    (%rax),%eax
   140007228:	0b 45 64             	or     0x64(%rbp),%eax
   14000722b:	89 c2                	mov    %eax,%edx
   14000722d:	48 8b 85 a8 00 00 00 	mov    0xa8(%rbp),%rax
   140007234:	89 10                	mov    %edx,(%rax)
   140007236:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000723a:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
   140007241:	5d                   	pop    %rbp
   140007242:	c3                   	ret    
   140007243:	90                   	nop
   140007244:	90                   	nop
   140007245:	90                   	nop
   140007246:	90                   	nop
   140007247:	90                   	nop
   140007248:	90                   	nop
   140007249:	90                   	nop
   14000724a:	90                   	nop
   14000724b:	90                   	nop
   14000724c:	90                   	nop
   14000724d:	90                   	nop
   14000724e:	90                   	nop
   14000724f:	90                   	nop

0000000140007250 <__lo0bits_D2A>:
   140007250:	55                   	push   %rbp
   140007251:	48 89 e5             	mov    %rsp,%rbp
   140007254:	48 83 ec 10          	sub    $0x10,%rsp
   140007258:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000725c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007260:	8b 00                	mov    (%rax),%eax
   140007262:	f3 0f bc c0          	tzcnt  %eax,%eax
   140007266:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140007269:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000726d:	8b 10                	mov    (%rax),%edx
   14000726f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140007272:	89 c1                	mov    %eax,%ecx
   140007274:	d3 ea                	shr    %cl,%edx
   140007276:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000727a:	89 10                	mov    %edx,(%rax)
   14000727c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000727f:	48 83 c4 10          	add    $0x10,%rsp
   140007283:	5d                   	pop    %rbp
   140007284:	c3                   	ret    

0000000140007285 <__rshift_D2A>:
   140007285:	55                   	push   %rbp
   140007286:	48 89 e5             	mov    %rsp,%rbp
   140007289:	48 83 ec 20          	sub    $0x20,%rsp
   14000728d:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140007291:	89 55 18             	mov    %edx,0x18(%rbp)
   140007294:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007298:	48 83 c0 18          	add    $0x18,%rax
   14000729c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400072a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400072a4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400072a8:	8b 45 18             	mov    0x18(%rbp),%eax
   1400072ab:	c1 f8 05             	sar    $0x5,%eax
   1400072ae:	89 45 e8             	mov    %eax,-0x18(%rbp)
   1400072b1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400072b5:	8b 40 14             	mov    0x14(%rax),%eax
   1400072b8:	39 45 e8             	cmp    %eax,-0x18(%rbp)
   1400072bb:	0f 8d e4 00 00 00    	jge    1400073a5 <__rshift_D2A+0x120>
   1400072c1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400072c5:	8b 40 14             	mov    0x14(%rax),%eax
   1400072c8:	48 98                	cltq   
   1400072ca:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   1400072d1:	00 
   1400072d2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400072d6:	48 01 d0             	add    %rdx,%rax
   1400072d9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400072dd:	8b 45 e8             	mov    -0x18(%rbp),%eax
   1400072e0:	48 98                	cltq   
   1400072e2:	48 c1 e0 02          	shl    $0x2,%rax
   1400072e6:	48 01 45 f8          	add    %rax,-0x8(%rbp)
   1400072ea:	83 65 18 1f          	andl   $0x1f,0x18(%rbp)
   1400072ee:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   1400072f2:	0f 84 a3 00 00 00    	je     14000739b <__rshift_D2A+0x116>
   1400072f8:	b8 20 00 00 00       	mov    $0x20,%eax
   1400072fd:	2b 45 18             	sub    0x18(%rbp),%eax
   140007300:	89 45 e8             	mov    %eax,-0x18(%rbp)
   140007303:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007307:	48 8d 50 04          	lea    0x4(%rax),%rdx
   14000730b:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   14000730f:	8b 10                	mov    (%rax),%edx
   140007311:	8b 45 18             	mov    0x18(%rbp),%eax
   140007314:	89 c1                	mov    %eax,%ecx
   140007316:	d3 ea                	shr    %cl,%edx
   140007318:	89 d0                	mov    %edx,%eax
   14000731a:	89 45 ec             	mov    %eax,-0x14(%rbp)
   14000731d:	eb 3c                	jmp    14000735b <__rshift_D2A+0xd6>
   14000731f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007323:	8b 10                	mov    (%rax),%edx
   140007325:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140007328:	89 c1                	mov    %eax,%ecx
   14000732a:	d3 e2                	shl    %cl,%edx
   14000732c:	89 d1                	mov    %edx,%ecx
   14000732e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007332:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140007336:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   14000733a:	0b 4d ec             	or     -0x14(%rbp),%ecx
   14000733d:	89 ca                	mov    %ecx,%edx
   14000733f:	89 10                	mov    %edx,(%rax)
   140007341:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007345:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140007349:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   14000734d:	8b 10                	mov    (%rax),%edx
   14000734f:	8b 45 18             	mov    0x18(%rbp),%eax
   140007352:	89 c1                	mov    %eax,%ecx
   140007354:	d3 ea                	shr    %cl,%edx
   140007356:	89 d0                	mov    %edx,%eax
   140007358:	89 45 ec             	mov    %eax,-0x14(%rbp)
   14000735b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000735f:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
   140007363:	72 ba                	jb     14000731f <__rshift_D2A+0x9a>
   140007365:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007369:	8b 55 ec             	mov    -0x14(%rbp),%edx
   14000736c:	89 10                	mov    %edx,(%rax)
   14000736e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007372:	8b 00                	mov    (%rax),%eax
   140007374:	85 c0                	test   %eax,%eax
   140007376:	74 2d                	je     1400073a5 <__rshift_D2A+0x120>
   140007378:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
   14000737d:	eb 26                	jmp    1400073a5 <__rshift_D2A+0x120>
   14000737f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140007383:	48 8d 42 04          	lea    0x4(%rdx),%rax
   140007387:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000738b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000738f:	48 8d 48 04          	lea    0x4(%rax),%rcx
   140007393:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
   140007397:	8b 12                	mov    (%rdx),%edx
   140007399:	89 10                	mov    %edx,(%rax)
   14000739b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000739f:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
   1400073a3:	72 da                	jb     14000737f <__rshift_D2A+0xfa>
   1400073a5:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400073a9:	48 8d 50 18          	lea    0x18(%rax),%rdx
   1400073ad:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400073b1:	48 29 d0             	sub    %rdx,%rax
   1400073b4:	48 c1 f8 02          	sar    $0x2,%rax
   1400073b8:	89 c2                	mov    %eax,%edx
   1400073ba:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400073be:	89 50 14             	mov    %edx,0x14(%rax)
   1400073c1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400073c5:	8b 40 14             	mov    0x14(%rax),%eax
   1400073c8:	85 c0                	test   %eax,%eax
   1400073ca:	75 0b                	jne    1400073d7 <__rshift_D2A+0x152>
   1400073cc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400073d0:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%rax)
   1400073d7:	90                   	nop
   1400073d8:	48 83 c4 20          	add    $0x20,%rsp
   1400073dc:	5d                   	pop    %rbp
   1400073dd:	c3                   	ret    

00000001400073de <__trailz_D2A>:
   1400073de:	55                   	push   %rbp
   1400073df:	48 89 e5             	mov    %rsp,%rbp
   1400073e2:	48 83 ec 40          	sub    $0x40,%rsp
   1400073e6:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400073ea:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   1400073f1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400073f5:	48 83 c0 18          	add    $0x18,%rax
   1400073f9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400073fd:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007401:	8b 40 14             	mov    0x14(%rax),%eax
   140007404:	48 98                	cltq   
   140007406:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000740d:	00 
   14000740e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007412:	48 01 d0             	add    %rdx,%rax
   140007415:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140007419:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140007420:	eb 09                	jmp    14000742b <__trailz_D2A+0x4d>
   140007422:	83 45 f4 20          	addl   $0x20,-0xc(%rbp)
   140007426:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
   14000742b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000742f:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
   140007433:	73 0a                	jae    14000743f <__trailz_D2A+0x61>
   140007435:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007439:	8b 00                	mov    (%rax),%eax
   14000743b:	85 c0                	test   %eax,%eax
   14000743d:	74 e3                	je     140007422 <__trailz_D2A+0x44>
   14000743f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007443:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
   140007447:	73 18                	jae    140007461 <__trailz_D2A+0x83>
   140007449:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000744d:	8b 00                	mov    (%rax),%eax
   14000744f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   140007452:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
   140007456:	48 89 c1             	mov    %rax,%rcx
   140007459:	e8 f2 fd ff ff       	call   140007250 <__lo0bits_D2A>
   14000745e:	01 45 f4             	add    %eax,-0xc(%rbp)
   140007461:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140007464:	48 83 c4 40          	add    $0x40,%rsp
   140007468:	5d                   	pop    %rbp
   140007469:	c3                   	ret    
   14000746a:	90                   	nop
   14000746b:	90                   	nop
   14000746c:	90                   	nop
   14000746d:	90                   	nop
   14000746e:	90                   	nop
   14000746f:	90                   	nop

0000000140007470 <dtoa_lock_cleanup>:
   140007470:	55                   	push   %rbp
   140007471:	48 89 e5             	mov    %rsp,%rbp
   140007474:	48 83 ec 40          	sub    $0x40,%rsp
   140007478:	48 8d 05 b1 8d 00 00 	lea    0x8db1(%rip),%rax        # 140010230 <dtoa_CS_init>
   14000747f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007483:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%rbp)
   14000748a:	8b 55 ec             	mov    -0x14(%rbp),%edx
   14000748d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007491:	87 10                	xchg   %edx,(%rax)
   140007493:	89 d0                	mov    %edx,%eax
   140007495:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140007498:	83 7d f8 02          	cmpl   $0x2,-0x8(%rbp)
   14000749c:	75 3d                	jne    1400074db <dtoa_lock_cleanup+0x6b>
   14000749e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400074a5:	eb 2e                	jmp    1400074d5 <dtoa_lock_cleanup+0x65>
   1400074a7:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400074aa:	48 63 d0             	movslq %eax,%rdx
   1400074ad:	48 89 d0             	mov    %rdx,%rax
   1400074b0:	48 c1 e0 02          	shl    $0x2,%rax
   1400074b4:	48 01 d0             	add    %rdx,%rax
   1400074b7:	48 c1 e0 03          	shl    $0x3,%rax
   1400074bb:	48 8d 15 1e 8d 00 00 	lea    0x8d1e(%rip),%rdx        # 1400101e0 <dtoa_CritSec>
   1400074c2:	48 01 d0             	add    %rdx,%rax
   1400074c5:	48 89 c1             	mov    %rax,%rcx
   1400074c8:	48 8b 05 95 9e 00 00 	mov    0x9e95(%rip),%rax        # 140011364 <__imp_DeleteCriticalSection>
   1400074cf:	ff d0                	call   *%rax
   1400074d1:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400074d5:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
   1400074d9:	7e cc                	jle    1400074a7 <dtoa_lock_cleanup+0x37>
   1400074db:	90                   	nop
   1400074dc:	48 83 c4 40          	add    $0x40,%rsp
   1400074e0:	5d                   	pop    %rbp
   1400074e1:	c3                   	ret    

00000001400074e2 <dtoa_lock>:
   1400074e2:	55                   	push   %rbp
   1400074e3:	48 89 e5             	mov    %rsp,%rbp
   1400074e6:	48 83 ec 40          	sub    $0x40,%rsp
   1400074ea:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400074ed:	8b 05 3d 8d 00 00    	mov    0x8d3d(%rip),%eax        # 140010230 <dtoa_CS_init>
   1400074f3:	83 f8 02             	cmp    $0x2,%eax
   1400074f6:	75 2f                	jne    140007527 <dtoa_lock+0x45>
   1400074f8:	8b 45 10             	mov    0x10(%rbp),%eax
   1400074fb:	48 63 d0             	movslq %eax,%rdx
   1400074fe:	48 89 d0             	mov    %rdx,%rax
   140007501:	48 c1 e0 02          	shl    $0x2,%rax
   140007505:	48 01 d0             	add    %rdx,%rax
   140007508:	48 c1 e0 03          	shl    $0x3,%rax
   14000750c:	48 8d 15 cd 8c 00 00 	lea    0x8ccd(%rip),%rdx        # 1400101e0 <dtoa_CritSec>
   140007513:	48 01 d0             	add    %rdx,%rax
   140007516:	48 89 c1             	mov    %rax,%rcx
   140007519:	48 8b 05 4c 9e 00 00 	mov    0x9e4c(%rip),%rax        # 14001136c <__imp_EnterCriticalSection>
   140007520:	ff d0                	call   *%rax
   140007522:	e9 ed 00 00 00       	jmp    140007614 <dtoa_lock+0x132>
   140007527:	8b 05 03 8d 00 00    	mov    0x8d03(%rip),%eax        # 140010230 <dtoa_CS_init>
   14000752d:	85 c0                	test   %eax,%eax
   14000752f:	0f 85 9e 00 00 00    	jne    1400075d3 <dtoa_lock+0xf1>
   140007535:	48 8d 05 f4 8c 00 00 	lea    0x8cf4(%rip),%rax        # 140010230 <dtoa_CS_init>
   14000753c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007540:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
   140007547:	8b 55 ec             	mov    -0x14(%rbp),%edx
   14000754a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000754e:	87 10                	xchg   %edx,(%rax)
   140007550:	89 d0                	mov    %edx,%eax
   140007552:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140007555:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   140007559:	75 58                	jne    1400075b3 <dtoa_lock+0xd1>
   14000755b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140007562:	eb 2e                	jmp    140007592 <dtoa_lock+0xb0>
   140007564:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140007567:	48 63 d0             	movslq %eax,%rdx
   14000756a:	48 89 d0             	mov    %rdx,%rax
   14000756d:	48 c1 e0 02          	shl    $0x2,%rax
   140007571:	48 01 d0             	add    %rdx,%rax
   140007574:	48 c1 e0 03          	shl    $0x3,%rax
   140007578:	48 8d 15 61 8c 00 00 	lea    0x8c61(%rip),%rdx        # 1400101e0 <dtoa_CritSec>
   14000757f:	48 01 d0             	add    %rdx,%rax
   140007582:	48 89 c1             	mov    %rax,%rcx
   140007585:	48 8b 05 10 9e 00 00 	mov    0x9e10(%rip),%rax        # 14001139c <__imp_InitializeCriticalSection>
   14000758c:	ff d0                	call   *%rax
   14000758e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140007592:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
   140007596:	7e cc                	jle    140007564 <dtoa_lock+0x82>
   140007598:	48 8d 05 d1 fe ff ff 	lea    -0x12f(%rip),%rax        # 140007470 <dtoa_lock_cleanup>
   14000759f:	48 89 c1             	mov    %rax,%rcx
   1400075a2:	e8 f1 a0 ff ff       	call   140001698 <atexit>
   1400075a7:	c7 05 7f 8c 00 00 02 	movl   $0x2,0x8c7f(%rip)        # 140010230 <dtoa_CS_init>
   1400075ae:	00 00 00 
   1400075b1:	eb 20                	jmp    1400075d3 <dtoa_lock+0xf1>
   1400075b3:	83 7d f8 02          	cmpl   $0x2,-0x8(%rbp)
   1400075b7:	75 1a                	jne    1400075d3 <dtoa_lock+0xf1>
   1400075b9:	c7 05 6d 8c 00 00 02 	movl   $0x2,0x8c6d(%rip)        # 140010230 <dtoa_CS_init>
   1400075c0:	00 00 00 
   1400075c3:	eb 0e                	jmp    1400075d3 <dtoa_lock+0xf1>
   1400075c5:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400075ca:	48 8b 05 fb 9d 00 00 	mov    0x9dfb(%rip),%rax        # 1400113cc <__imp_Sleep>
   1400075d1:	ff d0                	call   *%rax
   1400075d3:	8b 05 57 8c 00 00    	mov    0x8c57(%rip),%eax        # 140010230 <dtoa_CS_init>
   1400075d9:	83 f8 01             	cmp    $0x1,%eax
   1400075dc:	74 e7                	je     1400075c5 <dtoa_lock+0xe3>
   1400075de:	8b 05 4c 8c 00 00    	mov    0x8c4c(%rip),%eax        # 140010230 <dtoa_CS_init>
   1400075e4:	83 f8 02             	cmp    $0x2,%eax
   1400075e7:	75 2b                	jne    140007614 <dtoa_lock+0x132>
   1400075e9:	8b 45 10             	mov    0x10(%rbp),%eax
   1400075ec:	48 63 d0             	movslq %eax,%rdx
   1400075ef:	48 89 d0             	mov    %rdx,%rax
   1400075f2:	48 c1 e0 02          	shl    $0x2,%rax
   1400075f6:	48 01 d0             	add    %rdx,%rax
   1400075f9:	48 c1 e0 03          	shl    $0x3,%rax
   1400075fd:	48 8d 15 dc 8b 00 00 	lea    0x8bdc(%rip),%rdx        # 1400101e0 <dtoa_CritSec>
   140007604:	48 01 d0             	add    %rdx,%rax
   140007607:	48 89 c1             	mov    %rax,%rcx
   14000760a:	48 8b 05 5b 9d 00 00 	mov    0x9d5b(%rip),%rax        # 14001136c <__imp_EnterCriticalSection>
   140007611:	ff d0                	call   *%rax
   140007613:	90                   	nop
   140007614:	48 83 c4 40          	add    $0x40,%rsp
   140007618:	5d                   	pop    %rbp
   140007619:	c3                   	ret    

000000014000761a <dtoa_unlock>:
   14000761a:	55                   	push   %rbp
   14000761b:	48 89 e5             	mov    %rsp,%rbp
   14000761e:	48 83 ec 20          	sub    $0x20,%rsp
   140007622:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140007625:	8b 05 05 8c 00 00    	mov    0x8c05(%rip),%eax        # 140010230 <dtoa_CS_init>
   14000762b:	83 f8 02             	cmp    $0x2,%eax
   14000762e:	75 2a                	jne    14000765a <dtoa_unlock+0x40>
   140007630:	8b 45 10             	mov    0x10(%rbp),%eax
   140007633:	48 63 d0             	movslq %eax,%rdx
   140007636:	48 89 d0             	mov    %rdx,%rax
   140007639:	48 c1 e0 02          	shl    $0x2,%rax
   14000763d:	48 01 d0             	add    %rdx,%rax
   140007640:	48 c1 e0 03          	shl    $0x3,%rax
   140007644:	48 8d 15 95 8b 00 00 	lea    0x8b95(%rip),%rdx        # 1400101e0 <dtoa_CritSec>
   14000764b:	48 01 d0             	add    %rdx,%rax
   14000764e:	48 89 c1             	mov    %rax,%rcx
   140007651:	48 8b 05 54 9d 00 00 	mov    0x9d54(%rip),%rax        # 1400113ac <__imp_LeaveCriticalSection>
   140007658:	ff d0                	call   *%rax
   14000765a:	90                   	nop
   14000765b:	48 83 c4 20          	add    $0x20,%rsp
   14000765f:	5d                   	pop    %rbp
   140007660:	c3                   	ret    

0000000140007661 <__lo0bits_D2A>:
   140007661:	55                   	push   %rbp
   140007662:	48 89 e5             	mov    %rsp,%rbp
   140007665:	48 83 ec 10          	sub    $0x10,%rsp
   140007669:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000766d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007671:	8b 00                	mov    (%rax),%eax
   140007673:	f3 0f bc c0          	tzcnt  %eax,%eax
   140007677:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000767a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000767e:	8b 10                	mov    (%rax),%edx
   140007680:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140007683:	89 c1                	mov    %eax,%ecx
   140007685:	d3 ea                	shr    %cl,%edx
   140007687:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000768b:	89 10                	mov    %edx,(%rax)
   14000768d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140007690:	48 83 c4 10          	add    $0x10,%rsp
   140007694:	5d                   	pop    %rbp
   140007695:	c3                   	ret    

0000000140007696 <__hi0bits_D2A>:
   140007696:	55                   	push   %rbp
   140007697:	48 89 e5             	mov    %rsp,%rbp
   14000769a:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000769d:	0f bd 45 10          	bsr    0x10(%rbp),%eax
   1400076a1:	83 f0 1f             	xor    $0x1f,%eax
   1400076a4:	5d                   	pop    %rbp
   1400076a5:	c3                   	ret    

00000001400076a6 <__Balloc_D2A>:
   1400076a6:	55                   	push   %rbp
   1400076a7:	48 89 e5             	mov    %rsp,%rbp
   1400076aa:	48 83 ec 30          	sub    $0x30,%rsp
   1400076ae:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400076b1:	b9 00 00 00 00       	mov    $0x0,%ecx
   1400076b6:	e8 27 fe ff ff       	call   1400074e2 <dtoa_lock>
   1400076bb:	83 7d 10 09          	cmpl   $0x9,0x10(%rbp)
   1400076bf:	7f 48                	jg     140007709 <__Balloc_D2A+0x63>
   1400076c1:	8b 45 10             	mov    0x10(%rbp),%eax
   1400076c4:	48 98                	cltq   
   1400076c6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400076cd:	00 
   1400076ce:	48 8d 05 6b 8b 00 00 	lea    0x8b6b(%rip),%rax        # 140010240 <freelist>
   1400076d5:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
   1400076d9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400076dd:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   1400076e2:	74 25                	je     140007709 <__Balloc_D2A+0x63>
   1400076e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400076e8:	48 8b 00             	mov    (%rax),%rax
   1400076eb:	8b 55 10             	mov    0x10(%rbp),%edx
   1400076ee:	48 63 d2             	movslq %edx,%rdx
   1400076f1:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
   1400076f8:	00 
   1400076f9:	48 8d 15 40 8b 00 00 	lea    0x8b40(%rip),%rdx        # 140010240 <freelist>
   140007700:	48 89 04 11          	mov    %rax,(%rcx,%rdx,1)
   140007704:	e9 b2 00 00 00       	jmp    1400077bb <__Balloc_D2A+0x115>
   140007709:	8b 45 10             	mov    0x10(%rbp),%eax
   14000770c:	ba 01 00 00 00       	mov    $0x1,%edx
   140007711:	89 c1                	mov    %eax,%ecx
   140007713:	d3 e2                	shl    %cl,%edx
   140007715:	89 d0                	mov    %edx,%eax
   140007717:	89 45 f4             	mov    %eax,-0xc(%rbp)
   14000771a:	8b 45 f4             	mov    -0xc(%rbp),%eax
   14000771d:	83 e8 01             	sub    $0x1,%eax
   140007720:	48 98                	cltq   
   140007722:	48 83 c0 0a          	add    $0xa,%rax
   140007726:	48 c1 e0 02          	shl    $0x2,%rax
   14000772a:	48 83 e8 01          	sub    $0x1,%rax
   14000772e:	48 c1 e8 03          	shr    $0x3,%rax
   140007732:	89 45 f0             	mov    %eax,-0x10(%rbp)
   140007735:	83 7d 10 09          	cmpl   $0x9,0x10(%rbp)
   140007739:	7f 4b                	jg     140007786 <__Balloc_D2A+0xe0>
   14000773b:	48 8b 05 6e 29 00 00 	mov    0x296e(%rip),%rax        # 14000a0b0 <pmem_next>
   140007742:	48 8d 15 57 8b 00 00 	lea    0x8b57(%rip),%rdx        # 1400102a0 <private_mem>
   140007749:	48 29 d0             	sub    %rdx,%rax
   14000774c:	48 c1 f8 03          	sar    $0x3,%rax
   140007750:	48 89 c2             	mov    %rax,%rdx
   140007753:	8b 45 f0             	mov    -0x10(%rbp),%eax
   140007756:	48 01 d0             	add    %rdx,%rax
   140007759:	48 3d 20 01 00 00    	cmp    $0x120,%rax
   14000775f:	77 25                	ja     140007786 <__Balloc_D2A+0xe0>
   140007761:	48 8b 05 48 29 00 00 	mov    0x2948(%rip),%rax        # 14000a0b0 <pmem_next>
   140007768:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000776c:	48 8b 15 3d 29 00 00 	mov    0x293d(%rip),%rdx        # 14000a0b0 <pmem_next>
   140007773:	8b 45 f0             	mov    -0x10(%rbp),%eax
   140007776:	48 c1 e0 03          	shl    $0x3,%rax
   14000777a:	48 01 d0             	add    %rdx,%rax
   14000777d:	48 89 05 2c 29 00 00 	mov    %rax,0x292c(%rip)        # 14000a0b0 <pmem_next>
   140007784:	eb 21                	jmp    1400077a7 <__Balloc_D2A+0x101>
   140007786:	8b 45 f0             	mov    -0x10(%rbp),%eax
   140007789:	48 c1 e0 03          	shl    $0x3,%rax
   14000778d:	48 89 c1             	mov    %rax,%rcx
   140007790:	e8 db 0f 00 00       	call   140008770 <malloc>
   140007795:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140007799:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   14000779e:	75 07                	jne    1400077a7 <__Balloc_D2A+0x101>
   1400077a0:	b8 00 00 00 00       	mov    $0x0,%eax
   1400077a5:	eb 3b                	jmp    1400077e2 <__Balloc_D2A+0x13c>
   1400077a7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400077ab:	8b 55 10             	mov    0x10(%rbp),%edx
   1400077ae:	89 50 08             	mov    %edx,0x8(%rax)
   1400077b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400077b5:	8b 55 f4             	mov    -0xc(%rbp),%edx
   1400077b8:	89 50 0c             	mov    %edx,0xc(%rax)
   1400077bb:	b9 00 00 00 00       	mov    $0x0,%ecx
   1400077c0:	e8 55 fe ff ff       	call   14000761a <dtoa_unlock>
   1400077c5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400077c9:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
   1400077d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400077d4:	8b 50 14             	mov    0x14(%rax),%edx
   1400077d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400077db:	89 50 10             	mov    %edx,0x10(%rax)
   1400077de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400077e2:	48 83 c4 30          	add    $0x30,%rsp
   1400077e6:	5d                   	pop    %rbp
   1400077e7:	c3                   	ret    

00000001400077e8 <__Bfree_D2A>:
   1400077e8:	55                   	push   %rbp
   1400077e9:	48 89 e5             	mov    %rsp,%rbp
   1400077ec:	48 83 ec 20          	sub    $0x20,%rsp
   1400077f0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400077f4:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   1400077f9:	74 6e                	je     140007869 <__Bfree_D2A+0x81>
   1400077fb:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400077ff:	8b 40 08             	mov    0x8(%rax),%eax
   140007802:	83 f8 09             	cmp    $0x9,%eax
   140007805:	7e 0b                	jle    140007812 <__Bfree_D2A+0x2a>
   140007807:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000780b:	e8 78 0f 00 00       	call   140008788 <free>
   140007810:	eb 57                	jmp    140007869 <__Bfree_D2A+0x81>
   140007812:	b9 00 00 00 00       	mov    $0x0,%ecx
   140007817:	e8 c6 fc ff ff       	call   1400074e2 <dtoa_lock>
   14000781c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007820:	8b 40 08             	mov    0x8(%rax),%eax
   140007823:	48 98                	cltq   
   140007825:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   14000782c:	00 
   14000782d:	48 8d 05 0c 8a 00 00 	lea    0x8a0c(%rip),%rax        # 140010240 <freelist>
   140007834:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
   140007838:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000783c:	48 89 10             	mov    %rdx,(%rax)
   14000783f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007843:	8b 40 08             	mov    0x8(%rax),%eax
   140007846:	48 98                	cltq   
   140007848:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
   14000784f:	00 
   140007850:	48 8d 15 e9 89 00 00 	lea    0x89e9(%rip),%rdx        # 140010240 <freelist>
   140007857:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000785b:	48 89 04 11          	mov    %rax,(%rcx,%rdx,1)
   14000785f:	b9 00 00 00 00       	mov    $0x0,%ecx
   140007864:	e8 b1 fd ff ff       	call   14000761a <dtoa_unlock>
   140007869:	90                   	nop
   14000786a:	48 83 c4 20          	add    $0x20,%rsp
   14000786e:	5d                   	pop    %rbp
   14000786f:	c3                   	ret    

0000000140007870 <__multadd_D2A>:
   140007870:	55                   	push   %rbp
   140007871:	48 89 e5             	mov    %rsp,%rbp
   140007874:	48 83 ec 50          	sub    $0x50,%rsp
   140007878:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000787c:	89 55 18             	mov    %edx,0x18(%rbp)
   14000787f:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140007883:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007887:	8b 40 14             	mov    0x14(%rax),%eax
   14000788a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   14000788d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007891:	48 83 c0 18          	add    $0x18,%rax
   140007895:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007899:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400078a0:	8b 45 20             	mov    0x20(%rbp),%eax
   1400078a3:	48 98                	cltq   
   1400078a5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400078a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400078ad:	8b 00                	mov    (%rax),%eax
   1400078af:	89 c2                	mov    %eax,%edx
   1400078b1:	8b 45 18             	mov    0x18(%rbp),%eax
   1400078b4:	48 98                	cltq   
   1400078b6:	48 0f af d0          	imul   %rax,%rdx
   1400078ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400078be:	48 01 d0             	add    %rdx,%rax
   1400078c1:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   1400078c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1400078c9:	48 c1 e8 20          	shr    $0x20,%rax
   1400078cd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400078d1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400078d5:	48 8d 50 04          	lea    0x4(%rax),%rdx
   1400078d9:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   1400078dd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
   1400078e1:	89 10                	mov    %edx,(%rax)
   1400078e3:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400078e7:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400078ea:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
   1400078ed:	7c ba                	jl     1400078a9 <__multadd_D2A+0x39>
   1400078ef:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   1400078f4:	0f 84 97 00 00 00    	je     140007991 <__multadd_D2A+0x121>
   1400078fa:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400078fe:	8b 40 0c             	mov    0xc(%rax),%eax
   140007901:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
   140007904:	7c 64                	jl     14000796a <__multadd_D2A+0xfa>
   140007906:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000790a:	8b 40 08             	mov    0x8(%rax),%eax
   14000790d:	83 c0 01             	add    $0x1,%eax
   140007910:	89 c1                	mov    %eax,%ecx
   140007912:	e8 8f fd ff ff       	call   1400076a6 <__Balloc_D2A>
   140007917:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   14000791b:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
   140007920:	75 07                	jne    140007929 <__multadd_D2A+0xb9>
   140007922:	b8 00 00 00 00       	mov    $0x0,%eax
   140007927:	eb 6c                	jmp    140007995 <__multadd_D2A+0x125>
   140007929:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000792d:	8b 40 14             	mov    0x14(%rax),%eax
   140007930:	48 98                	cltq   
   140007932:	48 83 c0 02          	add    $0x2,%rax
   140007936:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
   14000793d:	00 
   14000793e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007942:	48 8d 50 10          	lea    0x10(%rax),%rdx
   140007946:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000794a:	48 83 c0 10          	add    $0x10,%rax
   14000794e:	49 89 c8             	mov    %rcx,%r8
   140007951:	48 89 c1             	mov    %rax,%rcx
   140007954:	e8 0f 0e 00 00       	call   140008768 <memcpy>
   140007959:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000795d:	e8 86 fe ff ff       	call   1400077e8 <__Bfree_D2A>
   140007962:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140007966:	48 89 45 10          	mov    %rax,0x10(%rbp)
   14000796a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   14000796d:	8d 50 01             	lea    0x1(%rax),%edx
   140007970:	89 55 e4             	mov    %edx,-0x1c(%rbp)
   140007973:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   140007977:	89 d1                	mov    %edx,%ecx
   140007979:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   14000797d:	48 98                	cltq   
   14000797f:	48 83 c0 04          	add    $0x4,%rax
   140007983:	89 4c 82 08          	mov    %ecx,0x8(%rdx,%rax,4)
   140007987:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000798b:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   14000798e:	89 50 14             	mov    %edx,0x14(%rax)
   140007991:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007995:	48 83 c4 50          	add    $0x50,%rsp
   140007999:	5d                   	pop    %rbp
   14000799a:	c3                   	ret    

000000014000799b <__i2b_D2A>:
   14000799b:	55                   	push   %rbp
   14000799c:	48 89 e5             	mov    %rsp,%rbp
   14000799f:	48 83 ec 30          	sub    $0x30,%rsp
   1400079a3:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400079a6:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400079ab:	e8 f6 fc ff ff       	call   1400076a6 <__Balloc_D2A>
   1400079b0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400079b4:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   1400079b9:	75 07                	jne    1400079c2 <__i2b_D2A+0x27>
   1400079bb:	b8 00 00 00 00       	mov    $0x0,%eax
   1400079c0:	eb 19                	jmp    1400079db <__i2b_D2A+0x40>
   1400079c2:	8b 55 10             	mov    0x10(%rbp),%edx
   1400079c5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400079c9:	89 50 18             	mov    %edx,0x18(%rax)
   1400079cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400079d0:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
   1400079d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400079db:	48 83 c4 30          	add    $0x30,%rsp
   1400079df:	5d                   	pop    %rbp
   1400079e0:	c3                   	ret    

00000001400079e1 <__mult_D2A>:
   1400079e1:	55                   	push   %rbp
   1400079e2:	48 89 e5             	mov    %rsp,%rbp
   1400079e5:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
   1400079ec:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400079f0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400079f4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400079f8:	8b 50 14             	mov    0x14(%rax),%edx
   1400079fb:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400079ff:	8b 40 14             	mov    0x14(%rax),%eax
   140007a02:	39 c2                	cmp    %eax,%edx
   140007a04:	7d 18                	jge    140007a1e <__mult_D2A+0x3d>
   140007a06:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007a0a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   140007a0e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140007a12:	48 89 45 10          	mov    %rax,0x10(%rbp)
   140007a16:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140007a1a:	48 89 45 18          	mov    %rax,0x18(%rbp)
   140007a1e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007a22:	8b 40 08             	mov    0x8(%rax),%eax
   140007a25:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140007a28:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007a2c:	8b 40 14             	mov    0x14(%rax),%eax
   140007a2f:	89 45 c4             	mov    %eax,-0x3c(%rbp)
   140007a32:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140007a36:	8b 40 14             	mov    0x14(%rax),%eax
   140007a39:	89 45 c0             	mov    %eax,-0x40(%rbp)
   140007a3c:	8b 55 c4             	mov    -0x3c(%rbp),%edx
   140007a3f:	8b 45 c0             	mov    -0x40(%rbp),%eax
   140007a42:	01 d0                	add    %edx,%eax
   140007a44:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140007a47:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007a4b:	8b 40 0c             	mov    0xc(%rax),%eax
   140007a4e:	39 45 f8             	cmp    %eax,-0x8(%rbp)
   140007a51:	7e 04                	jle    140007a57 <__mult_D2A+0x76>
   140007a53:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140007a57:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140007a5a:	89 c1                	mov    %eax,%ecx
   140007a5c:	e8 45 fc ff ff       	call   1400076a6 <__Balloc_D2A>
   140007a61:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   140007a65:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
   140007a6a:	75 0a                	jne    140007a76 <__mult_D2A+0x95>
   140007a6c:	b8 00 00 00 00       	mov    $0x0,%eax
   140007a71:	e9 88 01 00 00       	jmp    140007bfe <__mult_D2A+0x21d>
   140007a76:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140007a7a:	48 83 c0 18          	add    $0x18,%rax
   140007a7e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007a82:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140007a85:	48 98                	cltq   
   140007a87:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007a8e:	00 
   140007a8f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007a93:	48 01 d0             	add    %rdx,%rax
   140007a96:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140007a9a:	eb 0f                	jmp    140007aab <__mult_D2A+0xca>
   140007a9c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007aa0:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140007aa6:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
   140007aab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007aaf:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
   140007ab3:	72 e7                	jb     140007a9c <__mult_D2A+0xbb>
   140007ab5:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007ab9:	48 83 c0 18          	add    $0x18,%rax
   140007abd:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140007ac1:	8b 45 c4             	mov    -0x3c(%rbp),%eax
   140007ac4:	48 98                	cltq   
   140007ac6:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007acd:	00 
   140007ace:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140007ad2:	48 01 d0             	add    %rdx,%rax
   140007ad5:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   140007ad9:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140007add:	48 83 c0 18          	add    $0x18,%rax
   140007ae1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140007ae5:	8b 45 c0             	mov    -0x40(%rbp),%eax
   140007ae8:	48 98                	cltq   
   140007aea:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007af1:	00 
   140007af2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140007af6:	48 01 d0             	add    %rdx,%rax
   140007af9:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   140007afd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140007b01:	48 83 c0 18          	add    $0x18,%rax
   140007b05:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140007b09:	e9 95 00 00 00       	jmp    140007ba3 <__mult_D2A+0x1c2>
   140007b0e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140007b12:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140007b16:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
   140007b1a:	8b 00                	mov    (%rax),%eax
   140007b1c:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   140007b1f:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
   140007b23:	74 79                	je     140007b9e <__mult_D2A+0x1bd>
   140007b25:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140007b29:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007b2d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140007b31:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140007b35:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
   140007b3c:	00 
   140007b3d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007b41:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140007b45:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140007b49:	8b 00                	mov    (%rax),%eax
   140007b4b:	89 c2                	mov    %eax,%edx
   140007b4d:	8b 45 a4             	mov    -0x5c(%rbp),%eax
   140007b50:	48 0f af d0          	imul   %rax,%rdx
   140007b54:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007b58:	8b 00                	mov    (%rax),%eax
   140007b5a:	89 c0                	mov    %eax,%eax
   140007b5c:	48 01 c2             	add    %rax,%rdx
   140007b5f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140007b63:	48 01 d0             	add    %rdx,%rax
   140007b66:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   140007b6a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   140007b6e:	48 c1 e8 20          	shr    $0x20,%rax
   140007b72:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140007b76:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007b7a:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140007b7e:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   140007b82:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
   140007b86:	89 10                	mov    %edx,(%rax)
   140007b88:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007b8c:	48 3b 45 b0          	cmp    -0x50(%rbp),%rax
   140007b90:	72 ab                	jb     140007b3d <__mult_D2A+0x15c>
   140007b92:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140007b96:	89 c2                	mov    %eax,%edx
   140007b98:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007b9c:	89 10                	mov    %edx,(%rax)
   140007b9e:	48 83 45 d8 04       	addq   $0x4,-0x28(%rbp)
   140007ba3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140007ba7:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
   140007bab:	0f 82 5d ff ff ff    	jb     140007b0e <__mult_D2A+0x12d>
   140007bb1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140007bb5:	48 83 c0 18          	add    $0x18,%rax
   140007bb9:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140007bbd:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140007bc0:	48 98                	cltq   
   140007bc2:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007bc9:	00 
   140007bca:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140007bce:	48 01 d0             	add    %rdx,%rax
   140007bd1:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140007bd5:	eb 04                	jmp    140007bdb <__mult_D2A+0x1fa>
   140007bd7:	83 6d f8 01          	subl   $0x1,-0x8(%rbp)
   140007bdb:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   140007bdf:	7e 0f                	jle    140007bf0 <__mult_D2A+0x20f>
   140007be1:	48 83 6d e0 04       	subq   $0x4,-0x20(%rbp)
   140007be6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007bea:	8b 00                	mov    (%rax),%eax
   140007bec:	85 c0                	test   %eax,%eax
   140007bee:	74 e7                	je     140007bd7 <__mult_D2A+0x1f6>
   140007bf0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140007bf4:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140007bf7:	89 50 14             	mov    %edx,0x14(%rax)
   140007bfa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   140007bfe:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
   140007c05:	5d                   	pop    %rbp
   140007c06:	c3                   	ret    

0000000140007c07 <__pow5mult_D2A>:
   140007c07:	55                   	push   %rbp
   140007c08:	48 89 e5             	mov    %rsp,%rbp
   140007c0b:	48 83 ec 40          	sub    $0x40,%rsp
   140007c0f:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140007c13:	89 55 18             	mov    %edx,0x18(%rbp)
   140007c16:	8b 45 18             	mov    0x18(%rbp),%eax
   140007c19:	83 e0 03             	and    $0x3,%eax
   140007c1c:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140007c1f:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
   140007c23:	74 40                	je     140007c65 <__pow5mult_D2A+0x5e>
   140007c25:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140007c28:	83 e8 01             	sub    $0x1,%eax
   140007c2b:	48 98                	cltq   
   140007c2d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007c34:	00 
   140007c35:	48 8d 05 7c 24 00 00 	lea    0x247c(%rip),%rax        # 14000a0b8 <p05.0>
   140007c3c:	8b 04 02             	mov    (%rdx,%rax,1),%eax
   140007c3f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140007c45:	89 c2                	mov    %eax,%edx
   140007c47:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140007c4b:	e8 20 fc ff ff       	call   140007870 <__multadd_D2A>
   140007c50:	48 89 45 10          	mov    %rax,0x10(%rbp)
   140007c54:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140007c59:	75 0a                	jne    140007c65 <__pow5mult_D2A+0x5e>
   140007c5b:	b8 00 00 00 00       	mov    $0x0,%eax
   140007c60:	e9 55 01 00 00       	jmp    140007dba <__pow5mult_D2A+0x1b3>
   140007c65:	c1 7d 18 02          	sarl   $0x2,0x18(%rbp)
   140007c69:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   140007c6d:	75 09                	jne    140007c78 <__pow5mult_D2A+0x71>
   140007c6f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007c73:	e9 42 01 00 00       	jmp    140007dba <__pow5mult_D2A+0x1b3>
   140007c78:	48 8b 05 21 8f 00 00 	mov    0x8f21(%rip),%rax        # 140010ba0 <p5s>
   140007c7f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140007c83:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140007c88:	75 5e                	jne    140007ce8 <__pow5mult_D2A+0xe1>
   140007c8a:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007c8f:	e8 4e f8 ff ff       	call   1400074e2 <dtoa_lock>
   140007c94:	48 8b 05 05 8f 00 00 	mov    0x8f05(%rip),%rax        # 140010ba0 <p5s>
   140007c9b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140007c9f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140007ca4:	75 38                	jne    140007cde <__pow5mult_D2A+0xd7>
   140007ca6:	b9 71 02 00 00       	mov    $0x271,%ecx
   140007cab:	e8 eb fc ff ff       	call   14000799b <__i2b_D2A>
   140007cb0:	48 89 05 e9 8e 00 00 	mov    %rax,0x8ee9(%rip)        # 140010ba0 <p5s>
   140007cb7:	48 8b 05 e2 8e 00 00 	mov    0x8ee2(%rip),%rax        # 140010ba0 <p5s>
   140007cbe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140007cc2:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140007cc7:	75 0a                	jne    140007cd3 <__pow5mult_D2A+0xcc>
   140007cc9:	b8 00 00 00 00       	mov    $0x0,%eax
   140007cce:	e9 e7 00 00 00       	jmp    140007dba <__pow5mult_D2A+0x1b3>
   140007cd3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007cd7:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140007cde:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007ce3:	e8 32 f9 ff ff       	call   14000761a <dtoa_unlock>
   140007ce8:	8b 45 18             	mov    0x18(%rbp),%eax
   140007ceb:	83 e0 01             	and    $0x1,%eax
   140007cee:	85 c0                	test   %eax,%eax
   140007cf0:	74 36                	je     140007d28 <__pow5mult_D2A+0x121>
   140007cf2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007cf6:	48 89 c2             	mov    %rax,%rdx
   140007cf9:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140007cfd:	e8 df fc ff ff       	call   1400079e1 <__mult_D2A>
   140007d02:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140007d06:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
   140007d0b:	75 0a                	jne    140007d17 <__pow5mult_D2A+0x110>
   140007d0d:	b8 00 00 00 00       	mov    $0x0,%eax
   140007d12:	e9 a3 00 00 00       	jmp    140007dba <__pow5mult_D2A+0x1b3>
   140007d17:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140007d1b:	e8 c8 fa ff ff       	call   1400077e8 <__Bfree_D2A>
   140007d20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007d24:	48 89 45 10          	mov    %rax,0x10(%rbp)
   140007d28:	d1 7d 18             	sarl   0x18(%rbp)
   140007d2b:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   140007d2f:	0f 84 80 00 00 00    	je     140007db5 <__pow5mult_D2A+0x1ae>
   140007d35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007d39:	48 8b 00             	mov    (%rax),%rax
   140007d3c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007d40:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140007d45:	75 61                	jne    140007da8 <__pow5mult_D2A+0x1a1>
   140007d47:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007d4c:	e8 91 f7 ff ff       	call   1400074e2 <dtoa_lock>
   140007d51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007d55:	48 8b 00             	mov    (%rax),%rax
   140007d58:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007d5c:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140007d61:	75 3b                	jne    140007d9e <__pow5mult_D2A+0x197>
   140007d63:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140007d67:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007d6b:	48 89 c1             	mov    %rax,%rcx
   140007d6e:	e8 6e fc ff ff       	call   1400079e1 <__mult_D2A>
   140007d73:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140007d77:	48 89 02             	mov    %rax,(%rdx)
   140007d7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007d7e:	48 8b 00             	mov    (%rax),%rax
   140007d81:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007d85:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140007d8a:	75 07                	jne    140007d93 <__pow5mult_D2A+0x18c>
   140007d8c:	b8 00 00 00 00       	mov    $0x0,%eax
   140007d91:	eb 27                	jmp    140007dba <__pow5mult_D2A+0x1b3>
   140007d93:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007d97:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140007d9e:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007da3:	e8 72 f8 ff ff       	call   14000761a <dtoa_unlock>
   140007da8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007dac:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140007db0:	e9 33 ff ff ff       	jmp    140007ce8 <__pow5mult_D2A+0xe1>
   140007db5:	90                   	nop
   140007db6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007dba:	48 83 c4 40          	add    $0x40,%rsp
   140007dbe:	5d                   	pop    %rbp
   140007dbf:	c3                   	ret    

0000000140007dc0 <__lshift_D2A>:
   140007dc0:	55                   	push   %rbp
   140007dc1:	48 89 e5             	mov    %rsp,%rbp
   140007dc4:	48 83 ec 60          	sub    $0x60,%rsp
   140007dc8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140007dcc:	89 55 18             	mov    %edx,0x18(%rbp)
   140007dcf:	8b 45 18             	mov    0x18(%rbp),%eax
   140007dd2:	c1 f8 05             	sar    $0x5,%eax
   140007dd5:	89 45 d8             	mov    %eax,-0x28(%rbp)
   140007dd8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007ddc:	8b 40 08             	mov    0x8(%rax),%eax
   140007ddf:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140007de2:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007de6:	8b 50 14             	mov    0x14(%rax),%edx
   140007de9:	8b 45 d8             	mov    -0x28(%rbp),%eax
   140007dec:	01 d0                	add    %edx,%eax
   140007dee:	83 c0 01             	add    $0x1,%eax
   140007df1:	89 45 f4             	mov    %eax,-0xc(%rbp)
   140007df4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007df8:	8b 40 0c             	mov    0xc(%rax),%eax
   140007dfb:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140007dfe:	eb 07                	jmp    140007e07 <__lshift_D2A+0x47>
   140007e00:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   140007e04:	d1 65 fc             	shll   -0x4(%rbp)
   140007e07:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140007e0a:	3b 45 fc             	cmp    -0x4(%rbp),%eax
   140007e0d:	7f f1                	jg     140007e00 <__lshift_D2A+0x40>
   140007e0f:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140007e12:	89 c1                	mov    %eax,%ecx
   140007e14:	e8 8d f8 ff ff       	call   1400076a6 <__Balloc_D2A>
   140007e19:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140007e1d:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
   140007e22:	75 0a                	jne    140007e2e <__lshift_D2A+0x6e>
   140007e24:	b8 00 00 00 00       	mov    $0x0,%eax
   140007e29:	e9 16 01 00 00       	jmp    140007f44 <__lshift_D2A+0x184>
   140007e2e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140007e32:	48 83 c0 18          	add    $0x18,%rax
   140007e36:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140007e3a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140007e41:	eb 16                	jmp    140007e59 <__lshift_D2A+0x99>
   140007e43:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007e47:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140007e4b:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   140007e4f:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140007e55:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140007e59:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140007e5c:	3b 45 d8             	cmp    -0x28(%rbp),%eax
   140007e5f:	7c e2                	jl     140007e43 <__lshift_D2A+0x83>
   140007e61:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007e65:	48 83 c0 18          	add    $0x18,%rax
   140007e69:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140007e6d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007e71:	8b 40 14             	mov    0x14(%rax),%eax
   140007e74:	48 98                	cltq   
   140007e76:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007e7d:	00 
   140007e7e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140007e82:	48 01 d0             	add    %rdx,%rax
   140007e85:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   140007e89:	83 65 18 1f          	andl   $0x1f,0x18(%rbp)
   140007e8d:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   140007e91:	74 71                	je     140007f04 <__lshift_D2A+0x144>
   140007e93:	b8 20 00 00 00       	mov    $0x20,%eax
   140007e98:	2b 45 18             	sub    0x18(%rbp),%eax
   140007e9b:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140007e9e:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
   140007ea5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140007ea9:	8b 10                	mov    (%rax),%edx
   140007eab:	8b 45 18             	mov    0x18(%rbp),%eax
   140007eae:	89 c1                	mov    %eax,%ecx
   140007eb0:	d3 e2                	shl    %cl,%edx
   140007eb2:	89 d1                	mov    %edx,%ecx
   140007eb4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007eb8:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140007ebc:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   140007ec0:	0b 4d dc             	or     -0x24(%rbp),%ecx
   140007ec3:	89 ca                	mov    %ecx,%edx
   140007ec5:	89 10                	mov    %edx,(%rax)
   140007ec7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140007ecb:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140007ecf:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
   140007ed3:	8b 10                	mov    (%rax),%edx
   140007ed5:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140007ed8:	89 c1                	mov    %eax,%ecx
   140007eda:	d3 ea                	shr    %cl,%edx
   140007edc:	89 d0                	mov    %edx,%eax
   140007ede:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140007ee1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140007ee5:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
   140007ee9:	72 ba                	jb     140007ea5 <__lshift_D2A+0xe5>
   140007eeb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007eef:	8b 55 dc             	mov    -0x24(%rbp),%edx
   140007ef2:	89 10                	mov    %edx,(%rax)
   140007ef4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007ef8:	8b 00                	mov    (%rax),%eax
   140007efa:	85 c0                	test   %eax,%eax
   140007efc:	74 2c                	je     140007f2a <__lshift_D2A+0x16a>
   140007efe:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140007f02:	eb 26                	jmp    140007f2a <__lshift_D2A+0x16a>
   140007f04:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   140007f08:	48 8d 42 04          	lea    0x4(%rdx),%rax
   140007f0c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140007f10:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007f14:	48 8d 48 04          	lea    0x4(%rax),%rcx
   140007f18:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
   140007f1c:	8b 12                	mov    (%rdx),%edx
   140007f1e:	89 10                	mov    %edx,(%rax)
   140007f20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140007f24:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
   140007f28:	72 da                	jb     140007f04 <__lshift_D2A+0x144>
   140007f2a:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140007f2d:	8d 50 ff             	lea    -0x1(%rax),%edx
   140007f30:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140007f34:	89 50 14             	mov    %edx,0x14(%rax)
   140007f37:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140007f3b:	e8 a8 f8 ff ff       	call   1400077e8 <__Bfree_D2A>
   140007f40:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140007f44:	48 83 c4 60          	add    $0x60,%rsp
   140007f48:	5d                   	pop    %rbp
   140007f49:	c3                   	ret    

0000000140007f4a <__cmp_D2A>:
   140007f4a:	55                   	push   %rbp
   140007f4b:	48 89 e5             	mov    %rsp,%rbp
   140007f4e:	48 83 ec 30          	sub    $0x30,%rsp
   140007f52:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140007f56:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140007f5a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007f5e:	8b 40 14             	mov    0x14(%rax),%eax
   140007f61:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140007f64:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140007f68:	8b 40 14             	mov    0x14(%rax),%eax
   140007f6b:	89 45 e8             	mov    %eax,-0x18(%rbp)
   140007f6e:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140007f71:	29 45 ec             	sub    %eax,-0x14(%rbp)
   140007f74:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
   140007f78:	74 08                	je     140007f82 <__cmp_D2A+0x38>
   140007f7a:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140007f7d:	e9 92 00 00 00       	jmp    140008014 <__cmp_D2A+0xca>
   140007f82:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140007f86:	48 83 c0 18          	add    $0x18,%rax
   140007f8a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140007f8e:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140007f91:	48 98                	cltq   
   140007f93:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007f9a:	00 
   140007f9b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140007f9f:	48 01 d0             	add    %rdx,%rax
   140007fa2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140007fa6:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140007faa:	48 83 c0 18          	add    $0x18,%rax
   140007fae:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140007fb2:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140007fb5:	48 98                	cltq   
   140007fb7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007fbe:	00 
   140007fbf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140007fc3:	48 01 d0             	add    %rdx,%rax
   140007fc6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140007fca:	48 83 6d f8 04       	subq   $0x4,-0x8(%rbp)
   140007fcf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007fd3:	8b 10                	mov    (%rax),%edx
   140007fd5:	48 83 6d f0 04       	subq   $0x4,-0x10(%rbp)
   140007fda:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007fde:	8b 00                	mov    (%rax),%eax
   140007fe0:	39 c2                	cmp    %eax,%edx
   140007fe2:	74 1e                	je     140008002 <__cmp_D2A+0xb8>
   140007fe4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140007fe8:	8b 10                	mov    (%rax),%edx
   140007fea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140007fee:	8b 00                	mov    (%rax),%eax
   140007ff0:	39 c2                	cmp    %eax,%edx
   140007ff2:	73 07                	jae    140007ffb <__cmp_D2A+0xb1>
   140007ff4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007ff9:	eb 19                	jmp    140008014 <__cmp_D2A+0xca>
   140007ffb:	b8 01 00 00 00       	mov    $0x1,%eax
   140008000:	eb 12                	jmp    140008014 <__cmp_D2A+0xca>
   140008002:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008006:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
   14000800a:	76 02                	jbe    14000800e <__cmp_D2A+0xc4>
   14000800c:	eb bc                	jmp    140007fca <__cmp_D2A+0x80>
   14000800e:	90                   	nop
   14000800f:	b8 00 00 00 00       	mov    $0x0,%eax
   140008014:	48 83 c4 30          	add    $0x30,%rsp
   140008018:	5d                   	pop    %rbp
   140008019:	c3                   	ret    

000000014000801a <__diff_D2A>:
   14000801a:	55                   	push   %rbp
   14000801b:	48 89 e5             	mov    %rsp,%rbp
   14000801e:	48 83 ec 70          	sub    $0x70,%rsp
   140008022:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140008026:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000802a:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000802e:	48 89 c2             	mov    %rax,%rdx
   140008031:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140008035:	e8 10 ff ff ff       	call   140007f4a <__cmp_D2A>
   14000803a:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000803d:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140008041:	75 3e                	jne    140008081 <__diff_D2A+0x67>
   140008043:	b9 00 00 00 00       	mov    $0x0,%ecx
   140008048:	e8 59 f6 ff ff       	call   1400076a6 <__Balloc_D2A>
   14000804d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   140008051:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
   140008056:	75 0a                	jne    140008062 <__diff_D2A+0x48>
   140008058:	b8 00 00 00 00       	mov    $0x0,%eax
   14000805d:	e9 ab 01 00 00       	jmp    14000820d <__diff_D2A+0x1f3>
   140008062:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140008066:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
   14000806d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140008071:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%rax)
   140008078:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000807c:	e9 8c 01 00 00       	jmp    14000820d <__diff_D2A+0x1f3>
   140008081:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140008085:	79 21                	jns    1400080a8 <__diff_D2A+0x8e>
   140008087:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000808b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   14000808f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008093:	48 89 45 10          	mov    %rax,0x10(%rbp)
   140008097:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000809b:	48 89 45 18          	mov    %rax,0x18(%rbp)
   14000809f:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
   1400080a6:	eb 07                	jmp    1400080af <__diff_D2A+0x95>
   1400080a8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400080af:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400080b3:	8b 40 08             	mov    0x8(%rax),%eax
   1400080b6:	89 c1                	mov    %eax,%ecx
   1400080b8:	e8 e9 f5 ff ff       	call   1400076a6 <__Balloc_D2A>
   1400080bd:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   1400080c1:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
   1400080c6:	75 0a                	jne    1400080d2 <__diff_D2A+0xb8>
   1400080c8:	b8 00 00 00 00       	mov    $0x0,%eax
   1400080cd:	e9 3b 01 00 00       	jmp    14000820d <__diff_D2A+0x1f3>
   1400080d2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   1400080d6:	8b 55 fc             	mov    -0x4(%rbp),%edx
   1400080d9:	89 50 10             	mov    %edx,0x10(%rax)
   1400080dc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400080e0:	8b 40 14             	mov    0x14(%rax),%eax
   1400080e3:	89 45 f8             	mov    %eax,-0x8(%rbp)
   1400080e6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400080ea:	48 83 c0 18          	add    $0x18,%rax
   1400080ee:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400080f2:	8b 45 f8             	mov    -0x8(%rbp),%eax
   1400080f5:	48 98                	cltq   
   1400080f7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   1400080fe:	00 
   1400080ff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008103:	48 01 d0             	add    %rdx,%rax
   140008106:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   14000810a:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000810e:	8b 40 14             	mov    0x14(%rax),%eax
   140008111:	89 45 c4             	mov    %eax,-0x3c(%rbp)
   140008114:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008118:	48 83 c0 18          	add    $0x18,%rax
   14000811c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140008120:	8b 45 c4             	mov    -0x3c(%rbp),%eax
   140008123:	48 98                	cltq   
   140008125:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000812c:	00 
   14000812d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140008131:	48 01 d0             	add    %rdx,%rax
   140008134:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140008138:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000813c:	48 83 c0 18          	add    $0x18,%rax
   140008140:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140008144:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
   14000814b:	00 
   14000814c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008150:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140008154:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140008158:	8b 00                	mov    (%rax),%eax
   14000815a:	89 c1                	mov    %eax,%ecx
   14000815c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140008160:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140008164:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
   140008168:	8b 00                	mov    (%rax),%eax
   14000816a:	89 c2                	mov    %eax,%edx
   14000816c:	48 89 c8             	mov    %rcx,%rax
   14000816f:	48 29 d0             	sub    %rdx,%rax
   140008172:	48 2b 45 d8          	sub    -0x28(%rbp),%rax
   140008176:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   14000817a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
   14000817e:	48 c1 e8 20          	shr    $0x20,%rax
   140008182:	83 e0 01             	and    $0x1,%eax
   140008185:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140008189:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000818d:	48 8d 50 04          	lea    0x4(%rax),%rdx
   140008191:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   140008195:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   140008199:	89 10                	mov    %edx,(%rax)
   14000819b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000819f:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
   1400081a3:	72 a7                	jb     14000814c <__diff_D2A+0x132>
   1400081a5:	eb 39                	jmp    1400081e0 <__diff_D2A+0x1c6>
   1400081a7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400081ab:	48 8d 50 04          	lea    0x4(%rax),%rdx
   1400081af:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   1400081b3:	8b 00                	mov    (%rax),%eax
   1400081b5:	89 c0                	mov    %eax,%eax
   1400081b7:	48 2b 45 d8          	sub    -0x28(%rbp),%rax
   1400081bb:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   1400081bf:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
   1400081c3:	48 c1 e8 20          	shr    $0x20,%rax
   1400081c7:	83 e0 01             	and    $0x1,%eax
   1400081ca:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   1400081ce:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400081d2:	48 8d 50 04          	lea    0x4(%rax),%rdx
   1400081d6:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   1400081da:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   1400081de:	89 10                	mov    %edx,(%rax)
   1400081e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400081e4:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
   1400081e8:	72 bd                	jb     1400081a7 <__diff_D2A+0x18d>
   1400081ea:	eb 04                	jmp    1400081f0 <__diff_D2A+0x1d6>
   1400081ec:	83 6d f8 01          	subl   $0x1,-0x8(%rbp)
   1400081f0:	48 83 6d e0 04       	subq   $0x4,-0x20(%rbp)
   1400081f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400081f9:	8b 00                	mov    (%rax),%eax
   1400081fb:	85 c0                	test   %eax,%eax
   1400081fd:	74 ed                	je     1400081ec <__diff_D2A+0x1d2>
   1400081ff:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   140008203:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140008206:	89 50 14             	mov    %edx,0x14(%rax)
   140008209:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   14000820d:	48 83 c4 70          	add    $0x70,%rsp
   140008211:	5d                   	pop    %rbp
   140008212:	c3                   	ret    

0000000140008213 <__b2d_D2A>:
   140008213:	55                   	push   %rbp
   140008214:	48 89 e5             	mov    %rsp,%rbp
   140008217:	48 83 ec 50          	sub    $0x50,%rsp
   14000821b:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000821f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140008223:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008227:	48 83 c0 18          	add    $0x18,%rax
   14000822b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000822f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008233:	8b 40 14             	mov    0x14(%rax),%eax
   140008236:	48 98                	cltq   
   140008238:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000823f:	00 
   140008240:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008244:	48 01 d0             	add    %rdx,%rax
   140008247:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000824b:	48 83 6d f8 04       	subq   $0x4,-0x8(%rbp)
   140008250:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008254:	8b 00                	mov    (%rax),%eax
   140008256:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140008259:	8b 45 ec             	mov    -0x14(%rbp),%eax
   14000825c:	89 c1                	mov    %eax,%ecx
   14000825e:	e8 33 f4 ff ff       	call   140007696 <__hi0bits_D2A>
   140008263:	89 45 e8             	mov    %eax,-0x18(%rbp)
   140008266:	b8 20 00 00 00       	mov    $0x20,%eax
   14000826b:	2b 45 e8             	sub    -0x18(%rbp),%eax
   14000826e:	89 c2                	mov    %eax,%edx
   140008270:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008274:	89 10                	mov    %edx,(%rax)
   140008276:	83 7d e8 0a          	cmpl   $0xa,-0x18(%rbp)
   14000827a:	7f 64                	jg     1400082e0 <__b2d_D2A+0xcd>
   14000827c:	b8 0b 00 00 00       	mov    $0xb,%eax
   140008281:	2b 45 e8             	sub    -0x18(%rbp),%eax
   140008284:	8b 55 ec             	mov    -0x14(%rbp),%edx
   140008287:	89 c1                	mov    %eax,%ecx
   140008289:	d3 ea                	shr    %cl,%edx
   14000828b:	89 d0                	mov    %edx,%eax
   14000828d:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   140008292:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140008295:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008299:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
   14000829d:	76 0d                	jbe    1400082ac <__b2d_D2A+0x99>
   14000829f:	48 83 6d f8 04       	subq   $0x4,-0x8(%rbp)
   1400082a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400082a8:	8b 00                	mov    (%rax),%eax
   1400082aa:	eb 05                	jmp    1400082b1 <__b2d_D2A+0x9e>
   1400082ac:	b8 00 00 00 00       	mov    $0x0,%eax
   1400082b1:	89 45 e0             	mov    %eax,-0x20(%rbp)
   1400082b4:	8b 45 e8             	mov    -0x18(%rbp),%eax
   1400082b7:	83 c0 15             	add    $0x15,%eax
   1400082ba:	8b 55 ec             	mov    -0x14(%rbp),%edx
   1400082bd:	89 c1                	mov    %eax,%ecx
   1400082bf:	d3 e2                	shl    %cl,%edx
   1400082c1:	41 89 d0             	mov    %edx,%r8d
   1400082c4:	b8 0b 00 00 00       	mov    $0xb,%eax
   1400082c9:	2b 45 e8             	sub    -0x18(%rbp),%eax
   1400082cc:	8b 55 e0             	mov    -0x20(%rbp),%edx
   1400082cf:	89 c1                	mov    %eax,%ecx
   1400082d1:	d3 ea                	shr    %cl,%edx
   1400082d3:	89 d0                	mov    %edx,%eax
   1400082d5:	44 09 c0             	or     %r8d,%eax
   1400082d8:	89 45 d8             	mov    %eax,-0x28(%rbp)
   1400082db:	e9 a8 00 00 00       	jmp    140008388 <__b2d_D2A+0x175>
   1400082e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400082e4:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
   1400082e8:	76 0d                	jbe    1400082f7 <__b2d_D2A+0xe4>
   1400082ea:	48 83 6d f8 04       	subq   $0x4,-0x8(%rbp)
   1400082ef:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400082f3:	8b 00                	mov    (%rax),%eax
   1400082f5:	eb 05                	jmp    1400082fc <__b2d_D2A+0xe9>
   1400082f7:	b8 00 00 00 00       	mov    $0x0,%eax
   1400082fc:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   1400082ff:	83 6d e8 0b          	subl   $0xb,-0x18(%rbp)
   140008303:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
   140008307:	74 6e                	je     140008377 <__b2d_D2A+0x164>
   140008309:	8b 45 e8             	mov    -0x18(%rbp),%eax
   14000830c:	8b 55 ec             	mov    -0x14(%rbp),%edx
   14000830f:	89 c1                	mov    %eax,%ecx
   140008311:	d3 e2                	shl    %cl,%edx
   140008313:	41 89 d0             	mov    %edx,%r8d
   140008316:	b8 20 00 00 00       	mov    $0x20,%eax
   14000831b:	2b 45 e8             	sub    -0x18(%rbp),%eax
   14000831e:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140008321:	89 c1                	mov    %eax,%ecx
   140008323:	d3 ea                	shr    %cl,%edx
   140008325:	89 d0                	mov    %edx,%eax
   140008327:	44 09 c0             	or     %r8d,%eax
   14000832a:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   14000832f:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140008332:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008336:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
   14000833a:	76 0d                	jbe    140008349 <__b2d_D2A+0x136>
   14000833c:	48 83 6d f8 04       	subq   $0x4,-0x8(%rbp)
   140008341:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008345:	8b 00                	mov    (%rax),%eax
   140008347:	eb 05                	jmp    14000834e <__b2d_D2A+0x13b>
   140008349:	b8 00 00 00 00       	mov    $0x0,%eax
   14000834e:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140008351:	8b 45 e8             	mov    -0x18(%rbp),%eax
   140008354:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140008357:	89 c1                	mov    %eax,%ecx
   140008359:	d3 e2                	shl    %cl,%edx
   14000835b:	41 89 d0             	mov    %edx,%r8d
   14000835e:	b8 20 00 00 00       	mov    $0x20,%eax
   140008363:	2b 45 e8             	sub    -0x18(%rbp),%eax
   140008366:	8b 55 ec             	mov    -0x14(%rbp),%edx
   140008369:	89 c1                	mov    %eax,%ecx
   14000836b:	d3 ea                	shr    %cl,%edx
   14000836d:	89 d0                	mov    %edx,%eax
   14000836f:	44 09 c0             	or     %r8d,%eax
   140008372:	89 45 d8             	mov    %eax,-0x28(%rbp)
   140008375:	eb 11                	jmp    140008388 <__b2d_D2A+0x175>
   140008377:	8b 45 ec             	mov    -0x14(%rbp),%eax
   14000837a:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   14000837f:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140008382:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140008385:	89 45 d8             	mov    %eax,-0x28(%rbp)
   140008388:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
   14000838d:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140008392:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140008397:	48 83 c4 50          	add    $0x50,%rsp
   14000839b:	5d                   	pop    %rbp
   14000839c:	c3                   	ret    

000000014000839d <__d2b_D2A>:
   14000839d:	55                   	push   %rbp
   14000839e:	53                   	push   %rbx
   14000839f:	48 83 ec 58          	sub    $0x58,%rsp
   1400083a3:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   1400083a8:	f2 0f 11 45 20       	movsd  %xmm0,0x20(%rbp)
   1400083ad:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400083b1:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   1400083b5:	f2 0f 10 45 20       	movsd  0x20(%rbp),%xmm0
   1400083ba:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
   1400083bf:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400083c4:	e8 dd f2 ff ff       	call   1400076a6 <__Balloc_D2A>
   1400083c9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400083cd:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400083d2:	75 0a                	jne    1400083de <__d2b_D2A+0x41>
   1400083d4:	b8 00 00 00 00       	mov    $0x0,%eax
   1400083d9:	e9 68 01 00 00       	jmp    140008546 <__d2b_D2A+0x1a9>
   1400083de:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400083e2:	48 83 c0 18          	add    $0x18,%rax
   1400083e6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400083ea:	8b 45 dc             	mov    -0x24(%rbp),%eax
   1400083ed:	25 ff ff 0f 00       	and    $0xfffff,%eax
   1400083f2:	89 45 d0             	mov    %eax,-0x30(%rbp)
   1400083f5:	8b 45 dc             	mov    -0x24(%rbp),%eax
   1400083f8:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
   1400083fd:	89 45 dc             	mov    %eax,-0x24(%rbp)
   140008400:	8b 45 dc             	mov    -0x24(%rbp),%eax
   140008403:	c1 e8 14             	shr    $0x14,%eax
   140008406:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   140008409:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   14000840d:	74 0b                	je     14000841a <__d2b_D2A+0x7d>
   14000840f:	8b 45 d0             	mov    -0x30(%rbp),%eax
   140008412:	0d 00 00 10 00       	or     $0x100000,%eax
   140008417:	89 45 d0             	mov    %eax,-0x30(%rbp)
   14000841a:	8b 45 d8             	mov    -0x28(%rbp),%eax
   14000841d:	89 45 d4             	mov    %eax,-0x2c(%rbp)
   140008420:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   140008423:	85 c0                	test   %eax,%eax
   140008425:	74 7b                	je     1400084a2 <__d2b_D2A+0x105>
   140008427:	48 8d 45 d4          	lea    -0x2c(%rbp),%rax
   14000842b:	48 89 c1             	mov    %rax,%rcx
   14000842e:	e8 2e f2 ff ff       	call   140007661 <__lo0bits_D2A>
   140008433:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140008436:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   14000843a:	74 2b                	je     140008467 <__d2b_D2A+0xca>
   14000843c:	8b 55 d0             	mov    -0x30(%rbp),%edx
   14000843f:	b8 20 00 00 00       	mov    $0x20,%eax
   140008444:	2b 45 f8             	sub    -0x8(%rbp),%eax
   140008447:	89 c1                	mov    %eax,%ecx
   140008449:	d3 e2                	shl    %cl,%edx
   14000844b:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   14000844e:	09 c2                	or     %eax,%edx
   140008450:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140008454:	89 10                	mov    %edx,(%rax)
   140008456:	8b 55 d0             	mov    -0x30(%rbp),%edx
   140008459:	8b 45 f8             	mov    -0x8(%rbp),%eax
   14000845c:	89 c1                	mov    %eax,%ecx
   14000845e:	d3 ea                	shr    %cl,%edx
   140008460:	89 d0                	mov    %edx,%eax
   140008462:	89 45 d0             	mov    %eax,-0x30(%rbp)
   140008465:	eb 09                	jmp    140008470 <__d2b_D2A+0xd3>
   140008467:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   14000846a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000846e:	89 10                	mov    %edx,(%rax)
   140008470:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140008474:	48 83 c0 04          	add    $0x4,%rax
   140008478:	8b 55 d0             	mov    -0x30(%rbp),%edx
   14000847b:	89 10                	mov    %edx,(%rax)
   14000847d:	8b 00                	mov    (%rax),%eax
   14000847f:	85 c0                	test   %eax,%eax
   140008481:	74 07                	je     14000848a <__d2b_D2A+0xed>
   140008483:	ba 02 00 00 00       	mov    $0x2,%edx
   140008488:	eb 05                	jmp    14000848f <__d2b_D2A+0xf2>
   14000848a:	ba 01 00 00 00       	mov    $0x1,%edx
   14000848f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008493:	89 50 14             	mov    %edx,0x14(%rax)
   140008496:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000849a:	8b 40 14             	mov    0x14(%rax),%eax
   14000849d:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400084a0:	eb 31                	jmp    1400084d3 <__d2b_D2A+0x136>
   1400084a2:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   1400084a6:	48 89 c1             	mov    %rax,%rcx
   1400084a9:	e8 b3 f1 ff ff       	call   140007661 <__lo0bits_D2A>
   1400084ae:	89 45 f8             	mov    %eax,-0x8(%rbp)
   1400084b1:	8b 55 d0             	mov    -0x30(%rbp),%edx
   1400084b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400084b8:	89 10                	mov    %edx,(%rax)
   1400084ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400084be:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
   1400084c5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400084c9:	8b 40 14             	mov    0x14(%rax),%eax
   1400084cc:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400084cf:	83 45 f8 20          	addl   $0x20,-0x8(%rbp)
   1400084d3:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   1400084d7:	74 26                	je     1400084ff <__d2b_D2A+0x162>
   1400084d9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   1400084dc:	8d 90 cd fb ff ff    	lea    -0x433(%rax),%edx
   1400084e2:	8b 45 f8             	mov    -0x8(%rbp),%eax
   1400084e5:	01 c2                	add    %eax,%edx
   1400084e7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400084eb:	89 10                	mov    %edx,(%rax)
   1400084ed:	b8 35 00 00 00       	mov    $0x35,%eax
   1400084f2:	2b 45 f8             	sub    -0x8(%rbp),%eax
   1400084f5:	89 c2                	mov    %eax,%edx
   1400084f7:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400084fb:	89 10                	mov    %edx,(%rax)
   1400084fd:	eb 43                	jmp    140008542 <__d2b_D2A+0x1a5>
   1400084ff:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140008502:	8d 90 ce fb ff ff    	lea    -0x432(%rax),%edx
   140008508:	8b 45 f8             	mov    -0x8(%rbp),%eax
   14000850b:	01 c2                	add    %eax,%edx
   14000850d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140008511:	89 10                	mov    %edx,(%rax)
   140008513:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140008516:	c1 e0 05             	shl    $0x5,%eax
   140008519:	89 c3                	mov    %eax,%ebx
   14000851b:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000851e:	48 98                	cltq   
   140008520:	48 c1 e0 02          	shl    $0x2,%rax
   140008524:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
   140008528:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000852c:	48 01 d0             	add    %rdx,%rax
   14000852f:	8b 00                	mov    (%rax),%eax
   140008531:	89 c1                	mov    %eax,%ecx
   140008533:	e8 5e f1 ff ff       	call   140007696 <__hi0bits_D2A>
   140008538:	29 c3                	sub    %eax,%ebx
   14000853a:	89 da                	mov    %ebx,%edx
   14000853c:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140008540:	89 10                	mov    %edx,(%rax)
   140008542:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008546:	48 83 c4 58          	add    $0x58,%rsp
   14000854a:	5b                   	pop    %rbx
   14000854b:	5d                   	pop    %rbp
   14000854c:	c3                   	ret    

000000014000854d <__strcp_D2A>:
   14000854d:	55                   	push   %rbp
   14000854e:	48 89 e5             	mov    %rsp,%rbp
   140008551:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140008555:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140008559:	eb 05                	jmp    140008560 <__strcp_D2A+0x13>
   14000855b:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   140008560:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008564:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140008568:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000856c:	0f b6 10             	movzbl (%rax),%edx
   14000856f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008573:	88 10                	mov    %dl,(%rax)
   140008575:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008579:	0f b6 00             	movzbl (%rax),%eax
   14000857c:	84 c0                	test   %al,%al
   14000857e:	75 db                	jne    14000855b <__strcp_D2A+0xe>
   140008580:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008584:	5d                   	pop    %rbp
   140008585:	c3                   	ret    
   140008586:	90                   	nop
   140008587:	90                   	nop
   140008588:	90                   	nop
   140008589:	90                   	nop
   14000858a:	90                   	nop
   14000858b:	90                   	nop
   14000858c:	90                   	nop
   14000858d:	90                   	nop
   14000858e:	90                   	nop
   14000858f:	90                   	nop

0000000140008590 <__fpclassifyl>:
   140008590:	55                   	push   %rbp
   140008591:	53                   	push   %rbx
   140008592:	48 83 ec 38          	sub    $0x38,%rsp
   140008596:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000859b:	48 89 cb             	mov    %rcx,%rbx
   14000859e:	db 2b                	fldt   (%rbx)
   1400085a0:	db 7d d0             	fstpt  -0x30(%rbp)
   1400085a3:	db 6d d0             	fldt   -0x30(%rbp)
   1400085a6:	db 7d e0             	fstpt  -0x20(%rbp)
   1400085a9:	0f b7 45 e8          	movzwl -0x18(%rbp),%eax
   1400085ad:	98                   	cwtl   
   1400085ae:	25 ff 7f 00 00       	and    $0x7fff,%eax
   1400085b3:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400085b6:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   1400085ba:	75 25                	jne    1400085e1 <__fpclassifyl+0x51>
   1400085bc:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   1400085bf:	89 45 f8             	mov    %eax,-0x8(%rbp)
   1400085c2:	8b 45 e0             	mov    -0x20(%rbp),%eax
   1400085c5:	0b 45 f8             	or     -0x8(%rbp),%eax
   1400085c8:	85 c0                	test   %eax,%eax
   1400085ca:	75 07                	jne    1400085d3 <__fpclassifyl+0x43>
   1400085cc:	b8 00 40 00 00       	mov    $0x4000,%eax
   1400085d1:	eb 3d                	jmp    140008610 <__fpclassifyl+0x80>
   1400085d3:	8b 45 f8             	mov    -0x8(%rbp),%eax
   1400085d6:	85 c0                	test   %eax,%eax
   1400085d8:	78 31                	js     14000860b <__fpclassifyl+0x7b>
   1400085da:	b8 00 44 00 00       	mov    $0x4400,%eax
   1400085df:	eb 2f                	jmp    140008610 <__fpclassifyl+0x80>
   1400085e1:	81 7d fc ff 7f 00 00 	cmpl   $0x7fff,-0x4(%rbp)
   1400085e8:	75 21                	jne    14000860b <__fpclassifyl+0x7b>
   1400085ea:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   1400085ed:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
   1400085f2:	89 c2                	mov    %eax,%edx
   1400085f4:	8b 45 e0             	mov    -0x20(%rbp),%eax
   1400085f7:	09 d0                	or     %edx,%eax
   1400085f9:	85 c0                	test   %eax,%eax
   1400085fb:	75 07                	jne    140008604 <__fpclassifyl+0x74>
   1400085fd:	b8 00 05 00 00       	mov    $0x500,%eax
   140008602:	eb 0c                	jmp    140008610 <__fpclassifyl+0x80>
   140008604:	b8 00 01 00 00       	mov    $0x100,%eax
   140008609:	eb 05                	jmp    140008610 <__fpclassifyl+0x80>
   14000860b:	b8 00 04 00 00       	mov    $0x400,%eax
   140008610:	48 83 c4 38          	add    $0x38,%rsp
   140008614:	5b                   	pop    %rbx
   140008615:	5d                   	pop    %rbp
   140008616:	c3                   	ret    
   140008617:	90                   	nop
   140008618:	90                   	nop
   140008619:	90                   	nop
   14000861a:	90                   	nop
   14000861b:	90                   	nop
   14000861c:	90                   	nop
   14000861d:	90                   	nop
   14000861e:	90                   	nop
   14000861f:	90                   	nop

0000000140008620 <__isnanl>:
   140008620:	55                   	push   %rbp
   140008621:	53                   	push   %rbx
   140008622:	48 83 ec 38          	sub    $0x38,%rsp
   140008626:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000862b:	48 89 cb             	mov    %rcx,%rbx
   14000862e:	db 2b                	fldt   (%rbx)
   140008630:	db 7d d0             	fstpt  -0x30(%rbp)
   140008633:	db 6d d0             	fldt   -0x30(%rbp)
   140008636:	db 7d e0             	fstpt  -0x20(%rbp)
   140008639:	0f b7 45 e8          	movzwl -0x18(%rbp),%eax
   14000863d:	98                   	cwtl   
   14000863e:	01 c0                	add    %eax,%eax
   140008640:	25 ff ff 00 00       	and    $0xffff,%eax
   140008645:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140008648:	8b 55 e0             	mov    -0x20(%rbp),%edx
   14000864b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   14000864e:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
   140008653:	09 d0                	or     %edx,%eax
   140008655:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140008658:	8b 45 f8             	mov    -0x8(%rbp),%eax
   14000865b:	f7 d8                	neg    %eax
   14000865d:	0b 45 f8             	or     -0x8(%rbp),%eax
   140008660:	c1 e8 1f             	shr    $0x1f,%eax
   140008663:	89 c2                	mov    %eax,%edx
   140008665:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140008668:	09 d0                	or     %edx,%eax
   14000866a:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000866d:	b8 fe ff 00 00       	mov    $0xfffe,%eax
   140008672:	2b 45 fc             	sub    -0x4(%rbp),%eax
   140008675:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140008678:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000867b:	c1 f8 10             	sar    $0x10,%eax
   14000867e:	48 83 c4 38          	add    $0x38,%rsp
   140008682:	5b                   	pop    %rbx
   140008683:	5d                   	pop    %rbp
   140008684:	c3                   	ret    
   140008685:	90                   	nop
   140008686:	90                   	nop
   140008687:	90                   	nop
   140008688:	90                   	nop
   140008689:	90                   	nop
   14000868a:	90                   	nop
   14000868b:	90                   	nop
   14000868c:	90                   	nop
   14000868d:	90                   	nop
   14000868e:	90                   	nop
   14000868f:	90                   	nop

0000000140008690 <strnlen>:
   140008690:	55                   	push   %rbp
   140008691:	48 89 e5             	mov    %rsp,%rbp
   140008694:	48 83 ec 10          	sub    $0x10,%rsp
   140008698:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000869c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400086a0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400086a4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400086a8:	eb 05                	jmp    1400086af <strnlen+0x1f>
   1400086aa:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
   1400086af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400086b3:	48 2b 45 10          	sub    0x10(%rbp),%rax
   1400086b7:	48 39 45 18          	cmp    %rax,0x18(%rbp)
   1400086bb:	76 0b                	jbe    1400086c8 <strnlen+0x38>
   1400086bd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400086c1:	0f b6 00             	movzbl (%rax),%eax
   1400086c4:	84 c0                	test   %al,%al
   1400086c6:	75 e2                	jne    1400086aa <strnlen+0x1a>
   1400086c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400086cc:	48 2b 45 10          	sub    0x10(%rbp),%rax
   1400086d0:	48 83 c4 10          	add    $0x10,%rsp
   1400086d4:	5d                   	pop    %rbp
   1400086d5:	c3                   	ret    
   1400086d6:	90                   	nop
   1400086d7:	90                   	nop
   1400086d8:	90                   	nop
   1400086d9:	90                   	nop
   1400086da:	90                   	nop
   1400086db:	90                   	nop
   1400086dc:	90                   	nop
   1400086dd:	90                   	nop
   1400086de:	90                   	nop
   1400086df:	90                   	nop

00000001400086e0 <wcsnlen>:
   1400086e0:	55                   	push   %rbp
   1400086e1:	48 89 e5             	mov    %rsp,%rbp
   1400086e4:	48 83 ec 10          	sub    $0x10,%rsp
   1400086e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400086ec:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400086f0:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   1400086f7:	00 
   1400086f8:	eb 0a                	jmp    140008704 <wcsnlen+0x24>
   1400086fa:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
   1400086ff:	48 83 45 10 02       	addq   $0x2,0x10(%rbp)
   140008704:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008708:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   14000870c:	73 0c                	jae    14000871a <wcsnlen+0x3a>
   14000870e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008712:	0f b7 00             	movzwl (%rax),%eax
   140008715:	66 85 c0             	test   %ax,%ax
   140008718:	75 e0                	jne    1400086fa <wcsnlen+0x1a>
   14000871a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000871e:	48 83 c4 10          	add    $0x10,%rsp
   140008722:	5d                   	pop    %rbp
   140008723:	c3                   	ret    
   140008724:	90                   	nop
   140008725:	90                   	nop
   140008726:	90                   	nop
   140008727:	90                   	nop
   140008728:	90                   	nop
   140008729:	90                   	nop
   14000872a:	90                   	nop
   14000872b:	90                   	nop
   14000872c:	90                   	nop
   14000872d:	90                   	nop
   14000872e:	90                   	nop
   14000872f:	90                   	nop

0000000140008730 <wcslen>:
   140008730:	ff 25 ee 8d 00 00    	jmp    *0x8dee(%rip)        # 140011524 <__imp_wcslen>
   140008736:	90                   	nop
   140008737:	90                   	nop

0000000140008738 <vfprintf>:
   140008738:	ff 25 de 8d 00 00    	jmp    *0x8dde(%rip)        # 14001151c <__imp_vfprintf>
   14000873e:	90                   	nop
   14000873f:	90                   	nop

0000000140008740 <strncmp>:
   140008740:	ff 25 ce 8d 00 00    	jmp    *0x8dce(%rip)        # 140011514 <__imp_strncmp>
   140008746:	90                   	nop
   140008747:	90                   	nop

0000000140008748 <strlen>:
   140008748:	ff 25 be 8d 00 00    	jmp    *0x8dbe(%rip)        # 14001150c <__imp_strlen>
   14000874e:	90                   	nop
   14000874f:	90                   	nop

0000000140008750 <strerror>:
   140008750:	ff 25 ae 8d 00 00    	jmp    *0x8dae(%rip)        # 140011504 <__imp_strerror>
   140008756:	90                   	nop
   140008757:	90                   	nop

0000000140008758 <signal>:
   140008758:	ff 25 9e 8d 00 00    	jmp    *0x8d9e(%rip)        # 1400114fc <__imp_signal>
   14000875e:	90                   	nop
   14000875f:	90                   	nop

0000000140008760 <memset>:
   140008760:	ff 25 8e 8d 00 00    	jmp    *0x8d8e(%rip)        # 1400114f4 <__imp_memset>
   140008766:	90                   	nop
   140008767:	90                   	nop

0000000140008768 <memcpy>:
   140008768:	ff 25 7e 8d 00 00    	jmp    *0x8d7e(%rip)        # 1400114ec <__imp_memcpy>
   14000876e:	90                   	nop
   14000876f:	90                   	nop

0000000140008770 <malloc>:
   140008770:	ff 25 6e 8d 00 00    	jmp    *0x8d6e(%rip)        # 1400114e4 <__imp_malloc>
   140008776:	90                   	nop
   140008777:	90                   	nop

0000000140008778 <localeconv>:
   140008778:	ff 25 5e 8d 00 00    	jmp    *0x8d5e(%rip)        # 1400114dc <__imp_localeconv>
   14000877e:	90                   	nop
   14000877f:	90                   	nop

0000000140008780 <fwrite>:
   140008780:	ff 25 4e 8d 00 00    	jmp    *0x8d4e(%rip)        # 1400114d4 <__imp_fwrite>
   140008786:	90                   	nop
   140008787:	90                   	nop

0000000140008788 <free>:
   140008788:	ff 25 3e 8d 00 00    	jmp    *0x8d3e(%rip)        # 1400114cc <__imp_free>
   14000878e:	90                   	nop
   14000878f:	90                   	nop

0000000140008790 <fputc>:
   140008790:	ff 25 2e 8d 00 00    	jmp    *0x8d2e(%rip)        # 1400114c4 <__imp_fputc>
   140008796:	90                   	nop
   140008797:	90                   	nop

0000000140008798 <fprintf>:
   140008798:	ff 25 1e 8d 00 00    	jmp    *0x8d1e(%rip)        # 1400114bc <__imp_fprintf>
   14000879e:	90                   	nop
   14000879f:	90                   	nop

00000001400087a0 <exit>:
   1400087a0:	ff 25 0e 8d 00 00    	jmp    *0x8d0e(%rip)        # 1400114b4 <__imp_exit>
   1400087a6:	90                   	nop
   1400087a7:	90                   	nop

00000001400087a8 <clock>:
   1400087a8:	ff 25 fe 8c 00 00    	jmp    *0x8cfe(%rip)        # 1400114ac <__imp_clock>
   1400087ae:	90                   	nop
   1400087af:	90                   	nop

00000001400087b0 <calloc>:
   1400087b0:	ff 25 ee 8c 00 00    	jmp    *0x8cee(%rip)        # 1400114a4 <__imp_calloc>
   1400087b6:	90                   	nop
   1400087b7:	90                   	nop

00000001400087b8 <abort>:
   1400087b8:	ff 25 de 8c 00 00    	jmp    *0x8cde(%rip)        # 14001149c <__imp_abort>
   1400087be:	90                   	nop
   1400087bf:	90                   	nop

00000001400087c0 <_time64>:
   1400087c0:	ff 25 c6 8c 00 00    	jmp    *0x8cc6(%rip)        # 14001148c <__imp__time64>
   1400087c6:	90                   	nop
   1400087c7:	90                   	nop

00000001400087c8 <_onexit>:
   1400087c8:	ff 25 b6 8c 00 00    	jmp    *0x8cb6(%rip)        # 140011484 <__imp__onexit>
   1400087ce:	90                   	nop
   1400087cf:	90                   	nop

00000001400087d0 <_initterm>:
   1400087d0:	ff 25 9e 8c 00 00    	jmp    *0x8c9e(%rip)        # 140011474 <__imp__initterm>
   1400087d6:	90                   	nop
   1400087d7:	90                   	nop

00000001400087d8 <_errno>:
   1400087d8:	ff 25 86 8c 00 00    	jmp    *0x8c86(%rip)        # 140011464 <__imp__errno>
   1400087de:	90                   	nop
   1400087df:	90                   	nop

00000001400087e0 <_cexit>:
   1400087e0:	ff 25 6e 8c 00 00    	jmp    *0x8c6e(%rip)        # 140011454 <__imp__cexit>
   1400087e6:	90                   	nop
   1400087e7:	90                   	nop

00000001400087e8 <_amsg_exit>:
   1400087e8:	ff 25 5e 8c 00 00    	jmp    *0x8c5e(%rip)        # 14001144c <__imp__amsg_exit>
   1400087ee:	90                   	nop
   1400087ef:	90                   	nop

00000001400087f0 <__setusermatherr>:
   1400087f0:	ff 25 46 8c 00 00    	jmp    *0x8c46(%rip)        # 14001143c <__imp___setusermatherr>
   1400087f6:	90                   	nop
   1400087f7:	90                   	nop

00000001400087f8 <__set_app_type>:
   1400087f8:	ff 25 36 8c 00 00    	jmp    *0x8c36(%rip)        # 140011434 <__imp___set_app_type>
   1400087fe:	90                   	nop
   1400087ff:	90                   	nop

0000000140008800 <__lconv_init>:
   140008800:	ff 25 26 8c 00 00    	jmp    *0x8c26(%rip)        # 14001142c <__imp___lconv_init>
   140008806:	90                   	nop
   140008807:	90                   	nop

0000000140008808 <__getmainargs>:
   140008808:	ff 25 06 8c 00 00    	jmp    *0x8c06(%rip)        # 140011414 <__imp___getmainargs>
   14000880e:	90                   	nop
   14000880f:	90                   	nop

0000000140008810 <__C_specific_handler>:
   140008810:	ff 25 e6 8b 00 00    	jmp    *0x8be6(%rip)        # 1400113fc <__imp___C_specific_handler>
   140008816:	90                   	nop
   140008817:	90                   	nop
   140008818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000881f:	00 

0000000140008820 <__mbrtowc_cp>:
   140008820:	55                   	push   %rbp
   140008821:	48 89 e5             	mov    %rsp,%rbp
   140008824:	48 83 ec 40          	sub    $0x40,%rsp
   140008828:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000882c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140008830:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140008834:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140008838:	48 83 7d 18 00       	cmpq   $0x0,0x18(%rbp)
   14000883d:	75 0a                	jne    140008849 <__mbrtowc_cp+0x29>
   14000883f:	b8 00 00 00 00       	mov    $0x0,%eax
   140008844:	e9 9f 01 00 00       	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   140008849:	48 83 7d 20 00       	cmpq   $0x0,0x20(%rbp)
   14000884e:	75 0a                	jne    14000885a <__mbrtowc_cp+0x3a>
   140008850:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140008855:	e9 8e 01 00 00       	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   14000885a:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000885e:	8b 00                	mov    (%rax),%eax
   140008860:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140008863:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140008867:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   14000886d:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008871:	0f b6 00             	movzbl (%rax),%eax
   140008874:	84 c0                	test   %al,%al
   140008876:	75 13                	jne    14000888b <__mbrtowc_cp+0x6b>
   140008878:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000887c:	66 c7 00 00 00       	movw   $0x0,(%rax)
   140008881:	b8 00 00 00 00       	mov    $0x0,%eax
   140008886:	e9 5d 01 00 00       	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   14000888b:	83 7d 38 01          	cmpl   $0x1,0x38(%rbp)
   14000888f:	0f 86 ee 00 00 00    	jbe    140008983 <__mbrtowc_cp+0x163>
   140008895:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
   140008899:	84 c0                	test   %al,%al
   14000889b:	74 5e                	je     1400088fb <__mbrtowc_cp+0xdb>
   14000889d:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400088a1:	0f b6 00             	movzbl (%rax),%eax
   1400088a4:	88 45 fd             	mov    %al,-0x3(%rbp)
   1400088a7:	48 8d 4d fc          	lea    -0x4(%rbp),%rcx
   1400088ab:	8b 45 30             	mov    0x30(%rbp),%eax
   1400088ae:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   1400088b5:	00 
   1400088b6:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   1400088ba:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   1400088bf:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   1400088c5:	49 89 c8             	mov    %rcx,%r8
   1400088c8:	ba 08 00 00 00       	mov    $0x8,%edx
   1400088cd:	89 c1                	mov    %eax,%ecx
   1400088cf:	48 8b 05 e6 8a 00 00 	mov    0x8ae6(%rip),%rax        # 1400113bc <__imp_MultiByteToWideChar>
   1400088d6:	ff d0                	call   *%rax
   1400088d8:	85 c0                	test   %eax,%eax
   1400088da:	75 15                	jne    1400088f1 <__mbrtowc_cp+0xd1>
   1400088dc:	e8 f7 fe ff ff       	call   1400087d8 <_errno>
   1400088e1:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   1400088e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400088ec:	e9 f7 00 00 00       	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   1400088f1:	b8 02 00 00 00       	mov    $0x2,%eax
   1400088f6:	e9 ed 00 00 00       	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   1400088fb:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400088ff:	0f b6 00             	movzbl (%rax),%eax
   140008902:	0f b6 d0             	movzbl %al,%edx
   140008905:	8b 45 30             	mov    0x30(%rbp),%eax
   140008908:	89 c1                	mov    %eax,%ecx
   14000890a:	48 8b 05 93 8a 00 00 	mov    0x8a93(%rip),%rax        # 1400113a4 <__imp_IsDBCSLeadByteEx>
   140008911:	ff d0                	call   *%rax
   140008913:	85 c0                	test   %eax,%eax
   140008915:	74 6c                	je     140008983 <__mbrtowc_cp+0x163>
   140008917:	48 83 7d 20 01       	cmpq   $0x1,0x20(%rbp)
   14000891c:	77 17                	ja     140008935 <__mbrtowc_cp+0x115>
   14000891e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008922:	0f b6 10             	movzbl (%rax),%edx
   140008925:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140008929:	88 10                	mov    %dl,(%rax)
   14000892b:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140008930:	e9 b3 00 00 00       	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   140008935:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
   140008939:	8b 45 30             	mov    0x30(%rbp),%eax
   14000893c:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   140008943:	00 
   140008944:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140008948:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   14000894d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   140008953:	49 89 c8             	mov    %rcx,%r8
   140008956:	ba 08 00 00 00       	mov    $0x8,%edx
   14000895b:	89 c1                	mov    %eax,%ecx
   14000895d:	48 8b 05 58 8a 00 00 	mov    0x8a58(%rip),%rax        # 1400113bc <__imp_MultiByteToWideChar>
   140008964:	ff d0                	call   *%rax
   140008966:	85 c0                	test   %eax,%eax
   140008968:	75 12                	jne    14000897c <__mbrtowc_cp+0x15c>
   14000896a:	e8 69 fe ff ff       	call   1400087d8 <_errno>
   14000896f:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140008975:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000897a:	eb 6c                	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   14000897c:	b8 02 00 00 00       	mov    $0x2,%eax
   140008981:	eb 65                	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   140008983:	83 7d 30 00          	cmpl   $0x0,0x30(%rbp)
   140008987:	75 13                	jne    14000899c <__mbrtowc_cp+0x17c>
   140008989:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000898d:	0f b6 00             	movzbl (%rax),%eax
   140008990:	0f b6 d0             	movzbl %al,%edx
   140008993:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008997:	66 89 10             	mov    %dx,(%rax)
   14000899a:	eb 47                	jmp    1400089e3 <__mbrtowc_cp+0x1c3>
   14000899c:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
   1400089a0:	8b 45 30             	mov    0x30(%rbp),%eax
   1400089a3:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   1400089aa:	00 
   1400089ab:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   1400089af:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   1400089b4:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   1400089ba:	49 89 c8             	mov    %rcx,%r8
   1400089bd:	ba 08 00 00 00       	mov    $0x8,%edx
   1400089c2:	89 c1                	mov    %eax,%ecx
   1400089c4:	48 8b 05 f1 89 00 00 	mov    0x89f1(%rip),%rax        # 1400113bc <__imp_MultiByteToWideChar>
   1400089cb:	ff d0                	call   *%rax
   1400089cd:	85 c0                	test   %eax,%eax
   1400089cf:	75 12                	jne    1400089e3 <__mbrtowc_cp+0x1c3>
   1400089d1:	e8 02 fe ff ff       	call   1400087d8 <_errno>
   1400089d6:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   1400089dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400089e1:	eb 05                	jmp    1400089e8 <__mbrtowc_cp+0x1c8>
   1400089e3:	b8 01 00 00 00       	mov    $0x1,%eax
   1400089e8:	48 83 c4 40          	add    $0x40,%rsp
   1400089ec:	5d                   	pop    %rbp
   1400089ed:	c3                   	ret    

00000001400089ee <mbrtowc>:
   1400089ee:	55                   	push   %rbp
   1400089ef:	53                   	push   %rbx
   1400089f0:	48 83 ec 48          	sub    $0x48,%rsp
   1400089f4:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   1400089f9:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400089fd:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140008a01:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140008a05:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   140008a09:	66 c7 45 f6 00 00    	movw   $0x0,-0xa(%rbp)
   140008a0f:	48 83 7d 20 00       	cmpq   $0x0,0x20(%rbp)
   140008a14:	75 06                	jne    140008a1c <mbrtowc+0x2e>
   140008a16:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
   140008a1a:	eb 04                	jmp    140008a20 <mbrtowc+0x32>
   140008a1c:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140008a20:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140008a24:	e8 5f 06 00 00       	call   140009088 <___mb_cur_max_func>
   140008a29:	89 c3                	mov    %eax,%ebx
   140008a2b:	e8 60 06 00 00       	call   140009090 <___lc_codepage_func>
   140008a30:	41 89 c0             	mov    %eax,%r8d
   140008a33:	48 83 7d 38 00       	cmpq   $0x0,0x38(%rbp)
   140008a38:	74 06                	je     140008a40 <mbrtowc+0x52>
   140008a3a:	48 8b 45 38          	mov    0x38(%rbp),%rax
   140008a3e:	eb 07                	jmp    140008a47 <mbrtowc+0x59>
   140008a40:	48 8d 05 79 81 00 00 	lea    0x8179(%rip),%rax        # 140010bc0 <internal_mbstate.2>
   140008a47:	4c 8b 55 30          	mov    0x30(%rbp),%r10
   140008a4b:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140008a4f:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
   140008a53:	89 5c 24 28          	mov    %ebx,0x28(%rsp)
   140008a57:	44 89 44 24 20       	mov    %r8d,0x20(%rsp)
   140008a5c:	49 89 c1             	mov    %rax,%r9
   140008a5f:	4d 89 d0             	mov    %r10,%r8
   140008a62:	e8 b9 fd ff ff       	call   140008820 <__mbrtowc_cp>
   140008a67:	48 98                	cltq   
   140008a69:	48 83 c4 48          	add    $0x48,%rsp
   140008a6d:	5b                   	pop    %rbx
   140008a6e:	5d                   	pop    %rbp
   140008a6f:	c3                   	ret    

0000000140008a70 <mbsrtowcs>:
   140008a70:	55                   	push   %rbp
   140008a71:	48 89 e5             	mov    %rsp,%rbp
   140008a74:	48 83 ec 60          	sub    $0x60,%rsp
   140008a78:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140008a7c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140008a80:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140008a84:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140008a88:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140008a8f:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
   140008a96:	00 
   140008a97:	48 83 7d 28 00       	cmpq   $0x0,0x28(%rbp)
   140008a9c:	74 06                	je     140008aa4 <mbsrtowcs+0x34>
   140008a9e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140008aa2:	eb 07                	jmp    140008aab <mbsrtowcs+0x3b>
   140008aa4:	48 8d 05 19 81 00 00 	lea    0x8119(%rip),%rax        # 140010bc4 <internal_mbstate.1>
   140008aab:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140008aaf:	e8 dc 05 00 00       	call   140009090 <___lc_codepage_func>
   140008ab4:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   140008ab7:	e8 cc 05 00 00       	call   140009088 <___mb_cur_max_func>
   140008abc:	89 45 e0             	mov    %eax,-0x20(%rbp)
   140008abf:	48 83 7d 18 00       	cmpq   $0x0,0x18(%rbp)
   140008ac4:	74 0c                	je     140008ad2 <mbsrtowcs+0x62>
   140008ac6:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008aca:	48 8b 00             	mov    (%rax),%rax
   140008acd:	48 85 c0             	test   %rax,%rax
   140008ad0:	75 0a                	jne    140008adc <mbsrtowcs+0x6c>
   140008ad2:	b8 00 00 00 00       	mov    $0x0,%eax
   140008ad7:	e9 e5 00 00 00       	jmp    140008bc1 <mbsrtowcs+0x151>
   140008adc:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140008ae1:	0f 84 8c 00 00 00    	je     140008b73 <mbsrtowcs+0x103>
   140008ae7:	eb 24                	jmp    140008b0d <mbsrtowcs+0x9d>
   140008ae9:	48 83 45 10 02       	addq   $0x2,0x10(%rbp)
   140008aee:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008af2:	48 8b 10             	mov    (%rax),%rdx
   140008af5:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140008af8:	48 98                	cltq   
   140008afa:	48 01 c2             	add    %rax,%rdx
   140008afd:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008b01:	48 89 10             	mov    %rdx,(%rax)
   140008b04:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140008b07:	48 98                	cltq   
   140008b09:	48 01 45 f0          	add    %rax,-0x10(%rbp)
   140008b0d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008b11:	48 3b 45 20          	cmp    0x20(%rbp),%rax
   140008b15:	73 3f                	jae    140008b56 <mbsrtowcs+0xe6>
   140008b17:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140008b1b:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
   140008b1f:	48 89 c1             	mov    %rax,%rcx
   140008b22:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008b26:	48 8b 00             	mov    (%rax),%rax
   140008b29:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
   140008b2d:	8b 55 e0             	mov    -0x20(%rbp),%edx
   140008b30:	89 54 24 28          	mov    %edx,0x28(%rsp)
   140008b34:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140008b37:	89 54 24 20          	mov    %edx,0x20(%rsp)
   140008b3b:	4d 89 c1             	mov    %r8,%r9
   140008b3e:	49 89 c8             	mov    %rcx,%r8
   140008b41:	48 89 c2             	mov    %rax,%rdx
   140008b44:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140008b48:	e8 d3 fc ff ff       	call   140008820 <__mbrtowc_cp>
   140008b4d:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140008b50:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140008b54:	7f 93                	jg     140008ae9 <mbsrtowcs+0x79>
   140008b56:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008b5a:	48 3b 45 20          	cmp    0x20(%rbp),%rax
   140008b5e:	73 5d                	jae    140008bbd <mbsrtowcs+0x14d>
   140008b60:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140008b64:	75 57                	jne    140008bbd <mbsrtowcs+0x14d>
   140008b66:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008b6a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140008b71:	eb 4a                	jmp    140008bbd <mbsrtowcs+0x14d>
   140008b73:	66 c7 45 de 00 00    	movw   $0x0,-0x22(%rbp)
   140008b79:	eb 09                	jmp    140008b84 <mbsrtowcs+0x114>
   140008b7b:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140008b7e:	48 98                	cltq   
   140008b80:	48 01 45 f0          	add    %rax,-0x10(%rbp)
   140008b84:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
   140008b88:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008b8c:	48 8b 10             	mov    (%rax),%rdx
   140008b8f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008b93:	48 01 c2             	add    %rax,%rdx
   140008b96:	4c 8b 4d e8          	mov    -0x18(%rbp),%r9
   140008b9a:	48 8d 45 de          	lea    -0x22(%rbp),%rax
   140008b9e:	8b 4d e0             	mov    -0x20(%rbp),%ecx
   140008ba1:	89 4c 24 28          	mov    %ecx,0x28(%rsp)
   140008ba5:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
   140008ba8:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140008bac:	48 89 c1             	mov    %rax,%rcx
   140008baf:	e8 6c fc ff ff       	call   140008820 <__mbrtowc_cp>
   140008bb4:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140008bb7:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140008bbb:	7f be                	jg     140008b7b <mbsrtowcs+0x10b>
   140008bbd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008bc1:	48 83 c4 60          	add    $0x60,%rsp
   140008bc5:	5d                   	pop    %rbp
   140008bc6:	c3                   	ret    

0000000140008bc7 <mbrlen>:
   140008bc7:	55                   	push   %rbp
   140008bc8:	53                   	push   %rbx
   140008bc9:	48 83 ec 48          	sub    $0x48,%rsp
   140008bcd:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140008bd2:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140008bd6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140008bda:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140008bde:	66 c7 45 fe 00 00    	movw   $0x0,-0x2(%rbp)
   140008be4:	e8 9f 04 00 00       	call   140009088 <___mb_cur_max_func>
   140008be9:	89 c3                	mov    %eax,%ebx
   140008beb:	e8 a0 04 00 00       	call   140009090 <___lc_codepage_func>
   140008bf0:	89 c2                	mov    %eax,%edx
   140008bf2:	48 83 7d 30 00       	cmpq   $0x0,0x30(%rbp)
   140008bf7:	74 06                	je     140008bff <mbrlen+0x38>
   140008bf9:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140008bfd:	eb 07                	jmp    140008c06 <mbrlen+0x3f>
   140008bff:	48 8d 05 c2 7f 00 00 	lea    0x7fc2(%rip),%rax        # 140010bc8 <s_mbstate.0>
   140008c06:	4c 8b 45 28          	mov    0x28(%rbp),%r8
   140008c0a:	48 8d 4d fe          	lea    -0x2(%rbp),%rcx
   140008c0e:	89 5c 24 28          	mov    %ebx,0x28(%rsp)
   140008c12:	89 54 24 20          	mov    %edx,0x20(%rsp)
   140008c16:	49 89 c1             	mov    %rax,%r9
   140008c19:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140008c1d:	e8 fe fb ff ff       	call   140008820 <__mbrtowc_cp>
   140008c22:	48 98                	cltq   
   140008c24:	48 83 c4 48          	add    $0x48,%rsp
   140008c28:	5b                   	pop    %rbx
   140008c29:	5d                   	pop    %rbp
   140008c2a:	c3                   	ret    
   140008c2b:	90                   	nop
   140008c2c:	90                   	nop
   140008c2d:	90                   	nop
   140008c2e:	90                   	nop
   140008c2f:	90                   	nop

0000000140008c30 <__wcrtomb_cp>:
   140008c30:	55                   	push   %rbp
   140008c31:	48 89 e5             	mov    %rsp,%rbp
   140008c34:	48 83 ec 50          	sub    $0x50,%rsp
   140008c38:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140008c3c:	89 d0                	mov    %edx,%eax
   140008c3e:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   140008c42:	44 89 4d 28          	mov    %r9d,0x28(%rbp)
   140008c46:	66 89 45 18          	mov    %ax,0x18(%rbp)
   140008c4a:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
   140008c4e:	75 2f                	jne    140008c7f <__wcrtomb_cp+0x4f>
   140008c50:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
   140008c54:	66 3d ff 00          	cmp    $0xff,%ax
   140008c58:	76 12                	jbe    140008c6c <__wcrtomb_cp+0x3c>
   140008c5a:	e8 79 fb ff ff       	call   1400087d8 <_errno>
   140008c5f:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140008c65:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140008c6a:	eb 7e                	jmp    140008cea <__wcrtomb_cp+0xba>
   140008c6c:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
   140008c70:	89 c2                	mov    %eax,%edx
   140008c72:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008c76:	88 10                	mov    %dl,(%rax)
   140008c78:	b8 01 00 00 00       	mov    $0x1,%eax
   140008c7d:	eb 6b                	jmp    140008cea <__wcrtomb_cp+0xba>
   140008c7f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   140008c86:	8b 55 28             	mov    0x28(%rbp),%edx
   140008c89:	4c 8d 45 18          	lea    0x18(%rbp),%r8
   140008c8d:	8b 45 20             	mov    0x20(%rbp),%eax
   140008c90:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
   140008c94:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
   140008c99:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140008ca0:	00 00 
   140008ca2:	89 54 24 28          	mov    %edx,0x28(%rsp)
   140008ca6:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140008caa:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140008caf:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140008cb5:	ba 00 00 00 00       	mov    $0x0,%edx
   140008cba:	89 c1                	mov    %eax,%ecx
   140008cbc:	48 8b 05 29 87 00 00 	mov    0x8729(%rip),%rax        # 1400113ec <__imp_WideCharToMultiByte>
   140008cc3:	ff d0                	call   *%rax
   140008cc5:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140008cc8:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140008ccc:	74 07                	je     140008cd5 <__wcrtomb_cp+0xa5>
   140008cce:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140008cd1:	85 c0                	test   %eax,%eax
   140008cd3:	74 12                	je     140008ce7 <__wcrtomb_cp+0xb7>
   140008cd5:	e8 fe fa ff ff       	call   1400087d8 <_errno>
   140008cda:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140008ce0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140008ce5:	eb 03                	jmp    140008cea <__wcrtomb_cp+0xba>
   140008ce7:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140008cea:	48 83 c4 50          	add    $0x50,%rsp
   140008cee:	5d                   	pop    %rbp
   140008cef:	c3                   	ret    

0000000140008cf0 <wcrtomb>:
   140008cf0:	55                   	push   %rbp
   140008cf1:	53                   	push   %rbx
   140008cf2:	48 83 ec 38          	sub    $0x38,%rsp
   140008cf6:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140008cfb:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140008cff:	89 d0                	mov    %edx,%eax
   140008d01:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140008d05:	66 89 45 28          	mov    %ax,0x28(%rbp)
   140008d09:	48 83 7d 20 00       	cmpq   $0x0,0x20(%rbp)
   140008d0e:	75 06                	jne    140008d16 <wcrtomb+0x26>
   140008d10:	48 8d 45 f3          	lea    -0xd(%rbp),%rax
   140008d14:	eb 04                	jmp    140008d1a <wcrtomb+0x2a>
   140008d16:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140008d1a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140008d1e:	e8 65 03 00 00       	call   140009088 <___mb_cur_max_func>
   140008d23:	89 c3                	mov    %eax,%ebx
   140008d25:	e8 66 03 00 00       	call   140009090 <___lc_codepage_func>
   140008d2a:	89 c1                	mov    %eax,%ecx
   140008d2c:	0f b7 55 28          	movzwl 0x28(%rbp),%edx
   140008d30:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008d34:	41 89 d9             	mov    %ebx,%r9d
   140008d37:	41 89 c8             	mov    %ecx,%r8d
   140008d3a:	48 89 c1             	mov    %rax,%rcx
   140008d3d:	e8 ee fe ff ff       	call   140008c30 <__wcrtomb_cp>
   140008d42:	48 98                	cltq   
   140008d44:	48 83 c4 38          	add    $0x38,%rsp
   140008d48:	5b                   	pop    %rbx
   140008d49:	5d                   	pop    %rbp
   140008d4a:	c3                   	ret    

0000000140008d4b <wcsrtombs>:
   140008d4b:	55                   	push   %rbp
   140008d4c:	48 89 e5             	mov    %rsp,%rbp
   140008d4f:	48 83 ec 50          	sub    $0x50,%rsp
   140008d53:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140008d57:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140008d5b:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140008d5f:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
   140008d63:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
   140008d6a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140008d71:	00 
   140008d72:	e8 19 03 00 00       	call   140009090 <___lc_codepage_func>
   140008d77:	89 45 e8             	mov    %eax,-0x18(%rbp)
   140008d7a:	e8 09 03 00 00       	call   140009088 <___mb_cur_max_func>
   140008d7f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   140008d82:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008d86:	48 8b 00             	mov    (%rax),%rax
   140008d89:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140008d8d:	48 83 7d 18 00       	cmpq   $0x0,0x18(%rbp)
   140008d92:	74 0c                	je     140008da0 <wcsrtombs+0x55>
   140008d94:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008d98:	48 8b 00             	mov    (%rax),%rax
   140008d9b:	48 85 c0             	test   %rax,%rax
   140008d9e:	75 0a                	jne    140008daa <wcsrtombs+0x5f>
   140008da0:	b8 00 00 00 00       	mov    $0x0,%eax
   140008da5:	e9 fc 00 00 00       	jmp    140008ea6 <wcsrtombs+0x15b>
   140008daa:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140008daf:	0f 84 91 00 00 00    	je     140008e46 <wcsrtombs+0xfb>
   140008db5:	eb 74                	jmp    140008e2b <wcsrtombs+0xe0>
   140008db7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008dbb:	0f b7 00             	movzwl (%rax),%eax
   140008dbe:	0f b7 c0             	movzwl %ax,%eax
   140008dc1:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
   140008dc4:	8b 55 e8             	mov    -0x18(%rbp),%edx
   140008dc7:	41 89 c9             	mov    %ecx,%r9d
   140008dca:	41 89 d0             	mov    %edx,%r8d
   140008dcd:	89 c2                	mov    %eax,%edx
   140008dcf:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140008dd3:	e8 58 fe ff ff       	call   140008c30 <__wcrtomb_cp>
   140008dd8:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140008ddb:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
   140008ddf:	7f 0c                	jg     140008ded <wcsrtombs+0xa2>
   140008de1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   140008de8:	e9 b9 00 00 00       	jmp    140008ea6 <wcsrtombs+0x15b>
   140008ded:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140008df0:	48 98                	cltq   
   140008df2:	48 01 45 f8          	add    %rax,-0x8(%rbp)
   140008df6:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140008df9:	48 98                	cltq   
   140008dfb:	48 01 45 10          	add    %rax,0x10(%rbp)
   140008dff:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008e03:	48 83 e8 01          	sub    $0x1,%rax
   140008e07:	0f b6 00             	movzbl (%rax),%eax
   140008e0a:	84 c0                	test   %al,%al
   140008e0c:	75 18                	jne    140008e26 <wcsrtombs+0xdb>
   140008e0e:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008e12:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140008e19:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008e1d:	48 83 e8 01          	sub    $0x1,%rax
   140008e21:	e9 80 00 00 00       	jmp    140008ea6 <wcsrtombs+0x15b>
   140008e26:	48 83 45 f0 02       	addq   $0x2,-0x10(%rbp)
   140008e2b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008e2f:	48 3b 45 20          	cmp    0x20(%rbp),%rax
   140008e33:	72 82                	jb     140008db7 <wcsrtombs+0x6c>
   140008e35:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140008e39:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140008e3d:	48 89 10             	mov    %rdx,(%rax)
   140008e40:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008e44:	eb 60                	jmp    140008ea6 <wcsrtombs+0x15b>
   140008e46:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140008e4a:	0f b7 00             	movzwl (%rax),%eax
   140008e4d:	0f b7 d0             	movzwl %ax,%edx
   140008e50:	44 8b 45 e4          	mov    -0x1c(%rbp),%r8d
   140008e54:	8b 4d e8             	mov    -0x18(%rbp),%ecx
   140008e57:	48 8d 45 df          	lea    -0x21(%rbp),%rax
   140008e5b:	45 89 c1             	mov    %r8d,%r9d
   140008e5e:	41 89 c8             	mov    %ecx,%r8d
   140008e61:	48 89 c1             	mov    %rax,%rcx
   140008e64:	e8 c7 fd ff ff       	call   140008c30 <__wcrtomb_cp>
   140008e69:	89 45 ec             	mov    %eax,-0x14(%rbp)
   140008e6c:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
   140008e70:	7f 09                	jg     140008e7b <wcsrtombs+0x130>
   140008e72:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   140008e79:	eb 2b                	jmp    140008ea6 <wcsrtombs+0x15b>
   140008e7b:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140008e7e:	48 98                	cltq   
   140008e80:	48 01 45 f8          	add    %rax,-0x8(%rbp)
   140008e84:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140008e87:	83 e8 01             	sub    $0x1,%eax
   140008e8a:	48 98                	cltq   
   140008e8c:	0f b6 44 05 df       	movzbl -0x21(%rbp,%rax,1),%eax
   140008e91:	84 c0                	test   %al,%al
   140008e93:	75 0a                	jne    140008e9f <wcsrtombs+0x154>
   140008e95:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008e99:	48 83 e8 01          	sub    $0x1,%rax
   140008e9d:	eb 07                	jmp    140008ea6 <wcsrtombs+0x15b>
   140008e9f:	48 83 45 f0 02       	addq   $0x2,-0x10(%rbp)
   140008ea4:	eb a0                	jmp    140008e46 <wcsrtombs+0xfb>
   140008ea6:	48 83 c4 50          	add    $0x50,%rsp
   140008eaa:	5d                   	pop    %rbp
   140008eab:	c3                   	ret    
   140008eac:	90                   	nop
   140008ead:	90                   	nop
   140008eae:	90                   	nop
   140008eaf:	90                   	nop

0000000140008eb0 <__acrt_iob_func>:
   140008eb0:	55                   	push   %rbp
   140008eb1:	48 89 e5             	mov    %rsp,%rbp
   140008eb4:	48 83 ec 20          	sub    $0x20,%rsp
   140008eb8:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140008ebb:	e8 c0 01 00 00       	call   140009080 <__iob_func>
   140008ec0:	48 89 c1             	mov    %rax,%rcx
   140008ec3:	8b 55 10             	mov    0x10(%rbp),%edx
   140008ec6:	48 89 d0             	mov    %rdx,%rax
   140008ec9:	48 01 c0             	add    %rax,%rax
   140008ecc:	48 01 d0             	add    %rdx,%rax
   140008ecf:	48 c1 e0 04          	shl    $0x4,%rax
   140008ed3:	48 01 c8             	add    %rcx,%rax
   140008ed6:	48 83 c4 20          	add    $0x20,%rsp
   140008eda:	5d                   	pop    %rbp
   140008edb:	c3                   	ret    
   140008edc:	90                   	nop
   140008edd:	90                   	nop
   140008ede:	90                   	nop
   140008edf:	90                   	nop

0000000140008ee0 <_set_invalid_parameter_handler>:
   140008ee0:	55                   	push   %rbp
   140008ee1:	48 89 e5             	mov    %rsp,%rbp
   140008ee4:	48 83 ec 10          	sub    $0x10,%rsp
   140008ee8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140008eec:	48 8d 05 dd 7c 00 00 	lea    0x7cdd(%rip),%rax        # 140010bd0 <handler>
   140008ef3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140008ef7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008efb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140008eff:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140008f03:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140008f07:	48 87 10             	xchg   %rdx,(%rax)
   140008f0a:	48 89 d0             	mov    %rdx,%rax
   140008f0d:	48 83 c4 10          	add    $0x10,%rsp
   140008f11:	5d                   	pop    %rbp
   140008f12:	c3                   	ret    

0000000140008f13 <_get_invalid_parameter_handler>:
   140008f13:	55                   	push   %rbp
   140008f14:	48 89 e5             	mov    %rsp,%rbp
   140008f17:	48 8b 05 b2 7c 00 00 	mov    0x7cb2(%rip),%rax        # 140010bd0 <handler>
   140008f1e:	5d                   	pop    %rbp
   140008f1f:	c3                   	ret    

0000000140008f20 <_lock_file>:
   140008f20:	55                   	push   %rbp
   140008f21:	48 89 e5             	mov    %rsp,%rbp
   140008f24:	48 83 ec 20          	sub    $0x20,%rsp
   140008f28:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140008f2c:	b9 00 00 00 00       	mov    $0x0,%ecx
   140008f31:	e8 7a ff ff ff       	call   140008eb0 <__acrt_iob_func>
   140008f36:	48 39 45 10          	cmp    %rax,0x10(%rbp)
   140008f3a:	72 58                	jb     140008f94 <_lock_file+0x74>
   140008f3c:	b9 13 00 00 00       	mov    $0x13,%ecx
   140008f41:	e8 6a ff ff ff       	call   140008eb0 <__acrt_iob_func>
   140008f46:	48 39 45 10          	cmp    %rax,0x10(%rbp)
   140008f4a:	77 48                	ja     140008f94 <_lock_file+0x74>
   140008f4c:	b9 00 00 00 00       	mov    $0x0,%ecx
   140008f51:	e8 5a ff ff ff       	call   140008eb0 <__acrt_iob_func>
   140008f56:	48 89 c2             	mov    %rax,%rdx
   140008f59:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008f5d:	48 29 d0             	sub    %rdx,%rax
   140008f60:	48 c1 f8 04          	sar    $0x4,%rax
   140008f64:	48 89 c2             	mov    %rax,%rdx
   140008f67:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
   140008f6e:	aa aa aa 
   140008f71:	48 0f af c2          	imul   %rdx,%rax
   140008f75:	83 c0 10             	add    $0x10,%eax
   140008f78:	89 c1                	mov    %eax,%ecx
   140008f7a:	e8 f9 00 00 00       	call   140009078 <_lock>
   140008f7f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008f83:	8b 40 18             	mov    0x18(%rax),%eax
   140008f86:	80 cc 80             	or     $0x80,%ah
   140008f89:	89 c2                	mov    %eax,%edx
   140008f8b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008f8f:	89 50 18             	mov    %edx,0x18(%rax)
   140008f92:	eb 15                	jmp    140008fa9 <_lock_file+0x89>
   140008f94:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008f98:	48 83 c0 30          	add    $0x30,%rax
   140008f9c:	48 89 c1             	mov    %rax,%rcx
   140008f9f:	48 8b 05 c6 83 00 00 	mov    0x83c6(%rip),%rax        # 14001136c <__imp_EnterCriticalSection>
   140008fa6:	ff d0                	call   *%rax
   140008fa8:	90                   	nop
   140008fa9:	90                   	nop
   140008faa:	48 83 c4 20          	add    $0x20,%rsp
   140008fae:	5d                   	pop    %rbp
   140008faf:	c3                   	ret    

0000000140008fb0 <_unlock_file>:
   140008fb0:	55                   	push   %rbp
   140008fb1:	48 89 e5             	mov    %rsp,%rbp
   140008fb4:	48 83 ec 20          	sub    $0x20,%rsp
   140008fb8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140008fbc:	b9 00 00 00 00       	mov    $0x0,%ecx
   140008fc1:	e8 ea fe ff ff       	call   140008eb0 <__acrt_iob_func>
   140008fc6:	48 39 45 10          	cmp    %rax,0x10(%rbp)
   140008fca:	72 58                	jb     140009024 <_unlock_file+0x74>
   140008fcc:	b9 13 00 00 00       	mov    $0x13,%ecx
   140008fd1:	e8 da fe ff ff       	call   140008eb0 <__acrt_iob_func>
   140008fd6:	48 39 45 10          	cmp    %rax,0x10(%rbp)
   140008fda:	77 48                	ja     140009024 <_unlock_file+0x74>
   140008fdc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008fe0:	8b 40 18             	mov    0x18(%rax),%eax
   140008fe3:	80 e4 7f             	and    $0x7f,%ah
   140008fe6:	89 c2                	mov    %eax,%edx
   140008fe8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140008fec:	89 50 18             	mov    %edx,0x18(%rax)
   140008fef:	b9 00 00 00 00       	mov    $0x0,%ecx
   140008ff4:	e8 b7 fe ff ff       	call   140008eb0 <__acrt_iob_func>
   140008ff9:	48 89 c2             	mov    %rax,%rdx
   140008ffc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140009000:	48 29 d0             	sub    %rdx,%rax
   140009003:	48 c1 f8 04          	sar    $0x4,%rax
   140009007:	48 89 c2             	mov    %rax,%rdx
   14000900a:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
   140009011:	aa aa aa 
   140009014:	48 0f af c2          	imul   %rdx,%rax
   140009018:	83 c0 10             	add    $0x10,%eax
   14000901b:	89 c1                	mov    %eax,%ecx
   14000901d:	e8 4e 00 00 00       	call   140009070 <_unlock>
   140009022:	eb 15                	jmp    140009039 <_unlock_file+0x89>
   140009024:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140009028:	48 83 c0 30          	add    $0x30,%rax
   14000902c:	48 89 c1             	mov    %rax,%rcx
   14000902f:	48 8b 05 76 83 00 00 	mov    0x8376(%rip),%rax        # 1400113ac <__imp_LeaveCriticalSection>
   140009036:	ff d0                	call   *%rax
   140009038:	90                   	nop
   140009039:	90                   	nop
   14000903a:	48 83 c4 20          	add    $0x20,%rsp
   14000903e:	5d                   	pop    %rbp
   14000903f:	c3                   	ret    

0000000140009040 <__p__acmdln>:
   140009040:	55                   	push   %rbp
   140009041:	48 89 e5             	mov    %rsp,%rbp
   140009044:	48 8b 05 45 27 00 00 	mov    0x2745(%rip),%rax        # 14000b790 <.refptr.__imp__acmdln>
   14000904b:	48 8b 00             	mov    (%rax),%rax
   14000904e:	5d                   	pop    %rbp
   14000904f:	c3                   	ret    

0000000140009050 <__p__commode>:
   140009050:	55                   	push   %rbp
   140009051:	48 89 e5             	mov    %rsp,%rbp
   140009054:	48 8b 05 45 27 00 00 	mov    0x2745(%rip),%rax        # 14000b7a0 <.refptr.__imp__commode>
   14000905b:	48 8b 00             	mov    (%rax),%rax
   14000905e:	5d                   	pop    %rbp
   14000905f:	c3                   	ret    

0000000140009060 <__p__fmode>:
   140009060:	55                   	push   %rbp
   140009061:	48 89 e5             	mov    %rsp,%rbp
   140009064:	48 8b 05 45 27 00 00 	mov    0x2745(%rip),%rax        # 14000b7b0 <.refptr.__imp__fmode>
   14000906b:	48 8b 00             	mov    (%rax),%rax
   14000906e:	5d                   	pop    %rbp
   14000906f:	c3                   	ret    

0000000140009070 <_unlock>:
   140009070:	ff 25 1e 84 00 00    	jmp    *0x841e(%rip)        # 140011494 <__imp__unlock>
   140009076:	90                   	nop
   140009077:	90                   	nop

0000000140009078 <_lock>:
   140009078:	ff 25 fe 83 00 00    	jmp    *0x83fe(%rip)        # 14001147c <__imp__lock>
   14000907e:	90                   	nop
   14000907f:	90                   	nop

0000000140009080 <__iob_func>:
   140009080:	ff 25 9e 83 00 00    	jmp    *0x839e(%rip)        # 140011424 <__imp___iob_func>
   140009086:	90                   	nop
   140009087:	90                   	nop

0000000140009088 <___mb_cur_max_func>:
   140009088:	ff 25 7e 83 00 00    	jmp    *0x837e(%rip)        # 14001140c <__imp____mb_cur_max_func>
   14000908e:	90                   	nop
   14000908f:	90                   	nop

0000000140009090 <___lc_codepage_func>:
   140009090:	ff 25 6e 83 00 00    	jmp    *0x836e(%rip)        # 140011404 <__imp____lc_codepage_func>
   140009096:	90                   	nop
   140009097:	90                   	nop
   140009098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000909f:	00 

00000001400090a0 <WideCharToMultiByte>:
   1400090a0:	ff 25 46 83 00 00    	jmp    *0x8346(%rip)        # 1400113ec <__imp_WideCharToMultiByte>
   1400090a6:	90                   	nop
   1400090a7:	90                   	nop

00000001400090a8 <VirtualQuery>:
   1400090a8:	ff 25 36 83 00 00    	jmp    *0x8336(%rip)        # 1400113e4 <__imp_VirtualQuery>
   1400090ae:	90                   	nop
   1400090af:	90                   	nop

00000001400090b0 <VirtualProtect>:
   1400090b0:	ff 25 26 83 00 00    	jmp    *0x8326(%rip)        # 1400113dc <__imp_VirtualProtect>
   1400090b6:	90                   	nop
   1400090b7:	90                   	nop

00000001400090b8 <TlsGetValue>:
   1400090b8:	ff 25 16 83 00 00    	jmp    *0x8316(%rip)        # 1400113d4 <__imp_TlsGetValue>
   1400090be:	90                   	nop
   1400090bf:	90                   	nop

00000001400090c0 <Sleep>:
   1400090c0:	ff 25 06 83 00 00    	jmp    *0x8306(%rip)        # 1400113cc <__imp_Sleep>
   1400090c6:	90                   	nop
   1400090c7:	90                   	nop

00000001400090c8 <SetUnhandledExceptionFilter>:
   1400090c8:	ff 25 f6 82 00 00    	jmp    *0x82f6(%rip)        # 1400113c4 <__imp_SetUnhandledExceptionFilter>
   1400090ce:	90                   	nop
   1400090cf:	90                   	nop

00000001400090d0 <MultiByteToWideChar>:
   1400090d0:	ff 25 e6 82 00 00    	jmp    *0x82e6(%rip)        # 1400113bc <__imp_MultiByteToWideChar>
   1400090d6:	90                   	nop
   1400090d7:	90                   	nop

00000001400090d8 <LoadLibraryA>:
   1400090d8:	ff 25 d6 82 00 00    	jmp    *0x82d6(%rip)        # 1400113b4 <__imp_LoadLibraryA>
   1400090de:	90                   	nop
   1400090df:	90                   	nop

00000001400090e0 <LeaveCriticalSection>:
   1400090e0:	ff 25 c6 82 00 00    	jmp    *0x82c6(%rip)        # 1400113ac <__imp_LeaveCriticalSection>
   1400090e6:	90                   	nop
   1400090e7:	90                   	nop

00000001400090e8 <IsDBCSLeadByteEx>:
   1400090e8:	ff 25 b6 82 00 00    	jmp    *0x82b6(%rip)        # 1400113a4 <__imp_IsDBCSLeadByteEx>
   1400090ee:	90                   	nop
   1400090ef:	90                   	nop

00000001400090f0 <InitializeCriticalSection>:
   1400090f0:	ff 25 a6 82 00 00    	jmp    *0x82a6(%rip)        # 14001139c <__imp_InitializeCriticalSection>
   1400090f6:	90                   	nop
   1400090f7:	90                   	nop

00000001400090f8 <GetStartupInfoA>:
   1400090f8:	ff 25 96 82 00 00    	jmp    *0x8296(%rip)        # 140011394 <__imp_GetStartupInfoA>
   1400090fe:	90                   	nop
   1400090ff:	90                   	nop

0000000140009100 <GetProcAddress>:
   140009100:	ff 25 86 82 00 00    	jmp    *0x8286(%rip)        # 14001138c <__imp_GetProcAddress>
   140009106:	90                   	nop
   140009107:	90                   	nop

0000000140009108 <GetModuleHandleA>:
   140009108:	ff 25 76 82 00 00    	jmp    *0x8276(%rip)        # 140011384 <__imp_GetModuleHandleA>
   14000910e:	90                   	nop
   14000910f:	90                   	nop

0000000140009110 <GetLastError>:
   140009110:	ff 25 66 82 00 00    	jmp    *0x8266(%rip)        # 14001137c <__imp_GetLastError>
   140009116:	90                   	nop
   140009117:	90                   	nop

0000000140009118 <FreeLibrary>:
   140009118:	ff 25 56 82 00 00    	jmp    *0x8256(%rip)        # 140011374 <__imp_FreeLibrary>
   14000911e:	90                   	nop
   14000911f:	90                   	nop

0000000140009120 <EnterCriticalSection>:
   140009120:	ff 25 46 82 00 00    	jmp    *0x8246(%rip)        # 14001136c <__imp_EnterCriticalSection>
   140009126:	90                   	nop
   140009127:	90                   	nop

0000000140009128 <DeleteCriticalSection>:
   140009128:	ff 25 36 82 00 00    	jmp    *0x8236(%rip)        # 140011364 <__imp_DeleteCriticalSection>
   14000912e:	90                   	nop
   14000912f:	90                   	nop

0000000140009130 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvP6WorkerES4_EEEEE6_M_runEv>:
   140009130:	4c 8b 41 08          	mov    0x8(%rcx),%r8
   140009134:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140009138:	4c 89 c1             	mov    %r8,%rcx
   14000913b:	48 ff e0             	rex.W jmp *%rax
   14000913e:	90                   	nop
   14000913f:	90                   	nop

0000000140009140 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvP6WorkerES4_EEEEED0Ev>:
   140009140:	41 54                	push   %r12
   140009142:	48 83 ec 20          	sub    $0x20,%rsp
   140009146:	48 8d 05 63 28 00 00 	lea    0x2863(%rip),%rax        # 14000b9b0 <_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvP6WorkerES4_EEEEEE+0x10>
   14000914d:	48 89 01             	mov    %rax,(%rcx)
   140009150:	49 89 cc             	mov    %rcx,%r12
   140009153:	e8 98 88 ff ff       	call   1400019f0 <_ZNSt6thread6_StateD2Ev>
   140009158:	ba 18 00 00 00       	mov    $0x18,%edx
   14000915d:	4c 89 e1             	mov    %r12,%rcx
   140009160:	48 83 c4 20          	add    $0x20,%rsp
   140009164:	41 5c                	pop    %r12
   140009166:	e9 55 88 ff ff       	jmp    1400019c0 <_ZdlPvy>
   14000916b:	90                   	nop
   14000916c:	90                   	nop
   14000916d:	90                   	nop
   14000916e:	90                   	nop
   14000916f:	90                   	nop

0000000140009170 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvP6WorkerES4_EEEEED1Ev>:
   140009170:	48 8d 05 39 28 00 00 	lea    0x2839(%rip),%rax        # 14000b9b0 <_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvP6WorkerES4_EEEEEE+0x10>
   140009177:	48 89 01             	mov    %rax,(%rcx)
   14000917a:	e9 71 88 ff ff       	jmp    1400019f0 <_ZNSt6thread6_StateD2Ev>
   14000917f:	90                   	nop

0000000140009180 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_>:
   140009180:	41 57                	push   %r15
   140009182:	41 56                	push   %r14
   140009184:	41 55                	push   %r13
   140009186:	41 54                	push   %r12
   140009188:	55                   	push   %rbp
   140009189:	57                   	push   %rdi
   14000918a:	56                   	push   %rsi
   14000918b:	53                   	push   %rbx
   14000918c:	48 83 ec 38          	sub    $0x38,%rsp
   140009190:	c5 f8 29 74 24 20    	vmovaps %xmm6,0x20(%rsp)
   140009196:	48 8b 69 08          	mov    0x8(%rcx),%rbp
   14000919a:	4c 8b 29             	mov    (%rcx),%r13
   14000919d:	48 89 e8             	mov    %rbp,%rax
   1400091a0:	4c 29 e8             	sub    %r13,%rax
   1400091a3:	49 89 d4             	mov    %rdx,%r12
   1400091a6:	48 c1 f8 03          	sar    $0x3,%rax
   1400091aa:	48 ba ff ff ff ff ff 	movabs $0xfffffffffffffff,%rdx
   1400091b1:	ff ff 0f 
   1400091b4:	48 89 ce             	mov    %rcx,%rsi
   1400091b7:	4d 89 c6             	mov    %r8,%r14
   1400091ba:	48 39 d0             	cmp    %rdx,%rax
   1400091bd:	0f 84 09 01 00 00    	je     1400092cc <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x14c>
   1400091c3:	48 85 c0             	test   %rax,%rax
   1400091c6:	ba 01 00 00 00       	mov    $0x1,%edx
   1400091cb:	48 0f 45 d0          	cmovne %rax,%rdx
   1400091cf:	4d 89 e7             	mov    %r12,%r15
   1400091d2:	48 01 d0             	add    %rdx,%rax
   1400091d5:	0f 92 c2             	setb   %dl
   1400091d8:	0f b6 d2             	movzbl %dl,%edx
   1400091db:	4d 29 ef             	sub    %r13,%r15
   1400091de:	48 85 d2             	test   %rdx,%rdx
   1400091e1:	0f 85 a9 00 00 00    	jne    140009290 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x110>
   1400091e7:	48 85 c0             	test   %rax,%rax
   1400091ea:	0f 85 c1 00 00 00    	jne    1400092b1 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x131>
   1400091f0:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400091f5:	31 db                	xor    %ebx,%ebx
   1400091f7:	31 ff                	xor    %edi,%edi
   1400091f9:	49 8b 06             	mov    (%r14),%rax
   1400091fc:	49 c7 06 00 00 00 00 	movq   $0x0,(%r14)
   140009203:	4a 89 04 3f          	mov    %rax,(%rdi,%r15,1)
   140009207:	4d 39 ec             	cmp    %r13,%r12
   14000920a:	74 2c                	je     140009238 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xb8>
   14000920c:	4c 89 e1             	mov    %r12,%rcx
   14000920f:	4c 29 e9             	sub    %r13,%rcx
   140009212:	48 01 f9             	add    %rdi,%rcx
   140009215:	4c 89 ea             	mov    %r13,%rdx
   140009218:	48 89 f8             	mov    %rdi,%rax
   14000921b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009220:	4c 8b 0a             	mov    (%rdx),%r9
   140009223:	48 83 c0 08          	add    $0x8,%rax
   140009227:	4c 89 48 f8          	mov    %r9,-0x8(%rax)
   14000922b:	48 83 c2 08          	add    $0x8,%rdx
   14000922f:	48 39 c1             	cmp    %rax,%rcx
   140009232:	75 ec                	jne    140009220 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xa0>
   140009234:	48 83 c1 08          	add    $0x8,%rcx
   140009238:	49 39 ec             	cmp    %rbp,%r12
   14000923b:	74 14                	je     140009251 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xd1>
   14000923d:	4c 29 e5             	sub    %r12,%rbp
   140009240:	49 89 e8             	mov    %rbp,%r8
   140009243:	4c 89 e2             	mov    %r12,%rdx
   140009246:	e8 1d f5 ff ff       	call   140008768 <memcpy>
   14000924b:	48 89 c1             	mov    %rax,%rcx
   14000924e:	48 01 e9             	add    %rbp,%rcx
   140009251:	c4 e1 f9 6e c7       	vmovq  %rdi,%xmm0
   140009256:	c4 e3 f9 22 f1 01    	vpinsrq $0x1,%rcx,%xmm0,%xmm6
   14000925c:	4d 85 ed             	test   %r13,%r13
   14000925f:	74 0f                	je     140009270 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xf0>
   140009261:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140009265:	4c 89 e9             	mov    %r13,%rcx
   140009268:	4c 29 ea             	sub    %r13,%rdx
   14000926b:	e8 50 87 ff ff       	call   1400019c0 <_ZdlPvy>
   140009270:	c5 fa 7f 36          	vmovdqu %xmm6,(%rsi)
   140009274:	c5 f8 28 74 24 20    	vmovaps 0x20(%rsp),%xmm6
   14000927a:	48 89 5e 10          	mov    %rbx,0x10(%rsi)
   14000927e:	48 83 c4 38          	add    $0x38,%rsp
   140009282:	5b                   	pop    %rbx
   140009283:	5e                   	pop    %rsi
   140009284:	5f                   	pop    %rdi
   140009285:	5d                   	pop    %rbp
   140009286:	41 5c                	pop    %r12
   140009288:	41 5d                	pop    %r13
   14000928a:	41 5e                	pop    %r14
   14000928c:	41 5f                	pop    %r15
   14000928e:	c3                   	ret    
   14000928f:	90                   	nop
   140009290:	48 bb f8 ff ff ff ff 	movabs $0x7ffffffffffffff8,%rbx
   140009297:	ff ff 7f 
   14000929a:	48 89 d9             	mov    %rbx,%rcx
   14000929d:	e8 0e 87 ff ff       	call   1400019b0 <_Znwy>
   1400092a2:	48 89 c7             	mov    %rax,%rdi
   1400092a5:	48 01 c3             	add    %rax,%rbx
   1400092a8:	48 8d 48 08          	lea    0x8(%rax),%rcx
   1400092ac:	e9 48 ff ff ff       	jmp    1400091f9 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x79>
   1400092b1:	48 ba ff ff ff ff ff 	movabs $0xfffffffffffffff,%rdx
   1400092b8:	ff ff 0f 
   1400092bb:	48 39 d0             	cmp    %rdx,%rax
   1400092be:	48 0f 47 c2          	cmova  %rdx,%rax
   1400092c2:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
   1400092c9:	00 
   1400092ca:	eb ce                	jmp    14000929a <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x11a>
   1400092cc:	48 8d 0d 8c 1d 00 00 	lea    0x1d8c(%rip),%rcx        # 14000b05f <.rdata+0xf>
   1400092d3:	e8 00 87 ff ff       	call   1400019d8 <_ZSt20__throw_length_errorPKc>
   1400092d8:	90                   	nop
   1400092d9:	90                   	nop
   1400092da:	90                   	nop
   1400092db:	90                   	nop
   1400092dc:	90                   	nop
   1400092dd:	90                   	nop
   1400092de:	90                   	nop
   1400092df:	90                   	nop

00000001400092e0 <_ZNSt6vectorISt6threadSaIS0_EED1Ev>:
   1400092e0:	48 83 ec 28          	sub    $0x28,%rsp
   1400092e4:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   1400092e8:	4c 8b 01             	mov    (%rcx),%r8
   1400092eb:	4c 39 c2             	cmp    %r8,%rdx
   1400092ee:	74 17                	je     140009307 <_ZNSt6vectorISt6threadSaIS0_EED1Ev+0x27>
   1400092f0:	4c 89 c0             	mov    %r8,%rax
   1400092f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400092f8:	48 83 38 00          	cmpq   $0x0,(%rax)
   1400092fc:	75 27                	jne    140009325 <_ZNSt6vectorISt6threadSaIS0_EED1Ev+0x45>
   1400092fe:	48 83 c0 08          	add    $0x8,%rax
   140009302:	48 39 c2             	cmp    %rax,%rdx
   140009305:	75 f1                	jne    1400092f8 <_ZNSt6vectorISt6threadSaIS0_EED1Ev+0x18>
   140009307:	4d 85 c0             	test   %r8,%r8
   14000930a:	74 14                	je     140009320 <_ZNSt6vectorISt6threadSaIS0_EED1Ev+0x40>
   14000930c:	48 8b 51 10          	mov    0x10(%rcx),%rdx
   140009310:	4c 89 c1             	mov    %r8,%rcx
   140009313:	4c 29 c2             	sub    %r8,%rdx
   140009316:	48 83 c4 28          	add    $0x28,%rsp
   14000931a:	e9 a1 86 ff ff       	jmp    1400019c0 <_ZdlPvy>
   14000931f:	90                   	nop
   140009320:	48 83 c4 28          	add    $0x28,%rsp
   140009324:	c3                   	ret    
   140009325:	e8 a6 86 ff ff       	call   1400019d0 <_ZSt9terminatev>
   14000932a:	90                   	nop
   14000932b:	90                   	nop
   14000932c:	90                   	nop
   14000932d:	90                   	nop
   14000932e:	90                   	nop
   14000932f:	90                   	nop

0000000140009330 <main.cold>:
   140009330:	e8 73 86 ff ff       	call   1400019a8 <__cxa_throw_bad_array_new_length>
   140009335:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
   14000933a:	48 85 c9             	test   %rcx,%rcx
   14000933d:	74 2b                	je     14000936a <main.cold+0x3a>
   14000933f:	48 8b 01             	mov    (%rcx),%rax
   140009342:	c5 f8 77             	vzeroupper 
   140009345:	ff 50 08             	call   *0x8(%rax)
   140009348:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
   14000934d:	e8 8e ff ff ff       	call   1400092e0 <_ZNSt6vectorISt6threadSaIS0_EED1Ev>
   140009352:	4c 89 e1             	mov    %r12,%rcx
   140009355:	e8 86 9c ff ff       	call   140002fe0 <_Unwind_Resume>
   14000935a:	48 83 7c 24 40 00    	cmpq   $0x0,0x40(%rsp)
   140009360:	74 0d                	je     14000936f <main.cold+0x3f>
   140009362:	c5 f8 77             	vzeroupper 
   140009365:	e9 cb 01 00 00       	jmp    140009535 <main+0x1b5>
   14000936a:	c5 f8 77             	vzeroupper 
   14000936d:	eb d9                	jmp    140009348 <main.cold+0x18>
   14000936f:	c5 f8 77             	vzeroupper 
   140009372:	eb d4                	jmp    140009348 <main.cold+0x18>
   140009374:	90                   	nop
   140009375:	90                   	nop
   140009376:	90                   	nop
   140009377:	90                   	nop
   140009378:	90                   	nop
   140009379:	90                   	nop
   14000937a:	90                   	nop
   14000937b:	90                   	nop
   14000937c:	90                   	nop
   14000937d:	90                   	nop
   14000937e:	90                   	nop
   14000937f:	90                   	nop

0000000140009380 <main>:
   140009380:	41 57                	push   %r15
   140009382:	41 56                	push   %r14
   140009384:	41 55                	push   %r13
   140009386:	41 54                	push   %r12
   140009388:	55                   	push   %rbp
   140009389:	57                   	push   %rdi
   14000938a:	56                   	push   %rsi
   14000938b:	53                   	push   %rbx
   14000938c:	48 81 ec 38 02 00 00 	sub    $0x238,%rsp
   140009393:	c5 f8 29 b4 24 10 02 	vmovaps %xmm6,0x210(%rsp)
   14000939a:	00 00 
   14000939c:	c5 f8 29 bc 24 20 02 	vmovaps %xmm7,0x220(%rsp)
   1400093a3:	00 00 
   1400093a5:	e8 1d 87 ff ff       	call   140001ac7 <__main>
   1400093aa:	e8 f9 f3 ff ff       	call   1400087a8 <clock>
   1400093af:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   1400093b3:	e8 48 86 ff ff       	call   140001a00 <_ZNSt6thread20hardware_concurrencyEv>
   1400093b8:	48 63 f0             	movslq %eax,%rsi
   1400093bb:	48 89 f0             	mov    %rsi,%rax
   1400093be:	48 c1 e8 3b          	shr    $0x3b,%rax
   1400093c2:	48 89 f7             	mov    %rsi,%rdi
   1400093c5:	0f 85 65 ff ff ff    	jne    140009330 <main.cold>
   1400093cb:	48 89 f1             	mov    %rsi,%rcx
   1400093ce:	48 c1 e1 04          	shl    $0x4,%rcx
   1400093d2:	e8 e1 85 ff ff       	call   1400019b8 <_Znay>
   1400093d7:	48 8d 5c 24 78       	lea    0x78(%rsp),%rbx
   1400093dc:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   1400093e1:	48 8d 8c 24 04 02 00 	lea    0x204(%rsp),%rcx
   1400093e8:	00 
   1400093e9:	48 89 d8             	mov    %rbx,%rax
   1400093ec:	31 d2                	xor    %edx,%edx
   1400093ee:	66 90                	xchg   %ax,%ax
   1400093f0:	41 89 d1             	mov    %edx,%r9d
   1400093f3:	44 87 08             	xchg   %r9d,(%rax)
   1400093f6:	48 83 c0 04          	add    $0x4,%rax
   1400093fa:	48 39 c1             	cmp    %rax,%rcx
   1400093fd:	75 f1                	jne    1400093f0 <main+0x70>
   1400093ff:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140009406:	00 00 
   140009408:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
   14000940f:	00 00 
   140009411:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
   140009418:	00 00 
   14000941a:	48 85 f6             	test   %rsi,%rsi
   14000941d:	0f 84 17 01 00 00    	je     14000953a <main+0x1ba>
   140009423:	48 c1 e6 03          	shl    $0x3,%rsi
   140009427:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
   14000942c:	48 89 f1             	mov    %rsi,%rcx
   14000942f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140009434:	e8 77 85 ff ff       	call   1400019b0 <_Znwy>
   140009439:	62 f2 fd 08 7c c0    	vpbroadcastq %rax,%xmm0
   14000943f:	48 01 f0             	add    %rsi,%rax
   140009442:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   140009447:	c5 f9 7f 44 24 50    	vmovdqa %xmm0,0x50(%rsp)
   14000944d:	85 ff                	test   %edi,%edi
   14000944f:	0f 8e e5 00 00 00    	jle    14000953a <main+0x1ba>
   140009455:	b8 40 42 0f 00       	mov    $0xf4240,%eax
   14000945a:	99                   	cltd   
   14000945b:	f7 ff                	idiv   %edi
   14000945d:	89 ff                	mov    %edi,%edi
   14000945f:	48 c1 e7 04          	shl    $0x4,%rdi
   140009463:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   140009468:	4c 8d 2d 41 25 00 00 	lea    0x2541(%rip),%r13        # 14000b9b0 <_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvP6WorkerES4_EEEEEE+0x10>
   14000946f:	4c 8d 35 ba 83 ff ff 	lea    -0x7c46(%rip),%r14        # 140001830 <_Z14workerFunctionP6Worker>
   140009476:	4c 8d 7c 24 48       	lea    0x48(%rsp),%r15
   14000947b:	89 c5                	mov    %eax,%ebp
   14000947d:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140009482:	48 01 c7             	add    %rax,%rdi
   140009485:	48 89 c6             	mov    %rax,%rsi
   140009488:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
   14000948d:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   140009492:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140009497:	eb 2f                	jmp    1400094c8 <main+0x148>
   140009499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400094a0:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
   1400094a7:	48 83 c2 08          	add    $0x8,%rdx
   1400094ab:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   1400094b0:	48 89 42 f8          	mov    %rax,-0x8(%rdx)
   1400094b4:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   1400094b9:	48 83 c6 10          	add    $0x10,%rsi
   1400094bd:	48 3b 74 24 20       	cmp    0x20(%rsp),%rsi
   1400094c2:	0f 84 20 01 00 00    	je     1400095e8 <main+0x268>
   1400094c8:	4c 89 26             	mov    %r12,(%rsi)
   1400094cb:	89 6e 08             	mov    %ebp,0x8(%rsi)
   1400094ce:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400094d3:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
   1400094da:	00 00 
   1400094dc:	e8 cf 84 ff ff       	call   1400019b0 <_Znwy>
   1400094e1:	4c 89 28             	mov    %r13,(%rax)
   1400094e4:	48 89 70 08          	mov    %rsi,0x8(%rax)
   1400094e8:	4c 89 70 10          	mov    %r14,0x10(%rax)
   1400094ec:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   1400094f1:	45 31 c0             	xor    %r8d,%r8d
   1400094f4:	4c 89 fa             	mov    %r15,%rdx
   1400094f7:	48 89 f9             	mov    %rdi,%rcx
   1400094fa:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
   1400094ff:	e8 04 85 ff ff       	call   140001a08 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE>
   140009504:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
   140009509:	48 85 c9             	test   %rcx,%rcx
   14000950c:	74 06                	je     140009514 <main+0x194>
   14000950e:	48 8b 01             	mov    (%rcx),%rax
   140009511:	ff 50 08             	call   *0x8(%rax)
   140009514:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
   140009519:	48 3b 54 24 60       	cmp    0x60(%rsp),%rdx
   14000951e:	75 80                	jne    1400094a0 <main+0x120>
   140009520:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
   140009525:	49 89 f8             	mov    %rdi,%r8
   140009528:	e8 53 fc ff ff       	call   140009180 <_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_>
   14000952d:	48 83 7c 24 40 00    	cmpq   $0x0,0x40(%rsp)
   140009533:	74 84                	je     1400094b9 <main+0x139>
   140009535:	e8 96 84 ff ff       	call   1400019d0 <_ZSt9terminatev>
   14000953a:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
   14000953f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140009544:	c5 fb 10 3d 3c 1b 00 	vmovsd 0x1b3c(%rip),%xmm7        # 14000b088 <.rdata+0x38>
   14000954b:	00 
   14000954c:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
   140009550:	be 02 00 00 00       	mov    $0x2,%esi
   140009555:	48 8d 3d f4 1a 00 00 	lea    0x1af4(%rip),%rdi        # 14000b050 <.rdata>
   14000955c:	0f 1f 40 00          	nopl   0x0(%rax)
   140009560:	41 89 f0             	mov    %esi,%r8d
   140009563:	48 89 f9             	mov    %rdi,%rcx
   140009566:	8b 03                	mov    (%rbx),%eax
   140009568:	c5 cb 2a c8          	vcvtsi2sd %eax,%xmm6,%xmm1
   14000956c:	c5 f3 59 cf          	vmulsd %xmm7,%xmm1,%xmm1
   140009570:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
   140009575:	e8 d6 83 ff ff       	call   140001950 <_ZL6printfPKcz.constprop.0>
   14000957a:	ff c6                	inc    %esi
   14000957c:	48 83 c3 04          	add    $0x4,%rbx
   140009580:	83 fe 65             	cmp    $0x65,%esi
   140009583:	75 db                	jne    140009560 <main+0x1e0>
   140009585:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   14000958a:	e8 39 84 ff ff       	call   1400019c8 <_ZdaPv>
   14000958f:	e8 14 f2 ff ff       	call   1400087a8 <clock>
   140009594:	2b 44 24 3c          	sub    0x3c(%rsp),%eax
   140009598:	c5 cb 2a c8          	vcvtsi2sd %eax,%xmm6,%xmm1
   14000959c:	48 8d 0d d6 1a 00 00 	lea    0x1ad6(%rip),%rcx        # 14000b079 <.rdata+0x29>
   1400095a3:	c5 f3 59 0d e5 1a 00 	vmulsd 0x1ae5(%rip),%xmm1,%xmm1        # 14000b090 <.rdata+0x40>
   1400095aa:	00 
   1400095ab:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
   1400095b0:	e8 2b 82 ff ff       	call   1400017e0 <_ZL6printfPKcz>
   1400095b5:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
   1400095ba:	e8 21 fd ff ff       	call   1400092e0 <_ZNSt6vectorISt6threadSaIS0_EED1Ev>
   1400095bf:	90                   	nop
   1400095c0:	c5 f8 28 b4 24 10 02 	vmovaps 0x210(%rsp),%xmm6
   1400095c7:	00 00 
   1400095c9:	c5 f8 28 bc 24 20 02 	vmovaps 0x220(%rsp),%xmm7
   1400095d0:	00 00 
   1400095d2:	31 c0                	xor    %eax,%eax
   1400095d4:	48 81 c4 38 02 00 00 	add    $0x238,%rsp
   1400095db:	5b                   	pop    %rbx
   1400095dc:	5e                   	pop    %rsi
   1400095dd:	5f                   	pop    %rdi
   1400095de:	5d                   	pop    %rbp
   1400095df:	41 5c                	pop    %r12
   1400095e1:	41 5d                	pop    %r13
   1400095e3:	41 5e                	pop    %r14
   1400095e5:	41 5f                	pop    %r15
   1400095e7:	c3                   	ret    
   1400095e8:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
   1400095ed:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
   1400095f2:	48 39 f7             	cmp    %rsi,%rdi
   1400095f5:	0f 84 49 ff ff ff    	je     140009544 <main+0x1c4>
   1400095fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140009600:	48 89 f1             	mov    %rsi,%rcx
   140009603:	e8 f0 83 ff ff       	call   1400019f8 <_ZNSt6thread4joinEv>
   140009608:	48 83 c6 08          	add    $0x8,%rsi
   14000960c:	48 39 f7             	cmp    %rsi,%rdi
   14000960f:	75 ef                	jne    140009600 <main+0x280>
   140009611:	e9 2e ff ff ff       	jmp    140009544 <main+0x1c4>
   140009616:	49 89 c4             	mov    %rax,%r12
   140009619:	c5 f8 77             	vzeroupper 
   14000961c:	e9 27 fd ff ff       	jmp    140009348 <main.cold+0x18>
   140009621:	49 89 c4             	mov    %rax,%r12
   140009624:	e9 0c fd ff ff       	jmp    140009335 <main.cold+0x5>
   140009629:	49 89 c4             	mov    %rax,%r12
   14000962c:	e9 29 fd ff ff       	jmp    14000935a <main.cold+0x2a>
   140009631:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140009638:	00 00 00 00 
   14000963c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140009640 <_GLOBAL__sub_I_main>:
   140009640:	48 83 ec 28          	sub    $0x28,%rsp
   140009644:	48 8d 0d 55 6a 00 00 	lea    0x6a55(%rip),%rcx        # 1400100a0 <_ZStL8__ioinit>
   14000964b:	e8 98 83 ff ff       	call   1400019e8 <_ZNSt8ios_base4InitC1Ev>
   140009650:	48 8d 0d e9 82 ff ff 	lea    -0x7d17(%rip),%rcx        # 140001940 <__tcf_0>
   140009657:	48 83 c4 28          	add    $0x28,%rsp
   14000965b:	e9 38 80 ff ff       	jmp    140001698 <atexit>

0000000140009660 <set_fast_math>:
set_fast_math():
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/crtfastmath.c:84
   140009660:	48 83 ec 18          	sub    $0x18,%rsp
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/crtfastmath.c:94
   140009664:	0f ae 5c 24 0c       	stmxcsr 0xc(%rsp)
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/crtfastmath.c:96
   140009669:	81 4c 24 0c 40 80 00 	orl    $0x8040,0xc(%rsp)
   140009670:	00 
   140009671:	0f ae 54 24 0c       	ldmxcsr 0xc(%rsp)
R:\winlibs64_stage\gcc-11.2.0\build_mingw\x86_64-w64-mingw32\libgcc/../../../libgcc/config/i386/crtfastmath.c:98
   140009676:	48 83 c4 18          	add    $0x18,%rsp
   14000967a:	c3                   	ret    
   14000967b:	90                   	nop
   14000967c:	90                   	nop
   14000967d:	90                   	nop
   14000967e:	90                   	nop
   14000967f:	90                   	nop

0000000140009680 <register_frame_ctor>:
   140009680:	e9 6b 80 ff ff       	jmp    1400016f0 <__gcc_register_frame>
   140009685:	90                   	nop
   140009686:	90                   	nop
   140009687:	90                   	nop
   140009688:	90                   	nop
   140009689:	90                   	nop
   14000968a:	90                   	nop
   14000968b:	90                   	nop
   14000968c:	90                   	nop
   14000968d:	90                   	nop
   14000968e:	90                   	nop
   14000968f:	90                   	nop

0000000140009690 <__CTOR_LIST__>:
   140009690:	ff                   	(bad)  
   140009691:	ff                   	(bad)  
   140009692:	ff                   	(bad)  
   140009693:	ff                   	(bad)  
   140009694:	ff                   	(bad)  
   140009695:	ff                   	(bad)  
   140009696:	ff                   	(bad)  
   140009697:	ff                   	.byte 0xff

0000000140009698 <.ctors>:
   140009698:	40 96                	rex xchg %eax,%esi
   14000969a:	00 40 01             	add    %al,0x1(%rax)
   14000969d:	00 00                	add    %al,(%rax)
	...

00000001400096a0 <.ctors>:
   1400096a0:	60                   	(bad)  
   1400096a1:	96                   	xchg   %eax,%esi
   1400096a2:	00 40 01             	add    %al,0x1(%rax)
   1400096a5:	00 00                	add    %al,(%rax)
	...

00000001400096a8 <.ctors.65535>:
   1400096a8:	80 96 00 40 01 00 00 	adcb   $0x0,0x14000(%rsi)
	...

00000001400096b8 <__DTOR_LIST__>:
   1400096b8:	ff                   	(bad)  
   1400096b9:	ff                   	(bad)  
   1400096ba:	ff                   	(bad)  
   1400096bb:	ff                   	(bad)  
   1400096bc:	ff                   	(bad)  
   1400096bd:	ff                   	(bad)  
   1400096be:	ff                   	(bad)  
   1400096bf:	ff 00                	incl   (%rax)
   1400096c1:	00 00                	add    %al,(%rax)
   1400096c3:	00 00                	add    %al,(%rax)
   1400096c5:	00 00                	add    %al,(%rax)
	...
