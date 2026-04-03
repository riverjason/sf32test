
build_sf32lb52-lcd_n16r8_test_hcpu\bootloader\bootloader.elf:     file format elf32-littlearm


Disassembly of section .text:

20020208 <deregister_tm_clones>:
20020208:	4803      	ldr	r0, [pc, #12]	@ (20020218 <deregister_tm_clones+0x10>)
2002020a:	4b04      	ldr	r3, [pc, #16]	@ (2002021c <deregister_tm_clones+0x14>)
2002020c:	4283      	cmp	r3, r0
2002020e:	d002      	beq.n	20020216 <deregister_tm_clones+0xe>
20020210:	4b03      	ldr	r3, [pc, #12]	@ (20020220 <deregister_tm_clones+0x18>)
20020212:	b103      	cbz	r3, 20020216 <deregister_tm_clones+0xe>
20020214:	4718      	bx	r3
20020216:	4770      	bx	lr
20020218:	20044960 	.word	0x20044960
2002021c:	20044960 	.word	0x20044960
20020220:	00000000 	.word	0x00000000

20020224 <register_tm_clones>:
20020224:	4b06      	ldr	r3, [pc, #24]	@ (20020240 <register_tm_clones+0x1c>)
20020226:	4907      	ldr	r1, [pc, #28]	@ (20020244 <register_tm_clones+0x20>)
20020228:	1ac9      	subs	r1, r1, r3
2002022a:	1089      	asrs	r1, r1, #2
2002022c:	bf48      	it	mi
2002022e:	3101      	addmi	r1, #1
20020230:	1049      	asrs	r1, r1, #1
20020232:	d003      	beq.n	2002023c <register_tm_clones+0x18>
20020234:	4b04      	ldr	r3, [pc, #16]	@ (20020248 <register_tm_clones+0x24>)
20020236:	b10b      	cbz	r3, 2002023c <register_tm_clones+0x18>
20020238:	4801      	ldr	r0, [pc, #4]	@ (20020240 <register_tm_clones+0x1c>)
2002023a:	4718      	bx	r3
2002023c:	4770      	bx	lr
2002023e:	bf00      	nop
20020240:	20044960 	.word	0x20044960
20020244:	20044960 	.word	0x20044960
20020248:	00000000 	.word	0x00000000

2002024c <__do_global_dtors_aux>:
2002024c:	b510      	push	{r4, lr}
2002024e:	4c06      	ldr	r4, [pc, #24]	@ (20020268 <__do_global_dtors_aux+0x1c>)
20020250:	7823      	ldrb	r3, [r4, #0]
20020252:	b943      	cbnz	r3, 20020266 <__do_global_dtors_aux+0x1a>
20020254:	f7ff ffd8 	bl	20020208 <deregister_tm_clones>
20020258:	4b04      	ldr	r3, [pc, #16]	@ (2002026c <__do_global_dtors_aux+0x20>)
2002025a:	b113      	cbz	r3, 20020262 <__do_global_dtors_aux+0x16>
2002025c:	4804      	ldr	r0, [pc, #16]	@ (20020270 <__do_global_dtors_aux+0x24>)
2002025e:	f3af 8000 	nop.w
20020262:	2301      	movs	r3, #1
20020264:	7023      	strb	r3, [r4, #0]
20020266:	bd10      	pop	{r4, pc}
20020268:	20044960 	.word	0x20044960
2002026c:	00000000 	.word	0x00000000
20020270:	2002c114 	.word	0x2002c114

20020274 <frame_dummy>:
20020274:	b508      	push	{r3, lr}
20020276:	4b05      	ldr	r3, [pc, #20]	@ (2002028c <frame_dummy+0x18>)
20020278:	b11b      	cbz	r3, 20020282 <frame_dummy+0xe>
2002027a:	4905      	ldr	r1, [pc, #20]	@ (20020290 <frame_dummy+0x1c>)
2002027c:	4805      	ldr	r0, [pc, #20]	@ (20020294 <frame_dummy+0x20>)
2002027e:	f3af 8000 	nop.w
20020282:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20020286:	f7ff bfcd 	b.w	20020224 <register_tm_clones>
2002028a:	bf00      	nop
2002028c:	00000000 	.word	0x00000000
20020290:	20044964 	.word	0x20044964
20020294:	2002c114 	.word	0x2002c114

20020298 <boot_uart_tx>:
20020298:	2300      	movs	r3, #0
2002029a:	b510      	push	{r4, lr}
2002029c:	4293      	cmp	r3, r2
2002029e:	db00      	blt.n	200202a2 <boot_uart_tx+0xa>
200202a0:	bd10      	pop	{r4, pc}
200202a2:	69c4      	ldr	r4, [r0, #28]
200202a4:	0624      	lsls	r4, r4, #24
200202a6:	d5fc      	bpl.n	200202a2 <boot_uart_tx+0xa>
200202a8:	5ccc      	ldrb	r4, [r1, r3]
200202aa:	3301      	adds	r3, #1
200202ac:	6284      	str	r4, [r0, #40]	@ 0x28
200202ae:	e7f5      	b.n	2002029c <boot_uart_tx+0x4>

200202b0 <boot_error>:
200202b0:	b507      	push	{r0, r1, r2, lr}
200202b2:	2201      	movs	r2, #1
200202b4:	f88d 0007 	strb.w	r0, [sp, #7]
200202b8:	f10d 0107 	add.w	r1, sp, #7
200202bc:	480e      	ldr	r0, [pc, #56]	@ (200202f8 <boot_error+0x48>)
200202be:	f7ff ffeb 	bl	20020298 <boot_uart_tx>
200202c2:	4b0e      	ldr	r3, [pc, #56]	@ (200202fc <boot_error+0x4c>)
200202c4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202c8:	f002 0203 	and.w	r2, r2, #3
200202cc:	2a03      	cmp	r2, #3
200202ce:	f102 0101 	add.w	r1, r2, #1
200202d2:	d00f      	beq.n	200202f4 <boot_error+0x44>
200202d4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202d8:	f022 0203 	bic.w	r2, r2, #3
200202dc:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202e0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202e4:	430a      	orrs	r2, r1
200202e6:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202ea:	f00b ff4f 	bl	2002c18c <HAL_PMU_Reboot>
200202ee:	b003      	add	sp, #12
200202f0:	f85d fb04 	ldr.w	pc, [sp], #4
200202f4:	e7fe      	b.n	200202f4 <boot_error+0x44>
200202f6:	bf00      	nop
200202f8:	50084000 	.word	0x50084000
200202fc:	500ca000 	.word	0x500ca000

20020300 <HAL_MspInit>:
20020300:	2234      	movs	r2, #52	@ 0x34
20020302:	4b01      	ldr	r3, [pc, #4]	@ (20020308 <HAL_MspInit+0x8>)
20020304:	60da      	str	r2, [r3, #12]
20020306:	4770      	bx	lr
20020308:	50094000 	.word	0x50094000

2002030c <mpu_config>:
2002030c:	4770      	bx	lr

2002030e <cache_enable>:
2002030e:	4770      	bx	lr

20020310 <board_pinmux_mpi1_puya_base>:
20020310:	b510      	push	{r4, lr}
20020312:	2301      	movs	r3, #1
20020314:	2200      	movs	r2, #0
20020316:	2103      	movs	r1, #3
20020318:	2002      	movs	r0, #2
2002031a:	f004 fb73 	bl	20024a04 <HAL_PIN_Set>
2002031e:	2301      	movs	r3, #1
20020320:	2200      	movs	r2, #0
20020322:	4619      	mov	r1, r3
20020324:	200a      	movs	r0, #10
20020326:	f004 fb6d 	bl	20024a04 <HAL_PIN_Set>
2002032a:	2301      	movs	r3, #1
2002032c:	2210      	movs	r2, #16
2002032e:	2109      	movs	r1, #9
20020330:	2008      	movs	r0, #8
20020332:	f004 fb67 	bl	20024a04 <HAL_PIN_Set>
20020336:	2301      	movs	r3, #1
20020338:	2210      	movs	r2, #16
2002033a:	210a      	movs	r1, #10
2002033c:	2003      	movs	r0, #3
2002033e:	f004 fb61 	bl	20024a04 <HAL_PIN_Set>
20020342:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020346:	2301      	movs	r3, #1
20020348:	2200      	movs	r2, #0
2002034a:	210c      	movs	r1, #12
2002034c:	200b      	movs	r0, #11
2002034e:	f004 bb59 	b.w	20024a04 <HAL_PIN_Set>

20020352 <board_pinmux_mpi1_puya_ext>:
20020352:	b510      	push	{r4, lr}
20020354:	4604      	mov	r4, r0
20020356:	2101      	movs	r1, #1
20020358:	2005      	movs	r0, #5
2002035a:	f004 fc97 	bl	20024c8c <HAL_PIN_Set_Analog>
2002035e:	2101      	movs	r1, #1
20020360:	2006      	movs	r0, #6
20020362:	f004 fc93 	bl	20024c8c <HAL_PIN_Set_Analog>
20020366:	2101      	movs	r1, #1
20020368:	2007      	movs	r0, #7
2002036a:	f004 fc8f 	bl	20024c8c <HAL_PIN_Set_Analog>
2002036e:	2101      	movs	r1, #1
20020370:	2009      	movs	r0, #9
20020372:	f004 fc8b 	bl	20024c8c <HAL_PIN_Set_Analog>
20020376:	2101      	movs	r1, #1
20020378:	200c      	movs	r0, #12
2002037a:	f004 fc87 	bl	20024c8c <HAL_PIN_Set_Analog>
2002037e:	2101      	movs	r1, #1
20020380:	200d      	movs	r0, #13
20020382:	f004 fc83 	bl	20024c8c <HAL_PIN_Set_Analog>
20020386:	2101      	movs	r1, #1
20020388:	b154      	cbz	r4, 200203a0 <board_pinmux_mpi1_puya_ext+0x4e>
2002038a:	4608      	mov	r0, r1
2002038c:	f004 fc7e 	bl	20024c8c <HAL_PIN_Set_Analog>
20020390:	2301      	movs	r3, #1
20020392:	2230      	movs	r2, #48	@ 0x30
20020394:	210b      	movs	r1, #11
20020396:	2004      	movs	r0, #4
20020398:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002039c:	f004 bb32 	b.w	20024a04 <HAL_PIN_Set>
200203a0:	2004      	movs	r0, #4
200203a2:	f004 fc73 	bl	20024c8c <HAL_PIN_Set_Analog>
200203a6:	2301      	movs	r3, #1
200203a8:	2230      	movs	r2, #48	@ 0x30
200203aa:	210b      	movs	r1, #11
200203ac:	4618      	mov	r0, r3
200203ae:	e7f3      	b.n	20020398 <board_pinmux_mpi1_puya_ext+0x46>

200203b0 <board_pinmux_mpi1_gd>:
200203b0:	b508      	push	{r3, lr}
200203b2:	2200      	movs	r2, #0
200203b4:	2301      	movs	r3, #1
200203b6:	2103      	movs	r1, #3
200203b8:	2005      	movs	r0, #5
200203ba:	f004 fb23 	bl	20024a04 <HAL_PIN_Set>
200203be:	2301      	movs	r3, #1
200203c0:	2200      	movs	r2, #0
200203c2:	4619      	mov	r1, r3
200203c4:	200a      	movs	r0, #10
200203c6:	f004 fb1d 	bl	20024a04 <HAL_PIN_Set>
200203ca:	2301      	movs	r3, #1
200203cc:	2210      	movs	r2, #16
200203ce:	2109      	movs	r1, #9
200203d0:	200c      	movs	r0, #12
200203d2:	f004 fb17 	bl	20024a04 <HAL_PIN_Set>
200203d6:	2301      	movs	r3, #1
200203d8:	2210      	movs	r2, #16
200203da:	210a      	movs	r1, #10
200203dc:	2003      	movs	r0, #3
200203de:	f004 fb11 	bl	20024a04 <HAL_PIN_Set>
200203e2:	2301      	movs	r3, #1
200203e4:	2230      	movs	r2, #48	@ 0x30
200203e6:	210b      	movs	r1, #11
200203e8:	4618      	mov	r0, r3
200203ea:	f004 fb0b 	bl	20024a04 <HAL_PIN_Set>
200203ee:	2301      	movs	r3, #1
200203f0:	2230      	movs	r2, #48	@ 0x30
200203f2:	210c      	movs	r1, #12
200203f4:	2009      	movs	r0, #9
200203f6:	f004 fb05 	bl	20024a04 <HAL_PIN_Set>
200203fa:	2101      	movs	r1, #1
200203fc:	2002      	movs	r0, #2
200203fe:	f004 fc45 	bl	20024c8c <HAL_PIN_Set_Analog>
20020402:	2101      	movs	r1, #1
20020404:	2004      	movs	r0, #4
20020406:	f004 fc41 	bl	20024c8c <HAL_PIN_Set_Analog>
2002040a:	2101      	movs	r1, #1
2002040c:	2006      	movs	r0, #6
2002040e:	f004 fc3d 	bl	20024c8c <HAL_PIN_Set_Analog>
20020412:	2101      	movs	r1, #1
20020414:	2007      	movs	r0, #7
20020416:	f004 fc39 	bl	20024c8c <HAL_PIN_Set_Analog>
2002041a:	2101      	movs	r1, #1
2002041c:	2008      	movs	r0, #8
2002041e:	f004 fc35 	bl	20024c8c <HAL_PIN_Set_Analog>
20020422:	2101      	movs	r1, #1
20020424:	200b      	movs	r0, #11
20020426:	f004 fc31 	bl	20024c8c <HAL_PIN_Set_Analog>
2002042a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002042e:	2101      	movs	r1, #1
20020430:	200d      	movs	r0, #13
20020432:	f004 bc2b 	b.w	20024c8c <HAL_PIN_Set_Analog>

20020436 <board_pinmux_mpi2>:
20020436:	b510      	push	{r4, lr}
20020438:	2301      	movs	r3, #1
2002043a:	2200      	movs	r2, #0
2002043c:	2119      	movs	r1, #25
2002043e:	201e      	movs	r0, #30
20020440:	f004 fae0 	bl	20024a04 <HAL_PIN_Set>
20020444:	2301      	movs	r3, #1
20020446:	2200      	movs	r2, #0
20020448:	211b      	movs	r1, #27
2002044a:	201a      	movs	r0, #26
2002044c:	f004 fada 	bl	20024a04 <HAL_PIN_Set>
20020450:	2301      	movs	r3, #1
20020452:	2210      	movs	r2, #16
20020454:	2121      	movs	r1, #33	@ 0x21
20020456:	201d      	movs	r0, #29
20020458:	f004 fad4 	bl	20024a04 <HAL_PIN_Set>
2002045c:	2301      	movs	r3, #1
2002045e:	2210      	movs	r2, #16
20020460:	2122      	movs	r1, #34	@ 0x22
20020462:	201b      	movs	r0, #27
20020464:	f004 face 	bl	20024a04 <HAL_PIN_Set>
20020468:	2301      	movs	r3, #1
2002046a:	2230      	movs	r2, #48	@ 0x30
2002046c:	2123      	movs	r1, #35	@ 0x23
2002046e:	201c      	movs	r0, #28
20020470:	f004 fac8 	bl	20024a04 <HAL_PIN_Set>
20020474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020478:	2301      	movs	r3, #1
2002047a:	2230      	movs	r2, #48	@ 0x30
2002047c:	2124      	movs	r1, #36	@ 0x24
2002047e:	201f      	movs	r0, #31
20020480:	f004 bac0 	b.w	20024a04 <HAL_PIN_Set>

20020484 <board_pinmux_sd>:
20020484:	b510      	push	{r4, lr}
20020486:	2301      	movs	r3, #1
20020488:	2230      	movs	r2, #48	@ 0x30
2002048a:	f44f 71da 	mov.w	r1, #436	@ 0x1b4
2002048e:	201d      	movs	r0, #29
20020490:	f004 fab8 	bl	20024a04 <HAL_PIN_Set>
20020494:	2014      	movs	r0, #20
20020496:	f001 fd08 	bl	20021eaa <HAL_Delay_us>
2002049a:	2301      	movs	r3, #1
2002049c:	2200      	movs	r2, #0
2002049e:	f44f 71d9 	mov.w	r1, #434	@ 0x1b2
200204a2:	201c      	movs	r0, #28
200204a4:	f004 faae 	bl	20024a04 <HAL_PIN_Set>
200204a8:	2301      	movs	r3, #1
200204aa:	2230      	movs	r2, #48	@ 0x30
200204ac:	f240 11b5 	movw	r1, #437	@ 0x1b5
200204b0:	201e      	movs	r0, #30
200204b2:	f004 faa7 	bl	20024a04 <HAL_PIN_Set>
200204b6:	2301      	movs	r3, #1
200204b8:	2230      	movs	r2, #48	@ 0x30
200204ba:	f44f 71db 	mov.w	r1, #438	@ 0x1b6
200204be:	201f      	movs	r0, #31
200204c0:	f004 faa0 	bl	20024a04 <HAL_PIN_Set>
200204c4:	2301      	movs	r3, #1
200204c6:	2230      	movs	r2, #48	@ 0x30
200204c8:	f240 11b7 	movw	r1, #439	@ 0x1b7
200204cc:	201a      	movs	r0, #26
200204ce:	f004 fa99 	bl	20024a04 <HAL_PIN_Set>
200204d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200204d6:	2301      	movs	r3, #1
200204d8:	2230      	movs	r2, #48	@ 0x30
200204da:	f44f 71dc 	mov.w	r1, #440	@ 0x1b8
200204de:	201b      	movs	r0, #27
200204e0:	f004 ba90 	b.w	20024a04 <HAL_PIN_Set>

200204e4 <board_boot_from>:
200204e4:	b510      	push	{r4, lr}
200204e6:	4b0d      	ldr	r3, [pc, #52]	@ (2002051c <board_boot_from+0x38>)
200204e8:	685b      	ldr	r3, [r3, #4]
200204ea:	f3c3 2302 	ubfx	r3, r3, #8, #3
200204ee:	2b07      	cmp	r3, #7
200204f0:	d10c      	bne.n	2002050c <board_boot_from+0x28>
200204f2:	2400      	movs	r4, #0
200204f4:	3401      	adds	r4, #1
200204f6:	2101      	movs	r1, #1
200204f8:	4620      	mov	r0, r4
200204fa:	f004 fbc7 	bl	20024c8c <HAL_PIN_Set_Analog>
200204fe:	2c0d      	cmp	r4, #13
20020500:	d1f8      	bne.n	200204f4 <board_boot_from+0x10>
20020502:	2000      	movs	r0, #0
20020504:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020508:	f002 ba38 	b.w	2002297c <HAL_Get_backup>
2002050c:	b11b      	cbz	r3, 20020516 <board_boot_from+0x32>
2002050e:	2b01      	cmp	r3, #1
20020510:	d1f7      	bne.n	20020502 <board_boot_from+0x1e>
20020512:	2002      	movs	r0, #2
20020514:	bd10      	pop	{r4, pc}
20020516:	2001      	movs	r0, #1
20020518:	e7fc      	b.n	20020514 <board_boot_from+0x30>
2002051a:	bf00      	nop
2002051c:	5000b000 	.word	0x5000b000

20020520 <board_flash_power_on>:
20020520:	4770      	bx	lr

20020522 <board_pinmux_psram_func0>:
20020522:	b508      	push	{r3, lr}
20020524:	2210      	movs	r2, #16
20020526:	2301      	movs	r3, #1
20020528:	2109      	movs	r1, #9
2002052a:	2002      	movs	r0, #2
2002052c:	f004 fa6a 	bl	20024a04 <HAL_PIN_Set>
20020530:	2301      	movs	r3, #1
20020532:	2210      	movs	r2, #16
20020534:	210a      	movs	r1, #10
20020536:	2003      	movs	r0, #3
20020538:	f004 fa64 	bl	20024a04 <HAL_PIN_Set>
2002053c:	2301      	movs	r3, #1
2002053e:	2210      	movs	r2, #16
20020540:	210b      	movs	r1, #11
20020542:	2004      	movs	r0, #4
20020544:	f004 fa5e 	bl	20024a04 <HAL_PIN_Set>
20020548:	2301      	movs	r3, #1
2002054a:	2210      	movs	r2, #16
2002054c:	210c      	movs	r1, #12
2002054e:	2005      	movs	r0, #5
20020550:	f004 fa58 	bl	20024a04 <HAL_PIN_Set>
20020554:	2301      	movs	r3, #1
20020556:	2210      	movs	r2, #16
20020558:	210d      	movs	r1, #13
2002055a:	2006      	movs	r0, #6
2002055c:	f004 fa52 	bl	20024a04 <HAL_PIN_Set>
20020560:	2301      	movs	r3, #1
20020562:	2210      	movs	r2, #16
20020564:	210e      	movs	r1, #14
20020566:	2007      	movs	r0, #7
20020568:	f004 fa4c 	bl	20024a04 <HAL_PIN_Set>
2002056c:	2301      	movs	r3, #1
2002056e:	2210      	movs	r2, #16
20020570:	210f      	movs	r1, #15
20020572:	2008      	movs	r0, #8
20020574:	f004 fa46 	bl	20024a04 <HAL_PIN_Set>
20020578:	2210      	movs	r2, #16
2002057a:	2301      	movs	r3, #1
2002057c:	4611      	mov	r1, r2
2002057e:	2009      	movs	r0, #9
20020580:	f004 fa40 	bl	20024a04 <HAL_PIN_Set>
20020584:	2301      	movs	r3, #1
20020586:	2210      	movs	r2, #16
20020588:	2106      	movs	r1, #6
2002058a:	200a      	movs	r0, #10
2002058c:	f004 fa3a 	bl	20024a04 <HAL_PIN_Set>
20020590:	2301      	movs	r3, #1
20020592:	2200      	movs	r2, #0
20020594:	4619      	mov	r1, r3
20020596:	200b      	movs	r0, #11
20020598:	f004 fa34 	bl	20024a04 <HAL_PIN_Set>
2002059c:	2301      	movs	r3, #1
2002059e:	2200      	movs	r2, #0
200205a0:	2103      	movs	r1, #3
200205a2:	200c      	movs	r0, #12
200205a4:	f004 fa2e 	bl	20024a04 <HAL_PIN_Set>
200205a8:	2101      	movs	r1, #1
200205aa:	4608      	mov	r0, r1
200205ac:	f004 fb6e 	bl	20024c8c <HAL_PIN_Set_Analog>
200205b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200205b4:	2101      	movs	r1, #1
200205b6:	200d      	movs	r0, #13
200205b8:	f004 bb68 	b.w	20024c8c <HAL_PIN_Set_Analog>

200205bc <board_pinmux_psram_func1_2_4>:
200205bc:	b510      	push	{r4, lr}
200205be:	2301      	movs	r3, #1
200205c0:	4604      	mov	r4, r0
200205c2:	2210      	movs	r2, #16
200205c4:	2109      	movs	r1, #9
200205c6:	2002      	movs	r0, #2
200205c8:	f004 fa1c 	bl	20024a04 <HAL_PIN_Set>
200205cc:	2301      	movs	r3, #1
200205ce:	2210      	movs	r2, #16
200205d0:	210a      	movs	r1, #10
200205d2:	2003      	movs	r0, #3
200205d4:	f004 fa16 	bl	20024a04 <HAL_PIN_Set>
200205d8:	2301      	movs	r3, #1
200205da:	2210      	movs	r2, #16
200205dc:	210b      	movs	r1, #11
200205de:	2004      	movs	r0, #4
200205e0:	f004 fa10 	bl	20024a04 <HAL_PIN_Set>
200205e4:	2301      	movs	r3, #1
200205e6:	2210      	movs	r2, #16
200205e8:	210c      	movs	r1, #12
200205ea:	2005      	movs	r0, #5
200205ec:	f004 fa0a 	bl	20024a04 <HAL_PIN_Set>
200205f0:	2301      	movs	r3, #1
200205f2:	2210      	movs	r2, #16
200205f4:	210d      	movs	r1, #13
200205f6:	2009      	movs	r0, #9
200205f8:	f004 fa04 	bl	20024a04 <HAL_PIN_Set>
200205fc:	2301      	movs	r3, #1
200205fe:	2210      	movs	r2, #16
20020600:	210e      	movs	r1, #14
20020602:	200a      	movs	r0, #10
20020604:	f004 f9fe 	bl	20024a04 <HAL_PIN_Set>
20020608:	2301      	movs	r3, #1
2002060a:	2210      	movs	r2, #16
2002060c:	210f      	movs	r1, #15
2002060e:	200b      	movs	r0, #11
20020610:	f004 f9f8 	bl	20024a04 <HAL_PIN_Set>
20020614:	2210      	movs	r2, #16
20020616:	2301      	movs	r3, #1
20020618:	4611      	mov	r1, r2
2002061a:	200c      	movs	r0, #12
2002061c:	f004 f9f2 	bl	20024a04 <HAL_PIN_Set>
20020620:	2301      	movs	r3, #1
20020622:	2200      	movs	r2, #0
20020624:	4619      	mov	r1, r3
20020626:	2008      	movs	r0, #8
20020628:	f004 f9ec 	bl	20024a04 <HAL_PIN_Set>
2002062c:	2301      	movs	r3, #1
2002062e:	2200      	movs	r2, #0
20020630:	2103      	movs	r1, #3
20020632:	2006      	movs	r0, #6
20020634:	f004 f9e6 	bl	20024a04 <HAL_PIN_Set>
20020638:	2c02      	cmp	r4, #2
2002063a:	d013      	beq.n	20020664 <board_pinmux_psram_func1_2_4+0xa8>
2002063c:	2c04      	cmp	r4, #4
2002063e:	d025      	beq.n	2002068c <board_pinmux_psram_func1_2_4+0xd0>
20020640:	2c01      	cmp	r4, #1
20020642:	d12c      	bne.n	2002069e <board_pinmux_psram_func1_2_4+0xe2>
20020644:	2106      	movs	r1, #6
20020646:	4623      	mov	r3, r4
20020648:	2210      	movs	r2, #16
2002064a:	200d      	movs	r0, #13
2002064c:	f004 f9da 	bl	20024a04 <HAL_PIN_Set>
20020650:	4621      	mov	r1, r4
20020652:	4620      	mov	r0, r4
20020654:	f004 fb1a 	bl	20024c8c <HAL_PIN_Set_Analog>
20020658:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002065c:	2101      	movs	r1, #1
2002065e:	2007      	movs	r0, #7
20020660:	f004 bb14 	b.w	20024c8c <HAL_PIN_Set_Analog>
20020664:	2301      	movs	r3, #1
20020666:	2210      	movs	r2, #16
20020668:	2104      	movs	r1, #4
2002066a:	4618      	mov	r0, r3
2002066c:	f004 f9ca 	bl	20024a04 <HAL_PIN_Set>
20020670:	2301      	movs	r3, #1
20020672:	2210      	movs	r2, #16
20020674:	2105      	movs	r1, #5
20020676:	200d      	movs	r0, #13
20020678:	f004 f9c4 	bl	20024a04 <HAL_PIN_Set>
2002067c:	4621      	mov	r1, r4
2002067e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020682:	2301      	movs	r3, #1
20020684:	2200      	movs	r2, #0
20020686:	2007      	movs	r0, #7
20020688:	f004 b9bc 	b.w	20024a04 <HAL_PIN_Set>
2002068c:	2106      	movs	r1, #6
2002068e:	2301      	movs	r3, #1
20020690:	2200      	movs	r2, #0
20020692:	200d      	movs	r0, #13
20020694:	f004 f9b6 	bl	20024a04 <HAL_PIN_Set>
20020698:	2101      	movs	r1, #1
2002069a:	4608      	mov	r0, r1
2002069c:	e7da      	b.n	20020654 <board_pinmux_psram_func1_2_4+0x98>
2002069e:	bd10      	pop	{r4, pc}

200206a0 <board_pinmux_psram_func3>:
200206a0:	b508      	push	{r3, lr}
200206a2:	2301      	movs	r3, #1
200206a4:	2200      	movs	r2, #0
200206a6:	4619      	mov	r1, r3
200206a8:	200a      	movs	r0, #10
200206aa:	f004 f9ab 	bl	20024a04 <HAL_PIN_Set>
200206ae:	2301      	movs	r3, #1
200206b0:	2200      	movs	r2, #0
200206b2:	2103      	movs	r1, #3
200206b4:	2009      	movs	r0, #9
200206b6:	f004 f9a5 	bl	20024a04 <HAL_PIN_Set>
200206ba:	2301      	movs	r3, #1
200206bc:	2210      	movs	r2, #16
200206be:	2109      	movs	r1, #9
200206c0:	2006      	movs	r0, #6
200206c2:	f004 f99f 	bl	20024a04 <HAL_PIN_Set>
200206c6:	2301      	movs	r3, #1
200206c8:	2210      	movs	r2, #16
200206ca:	210a      	movs	r1, #10
200206cc:	2008      	movs	r0, #8
200206ce:	f004 f999 	bl	20024a04 <HAL_PIN_Set>
200206d2:	2301      	movs	r3, #1
200206d4:	2230      	movs	r2, #48	@ 0x30
200206d6:	210b      	movs	r1, #11
200206d8:	2007      	movs	r0, #7
200206da:	f004 f993 	bl	20024a04 <HAL_PIN_Set>
200206de:	2301      	movs	r3, #1
200206e0:	2230      	movs	r2, #48	@ 0x30
200206e2:	210c      	movs	r1, #12
200206e4:	200b      	movs	r0, #11
200206e6:	f004 f98d 	bl	20024a04 <HAL_PIN_Set>
200206ea:	2101      	movs	r1, #1
200206ec:	4608      	mov	r0, r1
200206ee:	f004 facd 	bl	20024c8c <HAL_PIN_Set_Analog>
200206f2:	2101      	movs	r1, #1
200206f4:	2002      	movs	r0, #2
200206f6:	f004 fac9 	bl	20024c8c <HAL_PIN_Set_Analog>
200206fa:	2101      	movs	r1, #1
200206fc:	2003      	movs	r0, #3
200206fe:	f004 fac5 	bl	20024c8c <HAL_PIN_Set_Analog>
20020702:	2101      	movs	r1, #1
20020704:	2004      	movs	r0, #4
20020706:	f004 fac1 	bl	20024c8c <HAL_PIN_Set_Analog>
2002070a:	2101      	movs	r1, #1
2002070c:	2005      	movs	r0, #5
2002070e:	f004 fabd 	bl	20024c8c <HAL_PIN_Set_Analog>
20020712:	2101      	movs	r1, #1
20020714:	200c      	movs	r0, #12
20020716:	f004 fab9 	bl	20024c8c <HAL_PIN_Set_Analog>
2002071a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002071e:	2101      	movs	r1, #1
20020720:	200d      	movs	r0, #13
20020722:	f004 bab3 	b.w	20024c8c <HAL_PIN_Set_Analog>

20020726 <bootloader_switch_clock>:
20020726:	2102      	movs	r1, #2
20020728:	2004      	movs	r0, #4
2002072a:	f004 bbe1 	b.w	20024ef0 <HAL_RCC_HCPU_ClockSelect>
	...

20020730 <boot_psram_init>:
20020730:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020734:	2400      	movs	r4, #0
20020736:	b08a      	sub	sp, #40	@ 0x28
20020738:	4605      	mov	r5, r0
2002073a:	2230      	movs	r2, #48	@ 0x30
2002073c:	4621      	mov	r1, r4
2002073e:	4863      	ldr	r0, [pc, #396]	@ (200208cc <boot_psram_init+0x19c>)
20020740:	f009 ffe4 	bl	2002a70c <memset>
20020744:	4b62      	ldr	r3, [pc, #392]	@ (200208d0 <boot_psram_init+0x1a0>)
20020746:	1ea8      	subs	r0, r5, #2
20020748:	9305      	str	r3, [sp, #20]
2002074a:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
2002074e:	9307      	str	r3, [sp, #28]
20020750:	2303      	movs	r3, #3
20020752:	9406      	str	r4, [sp, #24]
20020754:	9309      	str	r3, [sp, #36]	@ 0x24
20020756:	2804      	cmp	r0, #4
20020758:	d804      	bhi.n	20020764 <boot_psram_init+0x34>
2002075a:	e8df f000 	tbb	[pc, r0]
2002075e:	6264      	.short	0x6264
20020760:	5d04      	.short	0x5d04
20020762:	60          	.byte	0x60
20020763:	00          	.byte	0x00
20020764:	e7fe      	b.n	20020764 <boot_psram_init+0x34>
20020766:	2305      	movs	r3, #5
20020768:	9309      	str	r3, [sp, #36]	@ 0x24
2002076a:	2304      	movs	r3, #4
2002076c:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002076e:	9308      	str	r3, [sp, #32]
20020770:	2d03      	cmp	r5, #3
20020772:	d162      	bne.n	2002083a <boot_psram_init+0x10a>
20020774:	f001 faba 	bl	20021cec <BSP_GetFlash1DIV>
20020778:	a905      	add	r1, sp, #20
2002077a:	4602      	mov	r2, r0
2002077c:	4853      	ldr	r0, [pc, #332]	@ (200208cc <boot_psram_init+0x19c>)
2002077e:	f003 fedd 	bl	2002453c <HAL_OPI_PSRAM_Init>
20020782:	462a      	mov	r2, r5
20020784:	2108      	movs	r1, #8
20020786:	4851      	ldr	r0, [pc, #324]	@ (200208cc <boot_psram_init+0x19c>)
20020788:	f003 fdca 	bl	20024320 <HAL_MPI_MR_WRITE>
2002078c:	484f      	ldr	r0, [pc, #316]	@ (200208cc <boot_psram_init+0x19c>)
2002078e:	f003 fad5 	bl	20023d3c <HAL_QSPI_GET_CLK>
20020792:	4b50      	ldr	r3, [pc, #320]	@ (200208d4 <boot_psram_init+0x1a4>)
20020794:	4298      	cmp	r0, r3
20020796:	d948      	bls.n	2002082a <boot_psram_init+0xfa>
20020798:	f103 63a4 	add.w	r3, r3, #85983232	@ 0x5200000
2002079c:	f503 4383 	add.w	r3, r3, #16768	@ 0x4180
200207a0:	4298      	cmp	r0, r3
200207a2:	d944      	bls.n	2002082e <boot_psram_init+0xfe>
200207a4:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200207a8:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200207ac:	4298      	cmp	r0, r3
200207ae:	d940      	bls.n	20020832 <boot_psram_init+0x102>
200207b0:	4b49      	ldr	r3, [pc, #292]	@ (200208d8 <boot_psram_init+0x1a8>)
200207b2:	4298      	cmp	r0, r3
200207b4:	d93f      	bls.n	20020836 <boot_psram_init+0x106>
200207b6:	4b49      	ldr	r3, [pc, #292]	@ (200208dc <boot_psram_init+0x1ac>)
200207b8:	4298      	cmp	r0, r3
200207ba:	bf98      	it	ls
200207bc:	2407      	movls	r4, #7
200207be:	2600      	movs	r6, #0
200207c0:	2507      	movs	r5, #7
200207c2:	f04f 0803 	mov.w	r8, #3
200207c6:	0067      	lsls	r7, r4, #1
200207c8:	b2ff      	uxtb	r7, r7
200207ca:	1e7a      	subs	r2, r7, #1
200207cc:	4633      	mov	r3, r6
200207ce:	b252      	sxtb	r2, r2
200207d0:	4629      	mov	r1, r5
200207d2:	483e      	ldr	r0, [pc, #248]	@ (200208cc <boot_psram_init+0x19c>)
200207d4:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207d8:	e9cd 6800 	strd	r6, r8, [sp]
200207dc:	f002 f93e 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
200207e0:	4631      	mov	r1, r6
200207e2:	483a      	ldr	r0, [pc, #232]	@ (200208cc <boot_psram_init+0x19c>)
200207e4:	f002 f92f 	bl	20022a46 <HAL_FLASH_SET_AHB_RCMD>
200207e8:	1e62      	subs	r2, r4, #1
200207ea:	4633      	mov	r3, r6
200207ec:	b252      	sxtb	r2, r2
200207ee:	4629      	mov	r1, r5
200207f0:	4836      	ldr	r0, [pc, #216]	@ (200208cc <boot_psram_init+0x19c>)
200207f2:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207f6:	e9cd 6800 	strd	r6, r8, [sp]
200207fa:	f002 f958 	bl	20022aae <HAL_FLASH_CFG_AHB_WCMD>
200207fe:	2180      	movs	r1, #128	@ 0x80
20020800:	4832      	ldr	r0, [pc, #200]	@ (200208cc <boot_psram_init+0x19c>)
20020802:	f002 f948 	bl	20022a96 <HAL_FLASH_SET_AHB_WCMD>
20020806:	4623      	mov	r3, r4
20020808:	463a      	mov	r2, r7
2002080a:	2101      	movs	r1, #1
2002080c:	482f      	ldr	r0, [pc, #188]	@ (200208cc <boot_psram_init+0x19c>)
2002080e:	f003 fdab 	bl	20024368 <HAL_MPI_SET_FIXLAT>
20020812:	b00a      	add	sp, #40	@ 0x28
20020814:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20020818:	2302      	movs	r3, #2
2002081a:	9309      	str	r3, [sp, #36]	@ 0x24
2002081c:	e7a6      	b.n	2002076c <boot_psram_init+0x3c>
2002081e:	2306      	movs	r3, #6
20020820:	9309      	str	r3, [sp, #36]	@ 0x24
20020822:	2308      	movs	r3, #8
20020824:	e7a2      	b.n	2002076c <boot_psram_init+0x3c>
20020826:	2310      	movs	r3, #16
20020828:	e7a0      	b.n	2002076c <boot_psram_init+0x3c>
2002082a:	462c      	mov	r4, r5
2002082c:	e7c7      	b.n	200207be <boot_psram_init+0x8e>
2002082e:	2404      	movs	r4, #4
20020830:	e7c5      	b.n	200207be <boot_psram_init+0x8e>
20020832:	2405      	movs	r4, #5
20020834:	e7c3      	b.n	200207be <boot_psram_init+0x8e>
20020836:	2406      	movs	r4, #6
20020838:	e7c1      	b.n	200207be <boot_psram_init+0x8e>
2002083a:	2d05      	cmp	r5, #5
2002083c:	d10d      	bne.n	2002085a <boot_psram_init+0x12a>
2002083e:	f001 fa55 	bl	20021cec <BSP_GetFlash1DIV>
20020842:	a905      	add	r1, sp, #20
20020844:	4602      	mov	r2, r0
20020846:	4821      	ldr	r0, [pc, #132]	@ (200208cc <boot_psram_init+0x19c>)
20020848:	f003 fef4 	bl	20024634 <HAL_LEGACY_PSRAM_Init>
2002084c:	481f      	ldr	r0, [pc, #124]	@ (200208cc <boot_psram_init+0x19c>)
2002084e:	f003 fdfd 	bl	2002444c <HAL_LEGACY_CFG_READ>
20020852:	481e      	ldr	r0, [pc, #120]	@ (200208cc <boot_psram_init+0x19c>)
20020854:	f003 fe15 	bl	20024482 <HAL_LEGACY_CFG_WRITE>
20020858:	e7db      	b.n	20020812 <boot_psram_init+0xe2>
2002085a:	2d06      	cmp	r5, #6
2002085c:	d10d      	bne.n	2002087a <boot_psram_init+0x14a>
2002085e:	f001 fa45 	bl	20021cec <BSP_GetFlash1DIV>
20020862:	a905      	add	r1, sp, #20
20020864:	4602      	mov	r2, r0
20020866:	4819      	ldr	r0, [pc, #100]	@ (200208cc <boot_psram_init+0x19c>)
20020868:	f003 ffb0 	bl	200247cc <HAL_HYPER_PSRAM_Init>
2002086c:	4817      	ldr	r0, [pc, #92]	@ (200208cc <boot_psram_init+0x19c>)
2002086e:	f003 ffe7 	bl	20024840 <HAL_HYPER_CFG_READ>
20020872:	4816      	ldr	r0, [pc, #88]	@ (200208cc <boot_psram_init+0x19c>)
20020874:	f003 fff6 	bl	20024864 <HAL_HYPER_CFG_WRITE>
20020878:	e7cb      	b.n	20020812 <boot_psram_init+0xe2>
2002087a:	f001 fa37 	bl	20021cec <BSP_GetFlash1DIV>
2002087e:	2500      	movs	r5, #0
20020880:	2403      	movs	r4, #3
20020882:	2701      	movs	r7, #1
20020884:	2602      	movs	r6, #2
20020886:	4602      	mov	r2, r0
20020888:	a905      	add	r1, sp, #20
2002088a:	4810      	ldr	r0, [pc, #64]	@ (200208cc <boot_psram_init+0x19c>)
2002088c:	f003 fcf2 	bl	20024274 <HAL_SPI_PSRAM_Init>
20020890:	462b      	mov	r3, r5
20020892:	2206      	movs	r2, #6
20020894:	4621      	mov	r1, r4
20020896:	e9cd 4702 	strd	r4, r7, [sp, #8]
2002089a:	e9cd 5600 	strd	r5, r6, [sp]
2002089e:	480b      	ldr	r0, [pc, #44]	@ (200208cc <boot_psram_init+0x19c>)
200208a0:	f002 f8dc 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
200208a4:	21eb      	movs	r1, #235	@ 0xeb
200208a6:	4809      	ldr	r0, [pc, #36]	@ (200208cc <boot_psram_init+0x19c>)
200208a8:	f002 f8cd 	bl	20022a46 <HAL_FLASH_SET_AHB_RCMD>
200208ac:	4621      	mov	r1, r4
200208ae:	462b      	mov	r3, r5
200208b0:	462a      	mov	r2, r5
200208b2:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208b6:	e9cd 5600 	strd	r5, r6, [sp]
200208ba:	4804      	ldr	r0, [pc, #16]	@ (200208cc <boot_psram_init+0x19c>)
200208bc:	f002 f8f7 	bl	20022aae <HAL_FLASH_CFG_AHB_WCMD>
200208c0:	2138      	movs	r1, #56	@ 0x38
200208c2:	4802      	ldr	r0, [pc, #8]	@ (200208cc <boot_psram_init+0x19c>)
200208c4:	f002 f8e7 	bl	20022a96 <HAL_FLASH_SET_AHB_WCMD>
200208c8:	e7a3      	b.n	20020812 <boot_psram_init+0xe2>
200208ca:	bf00      	nop
200208cc:	2004497c 	.word	0x2004497c
200208d0:	50041000 	.word	0x50041000
200208d4:	07de2901 	.word	0x07de2901
200208d8:	13c9eb01 	.word	0x13c9eb01
200208dc:	17d78401 	.word	0x17d78401

200208e0 <board_init_psram>:
200208e0:	b510      	push	{r4, lr}
200208e2:	4b15      	ldr	r3, [pc, #84]	@ (20020938 <board_init_psram+0x58>)
200208e4:	685c      	ldr	r4, [r3, #4]
200208e6:	f3c4 2402 	ubfx	r4, r4, #8, #3
200208ea:	1ea3      	subs	r3, r4, #2
200208ec:	2b04      	cmp	r3, #4
200208ee:	d821      	bhi.n	20020934 <board_init_psram+0x54>
200208f0:	e8df f003 	tbb	[pc, r3]
200208f4:	03151b1d 	.word	0x03151b1d
200208f8:	19          	.byte	0x19
200208f9:	00          	.byte	0x00
200208fa:	f7ff fed1 	bl	200206a0 <board_pinmux_psram_func3>
200208fe:	2201      	movs	r2, #1
20020900:	2000      	movs	r0, #0
20020902:	4611      	mov	r1, r2
20020904:	f00b fc08 	bl	2002c118 <HAL_PMU_ConfigPeriLdo>
20020908:	2001      	movs	r0, #1
2002090a:	f7ff ff0c 	bl	20020726 <bootloader_switch_clock>
2002090e:	2002      	movs	r0, #2
20020910:	f001 f9f8 	bl	20021d04 <BSP_SetFlash1DIV>
20020914:	4620      	mov	r0, r4
20020916:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002091a:	f7ff bf09 	b.w	20020730 <boot_psram_init>
2002091e:	2002      	movs	r0, #2
20020920:	f7ff fe4c 	bl	200205bc <board_pinmux_psram_func1_2_4>
20020924:	e7eb      	b.n	200208fe <board_init_psram+0x1e>
20020926:	2004      	movs	r0, #4
20020928:	e7fa      	b.n	20020920 <board_init_psram+0x40>
2002092a:	2001      	movs	r0, #1
2002092c:	e7f8      	b.n	20020920 <board_init_psram+0x40>
2002092e:	f7ff fdf8 	bl	20020522 <board_pinmux_psram_func0>
20020932:	e7e4      	b.n	200208fe <board_init_psram+0x1e>
20020934:	bd10      	pop	{r4, pc}
20020936:	bf00      	nop
20020938:	5000b000 	.word	0x5000b000

2002093c <erase_nor>:
2002093c:	4b15      	ldr	r3, [pc, #84]	@ (20020994 <erase_nor+0x58>)
2002093e:	b570      	push	{r4, r5, r6, lr}
20020940:	f103 0644 	add.w	r6, r3, #68	@ 0x44
20020944:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
20020948:	bf38      	it	cc
2002094a:	461e      	movcc	r6, r3
2002094c:	6933      	ldr	r3, [r6, #16]
2002094e:	460c      	mov	r4, r1
20020950:	4283      	cmp	r3, r0
20020952:	d901      	bls.n	20020958 <erase_nor+0x1c>
20020954:	2001      	movs	r0, #1
20020956:	bd70      	pop	{r4, r5, r6, pc}
20020958:	6972      	ldr	r2, [r6, #20]
2002095a:	441a      	add	r2, r3
2002095c:	4282      	cmp	r2, r0
2002095e:	d3f9      	bcc.n	20020954 <erase_nor+0x18>
20020960:	1ac0      	subs	r0, r0, r3
20020962:	f3c0 030b 	ubfx	r3, r0, #0, #12
20020966:	b97b      	cbnz	r3, 20020988 <erase_nor+0x4c>
20020968:	f3c1 030b 	ubfx	r3, r1, #0, #12
2002096c:	b97b      	cbnz	r3, 2002098e <erase_nor+0x52>
2002096e:	1845      	adds	r5, r0, r1
20020970:	1b29      	subs	r1, r5, r4
20020972:	b90c      	cbnz	r4, 20020978 <erase_nor+0x3c>
20020974:	4620      	mov	r0, r4
20020976:	e7ee      	b.n	20020956 <erase_nor+0x1a>
20020978:	4630      	mov	r0, r6
2002097a:	f003 f993 	bl	20023ca4 <HAL_QSPIEX_SECT_ERASE>
2002097e:	2800      	cmp	r0, #0
20020980:	d1e8      	bne.n	20020954 <erase_nor+0x18>
20020982:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
20020986:	e7f3      	b.n	20020970 <erase_nor+0x34>
20020988:	f04f 30ff 	mov.w	r0, #4294967295
2002098c:	e7e3      	b.n	20020956 <erase_nor+0x1a>
2002098e:	f06f 0001 	mvn.w	r0, #1
20020992:	e7e0      	b.n	20020956 <erase_nor+0x1a>
20020994:	20046ecc 	.word	0x20046ecc

20020998 <write_nor>:
20020998:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002099c:	4b20      	ldr	r3, [pc, #128]	@ (20020a20 <write_nor+0x88>)
2002099e:	460f      	mov	r7, r1
200209a0:	f103 0844 	add.w	r8, r3, #68	@ 0x44
200209a4:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
200209a8:	bf38      	it	cc
200209aa:	4698      	movcc	r8, r3
200209ac:	f8d8 5010 	ldr.w	r5, [r8, #16]
200209b0:	4616      	mov	r6, r2
200209b2:	4285      	cmp	r5, r0
200209b4:	d902      	bls.n	200209bc <write_nor+0x24>
200209b6:	2000      	movs	r0, #0
200209b8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200209bc:	f8d8 2014 	ldr.w	r2, [r8, #20]
200209c0:	442a      	add	r2, r5
200209c2:	4282      	cmp	r2, r0
200209c4:	d3f7      	bcc.n	200209b6 <write_nor+0x1e>
200209c6:	1b45      	subs	r5, r0, r5
200209c8:	f015 04ff 	ands.w	r4, r5, #255	@ 0xff
200209cc:	d012      	beq.n	200209f4 <write_nor+0x5c>
200209ce:	f5c4 7480 	rsb	r4, r4, #256	@ 0x100
200209d2:	42b4      	cmp	r4, r6
200209d4:	bf28      	it	cs
200209d6:	4634      	movcs	r4, r6
200209d8:	460a      	mov	r2, r1
200209da:	4623      	mov	r3, r4
200209dc:	4629      	mov	r1, r5
200209de:	4640      	mov	r0, r8
200209e0:	f003 f87b 	bl	20023ada <HAL_QSPIEX_WRITE_PAGE>
200209e4:	4284      	cmp	r4, r0
200209e6:	d1e6      	bne.n	200209b6 <write_nor+0x1e>
200209e8:	4425      	add	r5, r4
200209ea:	4427      	add	r7, r4
200209ec:	1b34      	subs	r4, r6, r4
200209ee:	b91c      	cbnz	r4, 200209f8 <write_nor+0x60>
200209f0:	4630      	mov	r0, r6
200209f2:	e7e1      	b.n	200209b8 <write_nor+0x20>
200209f4:	4634      	mov	r4, r6
200209f6:	e7fa      	b.n	200209ee <write_nor+0x56>
200209f8:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
200209fc:	46a1      	mov	r9, r4
200209fe:	bf28      	it	cs
20020a00:	f44f 7980 	movcs.w	r9, #256	@ 0x100
20020a04:	463a      	mov	r2, r7
20020a06:	464b      	mov	r3, r9
20020a08:	4629      	mov	r1, r5
20020a0a:	4640      	mov	r0, r8
20020a0c:	f003 f865 	bl	20023ada <HAL_QSPIEX_WRITE_PAGE>
20020a10:	4581      	cmp	r9, r0
20020a12:	d1d0      	bne.n	200209b6 <write_nor+0x1e>
20020a14:	444d      	add	r5, r9
20020a16:	444f      	add	r7, r9
20020a18:	eba4 0409 	sub.w	r4, r4, r9
20020a1c:	e7e7      	b.n	200209ee <write_nor+0x56>
20020a1e:	bf00      	nop
20020a20:	20046ecc 	.word	0x20046ecc

20020a24 <read_nor>:
20020a24:	460b      	mov	r3, r1
20020a26:	b510      	push	{r4, lr}
20020a28:	4614      	mov	r4, r2
20020a2a:	4601      	mov	r1, r0
20020a2c:	4618      	mov	r0, r3
20020a2e:	f009 fe87 	bl	2002a740 <memcpy>
20020a32:	4620      	mov	r0, r4
20020a34:	bd10      	pop	{r4, pc}
	...

20020a38 <read_nand>:
20020a38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020a3c:	2600      	movs	r6, #0
20020a3e:	460f      	mov	r7, r1
20020a40:	4615      	mov	r5, r2
20020a42:	46b0      	mov	r8, r6
20020a44:	4b19      	ldr	r3, [pc, #100]	@ (20020aac <read_nand+0x74>)
20020a46:	f8df a068 	ldr.w	sl, [pc, #104]	@ 20020ab0 <read_nand+0x78>
20020a4a:	681b      	ldr	r3, [r3, #0]
20020a4c:	f8df b064 	ldr.w	fp, [pc, #100]	@ 20020ab4 <read_nand+0x7c>
20020a50:	691b      	ldr	r3, [r3, #16]
20020a52:	4604      	mov	r4, r0
20020a54:	4283      	cmp	r3, r0
20020a56:	b085      	sub	sp, #20
20020a58:	bf98      	it	ls
20020a5a:	1ac4      	subls	r4, r0, r3
20020a5c:	b91d      	cbnz	r5, 20020a66 <read_nand+0x2e>
20020a5e:	4630      	mov	r0, r6
20020a60:	b005      	add	sp, #20
20020a62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20020a66:	f8da 1000 	ldr.w	r1, [sl]
20020a6a:	f8db 0000 	ldr.w	r0, [fp]
20020a6e:	42a9      	cmp	r1, r5
20020a70:	fbb0 fcf1 	udiv	ip, r0, r1
20020a74:	4689      	mov	r9, r1
20020a76:	f101 32ff 	add.w	r2, r1, #4294967295
20020a7a:	bf28      	it	cs
20020a7c:	46a9      	movcs	r9, r5
20020a7e:	fbb4 f1f1 	udiv	r1, r4, r1
20020a82:	f10c 3cff 	add.w	ip, ip, #4294967295
20020a86:	fbb4 f0f0 	udiv	r0, r4, r0
20020a8a:	e9cd 8801 	strd	r8, r8, [sp, #4]
20020a8e:	f8cd 9000 	str.w	r9, [sp]
20020a92:	19bb      	adds	r3, r7, r6
20020a94:	4022      	ands	r2, r4
20020a96:	ea0c 0101 	and.w	r1, ip, r1
20020a9a:	f004 fe3f 	bl	2002571c <bbm_read_page>
20020a9e:	4548      	cmp	r0, r9
20020aa0:	d1dd      	bne.n	20020a5e <read_nand+0x26>
20020aa2:	4406      	add	r6, r0
20020aa4:	1a2d      	subs	r5, r5, r0
20020aa6:	4404      	add	r4, r0
20020aa8:	e7d8      	b.n	20020a5c <read_nand+0x24>
20020aaa:	bf00      	nop
20020aac:	20046cb4 	.word	0x20046cb4
20020ab0:	20042c04 	.word	0x20042c04
20020ab4:	20042c00 	.word	0x20042c00

20020ab8 <read_sdnand>:
20020ab8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020abc:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020ac0:	460d      	mov	r5, r1
20020ac2:	4614      	mov	r4, r2
20020ac4:	4617      	mov	r7, r2
20020ac6:	46b0      	mov	r8, r6
20020ac8:	eb02 0901 	add.w	r9, r2, r1
20020acc:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020ad0:	eba9 0107 	sub.w	r1, r9, r7
20020ad4:	d218      	bcs.n	20020b08 <read_sdnand+0x50>
20020ad6:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020ada:	b197      	cbz	r7, 20020b02 <read_sdnand+0x4a>
20020adc:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020ae0:	f020 0001 	bic.w	r0, r0, #1
20020ae4:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020ae8:	490c      	ldr	r1, [pc, #48]	@ (20020b1c <read_sdnand+0x64>)
20020aea:	4430      	add	r0, r6
20020aec:	f001 f884 	bl	20021bf8 <sd_read_data>
20020af0:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020af4:	f020 0001 	bic.w	r0, r0, #1
20020af8:	463a      	mov	r2, r7
20020afa:	4908      	ldr	r1, [pc, #32]	@ (20020b1c <read_sdnand+0x64>)
20020afc:	4428      	add	r0, r5
20020afe:	f009 fe1f 	bl	2002a740 <memcpy>
20020b02:	4620      	mov	r0, r4
20020b04:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b08:	4640      	mov	r0, r8
20020b0a:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b0e:	f001 f873 	bl	20021bf8 <sd_read_data>
20020b12:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b16:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b1a:	e7d7      	b.n	20020acc <read_sdnand+0x14>
20020b1c:	20046ab0 	.word	0x20046ab0

20020b20 <read_sdemmc>:
20020b20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020b24:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020b28:	460d      	mov	r5, r1
20020b2a:	4614      	mov	r4, r2
20020b2c:	4617      	mov	r7, r2
20020b2e:	46b0      	mov	r8, r6
20020b30:	eb02 0901 	add.w	r9, r2, r1
20020b34:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020b38:	eba9 0107 	sub.w	r1, r9, r7
20020b3c:	d218      	bcs.n	20020b70 <read_sdemmc+0x50>
20020b3e:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020b42:	b197      	cbz	r7, 20020b6a <read_sdemmc+0x4a>
20020b44:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b48:	f020 0001 	bic.w	r0, r0, #1
20020b4c:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b50:	490c      	ldr	r1, [pc, #48]	@ (20020b84 <read_sdemmc+0x64>)
20020b52:	4430      	add	r0, r6
20020b54:	f000 fe3a 	bl	200217cc <emmc_read_data>
20020b58:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b5c:	f020 0001 	bic.w	r0, r0, #1
20020b60:	463a      	mov	r2, r7
20020b62:	4908      	ldr	r1, [pc, #32]	@ (20020b84 <read_sdemmc+0x64>)
20020b64:	4428      	add	r0, r5
20020b66:	f009 fdeb 	bl	2002a740 <memcpy>
20020b6a:	4620      	mov	r0, r4
20020b6c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b70:	4640      	mov	r0, r8
20020b72:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b76:	f000 fe29 	bl	200217cc <emmc_read_data>
20020b7a:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b7e:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b82:	e7d7      	b.n	20020b34 <read_sdemmc+0x14>
20020b84:	20046ab0 	.word	0x20046ab0

20020b88 <port_read_page>:
20020b88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020b8c:	4615      	mov	r5, r2
20020b8e:	f8df 90e8 	ldr.w	r9, [pc, #232]	@ 20020c78 <port_read_page+0xf0>
20020b92:	460e      	mov	r6, r1
20020b94:	f8d9 7000 	ldr.w	r7, [r9]
20020b98:	461a      	mov	r2, r3
20020b9a:	e9dd 3c09 	ldrd	r3, ip, [sp, #36]	@ 0x24
20020b9e:	18e9      	adds	r1, r5, r3
20020ba0:	428f      	cmp	r7, r1
20020ba2:	f8dd e02c 	ldr.w	lr, [sp, #44]	@ 0x2c
20020ba6:	d200      	bcs.n	20020baa <port_read_page+0x22>
20020ba8:	e7fe      	b.n	20020ba8 <port_read_page+0x20>
20020baa:	4930      	ldr	r1, [pc, #192]	@ (20020c6c <port_read_page+0xe4>)
20020bac:	2b00      	cmp	r3, #0
20020bae:	6809      	ldr	r1, [r1, #0]
20020bb0:	dd15      	ble.n	20020bde <port_read_page+0x56>
20020bb2:	f002 041f 	and.w	r4, r2, #31
20020bb6:	441c      	add	r4, r3
20020bb8:	f3bf 8f4f 	dsb	sy
20020bbc:	4690      	mov	r8, r2
20020bbe:	f8df a0bc 	ldr.w	sl, [pc, #188]	@ 20020c7c <port_read_page+0xf4>
20020bc2:	4414      	add	r4, r2
20020bc4:	f8ca 825c 	str.w	r8, [sl, #604]	@ 0x25c
20020bc8:	f108 0820 	add.w	r8, r8, #32
20020bcc:	eba4 0b08 	sub.w	fp, r4, r8
20020bd0:	f1bb 0f00 	cmp.w	fp, #0
20020bd4:	dcf6      	bgt.n	20020bc4 <port_read_page+0x3c>
20020bd6:	f3bf 8f4f 	dsb	sy
20020bda:	f3bf 8f6f 	isb	sy
20020bde:	f8d9 4000 	ldr.w	r4, [r9]
20020be2:	f104 0980 	add.w	r9, r4, #128	@ 0x80
20020be6:	f1b9 0f00 	cmp.w	r9, #0
20020bea:	dd15      	ble.n	20020c18 <port_read_page+0x90>
20020bec:	4c20      	ldr	r4, [pc, #128]	@ (20020c70 <port_read_page+0xe8>)
20020bee:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20020bf0:	f004 081f 	and.w	r8, r4, #31
20020bf4:	44c8      	add	r8, r9
20020bf6:	f3bf 8f4f 	dsb	sy
20020bfa:	f8df a080 	ldr.w	sl, [pc, #128]	@ 20020c7c <port_read_page+0xf4>
20020bfe:	44a0      	add	r8, r4
20020c00:	f8ca 425c 	str.w	r4, [sl, #604]	@ 0x25c
20020c04:	3420      	adds	r4, #32
20020c06:	eba8 0904 	sub.w	r9, r8, r4
20020c0a:	f1b9 0f00 	cmp.w	r9, #0
20020c0e:	dcf7      	bgt.n	20020c00 <port_read_page+0x78>
20020c10:	f3bf 8f4f 	dsb	sy
20020c14:	f3bf 8f6f 	isb	sy
20020c18:	07c4      	lsls	r4, r0, #31
20020c1a:	d51b      	bpl.n	20020c54 <port_read_page+0xcc>
20020c1c:	4c14      	ldr	r4, [pc, #80]	@ (20020c70 <port_read_page+0xe8>)
20020c1e:	f894 806b 	ldrb.w	r8, [r4, #107]	@ 0x6b
20020c22:	f1b8 0f00 	cmp.w	r8, #0
20020c26:	d015      	beq.n	20020c54 <port_read_page+0xcc>
20020c28:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20020c2a:	f504 5880 	add.w	r8, r4, #4096	@ 0x1000
20020c2e:	f004 041f 	and.w	r4, r4, #31
20020c32:	f504 6408 	add.w	r4, r4, #2176	@ 0x880
20020c36:	f3bf 8f4f 	dsb	sy
20020c3a:	f8df 9040 	ldr.w	r9, [pc, #64]	@ 20020c7c <port_read_page+0xf4>
20020c3e:	3c20      	subs	r4, #32
20020c40:	2c00      	cmp	r4, #0
20020c42:	f8c9 825c 	str.w	r8, [r9, #604]	@ 0x25c
20020c46:	f108 0820 	add.w	r8, r8, #32
20020c4a:	dcf8      	bgt.n	20020c3e <port_read_page+0xb6>
20020c4c:	f3bf 8f4f 	dsb	sy
20020c50:	f3bf 8f6f 	isb	sy
20020c54:	fb07 5506 	mla	r5, r7, r6, r5
20020c58:	e9cd ce09 	strd	ip, lr, [sp, #36]	@ 0x24
20020c5c:	fb01 5100 	mla	r1, r1, r0, r5
20020c60:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020c64:	4803      	ldr	r0, [pc, #12]	@ (20020c74 <port_read_page+0xec>)
20020c66:	f002 be17 	b.w	20023898 <HAL_NAND_READ_WITHOOB>
20020c6a:	bf00      	nop
20020c6c:	20042c00 	.word	0x20042c00
20020c70:	20046ecc 	.word	0x20046ecc
20020c74:	20046f10 	.word	0x20046f10
20020c78:	20042c04 	.word	0x20042c04
20020c7c:	e000ed00 	.word	0xe000ed00

20020c80 <bbm_get_bb>:
20020c80:	b410      	push	{r4}
20020c82:	4b1c      	ldr	r3, [pc, #112]	@ (20020cf4 <bbm_get_bb+0x74>)
20020c84:	4601      	mov	r1, r0
20020c86:	6818      	ldr	r0, [r3, #0]
20020c88:	3080      	adds	r0, #128	@ 0x80
20020c8a:	2800      	cmp	r0, #0
20020c8c:	dd12      	ble.n	20020cb4 <bbm_get_bb+0x34>
20020c8e:	4b1a      	ldr	r3, [pc, #104]	@ (20020cf8 <bbm_get_bb+0x78>)
20020c90:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
20020c92:	f003 021f 	and.w	r2, r3, #31
20020c96:	4402      	add	r2, r0
20020c98:	f3bf 8f4f 	dsb	sy
20020c9c:	4c17      	ldr	r4, [pc, #92]	@ (20020cfc <bbm_get_bb+0x7c>)
20020c9e:	441a      	add	r2, r3
20020ca0:	f8c4 325c 	str.w	r3, [r4, #604]	@ 0x25c
20020ca4:	3320      	adds	r3, #32
20020ca6:	1ad0      	subs	r0, r2, r3
20020ca8:	2800      	cmp	r0, #0
20020caa:	dcf9      	bgt.n	20020ca0 <bbm_get_bb+0x20>
20020cac:	f3bf 8f4f 	dsb	sy
20020cb0:	f3bf 8f6f 	isb	sy
20020cb4:	07cb      	lsls	r3, r1, #31
20020cb6:	d518      	bpl.n	20020cea <bbm_get_bb+0x6a>
20020cb8:	4b0f      	ldr	r3, [pc, #60]	@ (20020cf8 <bbm_get_bb+0x78>)
20020cba:	f893 206b 	ldrb.w	r2, [r3, #107]	@ 0x6b
20020cbe:	b1a2      	cbz	r2, 20020cea <bbm_get_bb+0x6a>
20020cc0:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
20020cc2:	f503 5280 	add.w	r2, r3, #4096	@ 0x1000
20020cc6:	f003 031f 	and.w	r3, r3, #31
20020cca:	f503 6308 	add.w	r3, r3, #2176	@ 0x880
20020cce:	f3bf 8f4f 	dsb	sy
20020cd2:	480a      	ldr	r0, [pc, #40]	@ (20020cfc <bbm_get_bb+0x7c>)
20020cd4:	3b20      	subs	r3, #32
20020cd6:	2b00      	cmp	r3, #0
20020cd8:	f8c0 225c 	str.w	r2, [r0, #604]	@ 0x25c
20020cdc:	f102 0220 	add.w	r2, r2, #32
20020ce0:	dcf8      	bgt.n	20020cd4 <bbm_get_bb+0x54>
20020ce2:	f3bf 8f4f 	dsb	sy
20020ce6:	f3bf 8f6f 	isb	sy
20020cea:	4805      	ldr	r0, [pc, #20]	@ (20020d00 <bbm_get_bb+0x80>)
20020cec:	f85d 4b04 	ldr.w	r4, [sp], #4
20020cf0:	f002 bed2 	b.w	20023a98 <HAL_NAND_GET_BADBLK>
20020cf4:	20042c04 	.word	0x20042c04
20020cf8:	20046ecc 	.word	0x20046ecc
20020cfc:	e000ed00 	.word	0xe000ed00
20020d00:	20046f10 	.word	0x20046f10

20020d04 <dfu_flash_init>:
20020d04:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020d08:	b08c      	sub	sp, #48	@ 0x30
20020d0a:	f001 fe67 	bl	200229dc <HAL_HPAON_EnableXT48>
20020d0e:	2101      	movs	r1, #1
20020d10:	2000      	movs	r0, #0
20020d12:	f004 f8ed 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
20020d16:	2101      	movs	r1, #1
20020d18:	200c      	movs	r0, #12
20020d1a:	f004 f8e9 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
20020d1e:	2001      	movs	r0, #1
20020d20:	f003 ffe4 	bl	20024cec <HAL_PMU_EnableDLL>
20020d24:	4f97      	ldr	r7, [pc, #604]	@ (20020f84 <dfu_flash_init+0x280>)
20020d26:	2090      	movs	r0, #144	@ 0x90
20020d28:	f004 fa44 	bl	200251b4 <HAL_RCC_HCPU_ConfigHCLK>
20020d2c:	2000      	movs	r0, #0
20020d2e:	f001 f8bc 	bl	20021eaa <HAL_Delay_us>
20020d32:	683b      	ldr	r3, [r7, #0]
20020d34:	4d94      	ldr	r5, [pc, #592]	@ (20020f88 <dfu_flash_init+0x284>)
20020d36:	3b01      	subs	r3, #1
20020d38:	2b05      	cmp	r3, #5
20020d3a:	f200 8113 	bhi.w	20020f64 <dfu_flash_init+0x260>
20020d3e:	e8df f013 	tbh	[pc, r3, lsl #1]
20020d42:	0006      	.short	0x0006
20020d44:	00780006 	.word	0x00780006
20020d48:	00ee0078 	.word	0x00ee0078
20020d4c:	0102      	.short	0x0102
20020d4e:	488f      	ldr	r0, [pc, #572]	@ (20020f8c <dfu_flash_init+0x288>)
20020d50:	f004 f896 	bl	20024e80 <HAL_RCC_HCPU_EnableDLL2>
20020d54:	4c8e      	ldr	r4, [pc, #568]	@ (20020f90 <dfu_flash_init+0x28c>)
20020d56:	2006      	movs	r0, #6
20020d58:	f000 ffd4 	bl	20021d04 <BSP_SetFlash1DIV>
20020d5c:	ae07      	add	r6, sp, #28
20020d5e:	2102      	movs	r1, #2
20020d60:	2004      	movs	r0, #4
20020d62:	f004 f8c5 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
20020d66:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020d68:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020d6a:	f854 3b04 	ldr.w	r3, [r4], #4
20020d6e:	6033      	str	r3, [r6, #0]
20020d70:	ae03      	add	r6, sp, #12
20020d72:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020d76:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020d7a:	2301      	movs	r3, #1
20020d7c:	4c85      	ldr	r4, [pc, #532]	@ (20020f94 <dfu_flash_init+0x290>)
20020d7e:	f884 3035 	strb.w	r3, [r4, #53]	@ 0x35
20020d82:	2300      	movs	r3, #0
20020d84:	9308      	str	r3, [sp, #32]
20020d86:	683b      	ldr	r3, [r7, #0]
20020d88:	2b01      	cmp	r3, #1
20020d8a:	d14d      	bne.n	20020e28 <dfu_flash_init+0x124>
20020d8c:	f7ff fac0 	bl	20020310 <board_pinmux_mpi1_puya_base>
20020d90:	f000 ffac 	bl	20021cec <BSP_GetFlash1DIV>
20020d94:	4633      	mov	r3, r6
20020d96:	9000      	str	r0, [sp, #0]
20020d98:	4a7f      	ldr	r2, [pc, #508]	@ (20020f98 <dfu_flash_init+0x294>)
20020d9a:	487e      	ldr	r0, [pc, #504]	@ (20020f94 <dfu_flash_init+0x290>)
20020d9c:	a907      	add	r1, sp, #28
20020d9e:	f003 f853 	bl	20023e48 <HAL_FLASH_Init>
20020da2:	683e      	ldr	r6, [r7, #0]
20020da4:	2e01      	cmp	r6, #1
20020da6:	d10d      	bne.n	20020dc4 <dfu_flash_init+0xc0>
20020da8:	6b20      	ldr	r0, [r4, #48]	@ 0x30
20020daa:	4b7c      	ldr	r3, [pc, #496]	@ (20020f9c <dfu_flash_init+0x298>)
20020dac:	1ac3      	subs	r3, r0, r3
20020dae:	4258      	negs	r0, r3
20020db0:	4158      	adcs	r0, r3
20020db2:	f7ff face 	bl	20020352 <board_pinmux_mpi1_puya_ext>
20020db6:	4631      	mov	r1, r6
20020db8:	4876      	ldr	r0, [pc, #472]	@ (20020f94 <dfu_flash_init+0x290>)
20020dba:	f002 fa7a 	bl	200232b2 <HAL_FLASH_SET_QUAL_SPI>
20020dbe:	2302      	movs	r3, #2
20020dc0:	f884 3020 	strb.w	r3, [r4, #32]
20020dc4:	4b76      	ldr	r3, [pc, #472]	@ (20020fa0 <dfu_flash_init+0x29c>)
20020dc6:	4a77      	ldr	r2, [pc, #476]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020dc8:	602b      	str	r3, [r5, #0]
20020dca:	4b77      	ldr	r3, [pc, #476]	@ (20020fa8 <dfu_flash_init+0x2a4>)
20020dcc:	601a      	str	r2, [r3, #0]
20020dce:	4b77      	ldr	r3, [pc, #476]	@ (20020fac <dfu_flash_init+0x2a8>)
20020dd0:	4a77      	ldr	r2, [pc, #476]	@ (20020fb0 <dfu_flash_init+0x2ac>)
20020dd2:	601a      	str	r2, [r3, #0]
20020dd4:	4b77      	ldr	r3, [pc, #476]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020dd6:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20020dd8:	601a      	str	r2, [r3, #0]
20020dda:	4b77      	ldr	r3, [pc, #476]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020ddc:	601c      	str	r4, [r3, #0]
20020dde:	2405      	movs	r4, #5
20020de0:	f8df 81d8 	ldr.w	r8, [pc, #472]	@ 20020fbc <dfu_flash_init+0x2b8>
20020de4:	4e73      	ldr	r6, [pc, #460]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020de6:	f8df 9208 	ldr.w	r9, [pc, #520]	@ 20020ff0 <dfu_flash_init+0x2ec>
20020dea:	682b      	ldr	r3, [r5, #0]
20020dec:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020df0:	4972      	ldr	r1, [pc, #456]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020df2:	6830      	ldr	r0, [r6, #0]
20020df4:	4798      	blx	r3
20020df6:	f8d8 3000 	ldr.w	r3, [r8]
20020dfa:	454b      	cmp	r3, r9
20020dfc:	f040 80b6 	bne.w	20020f6c <dfu_flash_init+0x268>
20020e00:	683b      	ldr	r3, [r7, #0]
20020e02:	2b04      	cmp	r3, #4
20020e04:	f040 8085 	bne.w	20020f12 <dfu_flash_init+0x20e>
20020e08:	f8d8 30a4 	ldr.w	r3, [r8, #164]	@ 0xa4
20020e0c:	1e5a      	subs	r2, r3, #1
20020e0e:	3203      	adds	r2, #3
20020e10:	d87f      	bhi.n	20020f12 <dfu_flash_init+0x20e>
20020e12:	4a6b      	ldr	r2, [pc, #428]	@ (20020fc0 <dfu_flash_init+0x2bc>)
20020e14:	4969      	ldr	r1, [pc, #420]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020e16:	6013      	str	r3, [r2, #0]
20020e18:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020e1c:	682b      	ldr	r3, [r5, #0]
20020e1e:	6830      	ldr	r0, [r6, #0]
20020e20:	b00c      	add	sp, #48	@ 0x30
20020e22:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020e26:	4718      	bx	r3
20020e28:	f7ff fac2 	bl	200203b0 <board_pinmux_mpi1_gd>
20020e2c:	2302      	movs	r3, #2
20020e2e:	9308      	str	r3, [sp, #32]
20020e30:	e7ae      	b.n	20020d90 <dfu_flash_init+0x8c>
20020e32:	4856      	ldr	r0, [pc, #344]	@ (20020f8c <dfu_flash_init+0x288>)
20020e34:	f004 f824 	bl	20024e80 <HAL_RCC_HCPU_EnableDLL2>
20020e38:	4c62      	ldr	r4, [pc, #392]	@ (20020fc4 <dfu_flash_init+0x2c0>)
20020e3a:	2006      	movs	r0, #6
20020e3c:	f000 ff68 	bl	20021d10 <BSP_SetFlash2DIV>
20020e40:	ae07      	add	r6, sp, #28
20020e42:	2102      	movs	r1, #2
20020e44:	2006      	movs	r0, #6
20020e46:	f004 f853 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
20020e4a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020e4c:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020e4e:	f854 3b04 	ldr.w	r3, [r4], #4
20020e52:	f8d7 8000 	ldr.w	r8, [r7]
20020e56:	6033      	str	r3, [r6, #0]
20020e58:	ae03      	add	r6, sp, #12
20020e5a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020e5e:	f1b8 0903 	subs.w	r9, r8, #3
20020e62:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020e66:	bf18      	it	ne
20020e68:	f04f 0901 	movne.w	r9, #1
20020e6c:	f7ff fae3 	bl	20020436 <board_pinmux_mpi2>
20020e70:	2302      	movs	r3, #2
20020e72:	f1b8 0f03 	cmp.w	r8, #3
20020e76:	4c47      	ldr	r4, [pc, #284]	@ (20020f94 <dfu_flash_init+0x290>)
20020e78:	9308      	str	r3, [sp, #32]
20020e7a:	d04d      	beq.n	20020f18 <dfu_flash_init+0x214>
20020e7c:	4b52      	ldr	r3, [pc, #328]	@ (20020fc8 <dfu_flash_init+0x2c4>)
20020e7e:	602b      	str	r3, [r5, #0]
20020e80:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20020e82:	f103 43a0 	add.w	r3, r3, #1342177280	@ 0x50000000
20020e86:	9309      	str	r3, [sp, #36]	@ 0x24
20020e88:	2301      	movs	r3, #1
20020e8a:	930b      	str	r3, [sp, #44]	@ 0x2c
20020e8c:	4b4f      	ldr	r3, [pc, #316]	@ (20020fcc <dfu_flash_init+0x2c8>)
20020e8e:	6623      	str	r3, [r4, #96]	@ 0x60
20020e90:	f04f 0a01 	mov.w	sl, #1
20020e94:	2000      	movs	r0, #0
20020e96:	f001 f808 	bl	20021eaa <HAL_Delay_us>
20020e9a:	f884 a079 	strb.w	sl, [r4, #121]	@ 0x79
20020e9e:	f884 9078 	strb.w	r9, [r4, #120]	@ 0x78
20020ea2:	f000 ff29 	bl	20021cf8 <BSP_GetFlash2DIV>
20020ea6:	4633      	mov	r3, r6
20020ea8:	9000      	str	r0, [sp, #0]
20020eaa:	4a49      	ldr	r2, [pc, #292]	@ (20020fd0 <dfu_flash_init+0x2cc>)
20020eac:	4849      	ldr	r0, [pc, #292]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eae:	a907      	add	r1, sp, #28
20020eb0:	f002 ffca 	bl	20023e48 <HAL_FLASH_Init>
20020eb4:	4e47      	ldr	r6, [pc, #284]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eb6:	bb18      	cbnz	r0, 20020f00 <dfu_flash_init+0x1fc>
20020eb8:	f1b8 0f03 	cmp.w	r8, #3
20020ebc:	d020      	beq.n	20020f00 <dfu_flash_init+0x1fc>
20020ebe:	4630      	mov	r0, r6
20020ec0:	f002 fcde 	bl	20023880 <HAL_NAND_PAGE_SIZE>
20020ec4:	f8df 90f8 	ldr.w	r9, [pc, #248]	@ 20020fc0 <dfu_flash_init+0x2bc>
20020ec8:	f8df 8128 	ldr.w	r8, [pc, #296]	@ 20020ff4 <dfu_flash_init+0x2f0>
20020ecc:	f8c9 0000 	str.w	r0, [r9]
20020ed0:	4630      	mov	r0, r6
20020ed2:	f002 fdd5 	bl	20023a80 <HAL_NAND_BLOCK_SIZE>
20020ed6:	4651      	mov	r1, sl
20020ed8:	f8c8 0000 	str.w	r0, [r8]
20020edc:	4630      	mov	r0, r6
20020ede:	f884 a06a 	strb.w	sl, [r4, #106]	@ 0x6a
20020ee2:	f002 fba6 	bl	20023632 <HAL_NAND_CONF_ECC>
20020ee6:	f8d9 0000 	ldr.w	r0, [r9]
20020eea:	f004 feff 	bl	20025cec <bbm_set_page_size>
20020eee:	f8d8 0000 	ldr.w	r0, [r8]
20020ef2:	f004 ff01 	bl	20025cf8 <bbm_set_blk_size>
20020ef6:	4938      	ldr	r1, [pc, #224]	@ (20020fd8 <dfu_flash_init+0x2d4>)
20020ef8:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
20020efc:	f004 fd98 	bl	20025a30 <sif_bbm_init>
20020f00:	4b2c      	ldr	r3, [pc, #176]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020f02:	6fe2      	ldr	r2, [r4, #124]	@ 0x7c
20020f04:	601a      	str	r2, [r3, #0]
20020f06:	4b2c      	ldr	r3, [pc, #176]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f08:	601e      	str	r6, [r3, #0]
20020f0a:	682b      	ldr	r3, [r5, #0]
20020f0c:	2b00      	cmp	r3, #0
20020f0e:	f47f af66 	bne.w	20020dde <dfu_flash_init+0xda>
20020f12:	b00c      	add	sp, #48	@ 0x30
20020f14:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20020f18:	4b21      	ldr	r3, [pc, #132]	@ (20020fa0 <dfu_flash_init+0x29c>)
20020f1a:	602b      	str	r3, [r5, #0]
20020f1c:	e7b8      	b.n	20020e90 <dfu_flash_init+0x18c>
20020f1e:	481b      	ldr	r0, [pc, #108]	@ (20020f8c <dfu_flash_init+0x288>)
20020f20:	f003 ffae 	bl	20024e80 <HAL_RCC_HCPU_EnableDLL2>
20020f24:	f7ff faae 	bl	20020484 <board_pinmux_sd>
20020f28:	f000 fd3a 	bl	200219a0 <sdmmc1_sdnand>
20020f2c:	2801      	cmp	r0, #1
20020f2e:	d001      	beq.n	20020f34 <dfu_flash_init+0x230>
20020f30:	f7ff f9be 	bl	200202b0 <boot_error>
20020f34:	4b29      	ldr	r3, [pc, #164]	@ (20020fdc <dfu_flash_init+0x2d8>)
20020f36:	4a2a      	ldr	r2, [pc, #168]	@ (20020fe0 <dfu_flash_init+0x2dc>)
20020f38:	602b      	str	r3, [r5, #0]
20020f3a:	4b1e      	ldr	r3, [pc, #120]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020f3c:	601a      	str	r2, [r3, #0]
20020f3e:	2200      	movs	r2, #0
20020f40:	4b1d      	ldr	r3, [pc, #116]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f42:	601a      	str	r2, [r3, #0]
20020f44:	e74b      	b.n	20020dde <dfu_flash_init+0xda>
20020f46:	4811      	ldr	r0, [pc, #68]	@ (20020f8c <dfu_flash_init+0x288>)
20020f48:	f003 ff9a 	bl	20024e80 <HAL_RCC_HCPU_EnableDLL2>
20020f4c:	f7ff fa9a 	bl	20020484 <board_pinmux_sd>
20020f50:	f000 fb16 	bl	20021580 <sdio_emmc_init>
20020f54:	4b23      	ldr	r3, [pc, #140]	@ (20020fe4 <dfu_flash_init+0x2e0>)
20020f56:	6018      	str	r0, [r3, #0]
20020f58:	b110      	cbz	r0, 20020f60 <dfu_flash_init+0x25c>
20020f5a:	b2c0      	uxtb	r0, r0
20020f5c:	f7ff f9a8 	bl	200202b0 <boot_error>
20020f60:	4b21      	ldr	r3, [pc, #132]	@ (20020fe8 <dfu_flash_init+0x2e4>)
20020f62:	e7e8      	b.n	20020f36 <dfu_flash_init+0x232>
20020f64:	2053      	movs	r0, #83	@ 0x53
20020f66:	f7ff f9a3 	bl	200202b0 <boot_error>
20020f6a:	e7ce      	b.n	20020f0a <dfu_flash_init+0x206>
20020f6c:	481f      	ldr	r0, [pc, #124]	@ (20020fec <dfu_flash_init+0x2e8>)
20020f6e:	f000 ff9c 	bl	20021eaa <HAL_Delay_us>
20020f72:	3c01      	subs	r4, #1
20020f74:	f47f af39 	bne.w	20020dea <dfu_flash_init+0xe6>
20020f78:	2043      	movs	r0, #67	@ 0x43
20020f7a:	b00c      	add	sp, #48	@ 0x30
20020f7c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020f80:	f7ff b996 	b.w	200202b0 <boot_error>
20020f84:	20049ed0 	.word	0x20049ed0
20020f88:	20046cc0 	.word	0x20046cc0
20020f8c:	112a8800 	.word	0x112a8800
20020f90:	2002a810 	.word	0x2002a810
20020f94:	20046ecc 	.word	0x20046ecc
20020f98:	20046cc4 	.word	0x20046cc4
20020f9c:	00176085 	.word	0x00176085
20020fa0:	20020a25 	.word	0x20020a25
20020fa4:	20020999 	.word	0x20020999
20020fa8:	20046cbc 	.word	0x20046cbc
20020fac:	20046cb8 	.word	0x20046cb8
20020fb0:	2002093d 	.word	0x2002093d
20020fb4:	20046cb0 	.word	0x20046cb0
20020fb8:	20046cb4 	.word	0x20046cb4
20020fbc:	200472c0 	.word	0x200472c0
20020fc0:	20042c04 	.word	0x20042c04
20020fc4:	2002a834 	.word	0x2002a834
20020fc8:	20020a39 	.word	0x20020a39
20020fcc:	20045a30 	.word	0x20045a30
20020fd0:	20046d2c 	.word	0x20046d2c
20020fd4:	20046f10 	.word	0x20046f10
20020fd8:	200449b0 	.word	0x200449b0
20020fdc:	20020ab9 	.word	0x20020ab9
20020fe0:	62001000 	.word	0x62001000
20020fe4:	200449ac 	.word	0x200449ac
20020fe8:	20020b21 	.word	0x20020b21
20020fec:	000f4240 	.word	0x000f4240
20020ff0:	53454346 	.word	0x53454346
20020ff4:	20042c00 	.word	0x20042c00

20020ff8 <sifli_hw_efuse_read_bank>:
20020ff8:	2803      	cmp	r0, #3
20020ffa:	b508      	push	{r3, lr}
20020ffc:	d80c      	bhi.n	20021018 <sifli_hw_efuse_read_bank+0x20>
20020ffe:	0200      	lsls	r0, r0, #8
20021000:	2220      	movs	r2, #32
20021002:	4907      	ldr	r1, [pc, #28]	@ (20021020 <sifli_hw_efuse_read_bank+0x28>)
20021004:	f400 407f 	and.w	r0, r0, #65280	@ 0xff00
20021008:	f001 fba0 	bl	2002274c <HAL_EFUSE_Read>
2002100c:	2800      	cmp	r0, #0
2002100e:	bf0c      	ite	eq
20021010:	f06f 0001 	mvneq.w	r0, #1
20021014:	2000      	movne	r0, #0
20021016:	bd08      	pop	{r3, pc}
20021018:	f04f 30ff 	mov.w	r0, #4294967295
2002101c:	e7fb      	b.n	20021016 <sifli_hw_efuse_read_bank+0x1e>
2002101e:	bf00      	nop
20021020:	20047240 	.word	0x20047240

20021024 <sifli_hw_efuse_read>:
20021024:	b513      	push	{r0, r1, r4, lr}
20021026:	3801      	subs	r0, #1
20021028:	460c      	mov	r4, r1
2002102a:	2803      	cmp	r0, #3
2002102c:	d81e      	bhi.n	2002106c <sifli_hw_efuse_read+0x48>
2002102e:	e8df f000 	tbb	[pc, r0]
20021032:	0c02      	.short	0x0c02
20021034:	1009      	.short	0x1009
20021036:	2210      	movs	r2, #16
20021038:	2000      	movs	r0, #0
2002103a:	b002      	add	sp, #8
2002103c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20021040:	f001 bb84 	b.w	2002274c <HAL_EFUSE_Read>
20021044:	2208      	movs	r2, #8
20021046:	2080      	movs	r0, #128	@ 0x80
20021048:	e7f7      	b.n	2002103a <sifli_hw_efuse_read+0x16>
2002104a:	2220      	movs	r2, #32
2002104c:	f44f 7040 	mov.w	r0, #768	@ 0x300
20021050:	e7f3      	b.n	2002103a <sifli_hw_efuse_read+0x16>
20021052:	2204      	movs	r2, #4
20021054:	20c0      	movs	r0, #192	@ 0xc0
20021056:	eb0d 0102 	add.w	r1, sp, r2
2002105a:	f001 fb77 	bl	2002274c <HAL_EFUSE_Read>
2002105e:	2804      	cmp	r0, #4
20021060:	d104      	bne.n	2002106c <sifli_hw_efuse_read+0x48>
20021062:	2001      	movs	r0, #1
20021064:	9b01      	ldr	r3, [sp, #4]
20021066:	7023      	strb	r3, [r4, #0]
20021068:	b002      	add	sp, #8
2002106a:	bd10      	pop	{r4, pc}
2002106c:	2000      	movs	r0, #0
2002106e:	e7fb      	b.n	20021068 <sifli_hw_efuse_read+0x44>

20021070 <sifli_hw_init_xip_key>:
20021070:	b538      	push	{r3, r4, r5, lr}
20021072:	4605      	mov	r5, r0
20021074:	4c0f      	ldr	r4, [pc, #60]	@ (200210b4 <sifli_hw_init_xip_key+0x44>)
20021076:	2210      	movs	r2, #16
20021078:	68e3      	ldr	r3, [r4, #12]
2002107a:	490f      	ldr	r1, [pc, #60]	@ (200210b8 <sifli_hw_init_xip_key+0x48>)
2002107c:	f043 0301 	orr.w	r3, r3, #1
20021080:	60e3      	str	r3, [r4, #12]
20021082:	2001      	movs	r0, #1
20021084:	f7ff ffce 	bl	20021024 <sifli_hw_efuse_read>
20021088:	2220      	movs	r2, #32
2002108a:	2100      	movs	r1, #0
2002108c:	480b      	ldr	r0, [pc, #44]	@ (200210bc <sifli_hw_init_xip_key+0x4c>)
2002108e:	f009 fb3d 	bl	2002a70c <memset>
20021092:	2302      	movs	r3, #2
20021094:	2120      	movs	r1, #32
20021096:	4a08      	ldr	r2, [pc, #32]	@ (200210b8 <sifli_hw_init_xip_key+0x48>)
20021098:	2000      	movs	r0, #0
2002109a:	f000 ff63 	bl	20021f64 <HAL_AES_init>
2002109e:	2320      	movs	r3, #32
200210a0:	4629      	mov	r1, r5
200210a2:	2000      	movs	r0, #0
200210a4:	4a05      	ldr	r2, [pc, #20]	@ (200210bc <sifli_hw_init_xip_key+0x4c>)
200210a6:	f000 ffa1 	bl	20021fec <HAL_AES_run>
200210aa:	68e3      	ldr	r3, [r4, #12]
200210ac:	f023 0301 	bic.w	r3, r3, #1
200210b0:	60e3      	str	r3, [r4, #12]
200210b2:	bd38      	pop	{r3, r4, r5, pc}
200210b4:	5000b000 	.word	0x5000b000
200210b8:	20047270 	.word	0x20047270
200210bc:	20047220 	.word	0x20047220

200210c0 <sifli_hw_dec_key>:
200210c0:	b538      	push	{r3, r4, r5, lr}
200210c2:	4604      	mov	r4, r0
200210c4:	460d      	mov	r5, r1
200210c6:	2210      	movs	r2, #16
200210c8:	4908      	ldr	r1, [pc, #32]	@ (200210ec <sifli_hw_dec_key+0x2c>)
200210ca:	2001      	movs	r0, #1
200210cc:	f7ff ffaa 	bl	20021024 <sifli_hw_efuse_read>
200210d0:	2302      	movs	r3, #2
200210d2:	2120      	movs	r1, #32
200210d4:	4a05      	ldr	r2, [pc, #20]	@ (200210ec <sifli_hw_dec_key+0x2c>)
200210d6:	2000      	movs	r0, #0
200210d8:	f000 ff44 	bl	20021f64 <HAL_AES_init>
200210dc:	2320      	movs	r3, #32
200210de:	462a      	mov	r2, r5
200210e0:	4621      	mov	r1, r4
200210e2:	2000      	movs	r0, #0
200210e4:	f000 ff82 	bl	20021fec <HAL_AES_run>
200210e8:	2000      	movs	r0, #0
200210ea:	bd38      	pop	{r3, r4, r5, pc}
200210ec:	20047270 	.word	0x20047270

200210f0 <dfu_get_counter>:
200210f0:	b538      	push	{r3, r4, r5, lr}
200210f2:	4d0a      	ldr	r5, [pc, #40]	@ (2002111c <dfu_get_counter+0x2c>)
200210f4:	4604      	mov	r4, r0
200210f6:	2208      	movs	r2, #8
200210f8:	4629      	mov	r1, r5
200210fa:	2003      	movs	r0, #3
200210fc:	f7ff ff92 	bl	20021024 <sifli_hw_efuse_read>
20021100:	2300      	movs	r3, #0
20021102:	e9c5 3302 	strd	r3, r3, [r5, #8]
20021106:	230f      	movs	r3, #15
20021108:	0924      	lsrs	r4, r4, #4
2002110a:	b12c      	cbz	r4, 20021118 <dfu_get_counter+0x28>
2002110c:	54ec      	strb	r4, [r5, r3]
2002110e:	3b01      	subs	r3, #1
20021110:	2b0b      	cmp	r3, #11
20021112:	ea4f 2414 	mov.w	r4, r4, lsr #8
20021116:	d1f8      	bne.n	2002110a <dfu_get_counter+0x1a>
20021118:	4800      	ldr	r0, [pc, #0]	@ (2002111c <dfu_get_counter+0x2c>)
2002111a:	bd38      	pop	{r3, r4, r5, pc}
2002111c:	20047260 	.word	0x20047260

20021120 <sifli_hw_dec>:
20021120:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021124:	4680      	mov	r8, r0
20021126:	4689      	mov	r9, r1
20021128:	4692      	mov	sl, r2
2002112a:	2100      	movs	r1, #0
2002112c:	f44f 7200 	mov.w	r2, #512	@ 0x200
20021130:	4814      	ldr	r0, [pc, #80]	@ (20021184 <sifli_hw_dec+0x64>)
20021132:	461e      	mov	r6, r3
20021134:	9f08      	ldr	r7, [sp, #32]
20021136:	2400      	movs	r4, #0
20021138:	f009 fae8 	bl	2002a70c <memset>
2002113c:	42a6      	cmp	r6, r4
2002113e:	d802      	bhi.n	20021146 <sifli_hw_dec+0x26>
20021140:	4620      	mov	r0, r4
20021142:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021146:	1b35      	subs	r5, r6, r4
20021148:	f5b5 7f00 	cmp.w	r5, #512	@ 0x200
2002114c:	bf28      	it	cs
2002114e:	f44f 7500 	movcs.w	r5, #512	@ 0x200
20021152:	eb09 0104 	add.w	r1, r9, r4
20021156:	462a      	mov	r2, r5
20021158:	480a      	ldr	r0, [pc, #40]	@ (20021184 <sifli_hw_dec+0x64>)
2002115a:	f009 faf1 	bl	2002a740 <memcpy>
2002115e:	19e0      	adds	r0, r4, r7
20021160:	f7ff ffc6 	bl	200210f0 <dfu_get_counter>
20021164:	2301      	movs	r3, #1
20021166:	4602      	mov	r2, r0
20021168:	2120      	movs	r1, #32
2002116a:	4640      	mov	r0, r8
2002116c:	f000 fefa 	bl	20021f64 <HAL_AES_init>
20021170:	eb0a 0204 	add.w	r2, sl, r4
20021174:	462b      	mov	r3, r5
20021176:	2000      	movs	r0, #0
20021178:	4902      	ldr	r1, [pc, #8]	@ (20021184 <sifli_hw_dec+0x64>)
2002117a:	f000 ff37 	bl	20021fec <HAL_AES_run>
2002117e:	442c      	add	r4, r5
20021180:	e7dc      	b.n	2002113c <sifli_hw_dec+0x1c>
20021182:	bf00      	nop
20021184:	20047020 	.word	0x20047020

20021188 <secboot_verify_before_run>:
20021188:	b5f0      	push	{r4, r5, r6, r7, lr}
2002118a:	2700      	movs	r7, #0
2002118c:	b08b      	sub	sp, #44	@ 0x2c
2002118e:	4606      	mov	r6, r0
20021190:	460c      	mov	r4, r1
20021192:	2208      	movs	r2, #8
20021194:	4669      	mov	r1, sp
20021196:	2003      	movs	r0, #3
20021198:	e9cd 7700 	strd	r7, r7, [sp]
2002119c:	f7ff ff42 	bl	20021024 <sifli_hw_efuse_read>
200211a0:	2808      	cmp	r0, #8
200211a2:	4605      	mov	r5, r0
200211a4:	d008      	beq.n	200211b8 <secboot_verify_before_run+0x30>
200211a6:	2211      	movs	r2, #17
200211a8:	4910      	ldr	r1, [pc, #64]	@ (200211ec <secboot_verify_before_run+0x64>)
200211aa:	4811      	ldr	r0, [pc, #68]	@ (200211f0 <secboot_verify_before_run+0x68>)
200211ac:	f7ff f874 	bl	20020298 <boot_uart_tx>
200211b0:	f04f 30ff 	mov.w	r0, #4294967295
200211b4:	b00b      	add	sp, #44	@ 0x2c
200211b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200211b8:	f44f 7193 	mov.w	r1, #294	@ 0x126
200211bc:	480d      	ldr	r0, [pc, #52]	@ (200211f4 <secboot_verify_before_run+0x6c>)
200211be:	aa02      	add	r2, sp, #8
200211c0:	463b      	mov	r3, r7
200211c2:	f005 fa5d 	bl	20026680 <mbedtls_sha256>
200211c6:	462a      	mov	r2, r5
200211c8:	4669      	mov	r1, sp
200211ca:	a802      	add	r0, sp, #8
200211cc:	f009 fa8e 	bl	2002a6ec <memcmp>
200211d0:	2800      	cmp	r0, #0
200211d2:	d1e8      	bne.n	200211a6 <secboot_verify_before_run+0x1e>
200211d4:	4620      	mov	r0, r4
200211d6:	4632      	mov	r2, r6
200211d8:	f850 3b28 	ldr.w	r3, [r0], #40
200211dc:	4905      	ldr	r1, [pc, #20]	@ (200211f4 <secboot_verify_before_run+0x6c>)
200211de:	f000 fd51 	bl	20021c84 <sifli_img_sig_hash_verify>
200211e2:	2800      	cmp	r0, #0
200211e4:	d0e6      	beq.n	200211b4 <secboot_verify_before_run+0x2c>
200211e6:	220e      	movs	r2, #14
200211e8:	4903      	ldr	r1, [pc, #12]	@ (200211f8 <secboot_verify_before_run+0x70>)
200211ea:	e7de      	b.n	200211aa <secboot_verify_before_run+0x22>
200211ec:	2002a858 	.word	0x2002a858
200211f0:	50084000 	.word	0x50084000
200211f4:	200473c4 	.word	0x200473c4
200211f8:	2002a86a 	.word	0x2002a86a

200211fc <boot_ram>:
200211fc:	4b05      	ldr	r3, [pc, #20]	@ (20021214 <boot_ram+0x18>)
200211fe:	b082      	sub	sp, #8
20021200:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
20021202:	9301      	str	r3, [sp, #4]
20021204:	9b01      	ldr	r3, [sp, #4]
20021206:	b113      	cbz	r3, 2002120e <boot_ram+0x12>
20021208:	9b01      	ldr	r3, [sp, #4]
2002120a:	b002      	add	sp, #8
2002120c:	4718      	bx	r3
2002120e:	b002      	add	sp, #8
20021210:	4770      	bx	lr
20021212:	bf00      	nop
20021214:	500c0000 	.word	0x500c0000

20021218 <is_addr_in_nor>:
20021218:	4b09      	ldr	r3, [pc, #36]	@ (20021240 <is_addr_in_nor+0x28>)
2002121a:	4602      	mov	r2, r0
2002121c:	681b      	ldr	r3, [r3, #0]
2002121e:	b163      	cbz	r3, 2002123a <is_addr_in_nor+0x22>
20021220:	f893 0023 	ldrb.w	r0, [r3, #35]	@ 0x23
20021224:	b948      	cbnz	r0, 2002123a <is_addr_in_nor+0x22>
20021226:	6919      	ldr	r1, [r3, #16]
20021228:	4291      	cmp	r1, r2
2002122a:	d807      	bhi.n	2002123c <is_addr_in_nor+0x24>
2002122c:	695b      	ldr	r3, [r3, #20]
2002122e:	4419      	add	r1, r3
20021230:	4291      	cmp	r1, r2
20021232:	bf94      	ite	ls
20021234:	2000      	movls	r0, #0
20021236:	2001      	movhi	r0, #1
20021238:	4770      	bx	lr
2002123a:	2000      	movs	r0, #0
2002123c:	4770      	bx	lr
2002123e:	bf00      	nop
20021240:	20046cb4 	.word	0x20046cb4

20021244 <dfu_boot_img_in_flash>:
20021244:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20021248:	f8df 815c 	ldr.w	r8, [pc, #348]	@ 200213a8 <dfu_boot_img_in_flash+0x164>
2002124c:	1e86      	subs	r6, r0, #2
2002124e:	eb08 1300 	add.w	r3, r8, r0, lsl #4
20021252:	3006      	adds	r0, #6
20021254:	eb08 2740 	add.w	r7, r8, r0, lsl #9
20021258:	f8d3 9004 	ldr.w	r9, [r3, #4]
2002125c:	68dd      	ldr	r5, [r3, #12]
2002125e:	88fb      	ldrh	r3, [r7, #6]
20021260:	b085      	sub	sp, #20
20021262:	07db      	lsls	r3, r3, #31
20021264:	ea4f 2a40 	mov.w	sl, r0, lsl #9
20021268:	d57d      	bpl.n	20021366 <dfu_boot_img_in_flash+0x122>
2002126a:	2e07      	cmp	r6, #7
2002126c:	f300 8086 	bgt.w	2002137c <dfu_boot_img_in_flash+0x138>
20021270:	2003      	movs	r0, #3
20021272:	f7ff fec1 	bl	20020ff8 <sifli_hw_efuse_read_bank>
20021276:	4272      	negs	r2, r6
20021278:	f002 0203 	and.w	r2, r2, #3
2002127c:	f006 0303 	and.w	r3, r6, #3
20021280:	bf58      	it	pl
20021282:	4253      	negpl	r3, r2
20021284:	2b02      	cmp	r3, #2
20021286:	d879      	bhi.n	2002137c <dfu_boot_img_in_flash+0x138>
20021288:	4628      	mov	r0, r5
2002128a:	f7ff ffc5 	bl	20021218 <is_addr_in_nor>
2002128e:	f241 0308 	movw	r3, #4104	@ 0x1008
20021292:	4683      	mov	fp, r0
20021294:	0274      	lsls	r4, r6, #9
20021296:	f8df c114 	ldr.w	ip, [pc, #276]	@ 200213ac <dfu_boot_img_in_flash+0x168>
2002129a:	4444      	add	r4, r8
2002129c:	441c      	add	r4, r3
2002129e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
200212a0:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
200212a4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
200212a8:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
200212ac:	f1bb 0f00 	cmp.w	fp, #0
200212b0:	d042      	beq.n	20021338 <dfu_boot_img_in_flash+0xf4>
200212b2:	f1ac 0010 	sub.w	r0, ip, #16
200212b6:	f7ff fedb 	bl	20021070 <sifli_hw_init_xip_key>
200212ba:	f858 200a 	ldr.w	r2, [r8, sl]
200212be:	4c37      	ldr	r4, [pc, #220]	@ (2002139c <dfu_boot_img_in_flash+0x158>)
200212c0:	442a      	add	r2, r5
200212c2:	2000      	movs	r0, #0
200212c4:	f8d4 b000 	ldr.w	fp, [r4]
200212c8:	9203      	str	r2, [sp, #12]
200212ca:	f7ff ff11 	bl	200210f0 <dfu_get_counter>
200212ce:	4629      	mov	r1, r5
200212d0:	4603      	mov	r3, r0
200212d2:	9a03      	ldr	r2, [sp, #12]
200212d4:	4658      	mov	r0, fp
200212d6:	f002 f95a 	bl	2002358e <HAL_FLASH_NONCE_CFG>
200212da:	4629      	mov	r1, r5
200212dc:	6820      	ldr	r0, [r4, #0]
200212de:	f858 200a 	ldr.w	r2, [r8, sl]
200212e2:	eba9 0305 	sub.w	r3, r9, r5
200212e6:	f002 f941 	bl	2002356c <HAL_FLASH_ALIAS_CFG>
200212ea:	2101      	movs	r1, #1
200212ec:	6820      	ldr	r0, [r4, #0]
200212ee:	f002 f966 	bl	200235be <HAL_FLASH_AES_CFG>
200212f2:	4639      	mov	r1, r7
200212f4:	4628      	mov	r0, r5
200212f6:	f7ff ff47 	bl	20021188 <secboot_verify_before_run>
200212fa:	b918      	cbnz	r0, 20021304 <dfu_boot_img_in_flash+0xc0>
200212fc:	f8d5 d000 	ldr.w	sp, [r5]
20021300:	f8d5 f004 	ldr.w	pc, [r5, #4]
20021304:	4628      	mov	r0, r5
20021306:	f7ff ff87 	bl	20021218 <is_addr_in_nor>
2002130a:	2800      	cmp	r0, #0
2002130c:	d039      	beq.n	20021382 <dfu_boot_img_in_flash+0x13e>
2002130e:	4823      	ldr	r0, [pc, #140]	@ (2002139c <dfu_boot_img_in_flash+0x158>)
20021310:	3608      	adds	r6, #8
20021312:	0276      	lsls	r6, r6, #9
20021314:	4629      	mov	r1, r5
20021316:	f858 2006 	ldr.w	r2, [r8, r6]
2002131a:	6800      	ldr	r0, [r0, #0]
2002131c:	eba9 0305 	sub.w	r3, r9, r5
20021320:	f002 f924 	bl	2002356c <HAL_FLASH_ALIAS_CFG>
20021324:	4639      	mov	r1, r7
20021326:	4628      	mov	r0, r5
20021328:	f7ff ff2e 	bl	20021188 <secboot_verify_before_run>
2002132c:	bb30      	cbnz	r0, 2002137c <dfu_boot_img_in_flash+0x138>
2002132e:	f8d5 d000 	ldr.w	sp, [r5]
20021332:	f8d5 f004 	ldr.w	pc, [r5, #4]
20021336:	e021      	b.n	2002137c <dfu_boot_img_in_flash+0x138>
20021338:	f1ac 0010 	sub.w	r0, ip, #16
2002133c:	2220      	movs	r2, #32
2002133e:	4918      	ldr	r1, [pc, #96]	@ (200213a0 <dfu_boot_img_in_flash+0x15c>)
20021340:	f7ff febe 	bl	200210c0 <sifli_hw_dec_key>
20021344:	4b17      	ldr	r3, [pc, #92]	@ (200213a4 <dfu_boot_img_in_flash+0x160>)
20021346:	4629      	mov	r1, r5
20021348:	f858 200a 	ldr.w	r2, [r8, sl]
2002134c:	4648      	mov	r0, r9
2002134e:	681b      	ldr	r3, [r3, #0]
20021350:	4798      	blx	r3
20021352:	f8cd b000 	str.w	fp, [sp]
20021356:	462a      	mov	r2, r5
20021358:	4629      	mov	r1, r5
2002135a:	f858 300a 	ldr.w	r3, [r8, sl]
2002135e:	4810      	ldr	r0, [pc, #64]	@ (200213a0 <dfu_boot_img_in_flash+0x15c>)
20021360:	f7ff fede 	bl	20021120 <sifli_hw_dec>
20021364:	e7c5      	b.n	200212f2 <dfu_boot_img_in_flash+0xae>
20021366:	2e07      	cmp	r6, #7
20021368:	dc08      	bgt.n	2002137c <dfu_boot_img_in_flash+0x138>
2002136a:	4272      	negs	r2, r6
2002136c:	f002 0203 	and.w	r2, r2, #3
20021370:	f006 0303 	and.w	r3, r6, #3
20021374:	bf58      	it	pl
20021376:	4253      	negpl	r3, r2
20021378:	2b02      	cmp	r3, #2
2002137a:	d9c3      	bls.n	20021304 <dfu_boot_img_in_flash+0xc0>
2002137c:	b005      	add	sp, #20
2002137e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20021382:	45a9      	cmp	r9, r5
20021384:	d0ce      	beq.n	20021324 <dfu_boot_img_in_flash+0xe0>
20021386:	4b07      	ldr	r3, [pc, #28]	@ (200213a4 <dfu_boot_img_in_flash+0x160>)
20021388:	3608      	adds	r6, #8
2002138a:	0276      	lsls	r6, r6, #9
2002138c:	4629      	mov	r1, r5
2002138e:	4648      	mov	r0, r9
20021390:	681b      	ldr	r3, [r3, #0]
20021392:	f858 2006 	ldr.w	r2, [r8, r6]
20021396:	4798      	blx	r3
20021398:	e7c4      	b.n	20021324 <dfu_boot_img_in_flash+0xe0>
2002139a:	bf00      	nop
2002139c:	20046cb4 	.word	0x20046cb4
200213a0:	20047280 	.word	0x20047280
200213a4:	20046cc0 	.word	0x20046cc0
200213a8:	200472c0 	.word	0x200472c0
200213ac:	200472a0 	.word	0x200472a0

200213b0 <try_boot_from_slot.isra.0>:
200213b0:	b538      	push	{r3, r4, r5, lr}
200213b2:	4c16      	ldr	r4, [pc, #88]	@ (2002140c <try_boot_from_slot.isra.0+0x5c>)
200213b4:	4b16      	ldr	r3, [pc, #88]	@ (20021410 <try_boot_from_slot.isra.0+0x60>)
200213b6:	1e05      	subs	r5, r0, #0
200213b8:	f642 4210 	movw	r2, #11280	@ 0x2c10
200213bc:	681b      	ldr	r3, [r3, #0]
200213be:	4815      	ldr	r0, [pc, #84]	@ (20021414 <try_boot_from_slot.isra.0+0x64>)
200213c0:	4621      	mov	r1, r4
200213c2:	bf08      	it	eq
200213c4:	f04f 5090 	moveq.w	r0, #301989888	@ 0x12000000
200213c8:	4798      	blx	r3
200213ca:	6822      	ldr	r2, [r4, #0]
200213cc:	4b12      	ldr	r3, [pc, #72]	@ (20021418 <try_boot_from_slot.isra.0+0x68>)
200213ce:	429a      	cmp	r2, r3
200213d0:	d11a      	bne.n	20021408 <try_boot_from_slot.isra.0+0x58>
200213d2:	f504 5300 	add.w	r3, r4, #8192	@ 0x2000
200213d6:	f8d3 3c08 	ldr.w	r3, [r3, #3080]	@ 0xc08
200213da:	1c5a      	adds	r2, r3, #1
200213dc:	d014      	beq.n	20021408 <try_boot_from_slot.isra.0+0x58>
200213de:	4a0f      	ldr	r2, [pc, #60]	@ (2002141c <try_boot_from_slot.isra.0+0x6c>)
200213e0:	6810      	ldr	r0, [r2, #0]
200213e2:	1a18      	subs	r0, r3, r0
200213e4:	f5a0 5080 	sub.w	r0, r0, #4096	@ 0x1000
200213e8:	0a40      	lsrs	r0, r0, #9
200213ea:	3002      	adds	r0, #2
200213ec:	b11d      	cbz	r5, 200213f6 <try_boot_from_slot.isra.0+0x46>
200213ee:	4b0c      	ldr	r3, [pc, #48]	@ (20021420 <try_boot_from_slot.isra.0+0x70>)
200213f0:	eb04 1400 	add.w	r4, r4, r0, lsl #4
200213f4:	6063      	str	r3, [r4, #4]
200213f6:	f7ff ff25 	bl	20021244 <dfu_boot_img_in_flash>
200213fa:	4b0a      	ldr	r3, [pc, #40]	@ (20021424 <try_boot_from_slot.isra.0+0x74>)
200213fc:	2100      	movs	r1, #0
200213fe:	6818      	ldr	r0, [r3, #0]
20021400:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20021404:	f002 b8db 	b.w	200235be <HAL_FLASH_AES_CFG>
20021408:	bd38      	pop	{r3, r4, r5, pc}
2002140a:	bf00      	nop
2002140c:	200472c0 	.word	0x200472c0
20021410:	20046cc0 	.word	0x20046cc0
20021414:	12008000 	.word	0x12008000
20021418:	53454346 	.word	0x53454346
2002141c:	20046cb0 	.word	0x20046cb0
20021420:	12420000 	.word	0x12420000
20021424:	20046cb4 	.word	0x20046cb4

20021428 <boot_images_help>:
20021428:	b513      	push	{r0, r1, r4, lr}
2002142a:	2009      	movs	r0, #9
2002142c:	f001 faa6 	bl	2002297c <HAL_Get_backup>
20021430:	4604      	mov	r4, r0
20021432:	2008      	movs	r0, #8
20021434:	f001 faa2 	bl	2002297c <HAL_Get_backup>
20021438:	4b1e      	ldr	r3, [pc, #120]	@ (200214b4 <boot_images_help+0x8c>)
2002143a:	4298      	cmp	r0, r3
2002143c:	d118      	bne.n	20021470 <boot_images_help+0x48>
2002143e:	2100      	movs	r1, #0
20021440:	2008      	movs	r0, #8
20021442:	f001 fa95 	bl	20022970 <HAL_Set_backup>
20021446:	2007      	movs	r0, #7
20021448:	491b      	ldr	r1, [pc, #108]	@ (200214b8 <boot_images_help+0x90>)
2002144a:	f001 fa91 	bl	20022970 <HAL_Set_backup>
2002144e:	2401      	movs	r4, #1
20021450:	f7ff fa46 	bl	200208e0 <board_init_psram>
20021454:	4620      	mov	r0, r4
20021456:	f7ff ffab 	bl	200213b0 <try_boot_from_slot.isra.0>
2002145a:	2100      	movs	r1, #0
2002145c:	2007      	movs	r0, #7
2002145e:	f001 fa87 	bl	20022970 <HAL_Set_backup>
20021462:	f084 0001 	eor.w	r0, r4, #1
20021466:	b002      	add	sp, #8
20021468:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002146c:	f7ff bfa0 	b.w	200213b0 <try_boot_from_slot.isra.0>
20021470:	4b12      	ldr	r3, [pc, #72]	@ (200214bc <boot_images_help+0x94>)
20021472:	4298      	cmp	r0, r3
20021474:	d109      	bne.n	2002148a <boot_images_help+0x62>
20021476:	2100      	movs	r1, #0
20021478:	2008      	movs	r0, #8
2002147a:	f001 fa79 	bl	20022970 <HAL_Set_backup>
2002147e:	2007      	movs	r0, #7
20021480:	490f      	ldr	r1, [pc, #60]	@ (200214c0 <boot_images_help+0x98>)
20021482:	f001 fa75 	bl	20022970 <HAL_Set_backup>
20021486:	2400      	movs	r4, #0
20021488:	e7e2      	b.n	20021450 <boot_images_help+0x28>
2002148a:	4b0e      	ldr	r3, [pc, #56]	@ (200214c4 <boot_images_help+0x9c>)
2002148c:	429c      	cmp	r4, r3
2002148e:	d0de      	beq.n	2002144e <boot_images_help+0x26>
20021490:	4b0d      	ldr	r3, [pc, #52]	@ (200214c8 <boot_images_help+0xa0>)
20021492:	429c      	cmp	r4, r3
20021494:	d0f7      	beq.n	20021486 <boot_images_help+0x5e>
20021496:	4b0d      	ldr	r3, [pc, #52]	@ (200214cc <boot_images_help+0xa4>)
20021498:	2208      	movs	r2, #8
2002149a:	681b      	ldr	r3, [r3, #0]
2002149c:	4669      	mov	r1, sp
2002149e:	480c      	ldr	r0, [pc, #48]	@ (200214d0 <boot_images_help+0xa8>)
200214a0:	4798      	blx	r3
200214a2:	4b0c      	ldr	r3, [pc, #48]	@ (200214d4 <boot_images_help+0xac>)
200214a4:	9a00      	ldr	r2, [sp, #0]
200214a6:	429a      	cmp	r2, r3
200214a8:	d1ed      	bne.n	20021486 <boot_images_help+0x5e>
200214aa:	9c01      	ldr	r4, [sp, #4]
200214ac:	1e63      	subs	r3, r4, #1
200214ae:	425c      	negs	r4, r3
200214b0:	415c      	adcs	r4, r3
200214b2:	e7cd      	b.n	20021450 <boot_images_help+0x28>
200214b4:	54525942 	.word	0x54525942
200214b8:	434d5442 	.word	0x434d5442
200214bc:	54525941 	.word	0x54525941
200214c0:	434d5441 	.word	0x434d5441
200214c4:	41435442 	.word	0x41435442
200214c8:	41435441 	.word	0x41435441
200214cc:	20046cc0 	.word	0x20046cc0
200214d0:	12780000 	.word	0x12780000
200214d4:	41425053 	.word	0x41425053

200214d8 <hw_preinit0>:
200214d8:	b508      	push	{r3, lr}
200214da:	4b0e      	ldr	r3, [pc, #56]	@ (20021514 <hw_preinit0+0x3c>)
200214dc:	685b      	ldr	r3, [r3, #4]
200214de:	b2db      	uxtb	r3, r3
200214e0:	2b06      	cmp	r3, #6
200214e2:	d80a      	bhi.n	200214fa <hw_preinit0+0x22>
200214e4:	4a0c      	ldr	r2, [pc, #48]	@ (20021518 <hw_preinit0+0x40>)
200214e6:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200214e8:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
200214ec:	f043 0306 	orr.w	r3, r3, #6
200214f0:	6293      	str	r3, [r2, #40]	@ 0x28
200214f2:	6853      	ldr	r3, [r2, #4]
200214f4:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
200214f8:	6053      	str	r3, [r2, #4]
200214fa:	2000      	movs	r0, #0
200214fc:	f000 fcd5 	bl	20021eaa <HAL_Delay_us>
20021500:	4b06      	ldr	r3, [pc, #24]	@ (2002151c <hw_preinit0+0x44>)
20021502:	4a07      	ldr	r2, [pc, #28]	@ (20021520 <hw_preinit0+0x48>)
20021504:	2000      	movs	r0, #0
20021506:	605a      	str	r2, [r3, #4]
20021508:	f7ff fd76 	bl	20020ff8 <sifli_hw_efuse_read_bank>
2002150c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20021510:	f7ff be74 	b.w	200211fc <boot_ram>
20021514:	5000b000 	.word	0x5000b000
20021518:	500ca000 	.word	0x500ca000
2002151c:	5000c000 	.word	0x5000c000
20021520:	0002d08f 	.word	0x0002d08f

20021524 <entry>:
20021524:	4c14      	ldr	r4, [pc, #80]	@ (20021578 <entry+0x54>)
20021526:	b508      	push	{r3, lr}
20021528:	2000      	movs	r0, #0
2002152a:	f000 fcbe 	bl	20021eaa <HAL_Delay_us>
2002152e:	6863      	ldr	r3, [r4, #4]
20021530:	4d12      	ldr	r5, [pc, #72]	@ (2002157c <entry+0x58>)
20021532:	b2db      	uxtb	r3, r3
20021534:	2b06      	cmp	r3, #6
20021536:	d90f      	bls.n	20021558 <entry+0x34>
20021538:	f7fe fff2 	bl	20020520 <board_flash_power_on>
2002153c:	f7fe fee0 	bl	20020300 <HAL_MspInit>
20021540:	f7fe ffd0 	bl	200204e4 <board_boot_from>
20021544:	6028      	str	r0, [r5, #0]
20021546:	68e3      	ldr	r3, [r4, #12]
20021548:	f023 0301 	bic.w	r3, r3, #1
2002154c:	60e3      	str	r3, [r4, #12]
2002154e:	f7ff fbd9 	bl	20020d04 <dfu_flash_init>
20021552:	f7ff ff69 	bl	20021428 <boot_images_help>
20021556:	e7fe      	b.n	20021556 <entry+0x32>
20021558:	f7fe ffc4 	bl	200204e4 <board_boot_from>
2002155c:	6028      	str	r0, [r5, #0]
2002155e:	f7fe ffdf 	bl	20020520 <board_flash_power_on>
20021562:	f7fe fecd 	bl	20020300 <HAL_MspInit>
20021566:	68e3      	ldr	r3, [r4, #12]
20021568:	f023 0301 	bic.w	r3, r3, #1
2002156c:	60e3      	str	r3, [r4, #12]
2002156e:	f7ff fbc9 	bl	20020d04 <dfu_flash_init>
20021572:	f7ff ff59 	bl	20021428 <boot_images_help>
20021576:	e7ee      	b.n	20021556 <entry+0x32>
20021578:	5000b000 	.word	0x5000b000
2002157c:	20049ed0 	.word	0x20049ed0

20021580 <sdio_emmc_init>:
20021580:	b570      	push	{r4, r5, r6, lr}
20021582:	b08c      	sub	sp, #48	@ 0x30
20021584:	f000 f968 	bl	20021858 <sd1_init>
20021588:	4c8d      	ldr	r4, [pc, #564]	@ (200217c0 <sdio_emmc_init+0x240>)
2002158a:	4b8e      	ldr	r3, [pc, #568]	@ (200217c4 <sdio_emmc_init+0x244>)
2002158c:	2500      	movs	r5, #0
2002158e:	6323      	str	r3, [r4, #48]	@ 0x30
20021590:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021592:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
20021596:	f043 0302 	orr.w	r3, r3, #2
2002159a:	6323      	str	r3, [r4, #48]	@ 0x30
2002159c:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200215a0:	62e5      	str	r5, [r4, #44]	@ 0x2c
200215a2:	6223      	str	r3, [r4, #32]
200215a4:	f000 fc81 	bl	20021eaa <HAL_Delay_us>
200215a8:	4629      	mov	r1, r5
200215aa:	4628      	mov	r0, r5
200215ac:	f000 f986 	bl	200218bc <sd1_send_cmd>
200215b0:	2301      	movs	r3, #1
200215b2:	65e3      	str	r3, [r4, #92]	@ 0x5c
200215b4:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200215b6:	079d      	lsls	r5, r3, #30
200215b8:	d5fc      	bpl.n	200215b4 <sdio_emmc_init+0x34>
200215ba:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
200215bc:	f043 0320 	orr.w	r3, r3, #32
200215c0:	63e3      	str	r3, [r4, #60]	@ 0x3c
200215c2:	4981      	ldr	r1, [pc, #516]	@ (200217c8 <sdio_emmc_init+0x248>)
200215c4:	2001      	movs	r0, #1
200215c6:	ad07      	add	r5, sp, #28
200215c8:	f000 f978 	bl	200218bc <sd1_send_cmd>
200215cc:	ab06      	add	r3, sp, #24
200215ce:	aa05      	add	r2, sp, #20
200215d0:	a904      	add	r1, sp, #16
200215d2:	f10d 000f 	add.w	r0, sp, #15
200215d6:	9500      	str	r5, [sp, #0]
200215d8:	f000 f9ae 	bl	20021938 <sd1_get_rsp>
200215dc:	2014      	movs	r0, #20
200215de:	f000 fc64 	bl	20021eaa <HAL_Delay_us>
200215e2:	9b04      	ldr	r3, [sp, #16]
200215e4:	2b00      	cmp	r3, #0
200215e6:	daec      	bge.n	200215c2 <sdio_emmc_init+0x42>
200215e8:	2014      	movs	r0, #20
200215ea:	f000 fc5e 	bl	20021eaa <HAL_Delay_us>
200215ee:	2100      	movs	r1, #0
200215f0:	2002      	movs	r0, #2
200215f2:	f000 f963 	bl	200218bc <sd1_send_cmd>
200215f6:	2801      	cmp	r0, #1
200215f8:	f000 8081 	beq.w	200216fe <sdio_emmc_init+0x17e>
200215fc:	2802      	cmp	r0, #2
200215fe:	d07e      	beq.n	200216fe <sdio_emmc_init+0x17e>
20021600:	ab08      	add	r3, sp, #32
20021602:	aa0a      	add	r2, sp, #40	@ 0x28
20021604:	a90b      	add	r1, sp, #44	@ 0x2c
20021606:	9300      	str	r3, [sp, #0]
20021608:	f10d 000f 	add.w	r0, sp, #15
2002160c:	ab09      	add	r3, sp, #36	@ 0x24
2002160e:	f000 f993 	bl	20021938 <sd1_get_rsp>
20021612:	2014      	movs	r0, #20
20021614:	f000 fc49 	bl	20021eaa <HAL_Delay_us>
20021618:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
2002161c:	2003      	movs	r0, #3
2002161e:	f000 f94d 	bl	200218bc <sd1_send_cmd>
20021622:	2801      	cmp	r0, #1
20021624:	f000 80ab 	beq.w	2002177e <sdio_emmc_init+0x1fe>
20021628:	2802      	cmp	r0, #2
2002162a:	f000 80aa 	beq.w	20021782 <sdio_emmc_init+0x202>
2002162e:	ab06      	add	r3, sp, #24
20021630:	9500      	str	r5, [sp, #0]
20021632:	aa05      	add	r2, sp, #20
20021634:	a904      	add	r1, sp, #16
20021636:	f10d 000f 	add.w	r0, sp, #15
2002163a:	f000 f97d 	bl	20021938 <sd1_get_rsp>
2002163e:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021642:	2b03      	cmp	r3, #3
20021644:	f040 809f 	bne.w	20021786 <sdio_emmc_init+0x206>
20021648:	4c5d      	ldr	r4, [pc, #372]	@ (200217c0 <sdio_emmc_init+0x240>)
2002164a:	2014      	movs	r0, #20
2002164c:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
2002164e:	f023 0320 	bic.w	r3, r3, #32
20021652:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021654:	f000 fc29 	bl	20021eaa <HAL_Delay_us>
20021658:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
2002165c:	2009      	movs	r0, #9
2002165e:	f000 f92d 	bl	200218bc <sd1_send_cmd>
20021662:	2801      	cmp	r0, #1
20021664:	f000 8091 	beq.w	2002178a <sdio_emmc_init+0x20a>
20021668:	2802      	cmp	r0, #2
2002166a:	f000 8090 	beq.w	2002178e <sdio_emmc_init+0x20e>
2002166e:	aa05      	add	r2, sp, #20
20021670:	a904      	add	r1, sp, #16
20021672:	ab06      	add	r3, sp, #24
20021674:	f10d 000f 	add.w	r0, sp, #15
20021678:	9500      	str	r5, [sp, #0]
2002167a:	f000 f95d 	bl	20021938 <sd1_get_rsp>
2002167e:	f44f 53b8 	mov.w	r3, #5888	@ 0x1700
20021682:	6323      	str	r3, [r4, #48]	@ 0x30
20021684:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021686:	2014      	movs	r0, #20
20021688:	f043 0302 	orr.w	r3, r3, #2
2002168c:	6323      	str	r3, [r4, #48]	@ 0x30
2002168e:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021692:	6223      	str	r3, [r4, #32]
20021694:	2302      	movs	r3, #2
20021696:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021698:	f000 fc07 	bl	20021eaa <HAL_Delay_us>
2002169c:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200216a0:	2007      	movs	r0, #7
200216a2:	f000 f90b 	bl	200218bc <sd1_send_cmd>
200216a6:	2801      	cmp	r0, #1
200216a8:	d073      	beq.n	20021792 <sdio_emmc_init+0x212>
200216aa:	2802      	cmp	r0, #2
200216ac:	d073      	beq.n	20021796 <sdio_emmc_init+0x216>
200216ae:	ab06      	add	r3, sp, #24
200216b0:	9500      	str	r5, [sp, #0]
200216b2:	aa05      	add	r2, sp, #20
200216b4:	a904      	add	r1, sp, #16
200216b6:	f10d 000f 	add.w	r0, sp, #15
200216ba:	f000 f93d 	bl	20021938 <sd1_get_rsp>
200216be:	f89d 300f 	ldrb.w	r3, [sp, #15]
200216c2:	2b07      	cmp	r3, #7
200216c4:	d169      	bne.n	2002179a <sdio_emmc_init+0x21a>
200216c6:	f04f 33ff 	mov.w	r3, #4294967295
200216ca:	2101      	movs	r1, #1
200216cc:	2000      	movs	r0, #0
200216ce:	6023      	str	r3, [r4, #0]
200216d0:	f000 f942 	bl	20021958 <sd1_read>
200216d4:	2100      	movs	r1, #0
200216d6:	2008      	movs	r0, #8
200216d8:	f000 f8f0 	bl	200218bc <sd1_send_cmd>
200216dc:	2801      	cmp	r0, #1
200216de:	d05e      	beq.n	2002179e <sdio_emmc_init+0x21e>
200216e0:	2802      	cmp	r0, #2
200216e2:	d05e      	beq.n	200217a2 <sdio_emmc_init+0x222>
200216e4:	ab06      	add	r3, sp, #24
200216e6:	9500      	str	r5, [sp, #0]
200216e8:	aa05      	add	r2, sp, #20
200216ea:	a904      	add	r1, sp, #16
200216ec:	f10d 000f 	add.w	r0, sp, #15
200216f0:	f000 f922 	bl	20021938 <sd1_get_rsp>
200216f4:	f89d 300f 	ldrb.w	r3, [sp, #15]
200216f8:	2b08      	cmp	r3, #8
200216fa:	d002      	beq.n	20021702 <sdio_emmc_init+0x182>
200216fc:	200d      	movs	r0, #13
200216fe:	b00c      	add	sp, #48	@ 0x30
20021700:	bd70      	pop	{r4, r5, r6, pc}
20021702:	2320      	movs	r3, #32
20021704:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021706:	f000 f937 	bl	20021978 <sd1_wait_read>
2002170a:	6823      	ldr	r3, [r4, #0]
2002170c:	0618      	lsls	r0, r3, #24
2002170e:	d4f5      	bmi.n	200216fc <sdio_emmc_init+0x17c>
20021710:	6823      	ldr	r3, [r4, #0]
20021712:	0659      	lsls	r1, r3, #25
20021714:	d447      	bmi.n	200217a6 <sdio_emmc_init+0x226>
20021716:	2680      	movs	r6, #128	@ 0x80
20021718:	3e01      	subs	r6, #1
2002171a:	f8d4 3200 	ldr.w	r3, [r4, #512]	@ 0x200
2002171e:	d1fb      	bne.n	20021718 <sdio_emmc_init+0x198>
20021720:	2101      	movs	r1, #1
20021722:	4630      	mov	r0, r6
20021724:	f000 f918 	bl	20021958 <sd1_read>
20021728:	2014      	movs	r0, #20
2002172a:	f000 fbbe 	bl	20021eaa <HAL_Delay_us>
2002172e:	f04f 33ff 	mov.w	r3, #4294967295
20021732:	4631      	mov	r1, r6
20021734:	2011      	movs	r0, #17
20021736:	6023      	str	r3, [r4, #0]
20021738:	f000 f8c0 	bl	200218bc <sd1_send_cmd>
2002173c:	2801      	cmp	r0, #1
2002173e:	d034      	beq.n	200217aa <sdio_emmc_init+0x22a>
20021740:	2802      	cmp	r0, #2
20021742:	d034      	beq.n	200217ae <sdio_emmc_init+0x22e>
20021744:	ab06      	add	r3, sp, #24
20021746:	9500      	str	r5, [sp, #0]
20021748:	aa05      	add	r2, sp, #20
2002174a:	a904      	add	r1, sp, #16
2002174c:	f10d 000f 	add.w	r0, sp, #15
20021750:	f000 f8f2 	bl	20021938 <sd1_get_rsp>
20021754:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021758:	2b11      	cmp	r3, #17
2002175a:	d12a      	bne.n	200217b2 <sdio_emmc_init+0x232>
2002175c:	2320      	movs	r3, #32
2002175e:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021760:	f000 f90a 	bl	20021978 <sd1_wait_read>
20021764:	6823      	ldr	r3, [r4, #0]
20021766:	061a      	lsls	r2, r3, #24
20021768:	d425      	bmi.n	200217b6 <sdio_emmc_init+0x236>
2002176a:	6823      	ldr	r3, [r4, #0]
2002176c:	065b      	lsls	r3, r3, #25
2002176e:	d424      	bmi.n	200217ba <sdio_emmc_init+0x23a>
20021770:	2080      	movs	r0, #128	@ 0x80
20021772:	4b13      	ldr	r3, [pc, #76]	@ (200217c0 <sdio_emmc_init+0x240>)
20021774:	3801      	subs	r0, #1
20021776:	f8d3 2200 	ldr.w	r2, [r3, #512]	@ 0x200
2002177a:	d1fb      	bne.n	20021774 <sdio_emmc_init+0x1f4>
2002177c:	e7bf      	b.n	200216fe <sdio_emmc_init+0x17e>
2002177e:	2003      	movs	r0, #3
20021780:	e7bd      	b.n	200216fe <sdio_emmc_init+0x17e>
20021782:	2004      	movs	r0, #4
20021784:	e7bb      	b.n	200216fe <sdio_emmc_init+0x17e>
20021786:	2005      	movs	r0, #5
20021788:	e7b9      	b.n	200216fe <sdio_emmc_init+0x17e>
2002178a:	2006      	movs	r0, #6
2002178c:	e7b7      	b.n	200216fe <sdio_emmc_init+0x17e>
2002178e:	2007      	movs	r0, #7
20021790:	e7b5      	b.n	200216fe <sdio_emmc_init+0x17e>
20021792:	2008      	movs	r0, #8
20021794:	e7b3      	b.n	200216fe <sdio_emmc_init+0x17e>
20021796:	2009      	movs	r0, #9
20021798:	e7b1      	b.n	200216fe <sdio_emmc_init+0x17e>
2002179a:	200a      	movs	r0, #10
2002179c:	e7af      	b.n	200216fe <sdio_emmc_init+0x17e>
2002179e:	200b      	movs	r0, #11
200217a0:	e7ad      	b.n	200216fe <sdio_emmc_init+0x17e>
200217a2:	200c      	movs	r0, #12
200217a4:	e7ab      	b.n	200216fe <sdio_emmc_init+0x17e>
200217a6:	200e      	movs	r0, #14
200217a8:	e7a9      	b.n	200216fe <sdio_emmc_init+0x17e>
200217aa:	2011      	movs	r0, #17
200217ac:	e7a7      	b.n	200216fe <sdio_emmc_init+0x17e>
200217ae:	2012      	movs	r0, #18
200217b0:	e7a5      	b.n	200216fe <sdio_emmc_init+0x17e>
200217b2:	2013      	movs	r0, #19
200217b4:	e7a3      	b.n	200216fe <sdio_emmc_init+0x17e>
200217b6:	2014      	movs	r0, #20
200217b8:	e7a1      	b.n	200216fe <sdio_emmc_init+0x17e>
200217ba:	2015      	movs	r0, #21
200217bc:	e79f      	b.n	200216fe <sdio_emmc_init+0x17e>
200217be:	bf00      	nop
200217c0:	50045000 	.word	0x50045000
200217c4:	00016700 	.word	0x00016700
200217c8:	40000080 	.word	0x40000080

200217cc <emmc_read_data>:
200217cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200217d0:	4607      	mov	r7, r0
200217d2:	f04f 38ff 	mov.w	r8, #4294967295
200217d6:	b088      	sub	sp, #32
200217d8:	2000      	movs	r0, #0
200217da:	460d      	mov	r5, r1
200217dc:	4e1d      	ldr	r6, [pc, #116]	@ (20021854 <emmc_read_data+0x88>)
200217de:	2101      	movs	r1, #1
200217e0:	4614      	mov	r4, r2
200217e2:	f000 f8b9 	bl	20021958 <sd1_read>
200217e6:	2014      	movs	r0, #20
200217e8:	f000 fb5f 	bl	20021eaa <HAL_Delay_us>
200217ec:	2011      	movs	r0, #17
200217ee:	f8c6 8000 	str.w	r8, [r6]
200217f2:	0a79      	lsrs	r1, r7, #9
200217f4:	f000 f862 	bl	200218bc <sd1_send_cmd>
200217f8:	4440      	add	r0, r8
200217fa:	b2c0      	uxtb	r0, r0
200217fc:	2801      	cmp	r0, #1
200217fe:	d803      	bhi.n	20021808 <emmc_read_data+0x3c>
20021800:	2000      	movs	r0, #0
20021802:	b008      	add	sp, #32
20021804:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20021808:	ab07      	add	r3, sp, #28
2002180a:	9300      	str	r3, [sp, #0]
2002180c:	aa05      	add	r2, sp, #20
2002180e:	ab06      	add	r3, sp, #24
20021810:	a904      	add	r1, sp, #16
20021812:	f10d 000f 	add.w	r0, sp, #15
20021816:	f000 f88f 	bl	20021938 <sd1_get_rsp>
2002181a:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002181e:	2b11      	cmp	r3, #17
20021820:	d1ee      	bne.n	20021800 <emmc_read_data+0x34>
20021822:	2320      	movs	r3, #32
20021824:	f8c6 8000 	str.w	r8, [r6]
20021828:	62f3      	str	r3, [r6, #44]	@ 0x2c
2002182a:	f000 f8a5 	bl	20021978 <sd1_wait_read>
2002182e:	6833      	ldr	r3, [r6, #0]
20021830:	061a      	lsls	r2, r3, #24
20021832:	d4e5      	bmi.n	20021800 <emmc_read_data+0x34>
20021834:	6833      	ldr	r3, [r6, #0]
20021836:	065b      	lsls	r3, r3, #25
20021838:	d4e2      	bmi.n	20021800 <emmc_read_data+0x34>
2002183a:	f024 0303 	bic.w	r3, r4, #3
2002183e:	442b      	add	r3, r5
20021840:	429d      	cmp	r5, r3
20021842:	d101      	bne.n	20021848 <emmc_read_data+0x7c>
20021844:	4620      	mov	r0, r4
20021846:	e7dc      	b.n	20021802 <emmc_read_data+0x36>
20021848:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
2002184c:	f845 2b04 	str.w	r2, [r5], #4
20021850:	e7f6      	b.n	20021840 <emmc_read_data+0x74>
20021852:	bf00      	nop
20021854:	50045000 	.word	0x50045000

20021858 <sd1_init>:
20021858:	b510      	push	{r4, lr}
2002185a:	f04f 44a0 	mov.w	r4, #1342177280	@ 0x50000000
2002185e:	68e3      	ldr	r3, [r4, #12]
20021860:	2064      	movs	r0, #100	@ 0x64
20021862:	f023 0310 	bic.w	r3, r3, #16
20021866:	60e3      	str	r3, [r4, #12]
20021868:	f000 fb1f 	bl	20021eaa <HAL_Delay_us>
2002186c:	68e3      	ldr	r3, [r4, #12]
2002186e:	4a07      	ldr	r2, [pc, #28]	@ (2002188c <sd1_init+0x34>)
20021870:	f043 0310 	orr.w	r3, r3, #16
20021874:	60e3      	str	r3, [r4, #12]
20021876:	6913      	ldr	r3, [r2, #16]
20021878:	f043 0302 	orr.w	r3, r3, #2
2002187c:	6113      	str	r3, [r2, #16]
2002187e:	f44f 7280 	mov.w	r2, #256	@ 0x100
20021882:	4b03      	ldr	r3, [pc, #12]	@ (20021890 <sd1_init+0x38>)
20021884:	631a      	str	r2, [r3, #48]	@ 0x30
20021886:	2200      	movs	r2, #0
20021888:	63da      	str	r2, [r3, #60]	@ 0x3c
2002188a:	bd10      	pop	{r4, pc}
2002188c:	5000b000 	.word	0x5000b000
20021890:	50045000 	.word	0x50045000

20021894 <sd1_wait_cmd>:
20021894:	4b08      	ldr	r3, [pc, #32]	@ (200218b8 <sd1_wait_cmd+0x24>)
20021896:	681a      	ldr	r2, [r3, #0]
20021898:	f012 0f0a 	tst.w	r2, #10
2002189c:	d0fb      	beq.n	20021896 <sd1_wait_cmd+0x2>
2002189e:	2202      	movs	r2, #2
200218a0:	601a      	str	r2, [r3, #0]
200218a2:	681a      	ldr	r2, [r3, #0]
200218a4:	0712      	lsls	r2, r2, #28
200218a6:	bf5f      	itttt	pl
200218a8:	6818      	ldrpl	r0, [r3, #0]
200218aa:	f3c0 0080 	ubfxpl	r0, r0, #2, #1
200218ae:	0040      	lslpl	r0, r0, #1
200218b0:	b2c0      	uxtbpl	r0, r0
200218b2:	bf48      	it	mi
200218b4:	2001      	movmi	r0, #1
200218b6:	4770      	bx	lr
200218b8:	50045000 	.word	0x50045000

200218bc <sd1_send_cmd>:
200218bc:	4b0e      	ldr	r3, [pc, #56]	@ (200218f8 <sd1_send_cmd+0x3c>)
200218be:	280f      	cmp	r0, #15
200218c0:	6099      	str	r1, [r3, #8]
200218c2:	ea4f 4380 	mov.w	r3, r0, lsl #18
200218c6:	d813      	bhi.n	200218f0 <sd1_send_cmd+0x34>
200218c8:	2201      	movs	r2, #1
200218ca:	f248 0111 	movw	r1, #32785	@ 0x8011
200218ce:	4082      	lsls	r2, r0
200218d0:	420a      	tst	r2, r1
200218d2:	d105      	bne.n	200218e0 <sd1_send_cmd+0x24>
200218d4:	f240 6104 	movw	r1, #1540	@ 0x604
200218d8:	420a      	tst	r2, r1
200218da:	d009      	beq.n	200218f0 <sd1_send_cmd+0x34>
200218dc:	f443 3340 	orr.w	r3, r3, #196608	@ 0x30000
200218e0:	4a05      	ldr	r2, [pc, #20]	@ (200218f8 <sd1_send_cmd+0x3c>)
200218e2:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
200218e6:	f043 0301 	orr.w	r3, r3, #1
200218ea:	6053      	str	r3, [r2, #4]
200218ec:	f7ff bfd2 	b.w	20021894 <sd1_wait_cmd>
200218f0:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
200218f4:	e7f4      	b.n	200218e0 <sd1_send_cmd+0x24>
200218f6:	bf00      	nop
200218f8:	50045000 	.word	0x50045000

200218fc <sd1_send_acmd>:
200218fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200218fe:	4605      	mov	r5, r0
20021900:	460f      	mov	r7, r1
20021902:	2037      	movs	r0, #55	@ 0x37
20021904:	0411      	lsls	r1, r2, #16
20021906:	f7ff ffd9 	bl	200218bc <sd1_send_cmd>
2002190a:	4604      	mov	r4, r0
2002190c:	b968      	cbnz	r0, 2002192a <sd1_send_acmd+0x2e>
2002190e:	4b08      	ldr	r3, [pc, #32]	@ (20021930 <sd1_send_acmd+0x34>)
20021910:	4e08      	ldr	r6, [pc, #32]	@ (20021934 <sd1_send_acmd+0x38>)
20021912:	ea43 4385 	orr.w	r3, r3, r5, lsl #18
20021916:	60b7      	str	r7, [r6, #8]
20021918:	6073      	str	r3, [r6, #4]
2002191a:	f7ff ffbb 	bl	20021894 <sd1_wait_cmd>
2002191e:	2802      	cmp	r0, #2
20021920:	d104      	bne.n	2002192c <sd1_send_acmd+0x30>
20021922:	2d29      	cmp	r5, #41	@ 0x29
20021924:	d102      	bne.n	2002192c <sd1_send_acmd+0x30>
20021926:	2304      	movs	r3, #4
20021928:	6033      	str	r3, [r6, #0]
2002192a:	4620      	mov	r0, r4
2002192c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002192e:	bf00      	nop
20021930:	00010101 	.word	0x00010101
20021934:	50045000 	.word	0x50045000

20021938 <sd1_get_rsp>:
20021938:	b530      	push	{r4, r5, lr}
2002193a:	4c06      	ldr	r4, [pc, #24]	@ (20021954 <sd1_get_rsp+0x1c>)
2002193c:	68e5      	ldr	r5, [r4, #12]
2002193e:	7005      	strb	r5, [r0, #0]
20021940:	6920      	ldr	r0, [r4, #16]
20021942:	6008      	str	r0, [r1, #0]
20021944:	6961      	ldr	r1, [r4, #20]
20021946:	6011      	str	r1, [r2, #0]
20021948:	69a2      	ldr	r2, [r4, #24]
2002194a:	601a      	str	r2, [r3, #0]
2002194c:	69e2      	ldr	r2, [r4, #28]
2002194e:	9b03      	ldr	r3, [sp, #12]
20021950:	601a      	str	r2, [r3, #0]
20021952:	bd30      	pop	{r4, r5, pc}
20021954:	50045000 	.word	0x50045000

20021958 <sd1_read>:
20021958:	f04f 33ff 	mov.w	r3, #4294967295
2002195c:	4a04      	ldr	r2, [pc, #16]	@ (20021970 <sd1_read+0x18>)
2002195e:	eb03 2341 	add.w	r3, r3, r1, lsl #9
20021962:	6293      	str	r3, [r2, #40]	@ 0x28
20021964:	4b03      	ldr	r3, [pc, #12]	@ (20021974 <sd1_read+0x1c>)
20021966:	ea43 23c0 	orr.w	r3, r3, r0, lsl #11
2002196a:	6253      	str	r3, [r2, #36]	@ 0x24
2002196c:	4770      	bx	lr
2002196e:	bf00      	nop
20021970:	50045000 	.word	0x50045000
20021974:	01ff0301 	.word	0x01ff0301

20021978 <sd1_wait_read>:
20021978:	4b08      	ldr	r3, [pc, #32]	@ (2002199c <sd1_wait_read+0x24>)
2002197a:	681a      	ldr	r2, [r3, #0]
2002197c:	f012 0fe0 	tst.w	r2, #224	@ 0xe0
20021980:	d0fb      	beq.n	2002197a <sd1_wait_read+0x2>
20021982:	2220      	movs	r2, #32
20021984:	601a      	str	r2, [r3, #0]
20021986:	681a      	ldr	r2, [r3, #0]
20021988:	0612      	lsls	r2, r2, #24
2002198a:	bf5f      	itttt	pl
2002198c:	6818      	ldrpl	r0, [r3, #0]
2002198e:	f3c0 1080 	ubfxpl	r0, r0, #6, #1
20021992:	0040      	lslpl	r0, r0, #1
20021994:	b2c0      	uxtbpl	r0, r0
20021996:	bf48      	it	mi
20021998:	2001      	movmi	r0, #1
2002199a:	4770      	bx	lr
2002199c:	50045000 	.word	0x50045000

200219a0 <sdmmc1_sdnand>:
200219a0:	b5f0      	push	{r4, r5, r6, r7, lr}
200219a2:	b08d      	sub	sp, #52	@ 0x34
200219a4:	f7ff ff58 	bl	20021858 <sd1_init>
200219a8:	4c8f      	ldr	r4, [pc, #572]	@ (20021be8 <sdmmc1_sdnand+0x248>)
200219aa:	4b90      	ldr	r3, [pc, #576]	@ (20021bec <sdmmc1_sdnand+0x24c>)
200219ac:	2500      	movs	r5, #0
200219ae:	6323      	str	r3, [r4, #48]	@ 0x30
200219b0:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200219b2:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
200219b6:	f043 0302 	orr.w	r3, r3, #2
200219ba:	6323      	str	r3, [r4, #48]	@ 0x30
200219bc:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
200219c0:	62e5      	str	r5, [r4, #44]	@ 0x2c
200219c2:	6223      	str	r3, [r4, #32]
200219c4:	f000 fa71 	bl	20021eaa <HAL_Delay_us>
200219c8:	4629      	mov	r1, r5
200219ca:	4628      	mov	r0, r5
200219cc:	f7ff ff76 	bl	200218bc <sd1_send_cmd>
200219d0:	2301      	movs	r3, #1
200219d2:	65e3      	str	r3, [r4, #92]	@ 0x5c
200219d4:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200219d6:	079a      	lsls	r2, r3, #30
200219d8:	d5fc      	bpl.n	200219d4 <sdmmc1_sdnand+0x34>
200219da:	2014      	movs	r0, #20
200219dc:	f000 fa65 	bl	20021eaa <HAL_Delay_us>
200219e0:	f44f 71d5 	mov.w	r1, #426	@ 0x1aa
200219e4:	2008      	movs	r0, #8
200219e6:	f7ff ff69 	bl	200218bc <sd1_send_cmd>
200219ea:	3801      	subs	r0, #1
200219ec:	b2c0      	uxtb	r0, r0
200219ee:	2801      	cmp	r0, #1
200219f0:	d802      	bhi.n	200219f8 <sdmmc1_sdnand+0x58>
200219f2:	2038      	movs	r0, #56	@ 0x38
200219f4:	b00d      	add	sp, #52	@ 0x34
200219f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200219f8:	ac07      	add	r4, sp, #28
200219fa:	ab06      	add	r3, sp, #24
200219fc:	9400      	str	r4, [sp, #0]
200219fe:	aa05      	add	r2, sp, #20
20021a00:	a904      	add	r1, sp, #16
20021a02:	f10d 000f 	add.w	r0, sp, #15
20021a06:	f7ff ff97 	bl	20021938 <sd1_get_rsp>
20021a0a:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a0e:	2b08      	cmp	r3, #8
20021a10:	d1ef      	bne.n	200219f2 <sdmmc1_sdnand+0x52>
20021a12:	9b04      	ldr	r3, [sp, #16]
20021a14:	f5b3 7fd5 	cmp.w	r3, #426	@ 0x1aa
20021a18:	d1eb      	bne.n	200219f2 <sdmmc1_sdnand+0x52>
20021a1a:	2014      	movs	r0, #20
20021a1c:	f000 fa45 	bl	20021eaa <HAL_Delay_us>
20021a20:	2200      	movs	r2, #0
20021a22:	2029      	movs	r0, #41	@ 0x29
20021a24:	4972      	ldr	r1, [pc, #456]	@ (20021bf0 <sdmmc1_sdnand+0x250>)
20021a26:	f7ff ff69 	bl	200218fc <sd1_send_acmd>
20021a2a:	2801      	cmp	r0, #1
20021a2c:	f000 80d0 	beq.w	20021bd0 <sdmmc1_sdnand+0x230>
20021a30:	ab06      	add	r3, sp, #24
20021a32:	9400      	str	r4, [sp, #0]
20021a34:	aa05      	add	r2, sp, #20
20021a36:	a904      	add	r1, sp, #16
20021a38:	f10d 000f 	add.w	r0, sp, #15
20021a3c:	f7ff ff7c 	bl	20021938 <sd1_get_rsp>
20021a40:	9b04      	ldr	r3, [sp, #16]
20021a42:	2b00      	cmp	r3, #0
20021a44:	db03      	blt.n	20021a4e <sdmmc1_sdnand+0xae>
20021a46:	2002      	movs	r0, #2
20021a48:	f000 fa2f 	bl	20021eaa <HAL_Delay_us>
20021a4c:	e7e5      	b.n	20021a1a <sdmmc1_sdnand+0x7a>
20021a4e:	2014      	movs	r0, #20
20021a50:	f000 fa2b 	bl	20021eaa <HAL_Delay_us>
20021a54:	2100      	movs	r1, #0
20021a56:	2002      	movs	r0, #2
20021a58:	f7ff ff30 	bl	200218bc <sd1_send_cmd>
20021a5c:	3801      	subs	r0, #1
20021a5e:	b2c0      	uxtb	r0, r0
20021a60:	2801      	cmp	r0, #1
20021a62:	f240 80b7 	bls.w	20021bd4 <sdmmc1_sdnand+0x234>
20021a66:	ab08      	add	r3, sp, #32
20021a68:	aa0a      	add	r2, sp, #40	@ 0x28
20021a6a:	a90b      	add	r1, sp, #44	@ 0x2c
20021a6c:	9300      	str	r3, [sp, #0]
20021a6e:	f10d 000f 	add.w	r0, sp, #15
20021a72:	ab09      	add	r3, sp, #36	@ 0x24
20021a74:	f7ff ff60 	bl	20021938 <sd1_get_rsp>
20021a78:	2014      	movs	r0, #20
20021a7a:	f000 fa16 	bl	20021eaa <HAL_Delay_us>
20021a7e:	2100      	movs	r1, #0
20021a80:	2003      	movs	r0, #3
20021a82:	f7ff ff1b 	bl	200218bc <sd1_send_cmd>
20021a86:	3801      	subs	r0, #1
20021a88:	b2c0      	uxtb	r0, r0
20021a8a:	2801      	cmp	r0, #1
20021a8c:	d801      	bhi.n	20021a92 <sdmmc1_sdnand+0xf2>
20021a8e:	2033      	movs	r0, #51	@ 0x33
20021a90:	e7b0      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021a92:	ab06      	add	r3, sp, #24
20021a94:	9400      	str	r4, [sp, #0]
20021a96:	aa05      	add	r2, sp, #20
20021a98:	a904      	add	r1, sp, #16
20021a9a:	f10d 000f 	add.w	r0, sp, #15
20021a9e:	f7ff ff4b 	bl	20021938 <sd1_get_rsp>
20021aa2:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021aa6:	2b03      	cmp	r3, #3
20021aa8:	d1f1      	bne.n	20021a8e <sdmmc1_sdnand+0xee>
20021aaa:	9e04      	ldr	r6, [sp, #16]
20021aac:	2014      	movs	r0, #20
20021aae:	0c35      	lsrs	r5, r6, #16
20021ab0:	042d      	lsls	r5, r5, #16
20021ab2:	f000 f9fa 	bl	20021eaa <HAL_Delay_us>
20021ab6:	4629      	mov	r1, r5
20021ab8:	2009      	movs	r0, #9
20021aba:	f7ff feff 	bl	200218bc <sd1_send_cmd>
20021abe:	3801      	subs	r0, #1
20021ac0:	b2c0      	uxtb	r0, r0
20021ac2:	2801      	cmp	r0, #1
20021ac4:	f240 8088 	bls.w	20021bd8 <sdmmc1_sdnand+0x238>
20021ac8:	9400      	str	r4, [sp, #0]
20021aca:	ab06      	add	r3, sp, #24
20021acc:	aa05      	add	r2, sp, #20
20021ace:	a904      	add	r1, sp, #16
20021ad0:	f10d 000f 	add.w	r0, sp, #15
20021ad4:	f7ff ff30 	bl	20021938 <sd1_get_rsp>
20021ad8:	e9dd 2004 	ldrd	r2, r0, [sp, #16]
20021adc:	9c06      	ldr	r4, [sp, #24]
20021ade:	9907      	ldr	r1, [sp, #28]
20021ae0:	0e23      	lsrs	r3, r4, #24
20021ae2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
20021ae6:	0e01      	lsrs	r1, r0, #24
20021ae8:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
20021aec:	9105      	str	r1, [sp, #20]
20021aee:	0e11      	lsrs	r1, r2, #24
20021af0:	9304      	str	r3, [sp, #16]
20021af2:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
20021af6:	0212      	lsls	r2, r2, #8
20021af8:	0f9b      	lsrs	r3, r3, #30
20021afa:	9106      	str	r1, [sp, #24]
20021afc:	9207      	str	r2, [sp, #28]
20021afe:	d01e      	beq.n	20021b3e <sdmmc1_sdnand+0x19e>
20021b00:	2b01      	cmp	r3, #1
20021b02:	d16b      	bne.n	20021bdc <sdmmc1_sdnand+0x23c>
20021b04:	2300      	movs	r3, #0
20021b06:	4a3b      	ldr	r2, [pc, #236]	@ (20021bf4 <sdmmc1_sdnand+0x254>)
20021b08:	4c37      	ldr	r4, [pc, #220]	@ (20021be8 <sdmmc1_sdnand+0x248>)
20021b0a:	7013      	strb	r3, [r2, #0]
20021b0c:	f44f 63a0 	mov.w	r3, #1280	@ 0x500
20021b10:	6323      	str	r3, [r4, #48]	@ 0x30
20021b12:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021b14:	2702      	movs	r7, #2
20021b16:	f043 0302 	orr.w	r3, r3, #2
20021b1a:	6323      	str	r3, [r4, #48]	@ 0x30
20021b1c:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021b20:	2014      	movs	r0, #20
20021b22:	6223      	str	r3, [r4, #32]
20021b24:	63e7      	str	r7, [r4, #60]	@ 0x3c
20021b26:	f000 f9c0 	bl	20021eaa <HAL_Delay_us>
20021b2a:	4629      	mov	r1, r5
20021b2c:	2007      	movs	r0, #7
20021b2e:	f7ff fec5 	bl	200218bc <sd1_send_cmd>
20021b32:	3801      	subs	r0, #1
20021b34:	b2c0      	uxtb	r0, r0
20021b36:	2801      	cmp	r0, #1
20021b38:	d803      	bhi.n	20021b42 <sdmmc1_sdnand+0x1a2>
20021b3a:	2037      	movs	r0, #55	@ 0x37
20021b3c:	e75a      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021b3e:	2301      	movs	r3, #1
20021b40:	e7e1      	b.n	20021b06 <sdmmc1_sdnand+0x166>
20021b42:	ad07      	add	r5, sp, #28
20021b44:	ab06      	add	r3, sp, #24
20021b46:	9500      	str	r5, [sp, #0]
20021b48:	aa05      	add	r2, sp, #20
20021b4a:	a904      	add	r1, sp, #16
20021b4c:	f10d 000f 	add.w	r0, sp, #15
20021b50:	f7ff fef2 	bl	20021938 <sd1_get_rsp>
20021b54:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b58:	2b07      	cmp	r3, #7
20021b5a:	d1ee      	bne.n	20021b3a <sdmmc1_sdnand+0x19a>
20021b5c:	2014      	movs	r0, #20
20021b5e:	f000 f9a4 	bl	20021eaa <HAL_Delay_us>
20021b62:	4639      	mov	r1, r7
20021b64:	2006      	movs	r0, #6
20021b66:	0c32      	lsrs	r2, r6, #16
20021b68:	f7ff fec8 	bl	200218fc <sd1_send_acmd>
20021b6c:	3801      	subs	r0, #1
20021b6e:	b2c0      	uxtb	r0, r0
20021b70:	2801      	cmp	r0, #1
20021b72:	d935      	bls.n	20021be0 <sdmmc1_sdnand+0x240>
20021b74:	2101      	movs	r1, #1
20021b76:	4608      	mov	r0, r1
20021b78:	f7ff feee 	bl	20021958 <sd1_read>
20021b7c:	2014      	movs	r0, #20
20021b7e:	f000 f994 	bl	20021eaa <HAL_Delay_us>
20021b82:	2100      	movs	r1, #0
20021b84:	2011      	movs	r0, #17
20021b86:	f7ff fe99 	bl	200218bc <sd1_send_cmd>
20021b8a:	3801      	subs	r0, #1
20021b8c:	b2c0      	uxtb	r0, r0
20021b8e:	2801      	cmp	r0, #1
20021b90:	d801      	bhi.n	20021b96 <sdmmc1_sdnand+0x1f6>
20021b92:	2052      	movs	r0, #82	@ 0x52
20021b94:	e72e      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021b96:	ab06      	add	r3, sp, #24
20021b98:	9500      	str	r5, [sp, #0]
20021b9a:	aa05      	add	r2, sp, #20
20021b9c:	a904      	add	r1, sp, #16
20021b9e:	f10d 000f 	add.w	r0, sp, #15
20021ba2:	f7ff fec9 	bl	20021938 <sd1_get_rsp>
20021ba6:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021baa:	2b11      	cmp	r3, #17
20021bac:	d1f1      	bne.n	20021b92 <sdmmc1_sdnand+0x1f2>
20021bae:	f04f 33ff 	mov.w	r3, #4294967295
20021bb2:	6023      	str	r3, [r4, #0]
20021bb4:	2320      	movs	r3, #32
20021bb6:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021bb8:	f7ff fede 	bl	20021978 <sd1_wait_read>
20021bbc:	6823      	ldr	r3, [r4, #0]
20021bbe:	061b      	lsls	r3, r3, #24
20021bc0:	d410      	bmi.n	20021be4 <sdmmc1_sdnand+0x244>
20021bc2:	6823      	ldr	r3, [r4, #0]
20021bc4:	f013 0f40 	tst.w	r3, #64	@ 0x40
20021bc8:	bf14      	ite	ne
20021bca:	2044      	movne	r0, #68	@ 0x44
20021bcc:	2001      	moveq	r0, #1
20021bce:	e711      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021bd0:	2034      	movs	r0, #52	@ 0x34
20021bd2:	e70f      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021bd4:	2032      	movs	r0, #50	@ 0x32
20021bd6:	e70d      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021bd8:	2039      	movs	r0, #57	@ 0x39
20021bda:	e70b      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021bdc:	2054      	movs	r0, #84	@ 0x54
20021bde:	e709      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021be0:	2036      	movs	r0, #54	@ 0x36
20021be2:	e707      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021be4:	204f      	movs	r0, #79	@ 0x4f
20021be6:	e705      	b.n	200219f4 <sdmmc1_sdnand+0x54>
20021be8:	50045000 	.word	0x50045000
20021bec:	00016700 	.word	0x00016700
20021bf0:	40ff8000 	.word	0x40ff8000
20021bf4:	20042c08 	.word	0x20042c08

20021bf8 <sd_read_data>:
20021bf8:	b570      	push	{r4, r5, r6, lr}
20021bfa:	460d      	mov	r5, r1
20021bfc:	2101      	movs	r1, #1
20021bfe:	b088      	sub	sp, #32
20021c00:	4606      	mov	r6, r0
20021c02:	4608      	mov	r0, r1
20021c04:	4614      	mov	r4, r2
20021c06:	f7ff fea7 	bl	20021958 <sd1_read>
20021c0a:	2014      	movs	r0, #20
20021c0c:	f000 f94d 	bl	20021eaa <HAL_Delay_us>
20021c10:	4b1a      	ldr	r3, [pc, #104]	@ (20021c7c <sd_read_data+0x84>)
20021c12:	781b      	ldrb	r3, [r3, #0]
20021c14:	b903      	cbnz	r3, 20021c18 <sd_read_data+0x20>
20021c16:	0a76      	lsrs	r6, r6, #9
20021c18:	4631      	mov	r1, r6
20021c1a:	2011      	movs	r0, #17
20021c1c:	f7ff fe4e 	bl	200218bc <sd1_send_cmd>
20021c20:	3801      	subs	r0, #1
20021c22:	b2c0      	uxtb	r0, r0
20021c24:	2801      	cmp	r0, #1
20021c26:	d802      	bhi.n	20021c2e <sd_read_data+0x36>
20021c28:	2000      	movs	r0, #0
20021c2a:	b008      	add	sp, #32
20021c2c:	bd70      	pop	{r4, r5, r6, pc}
20021c2e:	ab07      	add	r3, sp, #28
20021c30:	9300      	str	r3, [sp, #0]
20021c32:	aa05      	add	r2, sp, #20
20021c34:	ab06      	add	r3, sp, #24
20021c36:	a904      	add	r1, sp, #16
20021c38:	f10d 000f 	add.w	r0, sp, #15
20021c3c:	f7ff fe7c 	bl	20021938 <sd1_get_rsp>
20021c40:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021c44:	2b11      	cmp	r3, #17
20021c46:	d1ef      	bne.n	20021c28 <sd_read_data+0x30>
20021c48:	f04f 33ff 	mov.w	r3, #4294967295
20021c4c:	4e0c      	ldr	r6, [pc, #48]	@ (20021c80 <sd_read_data+0x88>)
20021c4e:	6033      	str	r3, [r6, #0]
20021c50:	2320      	movs	r3, #32
20021c52:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021c54:	f7ff fe90 	bl	20021978 <sd1_wait_read>
20021c58:	6833      	ldr	r3, [r6, #0]
20021c5a:	061a      	lsls	r2, r3, #24
20021c5c:	d4e4      	bmi.n	20021c28 <sd_read_data+0x30>
20021c5e:	6833      	ldr	r3, [r6, #0]
20021c60:	065b      	lsls	r3, r3, #25
20021c62:	d4e1      	bmi.n	20021c28 <sd_read_data+0x30>
20021c64:	f024 0303 	bic.w	r3, r4, #3
20021c68:	442b      	add	r3, r5
20021c6a:	429d      	cmp	r5, r3
20021c6c:	d101      	bne.n	20021c72 <sd_read_data+0x7a>
20021c6e:	4620      	mov	r0, r4
20021c70:	e7db      	b.n	20021c2a <sd_read_data+0x32>
20021c72:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021c76:	f845 2b04 	str.w	r2, [r5], #4
20021c7a:	e7f6      	b.n	20021c6a <sd_read_data+0x72>
20021c7c:	20042c08 	.word	0x20042c08
20021c80:	50045000 	.word	0x50045000

20021c84 <sifli_img_sig_hash_verify>:
20021c84:	b5f0      	push	{r4, r5, r6, r7, lr}
20021c86:	461f      	mov	r7, r3
20021c88:	4616      	mov	r6, r2
20021c8a:	460d      	mov	r5, r1
20021c8c:	b08d      	sub	sp, #52	@ 0x34
20021c8e:	2220      	movs	r2, #32
20021c90:	2100      	movs	r1, #0
20021c92:	4604      	mov	r4, r0
20021c94:	a804      	add	r0, sp, #16
20021c96:	f008 fd39 	bl	2002a70c <memset>
20021c9a:	2300      	movs	r3, #0
20021c9c:	4639      	mov	r1, r7
20021c9e:	aa04      	add	r2, sp, #16
20021ca0:	4630      	mov	r0, r6
20021ca2:	f004 fced 	bl	20026680 <mbedtls_sha256>
20021ca6:	a802      	add	r0, sp, #8
20021ca8:	f007 faa4 	bl	200291f4 <mbedtls_pk_init>
20021cac:	4629      	mov	r1, r5
20021cae:	f44f 7293 	mov.w	r2, #294	@ 0x126
20021cb2:	a802      	add	r0, sp, #8
20021cb4:	f007 fbaa 	bl	2002940c <mbedtls_pk_parse_public_key>
20021cb8:	4601      	mov	r1, r0
20021cba:	b998      	cbnz	r0, 20021ce4 <sifli_img_sig_hash_verify+0x60>
20021cbc:	2206      	movs	r2, #6
20021cbe:	9803      	ldr	r0, [sp, #12]
20021cc0:	f007 fc4b 	bl	2002955a <mbedtls_rsa_set_padding>
20021cc4:	f44f 7380 	mov.w	r3, #256	@ 0x100
20021cc8:	2106      	movs	r1, #6
20021cca:	e9cd 4300 	strd	r4, r3, [sp]
20021cce:	aa04      	add	r2, sp, #16
20021cd0:	2320      	movs	r3, #32
20021cd2:	a802      	add	r0, sp, #8
20021cd4:	f007 fac2 	bl	2002925c <mbedtls_pk_verify>
20021cd8:	3800      	subs	r0, #0
20021cda:	bf18      	it	ne
20021cdc:	2001      	movne	r0, #1
20021cde:	4240      	negs	r0, r0
20021ce0:	b00d      	add	sp, #52	@ 0x34
20021ce2:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021ce4:	f04f 30ff 	mov.w	r0, #4294967295
20021ce8:	e7fa      	b.n	20021ce0 <sifli_img_sig_hash_verify+0x5c>
	...

20021cec <BSP_GetFlash1DIV>:
20021cec:	4b01      	ldr	r3, [pc, #4]	@ (20021cf4 <BSP_GetFlash1DIV+0x8>)
20021cee:	8818      	ldrh	r0, [r3, #0]
20021cf0:	4770      	bx	lr
20021cf2:	bf00      	nop
20021cf4:	20042c0c 	.word	0x20042c0c

20021cf8 <BSP_GetFlash2DIV>:
20021cf8:	4b01      	ldr	r3, [pc, #4]	@ (20021d00 <BSP_GetFlash2DIV+0x8>)
20021cfa:	8818      	ldrh	r0, [r3, #0]
20021cfc:	4770      	bx	lr
20021cfe:	bf00      	nop
20021d00:	20042c0a 	.word	0x20042c0a

20021d04 <BSP_SetFlash1DIV>:
20021d04:	4b01      	ldr	r3, [pc, #4]	@ (20021d0c <BSP_SetFlash1DIV+0x8>)
20021d06:	8018      	strh	r0, [r3, #0]
20021d08:	4770      	bx	lr
20021d0a:	bf00      	nop
20021d0c:	20042c0c 	.word	0x20042c0c

20021d10 <BSP_SetFlash2DIV>:
20021d10:	4b01      	ldr	r3, [pc, #4]	@ (20021d18 <BSP_SetFlash2DIV+0x8>)
20021d12:	8018      	strh	r0, [r3, #0]
20021d14:	4770      	bx	lr
20021d16:	bf00      	nop
20021d18:	20042c0a 	.word	0x20042c0a

20021d1c <boot_images>:
20021d1c:	4770      	bx	lr

20021d1e <SystemPowerOnModeInit>:
20021d1e:	4770      	bx	lr

20021d20 <SystemInit>:
20021d20:	b508      	push	{r3, lr}
20021d22:	4a10      	ldr	r2, [pc, #64]	@ (20021d64 <SystemInit+0x44>)
20021d24:	4b10      	ldr	r3, [pc, #64]	@ (20021d68 <SystemInit+0x48>)
20021d26:	609a      	str	r2, [r3, #8]
20021d28:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021d2c:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
20021d30:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021d34:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021d38:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
20021d3c:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021d40:	f7ff fbca 	bl	200214d8 <hw_preinit0>
20021d44:	f7fe fae2 	bl	2002030c <mpu_config>
20021d48:	4b08      	ldr	r3, [pc, #32]	@ (20021d6c <SystemInit+0x4c>)
20021d4a:	681b      	ldr	r3, [r3, #0]
20021d4c:	07db      	lsls	r3, r3, #31
20021d4e:	d401      	bmi.n	20021d54 <SystemInit+0x34>
20021d50:	f7ff ffe4 	bl	20021d1c <boot_images>
20021d54:	f7fe fadb 	bl	2002030e <cache_enable>
20021d58:	f7ff ffe1 	bl	20021d1e <SystemPowerOnModeInit>
20021d5c:	4b04      	ldr	r3, [pc, #16]	@ (20021d70 <SystemInit+0x50>)
20021d5e:	4a05      	ldr	r2, [pc, #20]	@ (20021d74 <SystemInit+0x54>)
20021d60:	601a      	str	r2, [r3, #0]
20021d62:	bd08      	pop	{r3, pc}
20021d64:	20020000 	.word	0x20020000
20021d68:	e000ed00 	.word	0xe000ed00
20021d6c:	5000b000 	.word	0x5000b000
20021d70:	20042c10 	.word	0x20042c10
20021d74:	017d7840 	.word	0x017d7840

20021d78 <Reset_Handler>:
20021d78:	f8df d048 	ldr.w	sp, [pc, #72]	@ 20021dc4 <AES_IRQHandler+0x2>
20021d7c:	4812      	ldr	r0, [pc, #72]	@ (20021dc8 <AES_IRQHandler+0x6>)
20021d7e:	f380 880a 	msr	MSPLIM, r0
20021d82:	f7ff ffcd 	bl	20021d20 <SystemInit>
20021d86:	4c11      	ldr	r4, [pc, #68]	@ (20021dcc <AES_IRQHandler+0xa>)
20021d88:	4d11      	ldr	r5, [pc, #68]	@ (20021dd0 <AES_IRQHandler+0xe>)
20021d8a:	42ac      	cmp	r4, r5
20021d8c:	da09      	bge.n	20021da2 <Reset_Handler+0x2a>
20021d8e:	6821      	ldr	r1, [r4, #0]
20021d90:	6862      	ldr	r2, [r4, #4]
20021d92:	68a3      	ldr	r3, [r4, #8]
20021d94:	3b04      	subs	r3, #4
20021d96:	bfa2      	ittt	ge
20021d98:	58c8      	ldrge	r0, [r1, r3]
20021d9a:	50d0      	strge	r0, [r2, r3]
20021d9c:	e7fa      	bge.n	20021d94 <Reset_Handler+0x1c>
20021d9e:	340c      	adds	r4, #12
20021da0:	e7f3      	b.n	20021d8a <Reset_Handler+0x12>
20021da2:	4b0c      	ldr	r3, [pc, #48]	@ (20021dd4 <AES_IRQHandler+0x12>)
20021da4:	4c0c      	ldr	r4, [pc, #48]	@ (20021dd8 <AES_IRQHandler+0x16>)
20021da6:	42a3      	cmp	r3, r4
20021da8:	da08      	bge.n	20021dbc <Reset_Handler+0x44>
20021daa:	6819      	ldr	r1, [r3, #0]
20021dac:	685a      	ldr	r2, [r3, #4]
20021dae:	2000      	movs	r0, #0
20021db0:	3a04      	subs	r2, #4
20021db2:	bfa4      	itt	ge
20021db4:	5088      	strge	r0, [r1, r2]
20021db6:	e7fb      	bge.n	20021db0 <Reset_Handler+0x38>
20021db8:	3308      	adds	r3, #8
20021dba:	e7f4      	b.n	20021da6 <Reset_Handler+0x2e>
20021dbc:	f7ff fbb2 	bl	20021524 <entry>

20021dc0 <HardFault_Handler>:
20021dc0:	e7fe      	b.n	20021dc0 <HardFault_Handler>

20021dc2 <AES_IRQHandler>:
20021dc2:	e7fe      	b.n	20021dc2 <AES_IRQHandler>
20021dc4:	20042000 	.word	0x20042000
20021dc8:	20040000 	.word	0x20040000
20021dcc:	2002c248 	.word	0x2002c248
20021dd0:	2002c254 	.word	0x2002c254
20021dd4:	2002c254 	.word	0x2002c254
20021dd8:	2002c25c 	.word	0x2002c25c

20021ddc <__aeabi_unwind_cpp_pr0>:
20021ddc:	2000      	movs	r0, #0
20021dde:	4770      	bx	lr

20021de0 <HAL_GetTick>:
20021de0:	4b01      	ldr	r3, [pc, #4]	@ (20021de8 <HAL_GetTick+0x8>)
20021de2:	6818      	ldr	r0, [r3, #0]
20021de4:	4770      	bx	lr
20021de6:	bf00      	nop
20021de8:	20049ed8 	.word	0x20049ed8

20021dec <HAL_Delay_us_>:
20021dec:	b513      	push	{r0, r1, r4, lr}
20021dee:	9001      	str	r0, [sp, #4]
20021df0:	9b01      	ldr	r3, [sp, #4]
20021df2:	4c1a      	ldr	r4, [pc, #104]	@ (20021e5c <HAL_Delay_us_+0x70>)
20021df4:	b133      	cbz	r3, 20021e04 <HAL_Delay_us_+0x18>
20021df6:	6823      	ldr	r3, [r4, #0]
20021df8:	b123      	cbz	r3, 20021e04 <HAL_Delay_us_+0x18>
20021dfa:	9b01      	ldr	r3, [sp, #4]
20021dfc:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20021e00:	d90c      	bls.n	20021e1c <HAL_Delay_us_+0x30>
20021e02:	e7fe      	b.n	20021e02 <HAL_Delay_us_+0x16>
20021e04:	2000      	movs	r0, #0
20021e06:	f003 f857 	bl	20024eb8 <HAL_RCC_GetHCLKFreq>
20021e0a:	4b15      	ldr	r3, [pc, #84]	@ (20021e60 <HAL_Delay_us_+0x74>)
20021e0c:	fbb0 f0f3 	udiv	r0, r0, r3
20021e10:	9b01      	ldr	r3, [sp, #4]
20021e12:	6020      	str	r0, [r4, #0]
20021e14:	2b00      	cmp	r3, #0
20021e16:	d1f0      	bne.n	20021dfa <HAL_Delay_us_+0xe>
20021e18:	b002      	add	sp, #8
20021e1a:	bd10      	pop	{r4, pc}
20021e1c:	9b01      	ldr	r3, [sp, #4]
20021e1e:	2b00      	cmp	r3, #0
20021e20:	d0fa      	beq.n	20021e18 <HAL_Delay_us_+0x2c>
20021e22:	4a10      	ldr	r2, [pc, #64]	@ (20021e64 <HAL_Delay_us_+0x78>)
20021e24:	6813      	ldr	r3, [r2, #0]
20021e26:	f013 0301 	ands.w	r3, r3, #1
20021e2a:	d10d      	bne.n	20021e48 <HAL_Delay_us_+0x5c>
20021e2c:	480e      	ldr	r0, [pc, #56]	@ (20021e68 <HAL_Delay_us_+0x7c>)
20021e2e:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
20021e32:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20021e36:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20021e3a:	6053      	str	r3, [r2, #4]
20021e3c:	6813      	ldr	r3, [r2, #0]
20021e3e:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
20021e42:	f043 0301 	orr.w	r3, r3, #1
20021e46:	6013      	str	r3, [r2, #0]
20021e48:	9b01      	ldr	r3, [sp, #4]
20021e4a:	6822      	ldr	r2, [r4, #0]
20021e4c:	4905      	ldr	r1, [pc, #20]	@ (20021e64 <HAL_Delay_us_+0x78>)
20021e4e:	4353      	muls	r3, r2
20021e50:	6848      	ldr	r0, [r1, #4]
20021e52:	684a      	ldr	r2, [r1, #4]
20021e54:	1a12      	subs	r2, r2, r0
20021e56:	429a      	cmp	r2, r3
20021e58:	d3fb      	bcc.n	20021e52 <HAL_Delay_us_+0x66>
20021e5a:	e7dd      	b.n	20021e18 <HAL_Delay_us_+0x2c>
20021e5c:	20049ed4 	.word	0x20049ed4
20021e60:	000f4240 	.word	0x000f4240
20021e64:	e0001000 	.word	0xe0001000
20021e68:	e000ed00 	.word	0xe000ed00

20021e6c <HAL_Delay_us2_>:
20021e6c:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021e6e:	9001      	str	r0, [sp, #4]
20021e70:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20021e74:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20021e78:	6944      	ldr	r4, [r0, #20]
20021e7a:	9b01      	ldr	r3, [sp, #4]
20021e7c:	4363      	muls	r3, r4
20021e7e:	fbb3 f3f2 	udiv	r3, r3, r2
20021e82:	9301      	str	r3, [sp, #4]
20021e84:	2300      	movs	r3, #0
20021e86:	6981      	ldr	r1, [r0, #24]
20021e88:	6982      	ldr	r2, [r0, #24]
20021e8a:	428a      	cmp	r2, r1
20021e8c:	d0fc      	beq.n	20021e88 <HAL_Delay_us2_+0x1c>
20021e8e:	bf25      	ittet	cs
20021e90:	1aa5      	subcs	r5, r4, r2
20021e92:	195b      	addcs	r3, r3, r5
20021e94:	185b      	addcc	r3, r3, r1
20021e96:	185b      	addcs	r3, r3, r1
20021e98:	9901      	ldr	r1, [sp, #4]
20021e9a:	bf38      	it	cc
20021e9c:	1a9b      	subcc	r3, r3, r2
20021e9e:	4299      	cmp	r1, r3
20021ea0:	d801      	bhi.n	20021ea6 <HAL_Delay_us2_+0x3a>
20021ea2:	b003      	add	sp, #12
20021ea4:	bd30      	pop	{r4, r5, pc}
20021ea6:	4611      	mov	r1, r2
20021ea8:	e7ee      	b.n	20021e88 <HAL_Delay_us2_+0x1c>

20021eaa <HAL_Delay_us>:
20021eaa:	4603      	mov	r3, r0
20021eac:	b570      	push	{r4, r5, r6, lr}
20021eae:	b1b8      	cbz	r0, 20021ee0 <HAL_Delay_us+0x36>
20021eb0:	f242 7510 	movw	r5, #10000	@ 0x2710
20021eb4:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
20021eb8:	42ab      	cmp	r3, r5
20021eba:	bf84      	itt	hi
20021ebc:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
20021ec0:	f242 7310 	movwhi	r3, #10000	@ 0x2710
20021ec4:	6932      	ldr	r2, [r6, #16]
20021ec6:	bf98      	it	ls
20021ec8:	2400      	movls	r4, #0
20021eca:	4618      	mov	r0, r3
20021ecc:	bf88      	it	hi
20021ece:	3c10      	subhi	r4, #16
20021ed0:	07d3      	lsls	r3, r2, #31
20021ed2:	d408      	bmi.n	20021ee6 <HAL_Delay_us+0x3c>
20021ed4:	f7ff ff8a 	bl	20021dec <HAL_Delay_us_>
20021ed8:	4623      	mov	r3, r4
20021eda:	2c00      	cmp	r4, #0
20021edc:	d1ec      	bne.n	20021eb8 <HAL_Delay_us+0xe>
20021ede:	e001      	b.n	20021ee4 <HAL_Delay_us+0x3a>
20021ee0:	f7ff ff84 	bl	20021dec <HAL_Delay_us_>
20021ee4:	bd70      	pop	{r4, r5, r6, pc}
20021ee6:	f7ff ffc1 	bl	20021e6c <HAL_Delay_us2_>
20021eea:	e7f5      	b.n	20021ed8 <HAL_Delay_us+0x2e>

20021eec <WDT_IRQHandler>:
20021eec:	4770      	bx	lr

20021eee <DBG_Trigger_IRQHandler>:
20021eee:	4770      	bx	lr

20021ef0 <NMI_Handler>:
20021ef0:	b508      	push	{r3, lr}
20021ef2:	4b05      	ldr	r3, [pc, #20]	@ (20021f08 <NMI_Handler+0x18>)
20021ef4:	6a1b      	ldr	r3, [r3, #32]
20021ef6:	005b      	lsls	r3, r3, #1
20021ef8:	d502      	bpl.n	20021f00 <NMI_Handler+0x10>
20021efa:	f7ff fff8 	bl	20021eee <DBG_Trigger_IRQHandler>
20021efe:	bd08      	pop	{r3, pc}
20021f00:	f7ff fff4 	bl	20021eec <WDT_IRQHandler>
20021f04:	e7fb      	b.n	20021efe <NMI_Handler+0xe>
20021f06:	bf00      	nop
20021f08:	5000b000 	.word	0x5000b000

20021f0c <HAL_AES_run_help>:
20021f0c:	b510      	push	{r4, lr}
20021f0e:	f101 4470 	add.w	r4, r1, #4026531840	@ 0xf0000000
20021f12:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
20021f16:	4c0e      	ldr	r4, [pc, #56]	@ (20021f50 <HAL_AES_run_help+0x44>)
20021f18:	bf38      	it	cc
20021f1a:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20021f1e:	6161      	str	r1, [r4, #20]
20021f20:	f102 4170 	add.w	r1, r2, #4026531840	@ 0xf0000000
20021f24:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
20021f28:	f103 030f 	add.w	r3, r3, #15
20021f2c:	ea4f 1323 	mov.w	r3, r3, asr #4
20021f30:	bf38      	it	cc
20021f32:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20021f36:	61a2      	str	r2, [r4, #24]
20021f38:	61e3      	str	r3, [r4, #28]
20021f3a:	6923      	ldr	r3, [r4, #16]
20021f3c:	b108      	cbz	r0, 20021f42 <HAL_AES_run_help+0x36>
20021f3e:	ea43 13c0 	orr.w	r3, r3, r0, lsl #7
20021f42:	4a03      	ldr	r2, [pc, #12]	@ (20021f50 <HAL_AES_run_help+0x44>)
20021f44:	6123      	str	r3, [r4, #16]
20021f46:	6813      	ldr	r3, [r2, #0]
20021f48:	f043 0301 	orr.w	r3, r3, #1
20021f4c:	6013      	str	r3, [r2, #0]
20021f4e:	bd10      	pop	{r4, pc}
20021f50:	5000d000 	.word	0x5000d000

20021f54 <HAL_AES_reset>:
20021f54:	2202      	movs	r2, #2
20021f56:	2000      	movs	r0, #0
20021f58:	4b01      	ldr	r3, [pc, #4]	@ (20021f60 <HAL_AES_reset+0xc>)
20021f5a:	601a      	str	r2, [r3, #0]
20021f5c:	6018      	str	r0, [r3, #0]
20021f5e:	4770      	bx	lr
20021f60:	5000d000 	.word	0x5000d000

20021f64 <HAL_AES_init>:
20021f64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20021f66:	461f      	mov	r7, r3
20021f68:	4b1e      	ldr	r3, [pc, #120]	@ (20021fe4 <HAL_AES_init+0x80>)
20021f6a:	4604      	mov	r4, r0
20021f6c:	685b      	ldr	r3, [r3, #4]
20021f6e:	4616      	mov	r6, r2
20021f70:	07db      	lsls	r3, r3, #31
20021f72:	d501      	bpl.n	20021f78 <HAL_AES_init+0x14>
20021f74:	f7ff ffee 	bl	20021f54 <HAL_AES_reset>
20021f78:	fab4 f084 	clz	r0, r4
20021f7c:	2918      	cmp	r1, #24
20021f7e:	ea4f 1050 	mov.w	r0, r0, lsr #5
20021f82:	ea4f 1540 	mov.w	r5, r0, lsl #5
20021f86:	d01c      	beq.n	20021fc2 <HAL_AES_init+0x5e>
20021f88:	2920      	cmp	r1, #32
20021f8a:	d01c      	beq.n	20021fc6 <HAL_AES_init+0x62>
20021f8c:	2910      	cmp	r1, #16
20021f8e:	d125      	bne.n	20021fdc <HAL_AES_init+0x78>
20021f90:	2300      	movs	r3, #0
20021f92:	b164      	cbz	r4, 20021fae <HAL_AES_init+0x4a>
20021f94:	4620      	mov	r0, r4
20021f96:	4a14      	ldr	r2, [pc, #80]	@ (20021fe8 <HAL_AES_init+0x84>)
20021f98:	f021 0103 	bic.w	r1, r1, #3
20021f9c:	4421      	add	r1, r4
20021f9e:	1b12      	subs	r2, r2, r4
20021fa0:	1814      	adds	r4, r2, r0
20021fa2:	f850 cb04 	ldr.w	ip, [r0], #4
20021fa6:	4281      	cmp	r1, r0
20021fa8:	f8c4 c000 	str.w	ip, [r4]
20021fac:	d1f8      	bne.n	20021fa0 <HAL_AES_init+0x3c>
20021fae:	ea47 0005 	orr.w	r0, r7, r5
20021fb2:	ea40 00c3 	orr.w	r0, r0, r3, lsl #3
20021fb6:	4b0b      	ldr	r3, [pc, #44]	@ (20021fe4 <HAL_AES_init+0x80>)
20021fb8:	6118      	str	r0, [r3, #16]
20021fba:	b107      	cbz	r7, 20021fbe <HAL_AES_init+0x5a>
20021fbc:	b92e      	cbnz	r6, 20021fca <HAL_AES_init+0x66>
20021fbe:	2000      	movs	r0, #0
20021fc0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20021fc2:	2301      	movs	r3, #1
20021fc4:	e7e5      	b.n	20021f92 <HAL_AES_init+0x2e>
20021fc6:	2302      	movs	r3, #2
20021fc8:	e7e3      	b.n	20021f92 <HAL_AES_init+0x2e>
20021fca:	6832      	ldr	r2, [r6, #0]
20021fcc:	621a      	str	r2, [r3, #32]
20021fce:	6872      	ldr	r2, [r6, #4]
20021fd0:	625a      	str	r2, [r3, #36]	@ 0x24
20021fd2:	68b2      	ldr	r2, [r6, #8]
20021fd4:	629a      	str	r2, [r3, #40]	@ 0x28
20021fd6:	68f2      	ldr	r2, [r6, #12]
20021fd8:	62da      	str	r2, [r3, #44]	@ 0x2c
20021fda:	e7f0      	b.n	20021fbe <HAL_AES_init+0x5a>
20021fdc:	f04f 30ff 	mov.w	r0, #4294967295
20021fe0:	e7ee      	b.n	20021fc0 <HAL_AES_init+0x5c>
20021fe2:	bf00      	nop
20021fe4:	5000d000 	.word	0x5000d000
20021fe8:	5000d030 	.word	0x5000d030

20021fec <HAL_AES_run>:
20021fec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20021fee:	2708      	movs	r7, #8
20021ff0:	4e17      	ldr	r6, [pc, #92]	@ (20022050 <HAL_AES_run+0x64>)
20021ff2:	4614      	mov	r4, r2
20021ff4:	461d      	mov	r5, r3
20021ff6:	f8c6 7088 	str.w	r7, [r6, #136]	@ 0x88
20021ffa:	f3bf 8f4f 	dsb	sy
20021ffe:	f3bf 8f6f 	isb	sy
20022002:	2700      	movs	r7, #0
20022004:	4e13      	ldr	r6, [pc, #76]	@ (20022054 <HAL_AES_run+0x68>)
20022006:	60f7      	str	r7, [r6, #12]
20022008:	f7ff ff80 	bl	20021f0c <HAL_AES_run_help>
2002200c:	6873      	ldr	r3, [r6, #4]
2002200e:	07db      	lsls	r3, r3, #31
20022010:	d4fc      	bmi.n	2002200c <HAL_AES_run+0x20>
20022012:	68b0      	ldr	r0, [r6, #8]
20022014:	f000 0006 	and.w	r0, r0, #6
20022018:	3800      	subs	r0, #0
2002201a:	bf18      	it	ne
2002201c:	2001      	movne	r0, #1
2002201e:	f1b4 4fc0 	cmp.w	r4, #1610612736	@ 0x60000000
20022022:	d313      	bcc.n	2002204c <HAL_AES_run+0x60>
20022024:	2d00      	cmp	r5, #0
20022026:	dd11      	ble.n	2002204c <HAL_AES_run+0x60>
20022028:	f004 031f 	and.w	r3, r4, #31
2002202c:	442b      	add	r3, r5
2002202e:	f3bf 8f4f 	dsb	sy
20022032:	4622      	mov	r2, r4
20022034:	4c08      	ldr	r4, [pc, #32]	@ (20022058 <HAL_AES_run+0x6c>)
20022036:	4413      	add	r3, r2
20022038:	f8c4 225c 	str.w	r2, [r4, #604]	@ 0x25c
2002203c:	3220      	adds	r2, #32
2002203e:	1a99      	subs	r1, r3, r2
20022040:	2900      	cmp	r1, #0
20022042:	dcf9      	bgt.n	20022038 <HAL_AES_run+0x4c>
20022044:	f3bf 8f4f 	dsb	sy
20022048:	f3bf 8f6f 	isb	sy
2002204c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002204e:	bf00      	nop
20022050:	e000e100 	.word	0xe000e100
20022054:	5000d000 	.word	0x5000d000
20022058:	e000ed00 	.word	0xe000ed00

2002205c <HAL_NVIC_SetPriority>:
2002205c:	2a0f      	cmp	r2, #15
2002205e:	b530      	push	{r4, r5, lr}
20022060:	d900      	bls.n	20022064 <HAL_NVIC_SetPriority+0x8>
20022062:	e7fe      	b.n	20022062 <HAL_NVIC_SetPriority+0x6>
20022064:	290f      	cmp	r1, #15
20022066:	d900      	bls.n	2002206a <HAL_NVIC_SetPriority+0xe>
20022068:	e7fe      	b.n	20022068 <HAL_NVIC_SetPriority+0xc>
2002206a:	4b15      	ldr	r3, [pc, #84]	@ (200220c0 <HAL_NVIC_SetPriority+0x64>)
2002206c:	68dc      	ldr	r4, [r3, #12]
2002206e:	f3c4 2402 	ubfx	r4, r4, #8, #3
20022072:	f1c4 0307 	rsb	r3, r4, #7
20022076:	1ce5      	adds	r5, r4, #3
20022078:	2b03      	cmp	r3, #3
2002207a:	bf28      	it	cs
2002207c:	2303      	movcs	r3, #3
2002207e:	2d06      	cmp	r5, #6
20022080:	f04f 35ff 	mov.w	r5, #4294967295
20022084:	bf94      	ite	ls
20022086:	2400      	movls	r4, #0
20022088:	3c04      	subhi	r4, #4
2002208a:	fa05 f303 	lsl.w	r3, r5, r3
2002208e:	ea21 0303 	bic.w	r3, r1, r3
20022092:	40a5      	lsls	r5, r4
20022094:	ea22 0205 	bic.w	r2, r2, r5
20022098:	40a3      	lsls	r3, r4
2002209a:	2800      	cmp	r0, #0
2002209c:	ea43 0302 	orr.w	r3, r3, r2
200220a0:	bfac      	ite	ge
200220a2:	f100 4060 	addge.w	r0, r0, #3758096384	@ 0xe0000000
200220a6:	4a07      	ldrlt	r2, [pc, #28]	@ (200220c4 <HAL_NVIC_SetPriority+0x68>)
200220a8:	ea4f 1343 	mov.w	r3, r3, lsl #5
200220ac:	b2db      	uxtb	r3, r3
200220ae:	bfab      	itete	ge
200220b0:	f500 4061 	addge.w	r0, r0, #57600	@ 0xe100
200220b4:	f000 000f 	andlt.w	r0, r0, #15
200220b8:	f880 3300 	strbge.w	r3, [r0, #768]	@ 0x300
200220bc:	5413      	strblt	r3, [r2, r0]
200220be:	bd30      	pop	{r4, r5, pc}
200220c0:	e000ed00 	.word	0xe000ed00
200220c4:	e000ed14 	.word	0xe000ed14

200220c8 <HAL_NVIC_EnableIRQ>:
200220c8:	2800      	cmp	r0, #0
200220ca:	da00      	bge.n	200220ce <HAL_NVIC_EnableIRQ+0x6>
200220cc:	e7fe      	b.n	200220cc <HAL_NVIC_EnableIRQ+0x4>
200220ce:	2301      	movs	r3, #1
200220d0:	0941      	lsrs	r1, r0, #5
200220d2:	4a03      	ldr	r2, [pc, #12]	@ (200220e0 <HAL_NVIC_EnableIRQ+0x18>)
200220d4:	f000 001f 	and.w	r0, r0, #31
200220d8:	4083      	lsls	r3, r0
200220da:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
200220de:	4770      	bx	lr
200220e0:	e000e100 	.word	0xe000e100

200220e4 <HAL_NVIC_DisableIRQ>:
200220e4:	2800      	cmp	r0, #0
200220e6:	da00      	bge.n	200220ea <HAL_NVIC_DisableIRQ+0x6>
200220e8:	e7fe      	b.n	200220e8 <HAL_NVIC_DisableIRQ+0x4>
200220ea:	2201      	movs	r2, #1
200220ec:	4906      	ldr	r1, [pc, #24]	@ (20022108 <HAL_NVIC_DisableIRQ+0x24>)
200220ee:	0943      	lsrs	r3, r0, #5
200220f0:	f000 001f 	and.w	r0, r0, #31
200220f4:	4082      	lsls	r2, r0
200220f6:	3320      	adds	r3, #32
200220f8:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200220fc:	f3bf 8f4f 	dsb	sy
20022100:	f3bf 8f6f 	isb	sy
20022104:	4770      	bx	lr
20022106:	bf00      	nop
20022108:	e000e100 	.word	0xe000e100

2002210c <DMA_Init>:
2002210c:	2302      	movs	r3, #2
2002210e:	b530      	push	{r4, r5, lr}
20022110:	6a42      	ldr	r2, [r0, #36]	@ 0x24
20022112:	f880 302d 	strb.w	r3, [r0, #45]	@ 0x2d
20022116:	6803      	ldr	r3, [r0, #0]
20022118:	611a      	str	r2, [r3, #16]
2002211a:	e9d0 3402 	ldrd	r3, r4, [r0, #8]
2002211e:	4323      	orrs	r3, r4
20022120:	6904      	ldr	r4, [r0, #16]
20022122:	6801      	ldr	r1, [r0, #0]
20022124:	4323      	orrs	r3, r4
20022126:	6944      	ldr	r4, [r0, #20]
20022128:	680a      	ldr	r2, [r1, #0]
2002212a:	4323      	orrs	r3, r4
2002212c:	6984      	ldr	r4, [r0, #24]
2002212e:	f36f 120e 	bfc	r2, #4, #11
20022132:	4323      	orrs	r3, r4
20022134:	69c4      	ldr	r4, [r0, #28]
20022136:	4323      	orrs	r3, r4
20022138:	6a04      	ldr	r4, [r0, #32]
2002213a:	4323      	orrs	r3, r4
2002213c:	4313      	orrs	r3, r2
2002213e:	600b      	str	r3, [r1, #0]
20022140:	6883      	ldr	r3, [r0, #8]
20022142:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022146:	d018      	beq.n	2002217a <DMA_Init+0x6e>
20022148:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
2002214a:	6c82      	ldr	r2, [r0, #72]	@ 0x48
2002214c:	f3c1 0387 	ubfx	r3, r1, #2, #8
20022150:	06c9      	lsls	r1, r1, #27
20022152:	d41b      	bmi.n	2002218c <DMA_Init+0x80>
20022154:	243f      	movs	r4, #63	@ 0x3f
20022156:	f003 0307 	and.w	r3, r3, #7
2002215a:	f8d2 10a8 	ldr.w	r1, [r2, #168]	@ 0xa8
2002215e:	00db      	lsls	r3, r3, #3
20022160:	409c      	lsls	r4, r3
20022162:	ea21 0104 	bic.w	r1, r1, r4
20022166:	f8c2 10a8 	str.w	r1, [r2, #168]	@ 0xa8
2002216a:	6c81      	ldr	r1, [r0, #72]	@ 0x48
2002216c:	6842      	ldr	r2, [r0, #4]
2002216e:	f8d1 40a8 	ldr.w	r4, [r1, #168]	@ 0xa8
20022172:	409a      	lsls	r2, r3
20022174:	4322      	orrs	r2, r4
20022176:	f8c1 20a8 	str.w	r2, [r1, #168]	@ 0xa8
2002217a:	6982      	ldr	r2, [r0, #24]
2002217c:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
20022180:	d018      	beq.n	200221b4 <DMA_Init+0xa8>
20022182:	f5b2 6f00 	cmp.w	r2, #2048	@ 0x800
20022186:	d01f      	beq.n	200221c8 <DMA_Init+0xbc>
20022188:	b1aa      	cbz	r2, 200221b6 <DMA_Init+0xaa>
2002218a:	e7fe      	b.n	2002218a <DMA_Init+0x7e>
2002218c:	243f      	movs	r4, #63	@ 0x3f
2002218e:	f003 0303 	and.w	r3, r3, #3
20022192:	f8d2 10ac 	ldr.w	r1, [r2, #172]	@ 0xac
20022196:	00db      	lsls	r3, r3, #3
20022198:	409c      	lsls	r4, r3
2002219a:	ea21 0104 	bic.w	r1, r1, r4
2002219e:	f8c2 10ac 	str.w	r1, [r2, #172]	@ 0xac
200221a2:	6c81      	ldr	r1, [r0, #72]	@ 0x48
200221a4:	6842      	ldr	r2, [r0, #4]
200221a6:	f8d1 40ac 	ldr.w	r4, [r1, #172]	@ 0xac
200221aa:	409a      	lsls	r2, r3
200221ac:	4322      	orrs	r2, r4
200221ae:	f8c1 20ac 	str.w	r2, [r1, #172]	@ 0xac
200221b2:	e7e2      	b.n	2002217a <DMA_Init+0x6e>
200221b4:	2201      	movs	r2, #1
200221b6:	6943      	ldr	r3, [r0, #20]
200221b8:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
200221bc:	d006      	beq.n	200221cc <DMA_Init+0xc0>
200221be:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
200221c2:	d02b      	beq.n	2002221c <DMA_Init+0x110>
200221c4:	b11b      	cbz	r3, 200221ce <DMA_Init+0xc2>
200221c6:	e7fe      	b.n	200221c6 <DMA_Init+0xba>
200221c8:	2202      	movs	r2, #2
200221ca:	e7f4      	b.n	200221b6 <DMA_Init+0xaa>
200221cc:	2301      	movs	r3, #1
200221ce:	6901      	ldr	r1, [r0, #16]
200221d0:	f1a1 0480 	sub.w	r4, r1, #128	@ 0x80
200221d4:	4261      	negs	r1, r4
200221d6:	4161      	adcs	r1, r4
200221d8:	68c4      	ldr	r4, [r0, #12]
200221da:	f1a4 0540 	sub.w	r5, r4, #64	@ 0x40
200221de:	426c      	negs	r4, r5
200221e0:	416c      	adcs	r4, r5
200221e2:	6885      	ldr	r5, [r0, #8]
200221e4:	2d10      	cmp	r5, #16
200221e6:	bf1f      	itttt	ne
200221e8:	f880 1065 	strbne.w	r1, [r0, #101]	@ 0x65
200221ec:	4619      	movne	r1, r3
200221ee:	4613      	movne	r3, r2
200221f0:	460a      	movne	r2, r1
200221f2:	f880 3067 	strb.w	r3, [r0, #103]	@ 0x67
200221f6:	f880 2066 	strb.w	r2, [r0, #102]	@ 0x66
200221fa:	f04f 0300 	mov.w	r3, #0
200221fe:	f04f 0201 	mov.w	r2, #1
20022202:	6443      	str	r3, [r0, #68]	@ 0x44
20022204:	bf06      	itte	eq
20022206:	f880 4065 	strbeq.w	r4, [r0, #101]	@ 0x65
2002220a:	f880 1064 	strbeq.w	r1, [r0, #100]	@ 0x64
2002220e:	f880 4064 	strbne.w	r4, [r0, #100]	@ 0x64
20022212:	f880 202d 	strb.w	r2, [r0, #45]	@ 0x2d
20022216:	f880 302c 	strb.w	r3, [r0, #44]	@ 0x2c
2002221a:	bd30      	pop	{r4, r5, pc}
2002221c:	2302      	movs	r3, #2
2002221e:	e7d6      	b.n	200221ce <DMA_Init+0xc2>

20022220 <DMA_AllocChannel>:
20022220:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022222:	4b2c      	ldr	r3, [pc, #176]	@ (200222d4 <DMA_AllocChannel+0xb4>)
20022224:	6802      	ldr	r2, [r0, #0]
20022226:	4413      	add	r3, r2
20022228:	2ba0      	cmp	r3, #160	@ 0xa0
2002222a:	d904      	bls.n	20022236 <DMA_AllocChannel+0x16>
2002222c:	4b2a      	ldr	r3, [pc, #168]	@ (200222d8 <DMA_AllocChannel+0xb8>)
2002222e:	4413      	add	r3, r2
20022230:	2ba0      	cmp	r3, #160	@ 0xa0
20022232:	d90f      	bls.n	20022254 <DMA_AllocChannel+0x34>
20022234:	e7fe      	b.n	20022234 <DMA_AllocChannel+0x14>
20022236:	2632      	movs	r6, #50	@ 0x32
20022238:	f8df c0a8 	ldr.w	ip, [pc, #168]	@ 200222e4 <DMA_AllocChannel+0xc4>
2002223c:	4b27      	ldr	r3, [pc, #156]	@ (200222dc <DMA_AllocChannel+0xbc>)
2002223e:	f3ef 8710 	mrs	r7, PRIMASK
20022242:	2201      	movs	r2, #1
20022244:	f382 8810 	msr	PRIMASK, r2
20022248:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
2002224a:	2d1f      	cmp	r5, #31
2002224c:	ea4f 0495 	mov.w	r4, r5, lsr #2
20022250:	d905      	bls.n	2002225e <DMA_AllocChannel+0x3e>
20022252:	e7fe      	b.n	20022252 <DMA_AllocChannel+0x32>
20022254:	2602      	movs	r6, #2
20022256:	f8df c090 	ldr.w	ip, [pc, #144]	@ 200222e8 <DMA_AllocChannel+0xc8>
2002225a:	4b21      	ldr	r3, [pc, #132]	@ (200222e0 <DMA_AllocChannel+0xc0>)
2002225c:	e7ef      	b.n	2002223e <DMA_AllocChannel+0x1e>
2002225e:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
20022262:	f895 e004 	ldrb.w	lr, [r5, #4]
20022266:	f1be 0f00 	cmp.w	lr, #0
2002226a:	d02e      	beq.n	200222ca <DMA_AllocChannel+0xaa>
2002226c:	f853 2034 	ldr.w	r2, [r3, r4, lsl #3]
20022270:	4282      	cmp	r2, r0
20022272:	d103      	bne.n	2002227c <DMA_AllocChannel+0x5c>
20022274:	f387 8810 	msr	PRIMASK, r7
20022278:	2002      	movs	r0, #2
2002227a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002227c:	2200      	movs	r2, #0
2002227e:	791c      	ldrb	r4, [r3, #4]
20022280:	461d      	mov	r5, r3
20022282:	b9e4      	cbnz	r4, 200222be <DMA_AllocChannel+0x9e>
20022284:	2301      	movs	r3, #1
20022286:	712b      	strb	r3, [r5, #4]
20022288:	2314      	movs	r3, #20
2002228a:	fb03 c302 	mla	r3, r3, r2, ip
2002228e:	4416      	add	r6, r2
20022290:	0092      	lsls	r2, r2, #2
20022292:	b274      	sxtb	r4, r6
20022294:	6003      	str	r3, [r0, #0]
20022296:	64c2      	str	r2, [r0, #76]	@ 0x4c
20022298:	f387 8810 	msr	PRIMASK, r7
2002229c:	b121      	cbz	r1, 200222a8 <DMA_AllocChannel+0x88>
2002229e:	682b      	ldr	r3, [r5, #0]
200222a0:	4283      	cmp	r3, r0
200222a2:	d001      	beq.n	200222a8 <DMA_AllocChannel+0x88>
200222a4:	f7ff ff32 	bl	2002210c <DMA_Init>
200222a8:	2200      	movs	r2, #0
200222aa:	6028      	str	r0, [r5, #0]
200222ac:	4611      	mov	r1, r2
200222ae:	4620      	mov	r0, r4
200222b0:	f7ff fed4 	bl	2002205c <HAL_NVIC_SetPriority>
200222b4:	4620      	mov	r0, r4
200222b6:	f7ff ff07 	bl	200220c8 <HAL_NVIC_EnableIRQ>
200222ba:	2000      	movs	r0, #0
200222bc:	e7dd      	b.n	2002227a <DMA_AllocChannel+0x5a>
200222be:	3201      	adds	r2, #1
200222c0:	2a08      	cmp	r2, #8
200222c2:	f103 0308 	add.w	r3, r3, #8
200222c6:	d1da      	bne.n	2002227e <DMA_AllocChannel+0x5e>
200222c8:	e7d4      	b.n	20022274 <DMA_AllocChannel+0x54>
200222ca:	4434      	add	r4, r6
200222cc:	712a      	strb	r2, [r5, #4]
200222ce:	b264      	sxtb	r4, r4
200222d0:	e7e2      	b.n	20022298 <DMA_AllocChannel+0x78>
200222d2:	bf00      	nop
200222d4:	aff7eff8 	.word	0xaff7eff8
200222d8:	bfffeff8 	.word	0xbfffeff8
200222dc:	20049f1c 	.word	0x20049f1c
200222e0:	20049edc 	.word	0x20049edc
200222e4:	50081008 	.word	0x50081008
200222e8:	40001008 	.word	0x40001008

200222ec <DMA_FreeChannel.isra.0>:
200222ec:	b538      	push	{r3, r4, r5, lr}
200222ee:	4a13      	ldr	r2, [pc, #76]	@ (2002233c <DMA_FreeChannel.isra.0+0x50>)
200222f0:	6c83      	ldr	r3, [r0, #72]	@ 0x48
200222f2:	4293      	cmp	r3, r2
200222f4:	d003      	beq.n	200222fe <DMA_FreeChannel.isra.0+0x12>
200222f6:	4a12      	ldr	r2, [pc, #72]	@ (20022340 <DMA_FreeChannel.isra.0+0x54>)
200222f8:	4293      	cmp	r3, r2
200222fa:	d008      	beq.n	2002230e <DMA_FreeChannel.isra.0+0x22>
200222fc:	e7fe      	b.n	200222fc <DMA_FreeChannel.isra.0+0x10>
200222fe:	2132      	movs	r1, #50	@ 0x32
20022300:	4a10      	ldr	r2, [pc, #64]	@ (20022344 <DMA_FreeChannel.isra.0+0x58>)
20022302:	6cc4      	ldr	r4, [r0, #76]	@ 0x4c
20022304:	2c1f      	cmp	r4, #31
20022306:	ea4f 0394 	mov.w	r3, r4, lsr #2
2002230a:	d903      	bls.n	20022314 <DMA_FreeChannel.isra.0+0x28>
2002230c:	e7fe      	b.n	2002230c <DMA_FreeChannel.isra.0+0x20>
2002230e:	2102      	movs	r1, #2
20022310:	4a0d      	ldr	r2, [pc, #52]	@ (20022348 <DMA_FreeChannel.isra.0+0x5c>)
20022312:	e7f6      	b.n	20022302 <DMA_FreeChannel.isra.0+0x16>
20022314:	f3ef 8410 	mrs	r4, PRIMASK
20022318:	2501      	movs	r5, #1
2002231a:	f385 8810 	msr	PRIMASK, r5
2002231e:	eb02 05c3 	add.w	r5, r2, r3, lsl #3
20022322:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
20022326:	4290      	cmp	r0, r2
20022328:	d105      	bne.n	20022336 <DMA_FreeChannel.isra.0+0x4a>
2002232a:	1858      	adds	r0, r3, r1
2002232c:	b240      	sxtb	r0, r0
2002232e:	f7ff fed9 	bl	200220e4 <HAL_NVIC_DisableIRQ>
20022332:	2300      	movs	r3, #0
20022334:	712b      	strb	r3, [r5, #4]
20022336:	f384 8810 	msr	PRIMASK, r4
2002233a:	bd38      	pop	{r3, r4, r5, pc}
2002233c:	50081000 	.word	0x50081000
20022340:	40001000 	.word	0x40001000
20022344:	20049f1c 	.word	0x20049f1c
20022348:	20049edc 	.word	0x20049edc

2002234c <HAL_DMA_Init>:
2002234c:	b538      	push	{r3, r4, r5, lr}
2002234e:	4604      	mov	r4, r0
20022350:	2800      	cmp	r0, #0
20022352:	d053      	beq.n	200223fc <HAL_DMA_Init+0xb0>
20022354:	6883      	ldr	r3, [r0, #8]
20022356:	f033 0210 	bics.w	r2, r3, #16
2002235a:	d003      	beq.n	20022364 <HAL_DMA_Init+0x18>
2002235c:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022360:	d000      	beq.n	20022364 <HAL_DMA_Init+0x18>
20022362:	e7fe      	b.n	20022362 <HAL_DMA_Init+0x16>
20022364:	68e3      	ldr	r3, [r4, #12]
20022366:	f033 0340 	bics.w	r3, r3, #64	@ 0x40
2002236a:	d000      	beq.n	2002236e <HAL_DMA_Init+0x22>
2002236c:	e7fe      	b.n	2002236c <HAL_DMA_Init+0x20>
2002236e:	6923      	ldr	r3, [r4, #16]
20022370:	f033 0380 	bics.w	r3, r3, #128	@ 0x80
20022374:	d000      	beq.n	20022378 <HAL_DMA_Init+0x2c>
20022376:	e7fe      	b.n	20022376 <HAL_DMA_Init+0x2a>
20022378:	6963      	ldr	r3, [r4, #20]
2002237a:	f433 7280 	bics.w	r2, r3, #256	@ 0x100
2002237e:	d003      	beq.n	20022388 <HAL_DMA_Init+0x3c>
20022380:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
20022384:	d000      	beq.n	20022388 <HAL_DMA_Init+0x3c>
20022386:	e7fe      	b.n	20022386 <HAL_DMA_Init+0x3a>
20022388:	69a3      	ldr	r3, [r4, #24]
2002238a:	f433 6280 	bics.w	r2, r3, #1024	@ 0x400
2002238e:	d003      	beq.n	20022398 <HAL_DMA_Init+0x4c>
20022390:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
20022394:	d000      	beq.n	20022398 <HAL_DMA_Init+0x4c>
20022396:	e7fe      	b.n	20022396 <HAL_DMA_Init+0x4a>
20022398:	69e3      	ldr	r3, [r4, #28]
2002239a:	f033 0320 	bics.w	r3, r3, #32
2002239e:	d000      	beq.n	200223a2 <HAL_DMA_Init+0x56>
200223a0:	e7fe      	b.n	200223a0 <HAL_DMA_Init+0x54>
200223a2:	6a23      	ldr	r3, [r4, #32]
200223a4:	f433 5340 	bics.w	r3, r3, #12288	@ 0x3000
200223a8:	d000      	beq.n	200223ac <HAL_DMA_Init+0x60>
200223aa:	e7fe      	b.n	200223aa <HAL_DMA_Init+0x5e>
200223ac:	6863      	ldr	r3, [r4, #4]
200223ae:	2b3f      	cmp	r3, #63	@ 0x3f
200223b0:	d900      	bls.n	200223b4 <HAL_DMA_Init+0x68>
200223b2:	e7fe      	b.n	200223b2 <HAL_DMA_Init+0x66>
200223b4:	6822      	ldr	r2, [r4, #0]
200223b6:	4b13      	ldr	r3, [pc, #76]	@ (20022404 <HAL_DMA_Init+0xb8>)
200223b8:	4413      	add	r3, r2
200223ba:	2b8c      	cmp	r3, #140	@ 0x8c
200223bc:	d813      	bhi.n	200223e6 <HAL_DMA_Init+0x9a>
200223be:	2214      	movs	r2, #20
200223c0:	fbb3 f3f2 	udiv	r3, r3, r2
200223c4:	009b      	lsls	r3, r3, #2
200223c6:	64e3      	str	r3, [r4, #76]	@ 0x4c
200223c8:	4b0f      	ldr	r3, [pc, #60]	@ (20022408 <HAL_DMA_Init+0xbc>)
200223ca:	64a3      	str	r3, [r4, #72]	@ 0x48
200223cc:	2100      	movs	r1, #0
200223ce:	4620      	mov	r0, r4
200223d0:	f7ff ff26 	bl	20022220 <DMA_AllocChannel>
200223d4:	4605      	mov	r5, r0
200223d6:	b998      	cbnz	r0, 20022400 <HAL_DMA_Init+0xb4>
200223d8:	4620      	mov	r0, r4
200223da:	f7ff fe97 	bl	2002210c <DMA_Init>
200223de:	f7ff ff85 	bl	200222ec <DMA_FreeChannel.isra.0>
200223e2:	4628      	mov	r0, r5
200223e4:	bd38      	pop	{r3, r4, r5, pc}
200223e6:	4b09      	ldr	r3, [pc, #36]	@ (2002240c <HAL_DMA_Init+0xc0>)
200223e8:	4413      	add	r3, r2
200223ea:	2b8c      	cmp	r3, #140	@ 0x8c
200223ec:	d8ee      	bhi.n	200223cc <HAL_DMA_Init+0x80>
200223ee:	2214      	movs	r2, #20
200223f0:	fbb3 f3f2 	udiv	r3, r3, r2
200223f4:	009b      	lsls	r3, r3, #2
200223f6:	64e3      	str	r3, [r4, #76]	@ 0x4c
200223f8:	4b05      	ldr	r3, [pc, #20]	@ (20022410 <HAL_DMA_Init+0xc4>)
200223fa:	e7e6      	b.n	200223ca <HAL_DMA_Init+0x7e>
200223fc:	2501      	movs	r5, #1
200223fe:	e7f0      	b.n	200223e2 <HAL_DMA_Init+0x96>
20022400:	2502      	movs	r5, #2
20022402:	e7ee      	b.n	200223e2 <HAL_DMA_Init+0x96>
20022404:	aff7eff8 	.word	0xaff7eff8
20022408:	50081000 	.word	0x50081000
2002240c:	bfffeff8 	.word	0xbfffeff8
20022410:	40001000 	.word	0x40001000

20022414 <HAL_DMA_DeInit>:
20022414:	b510      	push	{r4, lr}
20022416:	4604      	mov	r4, r0
20022418:	2800      	cmp	r0, #0
2002241a:	d051      	beq.n	200224c0 <HAL_DMA_DeInit+0xac>
2002241c:	6802      	ldr	r2, [r0, #0]
2002241e:	6813      	ldr	r3, [r2, #0]
20022420:	f023 0301 	bic.w	r3, r3, #1
20022424:	6013      	str	r3, [r2, #0]
20022426:	6802      	ldr	r2, [r0, #0]
20022428:	4b26      	ldr	r3, [pc, #152]	@ (200224c4 <HAL_DMA_DeInit+0xb0>)
2002242a:	4413      	add	r3, r2
2002242c:	2b8c      	cmp	r3, #140	@ 0x8c
2002242e:	d82f      	bhi.n	20022490 <HAL_DMA_DeInit+0x7c>
20022430:	2114      	movs	r1, #20
20022432:	fbb3 f3f1 	udiv	r3, r3, r1
20022436:	009b      	lsls	r3, r3, #2
20022438:	64c3      	str	r3, [r0, #76]	@ 0x4c
2002243a:	4b23      	ldr	r3, [pc, #140]	@ (200224c8 <HAL_DMA_DeInit+0xb4>)
2002243c:	64a3      	str	r3, [r4, #72]	@ 0x48
2002243e:	2300      	movs	r3, #0
20022440:	6013      	str	r3, [r2, #0]
20022442:	e9d4 1312 	ldrd	r1, r3, [r4, #72]	@ 0x48
20022446:	f003 021c 	and.w	r2, r3, #28
2002244a:	2301      	movs	r3, #1
2002244c:	4093      	lsls	r3, r2
2002244e:	604b      	str	r3, [r1, #4]
20022450:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
20022452:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
20022454:	2b0f      	cmp	r3, #15
20022456:	ea4f 0293 	mov.w	r2, r3, lsr #2
2002245a:	d824      	bhi.n	200224a6 <HAL_DMA_DeInit+0x92>
2002245c:	203f      	movs	r0, #63	@ 0x3f
2002245e:	005b      	lsls	r3, r3, #1
20022460:	f8d1 20a8 	ldr.w	r2, [r1, #168]	@ 0xa8
20022464:	f003 0338 	and.w	r3, r3, #56	@ 0x38
20022468:	fa00 f303 	lsl.w	r3, r0, r3
2002246c:	ea22 0303 	bic.w	r3, r2, r3
20022470:	f8c1 30a8 	str.w	r3, [r1, #168]	@ 0xa8
20022474:	4620      	mov	r0, r4
20022476:	f7ff ff39 	bl	200222ec <DMA_FreeChannel.isra.0>
2002247a:	2000      	movs	r0, #0
2002247c:	e9c4 000d 	strd	r0, r0, [r4, #52]	@ 0x34
20022480:	e9c4 000f 	strd	r0, r0, [r4, #60]	@ 0x3c
20022484:	6460      	str	r0, [r4, #68]	@ 0x44
20022486:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
2002248a:	f884 002d 	strb.w	r0, [r4, #45]	@ 0x2d
2002248e:	bd10      	pop	{r4, pc}
20022490:	4b0e      	ldr	r3, [pc, #56]	@ (200224cc <HAL_DMA_DeInit+0xb8>)
20022492:	4413      	add	r3, r2
20022494:	2b8c      	cmp	r3, #140	@ 0x8c
20022496:	d8d2      	bhi.n	2002243e <HAL_DMA_DeInit+0x2a>
20022498:	2114      	movs	r1, #20
2002249a:	fbb3 f3f1 	udiv	r3, r3, r1
2002249e:	009b      	lsls	r3, r3, #2
200224a0:	64c3      	str	r3, [r0, #76]	@ 0x4c
200224a2:	4b0b      	ldr	r3, [pc, #44]	@ (200224d0 <HAL_DMA_DeInit+0xbc>)
200224a4:	e7ca      	b.n	2002243c <HAL_DMA_DeInit+0x28>
200224a6:	f002 0303 	and.w	r3, r2, #3
200224aa:	223f      	movs	r2, #63	@ 0x3f
200224ac:	f8d1 00ac 	ldr.w	r0, [r1, #172]	@ 0xac
200224b0:	00db      	lsls	r3, r3, #3
200224b2:	fa02 f303 	lsl.w	r3, r2, r3
200224b6:	ea20 0303 	bic.w	r3, r0, r3
200224ba:	f8c1 30ac 	str.w	r3, [r1, #172]	@ 0xac
200224be:	e7d9      	b.n	20022474 <HAL_DMA_DeInit+0x60>
200224c0:	2001      	movs	r0, #1
200224c2:	e7e4      	b.n	2002248e <HAL_DMA_DeInit+0x7a>
200224c4:	aff7eff8 	.word	0xaff7eff8
200224c8:	50081000 	.word	0x50081000
200224cc:	bfffeff8 	.word	0xbfffeff8
200224d0:	40001000 	.word	0x40001000

200224d4 <HAL_DMA_PollForTransfer>:
200224d4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
200224d8:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
200224dc:	4617      	mov	r7, r2
200224de:	2b02      	cmp	r3, #2
200224e0:	4604      	mov	r4, r0
200224e2:	4688      	mov	r8, r1
200224e4:	b2da      	uxtb	r2, r3
200224e6:	d005      	beq.n	200224f4 <HAL_DMA_PollForTransfer+0x20>
200224e8:	2304      	movs	r3, #4
200224ea:	6443      	str	r3, [r0, #68]	@ 0x44
200224ec:	2300      	movs	r3, #0
200224ee:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
200224f2:	e006      	b.n	20022502 <HAL_DMA_PollForTransfer+0x2e>
200224f4:	6803      	ldr	r3, [r0, #0]
200224f6:	681b      	ldr	r3, [r3, #0]
200224f8:	0699      	lsls	r1, r3, #26
200224fa:	d505      	bpl.n	20022508 <HAL_DMA_PollForTransfer+0x34>
200224fc:	f44f 7380 	mov.w	r3, #256	@ 0x100
20022500:	6443      	str	r3, [r0, #68]	@ 0x44
20022502:	2001      	movs	r0, #1
20022504:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
20022508:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
2002250a:	f005 051c 	and.w	r5, r5, #28
2002250e:	f1b8 0f00 	cmp.w	r8, #0
20022512:	d123      	bne.n	2002255c <HAL_DMA_PollForTransfer+0x88>
20022514:	fa02 f505 	lsl.w	r5, r2, r5
20022518:	f7ff fc62 	bl	20021de0 <HAL_GetTick>
2002251c:	f04f 0a08 	mov.w	sl, #8
20022520:	4681      	mov	r9, r0
20022522:	e9d4 6312 	ldrd	r6, r3, [r4, #72]	@ 0x48
20022526:	f003 031c 	and.w	r3, r3, #28
2002252a:	fa0a f103 	lsl.w	r1, sl, r3
2002252e:	6832      	ldr	r2, [r6, #0]
20022530:	ea12 0b05 	ands.w	fp, r2, r5
20022534:	d016      	beq.n	20022564 <HAL_DMA_PollForTransfer+0x90>
20022536:	f1b8 0f00 	cmp.w	r8, #0
2002253a:	d136      	bne.n	200225aa <HAL_DMA_PollForTransfer+0xd6>
2002253c:	2202      	movs	r2, #2
2002253e:	fa02 f303 	lsl.w	r3, r2, r3
20022542:	6073      	str	r3, [r6, #4]
20022544:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20022546:	b92b      	cbnz	r3, 20022554 <HAL_DMA_PollForTransfer+0x80>
20022548:	4620      	mov	r0, r4
2002254a:	f7ff fecf 	bl	200222ec <DMA_FreeChannel.isra.0>
2002254e:	2301      	movs	r3, #1
20022550:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
20022554:	2000      	movs	r0, #0
20022556:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
2002255a:	e7d3      	b.n	20022504 <HAL_DMA_PollForTransfer+0x30>
2002255c:	2304      	movs	r3, #4
2002255e:	fa03 f505 	lsl.w	r5, r3, r5
20022562:	e7d9      	b.n	20022518 <HAL_DMA_PollForTransfer+0x44>
20022564:	6832      	ldr	r2, [r6, #0]
20022566:	4211      	tst	r1, r2
20022568:	d00c      	beq.n	20022584 <HAL_DMA_PollForTransfer+0xb0>
2002256a:	2501      	movs	r5, #1
2002256c:	fa05 f303 	lsl.w	r3, r5, r3
20022570:	6073      	str	r3, [r6, #4]
20022572:	4620      	mov	r0, r4
20022574:	6465      	str	r5, [r4, #68]	@ 0x44
20022576:	f7ff feb9 	bl	200222ec <DMA_FreeChannel.isra.0>
2002257a:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
2002257e:	f884 b02c 	strb.w	fp, [r4, #44]	@ 0x2c
20022582:	e7be      	b.n	20022502 <HAL_DMA_PollForTransfer+0x2e>
20022584:	1c7a      	adds	r2, r7, #1
20022586:	d0d2      	beq.n	2002252e <HAL_DMA_PollForTransfer+0x5a>
20022588:	f7ff fc2a 	bl	20021de0 <HAL_GetTick>
2002258c:	eba0 0009 	sub.w	r0, r0, r9
20022590:	42b8      	cmp	r0, r7
20022592:	d801      	bhi.n	20022598 <HAL_DMA_PollForTransfer+0xc4>
20022594:	2f00      	cmp	r7, #0
20022596:	d1c4      	bne.n	20022522 <HAL_DMA_PollForTransfer+0x4e>
20022598:	2320      	movs	r3, #32
2002259a:	4620      	mov	r0, r4
2002259c:	6463      	str	r3, [r4, #68]	@ 0x44
2002259e:	f7ff fea5 	bl	200222ec <DMA_FreeChannel.isra.0>
200225a2:	2301      	movs	r3, #1
200225a4:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200225a8:	e7a0      	b.n	200224ec <HAL_DMA_PollForTransfer+0x18>
200225aa:	2204      	movs	r2, #4
200225ac:	fa02 f303 	lsl.w	r3, r2, r3
200225b0:	6073      	str	r3, [r6, #4]
200225b2:	e7cf      	b.n	20022554 <HAL_DMA_PollForTransfer+0x80>

200225b4 <DMA_Remap>:
200225b4:	b530      	push	{r4, r5, lr}
200225b6:	4b15      	ldr	r3, [pc, #84]	@ (2002260c <DMA_Remap+0x58>)
200225b8:	6c84      	ldr	r4, [r0, #72]	@ 0x48
200225ba:	429c      	cmp	r4, r3
200225bc:	d11b      	bne.n	200225f6 <DMA_Remap+0x42>
200225be:	6883      	ldr	r3, [r0, #8]
200225c0:	2b10      	cmp	r3, #16
200225c2:	d002      	beq.n	200225ca <DMA_Remap+0x16>
200225c4:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200225c8:	d108      	bne.n	200225dc <DMA_Remap+0x28>
200225ca:	680b      	ldr	r3, [r1, #0]
200225cc:	4c10      	ldr	r4, [pc, #64]	@ (20022610 <DMA_Remap+0x5c>)
200225ce:	f103 4560 	add.w	r5, r3, #3758096384	@ 0xe0000000
200225d2:	42a5      	cmp	r5, r4
200225d4:	bf98      	it	ls
200225d6:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
200225da:	600b      	str	r3, [r1, #0]
200225dc:	6883      	ldr	r3, [r0, #8]
200225de:	f433 4380 	bics.w	r3, r3, #16384	@ 0x4000
200225e2:	d108      	bne.n	200225f6 <DMA_Remap+0x42>
200225e4:	6813      	ldr	r3, [r2, #0]
200225e6:	480a      	ldr	r0, [pc, #40]	@ (20022610 <DMA_Remap+0x5c>)
200225e8:	f103 4460 	add.w	r4, r3, #3758096384	@ 0xe0000000
200225ec:	4284      	cmp	r4, r0
200225ee:	bf98      	it	ls
200225f0:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
200225f4:	6013      	str	r3, [r2, #0]
200225f6:	680b      	ldr	r3, [r1, #0]
200225f8:	f103 4270 	add.w	r2, r3, #4026531840	@ 0xf0000000
200225fc:	f1b2 5f80 	cmp.w	r2, #268435456	@ 0x10000000
20022600:	bf3c      	itt	cc
20022602:	f103 43a0 	addcc.w	r3, r3, #1342177280	@ 0x50000000
20022606:	600b      	strcc	r3, [r1, #0]
20022608:	bd30      	pop	{r4, r5, pc}
2002260a:	bf00      	nop
2002260c:	40001000 	.word	0x40001000
20022610:	0007fffe 	.word	0x0007fffe

20022614 <DMA_Start>:
20022614:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20022618:	f64f 75ff 	movw	r5, #65535	@ 0xffff
2002261c:	6d03      	ldr	r3, [r0, #80]	@ 0x50
2002261e:	6802      	ldr	r2, [r0, #0]
20022620:	429d      	cmp	r5, r3
20022622:	bf28      	it	cs
20022624:	461d      	movcs	r5, r3
20022626:	1b5b      	subs	r3, r3, r5
20022628:	6503      	str	r3, [r0, #80]	@ 0x50
2002262a:	6585      	str	r5, [r0, #88]	@ 0x58
2002262c:	6813      	ldr	r3, [r2, #0]
2002262e:	f890 7066 	ldrb.w	r7, [r0, #102]	@ 0x66
20022632:	f023 0301 	bic.w	r3, r3, #1
20022636:	f890 8067 	ldrb.w	r8, [r0, #103]	@ 0x67
2002263a:	6013      	str	r3, [r2, #0]
2002263c:	e9d0 2317 	ldrd	r2, r3, [r0, #92]	@ 0x5c
20022640:	460e      	mov	r6, r1
20022642:	e9cd 2300 	strd	r2, r3, [sp]
20022646:	e9d0 2312 	ldrd	r2, r3, [r0, #72]	@ 0x48
2002264a:	f003 011c 	and.w	r1, r3, #28
2002264e:	2301      	movs	r3, #1
20022650:	4604      	mov	r4, r0
20022652:	408b      	lsls	r3, r1
20022654:	6053      	str	r3, [r2, #4]
20022656:	6803      	ldr	r3, [r0, #0]
20022658:	4669      	mov	r1, sp
2002265a:	605d      	str	r5, [r3, #4]
2002265c:	aa01      	add	r2, sp, #4
2002265e:	f7ff ffa9 	bl	200225b4 <DMA_Remap>
20022662:	e9dd 0300 	ldrd	r0, r3, [sp]
20022666:	68a1      	ldr	r1, [r4, #8]
20022668:	6822      	ldr	r2, [r4, #0]
2002266a:	2910      	cmp	r1, #16
2002266c:	bf0b      	itete	eq
2002266e:	6093      	streq	r3, [r2, #8]
20022670:	6090      	strne	r0, [r2, #8]
20022672:	6823      	ldreq	r3, [r4, #0]
20022674:	6822      	ldrne	r2, [r4, #0]
20022676:	bf0c      	ite	eq
20022678:	60d8      	streq	r0, [r3, #12]
2002267a:	60d3      	strne	r3, [r2, #12]
2002267c:	f894 3064 	ldrb.w	r3, [r4, #100]	@ 0x64
20022680:	b123      	cbz	r3, 2002268c <DMA_Start+0x78>
20022682:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
20022684:	fa05 f707 	lsl.w	r7, r5, r7
20022688:	443b      	add	r3, r7
2002268a:	65e3      	str	r3, [r4, #92]	@ 0x5c
2002268c:	f894 3065 	ldrb.w	r3, [r4, #101]	@ 0x65
20022690:	b123      	cbz	r3, 2002269c <DMA_Start+0x88>
20022692:	6e23      	ldr	r3, [r4, #96]	@ 0x60
20022694:	fa05 f508 	lsl.w	r5, r5, r8
20022698:	442b      	add	r3, r5
2002269a:	6623      	str	r3, [r4, #96]	@ 0x60
2002269c:	b136      	cbz	r6, 200226ac <DMA_Start+0x98>
2002269e:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
200226a0:	6823      	ldr	r3, [r4, #0]
200226a2:	b15a      	cbz	r2, 200226bc <DMA_Start+0xa8>
200226a4:	681a      	ldr	r2, [r3, #0]
200226a6:	f042 020e 	orr.w	r2, r2, #14
200226aa:	601a      	str	r2, [r3, #0]
200226ac:	6822      	ldr	r2, [r4, #0]
200226ae:	6813      	ldr	r3, [r2, #0]
200226b0:	f043 0301 	orr.w	r3, r3, #1
200226b4:	6013      	str	r3, [r2, #0]
200226b6:	b002      	add	sp, #8
200226b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200226bc:	681a      	ldr	r2, [r3, #0]
200226be:	f022 0204 	bic.w	r2, r2, #4
200226c2:	601a      	str	r2, [r3, #0]
200226c4:	6822      	ldr	r2, [r4, #0]
200226c6:	6813      	ldr	r3, [r2, #0]
200226c8:	f043 030a 	orr.w	r3, r3, #10
200226cc:	6013      	str	r3, [r2, #0]
200226ce:	e7ed      	b.n	200226ac <DMA_Start+0x98>

200226d0 <HAL_DMA_Start>:
200226d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200226d2:	461d      	mov	r5, r3
200226d4:	69c3      	ldr	r3, [r0, #28]
200226d6:	4604      	mov	r4, r0
200226d8:	2b20      	cmp	r3, #32
200226da:	460f      	mov	r7, r1
200226dc:	4616      	mov	r6, r2
200226de:	d105      	bne.n	200226ec <HAL_DMA_Start+0x1c>
200226e0:	f64f 73fe 	movw	r3, #65534	@ 0xfffe
200226e4:	1e6a      	subs	r2, r5, #1
200226e6:	429a      	cmp	r2, r3
200226e8:	d900      	bls.n	200226ec <HAL_DMA_Start+0x1c>
200226ea:	e7fe      	b.n	200226ea <HAL_DMA_Start+0x1a>
200226ec:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
200226f0:	2b01      	cmp	r3, #1
200226f2:	d00e      	beq.n	20022712 <HAL_DMA_Start+0x42>
200226f4:	2301      	movs	r3, #1
200226f6:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
200226fa:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
200226fe:	2b01      	cmp	r3, #1
20022700:	b2d9      	uxtb	r1, r3
20022702:	d103      	bne.n	2002270c <HAL_DMA_Start+0x3c>
20022704:	4620      	mov	r0, r4
20022706:	f7ff fd8b 	bl	20022220 <DMA_AllocChannel>
2002270a:	b120      	cbz	r0, 20022716 <HAL_DMA_Start+0x46>
2002270c:	2300      	movs	r3, #0
2002270e:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022712:	2002      	movs	r0, #2
20022714:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022716:	2302      	movs	r3, #2
20022718:	e9c4 5514 	strd	r5, r5, [r4, #80]	@ 0x50
2002271c:	e9c4 7617 	strd	r7, r6, [r4, #92]	@ 0x5c
20022720:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
20022724:	6460      	str	r0, [r4, #68]	@ 0x44
20022726:	6d20      	ldr	r0, [r4, #80]	@ 0x50
20022728:	2800      	cmp	r0, #0
2002272a:	d0f3      	beq.n	20022714 <HAL_DMA_Start+0x44>
2002272c:	2100      	movs	r1, #0
2002272e:	4620      	mov	r0, r4
20022730:	f7ff ff70 	bl	20022614 <DMA_Start>
20022734:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20022736:	2b00      	cmp	r3, #0
20022738:	d0f5      	beq.n	20022726 <HAL_DMA_Start+0x56>
2002273a:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
2002273e:	2100      	movs	r1, #0
20022740:	4620      	mov	r0, r4
20022742:	f7ff fec7 	bl	200224d4 <HAL_DMA_PollForTransfer>
20022746:	2800      	cmp	r0, #0
20022748:	d0ed      	beq.n	20022726 <HAL_DMA_Start+0x56>
2002274a:	e7e3      	b.n	20022714 <HAL_DMA_Start+0x44>

2002274c <HAL_EFUSE_Read>:
2002274c:	2a20      	cmp	r2, #32
2002274e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20022752:	4606      	mov	r6, r0
20022754:	460c      	mov	r4, r1
20022756:	4615      	mov	r5, r2
20022758:	dc35      	bgt.n	200227c6 <HAL_EFUSE_Read+0x7a>
2002275a:	f3c0 09c4 	ubfx	r9, r0, #3, #5
2002275e:	eb09 0302 	add.w	r3, r9, r2
20022762:	2b20      	cmp	r3, #32
20022764:	dc2f      	bgt.n	200227c6 <HAL_EFUSE_Read+0x7a>
20022766:	0790      	lsls	r0, r2, #30
20022768:	d12d      	bne.n	200227c6 <HAL_EFUSE_Read+0x7a>
2002276a:	f016 0a1f 	ands.w	sl, r6, #31
2002276e:	d12a      	bne.n	200227c6 <HAL_EFUSE_Read+0x7a>
20022770:	2301      	movs	r3, #1
20022772:	4f28      	ldr	r7, [pc, #160]	@ (20022814 <HAL_EFUSE_Read+0xc8>)
20022774:	4a28      	ldr	r2, [pc, #160]	@ (20022818 <HAL_EFUSE_Read+0xcc>)
20022776:	60bb      	str	r3, [r7, #8]
20022778:	4b28      	ldr	r3, [pc, #160]	@ (2002281c <HAL_EFUSE_Read+0xd0>)
2002277a:	2014      	movs	r0, #20
2002277c:	607b      	str	r3, [r7, #4]
2002277e:	f8d2 8094 	ldr.w	r8, [r2, #148]	@ 0x94
20022782:	0a36      	lsrs	r6, r6, #8
20022784:	f108 0303 	add.w	r3, r8, #3
20022788:	2b0e      	cmp	r3, #14
2002278a:	bf38      	it	cc
2002278c:	230e      	movcc	r3, #14
2002278e:	2b0f      	cmp	r3, #15
20022790:	bf28      	it	cs
20022792:	230f      	movcs	r3, #15
20022794:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20022798:	f7ff fb87 	bl	20021eaa <HAL_Delay_us>
2002279c:	00b3      	lsls	r3, r6, #2
2002279e:	603b      	str	r3, [r7, #0]
200227a0:	683b      	ldr	r3, [r7, #0]
200227a2:	4a1f      	ldr	r2, [pc, #124]	@ (20022820 <HAL_EFUSE_Read+0xd4>)
200227a4:	f043 0301 	orr.w	r3, r3, #1
200227a8:	603b      	str	r3, [r7, #0]
200227aa:	4653      	mov	r3, sl
200227ac:	436a      	muls	r2, r5
200227ae:	68b9      	ldr	r1, [r7, #8]
200227b0:	07c9      	lsls	r1, r1, #31
200227b2:	d50c      	bpl.n	200227ce <HAL_EFUSE_Read+0x82>
200227b4:	68b9      	ldr	r1, [r7, #8]
200227b6:	4293      	cmp	r3, r2
200227b8:	f041 0101 	orr.w	r1, r1, #1
200227bc:	60b9      	str	r1, [r7, #8]
200227be:	d30a      	bcc.n	200227d6 <HAL_EFUSE_Read+0x8a>
200227c0:	4b15      	ldr	r3, [pc, #84]	@ (20022818 <HAL_EFUSE_Read+0xcc>)
200227c2:	f8c3 8094 	str.w	r8, [r3, #148]	@ 0x94
200227c6:	2500      	movs	r5, #0
200227c8:	4628      	mov	r0, r5
200227ca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200227ce:	4293      	cmp	r3, r2
200227d0:	d2f0      	bcs.n	200227b4 <HAL_EFUSE_Read+0x68>
200227d2:	3301      	adds	r3, #1
200227d4:	e7eb      	b.n	200227ae <HAL_EFUSE_Read+0x62>
200227d6:	4a13      	ldr	r2, [pc, #76]	@ (20022824 <HAL_EFUSE_Read+0xd8>)
200227d8:	f009 001c 	and.w	r0, r9, #28
200227dc:	eb00 1046 	add.w	r0, r0, r6, lsl #5
200227e0:	f025 0103 	bic.w	r1, r5, #3
200227e4:	4402      	add	r2, r0
200227e6:	4421      	add	r1, r4
200227e8:	428c      	cmp	r4, r1
200227ea:	d103      	bne.n	200227f4 <HAL_EFUSE_Read+0xa8>
200227ec:	4b0a      	ldr	r3, [pc, #40]	@ (20022818 <HAL_EFUSE_Read+0xcc>)
200227ee:	f8c3 8094 	str.w	r8, [r3, #148]	@ 0x94
200227f2:	e7e9      	b.n	200227c8 <HAL_EFUSE_Read+0x7c>
200227f4:	f852 3b04 	ldr.w	r3, [r2], #4
200227f8:	3404      	adds	r4, #4
200227fa:	0a18      	lsrs	r0, r3, #8
200227fc:	f804 3c04 	strb.w	r3, [r4, #-4]
20022800:	f804 0c03 	strb.w	r0, [r4, #-3]
20022804:	0c18      	lsrs	r0, r3, #16
20022806:	0e1b      	lsrs	r3, r3, #24
20022808:	f804 0c02 	strb.w	r0, [r4, #-2]
2002280c:	f804 3c01 	strb.w	r3, [r4, #-1]
20022810:	e7ea      	b.n	200227e8 <HAL_EFUSE_Read+0x9c>
20022812:	bf00      	nop
20022814:	5000c000 	.word	0x5000c000
20022818:	500ca000 	.word	0x500ca000
2002281c:	0002d08f 	.word	0x0002d08f
20022820:	0005dc00 	.word	0x0005dc00
20022824:	5000c030 	.word	0x5000c030

20022828 <EXT_DMA_SetConfig>:
20022828:	b530      	push	{r4, r5, lr}
2002282a:	2501      	movs	r5, #1
2002282c:	6804      	ldr	r4, [r0, #0]
2002282e:	6065      	str	r5, [r4, #4]
20022830:	6804      	ldr	r4, [r0, #0]
20022832:	60e3      	str	r3, [r4, #12]
20022834:	f101 4370 	add.w	r3, r1, #4026531840	@ 0xf0000000
20022838:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
2002283c:	6803      	ldr	r3, [r0, #0]
2002283e:	bf38      	it	cc
20022840:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20022844:	6119      	str	r1, [r3, #16]
20022846:	f102 4370 	add.w	r3, r2, #4026531840	@ 0xf0000000
2002284a:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
2002284e:	6803      	ldr	r3, [r0, #0]
20022850:	bf38      	it	cc
20022852:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20022856:	615a      	str	r2, [r3, #20]
20022858:	7b03      	ldrb	r3, [r0, #12]
2002285a:	b103      	cbz	r3, 2002285e <EXT_DMA_SetConfig+0x36>
2002285c:	e7fe      	b.n	2002285c <EXT_DMA_SetConfig+0x34>
2002285e:	bd30      	pop	{r4, r5, pc}

20022860 <HAL_EXT_DMA_Init>:
20022860:	b510      	push	{r4, lr}
20022862:	b1c0      	cbz	r0, 20022896 <HAL_EXT_DMA_Init+0x36>
20022864:	2302      	movs	r3, #2
20022866:	4a0d      	ldr	r2, [pc, #52]	@ (2002289c <HAL_EXT_DMA_Init+0x3c>)
20022868:	7643      	strb	r3, [r0, #25]
2002286a:	6002      	str	r2, [r0, #0]
2002286c:	e9d0 3101 	ldrd	r3, r1, [r0, #4]
20022870:	6894      	ldr	r4, [r2, #8]
20022872:	430b      	orrs	r3, r1
20022874:	490a      	ldr	r1, [pc, #40]	@ (200228a0 <HAL_EXT_DMA_Init+0x40>)
20022876:	4021      	ands	r1, r4
20022878:	430b      	orrs	r3, r1
2002287a:	f443 6320 	orr.w	r3, r3, #2560	@ 0xa00
2002287e:	6093      	str	r3, [r2, #8]
20022880:	7b03      	ldrb	r3, [r0, #12]
20022882:	b103      	cbz	r3, 20022886 <HAL_EXT_DMA_Init+0x26>
20022884:	e7fe      	b.n	20022884 <HAL_EXT_DMA_Init+0x24>
20022886:	6802      	ldr	r2, [r0, #0]
20022888:	6213      	str	r3, [r2, #32]
2002288a:	2201      	movs	r2, #1
2002288c:	62c3      	str	r3, [r0, #44]	@ 0x2c
2002288e:	7603      	strb	r3, [r0, #24]
20022890:	7642      	strb	r2, [r0, #25]
20022892:	4618      	mov	r0, r3
20022894:	bd10      	pop	{r4, pc}
20022896:	2001      	movs	r0, #1
20022898:	e7fc      	b.n	20022894 <HAL_EXT_DMA_Init+0x34>
2002289a:	bf00      	nop
2002289c:	50001000 	.word	0x50001000
200228a0:	fff0f020 	.word	0xfff0f020

200228a4 <HAL_EXT_DMA_Start>:
200228a4:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
200228a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200228aa:	d304      	bcc.n	200228b6 <HAL_EXT_DMA_Start+0x12>
200228ac:	f44f 7300 	mov.w	r3, #512	@ 0x200
200228b0:	62c3      	str	r3, [r0, #44]	@ 0x2c
200228b2:	2001      	movs	r0, #1
200228b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200228b6:	7e05      	ldrb	r5, [r0, #24]
200228b8:	2d01      	cmp	r5, #1
200228ba:	d018      	beq.n	200228ee <HAL_EXT_DMA_Start+0x4a>
200228bc:	2501      	movs	r5, #1
200228be:	7605      	strb	r5, [r0, #24]
200228c0:	7e45      	ldrb	r5, [r0, #25]
200228c2:	2d01      	cmp	r5, #1
200228c4:	f04f 0500 	mov.w	r5, #0
200228c8:	d110      	bne.n	200228ec <HAL_EXT_DMA_Start+0x48>
200228ca:	2602      	movs	r6, #2
200228cc:	6807      	ldr	r7, [r0, #0]
200228ce:	7646      	strb	r6, [r0, #25]
200228d0:	62c5      	str	r5, [r0, #44]	@ 0x2c
200228d2:	68be      	ldr	r6, [r7, #8]
200228d4:	f026 0601 	bic.w	r6, r6, #1
200228d8:	60be      	str	r6, [r7, #8]
200228da:	f7ff ffa5 	bl	20022828 <EXT_DMA_SetConfig>
200228de:	6802      	ldr	r2, [r0, #0]
200228e0:	4628      	mov	r0, r5
200228e2:	6893      	ldr	r3, [r2, #8]
200228e4:	f043 0301 	orr.w	r3, r3, #1
200228e8:	6093      	str	r3, [r2, #8]
200228ea:	e7e3      	b.n	200228b4 <HAL_EXT_DMA_Start+0x10>
200228ec:	7605      	strb	r5, [r0, #24]
200228ee:	2002      	movs	r0, #2
200228f0:	e7e0      	b.n	200228b4 <HAL_EXT_DMA_Start+0x10>

200228f2 <HAL_EXT_DMA_PollForTransfer>:
200228f2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200228f6:	7e43      	ldrb	r3, [r0, #25]
200228f8:	4604      	mov	r4, r0
200228fa:	2b02      	cmp	r3, #2
200228fc:	460e      	mov	r6, r1
200228fe:	4615      	mov	r5, r2
20022900:	d006      	beq.n	20022910 <HAL_EXT_DMA_PollForTransfer+0x1e>
20022902:	2304      	movs	r3, #4
20022904:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022906:	2001      	movs	r0, #1
20022908:	2300      	movs	r3, #0
2002290a:	7623      	strb	r3, [r4, #24]
2002290c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022910:	2900      	cmp	r1, #0
20022912:	bf14      	ite	ne
20022914:	f04f 0804 	movne.w	r8, #4
20022918:	f04f 0802 	moveq.w	r8, #2
2002291c:	f7ff fa60 	bl	20021de0 <HAL_GetTick>
20022920:	4607      	mov	r7, r0
20022922:	6823      	ldr	r3, [r4, #0]
20022924:	681a      	ldr	r2, [r3, #0]
20022926:	ea12 0f08 	tst.w	r2, r8
2002292a:	d006      	beq.n	2002293a <HAL_EXT_DMA_PollForTransfer+0x48>
2002292c:	b9e6      	cbnz	r6, 20022968 <HAL_EXT_DMA_PollForTransfer+0x76>
2002292e:	2202      	movs	r2, #2
20022930:	605a      	str	r2, [r3, #4]
20022932:	2301      	movs	r3, #1
20022934:	7663      	strb	r3, [r4, #25]
20022936:	2000      	movs	r0, #0
20022938:	e7e6      	b.n	20022908 <HAL_EXT_DMA_PollForTransfer+0x16>
2002293a:	681a      	ldr	r2, [r3, #0]
2002293c:	f012 0f18 	tst.w	r2, #24
20022940:	d004      	beq.n	2002294c <HAL_EXT_DMA_PollForTransfer+0x5a>
20022942:	2201      	movs	r2, #1
20022944:	605a      	str	r2, [r3, #4]
20022946:	62e2      	str	r2, [r4, #44]	@ 0x2c
20022948:	7662      	strb	r2, [r4, #25]
2002294a:	e7dc      	b.n	20022906 <HAL_EXT_DMA_PollForTransfer+0x14>
2002294c:	1c6a      	adds	r2, r5, #1
2002294e:	d0e9      	beq.n	20022924 <HAL_EXT_DMA_PollForTransfer+0x32>
20022950:	f7ff fa46 	bl	20021de0 <HAL_GetTick>
20022954:	1bc0      	subs	r0, r0, r7
20022956:	42a8      	cmp	r0, r5
20022958:	d801      	bhi.n	2002295e <HAL_EXT_DMA_PollForTransfer+0x6c>
2002295a:	2d00      	cmp	r5, #0
2002295c:	d1e1      	bne.n	20022922 <HAL_EXT_DMA_PollForTransfer+0x30>
2002295e:	2320      	movs	r3, #32
20022960:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022962:	2301      	movs	r3, #1
20022964:	7663      	strb	r3, [r4, #25]
20022966:	e7ce      	b.n	20022906 <HAL_EXT_DMA_PollForTransfer+0x14>
20022968:	2204      	movs	r2, #4
2002296a:	605a      	str	r2, [r3, #4]
2002296c:	e7e3      	b.n	20022936 <HAL_EXT_DMA_PollForTransfer+0x44>
	...

20022970 <HAL_Set_backup>:
20022970:	4b01      	ldr	r3, [pc, #4]	@ (20022978 <HAL_Set_backup+0x8>)
20022972:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
20022976:	4770      	bx	lr
20022978:	500cb030 	.word	0x500cb030

2002297c <HAL_Get_backup>:
2002297c:	4b01      	ldr	r3, [pc, #4]	@ (20022984 <HAL_Get_backup+0x8>)
2002297e:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20022982:	4770      	bx	lr
20022984:	500cb030 	.word	0x500cb030

20022988 <HAL_HPAON_WakeCore>:
20022988:	2802      	cmp	r0, #2
2002298a:	b510      	push	{r4, lr}
2002298c:	d120      	bne.n	200229d0 <HAL_HPAON_WakeCore+0x48>
2002298e:	4c11      	ldr	r4, [pc, #68]	@ (200229d4 <HAL_HPAON_WakeCore+0x4c>)
20022990:	20e6      	movs	r0, #230	@ 0xe6
20022992:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022994:	f043 0301 	orr.w	r3, r3, #1
20022998:	62e3      	str	r3, [r4, #44]	@ 0x2c
2002299a:	f7ff fa86 	bl	20021eaa <HAL_Delay_us>
2002299e:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200229a0:	069a      	lsls	r2, r3, #26
200229a2:	d5fc      	bpl.n	2002299e <HAL_HPAON_WakeCore+0x16>
200229a4:	201e      	movs	r0, #30
200229a6:	f7ff fa80 	bl	20021eaa <HAL_Delay_us>
200229aa:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200229ac:	069b      	lsls	r3, r3, #26
200229ae:	d5fc      	bpl.n	200229aa <HAL_HPAON_WakeCore+0x22>
200229b0:	f3ef 8110 	mrs	r1, PRIMASK
200229b4:	2301      	movs	r3, #1
200229b6:	f383 8810 	msr	PRIMASK, r3
200229ba:	4a07      	ldr	r2, [pc, #28]	@ (200229d8 <HAL_HPAON_WakeCore+0x50>)
200229bc:	7813      	ldrb	r3, [r2, #0]
200229be:	2b13      	cmp	r3, #19
200229c0:	d900      	bls.n	200229c4 <HAL_HPAON_WakeCore+0x3c>
200229c2:	e7fe      	b.n	200229c2 <HAL_HPAON_WakeCore+0x3a>
200229c4:	3301      	adds	r3, #1
200229c6:	7013      	strb	r3, [r2, #0]
200229c8:	f381 8810 	msr	PRIMASK, r1
200229cc:	2000      	movs	r0, #0
200229ce:	bd10      	pop	{r4, pc}
200229d0:	2001      	movs	r0, #1
200229d2:	e7fc      	b.n	200229ce <HAL_HPAON_WakeCore+0x46>
200229d4:	500c0000 	.word	0x500c0000
200229d8:	20049f5c 	.word	0x20049f5c

200229dc <HAL_HPAON_EnableXT48>:
200229dc:	4b04      	ldr	r3, [pc, #16]	@ (200229f0 <HAL_HPAON_EnableXT48+0x14>)
200229de:	691a      	ldr	r2, [r3, #16]
200229e0:	f042 0202 	orr.w	r2, r2, #2
200229e4:	611a      	str	r2, [r3, #16]
200229e6:	691a      	ldr	r2, [r3, #16]
200229e8:	2a00      	cmp	r2, #0
200229ea:	dafc      	bge.n	200229e6 <HAL_HPAON_EnableXT48+0xa>
200229ec:	4770      	bx	lr
200229ee:	bf00      	nop
200229f0:	500c0000 	.word	0x500c0000

200229f4 <HAL_HPAON_DisableXT48>:
200229f4:	4a02      	ldr	r2, [pc, #8]	@ (20022a00 <HAL_HPAON_DisableXT48+0xc>)
200229f6:	6913      	ldr	r3, [r2, #16]
200229f8:	f023 0302 	bic.w	r3, r3, #2
200229fc:	6113      	str	r3, [r2, #16]
200229fe:	4770      	bx	lr
20022a00:	500c0000 	.word	0x500c0000

20022a04 <HAL_QSPI_Init>:
20022a04:	b510      	push	{r4, lr}
20022a06:	b1e0      	cbz	r0, 20022a42 <HAL_QSPI_Init+0x3e>
20022a08:	b1d9      	cbz	r1, 20022a42 <HAL_QSPI_Init+0x3e>
20022a0a:	2300      	movs	r3, #0
20022a0c:	2201      	movs	r2, #1
20022a0e:	6043      	str	r3, [r0, #4]
20022a10:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
20022a14:	680c      	ldr	r4, [r1, #0]
20022a16:	6004      	str	r4, [r0, #0]
20022a18:	684a      	ldr	r2, [r1, #4]
20022a1a:	f880 2020 	strb.w	r2, [r0, #32]
20022a1e:	688a      	ldr	r2, [r1, #8]
20022a20:	6102      	str	r2, [r0, #16]
20022a22:	68ca      	ldr	r2, [r1, #12]
20022a24:	0512      	lsls	r2, r2, #20
20022a26:	6142      	str	r2, [r0, #20]
20022a28:	22ff      	movs	r2, #255	@ 0xff
20022a2a:	f8c4 2084 	str.w	r2, [r4, #132]	@ 0x84
20022a2e:	f04f 2450 	mov.w	r4, #1342197760	@ 0x50005000
20022a32:	6801      	ldr	r1, [r0, #0]
20022a34:	678c      	str	r4, [r1, #120]	@ 0x78
20022a36:	6801      	ldr	r1, [r0, #0]
20022a38:	620a      	str	r2, [r1, #32]
20022a3a:	6801      	ldr	r1, [r0, #0]
20022a3c:	4618      	mov	r0, r3
20022a3e:	644a      	str	r2, [r1, #68]	@ 0x44
20022a40:	bd10      	pop	{r4, pc}
20022a42:	2001      	movs	r0, #1
20022a44:	e7fc      	b.n	20022a40 <HAL_QSPI_Init+0x3c>

20022a46 <HAL_FLASH_SET_AHB_RCMD>:
20022a46:	b138      	cbz	r0, 20022a58 <HAL_FLASH_SET_AHB_RCMD+0x12>
20022a48:	6802      	ldr	r2, [r0, #0]
20022a4a:	2000      	movs	r0, #0
20022a4c:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022a4e:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20022a52:	4319      	orrs	r1, r3
20022a54:	6411      	str	r1, [r2, #64]	@ 0x40
20022a56:	4770      	bx	lr
20022a58:	2001      	movs	r0, #1
20022a5a:	4770      	bx	lr

20022a5c <HAL_FLASH_CFG_AHB_RCMD>:
20022a5c:	b570      	push	{r4, r5, r6, lr}
20022a5e:	b1c8      	cbz	r0, 20022a94 <HAL_FLASH_CFG_AHB_RCMD+0x38>
20022a60:	6805      	ldr	r5, [r0, #0]
20022a62:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022a66:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022a6a:	6cac      	ldr	r4, [r5, #72]	@ 0x48
20022a6c:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022a70:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022a74:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022a78:	f36f 0414 	bfc	r4, #0, #21
20022a7c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022a80:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022a84:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022a88:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022a8c:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022a90:	4321      	orrs	r1, r4
20022a92:	64a9      	str	r1, [r5, #72]	@ 0x48
20022a94:	bd70      	pop	{r4, r5, r6, pc}

20022a96 <HAL_FLASH_SET_AHB_WCMD>:
20022a96:	b140      	cbz	r0, 20022aaa <HAL_FLASH_SET_AHB_WCMD+0x14>
20022a98:	6802      	ldr	r2, [r0, #0]
20022a9a:	2000      	movs	r0, #0
20022a9c:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022a9e:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022aa2:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20022aa6:	6411      	str	r1, [r2, #64]	@ 0x40
20022aa8:	4770      	bx	lr
20022aaa:	2001      	movs	r0, #1
20022aac:	4770      	bx	lr

20022aae <HAL_FLASH_CFG_AHB_WCMD>:
20022aae:	b570      	push	{r4, r5, r6, lr}
20022ab0:	b1c8      	cbz	r0, 20022ae6 <HAL_FLASH_CFG_AHB_WCMD+0x38>
20022ab2:	6805      	ldr	r5, [r0, #0]
20022ab4:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022ab8:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022abc:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20022abe:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022ac2:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022ac6:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022aca:	f36f 0414 	bfc	r4, #0, #21
20022ace:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022ad2:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022ad6:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022ada:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022ade:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022ae2:	4321      	orrs	r1, r4
20022ae4:	6529      	str	r1, [r5, #80]	@ 0x50
20022ae6:	bd70      	pop	{r4, r5, r6, pc}

20022ae8 <HAL_FLASH_WRITE_WORD>:
20022ae8:	b118      	cbz	r0, 20022af2 <HAL_FLASH_WRITE_WORD+0xa>
20022aea:	6803      	ldr	r3, [r0, #0]
20022aec:	2000      	movs	r0, #0
20022aee:	6059      	str	r1, [r3, #4]
20022af0:	4770      	bx	lr
20022af2:	2001      	movs	r0, #1
20022af4:	4770      	bx	lr

20022af6 <HAL_FLASH_WRITE_DLEN>:
20022af6:	b130      	cbz	r0, 20022b06 <HAL_FLASH_WRITE_DLEN+0x10>
20022af8:	6803      	ldr	r3, [r0, #0]
20022afa:	3901      	subs	r1, #1
20022afc:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022b00:	2000      	movs	r0, #0
20022b02:	6259      	str	r1, [r3, #36]	@ 0x24
20022b04:	4770      	bx	lr
20022b06:	2001      	movs	r0, #1
20022b08:	4770      	bx	lr

20022b0a <HAL_FLASH_WRITE_DLEN2>:
20022b0a:	b130      	cbz	r0, 20022b1a <HAL_FLASH_WRITE_DLEN2+0x10>
20022b0c:	6803      	ldr	r3, [r0, #0]
20022b0e:	3901      	subs	r1, #1
20022b10:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022b14:	2000      	movs	r0, #0
20022b16:	6399      	str	r1, [r3, #56]	@ 0x38
20022b18:	4770      	bx	lr
20022b1a:	2001      	movs	r0, #1
20022b1c:	4770      	bx	lr

20022b1e <HAL_FLASH_WRITE_ABYTE>:
20022b1e:	b108      	cbz	r0, 20022b24 <HAL_FLASH_WRITE_ABYTE+0x6>
20022b20:	6803      	ldr	r3, [r0, #0]
20022b22:	6219      	str	r1, [r3, #32]
20022b24:	4770      	bx	lr

20022b26 <HAL_FLASH_IS_CMD_DONE>:
20022b26:	b118      	cbz	r0, 20022b30 <HAL_FLASH_IS_CMD_DONE+0xa>
20022b28:	6803      	ldr	r3, [r0, #0]
20022b2a:	6918      	ldr	r0, [r3, #16]
20022b2c:	f000 0001 	and.w	r0, r0, #1
20022b30:	4770      	bx	lr

20022b32 <HAL_FLASH_CLR_CMD_DONE>:
20022b32:	b120      	cbz	r0, 20022b3e <HAL_FLASH_CLR_CMD_DONE+0xc>
20022b34:	6802      	ldr	r2, [r0, #0]
20022b36:	6953      	ldr	r3, [r2, #20]
20022b38:	f043 0301 	orr.w	r3, r3, #1
20022b3c:	6153      	str	r3, [r2, #20]
20022b3e:	4770      	bx	lr

20022b40 <HAL_FLASH_SET_CMD>:
20022b40:	b538      	push	{r3, r4, r5, lr}
20022b42:	460d      	mov	r5, r1
20022b44:	4604      	mov	r4, r0
20022b46:	b1a8      	cbz	r0, 20022b74 <HAL_FLASH_SET_CMD+0x34>
20022b48:	6803      	ldr	r3, [r0, #0]
20022b4a:	61da      	str	r2, [r3, #28]
20022b4c:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
20022b4e:	b10b      	cbz	r3, 20022b54 <HAL_FLASH_SET_CMD+0x14>
20022b50:	2001      	movs	r0, #1
20022b52:	4798      	blx	r3
20022b54:	6823      	ldr	r3, [r4, #0]
20022b56:	619d      	str	r5, [r3, #24]
20022b58:	4620      	mov	r0, r4
20022b5a:	f7ff ffe4 	bl	20022b26 <HAL_FLASH_IS_CMD_DONE>
20022b5e:	2800      	cmp	r0, #0
20022b60:	d0fa      	beq.n	20022b58 <HAL_FLASH_SET_CMD+0x18>
20022b62:	4620      	mov	r0, r4
20022b64:	f7ff ffe5 	bl	20022b32 <HAL_FLASH_CLR_CMD_DONE>
20022b68:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022b6a:	b10b      	cbz	r3, 20022b70 <HAL_FLASH_SET_CMD+0x30>
20022b6c:	2000      	movs	r0, #0
20022b6e:	4798      	blx	r3
20022b70:	2000      	movs	r0, #0
20022b72:	bd38      	pop	{r3, r4, r5, pc}
20022b74:	2001      	movs	r0, #1
20022b76:	e7fc      	b.n	20022b72 <HAL_FLASH_SET_CMD+0x32>

20022b78 <HAL_FLASH_CLR_STATUS>:
20022b78:	b118      	cbz	r0, 20022b82 <HAL_FLASH_CLR_STATUS+0xa>
20022b7a:	6802      	ldr	r2, [r0, #0]
20022b7c:	6953      	ldr	r3, [r2, #20]
20022b7e:	4319      	orrs	r1, r3
20022b80:	6151      	str	r1, [r2, #20]
20022b82:	4770      	bx	lr

20022b84 <HAL_FLASH_STATUS_MATCH>:
20022b84:	b118      	cbz	r0, 20022b8e <HAL_FLASH_STATUS_MATCH+0xa>
20022b86:	6803      	ldr	r3, [r0, #0]
20022b88:	6918      	ldr	r0, [r3, #16]
20022b8a:	f3c0 00c0 	ubfx	r0, r0, #3, #1
20022b8e:	4770      	bx	lr

20022b90 <HAL_FLASH_IS_PROG_DONE>:
20022b90:	b128      	cbz	r0, 20022b9e <HAL_FLASH_IS_PROG_DONE+0xe>
20022b92:	6803      	ldr	r3, [r0, #0]
20022b94:	6858      	ldr	r0, [r3, #4]
20022b96:	43c0      	mvns	r0, r0
20022b98:	f000 0001 	and.w	r0, r0, #1
20022b9c:	4770      	bx	lr
20022b9e:	2001      	movs	r0, #1
20022ba0:	4770      	bx	lr

20022ba2 <HAL_FLASH_READ32>:
20022ba2:	b108      	cbz	r0, 20022ba8 <HAL_FLASH_READ32+0x6>
20022ba4:	6803      	ldr	r3, [r0, #0]
20022ba6:	6858      	ldr	r0, [r3, #4]
20022ba8:	4770      	bx	lr

20022baa <HAL_FLASH_SET_TXSLOT>:
20022baa:	b120      	cbz	r0, 20022bb6 <HAL_FLASH_SET_TXSLOT+0xc>
20022bac:	6802      	ldr	r2, [r0, #0]
20022bae:	6d53      	ldr	r3, [r2, #84]	@ 0x54
20022bb0:	f361 238e 	bfi	r3, r1, #10, #5
20022bb4:	6553      	str	r3, [r2, #84]	@ 0x54
20022bb6:	4770      	bx	lr

20022bb8 <HAL_FLASH_SET_CLK_rom>:
20022bb8:	b108      	cbz	r0, 20022bbe <HAL_FLASH_SET_CLK_rom+0x6>
20022bba:	6803      	ldr	r3, [r0, #0]
20022bbc:	60d9      	str	r1, [r3, #12]
20022bbe:	4770      	bx	lr

20022bc0 <HAL_FLASH_GET_DIV>:
20022bc0:	b110      	cbz	r0, 20022bc8 <HAL_FLASH_GET_DIV+0x8>
20022bc2:	6803      	ldr	r3, [r0, #0]
20022bc4:	68d8      	ldr	r0, [r3, #12]
20022bc6:	b2c0      	uxtb	r0, r0
20022bc8:	4770      	bx	lr

20022bca <HAL_FLASH_MANUAL_CMD>:
20022bca:	b570      	push	{r4, r5, r6, lr}
20022bcc:	b1e8      	cbz	r0, 20022c0a <HAL_FLASH_MANUAL_CMD+0x40>
20022bce:	6805      	ldr	r5, [r0, #0]
20022bd0:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022bd4:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022bd8:	6aac      	ldr	r4, [r5, #40]	@ 0x28
20022bda:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022bde:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022be2:	f36f 0415 	bfc	r4, #0, #22
20022be6:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022bea:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022bee:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022bf2:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022bf6:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022bfa:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022bfe:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022c02:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022c06:	4321      	orrs	r1, r4
20022c08:	62a9      	str	r1, [r5, #40]	@ 0x28
20022c0a:	bd70      	pop	{r4, r5, r6, pc}

20022c0c <HAL_FLASH_MANUAL_CMD2>:
20022c0c:	b570      	push	{r4, r5, r6, lr}
20022c0e:	b1e8      	cbz	r0, 20022c4c <HAL_FLASH_MANUAL_CMD2+0x40>
20022c10:	6805      	ldr	r5, [r0, #0]
20022c12:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022c16:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022c1a:	6bec      	ldr	r4, [r5, #60]	@ 0x3c
20022c1c:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022c20:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022c24:	f36f 0415 	bfc	r4, #0, #22
20022c28:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022c2c:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022c30:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022c34:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022c38:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022c3c:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022c40:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022c44:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022c48:	4321      	orrs	r1, r4
20022c4a:	63e9      	str	r1, [r5, #60]	@ 0x3c
20022c4c:	bd70      	pop	{r4, r5, r6, pc}
	...

20022c50 <HAL_FLASH_SET_ALIAS_RANGE>:
20022c50:	b510      	push	{r4, lr}
20022c52:	b158      	cbz	r0, 20022c6c <HAL_FLASH_SET_ALIAS_RANGE+0x1c>
20022c54:	4b06      	ldr	r3, [pc, #24]	@ (20022c70 <HAL_FLASH_SET_ALIAS_RANGE+0x20>)
20022c56:	6804      	ldr	r4, [r0, #0]
20022c58:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022c5c:	440a      	add	r2, r1
20022c5e:	4019      	ands	r1, r3
20022c60:	66e1      	str	r1, [r4, #108]	@ 0x6c
20022c62:	401a      	ands	r2, r3
20022c64:	6803      	ldr	r3, [r0, #0]
20022c66:	2000      	movs	r0, #0
20022c68:	671a      	str	r2, [r3, #112]	@ 0x70
20022c6a:	bd10      	pop	{r4, pc}
20022c6c:	2001      	movs	r0, #1
20022c6e:	e7fc      	b.n	20022c6a <HAL_FLASH_SET_ALIAS_RANGE+0x1a>
20022c70:	fffffc00 	.word	0xfffffc00

20022c74 <HAL_FLASH_SET_ALIAS_OFFSET>:
20022c74:	b128      	cbz	r0, 20022c82 <HAL_FLASH_SET_ALIAS_OFFSET+0xe>
20022c76:	6803      	ldr	r3, [r0, #0]
20022c78:	f36f 0109 	bfc	r1, #0, #10
20022c7c:	2000      	movs	r0, #0
20022c7e:	6759      	str	r1, [r3, #116]	@ 0x74
20022c80:	4770      	bx	lr
20022c82:	2001      	movs	r0, #1
20022c84:	4770      	bx	lr
	...

20022c88 <HAL_FLASH_SET_CTR>:
20022c88:	b510      	push	{r4, lr}
20022c8a:	b150      	cbz	r0, 20022ca2 <HAL_FLASH_SET_CTR+0x1a>
20022c8c:	4b06      	ldr	r3, [pc, #24]	@ (20022ca8 <HAL_FLASH_SET_CTR+0x20>)
20022c8e:	6804      	ldr	r4, [r0, #0]
20022c90:	4019      	ands	r1, r3
20022c92:	65e1      	str	r1, [r4, #92]	@ 0x5c
20022c94:	6801      	ldr	r1, [r0, #0]
20022c96:	2000      	movs	r0, #0
20022c98:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022c9c:	401a      	ands	r2, r3
20022c9e:	660a      	str	r2, [r1, #96]	@ 0x60
20022ca0:	bd10      	pop	{r4, pc}
20022ca2:	2001      	movs	r0, #1
20022ca4:	e7fc      	b.n	20022ca0 <HAL_FLASH_SET_CTR+0x18>
20022ca6:	bf00      	nop
20022ca8:	fffffc00 	.word	0xfffffc00

20022cac <HAL_FLASH_SET_NONCE>:
20022cac:	b150      	cbz	r0, 20022cc4 <HAL_FLASH_SET_NONCE+0x18>
20022cae:	b149      	cbz	r1, 20022cc4 <HAL_FLASH_SET_NONCE+0x18>
20022cb0:	680b      	ldr	r3, [r1, #0]
20022cb2:	6802      	ldr	r2, [r0, #0]
20022cb4:	ba1b      	rev	r3, r3
20022cb6:	6653      	str	r3, [r2, #100]	@ 0x64
20022cb8:	684b      	ldr	r3, [r1, #4]
20022cba:	6802      	ldr	r2, [r0, #0]
20022cbc:	ba1b      	rev	r3, r3
20022cbe:	2000      	movs	r0, #0
20022cc0:	6693      	str	r3, [r2, #104]	@ 0x68
20022cc2:	4770      	bx	lr
20022cc4:	2001      	movs	r0, #1
20022cc6:	4770      	bx	lr

20022cc8 <HAL_FLASH_SET_AES>:
20022cc8:	b158      	cbz	r0, 20022ce2 <HAL_FLASH_SET_AES+0x1a>
20022cca:	6803      	ldr	r3, [r0, #0]
20022ccc:	2901      	cmp	r1, #1
20022cce:	681a      	ldr	r2, [r3, #0]
20022cd0:	d104      	bne.n	20022cdc <HAL_FLASH_SET_AES+0x14>
20022cd2:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
20022cd6:	2000      	movs	r0, #0
20022cd8:	601a      	str	r2, [r3, #0]
20022cda:	4770      	bx	lr
20022cdc:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
20022ce0:	e7f9      	b.n	20022cd6 <HAL_FLASH_SET_AES+0xe>
20022ce2:	2001      	movs	r0, #1
20022ce4:	4770      	bx	lr

20022ce6 <HAL_FLASH_ENABLE_AES>:
20022ce6:	b150      	cbz	r0, 20022cfe <HAL_FLASH_ENABLE_AES+0x18>
20022ce8:	6803      	ldr	r3, [r0, #0]
20022cea:	681a      	ldr	r2, [r3, #0]
20022cec:	b121      	cbz	r1, 20022cf8 <HAL_FLASH_ENABLE_AES+0x12>
20022cee:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
20022cf2:	2000      	movs	r0, #0
20022cf4:	601a      	str	r2, [r3, #0]
20022cf6:	4770      	bx	lr
20022cf8:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
20022cfc:	e7f9      	b.n	20022cf2 <HAL_FLASH_ENABLE_AES+0xc>
20022cfe:	2001      	movs	r0, #1
20022d00:	4770      	bx	lr

20022d02 <HAL_FLASH_ENABLE_QSPI>:
20022d02:	b150      	cbz	r0, 20022d1a <HAL_FLASH_ENABLE_QSPI+0x18>
20022d04:	6803      	ldr	r3, [r0, #0]
20022d06:	681a      	ldr	r2, [r3, #0]
20022d08:	b121      	cbz	r1, 20022d14 <HAL_FLASH_ENABLE_QSPI+0x12>
20022d0a:	f042 0201 	orr.w	r2, r2, #1
20022d0e:	2000      	movs	r0, #0
20022d10:	601a      	str	r2, [r3, #0]
20022d12:	4770      	bx	lr
20022d14:	f022 0201 	bic.w	r2, r2, #1
20022d18:	e7f9      	b.n	20022d0e <HAL_FLASH_ENABLE_QSPI+0xc>
20022d1a:	2001      	movs	r0, #1
20022d1c:	4770      	bx	lr

20022d1e <HAL_FLASH_ENABLE_OPI>:
20022d1e:	b150      	cbz	r0, 20022d36 <HAL_FLASH_ENABLE_OPI+0x18>
20022d20:	6803      	ldr	r3, [r0, #0]
20022d22:	681a      	ldr	r2, [r3, #0]
20022d24:	b121      	cbz	r1, 20022d30 <HAL_FLASH_ENABLE_OPI+0x12>
20022d26:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20022d2a:	2000      	movs	r0, #0
20022d2c:	601a      	str	r2, [r3, #0]
20022d2e:	4770      	bx	lr
20022d30:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20022d34:	e7f9      	b.n	20022d2a <HAL_FLASH_ENABLE_OPI+0xc>
20022d36:	2001      	movs	r0, #1
20022d38:	4770      	bx	lr

20022d3a <HAL_FLASH_ENABLE_HYPER>:
20022d3a:	b150      	cbz	r0, 20022d52 <HAL_FLASH_ENABLE_HYPER+0x18>
20022d3c:	6803      	ldr	r3, [r0, #0]
20022d3e:	689a      	ldr	r2, [r3, #8]
20022d40:	b121      	cbz	r1, 20022d4c <HAL_FLASH_ENABLE_HYPER+0x12>
20022d42:	f042 0210 	orr.w	r2, r2, #16
20022d46:	2000      	movs	r0, #0
20022d48:	609a      	str	r2, [r3, #8]
20022d4a:	4770      	bx	lr
20022d4c:	f022 0210 	bic.w	r2, r2, #16
20022d50:	e7f9      	b.n	20022d46 <HAL_FLASH_ENABLE_HYPER+0xc>
20022d52:	2001      	movs	r0, #1
20022d54:	4770      	bx	lr

20022d56 <HAL_FLASH_ENABLE_CMD2>:
20022d56:	b150      	cbz	r0, 20022d6e <HAL_FLASH_ENABLE_CMD2+0x18>
20022d58:	6803      	ldr	r3, [r0, #0]
20022d5a:	681a      	ldr	r2, [r3, #0]
20022d5c:	b121      	cbz	r1, 20022d68 <HAL_FLASH_ENABLE_CMD2+0x12>
20022d5e:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
20022d62:	2000      	movs	r0, #0
20022d64:	601a      	str	r2, [r3, #0]
20022d66:	4770      	bx	lr
20022d68:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
20022d6c:	e7f9      	b.n	20022d62 <HAL_FLASH_ENABLE_CMD2+0xc>
20022d6e:	2001      	movs	r0, #1
20022d70:	4770      	bx	lr

20022d72 <HAL_FLASH_STAUS_MATCH_CMD2>:
20022d72:	b150      	cbz	r0, 20022d8a <HAL_FLASH_STAUS_MATCH_CMD2+0x18>
20022d74:	6803      	ldr	r3, [r0, #0]
20022d76:	681a      	ldr	r2, [r3, #0]
20022d78:	b121      	cbz	r1, 20022d84 <HAL_FLASH_STAUS_MATCH_CMD2+0x12>
20022d7a:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
20022d7e:	2000      	movs	r0, #0
20022d80:	601a      	str	r2, [r3, #0]
20022d82:	4770      	bx	lr
20022d84:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20022d88:	e7f9      	b.n	20022d7e <HAL_FLASH_STAUS_MATCH_CMD2+0xc>
20022d8a:	2001      	movs	r0, #1
20022d8c:	4770      	bx	lr

20022d8e <HAL_FLASH_SET_CS_TIME>:
20022d8e:	b530      	push	{r4, r5, lr}
20022d90:	b180      	cbz	r0, 20022db4 <HAL_FLASH_SET_CS_TIME+0x26>
20022d92:	6805      	ldr	r5, [r0, #0]
20022d94:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20022d98:	68ac      	ldr	r4, [r5, #8]
20022d9a:	0680      	lsls	r0, r0, #26
20022d9c:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20022da0:	2000      	movs	r0, #0
20022da2:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
20022da6:	f36f 149e 	bfc	r4, #6, #25
20022daa:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20022dae:	4322      	orrs	r2, r4
20022db0:	60aa      	str	r2, [r5, #8]
20022db2:	bd30      	pop	{r4, r5, pc}
20022db4:	2001      	movs	r0, #1
20022db6:	e7fc      	b.n	20022db2 <HAL_FLASH_SET_CS_TIME+0x24>

20022db8 <HAL_FLASH_SET_ROW_BOUNDARY>:
20022db8:	b130      	cbz	r0, 20022dc8 <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20022dba:	6802      	ldr	r2, [r0, #0]
20022dbc:	2000      	movs	r0, #0
20022dbe:	6893      	ldr	r3, [r2, #8]
20022dc0:	f361 0302 	bfi	r3, r1, #0, #3
20022dc4:	6093      	str	r3, [r2, #8]
20022dc6:	4770      	bx	lr
20022dc8:	2001      	movs	r0, #1
20022dca:	4770      	bx	lr

20022dcc <HAL_FLASH_SET_LEGACY>:
20022dcc:	b150      	cbz	r0, 20022de4 <HAL_FLASH_SET_LEGACY+0x18>
20022dce:	6803      	ldr	r3, [r0, #0]
20022dd0:	689a      	ldr	r2, [r3, #8]
20022dd2:	b121      	cbz	r1, 20022dde <HAL_FLASH_SET_LEGACY+0x12>
20022dd4:	f042 0220 	orr.w	r2, r2, #32
20022dd8:	2000      	movs	r0, #0
20022dda:	609a      	str	r2, [r3, #8]
20022ddc:	4770      	bx	lr
20022dde:	f022 0220 	bic.w	r2, r2, #32
20022de2:	e7f9      	b.n	20022dd8 <HAL_FLASH_SET_LEGACY+0xc>
20022de4:	2001      	movs	r0, #1
20022de6:	4770      	bx	lr

20022de8 <HAL_FLASH_SET_DUAL_MODE>:
20022de8:	b150      	cbz	r0, 20022e00 <HAL_FLASH_SET_DUAL_MODE+0x18>
20022dea:	6803      	ldr	r3, [r0, #0]
20022dec:	681a      	ldr	r2, [r3, #0]
20022dee:	b121      	cbz	r1, 20022dfa <HAL_FLASH_SET_DUAL_MODE+0x12>
20022df0:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
20022df4:	2000      	movs	r0, #0
20022df6:	601a      	str	r2, [r3, #0]
20022df8:	4770      	bx	lr
20022dfa:	f022 7280 	bic.w	r2, r2, #16777216	@ 0x1000000
20022dfe:	e7f9      	b.n	20022df4 <HAL_FLASH_SET_DUAL_MODE+0xc>
20022e00:	2001      	movs	r0, #1
20022e02:	4770      	bx	lr

20022e04 <HAL_MPI_EN_FIXLAT>:
20022e04:	b150      	cbz	r0, 20022e1c <HAL_MPI_EN_FIXLAT+0x18>
20022e06:	6803      	ldr	r3, [r0, #0]
20022e08:	689a      	ldr	r2, [r3, #8]
20022e0a:	b121      	cbz	r1, 20022e16 <HAL_MPI_EN_FIXLAT+0x12>
20022e0c:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20022e10:	2000      	movs	r0, #0
20022e12:	609a      	str	r2, [r3, #8]
20022e14:	4770      	bx	lr
20022e16:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20022e1a:	e7f9      	b.n	20022e10 <HAL_MPI_EN_FIXLAT+0xc>
20022e1c:	2001      	movs	r0, #1
20022e1e:	4770      	bx	lr

20022e20 <HAL_MPI_ENABLE_DQS>:
20022e20:	b150      	cbz	r0, 20022e38 <HAL_MPI_ENABLE_DQS+0x18>
20022e22:	6803      	ldr	r3, [r0, #0]
20022e24:	689a      	ldr	r2, [r3, #8]
20022e26:	b121      	cbz	r1, 20022e32 <HAL_MPI_ENABLE_DQS+0x12>
20022e28:	f042 0208 	orr.w	r2, r2, #8
20022e2c:	2000      	movs	r0, #0
20022e2e:	609a      	str	r2, [r3, #8]
20022e30:	4770      	bx	lr
20022e32:	f022 0208 	bic.w	r2, r2, #8
20022e36:	e7f9      	b.n	20022e2c <HAL_MPI_ENABLE_DQS+0xc>
20022e38:	2001      	movs	r0, #1
20022e3a:	4770      	bx	lr

20022e3c <HAL_MPI_SET_DQS_DELAY>:
20022e3c:	b140      	cbz	r0, 20022e50 <HAL_MPI_SET_DQS_DELAY+0x14>
20022e3e:	6802      	ldr	r2, [r0, #0]
20022e40:	2000      	movs	r0, #0
20022e42:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20022e44:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
20022e48:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
20022e4c:	6591      	str	r1, [r2, #88]	@ 0x58
20022e4e:	4770      	bx	lr
20022e50:	2001      	movs	r0, #1
20022e52:	4770      	bx	lr

20022e54 <HAL_MPI_SET_SCK>:
20022e54:	b160      	cbz	r0, 20022e70 <HAL_MPI_SET_SCK+0x1c>
20022e56:	6800      	ldr	r0, [r0, #0]
20022e58:	0652      	lsls	r2, r2, #25
20022e5a:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20022e5c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
20022e60:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022e64:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022e68:	4319      	orrs	r1, r3
20022e6a:	6581      	str	r1, [r0, #88]	@ 0x58
20022e6c:	2000      	movs	r0, #0
20022e6e:	4770      	bx	lr
20022e70:	2001      	movs	r0, #1
20022e72:	4770      	bx	lr

20022e74 <HAL_MPI_CFG_DTR>:
20022e74:	b510      	push	{r4, lr}
20022e76:	b1f0      	cbz	r0, 20022eb6 <HAL_MPI_CFG_DTR+0x42>
20022e78:	6804      	ldr	r4, [r0, #0]
20022e7a:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20022e7c:	b1b1      	cbz	r1, 20022eac <HAL_MPI_CFG_DTR+0x38>
20022e7e:	2a02      	cmp	r2, #2
20022e80:	bf84      	itt	hi
20022e82:	3a02      	subhi	r2, #2
20022e84:	b2d2      	uxtbhi	r2, r2
20022e86:	0213      	lsls	r3, r2, #8
20022e88:	f36f 000f 	bfc	r0, #0, #16
20022e8c:	f403 43fe 	and.w	r3, r3, #32512	@ 0x7f00
20022e90:	4303      	orrs	r3, r0
20022e92:	0612      	lsls	r2, r2, #24
20022e94:	bf54      	ite	pl
20022e96:	f043 6380 	orrpl.w	r3, r3, #67108864	@ 0x4000000
20022e9a:	f043 63a0 	orrmi.w	r3, r3, #83886080	@ 0x5000000
20022e9e:	f043 030a 	orr.w	r3, r3, #10
20022ea2:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022ea6:	2000      	movs	r0, #0
20022ea8:	65a3      	str	r3, [r4, #88]	@ 0x58
20022eaa:	bd10      	pop	{r4, pc}
20022eac:	4b03      	ldr	r3, [pc, #12]	@ (20022ebc <HAL_MPI_CFG_DTR+0x48>)
20022eae:	4003      	ands	r3, r0
20022eb0:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
20022eb4:	e7f7      	b.n	20022ea6 <HAL_MPI_CFG_DTR+0x32>
20022eb6:	2001      	movs	r0, #1
20022eb8:	e7f7      	b.n	20022eaa <HAL_MPI_CFG_DTR+0x36>
20022eba:	bf00      	nop
20022ebc:	faff0000 	.word	0xfaff0000

20022ec0 <HAL_MPI_MODIFY_RCMD_DELAY>:
20022ec0:	b130      	cbz	r0, 20022ed0 <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
20022ec2:	6802      	ldr	r2, [r0, #0]
20022ec4:	6c93      	ldr	r3, [r2, #72]	@ 0x48
20022ec6:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022eca:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022ece:	6491      	str	r1, [r2, #72]	@ 0x48
20022ed0:	4770      	bx	lr

20022ed2 <HAL_MPI_MODIFY_WCMD_DELAY>:
20022ed2:	b130      	cbz	r0, 20022ee2 <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
20022ed4:	6802      	ldr	r2, [r0, #0]
20022ed6:	6d13      	ldr	r3, [r2, #80]	@ 0x50
20022ed8:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022edc:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022ee0:	6511      	str	r1, [r2, #80]	@ 0x50
20022ee2:	4770      	bx	lr

20022ee4 <HAL_FLASH_CONFIG_AHB_READ>:
20022ee4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20022ee6:	4605      	mov	r5, r0
20022ee8:	2800      	cmp	r0, #0
20022eea:	d03d      	beq.n	20022f68 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022eec:	68c4      	ldr	r4, [r0, #12]
20022eee:	b301      	cbz	r1, 20022f32 <HAL_FLASH_CONFIG_AHB_READ+0x4e>
20022ef0:	f894 306a 	ldrb.w	r3, [r4, #106]	@ 0x6a
20022ef4:	2b00      	cmp	r3, #0
20022ef6:	d037      	beq.n	20022f68 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022ef8:	f994 6072 	ldrsb.w	r6, [r4, #114]	@ 0x72
20022efc:	f994 306e 	ldrsb.w	r3, [r4, #110]	@ 0x6e
20022f00:	f994 106c 	ldrsb.w	r1, [r4, #108]	@ 0x6c
20022f04:	f994 206d 	ldrsb.w	r2, [r4, #109]	@ 0x6d
20022f08:	9603      	str	r6, [sp, #12]
20022f0a:	f994 6071 	ldrsb.w	r6, [r4, #113]	@ 0x71
20022f0e:	9602      	str	r6, [sp, #8]
20022f10:	f994 6070 	ldrsb.w	r6, [r4, #112]	@ 0x70
20022f14:	9601      	str	r6, [sp, #4]
20022f16:	f994 406f 	ldrsb.w	r4, [r4, #111]	@ 0x6f
20022f1a:	9400      	str	r4, [sp, #0]
20022f1c:	f7ff fd9e 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
20022f20:	68eb      	ldr	r3, [r5, #12]
20022f22:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20022f26:	4628      	mov	r0, r5
20022f28:	f7ff fd8d 	bl	20022a46 <HAL_FLASH_SET_AHB_RCMD>
20022f2c:	2000      	movs	r0, #0
20022f2e:	b004      	add	sp, #16
20022f30:	bd70      	pop	{r4, r5, r6, pc}
20022f32:	f894 3046 	ldrb.w	r3, [r4, #70]	@ 0x46
20022f36:	b1bb      	cbz	r3, 20022f68 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022f38:	f994 604e 	ldrsb.w	r6, [r4, #78]	@ 0x4e
20022f3c:	f994 304a 	ldrsb.w	r3, [r4, #74]	@ 0x4a
20022f40:	f994 1048 	ldrsb.w	r1, [r4, #72]	@ 0x48
20022f44:	f994 2049 	ldrsb.w	r2, [r4, #73]	@ 0x49
20022f48:	9603      	str	r6, [sp, #12]
20022f4a:	f994 604d 	ldrsb.w	r6, [r4, #77]	@ 0x4d
20022f4e:	9602      	str	r6, [sp, #8]
20022f50:	f994 604c 	ldrsb.w	r6, [r4, #76]	@ 0x4c
20022f54:	9601      	str	r6, [sp, #4]
20022f56:	f994 404b 	ldrsb.w	r4, [r4, #75]	@ 0x4b
20022f5a:	9400      	str	r4, [sp, #0]
20022f5c:	f7ff fd7e 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
20022f60:	68eb      	ldr	r3, [r5, #12]
20022f62:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
20022f66:	e7de      	b.n	20022f26 <HAL_FLASH_CONFIG_AHB_READ+0x42>
20022f68:	2001      	movs	r0, #1
20022f6a:	e7e0      	b.n	20022f2e <HAL_FLASH_CONFIG_AHB_READ+0x4a>

20022f6c <HAL_FLASH_CONFIG_FULL_AHB_READ>:
20022f6c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20022f6e:	4605      	mov	r5, r0
20022f70:	2800      	cmp	r0, #0
20022f72:	d036      	beq.n	20022fe2 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x76>
20022f74:	68c4      	ldr	r4, [r0, #12]
20022f76:	b1e1      	cbz	r1, 20022fb2 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x46>
20022f78:	f994 616e 	ldrsb.w	r6, [r4, #366]	@ 0x16e
20022f7c:	f994 316a 	ldrsb.w	r3, [r4, #362]	@ 0x16a
20022f80:	f994 1168 	ldrsb.w	r1, [r4, #360]	@ 0x168
20022f84:	f994 2169 	ldrsb.w	r2, [r4, #361]	@ 0x169
20022f88:	9603      	str	r6, [sp, #12]
20022f8a:	f994 616d 	ldrsb.w	r6, [r4, #365]	@ 0x16d
20022f8e:	9602      	str	r6, [sp, #8]
20022f90:	f994 616c 	ldrsb.w	r6, [r4, #364]	@ 0x16c
20022f94:	9601      	str	r6, [sp, #4]
20022f96:	f994 416b 	ldrsb.w	r4, [r4, #363]	@ 0x16b
20022f9a:	9400      	str	r4, [sp, #0]
20022f9c:	f7ff fd5e 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
20022fa0:	68eb      	ldr	r3, [r5, #12]
20022fa2:	f893 1166 	ldrb.w	r1, [r3, #358]	@ 0x166
20022fa6:	4628      	mov	r0, r5
20022fa8:	f7ff fd4d 	bl	20022a46 <HAL_FLASH_SET_AHB_RCMD>
20022fac:	2000      	movs	r0, #0
20022fae:	b004      	add	sp, #16
20022fb0:	bd70      	pop	{r4, r5, r6, pc}
20022fb2:	f994 615c 	ldrsb.w	r6, [r4, #348]	@ 0x15c
20022fb6:	f994 3158 	ldrsb.w	r3, [r4, #344]	@ 0x158
20022fba:	f994 1156 	ldrsb.w	r1, [r4, #342]	@ 0x156
20022fbe:	f994 2157 	ldrsb.w	r2, [r4, #343]	@ 0x157
20022fc2:	9603      	str	r6, [sp, #12]
20022fc4:	f994 615b 	ldrsb.w	r6, [r4, #347]	@ 0x15b
20022fc8:	9602      	str	r6, [sp, #8]
20022fca:	f994 615a 	ldrsb.w	r6, [r4, #346]	@ 0x15a
20022fce:	9601      	str	r6, [sp, #4]
20022fd0:	f994 4159 	ldrsb.w	r4, [r4, #345]	@ 0x159
20022fd4:	9400      	str	r4, [sp, #0]
20022fd6:	f7ff fd41 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
20022fda:	68eb      	ldr	r3, [r5, #12]
20022fdc:	f893 1154 	ldrb.w	r1, [r3, #340]	@ 0x154
20022fe0:	e7e1      	b.n	20022fa6 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x3a>
20022fe2:	2001      	movs	r0, #1
20022fe4:	e7e3      	b.n	20022fae <HAL_FLASH_CONFIG_FULL_AHB_READ+0x42>

20022fe6 <HAL_FLASH_PRE_CMD>:
20022fe6:	b530      	push	{r4, r5, lr}
20022fe8:	68c4      	ldr	r4, [r0, #12]
20022fea:	b087      	sub	sp, #28
20022fec:	b304      	cbz	r4, 20023030 <HAL_FLASH_PRE_CMD+0x4a>
20022fee:	2938      	cmp	r1, #56	@ 0x38
20022ff0:	d81e      	bhi.n	20023030 <HAL_FLASH_PRE_CMD+0x4a>
20022ff2:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
20022ff6:	440c      	add	r4, r1
20022ff8:	7c23      	ldrb	r3, [r4, #16]
20022ffa:	b1cb      	cbz	r3, 20023030 <HAL_FLASH_PRE_CMD+0x4a>
20022ffc:	f994 5018 	ldrsb.w	r5, [r4, #24]
20023000:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023004:	f994 2012 	ldrsb.w	r2, [r4, #18]
20023008:	f994 1011 	ldrsb.w	r1, [r4, #17]
2002300c:	9504      	str	r5, [sp, #16]
2002300e:	f994 5017 	ldrsb.w	r5, [r4, #23]
20023012:	9503      	str	r5, [sp, #12]
20023014:	f994 5016 	ldrsb.w	r5, [r4, #22]
20023018:	9502      	str	r5, [sp, #8]
2002301a:	f994 5015 	ldrsb.w	r5, [r4, #21]
2002301e:	9501      	str	r5, [sp, #4]
20023020:	f994 4014 	ldrsb.w	r4, [r4, #20]
20023024:	9400      	str	r4, [sp, #0]
20023026:	f7ff fdd0 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
2002302a:	2000      	movs	r0, #0
2002302c:	b007      	add	sp, #28
2002302e:	bd30      	pop	{r4, r5, pc}
20023030:	2001      	movs	r0, #1
20023032:	e7fb      	b.n	2002302c <HAL_FLASH_PRE_CMD+0x46>

20023034 <HAL_FLASH_ISSUE_CMD>:
20023034:	b5f0      	push	{r4, r5, r6, r7, lr}
20023036:	68c4      	ldr	r4, [r0, #12]
20023038:	4606      	mov	r6, r0
2002303a:	4617      	mov	r7, r2
2002303c:	b087      	sub	sp, #28
2002303e:	b354      	cbz	r4, 20023096 <HAL_FLASH_ISSUE_CMD+0x62>
20023040:	2938      	cmp	r1, #56	@ 0x38
20023042:	d828      	bhi.n	20023096 <HAL_FLASH_ISSUE_CMD+0x62>
20023044:	eb01 05c1 	add.w	r5, r1, r1, lsl #3
20023048:	442c      	add	r4, r5
2002304a:	7c23      	ldrb	r3, [r4, #16]
2002304c:	b31b      	cbz	r3, 20023096 <HAL_FLASH_ISSUE_CMD+0x62>
2002304e:	f994 c018 	ldrsb.w	ip, [r4, #24]
20023052:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023056:	f994 2012 	ldrsb.w	r2, [r4, #18]
2002305a:	f994 1011 	ldrsb.w	r1, [r4, #17]
2002305e:	f8cd c010 	str.w	ip, [sp, #16]
20023062:	f994 c017 	ldrsb.w	ip, [r4, #23]
20023066:	f8cd c00c 	str.w	ip, [sp, #12]
2002306a:	f994 c016 	ldrsb.w	ip, [r4, #22]
2002306e:	f8cd c008 	str.w	ip, [sp, #8]
20023072:	f994 c015 	ldrsb.w	ip, [r4, #21]
20023076:	f8cd c004 	str.w	ip, [sp, #4]
2002307a:	f994 4014 	ldrsb.w	r4, [r4, #20]
2002307e:	9400      	str	r4, [sp, #0]
20023080:	f7ff fda3 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
20023084:	68f3      	ldr	r3, [r6, #12]
20023086:	463a      	mov	r2, r7
20023088:	442b      	add	r3, r5
2002308a:	4630      	mov	r0, r6
2002308c:	7c19      	ldrb	r1, [r3, #16]
2002308e:	f7ff fd57 	bl	20022b40 <HAL_FLASH_SET_CMD>
20023092:	b007      	add	sp, #28
20023094:	bdf0      	pop	{r4, r5, r6, r7, pc}
20023096:	2001      	movs	r0, #1
20023098:	e7fb      	b.n	20023092 <HAL_FLASH_ISSUE_CMD+0x5e>

2002309a <HAL_FLASH_ISSUE_CMD_SEQ>:
2002309a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
2002309e:	4690      	mov	r8, r2
200230a0:	68c2      	ldr	r2, [r0, #12]
200230a2:	4604      	mov	r4, r0
200230a4:	b086      	sub	sp, #24
200230a6:	2a00      	cmp	r2, #0
200230a8:	d072      	beq.n	20023190 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200230aa:	2938      	cmp	r1, #56	@ 0x38
200230ac:	d870      	bhi.n	20023190 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200230ae:	eb01 07c1 	add.w	r7, r1, r1, lsl #3
200230b2:	19d6      	adds	r6, r2, r7
200230b4:	7c31      	ldrb	r1, [r6, #16]
200230b6:	2900      	cmp	r1, #0
200230b8:	d06a      	beq.n	20023190 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200230ba:	2b38      	cmp	r3, #56	@ 0x38
200230bc:	d868      	bhi.n	20023190 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200230be:	eb03 05c3 	add.w	r5, r3, r3, lsl #3
200230c2:	442a      	add	r2, r5
200230c4:	7c13      	ldrb	r3, [r2, #16]
200230c6:	2b00      	cmp	r3, #0
200230c8:	d062      	beq.n	20023190 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200230ca:	f996 c018 	ldrsb.w	ip, [r6, #24]
200230ce:	f996 3013 	ldrsb.w	r3, [r6, #19]
200230d2:	f996 2012 	ldrsb.w	r2, [r6, #18]
200230d6:	f996 1011 	ldrsb.w	r1, [r6, #17]
200230da:	f8cd c010 	str.w	ip, [sp, #16]
200230de:	f996 c017 	ldrsb.w	ip, [r6, #23]
200230e2:	f8cd c00c 	str.w	ip, [sp, #12]
200230e6:	f996 c016 	ldrsb.w	ip, [r6, #22]
200230ea:	f8cd c008 	str.w	ip, [sp, #8]
200230ee:	f996 c015 	ldrsb.w	ip, [r6, #21]
200230f2:	f8cd c004 	str.w	ip, [sp, #4]
200230f6:	f996 6014 	ldrsb.w	r6, [r6, #20]
200230fa:	9600      	str	r6, [sp, #0]
200230fc:	f7ff fd65 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
20023100:	68e0      	ldr	r0, [r4, #12]
20023102:	4428      	add	r0, r5
20023104:	f990 6018 	ldrsb.w	r6, [r0, #24]
20023108:	f990 3013 	ldrsb.w	r3, [r0, #19]
2002310c:	f990 2012 	ldrsb.w	r2, [r0, #18]
20023110:	f990 1011 	ldrsb.w	r1, [r0, #17]
20023114:	9604      	str	r6, [sp, #16]
20023116:	f990 6017 	ldrsb.w	r6, [r0, #23]
2002311a:	9603      	str	r6, [sp, #12]
2002311c:	f990 6016 	ldrsb.w	r6, [r0, #22]
20023120:	9602      	str	r6, [sp, #8]
20023122:	f990 6015 	ldrsb.w	r6, [r0, #21]
20023126:	9601      	str	r6, [sp, #4]
20023128:	f990 0014 	ldrsb.w	r0, [r0, #20]
2002312c:	9000      	str	r0, [sp, #0]
2002312e:	4620      	mov	r0, r4
20023130:	f7ff fd6c 	bl	20022c0c <HAL_FLASH_MANUAL_CMD2>
20023134:	2200      	movs	r2, #0
20023136:	6823      	ldr	r3, [r4, #0]
20023138:	2101      	movs	r1, #1
2002313a:	67da      	str	r2, [r3, #124]	@ 0x7c
2002313c:	68e3      	ldr	r3, [r4, #12]
2002313e:	6822      	ldr	r2, [r4, #0]
20023140:	442b      	add	r3, r5
20023142:	7c1b      	ldrb	r3, [r3, #16]
20023144:	4620      	mov	r0, r4
20023146:	62d3      	str	r3, [r2, #44]	@ 0x2c
20023148:	6823      	ldr	r3, [r4, #0]
2002314a:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
2002314c:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
20023150:	f7ff fe01 	bl	20022d56 <HAL_FLASH_ENABLE_CMD2>
20023154:	4620      	mov	r0, r4
20023156:	f7ff fe0c 	bl	20022d72 <HAL_FLASH_STAUS_MATCH_CMD2>
2002315a:	6823      	ldr	r3, [r4, #0]
2002315c:	f8c3 801c 	str.w	r8, [r3, #28]
20023160:	68e3      	ldr	r3, [r4, #12]
20023162:	6822      	ldr	r2, [r4, #0]
20023164:	443b      	add	r3, r7
20023166:	7c1b      	ldrb	r3, [r3, #16]
20023168:	6193      	str	r3, [r2, #24]
2002316a:	4620      	mov	r0, r4
2002316c:	f7ff fd0a 	bl	20022b84 <HAL_FLASH_STATUS_MATCH>
20023170:	2800      	cmp	r0, #0
20023172:	d0fa      	beq.n	2002316a <HAL_FLASH_ISSUE_CMD_SEQ+0xd0>
20023174:	2109      	movs	r1, #9
20023176:	4620      	mov	r0, r4
20023178:	f7ff fcfe 	bl	20022b78 <HAL_FLASH_CLR_STATUS>
2002317c:	2100      	movs	r1, #0
2002317e:	f7ff fdea 	bl	20022d56 <HAL_FLASH_ENABLE_CMD2>
20023182:	4620      	mov	r0, r4
20023184:	f7ff fdf5 	bl	20022d72 <HAL_FLASH_STAUS_MATCH_CMD2>
20023188:	4608      	mov	r0, r1
2002318a:	b006      	add	sp, #24
2002318c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20023190:	2001      	movs	r0, #1
20023192:	e7fa      	b.n	2002318a <HAL_FLASH_ISSUE_CMD_SEQ+0xf0>

20023194 <nor_qspi_switch>:
20023194:	b570      	push	{r4, r5, r6, lr}
20023196:	4604      	mov	r4, r0
20023198:	b3e0      	cbz	r0, 20023214 <nor_qspi_switch+0x80>
2002319a:	68c3      	ldr	r3, [r0, #12]
2002319c:	b3d3      	cbz	r3, 20023214 <nor_qspi_switch+0x80>
2002319e:	b3c9      	cbz	r1, 20023214 <nor_qspi_switch+0x80>
200231a0:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
200231a4:	2101      	movs	r1, #1
200231a6:	b3b5      	cbz	r5, 20023216 <nor_qspi_switch+0x82>
200231a8:	f7ff fca5 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
200231ac:	2200      	movs	r2, #0
200231ae:	2114      	movs	r1, #20
200231b0:	4620      	mov	r0, r4
200231b2:	f7ff ff3f 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200231b6:	4620      	mov	r0, r4
200231b8:	f7ff fcf3 	bl	20022ba2 <HAL_FLASH_READ32>
200231bc:	f010 0501 	ands.w	r5, r0, #1
200231c0:	d000      	beq.n	200231c4 <nor_qspi_switch+0x30>
200231c2:	e7fe      	b.n	200231c2 <nor_qspi_switch+0x2e>
200231c4:	462a      	mov	r2, r5
200231c6:	2115      	movs	r1, #21
200231c8:	4620      	mov	r0, r4
200231ca:	f7ff ff33 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200231ce:	4606      	mov	r6, r0
200231d0:	b120      	cbz	r0, 200231dc <nor_qspi_switch+0x48>
200231d2:	462a      	mov	r2, r5
200231d4:	4629      	mov	r1, r5
200231d6:	4620      	mov	r0, r4
200231d8:	f7ff ff2c 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200231dc:	2102      	movs	r1, #2
200231de:	4620      	mov	r0, r4
200231e0:	f7ff fc82 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
200231e4:	2101      	movs	r1, #1
200231e6:	4620      	mov	r0, r4
200231e8:	f7ff fc85 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
200231ec:	2200      	movs	r2, #0
200231ee:	212b      	movs	r1, #43	@ 0x2b
200231f0:	4620      	mov	r0, r4
200231f2:	f7ff ff1f 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200231f6:	b16e      	cbz	r6, 20023214 <nor_qspi_switch+0x80>
200231f8:	2101      	movs	r1, #1
200231fa:	4620      	mov	r0, r4
200231fc:	f7ff fc7b 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023200:	2200      	movs	r2, #0
20023202:	2102      	movs	r1, #2
20023204:	4620      	mov	r0, r4
20023206:	f7ff ff15 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
2002320a:	4620      	mov	r0, r4
2002320c:	f7ff fcc0 	bl	20022b90 <HAL_FLASH_IS_PROG_DONE>
20023210:	2800      	cmp	r0, #0
20023212:	d0f5      	beq.n	20023200 <nor_qspi_switch+0x6c>
20023214:	bd70      	pop	{r4, r5, r6, pc}
20023216:	f7ff fc6e 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
2002321a:	462a      	mov	r2, r5
2002321c:	2102      	movs	r1, #2
2002321e:	4620      	mov	r0, r4
20023220:	f7ff ff08 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023224:	4620      	mov	r0, r4
20023226:	f7ff fcbc 	bl	20022ba2 <HAL_FLASH_READ32>
2002322a:	462a      	mov	r2, r5
2002322c:	2114      	movs	r1, #20
2002322e:	4620      	mov	r0, r4
20023230:	f7ff ff00 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023234:	b910      	cbnz	r0, 2002323c <nor_qspi_switch+0xa8>
20023236:	4620      	mov	r0, r4
20023238:	f7ff fcb3 	bl	20022ba2 <HAL_FLASH_READ32>
2002323c:	68e3      	ldr	r3, [r4, #12]
2002323e:	7a1b      	ldrb	r3, [r3, #8]
20023240:	b3ab      	cbz	r3, 200232ae <nor_qspi_switch+0x11a>
20023242:	2101      	movs	r1, #1
20023244:	f003 050f 	and.w	r5, r3, #15
20023248:	091b      	lsrs	r3, r3, #4
2002324a:	fa01 f303 	lsl.w	r3, r1, r3
2002324e:	b2db      	uxtb	r3, r3
20023250:	b10d      	cbz	r5, 20023256 <nor_qspi_switch+0xc2>
20023252:	461d      	mov	r5, r3
20023254:	2300      	movs	r3, #0
20023256:	2200      	movs	r2, #0
20023258:	2115      	movs	r1, #21
2002325a:	4620      	mov	r0, r4
2002325c:	ea43 2505 	orr.w	r5, r3, r5, lsl #8
20023260:	f7ff fee8 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023264:	4606      	mov	r6, r0
20023266:	b120      	cbz	r0, 20023272 <nor_qspi_switch+0xde>
20023268:	2200      	movs	r2, #0
2002326a:	4620      	mov	r0, r4
2002326c:	4611      	mov	r1, r2
2002326e:	f7ff fee1 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023272:	4629      	mov	r1, r5
20023274:	4620      	mov	r0, r4
20023276:	f7ff fc37 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
2002327a:	2102      	movs	r1, #2
2002327c:	4620      	mov	r0, r4
2002327e:	f7ff fc3a 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023282:	2200      	movs	r2, #0
20023284:	2103      	movs	r1, #3
20023286:	4620      	mov	r0, r4
20023288:	f7ff fed4 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
2002328c:	2e00      	cmp	r6, #0
2002328e:	d0c1      	beq.n	20023214 <nor_qspi_switch+0x80>
20023290:	2101      	movs	r1, #1
20023292:	4620      	mov	r0, r4
20023294:	f7ff fc2f 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023298:	2200      	movs	r2, #0
2002329a:	2102      	movs	r1, #2
2002329c:	4620      	mov	r0, r4
2002329e:	f7ff fec9 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200232a2:	4620      	mov	r0, r4
200232a4:	f7ff fc74 	bl	20022b90 <HAL_FLASH_IS_PROG_DONE>
200232a8:	2800      	cmp	r0, #0
200232aa:	d0f5      	beq.n	20023298 <nor_qspi_switch+0x104>
200232ac:	e7b2      	b.n	20023214 <nor_qspi_switch+0x80>
200232ae:	2502      	movs	r5, #2
200232b0:	e7d1      	b.n	20023256 <nor_qspi_switch+0xc2>

200232b2 <HAL_FLASH_SET_QUAL_SPI>:
200232b2:	b538      	push	{r3, r4, r5, lr}
200232b4:	4604      	mov	r4, r0
200232b6:	460d      	mov	r5, r1
200232b8:	f7ff ff6c 	bl	20023194 <nor_qspi_switch>
200232bc:	4629      	mov	r1, r5
200232be:	4620      	mov	r0, r4
200232c0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200232c4:	f7ff be0e 	b.w	20022ee4 <HAL_FLASH_CONFIG_AHB_READ>

200232c8 <HAL_FLASH_FADDR_SET_QSPI>:
200232c8:	b538      	push	{r3, r4, r5, lr}
200232ca:	4604      	mov	r4, r0
200232cc:	460d      	mov	r5, r1
200232ce:	f7ff ff61 	bl	20023194 <nor_qspi_switch>
200232d2:	4629      	mov	r1, r5
200232d4:	4620      	mov	r0, r4
200232d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200232da:	f7ff be47 	b.w	20022f6c <HAL_FLASH_CONFIG_FULL_AHB_READ>

200232de <HAL_FLASH_GET_NOR_ID>:
200232de:	b510      	push	{r4, lr}
200232e0:	4604      	mov	r4, r0
200232e2:	b140      	cbz	r0, 200232f6 <HAL_FLASH_GET_NOR_ID+0x18>
200232e4:	6802      	ldr	r2, [r0, #0]
200232e6:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200232e8:	f36f 0315 	bfc	r3, #0, #22
200232ec:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
200232f0:	f043 0301 	orr.w	r3, r3, #1
200232f4:	6293      	str	r3, [r2, #40]	@ 0x28
200232f6:	2103      	movs	r1, #3
200232f8:	4620      	mov	r0, r4
200232fa:	f7ff fbfc 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
200232fe:	2200      	movs	r2, #0
20023300:	219f      	movs	r1, #159	@ 0x9f
20023302:	4620      	mov	r0, r4
20023304:	f7ff fc1c 	bl	20022b40 <HAL_FLASH_SET_CMD>
20023308:	4620      	mov	r0, r4
2002330a:	f7ff fc4a 	bl	20022ba2 <HAL_FLASH_READ32>
2002330e:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
20023312:	bd10      	pop	{r4, pc}

20023314 <HAL_FLASH_CLR_PROTECT>:
20023314:	b570      	push	{r4, r5, r6, lr}
20023316:	4604      	mov	r4, r0
20023318:	2800      	cmp	r0, #0
2002331a:	d03e      	beq.n	2002339a <HAL_FLASH_CLR_PROTECT+0x86>
2002331c:	68c3      	ldr	r3, [r0, #12]
2002331e:	2101      	movs	r1, #1
20023320:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
20023324:	2d00      	cmp	r5, #0
20023326:	d03b      	beq.n	200233a0 <HAL_FLASH_CLR_PROTECT+0x8c>
20023328:	f7ff fbe5 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
2002332c:	2200      	movs	r2, #0
2002332e:	2102      	movs	r1, #2
20023330:	4620      	mov	r0, r4
20023332:	f7ff fe7f 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023336:	bb88      	cbnz	r0, 2002339c <HAL_FLASH_CLR_PROTECT+0x88>
20023338:	4620      	mov	r0, r4
2002333a:	f7ff fc32 	bl	20022ba2 <HAL_FLASH_READ32>
2002333e:	b2c0      	uxtb	r0, r0
20023340:	68e3      	ldr	r3, [r4, #12]
20023342:	79dd      	ldrb	r5, [r3, #7]
20023344:	b10d      	cbz	r5, 2002334a <HAL_FLASH_CLR_PROTECT+0x36>
20023346:	ea20 0505 	bic.w	r5, r0, r5
2002334a:	2200      	movs	r2, #0
2002334c:	2115      	movs	r1, #21
2002334e:	4620      	mov	r0, r4
20023350:	f7ff fe70 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023354:	4606      	mov	r6, r0
20023356:	b120      	cbz	r0, 20023362 <HAL_FLASH_CLR_PROTECT+0x4e>
20023358:	2200      	movs	r2, #0
2002335a:	4620      	mov	r0, r4
2002335c:	4611      	mov	r1, r2
2002335e:	f7ff fe69 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023362:	4629      	mov	r1, r5
20023364:	4620      	mov	r0, r4
20023366:	f7ff fbbf 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
2002336a:	2101      	movs	r1, #1
2002336c:	4620      	mov	r0, r4
2002336e:	f7ff fbc2 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023372:	2200      	movs	r2, #0
20023374:	2103      	movs	r1, #3
20023376:	4620      	mov	r0, r4
20023378:	f7ff fe5c 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
2002337c:	b16e      	cbz	r6, 2002339a <HAL_FLASH_CLR_PROTECT+0x86>
2002337e:	2101      	movs	r1, #1
20023380:	4620      	mov	r0, r4
20023382:	f7ff fbb8 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023386:	2200      	movs	r2, #0
20023388:	2102      	movs	r1, #2
2002338a:	4620      	mov	r0, r4
2002338c:	f7ff fe52 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023390:	4620      	mov	r0, r4
20023392:	f7ff fbfd 	bl	20022b90 <HAL_FLASH_IS_PROG_DONE>
20023396:	2800      	cmp	r0, #0
20023398:	d0f5      	beq.n	20023386 <HAL_FLASH_CLR_PROTECT+0x72>
2002339a:	bd70      	pop	{r4, r5, r6, pc}
2002339c:	2000      	movs	r0, #0
2002339e:	e7cf      	b.n	20023340 <HAL_FLASH_CLR_PROTECT+0x2c>
200233a0:	f7ff fba9 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
200233a4:	462a      	mov	r2, r5
200233a6:	2102      	movs	r1, #2
200233a8:	4620      	mov	r0, r4
200233aa:	f7ff fe43 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200233ae:	2800      	cmp	r0, #0
200233b0:	d13e      	bne.n	20023430 <HAL_FLASH_CLR_PROTECT+0x11c>
200233b2:	4620      	mov	r0, r4
200233b4:	f7ff fbf5 	bl	20022ba2 <HAL_FLASH_READ32>
200233b8:	b2c6      	uxtb	r6, r0
200233ba:	2200      	movs	r2, #0
200233bc:	2114      	movs	r1, #20
200233be:	4620      	mov	r0, r4
200233c0:	f7ff fe38 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200233c4:	b918      	cbnz	r0, 200233ce <HAL_FLASH_CLR_PROTECT+0xba>
200233c6:	4620      	mov	r0, r4
200233c8:	f7ff fbeb 	bl	20022ba2 <HAL_FLASH_READ32>
200233cc:	b2c5      	uxtb	r5, r0
200233ce:	68e3      	ldr	r3, [r4, #12]
200233d0:	79d9      	ldrb	r1, [r3, #7]
200233d2:	b109      	cbz	r1, 200233d8 <HAL_FLASH_CLR_PROTECT+0xc4>
200233d4:	ea26 0101 	bic.w	r1, r6, r1
200233d8:	2200      	movs	r2, #0
200233da:	4620      	mov	r0, r4
200233dc:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
200233e0:	2115      	movs	r1, #21
200233e2:	f7ff fe27 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200233e6:	4606      	mov	r6, r0
200233e8:	b120      	cbz	r0, 200233f4 <HAL_FLASH_CLR_PROTECT+0xe0>
200233ea:	2200      	movs	r2, #0
200233ec:	4620      	mov	r0, r4
200233ee:	4611      	mov	r1, r2
200233f0:	f7ff fe20 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200233f4:	4629      	mov	r1, r5
200233f6:	4620      	mov	r0, r4
200233f8:	f7ff fb76 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
200233fc:	2102      	movs	r1, #2
200233fe:	4620      	mov	r0, r4
20023400:	f7ff fb79 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023404:	2200      	movs	r2, #0
20023406:	2103      	movs	r1, #3
20023408:	4620      	mov	r0, r4
2002340a:	f7ff fe13 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
2002340e:	2e00      	cmp	r6, #0
20023410:	d0c3      	beq.n	2002339a <HAL_FLASH_CLR_PROTECT+0x86>
20023412:	2101      	movs	r1, #1
20023414:	4620      	mov	r0, r4
20023416:	f7ff fb6e 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
2002341a:	2200      	movs	r2, #0
2002341c:	2102      	movs	r1, #2
2002341e:	4620      	mov	r0, r4
20023420:	f7ff fe08 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023424:	4620      	mov	r0, r4
20023426:	f7ff fbb3 	bl	20022b90 <HAL_FLASH_IS_PROG_DONE>
2002342a:	2800      	cmp	r0, #0
2002342c:	d0f5      	beq.n	2002341a <HAL_FLASH_CLR_PROTECT+0x106>
2002342e:	e7b4      	b.n	2002339a <HAL_FLASH_CLR_PROTECT+0x86>
20023430:	462e      	mov	r6, r5
20023432:	e7c2      	b.n	200233ba <HAL_FLASH_CLR_PROTECT+0xa6>

20023434 <HAL_QSPI_SET_CLK_INV>:
20023434:	b160      	cbz	r0, 20023450 <HAL_QSPI_SET_CLK_INV+0x1c>
20023436:	6800      	ldr	r0, [r0, #0]
20023438:	b150      	cbz	r0, 20023450 <HAL_QSPI_SET_CLK_INV+0x1c>
2002343a:	6d83      	ldr	r3, [r0, #88]	@ 0x58
2002343c:	0609      	lsls	r1, r1, #24
2002343e:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
20023442:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
20023446:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
2002344a:	4311      	orrs	r1, r2
2002344c:	4319      	orrs	r1, r3
2002344e:	6581      	str	r1, [r0, #88]	@ 0x58
20023450:	4770      	bx	lr

20023452 <HAL_FLASH_RELEASE_DPD>:
20023452:	b538      	push	{r3, r4, r5, lr}
20023454:	4604      	mov	r4, r0
20023456:	b1d0      	cbz	r0, 2002348e <HAL_FLASH_RELEASE_DPD+0x3c>
20023458:	6803      	ldr	r3, [r0, #0]
2002345a:	21ab      	movs	r1, #171	@ 0xab
2002345c:	681d      	ldr	r5, [r3, #0]
2002345e:	f015 0501 	ands.w	r5, r5, #1
20023462:	bf02      	ittt	eq
20023464:	681a      	ldreq	r2, [r3, #0]
20023466:	f042 0201 	orreq.w	r2, r2, #1
2002346a:	601a      	streq	r2, [r3, #0]
2002346c:	6802      	ldr	r2, [r0, #0]
2002346e:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20023470:	f36f 0315 	bfc	r3, #0, #22
20023474:	f043 0301 	orr.w	r3, r3, #1
20023478:	6293      	str	r3, [r2, #40]	@ 0x28
2002347a:	2200      	movs	r2, #0
2002347c:	f7ff fb60 	bl	20022b40 <HAL_FLASH_SET_CMD>
20023480:	b925      	cbnz	r5, 2002348c <HAL_FLASH_RELEASE_DPD+0x3a>
20023482:	6822      	ldr	r2, [r4, #0]
20023484:	6813      	ldr	r3, [r2, #0]
20023486:	f023 0301 	bic.w	r3, r3, #1
2002348a:	6013      	str	r3, [r2, #0]
2002348c:	bd38      	pop	{r3, r4, r5, pc}
2002348e:	2001      	movs	r0, #1
20023490:	e7fc      	b.n	2002348c <HAL_FLASH_RELEASE_DPD+0x3a>

20023492 <flash_handle_valid>:
20023492:	b118      	cbz	r0, 2002349c <flash_handle_valid+0xa>
20023494:	68c0      	ldr	r0, [r0, #12]
20023496:	3800      	subs	r0, #0
20023498:	bf18      	it	ne
2002349a:	2001      	movne	r0, #1
2002349c:	4770      	bx	lr

2002349e <HAL_GET_FLASH_MID>:
2002349e:	2000      	movs	r0, #0
200234a0:	4770      	bx	lr

200234a2 <HAL_FLASH_DMA_START>:
200234a2:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200234a6:	4688      	mov	r8, r1
200234a8:	4699      	mov	r9, r3
200234aa:	4604      	mov	r4, r0
200234ac:	2800      	cmp	r0, #0
200234ae:	d045      	beq.n	2002353c <HAL_FLASH_DMA_START+0x9a>
200234b0:	6883      	ldr	r3, [r0, #8]
200234b2:	2b00      	cmp	r3, #0
200234b4:	d042      	beq.n	2002353c <HAL_FLASH_DMA_START+0x9a>
200234b6:	f1b9 0f00 	cmp.w	r9, #0
200234ba:	d03f      	beq.n	2002353c <HAL_FLASH_DMA_START+0x9a>
200234bc:	6801      	ldr	r1, [r0, #0]
200234be:	680f      	ldr	r7, [r1, #0]
200234c0:	b332      	cbz	r2, 20023510 <HAL_FLASH_DMA_START+0x6e>
200234c2:	2210      	movs	r2, #16
200234c4:	609a      	str	r2, [r3, #8]
200234c6:	2300      	movs	r3, #0
200234c8:	6882      	ldr	r2, [r0, #8]
200234ca:	464e      	mov	r6, r9
200234cc:	6153      	str	r3, [r2, #20]
200234ce:	6882      	ldr	r2, [r0, #8]
200234d0:	6193      	str	r3, [r2, #24]
200234d2:	6882      	ldr	r2, [r0, #8]
200234d4:	60d3      	str	r3, [r2, #12]
200234d6:	2280      	movs	r2, #128	@ 0x80
200234d8:	6883      	ldr	r3, [r0, #8]
200234da:	611a      	str	r2, [r3, #16]
200234dc:	6805      	ldr	r5, [r0, #0]
200234de:	3504      	adds	r5, #4
200234e0:	68a0      	ldr	r0, [r4, #8]
200234e2:	f7fe ff97 	bl	20022414 <HAL_DMA_DeInit>
200234e6:	bb50      	cbnz	r0, 2002353e <HAL_FLASH_DMA_START+0x9c>
200234e8:	68a0      	ldr	r0, [r4, #8]
200234ea:	f7fe ff2f 	bl	2002234c <HAL_DMA_Init>
200234ee:	bb30      	cbnz	r0, 2002353e <HAL_FLASH_DMA_START+0x9c>
200234f0:	6823      	ldr	r3, [r4, #0]
200234f2:	f047 0720 	orr.w	r7, r7, #32
200234f6:	601f      	str	r7, [r3, #0]
200234f8:	6822      	ldr	r2, [r4, #0]
200234fa:	f109 33ff 	add.w	r3, r9, #4294967295
200234fe:	6253      	str	r3, [r2, #36]	@ 0x24
20023500:	4641      	mov	r1, r8
20023502:	4633      	mov	r3, r6
20023504:	462a      	mov	r2, r5
20023506:	68a0      	ldr	r0, [r4, #8]
20023508:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002350c:	f7ff b8e0 	b.w	200226d0 <HAL_DMA_Start>
20023510:	f44f 7100 	mov.w	r1, #512	@ 0x200
20023514:	609a      	str	r2, [r3, #8]
20023516:	6883      	ldr	r3, [r0, #8]
20023518:	f109 0603 	add.w	r6, r9, #3
2002351c:	6159      	str	r1, [r3, #20]
2002351e:	f44f 6100 	mov.w	r1, #2048	@ 0x800
20023522:	6883      	ldr	r3, [r0, #8]
20023524:	4645      	mov	r5, r8
20023526:	6199      	str	r1, [r3, #24]
20023528:	6883      	ldr	r3, [r0, #8]
2002352a:	08b6      	lsrs	r6, r6, #2
2002352c:	60da      	str	r2, [r3, #12]
2002352e:	2280      	movs	r2, #128	@ 0x80
20023530:	6883      	ldr	r3, [r0, #8]
20023532:	611a      	str	r2, [r3, #16]
20023534:	6803      	ldr	r3, [r0, #0]
20023536:	f103 0804 	add.w	r8, r3, #4
2002353a:	e7d1      	b.n	200234e0 <HAL_FLASH_DMA_START+0x3e>
2002353c:	2001      	movs	r0, #1
2002353e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

20023542 <HAL_FLASH_DMA_WAIT_DONE>:
20023542:	b510      	push	{r4, lr}
20023544:	460a      	mov	r2, r1
20023546:	4604      	mov	r4, r0
20023548:	b170      	cbz	r0, 20023568 <HAL_FLASH_DMA_WAIT_DONE+0x26>
2002354a:	6880      	ldr	r0, [r0, #8]
2002354c:	b160      	cbz	r0, 20023568 <HAL_FLASH_DMA_WAIT_DONE+0x26>
2002354e:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
20023550:	b111      	cbz	r1, 20023558 <HAL_FLASH_DMA_WAIT_DONE+0x16>
20023552:	f04f 32ff 	mov.w	r2, #4294967295
20023556:	2100      	movs	r1, #0
20023558:	f7fe ffbc 	bl	200224d4 <HAL_DMA_PollForTransfer>
2002355c:	6822      	ldr	r2, [r4, #0]
2002355e:	6813      	ldr	r3, [r2, #0]
20023560:	f023 0320 	bic.w	r3, r3, #32
20023564:	6013      	str	r3, [r2, #0]
20023566:	bd10      	pop	{r4, pc}
20023568:	2001      	movs	r0, #1
2002356a:	e7fc      	b.n	20023566 <HAL_FLASH_DMA_WAIT_DONE+0x24>

2002356c <HAL_FLASH_ALIAS_CFG>:
2002356c:	b538      	push	{r3, r4, r5, lr}
2002356e:	461d      	mov	r5, r3
20023570:	4604      	mov	r4, r0
20023572:	b158      	cbz	r0, 2002358c <HAL_FLASH_ALIAS_CFG+0x20>
20023574:	6903      	ldr	r3, [r0, #16]
20023576:	428b      	cmp	r3, r1
20023578:	bf98      	it	ls
2002357a:	1ac9      	subls	r1, r1, r3
2002357c:	f7ff fb68 	bl	20022c50 <HAL_FLASH_SET_ALIAS_RANGE>
20023580:	4629      	mov	r1, r5
20023582:	4620      	mov	r0, r4
20023584:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023588:	f7ff bb74 	b.w	20022c74 <HAL_FLASH_SET_ALIAS_OFFSET>
2002358c:	bd38      	pop	{r3, r4, r5, pc}

2002358e <HAL_FLASH_NONCE_CFG>:
2002358e:	b570      	push	{r4, r5, r6, lr}
20023590:	460c      	mov	r4, r1
20023592:	4615      	mov	r5, r2
20023594:	4619      	mov	r1, r3
20023596:	4606      	mov	r6, r0
20023598:	b180      	cbz	r0, 200235bc <HAL_FLASH_NONCE_CFG+0x2e>
2002359a:	b17b      	cbz	r3, 200235bc <HAL_FLASH_NONCE_CFG+0x2e>
2002359c:	f7ff fb86 	bl	20022cac <HAL_FLASH_SET_NONCE>
200235a0:	6933      	ldr	r3, [r6, #16]
200235a2:	4630      	mov	r0, r6
200235a4:	42a3      	cmp	r3, r4
200235a6:	bf98      	it	ls
200235a8:	1ae4      	subls	r4, r4, r3
200235aa:	42ab      	cmp	r3, r5
200235ac:	bf98      	it	ls
200235ae:	1aed      	subls	r5, r5, r3
200235b0:	462a      	mov	r2, r5
200235b2:	4621      	mov	r1, r4
200235b4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
200235b8:	f7ff bb66 	b.w	20022c88 <HAL_FLASH_SET_CTR>
200235bc:	bd70      	pop	{r4, r5, r6, pc}

200235be <HAL_FLASH_AES_CFG>:
200235be:	b510      	push	{r4, lr}
200235c0:	4604      	mov	r4, r0
200235c2:	b148      	cbz	r0, 200235d8 <HAL_FLASH_AES_CFG+0x1a>
200235c4:	b101      	cbz	r1, 200235c8 <HAL_FLASH_AES_CFG+0xa>
200235c6:	2101      	movs	r1, #1
200235c8:	f7ff fb7e 	bl	20022cc8 <HAL_FLASH_SET_AES>
200235cc:	4620      	mov	r0, r4
200235ce:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200235d2:	2101      	movs	r1, #1
200235d4:	f7ff bb87 	b.w	20022ce6 <HAL_FLASH_ENABLE_AES>
200235d8:	bd10      	pop	{r4, pc}

200235da <nand_read_id>:
200235da:	b510      	push	{r4, lr}
200235dc:	460b      	mov	r3, r1
200235de:	4604      	mov	r4, r0
200235e0:	b086      	sub	sp, #24
200235e2:	b320      	cbz	r0, 2002362e <nand_read_id+0x54>
200235e4:	2908      	cmp	r1, #8
200235e6:	f04f 0100 	mov.w	r1, #0
200235ea:	f04f 0201 	mov.w	r2, #1
200235ee:	bf83      	ittte	hi
200235f0:	460b      	movhi	r3, r1
200235f2:	e9cd 1202 	strdhi	r1, r2, [sp, #8]
200235f6:	e9cd 1100 	strdhi	r1, r1, [sp]
200235fa:	e9cd 1102 	strdls	r1, r1, [sp, #8]
200235fe:	bf8e      	itee	hi
20023600:	4619      	movhi	r1, r3
20023602:	e9cd 1100 	strdls	r1, r1, [sp]
20023606:	b25b      	sxtbls	r3, r3
20023608:	9204      	str	r2, [sp, #16]
2002360a:	f7ff fade 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
2002360e:	2103      	movs	r1, #3
20023610:	4620      	mov	r0, r4
20023612:	f7ff fa70 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023616:	2200      	movs	r2, #0
20023618:	219f      	movs	r1, #159	@ 0x9f
2002361a:	4620      	mov	r0, r4
2002361c:	f7ff fa90 	bl	20022b40 <HAL_FLASH_SET_CMD>
20023620:	4620      	mov	r0, r4
20023622:	f7ff fabe 	bl	20022ba2 <HAL_FLASH_READ32>
20023626:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002362a:	b006      	add	sp, #24
2002362c:	bd10      	pop	{r4, pc}
2002362e:	20ff      	movs	r0, #255	@ 0xff
20023630:	e7fb      	b.n	2002362a <nand_read_id+0x50>

20023632 <HAL_NAND_CONF_ECC>:
20023632:	b538      	push	{r3, r4, r5, lr}
20023634:	460d      	mov	r5, r1
20023636:	4604      	mov	r4, r0
20023638:	b398      	cbz	r0, 200236a2 <HAL_NAND_CONF_ECC+0x70>
2002363a:	68c3      	ldr	r3, [r0, #12]
2002363c:	b38b      	cbz	r3, 200236a2 <HAL_NAND_CONF_ECC+0x70>
2002363e:	799a      	ldrb	r2, [r3, #6]
20023640:	b392      	cbz	r2, 200236a8 <HAL_NAND_CONF_ECC+0x76>
20023642:	7a9b      	ldrb	r3, [r3, #10]
20023644:	b383      	cbz	r3, 200236a8 <HAL_NAND_CONF_ECC+0x76>
20023646:	2101      	movs	r1, #1
20023648:	f7ff fa55 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
2002364c:	68e3      	ldr	r3, [r4, #12]
2002364e:	2102      	movs	r1, #2
20023650:	799a      	ldrb	r2, [r3, #6]
20023652:	4620      	mov	r0, r4
20023654:	f7ff fcee 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023658:	4620      	mov	r0, r4
2002365a:	f7ff faa2 	bl	20022ba2 <HAL_FLASH_READ32>
2002365e:	68e3      	ldr	r3, [r4, #12]
20023660:	7a9b      	ldrb	r3, [r3, #10]
20023662:	b1dd      	cbz	r5, 2002369c <HAL_NAND_CONF_ECC+0x6a>
20023664:	ea43 0100 	orr.w	r1, r3, r0
20023668:	4620      	mov	r0, r4
2002366a:	f7ff fa3d 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
2002366e:	2101      	movs	r1, #1
20023670:	4620      	mov	r0, r4
20023672:	f7ff fa40 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023676:	68e3      	ldr	r3, [r4, #12]
20023678:	2103      	movs	r1, #3
2002367a:	799a      	ldrb	r2, [r3, #6]
2002367c:	4620      	mov	r0, r4
2002367e:	f7ff fcd9 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023682:	68e3      	ldr	r3, [r4, #12]
20023684:	f884 5025 	strb.w	r5, [r4, #37]	@ 0x25
20023688:	2102      	movs	r1, #2
2002368a:	799a      	ldrb	r2, [r3, #6]
2002368c:	4620      	mov	r0, r4
2002368e:	f7ff fcd1 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023692:	4620      	mov	r0, r4
20023694:	f7ff fa85 	bl	20022ba2 <HAL_FLASH_READ32>
20023698:	2000      	movs	r0, #0
2002369a:	bd38      	pop	{r3, r4, r5, pc}
2002369c:	ea20 0103 	bic.w	r1, r0, r3
200236a0:	e7e2      	b.n	20023668 <HAL_NAND_CONF_ECC+0x36>
200236a2:	f04f 30ff 	mov.w	r0, #4294967295
200236a6:	e7f8      	b.n	2002369a <HAL_NAND_CONF_ECC+0x68>
200236a8:	f06f 0001 	mvn.w	r0, #1
200236ac:	e7f5      	b.n	2002369a <HAL_NAND_CONF_ECC+0x68>

200236ae <HAL_NAND_GET_ECC_STATUS>:
200236ae:	b510      	push	{r4, lr}
200236b0:	4604      	mov	r4, r0
200236b2:	b320      	cbz	r0, 200236fe <HAL_NAND_GET_ECC_STATUS+0x50>
200236b4:	68c2      	ldr	r2, [r0, #12]
200236b6:	b31a      	cbz	r2, 20023700 <HAL_NAND_GET_ECC_STATUS+0x52>
200236b8:	7913      	ldrb	r3, [r2, #4]
200236ba:	b31b      	cbz	r3, 20023704 <HAL_NAND_GET_ECC_STATUS+0x56>
200236bc:	79d3      	ldrb	r3, [r2, #7]
200236be:	b30b      	cbz	r3, 20023704 <HAL_NAND_GET_ECC_STATUS+0x56>
200236c0:	2101      	movs	r1, #1
200236c2:	f7ff fa18 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
200236c6:	68e3      	ldr	r3, [r4, #12]
200236c8:	2102      	movs	r1, #2
200236ca:	791a      	ldrb	r2, [r3, #4]
200236cc:	4620      	mov	r0, r4
200236ce:	f7ff fcb1 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200236d2:	4620      	mov	r0, r4
200236d4:	f7ff fa65 	bl	20022ba2 <HAL_FLASH_READ32>
200236d8:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
200236dc:	2a3f      	cmp	r2, #63	@ 0x3f
200236de:	ea4f 1312 	mov.w	r3, r2, lsr #4
200236e2:	d804      	bhi.n	200236ee <HAL_NAND_GET_ECC_STATUS+0x40>
200236e4:	2b01      	cmp	r3, #1
200236e6:	d808      	bhi.n	200236fa <HAL_NAND_GET_ECC_STATUS+0x4c>
200236e8:	f000 0030 	and.w	r0, r0, #48	@ 0x30
200236ec:	e007      	b.n	200236fe <HAL_NAND_GET_ECC_STATUS+0x50>
200236ee:	3b04      	subs	r3, #4
200236f0:	2b01      	cmp	r3, #1
200236f2:	d8f9      	bhi.n	200236e8 <HAL_NAND_GET_ECC_STATUS+0x3a>
200236f4:	f000 00f0 	and.w	r0, r0, #240	@ 0xf0
200236f8:	e001      	b.n	200236fe <HAL_NAND_GET_ECC_STATUS+0x50>
200236fa:	f000 0070 	and.w	r0, r0, #112	@ 0x70
200236fe:	bd10      	pop	{r4, pc}
20023700:	4610      	mov	r0, r2
20023702:	e7fc      	b.n	200236fe <HAL_NAND_GET_ECC_STATUS+0x50>
20023704:	4618      	mov	r0, r3
20023706:	e7fa      	b.n	200236fe <HAL_NAND_GET_ECC_STATUS+0x50>

20023708 <HAL_NAND_CHECK_ECC>:
20023708:	4603      	mov	r3, r0
2002370a:	1108      	asrs	r0, r1, #4
2002370c:	b172      	cbz	r2, 2002372c <HAL_NAND_CHECK_ECC+0x24>
2002370e:	2b07      	cmp	r3, #7
20023710:	d80c      	bhi.n	2002372c <HAL_NAND_CHECK_ECC+0x24>
20023712:	e8df f003 	tbb	[pc, r3]
20023716:	0d04      	.short	0x0d04
20023718:	3f352e18 	.word	0x3f352e18
2002371c:	4c47      	.short	0x4c47
2002371e:	b128      	cbz	r0, 2002372c <HAL_NAND_CHECK_ECC+0x24>
20023720:	2801      	cmp	r0, #1
20023722:	6813      	ldr	r3, [r2, #0]
20023724:	d10a      	bne.n	2002373c <HAL_NAND_CHECK_ECC+0x34>
20023726:	f043 0301 	orr.w	r3, r3, #1
2002372a:	6013      	str	r3, [r2, #0]
2002372c:	2000      	movs	r0, #0
2002372e:	4770      	bx	lr
20023730:	f020 0302 	bic.w	r3, r0, #2
20023734:	2b01      	cmp	r3, #1
20023736:	d003      	beq.n	20023740 <HAL_NAND_CHECK_ECC+0x38>
20023738:	b1d0      	cbz	r0, 20023770 <HAL_NAND_CHECK_ECC+0x68>
2002373a:	6813      	ldr	r3, [r2, #0]
2002373c:	4303      	orrs	r3, r0
2002373e:	e016      	b.n	2002376e <HAL_NAND_CHECK_ECC+0x66>
20023740:	6813      	ldr	r3, [r2, #0]
20023742:	4303      	orrs	r3, r0
20023744:	e7f1      	b.n	2002372a <HAL_NAND_CHECK_ECC+0x22>
20023746:	2805      	cmp	r0, #5
20023748:	d8f7      	bhi.n	2002373a <HAL_NAND_CHECK_ECC+0x32>
2002374a:	a301      	add	r3, pc, #4	@ (adr r3, 20023750 <HAL_NAND_CHECK_ECC+0x48>)
2002374c:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
20023750:	2002372d 	.word	0x2002372d
20023754:	20023741 	.word	0x20023741
20023758:	20023769 	.word	0x20023769
2002375c:	20023741 	.word	0x20023741
20023760:	2002373b 	.word	0x2002373b
20023764:	20023741 	.word	0x20023741
20023768:	6813      	ldr	r3, [r2, #0]
2002376a:	f043 0302 	orr.w	r3, r3, #2
2002376e:	6013      	str	r3, [r2, #0]
20023770:	4770      	bx	lr
20023772:	2800      	cmp	r0, #0
20023774:	d0da      	beq.n	2002372c <HAL_NAND_CHECK_ECC+0x24>
20023776:	1e43      	subs	r3, r0, #1
20023778:	2b05      	cmp	r3, #5
2002377a:	6813      	ldr	r3, [r2, #0]
2002377c:	d9e1      	bls.n	20023742 <HAL_NAND_CHECK_ECC+0x3a>
2002377e:	e7dd      	b.n	2002373c <HAL_NAND_CHECK_ECC+0x34>
20023780:	07c3      	lsls	r3, r0, #31
20023782:	f000 0103 	and.w	r1, r0, #3
20023786:	d402      	bmi.n	2002378e <HAL_NAND_CHECK_ECC+0x86>
20023788:	2900      	cmp	r1, #0
2002378a:	d0cf      	beq.n	2002372c <HAL_NAND_CHECK_ECC+0x24>
2002378c:	e7d5      	b.n	2002373a <HAL_NAND_CHECK_ECC+0x32>
2002378e:	6813      	ldr	r3, [r2, #0]
20023790:	430b      	orrs	r3, r1
20023792:	e7ca      	b.n	2002372a <HAL_NAND_CHECK_ECC+0x22>
20023794:	2800      	cmp	r0, #0
20023796:	d0c9      	beq.n	2002372c <HAL_NAND_CHECK_ECC+0x24>
20023798:	6813      	ldr	r3, [r2, #0]
2002379a:	2808      	cmp	r0, #8
2002379c:	ea43 0300 	orr.w	r3, r3, r0
200237a0:	dce5      	bgt.n	2002376e <HAL_NAND_CHECK_ECC+0x66>
200237a2:	e7c2      	b.n	2002372a <HAL_NAND_CHECK_ECC+0x22>
200237a4:	2800      	cmp	r0, #0
200237a6:	d0c1      	beq.n	2002372c <HAL_NAND_CHECK_ECC+0x24>
200237a8:	1e43      	subs	r3, r0, #1
200237aa:	2b01      	cmp	r3, #1
200237ac:	e7e5      	b.n	2002377a <HAL_NAND_CHECK_ECC+0x72>
200237ae:	2800      	cmp	r0, #0
200237b0:	d0bc      	beq.n	2002372c <HAL_NAND_CHECK_ECC+0x24>
200237b2:	1e43      	subs	r3, r0, #1
200237b4:	2b02      	cmp	r3, #2
200237b6:	e7e0      	b.n	2002377a <HAL_NAND_CHECK_ECC+0x72>

200237b8 <HAL_NAND_GET_ECC_RESULT>:
200237b8:	b510      	push	{r4, lr}
200237ba:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
200237be:	4604      	mov	r4, r0
200237c0:	b183      	cbz	r3, 200237e4 <HAL_NAND_GET_ECC_RESULT+0x2c>
200237c2:	f7ff ff74 	bl	200236ae <HAL_NAND_GET_ECC_STATUS>
200237c6:	4601      	mov	r1, r0
200237c8:	b160      	cbz	r0, 200237e4 <HAL_NAND_GET_ECC_RESULT+0x2c>
200237ca:	4622      	mov	r2, r4
200237cc:	6863      	ldr	r3, [r4, #4]
200237ce:	f443 4300 	orr.w	r3, r3, #32768	@ 0x8000
200237d2:	f842 3f04 	str.w	r3, [r2, #4]!
200237d6:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
200237da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200237de:	0900      	lsrs	r0, r0, #4
200237e0:	f7ff bf92 	b.w	20023708 <HAL_NAND_CHECK_ECC>
200237e4:	2000      	movs	r0, #0
200237e6:	bd10      	pop	{r4, pc}

200237e8 <HAL_NAND_EN_QUAL>:
200237e8:	b538      	push	{r3, r4, r5, lr}
200237ea:	460d      	mov	r5, r1
200237ec:	4604      	mov	r4, r0
200237ee:	b348      	cbz	r0, 20023844 <HAL_NAND_EN_QUAL+0x5c>
200237f0:	68c3      	ldr	r3, [r0, #12]
200237f2:	b33b      	cbz	r3, 20023844 <HAL_NAND_EN_QUAL+0x5c>
200237f4:	799a      	ldrb	r2, [r3, #6]
200237f6:	b10a      	cbz	r2, 200237fc <HAL_NAND_EN_QUAL+0x14>
200237f8:	7a1b      	ldrb	r3, [r3, #8]
200237fa:	b90b      	cbnz	r3, 20023800 <HAL_NAND_EN_QUAL+0x18>
200237fc:	2000      	movs	r0, #0
200237fe:	bd38      	pop	{r3, r4, r5, pc}
20023800:	2101      	movs	r1, #1
20023802:	f7ff f978 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023806:	68e3      	ldr	r3, [r4, #12]
20023808:	2102      	movs	r1, #2
2002380a:	799a      	ldrb	r2, [r3, #6]
2002380c:	4620      	mov	r0, r4
2002380e:	f7ff fc11 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023812:	4620      	mov	r0, r4
20023814:	f7ff f9c5 	bl	20022ba2 <HAL_FLASH_READ32>
20023818:	68e3      	ldr	r3, [r4, #12]
2002381a:	7a1b      	ldrb	r3, [r3, #8]
2002381c:	b17d      	cbz	r5, 2002383e <HAL_NAND_EN_QUAL+0x56>
2002381e:	ea43 0100 	orr.w	r1, r3, r0
20023822:	4620      	mov	r0, r4
20023824:	f7ff f960 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
20023828:	2101      	movs	r1, #1
2002382a:	4620      	mov	r0, r4
2002382c:	f7ff f963 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023830:	68e3      	ldr	r3, [r4, #12]
20023832:	2103      	movs	r1, #3
20023834:	4620      	mov	r0, r4
20023836:	799a      	ldrb	r2, [r3, #6]
20023838:	f7ff fbfc 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
2002383c:	e7de      	b.n	200237fc <HAL_NAND_EN_QUAL+0x14>
2002383e:	ea20 0103 	bic.w	r1, r0, r3
20023842:	e7ee      	b.n	20023822 <HAL_NAND_EN_QUAL+0x3a>
20023844:	f04f 30ff 	mov.w	r0, #4294967295
20023848:	e7d9      	b.n	200237fe <HAL_NAND_EN_QUAL+0x16>

2002384a <nand_clear_status>:
2002384a:	b510      	push	{r4, lr}
2002384c:	4604      	mov	r4, r0
2002384e:	2101      	movs	r1, #1
20023850:	f7ff f951 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023854:	2102      	movs	r1, #2
20023856:	4620      	mov	r0, r4
20023858:	f7ff f946 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
2002385c:	68e3      	ldr	r3, [r4, #12]
2002385e:	2103      	movs	r1, #3
20023860:	795a      	ldrb	r2, [r3, #5]
20023862:	4620      	mov	r0, r4
20023864:	f7ff fbe6 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023868:	2100      	movs	r1, #0
2002386a:	4620      	mov	r0, r4
2002386c:	f7ff f93c 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
20023870:	68e3      	ldr	r3, [r4, #12]
20023872:	2103      	movs	r1, #3
20023874:	4620      	mov	r0, r4
20023876:	795a      	ldrb	r2, [r3, #5]
20023878:	f7ff fbdc 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
2002387c:	2000      	movs	r0, #0
2002387e:	bd10      	pop	{r4, pc}

20023880 <HAL_NAND_PAGE_SIZE>:
20023880:	b140      	cbz	r0, 20023894 <HAL_NAND_PAGE_SIZE+0x14>
20023882:	f890 3024 	ldrb.w	r3, [r0, #36]	@ 0x24
20023886:	f013 0f01 	tst.w	r3, #1
2002388a:	bf14      	ite	ne
2002388c:	f44f 5080 	movne.w	r0, #4096	@ 0x1000
20023890:	f44f 6000 	moveq.w	r0, #2048	@ 0x800
20023894:	4770      	bx	lr
	...

20023898 <HAL_NAND_READ_WITHOOB>:
20023898:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002389c:	b091      	sub	sp, #68	@ 0x44
2002389e:	460e      	mov	r6, r1
200238a0:	4692      	mov	sl, r2
200238a2:	461d      	mov	r5, r3
200238a4:	4604      	mov	r4, r0
200238a6:	9f1b      	ldr	r7, [sp, #108]	@ 0x6c
200238a8:	b128      	cbz	r0, 200238b6 <HAL_NAND_READ_WITHOOB+0x1e>
200238aa:	68c3      	ldr	r3, [r0, #12]
200238ac:	b11b      	cbz	r3, 200238b6 <HAL_NAND_READ_WITHOOB+0x1e>
200238ae:	69c3      	ldr	r3, [r0, #28]
200238b0:	b10b      	cbz	r3, 200238b6 <HAL_NAND_READ_WITHOOB+0x1e>
200238b2:	2f80      	cmp	r7, #128	@ 0x80
200238b4:	d905      	bls.n	200238c2 <HAL_NAND_READ_WITHOOB+0x2a>
200238b6:	2301      	movs	r3, #1
200238b8:	6063      	str	r3, [r4, #4]
200238ba:	2000      	movs	r0, #0
200238bc:	b011      	add	sp, #68	@ 0x44
200238be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200238c2:	f7ff ffdd 	bl	20023880 <HAL_NAND_PAGE_SIZE>
200238c6:	f100 39ff 	add.w	r9, r0, #4294967295
200238ca:	ea09 0901 	and.w	r9, r9, r1
200238ce:	eb09 0305 	add.w	r3, r9, r5
200238d2:	4283      	cmp	r3, r0
200238d4:	4680      	mov	r8, r0
200238d6:	d901      	bls.n	200238dc <HAL_NAND_READ_WITHOOB+0x44>
200238d8:	2302      	movs	r3, #2
200238da:	e7ed      	b.n	200238b8 <HAL_NAND_READ_WITHOOB+0x20>
200238dc:	2300      	movs	r3, #0
200238de:	6063      	str	r3, [r4, #4]
200238e0:	6923      	ldr	r3, [r4, #16]
200238e2:	f04f 0b00 	mov.w	fp, #0
200238e6:	428b      	cmp	r3, r1
200238e8:	bf98      	it	ls
200238ea:	1ace      	subls	r6, r1, r3
200238ec:	fbb6 f2f0 	udiv	r2, r6, r0
200238f0:	2104      	movs	r1, #4
200238f2:	4620      	mov	r0, r4
200238f4:	f7ff fb9e 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200238f8:	2014      	movs	r0, #20
200238fa:	f7fe fa77 	bl	20021dec <HAL_Delay_us_>
200238fe:	2101      	movs	r1, #1
20023900:	4620      	mov	r0, r4
20023902:	f7ff f8f8 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023906:	2005      	movs	r0, #5
20023908:	f7fe fa70 	bl	20021dec <HAL_Delay_us_>
2002390c:	68e3      	ldr	r3, [r4, #12]
2002390e:	2102      	movs	r1, #2
20023910:	791a      	ldrb	r2, [r3, #4]
20023912:	4620      	mov	r0, r4
20023914:	f7ff fb8e 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023918:	4620      	mov	r0, r4
2002391a:	f7ff f942 	bl	20022ba2 <HAL_FLASH_READ32>
2002391e:	07c3      	lsls	r3, r0, #31
20023920:	d4f1      	bmi.n	20023906 <HAL_NAND_READ_WITHOOB+0x6e>
20023922:	f1bb 0f00 	cmp.w	fp, #0
20023926:	d102      	bne.n	2002392e <HAL_NAND_READ_WITHOOB+0x96>
20023928:	f04f 0b01 	mov.w	fp, #1
2002392c:	e7eb      	b.n	20023906 <HAL_NAND_READ_WITHOOB+0x6e>
2002392e:	4620      	mov	r0, r4
20023930:	f7ff ff42 	bl	200237b8 <HAL_NAND_GET_ECC_RESULT>
20023934:	b118      	cbz	r0, 2002393e <HAL_NAND_READ_WITHOOB+0xa6>
20023936:	f440 4000 	orr.w	r0, r0, #32768	@ 0x8000
2002393a:	6060      	str	r0, [r4, #4]
2002393c:	e7bd      	b.n	200238ba <HAL_NAND_READ_WITHOOB+0x22>
2002393e:	f894 2020 	ldrb.w	r2, [r4, #32]
20023942:	68e3      	ldr	r3, [r4, #12]
20023944:	2a00      	cmp	r2, #0
20023946:	d140      	bne.n	200239ca <HAL_NAND_READ_WITHOOB+0x132>
20023948:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
2002394c:	4620      	mov	r0, r4
2002394e:	f7ff f87a 	bl	20022a46 <HAL_FLASH_SET_AHB_RCMD>
20023952:	68e0      	ldr	r0, [r4, #12]
20023954:	f990 c04e 	ldrsb.w	ip, [r0, #78]	@ 0x4e
20023958:	f990 304a 	ldrsb.w	r3, [r0, #74]	@ 0x4a
2002395c:	f990 2049 	ldrsb.w	r2, [r0, #73]	@ 0x49
20023960:	f990 1048 	ldrsb.w	r1, [r0, #72]	@ 0x48
20023964:	f8cd c00c 	str.w	ip, [sp, #12]
20023968:	f990 c04d 	ldrsb.w	ip, [r0, #77]	@ 0x4d
2002396c:	f8cd c008 	str.w	ip, [sp, #8]
20023970:	f990 c04c 	ldrsb.w	ip, [r0, #76]	@ 0x4c
20023974:	f8cd c004 	str.w	ip, [sp, #4]
20023978:	f990 004b 	ldrsb.w	r0, [r0, #75]	@ 0x4b
2002397c:	9000      	str	r0, [sp, #0]
2002397e:	4620      	mov	r0, r4
20023980:	f7ff f86c 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
20023984:	03b0      	lsls	r0, r6, #14
20023986:	f8d4 b010 	ldr.w	fp, [r4, #16]
2002398a:	d504      	bpl.n	20023996 <HAL_NAND_READ_WITHOOB+0xfe>
2002398c:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20023990:	b10b      	cbz	r3, 20023996 <HAL_NAND_READ_WITHOOB+0xfe>
20023992:	f44b 5b80 	orr.w	fp, fp, #4096	@ 0x1000
20023996:	ea4a 0305 	orr.w	r3, sl, r5
2002399a:	ea43 0309 	orr.w	r3, r3, r9
2002399e:	f013 0303 	ands.w	r3, r3, #3
200239a2:	d102      	bne.n	200239aa <HAL_NAND_READ_WITHOOB+0x112>
200239a4:	1e6a      	subs	r2, r5, #1
200239a6:	2afe      	cmp	r2, #254	@ 0xfe
200239a8:	d82a      	bhi.n	20023a00 <HAL_NAND_READ_WITHOOB+0x168>
200239aa:	462a      	mov	r2, r5
200239ac:	4650      	mov	r0, sl
200239ae:	eb0b 0109 	add.w	r1, fp, r9
200239b2:	f006 fec5 	bl	2002a740 <memcpy>
200239b6:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
200239b8:	b12b      	cbz	r3, 200239c6 <HAL_NAND_READ_WITHOOB+0x12e>
200239ba:	463a      	mov	r2, r7
200239bc:	4618      	mov	r0, r3
200239be:	eb0b 0108 	add.w	r1, fp, r8
200239c2:	f006 febd 	bl	2002a740 <memcpy>
200239c6:	1978      	adds	r0, r7, r5
200239c8:	e778      	b.n	200238bc <HAL_NAND_READ_WITHOOB+0x24>
200239ca:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
200239ce:	4620      	mov	r0, r4
200239d0:	f7ff f839 	bl	20022a46 <HAL_FLASH_SET_AHB_RCMD>
200239d4:	68e0      	ldr	r0, [r4, #12]
200239d6:	f990 c072 	ldrsb.w	ip, [r0, #114]	@ 0x72
200239da:	f990 306e 	ldrsb.w	r3, [r0, #110]	@ 0x6e
200239de:	f990 206d 	ldrsb.w	r2, [r0, #109]	@ 0x6d
200239e2:	f990 106c 	ldrsb.w	r1, [r0, #108]	@ 0x6c
200239e6:	f8cd c00c 	str.w	ip, [sp, #12]
200239ea:	f990 c071 	ldrsb.w	ip, [r0, #113]	@ 0x71
200239ee:	f8cd c008 	str.w	ip, [sp, #8]
200239f2:	f990 c070 	ldrsb.w	ip, [r0, #112]	@ 0x70
200239f6:	f8cd c004 	str.w	ip, [sp, #4]
200239fa:	f990 006f 	ldrsb.w	r0, [r0, #111]	@ 0x6f
200239fe:	e7bd      	b.n	2002397c <HAL_NAND_READ_WITHOOB+0xe4>
20023a00:	f1ba 0f00 	cmp.w	sl, #0
20023a04:	d0d7      	beq.n	200239b6 <HAL_NAND_READ_WITHOOB+0x11e>
20023a06:	491c      	ldr	r1, [pc, #112]	@ (20023a78 <HAL_NAND_READ_WITHOOB+0x1e0>)
20023a08:	4a1c      	ldr	r2, [pc, #112]	@ (20023a7c <HAL_NAND_READ_WITHOOB+0x1e4>)
20023a0a:	a804      	add	r0, sp, #16
20023a0c:	e9cd 1205 	strd	r1, r2, [sp, #20]
20023a10:	f88d 301c 	strb.w	r3, [sp, #28]
20023a14:	f7fe ff24 	bl	20022860 <HAL_EXT_DMA_Init>
20023a18:	b150      	cbz	r0, 20023a30 <HAL_NAND_READ_WITHOOB+0x198>
20023a1a:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023a1c:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023a20:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023a24:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023a28:	f041 4100 	orr.w	r1, r1, #2147483648	@ 0x80000000
20023a2c:	6061      	str	r1, [r4, #4]
20023a2e:	e744      	b.n	200238ba <HAL_NAND_READ_WITHOOB+0x22>
20023a30:	eb0b 0109 	add.w	r1, fp, r9
20023a34:	4652      	mov	r2, sl
20023a36:	08ab      	lsrs	r3, r5, #2
20023a38:	a804      	add	r0, sp, #16
20023a3a:	f7fe ff33 	bl	200228a4 <HAL_EXT_DMA_Start>
20023a3e:	4601      	mov	r1, r0
20023a40:	b980      	cbnz	r0, 20023a64 <HAL_NAND_READ_WITHOOB+0x1cc>
20023a42:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20023a46:	a804      	add	r0, sp, #16
20023a48:	f7fe ff53 	bl	200228f2 <HAL_EXT_DMA_PollForTransfer>
20023a4c:	2800      	cmp	r0, #0
20023a4e:	d0b2      	beq.n	200239b6 <HAL_NAND_READ_WITHOOB+0x11e>
20023a50:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023a52:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023a56:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023a5a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023a5e:	f041 4160 	orr.w	r1, r1, #3758096384	@ 0xe0000000
20023a62:	e7e3      	b.n	20023a2c <HAL_NAND_READ_WITHOOB+0x194>
20023a64:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
20023a66:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023a6a:	ea40 4102 	orr.w	r1, r0, r2, lsl #16
20023a6e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023a72:	f041 4140 	orr.w	r1, r1, #3221225472	@ 0xc0000000
20023a76:	e7d9      	b.n	20023a2c <HAL_NAND_READ_WITHOOB+0x194>
20023a78:	000c0080 	.word	0x000c0080
20023a7c:	00030040 	.word	0x00030040

20023a80 <HAL_NAND_BLOCK_SIZE>:
20023a80:	b508      	push	{r3, lr}
20023a82:	4602      	mov	r2, r0
20023a84:	f7ff fefc 	bl	20023880 <HAL_NAND_PAGE_SIZE>
20023a88:	b128      	cbz	r0, 20023a96 <HAL_NAND_BLOCK_SIZE+0x16>
20023a8a:	f892 3024 	ldrb.w	r3, [r2, #36]	@ 0x24
20023a8e:	079b      	lsls	r3, r3, #30
20023a90:	bf4c      	ite	mi
20023a92:	01c0      	lslmi	r0, r0, #7
20023a94:	0180      	lslpl	r0, r0, #6
20023a96:	bd08      	pop	{r3, pc}

20023a98 <HAL_NAND_GET_BADBLK>:
20023a98:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20023a9a:	4604      	mov	r4, r0
20023a9c:	b910      	cbnz	r0, 20023aa4 <HAL_NAND_GET_BADBLK+0xc>
20023a9e:	2000      	movs	r0, #0
20023aa0:	b004      	add	sp, #16
20023aa2:	bd10      	pop	{r4, pc}
20023aa4:	69c3      	ldr	r3, [r0, #28]
20023aa6:	2b00      	cmp	r3, #0
20023aa8:	d0f9      	beq.n	20023a9e <HAL_NAND_GET_BADBLK+0x6>
20023aaa:	f7ff ffe9 	bl	20023a80 <HAL_NAND_BLOCK_SIZE>
20023aae:	2304      	movs	r3, #4
20023ab0:	9301      	str	r3, [sp, #4]
20023ab2:	ab03      	add	r3, sp, #12
20023ab4:	9300      	str	r3, [sp, #0]
20023ab6:	2300      	movs	r3, #0
20023ab8:	4341      	muls	r1, r0
20023aba:	461a      	mov	r2, r3
20023abc:	4620      	mov	r0, r4
20023abe:	f7ff feeb 	bl	20023898 <HAL_NAND_READ_WITHOOB>
20023ac2:	b140      	cbz	r0, 20023ad6 <HAL_NAND_GET_BADBLK+0x3e>
20023ac4:	f89d 300c 	ldrb.w	r3, [sp, #12]
20023ac8:	2bff      	cmp	r3, #255	@ 0xff
20023aca:	d0e8      	beq.n	20023a9e <HAL_NAND_GET_BADBLK+0x6>
20023acc:	9803      	ldr	r0, [sp, #12]
20023ace:	2800      	cmp	r0, #0
20023ad0:	bf08      	it	eq
20023ad2:	2001      	moveq	r0, #1
20023ad4:	e7e4      	b.n	20023aa0 <HAL_NAND_GET_BADBLK+0x8>
20023ad6:	2001      	movs	r0, #1
20023ad8:	e7e2      	b.n	20023aa0 <HAL_NAND_GET_BADBLK+0x8>

20023ada <HAL_QSPIEX_WRITE_PAGE>:
20023ada:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023ade:	b099      	sub	sp, #100	@ 0x64
20023ae0:	4604      	mov	r4, r0
20023ae2:	460e      	mov	r6, r1
20023ae4:	4691      	mov	r9, r2
20023ae6:	f7ff fcd4 	bl	20023492 <flash_handle_valid>
20023aea:	b318      	cbz	r0, 20023b34 <HAL_QSPIEX_WRITE_PAGE+0x5a>
20023aec:	2b00      	cmp	r3, #0
20023aee:	f000 80d7 	beq.w	20023ca0 <HAL_QSPIEX_WRITE_PAGE+0x1c6>
20023af2:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20023af6:	bf28      	it	cs
20023af8:	f44f 7380 	movcs.w	r3, #256	@ 0x100
20023afc:	68a1      	ldr	r1, [r4, #8]
20023afe:	461d      	mov	r5, r3
20023b00:	6962      	ldr	r2, [r4, #20]
20023b02:	f894 3020 	ldrb.w	r3, [r4, #32]
20023b06:	2900      	cmp	r1, #0
20023b08:	d03b      	beq.n	20023b82 <HAL_QSPIEX_WRITE_PAGE+0xa8>
20023b0a:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023b0e:	d914      	bls.n	20023b3a <HAL_QSPIEX_WRITE_PAGE+0x60>
20023b10:	2b02      	cmp	r3, #2
20023b12:	bf14      	ite	ne
20023b14:	2727      	movne	r7, #39	@ 0x27
20023b16:	2728      	moveq	r7, #40	@ 0x28
20023b18:	4639      	mov	r1, r7
20023b1a:	4620      	mov	r0, r4
20023b1c:	f7ff fa63 	bl	20022fe6 <HAL_FLASH_PRE_CMD>
20023b20:	4649      	mov	r1, r9
20023b22:	462b      	mov	r3, r5
20023b24:	2201      	movs	r2, #1
20023b26:	4620      	mov	r0, r4
20023b28:	f7ff fcbb 	bl	200234a2 <HAL_FLASH_DMA_START>
20023b2c:	4601      	mov	r1, r0
20023b2e:	b148      	cbz	r0, 20023b44 <HAL_QSPIEX_WRITE_PAGE+0x6a>
20023b30:	2500      	movs	r5, #0
20023b32:	4628      	mov	r0, r5
20023b34:	b019      	add	sp, #100	@ 0x64
20023b36:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023b3a:	2b02      	cmp	r3, #2
20023b3c:	bf14      	ite	ne
20023b3e:	2716      	movne	r7, #22
20023b40:	2717      	moveq	r7, #23
20023b42:	e7e9      	b.n	20023b18 <HAL_QSPIEX_WRITE_PAGE+0x3e>
20023b44:	4632      	mov	r2, r6
20023b46:	4620      	mov	r0, r4
20023b48:	f7ff fa74 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023b4c:	2101      	movs	r1, #1
20023b4e:	4620      	mov	r0, r4
20023b50:	f7fe ffdb 	bl	20022b0a <HAL_FLASH_WRITE_DLEN2>
20023b54:	2301      	movs	r3, #1
20023b56:	4632      	mov	r2, r6
20023b58:	9300      	str	r3, [sp, #0]
20023b5a:	4639      	mov	r1, r7
20023b5c:	2302      	movs	r3, #2
20023b5e:	4620      	mov	r0, r4
20023b60:	f7ff fa9b 	bl	2002309a <HAL_FLASH_ISSUE_CMD_SEQ>
20023b64:	2800      	cmp	r0, #0
20023b66:	d1e3      	bne.n	20023b30 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023b68:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
20023b6c:	4620      	mov	r0, r4
20023b6e:	f7ff fce8 	bl	20023542 <HAL_FLASH_DMA_WAIT_DONE>
20023b72:	2800      	cmp	r0, #0
20023b74:	d1dc      	bne.n	20023b30 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023b76:	6822      	ldr	r2, [r4, #0]
20023b78:	6813      	ldr	r3, [r2, #0]
20023b7a:	f023 0320 	bic.w	r3, r3, #32
20023b7e:	6013      	str	r3, [r2, #0]
20023b80:	e7d7      	b.n	20023b32 <HAL_QSPIEX_WRITE_PAGE+0x58>
20023b82:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023b86:	f240 8082 	bls.w	20023c8e <HAL_QSPIEX_WRITE_PAGE+0x1b4>
20023b8a:	2b02      	cmp	r3, #2
20023b8c:	bf14      	ite	ne
20023b8e:	2327      	movne	r3, #39	@ 0x27
20023b90:	2328      	moveq	r3, #40	@ 0x28
20023b92:	462f      	mov	r7, r5
20023b94:	f04f 0800 	mov.w	r8, #0
20023b98:	9303      	str	r3, [sp, #12]
20023b9a:	f64f 7afc 	movw	sl, #65532	@ 0xfffc
20023b9e:	2f40      	cmp	r7, #64	@ 0x40
20023ba0:	bfd4      	ite	le
20023ba2:	ea0a 0a07 	andle.w	sl, sl, r7
20023ba6:	f00a 0a40 	andgt.w	sl, sl, #64	@ 0x40
20023baa:	f1ba 0f00 	cmp.w	sl, #0
20023bae:	d03f      	beq.n	20023c30 <HAL_QSPIEX_WRITE_PAGE+0x156>
20023bb0:	2200      	movs	r2, #0
20023bb2:	4620      	mov	r0, r4
20023bb4:	4611      	mov	r1, r2
20023bb6:	f7ff fa3d 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023bba:	eb09 0308 	add.w	r3, r9, r8
20023bbe:	f10d 0c20 	add.w	ip, sp, #32
20023bc2:	f103 0e40 	add.w	lr, r3, #64	@ 0x40
20023bc6:	4662      	mov	r2, ip
20023bc8:	6818      	ldr	r0, [r3, #0]
20023bca:	6859      	ldr	r1, [r3, #4]
20023bcc:	3308      	adds	r3, #8
20023bce:	c203      	stmia	r2!, {r0, r1}
20023bd0:	4573      	cmp	r3, lr
20023bd2:	4694      	mov	ip, r2
20023bd4:	d1f7      	bne.n	20023bc6 <HAL_QSPIEX_WRITE_PAGE+0xec>
20023bd6:	f04f 0b00 	mov.w	fp, #0
20023bda:	ea4f 02aa 	mov.w	r2, sl, asr #2
20023bde:	ab08      	add	r3, sp, #32
20023be0:	f853 1b04 	ldr.w	r1, [r3], #4
20023be4:	4620      	mov	r0, r4
20023be6:	9205      	str	r2, [sp, #20]
20023be8:	9304      	str	r3, [sp, #16]
20023bea:	f7fe ff7d 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
20023bee:	9a05      	ldr	r2, [sp, #20]
20023bf0:	f10b 0b01 	add.w	fp, fp, #1
20023bf4:	4593      	cmp	fp, r2
20023bf6:	9b04      	ldr	r3, [sp, #16]
20023bf8:	d1f2      	bne.n	20023be0 <HAL_QSPIEX_WRITE_PAGE+0x106>
20023bfa:	4651      	mov	r1, sl
20023bfc:	4620      	mov	r0, r4
20023bfe:	f7fe ff7a 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023c02:	4620      	mov	r0, r4
20023c04:	9903      	ldr	r1, [sp, #12]
20023c06:	eb06 0208 	add.w	r2, r6, r8
20023c0a:	f7ff fa13 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023c0e:	2101      	movs	r1, #1
20023c10:	4620      	mov	r0, r4
20023c12:	f7fe ff70 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023c16:	2200      	movs	r2, #0
20023c18:	2102      	movs	r1, #2
20023c1a:	4620      	mov	r0, r4
20023c1c:	f7ff fa0a 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023c20:	4620      	mov	r0, r4
20023c22:	f7fe ffb5 	bl	20022b90 <HAL_FLASH_IS_PROG_DONE>
20023c26:	2800      	cmp	r0, #0
20023c28:	d0f1      	beq.n	20023c0e <HAL_QSPIEX_WRITE_PAGE+0x134>
20023c2a:	eba7 070a 	sub.w	r7, r7, sl
20023c2e:	44d0      	add	r8, sl
20023c30:	1e7b      	subs	r3, r7, #1
20023c32:	2b02      	cmp	r3, #2
20023c34:	d830      	bhi.n	20023c98 <HAL_QSPIEX_WRITE_PAGE+0x1be>
20023c36:	6923      	ldr	r3, [r4, #16]
20023c38:	4446      	add	r6, r8
20023c3a:	4333      	orrs	r3, r6
20023c3c:	681b      	ldr	r3, [r3, #0]
20023c3e:	463a      	mov	r2, r7
20023c40:	eb09 0108 	add.w	r1, r9, r8
20023c44:	a807      	add	r0, sp, #28
20023c46:	9307      	str	r3, [sp, #28]
20023c48:	f006 fd7a 	bl	2002a740 <memcpy>
20023c4c:	2200      	movs	r2, #0
20023c4e:	4620      	mov	r0, r4
20023c50:	4611      	mov	r1, r2
20023c52:	f7ff f9ef 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023c56:	9907      	ldr	r1, [sp, #28]
20023c58:	4620      	mov	r0, r4
20023c5a:	f7fe ff45 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
20023c5e:	2104      	movs	r1, #4
20023c60:	4620      	mov	r0, r4
20023c62:	f7fe ff48 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023c66:	4632      	mov	r2, r6
20023c68:	4620      	mov	r0, r4
20023c6a:	9903      	ldr	r1, [sp, #12]
20023c6c:	f7ff f9e2 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023c70:	2101      	movs	r1, #1
20023c72:	4620      	mov	r0, r4
20023c74:	f7fe ff3f 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20023c78:	2200      	movs	r2, #0
20023c7a:	2102      	movs	r1, #2
20023c7c:	4620      	mov	r0, r4
20023c7e:	f7ff f9d9 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023c82:	4620      	mov	r0, r4
20023c84:	f7fe ff84 	bl	20022b90 <HAL_FLASH_IS_PROG_DONE>
20023c88:	2800      	cmp	r0, #0
20023c8a:	d0f1      	beq.n	20023c70 <HAL_QSPIEX_WRITE_PAGE+0x196>
20023c8c:	e751      	b.n	20023b32 <HAL_QSPIEX_WRITE_PAGE+0x58>
20023c8e:	2b02      	cmp	r3, #2
20023c90:	bf14      	ite	ne
20023c92:	2316      	movne	r3, #22
20023c94:	2317      	moveq	r3, #23
20023c96:	e77c      	b.n	20023b92 <HAL_QSPIEX_WRITE_PAGE+0xb8>
20023c98:	2f00      	cmp	r7, #0
20023c9a:	f73f af7e 	bgt.w	20023b9a <HAL_QSPIEX_WRITE_PAGE+0xc0>
20023c9e:	e748      	b.n	20023b32 <HAL_QSPIEX_WRITE_PAGE+0x58>
20023ca0:	4618      	mov	r0, r3
20023ca2:	e747      	b.n	20023b34 <HAL_QSPIEX_WRITE_PAGE+0x5a>

20023ca4 <HAL_QSPIEX_SECT_ERASE>:
20023ca4:	b573      	push	{r0, r1, r4, r5, r6, lr}
20023ca6:	4604      	mov	r4, r0
20023ca8:	460d      	mov	r5, r1
20023caa:	f7ff fbf2 	bl	20023492 <flash_handle_valid>
20023cae:	b1e8      	cbz	r0, 20023cec <HAL_QSPIEX_SECT_ERASE+0x48>
20023cb0:	6963      	ldr	r3, [r4, #20]
20023cb2:	460a      	mov	r2, r1
20023cb4:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023cb8:	f04f 0100 	mov.w	r1, #0
20023cbc:	4620      	mov	r0, r4
20023cbe:	bf94      	ite	ls
20023cc0:	261b      	movls	r6, #27
20023cc2:	2629      	movhi	r6, #41	@ 0x29
20023cc4:	f7ff f9b6 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20023cc8:	2101      	movs	r1, #1
20023cca:	4620      	mov	r0, r4
20023ccc:	f7fe ff1d 	bl	20022b0a <HAL_FLASH_WRITE_DLEN2>
20023cd0:	2301      	movs	r3, #1
20023cd2:	462a      	mov	r2, r5
20023cd4:	9300      	str	r3, [sp, #0]
20023cd6:	4631      	mov	r1, r6
20023cd8:	2302      	movs	r3, #2
20023cda:	4620      	mov	r0, r4
20023cdc:	f7ff f9dd 	bl	2002309a <HAL_FLASH_ISSUE_CMD_SEQ>
20023ce0:	3800      	subs	r0, #0
20023ce2:	bf18      	it	ne
20023ce4:	2001      	movne	r0, #1
20023ce6:	4240      	negs	r0, r0
20023ce8:	b002      	add	sp, #8
20023cea:	bd70      	pop	{r4, r5, r6, pc}
20023cec:	f04f 30ff 	mov.w	r0, #4294967295
20023cf0:	e7fa      	b.n	20023ce8 <HAL_QSPIEX_SECT_ERASE+0x44>
	...

20023cf4 <HAL_QSPI_GET_SRC_CLK>:
20023cf4:	b508      	push	{r3, lr}
20023cf6:	b1e8      	cbz	r0, 20023d34 <HAL_QSPI_GET_SRC_CLK+0x40>
20023cf8:	6803      	ldr	r3, [r0, #0]
20023cfa:	4a0f      	ldr	r2, [pc, #60]	@ (20023d38 <HAL_QSPI_GET_SRC_CLK+0x44>)
20023cfc:	4293      	cmp	r3, r2
20023cfe:	d00c      	beq.n	20023d1a <HAL_QSPI_GET_SRC_CLK+0x26>
20023d00:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20023d04:	4293      	cmp	r3, r2
20023d06:	d115      	bne.n	20023d34 <HAL_QSPI_GET_SRC_CLK+0x40>
20023d08:	2006      	movs	r0, #6
20023d0a:	f001 f829 	bl	20024d60 <HAL_RCC_HCPU_GetClockSrc>
20023d0e:	2802      	cmp	r0, #2
20023d10:	d105      	bne.n	20023d1e <HAL_QSPI_GET_SRC_CLK+0x2a>
20023d12:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023d16:	f001 b858 	b.w	20024dca <HAL_RCC_HCPU_GetDLL2Freq>
20023d1a:	2004      	movs	r0, #4
20023d1c:	e7f5      	b.n	20023d0a <HAL_QSPI_GET_SRC_CLK+0x16>
20023d1e:	2803      	cmp	r0, #3
20023d20:	d103      	bne.n	20023d2a <HAL_QSPI_GET_SRC_CLK+0x36>
20023d22:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023d26:	f001 b853 	b.w	20024dd0 <HAL_RCC_HCPU_GetDLL3Freq>
20023d2a:	2001      	movs	r0, #1
20023d2c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023d30:	f001 b8b2 	b.w	20024e98 <HAL_RCC_GetSysCLKFreq>
20023d34:	2000      	movs	r0, #0
20023d36:	bd08      	pop	{r3, pc}
20023d38:	50041000 	.word	0x50041000

20023d3c <HAL_QSPI_GET_CLK>:
20023d3c:	b538      	push	{r3, r4, r5, lr}
20023d3e:	4605      	mov	r5, r0
20023d40:	b908      	cbnz	r0, 20023d46 <HAL_QSPI_GET_CLK+0xa>
20023d42:	2000      	movs	r0, #0
20023d44:	bd38      	pop	{r3, r4, r5, pc}
20023d46:	f7fe ff3b 	bl	20022bc0 <HAL_FLASH_GET_DIV>
20023d4a:	4604      	mov	r4, r0
20023d4c:	2800      	cmp	r0, #0
20023d4e:	d0f8      	beq.n	20023d42 <HAL_QSPI_GET_CLK+0x6>
20023d50:	4628      	mov	r0, r5
20023d52:	f7ff ffcf 	bl	20023cf4 <HAL_QSPI_GET_SRC_CLK>
20023d56:	fbb0 f0f4 	udiv	r0, r0, r4
20023d5a:	e7f3      	b.n	20023d44 <HAL_QSPI_GET_CLK+0x8>

20023d5c <HAL_QSPI_READ_ID>:
20023d5c:	b138      	cbz	r0, 20023d6e <HAL_QSPI_READ_ID+0x12>
20023d5e:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20023d62:	b113      	cbz	r3, 20023d6a <HAL_QSPI_READ_ID+0xe>
20023d64:	2100      	movs	r1, #0
20023d66:	f7ff bc38 	b.w	200235da <nand_read_id>
20023d6a:	f7ff bab8 	b.w	200232de <HAL_FLASH_GET_NOR_ID>
20023d6e:	20ff      	movs	r0, #255	@ 0xff
20023d70:	4770      	bx	lr

20023d72 <HAL_NOR_CFG_DTR>:
20023d72:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023d74:	4604      	mov	r4, r0
20023d76:	460a      	mov	r2, r1
20023d78:	b351      	cbz	r1, 20023dd0 <HAL_NOR_CFG_DTR+0x5e>
20023d7a:	68c5      	ldr	r5, [r0, #12]
20023d7c:	f895 31ff 	ldrb.w	r3, [r5, #511]	@ 0x1ff
20023d80:	2b00      	cmp	r3, #0
20023d82:	d03b      	beq.n	20023dfc <HAL_NOR_CFG_DTR+0x8a>
20023d84:	f890 3020 	ldrb.w	r3, [r0, #32]
20023d88:	b3c3      	cbz	r3, 20023dfc <HAL_NOR_CFG_DTR+0x8a>
20023d8a:	f995 6207 	ldrsb.w	r6, [r5, #519]	@ 0x207
20023d8e:	f995 2202 	ldrsb.w	r2, [r5, #514]	@ 0x202
20023d92:	f995 3203 	ldrsb.w	r3, [r5, #515]	@ 0x203
20023d96:	f995 1201 	ldrsb.w	r1, [r5, #513]	@ 0x201
20023d9a:	9603      	str	r6, [sp, #12]
20023d9c:	f995 6206 	ldrsb.w	r6, [r5, #518]	@ 0x206
20023da0:	9602      	str	r6, [sp, #8]
20023da2:	f995 6205 	ldrsb.w	r6, [r5, #517]	@ 0x205
20023da6:	9601      	str	r6, [sp, #4]
20023da8:	f995 5204 	ldrsb.w	r5, [r5, #516]	@ 0x204
20023dac:	9500      	str	r5, [sp, #0]
20023dae:	f7fe fe55 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
20023db2:	68e3      	ldr	r3, [r4, #12]
20023db4:	4620      	mov	r0, r4
20023db6:	f893 11ff 	ldrb.w	r1, [r3, #511]	@ 0x1ff
20023dba:	f7fe fe44 	bl	20022a46 <HAL_FLASH_SET_AHB_RCMD>
20023dbe:	2101      	movs	r1, #1
20023dc0:	4620      	mov	r0, r4
20023dc2:	f894 2025 	ldrb.w	r2, [r4, #37]	@ 0x25
20023dc6:	f7ff f855 	bl	20022e74 <HAL_MPI_CFG_DTR>
20023dca:	2000      	movs	r0, #0
20023dcc:	b004      	add	sp, #16
20023dce:	bd70      	pop	{r4, r5, r6, pc}
20023dd0:	f7ff f850 	bl	20022e74 <HAL_MPI_CFG_DTR>
20023dd4:	6963      	ldr	r3, [r4, #20]
20023dd6:	f894 1020 	ldrb.w	r1, [r4, #32]
20023dda:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023dde:	d906      	bls.n	20023dee <HAL_NOR_CFG_DTR+0x7c>
20023de0:	b919      	cbnz	r1, 20023dea <HAL_NOR_CFG_DTR+0x78>
20023de2:	4620      	mov	r0, r4
20023de4:	f7ff f8c2 	bl	20022f6c <HAL_FLASH_CONFIG_FULL_AHB_READ>
20023de8:	e7ef      	b.n	20023dca <HAL_NOR_CFG_DTR+0x58>
20023dea:	2101      	movs	r1, #1
20023dec:	e7f9      	b.n	20023de2 <HAL_NOR_CFG_DTR+0x70>
20023dee:	b919      	cbnz	r1, 20023df8 <HAL_NOR_CFG_DTR+0x86>
20023df0:	4620      	mov	r0, r4
20023df2:	f7ff f877 	bl	20022ee4 <HAL_FLASH_CONFIG_AHB_READ>
20023df6:	e7e8      	b.n	20023dca <HAL_NOR_CFG_DTR+0x58>
20023df8:	2101      	movs	r1, #1
20023dfa:	e7f9      	b.n	20023df0 <HAL_NOR_CFG_DTR+0x7e>
20023dfc:	2001      	movs	r0, #1
20023dfe:	e7e5      	b.n	20023dcc <HAL_NOR_CFG_DTR+0x5a>

20023e00 <HAL_NOR_DTR_CAL>:
20023e00:	b510      	push	{r4, lr}
20023e02:	4604      	mov	r4, r0
20023e04:	b1f0      	cbz	r0, 20023e44 <HAL_NOR_DTR_CAL+0x44>
20023e06:	6802      	ldr	r2, [r0, #0]
20023e08:	2014      	movs	r0, #20
20023e0a:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20023e0e:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
20023e12:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20023e16:	f7fe f848 	bl	20021eaa <HAL_Delay_us>
20023e1a:	6823      	ldr	r3, [r4, #0]
20023e1c:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023e20:	05d2      	lsls	r2, r2, #23
20023e22:	d5fb      	bpl.n	20023e1c <HAL_NOR_DTR_CAL+0x1c>
20023e24:	f8d3 0094 	ldr.w	r0, [r3, #148]	@ 0x94
20023e28:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023e2c:	b2c0      	uxtb	r0, r0
20023e2e:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20023e32:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
20023e36:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
20023e3a:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20023e3e:	4303      	orrs	r3, r0
20023e40:	f884 3025 	strb.w	r3, [r4, #37]	@ 0x25
20023e44:	bd10      	pop	{r4, pc}
	...

20023e48 <HAL_FLASH_Init>:
20023e48:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20023e4c:	460e      	mov	r6, r1
20023e4e:	4690      	mov	r8, r2
20023e50:	461f      	mov	r7, r3
20023e52:	4604      	mov	r4, r0
20023e54:	b087      	sub	sp, #28
20023e56:	2800      	cmp	r0, #0
20023e58:	f000 80e5 	beq.w	20024026 <HAL_FLASH_Init+0x1de>
20023e5c:	2900      	cmp	r1, #0
20023e5e:	f000 80e2 	beq.w	20024026 <HAL_FLASH_Init+0x1de>
20023e62:	f7fe fdcf 	bl	20022a04 <HAL_QSPI_Init>
20023e66:	6820      	ldr	r0, [r4, #0]
20023e68:	f7ff fb19 	bl	2002349e <HAL_GET_FLASH_MID>
20023e6c:	6933      	ldr	r3, [r6, #16]
20023e6e:	2100      	movs	r1, #0
20023e70:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
20023e74:	68b3      	ldr	r3, [r6, #8]
20023e76:	4605      	mov	r5, r0
20023e78:	63a3      	str	r3, [r4, #56]	@ 0x38
20023e7a:	68f3      	ldr	r3, [r6, #12]
20023e7c:	f884 1024 	strb.w	r1, [r4, #36]	@ 0x24
20023e80:	051b      	lsls	r3, r3, #20
20023e82:	63e3      	str	r3, [r4, #60]	@ 0x3c
20023e84:	2302      	movs	r3, #2
20023e86:	f884 3036 	strb.w	r3, [r4, #54]	@ 0x36
20023e8a:	6933      	ldr	r3, [r6, #16]
20023e8c:	f8c4 8008 	str.w	r8, [r4, #8]
20023e90:	1e5a      	subs	r2, r3, #1
20023e92:	4253      	negs	r3, r2
20023e94:	4153      	adcs	r3, r2
20023e96:	f884 3023 	strb.w	r3, [r4, #35]	@ 0x23
20023e9a:	f1b8 0f00 	cmp.w	r8, #0
20023e9e:	d058      	beq.n	20023f52 <HAL_FLASH_Init+0x10a>
20023ea0:	2f00      	cmp	r7, #0
20023ea2:	d056      	beq.n	20023f52 <HAL_FLASH_Init+0x10a>
20023ea4:	683b      	ldr	r3, [r7, #0]
20023ea6:	f8c8 3000 	str.w	r3, [r8]
20023eaa:	68a3      	ldr	r3, [r4, #8]
20023eac:	68fa      	ldr	r2, [r7, #12]
20023eae:	605a      	str	r2, [r3, #4]
20023eb0:	2210      	movs	r2, #16
20023eb2:	68a3      	ldr	r3, [r4, #8]
20023eb4:	609a      	str	r2, [r3, #8]
20023eb6:	2280      	movs	r2, #128	@ 0x80
20023eb8:	68a3      	ldr	r3, [r4, #8]
20023eba:	60d9      	str	r1, [r3, #12]
20023ebc:	68a3      	ldr	r3, [r4, #8]
20023ebe:	611a      	str	r2, [r3, #16]
20023ec0:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
20023ec4:	68a3      	ldr	r3, [r4, #8]
20023ec6:	6159      	str	r1, [r3, #20]
20023ec8:	68a3      	ldr	r3, [r4, #8]
20023eca:	6199      	str	r1, [r3, #24]
20023ecc:	68a3      	ldr	r3, [r4, #8]
20023ece:	61d9      	str	r1, [r3, #28]
20023ed0:	68a3      	ldr	r3, [r4, #8]
20023ed2:	621a      	str	r2, [r3, #32]
20023ed4:	68a3      	ldr	r3, [r4, #8]
20023ed6:	6259      	str	r1, [r3, #36]	@ 0x24
20023ed8:	b1c0      	cbz	r0, 20023f0c <HAL_FLASH_Init+0xc4>
20023eda:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023ede:	4298      	cmp	r0, r3
20023ee0:	d014      	beq.n	20023f0c <HAL_FLASH_Init+0xc4>
20023ee2:	2601      	movs	r6, #1
20023ee4:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023ee8:	2b00      	cmp	r3, #0
20023eea:	d13d      	bne.n	20023f68 <HAL_FLASH_Init+0x120>
20023eec:	2e00      	cmp	r6, #0
20023eee:	d15a      	bne.n	20023fa6 <HAL_FLASH_Init+0x15e>
20023ef0:	4620      	mov	r0, r4
20023ef2:	f7ff faae 	bl	20023452 <HAL_FLASH_RELEASE_DPD>
20023ef6:	4630      	mov	r0, r6
20023ef8:	f7fd ffd7 	bl	20021eaa <HAL_Delay_us>
20023efc:	2032      	movs	r0, #50	@ 0x32
20023efe:	f7fd ffd4 	bl	20021eaa <HAL_Delay_us>
20023f02:	4620      	mov	r0, r4
20023f04:	f7ff ff2a 	bl	20023d5c <HAL_QSPI_READ_ID>
20023f08:	4605      	mov	r5, r0
20023f0a:	e04c      	b.n	20023fa6 <HAL_FLASH_Init+0x15e>
20023f0c:	2101      	movs	r1, #1
20023f0e:	4620      	mov	r0, r4
20023f10:	f7fe fe4b 	bl	20022baa <HAL_FLASH_SET_TXSLOT>
20023f14:	4ba7      	ldr	r3, [pc, #668]	@ (200241b4 <HAL_FLASH_Init+0x36c>)
20023f16:	69a2      	ldr	r2, [r4, #24]
20023f18:	4620      	mov	r0, r4
20023f1a:	429a      	cmp	r2, r3
20023f1c:	f04f 0200 	mov.w	r2, #0
20023f20:	bf8c      	ite	hi
20023f22:	2101      	movhi	r1, #1
20023f24:	4611      	movls	r1, r2
20023f26:	f7ff fa85 	bl	20023434 <HAL_QSPI_SET_CLK_INV>
20023f2a:	4620      	mov	r0, r4
20023f2c:	f89d 1038 	ldrb.w	r1, [sp, #56]	@ 0x38
20023f30:	f7fe fe42 	bl	20022bb8 <HAL_FLASH_SET_CLK_rom>
20023f34:	f894 3035 	ldrb.w	r3, [r4, #53]	@ 0x35
20023f38:	b12b      	cbz	r3, 20023f46 <HAL_FLASH_Init+0xfe>
20023f3a:	2b01      	cmp	r3, #1
20023f3c:	d110      	bne.n	20023f60 <HAL_FLASH_Init+0x118>
20023f3e:	2100      	movs	r1, #0
20023f40:	4620      	mov	r0, r4
20023f42:	f7fe ff51 	bl	20022de8 <HAL_FLASH_SET_DUAL_MODE>
20023f46:	2101      	movs	r1, #1
20023f48:	4620      	mov	r0, r4
20023f4a:	f7fe feda 	bl	20022d02 <HAL_FLASH_ENABLE_QSPI>
20023f4e:	2600      	movs	r6, #0
20023f50:	e7c8      	b.n	20023ee4 <HAL_FLASH_Init+0x9c>
20023f52:	2d00      	cmp	r5, #0
20023f54:	d0de      	beq.n	20023f14 <HAL_FLASH_Init+0xcc>
20023f56:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023f5a:	429d      	cmp	r5, r3
20023f5c:	d1c1      	bne.n	20023ee2 <HAL_FLASH_Init+0x9a>
20023f5e:	e7d9      	b.n	20023f14 <HAL_FLASH_Init+0xcc>
20023f60:	2b02      	cmp	r3, #2
20023f62:	d1f0      	bne.n	20023f46 <HAL_FLASH_Init+0xfe>
20023f64:	2101      	movs	r1, #1
20023f66:	e7eb      	b.n	20023f40 <HAL_FLASH_Init+0xf8>
20023f68:	6822      	ldr	r2, [r4, #0]
20023f6a:	2700      	movs	r7, #0
20023f6c:	6893      	ldr	r3, [r2, #8]
20023f6e:	4639      	mov	r1, r7
20023f70:	f043 7370 	orr.w	r3, r3, #62914560	@ 0x3c00000
20023f74:	6093      	str	r3, [r2, #8]
20023f76:	2301      	movs	r3, #1
20023f78:	463a      	mov	r2, r7
20023f7a:	4620      	mov	r0, r4
20023f7c:	e9cd 7303 	strd	r7, r3, [sp, #12]
20023f80:	e9cd 7701 	strd	r7, r7, [sp, #4]
20023f84:	463b      	mov	r3, r7
20023f86:	9700      	str	r7, [sp, #0]
20023f88:	f7fe fe1f 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
20023f8c:	463a      	mov	r2, r7
20023f8e:	21ff      	movs	r1, #255	@ 0xff
20023f90:	4620      	mov	r0, r4
20023f92:	f7fe fdd5 	bl	20022b40 <HAL_FLASH_SET_CMD>
20023f96:	4638      	mov	r0, r7
20023f98:	f7fd ff87 	bl	20021eaa <HAL_Delay_us>
20023f9c:	20c8      	movs	r0, #200	@ 0xc8
20023f9e:	f7fd ff84 	bl	20021eaa <HAL_Delay_us>
20023fa2:	2e00      	cmp	r6, #0
20023fa4:	d0ad      	beq.n	20023f02 <HAL_FLASH_Init+0xba>
20023fa6:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023faa:	b2ef      	uxtb	r7, r5
20023fac:	f3c5 2807 	ubfx	r8, r5, #8, #8
20023fb0:	6325      	str	r5, [r4, #48]	@ 0x30
20023fb2:	f3c5 4507 	ubfx	r5, r5, #16, #8
20023fb6:	4642      	mov	r2, r8
20023fb8:	4629      	mov	r1, r5
20023fba:	4638      	mov	r0, r7
20023fbc:	b3ab      	cbz	r3, 2002402a <HAL_FLASH_Init+0x1e2>
20023fbe:	f001 f973 	bl	200252a8 <spi_nand_get_cmd_by_id>
20023fc2:	60e0      	str	r0, [r4, #12]
20023fc4:	bba0      	cbnz	r0, 20024030 <HAL_FLASH_Init+0x1e8>
20023fc6:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023fca:	b32b      	cbz	r3, 20024018 <HAL_FLASH_Init+0x1d0>
20023fcc:	2108      	movs	r1, #8
20023fce:	4620      	mov	r0, r4
20023fd0:	f7ff fb03 	bl	200235da <nand_read_id>
20023fd4:	f3c0 2807 	ubfx	r8, r0, #8, #8
20023fd8:	f3c0 4507 	ubfx	r5, r0, #16, #8
20023fdc:	b2c7      	uxtb	r7, r0
20023fde:	6320      	str	r0, [r4, #48]	@ 0x30
20023fe0:	4642      	mov	r2, r8
20023fe2:	4629      	mov	r1, r5
20023fe4:	4638      	mov	r0, r7
20023fe6:	f001 f95f 	bl	200252a8 <spi_nand_get_cmd_by_id>
20023fea:	60e0      	str	r0, [r4, #12]
20023fec:	bb00      	cbnz	r0, 20024030 <HAL_FLASH_Init+0x1e8>
20023fee:	210f      	movs	r1, #15
20023ff0:	4620      	mov	r0, r4
20023ff2:	f7ff faf2 	bl	200235da <nand_read_id>
20023ff6:	f3c0 2807 	ubfx	r8, r0, #8, #8
20023ffa:	f3c0 4507 	ubfx	r5, r0, #16, #8
20023ffe:	b2c7      	uxtb	r7, r0
20024000:	6320      	str	r0, [r4, #48]	@ 0x30
20024002:	4642      	mov	r2, r8
20024004:	4629      	mov	r1, r5
20024006:	4638      	mov	r0, r7
20024008:	f001 f94e 	bl	200252a8 <spi_nand_get_cmd_by_id>
2002400c:	60e0      	str	r0, [r4, #12]
2002400e:	b978      	cbnz	r0, 20024030 <HAL_FLASH_Init+0x1e8>
20024010:	f001 f960 	bl	200252d4 <spi_nand_get_default_ctable>
20024014:	60e0      	str	r0, [r4, #12]
20024016:	b958      	cbnz	r0, 20024030 <HAL_FLASH_Init+0x1e8>
20024018:	2100      	movs	r1, #0
2002401a:	4620      	mov	r0, r4
2002401c:	f7fe fe71 	bl	20022d02 <HAL_FLASH_ENABLE_QSPI>
20024020:	2300      	movs	r3, #0
20024022:	e9c4 330e 	strd	r3, r3, [r4, #56]	@ 0x38
20024026:	2001      	movs	r0, #1
20024028:	e04c      	b.n	200240c4 <HAL_FLASH_Init+0x27c>
2002402a:	f001 f8f5 	bl	20025218 <spi_flash_get_cmd_by_id>
2002402e:	e7c8      	b.n	20023fc2 <HAL_FLASH_Init+0x17a>
20024030:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024034:	4642      	mov	r2, r8
20024036:	4629      	mov	r1, r5
20024038:	4638      	mov	r0, r7
2002403a:	2b00      	cmp	r3, #0
2002403c:	d045      	beq.n	200240ca <HAL_FLASH_Init+0x282>
2002403e:	f001 f957 	bl	200252f0 <spi_nand_get_size_by_id>
20024042:	4642      	mov	r2, r8
20024044:	4629      	mov	r1, r5
20024046:	4681      	mov	r9, r0
20024048:	4638      	mov	r0, r7
2002404a:	f001 f95b 	bl	20025304 <spi_nand_get_plane_select_flag>
2002404e:	4642      	mov	r2, r8
20024050:	4629      	mov	r1, r5
20024052:	f884 0027 	strb.w	r0, [r4, #39]	@ 0x27
20024056:	4638      	mov	r0, r7
20024058:	f001 f95d 	bl	20025316 <spi_nand_get_big_page_flag>
2002405c:	4642      	mov	r2, r8
2002405e:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
20024062:	4629      	mov	r1, r5
20024064:	4638      	mov	r0, r7
20024066:	f001 f95f 	bl	20025328 <spi_nand_get_ecc_mode>
2002406a:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
2002406e:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
20024072:	f884 3024 	strb.w	r3, [r4, #36]	@ 0x24
20024076:	f1b9 0f00 	cmp.w	r9, #0
2002407a:	d003      	beq.n	20024084 <HAL_FLASH_Init+0x23c>
2002407c:	f8c4 903c 	str.w	r9, [r4, #60]	@ 0x3c
20024080:	f8c4 9014 	str.w	r9, [r4, #20]
20024084:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024088:	2b00      	cmp	r3, #0
2002408a:	d173      	bne.n	20024174 <HAL_FLASH_Init+0x32c>
2002408c:	2e00      	cmp	r6, #0
2002408e:	d16e      	bne.n	2002416e <HAL_FLASH_Init+0x326>
20024090:	4620      	mov	r0, r4
20024092:	f7ff f93f 	bl	20023314 <HAL_FLASH_CLR_PROTECT>
20024096:	6963      	ldr	r3, [r4, #20]
20024098:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
2002409c:	d938      	bls.n	20024110 <HAL_FLASH_Init+0x2c8>
2002409e:	4632      	mov	r2, r6
200240a0:	2121      	movs	r1, #33	@ 0x21
200240a2:	4620      	mov	r0, r4
200240a4:	f7fe ffc6 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
200240a8:	f894 3020 	ldrb.w	r3, [r4, #32]
200240ac:	b98b      	cbnz	r3, 200240d2 <HAL_FLASH_Init+0x28a>
200240ae:	4631      	mov	r1, r6
200240b0:	4620      	mov	r0, r4
200240b2:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200240b6:	f7ff f907 	bl	200232c8 <HAL_FLASH_FADDR_SET_QSPI>
200240ba:	2107      	movs	r1, #7
200240bc:	4620      	mov	r0, r4
200240be:	f7fe fe7b 	bl	20022db8 <HAL_FLASH_SET_ROW_BOUNDARY>
200240c2:	2000      	movs	r0, #0
200240c4:	b007      	add	sp, #28
200240c6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200240ca:	f001 f8b9 	bl	20025240 <spi_flash_get_size_by_id>
200240ce:	4681      	mov	r9, r0
200240d0:	e7d1      	b.n	20024076 <HAL_FLASH_Init+0x22e>
200240d2:	2101      	movs	r1, #1
200240d4:	4620      	mov	r0, r4
200240d6:	f7ff f8f7 	bl	200232c8 <HAL_FLASH_FADDR_SET_QSPI>
200240da:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
200240de:	f1b9 0f01 	cmp.w	r9, #1
200240e2:	d1ea      	bne.n	200240ba <HAL_FLASH_Init+0x272>
200240e4:	4642      	mov	r2, r8
200240e6:	4629      	mov	r1, r5
200240e8:	4638      	mov	r0, r7
200240ea:	f001 f8b3 	bl	20025254 <spi_flash_is_support_dtr>
200240ee:	b138      	cbz	r0, 20024100 <HAL_FLASH_Init+0x2b8>
200240f0:	4620      	mov	r0, r4
200240f2:	f7ff fe85 	bl	20023e00 <HAL_NOR_DTR_CAL>
200240f6:	4649      	mov	r1, r9
200240f8:	4620      	mov	r0, r4
200240fa:	f7ff fe3a 	bl	20023d72 <HAL_NOR_CFG_DTR>
200240fe:	e7dc      	b.n	200240ba <HAL_FLASH_Init+0x272>
20024100:	4632      	mov	r2, r6
20024102:	4631      	mov	r1, r6
20024104:	4620      	mov	r0, r4
20024106:	f7fe feb5 	bl	20022e74 <HAL_MPI_CFG_DTR>
2002410a:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
2002410e:	e7d4      	b.n	200240ba <HAL_FLASH_Init+0x272>
20024110:	f894 3020 	ldrb.w	r3, [r4, #32]
20024114:	b933      	cbnz	r3, 20024124 <HAL_FLASH_Init+0x2dc>
20024116:	4631      	mov	r1, r6
20024118:	4620      	mov	r0, r4
2002411a:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
2002411e:	f7ff f8c8 	bl	200232b2 <HAL_FLASH_SET_QUAL_SPI>
20024122:	e7ce      	b.n	200240c2 <HAL_FLASH_Init+0x27a>
20024124:	2101      	movs	r1, #1
20024126:	4620      	mov	r0, r4
20024128:	f7ff f8c3 	bl	200232b2 <HAL_FLASH_SET_QUAL_SPI>
2002412c:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
20024130:	f1b9 0f01 	cmp.w	r9, #1
20024134:	d115      	bne.n	20024162 <HAL_FLASH_Init+0x31a>
20024136:	4642      	mov	r2, r8
20024138:	4629      	mov	r1, r5
2002413a:	4638      	mov	r0, r7
2002413c:	f001 f88a 	bl	20025254 <spi_flash_is_support_dtr>
20024140:	b138      	cbz	r0, 20024152 <HAL_FLASH_Init+0x30a>
20024142:	4620      	mov	r0, r4
20024144:	f7ff fe5c 	bl	20023e00 <HAL_NOR_DTR_CAL>
20024148:	4649      	mov	r1, r9
2002414a:	4620      	mov	r0, r4
2002414c:	f7ff fe11 	bl	20023d72 <HAL_NOR_CFG_DTR>
20024150:	e7b7      	b.n	200240c2 <HAL_FLASH_Init+0x27a>
20024152:	4632      	mov	r2, r6
20024154:	4631      	mov	r1, r6
20024156:	4620      	mov	r0, r4
20024158:	f7fe fe8c 	bl	20022e74 <HAL_MPI_CFG_DTR>
2002415c:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024160:	e7af      	b.n	200240c2 <HAL_FLASH_Init+0x27a>
20024162:	4632      	mov	r2, r6
20024164:	4631      	mov	r1, r6
20024166:	4620      	mov	r0, r4
20024168:	f7fe fe84 	bl	20022e74 <HAL_MPI_CFG_DTR>
2002416c:	e7a9      	b.n	200240c2 <HAL_FLASH_Init+0x27a>
2002416e:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
20024172:	e7a6      	b.n	200240c2 <HAL_FLASH_Init+0x27a>
20024174:	2101      	movs	r1, #1
20024176:	4620      	mov	r0, r4
20024178:	f7fe fcbd 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
2002417c:	68e3      	ldr	r3, [r4, #12]
2002417e:	2102      	movs	r1, #2
20024180:	791a      	ldrb	r2, [r3, #4]
20024182:	4620      	mov	r0, r4
20024184:	f7fe ff56 	bl	20023034 <HAL_FLASH_ISSUE_CMD>
20024188:	4620      	mov	r0, r4
2002418a:	f7fe fd0a 	bl	20022ba2 <HAL_FLASH_READ32>
2002418e:	4605      	mov	r5, r0
20024190:	200a      	movs	r0, #10
20024192:	f7fd fe8a 	bl	20021eaa <HAL_Delay_us>
20024196:	07eb      	lsls	r3, r5, #31
20024198:	d4ec      	bmi.n	20024174 <HAL_FLASH_Init+0x32c>
2002419a:	4620      	mov	r0, r4
2002419c:	f7ff fb55 	bl	2002384a <nand_clear_status>
200241a0:	f894 3020 	ldrb.w	r3, [r4, #32]
200241a4:	2b02      	cmp	r3, #2
200241a6:	d18c      	bne.n	200240c2 <HAL_FLASH_Init+0x27a>
200241a8:	2101      	movs	r1, #1
200241aa:	4620      	mov	r0, r4
200241ac:	f7ff fb1c 	bl	200237e8 <HAL_NAND_EN_QUAL>
200241b0:	e787      	b.n	200240c2 <HAL_FLASH_Init+0x27a>
200241b2:	bf00      	nop
200241b4:	05f5e100 	.word	0x05f5e100

200241b8 <HAL_Delay_us_psram>:
200241b8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200241ba:	9001      	str	r0, [sp, #4]
200241bc:	9b01      	ldr	r3, [sp, #4]
200241be:	4c11      	ldr	r4, [pc, #68]	@ (20024204 <HAL_Delay_us_psram+0x4c>)
200241c0:	b10b      	cbz	r3, 200241c6 <HAL_Delay_us_psram+0xe>
200241c2:	6820      	ldr	r0, [r4, #0]
200241c4:	b940      	cbnz	r0, 200241d8 <HAL_Delay_us_psram+0x20>
200241c6:	2000      	movs	r0, #0
200241c8:	f000 fe76 	bl	20024eb8 <HAL_RCC_GetHCLKFreq>
200241cc:	4b0e      	ldr	r3, [pc, #56]	@ (20024208 <HAL_Delay_us_psram+0x50>)
200241ce:	fbb0 f0f3 	udiv	r0, r0, r3
200241d2:	9b01      	ldr	r3, [sp, #4]
200241d4:	6020      	str	r0, [r4, #0]
200241d6:	b19b      	cbz	r3, 20024200 <HAL_Delay_us_psram+0x48>
200241d8:	2830      	cmp	r0, #48	@ 0x30
200241da:	bf82      	ittt	hi
200241dc:	9b01      	ldrhi	r3, [sp, #4]
200241de:	f103 33ff 	addhi.w	r3, r3, #4294967295
200241e2:	9301      	strhi	r3, [sp, #4]
200241e4:	9b01      	ldr	r3, [sp, #4]
200241e6:	b15b      	cbz	r3, 20024200 <HAL_Delay_us_psram+0x48>
200241e8:	2205      	movs	r2, #5
200241ea:	9b01      	ldr	r3, [sp, #4]
200241ec:	3b01      	subs	r3, #1
200241ee:	4343      	muls	r3, r0
200241f0:	fbb3 f3f2 	udiv	r3, r3, r2
200241f4:	9303      	str	r3, [sp, #12]
200241f6:	9b03      	ldr	r3, [sp, #12]
200241f8:	1e5a      	subs	r2, r3, #1
200241fa:	9203      	str	r2, [sp, #12]
200241fc:	2b00      	cmp	r3, #0
200241fe:	d1fa      	bne.n	200241f6 <HAL_Delay_us_psram+0x3e>
20024200:	b004      	add	sp, #16
20024202:	bd10      	pop	{r4, pc}
20024204:	20049f60 	.word	0x20049f60
20024208:	000f4240 	.word	0x000f4240

2002420c <HAL_MPI_OPSRAM_CAL_DELAY>:
2002420c:	b570      	push	{r4, r5, r6, lr}
2002420e:	460e      	mov	r6, r1
20024210:	4615      	mov	r5, r2
20024212:	4604      	mov	r4, r0
20024214:	b358      	cbz	r0, 2002426e <HAL_MPI_OPSRAM_CAL_DELAY+0x62>
20024216:	2202      	movs	r2, #2
20024218:	6803      	ldr	r3, [r0, #0]
2002421a:	60da      	str	r2, [r3, #12]
2002421c:	6802      	ldr	r2, [r0, #0]
2002421e:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20024220:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20024224:	6593      	str	r3, [r2, #88]	@ 0x58
20024226:	6802      	ldr	r2, [r0, #0]
20024228:	2000      	movs	r0, #0
2002422a:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
2002422e:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
20024232:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20024236:	f7ff ffbf 	bl	200241b8 <HAL_Delay_us_psram>
2002423a:	2014      	movs	r0, #20
2002423c:	f7ff ffbc 	bl	200241b8 <HAL_Delay_us_psram>
20024240:	6820      	ldr	r0, [r4, #0]
20024242:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
20024246:	05db      	lsls	r3, r3, #23
20024248:	d5fb      	bpl.n	20024242 <HAL_MPI_OPSRAM_CAL_DELAY+0x36>
2002424a:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
2002424e:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
20024252:	b2db      	uxtb	r3, r3
20024254:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20024258:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
2002425c:	1e5a      	subs	r2, r3, #1
2002425e:	7032      	strb	r2, [r6, #0]
20024260:	2201      	movs	r2, #1
20024262:	2000      	movs	r0, #0
20024264:	3b04      	subs	r3, #4
20024266:	702b      	strb	r3, [r5, #0]
20024268:	6823      	ldr	r3, [r4, #0]
2002426a:	60da      	str	r2, [r3, #12]
2002426c:	bd70      	pop	{r4, r5, r6, pc}
2002426e:	2001      	movs	r0, #1
20024270:	e7fc      	b.n	2002426c <HAL_MPI_OPSRAM_CAL_DELAY+0x60>
	...

20024274 <HAL_SPI_PSRAM_Init>:
20024274:	b537      	push	{r0, r1, r2, r4, r5, lr}
20024276:	4614      	mov	r4, r2
20024278:	4605      	mov	r5, r0
2002427a:	2800      	cmp	r0, #0
2002427c:	d043      	beq.n	20024306 <HAL_SPI_PSRAM_Init+0x92>
2002427e:	2900      	cmp	r1, #0
20024280:	d041      	beq.n	20024306 <HAL_SPI_PSRAM_Init+0x92>
20024282:	f7fe fbbf 	bl	20022a04 <HAL_QSPI_Init>
20024286:	4628      	mov	r0, r5
20024288:	b2e1      	uxtb	r1, r4
2002428a:	f7fe fc95 	bl	20022bb8 <HAL_FLASH_SET_CLK_rom>
2002428e:	4628      	mov	r0, r5
20024290:	f7ff fd54 	bl	20023d3c <HAL_QSPI_GET_CLK>
20024294:	4b1d      	ldr	r3, [pc, #116]	@ (2002430c <HAL_SPI_PSRAM_Init+0x98>)
20024296:	4298      	cmp	r0, r3
20024298:	d930      	bls.n	200242fc <HAL_SPI_PSRAM_Init+0x88>
2002429a:	4b1d      	ldr	r3, [pc, #116]	@ (20024310 <HAL_SPI_PSRAM_Init+0x9c>)
2002429c:	4298      	cmp	r0, r3
2002429e:	d92f      	bls.n	20024300 <HAL_SPI_PSRAM_Init+0x8c>
200242a0:	4b1c      	ldr	r3, [pc, #112]	@ (20024314 <HAL_SPI_PSRAM_Init+0xa0>)
200242a2:	4298      	cmp	r0, r3
200242a4:	d922      	bls.n	200242ec <HAL_SPI_PSRAM_Init+0x78>
200242a6:	f240 34b6 	movw	r4, #950	@ 0x3b6
200242aa:	f240 4374 	movw	r3, #1140	@ 0x474
200242ae:	4a1a      	ldr	r2, [pc, #104]	@ (20024318 <HAL_SPI_PSRAM_Init+0xa4>)
200242b0:	4290      	cmp	r0, r2
200242b2:	bf88      	it	hi
200242b4:	461c      	movhi	r4, r3
200242b6:	2200      	movs	r2, #0
200242b8:	2101      	movs	r1, #1
200242ba:	4628      	mov	r0, r5
200242bc:	f7ff f8ba 	bl	20023434 <HAL_QSPI_SET_CLK_INV>
200242c0:	2100      	movs	r1, #0
200242c2:	4622      	mov	r2, r4
200242c4:	2302      	movs	r3, #2
200242c6:	4628      	mov	r0, r5
200242c8:	9100      	str	r1, [sp, #0]
200242ca:	f7fe fd60 	bl	20022d8e <HAL_FLASH_SET_CS_TIME>
200242ce:	4604      	mov	r4, r0
200242d0:	b948      	cbnz	r0, 200242e6 <HAL_SPI_PSRAM_Init+0x72>
200242d2:	2106      	movs	r1, #6
200242d4:	4628      	mov	r0, r5
200242d6:	f7fe fd6f 	bl	20022db8 <HAL_FLASH_SET_ROW_BOUNDARY>
200242da:	4604      	mov	r4, r0
200242dc:	b918      	cbnz	r0, 200242e6 <HAL_SPI_PSRAM_Init+0x72>
200242de:	2101      	movs	r1, #1
200242e0:	4628      	mov	r0, r5
200242e2:	f7fe fd0e 	bl	20022d02 <HAL_FLASH_ENABLE_QSPI>
200242e6:	4620      	mov	r0, r4
200242e8:	b003      	add	sp, #12
200242ea:	bd30      	pop	{r4, r5, pc}
200242ec:	4b0b      	ldr	r3, [pc, #44]	@ (2002431c <HAL_SPI_PSRAM_Init+0xa8>)
200242ee:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
200242f2:	4298      	cmp	r0, r3
200242f4:	d8df      	bhi.n	200242b6 <HAL_SPI_PSRAM_Init+0x42>
200242f6:	2200      	movs	r2, #0
200242f8:	4611      	mov	r1, r2
200242fa:	e7de      	b.n	200242ba <HAL_SPI_PSRAM_Init+0x46>
200242fc:	24b4      	movs	r4, #180	@ 0xb4
200242fe:	e7fa      	b.n	200242f6 <HAL_SPI_PSRAM_Init+0x82>
20024300:	f44f 74be 	mov.w	r4, #380	@ 0x17c
20024304:	e7f7      	b.n	200242f6 <HAL_SPI_PSRAM_Init+0x82>
20024306:	2401      	movs	r4, #1
20024308:	e7ed      	b.n	200242e6 <HAL_SPI_PSRAM_Init+0x72>
2002430a:	bf00      	nop
2002430c:	016e3600 	.word	0x016e3600
20024310:	02dc6c00 	.word	0x02dc6c00
20024314:	05b8d800 	.word	0x05b8d800
20024318:	07270e00 	.word	0x07270e00
2002431c:	03938700 	.word	0x03938700

20024320 <HAL_MPI_MR_WRITE>:
20024320:	b5f0      	push	{r4, r5, r6, r7, lr}
20024322:	460e      	mov	r6, r1
20024324:	4617      	mov	r7, r2
20024326:	4605      	mov	r5, r0
20024328:	b087      	sub	sp, #28
2002432a:	b1d8      	cbz	r0, 20024364 <HAL_MPI_MR_WRITE+0x44>
2002432c:	2207      	movs	r2, #7
2002432e:	2400      	movs	r4, #0
20024330:	2303      	movs	r3, #3
20024332:	e9cd 2203 	strd	r2, r2, [sp, #12]
20024336:	2101      	movs	r1, #1
20024338:	e9cd 4301 	strd	r4, r3, [sp, #4]
2002433c:	9400      	str	r4, [sp, #0]
2002433e:	4623      	mov	r3, r4
20024340:	f7fe fc43 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
20024344:	2102      	movs	r1, #2
20024346:	4628      	mov	r0, r5
20024348:	f7fe fbd5 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
2002434c:	4639      	mov	r1, r7
2002434e:	4628      	mov	r0, r5
20024350:	f7fe fbca 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
20024354:	4632      	mov	r2, r6
20024356:	21c0      	movs	r1, #192	@ 0xc0
20024358:	4628      	mov	r0, r5
2002435a:	f7fe fbf1 	bl	20022b40 <HAL_FLASH_SET_CMD>
2002435e:	4620      	mov	r0, r4
20024360:	b007      	add	sp, #28
20024362:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024364:	2001      	movs	r0, #1
20024366:	e7fb      	b.n	20024360 <HAL_MPI_MR_WRITE+0x40>

20024368 <HAL_MPI_SET_FIXLAT>:
20024368:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
2002436c:	460c      	mov	r4, r1
2002436e:	4616      	mov	r6, r2
20024370:	461f      	mov	r7, r3
20024372:	4605      	mov	r5, r0
20024374:	2800      	cmp	r0, #0
20024376:	d040      	beq.n	200243fa <HAL_MPI_SET_FIXLAT+0x92>
20024378:	466b      	mov	r3, sp
2002437a:	4a21      	ldr	r2, [pc, #132]	@ (20024400 <HAL_MPI_SET_FIXLAT+0x98>)
2002437c:	6810      	ldr	r0, [r2, #0]
2002437e:	6851      	ldr	r1, [r2, #4]
20024380:	c303      	stmia	r3!, {r0, r1}
20024382:	6890      	ldr	r0, [r2, #8]
20024384:	68d1      	ldr	r1, [r2, #12]
20024386:	c303      	stmia	r3!, {r0, r1}
20024388:	4628      	mov	r0, r5
2002438a:	b2e1      	uxtb	r1, r4
2002438c:	f7fe fd3a 	bl	20022e04 <HAL_MPI_EN_FIXLAT>
20024390:	f107 0310 	add.w	r3, r7, #16
20024394:	446b      	add	r3, sp
20024396:	f813 8c08 	ldrb.w	r8, [r3, #-8]
2002439a:	ea4f 1848 	mov.w	r8, r8, lsl #5
2002439e:	fa5f f888 	uxtb.w	r8, r8
200243a2:	b30c      	cbz	r4, 200243e8 <HAL_MPI_SET_FIXLAT+0x80>
200243a4:	ab04      	add	r3, sp, #16
200243a6:	eb03 0356 	add.w	r3, r3, r6, lsr #1
200243aa:	f813 4c10 	ldrb.w	r4, [r3, #-16]
200243ae:	00a4      	lsls	r4, r4, #2
200243b0:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
200243b4:	b264      	sxtb	r4, r4
200243b6:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
200243ba:	2100      	movs	r1, #0
200243bc:	4628      	mov	r0, r5
200243be:	f7ff ffaf 	bl	20024320 <HAL_MPI_MR_WRITE>
200243c2:	1e71      	subs	r1, r6, #1
200243c4:	4628      	mov	r0, r5
200243c6:	b249      	sxtb	r1, r1
200243c8:	f7fe fd7a 	bl	20022ec0 <HAL_MPI_MODIFY_RCMD_DELAY>
200243cc:	4642      	mov	r2, r8
200243ce:	2104      	movs	r1, #4
200243d0:	4628      	mov	r0, r5
200243d2:	f7ff ffa5 	bl	20024320 <HAL_MPI_MR_WRITE>
200243d6:	1e79      	subs	r1, r7, #1
200243d8:	4628      	mov	r0, r5
200243da:	b249      	sxtb	r1, r1
200243dc:	f7fe fd79 	bl	20022ed2 <HAL_MPI_MODIFY_WCMD_DELAY>
200243e0:	2000      	movs	r0, #0
200243e2:	b004      	add	sp, #16
200243e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200243e8:	f106 0310 	add.w	r3, r6, #16
200243ec:	446b      	add	r3, sp
200243ee:	f813 4c10 	ldrb.w	r4, [r3, #-16]
200243f2:	00a4      	lsls	r4, r4, #2
200243f4:	f044 0401 	orr.w	r4, r4, #1
200243f8:	e7dc      	b.n	200243b4 <HAL_MPI_SET_FIXLAT+0x4c>
200243fa:	2001      	movs	r0, #1
200243fc:	e7f1      	b.n	200243e2 <HAL_MPI_SET_FIXLAT+0x7a>
200243fe:	bf00      	nop
20024400:	2002b6ba 	.word	0x2002b6ba

20024404 <HAL_LEGACY_MR_WRITE>:
20024404:	b5f0      	push	{r4, r5, r6, r7, lr}
20024406:	460e      	mov	r6, r1
20024408:	4617      	mov	r7, r2
2002440a:	4605      	mov	r5, r0
2002440c:	b087      	sub	sp, #28
2002440e:	b1d8      	cbz	r0, 20024448 <HAL_LEGACY_MR_WRITE+0x44>
20024410:	2207      	movs	r2, #7
20024412:	2400      	movs	r4, #0
20024414:	2302      	movs	r3, #2
20024416:	e9cd 2203 	strd	r2, r2, [sp, #12]
2002441a:	2101      	movs	r1, #1
2002441c:	e9cd 4301 	strd	r4, r3, [sp, #4]
20024420:	9400      	str	r4, [sp, #0]
20024422:	4623      	mov	r3, r4
20024424:	f7fe fbd1 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
20024428:	2104      	movs	r1, #4
2002442a:	4628      	mov	r0, r5
2002442c:	f7fe fb63 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
20024430:	4639      	mov	r1, r7
20024432:	4628      	mov	r0, r5
20024434:	f7fe fb58 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
20024438:	4632      	mov	r2, r6
2002443a:	21c0      	movs	r1, #192	@ 0xc0
2002443c:	4628      	mov	r0, r5
2002443e:	f7fe fb7f 	bl	20022b40 <HAL_FLASH_SET_CMD>
20024442:	4620      	mov	r0, r4
20024444:	b007      	add	sp, #28
20024446:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024448:	2001      	movs	r0, #1
2002444a:	e7fb      	b.n	20024444 <HAL_LEGACY_MR_WRITE+0x40>

2002444c <HAL_LEGACY_CFG_READ>:
2002444c:	b530      	push	{r4, r5, lr}
2002444e:	4605      	mov	r5, r0
20024450:	b085      	sub	sp, #20
20024452:	b1a0      	cbz	r0, 2002447e <HAL_LEGACY_CFG_READ+0x32>
20024454:	2400      	movs	r4, #0
20024456:	2107      	movs	r1, #7
20024458:	2302      	movs	r3, #2
2002445a:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
2002445e:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024462:	0052      	lsls	r2, r2, #1
20024464:	e9cd 4300 	strd	r4, r3, [sp]
20024468:	b252      	sxtb	r2, r2
2002446a:	4623      	mov	r3, r4
2002446c:	f7fe faf6 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
20024470:	4621      	mov	r1, r4
20024472:	4628      	mov	r0, r5
20024474:	f7fe fae7 	bl	20022a46 <HAL_FLASH_SET_AHB_RCMD>
20024478:	4620      	mov	r0, r4
2002447a:	b005      	add	sp, #20
2002447c:	bd30      	pop	{r4, r5, pc}
2002447e:	2001      	movs	r0, #1
20024480:	e7fb      	b.n	2002447a <HAL_LEGACY_CFG_READ+0x2e>

20024482 <HAL_LEGACY_CFG_WRITE>:
20024482:	b530      	push	{r4, r5, lr}
20024484:	4605      	mov	r5, r0
20024486:	b085      	sub	sp, #20
20024488:	b190      	cbz	r0, 200244b0 <HAL_LEGACY_CFG_WRITE+0x2e>
2002448a:	2107      	movs	r1, #7
2002448c:	2400      	movs	r4, #0
2002448e:	2302      	movs	r3, #2
20024490:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024494:	e9cd 4300 	strd	r4, r3, [sp]
20024498:	4623      	mov	r3, r4
2002449a:	f990 2026 	ldrsb.w	r2, [r0, #38]	@ 0x26
2002449e:	f7fe fb06 	bl	20022aae <HAL_FLASH_CFG_AHB_WCMD>
200244a2:	2180      	movs	r1, #128	@ 0x80
200244a4:	4628      	mov	r0, r5
200244a6:	f7fe faf6 	bl	20022a96 <HAL_FLASH_SET_AHB_WCMD>
200244aa:	4620      	mov	r0, r4
200244ac:	b005      	add	sp, #20
200244ae:	bd30      	pop	{r4, r5, pc}
200244b0:	2001      	movs	r0, #1
200244b2:	e7fb      	b.n	200244ac <HAL_LEGACY_CFG_WRITE+0x2a>

200244b4 <HAL_PSRAM_RESET>:
200244b4:	b5f0      	push	{r4, r5, r6, r7, lr}
200244b6:	4604      	mov	r4, r0
200244b8:	b087      	sub	sp, #28
200244ba:	2800      	cmp	r0, #0
200244bc:	d03b      	beq.n	20024536 <HAL_PSRAM_RESET+0x82>
200244be:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
200244c2:	2b05      	cmp	r3, #5
200244c4:	d034      	beq.n	20024530 <HAL_PSRAM_RESET+0x7c>
200244c6:	3b03      	subs	r3, #3
200244c8:	2b01      	cmp	r3, #1
200244ca:	d82e      	bhi.n	2002452a <HAL_PSRAM_RESET+0x76>
200244cc:	2601      	movs	r6, #1
200244ce:	2703      	movs	r7, #3
200244d0:	2300      	movs	r3, #0
200244d2:	2507      	movs	r5, #7
200244d4:	b276      	sxtb	r6, r6
200244d6:	b27f      	sxtb	r7, r7
200244d8:	461a      	mov	r2, r3
200244da:	2101      	movs	r1, #1
200244dc:	4620      	mov	r0, r4
200244de:	e9cd 5503 	strd	r5, r5, [sp, #12]
200244e2:	e9cd 5701 	strd	r5, r7, [sp, #4]
200244e6:	9600      	str	r6, [sp, #0]
200244e8:	f7fe fb6f 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
200244ec:	2200      	movs	r2, #0
200244ee:	21ff      	movs	r1, #255	@ 0xff
200244f0:	4620      	mov	r0, r4
200244f2:	f7fe fb25 	bl	20022b40 <HAL_FLASH_SET_CMD>
200244f6:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200244fa:	2b05      	cmp	r3, #5
200244fc:	d10f      	bne.n	2002451e <HAL_PSRAM_RESET+0x6a>
200244fe:	2300      	movs	r3, #0
20024500:	2101      	movs	r1, #1
20024502:	461a      	mov	r2, r3
20024504:	4620      	mov	r0, r4
20024506:	e9cd 5503 	strd	r5, r5, [sp, #12]
2002450a:	e9cd 5701 	strd	r5, r7, [sp, #4]
2002450e:	9600      	str	r6, [sp, #0]
20024510:	f7fe fb5b 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
20024514:	2200      	movs	r2, #0
20024516:	21ff      	movs	r1, #255	@ 0xff
20024518:	4620      	mov	r0, r4
2002451a:	f7fe fb11 	bl	20022b40 <HAL_FLASH_SET_CMD>
2002451e:	2000      	movs	r0, #0
20024520:	f7fd fcc3 	bl	20021eaa <HAL_Delay_us>
20024524:	2003      	movs	r0, #3
20024526:	f7fd fcc0 	bl	20021eaa <HAL_Delay_us>
2002452a:	2000      	movs	r0, #0
2002452c:	b007      	add	sp, #28
2002452e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024530:	2603      	movs	r6, #3
20024532:	2702      	movs	r7, #2
20024534:	e7cc      	b.n	200244d0 <HAL_PSRAM_RESET+0x1c>
20024536:	2001      	movs	r0, #1
20024538:	e7f8      	b.n	2002452c <HAL_PSRAM_RESET+0x78>
	...

2002453c <HAL_OPI_PSRAM_Init>:
2002453c:	b530      	push	{r4, r5, lr}
2002453e:	4604      	mov	r4, r0
20024540:	b085      	sub	sp, #20
20024542:	2800      	cmp	r0, #0
20024544:	d06e      	beq.n	20024624 <HAL_OPI_PSRAM_Init+0xe8>
20024546:	2900      	cmp	r1, #0
20024548:	d06c      	beq.n	20024624 <HAL_OPI_PSRAM_Init+0xe8>
2002454a:	f7fe fa5b 	bl	20022a04 <HAL_QSPI_Init>
2002454e:	6823      	ldr	r3, [r4, #0]
20024550:	f10d 020e 	add.w	r2, sp, #14
20024554:	f10d 010f 	add.w	r1, sp, #15
20024558:	4620      	mov	r0, r4
2002455a:	681d      	ldr	r5, [r3, #0]
2002455c:	f7ff fe56 	bl	2002420c <HAL_MPI_OPSRAM_CAL_DELAY>
20024560:	2101      	movs	r1, #1
20024562:	4620      	mov	r0, r4
20024564:	f7fe fb28 	bl	20022bb8 <HAL_FLASH_SET_CLK_rom>
20024568:	4620      	mov	r0, r4
2002456a:	f7ff fbe7 	bl	20023d3c <HAL_QSPI_GET_CLK>
2002456e:	4b2e      	ldr	r3, [pc, #184]	@ (20024628 <HAL_OPI_PSRAM_Init+0xec>)
20024570:	f005 0501 	and.w	r5, r5, #1
20024574:	4298      	cmp	r0, r3
20024576:	d836      	bhi.n	200245e6 <HAL_OPI_PSRAM_Init+0xaa>
20024578:	2314      	movs	r3, #20
2002457a:	2103      	movs	r1, #3
2002457c:	f88d 300e 	strb.w	r3, [sp, #14]
20024580:	f88d 300f 	strb.w	r3, [sp, #15]
20024584:	4608      	mov	r0, r1
20024586:	2300      	movs	r3, #0
20024588:	22b4      	movs	r2, #180	@ 0xb4
2002458a:	f884 1025 	strb.w	r1, [r4, #37]	@ 0x25
2002458e:	f884 1026 	strb.w	r1, [r4, #38]	@ 0x26
20024592:	2106      	movs	r1, #6
20024594:	9000      	str	r0, [sp, #0]
20024596:	4620      	mov	r0, r4
20024598:	f7fe fbf9 	bl	20022d8e <HAL_FLASH_SET_CS_TIME>
2002459c:	2107      	movs	r1, #7
2002459e:	4620      	mov	r0, r4
200245a0:	f7fe fc0a 	bl	20022db8 <HAL_FLASH_SET_ROW_BOUNDARY>
200245a4:	2101      	movs	r1, #1
200245a6:	4620      	mov	r0, r4
200245a8:	f7fe fc3a 	bl	20022e20 <HAL_MPI_ENABLE_DQS>
200245ac:	f89d 100e 	ldrb.w	r1, [sp, #14]
200245b0:	4620      	mov	r0, r4
200245b2:	f7fe fc43 	bl	20022e3c <HAL_MPI_SET_DQS_DELAY>
200245b6:	2200      	movs	r2, #0
200245b8:	f89d 100f 	ldrb.w	r1, [sp, #15]
200245bc:	4620      	mov	r0, r4
200245be:	f7fe fc49 	bl	20022e54 <HAL_MPI_SET_SCK>
200245c2:	2101      	movs	r1, #1
200245c4:	4620      	mov	r0, r4
200245c6:	f7fe fb9c 	bl	20022d02 <HAL_FLASH_ENABLE_QSPI>
200245ca:	2101      	movs	r1, #1
200245cc:	4620      	mov	r0, r4
200245ce:	f7fe fba6 	bl	20022d1e <HAL_FLASH_ENABLE_OPI>
200245d2:	b92d      	cbnz	r5, 200245e0 <HAL_OPI_PSRAM_Init+0xa4>
200245d4:	4b15      	ldr	r3, [pc, #84]	@ (2002462c <HAL_OPI_PSRAM_Init+0xf0>)
200245d6:	681b      	ldr	r3, [r3, #0]
200245d8:	f003 0303 	and.w	r3, r3, #3
200245dc:	2b03      	cmp	r3, #3
200245de:	d11d      	bne.n	2002461c <HAL_OPI_PSRAM_Init+0xe0>
200245e0:	2000      	movs	r0, #0
200245e2:	b005      	add	sp, #20
200245e4:	bd30      	pop	{r4, r5, pc}
200245e6:	4b12      	ldr	r3, [pc, #72]	@ (20024630 <HAL_OPI_PSRAM_Init+0xf4>)
200245e8:	4298      	cmp	r0, r3
200245ea:	d90b      	bls.n	20024604 <HAL_OPI_PSRAM_Init+0xc8>
200245ec:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200245f0:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200245f4:	4298      	cmp	r0, r3
200245f6:	d90b      	bls.n	20024610 <HAL_OPI_PSRAM_Init+0xd4>
200245f8:	2107      	movs	r1, #7
200245fa:	2014      	movs	r0, #20
200245fc:	2308      	movs	r3, #8
200245fe:	f240 5232 	movw	r2, #1330	@ 0x532
20024602:	e7c2      	b.n	2002458a <HAL_OPI_PSRAM_Init+0x4e>
20024604:	2105      	movs	r1, #5
20024606:	200e      	movs	r0, #14
20024608:	2303      	movs	r3, #3
2002460a:	f240 32b6 	movw	r2, #950	@ 0x3b6
2002460e:	e7bc      	b.n	2002458a <HAL_OPI_PSRAM_Init+0x4e>
20024610:	2106      	movs	r1, #6
20024612:	2011      	movs	r0, #17
20024614:	2305      	movs	r3, #5
20024616:	f240 4274 	movw	r2, #1140	@ 0x474
2002461a:	e7b6      	b.n	2002458a <HAL_OPI_PSRAM_Init+0x4e>
2002461c:	4620      	mov	r0, r4
2002461e:	f7ff ff49 	bl	200244b4 <HAL_PSRAM_RESET>
20024622:	e7dd      	b.n	200245e0 <HAL_OPI_PSRAM_Init+0xa4>
20024624:	2001      	movs	r0, #1
20024626:	e7dc      	b.n	200245e2 <HAL_OPI_PSRAM_Init+0xa6>
20024628:	02dc6c01 	.word	0x02dc6c01
2002462c:	500c0000 	.word	0x500c0000
20024630:	0e4e1c01 	.word	0x0e4e1c01

20024634 <HAL_LEGACY_PSRAM_Init>:
20024634:	b5f0      	push	{r4, r5, r6, r7, lr}
20024636:	4604      	mov	r4, r0
20024638:	b085      	sub	sp, #20
2002463a:	2800      	cmp	r0, #0
2002463c:	f000 8096 	beq.w	2002476c <HAL_LEGACY_PSRAM_Init+0x138>
20024640:	2900      	cmp	r1, #0
20024642:	f000 8093 	beq.w	2002476c <HAL_LEGACY_PSRAM_Init+0x138>
20024646:	f7fe f9dd 	bl	20022a04 <HAL_QSPI_Init>
2002464a:	6823      	ldr	r3, [r4, #0]
2002464c:	f10d 020e 	add.w	r2, sp, #14
20024650:	f10d 010f 	add.w	r1, sp, #15
20024654:	4620      	mov	r0, r4
20024656:	681e      	ldr	r6, [r3, #0]
20024658:	f7ff fdd8 	bl	2002420c <HAL_MPI_OPSRAM_CAL_DELAY>
2002465c:	2101      	movs	r1, #1
2002465e:	4620      	mov	r0, r4
20024660:	f7fe faaa 	bl	20022bb8 <HAL_FLASH_SET_CLK_rom>
20024664:	4620      	mov	r0, r4
20024666:	f7ff fb69 	bl	20023d3c <HAL_QSPI_GET_CLK>
2002466a:	4b41      	ldr	r3, [pc, #260]	@ (20024770 <HAL_LEGACY_PSRAM_Init+0x13c>)
2002466c:	4605      	mov	r5, r0
2002466e:	4298      	cmp	r0, r3
20024670:	4f40      	ldr	r7, [pc, #256]	@ (20024774 <HAL_LEGACY_PSRAM_Init+0x140>)
20024672:	f006 0601 	and.w	r6, r6, #1
20024676:	d850      	bhi.n	2002471a <HAL_LEGACY_PSRAM_Init+0xe6>
20024678:	2314      	movs	r3, #20
2002467a:	2103      	movs	r1, #3
2002467c:	f88d 300e 	strb.w	r3, [sp, #14]
20024680:	f88d 300f 	strb.w	r3, [sp, #15]
20024684:	22b4      	movs	r2, #180	@ 0xb4
20024686:	2300      	movs	r3, #0
20024688:	9100      	str	r1, [sp, #0]
2002468a:	4620      	mov	r0, r4
2002468c:	2106      	movs	r1, #6
2002468e:	f7fe fb7e 	bl	20022d8e <HAL_FLASH_SET_CS_TIME>
20024692:	2107      	movs	r1, #7
20024694:	4620      	mov	r0, r4
20024696:	f7fe fb8f 	bl	20022db8 <HAL_FLASH_SET_ROW_BOUNDARY>
2002469a:	2101      	movs	r1, #1
2002469c:	4620      	mov	r0, r4
2002469e:	f7fe fbbf 	bl	20022e20 <HAL_MPI_ENABLE_DQS>
200246a2:	f89d 100e 	ldrb.w	r1, [sp, #14]
200246a6:	4620      	mov	r0, r4
200246a8:	f7fe fbc8 	bl	20022e3c <HAL_MPI_SET_DQS_DELAY>
200246ac:	2200      	movs	r2, #0
200246ae:	f89d 100f 	ldrb.w	r1, [sp, #15]
200246b2:	4620      	mov	r0, r4
200246b4:	f7fe fbce 	bl	20022e54 <HAL_MPI_SET_SCK>
200246b8:	2101      	movs	r1, #1
200246ba:	4620      	mov	r0, r4
200246bc:	f7fe fb86 	bl	20022dcc <HAL_FLASH_SET_LEGACY>
200246c0:	2101      	movs	r1, #1
200246c2:	4620      	mov	r0, r4
200246c4:	f7fe fb1d 	bl	20022d02 <HAL_FLASH_ENABLE_QSPI>
200246c8:	2101      	movs	r1, #1
200246ca:	4620      	mov	r0, r4
200246cc:	f7fe fb27 	bl	20022d1e <HAL_FLASH_ENABLE_OPI>
200246d0:	b92e      	cbnz	r6, 200246de <HAL_LEGACY_PSRAM_Init+0xaa>
200246d2:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200246d6:	b913      	cbnz	r3, 200246de <HAL_LEGACY_PSRAM_Init+0xaa>
200246d8:	4620      	mov	r0, r4
200246da:	f7ff feeb 	bl	200244b4 <HAL_PSRAM_RESET>
200246de:	42bd      	cmp	r5, r7
200246e0:	d93a      	bls.n	20024758 <HAL_LEGACY_PSRAM_Init+0x124>
200246e2:	4b25      	ldr	r3, [pc, #148]	@ (20024778 <HAL_LEGACY_PSRAM_Init+0x144>)
200246e4:	429d      	cmp	r5, r3
200246e6:	d93c      	bls.n	20024762 <HAL_LEGACY_PSRAM_Init+0x12e>
200246e8:	2206      	movs	r2, #6
200246ea:	2302      	movs	r3, #2
200246ec:	2588      	movs	r5, #136	@ 0x88
200246ee:	263b      	movs	r6, #59	@ 0x3b
200246f0:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
200246f4:	2101      	movs	r1, #1
200246f6:	f884 2025 	strb.w	r2, [r4, #37]	@ 0x25
200246fa:	4620      	mov	r0, r4
200246fc:	f7fe fb82 	bl	20022e04 <HAL_MPI_EN_FIXLAT>
20024700:	4632      	mov	r2, r6
20024702:	2100      	movs	r1, #0
20024704:	4620      	mov	r0, r4
20024706:	f7ff fe7d 	bl	20024404 <HAL_LEGACY_MR_WRITE>
2002470a:	462a      	mov	r2, r5
2002470c:	2104      	movs	r1, #4
2002470e:	4620      	mov	r0, r4
20024710:	f7ff fe78 	bl	20024404 <HAL_LEGACY_MR_WRITE>
20024714:	2000      	movs	r0, #0
20024716:	b005      	add	sp, #20
20024718:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002471a:	42b8      	cmp	r0, r7
2002471c:	d90d      	bls.n	2002473a <HAL_LEGACY_PSRAM_Init+0x106>
2002471e:	4b16      	ldr	r3, [pc, #88]	@ (20024778 <HAL_LEGACY_PSRAM_Init+0x144>)
20024720:	4298      	cmp	r0, r3
20024722:	d90f      	bls.n	20024744 <HAL_LEGACY_PSRAM_Init+0x110>
20024724:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024728:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
2002472c:	4298      	cmp	r0, r3
2002472e:	d80e      	bhi.n	2002474e <HAL_LEGACY_PSRAM_Init+0x11a>
20024730:	2114      	movs	r1, #20
20024732:	2308      	movs	r3, #8
20024734:	f240 5232 	movw	r2, #1330	@ 0x532
20024738:	e7a6      	b.n	20024688 <HAL_LEGACY_PSRAM_Init+0x54>
2002473a:	210e      	movs	r1, #14
2002473c:	2303      	movs	r3, #3
2002473e:	f240 32b6 	movw	r2, #950	@ 0x3b6
20024742:	e7a1      	b.n	20024688 <HAL_LEGACY_PSRAM_Init+0x54>
20024744:	2111      	movs	r1, #17
20024746:	2305      	movs	r3, #5
20024748:	f240 4274 	movw	r2, #1140	@ 0x474
2002474c:	e79c      	b.n	20024688 <HAL_LEGACY_PSRAM_Init+0x54>
2002474e:	2117      	movs	r1, #23
20024750:	2309      	movs	r3, #9
20024752:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
20024756:	e797      	b.n	20024688 <HAL_LEGACY_PSRAM_Init+0x54>
20024758:	2204      	movs	r2, #4
2002475a:	2300      	movs	r3, #0
2002475c:	2508      	movs	r5, #8
2002475e:	2633      	movs	r6, #51	@ 0x33
20024760:	e7c6      	b.n	200246f0 <HAL_LEGACY_PSRAM_Init+0xbc>
20024762:	2205      	movs	r2, #5
20024764:	2300      	movs	r3, #0
20024766:	2508      	movs	r5, #8
20024768:	2637      	movs	r6, #55	@ 0x37
2002476a:	e7c1      	b.n	200246f0 <HAL_LEGACY_PSRAM_Init+0xbc>
2002476c:	2001      	movs	r0, #1
2002476e:	e7d2      	b.n	20024716 <HAL_LEGACY_PSRAM_Init+0xe2>
20024770:	02dc6c01 	.word	0x02dc6c01
20024774:	0e4e1c01 	.word	0x0e4e1c01
20024778:	112a8801 	.word	0x112a8801

2002477c <HAL_HYPER_PSRAM_WriteCR>:
2002477c:	b570      	push	{r4, r5, r6, lr}
2002477e:	460e      	mov	r6, r1
20024780:	4615      	mov	r5, r2
20024782:	4604      	mov	r4, r0
20024784:	b086      	sub	sp, #24
20024786:	b1f8      	cbz	r0, 200247c8 <HAL_HYPER_PSRAM_WriteCR+0x4c>
20024788:	2207      	movs	r2, #7
2002478a:	2303      	movs	r3, #3
2002478c:	e9cd 2301 	strd	r2, r3, [sp, #4]
20024790:	2300      	movs	r3, #0
20024792:	e9cd 2203 	strd	r2, r2, [sp, #12]
20024796:	9300      	str	r3, [sp, #0]
20024798:	2101      	movs	r1, #1
2002479a:	f7fe fa16 	bl	20022bca <HAL_FLASH_MANUAL_CMD>
2002479e:	4631      	mov	r1, r6
200247a0:	4620      	mov	r0, r4
200247a2:	f7fe f9bc 	bl	20022b1e <HAL_FLASH_WRITE_ABYTE>
200247a6:	2102      	movs	r1, #2
200247a8:	4620      	mov	r0, r4
200247aa:	f7fe f9a4 	bl	20022af6 <HAL_FLASH_WRITE_DLEN>
200247ae:	4629      	mov	r1, r5
200247b0:	4620      	mov	r0, r4
200247b2:	f7fe f999 	bl	20022ae8 <HAL_FLASH_WRITE_WORD>
200247b6:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
200247ba:	2160      	movs	r1, #96	@ 0x60
200247bc:	4620      	mov	r0, r4
200247be:	b006      	add	sp, #24
200247c0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
200247c4:	f7fe b9bc 	b.w	20022b40 <HAL_FLASH_SET_CMD>
200247c8:	b006      	add	sp, #24
200247ca:	bd70      	pop	{r4, r5, r6, pc}

200247cc <HAL_HYPER_PSRAM_Init>:
200247cc:	b538      	push	{r3, r4, r5, lr}
200247ce:	4604      	mov	r4, r0
200247d0:	2201      	movs	r2, #1
200247d2:	f7ff feb3 	bl	2002453c <HAL_OPI_PSRAM_Init>
200247d6:	4620      	mov	r0, r4
200247d8:	f7ff fab0 	bl	20023d3c <HAL_QSPI_GET_CLK>
200247dc:	4b15      	ldr	r3, [pc, #84]	@ (20024834 <HAL_HYPER_PSRAM_Init+0x68>)
200247de:	4298      	cmp	r0, r3
200247e0:	d91f      	bls.n	20024822 <HAL_HYPER_PSRAM_Init+0x56>
200247e2:	4b15      	ldr	r3, [pc, #84]	@ (20024838 <HAL_HYPER_PSRAM_Init+0x6c>)
200247e4:	4298      	cmp	r0, r3
200247e6:	d91f      	bls.n	20024828 <HAL_HYPER_PSRAM_Init+0x5c>
200247e8:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
200247ec:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
200247f0:	4298      	cmp	r0, r3
200247f2:	d91c      	bls.n	2002482e <HAL_HYPER_PSRAM_Init+0x62>
200247f4:	f242 758f 	movw	r5, #10127	@ 0x278f
200247f8:	f241 738f 	movw	r3, #6031	@ 0x178f
200247fc:	4a0f      	ldr	r2, [pc, #60]	@ (2002483c <HAL_HYPER_PSRAM_Init+0x70>)
200247fe:	4290      	cmp	r0, r2
20024800:	bf98      	it	ls
20024802:	461d      	movls	r5, r3
20024804:	2101      	movs	r1, #1
20024806:	4620      	mov	r0, r4
20024808:	f7fe fa97 	bl	20022d3a <HAL_FLASH_ENABLE_HYPER>
2002480c:	462a      	mov	r2, r5
2002480e:	4620      	mov	r0, r4
20024810:	2100      	movs	r1, #0
20024812:	f7ff ffb3 	bl	2002477c <HAL_HYPER_PSRAM_WriteCR>
20024816:	2101      	movs	r1, #1
20024818:	4620      	mov	r0, r4
2002481a:	f7fe faf3 	bl	20022e04 <HAL_MPI_EN_FIXLAT>
2002481e:	2000      	movs	r0, #0
20024820:	bd38      	pop	{r3, r4, r5, pc}
20024822:	f24e 758f 	movw	r5, #59279	@ 0xe78f
20024826:	e7ed      	b.n	20024804 <HAL_HYPER_PSRAM_Init+0x38>
20024828:	f24f 758f 	movw	r5, #63375	@ 0xf78f
2002482c:	e7ea      	b.n	20024804 <HAL_HYPER_PSRAM_Init+0x38>
2002482e:	f240 758f 	movw	r5, #1935	@ 0x78f
20024832:	e7e7      	b.n	20024804 <HAL_HYPER_PSRAM_Init+0x38>
20024834:	0a21fe81 	.word	0x0a21fe81
20024838:	0c65d401 	.word	0x0c65d401
2002483c:	112a8801 	.word	0x112a8801

20024840 <HAL_HYPER_CFG_READ>:
20024840:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024842:	b160      	cbz	r0, 2002485e <HAL_HYPER_CFG_READ+0x1e>
20024844:	2107      	movs	r1, #7
20024846:	2303      	movs	r3, #3
20024848:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
2002484c:	e9cd 1300 	strd	r1, r3, [sp]
20024850:	3a01      	subs	r2, #1
20024852:	2300      	movs	r3, #0
20024854:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024858:	b252      	sxtb	r2, r2
2002485a:	f7fe f8ff 	bl	20022a5c <HAL_FLASH_CFG_AHB_RCMD>
2002485e:	b005      	add	sp, #20
20024860:	f85d fb04 	ldr.w	pc, [sp], #4

20024864 <HAL_HYPER_CFG_WRITE>:
20024864:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024866:	b160      	cbz	r0, 20024882 <HAL_HYPER_CFG_WRITE+0x1e>
20024868:	2107      	movs	r1, #7
2002486a:	2303      	movs	r3, #3
2002486c:	f890 2026 	ldrb.w	r2, [r0, #38]	@ 0x26
20024870:	e9cd 1300 	strd	r1, r3, [sp]
20024874:	3a01      	subs	r2, #1
20024876:	2300      	movs	r3, #0
20024878:	e9cd 1102 	strd	r1, r1, [sp, #8]
2002487c:	b252      	sxtb	r2, r2
2002487e:	f7fe f916 	bl	20022aae <HAL_FLASH_CFG_AHB_WCMD>
20024882:	b005      	add	sp, #20
20024884:	f85d fb04 	ldr.w	pc, [sp], #4

20024888 <HAL_PIN_SetUartFunc.part.0>:
20024888:	108b      	asrs	r3, r1, #2
2002488a:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
2002488e:	b5f0      	push	{r4, r5, r6, r7, lr}
20024890:	b2d6      	uxtb	r6, r2
20024892:	2e04      	cmp	r6, #4
20024894:	d849      	bhi.n	2002492a <HAL_PIN_SetUartFunc.part.0+0xa2>
20024896:	2e02      	cmp	r6, #2
20024898:	d810      	bhi.n	200248bc <HAL_PIN_SetUartFunc.part.0+0x34>
2002489a:	4d25      	ldr	r5, [pc, #148]	@ (20024930 <HAL_PIN_SetUartFunc.part.0+0xa8>)
2002489c:	240e      	movs	r4, #14
2002489e:	eb05 0582 	add.w	r5, r5, r2, lsl #2
200248a2:	f240 22b2 	movw	r2, #690	@ 0x2b2
200248a6:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
200248aa:	b29b      	uxth	r3, r3
200248ac:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
200248b0:	2b03      	cmp	r3, #3
200248b2:	d83a      	bhi.n	2002492a <HAL_PIN_SetUartFunc.part.0+0xa2>
200248b4:	e8df f003 	tbb	[pc, r3]
200248b8:	20271a09 	.word	0x20271a09
200248bc:	4d1d      	ldr	r5, [pc, #116]	@ (20024934 <HAL_PIN_SetUartFunc.part.0+0xac>)
200248be:	009b      	lsls	r3, r3, #2
200248c0:	243d      	movs	r4, #61	@ 0x3d
200248c2:	f240 3221 	movw	r2, #801	@ 0x321
200248c6:	441d      	add	r5, r3
200248c8:	e7ed      	b.n	200248a6 <HAL_PIN_SetUartFunc.part.0+0x1e>
200248ca:	2c0e      	cmp	r4, #14
200248cc:	f04f 0608 	mov.w	r6, #8
200248d0:	d120      	bne.n	20024914 <HAL_PIN_SetUartFunc.part.0+0x8c>
200248d2:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
200248d6:	682f      	ldr	r7, [r5, #0]
200248d8:	1b03      	subs	r3, r0, r4
200248da:	40b3      	lsls	r3, r6
200248dc:	407b      	eors	r3, r7
200248de:	400b      	ands	r3, r1
200248e0:	4410      	add	r0, r2
200248e2:	407b      	eors	r3, r7
200248e4:	1b00      	subs	r0, r0, r4
200248e6:	602b      	str	r3, [r5, #0]
200248e8:	b280      	uxth	r0, r0
200248ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
200248ec:	2c0e      	cmp	r4, #14
200248ee:	f04f 0600 	mov.w	r6, #0
200248f2:	d112      	bne.n	2002491a <HAL_PIN_SetUartFunc.part.0+0x92>
200248f4:	213f      	movs	r1, #63	@ 0x3f
200248f6:	e7ee      	b.n	200248d6 <HAL_PIN_SetUartFunc.part.0+0x4e>
200248f8:	2c0e      	cmp	r4, #14
200248fa:	f04f 0610 	mov.w	r6, #16
200248fe:	d10e      	bne.n	2002491e <HAL_PIN_SetUartFunc.part.0+0x96>
20024900:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
20024904:	e7e7      	b.n	200248d6 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024906:	2c0e      	cmp	r4, #14
20024908:	f04f 0618 	mov.w	r6, #24
2002490c:	d10a      	bne.n	20024924 <HAL_PIN_SetUartFunc.part.0+0x9c>
2002490e:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
20024912:	e7e0      	b.n	200248d6 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024914:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
20024918:	e7dd      	b.n	200248d6 <HAL_PIN_SetUartFunc.part.0+0x4e>
2002491a:	2107      	movs	r1, #7
2002491c:	e7db      	b.n	200248d6 <HAL_PIN_SetUartFunc.part.0+0x4e>
2002491e:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
20024922:	e7d8      	b.n	200248d6 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024924:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
20024928:	e7d5      	b.n	200248d6 <HAL_PIN_SetUartFunc.part.0+0x4e>
2002492a:	2000      	movs	r0, #0
2002492c:	e7dd      	b.n	200248ea <HAL_PIN_SetUartFunc.part.0+0x62>
2002492e:	bf00      	nop
20024930:	5000b058 	.word	0x5000b058
20024934:	4000ef0c 	.word	0x4000ef0c

20024938 <HAL_PIN_SetAonPE>:
20024938:	2a00      	cmp	r2, #0
2002493a:	d031      	beq.n	200249a0 <HAL_PIN_SetAonPE+0x68>
2002493c:	282f      	cmp	r0, #47	@ 0x2f
2002493e:	dd16      	ble.n	2002496e <HAL_PIN_SetAonPE+0x36>
20024940:	283a      	cmp	r0, #58	@ 0x3a
20024942:	dc2d      	bgt.n	200249a0 <HAL_PIN_SetAonPE+0x68>
20024944:	2301      	movs	r3, #1
20024946:	4a17      	ldr	r2, [pc, #92]	@ (200249a4 <HAL_PIN_SetAonPE+0x6c>)
20024948:	382a      	subs	r0, #42	@ 0x2a
2002494a:	4083      	lsls	r3, r0
2002494c:	6f10      	ldr	r0, [r2, #112]	@ 0x70
2002494e:	f011 0f20 	tst.w	r1, #32
20024952:	bf14      	ite	ne
20024954:	4318      	orrne	r0, r3
20024956:	4398      	biceq	r0, r3
20024958:	6710      	str	r0, [r2, #112]	@ 0x70
2002495a:	4a12      	ldr	r2, [pc, #72]	@ (200249a4 <HAL_PIN_SetAonPE+0x6c>)
2002495c:	f011 0f10 	tst.w	r1, #16
20024960:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
20024962:	bf14      	ite	ne
20024964:	430b      	orrne	r3, r1
20024966:	ea21 0303 	biceq.w	r3, r1, r3
2002496a:	66d3      	str	r3, [r2, #108]	@ 0x6c
2002496c:	4770      	bx	lr
2002496e:	3826      	subs	r0, #38	@ 0x26
20024970:	2803      	cmp	r0, #3
20024972:	d815      	bhi.n	200249a0 <HAL_PIN_SetAonPE+0x68>
20024974:	4b0c      	ldr	r3, [pc, #48]	@ (200249a8 <HAL_PIN_SetAonPE+0x70>)
20024976:	f011 0f20 	tst.w	r1, #32
2002497a:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
2002497e:	bf14      	ite	ne
20024980:	f042 0210 	orrne.w	r2, r2, #16
20024984:	f022 0210 	biceq.w	r2, r2, #16
20024988:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
2002498c:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024990:	06c9      	lsls	r1, r1, #27
20024992:	bf4c      	ite	mi
20024994:	f042 0208 	orrmi.w	r2, r2, #8
20024998:	f022 0208 	bicpl.w	r2, r2, #8
2002499c:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
200249a0:	4770      	bx	lr
200249a2:	bf00      	nop
200249a4:	500cb000 	.word	0x500cb000
200249a8:	500cb05c 	.word	0x500cb05c

200249ac <HAL_PIN_Get_Base>:
200249ac:	b138      	cbz	r0, 200249be <HAL_PIN_Get_Base+0x12>
200249ae:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
200249b2:	6893      	ldr	r3, [r2, #8]
200249b4:	4806      	ldr	r0, [pc, #24]	@ (200249d0 <HAL_PIN_Get_Base+0x24>)
200249b6:	f043 0304 	orr.w	r3, r3, #4
200249ba:	6093      	str	r3, [r2, #8]
200249bc:	4770      	bx	lr
200249be:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
200249c2:	6853      	ldr	r3, [r2, #4]
200249c4:	4803      	ldr	r0, [pc, #12]	@ (200249d4 <HAL_PIN_Get_Base+0x28>)
200249c6:	f043 0308 	orr.w	r3, r3, #8
200249ca:	6053      	str	r3, [r2, #4]
200249cc:	4770      	bx	lr
200249ce:	bf00      	nop
200249d0:	50003000 	.word	0x50003000
200249d4:	40003000 	.word	0x40003000

200249d8 <HAL_PIN_Func2Idx>:
200249d8:	283b      	cmp	r0, #59	@ 0x3b
200249da:	bfc8      	it	gt
200249dc:	383c      	subgt	r0, #60	@ 0x3c
200249de:	0143      	lsls	r3, r0, #5
200249e0:	b152      	cbz	r2, 200249f8 <HAL_PIN_Func2Idx+0x20>
200249e2:	4a06      	ldr	r2, [pc, #24]	@ (200249fc <HAL_PIN_Func2Idx+0x24>)
200249e4:	2000      	movs	r0, #0
200249e6:	4413      	add	r3, r2
200249e8:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
200249ec:	428a      	cmp	r2, r1
200249ee:	d002      	beq.n	200249f6 <HAL_PIN_Func2Idx+0x1e>
200249f0:	3001      	adds	r0, #1
200249f2:	2810      	cmp	r0, #16
200249f4:	d1f8      	bne.n	200249e8 <HAL_PIN_Func2Idx+0x10>
200249f6:	4770      	bx	lr
200249f8:	4a01      	ldr	r2, [pc, #4]	@ (20024a00 <HAL_PIN_Func2Idx+0x28>)
200249fa:	e7f3      	b.n	200249e4 <HAL_PIN_Func2Idx+0xc>
200249fc:	2002af5a 	.word	0x2002af5a
20024a00:	2002aeba 	.word	0x2002aeba

20024a04 <HAL_PIN_Set>:
20024a04:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20024a08:	4615      	mov	r5, r2
20024a0a:	4604      	mov	r4, r0
20024a0c:	b918      	cbnz	r0, 20024a16 <HAL_PIN_Set+0x12>
20024a0e:	f04f 30ff 	mov.w	r0, #4294967295
20024a12:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20024a16:	283a      	cmp	r0, #58	@ 0x3a
20024a18:	bfcd      	iteet	gt
20024a1a:	2700      	movgt	r7, #0
20024a1c:	2701      	movle	r7, #1
20024a1e:	4606      	movle	r6, r0
20024a20:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
20024a24:	4638      	mov	r0, r7
20024a26:	f7ff ffc1 	bl	200249ac <HAL_PIN_Get_Base>
20024a2a:	4680      	mov	r8, r0
20024a2c:	2f00      	cmp	r7, #0
20024a2e:	f000 80fe 	beq.w	20024c2e <HAL_PIN_Set+0x22a>
20024a32:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
20024a36:	b29b      	uxth	r3, r3
20024a38:	2b0b      	cmp	r3, #11
20024a3a:	d82e      	bhi.n	20024a9a <HAL_PIN_Set+0x96>
20024a3c:	4620      	mov	r0, r4
20024a3e:	f7ff ff23 	bl	20024888 <HAL_PIN_SetUartFunc.part.0>
20024a42:	4601      	mov	r1, r0
20024a44:	463a      	mov	r2, r7
20024a46:	4620      	mov	r0, r4
20024a48:	f7ff ffc6 	bl	200249d8 <HAL_PIN_Func2Idx>
20024a4c:	280f      	cmp	r0, #15
20024a4e:	4681      	mov	r9, r0
20024a50:	dcdd      	bgt.n	20024a0e <HAL_PIN_Set+0xa>
20024a52:	463a      	mov	r2, r7
20024a54:	4629      	mov	r1, r5
20024a56:	4620      	mov	r0, r4
20024a58:	f7ff ff6e 	bl	20024938 <HAL_PIN_SetAonPE>
20024a5c:	2f00      	cmp	r7, #0
20024a5e:	f040 80ef 	bne.w	20024c40 <HAL_PIN_Set+0x23c>
20024a62:	2c40      	cmp	r4, #64	@ 0x40
20024a64:	f340 80ec 	ble.w	20024c40 <HAL_PIN_Set+0x23c>
20024a68:	4a7f      	ldr	r2, [pc, #508]	@ (20024c68 <HAL_PIN_Set+0x264>)
20024a6a:	06e8      	lsls	r0, r5, #27
20024a6c:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
20024a70:	ea4f 3909 	mov.w	r9, r9, lsl #12
20024a74:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024a78:	f023 0318 	bic.w	r3, r3, #24
20024a7c:	bf48      	it	mi
20024a7e:	f043 0308 	orrmi.w	r3, r3, #8
20024a82:	06a9      	lsls	r1, r5, #26
20024a84:	bf48      	it	mi
20024a86:	f043 0310 	orrmi.w	r3, r3, #16
20024a8a:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20024a8e:	ea49 0303 	orr.w	r3, r9, r3
20024a92:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20024a96:	2000      	movs	r0, #0
20024a98:	e7bb      	b.n	20024a12 <HAL_PIN_Set+0xe>
20024a9a:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20024a9e:	b29b      	uxth	r3, r3
20024aa0:	2b07      	cmp	r3, #7
20024aa2:	d826      	bhi.n	20024af2 <HAL_PIN_Set+0xee>
20024aa4:	104a      	asrs	r2, r1, #1
20024aa6:	3a9c      	subs	r2, #156	@ 0x9c
20024aa8:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20024aac:	b289      	uxth	r1, r1
20024aae:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20024ab2:	d019      	beq.n	20024ae8 <HAL_PIN_Set+0xe4>
20024ab4:	f240 1339 	movw	r3, #313	@ 0x139
20024ab8:	4299      	cmp	r1, r3
20024aba:	f040 80bf 	bne.w	20024c3c <HAL_PIN_Set+0x238>
20024abe:	f04f 0e08 	mov.w	lr, #8
20024ac2:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20024ac6:	4969      	ldr	r1, [pc, #420]	@ (20024c6c <HAL_PIN_Set+0x268>)
20024ac8:	f1a4 030e 	sub.w	r3, r4, #14
20024acc:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024ad0:	fa03 f30e 	lsl.w	r3, r3, lr
20024ad4:	4043      	eors	r3, r0
20024ad6:	ea03 030c 	and.w	r3, r3, ip
20024ada:	4043      	eors	r3, r0
20024adc:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024ae0:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20024ae4:	b289      	uxth	r1, r1
20024ae6:	e7ad      	b.n	20024a44 <HAL_PIN_Set+0x40>
20024ae8:	f04f 0e00 	mov.w	lr, #0
20024aec:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20024af0:	e7e9      	b.n	20024ac6 <HAL_PIN_Set+0xc2>
20024af2:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20024af6:	b29a      	uxth	r2, r3
20024af8:	2a09      	cmp	r2, #9
20024afa:	d836      	bhi.n	20024b6a <HAL_PIN_Set+0x166>
20024afc:	2205      	movs	r2, #5
20024afe:	fbb3 f3f2 	udiv	r3, r3, r2
20024b02:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20024b06:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20024b0a:	440a      	add	r2, r1
20024b0c:	b292      	uxth	r2, r2
20024b0e:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20024b12:	b288      	uxth	r0, r1
20024b14:	2803      	cmp	r0, #3
20024b16:	d814      	bhi.n	20024b42 <HAL_PIN_Set+0x13e>
20024b18:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20024b1c:	4854      	ldr	r0, [pc, #336]	@ (20024c70 <HAL_PIN_Set+0x26c>)
20024b1e:	00c9      	lsls	r1, r1, #3
20024b20:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20024b24:	f1a4 020e 	sub.w	r2, r4, #14
20024b28:	408a      	lsls	r2, r1
20024b2a:	ea82 020c 	eor.w	r2, r2, ip
20024b2e:	fa0e f101 	lsl.w	r1, lr, r1
20024b32:	400a      	ands	r2, r1
20024b34:	ea82 020c 	eor.w	r2, r2, ip
20024b38:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20024b3c:	f204 2155 	addw	r1, r4, #597	@ 0x255
20024b40:	e7d0      	b.n	20024ae4 <HAL_PIN_Set+0xe0>
20024b42:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20024b46:	d179      	bne.n	20024c3c <HAL_PIN_Set+0x238>
20024b48:	213f      	movs	r1, #63	@ 0x3f
20024b4a:	484a      	ldr	r0, [pc, #296]	@ (20024c74 <HAL_PIN_Set+0x270>)
20024b4c:	00da      	lsls	r2, r3, #3
20024b4e:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20024b52:	f1a4 030e 	sub.w	r3, r4, #14
20024b56:	4093      	lsls	r3, r2
20024b58:	ea83 030c 	eor.w	r3, r3, ip
20024b5c:	fa01 f202 	lsl.w	r2, r1, r2
20024b60:	4013      	ands	r3, r2
20024b62:	ea83 030c 	eor.w	r3, r3, ip
20024b66:	66c3      	str	r3, [r0, #108]	@ 0x6c
20024b68:	e7e8      	b.n	20024b3c <HAL_PIN_Set+0x138>
20024b6a:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20024b6e:	eb01 0209 	add.w	r2, r1, r9
20024b72:	b293      	uxth	r3, r2
20024b74:	2b05      	cmp	r3, #5
20024b76:	d827      	bhi.n	20024bc8 <HAL_PIN_Set+0x1c4>
20024b78:	2303      	movs	r3, #3
20024b7a:	fbb2 f2f3 	udiv	r2, r2, r3
20024b7e:	f46f 7e01 	mvn.w	lr, #516	@ 0x204
20024b82:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20024b86:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20024b8a:	440b      	add	r3, r1
20024b8c:	b29b      	uxth	r3, r3
20024b8e:	eb03 0c0e 	add.w	ip, r3, lr
20024b92:	fa1f fc8c 	uxth.w	ip, ip
20024b96:	f1bc 0f02 	cmp.w	ip, #2
20024b9a:	d84f      	bhi.n	20024c3c <HAL_PIN_Set+0x238>
20024b9c:	00db      	lsls	r3, r3, #3
20024b9e:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20024ba2:	4935      	ldr	r1, [pc, #212]	@ (20024c78 <HAL_PIN_Set+0x274>)
20024ba4:	f1a4 0e0e 	sub.w	lr, r4, #14
20024ba8:	3b08      	subs	r3, #8
20024baa:	fa0e f303 	lsl.w	r3, lr, r3
20024bae:	f8df e0d8 	ldr.w	lr, [pc, #216]	@ 20024c88 <HAL_PIN_Set+0x284>
20024bb2:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024bb6:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20024bba:	4043      	eors	r3, r0
20024bbc:	ea03 030c 	and.w	r3, r3, ip
20024bc0:	4043      	eors	r3, r0
20024bc2:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024bc6:	e7b9      	b.n	20024b3c <HAL_PIN_Set+0x138>
20024bc8:	f46f 7cf8 	mvn.w	ip, #496	@ 0x1f0
20024bcc:	eb01 030c 	add.w	r3, r1, ip
20024bd0:	b29a      	uxth	r2, r3
20024bd2:	2a09      	cmp	r2, #9
20024bd4:	f63f af36 	bhi.w	20024a44 <HAL_PIN_Set+0x40>
20024bd8:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20024bdc:	d216      	bcs.n	20024c0c <HAL_PIN_Set+0x208>
20024bde:	0859      	lsrs	r1, r3, #1
20024be0:	f013 0f01 	tst.w	r3, #1
20024be4:	4b25      	ldr	r3, [pc, #148]	@ (20024c7c <HAL_PIN_Set+0x278>)
20024be6:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20024bea:	4a25      	ldr	r2, [pc, #148]	@ (20024c80 <HAL_PIN_Set+0x27c>)
20024bec:	bf18      	it	ne
20024bee:	461a      	movne	r2, r3
20024bf0:	00c9      	lsls	r1, r1, #3
20024bf2:	4088      	lsls	r0, r1
20024bf4:	f8d2 c000 	ldr.w	ip, [r2]
20024bf8:	f1a4 030e 	sub.w	r3, r4, #14
20024bfc:	408b      	lsls	r3, r1
20024bfe:	ea83 030c 	eor.w	r3, r3, ip
20024c02:	4003      	ands	r3, r0
20024c04:	ea83 030c 	eor.w	r3, r3, ip
20024c08:	6013      	str	r3, [r2, #0]
20024c0a:	e797      	b.n	20024b3c <HAL_PIN_Set+0x138>
20024c0c:	d007      	beq.n	20024c1e <HAL_PIN_Set+0x21a>
20024c0e:	f240 13f9 	movw	r3, #505	@ 0x1f9
20024c12:	4299      	cmp	r1, r3
20024c14:	d107      	bne.n	20024c26 <HAL_PIN_Set+0x222>
20024c16:	2100      	movs	r1, #0
20024c18:	203f      	movs	r0, #63	@ 0x3f
20024c1a:	4a1a      	ldr	r2, [pc, #104]	@ (20024c84 <HAL_PIN_Set+0x280>)
20024c1c:	e7ea      	b.n	20024bf4 <HAL_PIN_Set+0x1f0>
20024c1e:	2110      	movs	r1, #16
20024c20:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20024c24:	e7f9      	b.n	20024c1a <HAL_PIN_Set+0x216>
20024c26:	2108      	movs	r1, #8
20024c28:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20024c2c:	e7f5      	b.n	20024c1a <HAL_PIN_Set+0x216>
20024c2e:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20024c32:	b29b      	uxth	r3, r3
20024c34:	2b07      	cmp	r3, #7
20024c36:	f63f af05 	bhi.w	20024a44 <HAL_PIN_Set+0x40>
20024c3a:	e6ff      	b.n	20024a3c <HAL_PIN_Set+0x38>
20024c3c:	2100      	movs	r1, #0
20024c3e:	e701      	b.n	20024a44 <HAL_PIN_Set+0x40>
20024c40:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20024c44:	3e01      	subs	r6, #1
20024c46:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
20024c4a:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20024c4e:	f009 090f 	and.w	r9, r9, #15
20024c52:	ea45 0509 	orr.w	r5, r5, r9
20024c56:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
20024c5a:	431d      	orrs	r5, r3
20024c5c:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20024c60:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20024c64:	e717      	b.n	20024a96 <HAL_PIN_Set+0x92>
20024c66:	bf00      	nop
20024c68:	500caf58 	.word	0x500caf58
20024c6c:	5000b048 	.word	0x5000b048
20024c70:	5000b064 	.word	0x5000b064
20024c74:	5000b000 	.word	0x5000b000
20024c78:	5000b070 	.word	0x5000b070
20024c7c:	5000b07c 	.word	0x5000b07c
20024c80:	5000b078 	.word	0x5000b078
20024c84:	5000b080 	.word	0x5000b080
20024c88:	2002b6cc 	.word	0x2002b6cc

20024c8c <HAL_PIN_Set_Analog>:
20024c8c:	283a      	cmp	r0, #58	@ 0x3a
20024c8e:	b538      	push	{r3, r4, r5, lr}
20024c90:	4604      	mov	r4, r0
20024c92:	dd25      	ble.n	20024ce0 <HAL_PIN_Set_Analog+0x54>
20024c94:	2840      	cmp	r0, #64	@ 0x40
20024c96:	dc16      	bgt.n	20024cc6 <HAL_PIN_Set_Analog+0x3a>
20024c98:	2500      	movs	r5, #0
20024c9a:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20024c9e:	4628      	mov	r0, r5
20024ca0:	f7ff fe84 	bl	200249ac <HAL_PIN_Get_Base>
20024ca4:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
20024ca8:	3b01      	subs	r3, #1
20024caa:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20024cae:	462a      	mov	r2, r5
20024cb0:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20024cb4:	f041 010f 	orr.w	r1, r1, #15
20024cb8:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
20024cbc:	2100      	movs	r1, #0
20024cbe:	4620      	mov	r0, r4
20024cc0:	f7ff fe3a 	bl	20024938 <HAL_PIN_SetAonPE>
20024cc4:	e00a      	b.n	20024cdc <HAL_PIN_Set_Analog+0x50>
20024cc6:	4a08      	ldr	r2, [pc, #32]	@ (20024ce8 <HAL_PIN_Set_Analog+0x5c>)
20024cc8:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
20024ccc:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024cd0:	f023 030e 	bic.w	r3, r3, #14
20024cd4:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024cd8:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
20024cdc:	2000      	movs	r0, #0
20024cde:	bd38      	pop	{r3, r4, r5, pc}
20024ce0:	4601      	mov	r1, r0
20024ce2:	2501      	movs	r5, #1
20024ce4:	e7db      	b.n	20024c9e <HAL_PIN_Set_Analog+0x12>
20024ce6:	bf00      	nop
20024ce8:	500caf58 	.word	0x500caf58

20024cec <HAL_PMU_EnableDLL>:
20024cec:	4b05      	ldr	r3, [pc, #20]	@ (20024d04 <HAL_PMU_EnableDLL+0x18>)
20024cee:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
20024cf0:	b120      	cbz	r0, 20024cfc <HAL_PMU_EnableDLL+0x10>
20024cf2:	f042 0220 	orr.w	r2, r2, #32
20024cf6:	2000      	movs	r0, #0
20024cf8:	669a      	str	r2, [r3, #104]	@ 0x68
20024cfa:	4770      	bx	lr
20024cfc:	f022 0220 	bic.w	r2, r2, #32
20024d00:	e7f9      	b.n	20024cf6 <HAL_PMU_EnableDLL+0xa>
20024d02:	bf00      	nop
20024d04:	500ca000 	.word	0x500ca000

20024d08 <HAL_RCC_HCPU_ConfigSxModeVolt>:
20024d08:	b507      	push	{r0, r1, r2, lr}
20024d0a:	4a13      	ldr	r2, [pc, #76]	@ (20024d58 <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20024d0c:	4913      	ldr	r1, [pc, #76]	@ (20024d5c <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024d0e:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20024d12:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20024d16:	7892      	ldrb	r2, [r2, #2]
20024d18:	2802      	cmp	r0, #2
20024d1a:	f362 0303 	bfi	r3, r2, #0, #4
20024d1e:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20024d22:	f10d 0007 	add.w	r0, sp, #7
20024d26:	d111      	bne.n	20024d4c <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20024d28:	f007 fa6e 	bl	2002c208 <HAL_PMU_GetHpsysVoutRef>
20024d2c:	b110      	cbz	r0, 20024d34 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024d2e:	230b      	movs	r3, #11
20024d30:	f88d 3007 	strb.w	r3, [sp, #7]
20024d34:	4a09      	ldr	r2, [pc, #36]	@ (20024d5c <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024d36:	f89d 1007 	ldrb.w	r1, [sp, #7]
20024d3a:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024d3e:	f361 0303 	bfi	r3, r1, #0, #4
20024d42:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20024d46:	b003      	add	sp, #12
20024d48:	f85d fb04 	ldr.w	pc, [sp], #4
20024d4c:	f007 fa68 	bl	2002c220 <HAL_PMU_GetHpsysVoutRef2>
20024d50:	2800      	cmp	r0, #0
20024d52:	d0ef      	beq.n	20024d34 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024d54:	230d      	movs	r3, #13
20024d56:	e7eb      	b.n	20024d30 <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20024d58:	2002b6e8 	.word	0x2002b6e8
20024d5c:	500ca000 	.word	0x500ca000

20024d60 <HAL_RCC_HCPU_GetClockSrc>:
20024d60:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024d64:	280d      	cmp	r0, #13
20024d66:	6a1a      	ldr	r2, [r3, #32]
20024d68:	d80d      	bhi.n	20024d86 <HAL_RCC_HCPU_GetClockSrc+0x26>
20024d6a:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
20024d6e:	40c3      	lsrs	r3, r0
20024d70:	f013 0f01 	tst.w	r3, #1
20024d74:	bf0c      	ite	eq
20024d76:	2301      	moveq	r3, #1
20024d78:	2303      	movne	r3, #3
20024d7a:	4083      	lsls	r3, r0
20024d7c:	4013      	ands	r3, r2
20024d7e:	fa23 f000 	lsr.w	r0, r3, r0
20024d82:	b2c0      	uxtb	r0, r0
20024d84:	4770      	bx	lr
20024d86:	2301      	movs	r3, #1
20024d88:	e7f7      	b.n	20024d7a <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

20024d8c <HAL_RCC_HCPU_GetDLLFreq>:
20024d8c:	2801      	cmp	r0, #1
20024d8e:	d003      	beq.n	20024d98 <HAL_RCC_HCPU_GetDLLFreq+0xc>
20024d90:	2802      	cmp	r0, #2
20024d92:	d00e      	beq.n	20024db2 <HAL_RCC_HCPU_GetDLLFreq+0x26>
20024d94:	2000      	movs	r0, #0
20024d96:	4770      	bx	lr
20024d98:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024d9c:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
20024d9e:	b163      	cbz	r3, 20024dba <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20024da0:	f013 0001 	ands.w	r0, r3, #1
20024da4:	d00a      	beq.n	20024dbc <HAL_RCC_HCPU_GetDLLFreq+0x30>
20024da6:	4806      	ldr	r0, [pc, #24]	@ (20024dc0 <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20024da8:	f3c3 0383 	ubfx	r3, r3, #2, #4
20024dac:	fb03 0000 	mla	r0, r3, r0, r0
20024db0:	4770      	bx	lr
20024db2:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024db6:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20024db8:	e7f1      	b.n	20024d9e <HAL_RCC_HCPU_GetDLLFreq+0x12>
20024dba:	4618      	mov	r0, r3
20024dbc:	4770      	bx	lr
20024dbe:	bf00      	nop
20024dc0:	016e3600 	.word	0x016e3600

20024dc4 <HAL_RCC_HCPU_GetDLL1Freq>:
20024dc4:	2001      	movs	r0, #1
20024dc6:	f7ff bfe1 	b.w	20024d8c <HAL_RCC_HCPU_GetDLLFreq>

20024dca <HAL_RCC_HCPU_GetDLL2Freq>:
20024dca:	2002      	movs	r0, #2
20024dcc:	f7ff bfde 	b.w	20024d8c <HAL_RCC_HCPU_GetDLLFreq>

20024dd0 <HAL_RCC_HCPU_GetDLL3Freq>:
20024dd0:	2000      	movs	r0, #0
20024dd2:	4770      	bx	lr

20024dd4 <HAL_RCC_HCPU_EnableDLL>:
20024dd4:	4b23      	ldr	r3, [pc, #140]	@ (20024e64 <HAL_RCC_HCPU_EnableDLL+0x90>)
20024dd6:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
20024dda:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
20024dde:	4299      	cmp	r1, r3
20024de0:	b510      	push	{r4, lr}
20024de2:	d83c      	bhi.n	20024e5e <HAL_RCC_HCPU_EnableDLL+0x8a>
20024de4:	2801      	cmp	r0, #1
20024de6:	d002      	beq.n	20024dee <HAL_RCC_HCPU_EnableDLL+0x1a>
20024de8:	2802      	cmp	r0, #2
20024dea:	d036      	beq.n	20024e5a <HAL_RCC_HCPU_EnableDLL+0x86>
20024dec:	e7fe      	b.n	20024dec <HAL_RCC_HCPU_EnableDLL+0x18>
20024dee:	4c1e      	ldr	r4, [pc, #120]	@ (20024e68 <HAL_RCC_HCPU_EnableDLL+0x94>)
20024df0:	4b1e      	ldr	r3, [pc, #120]	@ (20024e6c <HAL_RCC_HCPU_EnableDLL+0x98>)
20024df2:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024df6:	0790      	lsls	r0, r2, #30
20024df8:	bf58      	it	pl
20024dfa:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024dfe:	f04f 0000 	mov.w	r0, #0
20024e02:	bf5c      	itt	pl
20024e04:	f042 0202 	orrpl.w	r2, r2, #2
20024e08:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024e0c:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024e10:	07d2      	lsls	r2, r2, #31
20024e12:	bf5e      	ittt	pl
20024e14:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024e18:	f042 0201 	orrpl.w	r2, r2, #1
20024e1c:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024e20:	4a13      	ldr	r2, [pc, #76]	@ (20024e70 <HAL_RCC_HCPU_EnableDLL+0x9c>)
20024e22:	6823      	ldr	r3, [r4, #0]
20024e24:	fbb1 f1f2 	udiv	r1, r1, r2
20024e28:	f023 0301 	bic.w	r3, r3, #1
20024e2c:	6023      	str	r3, [r4, #0]
20024e2e:	6823      	ldr	r3, [r4, #0]
20024e30:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
20024e34:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
20024e38:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
20024e3c:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
20024e40:	f043 0301 	orr.w	r3, r3, #1
20024e44:	6023      	str	r3, [r4, #0]
20024e46:	f7fd f830 	bl	20021eaa <HAL_Delay_us>
20024e4a:	200a      	movs	r0, #10
20024e4c:	f7fd f82d 	bl	20021eaa <HAL_Delay_us>
20024e50:	6823      	ldr	r3, [r4, #0]
20024e52:	2b00      	cmp	r3, #0
20024e54:	dafc      	bge.n	20024e50 <HAL_RCC_HCPU_EnableDLL+0x7c>
20024e56:	2000      	movs	r0, #0
20024e58:	bd10      	pop	{r4, pc}
20024e5a:	4c06      	ldr	r4, [pc, #24]	@ (20024e74 <HAL_RCC_HCPU_EnableDLL+0xa0>)
20024e5c:	e7c8      	b.n	20024df0 <HAL_RCC_HCPU_EnableDLL+0x1c>
20024e5e:	2001      	movs	r0, #1
20024e60:	e7fa      	b.n	20024e58 <HAL_RCC_HCPU_EnableDLL+0x84>
20024e62:	bf00      	nop
20024e64:	15752a00 	.word	0x15752a00
20024e68:	5000002c 	.word	0x5000002c
20024e6c:	5000b000 	.word	0x5000b000
20024e70:	016e3600 	.word	0x016e3600
20024e74:	50000030 	.word	0x50000030

20024e78 <HAL_RCC_HCPU_EnableDLL1>:
20024e78:	4601      	mov	r1, r0
20024e7a:	2001      	movs	r0, #1
20024e7c:	f7ff bfaa 	b.w	20024dd4 <HAL_RCC_HCPU_EnableDLL>

20024e80 <HAL_RCC_HCPU_EnableDLL2>:
20024e80:	4601      	mov	r1, r0
20024e82:	2002      	movs	r0, #2
20024e84:	f7ff bfa6 	b.w	20024dd4 <HAL_RCC_HCPU_EnableDLL>

20024e88 <HAL_RCC_HCPU_DisableDLL1>:
20024e88:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024e8c:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20024e8e:	2000      	movs	r0, #0
20024e90:	f023 0301 	bic.w	r3, r3, #1
20024e94:	62d3      	str	r3, [r2, #44]	@ 0x2c
20024e96:	4770      	bx	lr

20024e98 <HAL_RCC_GetSysCLKFreq>:
20024e98:	2801      	cmp	r0, #1
20024e9a:	d108      	bne.n	20024eae <HAL_RCC_GetSysCLKFreq+0x16>
20024e9c:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024ea0:	6a1b      	ldr	r3, [r3, #32]
20024ea2:	f003 0303 	and.w	r3, r3, #3
20024ea6:	2b03      	cmp	r3, #3
20024ea8:	d101      	bne.n	20024eae <HAL_RCC_GetSysCLKFreq+0x16>
20024eaa:	f7ff bf8b 	b.w	20024dc4 <HAL_RCC_HCPU_GetDLL1Freq>
20024eae:	4801      	ldr	r0, [pc, #4]	@ (20024eb4 <HAL_RCC_GetSysCLKFreq+0x1c>)
20024eb0:	4770      	bx	lr
20024eb2:	bf00      	nop
20024eb4:	02dc6c00 	.word	0x02dc6c00

20024eb8 <HAL_RCC_GetHCLKFreq>:
20024eb8:	1e02      	subs	r2, r0, #0
20024eba:	bf08      	it	eq
20024ebc:	2201      	moveq	r2, #1
20024ebe:	b508      	push	{r3, lr}
20024ec0:	4610      	mov	r0, r2
20024ec2:	f7ff ffe9 	bl	20024e98 <HAL_RCC_GetSysCLKFreq>
20024ec6:	2a01      	cmp	r2, #1
20024ec8:	d002      	beq.n	20024ed0 <HAL_RCC_GetHCLKFreq+0x18>
20024eca:	2a02      	cmp	r2, #2
20024ecc:	d00a      	beq.n	20024ee4 <HAL_RCC_GetHCLKFreq+0x2c>
20024ece:	e7fe      	b.n	20024ece <HAL_RCC_GetHCLKFreq+0x16>
20024ed0:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024ed4:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
20024ed6:	b2db      	uxtb	r3, r3
20024ed8:	2b01      	cmp	r3, #1
20024eda:	bfb8      	it	lt
20024edc:	2301      	movlt	r3, #1
20024ede:	fbb0 f0f3 	udiv	r0, r0, r3
20024ee2:	bd08      	pop	{r3, pc}
20024ee4:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20024ee8:	695b      	ldr	r3, [r3, #20]
20024eea:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
20024eee:	e7f3      	b.n	20024ed8 <HAL_RCC_GetHCLKFreq+0x20>

20024ef0 <HAL_RCC_HCPU_ClockSelect>:
20024ef0:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024ef4:	b510      	push	{r4, lr}
20024ef6:	280d      	cmp	r0, #13
20024ef8:	6a1b      	ldr	r3, [r3, #32]
20024efa:	d818      	bhi.n	20024f2e <HAL_RCC_HCPU_ClockSelect+0x3e>
20024efc:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
20024f00:	40c2      	lsrs	r2, r0
20024f02:	f012 0f01 	tst.w	r2, #1
20024f06:	bf0c      	ite	eq
20024f08:	2201      	moveq	r2, #1
20024f0a:	2203      	movne	r2, #3
20024f0c:	fa02 f400 	lsl.w	r4, r2, r0
20024f10:	4011      	ands	r1, r2
20024f12:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024f16:	ea23 0304 	bic.w	r3, r3, r4
20024f1a:	4081      	lsls	r1, r0
20024f1c:	430b      	orrs	r3, r1
20024f1e:	6213      	str	r3, [r2, #32]
20024f20:	b920      	cbnz	r0, 20024f2c <HAL_RCC_HCPU_ClockSelect+0x3c>
20024f22:	2001      	movs	r0, #1
20024f24:	f7ff ffc8 	bl	20024eb8 <HAL_RCC_GetHCLKFreq>
20024f28:	4b02      	ldr	r3, [pc, #8]	@ (20024f34 <HAL_RCC_HCPU_ClockSelect+0x44>)
20024f2a:	6018      	str	r0, [r3, #0]
20024f2c:	bd10      	pop	{r4, pc}
20024f2e:	2201      	movs	r2, #1
20024f30:	e7ec      	b.n	20024f0c <HAL_RCC_HCPU_ClockSelect+0x1c>
20024f32:	bf00      	nop
20024f34:	20042c10 	.word	0x20042c10

20024f38 <HAL_RCC_HCPU_SetDiv>:
20024f38:	2800      	cmp	r0, #0
20024f3a:	bfd8      	it	le
20024f3c:	2000      	movle	r0, #0
20024f3e:	b508      	push	{r3, lr}
20024f40:	bfcc      	ite	gt
20024f42:	23ff      	movgt	r3, #255	@ 0xff
20024f44:	4603      	movle	r3, r0
20024f46:	2900      	cmp	r1, #0
20024f48:	db12      	blt.n	20024f70 <HAL_RCC_HCPU_SetDiv+0x38>
20024f4a:	2a00      	cmp	r2, #0
20024f4c:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
20024f50:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
20024f54:	da0e      	bge.n	20024f74 <HAL_RCC_HCPU_SetDiv+0x3c>
20024f56:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
20024f5a:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
20024f5c:	ea22 0303 	bic.w	r3, r2, r3
20024f60:	4303      	orrs	r3, r0
20024f62:	624b      	str	r3, [r1, #36]	@ 0x24
20024f64:	2001      	movs	r0, #1
20024f66:	f7ff ffa7 	bl	20024eb8 <HAL_RCC_GetHCLKFreq>
20024f6a:	4b07      	ldr	r3, [pc, #28]	@ (20024f88 <HAL_RCC_HCPU_SetDiv+0x50>)
20024f6c:	6018      	str	r0, [r3, #0]
20024f6e:	bd08      	pop	{r3, pc}
20024f70:	2a00      	cmp	r2, #0
20024f72:	db04      	blt.n	20024f7e <HAL_RCC_HCPU_SetDiv+0x46>
20024f74:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024f78:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
20024f7c:	e7eb      	b.n	20024f56 <HAL_RCC_HCPU_SetDiv+0x1e>
20024f7e:	2b00      	cmp	r3, #0
20024f80:	d0f0      	beq.n	20024f64 <HAL_RCC_HCPU_SetDiv+0x2c>
20024f82:	23ff      	movs	r3, #255	@ 0xff
20024f84:	e7e7      	b.n	20024f56 <HAL_RCC_HCPU_SetDiv+0x1e>
20024f86:	bf00      	nop
20024f88:	20042c10 	.word	0x20042c10

20024f8c <HAL_RCC_HCPU_SwitchDvfsD2S>:
20024f8c:	b570      	push	{r4, r5, r6, lr}
20024f8e:	460c      	mov	r4, r1
20024f90:	4d19      	ldr	r5, [pc, #100]	@ (20024ff8 <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
20024f92:	4606      	mov	r6, r0
20024f94:	f7ff feb8 	bl	20024d08 <HAL_RCC_HCPU_ConfigSxModeVolt>
20024f98:	692b      	ldr	r3, [r5, #16]
20024f9a:	20fa      	movs	r0, #250	@ 0xfa
20024f9c:	f023 0304 	bic.w	r3, r3, #4
20024fa0:	612b      	str	r3, [r5, #16]
20024fa2:	f7fc ff82 	bl	20021eaa <HAL_Delay_us>
20024fa6:	2c30      	cmp	r4, #48	@ 0x30
20024fa8:	d80d      	bhi.n	20024fc6 <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
20024faa:	2100      	movs	r1, #0
20024fac:	4608      	mov	r0, r1
20024fae:	f7ff ff9f 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
20024fb2:	2030      	movs	r0, #48	@ 0x30
20024fb4:	2204      	movs	r2, #4
20024fb6:	2100      	movs	r1, #0
20024fb8:	fbb0 f0f4 	udiv	r0, r0, r4
20024fbc:	f7ff ffbc 	bl	20024f38 <HAL_RCC_HCPU_SetDiv>
20024fc0:	2400      	movs	r4, #0
20024fc2:	4620      	mov	r0, r4
20024fc4:	bd70      	pop	{r4, r5, r6, pc}
20024fc6:	f7fd fd09 	bl	200229dc <HAL_HPAON_EnableXT48>
20024fca:	480c      	ldr	r0, [pc, #48]	@ (20024ffc <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
20024fcc:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
20024fd0:	6843      	ldr	r3, [r0, #4]
20024fd2:	480b      	ldr	r0, [pc, #44]	@ (20025000 <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
20024fd4:	61eb      	str	r3, [r5, #28]
20024fd6:	4360      	muls	r0, r4
20024fd8:	f7ff ff4e 	bl	20024e78 <HAL_RCC_HCPU_EnableDLL1>
20024fdc:	4604      	mov	r4, r0
20024fde:	2800      	cmp	r0, #0
20024fe0:	d1ef      	bne.n	20024fc2 <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
20024fe2:	2101      	movs	r1, #1
20024fe4:	2206      	movs	r2, #6
20024fe6:	4608      	mov	r0, r1
20024fe8:	f7ff ffa6 	bl	20024f38 <HAL_RCC_HCPU_SetDiv>
20024fec:	2103      	movs	r1, #3
20024fee:	4620      	mov	r0, r4
20024ff0:	f7ff ff7e 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
20024ff4:	e7e4      	b.n	20024fc0 <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
20024ff6:	bf00      	nop
20024ff8:	5000b000 	.word	0x5000b000
20024ffc:	2002b6e8 	.word	0x2002b6e8
20025000:	000f4240 	.word	0x000f4240

20025004 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
20025004:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20025008:	4c1d      	ldr	r4, [pc, #116]	@ (20025080 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
2002500a:	4f1e      	ldr	r7, [pc, #120]	@ (20025084 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
2002500c:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
20025010:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
20025012:	7892      	ldrb	r2, [r2, #2]
20025014:	4605      	mov	r5, r0
20025016:	f362 5317 	bfi	r3, r2, #20, #4
2002501a:	ea4f 08c0 	mov.w	r8, r0, lsl #3
2002501e:	633b      	str	r3, [r7, #48]	@ 0x30
20025020:	f10d 0007 	add.w	r0, sp, #7
20025024:	460e      	mov	r6, r1
20025026:	f007 f8ef 	bl	2002c208 <HAL_PMU_GetHpsysVoutRef>
2002502a:	b110      	cbz	r0, 20025032 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
2002502c:	230b      	movs	r3, #11
2002502e:	f88d 3007 	strb.w	r3, [sp, #7]
20025032:	f89d 1007 	ldrb.w	r1, [sp, #7]
20025036:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
2002503a:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
2002503c:	440a      	add	r2, r1
2002503e:	2100      	movs	r1, #0
20025040:	f362 0385 	bfi	r3, r2, #2, #4
20025044:	4608      	mov	r0, r1
20025046:	64fb      	str	r3, [r7, #76]	@ 0x4c
20025048:	f7ff ff52 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
2002504c:	2e30      	cmp	r6, #48	@ 0x30
2002504e:	d900      	bls.n	20025052 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
20025050:	e7fe      	b.n	20025050 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
20025052:	2030      	movs	r0, #48	@ 0x30
20025054:	2204      	movs	r2, #4
20025056:	2100      	movs	r1, #0
20025058:	fbb0 f0f6 	udiv	r0, r0, r6
2002505c:	f7ff ff6c 	bl	20024f38 <HAL_RCC_HCPU_SetDiv>
20025060:	f7ff ff12 	bl	20024e88 <HAL_RCC_HCPU_DisableDLL1>
20025064:	f7fd fcc6 	bl	200229f4 <HAL_HPAON_DisableXT48>
20025068:	4444      	add	r4, r8
2002506a:	4b07      	ldr	r3, [pc, #28]	@ (20025088 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
2002506c:	6862      	ldr	r2, [r4, #4]
2002506e:	61da      	str	r2, [r3, #28]
20025070:	691a      	ldr	r2, [r3, #16]
20025072:	f042 0204 	orr.w	r2, r2, #4
20025076:	611a      	str	r2, [r3, #16]
20025078:	b002      	add	sp, #8
2002507a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
2002507e:	bf00      	nop
20025080:	2002b6e8 	.word	0x2002b6e8
20025084:	500ca000 	.word	0x500ca000
20025088:	5000b000 	.word	0x5000b000

2002508c <HAL_RCC_HCPU_ConfigDvfs>:
2002508c:	b570      	push	{r4, r5, r6, lr}
2002508e:	4e31      	ldr	r6, [pc, #196]	@ (20025154 <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
20025090:	4605      	mov	r5, r0
20025092:	7833      	ldrb	r3, [r6, #0]
20025094:	460c      	mov	r4, r1
20025096:	2b01      	cmp	r3, #1
20025098:	d943      	bls.n	20025122 <HAL_RCC_HCPU_ConfigDvfs+0x96>
2002509a:	3b02      	subs	r3, #2
2002509c:	2b01      	cmp	r3, #1
2002509e:	d902      	bls.n	200250a6 <HAL_RCC_HCPU_ConfigDvfs+0x1a>
200250a0:	2501      	movs	r5, #1
200250a2:	4628      	mov	r0, r5
200250a4:	bd70      	pop	{r4, r5, r6, pc}
200250a6:	4b2c      	ldr	r3, [pc, #176]	@ (20025158 <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
200250a8:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
200250ac:	f7ff fe8d 	bl	20024dca <HAL_RCC_HCPU_GetDLL2Freq>
200250b0:	4290      	cmp	r0, r2
200250b2:	d8f5      	bhi.n	200250a0 <HAL_RCC_HCPU_ConfigDvfs+0x14>
200250b4:	2901      	cmp	r1, #1
200250b6:	d805      	bhi.n	200250c4 <HAL_RCC_HCPU_ConfigDvfs+0x38>
200250b8:	4629      	mov	r1, r5
200250ba:	4620      	mov	r0, r4
200250bc:	f7ff ffa2 	bl	20025004 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
200250c0:	2500      	movs	r5, #0
200250c2:	e035      	b.n	20025130 <HAL_RCC_HCPU_ConfigDvfs+0xa4>
200250c4:	2100      	movs	r1, #0
200250c6:	4608      	mov	r0, r1
200250c8:	f7ff ff12 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
200250cc:	4620      	mov	r0, r4
200250ce:	f7ff fe1b 	bl	20024d08 <HAL_RCC_HCPU_ConfigSxModeVolt>
200250d2:	20fa      	movs	r0, #250	@ 0xfa
200250d4:	f7fc fee9 	bl	20021eaa <HAL_Delay_us>
200250d8:	f7ff fed6 	bl	20024e88 <HAL_RCC_HCPU_DisableDLL1>
200250dc:	2d30      	cmp	r5, #48	@ 0x30
200250de:	d80d      	bhi.n	200250fc <HAL_RCC_HCPU_ConfigDvfs+0x70>
200250e0:	f7fd fc88 	bl	200229f4 <HAL_HPAON_DisableXT48>
200250e4:	2100      	movs	r1, #0
200250e6:	4608      	mov	r0, r1
200250e8:	f7ff ff02 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
200250ec:	2204      	movs	r2, #4
200250ee:	2100      	movs	r1, #0
200250f0:	2030      	movs	r0, #48	@ 0x30
200250f2:	fbb0 f0f5 	udiv	r0, r0, r5
200250f6:	f7ff ff1f 	bl	20024f38 <HAL_RCC_HCPU_SetDiv>
200250fa:	e7e1      	b.n	200250c0 <HAL_RCC_HCPU_ConfigDvfs+0x34>
200250fc:	f7fd fc6e 	bl	200229dc <HAL_HPAON_EnableXT48>
20025100:	4816      	ldr	r0, [pc, #88]	@ (2002515c <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
20025102:	4368      	muls	r0, r5
20025104:	f7ff feb8 	bl	20024e78 <HAL_RCC_HCPU_EnableDLL1>
20025108:	4605      	mov	r5, r0
2002510a:	2800      	cmp	r0, #0
2002510c:	d1c8      	bne.n	200250a0 <HAL_RCC_HCPU_ConfigDvfs+0x14>
2002510e:	2101      	movs	r1, #1
20025110:	2206      	movs	r2, #6
20025112:	4608      	mov	r0, r1
20025114:	f7ff ff10 	bl	20024f38 <HAL_RCC_HCPU_SetDiv>
20025118:	2103      	movs	r1, #3
2002511a:	4628      	mov	r0, r5
2002511c:	f7ff fee8 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
20025120:	e7ce      	b.n	200250c0 <HAL_RCC_HCPU_ConfigDvfs+0x34>
20025122:	2901      	cmp	r1, #1
20025124:	d909      	bls.n	2002513a <HAL_RCC_HCPU_ConfigDvfs+0xae>
20025126:	4601      	mov	r1, r0
20025128:	4620      	mov	r0, r4
2002512a:	f7ff ff2f 	bl	20024f8c <HAL_RCC_HCPU_SwitchDvfsD2S>
2002512e:	4605      	mov	r5, r0
20025130:	2000      	movs	r0, #0
20025132:	7034      	strb	r4, [r6, #0]
20025134:	f7fc feb9 	bl	20021eaa <HAL_Delay_us>
20025138:	e7b3      	b.n	200250a2 <HAL_RCC_HCPU_ConfigDvfs+0x16>
2002513a:	428b      	cmp	r3, r1
2002513c:	d103      	bne.n	20025146 <HAL_RCC_HCPU_ConfigDvfs+0xba>
2002513e:	f04f 32ff 	mov.w	r2, #4294967295
20025142:	4611      	mov	r1, r2
20025144:	e7d4      	b.n	200250f0 <HAL_RCC_HCPU_ConfigDvfs+0x64>
20025146:	2190      	movs	r1, #144	@ 0x90
20025148:	2002      	movs	r0, #2
2002514a:	f7ff ff1f 	bl	20024f8c <HAL_RCC_HCPU_SwitchDvfsD2S>
2002514e:	2800      	cmp	r0, #0
20025150:	d1a6      	bne.n	200250a0 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025152:	e7b1      	b.n	200250b8 <HAL_RCC_HCPU_ConfigDvfs+0x2c>
20025154:	20042c14 	.word	0x20042c14
20025158:	2002b6d8 	.word	0x2002b6d8
2002515c:	000f4240 	.word	0x000f4240

20025160 <HAL_RCC_Reset_and_Halt_LCPU>:
20025160:	4a13      	ldr	r2, [pc, #76]	@ (200251b0 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20025162:	6813      	ldr	r3, [r2, #0]
20025164:	0759      	lsls	r1, r3, #29
20025166:	d421      	bmi.n	200251ac <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
20025168:	6811      	ldr	r1, [r2, #0]
2002516a:	2800      	cmp	r0, #0
2002516c:	bf0c      	ite	eq
2002516e:	2301      	moveq	r3, #1
20025170:	f04f 33ff 	movne.w	r3, #4294967295
20025174:	f041 0104 	orr.w	r1, r1, #4
20025178:	6011      	str	r1, [r2, #0]
2002517a:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
2002517e:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
20025182:	6013      	str	r3, [r2, #0]
20025184:	6811      	ldr	r1, [r2, #0]
20025186:	2900      	cmp	r1, #0
20025188:	d0fc      	beq.n	20025184 <HAL_RCC_Reset_and_Halt_LCPU+0x24>
2002518a:	4a09      	ldr	r2, [pc, #36]	@ (200251b0 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
2002518c:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002518e:	06c8      	lsls	r0, r1, #27
20025190:	d506      	bpl.n	200251a0 <HAL_RCC_Reset_and_Halt_LCPU+0x40>
20025192:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025194:	f041 0102 	orr.w	r1, r1, #2
20025198:	6411      	str	r1, [r2, #64]	@ 0x40
2002519a:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002519c:	06c9      	lsls	r1, r1, #27
2002519e:	d4fc      	bmi.n	2002519a <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
200251a0:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
200251a4:	680a      	ldr	r2, [r1, #0]
200251a6:	ea22 0303 	bic.w	r3, r2, r3
200251aa:	600b      	str	r3, [r1, #0]
200251ac:	4770      	bx	lr
200251ae:	bf00      	nop
200251b0:	40040000 	.word	0x40040000

200251b4 <HAL_RCC_HCPU_ConfigHCLK>:
200251b4:	28f0      	cmp	r0, #240	@ 0xf0
200251b6:	d80d      	bhi.n	200251d4 <HAL_RCC_HCPU_ConfigHCLK+0x20>
200251b8:	2890      	cmp	r0, #144	@ 0x90
200251ba:	d807      	bhi.n	200251cc <HAL_RCC_HCPU_ConfigHCLK+0x18>
200251bc:	2830      	cmp	r0, #48	@ 0x30
200251be:	d807      	bhi.n	200251d0 <HAL_RCC_HCPU_ConfigHCLK+0x1c>
200251c0:	2818      	cmp	r0, #24
200251c2:	bf94      	ite	ls
200251c4:	2100      	movls	r1, #0
200251c6:	2101      	movhi	r1, #1
200251c8:	f7ff bf60 	b.w	2002508c <HAL_RCC_HCPU_ConfigDvfs>
200251cc:	2103      	movs	r1, #3
200251ce:	e7fb      	b.n	200251c8 <HAL_RCC_HCPU_ConfigHCLK+0x14>
200251d0:	2102      	movs	r1, #2
200251d2:	e7f9      	b.n	200251c8 <HAL_RCC_HCPU_ConfigHCLK+0x14>
200251d4:	2001      	movs	r0, #1
200251d6:	4770      	bx	lr

200251d8 <spi_flash_get_rdid>:
200251d8:	b5f0      	push	{r4, r5, r6, r7, lr}
200251da:	4605      	mov	r5, r0
200251dc:	3801      	subs	r0, #1
200251de:	b2c0      	uxtb	r0, r0
200251e0:	28fd      	cmp	r0, #253	@ 0xfd
200251e2:	d808      	bhi.n	200251f6 <spi_flash_get_rdid+0x1e>
200251e4:	2400      	movs	r4, #0
200251e6:	4f0b      	ldr	r7, [pc, #44]	@ (20025214 <spi_flash_get_rdid+0x3c>)
200251e8:	f857 0b04 	ldr.w	r0, [r7], #4
200251ec:	7806      	ldrb	r6, [r0, #0]
200251ee:	b926      	cbnz	r6, 200251fa <spi_flash_get_rdid+0x22>
200251f0:	3401      	adds	r4, #1
200251f2:	2c06      	cmp	r4, #6
200251f4:	d1f8      	bne.n	200251e8 <spi_flash_get_rdid+0x10>
200251f6:	2000      	movs	r0, #0
200251f8:	e00b      	b.n	20025212 <spi_flash_get_rdid+0x3a>
200251fa:	42ae      	cmp	r6, r5
200251fc:	d105      	bne.n	2002520a <spi_flash_get_rdid+0x32>
200251fe:	7846      	ldrb	r6, [r0, #1]
20025200:	4296      	cmp	r6, r2
20025202:	d102      	bne.n	2002520a <spi_flash_get_rdid+0x32>
20025204:	7886      	ldrb	r6, [r0, #2]
20025206:	428e      	cmp	r6, r1
20025208:	d001      	beq.n	2002520e <spi_flash_get_rdid+0x36>
2002520a:	3008      	adds	r0, #8
2002520c:	e7ee      	b.n	200251ec <spi_flash_get_rdid+0x14>
2002520e:	b103      	cbz	r3, 20025212 <spi_flash_get_rdid+0x3a>
20025210:	701c      	strb	r4, [r3, #0]
20025212:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025214:	20042c18 	.word	0x20042c18

20025218 <spi_flash_get_cmd_by_id>:
20025218:	b507      	push	{r0, r1, r2, lr}
2002521a:	f10d 0307 	add.w	r3, sp, #7
2002521e:	f7ff ffdb 	bl	200251d8 <spi_flash_get_rdid>
20025222:	4b06      	ldr	r3, [pc, #24]	@ (2002523c <spi_flash_get_cmd_by_id+0x24>)
20025224:	b140      	cbz	r0, 20025238 <spi_flash_get_cmd_by_id+0x20>
20025226:	f44f 7105 	mov.w	r1, #532	@ 0x214
2002522a:	f89d 2007 	ldrb.w	r2, [sp, #7]
2002522e:	fb01 3002 	mla	r0, r1, r2, r3
20025232:	b003      	add	sp, #12
20025234:	f85d fb04 	ldr.w	pc, [sp], #4
20025238:	4618      	mov	r0, r3
2002523a:	e7fa      	b.n	20025232 <spi_flash_get_cmd_by_id+0x1a>
2002523c:	20042e30 	.word	0x20042e30

20025240 <spi_flash_get_size_by_id>:
20025240:	b508      	push	{r3, lr}
20025242:	2300      	movs	r3, #0
20025244:	f7ff ffc8 	bl	200251d8 <spi_flash_get_rdid>
20025248:	b108      	cbz	r0, 2002524e <spi_flash_get_size_by_id+0xe>
2002524a:	6840      	ldr	r0, [r0, #4]
2002524c:	bd08      	pop	{r3, pc}
2002524e:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
20025252:	e7fb      	b.n	2002524c <spi_flash_get_size_by_id+0xc>

20025254 <spi_flash_is_support_dtr>:
20025254:	b508      	push	{r3, lr}
20025256:	2300      	movs	r3, #0
20025258:	f7ff ffbe 	bl	200251d8 <spi_flash_get_rdid>
2002525c:	b110      	cbz	r0, 20025264 <spi_flash_is_support_dtr+0x10>
2002525e:	78c0      	ldrb	r0, [r0, #3]
20025260:	f000 0001 	and.w	r0, r0, #1
20025264:	bd08      	pop	{r3, pc}
	...

20025268 <spi_nand_get_rdid>:
20025268:	b5f0      	push	{r4, r5, r6, r7, lr}
2002526a:	4605      	mov	r5, r0
2002526c:	3801      	subs	r0, #1
2002526e:	b2c0      	uxtb	r0, r0
20025270:	28fd      	cmp	r0, #253	@ 0xfd
20025272:	d808      	bhi.n	20025286 <spi_nand_get_rdid+0x1e>
20025274:	2400      	movs	r4, #0
20025276:	4f0b      	ldr	r7, [pc, #44]	@ (200252a4 <spi_nand_get_rdid+0x3c>)
20025278:	f857 0b04 	ldr.w	r0, [r7], #4
2002527c:	7806      	ldrb	r6, [r0, #0]
2002527e:	b926      	cbnz	r6, 2002528a <spi_nand_get_rdid+0x22>
20025280:	3401      	adds	r4, #1
20025282:	2c06      	cmp	r4, #6
20025284:	d1f8      	bne.n	20025278 <spi_nand_get_rdid+0x10>
20025286:	2000      	movs	r0, #0
20025288:	e00b      	b.n	200252a2 <spi_nand_get_rdid+0x3a>
2002528a:	42ae      	cmp	r6, r5
2002528c:	d105      	bne.n	2002529a <spi_nand_get_rdid+0x32>
2002528e:	7846      	ldrb	r6, [r0, #1]
20025290:	4296      	cmp	r6, r2
20025292:	d102      	bne.n	2002529a <spi_nand_get_rdid+0x32>
20025294:	7886      	ldrb	r6, [r0, #2]
20025296:	428e      	cmp	r6, r1
20025298:	d001      	beq.n	2002529e <spi_nand_get_rdid+0x36>
2002529a:	3008      	adds	r0, #8
2002529c:	e7ee      	b.n	2002527c <spi_nand_get_rdid+0x14>
2002529e:	b103      	cbz	r3, 200252a2 <spi_nand_get_rdid+0x3a>
200252a0:	701c      	strb	r4, [r3, #0]
200252a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200252a4:	20043aa8 	.word	0x20043aa8

200252a8 <spi_nand_get_cmd_by_id>:
200252a8:	b507      	push	{r0, r1, r2, lr}
200252aa:	f10d 0307 	add.w	r3, sp, #7
200252ae:	f7ff ffdb 	bl	20025268 <spi_nand_get_rdid>
200252b2:	b130      	cbz	r0, 200252c2 <spi_nand_get_cmd_by_id+0x1a>
200252b4:	f44f 7205 	mov.w	r2, #532	@ 0x214
200252b8:	f89d 3007 	ldrb.w	r3, [sp, #7]
200252bc:	4802      	ldr	r0, [pc, #8]	@ (200252c8 <spi_nand_get_cmd_by_id+0x20>)
200252be:	fb02 0003 	mla	r0, r2, r3, r0
200252c2:	b003      	add	sp, #12
200252c4:	f85d fb04 	ldr.w	pc, [sp], #4
200252c8:	20043c88 	.word	0x20043c88

200252cc <HAL_GET_FLASH_DEFAUT_INX>:
200252cc:	f04f 30ff 	mov.w	r0, #4294967295
200252d0:	4770      	bx	lr
	...

200252d4 <spi_nand_get_default_ctable>:
200252d4:	b508      	push	{r3, lr}
200252d6:	f7ff fff9 	bl	200252cc <HAL_GET_FLASH_DEFAUT_INX>
200252da:	1e03      	subs	r3, r0, #0
200252dc:	bfa5      	ittet	ge
200252de:	f44f 7205 	movge.w	r2, #532	@ 0x214
200252e2:	4802      	ldrge	r0, [pc, #8]	@ (200252ec <spi_nand_get_default_ctable+0x18>)
200252e4:	2000      	movlt	r0, #0
200252e6:	fb02 0003 	mlage	r0, r2, r3, r0
200252ea:	bd08      	pop	{r3, pc}
200252ec:	20043c88 	.word	0x20043c88

200252f0 <spi_nand_get_size_by_id>:
200252f0:	b508      	push	{r3, lr}
200252f2:	2300      	movs	r3, #0
200252f4:	f7ff ffb8 	bl	20025268 <spi_nand_get_rdid>
200252f8:	b108      	cbz	r0, 200252fe <spi_nand_get_size_by_id+0xe>
200252fa:	6840      	ldr	r0, [r0, #4]
200252fc:	bd08      	pop	{r3, pc}
200252fe:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
20025302:	e7fb      	b.n	200252fc <spi_nand_get_size_by_id+0xc>

20025304 <spi_nand_get_plane_select_flag>:
20025304:	b508      	push	{r3, lr}
20025306:	2300      	movs	r3, #0
20025308:	f7ff ffae 	bl	20025268 <spi_nand_get_rdid>
2002530c:	b110      	cbz	r0, 20025314 <spi_nand_get_plane_select_flag+0x10>
2002530e:	78c0      	ldrb	r0, [r0, #3]
20025310:	f3c0 0040 	ubfx	r0, r0, #1, #1
20025314:	bd08      	pop	{r3, pc}

20025316 <spi_nand_get_big_page_flag>:
20025316:	b508      	push	{r3, lr}
20025318:	2300      	movs	r3, #0
2002531a:	f7ff ffa5 	bl	20025268 <spi_nand_get_rdid>
2002531e:	b110      	cbz	r0, 20025326 <spi_nand_get_big_page_flag+0x10>
20025320:	78c0      	ldrb	r0, [r0, #3]
20025322:	f3c0 0081 	ubfx	r0, r0, #2, #2
20025326:	bd08      	pop	{r3, pc}

20025328 <spi_nand_get_ecc_mode>:
20025328:	b508      	push	{r3, lr}
2002532a:	2300      	movs	r3, #0
2002532c:	f7ff ff9c 	bl	20025268 <spi_nand_get_rdid>
20025330:	b108      	cbz	r0, 20025336 <spi_nand_get_ecc_mode+0xe>
20025332:	78c0      	ldrb	r0, [r0, #3]
20025334:	0900      	lsrs	r0, r0, #4
20025336:	bd08      	pop	{r3, pc}

20025338 <bbm_map_check.part.0>:
20025338:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
2002533a:	4b21      	ldr	r3, [pc, #132]	@ (200253c0 <bbm_map_check.part.0+0x88>)
2002533c:	4606      	mov	r6, r0
2002533e:	681d      	ldr	r5, [r3, #0]
20025340:	4b20      	ldr	r3, [pc, #128]	@ (200253c4 <bbm_map_check.part.0+0x8c>)
20025342:	3d04      	subs	r5, #4
20025344:	681f      	ldr	r7, [r3, #0]
20025346:	2300      	movs	r3, #0
20025348:	f100 0e1a 	add.w	lr, r0, #26
2002534c:	42ab      	cmp	r3, r5
2002534e:	db02      	blt.n	20025356 <bbm_map_check.part.0+0x1e>
20025350:	2000      	movs	r0, #0
20025352:	b003      	add	sp, #12
20025354:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025356:	8b31      	ldrh	r1, [r6, #24]
20025358:	b321      	cbz	r1, 200253a4 <bbm_map_check.part.0+0x6c>
2002535a:	8b72      	ldrh	r2, [r6, #26]
2002535c:	b33a      	cbz	r2, 200253ae <bbm_map_check.part.0+0x76>
2002535e:	42b9      	cmp	r1, r7
20025360:	d201      	bcs.n	20025366 <bbm_map_check.part.0+0x2e>
20025362:	4297      	cmp	r7, r2
20025364:	d905      	bls.n	20025372 <bbm_map_check.part.0+0x3a>
20025366:	4b18      	ldr	r3, [pc, #96]	@ (200253c8 <bbm_map_check.part.0+0x90>)
20025368:	681b      	ldr	r3, [r3, #0]
2002536a:	b10b      	cbz	r3, 20025370 <bbm_map_check.part.0+0x38>
2002536c:	4817      	ldr	r0, [pc, #92]	@ (200253cc <bbm_map_check.part.0+0x94>)
2002536e:	4798      	blx	r3
20025370:	e7fe      	b.n	20025370 <bbm_map_check.part.0+0x38>
20025372:	3301      	adds	r3, #1
20025374:	461c      	mov	r4, r3
20025376:	42ac      	cmp	r4, r5
20025378:	db01      	blt.n	2002537e <bbm_map_check.part.0+0x46>
2002537a:	3604      	adds	r6, #4
2002537c:	e7e6      	b.n	2002534c <bbm_map_check.part.0+0x14>
2002537e:	f83e c024 	ldrh.w	ip, [lr, r4, lsl #2]
20025382:	f1bc 0f00 	cmp.w	ip, #0
20025386:	d0f8      	beq.n	2002537a <bbm_map_check.part.0+0x42>
20025388:	4562      	cmp	r2, ip
2002538a:	d109      	bne.n	200253a0 <bbm_map_check.part.0+0x68>
2002538c:	4b0e      	ldr	r3, [pc, #56]	@ (200253c8 <bbm_map_check.part.0+0x90>)
2002538e:	681d      	ldr	r5, [r3, #0]
20025390:	b12d      	cbz	r5, 2002539e <bbm_map_check.part.0+0x66>
20025392:	3406      	adds	r4, #6
20025394:	f830 3024 	ldrh.w	r3, [r0, r4, lsl #2]
20025398:	480d      	ldr	r0, [pc, #52]	@ (200253d0 <bbm_map_check.part.0+0x98>)
2002539a:	9200      	str	r2, [sp, #0]
2002539c:	47a8      	blx	r5
2002539e:	e7fe      	b.n	2002539e <bbm_map_check.part.0+0x66>
200253a0:	3401      	adds	r4, #1
200253a2:	e7e8      	b.n	20025376 <bbm_map_check.part.0+0x3e>
200253a4:	eb00 0283 	add.w	r2, r0, r3, lsl #2
200253a8:	8b52      	ldrh	r2, [r2, #26]
200253aa:	2a00      	cmp	r2, #0
200253ac:	d0d0      	beq.n	20025350 <bbm_map_check.part.0+0x18>
200253ae:	4a06      	ldr	r2, [pc, #24]	@ (200253c8 <bbm_map_check.part.0+0x90>)
200253b0:	6814      	ldr	r4, [r2, #0]
200253b2:	b124      	cbz	r4, 200253be <bbm_map_check.part.0+0x86>
200253b4:	eb00 0383 	add.w	r3, r0, r3, lsl #2
200253b8:	8b5a      	ldrh	r2, [r3, #26]
200253ba:	4806      	ldr	r0, [pc, #24]	@ (200253d4 <bbm_map_check.part.0+0x9c>)
200253bc:	47a0      	blx	r4
200253be:	e7fe      	b.n	200253be <bbm_map_check.part.0+0x86>
200253c0:	20049f84 	.word	0x20049f84
200253c4:	20049f88 	.word	0x20049f88
200253c8:	20049f74 	.word	0x20049f74
200253cc:	2002a879 	.word	0x2002a879
200253d0:	2002a896 	.word	0x2002a896
200253d4:	2002a8e3 	.word	0x2002a8e3

200253d8 <bbm_crc_check>:
200253d8:	f04f 32ff 	mov.w	r2, #4294967295
200253dc:	b510      	push	{r4, lr}
200253de:	4c07      	ldr	r4, [pc, #28]	@ (200253fc <bbm_crc_check+0x24>)
200253e0:	4401      	add	r1, r0
200253e2:	4288      	cmp	r0, r1
200253e4:	d101      	bne.n	200253ea <bbm_crc_check+0x12>
200253e6:	43d0      	mvns	r0, r2
200253e8:	bd10      	pop	{r4, pc}
200253ea:	f810 3b01 	ldrb.w	r3, [r0], #1
200253ee:	4053      	eors	r3, r2
200253f0:	b2db      	uxtb	r3, r3
200253f2:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
200253f6:	ea83 2212 	eor.w	r2, r3, r2, lsr #8
200253fa:	e7f2      	b.n	200253e2 <bbm_crc_check+0xa>
200253fc:	2002b708 	.word	0x2002b708

20025400 <bbm_get_phy_blk>:
20025400:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20025402:	4b14      	ldr	r3, [pc, #80]	@ (20025454 <bbm_get_phy_blk+0x54>)
20025404:	4601      	mov	r1, r0
20025406:	681e      	ldr	r6, [r3, #0]
20025408:	42b0      	cmp	r0, r6
2002540a:	d21e      	bcs.n	2002544a <bbm_get_phy_blk+0x4a>
2002540c:	b138      	cbz	r0, 2002541e <bbm_get_phy_blk+0x1e>
2002540e:	4b12      	ldr	r3, [pc, #72]	@ (20025458 <bbm_get_phy_blk+0x58>)
20025410:	2200      	movs	r2, #0
20025412:	681c      	ldr	r4, [r3, #0]
20025414:	4b11      	ldr	r3, [pc, #68]	@ (2002545c <bbm_get_phy_blk+0x5c>)
20025416:	3c04      	subs	r4, #4
20025418:	461d      	mov	r5, r3
2002541a:	4294      	cmp	r4, r2
2002541c:	dc00      	bgt.n	20025420 <bbm_get_phy_blk+0x20>
2002541e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20025420:	8b1f      	ldrh	r7, [r3, #24]
20025422:	428f      	cmp	r7, r1
20025424:	d10a      	bne.n	2002543c <bbm_get_phy_blk+0x3c>
20025426:	eb05 0582 	add.w	r5, r5, r2, lsl #2
2002542a:	8b6a      	ldrh	r2, [r5, #26]
2002542c:	4296      	cmp	r6, r2
2002542e:	dd0f      	ble.n	20025450 <bbm_get_phy_blk+0x50>
20025430:	4b0b      	ldr	r3, [pc, #44]	@ (20025460 <bbm_get_phy_blk+0x60>)
20025432:	681b      	ldr	r3, [r3, #0]
20025434:	b10b      	cbz	r3, 2002543a <bbm_get_phy_blk+0x3a>
20025436:	480b      	ldr	r0, [pc, #44]	@ (20025464 <bbm_get_phy_blk+0x64>)
20025438:	4798      	blx	r3
2002543a:	e7fe      	b.n	2002543a <bbm_get_phy_blk+0x3a>
2002543c:	b917      	cbnz	r7, 20025444 <bbm_get_phy_blk+0x44>
2002543e:	8b5f      	ldrh	r7, [r3, #26]
20025440:	2f00      	cmp	r7, #0
20025442:	d0ec      	beq.n	2002541e <bbm_get_phy_blk+0x1e>
20025444:	3201      	adds	r2, #1
20025446:	3304      	adds	r3, #4
20025448:	e7e7      	b.n	2002541a <bbm_get_phy_blk+0x1a>
2002544a:	f04f 30ff 	mov.w	r0, #4294967295
2002544e:	e7e6      	b.n	2002541e <bbm_get_phy_blk+0x1e>
20025450:	4610      	mov	r0, r2
20025452:	e7e4      	b.n	2002541e <bbm_get_phy_blk+0x1e>
20025454:	20049f88 	.word	0x20049f88
20025458:	20049f84 	.word	0x20049f84
2002545c:	20049f8c 	.word	0x20049f8c
20025460:	20049f74 	.word	0x20049f74
20025464:	2002a901 	.word	0x2002a901

20025468 <bbm_get_version_inblk>:
20025468:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002546c:	4607      	mov	r7, r0
2002546e:	4688      	mov	r8, r1
20025470:	b087      	sub	sp, #28
20025472:	2900      	cmp	r1, #0
20025474:	d14b      	bne.n	2002550e <bbm_get_version_inblk+0xa6>
20025476:	2500      	movs	r5, #0
20025478:	4628      	mov	r0, r5
2002547a:	b007      	add	sp, #28
2002547c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025480:	2200      	movs	r2, #0
20025482:	e9cd 2201 	strd	r2, r2, [sp, #4]
20025486:	4e26      	ldr	r6, [pc, #152]	@ (20025520 <bbm_get_version_inblk+0xb8>)
20025488:	9100      	str	r1, [sp, #0]
2002548a:	4638      	mov	r0, r7
2002548c:	4621      	mov	r1, r4
2002548e:	6833      	ldr	r3, [r6, #0]
20025490:	f7fb fb7a 	bl	20020b88 <port_read_page>
20025494:	2800      	cmp	r0, #0
20025496:	dd32      	ble.n	200254fe <bbm_get_version_inblk+0x96>
20025498:	6832      	ldr	r2, [r6, #0]
2002549a:	6813      	ldr	r3, [r2, #0]
2002549c:	455b      	cmp	r3, fp
2002549e:	d123      	bne.n	200254e8 <bbm_get_version_inblk+0x80>
200254a0:	6856      	ldr	r6, [r2, #4]
200254a2:	f3c6 061e 	ubfx	r6, r6, #0, #31
200254a6:	42ae      	cmp	r6, r5
200254a8:	dd15      	ble.n	200254d6 <bbm_get_version_inblk+0x6e>
200254aa:	4610      	mov	r0, r2
200254ac:	2110      	movs	r1, #16
200254ae:	9205      	str	r2, [sp, #20]
200254b0:	f7ff ff92 	bl	200253d8 <bbm_crc_check>
200254b4:	9a05      	ldr	r2, [sp, #20]
200254b6:	6913      	ldr	r3, [r2, #16]
200254b8:	4283      	cmp	r3, r0
200254ba:	d113      	bne.n	200254e4 <bbm_get_version_inblk+0x7c>
200254bc:	f8c8 4000 	str.w	r4, [r8]
200254c0:	4635      	mov	r5, r6
200254c2:	3401      	adds	r4, #1
200254c4:	f8da 1000 	ldr.w	r1, [sl]
200254c8:	f8d9 3000 	ldr.w	r3, [r9]
200254cc:	fbb3 f3f1 	udiv	r3, r3, r1
200254d0:	42a3      	cmp	r3, r4
200254d2:	d8d5      	bhi.n	20025480 <bbm_get_version_inblk+0x18>
200254d4:	e7d0      	b.n	20025478 <bbm_get_version_inblk+0x10>
200254d6:	4b13      	ldr	r3, [pc, #76]	@ (20025524 <bbm_get_version_inblk+0xbc>)
200254d8:	681b      	ldr	r3, [r3, #0]
200254da:	b11b      	cbz	r3, 200254e4 <bbm_get_version_inblk+0x7c>
200254dc:	4632      	mov	r2, r6
200254de:	4629      	mov	r1, r5
200254e0:	4811      	ldr	r0, [pc, #68]	@ (20025528 <bbm_get_version_inblk+0xc0>)
200254e2:	4798      	blx	r3
200254e4:	462e      	mov	r6, r5
200254e6:	e7eb      	b.n	200254c0 <bbm_get_version_inblk+0x58>
200254e8:	1c5a      	adds	r2, r3, #1
200254ea:	d0c5      	beq.n	20025478 <bbm_get_version_inblk+0x10>
200254ec:	4a0d      	ldr	r2, [pc, #52]	@ (20025524 <bbm_get_version_inblk+0xbc>)
200254ee:	6815      	ldr	r5, [r2, #0]
200254f0:	2d00      	cmp	r5, #0
200254f2:	d0c0      	beq.n	20025476 <bbm_get_version_inblk+0xe>
200254f4:	4622      	mov	r2, r4
200254f6:	4639      	mov	r1, r7
200254f8:	480c      	ldr	r0, [pc, #48]	@ (2002552c <bbm_get_version_inblk+0xc4>)
200254fa:	47a8      	blx	r5
200254fc:	e7bb      	b.n	20025476 <bbm_get_version_inblk+0xe>
200254fe:	4b09      	ldr	r3, [pc, #36]	@ (20025524 <bbm_get_version_inblk+0xbc>)
20025500:	681b      	ldr	r3, [r3, #0]
20025502:	2b00      	cmp	r3, #0
20025504:	d0ee      	beq.n	200254e4 <bbm_get_version_inblk+0x7c>
20025506:	4622      	mov	r2, r4
20025508:	4639      	mov	r1, r7
2002550a:	4809      	ldr	r0, [pc, #36]	@ (20025530 <bbm_get_version_inblk+0xc8>)
2002550c:	e7e9      	b.n	200254e2 <bbm_get_version_inblk+0x7a>
2002550e:	2400      	movs	r4, #0
20025510:	f8df a020 	ldr.w	sl, [pc, #32]	@ 20025534 <bbm_get_version_inblk+0xcc>
20025514:	4625      	mov	r5, r4
20025516:	f8df 9020 	ldr.w	r9, [pc, #32]	@ 20025538 <bbm_get_version_inblk+0xd0>
2002551a:	f8df b020 	ldr.w	fp, [pc, #32]	@ 2002553c <bbm_get_version_inblk+0xd4>
2002551e:	e7d1      	b.n	200254c4 <bbm_get_version_inblk+0x5c>
20025520:	20049f78 	.word	0x20049f78
20025524:	20049f74 	.word	0x20049f74
20025528:	2002a920 	.word	0x2002a920
2002552c:	2002a94d 	.word	0x2002a94d
20025530:	2002a97e 	.word	0x2002a97e
20025534:	20044900 	.word	0x20044900
20025538:	20044904 	.word	0x20044904
2002553c:	5366424d 	.word	0x5366424d

20025540 <bbm_get_map_table>:
20025540:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025544:	2801      	cmp	r0, #1
20025546:	4607      	mov	r7, r0
20025548:	f8df b15c 	ldr.w	fp, [pc, #348]	@ 200256a8 <bbm_get_map_table+0x168>
2002554c:	b087      	sub	sp, #28
2002554e:	dd0a      	ble.n	20025566 <bbm_get_map_table+0x26>
20025550:	f8db 3000 	ldr.w	r3, [fp]
20025554:	b91b      	cbnz	r3, 2002555e <bbm_get_map_table+0x1e>
20025556:	2000      	movs	r0, #0
20025558:	b007      	add	sp, #28
2002555a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002555e:	4601      	mov	r1, r0
20025560:	4847      	ldr	r0, [pc, #284]	@ (20025680 <bbm_get_map_table+0x140>)
20025562:	4798      	blx	r3
20025564:	e7f7      	b.n	20025556 <bbm_get_map_table+0x16>
20025566:	f8df 8144 	ldr.w	r8, [pc, #324]	@ 200256ac <bbm_get_map_table+0x16c>
2002556a:	2800      	cmp	r0, #0
2002556c:	d163      	bne.n	20025636 <bbm_get_map_table+0xf6>
2002556e:	f8b8 6000 	ldrh.w	r6, [r8]
20025572:	f8b8 5002 	ldrh.w	r5, [r8, #2]
20025576:	2e00      	cmp	r6, #0
20025578:	d062      	beq.n	20025640 <bbm_get_map_table+0x100>
2002557a:	4630      	mov	r0, r6
2002557c:	a904      	add	r1, sp, #16
2002557e:	f7ff ff73 	bl	20025468 <bbm_get_version_inblk>
20025582:	4681      	mov	r9, r0
20025584:	2d00      	cmp	r5, #0
20025586:	d05d      	beq.n	20025644 <bbm_get_map_table+0x104>
20025588:	4628      	mov	r0, r5
2002558a:	a905      	add	r1, sp, #20
2002558c:	f7ff ff6c 	bl	20025468 <bbm_get_version_inblk>
20025590:	4604      	mov	r4, r0
20025592:	f8db a000 	ldr.w	sl, [fp]
20025596:	f1ba 0f00 	cmp.w	sl, #0
2002559a:	d005      	beq.n	200255a8 <bbm_get_map_table+0x68>
2002559c:	4623      	mov	r3, r4
2002559e:	4632      	mov	r2, r6
200255a0:	4649      	mov	r1, r9
200255a2:	4838      	ldr	r0, [pc, #224]	@ (20025684 <bbm_get_map_table+0x144>)
200255a4:	9500      	str	r5, [sp, #0]
200255a6:	47d0      	blx	sl
200255a8:	45a1      	cmp	r9, r4
200255aa:	d0d4      	beq.n	20025556 <bbm_get_map_table+0x16>
200255ac:	f04f 0200 	mov.w	r2, #0
200255b0:	bf98      	it	ls
200255b2:	462e      	movls	r6, r5
200255b4:	f107 0308 	add.w	r3, r7, #8
200255b8:	bf94      	ite	ls
200255ba:	f828 5013 	strhls.w	r5, [r8, r3, lsl #1]
200255be:	f828 6013 	strhhi.w	r6, [r8, r3, lsl #1]
200255c2:	e9cd 2201 	strd	r2, r2, [sp, #4]
200255c6:	4b30      	ldr	r3, [pc, #192]	@ (20025688 <bbm_get_map_table+0x148>)
200255c8:	bf88      	it	hi
200255ca:	f8dd a010 	ldrhi.w	sl, [sp, #16]
200255ce:	681b      	ldr	r3, [r3, #0]
200255d0:	bf98      	it	ls
200255d2:	f8dd a014 	ldrls.w	sl, [sp, #20]
200255d6:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 200256b0 <bbm_get_map_table+0x170>
200255da:	9300      	str	r3, [sp, #0]
200255dc:	4651      	mov	r1, sl
200255de:	4630      	mov	r0, r6
200255e0:	f8d8 3000 	ldr.w	r3, [r8]
200255e4:	bf88      	it	hi
200255e6:	464c      	movhi	r4, r9
200255e8:	f7fb face 	bl	20020b88 <port_read_page>
200255ec:	2800      	cmp	r0, #0
200255ee:	f8db 5000 	ldr.w	r5, [fp]
200255f2:	dd38      	ble.n	20025666 <bbm_get_map_table+0x126>
200255f4:	f8d8 8000 	ldr.w	r8, [r8]
200255f8:	4b24      	ldr	r3, [pc, #144]	@ (2002568c <bbm_get_map_table+0x14c>)
200255fa:	f8d8 2000 	ldr.w	r2, [r8]
200255fe:	429a      	cmp	r2, r3
20025600:	d12b      	bne.n	2002565a <bbm_get_map_table+0x11a>
20025602:	2110      	movs	r1, #16
20025604:	4640      	mov	r0, r8
20025606:	f7ff fee7 	bl	200253d8 <bbm_crc_check>
2002560a:	f8d8 2010 	ldr.w	r2, [r8, #16]
2002560e:	4601      	mov	r1, r0
20025610:	4282      	cmp	r2, r0
20025612:	d11e      	bne.n	20025652 <bbm_get_map_table+0x112>
20025614:	f8d8 1004 	ldr.w	r1, [r8, #4]
20025618:	f3c1 011e 	ubfx	r1, r1, #0, #31
2002561c:	42a1      	cmp	r1, r4
2002561e:	d113      	bne.n	20025648 <bbm_get_map_table+0x108>
20025620:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025624:	481a      	ldr	r0, [pc, #104]	@ (20025690 <bbm_get_map_table+0x150>)
20025626:	4641      	mov	r1, r8
20025628:	fb02 0007 	mla	r0, r2, r7, r0
2002562c:	f005 f888 	bl	2002a740 <memcpy>
20025630:	bb0d      	cbnz	r5, 20025676 <bbm_get_map_table+0x136>
20025632:	4620      	mov	r0, r4
20025634:	e790      	b.n	20025558 <bbm_get_map_table+0x18>
20025636:	f8b8 6004 	ldrh.w	r6, [r8, #4]
2002563a:	f8b8 5006 	ldrh.w	r5, [r8, #6]
2002563e:	e79a      	b.n	20025576 <bbm_get_map_table+0x36>
20025640:	46b1      	mov	r9, r6
20025642:	e79f      	b.n	20025584 <bbm_get_map_table+0x44>
20025644:	462c      	mov	r4, r5
20025646:	e7a4      	b.n	20025592 <bbm_get_map_table+0x52>
20025648:	b115      	cbz	r5, 20025650 <bbm_get_map_table+0x110>
2002564a:	4622      	mov	r2, r4
2002564c:	4811      	ldr	r0, [pc, #68]	@ (20025694 <bbm_get_map_table+0x154>)
2002564e:	47a8      	blx	r5
20025650:	e7fe      	b.n	20025650 <bbm_get_map_table+0x110>
20025652:	b10d      	cbz	r5, 20025658 <bbm_get_map_table+0x118>
20025654:	4810      	ldr	r0, [pc, #64]	@ (20025698 <bbm_get_map_table+0x158>)
20025656:	47a8      	blx	r5
20025658:	e7fe      	b.n	20025658 <bbm_get_map_table+0x118>
2002565a:	b11d      	cbz	r5, 20025664 <bbm_get_map_table+0x124>
2002565c:	4652      	mov	r2, sl
2002565e:	4631      	mov	r1, r6
20025660:	480e      	ldr	r0, [pc, #56]	@ (2002569c <bbm_get_map_table+0x15c>)
20025662:	47a8      	blx	r5
20025664:	e7fe      	b.n	20025664 <bbm_get_map_table+0x124>
20025666:	2d00      	cmp	r5, #0
20025668:	f43f af75 	beq.w	20025556 <bbm_get_map_table+0x16>
2002566c:	4652      	mov	r2, sl
2002566e:	4631      	mov	r1, r6
20025670:	480b      	ldr	r0, [pc, #44]	@ (200256a0 <bbm_get_map_table+0x160>)
20025672:	47a8      	blx	r5
20025674:	e76f      	b.n	20025556 <bbm_get_map_table+0x16>
20025676:	4621      	mov	r1, r4
20025678:	480a      	ldr	r0, [pc, #40]	@ (200256a4 <bbm_get_map_table+0x164>)
2002567a:	47a8      	blx	r5
2002567c:	e7d9      	b.n	20025632 <bbm_get_map_table+0xf2>
2002567e:	bf00      	nop
20025680:	2002a99c 	.word	0x2002a99c
20025684:	2002a9b0 	.word	0x2002a9b0
20025688:	20044900 	.word	0x20044900
2002568c:	5366424d 	.word	0x5366424d
20025690:	20049f8c 	.word	0x20049f8c
20025694:	2002a9d6 	.word	0x2002a9d6
20025698:	2002aa20 	.word	0x2002aa20
2002569c:	2002aa32 	.word	0x2002aa32
200256a0:	2002aa67 	.word	0x2002aa67
200256a4:	2002aa93 	.word	0x2002aa93
200256a8:	20049f74 	.word	0x20049f74
200256ac:	2004a39c 	.word	0x2004a39c
200256b0:	20049f78 	.word	0x20049f78

200256b4 <bbm_get_page_num>:
200256b4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200256b8:	4605      	mov	r5, r0
200256ba:	2400      	movs	r4, #0
200256bc:	4f13      	ldr	r7, [pc, #76]	@ (2002570c <bbm_get_page_num+0x58>)
200256be:	4e14      	ldr	r6, [pc, #80]	@ (20025710 <bbm_get_page_num+0x5c>)
200256c0:	f8df 8050 	ldr.w	r8, [pc, #80]	@ 20025714 <bbm_get_page_num+0x60>
200256c4:	b085      	sub	sp, #20
200256c6:	6839      	ldr	r1, [r7, #0]
200256c8:	6833      	ldr	r3, [r6, #0]
200256ca:	fbb3 f3f1 	udiv	r3, r3, r1
200256ce:	42a3      	cmp	r3, r4
200256d0:	d802      	bhi.n	200256d8 <bbm_get_page_num+0x24>
200256d2:	f04f 34ff 	mov.w	r4, #4294967295
200256d6:	e015      	b.n	20025704 <bbm_get_page_num+0x50>
200256d8:	2200      	movs	r2, #0
200256da:	e9cd 2201 	strd	r2, r2, [sp, #4]
200256de:	f8df 9038 	ldr.w	r9, [pc, #56]	@ 20025718 <bbm_get_page_num+0x64>
200256e2:	9100      	str	r1, [sp, #0]
200256e4:	4628      	mov	r0, r5
200256e6:	4621      	mov	r1, r4
200256e8:	f8d9 3000 	ldr.w	r3, [r9]
200256ec:	f7fb fa4c 	bl	20020b88 <port_read_page>
200256f0:	b120      	cbz	r0, 200256fc <bbm_get_page_num+0x48>
200256f2:	f8d9 3000 	ldr.w	r3, [r9]
200256f6:	681b      	ldr	r3, [r3, #0]
200256f8:	4543      	cmp	r3, r8
200256fa:	d101      	bne.n	20025700 <bbm_get_page_num+0x4c>
200256fc:	3401      	adds	r4, #1
200256fe:	e7e2      	b.n	200256c6 <bbm_get_page_num+0x12>
20025700:	3301      	adds	r3, #1
20025702:	d1fb      	bne.n	200256fc <bbm_get_page_num+0x48>
20025704:	4620      	mov	r0, r4
20025706:	b005      	add	sp, #20
20025708:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
2002570c:	20044900 	.word	0x20044900
20025710:	20044904 	.word	0x20044904
20025714:	5366424d 	.word	0x5366424d
20025718:	20049f78 	.word	0x20049f78

2002571c <bbm_read_page>:
2002571c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002571e:	4604      	mov	r4, r0
20025720:	b085      	sub	sp, #20
20025722:	b280      	uxth	r0, r0
20025724:	461f      	mov	r7, r3
20025726:	460d      	mov	r5, r1
20025728:	4616      	mov	r6, r2
2002572a:	f7ff fe69 	bl	20025400 <bbm_get_phy_blk>
2002572e:	1c43      	adds	r3, r0, #1
20025730:	d108      	bne.n	20025744 <bbm_read_page+0x28>
20025732:	4b0a      	ldr	r3, [pc, #40]	@ (2002575c <bbm_read_page+0x40>)
20025734:	681b      	ldr	r3, [r3, #0]
20025736:	b113      	cbz	r3, 2002573e <bbm_read_page+0x22>
20025738:	4621      	mov	r1, r4
2002573a:	4809      	ldr	r0, [pc, #36]	@ (20025760 <bbm_read_page+0x44>)
2002573c:	4798      	blx	r3
2002573e:	2000      	movs	r0, #0
20025740:	b005      	add	sp, #20
20025742:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025744:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
20025746:	4632      	mov	r2, r6
20025748:	9302      	str	r3, [sp, #8]
2002574a:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002574c:	4629      	mov	r1, r5
2002574e:	9301      	str	r3, [sp, #4]
20025750:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20025752:	9300      	str	r3, [sp, #0]
20025754:	463b      	mov	r3, r7
20025756:	f7fb fa17 	bl	20020b88 <port_read_page>
2002575a:	e7f1      	b.n	20025740 <bbm_read_page+0x24>
2002575c:	20049f74 	.word	0x20049f74
20025760:	2002aaa6 	.word	0x2002aaa6

20025764 <port_write_page>:
20025764:	4b01      	ldr	r3, [pc, #4]	@ (2002576c <port_write_page+0x8>)
20025766:	6818      	ldr	r0, [r3, #0]
20025768:	4770      	bx	lr
2002576a:	bf00      	nop
2002576c:	20044900 	.word	0x20044900

20025770 <bbm_write_talbe.isra.0>:
20025770:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
20025772:	4604      	mov	r4, r0
20025774:	4608      	mov	r0, r1
20025776:	460e      	mov	r6, r1
20025778:	f7ff ff9c 	bl	200256b4 <bbm_get_page_num>
2002577c:	1e05      	subs	r5, r0, #0
2002577e:	db25      	blt.n	200257cc <bbm_write_talbe.isra.0+0x5c>
20025780:	4b13      	ldr	r3, [pc, #76]	@ (200257d0 <bbm_write_talbe.isra.0+0x60>)
20025782:	681a      	ldr	r2, [r3, #0]
20025784:	4b13      	ldr	r3, [pc, #76]	@ (200257d4 <bbm_write_talbe.isra.0+0x64>)
20025786:	681b      	ldr	r3, [r3, #0]
20025788:	fbb3 f3f2 	udiv	r3, r3, r2
2002578c:	429d      	cmp	r5, r3
2002578e:	da1d      	bge.n	200257cc <bbm_write_talbe.isra.0+0x5c>
20025790:	4f11      	ldr	r7, [pc, #68]	@ (200257d8 <bbm_write_talbe.isra.0+0x68>)
20025792:	21ff      	movs	r1, #255	@ 0xff
20025794:	6838      	ldr	r0, [r7, #0]
20025796:	f004 ffb9 	bl	2002a70c <memset>
2002579a:	4264      	negs	r4, r4
2002579c:	490f      	ldr	r1, [pc, #60]	@ (200257dc <bbm_write_talbe.isra.0+0x6c>)
2002579e:	f404 7402 	and.w	r4, r4, #520	@ 0x208
200257a2:	f44f 7202 	mov.w	r2, #520	@ 0x208
200257a6:	6838      	ldr	r0, [r7, #0]
200257a8:	4421      	add	r1, r4
200257aa:	f004 ffc9 	bl	2002a740 <memcpy>
200257ae:	6838      	ldr	r0, [r7, #0]
200257b0:	b160      	cbz	r0, 200257cc <bbm_write_talbe.isra.0+0x5c>
200257b2:	6802      	ldr	r2, [r0, #0]
200257b4:	4b0a      	ldr	r3, [pc, #40]	@ (200257e0 <bbm_write_talbe.isra.0+0x70>)
200257b6:	429a      	cmp	r2, r3
200257b8:	d108      	bne.n	200257cc <bbm_write_talbe.isra.0+0x5c>
200257ba:	f7ff fdbd 	bl	20025338 <bbm_map_check.part.0>
200257be:	2300      	movs	r3, #0
200257c0:	9300      	str	r3, [sp, #0]
200257c2:	4629      	mov	r1, r5
200257c4:	4630      	mov	r0, r6
200257c6:	683a      	ldr	r2, [r7, #0]
200257c8:	f7ff ffcc 	bl	20025764 <port_write_page>
200257cc:	b003      	add	sp, #12
200257ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
200257d0:	20044900 	.word	0x20044900
200257d4:	20044904 	.word	0x20044904
200257d8:	20049f78 	.word	0x20049f78
200257dc:	20049f8c 	.word	0x20049f8c
200257e0:	5366424d 	.word	0x5366424d

200257e4 <port_erase_block>:
200257e4:	2000      	movs	r0, #0
200257e6:	4770      	bx	lr

200257e8 <bbm_init_table>:
200257e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200257ec:	4c7d      	ldr	r4, [pc, #500]	@ (200259e4 <bbm_init_table+0x1fc>)
200257ee:	4b7e      	ldr	r3, [pc, #504]	@ (200259e8 <bbm_init_table+0x200>)
200257f0:	6822      	ldr	r2, [r4, #0]
200257f2:	b085      	sub	sp, #20
200257f4:	429a      	cmp	r2, r3
200257f6:	f000 80ef 	beq.w	200259d8 <bbm_init_table+0x1f0>
200257fa:	f8d4 2208 	ldr.w	r2, [r4, #520]	@ 0x208
200257fe:	429a      	cmp	r2, r3
20025800:	f000 80ea 	beq.w	200259d8 <bbm_init_table+0x1f0>
20025804:	6023      	str	r3, [r4, #0]
20025806:	2301      	movs	r3, #1
20025808:	6063      	str	r3, [r4, #4]
2002580a:	2300      	movs	r3, #0
2002580c:	f8df 9210 	ldr.w	r9, [pc, #528]	@ 20025a20 <bbm_init_table+0x238>
20025810:	8123      	strh	r3, [r4, #8]
20025812:	f8d9 3000 	ldr.w	r3, [r9]
20025816:	4f75      	ldr	r7, [pc, #468]	@ (200259ec <bbm_init_table+0x204>)
20025818:	3b04      	subs	r3, #4
2002581a:	f8df a208 	ldr.w	sl, [pc, #520]	@ 20025a24 <bbm_init_table+0x23c>
2002581e:	8163      	strh	r3, [r4, #10]
20025820:	683b      	ldr	r3, [r7, #0]
20025822:	f8da 5000 	ldr.w	r5, [sl]
20025826:	3b01      	subs	r3, #1
20025828:	4e71      	ldr	r6, [pc, #452]	@ (200259f0 <bbm_init_table+0x208>)
2002582a:	81a3      	strh	r3, [r4, #12]
2002582c:	81e5      	strh	r5, [r4, #14]
2002582e:	683b      	ldr	r3, [r7, #0]
20025830:	429d      	cmp	r5, r3
20025832:	db10      	blt.n	20025856 <bbm_init_table+0x6e>
20025834:	2500      	movs	r5, #0
20025836:	46a8      	mov	r8, r5
20025838:	f8df b1b4 	ldr.w	fp, [pc, #436]	@ 200259f0 <bbm_init_table+0x208>
2002583c:	f8da 6000 	ldr.w	r6, [sl]
20025840:	42b5      	cmp	r5, r6
20025842:	db20      	blt.n	20025886 <bbm_init_table+0x9e>
20025844:	8963      	ldrh	r3, [r4, #10]
20025846:	2b00      	cmp	r3, #0
20025848:	d14d      	bne.n	200258e6 <bbm_init_table+0xfe>
2002584a:	4b69      	ldr	r3, [pc, #420]	@ (200259f0 <bbm_init_table+0x208>)
2002584c:	681b      	ldr	r3, [r3, #0]
2002584e:	b10b      	cbz	r3, 20025854 <bbm_init_table+0x6c>
20025850:	4868      	ldr	r0, [pc, #416]	@ (200259f4 <bbm_init_table+0x20c>)
20025852:	4798      	blx	r3
20025854:	e7fe      	b.n	20025854 <bbm_init_table+0x6c>
20025856:	4628      	mov	r0, r5
20025858:	f7fb fa12 	bl	20020c80 <bbm_get_bb>
2002585c:	b968      	cbnz	r0, 2002587a <bbm_init_table+0x92>
2002585e:	4628      	mov	r0, r5
20025860:	f7ff ffc0 	bl	200257e4 <port_erase_block>
20025864:	b138      	cbz	r0, 20025876 <bbm_init_table+0x8e>
20025866:	6833      	ldr	r3, [r6, #0]
20025868:	b113      	cbz	r3, 20025870 <bbm_init_table+0x88>
2002586a:	4629      	mov	r1, r5
2002586c:	4862      	ldr	r0, [pc, #392]	@ (200259f8 <bbm_init_table+0x210>)
2002586e:	4798      	blx	r3
20025870:	8963      	ldrh	r3, [r4, #10]
20025872:	3b01      	subs	r3, #1
20025874:	8163      	strh	r3, [r4, #10]
20025876:	3501      	adds	r5, #1
20025878:	e7d9      	b.n	2002582e <bbm_init_table+0x46>
2002587a:	6833      	ldr	r3, [r6, #0]
2002587c:	2b00      	cmp	r3, #0
2002587e:	d0f7      	beq.n	20025870 <bbm_init_table+0x88>
20025880:	4629      	mov	r1, r5
20025882:	485e      	ldr	r0, [pc, #376]	@ (200259fc <bbm_init_table+0x214>)
20025884:	e7f3      	b.n	2002586e <bbm_init_table+0x86>
20025886:	4628      	mov	r0, r5
20025888:	f7fb f9fa 	bl	20020c80 <bbm_get_bb>
2002588c:	b348      	cbz	r0, 200258e2 <bbm_init_table+0xfa>
2002588e:	f8db 3000 	ldr.w	r3, [fp]
20025892:	b113      	cbz	r3, 2002589a <bbm_init_table+0xb2>
20025894:	4629      	mov	r1, r5
20025896:	485a      	ldr	r0, [pc, #360]	@ (20025a00 <bbm_init_table+0x218>)
20025898:	4798      	blx	r3
2002589a:	89a0      	ldrh	r0, [r4, #12]
2002589c:	f7fb f9f0 	bl	20020c80 <bbm_get_bb>
200258a0:	89a3      	ldrh	r3, [r4, #12]
200258a2:	4606      	mov	r6, r0
200258a4:	3b01      	subs	r3, #1
200258a6:	81a3      	strh	r3, [r4, #12]
200258a8:	8963      	ldrh	r3, [r4, #10]
200258aa:	3b01      	subs	r3, #1
200258ac:	b29b      	uxth	r3, r3
200258ae:	8163      	strh	r3, [r4, #10]
200258b0:	b108      	cbz	r0, 200258b6 <bbm_init_table+0xce>
200258b2:	2b00      	cmp	r3, #0
200258b4:	d1f1      	bne.n	2002589a <bbm_init_table+0xb2>
200258b6:	f8db 3000 	ldr.w	r3, [fp]
200258ba:	b11b      	cbz	r3, 200258c4 <bbm_init_table+0xdc>
200258bc:	4642      	mov	r2, r8
200258be:	4629      	mov	r1, r5
200258c0:	4850      	ldr	r0, [pc, #320]	@ (20025a04 <bbm_init_table+0x21c>)
200258c2:	4798      	blx	r3
200258c4:	b946      	cbnz	r6, 200258d8 <bbm_init_table+0xf0>
200258c6:	89a2      	ldrh	r2, [r4, #12]
200258c8:	f108 0306 	add.w	r3, r8, #6
200258cc:	f824 5023 	strh.w	r5, [r4, r3, lsl #2]
200258d0:	3201      	adds	r2, #1
200258d2:	eb04 0383 	add.w	r3, r4, r3, lsl #2
200258d6:	805a      	strh	r2, [r3, #2]
200258d8:	8923      	ldrh	r3, [r4, #8]
200258da:	f108 0801 	add.w	r8, r8, #1
200258de:	3301      	adds	r3, #1
200258e0:	8123      	strh	r3, [r4, #8]
200258e2:	3501      	adds	r5, #1
200258e4:	e7aa      	b.n	2002583c <bbm_init_table+0x54>
200258e6:	2110      	movs	r1, #16
200258e8:	483e      	ldr	r0, [pc, #248]	@ (200259e4 <bbm_init_table+0x1fc>)
200258ea:	f7ff fd75 	bl	200253d8 <bbm_crc_check>
200258ee:	f8d9 1000 	ldr.w	r1, [r9]
200258f2:	6120      	str	r0, [r4, #16]
200258f4:	3904      	subs	r1, #4
200258f6:	0089      	lsls	r1, r1, #2
200258f8:	4843      	ldr	r0, [pc, #268]	@ (20025a08 <bbm_init_table+0x220>)
200258fa:	f7ff fd6d 	bl	200253d8 <bbm_crc_check>
200258fe:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025902:	4938      	ldr	r1, [pc, #224]	@ (200259e4 <bbm_init_table+0x1fc>)
20025904:	6160      	str	r0, [r4, #20]
20025906:	1888      	adds	r0, r1, r2
20025908:	f004 ff1a 	bl	2002a740 <memcpy>
2002590c:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025910:	2110      	movs	r1, #16
20025912:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025916:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
2002591a:	483c      	ldr	r0, [pc, #240]	@ (20025a0c <bbm_init_table+0x224>)
2002591c:	f7ff fd5c 	bl	200253d8 <bbm_crc_check>
20025920:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025924:	2400      	movs	r4, #0
20025926:	f8df 9100 	ldr.w	r9, [pc, #256]	@ 20025a28 <bbm_init_table+0x240>
2002592a:	f8df 8100 	ldr.w	r8, [pc, #256]	@ 20025a2c <bbm_init_table+0x244>
2002592e:	683b      	ldr	r3, [r7, #0]
20025930:	429e      	cmp	r6, r3
20025932:	db08      	blt.n	20025946 <bbm_init_table+0x15e>
20025934:	2c03      	cmp	r4, #3
20025936:	dc30      	bgt.n	2002599a <bbm_init_table+0x1b2>
20025938:	4b2d      	ldr	r3, [pc, #180]	@ (200259f0 <bbm_init_table+0x208>)
2002593a:	681b      	ldr	r3, [r3, #0]
2002593c:	b113      	cbz	r3, 20025944 <bbm_init_table+0x15c>
2002593e:	4621      	mov	r1, r4
20025940:	4833      	ldr	r0, [pc, #204]	@ (20025a10 <bbm_init_table+0x228>)
20025942:	4798      	blx	r3
20025944:	e7fe      	b.n	20025944 <bbm_init_table+0x15c>
20025946:	4630      	mov	r0, r6
20025948:	f7fb f99a 	bl	20020c80 <bbm_get_bb>
2002594c:	4605      	mov	r5, r0
2002594e:	bb10      	cbnz	r0, 20025996 <bbm_init_table+0x1ae>
20025950:	f8d9 a000 	ldr.w	sl, [r9]
20025954:	21ff      	movs	r1, #255	@ 0xff
20025956:	4652      	mov	r2, sl
20025958:	f8d8 0000 	ldr.w	r0, [r8]
2002595c:	f004 fed6 	bl	2002a70c <memset>
20025960:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025964:	f8cd a000 	str.w	sl, [sp]
20025968:	f8d8 3000 	ldr.w	r3, [r8]
2002596c:	462a      	mov	r2, r5
2002596e:	4629      	mov	r1, r5
20025970:	4630      	mov	r0, r6
20025972:	f7fb f909 	bl	20020b88 <port_read_page>
20025976:	f8d9 3000 	ldr.w	r3, [r9]
2002597a:	4298      	cmp	r0, r3
2002597c:	d109      	bne.n	20025992 <bbm_init_table+0x1aa>
2002597e:	f8d8 3000 	ldr.w	r3, [r8]
20025982:	681b      	ldr	r3, [r3, #0]
20025984:	3301      	adds	r3, #1
20025986:	bf01      	itttt	eq
20025988:	4b22      	ldreq	r3, [pc, #136]	@ (20025a14 <bbm_init_table+0x22c>)
2002598a:	1d22      	addeq	r2, r4, #4
2002598c:	f823 6012 	strheq.w	r6, [r3, r2, lsl #1]
20025990:	3401      	addeq	r4, #1
20025992:	2c03      	cmp	r4, #3
20025994:	dc01      	bgt.n	2002599a <bbm_init_table+0x1b2>
20025996:	3601      	adds	r6, #1
20025998:	e7c9      	b.n	2002592e <bbm_init_table+0x146>
2002599a:	2500      	movs	r5, #0
2002599c:	4c1d      	ldr	r4, [pc, #116]	@ (20025a14 <bbm_init_table+0x22c>)
2002599e:	2000      	movs	r0, #0
200259a0:	8921      	ldrh	r1, [r4, #8]
200259a2:	f7ff fee5 	bl	20025770 <bbm_write_talbe.isra.0>
200259a6:	8923      	ldrh	r3, [r4, #8]
200259a8:	2001      	movs	r0, #1
200259aa:	8961      	ldrh	r1, [r4, #10]
200259ac:	8023      	strh	r3, [r4, #0]
200259ae:	8223      	strh	r3, [r4, #16]
200259b0:	8125      	strh	r5, [r4, #8]
200259b2:	f7ff fedd 	bl	20025770 <bbm_write_talbe.isra.0>
200259b6:	8963      	ldrh	r3, [r4, #10]
200259b8:	8165      	strh	r5, [r4, #10]
200259ba:	80a3      	strh	r3, [r4, #4]
200259bc:	8263      	strh	r3, [r4, #18]
200259be:	89a3      	ldrh	r3, [r4, #12]
200259c0:	8063      	strh	r3, [r4, #2]
200259c2:	89e3      	ldrh	r3, [r4, #14]
200259c4:	80e3      	strh	r3, [r4, #6]
200259c6:	4b0a      	ldr	r3, [pc, #40]	@ (200259f0 <bbm_init_table+0x208>)
200259c8:	681b      	ldr	r3, [r3, #0]
200259ca:	b10b      	cbz	r3, 200259d0 <bbm_init_table+0x1e8>
200259cc:	4812      	ldr	r0, [pc, #72]	@ (20025a18 <bbm_init_table+0x230>)
200259ce:	4798      	blx	r3
200259d0:	2000      	movs	r0, #0
200259d2:	b005      	add	sp, #20
200259d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200259d8:	4b05      	ldr	r3, [pc, #20]	@ (200259f0 <bbm_init_table+0x208>)
200259da:	681b      	ldr	r3, [r3, #0]
200259dc:	b10b      	cbz	r3, 200259e2 <bbm_init_table+0x1fa>
200259de:	480f      	ldr	r0, [pc, #60]	@ (20025a1c <bbm_init_table+0x234>)
200259e0:	4798      	blx	r3
200259e2:	e7fe      	b.n	200259e2 <bbm_init_table+0x1fa>
200259e4:	20049f8c 	.word	0x20049f8c
200259e8:	5366424d 	.word	0x5366424d
200259ec:	20049f80 	.word	0x20049f80
200259f0:	20049f74 	.word	0x20049f74
200259f4:	2002ab3b 	.word	0x2002ab3b
200259f8:	2002aac9 	.word	0x2002aac9
200259fc:	2002aaeb 	.word	0x2002aaeb
20025a00:	2002ab08 	.word	0x2002ab08
20025a04:	2002ab27 	.word	0x2002ab27
20025a08:	20049fa4 	.word	0x20049fa4
20025a0c:	2004a194 	.word	0x2004a194
20025a10:	2002ab55 	.word	0x2002ab55
20025a14:	2004a39c 	.word	0x2004a39c
20025a18:	2002ab7c 	.word	0x2002ab7c
20025a1c:	2002ab98 	.word	0x2002ab98
20025a20:	20049f84 	.word	0x20049f84
20025a24:	20049f88 	.word	0x20049f88
20025a28:	20044900 	.word	0x20044900
20025a2c:	20049f78 	.word	0x20049f78

20025a30 <sif_bbm_init>:
20025a30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025a34:	b087      	sub	sp, #28
20025a36:	2900      	cmp	r1, #0
20025a38:	f000 8129 	beq.w	20025c8e <sif_bbm_init+0x25e>
20025a3c:	4b95      	ldr	r3, [pc, #596]	@ (20025c94 <sif_bbm_init+0x264>)
20025a3e:	681a      	ldr	r2, [r3, #0]
20025a40:	2a01      	cmp	r2, #1
20025a42:	d108      	bne.n	20025a56 <sif_bbm_init+0x26>
20025a44:	4b94      	ldr	r3, [pc, #592]	@ (20025c98 <sif_bbm_init+0x268>)
20025a46:	681b      	ldr	r3, [r3, #0]
20025a48:	b10b      	cbz	r3, 20025a4e <sif_bbm_init+0x1e>
20025a4a:	4894      	ldr	r0, [pc, #592]	@ (20025c9c <sif_bbm_init+0x26c>)
20025a4c:	4798      	blx	r3
20025a4e:	2000      	movs	r0, #0
20025a50:	b007      	add	sp, #28
20025a52:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025a56:	2201      	movs	r2, #1
20025a58:	601a      	str	r2, [r3, #0]
20025a5a:	4b91      	ldr	r3, [pc, #580]	@ (20025ca0 <sif_bbm_init+0x270>)
20025a5c:	681c      	ldr	r4, [r3, #0]
20025a5e:	b904      	cbnz	r4, 20025a62 <sif_bbm_init+0x32>
20025a60:	e7fe      	b.n	20025a60 <sif_bbm_init+0x30>
20025a62:	f8df a27c 	ldr.w	sl, [pc, #636]	@ 20025ce0 <sif_bbm_init+0x2b0>
20025a66:	f8da 2000 	ldr.w	r2, [sl]
20025a6a:	b902      	cbnz	r2, 20025a6e <sif_bbm_init+0x3e>
20025a6c:	e7fe      	b.n	20025a6c <sif_bbm_init+0x3c>
20025a6e:	fbb0 f4f4 	udiv	r4, r0, r4
20025a72:	f04f 0800 	mov.w	r8, #0
20025a76:	4a8b      	ldr	r2, [pc, #556]	@ (20025ca4 <sif_bbm_init+0x274>)
20025a78:	f8df b268 	ldr.w	fp, [pc, #616]	@ 20025ce4 <sif_bbm_init+0x2b4>
20025a7c:	0963      	lsrs	r3, r4, #5
20025a7e:	f8df 9268 	ldr.w	r9, [pc, #616]	@ 20025ce8 <sif_bbm_init+0x2b8>
20025a82:	6013      	str	r3, [r2, #0]
20025a84:	f8cb 4000 	str.w	r4, [fp]
20025a88:	1ae4      	subs	r4, r4, r3
20025a8a:	4b87      	ldr	r3, [pc, #540]	@ (20025ca8 <sif_bbm_init+0x278>)
20025a8c:	2218      	movs	r2, #24
20025a8e:	f8c9 1000 	str.w	r1, [r9]
20025a92:	4886      	ldr	r0, [pc, #536]	@ (20025cac <sif_bbm_init+0x27c>)
20025a94:	2100      	movs	r1, #0
20025a96:	601c      	str	r4, [r3, #0]
20025a98:	f004 fe38 	bl	2002a70c <memset>
20025a9c:	f44f 6282 	mov.w	r2, #1040	@ 0x410
20025aa0:	2100      	movs	r1, #0
20025aa2:	4883      	ldr	r0, [pc, #524]	@ (20025cb0 <sif_bbm_init+0x280>)
20025aa4:	f004 fe32 	bl	2002a70c <memset>
20025aa8:	4647      	mov	r7, r8
20025aaa:	4646      	mov	r6, r8
20025aac:	f8db 3000 	ldr.w	r3, [fp]
20025ab0:	429c      	cmp	r4, r3
20025ab2:	db02      	blt.n	20025aba <sif_bbm_init+0x8a>
20025ab4:	f04f 35ff 	mov.w	r5, #4294967295
20025ab8:	e064      	b.n	20025b84 <sif_bbm_init+0x154>
20025aba:	4620      	mov	r0, r4
20025abc:	f7fb f8e0 	bl	20020c80 <bbm_get_bb>
20025ac0:	4605      	mov	r5, r0
20025ac2:	b138      	cbz	r0, 20025ad4 <sif_bbm_init+0xa4>
20025ac4:	4b74      	ldr	r3, [pc, #464]	@ (20025c98 <sif_bbm_init+0x268>)
20025ac6:	681b      	ldr	r3, [r3, #0]
20025ac8:	b113      	cbz	r3, 20025ad0 <sif_bbm_init+0xa0>
20025aca:	487a      	ldr	r0, [pc, #488]	@ (20025cb4 <sif_bbm_init+0x284>)
20025acc:	1c61      	adds	r1, r4, #1
20025ace:	4798      	blx	r3
20025ad0:	3401      	adds	r4, #1
20025ad2:	e7eb      	b.n	20025aac <sif_bbm_init+0x7c>
20025ad4:	f8da 2000 	ldr.w	r2, [sl]
20025ad8:	21ff      	movs	r1, #255	@ 0xff
20025ada:	f8d9 0000 	ldr.w	r0, [r9]
20025ade:	9205      	str	r2, [sp, #20]
20025ae0:	f004 fe14 	bl	2002a70c <memset>
20025ae4:	9a05      	ldr	r2, [sp, #20]
20025ae6:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025aea:	9200      	str	r2, [sp, #0]
20025aec:	f8d9 3000 	ldr.w	r3, [r9]
20025af0:	462a      	mov	r2, r5
20025af2:	4629      	mov	r1, r5
20025af4:	4620      	mov	r0, r4
20025af6:	f7fb f847 	bl	20020b88 <port_read_page>
20025afa:	f8da 3000 	ldr.w	r3, [sl]
20025afe:	4298      	cmp	r0, r3
20025b00:	d12e      	bne.n	20025b60 <sif_bbm_init+0x130>
20025b02:	f8d9 1000 	ldr.w	r1, [r9]
20025b06:	486c      	ldr	r0, [pc, #432]	@ (20025cb8 <sif_bbm_init+0x288>)
20025b08:	680b      	ldr	r3, [r1, #0]
20025b0a:	b2a2      	uxth	r2, r4
20025b0c:	4283      	cmp	r3, r0
20025b0e:	4b67      	ldr	r3, [pc, #412]	@ (20025cac <sif_bbm_init+0x27c>)
20025b10:	d11f      	bne.n	20025b52 <sif_bbm_init+0x122>
20025b12:	f991 1007 	ldrsb.w	r1, [r1, #7]
20025b16:	2900      	cmp	r1, #0
20025b18:	bfb5      	itete	lt
20025b1a:	eb03 0147 	addlt.w	r1, r3, r7, lsl #1
20025b1e:	f823 2016 	strhge.w	r2, [r3, r6, lsl #1]
20025b22:	808a      	strhlt	r2, [r1, #4]
20025b24:	3601      	addge	r6, #1
20025b26:	bfb8      	it	lt
20025b28:	3701      	addlt	r7, #1
20025b2a:	eb06 0208 	add.w	r2, r6, r8
20025b2e:	443a      	add	r2, r7
20025b30:	2a03      	cmp	r2, #3
20025b32:	ddcd      	ble.n	20025ad0 <sif_bbm_init+0xa0>
20025b34:	2e00      	cmp	r6, #0
20025b36:	f000 8081 	beq.w	20025c3c <sif_bbm_init+0x20c>
20025b3a:	2f00      	cmp	r7, #0
20025b3c:	d07e      	beq.n	20025c3c <sif_bbm_init+0x20c>
20025b3e:	2e01      	cmp	r6, #1
20025b40:	d001      	beq.n	20025b46 <sif_bbm_init+0x116>
20025b42:	2f01      	cmp	r7, #1
20025b44:	d11e      	bne.n	20025b84 <sif_bbm_init+0x154>
20025b46:	8819      	ldrh	r1, [r3, #0]
20025b48:	891a      	ldrh	r2, [r3, #8]
20025b4a:	b981      	cbnz	r1, 20025b6e <sif_bbm_init+0x13e>
20025b4c:	801a      	strh	r2, [r3, #0]
20025b4e:	895a      	ldrh	r2, [r3, #10]
20025b50:	e013      	b.n	20025b7a <sif_bbm_init+0x14a>
20025b52:	f108 0104 	add.w	r1, r8, #4
20025b56:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
20025b5a:	f108 0801 	add.w	r8, r8, #1
20025b5e:	e7e4      	b.n	20025b2a <sif_bbm_init+0xfa>
20025b60:	4b4d      	ldr	r3, [pc, #308]	@ (20025c98 <sif_bbm_init+0x268>)
20025b62:	681b      	ldr	r3, [r3, #0]
20025b64:	2b00      	cmp	r3, #0
20025b66:	d0b3      	beq.n	20025ad0 <sif_bbm_init+0xa0>
20025b68:	4854      	ldr	r0, [pc, #336]	@ (20025cbc <sif_bbm_init+0x28c>)
20025b6a:	1c61      	adds	r1, r4, #1
20025b6c:	e7af      	b.n	20025ace <sif_bbm_init+0x9e>
20025b6e:	8859      	ldrh	r1, [r3, #2]
20025b70:	b909      	cbnz	r1, 20025b76 <sif_bbm_init+0x146>
20025b72:	805a      	strh	r2, [r3, #2]
20025b74:	e7eb      	b.n	20025b4e <sif_bbm_init+0x11e>
20025b76:	2a00      	cmp	r2, #0
20025b78:	d0e9      	beq.n	20025b4e <sif_bbm_init+0x11e>
20025b7a:	8899      	ldrh	r1, [r3, #4]
20025b7c:	2900      	cmp	r1, #0
20025b7e:	d158      	bne.n	20025c32 <sif_bbm_init+0x202>
20025b80:	809a      	strh	r2, [r3, #4]
20025b82:	2502      	movs	r5, #2
20025b84:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20025c98 <sif_bbm_init+0x268>
20025b88:	f8d9 4000 	ldr.w	r4, [r9]
20025b8c:	b124      	cbz	r4, 20025b98 <sif_bbm_init+0x168>
20025b8e:	4643      	mov	r3, r8
20025b90:	463a      	mov	r2, r7
20025b92:	4631      	mov	r1, r6
20025b94:	484a      	ldr	r0, [pc, #296]	@ (20025cc0 <sif_bbm_init+0x290>)
20025b96:	47a0      	blx	r4
20025b98:	f8d9 3000 	ldr.w	r3, [r9]
20025b9c:	b113      	cbz	r3, 20025ba4 <sif_bbm_init+0x174>
20025b9e:	4629      	mov	r1, r5
20025ba0:	4848      	ldr	r0, [pc, #288]	@ (20025cc4 <sif_bbm_init+0x294>)
20025ba2:	4798      	blx	r3
20025ba4:	f035 0002 	bics.w	r0, r5, #2
20025ba8:	d164      	bne.n	20025c74 <sif_bbm_init+0x244>
20025baa:	f7ff fcc9 	bl	20025540 <bbm_get_map_table>
20025bae:	4605      	mov	r5, r0
20025bb0:	2001      	movs	r0, #1
20025bb2:	f7ff fcc5 	bl	20025540 <bbm_get_map_table>
20025bb6:	f8d9 6000 	ldr.w	r6, [r9]
20025bba:	4604      	mov	r4, r0
20025bbc:	b13e      	cbz	r6, 20025bce <sif_bbm_init+0x19e>
20025bbe:	4a3b      	ldr	r2, [pc, #236]	@ (20025cac <sif_bbm_init+0x27c>)
20025bc0:	4629      	mov	r1, r5
20025bc2:	8a53      	ldrh	r3, [r2, #18]
20025bc4:	9300      	str	r3, [sp, #0]
20025bc6:	8a12      	ldrh	r2, [r2, #16]
20025bc8:	4603      	mov	r3, r0
20025bca:	483f      	ldr	r0, [pc, #252]	@ (20025cc8 <sif_bbm_init+0x298>)
20025bcc:	47b0      	blx	r6
20025bce:	42a5      	cmp	r5, r4
20025bd0:	4c37      	ldr	r4, [pc, #220]	@ (20025cb0 <sif_bbm_init+0x280>)
20025bd2:	dd35      	ble.n	20025c40 <sif_bbm_init+0x210>
20025bd4:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025bd8:	4621      	mov	r1, r4
20025bda:	18a0      	adds	r0, r4, r2
20025bdc:	f004 fdb0 	bl	2002a740 <memcpy>
20025be0:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025be4:	2110      	movs	r1, #16
20025be6:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025bea:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025bee:	f504 7002 	add.w	r0, r4, #520	@ 0x208
20025bf2:	f7ff fbf1 	bl	200253d8 <bbm_crc_check>
20025bf6:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025bfa:	2001      	movs	r0, #1
20025bfc:	4b2b      	ldr	r3, [pc, #172]	@ (20025cac <sif_bbm_init+0x27c>)
20025bfe:	8a59      	ldrh	r1, [r3, #18]
20025c00:	f7ff fdb6 	bl	20025770 <bbm_write_talbe.isra.0>
20025c04:	6822      	ldr	r2, [r4, #0]
20025c06:	4b2c      	ldr	r3, [pc, #176]	@ (20025cb8 <sif_bbm_init+0x288>)
20025c08:	429a      	cmp	r2, r3
20025c0a:	d12d      	bne.n	20025c68 <sif_bbm_init+0x238>
20025c0c:	4828      	ldr	r0, [pc, #160]	@ (20025cb0 <sif_bbm_init+0x280>)
20025c0e:	f7ff fb93 	bl	20025338 <bbm_map_check.part.0>
20025c12:	f8d9 4000 	ldr.w	r4, [r9]
20025c16:	b12c      	cbz	r4, 20025c24 <sif_bbm_init+0x1f4>
20025c18:	4b2c      	ldr	r3, [pc, #176]	@ (20025ccc <sif_bbm_init+0x29c>)
20025c1a:	4924      	ldr	r1, [pc, #144]	@ (20025cac <sif_bbm_init+0x27c>)
20025c1c:	482c      	ldr	r0, [pc, #176]	@ (20025cd0 <sif_bbm_init+0x2a0>)
20025c1e:	f5a3 7202 	sub.w	r2, r3, #520	@ 0x208
20025c22:	47a0      	blx	r4
20025c24:	f8d9 3000 	ldr.w	r3, [r9]
20025c28:	2b00      	cmp	r3, #0
20025c2a:	f43f af10 	beq.w	20025a4e <sif_bbm_init+0x1e>
20025c2e:	4829      	ldr	r0, [pc, #164]	@ (20025cd4 <sif_bbm_init+0x2a4>)
20025c30:	e70c      	b.n	20025a4c <sif_bbm_init+0x1c>
20025c32:	88d9      	ldrh	r1, [r3, #6]
20025c34:	2900      	cmp	r1, #0
20025c36:	d1a4      	bne.n	20025b82 <sif_bbm_init+0x152>
20025c38:	80da      	strh	r2, [r3, #6]
20025c3a:	e7a2      	b.n	20025b82 <sif_bbm_init+0x152>
20025c3c:	2501      	movs	r5, #1
20025c3e:	e7a1      	b.n	20025b84 <sif_bbm_init+0x154>
20025c40:	dae0      	bge.n	20025c04 <sif_bbm_init+0x1d4>
20025c42:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025c46:	4620      	mov	r0, r4
20025c48:	18a1      	adds	r1, r4, r2
20025c4a:	f004 fd79 	bl	2002a740 <memcpy>
20025c4e:	79e3      	ldrb	r3, [r4, #7]
20025c50:	2110      	movs	r1, #16
20025c52:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
20025c56:	71e3      	strb	r3, [r4, #7]
20025c58:	4620      	mov	r0, r4
20025c5a:	f7ff fbbd 	bl	200253d8 <bbm_crc_check>
20025c5e:	4b13      	ldr	r3, [pc, #76]	@ (20025cac <sif_bbm_init+0x27c>)
20025c60:	6120      	str	r0, [r4, #16]
20025c62:	8a19      	ldrh	r1, [r3, #16]
20025c64:	2000      	movs	r0, #0
20025c66:	e7cb      	b.n	20025c00 <sif_bbm_init+0x1d0>
20025c68:	f8d9 3000 	ldr.w	r3, [r9]
20025c6c:	b10b      	cbz	r3, 20025c72 <sif_bbm_init+0x242>
20025c6e:	481a      	ldr	r0, [pc, #104]	@ (20025cd8 <sif_bbm_init+0x2a8>)
20025c70:	4798      	blx	r3
20025c72:	e7fe      	b.n	20025c72 <sif_bbm_init+0x242>
20025c74:	2d01      	cmp	r5, #1
20025c76:	d102      	bne.n	20025c7e <sif_bbm_init+0x24e>
20025c78:	f7ff fdb6 	bl	200257e8 <bbm_init_table>
20025c7c:	e7c9      	b.n	20025c12 <sif_bbm_init+0x1e2>
20025c7e:	f8d9 3000 	ldr.w	r3, [r9]
20025c82:	b11b      	cbz	r3, 20025c8c <sif_bbm_init+0x25c>
20025c84:	f04f 31ff 	mov.w	r1, #4294967295
20025c88:	4814      	ldr	r0, [pc, #80]	@ (20025cdc <sif_bbm_init+0x2ac>)
20025c8a:	4798      	blx	r3
20025c8c:	e7fe      	b.n	20025c8c <sif_bbm_init+0x25c>
20025c8e:	f04f 30ff 	mov.w	r0, #4294967295
20025c92:	e6dd      	b.n	20025a50 <sif_bbm_init+0x20>
20025c94:	20049f7c 	.word	0x20049f7c
20025c98:	20049f74 	.word	0x20049f74
20025c9c:	2002abac 	.word	0x2002abac
20025ca0:	20044904 	.word	0x20044904
20025ca4:	20049f84 	.word	0x20049f84
20025ca8:	20049f88 	.word	0x20049f88
20025cac:	2004a39c 	.word	0x2004a39c
20025cb0:	20049f8c 	.word	0x20049f8c
20025cb4:	2002abda 	.word	0x2002abda
20025cb8:	5366424d 	.word	0x5366424d
20025cbc:	2002abe6 	.word	0x2002abe6
20025cc0:	2002ac05 	.word	0x2002ac05
20025cc4:	2002ac24 	.word	0x2002ac24
20025cc8:	2002ac36 	.word	0x2002ac36
20025ccc:	2004a194 	.word	0x2004a194
20025cd0:	2002ac91 	.word	0x2002ac91
20025cd4:	2002acb5 	.word	0x2002acb5
20025cd8:	2002ac5a 	.word	0x2002ac5a
20025cdc:	2002ac70 	.word	0x2002ac70
20025ce0:	20044900 	.word	0x20044900
20025ce4:	20049f80 	.word	0x20049f80
20025ce8:	20049f78 	.word	0x20049f78

20025cec <bbm_set_page_size>:
20025cec:	4b01      	ldr	r3, [pc, #4]	@ (20025cf4 <bbm_set_page_size+0x8>)
20025cee:	6018      	str	r0, [r3, #0]
20025cf0:	4770      	bx	lr
20025cf2:	bf00      	nop
20025cf4:	20044900 	.word	0x20044900

20025cf8 <bbm_set_blk_size>:
20025cf8:	4b01      	ldr	r3, [pc, #4]	@ (20025d00 <bbm_set_blk_size+0x8>)
20025cfa:	6018      	str	r0, [r3, #0]
20025cfc:	4770      	bx	lr
20025cfe:	bf00      	nop
20025d00:	20044904 	.word	0x20044904

20025d04 <mbedtls_md_info_from_type>:
20025d04:	3805      	subs	r0, #5
20025d06:	b2c0      	uxtb	r0, r0
20025d08:	2803      	cmp	r0, #3
20025d0a:	bf9a      	itte	ls
20025d0c:	4b02      	ldrls	r3, [pc, #8]	@ (20025d18 <mbedtls_md_info_from_type+0x14>)
20025d0e:	f853 0020 	ldrls.w	r0, [r3, r0, lsl #2]
20025d12:	2000      	movhi	r0, #0
20025d14:	4770      	bx	lr
20025d16:	bf00      	nop
20025d18:	2002bb08 	.word	0x2002bb08

20025d1c <mbedtls_md_get_size>:
20025d1c:	b100      	cbz	r0, 20025d20 <mbedtls_md_get_size+0x4>
20025d1e:	7a00      	ldrb	r0, [r0, #8]
20025d20:	4770      	bx	lr

20025d22 <sha224_process_wrap>:
20025d22:	f000 b8a9 	b.w	20025e78 <mbedtls_sha256_process>

20025d26 <sha224_clone_wrap>:
20025d26:	f000 b85a 	b.w	20025dde <mbedtls_sha256_clone>

20025d2a <sha224_ctx_free>:
20025d2a:	b510      	push	{r4, lr}
20025d2c:	4604      	mov	r4, r0
20025d2e:	f000 f84c 	bl	20025dca <mbedtls_sha256_free>
20025d32:	4620      	mov	r0, r4
20025d34:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025d38:	f004 bc22 	b.w	2002a580 <free>

20025d3c <sha224_ctx_alloc>:
20025d3c:	b510      	push	{r4, lr}
20025d3e:	216c      	movs	r1, #108	@ 0x6c
20025d40:	2001      	movs	r0, #1
20025d42:	f004 fc01 	bl	2002a548 <calloc>
20025d46:	4604      	mov	r4, r0
20025d48:	b108      	cbz	r0, 20025d4e <sha224_ctx_alloc+0x12>
20025d4a:	f000 f83a 	bl	20025dc2 <mbedtls_sha256_init>
20025d4e:	4620      	mov	r0, r4
20025d50:	bd10      	pop	{r4, pc}

20025d52 <sha224_wrap>:
20025d52:	2301      	movs	r3, #1
20025d54:	f000 bc94 	b.w	20026680 <mbedtls_sha256>

20025d58 <sha256_wrap>:
20025d58:	2300      	movs	r3, #0
20025d5a:	f000 bc91 	b.w	20026680 <mbedtls_sha256>

20025d5e <sha224_finish_wrap>:
20025d5e:	f000 bc21 	b.w	200265a4 <mbedtls_sha256_finish>

20025d62 <sha224_update_wrap>:
20025d62:	f000 bc1b 	b.w	2002659c <mbedtls_sha256_update>

20025d66 <sha224_starts_wrap>:
20025d66:	2101      	movs	r1, #1
20025d68:	f000 b83e 	b.w	20025de8 <mbedtls_sha256_starts>

20025d6c <sha256_starts_wrap>:
20025d6c:	2100      	movs	r1, #0
20025d6e:	f000 b83b 	b.w	20025de8 <mbedtls_sha256_starts>

20025d72 <sha384_process_wrap>:
20025d72:	f000 bd8d 	b.w	20026890 <mbedtls_sha512_process>

20025d76 <sha384_clone_wrap>:
20025d76:	f000 bcf5 	b.w	20026764 <mbedtls_sha512_clone>

20025d7a <sha384_ctx_free>:
20025d7a:	b510      	push	{r4, lr}
20025d7c:	4604      	mov	r4, r0
20025d7e:	f000 fce7 	bl	20026750 <mbedtls_sha512_free>
20025d82:	4620      	mov	r0, r4
20025d84:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025d88:	f004 bbfa 	b.w	2002a580 <free>

20025d8c <sha384_ctx_alloc>:
20025d8c:	b510      	push	{r4, lr}
20025d8e:	21d8      	movs	r1, #216	@ 0xd8
20025d90:	2001      	movs	r0, #1
20025d92:	f004 fbd9 	bl	2002a548 <calloc>
20025d96:	4604      	mov	r4, r0
20025d98:	b108      	cbz	r0, 20025d9e <sha384_ctx_alloc+0x12>
20025d9a:	f000 fcd5 	bl	20026748 <mbedtls_sha512_init>
20025d9e:	4620      	mov	r0, r4
20025da0:	bd10      	pop	{r4, pc}

20025da2 <sha384_wrap>:
20025da2:	2301      	movs	r3, #1
20025da4:	f001 bbf8 	b.w	20027598 <mbedtls_sha512>

20025da8 <sha512_wrap>:
20025da8:	2300      	movs	r3, #0
20025daa:	f001 bbf5 	b.w	20027598 <mbedtls_sha512>

20025dae <sha384_finish_wrap>:
20025dae:	f001 baed 	b.w	2002738c <mbedtls_sha512_finish>

20025db2 <sha384_update_wrap>:
20025db2:	f001 bae6 	b.w	20027382 <mbedtls_sha512_update>

20025db6 <sha384_starts_wrap>:
20025db6:	2101      	movs	r1, #1
20025db8:	f000 bcda 	b.w	20026770 <mbedtls_sha512_starts>

20025dbc <sha512_starts_wrap>:
20025dbc:	2100      	movs	r1, #0
20025dbe:	f000 bcd7 	b.w	20026770 <mbedtls_sha512_starts>

20025dc2 <mbedtls_sha256_init>:
20025dc2:	226c      	movs	r2, #108	@ 0x6c
20025dc4:	2100      	movs	r1, #0
20025dc6:	f004 bca1 	b.w	2002a70c <memset>

20025dca <mbedtls_sha256_free>:
20025dca:	b138      	cbz	r0, 20025ddc <mbedtls_sha256_free+0x12>
20025dcc:	2100      	movs	r1, #0
20025dce:	f100 036c 	add.w	r3, r0, #108	@ 0x6c
20025dd2:	4602      	mov	r2, r0
20025dd4:	3001      	adds	r0, #1
20025dd6:	4298      	cmp	r0, r3
20025dd8:	7011      	strb	r1, [r2, #0]
20025dda:	d1fa      	bne.n	20025dd2 <mbedtls_sha256_free+0x8>
20025ddc:	4770      	bx	lr

20025dde <mbedtls_sha256_clone>:
20025dde:	b508      	push	{r3, lr}
20025de0:	226c      	movs	r2, #108	@ 0x6c
20025de2:	f004 fcad 	bl	2002a740 <memcpy>
20025de6:	bd08      	pop	{r3, pc}

20025de8 <mbedtls_sha256_starts>:
20025de8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20025dec:	b1c1      	cbz	r1, 20025e20 <mbedtls_sha256_starts+0x38>
20025dee:	f8df e078 	ldr.w	lr, [pc, #120]	@ 20025e68 <mbedtls_sha256_starts+0x80>
20025df2:	f8df c078 	ldr.w	ip, [pc, #120]	@ 20025e6c <mbedtls_sha256_starts+0x84>
20025df6:	4f10      	ldr	r7, [pc, #64]	@ (20025e38 <mbedtls_sha256_starts+0x50>)
20025df8:	4e10      	ldr	r6, [pc, #64]	@ (20025e3c <mbedtls_sha256_starts+0x54>)
20025dfa:	4d11      	ldr	r5, [pc, #68]	@ (20025e40 <mbedtls_sha256_starts+0x58>)
20025dfc:	4c11      	ldr	r4, [pc, #68]	@ (20025e44 <mbedtls_sha256_starts+0x5c>)
20025dfe:	4a12      	ldr	r2, [pc, #72]	@ (20025e48 <mbedtls_sha256_starts+0x60>)
20025e00:	4b12      	ldr	r3, [pc, #72]	@ (20025e4c <mbedtls_sha256_starts+0x64>)
20025e02:	f04f 0800 	mov.w	r8, #0
20025e06:	e9c0 ec02 	strd	lr, ip, [r0, #8]
20025e0a:	e9c0 8800 	strd	r8, r8, [r0]
20025e0e:	e9c0 7604 	strd	r7, r6, [r0, #16]
20025e12:	e9c0 5406 	strd	r5, r4, [r0, #24]
20025e16:	e9c0 2308 	strd	r2, r3, [r0, #32]
20025e1a:	6681      	str	r1, [r0, #104]	@ 0x68
20025e1c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20025e20:	f8df e04c 	ldr.w	lr, [pc, #76]	@ 20025e70 <mbedtls_sha256_starts+0x88>
20025e24:	f8df c04c 	ldr.w	ip, [pc, #76]	@ 20025e74 <mbedtls_sha256_starts+0x8c>
20025e28:	4f09      	ldr	r7, [pc, #36]	@ (20025e50 <mbedtls_sha256_starts+0x68>)
20025e2a:	4e0a      	ldr	r6, [pc, #40]	@ (20025e54 <mbedtls_sha256_starts+0x6c>)
20025e2c:	4d0a      	ldr	r5, [pc, #40]	@ (20025e58 <mbedtls_sha256_starts+0x70>)
20025e2e:	4c0b      	ldr	r4, [pc, #44]	@ (20025e5c <mbedtls_sha256_starts+0x74>)
20025e30:	4a0b      	ldr	r2, [pc, #44]	@ (20025e60 <mbedtls_sha256_starts+0x78>)
20025e32:	4b0c      	ldr	r3, [pc, #48]	@ (20025e64 <mbedtls_sha256_starts+0x7c>)
20025e34:	e7e5      	b.n	20025e02 <mbedtls_sha256_starts+0x1a>
20025e36:	bf00      	nop
20025e38:	3070dd17 	.word	0x3070dd17
20025e3c:	f70e5939 	.word	0xf70e5939
20025e40:	ffc00b31 	.word	0xffc00b31
20025e44:	68581511 	.word	0x68581511
20025e48:	64f98fa7 	.word	0x64f98fa7
20025e4c:	befa4fa4 	.word	0xbefa4fa4
20025e50:	3c6ef372 	.word	0x3c6ef372
20025e54:	a54ff53a 	.word	0xa54ff53a
20025e58:	510e527f 	.word	0x510e527f
20025e5c:	9b05688c 	.word	0x9b05688c
20025e60:	1f83d9ab 	.word	0x1f83d9ab
20025e64:	5be0cd19 	.word	0x5be0cd19
20025e68:	c1059ed8 	.word	0xc1059ed8
20025e6c:	367cd507 	.word	0x367cd507
20025e70:	6a09e667 	.word	0x6a09e667
20025e74:	bb67ae85 	.word	0xbb67ae85

20025e78 <mbedtls_sha256_process>:
20025e78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025e7c:	b0cf      	sub	sp, #316	@ 0x13c
20025e7e:	aa06      	add	r2, sp, #24
20025e80:	460b      	mov	r3, r1
20025e82:	4616      	mov	r6, r2
20025e84:	9004      	str	r0, [sp, #16]
20025e86:	f100 0408 	add.w	r4, r0, #8
20025e8a:	f100 0728 	add.w	r7, r0, #40	@ 0x28
20025e8e:	4635      	mov	r5, r6
20025e90:	6820      	ldr	r0, [r4, #0]
20025e92:	6861      	ldr	r1, [r4, #4]
20025e94:	3408      	adds	r4, #8
20025e96:	c503      	stmia	r5!, {r0, r1}
20025e98:	42bc      	cmp	r4, r7
20025e9a:	462e      	mov	r6, r5
20025e9c:	d1f7      	bne.n	20025e8e <mbedtls_sha256_process+0x16>
20025e9e:	f10d 0a38 	add.w	sl, sp, #56	@ 0x38
20025ea2:	4619      	mov	r1, r3
20025ea4:	4650      	mov	r0, sl
20025ea6:	f103 0440 	add.w	r4, r3, #64	@ 0x40
20025eaa:	784b      	ldrb	r3, [r1, #1]
20025eac:	780d      	ldrb	r5, [r1, #0]
20025eae:	041b      	lsls	r3, r3, #16
20025eb0:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
20025eb4:	78cd      	ldrb	r5, [r1, #3]
20025eb6:	3104      	adds	r1, #4
20025eb8:	432b      	orrs	r3, r5
20025eba:	f811 5c02 	ldrb.w	r5, [r1, #-2]
20025ebe:	428c      	cmp	r4, r1
20025ec0:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
20025ec4:	f840 3b04 	str.w	r3, [r0], #4
20025ec8:	d1ef      	bne.n	20025eaa <mbedtls_sha256_process+0x32>
20025eca:	4996      	ldr	r1, [pc, #600]	@ (20026124 <mbedtls_sha256_process+0x2ac>)
20025ecc:	46d4      	mov	ip, sl
20025ece:	e9d2 e705 	ldrd	lr, r7, [r2, #20]
20025ed2:	e9d2 9600 	ldrd	r9, r6, [r2]
20025ed6:	460d      	mov	r5, r1
20025ed8:	9100      	str	r1, [sp, #0]
20025eda:	f8d2 801c 	ldr.w	r8, [r2, #28]
20025ede:	f8d2 b010 	ldr.w	fp, [r2, #16]
20025ee2:	e9d2 3202 	ldrd	r3, r2, [r2, #8]
20025ee6:	6829      	ldr	r1, [r5, #0]
20025ee8:	f8dc 0000 	ldr.w	r0, [ip]
20025eec:	ea4f 24fb 	mov.w	r4, fp, ror #11
20025ef0:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
20025ef4:	4401      	add	r1, r0
20025ef6:	ea87 000e 	eor.w	r0, r7, lr
20025efa:	ea84 647b 	eor.w	r4, r4, fp, ror #25
20025efe:	ea00 000b 	and.w	r0, r0, fp
20025f02:	4078      	eors	r0, r7
20025f04:	4421      	add	r1, r4
20025f06:	4401      	add	r1, r0
20025f08:	4441      	add	r1, r8
20025f0a:	ea4f 3879 	mov.w	r8, r9, ror #13
20025f0e:	ea88 08b9 	eor.w	r8, r8, r9, ror #2
20025f12:	ea88 58b9 	eor.w	r8, r8, r9, ror #22
20025f16:	440a      	add	r2, r1
20025f18:	4488      	add	r8, r1
20025f1a:	ea49 0106 	orr.w	r1, r9, r6
20025f1e:	ea09 0006 	and.w	r0, r9, r6
20025f22:	4019      	ands	r1, r3
20025f24:	4301      	orrs	r1, r0
20025f26:	4488      	add	r8, r1
20025f28:	f8dc 0004 	ldr.w	r0, [ip, #4]
20025f2c:	6869      	ldr	r1, [r5, #4]
20025f2e:	ea4f 3478 	mov.w	r4, r8, ror #13
20025f32:	4401      	add	r1, r0
20025f34:	ea8b 000e 	eor.w	r0, fp, lr
20025f38:	4010      	ands	r0, r2
20025f3a:	ea80 000e 	eor.w	r0, r0, lr
20025f3e:	4439      	add	r1, r7
20025f40:	4401      	add	r1, r0
20025f42:	ea4f 20f2 	mov.w	r0, r2, ror #11
20025f46:	ea80 10b2 	eor.w	r0, r0, r2, ror #6
20025f4a:	ea80 6072 	eor.w	r0, r0, r2, ror #25
20025f4e:	ea84 04b8 	eor.w	r4, r4, r8, ror #2
20025f52:	4401      	add	r1, r0
20025f54:	ea84 54b8 	eor.w	r4, r4, r8, ror #22
20025f58:	440b      	add	r3, r1
20025f5a:	440c      	add	r4, r1
20025f5c:	ea48 0109 	orr.w	r1, r8, r9
20025f60:	ea08 0009 	and.w	r0, r8, r9
20025f64:	4031      	ands	r1, r6
20025f66:	4301      	orrs	r1, r0
20025f68:	440c      	add	r4, r1
20025f6a:	f8dc 0008 	ldr.w	r0, [ip, #8]
20025f6e:	68a9      	ldr	r1, [r5, #8]
20025f70:	ea82 0703 	eor.w	r7, r2, r3
20025f74:	4401      	add	r1, r0
20025f76:	ea82 000b 	eor.w	r0, r2, fp
20025f7a:	4018      	ands	r0, r3
20025f7c:	ea80 000b 	eor.w	r0, r0, fp
20025f80:	4471      	add	r1, lr
20025f82:	4401      	add	r1, r0
20025f84:	ea4f 20f3 	mov.w	r0, r3, ror #11
20025f88:	ea80 10b3 	eor.w	r0, r0, r3, ror #6
20025f8c:	ea80 6073 	eor.w	r0, r0, r3, ror #25
20025f90:	4401      	add	r1, r0
20025f92:	ea4f 3074 	mov.w	r0, r4, ror #13
20025f96:	ea80 00b4 	eor.w	r0, r0, r4, ror #2
20025f9a:	ea80 50b4 	eor.w	r0, r0, r4, ror #22
20025f9e:	eb06 0e01 	add.w	lr, r6, r1
20025fa2:	4408      	add	r0, r1
20025fa4:	ea48 0104 	orr.w	r1, r8, r4
20025fa8:	ea08 0604 	and.w	r6, r8, r4
20025fac:	ea01 0109 	and.w	r1, r1, r9
20025fb0:	4331      	orrs	r1, r6
20025fb2:	4408      	add	r0, r1
20025fb4:	f8dc 600c 	ldr.w	r6, [ip, #12]
20025fb8:	68e9      	ldr	r1, [r5, #12]
20025fba:	ea07 070e 	and.w	r7, r7, lr
20025fbe:	440e      	add	r6, r1
20025fc0:	ea4f 21fe 	mov.w	r1, lr, ror #11
20025fc4:	4057      	eors	r7, r2
20025fc6:	445e      	add	r6, fp
20025fc8:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20025fcc:	ea81 617e 	eor.w	r1, r1, lr, ror #25
20025fd0:	443e      	add	r6, r7
20025fd2:	440e      	add	r6, r1
20025fd4:	ea4f 3170 	mov.w	r1, r0, ror #13
20025fd8:	ea81 01b0 	eor.w	r1, r1, r0, ror #2
20025fdc:	ea81 51b0 	eor.w	r1, r1, r0, ror #22
20025fe0:	44b1      	add	r9, r6
20025fe2:	4431      	add	r1, r6
20025fe4:	ea44 0600 	orr.w	r6, r4, r0
20025fe8:	ea04 0700 	and.w	r7, r4, r0
20025fec:	ea06 0608 	and.w	r6, r6, r8
20025ff0:	433e      	orrs	r6, r7
20025ff2:	4431      	add	r1, r6
20025ff4:	f8dc 7010 	ldr.w	r7, [ip, #16]
20025ff8:	692e      	ldr	r6, [r5, #16]
20025ffa:	3520      	adds	r5, #32
20025ffc:	443e      	add	r6, r7
20025ffe:	4416      	add	r6, r2
20026000:	ea83 020e 	eor.w	r2, r3, lr
20026004:	ea02 0209 	and.w	r2, r2, r9
20026008:	405a      	eors	r2, r3
2002600a:	4416      	add	r6, r2
2002600c:	ea4f 22f9 	mov.w	r2, r9, ror #11
20026010:	ea82 12b9 	eor.w	r2, r2, r9, ror #6
20026014:	ea82 6279 	eor.w	r2, r2, r9, ror #25
20026018:	4416      	add	r6, r2
2002601a:	ea4f 3271 	mov.w	r2, r1, ror #13
2002601e:	ea82 02b1 	eor.w	r2, r2, r1, ror #2
20026022:	ea82 52b1 	eor.w	r2, r2, r1, ror #22
20026026:	44b0      	add	r8, r6
20026028:	4432      	add	r2, r6
2002602a:	ea40 0601 	orr.w	r6, r0, r1
2002602e:	ea00 0701 	and.w	r7, r0, r1
20026032:	4026      	ands	r6, r4
20026034:	433e      	orrs	r6, r7
20026036:	4432      	add	r2, r6
20026038:	f8dc 7014 	ldr.w	r7, [ip, #20]
2002603c:	f855 6c0c 	ldr.w	r6, [r5, #-12]
20026040:	f10c 0c20 	add.w	ip, ip, #32
20026044:	443e      	add	r6, r7
20026046:	441e      	add	r6, r3
20026048:	ea8e 0309 	eor.w	r3, lr, r9
2002604c:	ea03 0308 	and.w	r3, r3, r8
20026050:	ea83 030e 	eor.w	r3, r3, lr
20026054:	441e      	add	r6, r3
20026056:	ea4f 23f8 	mov.w	r3, r8, ror #11
2002605a:	ea83 13b8 	eor.w	r3, r3, r8, ror #6
2002605e:	ea83 6378 	eor.w	r3, r3, r8, ror #25
20026062:	441e      	add	r6, r3
20026064:	ea4f 3372 	mov.w	r3, r2, ror #13
20026068:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
2002606c:	19a7      	adds	r7, r4, r6
2002606e:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
20026072:	ea41 0402 	orr.w	r4, r1, r2
20026076:	4433      	add	r3, r6
20026078:	4004      	ands	r4, r0
2002607a:	ea01 0602 	and.w	r6, r1, r2
2002607e:	4334      	orrs	r4, r6
20026080:	4423      	add	r3, r4
20026082:	f85c 6c08 	ldr.w	r6, [ip, #-8]
20026086:	f855 4c08 	ldr.w	r4, [r5, #-8]
2002608a:	4434      	add	r4, r6
2002608c:	ea89 0608 	eor.w	r6, r9, r8
20026090:	403e      	ands	r6, r7
20026092:	ea86 0609 	eor.w	r6, r6, r9
20026096:	4474      	add	r4, lr
20026098:	4434      	add	r4, r6
2002609a:	ea4f 26f7 	mov.w	r6, r7, ror #11
2002609e:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
200260a2:	ea86 6677 	eor.w	r6, r6, r7, ror #25
200260a6:	4434      	add	r4, r6
200260a8:	eb00 0e04 	add.w	lr, r0, r4
200260ac:	ea4f 3073 	mov.w	r0, r3, ror #13
200260b0:	ea80 00b3 	eor.w	r0, r0, r3, ror #2
200260b4:	ea80 50b3 	eor.w	r0, r0, r3, ror #22
200260b8:	4420      	add	r0, r4
200260ba:	ea42 0403 	orr.w	r4, r2, r3
200260be:	400c      	ands	r4, r1
200260c0:	ea02 0603 	and.w	r6, r2, r3
200260c4:	4334      	orrs	r4, r6
200260c6:	1906      	adds	r6, r0, r4
200260c8:	f855 0c04 	ldr.w	r0, [r5, #-4]
200260cc:	f85c 4c04 	ldr.w	r4, [ip, #-4]
200260d0:	4420      	add	r0, r4
200260d2:	ea88 0407 	eor.w	r4, r8, r7
200260d6:	ea04 040e 	and.w	r4, r4, lr
200260da:	4448      	add	r0, r9
200260dc:	ea84 0408 	eor.w	r4, r4, r8
200260e0:	4420      	add	r0, r4
200260e2:	ea4f 24fe 	mov.w	r4, lr, ror #11
200260e6:	ea84 14be 	eor.w	r4, r4, lr, ror #6
200260ea:	ea84 647e 	eor.w	r4, r4, lr, ror #25
200260ee:	4420      	add	r0, r4
200260f0:	eb01 0b00 	add.w	fp, r1, r0
200260f4:	ea4f 3176 	mov.w	r1, r6, ror #13
200260f8:	ea81 01b6 	eor.w	r1, r1, r6, ror #2
200260fc:	ea81 51b6 	eor.w	r1, r1, r6, ror #22
20026100:	4401      	add	r1, r0
20026102:	ea43 0006 	orr.w	r0, r3, r6
20026106:	4010      	ands	r0, r2
20026108:	ea03 0406 	and.w	r4, r3, r6
2002610c:	4320      	orrs	r0, r4
2002610e:	eb01 0900 	add.w	r9, r1, r0
20026112:	4905      	ldr	r1, [pc, #20]	@ (20026128 <mbedtls_sha256_process+0x2b0>)
20026114:	42a9      	cmp	r1, r5
20026116:	f47f aee6 	bne.w	20025ee6 <mbedtls_sha256_process+0x6e>
2002611a:	f10a 01c0 	add.w	r1, sl, #192	@ 0xc0
2002611e:	9105      	str	r1, [sp, #20]
20026120:	e004      	b.n	2002612c <mbedtls_sha256_process+0x2b4>
20026122:	bf00      	nop
20026124:	2002bc18 	.word	0x2002bc18
20026128:	2002bc58 	.word	0x2002bc58
2002612c:	f8da 1038 	ldr.w	r1, [sl, #56]	@ 0x38
20026130:	f8da 5004 	ldr.w	r5, [sl, #4]
20026134:	ea4f 44f1 	mov.w	r4, r1, ror #19
20026138:	ea84 4471 	eor.w	r4, r4, r1, ror #17
2002613c:	f8da 0000 	ldr.w	r0, [sl]
20026140:	ea84 2491 	eor.w	r4, r4, r1, lsr #10
20026144:	f8da 1024 	ldr.w	r1, [sl, #36]	@ 0x24
20026148:	f10a 0a20 	add.w	sl, sl, #32
2002614c:	4401      	add	r1, r0
2002614e:	ea4f 40b5 	mov.w	r0, r5, ror #18
20026152:	ea80 10f5 	eor.w	r0, r0, r5, ror #7
20026156:	ea80 00d5 	eor.w	r0, r0, r5, lsr #3
2002615a:	4421      	add	r1, r4
2002615c:	4401      	add	r1, r0
2002615e:	9103      	str	r1, [sp, #12]
20026160:	ea87 000e 	eor.w	r0, r7, lr
20026164:	9900      	ldr	r1, [sp, #0]
20026166:	ea4f 24fb 	mov.w	r4, fp, ror #11
2002616a:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
2002616e:	ea00 000b 	and.w	r0, r0, fp
20026172:	ea84 647b 	eor.w	r4, r4, fp, ror #25
20026176:	6c09      	ldr	r1, [r1, #64]	@ 0x40
20026178:	4078      	eors	r0, r7
2002617a:	4420      	add	r0, r4
2002617c:	4401      	add	r1, r0
2002617e:	9803      	ldr	r0, [sp, #12]
20026180:	ea4f 3479 	mov.w	r4, r9, ror #13
20026184:	4401      	add	r1, r0
20026186:	4441      	add	r1, r8
20026188:	eb02 0801 	add.w	r8, r2, r1
2002618c:	ea49 0206 	orr.w	r2, r9, r6
20026190:	f8ca 0020 	str.w	r0, [sl, #32]
20026194:	ea84 04b9 	eor.w	r4, r4, r9, ror #2
20026198:	ea09 0006 	and.w	r0, r9, r6
2002619c:	401a      	ands	r2, r3
2002619e:	4302      	orrs	r2, r0
200261a0:	ea84 54b9 	eor.w	r4, r4, r9, ror #22
200261a4:	4414      	add	r4, r2
200261a6:	f8da 201c 	ldr.w	r2, [sl, #28]
200261aa:	440c      	add	r4, r1
200261ac:	ea4f 4cf2 	mov.w	ip, r2, ror #19
200261b0:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
200261b4:	f85a 1c18 	ldr.w	r1, [sl, #-24]
200261b8:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
200261bc:	f8da 2008 	ldr.w	r2, [sl, #8]
200261c0:	18a8      	adds	r0, r5, r2
200261c2:	ea4f 42b1 	mov.w	r2, r1, ror #18
200261c6:	ea82 12f1 	eor.w	r2, r2, r1, ror #7
200261ca:	ea82 02d1 	eor.w	r2, r2, r1, lsr #3
200261ce:	4460      	add	r0, ip
200261d0:	4410      	add	r0, r2
200261d2:	9a00      	ldr	r2, [sp, #0]
200261d4:	ea8b 050e 	eor.w	r5, fp, lr
200261d8:	6c52      	ldr	r2, [r2, #68]	@ 0x44
200261da:	ea05 0508 	and.w	r5, r5, r8
200261de:	443a      	add	r2, r7
200261e0:	4402      	add	r2, r0
200261e2:	ea85 050e 	eor.w	r5, r5, lr
200261e6:	4415      	add	r5, r2
200261e8:	ea4f 22f8 	mov.w	r2, r8, ror #11
200261ec:	ea82 12b8 	eor.w	r2, r2, r8, ror #6
200261f0:	ea82 6278 	eor.w	r2, r2, r8, ror #25
200261f4:	442a      	add	r2, r5
200261f6:	4413      	add	r3, r2
200261f8:	9301      	str	r3, [sp, #4]
200261fa:	ea49 0504 	orr.w	r5, r9, r4
200261fe:	ea4f 3374 	mov.w	r3, r4, ror #13
20026202:	ea09 0704 	and.w	r7, r9, r4
20026206:	ea83 03b4 	eor.w	r3, r3, r4, ror #2
2002620a:	4035      	ands	r5, r6
2002620c:	433d      	orrs	r5, r7
2002620e:	ea83 53b4 	eor.w	r3, r3, r4, ror #22
20026212:	442b      	add	r3, r5
20026214:	4413      	add	r3, r2
20026216:	9a03      	ldr	r2, [sp, #12]
20026218:	f85a 5c14 	ldr.w	r5, [sl, #-20]
2002621c:	ea4f 4cf2 	mov.w	ip, r2, ror #19
20026220:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
20026224:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
20026228:	f8da 200c 	ldr.w	r2, [sl, #12]
2002622c:	f8ca 0024 	str.w	r0, [sl, #36]	@ 0x24
20026230:	188f      	adds	r7, r1, r2
20026232:	ea4f 42b5 	mov.w	r2, r5, ror #18
20026236:	ea82 12f5 	eor.w	r2, r2, r5, ror #7
2002623a:	ea82 02d5 	eor.w	r2, r2, r5, lsr #3
2002623e:	4467      	add	r7, ip
20026240:	4417      	add	r7, r2
20026242:	9a01      	ldr	r2, [sp, #4]
20026244:	ea8b 0108 	eor.w	r1, fp, r8
20026248:	4011      	ands	r1, r2
2002624a:	9a00      	ldr	r2, [sp, #0]
2002624c:	ea81 010b 	eor.w	r1, r1, fp
20026250:	6c92      	ldr	r2, [r2, #72]	@ 0x48
20026252:	f8ca 7028 	str.w	r7, [sl, #40]	@ 0x28
20026256:	4472      	add	r2, lr
20026258:	443a      	add	r2, r7
2002625a:	eb01 0c02 	add.w	ip, r1, r2
2002625e:	9a01      	ldr	r2, [sp, #4]
20026260:	9901      	ldr	r1, [sp, #4]
20026262:	ea4f 22f2 	mov.w	r2, r2, ror #11
20026266:	ea82 12b1 	eor.w	r2, r2, r1, ror #6
2002626a:	ea82 6271 	eor.w	r2, r2, r1, ror #25
2002626e:	4462      	add	r2, ip
20026270:	18b1      	adds	r1, r6, r2
20026272:	9102      	str	r1, [sp, #8]
20026274:	ea44 0603 	orr.w	r6, r4, r3
20026278:	ea4f 3173 	mov.w	r1, r3, ror #13
2002627c:	ea04 0c03 	and.w	ip, r4, r3
20026280:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
20026284:	ea06 0609 	and.w	r6, r6, r9
20026288:	ea46 060c 	orr.w	r6, r6, ip
2002628c:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
20026290:	4431      	add	r1, r6
20026292:	4411      	add	r1, r2
20026294:	ea4f 42f0 	mov.w	r2, r0, ror #19
20026298:	ea82 4270 	eor.w	r2, r2, r0, ror #17
2002629c:	f85a 6c10 	ldr.w	r6, [sl, #-16]
200262a0:	ea82 2090 	eor.w	r0, r2, r0, lsr #10
200262a4:	f8da 2010 	ldr.w	r2, [sl, #16]
200262a8:	ea03 0e01 	and.w	lr, r3, r1
200262ac:	4415      	add	r5, r2
200262ae:	ea4f 42b6 	mov.w	r2, r6, ror #18
200262b2:	ea82 12f6 	eor.w	r2, r2, r6, ror #7
200262b6:	ea82 02d6 	eor.w	r2, r2, r6, lsr #3
200262ba:	4405      	add	r5, r0
200262bc:	4415      	add	r5, r2
200262be:	9a01      	ldr	r2, [sp, #4]
200262c0:	ea88 0002 	eor.w	r0, r8, r2
200262c4:	9a02      	ldr	r2, [sp, #8]
200262c6:	4010      	ands	r0, r2
200262c8:	9a00      	ldr	r2, [sp, #0]
200262ca:	ea80 0008 	eor.w	r0, r0, r8
200262ce:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
200262d0:	f8ca 502c 	str.w	r5, [sl, #44]	@ 0x2c
200262d4:	445a      	add	r2, fp
200262d6:	442a      	add	r2, r5
200262d8:	eb00 0c02 	add.w	ip, r0, r2
200262dc:	9a02      	ldr	r2, [sp, #8]
200262de:	9802      	ldr	r0, [sp, #8]
200262e0:	ea4f 22f2 	mov.w	r2, r2, ror #11
200262e4:	ea82 12b0 	eor.w	r2, r2, r0, ror #6
200262e8:	ea82 6270 	eor.w	r2, r2, r0, ror #25
200262ec:	4462      	add	r2, ip
200262ee:	ea4f 3071 	mov.w	r0, r1, ror #13
200262f2:	ea43 0c01 	orr.w	ip, r3, r1
200262f6:	ea80 00b1 	eor.w	r0, r0, r1, ror #2
200262fa:	ea0c 0c04 	and.w	ip, ip, r4
200262fe:	ea4c 0c0e 	orr.w	ip, ip, lr
20026302:	ea80 50b1 	eor.w	r0, r0, r1, ror #22
20026306:	4460      	add	r0, ip
20026308:	4410      	add	r0, r2
2002630a:	4491      	add	r9, r2
2002630c:	ea4f 42f7 	mov.w	r2, r7, ror #19
20026310:	ea82 4277 	eor.w	r2, r2, r7, ror #17
20026314:	f85a cc0c 	ldr.w	ip, [sl, #-12]
20026318:	ea82 2797 	eor.w	r7, r2, r7, lsr #10
2002631c:	f8da 2014 	ldr.w	r2, [sl, #20]
20026320:	ea01 0e00 	and.w	lr, r1, r0
20026324:	4416      	add	r6, r2
20026326:	ea4f 42bc 	mov.w	r2, ip, ror #18
2002632a:	ea82 12fc 	eor.w	r2, r2, ip, ror #7
2002632e:	ea82 02dc 	eor.w	r2, r2, ip, lsr #3
20026332:	443e      	add	r6, r7
20026334:	4416      	add	r6, r2
20026336:	e9dd 2701 	ldrd	r2, r7, [sp, #4]
2002633a:	4057      	eors	r7, r2
2002633c:	ea07 0709 	and.w	r7, r7, r9
20026340:	4057      	eors	r7, r2
20026342:	9a00      	ldr	r2, [sp, #0]
20026344:	f8ca 6030 	str.w	r6, [sl, #48]	@ 0x30
20026348:	6d12      	ldr	r2, [r2, #80]	@ 0x50
2002634a:	4432      	add	r2, r6
2002634c:	4442      	add	r2, r8
2002634e:	443a      	add	r2, r7
20026350:	ea4f 27f9 	mov.w	r7, r9, ror #11
20026354:	ea87 17b9 	eor.w	r7, r7, r9, ror #6
20026358:	ea87 6779 	eor.w	r7, r7, r9, ror #25
2002635c:	4417      	add	r7, r2
2002635e:	eb04 0807 	add.w	r8, r4, r7
20026362:	ea4f 3270 	mov.w	r2, r0, ror #13
20026366:	ea41 0400 	orr.w	r4, r1, r0
2002636a:	ea82 02b0 	eor.w	r2, r2, r0, ror #2
2002636e:	401c      	ands	r4, r3
20026370:	ea44 040e 	orr.w	r4, r4, lr
20026374:	ea82 52b0 	eor.w	r2, r2, r0, ror #22
20026378:	4422      	add	r2, r4
2002637a:	ea4f 44f5 	mov.w	r4, r5, ror #19
2002637e:	ea84 4475 	eor.w	r4, r4, r5, ror #17
20026382:	ea84 2495 	eor.w	r4, r4, r5, lsr #10
20026386:	f8da 5018 	ldr.w	r5, [sl, #24]
2002638a:	f85a ec08 	ldr.w	lr, [sl, #-8]
2002638e:	4465      	add	r5, ip
20026390:	4425      	add	r5, r4
20026392:	ea4f 44be 	mov.w	r4, lr, ror #18
20026396:	ea84 14fe 	eor.w	r4, r4, lr, ror #7
2002639a:	ea84 04de 	eor.w	r4, r4, lr, lsr #3
2002639e:	4425      	add	r5, r4
200263a0:	9c02      	ldr	r4, [sp, #8]
200263a2:	443a      	add	r2, r7
200263a4:	ea84 0709 	eor.w	r7, r4, r9
200263a8:	ea07 0708 	and.w	r7, r7, r8
200263ac:	ea87 0c04 	eor.w	ip, r7, r4
200263b0:	9c00      	ldr	r4, [sp, #0]
200263b2:	9f01      	ldr	r7, [sp, #4]
200263b4:	6d64      	ldr	r4, [r4, #84]	@ 0x54
200263b6:	ea00 0b02 	and.w	fp, r0, r2
200263ba:	442c      	add	r4, r5
200263bc:	443c      	add	r4, r7
200263be:	eb0c 0704 	add.w	r7, ip, r4
200263c2:	ea4f 24f8 	mov.w	r4, r8, ror #11
200263c6:	ea84 14b8 	eor.w	r4, r4, r8, ror #6
200263ca:	ea84 6478 	eor.w	r4, r4, r8, ror #25
200263ce:	443c      	add	r4, r7
200263d0:	191f      	adds	r7, r3, r4
200263d2:	ea40 0c02 	orr.w	ip, r0, r2
200263d6:	ea4f 3372 	mov.w	r3, r2, ror #13
200263da:	ea0c 0c01 	and.w	ip, ip, r1
200263de:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
200263e2:	ea4c 0c0b 	orr.w	ip, ip, fp
200263e6:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
200263ea:	4463      	add	r3, ip
200263ec:	4423      	add	r3, r4
200263ee:	ea4f 44f6 	mov.w	r4, r6, ror #19
200263f2:	ea84 4476 	eor.w	r4, r4, r6, ror #17
200263f6:	ea84 2496 	eor.w	r4, r4, r6, lsr #10
200263fa:	f8da 601c 	ldr.w	r6, [sl, #28]
200263fe:	f85a cc04 	ldr.w	ip, [sl, #-4]
20026402:	4476      	add	r6, lr
20026404:	4426      	add	r6, r4
20026406:	ea4f 44bc 	mov.w	r4, ip, ror #18
2002640a:	ea84 14fc 	eor.w	r4, r4, ip, ror #7
2002640e:	ea84 04dc 	eor.w	r4, r4, ip, lsr #3
20026412:	eb06 0b04 	add.w	fp, r6, r4
20026416:	9c00      	ldr	r4, [sp, #0]
20026418:	9e02      	ldr	r6, [sp, #8]
2002641a:	6da4      	ldr	r4, [r4, #88]	@ 0x58
2002641c:	ea89 0e08 	eor.w	lr, r9, r8
20026420:	445c      	add	r4, fp
20026422:	4434      	add	r4, r6
20026424:	ea0e 0e07 	and.w	lr, lr, r7
20026428:	ea4f 26f7 	mov.w	r6, r7, ror #11
2002642c:	ea8e 0e09 	eor.w	lr, lr, r9
20026430:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
20026434:	4474      	add	r4, lr
20026436:	ea86 6677 	eor.w	r6, r6, r7, ror #25
2002643a:	4434      	add	r4, r6
2002643c:	eb01 0e04 	add.w	lr, r1, r4
20026440:	ea42 0603 	orr.w	r6, r2, r3
20026444:	ea4f 3173 	mov.w	r1, r3, ror #13
20026448:	f8ca b038 	str.w	fp, [sl, #56]	@ 0x38
2002644c:	4006      	ands	r6, r0
2002644e:	ea02 0b03 	and.w	fp, r2, r3
20026452:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
20026456:	ea46 060b 	orr.w	r6, r6, fp
2002645a:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
2002645e:	4431      	add	r1, r6
20026460:	190e      	adds	r6, r1, r4
20026462:	ea4f 41f5 	mov.w	r1, r5, ror #19
20026466:	ea81 4175 	eor.w	r1, r1, r5, ror #17
2002646a:	f8ca 5034 	str.w	r5, [sl, #52]	@ 0x34
2002646e:	ea81 2195 	eor.w	r1, r1, r5, lsr #10
20026472:	9d03      	ldr	r5, [sp, #12]
20026474:	f8da 4000 	ldr.w	r4, [sl]
20026478:	4465      	add	r5, ip
2002647a:	4429      	add	r1, r5
2002647c:	ea4f 45b4 	mov.w	r5, r4, ror #18
20026480:	ea85 15f4 	eor.w	r5, r5, r4, ror #7
20026484:	ea85 05d4 	eor.w	r5, r5, r4, lsr #3
20026488:	194c      	adds	r4, r1, r5
2002648a:	9900      	ldr	r1, [sp, #0]
2002648c:	ea88 0507 	eor.w	r5, r8, r7
20026490:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
20026492:	ea05 050e 	and.w	r5, r5, lr
20026496:	4421      	add	r1, r4
20026498:	4449      	add	r1, r9
2002649a:	ea85 0508 	eor.w	r5, r5, r8
2002649e:	440d      	add	r5, r1
200264a0:	ea4f 21fe 	mov.w	r1, lr, ror #11
200264a4:	ea81 11be 	eor.w	r1, r1, lr, ror #6
200264a8:	ea81 617e 	eor.w	r1, r1, lr, ror #25
200264ac:	4429      	add	r1, r5
200264ae:	f8ca 403c 	str.w	r4, [sl, #60]	@ 0x3c
200264b2:	eb00 0b01 	add.w	fp, r0, r1
200264b6:	ea43 0406 	orr.w	r4, r3, r6
200264ba:	ea4f 3076 	mov.w	r0, r6, ror #13
200264be:	ea80 00b6 	eor.w	r0, r0, r6, ror #2
200264c2:	4014      	ands	r4, r2
200264c4:	ea03 0506 	and.w	r5, r3, r6
200264c8:	ea80 50b6 	eor.w	r0, r0, r6, ror #22
200264cc:	432c      	orrs	r4, r5
200264ce:	4420      	add	r0, r4
200264d0:	eb00 0901 	add.w	r9, r0, r1
200264d4:	9900      	ldr	r1, [sp, #0]
200264d6:	3120      	adds	r1, #32
200264d8:	9100      	str	r1, [sp, #0]
200264da:	9905      	ldr	r1, [sp, #20]
200264dc:	4551      	cmp	r1, sl
200264de:	f47f ae25 	bne.w	2002612c <mbedtls_sha256_process+0x2b4>
200264e2:	9308      	str	r3, [sp, #32]
200264e4:	9b04      	ldr	r3, [sp, #16]
200264e6:	a906      	add	r1, sp, #24
200264e8:	60ca      	str	r2, [r1, #12]
200264ea:	f8c1 801c 	str.w	r8, [r1, #28]
200264ee:	1d1a      	adds	r2, r3, #4
200264f0:	618f      	str	r7, [r1, #24]
200264f2:	3324      	adds	r3, #36	@ 0x24
200264f4:	f8c1 e014 	str.w	lr, [r1, #20]
200264f8:	604e      	str	r6, [r1, #4]
200264fa:	f8c1 b010 	str.w	fp, [r1, #16]
200264fe:	f8c1 9000 	str.w	r9, [r1]
20026502:	f852 0f04 	ldr.w	r0, [r2, #4]!
20026506:	f851 4b04 	ldr.w	r4, [r1], #4
2002650a:	4293      	cmp	r3, r2
2002650c:	4420      	add	r0, r4
2002650e:	6010      	str	r0, [r2, #0]
20026510:	d1f7      	bne.n	20026502 <mbedtls_sha256_process+0x68a>
20026512:	b04f      	add	sp, #316	@ 0x13c
20026514:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

20026518 <mbedtls_sha256_update.part.0>:
20026518:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002651c:	6803      	ldr	r3, [r0, #0]
2002651e:	4605      	mov	r5, r0
20026520:	f003 073f 	and.w	r7, r3, #63	@ 0x3f
20026524:	189b      	adds	r3, r3, r2
20026526:	6003      	str	r3, [r0, #0]
20026528:	bf28      	it	cs
2002652a:	6843      	ldrcs	r3, [r0, #4]
2002652c:	460e      	mov	r6, r1
2002652e:	bf28      	it	cs
20026530:	3301      	addcs	r3, #1
20026532:	4614      	mov	r4, r2
20026534:	bf28      	it	cs
20026536:	6043      	strcs	r3, [r0, #4]
20026538:	b197      	cbz	r7, 20026560 <mbedtls_sha256_update.part.0+0x48>
2002653a:	f1c7 0940 	rsb	r9, r7, #64	@ 0x40
2002653e:	4591      	cmp	r9, r2
20026540:	d80e      	bhi.n	20026560 <mbedtls_sha256_update.part.0+0x48>
20026542:	f100 0828 	add.w	r8, r0, #40	@ 0x28
20026546:	464a      	mov	r2, r9
20026548:	eb08 0007 	add.w	r0, r8, r7
2002654c:	f004 f8f8 	bl	2002a740 <memcpy>
20026550:	3c40      	subs	r4, #64	@ 0x40
20026552:	4641      	mov	r1, r8
20026554:	4628      	mov	r0, r5
20026556:	443c      	add	r4, r7
20026558:	f7ff fc8e 	bl	20025e78 <mbedtls_sha256_process>
2002655c:	2700      	movs	r7, #0
2002655e:	444e      	add	r6, r9
20026560:	46a0      	mov	r8, r4
20026562:	eb04 0906 	add.w	r9, r4, r6
20026566:	e004      	b.n	20026572 <mbedtls_sha256_update.part.0+0x5a>
20026568:	4628      	mov	r0, r5
2002656a:	f7ff fc85 	bl	20025e78 <mbedtls_sha256_process>
2002656e:	f1a8 0840 	sub.w	r8, r8, #64	@ 0x40
20026572:	f1b8 0f3f 	cmp.w	r8, #63	@ 0x3f
20026576:	eba9 0108 	sub.w	r1, r9, r8
2002657a:	d8f5      	bhi.n	20026568 <mbedtls_sha256_update.part.0+0x50>
2002657c:	f06f 033f 	mvn.w	r3, #63	@ 0x3f
20026580:	09a1      	lsrs	r1, r4, #6
20026582:	4359      	muls	r1, r3
20026584:	1862      	adds	r2, r4, r1
20026586:	d007      	beq.n	20026598 <mbedtls_sha256_update.part.0+0x80>
20026588:	f105 0028 	add.w	r0, r5, #40	@ 0x28
2002658c:	1a71      	subs	r1, r6, r1
2002658e:	4438      	add	r0, r7
20026590:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20026594:	f004 b8d4 	b.w	2002a740 <memcpy>
20026598:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

2002659c <mbedtls_sha256_update>:
2002659c:	b10a      	cbz	r2, 200265a2 <mbedtls_sha256_update+0x6>
2002659e:	f7ff bfbb 	b.w	20026518 <mbedtls_sha256_update.part.0>
200265a2:	4770      	bx	lr

200265a4 <mbedtls_sha256_finish>:
200265a4:	b537      	push	{r0, r1, r2, r4, r5, lr}
200265a6:	4604      	mov	r4, r0
200265a8:	460d      	mov	r5, r1
200265aa:	e9d0 2100 	ldrd	r2, r1, [r0]
200265ae:	0f53      	lsrs	r3, r2, #29
200265b0:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
200265b4:	ba1b      	rev	r3, r3
200265b6:	9300      	str	r3, [sp, #0]
200265b8:	00d3      	lsls	r3, r2, #3
200265ba:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
200265be:	2a37      	cmp	r2, #55	@ 0x37
200265c0:	ba1b      	rev	r3, r3
200265c2:	bf94      	ite	ls
200265c4:	f1c2 0238 	rsbls	r2, r2, #56	@ 0x38
200265c8:	f1c2 0278 	rsbhi	r2, r2, #120	@ 0x78
200265cc:	492b      	ldr	r1, [pc, #172]	@ (2002667c <mbedtls_sha256_finish+0xd8>)
200265ce:	9301      	str	r3, [sp, #4]
200265d0:	f7ff ffe4 	bl	2002659c <mbedtls_sha256_update>
200265d4:	2208      	movs	r2, #8
200265d6:	4669      	mov	r1, sp
200265d8:	4620      	mov	r0, r4
200265da:	f7ff ff9d 	bl	20026518 <mbedtls_sha256_update.part.0>
200265de:	7ae3      	ldrb	r3, [r4, #11]
200265e0:	702b      	strb	r3, [r5, #0]
200265e2:	8963      	ldrh	r3, [r4, #10]
200265e4:	706b      	strb	r3, [r5, #1]
200265e6:	68a3      	ldr	r3, [r4, #8]
200265e8:	0a1b      	lsrs	r3, r3, #8
200265ea:	70ab      	strb	r3, [r5, #2]
200265ec:	68a3      	ldr	r3, [r4, #8]
200265ee:	70eb      	strb	r3, [r5, #3]
200265f0:	7be3      	ldrb	r3, [r4, #15]
200265f2:	712b      	strb	r3, [r5, #4]
200265f4:	89e3      	ldrh	r3, [r4, #14]
200265f6:	716b      	strb	r3, [r5, #5]
200265f8:	68e3      	ldr	r3, [r4, #12]
200265fa:	0a1b      	lsrs	r3, r3, #8
200265fc:	71ab      	strb	r3, [r5, #6]
200265fe:	68e3      	ldr	r3, [r4, #12]
20026600:	71eb      	strb	r3, [r5, #7]
20026602:	7ce3      	ldrb	r3, [r4, #19]
20026604:	722b      	strb	r3, [r5, #8]
20026606:	8a63      	ldrh	r3, [r4, #18]
20026608:	726b      	strb	r3, [r5, #9]
2002660a:	6923      	ldr	r3, [r4, #16]
2002660c:	0a1b      	lsrs	r3, r3, #8
2002660e:	72ab      	strb	r3, [r5, #10]
20026610:	6923      	ldr	r3, [r4, #16]
20026612:	72eb      	strb	r3, [r5, #11]
20026614:	7de3      	ldrb	r3, [r4, #23]
20026616:	732b      	strb	r3, [r5, #12]
20026618:	8ae3      	ldrh	r3, [r4, #22]
2002661a:	736b      	strb	r3, [r5, #13]
2002661c:	6963      	ldr	r3, [r4, #20]
2002661e:	0a1b      	lsrs	r3, r3, #8
20026620:	73ab      	strb	r3, [r5, #14]
20026622:	6963      	ldr	r3, [r4, #20]
20026624:	73eb      	strb	r3, [r5, #15]
20026626:	7ee3      	ldrb	r3, [r4, #27]
20026628:	742b      	strb	r3, [r5, #16]
2002662a:	8b63      	ldrh	r3, [r4, #26]
2002662c:	746b      	strb	r3, [r5, #17]
2002662e:	69a3      	ldr	r3, [r4, #24]
20026630:	0a1b      	lsrs	r3, r3, #8
20026632:	74ab      	strb	r3, [r5, #18]
20026634:	69a3      	ldr	r3, [r4, #24]
20026636:	74eb      	strb	r3, [r5, #19]
20026638:	7fe3      	ldrb	r3, [r4, #31]
2002663a:	752b      	strb	r3, [r5, #20]
2002663c:	8be3      	ldrh	r3, [r4, #30]
2002663e:	756b      	strb	r3, [r5, #21]
20026640:	69e3      	ldr	r3, [r4, #28]
20026642:	0a1b      	lsrs	r3, r3, #8
20026644:	75ab      	strb	r3, [r5, #22]
20026646:	69e3      	ldr	r3, [r4, #28]
20026648:	75eb      	strb	r3, [r5, #23]
2002664a:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
2002664e:	762b      	strb	r3, [r5, #24]
20026650:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
20026652:	766b      	strb	r3, [r5, #25]
20026654:	6a23      	ldr	r3, [r4, #32]
20026656:	0a1b      	lsrs	r3, r3, #8
20026658:	76ab      	strb	r3, [r5, #26]
2002665a:	6a23      	ldr	r3, [r4, #32]
2002665c:	76eb      	strb	r3, [r5, #27]
2002665e:	6ea3      	ldr	r3, [r4, #104]	@ 0x68
20026660:	b94b      	cbnz	r3, 20026676 <mbedtls_sha256_finish+0xd2>
20026662:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20026666:	772b      	strb	r3, [r5, #28]
20026668:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
2002666a:	776b      	strb	r3, [r5, #29]
2002666c:	6a63      	ldr	r3, [r4, #36]	@ 0x24
2002666e:	0a1b      	lsrs	r3, r3, #8
20026670:	77ab      	strb	r3, [r5, #30]
20026672:	6a63      	ldr	r3, [r4, #36]	@ 0x24
20026674:	77eb      	strb	r3, [r5, #31]
20026676:	b003      	add	sp, #12
20026678:	bd30      	pop	{r4, r5, pc}
2002667a:	bf00      	nop
2002667c:	2002bbd8 	.word	0x2002bbd8

20026680 <mbedtls_sha256>:
20026680:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20026684:	461d      	mov	r5, r3
20026686:	b09c      	sub	sp, #112	@ 0x70
20026688:	4607      	mov	r7, r0
2002668a:	a801      	add	r0, sp, #4
2002668c:	4688      	mov	r8, r1
2002668e:	4616      	mov	r6, r2
20026690:	f7ff fb97 	bl	20025dc2 <mbedtls_sha256_init>
20026694:	b355      	cbz	r5, 200266ec <mbedtls_sha256+0x6c>
20026696:	f8df a090 	ldr.w	sl, [pc, #144]	@ 20026728 <mbedtls_sha256+0xa8>
2002669a:	f8df 9090 	ldr.w	r9, [pc, #144]	@ 2002672c <mbedtls_sha256+0xac>
2002669e:	f8df e090 	ldr.w	lr, [pc, #144]	@ 20026730 <mbedtls_sha256+0xb0>
200266a2:	f8df c090 	ldr.w	ip, [pc, #144]	@ 20026734 <mbedtls_sha256+0xb4>
200266a6:	4818      	ldr	r0, [pc, #96]	@ (20026708 <mbedtls_sha256+0x88>)
200266a8:	4918      	ldr	r1, [pc, #96]	@ (2002670c <mbedtls_sha256+0x8c>)
200266aa:	4a19      	ldr	r2, [pc, #100]	@ (20026710 <mbedtls_sha256+0x90>)
200266ac:	4b19      	ldr	r3, [pc, #100]	@ (20026714 <mbedtls_sha256+0x94>)
200266ae:	2400      	movs	r4, #0
200266b0:	e9cd 2309 	strd	r2, r3, [sp, #36]	@ 0x24
200266b4:	e9cd 0107 	strd	r0, r1, [sp, #28]
200266b8:	4642      	mov	r2, r8
200266ba:	4639      	mov	r1, r7
200266bc:	a801      	add	r0, sp, #4
200266be:	e9cd ec05 	strd	lr, ip, [sp, #20]
200266c2:	e9cd 4401 	strd	r4, r4, [sp, #4]
200266c6:	e9cd a903 	strd	sl, r9, [sp, #12]
200266ca:	951b      	str	r5, [sp, #108]	@ 0x6c
200266cc:	f7ff ff66 	bl	2002659c <mbedtls_sha256_update>
200266d0:	4631      	mov	r1, r6
200266d2:	a801      	add	r0, sp, #4
200266d4:	f7ff ff66 	bl	200265a4 <mbedtls_sha256_finish>
200266d8:	4623      	mov	r3, r4
200266da:	4622      	mov	r2, r4
200266dc:	a901      	add	r1, sp, #4
200266de:	54ca      	strb	r2, [r1, r3]
200266e0:	3301      	adds	r3, #1
200266e2:	2b6c      	cmp	r3, #108	@ 0x6c
200266e4:	d1fa      	bne.n	200266dc <mbedtls_sha256+0x5c>
200266e6:	b01c      	add	sp, #112	@ 0x70
200266e8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200266ec:	f8df a048 	ldr.w	sl, [pc, #72]	@ 20026738 <mbedtls_sha256+0xb8>
200266f0:	f8df 9048 	ldr.w	r9, [pc, #72]	@ 2002673c <mbedtls_sha256+0xbc>
200266f4:	f8df e048 	ldr.w	lr, [pc, #72]	@ 20026740 <mbedtls_sha256+0xc0>
200266f8:	f8df c048 	ldr.w	ip, [pc, #72]	@ 20026744 <mbedtls_sha256+0xc4>
200266fc:	4806      	ldr	r0, [pc, #24]	@ (20026718 <mbedtls_sha256+0x98>)
200266fe:	4907      	ldr	r1, [pc, #28]	@ (2002671c <mbedtls_sha256+0x9c>)
20026700:	4a07      	ldr	r2, [pc, #28]	@ (20026720 <mbedtls_sha256+0xa0>)
20026702:	4b08      	ldr	r3, [pc, #32]	@ (20026724 <mbedtls_sha256+0xa4>)
20026704:	e7d3      	b.n	200266ae <mbedtls_sha256+0x2e>
20026706:	bf00      	nop
20026708:	ffc00b31 	.word	0xffc00b31
2002670c:	68581511 	.word	0x68581511
20026710:	64f98fa7 	.word	0x64f98fa7
20026714:	befa4fa4 	.word	0xbefa4fa4
20026718:	510e527f 	.word	0x510e527f
2002671c:	9b05688c 	.word	0x9b05688c
20026720:	1f83d9ab 	.word	0x1f83d9ab
20026724:	5be0cd19 	.word	0x5be0cd19
20026728:	c1059ed8 	.word	0xc1059ed8
2002672c:	367cd507 	.word	0x367cd507
20026730:	3070dd17 	.word	0x3070dd17
20026734:	f70e5939 	.word	0xf70e5939
20026738:	6a09e667 	.word	0x6a09e667
2002673c:	bb67ae85 	.word	0xbb67ae85
20026740:	3c6ef372 	.word	0x3c6ef372
20026744:	a54ff53a 	.word	0xa54ff53a

20026748 <mbedtls_sha512_init>:
20026748:	22d8      	movs	r2, #216	@ 0xd8
2002674a:	2100      	movs	r1, #0
2002674c:	f003 bfde 	b.w	2002a70c <memset>

20026750 <mbedtls_sha512_free>:
20026750:	b138      	cbz	r0, 20026762 <mbedtls_sha512_free+0x12>
20026752:	2100      	movs	r1, #0
20026754:	f100 03d8 	add.w	r3, r0, #216	@ 0xd8
20026758:	4602      	mov	r2, r0
2002675a:	3001      	adds	r0, #1
2002675c:	4298      	cmp	r0, r3
2002675e:	7011      	strb	r1, [r2, #0]
20026760:	d1fa      	bne.n	20026758 <mbedtls_sha512_free+0x8>
20026762:	4770      	bx	lr

20026764 <mbedtls_sha512_clone>:
20026764:	b508      	push	{r3, lr}
20026766:	22d8      	movs	r2, #216	@ 0xd8
20026768:	f003 ffea 	bl	2002a740 <memcpy>
2002676c:	bd08      	pop	{r3, pc}
	...

20026770 <mbedtls_sha512_starts>:
20026770:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20026774:	b381      	cbz	r1, 200267d8 <mbedtls_sha512_starts+0x68>
20026776:	f20f 0bc8 	addw	fp, pc, #200	@ 0xc8
2002677a:	e9db ab00 	ldrd	sl, fp, [fp]
2002677e:	f20f 09c8 	addw	r9, pc, #200	@ 0xc8
20026782:	e9d9 8900 	ldrd	r8, r9, [r9]
20026786:	a732      	add	r7, pc, #200	@ (adr r7, 20026850 <mbedtls_sha512_starts+0xe0>)
20026788:	e9d7 6700 	ldrd	r6, r7, [r7]
2002678c:	a532      	add	r5, pc, #200	@ (adr r5, 20026858 <mbedtls_sha512_starts+0xe8>)
2002678e:	e9d5 4500 	ldrd	r4, r5, [r5]
20026792:	a333      	add	r3, pc, #204	@ (adr r3, 20026860 <mbedtls_sha512_starts+0xf0>)
20026794:	e9d3 2300 	ldrd	r2, r3, [r3]
20026798:	ed9f 5b1b 	vldr	d5, [pc, #108]	@ 20026808 <mbedtls_sha512_starts+0x98>
2002679c:	ed9f 6b1c 	vldr	d6, [pc, #112]	@ 20026810 <mbedtls_sha512_starts+0xa0>
200267a0:	ed9f 7b1d 	vldr	d7, [pc, #116]	@ 20026818 <mbedtls_sha512_starts+0xa8>
200267a4:	ed9f 4b1e 	vldr	d4, [pc, #120]	@ 20026820 <mbedtls_sha512_starts+0xb0>
200267a8:	ed80 5b04 	vstr	d5, [r0, #16]
200267ac:	ed80 4b00 	vstr	d4, [r0]
200267b0:	ed80 4b02 	vstr	d4, [r0, #8]
200267b4:	ed80 6b06 	vstr	d6, [r0, #24]
200267b8:	ed80 7b08 	vstr	d7, [r0, #32]
200267bc:	e9c0 ab0a 	strd	sl, fp, [r0, #40]	@ 0x28
200267c0:	e9c0 890c 	strd	r8, r9, [r0, #48]	@ 0x30
200267c4:	e9c0 670e 	strd	r6, r7, [r0, #56]	@ 0x38
200267c8:	e9c0 4510 	strd	r4, r5, [r0, #64]	@ 0x40
200267cc:	e9c0 2312 	strd	r2, r3, [r0, #72]	@ 0x48
200267d0:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
200267d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200267d8:	ed9f 5b13 	vldr	d5, [pc, #76]	@ 20026828 <mbedtls_sha512_starts+0xb8>
200267dc:	f20f 0b88 	addw	fp, pc, #136	@ 0x88
200267e0:	e9db ab00 	ldrd	sl, fp, [fp]
200267e4:	f20f 0988 	addw	r9, pc, #136	@ 0x88
200267e8:	e9d9 8900 	ldrd	r8, r9, [r9]
200267ec:	a722      	add	r7, pc, #136	@ (adr r7, 20026878 <mbedtls_sha512_starts+0x108>)
200267ee:	e9d7 6700 	ldrd	r6, r7, [r7]
200267f2:	a523      	add	r5, pc, #140	@ (adr r5, 20026880 <mbedtls_sha512_starts+0x110>)
200267f4:	e9d5 4500 	ldrd	r4, r5, [r5]
200267f8:	a323      	add	r3, pc, #140	@ (adr r3, 20026888 <mbedtls_sha512_starts+0x118>)
200267fa:	e9d3 2300 	ldrd	r2, r3, [r3]
200267fe:	ed9f 6b0c 	vldr	d6, [pc, #48]	@ 20026830 <mbedtls_sha512_starts+0xc0>
20026802:	ed9f 7b0d 	vldr	d7, [pc, #52]	@ 20026838 <mbedtls_sha512_starts+0xc8>
20026806:	e7cd      	b.n	200267a4 <mbedtls_sha512_starts+0x34>
20026808:	c1059ed8 	.word	0xc1059ed8
2002680c:	cbbb9d5d 	.word	0xcbbb9d5d
20026810:	367cd507 	.word	0x367cd507
20026814:	629a292a 	.word	0x629a292a
20026818:	3070dd17 	.word	0x3070dd17
2002681c:	9159015a 	.word	0x9159015a
	...
20026828:	f3bcc908 	.word	0xf3bcc908
2002682c:	6a09e667 	.word	0x6a09e667
20026830:	84caa73b 	.word	0x84caa73b
20026834:	bb67ae85 	.word	0xbb67ae85
20026838:	fe94f82b 	.word	0xfe94f82b
2002683c:	3c6ef372 	.word	0x3c6ef372
20026840:	f70e5939 	.word	0xf70e5939
20026844:	152fecd8 	.word	0x152fecd8
20026848:	ffc00b31 	.word	0xffc00b31
2002684c:	67332667 	.word	0x67332667
20026850:	68581511 	.word	0x68581511
20026854:	8eb44a87 	.word	0x8eb44a87
20026858:	64f98fa7 	.word	0x64f98fa7
2002685c:	db0c2e0d 	.word	0xdb0c2e0d
20026860:	befa4fa4 	.word	0xbefa4fa4
20026864:	47b5481d 	.word	0x47b5481d
20026868:	5f1d36f1 	.word	0x5f1d36f1
2002686c:	a54ff53a 	.word	0xa54ff53a
20026870:	ade682d1 	.word	0xade682d1
20026874:	510e527f 	.word	0x510e527f
20026878:	2b3e6c1f 	.word	0x2b3e6c1f
2002687c:	9b05688c 	.word	0x9b05688c
20026880:	fb41bd6b 	.word	0xfb41bd6b
20026884:	1f83d9ab 	.word	0x1f83d9ab
20026888:	137e2179 	.word	0x137e2179
2002688c:	5be0cd19 	.word	0x5be0cd19

20026890 <mbedtls_sha512_process>:
20026890:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20026894:	f5ad 7d3f 	sub.w	sp, sp, #764	@ 0x2fc
20026898:	4682      	mov	sl, r0
2002689a:	a81e      	add	r0, sp, #120	@ 0x78
2002689c:	4604      	mov	r4, r0
2002689e:	f101 0580 	add.w	r5, r1, #128	@ 0x80
200268a2:	784b      	ldrb	r3, [r1, #1]
200268a4:	780a      	ldrb	r2, [r1, #0]
200268a6:	041b      	lsls	r3, r3, #16
200268a8:	790f      	ldrb	r7, [r1, #4]
200268aa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
200268ae:	79ca      	ldrb	r2, [r1, #7]
200268b0:	788e      	ldrb	r6, [r1, #2]
200268b2:	ea42 6207 	orr.w	r2, r2, r7, lsl #24
200268b6:	794f      	ldrb	r7, [r1, #5]
200268b8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
200268bc:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
200268c0:	78ce      	ldrb	r6, [r1, #3]
200268c2:	798f      	ldrb	r7, [r1, #6]
200268c4:	3108      	adds	r1, #8
200268c6:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
200268ca:	4333      	orrs	r3, r6
200268cc:	428d      	cmp	r5, r1
200268ce:	e9c4 2300 	strd	r2, r3, [r4]
200268d2:	f104 0408 	add.w	r4, r4, #8
200268d6:	d1e4      	bne.n	200268a2 <mbedtls_sha512_process+0x12>
200268d8:	4601      	mov	r1, r0
200268da:	2610      	movs	r6, #16
200268dc:	e9d1 4c1c 	ldrd	r4, ip, [r1, #112]	@ 0x70
200268e0:	e9d1 2502 	ldrd	r2, r5, [r1, #8]
200268e4:	468e      	mov	lr, r1
200268e6:	0ce3      	lsrs	r3, r4, #19
200268e8:	ea4f 47dc 	mov.w	r7, ip, lsr #19
200268ec:	ea4f 09c4 	mov.w	r9, r4, lsl #3
200268f0:	ea4f 08cc 	mov.w	r8, ip, lsl #3
200268f4:	ea48 7854 	orr.w	r8, r8, r4, lsr #29
200268f8:	ea43 334c 	orr.w	r3, r3, ip, lsl #13
200268fc:	ea47 3744 	orr.w	r7, r7, r4, lsl #13
20026900:	ea49 795c 	orr.w	r9, r9, ip, lsr #29
20026904:	09a4      	lsrs	r4, r4, #6
20026906:	ea87 0708 	eor.w	r7, r7, r8
2002690a:	ea44 648c 	orr.w	r4, r4, ip, lsl #26
2002690e:	ea83 0309 	eor.w	r3, r3, r9
20026912:	4063      	eors	r3, r4
20026914:	ea87 179c 	eor.w	r7, r7, ip, lsr #6
20026918:	e9de 4c12 	ldrd	r4, ip, [lr, #72]	@ 0x48
2002691c:	e9de 8e00 	ldrd	r8, lr, [lr]
20026920:	eb14 0408 	adds.w	r4, r4, r8
20026924:	eb4c 0c0e 	adc.w	ip, ip, lr
20026928:	191b      	adds	r3, r3, r4
2002692a:	eb47 070c 	adc.w	r7, r7, ip
2002692e:	0854      	lsrs	r4, r2, #1
20026930:	ea4f 2812 	mov.w	r8, r2, lsr #8
20026934:	ea4f 0c55 	mov.w	ip, r5, lsr #1
20026938:	ea4f 2e15 	mov.w	lr, r5, lsr #8
2002693c:	ea4c 7cc2 	orr.w	ip, ip, r2, lsl #31
20026940:	ea4e 6e02 	orr.w	lr, lr, r2, lsl #24
20026944:	ea44 74c5 	orr.w	r4, r4, r5, lsl #31
20026948:	ea48 6805 	orr.w	r8, r8, r5, lsl #24
2002694c:	09d2      	lsrs	r2, r2, #7
2002694e:	ea84 0408 	eor.w	r4, r4, r8
20026952:	ea42 6245 	orr.w	r2, r2, r5, lsl #25
20026956:	4062      	eors	r2, r4
20026958:	ea8c 0c0e 	eor.w	ip, ip, lr
2002695c:	189b      	adds	r3, r3, r2
2002695e:	ea8c 14d5 	eor.w	r4, ip, r5, lsr #7
20026962:	f106 0601 	add.w	r6, r6, #1
20026966:	eb47 0704 	adc.w	r7, r7, r4
2002696a:	3108      	adds	r1, #8
2002696c:	2e50      	cmp	r6, #80	@ 0x50
2002696e:	e9c1 371e 	strd	r3, r7, [r1, #120]	@ 0x78
20026972:	d1b3      	bne.n	200268dc <mbedtls_sha512_process+0x4c>
20026974:	f8da 3010 	ldr.w	r3, [sl, #16]
20026978:	930e      	str	r3, [sp, #56]	@ 0x38
2002697a:	f8da 3014 	ldr.w	r3, [sl, #20]
2002697e:	930f      	str	r3, [sp, #60]	@ 0x3c
20026980:	f8da 3018 	ldr.w	r3, [sl, #24]
20026984:	9310      	str	r3, [sp, #64]	@ 0x40
20026986:	f8da 301c 	ldr.w	r3, [sl, #28]
2002698a:	9311      	str	r3, [sp, #68]	@ 0x44
2002698c:	f8da 3020 	ldr.w	r3, [sl, #32]
20026990:	9312      	str	r3, [sp, #72]	@ 0x48
20026992:	f8da 3024 	ldr.w	r3, [sl, #36]	@ 0x24
20026996:	9313      	str	r3, [sp, #76]	@ 0x4c
20026998:	f8da 3028 	ldr.w	r3, [sl, #40]	@ 0x28
2002699c:	9314      	str	r3, [sp, #80]	@ 0x50
2002699e:	f8da 302c 	ldr.w	r3, [sl, #44]	@ 0x2c
200269a2:	9315      	str	r3, [sp, #84]	@ 0x54
200269a4:	f8da 3030 	ldr.w	r3, [sl, #48]	@ 0x30
200269a8:	9316      	str	r3, [sp, #88]	@ 0x58
200269aa:	f8da 3034 	ldr.w	r3, [sl, #52]	@ 0x34
200269ae:	9317      	str	r3, [sp, #92]	@ 0x5c
200269b0:	f8da 3038 	ldr.w	r3, [sl, #56]	@ 0x38
200269b4:	9318      	str	r3, [sp, #96]	@ 0x60
200269b6:	f8da 303c 	ldr.w	r3, [sl, #60]	@ 0x3c
200269ba:	9319      	str	r3, [sp, #100]	@ 0x64
200269bc:	f8da 3040 	ldr.w	r3, [sl, #64]	@ 0x40
200269c0:	931a      	str	r3, [sp, #104]	@ 0x68
200269c2:	f8da 3044 	ldr.w	r3, [sl, #68]	@ 0x44
200269c6:	931b      	str	r3, [sp, #108]	@ 0x6c
200269c8:	f8da 3048 	ldr.w	r3, [sl, #72]	@ 0x48
200269cc:	931c      	str	r3, [sp, #112]	@ 0x70
200269ce:	f8da 304c 	ldr.w	r3, [sl, #76]	@ 0x4c
200269d2:	931d      	str	r3, [sp, #116]	@ 0x74
200269d4:	4b0f      	ldr	r3, [pc, #60]	@ (20026a14 <mbedtls_sha512_process+0x184>)
200269d6:	9300      	str	r3, [sp, #0]
200269d8:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
200269da:	f8dd b054 	ldr.w	fp, [sp, #84]	@ 0x54
200269de:	930a      	str	r3, [sp, #40]	@ 0x28
200269e0:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
200269e2:	e9dd ce10 	ldrd	ip, lr, [sp, #64]	@ 0x40
200269e6:	930b      	str	r3, [sp, #44]	@ 0x2c
200269e8:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
200269ea:	9308      	str	r3, [sp, #32]
200269ec:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
200269ee:	9309      	str	r3, [sp, #36]	@ 0x24
200269f0:	9b18      	ldr	r3, [sp, #96]	@ 0x60
200269f2:	9306      	str	r3, [sp, #24]
200269f4:	9b19      	ldr	r3, [sp, #100]	@ 0x64
200269f6:	9307      	str	r3, [sp, #28]
200269f8:	9b16      	ldr	r3, [sp, #88]	@ 0x58
200269fa:	9304      	str	r3, [sp, #16]
200269fc:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
200269fe:	9305      	str	r3, [sp, #20]
20026a00:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20026a02:	9303      	str	r3, [sp, #12]
20026a04:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20026a06:	9301      	str	r3, [sp, #4]
20026a08:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
20026a0a:	9302      	str	r3, [sp, #8]
20026a0c:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	@ 0x38
20026a10:	e002      	b.n	20026a18 <mbedtls_sha512_process+0x188>
20026a12:	bf00      	nop
20026a14:	2002bd98 	.word	0x2002bd98
20026a18:	9c04      	ldr	r4, [sp, #16]
20026a1a:	9e04      	ldr	r6, [sp, #16]
20026a1c:	ea4f 3894 	mov.w	r8, r4, lsr #14
20026a20:	9c05      	ldr	r4, [sp, #20]
20026a22:	9900      	ldr	r1, [sp, #0]
20026a24:	ea48 4884 	orr.w	r8, r8, r4, lsl #18
20026a28:	ea4f 3994 	mov.w	r9, r4, lsr #14
20026a2c:	9c04      	ldr	r4, [sp, #16]
20026a2e:	ea49 4984 	orr.w	r9, r9, r4, lsl #18
20026a32:	0ca5      	lsrs	r5, r4, #18
20026a34:	9c05      	ldr	r4, [sp, #20]
20026a36:	ea45 3584 	orr.w	r5, r5, r4, lsl #14
20026a3a:	0ca4      	lsrs	r4, r4, #18
20026a3c:	ea44 3486 	orr.w	r4, r4, r6, lsl #14
20026a40:	ea89 0904 	eor.w	r9, r9, r4
20026a44:	9c05      	ldr	r4, [sp, #20]
20026a46:	ea88 0805 	eor.w	r8, r8, r5
20026a4a:	05f5      	lsls	r5, r6, #23
20026a4c:	ea45 2554 	orr.w	r5, r5, r4, lsr #9
20026a50:	05e4      	lsls	r4, r4, #23
20026a52:	ea44 2456 	orr.w	r4, r4, r6, lsr #9
20026a56:	ea88 0805 	eor.w	r8, r8, r5
20026a5a:	ea89 0904 	eor.w	r9, r9, r4
20026a5e:	e9d1 5700 	ldrd	r5, r7, [r1]
20026a62:	e9d0 6400 	ldrd	r6, r4, [r0]
20026a66:	19ad      	adds	r5, r5, r6
20026a68:	eb47 0404 	adc.w	r4, r7, r4
20026a6c:	9e06      	ldr	r6, [sp, #24]
20026a6e:	9f08      	ldr	r7, [sp, #32]
20026a70:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026a72:	407e      	eors	r6, r7
20026a74:	9f07      	ldr	r7, [sp, #28]
20026a76:	eb18 0505 	adds.w	r5, r8, r5
20026a7a:	ea87 0701 	eor.w	r7, r7, r1
20026a7e:	9904      	ldr	r1, [sp, #16]
20026a80:	eb49 0404 	adc.w	r4, r9, r4
20026a84:	400e      	ands	r6, r1
20026a86:	9905      	ldr	r1, [sp, #20]
20026a88:	ea4f 7813 	mov.w	r8, r3, lsr #28
20026a8c:	400f      	ands	r7, r1
20026a8e:	9908      	ldr	r1, [sp, #32]
20026a90:	ea4f 7983 	mov.w	r9, r3, lsl #30
20026a94:	404e      	eors	r6, r1
20026a96:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026a98:	19ad      	adds	r5, r5, r6
20026a9a:	ea87 0701 	eor.w	r7, r7, r1
20026a9e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026aa0:	eb44 0407 	adc.w	r4, r4, r7
20026aa4:	186d      	adds	r5, r5, r1
20026aa6:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026aa8:	ea4f 7712 	mov.w	r7, r2, lsr #28
20026aac:	eb41 0404 	adc.w	r4, r1, r4
20026ab0:	9903      	ldr	r1, [sp, #12]
20026ab2:	0796      	lsls	r6, r2, #30
20026ab4:	1949      	adds	r1, r1, r5
20026ab6:	ea46 0693 	orr.w	r6, r6, r3, lsr #2
20026aba:	ea47 1703 	orr.w	r7, r7, r3, lsl #4
20026abe:	910a      	str	r1, [sp, #40]	@ 0x28
20026ac0:	ea87 0706 	eor.w	r7, r7, r6
20026ac4:	eb4b 0104 	adc.w	r1, fp, r4
20026ac8:	0656      	lsls	r6, r2, #25
20026aca:	ea49 0992 	orr.w	r9, r9, r2, lsr #2
20026ace:	ea46 16d3 	orr.w	r6, r6, r3, lsr #7
20026ad2:	910b      	str	r1, [sp, #44]	@ 0x2c
20026ad4:	ea48 1802 	orr.w	r8, r8, r2, lsl #4
20026ad8:	9901      	ldr	r1, [sp, #4]
20026ada:	ea88 0809 	eor.w	r8, r8, r9
20026ade:	4077      	eors	r7, r6
20026ae0:	ea4f 6943 	mov.w	r9, r3, lsl #25
20026ae4:	ea43 060c 	orr.w	r6, r3, ip
20026ae8:	ea49 19d2 	orr.w	r9, r9, r2, lsr #7
20026aec:	400e      	ands	r6, r1
20026aee:	9902      	ldr	r1, [sp, #8]
20026af0:	ea03 0b0c 	and.w	fp, r3, ip
20026af4:	ea88 0809 	eor.w	r8, r8, r9
20026af8:	ea42 090e 	orr.w	r9, r2, lr
20026afc:	ea09 0901 	and.w	r9, r9, r1
20026b00:	ea46 060b 	orr.w	r6, r6, fp
20026b04:	ea02 010e 	and.w	r1, r2, lr
20026b08:	eb18 0606 	adds.w	r6, r8, r6
20026b0c:	ea49 0901 	orr.w	r9, r9, r1
20026b10:	eb47 0709 	adc.w	r7, r7, r9
20026b14:	1971      	adds	r1, r6, r5
20026b16:	9103      	str	r1, [sp, #12]
20026b18:	9900      	ldr	r1, [sp, #0]
20026b1a:	eb44 0b07 	adc.w	fp, r4, r7
20026b1e:	e9d0 6702 	ldrd	r6, r7, [r0, #8]
20026b22:	e9d1 4502 	ldrd	r4, r5, [r1, #8]
20026b26:	9908      	ldr	r1, [sp, #32]
20026b28:	19a4      	adds	r4, r4, r6
20026b2a:	eb45 0507 	adc.w	r5, r5, r7
20026b2e:	1864      	adds	r4, r4, r1
20026b30:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026b32:	9e06      	ldr	r6, [sp, #24]
20026b34:	eb41 0505 	adc.w	r5, r1, r5
20026b38:	9904      	ldr	r1, [sp, #16]
20026b3a:	ea81 0706 	eor.w	r7, r1, r6
20026b3e:	9905      	ldr	r1, [sp, #20]
20026b40:	9e07      	ldr	r6, [sp, #28]
20026b42:	404e      	eors	r6, r1
20026b44:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026b46:	400f      	ands	r7, r1
20026b48:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026b4a:	400e      	ands	r6, r1
20026b4c:	9906      	ldr	r1, [sp, #24]
20026b4e:	404f      	eors	r7, r1
20026b50:	9907      	ldr	r1, [sp, #28]
20026b52:	19e4      	adds	r4, r4, r7
20026b54:	ea86 0601 	eor.w	r6, r6, r1
20026b58:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026b5a:	eb45 0506 	adc.w	r5, r5, r6
20026b5e:	0b8f      	lsrs	r7, r1, #14
20026b60:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026b62:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026b66:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026b6a:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026b6c:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026b70:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026b74:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026b76:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026b7a:	0c8e      	lsrs	r6, r1, #18
20026b7c:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026b7e:	ea87 0709 	eor.w	r7, r7, r9
20026b82:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026b86:	ea88 0806 	eor.w	r8, r8, r6
20026b8a:	05ce      	lsls	r6, r1, #23
20026b8c:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026b8e:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026b92:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026b96:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026b98:	407e      	eors	r6, r7
20026b9a:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026b9e:	9901      	ldr	r1, [sp, #4]
20026ba0:	19a4      	adds	r4, r4, r6
20026ba2:	ea88 0809 	eor.w	r8, r8, r9
20026ba6:	eb45 0808 	adc.w	r8, r5, r8
20026baa:	1909      	adds	r1, r1, r4
20026bac:	9108      	str	r1, [sp, #32]
20026bae:	9902      	ldr	r1, [sp, #8]
20026bb0:	ea4f 761b 	mov.w	r6, fp, lsr #28
20026bb4:	eb41 0108 	adc.w	r1, r1, r8
20026bb8:	9109      	str	r1, [sp, #36]	@ 0x24
20026bba:	9903      	ldr	r1, [sp, #12]
20026bbc:	ea4f 758b 	mov.w	r5, fp, lsl #30
20026bc0:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026bc4:	0f0f      	lsrs	r7, r1, #28
20026bc6:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026bca:	ea4f 7981 	mov.w	r9, r1, lsl #30
20026bce:	ea49 099b 	orr.w	r9, r9, fp, lsr #2
20026bd2:	ea47 170b 	orr.w	r7, r7, fp, lsl #4
20026bd6:	406e      	eors	r6, r5
20026bd8:	ea4f 654b 	mov.w	r5, fp, lsl #25
20026bdc:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026be0:	ea87 0709 	eor.w	r7, r7, r9
20026be4:	ea4f 6941 	mov.w	r9, r1, lsl #25
20026be8:	ea49 19db 	orr.w	r9, r9, fp, lsr #7
20026bec:	406e      	eors	r6, r5
20026bee:	ea43 0501 	orr.w	r5, r3, r1
20026bf2:	ea87 0709 	eor.w	r7, r7, r9
20026bf6:	4019      	ands	r1, r3
20026bf8:	ea42 090b 	orr.w	r9, r2, fp
20026bfc:	ea05 050c 	and.w	r5, r5, ip
20026c00:	ea09 090e 	and.w	r9, r9, lr
20026c04:	430d      	orrs	r5, r1
20026c06:	ea02 010b 	and.w	r1, r2, fp
20026c0a:	197d      	adds	r5, r7, r5
20026c0c:	ea49 0901 	orr.w	r9, r9, r1
20026c10:	eb46 0609 	adc.w	r6, r6, r9
20026c14:	1929      	adds	r1, r5, r4
20026c16:	9101      	str	r1, [sp, #4]
20026c18:	eb48 0106 	adc.w	r1, r8, r6
20026c1c:	9102      	str	r1, [sp, #8]
20026c1e:	9900      	ldr	r1, [sp, #0]
20026c20:	e9d0 6704 	ldrd	r6, r7, [r0, #16]
20026c24:	e9d1 4504 	ldrd	r4, r5, [r1, #16]
20026c28:	9906      	ldr	r1, [sp, #24]
20026c2a:	19a4      	adds	r4, r4, r6
20026c2c:	eb45 0507 	adc.w	r5, r5, r7
20026c30:	1864      	adds	r4, r4, r1
20026c32:	9907      	ldr	r1, [sp, #28]
20026c34:	eb41 0505 	adc.w	r5, r1, r5
20026c38:	9904      	ldr	r1, [sp, #16]
20026c3a:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
20026c3c:	ea81 0706 	eor.w	r7, r1, r6
20026c40:	9905      	ldr	r1, [sp, #20]
20026c42:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
20026c44:	404e      	eors	r6, r1
20026c46:	9908      	ldr	r1, [sp, #32]
20026c48:	400f      	ands	r7, r1
20026c4a:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026c4c:	400e      	ands	r6, r1
20026c4e:	9904      	ldr	r1, [sp, #16]
20026c50:	404f      	eors	r7, r1
20026c52:	9905      	ldr	r1, [sp, #20]
20026c54:	19e4      	adds	r4, r4, r7
20026c56:	ea86 0601 	eor.w	r6, r6, r1
20026c5a:	9908      	ldr	r1, [sp, #32]
20026c5c:	eb45 0506 	adc.w	r5, r5, r6
20026c60:	0b8f      	lsrs	r7, r1, #14
20026c62:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026c64:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026c68:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026c6c:	9908      	ldr	r1, [sp, #32]
20026c6e:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026c72:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026c76:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026c78:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026c7c:	0c8e      	lsrs	r6, r1, #18
20026c7e:	9908      	ldr	r1, [sp, #32]
20026c80:	ea87 0709 	eor.w	r7, r7, r9
20026c84:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026c88:	ea88 0806 	eor.w	r8, r8, r6
20026c8c:	05ce      	lsls	r6, r1, #23
20026c8e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026c90:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026c94:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026c98:	9908      	ldr	r1, [sp, #32]
20026c9a:	407e      	eors	r6, r7
20026c9c:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026ca0:	19a4      	adds	r4, r4, r6
20026ca2:	ea88 0809 	eor.w	r8, r8, r9
20026ca6:	eb45 0808 	adc.w	r8, r5, r8
20026caa:	eb1c 0104 	adds.w	r1, ip, r4
20026cae:	9106      	str	r1, [sp, #24]
20026cb0:	eb4e 0108 	adc.w	r1, lr, r8
20026cb4:	9107      	str	r1, [sp, #28]
20026cb6:	9901      	ldr	r1, [sp, #4]
20026cb8:	0f0f      	lsrs	r7, r1, #28
20026cba:	9902      	ldr	r1, [sp, #8]
20026cbc:	ea47 1701 	orr.w	r7, r7, r1, lsl #4
20026cc0:	0f0e      	lsrs	r6, r1, #28
20026cc2:	9901      	ldr	r1, [sp, #4]
20026cc4:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026cc8:	ea4f 7c81 	mov.w	ip, r1, lsl #30
20026ccc:	9902      	ldr	r1, [sp, #8]
20026cce:	ea4c 0c91 	orr.w	ip, ip, r1, lsr #2
20026cd2:	078d      	lsls	r5, r1, #30
20026cd4:	9901      	ldr	r1, [sp, #4]
20026cd6:	ea87 070c 	eor.w	r7, r7, ip
20026cda:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026cde:	ea4f 6c41 	mov.w	ip, r1, lsl #25
20026ce2:	9902      	ldr	r1, [sp, #8]
20026ce4:	406e      	eors	r6, r5
20026ce6:	ea4c 1cd1 	orr.w	ip, ip, r1, lsr #7
20026cea:	064d      	lsls	r5, r1, #25
20026cec:	9901      	ldr	r1, [sp, #4]
20026cee:	ea87 070c 	eor.w	r7, r7, ip
20026cf2:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026cf6:	406e      	eors	r6, r5
20026cf8:	9903      	ldr	r1, [sp, #12]
20026cfa:	9d01      	ldr	r5, [sp, #4]
20026cfc:	430d      	orrs	r5, r1
20026cfe:	9902      	ldr	r1, [sp, #8]
20026d00:	ea4b 0c01 	orr.w	ip, fp, r1
20026d04:	ea05 0103 	and.w	r1, r5, r3
20026d08:	910c      	str	r1, [sp, #48]	@ 0x30
20026d0a:	9d01      	ldr	r5, [sp, #4]
20026d0c:	9903      	ldr	r1, [sp, #12]
20026d0e:	ea0c 0c02 	and.w	ip, ip, r2
20026d12:	ea01 0905 	and.w	r9, r1, r5
20026d16:	9902      	ldr	r1, [sp, #8]
20026d18:	ea0b 0e01 	and.w	lr, fp, r1
20026d1c:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026d1e:	ea4c 0c0e 	orr.w	ip, ip, lr
20026d22:	ea41 0509 	orr.w	r5, r1, r9
20026d26:	9900      	ldr	r1, [sp, #0]
20026d28:	197d      	adds	r5, r7, r5
20026d2a:	eb46 060c 	adc.w	r6, r6, ip
20026d2e:	eb15 0904 	adds.w	r9, r5, r4
20026d32:	e9d1 4506 	ldrd	r4, r5, [r1, #24]
20026d36:	9904      	ldr	r1, [sp, #16]
20026d38:	eb48 0806 	adc.w	r8, r8, r6
20026d3c:	e9d0 6706 	ldrd	r6, r7, [r0, #24]
20026d40:	19a4      	adds	r4, r4, r6
20026d42:	eb45 0507 	adc.w	r5, r5, r7
20026d46:	1864      	adds	r4, r4, r1
20026d48:	9905      	ldr	r1, [sp, #20]
20026d4a:	9e08      	ldr	r6, [sp, #32]
20026d4c:	eb41 0505 	adc.w	r5, r1, r5
20026d50:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026d52:	ea81 0706 	eor.w	r7, r1, r6
20026d56:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026d58:	9e09      	ldr	r6, [sp, #36]	@ 0x24
20026d5a:	404e      	eors	r6, r1
20026d5c:	9906      	ldr	r1, [sp, #24]
20026d5e:	400f      	ands	r7, r1
20026d60:	9907      	ldr	r1, [sp, #28]
20026d62:	400e      	ands	r6, r1
20026d64:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026d66:	404f      	eors	r7, r1
20026d68:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026d6a:	19e4      	adds	r4, r4, r7
20026d6c:	ea86 0601 	eor.w	r6, r6, r1
20026d70:	9906      	ldr	r1, [sp, #24]
20026d72:	eb45 0506 	adc.w	r5, r5, r6
20026d76:	ea4f 3c91 	mov.w	ip, r1, lsr #14
20026d7a:	9907      	ldr	r1, [sp, #28]
20026d7c:	ea4c 4c81 	orr.w	ip, ip, r1, lsl #18
20026d80:	0b8e      	lsrs	r6, r1, #14
20026d82:	9906      	ldr	r1, [sp, #24]
20026d84:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026d88:	ea4f 4e91 	mov.w	lr, r1, lsr #18
20026d8c:	9907      	ldr	r1, [sp, #28]
20026d8e:	ea4e 3e81 	orr.w	lr, lr, r1, lsl #14
20026d92:	0c8f      	lsrs	r7, r1, #18
20026d94:	9906      	ldr	r1, [sp, #24]
20026d96:	ea8c 0c0e 	eor.w	ip, ip, lr
20026d9a:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026d9e:	407e      	eors	r6, r7
20026da0:	05cf      	lsls	r7, r1, #23
20026da2:	9907      	ldr	r1, [sp, #28]
20026da4:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026da8:	ea4f 5ec1 	mov.w	lr, r1, lsl #23
20026dac:	9906      	ldr	r1, [sp, #24]
20026dae:	ea8c 0707 	eor.w	r7, ip, r7
20026db2:	ea4e 2e51 	orr.w	lr, lr, r1, lsr #9
20026db6:	19e4      	adds	r4, r4, r7
20026db8:	ea86 060e 	eor.w	r6, r6, lr
20026dbc:	eb45 0606 	adc.w	r6, r5, r6
20026dc0:	191b      	adds	r3, r3, r4
20026dc2:	930c      	str	r3, [sp, #48]	@ 0x30
20026dc4:	eb42 0306 	adc.w	r3, r2, r6
20026dc8:	930d      	str	r3, [sp, #52]	@ 0x34
20026dca:	ea4f 7218 	mov.w	r2, r8, lsr #28
20026dce:	ea4f 7388 	mov.w	r3, r8, lsl #30
20026dd2:	ea43 0399 	orr.w	r3, r3, r9, lsr #2
20026dd6:	ea4f 7519 	mov.w	r5, r9, lsr #28
20026dda:	ea42 1209 	orr.w	r2, r2, r9, lsl #4
20026dde:	ea4f 7789 	mov.w	r7, r9, lsl #30
20026de2:	ea47 0798 	orr.w	r7, r7, r8, lsr #2
20026de6:	ea45 1508 	orr.w	r5, r5, r8, lsl #4
20026dea:	405a      	eors	r2, r3
20026dec:	ea4f 6348 	mov.w	r3, r8, lsl #25
20026df0:	9902      	ldr	r1, [sp, #8]
20026df2:	ea43 13d9 	orr.w	r3, r3, r9, lsr #7
20026df6:	407d      	eors	r5, r7
20026df8:	ea4f 6749 	mov.w	r7, r9, lsl #25
20026dfc:	ea47 17d8 	orr.w	r7, r7, r8, lsr #7
20026e00:	405a      	eors	r2, r3
20026e02:	9b01      	ldr	r3, [sp, #4]
20026e04:	407d      	eors	r5, r7
20026e06:	ea41 0708 	orr.w	r7, r1, r8
20026e0a:	9903      	ldr	r1, [sp, #12]
20026e0c:	ea43 0309 	orr.w	r3, r3, r9
20026e10:	400b      	ands	r3, r1
20026e12:	9901      	ldr	r1, [sp, #4]
20026e14:	ea07 070b 	and.w	r7, r7, fp
20026e18:	ea01 0e09 	and.w	lr, r1, r9
20026e1c:	9902      	ldr	r1, [sp, #8]
20026e1e:	ea43 030e 	orr.w	r3, r3, lr
20026e22:	ea01 0c08 	and.w	ip, r1, r8
20026e26:	ea47 070c 	orr.w	r7, r7, ip
20026e2a:	18eb      	adds	r3, r5, r3
20026e2c:	eb42 0207 	adc.w	r2, r2, r7
20026e30:	191b      	adds	r3, r3, r4
20026e32:	9304      	str	r3, [sp, #16]
20026e34:	eb46 0302 	adc.w	r3, r6, r2
20026e38:	9305      	str	r3, [sp, #20]
20026e3a:	9b00      	ldr	r3, [sp, #0]
20026e3c:	6a1b      	ldr	r3, [r3, #32]
20026e3e:	9a00      	ldr	r2, [sp, #0]
20026e40:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e42:	6a52      	ldr	r2, [r2, #36]	@ 0x24
20026e44:	e9d0 4508 	ldrd	r4, r5, [r0, #32]
20026e48:	191b      	adds	r3, r3, r4
20026e4a:	eb42 0205 	adc.w	r2, r2, r5
20026e4e:	185b      	adds	r3, r3, r1
20026e50:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026e52:	9c06      	ldr	r4, [sp, #24]
20026e54:	eb41 0202 	adc.w	r2, r1, r2
20026e58:	9908      	ldr	r1, [sp, #32]
20026e5a:	ea81 0504 	eor.w	r5, r1, r4
20026e5e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026e60:	9c07      	ldr	r4, [sp, #28]
20026e62:	404c      	eors	r4, r1
20026e64:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026e66:	400d      	ands	r5, r1
20026e68:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026e6a:	400c      	ands	r4, r1
20026e6c:	9908      	ldr	r1, [sp, #32]
20026e6e:	404d      	eors	r5, r1
20026e70:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026e72:	195b      	adds	r3, r3, r5
20026e74:	ea84 0401 	eor.w	r4, r4, r1
20026e78:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026e7a:	eb42 0204 	adc.w	r2, r2, r4
20026e7e:	0b8e      	lsrs	r6, r1, #14
20026e80:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026e82:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026e86:	0b8c      	lsrs	r4, r1, #14
20026e88:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026e8a:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20026e8e:	0c8f      	lsrs	r7, r1, #18
20026e90:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026e92:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026e96:	0c8d      	lsrs	r5, r1, #18
20026e98:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026e9a:	407e      	eors	r6, r7
20026e9c:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20026ea0:	406c      	eors	r4, r5
20026ea2:	05cd      	lsls	r5, r1, #23
20026ea4:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026ea6:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20026eaa:	05cf      	lsls	r7, r1, #23
20026eac:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026eae:	4075      	eors	r5, r6
20026eb0:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026eb4:	9903      	ldr	r1, [sp, #12]
20026eb6:	195b      	adds	r3, r3, r5
20026eb8:	ea84 0407 	eor.w	r4, r4, r7
20026ebc:	eb42 0204 	adc.w	r2, r2, r4
20026ec0:	18c9      	adds	r1, r1, r3
20026ec2:	910a      	str	r1, [sp, #40]	@ 0x28
20026ec4:	eb4b 0102 	adc.w	r1, fp, r2
20026ec8:	910b      	str	r1, [sp, #44]	@ 0x2c
20026eca:	9904      	ldr	r1, [sp, #16]
20026ecc:	0f0e      	lsrs	r6, r1, #28
20026ece:	9905      	ldr	r1, [sp, #20]
20026ed0:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026ed4:	0f0d      	lsrs	r5, r1, #28
20026ed6:	9904      	ldr	r1, [sp, #16]
20026ed8:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20026edc:	078f      	lsls	r7, r1, #30
20026ede:	9905      	ldr	r1, [sp, #20]
20026ee0:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20026ee4:	078c      	lsls	r4, r1, #30
20026ee6:	9904      	ldr	r1, [sp, #16]
20026ee8:	407e      	eors	r6, r7
20026eea:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20026eee:	064f      	lsls	r7, r1, #25
20026ef0:	9905      	ldr	r1, [sp, #20]
20026ef2:	4065      	eors	r5, r4
20026ef4:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20026ef8:	064c      	lsls	r4, r1, #25
20026efa:	9904      	ldr	r1, [sp, #16]
20026efc:	407e      	eors	r6, r7
20026efe:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20026f02:	4065      	eors	r5, r4
20026f04:	ea49 0401 	orr.w	r4, r9, r1
20026f08:	9905      	ldr	r1, [sp, #20]
20026f0a:	ea48 0701 	orr.w	r7, r8, r1
20026f0e:	9901      	ldr	r1, [sp, #4]
20026f10:	400c      	ands	r4, r1
20026f12:	9902      	ldr	r1, [sp, #8]
20026f14:	400f      	ands	r7, r1
20026f16:	9904      	ldr	r1, [sp, #16]
20026f18:	ea09 0e01 	and.w	lr, r9, r1
20026f1c:	9905      	ldr	r1, [sp, #20]
20026f1e:	ea44 040e 	orr.w	r4, r4, lr
20026f22:	ea08 0c01 	and.w	ip, r8, r1
20026f26:	1934      	adds	r4, r6, r4
20026f28:	ea47 070c 	orr.w	r7, r7, ip
20026f2c:	eb45 0507 	adc.w	r5, r5, r7
20026f30:	18e3      	adds	r3, r4, r3
20026f32:	9303      	str	r3, [sp, #12]
20026f34:	9b00      	ldr	r3, [sp, #0]
20026f36:	eb42 0b05 	adc.w	fp, r2, r5
20026f3a:	9a00      	ldr	r2, [sp, #0]
20026f3c:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
20026f3e:	9908      	ldr	r1, [sp, #32]
20026f40:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
20026f42:	e9d0 450a 	ldrd	r4, r5, [r0, #40]	@ 0x28
20026f46:	191b      	adds	r3, r3, r4
20026f48:	eb42 0205 	adc.w	r2, r2, r5
20026f4c:	185b      	adds	r3, r3, r1
20026f4e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026f50:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
20026f52:	eb41 0202 	adc.w	r2, r1, r2
20026f56:	9906      	ldr	r1, [sp, #24]
20026f58:	ea81 0504 	eor.w	r5, r1, r4
20026f5c:	9907      	ldr	r1, [sp, #28]
20026f5e:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
20026f60:	404c      	eors	r4, r1
20026f62:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026f64:	400d      	ands	r5, r1
20026f66:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026f68:	400c      	ands	r4, r1
20026f6a:	9906      	ldr	r1, [sp, #24]
20026f6c:	404d      	eors	r5, r1
20026f6e:	9907      	ldr	r1, [sp, #28]
20026f70:	195b      	adds	r3, r3, r5
20026f72:	ea84 0401 	eor.w	r4, r4, r1
20026f76:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026f78:	eb42 0204 	adc.w	r2, r2, r4
20026f7c:	0b8e      	lsrs	r6, r1, #14
20026f7e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026f80:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026f84:	0b8c      	lsrs	r4, r1, #14
20026f86:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026f88:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20026f8c:	0c8f      	lsrs	r7, r1, #18
20026f8e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026f90:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026f94:	0c8d      	lsrs	r5, r1, #18
20026f96:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026f98:	407e      	eors	r6, r7
20026f9a:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20026f9e:	406c      	eors	r4, r5
20026fa0:	05cd      	lsls	r5, r1, #23
20026fa2:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026fa4:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20026fa8:	05cf      	lsls	r7, r1, #23
20026faa:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026fac:	4075      	eors	r5, r6
20026fae:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026fb2:	9901      	ldr	r1, [sp, #4]
20026fb4:	195b      	adds	r3, r3, r5
20026fb6:	ea84 0407 	eor.w	r4, r4, r7
20026fba:	eb42 0204 	adc.w	r2, r2, r4
20026fbe:	18c9      	adds	r1, r1, r3
20026fc0:	9108      	str	r1, [sp, #32]
20026fc2:	9902      	ldr	r1, [sp, #8]
20026fc4:	ea4f 751b 	mov.w	r5, fp, lsr #28
20026fc8:	eb41 0102 	adc.w	r1, r1, r2
20026fcc:	9109      	str	r1, [sp, #36]	@ 0x24
20026fce:	9903      	ldr	r1, [sp, #12]
20026fd0:	ea4f 748b 	mov.w	r4, fp, lsl #30
20026fd4:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20026fd8:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20026fdc:	0f0e      	lsrs	r6, r1, #28
20026fde:	078f      	lsls	r7, r1, #30
20026fe0:	4065      	eors	r5, r4
20026fe2:	ea4f 644b 	mov.w	r4, fp, lsl #25
20026fe6:	ea47 079b 	orr.w	r7, r7, fp, lsr #2
20026fea:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20026fee:	ea46 160b 	orr.w	r6, r6, fp, lsl #4
20026ff2:	407e      	eors	r6, r7
20026ff4:	4065      	eors	r5, r4
20026ff6:	064f      	lsls	r7, r1, #25
20026ff8:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
20026ffc:	430c      	orrs	r4, r1
20026ffe:	9905      	ldr	r1, [sp, #20]
20027000:	ea47 17db 	orr.w	r7, r7, fp, lsr #7
20027004:	407e      	eors	r6, r7
20027006:	ea41 070b 	orr.w	r7, r1, fp
2002700a:	ea04 0109 	and.w	r1, r4, r9
2002700e:	9101      	str	r1, [sp, #4]
20027010:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
20027014:	ea01 0e04 	and.w	lr, r1, r4
20027018:	9905      	ldr	r1, [sp, #20]
2002701a:	ea07 0708 	and.w	r7, r7, r8
2002701e:	ea01 0c0b 	and.w	ip, r1, fp
20027022:	9901      	ldr	r1, [sp, #4]
20027024:	ea47 070c 	orr.w	r7, r7, ip
20027028:	ea41 040e 	orr.w	r4, r1, lr
2002702c:	1934      	adds	r4, r6, r4
2002702e:	eb45 0507 	adc.w	r5, r5, r7
20027032:	18e3      	adds	r3, r4, r3
20027034:	9301      	str	r3, [sp, #4]
20027036:	eb42 0305 	adc.w	r3, r2, r5
2002703a:	9302      	str	r3, [sp, #8]
2002703c:	9b00      	ldr	r3, [sp, #0]
2002703e:	9a00      	ldr	r2, [sp, #0]
20027040:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20027042:	9906      	ldr	r1, [sp, #24]
20027044:	6b52      	ldr	r2, [r2, #52]	@ 0x34
20027046:	e9d0 450c 	ldrd	r4, r5, [r0, #48]	@ 0x30
2002704a:	191b      	adds	r3, r3, r4
2002704c:	eb42 0205 	adc.w	r2, r2, r5
20027050:	185b      	adds	r3, r3, r1
20027052:	9907      	ldr	r1, [sp, #28]
20027054:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
20027056:	eb41 0202 	adc.w	r2, r1, r2
2002705a:	990c      	ldr	r1, [sp, #48]	@ 0x30
2002705c:	ea81 0504 	eor.w	r5, r1, r4
20027060:	990d      	ldr	r1, [sp, #52]	@ 0x34
20027062:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
20027064:	404c      	eors	r4, r1
20027066:	9908      	ldr	r1, [sp, #32]
20027068:	400d      	ands	r5, r1
2002706a:	9909      	ldr	r1, [sp, #36]	@ 0x24
2002706c:	400c      	ands	r4, r1
2002706e:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027070:	404d      	eors	r5, r1
20027072:	990d      	ldr	r1, [sp, #52]	@ 0x34
20027074:	195b      	adds	r3, r3, r5
20027076:	ea84 0401 	eor.w	r4, r4, r1
2002707a:	9908      	ldr	r1, [sp, #32]
2002707c:	eb42 0204 	adc.w	r2, r2, r4
20027080:	0b8e      	lsrs	r6, r1, #14
20027082:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027084:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20027088:	0b8c      	lsrs	r4, r1, #14
2002708a:	9908      	ldr	r1, [sp, #32]
2002708c:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027090:	0c8f      	lsrs	r7, r1, #18
20027092:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027094:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027098:	0c8d      	lsrs	r5, r1, #18
2002709a:	9908      	ldr	r1, [sp, #32]
2002709c:	407e      	eors	r6, r7
2002709e:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
200270a2:	406c      	eors	r4, r5
200270a4:	05cd      	lsls	r5, r1, #23
200270a6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200270a8:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200270ac:	05cf      	lsls	r7, r1, #23
200270ae:	9908      	ldr	r1, [sp, #32]
200270b0:	4075      	eors	r5, r6
200270b2:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200270b6:	195b      	adds	r3, r3, r5
200270b8:	ea84 0407 	eor.w	r4, r4, r7
200270bc:	eb42 0204 	adc.w	r2, r2, r4
200270c0:	eb19 0103 	adds.w	r1, r9, r3
200270c4:	9106      	str	r1, [sp, #24]
200270c6:	eb48 0102 	adc.w	r1, r8, r2
200270ca:	9107      	str	r1, [sp, #28]
200270cc:	9901      	ldr	r1, [sp, #4]
200270ce:	0f0e      	lsrs	r6, r1, #28
200270d0:	9902      	ldr	r1, [sp, #8]
200270d2:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
200270d6:	0f0d      	lsrs	r5, r1, #28
200270d8:	9901      	ldr	r1, [sp, #4]
200270da:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
200270de:	078f      	lsls	r7, r1, #30
200270e0:	9902      	ldr	r1, [sp, #8]
200270e2:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
200270e6:	078c      	lsls	r4, r1, #30
200270e8:	9901      	ldr	r1, [sp, #4]
200270ea:	407e      	eors	r6, r7
200270ec:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
200270f0:	064f      	lsls	r7, r1, #25
200270f2:	9902      	ldr	r1, [sp, #8]
200270f4:	4065      	eors	r5, r4
200270f6:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
200270fa:	064c      	lsls	r4, r1, #25
200270fc:	9901      	ldr	r1, [sp, #4]
200270fe:	407e      	eors	r6, r7
20027100:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20027104:	4065      	eors	r5, r4
20027106:	9903      	ldr	r1, [sp, #12]
20027108:	9c01      	ldr	r4, [sp, #4]
2002710a:	430c      	orrs	r4, r1
2002710c:	9902      	ldr	r1, [sp, #8]
2002710e:	ea4b 0701 	orr.w	r7, fp, r1
20027112:	9904      	ldr	r1, [sp, #16]
20027114:	ea04 0801 	and.w	r8, r4, r1
20027118:	9905      	ldr	r1, [sp, #20]
2002711a:	9c01      	ldr	r4, [sp, #4]
2002711c:	400f      	ands	r7, r1
2002711e:	9903      	ldr	r1, [sp, #12]
20027120:	ea01 0e04 	and.w	lr, r1, r4
20027124:	9902      	ldr	r1, [sp, #8]
20027126:	ea48 040e 	orr.w	r4, r8, lr
2002712a:	ea0b 0c01 	and.w	ip, fp, r1
2002712e:	1934      	adds	r4, r6, r4
20027130:	ea47 070c 	orr.w	r7, r7, ip
20027134:	eb45 0507 	adc.w	r5, r5, r7
20027138:	eb14 0c03 	adds.w	ip, r4, r3
2002713c:	9b00      	ldr	r3, [sp, #0]
2002713e:	eb42 0e05 	adc.w	lr, r2, r5
20027142:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
20027144:	9a00      	ldr	r2, [sp, #0]
20027146:	e9d0 450e 	ldrd	r4, r5, [r0, #56]	@ 0x38
2002714a:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
2002714c:	191c      	adds	r4, r3, r4
2002714e:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
20027150:	eb42 0205 	adc.w	r2, r2, r5
20027154:	18e4      	adds	r4, r4, r3
20027156:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
20027158:	9908      	ldr	r1, [sp, #32]
2002715a:	eb43 0202 	adc.w	r2, r3, r2
2002715e:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20027160:	3040      	adds	r0, #64	@ 0x40
20027162:	ea83 0501 	eor.w	r5, r3, r1
20027166:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027168:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002716a:	404b      	eors	r3, r1
2002716c:	9906      	ldr	r1, [sp, #24]
2002716e:	400d      	ands	r5, r1
20027170:	9907      	ldr	r1, [sp, #28]
20027172:	400b      	ands	r3, r1
20027174:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027176:	404d      	eors	r5, r1
20027178:	990b      	ldr	r1, [sp, #44]	@ 0x2c
2002717a:	1964      	adds	r4, r4, r5
2002717c:	ea83 0301 	eor.w	r3, r3, r1
20027180:	eb42 0203 	adc.w	r2, r2, r3
20027184:	9b06      	ldr	r3, [sp, #24]
20027186:	9906      	ldr	r1, [sp, #24]
20027188:	0b9e      	lsrs	r6, r3, #14
2002718a:	9b07      	ldr	r3, [sp, #28]
2002718c:	0c8f      	lsrs	r7, r1, #18
2002718e:	ea46 4683 	orr.w	r6, r6, r3, lsl #18
20027192:	0b9b      	lsrs	r3, r3, #14
20027194:	ea43 4381 	orr.w	r3, r3, r1, lsl #18
20027198:	9907      	ldr	r1, [sp, #28]
2002719a:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
2002719e:	0c8d      	lsrs	r5, r1, #18
200271a0:	9906      	ldr	r1, [sp, #24]
200271a2:	407e      	eors	r6, r7
200271a4:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
200271a8:	406b      	eors	r3, r5
200271aa:	05cd      	lsls	r5, r1, #23
200271ac:	9907      	ldr	r1, [sp, #28]
200271ae:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200271b2:	05cf      	lsls	r7, r1, #23
200271b4:	9906      	ldr	r1, [sp, #24]
200271b6:	4075      	eors	r5, r6
200271b8:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200271bc:	1964      	adds	r4, r4, r5
200271be:	ea83 0307 	eor.w	r3, r3, r7
200271c2:	eb42 0203 	adc.w	r2, r2, r3
200271c6:	9b04      	ldr	r3, [sp, #16]
200271c8:	ea4f 751e 	mov.w	r5, lr, lsr #28
200271cc:	191b      	adds	r3, r3, r4
200271ce:	9304      	str	r3, [sp, #16]
200271d0:	9b05      	ldr	r3, [sp, #20]
200271d2:	ea4f 761c 	mov.w	r6, ip, lsr #28
200271d6:	eb43 0302 	adc.w	r3, r3, r2
200271da:	9305      	str	r3, [sp, #20]
200271dc:	ea4f 738e 	mov.w	r3, lr, lsl #30
200271e0:	ea43 039c 	orr.w	r3, r3, ip, lsr #2
200271e4:	ea45 150c 	orr.w	r5, r5, ip, lsl #4
200271e8:	ea4f 778c 	mov.w	r7, ip, lsl #30
200271ec:	ea47 079e 	orr.w	r7, r7, lr, lsr #2
200271f0:	405d      	eors	r5, r3
200271f2:	ea46 160e 	orr.w	r6, r6, lr, lsl #4
200271f6:	ea4f 634e 	mov.w	r3, lr, lsl #25
200271fa:	9902      	ldr	r1, [sp, #8]
200271fc:	407e      	eors	r6, r7
200271fe:	ea43 13dc 	orr.w	r3, r3, ip, lsr #7
20027202:	ea4f 674c 	mov.w	r7, ip, lsl #25
20027206:	ea47 17de 	orr.w	r7, r7, lr, lsr #7
2002720a:	405d      	eors	r5, r3
2002720c:	9b01      	ldr	r3, [sp, #4]
2002720e:	407e      	eors	r6, r7
20027210:	ea41 070e 	orr.w	r7, r1, lr
20027214:	9903      	ldr	r1, [sp, #12]
20027216:	ea43 030c 	orr.w	r3, r3, ip
2002721a:	400b      	ands	r3, r1
2002721c:	9901      	ldr	r1, [sp, #4]
2002721e:	ea07 070b 	and.w	r7, r7, fp
20027222:	ea01 090c 	and.w	r9, r1, ip
20027226:	9902      	ldr	r1, [sp, #8]
20027228:	ea43 0309 	orr.w	r3, r3, r9
2002722c:	ea01 080e 	and.w	r8, r1, lr
20027230:	9900      	ldr	r1, [sp, #0]
20027232:	18f3      	adds	r3, r6, r3
20027234:	f101 0140 	add.w	r1, r1, #64	@ 0x40
20027238:	9100      	str	r1, [sp, #0]
2002723a:	ea47 0708 	orr.w	r7, r7, r8
2002723e:	eb45 0507 	adc.w	r5, r5, r7
20027242:	4928      	ldr	r1, [pc, #160]	@ (200272e4 <mbedtls_sha512_process+0xa54>)
20027244:	191b      	adds	r3, r3, r4
20027246:	9c00      	ldr	r4, [sp, #0]
20027248:	eb42 0205 	adc.w	r2, r2, r5
2002724c:	42a1      	cmp	r1, r4
2002724e:	f47f abe3 	bne.w	20026a18 <mbedtls_sha512_process+0x188>
20027252:	990e      	ldr	r1, [sp, #56]	@ 0x38
20027254:	18cb      	adds	r3, r1, r3
20027256:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20027258:	eb42 0201 	adc.w	r2, r2, r1
2002725c:	e9ca 3204 	strd	r3, r2, [sl, #16]
20027260:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20027262:	9a11      	ldr	r2, [sp, #68]	@ 0x44
20027264:	eb13 030c 	adds.w	r3, r3, ip
20027268:	eb4e 0202 	adc.w	r2, lr, r2
2002726c:	e9ca 3206 	strd	r3, r2, [sl, #24]
20027270:	9a01      	ldr	r2, [sp, #4]
20027272:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20027274:	9913      	ldr	r1, [sp, #76]	@ 0x4c
20027276:	189b      	adds	r3, r3, r2
20027278:	9a02      	ldr	r2, [sp, #8]
2002727a:	eb42 0201 	adc.w	r2, r2, r1
2002727e:	e9ca 3208 	strd	r3, r2, [sl, #32]
20027282:	9a03      	ldr	r2, [sp, #12]
20027284:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20027286:	9917      	ldr	r1, [sp, #92]	@ 0x5c
20027288:	189b      	adds	r3, r3, r2
2002728a:	9a15      	ldr	r2, [sp, #84]	@ 0x54
2002728c:	eb4b 0202 	adc.w	r2, fp, r2
20027290:	e9ca 320a 	strd	r3, r2, [sl, #40]	@ 0x28
20027294:	9a04      	ldr	r2, [sp, #16]
20027296:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20027298:	189b      	adds	r3, r3, r2
2002729a:	9a05      	ldr	r2, [sp, #20]
2002729c:	eb42 0201 	adc.w	r2, r2, r1
200272a0:	e9ca 320c 	strd	r3, r2, [sl, #48]	@ 0x30
200272a4:	9b18      	ldr	r3, [sp, #96]	@ 0x60
200272a6:	9a06      	ldr	r2, [sp, #24]
200272a8:	9919      	ldr	r1, [sp, #100]	@ 0x64
200272aa:	189a      	adds	r2, r3, r2
200272ac:	9b07      	ldr	r3, [sp, #28]
200272ae:	eb43 0301 	adc.w	r3, r3, r1
200272b2:	e9ca 230e 	strd	r2, r3, [sl, #56]	@ 0x38
200272b6:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
200272b8:	9a08      	ldr	r2, [sp, #32]
200272ba:	991b      	ldr	r1, [sp, #108]	@ 0x6c
200272bc:	189a      	adds	r2, r3, r2
200272be:	9b09      	ldr	r3, [sp, #36]	@ 0x24
200272c0:	eb43 0301 	adc.w	r3, r3, r1
200272c4:	e9ca 2310 	strd	r2, r3, [sl, #64]	@ 0x40
200272c8:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
200272ca:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
200272cc:	991d      	ldr	r1, [sp, #116]	@ 0x74
200272ce:	189a      	adds	r2, r3, r2
200272d0:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200272d2:	eb43 0301 	adc.w	r3, r3, r1
200272d6:	e9ca 2312 	strd	r2, r3, [sl, #72]	@ 0x48
200272da:	f50d 7d3f 	add.w	sp, sp, #764	@ 0x2fc
200272de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200272e2:	bf00      	nop
200272e4:	2002c018 	.word	0x2002c018

200272e8 <mbedtls_sha512_update.part.0>:
200272e8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200272ec:	4615      	mov	r5, r2
200272ee:	e9d0 3200 	ldrd	r3, r2, [r0]
200272f2:	f003 077f 	and.w	r7, r3, #127	@ 0x7f
200272f6:	195b      	adds	r3, r3, r5
200272f8:	f152 0200 	adcs.w	r2, r2, #0
200272fc:	460e      	mov	r6, r1
200272fe:	f04f 0100 	mov.w	r1, #0
20027302:	bf28      	it	cs
20027304:	2101      	movcs	r1, #1
20027306:	4604      	mov	r4, r0
20027308:	e9c0 3200 	strd	r3, r2, [r0]
2002730c:	b131      	cbz	r1, 2002731c <mbedtls_sha512_update.part.0+0x34>
2002730e:	e9d0 3202 	ldrd	r3, r2, [r0, #8]
20027312:	3301      	adds	r3, #1
20027314:	f142 0200 	adc.w	r2, r2, #0
20027318:	e9c0 3202 	strd	r3, r2, [r0, #8]
2002731c:	b19f      	cbz	r7, 20027346 <mbedtls_sha512_update.part.0+0x5e>
2002731e:	f1c7 0980 	rsb	r9, r7, #128	@ 0x80
20027322:	45a9      	cmp	r9, r5
20027324:	d80f      	bhi.n	20027346 <mbedtls_sha512_update.part.0+0x5e>
20027326:	f104 0850 	add.w	r8, r4, #80	@ 0x50
2002732a:	4631      	mov	r1, r6
2002732c:	464a      	mov	r2, r9
2002732e:	eb08 0007 	add.w	r0, r8, r7
20027332:	f003 fa05 	bl	2002a740 <memcpy>
20027336:	3d80      	subs	r5, #128	@ 0x80
20027338:	4641      	mov	r1, r8
2002733a:	4620      	mov	r0, r4
2002733c:	443d      	add	r5, r7
2002733e:	f7ff faa7 	bl	20026890 <mbedtls_sha512_process>
20027342:	2700      	movs	r7, #0
20027344:	444e      	add	r6, r9
20027346:	46a8      	mov	r8, r5
20027348:	eb05 0906 	add.w	r9, r5, r6
2002734c:	e004      	b.n	20027358 <mbedtls_sha512_update.part.0+0x70>
2002734e:	4620      	mov	r0, r4
20027350:	f7ff fa9e 	bl	20026890 <mbedtls_sha512_process>
20027354:	f1a8 0880 	sub.w	r8, r8, #128	@ 0x80
20027358:	f1b8 0f7f 	cmp.w	r8, #127	@ 0x7f
2002735c:	eba9 0108 	sub.w	r1, r9, r8
20027360:	d8f5      	bhi.n	2002734e <mbedtls_sha512_update.part.0+0x66>
20027362:	f06f 037f 	mvn.w	r3, #127	@ 0x7f
20027366:	09e9      	lsrs	r1, r5, #7
20027368:	4359      	muls	r1, r3
2002736a:	186a      	adds	r2, r5, r1
2002736c:	d007      	beq.n	2002737e <mbedtls_sha512_update.part.0+0x96>
2002736e:	f104 0050 	add.w	r0, r4, #80	@ 0x50
20027372:	1a71      	subs	r1, r6, r1
20027374:	4438      	add	r0, r7
20027376:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002737a:	f003 b9e1 	b.w	2002a740 <memcpy>
2002737e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

20027382 <mbedtls_sha512_update>:
20027382:	b10a      	cbz	r2, 20027388 <mbedtls_sha512_update+0x6>
20027384:	f7ff bfb0 	b.w	200272e8 <mbedtls_sha512_update.part.0>
20027388:	4770      	bx	lr
	...

2002738c <mbedtls_sha512_finish>:
2002738c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002738e:	4604      	mov	r4, r0
20027390:	e9d0 2300 	ldrd	r2, r3, [r0]
20027394:	460d      	mov	r5, r1
20027396:	e9d0 6102 	ldrd	r6, r1, [r0, #8]
2002739a:	00c9      	lsls	r1, r1, #3
2002739c:	ea41 7156 	orr.w	r1, r1, r6, lsr #29
200273a0:	b085      	sub	sp, #20
200273a2:	0e0f      	lsrs	r7, r1, #24
200273a4:	0f58      	lsrs	r0, r3, #29
200273a6:	00db      	lsls	r3, r3, #3
200273a8:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
200273ac:	f88d 7000 	strb.w	r7, [sp]
200273b0:	0c0f      	lsrs	r7, r1, #16
200273b2:	f88d 7001 	strb.w	r7, [sp, #1]
200273b6:	f88d 1003 	strb.w	r1, [sp, #3]
200273ba:	0a0f      	lsrs	r7, r1, #8
200273bc:	0e19      	lsrs	r1, r3, #24
200273be:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
200273c2:	f88d 1008 	strb.w	r1, [sp, #8]
200273c6:	00d6      	lsls	r6, r2, #3
200273c8:	0c19      	lsrs	r1, r3, #16
200273ca:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
200273ce:	2a6f      	cmp	r2, #111	@ 0x6f
200273d0:	ba00      	rev	r0, r0
200273d2:	f88d 1009 	strb.w	r1, [sp, #9]
200273d6:	ea4f 2113 	mov.w	r1, r3, lsr #8
200273da:	bf94      	ite	ls
200273dc:	f1c2 0270 	rsbls	r2, r2, #112	@ 0x70
200273e0:	f1c2 02f0 	rsbhi	r2, r2, #240	@ 0xf0
200273e4:	9001      	str	r0, [sp, #4]
200273e6:	f88d 100a 	strb.w	r1, [sp, #10]
200273ea:	4620      	mov	r0, r4
200273ec:	4969      	ldr	r1, [pc, #420]	@ (20027594 <mbedtls_sha512_finish+0x208>)
200273ee:	ba36      	rev	r6, r6
200273f0:	f88d 300b 	strb.w	r3, [sp, #11]
200273f4:	f88d 7002 	strb.w	r7, [sp, #2]
200273f8:	9603      	str	r6, [sp, #12]
200273fa:	f7ff ffc2 	bl	20027382 <mbedtls_sha512_update>
200273fe:	2210      	movs	r2, #16
20027400:	4669      	mov	r1, sp
20027402:	4620      	mov	r0, r4
20027404:	f7ff ff70 	bl	200272e8 <mbedtls_sha512_update.part.0>
20027408:	7de3      	ldrb	r3, [r4, #23]
2002740a:	702b      	strb	r3, [r5, #0]
2002740c:	8ae3      	ldrh	r3, [r4, #22]
2002740e:	706b      	strb	r3, [r5, #1]
20027410:	6963      	ldr	r3, [r4, #20]
20027412:	0a1b      	lsrs	r3, r3, #8
20027414:	70ab      	strb	r3, [r5, #2]
20027416:	6963      	ldr	r3, [r4, #20]
20027418:	70eb      	strb	r3, [r5, #3]
2002741a:	7ce3      	ldrb	r3, [r4, #19]
2002741c:	712b      	strb	r3, [r5, #4]
2002741e:	8a63      	ldrh	r3, [r4, #18]
20027420:	716b      	strb	r3, [r5, #5]
20027422:	6923      	ldr	r3, [r4, #16]
20027424:	0a1b      	lsrs	r3, r3, #8
20027426:	71ab      	strb	r3, [r5, #6]
20027428:	6923      	ldr	r3, [r4, #16]
2002742a:	71eb      	strb	r3, [r5, #7]
2002742c:	7fe3      	ldrb	r3, [r4, #31]
2002742e:	722b      	strb	r3, [r5, #8]
20027430:	8be3      	ldrh	r3, [r4, #30]
20027432:	726b      	strb	r3, [r5, #9]
20027434:	69e3      	ldr	r3, [r4, #28]
20027436:	0a1b      	lsrs	r3, r3, #8
20027438:	72ab      	strb	r3, [r5, #10]
2002743a:	69e3      	ldr	r3, [r4, #28]
2002743c:	72eb      	strb	r3, [r5, #11]
2002743e:	7ee3      	ldrb	r3, [r4, #27]
20027440:	732b      	strb	r3, [r5, #12]
20027442:	8b63      	ldrh	r3, [r4, #26]
20027444:	736b      	strb	r3, [r5, #13]
20027446:	69a3      	ldr	r3, [r4, #24]
20027448:	0a1b      	lsrs	r3, r3, #8
2002744a:	73ab      	strb	r3, [r5, #14]
2002744c:	69a3      	ldr	r3, [r4, #24]
2002744e:	73eb      	strb	r3, [r5, #15]
20027450:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20027454:	742b      	strb	r3, [r5, #16]
20027456:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
20027458:	746b      	strb	r3, [r5, #17]
2002745a:	6a63      	ldr	r3, [r4, #36]	@ 0x24
2002745c:	0a1b      	lsrs	r3, r3, #8
2002745e:	74ab      	strb	r3, [r5, #18]
20027460:	6a63      	ldr	r3, [r4, #36]	@ 0x24
20027462:	74eb      	strb	r3, [r5, #19]
20027464:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20027468:	752b      	strb	r3, [r5, #20]
2002746a:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
2002746c:	756b      	strb	r3, [r5, #21]
2002746e:	6a23      	ldr	r3, [r4, #32]
20027470:	0a1b      	lsrs	r3, r3, #8
20027472:	75ab      	strb	r3, [r5, #22]
20027474:	6a23      	ldr	r3, [r4, #32]
20027476:	75eb      	strb	r3, [r5, #23]
20027478:	f894 302f 	ldrb.w	r3, [r4, #47]	@ 0x2f
2002747c:	762b      	strb	r3, [r5, #24]
2002747e:	8de3      	ldrh	r3, [r4, #46]	@ 0x2e
20027480:	766b      	strb	r3, [r5, #25]
20027482:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20027484:	0a1b      	lsrs	r3, r3, #8
20027486:	76ab      	strb	r3, [r5, #26]
20027488:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
2002748a:	76eb      	strb	r3, [r5, #27]
2002748c:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
20027490:	772b      	strb	r3, [r5, #28]
20027492:	8d63      	ldrh	r3, [r4, #42]	@ 0x2a
20027494:	776b      	strb	r3, [r5, #29]
20027496:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
20027498:	0a1b      	lsrs	r3, r3, #8
2002749a:	77ab      	strb	r3, [r5, #30]
2002749c:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
2002749e:	77eb      	strb	r3, [r5, #31]
200274a0:	f894 3037 	ldrb.w	r3, [r4, #55]	@ 0x37
200274a4:	f885 3020 	strb.w	r3, [r5, #32]
200274a8:	8ee3      	ldrh	r3, [r4, #54]	@ 0x36
200274aa:	f885 3021 	strb.w	r3, [r5, #33]	@ 0x21
200274ae:	6b63      	ldr	r3, [r4, #52]	@ 0x34
200274b0:	0a1b      	lsrs	r3, r3, #8
200274b2:	f885 3022 	strb.w	r3, [r5, #34]	@ 0x22
200274b6:	6b63      	ldr	r3, [r4, #52]	@ 0x34
200274b8:	f885 3023 	strb.w	r3, [r5, #35]	@ 0x23
200274bc:	f894 3033 	ldrb.w	r3, [r4, #51]	@ 0x33
200274c0:	f885 3024 	strb.w	r3, [r5, #36]	@ 0x24
200274c4:	8e63      	ldrh	r3, [r4, #50]	@ 0x32
200274c6:	f885 3025 	strb.w	r3, [r5, #37]	@ 0x25
200274ca:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200274cc:	0a1b      	lsrs	r3, r3, #8
200274ce:	f885 3026 	strb.w	r3, [r5, #38]	@ 0x26
200274d2:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200274d4:	f885 3027 	strb.w	r3, [r5, #39]	@ 0x27
200274d8:	f894 303f 	ldrb.w	r3, [r4, #63]	@ 0x3f
200274dc:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
200274e0:	8fe3      	ldrh	r3, [r4, #62]	@ 0x3e
200274e2:	f885 3029 	strb.w	r3, [r5, #41]	@ 0x29
200274e6:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
200274e8:	0a1b      	lsrs	r3, r3, #8
200274ea:	f885 302a 	strb.w	r3, [r5, #42]	@ 0x2a
200274ee:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
200274f0:	f885 302b 	strb.w	r3, [r5, #43]	@ 0x2b
200274f4:	f894 303b 	ldrb.w	r3, [r4, #59]	@ 0x3b
200274f8:	f885 302c 	strb.w	r3, [r5, #44]	@ 0x2c
200274fc:	8f63      	ldrh	r3, [r4, #58]	@ 0x3a
200274fe:	f885 302d 	strb.w	r3, [r5, #45]	@ 0x2d
20027502:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
20027504:	0a1b      	lsrs	r3, r3, #8
20027506:	f885 302e 	strb.w	r3, [r5, #46]	@ 0x2e
2002750a:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
2002750c:	f885 302f 	strb.w	r3, [r5, #47]	@ 0x2f
20027510:	f8d4 30d0 	ldr.w	r3, [r4, #208]	@ 0xd0
20027514:	2b00      	cmp	r3, #0
20027516:	d13b      	bne.n	20027590 <mbedtls_sha512_finish+0x204>
20027518:	f894 3047 	ldrb.w	r3, [r4, #71]	@ 0x47
2002751c:	f885 3030 	strb.w	r3, [r5, #48]	@ 0x30
20027520:	f8b4 3046 	ldrh.w	r3, [r4, #70]	@ 0x46
20027524:	f885 3031 	strb.w	r3, [r5, #49]	@ 0x31
20027528:	6c63      	ldr	r3, [r4, #68]	@ 0x44
2002752a:	0a1b      	lsrs	r3, r3, #8
2002752c:	f885 3032 	strb.w	r3, [r5, #50]	@ 0x32
20027530:	6c63      	ldr	r3, [r4, #68]	@ 0x44
20027532:	f885 3033 	strb.w	r3, [r5, #51]	@ 0x33
20027536:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
2002753a:	f885 3034 	strb.w	r3, [r5, #52]	@ 0x34
2002753e:	f8b4 3042 	ldrh.w	r3, [r4, #66]	@ 0x42
20027542:	f885 3035 	strb.w	r3, [r5, #53]	@ 0x35
20027546:	6c23      	ldr	r3, [r4, #64]	@ 0x40
20027548:	0a1b      	lsrs	r3, r3, #8
2002754a:	f885 3036 	strb.w	r3, [r5, #54]	@ 0x36
2002754e:	6c23      	ldr	r3, [r4, #64]	@ 0x40
20027550:	f885 3037 	strb.w	r3, [r5, #55]	@ 0x37
20027554:	f894 304f 	ldrb.w	r3, [r4, #79]	@ 0x4f
20027558:	f885 3038 	strb.w	r3, [r5, #56]	@ 0x38
2002755c:	f8b4 304e 	ldrh.w	r3, [r4, #78]	@ 0x4e
20027560:	f885 3039 	strb.w	r3, [r5, #57]	@ 0x39
20027564:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
20027566:	0a1b      	lsrs	r3, r3, #8
20027568:	f885 303a 	strb.w	r3, [r5, #58]	@ 0x3a
2002756c:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
2002756e:	f885 303b 	strb.w	r3, [r5, #59]	@ 0x3b
20027572:	f894 304b 	ldrb.w	r3, [r4, #75]	@ 0x4b
20027576:	f885 303c 	strb.w	r3, [r5, #60]	@ 0x3c
2002757a:	f8b4 304a 	ldrh.w	r3, [r4, #74]	@ 0x4a
2002757e:	f885 303d 	strb.w	r3, [r5, #61]	@ 0x3d
20027582:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
20027584:	0a1b      	lsrs	r3, r3, #8
20027586:	f885 303e 	strb.w	r3, [r5, #62]	@ 0x3e
2002758a:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
2002758c:	f885 303f 	strb.w	r3, [r5, #63]	@ 0x3f
20027590:	b005      	add	sp, #20
20027592:	bdf0      	pop	{r4, r5, r6, r7, pc}
20027594:	2002bd18 	.word	0x2002bd18

20027598 <mbedtls_sha512>:
20027598:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002759c:	461c      	mov	r4, r3
2002759e:	b0b7      	sub	sp, #220	@ 0xdc
200275a0:	4606      	mov	r6, r0
200275a2:	4668      	mov	r0, sp
200275a4:	460f      	mov	r7, r1
200275a6:	4615      	mov	r5, r2
200275a8:	f7ff f8ce 	bl	20026748 <mbedtls_sha512_init>
200275ac:	2c00      	cmp	r4, #0
200275ae:	d03f      	beq.n	20027630 <mbedtls_sha512+0x98>
200275b0:	f20f 0bf4 	addw	fp, pc, #244	@ 0xf4
200275b4:	e9db ab00 	ldrd	sl, fp, [fp]
200275b8:	f20f 09f4 	addw	r9, pc, #244	@ 0xf4
200275bc:	e9d9 8900 	ldrd	r8, r9, [r9]
200275c0:	a13d      	add	r1, pc, #244	@ (adr r1, 200276b8 <mbedtls_sha512+0x120>)
200275c2:	e9d1 0100 	ldrd	r0, r1, [r1]
200275c6:	a33e      	add	r3, pc, #248	@ (adr r3, 200276c0 <mbedtls_sha512+0x128>)
200275c8:	e9d3 2300 	ldrd	r2, r3, [r3]
200275cc:	ed9f 4b24 	vldr	d4, [pc, #144]	@ 20027660 <mbedtls_sha512+0xc8>
200275d0:	ed9f 5b25 	vldr	d5, [pc, #148]	@ 20027668 <mbedtls_sha512+0xd0>
200275d4:	ed9f 6b26 	vldr	d6, [pc, #152]	@ 20027670 <mbedtls_sha512+0xd8>
200275d8:	ed9f 7b27 	vldr	d7, [pc, #156]	@ 20027678 <mbedtls_sha512+0xe0>
200275dc:	ed9f 3b28 	vldr	d3, [pc, #160]	@ 20027680 <mbedtls_sha512+0xe8>
200275e0:	e9cd 2312 	strd	r2, r3, [sp, #72]	@ 0x48
200275e4:	e9cd 0110 	strd	r0, r1, [sp, #64]	@ 0x40
200275e8:	463a      	mov	r2, r7
200275ea:	4631      	mov	r1, r6
200275ec:	4668      	mov	r0, sp
200275ee:	ed8d 3b00 	vstr	d3, [sp]
200275f2:	ed8d 3b02 	vstr	d3, [sp, #8]
200275f6:	ed8d 4b04 	vstr	d4, [sp, #16]
200275fa:	ed8d 5b06 	vstr	d5, [sp, #24]
200275fe:	ed8d 6b08 	vstr	d6, [sp, #32]
20027602:	ed8d 7b0a 	vstr	d7, [sp, #40]	@ 0x28
20027606:	e9cd ab0c 	strd	sl, fp, [sp, #48]	@ 0x30
2002760a:	e9cd 890e 	strd	r8, r9, [sp, #56]	@ 0x38
2002760e:	9434      	str	r4, [sp, #208]	@ 0xd0
20027610:	f7ff feb7 	bl	20027382 <mbedtls_sha512_update>
20027614:	4629      	mov	r1, r5
20027616:	4668      	mov	r0, sp
20027618:	f7ff feb8 	bl	2002738c <mbedtls_sha512_finish>
2002761c:	2300      	movs	r3, #0
2002761e:	461a      	mov	r2, r3
20027620:	f80d 2003 	strb.w	r2, [sp, r3]
20027624:	3301      	adds	r3, #1
20027626:	2bd8      	cmp	r3, #216	@ 0xd8
20027628:	d1fa      	bne.n	20027620 <mbedtls_sha512+0x88>
2002762a:	b037      	add	sp, #220	@ 0xdc
2002762c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20027630:	ed9f 4b15 	vldr	d4, [pc, #84]	@ 20027688 <mbedtls_sha512+0xf0>
20027634:	f20f 0b90 	addw	fp, pc, #144	@ 0x90
20027638:	e9db ab00 	ldrd	sl, fp, [fp]
2002763c:	f20f 0990 	addw	r9, pc, #144	@ 0x90
20027640:	e9d9 8900 	ldrd	r8, r9, [r9]
20027644:	a124      	add	r1, pc, #144	@ (adr r1, 200276d8 <mbedtls_sha512+0x140>)
20027646:	e9d1 0100 	ldrd	r0, r1, [r1]
2002764a:	a325      	add	r3, pc, #148	@ (adr r3, 200276e0 <mbedtls_sha512+0x148>)
2002764c:	e9d3 2300 	ldrd	r2, r3, [r3]
20027650:	ed9f 5b0f 	vldr	d5, [pc, #60]	@ 20027690 <mbedtls_sha512+0xf8>
20027654:	ed9f 6b10 	vldr	d6, [pc, #64]	@ 20027698 <mbedtls_sha512+0x100>
20027658:	ed9f 7b11 	vldr	d7, [pc, #68]	@ 200276a0 <mbedtls_sha512+0x108>
2002765c:	e7be      	b.n	200275dc <mbedtls_sha512+0x44>
2002765e:	bf00      	nop
20027660:	c1059ed8 	.word	0xc1059ed8
20027664:	cbbb9d5d 	.word	0xcbbb9d5d
20027668:	367cd507 	.word	0x367cd507
2002766c:	629a292a 	.word	0x629a292a
20027670:	3070dd17 	.word	0x3070dd17
20027674:	9159015a 	.word	0x9159015a
20027678:	f70e5939 	.word	0xf70e5939
2002767c:	152fecd8 	.word	0x152fecd8
	...
20027688:	f3bcc908 	.word	0xf3bcc908
2002768c:	6a09e667 	.word	0x6a09e667
20027690:	84caa73b 	.word	0x84caa73b
20027694:	bb67ae85 	.word	0xbb67ae85
20027698:	fe94f82b 	.word	0xfe94f82b
2002769c:	3c6ef372 	.word	0x3c6ef372
200276a0:	5f1d36f1 	.word	0x5f1d36f1
200276a4:	a54ff53a 	.word	0xa54ff53a
200276a8:	ffc00b31 	.word	0xffc00b31
200276ac:	67332667 	.word	0x67332667
200276b0:	68581511 	.word	0x68581511
200276b4:	8eb44a87 	.word	0x8eb44a87
200276b8:	64f98fa7 	.word	0x64f98fa7
200276bc:	db0c2e0d 	.word	0xdb0c2e0d
200276c0:	befa4fa4 	.word	0xbefa4fa4
200276c4:	47b5481d 	.word	0x47b5481d
200276c8:	ade682d1 	.word	0xade682d1
200276cc:	510e527f 	.word	0x510e527f
200276d0:	2b3e6c1f 	.word	0x2b3e6c1f
200276d4:	9b05688c 	.word	0x9b05688c
200276d8:	fb41bd6b 	.word	0xfb41bd6b
200276dc:	1f83d9ab 	.word	0x1f83d9ab
200276e0:	137e2179 	.word	0x137e2179
200276e4:	5be0cd19 	.word	0x5be0cd19

200276e8 <mbedtls_asn1_get_len>:
200276e8:	b570      	push	{r4, r5, r6, lr}
200276ea:	6803      	ldr	r3, [r0, #0]
200276ec:	1acd      	subs	r5, r1, r3
200276ee:	2d00      	cmp	r5, #0
200276f0:	dc02      	bgt.n	200276f8 <mbedtls_asn1_get_len+0x10>
200276f2:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
200276f6:	bd70      	pop	{r4, r5, r6, pc}
200276f8:	f993 6000 	ldrsb.w	r6, [r3]
200276fc:	781c      	ldrb	r4, [r3, #0]
200276fe:	2e00      	cmp	r6, #0
20027700:	db0a      	blt.n	20027718 <mbedtls_asn1_get_len+0x30>
20027702:	1c5c      	adds	r4, r3, #1
20027704:	6004      	str	r4, [r0, #0]
20027706:	781b      	ldrb	r3, [r3, #0]
20027708:	6013      	str	r3, [r2, #0]
2002770a:	6803      	ldr	r3, [r0, #0]
2002770c:	1ac9      	subs	r1, r1, r3
2002770e:	6813      	ldr	r3, [r2, #0]
20027710:	428b      	cmp	r3, r1
20027712:	d8ee      	bhi.n	200276f2 <mbedtls_asn1_get_len+0xa>
20027714:	2000      	movs	r0, #0
20027716:	e7ee      	b.n	200276f6 <mbedtls_asn1_get_len+0xe>
20027718:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
2002771c:	3c01      	subs	r4, #1
2002771e:	2c03      	cmp	r4, #3
20027720:	d82b      	bhi.n	2002777a <mbedtls_asn1_get_len+0x92>
20027722:	e8df f004 	tbb	[pc, r4]
20027726:	0a02      	.short	0x0a02
20027728:	2114      	.short	0x2114
2002772a:	2d01      	cmp	r5, #1
2002772c:	d0e1      	beq.n	200276f2 <mbedtls_asn1_get_len+0xa>
2002772e:	785b      	ldrb	r3, [r3, #1]
20027730:	6013      	str	r3, [r2, #0]
20027732:	6803      	ldr	r3, [r0, #0]
20027734:	3302      	adds	r3, #2
20027736:	6003      	str	r3, [r0, #0]
20027738:	e7e7      	b.n	2002770a <mbedtls_asn1_get_len+0x22>
2002773a:	2d02      	cmp	r5, #2
2002773c:	ddd9      	ble.n	200276f2 <mbedtls_asn1_get_len+0xa>
2002773e:	f8b3 3001 	ldrh.w	r3, [r3, #1]
20027742:	ba5b      	rev16	r3, r3
20027744:	b29b      	uxth	r3, r3
20027746:	6013      	str	r3, [r2, #0]
20027748:	6803      	ldr	r3, [r0, #0]
2002774a:	3303      	adds	r3, #3
2002774c:	e7f3      	b.n	20027736 <mbedtls_asn1_get_len+0x4e>
2002774e:	2d03      	cmp	r5, #3
20027750:	ddcf      	ble.n	200276f2 <mbedtls_asn1_get_len+0xa>
20027752:	789c      	ldrb	r4, [r3, #2]
20027754:	785d      	ldrb	r5, [r3, #1]
20027756:	0224      	lsls	r4, r4, #8
20027758:	78db      	ldrb	r3, [r3, #3]
2002775a:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
2002775e:	4323      	orrs	r3, r4
20027760:	6013      	str	r3, [r2, #0]
20027762:	6803      	ldr	r3, [r0, #0]
20027764:	3304      	adds	r3, #4
20027766:	e7e6      	b.n	20027736 <mbedtls_asn1_get_len+0x4e>
20027768:	2d04      	cmp	r5, #4
2002776a:	ddc2      	ble.n	200276f2 <mbedtls_asn1_get_len+0xa>
2002776c:	f8d3 3001 	ldr.w	r3, [r3, #1]
20027770:	ba1b      	rev	r3, r3
20027772:	6013      	str	r3, [r2, #0]
20027774:	6803      	ldr	r3, [r0, #0]
20027776:	3305      	adds	r3, #5
20027778:	e7dd      	b.n	20027736 <mbedtls_asn1_get_len+0x4e>
2002777a:	f06f 0063 	mvn.w	r0, #99	@ 0x63
2002777e:	e7ba      	b.n	200276f6 <mbedtls_asn1_get_len+0xe>

20027780 <mbedtls_asn1_get_tag>:
20027780:	b470      	push	{r4, r5, r6}
20027782:	6804      	ldr	r4, [r0, #0]
20027784:	1b0e      	subs	r6, r1, r4
20027786:	2e00      	cmp	r6, #0
20027788:	dd07      	ble.n	2002779a <mbedtls_asn1_get_tag+0x1a>
2002778a:	7826      	ldrb	r6, [r4, #0]
2002778c:	429e      	cmp	r6, r3
2002778e:	d108      	bne.n	200277a2 <mbedtls_asn1_get_tag+0x22>
20027790:	3401      	adds	r4, #1
20027792:	6004      	str	r4, [r0, #0]
20027794:	bc70      	pop	{r4, r5, r6}
20027796:	f7ff bfa7 	b.w	200276e8 <mbedtls_asn1_get_len>
2002779a:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
2002779e:	bc70      	pop	{r4, r5, r6}
200277a0:	4770      	bx	lr
200277a2:	f06f 0061 	mvn.w	r0, #97	@ 0x61
200277a6:	e7fa      	b.n	2002779e <mbedtls_asn1_get_tag+0x1e>

200277a8 <mbedtls_asn1_get_mpi>:
200277a8:	b573      	push	{r0, r1, r4, r5, r6, lr}
200277aa:	2302      	movs	r3, #2
200277ac:	4615      	mov	r5, r2
200277ae:	aa01      	add	r2, sp, #4
200277b0:	4604      	mov	r4, r0
200277b2:	f7ff ffe5 	bl	20027780 <mbedtls_asn1_get_tag>
200277b6:	b940      	cbnz	r0, 200277ca <mbedtls_asn1_get_mpi+0x22>
200277b8:	9e01      	ldr	r6, [sp, #4]
200277ba:	4628      	mov	r0, r5
200277bc:	4632      	mov	r2, r6
200277be:	6821      	ldr	r1, [r4, #0]
200277c0:	f000 fad4 	bl	20027d6c <mbedtls_mpi_read_binary>
200277c4:	6823      	ldr	r3, [r4, #0]
200277c6:	4433      	add	r3, r6
200277c8:	6023      	str	r3, [r4, #0]
200277ca:	b002      	add	sp, #8
200277cc:	bd70      	pop	{r4, r5, r6, pc}

200277ce <mbedtls_asn1_get_bitstring_null>:
200277ce:	b538      	push	{r3, r4, r5, lr}
200277d0:	2303      	movs	r3, #3
200277d2:	4604      	mov	r4, r0
200277d4:	4615      	mov	r5, r2
200277d6:	f7ff ffd3 	bl	20027780 <mbedtls_asn1_get_tag>
200277da:	b958      	cbnz	r0, 200277f4 <mbedtls_asn1_get_bitstring_null+0x26>
200277dc:	6813      	ldr	r3, [r2, #0]
200277de:	1e5a      	subs	r2, r3, #1
200277e0:	2b01      	cmp	r3, #1
200277e2:	602a      	str	r2, [r5, #0]
200277e4:	d904      	bls.n	200277f0 <mbedtls_asn1_get_bitstring_null+0x22>
200277e6:	6823      	ldr	r3, [r4, #0]
200277e8:	1c5a      	adds	r2, r3, #1
200277ea:	6022      	str	r2, [r4, #0]
200277ec:	781b      	ldrb	r3, [r3, #0]
200277ee:	b10b      	cbz	r3, 200277f4 <mbedtls_asn1_get_bitstring_null+0x26>
200277f0:	f06f 0067 	mvn.w	r0, #103	@ 0x67
200277f4:	bd38      	pop	{r3, r4, r5, pc}

200277f6 <mbedtls_asn1_get_alg>:
200277f6:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
200277fa:	4690      	mov	r8, r2
200277fc:	461e      	mov	r6, r3
200277fe:	aa01      	add	r2, sp, #4
20027800:	2330      	movs	r3, #48	@ 0x30
20027802:	4605      	mov	r5, r0
20027804:	460f      	mov	r7, r1
20027806:	f7ff ffbb 	bl	20027780 <mbedtls_asn1_get_tag>
2002780a:	4604      	mov	r4, r0
2002780c:	bb10      	cbnz	r0, 20027854 <mbedtls_asn1_get_alg+0x5e>
2002780e:	682b      	ldr	r3, [r5, #0]
20027810:	1aff      	subs	r7, r7, r3
20027812:	2f00      	cmp	r7, #0
20027814:	dd38      	ble.n	20027888 <mbedtls_asn1_get_alg+0x92>
20027816:	4642      	mov	r2, r8
20027818:	781b      	ldrb	r3, [r3, #0]
2002781a:	4628      	mov	r0, r5
2002781c:	f842 3b04 	str.w	r3, [r2], #4
20027820:	682f      	ldr	r7, [r5, #0]
20027822:	9b01      	ldr	r3, [sp, #4]
20027824:	441f      	add	r7, r3
20027826:	4639      	mov	r1, r7
20027828:	2306      	movs	r3, #6
2002782a:	f7ff ffa9 	bl	20027780 <mbedtls_asn1_get_tag>
2002782e:	4604      	mov	r4, r0
20027830:	b980      	cbnz	r0, 20027854 <mbedtls_asn1_get_alg+0x5e>
20027832:	682b      	ldr	r3, [r5, #0]
20027834:	f8d8 2004 	ldr.w	r2, [r8, #4]
20027838:	f8c8 3008 	str.w	r3, [r8, #8]
2002783c:	1899      	adds	r1, r3, r2
2002783e:	42b9      	cmp	r1, r7
20027840:	6029      	str	r1, [r5, #0]
20027842:	d10b      	bne.n	2002785c <mbedtls_asn1_get_alg+0x66>
20027844:	4601      	mov	r1, r0
20027846:	f106 030c 	add.w	r3, r6, #12
2002784a:	4632      	mov	r2, r6
2002784c:	3601      	adds	r6, #1
2002784e:	42b3      	cmp	r3, r6
20027850:	7011      	strb	r1, [r2, #0]
20027852:	d1fa      	bne.n	2002784a <mbedtls_asn1_get_alg+0x54>
20027854:	4620      	mov	r0, r4
20027856:	b002      	add	sp, #8
20027858:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
2002785c:	5c9b      	ldrb	r3, [r3, r2]
2002785e:	4632      	mov	r2, r6
20027860:	f842 3b04 	str.w	r3, [r2], #4
20027864:	682b      	ldr	r3, [r5, #0]
20027866:	4639      	mov	r1, r7
20027868:	3301      	adds	r3, #1
2002786a:	4628      	mov	r0, r5
2002786c:	602b      	str	r3, [r5, #0]
2002786e:	f7ff ff3b 	bl	200276e8 <mbedtls_asn1_get_len>
20027872:	b960      	cbnz	r0, 2002788e <mbedtls_asn1_get_alg+0x98>
20027874:	682b      	ldr	r3, [r5, #0]
20027876:	6872      	ldr	r2, [r6, #4]
20027878:	60b3      	str	r3, [r6, #8]
2002787a:	4413      	add	r3, r2
2002787c:	42bb      	cmp	r3, r7
2002787e:	bf18      	it	ne
20027880:	f06f 0465 	mvnne.w	r4, #101	@ 0x65
20027884:	602b      	str	r3, [r5, #0]
20027886:	e7e5      	b.n	20027854 <mbedtls_asn1_get_alg+0x5e>
20027888:	f06f 045f 	mvn.w	r4, #95	@ 0x5f
2002788c:	e7e2      	b.n	20027854 <mbedtls_asn1_get_alg+0x5e>
2002788e:	4604      	mov	r4, r0
20027890:	e7e0      	b.n	20027854 <mbedtls_asn1_get_alg+0x5e>

20027892 <mpi_sub_hlp>:
20027892:	2300      	movs	r3, #0
20027894:	b5f0      	push	{r4, r5, r6, r7, lr}
20027896:	461c      	mov	r4, r3
20027898:	1f16      	subs	r6, r2, #4
2002789a:	4284      	cmp	r4, r0
2002789c:	d103      	bne.n	200278a6 <mpi_sub_hlp+0x14>
2002789e:	eb02 0284 	add.w	r2, r2, r4, lsl #2
200278a2:	b9b3      	cbnz	r3, 200278d2 <mpi_sub_hlp+0x40>
200278a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
200278a6:	f856 cf04 	ldr.w	ip, [r6, #4]!
200278aa:	ebac 0503 	sub.w	r5, ip, r3
200278ae:	6035      	str	r5, [r6, #0]
200278b0:	f851 7024 	ldr.w	r7, [r1, r4, lsl #2]
200278b4:	3401      	adds	r4, #1
200278b6:	42bd      	cmp	r5, r7
200278b8:	bf2c      	ite	cs
200278ba:	f04f 0e00 	movcs.w	lr, #0
200278be:	f04f 0e01 	movcc.w	lr, #1
200278c2:	1bed      	subs	r5, r5, r7
200278c4:	459c      	cmp	ip, r3
200278c6:	bf2c      	ite	cs
200278c8:	4673      	movcs	r3, lr
200278ca:	f10e 0301 	addcc.w	r3, lr, #1
200278ce:	6035      	str	r5, [r6, #0]
200278d0:	e7e3      	b.n	2002789a <mpi_sub_hlp+0x8>
200278d2:	6811      	ldr	r1, [r2, #0]
200278d4:	1ac8      	subs	r0, r1, r3
200278d6:	4299      	cmp	r1, r3
200278d8:	bf2c      	ite	cs
200278da:	2300      	movcs	r3, #0
200278dc:	2301      	movcc	r3, #1
200278de:	f842 0b04 	str.w	r0, [r2], #4
200278e2:	e7de      	b.n	200278a2 <mpi_sub_hlp+0x10>

200278e4 <mpi_mul_hlp>:
200278e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200278e8:	4694      	mov	ip, r2
200278ea:	460e      	mov	r6, r1
200278ec:	4686      	mov	lr, r0
200278ee:	2500      	movs	r5, #0
200278f0:	f102 0440 	add.w	r4, r2, #64	@ 0x40
200278f4:	f1be 0f0f 	cmp.w	lr, #15
200278f8:	f854 7c40 	ldr.w	r7, [r4, #-64]
200278fc:	f106 0640 	add.w	r6, r6, #64	@ 0x40
20027900:	f104 0440 	add.w	r4, r4, #64	@ 0x40
20027904:	d87c      	bhi.n	20027a00 <mpi_mul_hlp+0x11c>
20027906:	f06f 080f 	mvn.w	r8, #15
2002790a:	0902      	lsrs	r2, r0, #4
2002790c:	fb08 0002 	mla	r0, r8, r2, r0
20027910:	2807      	cmp	r0, #7
20027912:	ea4f 1e82 	mov.w	lr, r2, lsl #6
20027916:	eb0c 1482 	add.w	r4, ip, r2, lsl #6
2002791a:	eb01 1682 	add.w	r6, r1, r2, lsl #6
2002791e:	d95b      	bls.n	200279d8 <mpi_mul_hlp+0xf4>
20027920:	f851 100e 	ldr.w	r1, [r1, lr]
20027924:	3808      	subs	r0, #8
20027926:	fba1 1203 	umull	r1, r2, r1, r3
2002792a:	1869      	adds	r1, r5, r1
2002792c:	f142 0200 	adc.w	r2, r2, #0
20027930:	187f      	adds	r7, r7, r1
20027932:	f84c 700e 	str.w	r7, [ip, lr]
20027936:	6871      	ldr	r1, [r6, #4]
20027938:	f142 0200 	adc.w	r2, r2, #0
2002793c:	fba1 5103 	umull	r5, r1, r1, r3
20027940:	1952      	adds	r2, r2, r5
20027942:	6865      	ldr	r5, [r4, #4]
20027944:	f141 0100 	adc.w	r1, r1, #0
20027948:	1952      	adds	r2, r2, r5
2002794a:	6062      	str	r2, [r4, #4]
2002794c:	68b2      	ldr	r2, [r6, #8]
2002794e:	f141 0100 	adc.w	r1, r1, #0
20027952:	fba2 5203 	umull	r5, r2, r2, r3
20027956:	1949      	adds	r1, r1, r5
20027958:	68a5      	ldr	r5, [r4, #8]
2002795a:	f142 0200 	adc.w	r2, r2, #0
2002795e:	1949      	adds	r1, r1, r5
20027960:	60a1      	str	r1, [r4, #8]
20027962:	68f1      	ldr	r1, [r6, #12]
20027964:	f142 0200 	adc.w	r2, r2, #0
20027968:	fba1 5103 	umull	r5, r1, r1, r3
2002796c:	1952      	adds	r2, r2, r5
2002796e:	68e5      	ldr	r5, [r4, #12]
20027970:	f141 0100 	adc.w	r1, r1, #0
20027974:	1952      	adds	r2, r2, r5
20027976:	60e2      	str	r2, [r4, #12]
20027978:	6932      	ldr	r2, [r6, #16]
2002797a:	f141 0100 	adc.w	r1, r1, #0
2002797e:	fba2 5203 	umull	r5, r2, r2, r3
20027982:	1949      	adds	r1, r1, r5
20027984:	6925      	ldr	r5, [r4, #16]
20027986:	f142 0200 	adc.w	r2, r2, #0
2002798a:	1949      	adds	r1, r1, r5
2002798c:	6121      	str	r1, [r4, #16]
2002798e:	6971      	ldr	r1, [r6, #20]
20027990:	f142 0200 	adc.w	r2, r2, #0
20027994:	fba1 5103 	umull	r5, r1, r1, r3
20027998:	1952      	adds	r2, r2, r5
2002799a:	6965      	ldr	r5, [r4, #20]
2002799c:	f141 0100 	adc.w	r1, r1, #0
200279a0:	1952      	adds	r2, r2, r5
200279a2:	6162      	str	r2, [r4, #20]
200279a4:	69b2      	ldr	r2, [r6, #24]
200279a6:	f141 0100 	adc.w	r1, r1, #0
200279aa:	fba2 5203 	umull	r5, r2, r2, r3
200279ae:	1949      	adds	r1, r1, r5
200279b0:	69a5      	ldr	r5, [r4, #24]
200279b2:	f142 0200 	adc.w	r2, r2, #0
200279b6:	1949      	adds	r1, r1, r5
200279b8:	61a1      	str	r1, [r4, #24]
200279ba:	69f1      	ldr	r1, [r6, #28]
200279bc:	f142 0200 	adc.w	r2, r2, #0
200279c0:	fba1 1503 	umull	r1, r5, r1, r3
200279c4:	1852      	adds	r2, r2, r1
200279c6:	69e1      	ldr	r1, [r4, #28]
200279c8:	f145 0500 	adc.w	r5, r5, #0
200279cc:	1852      	adds	r2, r2, r1
200279ce:	61e2      	str	r2, [r4, #28]
200279d0:	f145 0500 	adc.w	r5, r5, #0
200279d4:	3420      	adds	r4, #32
200279d6:	3620      	adds	r6, #32
200279d8:	4627      	mov	r7, r4
200279da:	ea4f 0c80 	mov.w	ip, r0, lsl #2
200279de:	eb06 0080 	add.w	r0, r6, r0, lsl #2
200279e2:	42b0      	cmp	r0, r6
200279e4:	f857 1b04 	ldr.w	r1, [r7], #4
200279e8:	f040 80eb 	bne.w	20027bc2 <mpi_mul_hlp+0x2de>
200279ec:	4464      	add	r4, ip
200279ee:	6823      	ldr	r3, [r4, #0]
200279f0:	195b      	adds	r3, r3, r5
200279f2:	f844 3b04 	str.w	r3, [r4], #4
200279f6:	f04f 0501 	mov.w	r5, #1
200279fa:	d2f8      	bcs.n	200279ee <mpi_mul_hlp+0x10a>
200279fc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027a00:	f856 2c40 	ldr.w	r2, [r6, #-64]
20027a04:	f1ae 0e10 	sub.w	lr, lr, #16
20027a08:	fba2 2803 	umull	r2, r8, r2, r3
20027a0c:	18aa      	adds	r2, r5, r2
20027a0e:	f148 0500 	adc.w	r5, r8, #0
20027a12:	18ba      	adds	r2, r7, r2
20027a14:	f844 2c80 	str.w	r2, [r4, #-128]
20027a18:	f856 2c3c 	ldr.w	r2, [r6, #-60]
20027a1c:	f145 0500 	adc.w	r5, r5, #0
20027a20:	fba2 7203 	umull	r7, r2, r2, r3
20027a24:	19ef      	adds	r7, r5, r7
20027a26:	f854 5c7c 	ldr.w	r5, [r4, #-124]
20027a2a:	f142 0200 	adc.w	r2, r2, #0
20027a2e:	19ed      	adds	r5, r5, r7
20027a30:	f844 5c7c 	str.w	r5, [r4, #-124]
20027a34:	f856 5c38 	ldr.w	r5, [r6, #-56]
20027a38:	f142 0200 	adc.w	r2, r2, #0
20027a3c:	fba5 7503 	umull	r7, r5, r5, r3
20027a40:	19d7      	adds	r7, r2, r7
20027a42:	f854 2c78 	ldr.w	r2, [r4, #-120]
20027a46:	f145 0500 	adc.w	r5, r5, #0
20027a4a:	19d2      	adds	r2, r2, r7
20027a4c:	f844 2c78 	str.w	r2, [r4, #-120]
20027a50:	f856 2c34 	ldr.w	r2, [r6, #-52]
20027a54:	f145 0500 	adc.w	r5, r5, #0
20027a58:	fba2 7203 	umull	r7, r2, r2, r3
20027a5c:	19ef      	adds	r7, r5, r7
20027a5e:	f854 5c74 	ldr.w	r5, [r4, #-116]
20027a62:	f142 0200 	adc.w	r2, r2, #0
20027a66:	19ed      	adds	r5, r5, r7
20027a68:	f844 5c74 	str.w	r5, [r4, #-116]
20027a6c:	f856 5c30 	ldr.w	r5, [r6, #-48]
20027a70:	f142 0200 	adc.w	r2, r2, #0
20027a74:	fba5 7503 	umull	r7, r5, r5, r3
20027a78:	19d7      	adds	r7, r2, r7
20027a7a:	f854 2c70 	ldr.w	r2, [r4, #-112]
20027a7e:	f145 0500 	adc.w	r5, r5, #0
20027a82:	19d2      	adds	r2, r2, r7
20027a84:	f844 2c70 	str.w	r2, [r4, #-112]
20027a88:	f856 2c2c 	ldr.w	r2, [r6, #-44]
20027a8c:	f145 0500 	adc.w	r5, r5, #0
20027a90:	fba2 7203 	umull	r7, r2, r2, r3
20027a94:	19ef      	adds	r7, r5, r7
20027a96:	f854 5c6c 	ldr.w	r5, [r4, #-108]
20027a9a:	f142 0200 	adc.w	r2, r2, #0
20027a9e:	19ed      	adds	r5, r5, r7
20027aa0:	f844 5c6c 	str.w	r5, [r4, #-108]
20027aa4:	f856 5c28 	ldr.w	r5, [r6, #-40]
20027aa8:	f142 0200 	adc.w	r2, r2, #0
20027aac:	fba5 7503 	umull	r7, r5, r5, r3
20027ab0:	19d7      	adds	r7, r2, r7
20027ab2:	f854 2c68 	ldr.w	r2, [r4, #-104]
20027ab6:	f145 0500 	adc.w	r5, r5, #0
20027aba:	19d2      	adds	r2, r2, r7
20027abc:	f844 2c68 	str.w	r2, [r4, #-104]
20027ac0:	f856 2c24 	ldr.w	r2, [r6, #-36]
20027ac4:	f145 0500 	adc.w	r5, r5, #0
20027ac8:	fba2 7203 	umull	r7, r2, r2, r3
20027acc:	19ef      	adds	r7, r5, r7
20027ace:	f854 5c64 	ldr.w	r5, [r4, #-100]
20027ad2:	f142 0200 	adc.w	r2, r2, #0
20027ad6:	19ed      	adds	r5, r5, r7
20027ad8:	f844 5c64 	str.w	r5, [r4, #-100]
20027adc:	f856 5c20 	ldr.w	r5, [r6, #-32]
20027ae0:	f142 0200 	adc.w	r2, r2, #0
20027ae4:	fba5 7503 	umull	r7, r5, r5, r3
20027ae8:	19d7      	adds	r7, r2, r7
20027aea:	f854 2c60 	ldr.w	r2, [r4, #-96]
20027aee:	f145 0500 	adc.w	r5, r5, #0
20027af2:	19d2      	adds	r2, r2, r7
20027af4:	f844 2c60 	str.w	r2, [r4, #-96]
20027af8:	f856 2c1c 	ldr.w	r2, [r6, #-28]
20027afc:	f145 0500 	adc.w	r5, r5, #0
20027b00:	fba2 7203 	umull	r7, r2, r2, r3
20027b04:	19ef      	adds	r7, r5, r7
20027b06:	f854 5c5c 	ldr.w	r5, [r4, #-92]
20027b0a:	f142 0200 	adc.w	r2, r2, #0
20027b0e:	19ed      	adds	r5, r5, r7
20027b10:	f844 5c5c 	str.w	r5, [r4, #-92]
20027b14:	f856 5c18 	ldr.w	r5, [r6, #-24]
20027b18:	f142 0200 	adc.w	r2, r2, #0
20027b1c:	fba5 7503 	umull	r7, r5, r5, r3
20027b20:	19d7      	adds	r7, r2, r7
20027b22:	f854 2c58 	ldr.w	r2, [r4, #-88]
20027b26:	f145 0500 	adc.w	r5, r5, #0
20027b2a:	19d2      	adds	r2, r2, r7
20027b2c:	f844 2c58 	str.w	r2, [r4, #-88]
20027b30:	f856 2c14 	ldr.w	r2, [r6, #-20]
20027b34:	f145 0500 	adc.w	r5, r5, #0
20027b38:	fba2 7203 	umull	r7, r2, r2, r3
20027b3c:	19ef      	adds	r7, r5, r7
20027b3e:	f854 5c54 	ldr.w	r5, [r4, #-84]
20027b42:	f142 0200 	adc.w	r2, r2, #0
20027b46:	19ed      	adds	r5, r5, r7
20027b48:	f844 5c54 	str.w	r5, [r4, #-84]
20027b4c:	f856 5c10 	ldr.w	r5, [r6, #-16]
20027b50:	f142 0200 	adc.w	r2, r2, #0
20027b54:	fba5 7503 	umull	r7, r5, r5, r3
20027b58:	19d7      	adds	r7, r2, r7
20027b5a:	f854 2c50 	ldr.w	r2, [r4, #-80]
20027b5e:	f145 0500 	adc.w	r5, r5, #0
20027b62:	19d2      	adds	r2, r2, r7
20027b64:	f844 2c50 	str.w	r2, [r4, #-80]
20027b68:	f856 2c0c 	ldr.w	r2, [r6, #-12]
20027b6c:	f145 0500 	adc.w	r5, r5, #0
20027b70:	fba2 7203 	umull	r7, r2, r2, r3
20027b74:	19ef      	adds	r7, r5, r7
20027b76:	f854 5c4c 	ldr.w	r5, [r4, #-76]
20027b7a:	f142 0200 	adc.w	r2, r2, #0
20027b7e:	19ed      	adds	r5, r5, r7
20027b80:	f844 5c4c 	str.w	r5, [r4, #-76]
20027b84:	f856 5c08 	ldr.w	r5, [r6, #-8]
20027b88:	f142 0200 	adc.w	r2, r2, #0
20027b8c:	fba5 5703 	umull	r5, r7, r5, r3
20027b90:	1955      	adds	r5, r2, r5
20027b92:	f854 2c48 	ldr.w	r2, [r4, #-72]
20027b96:	f147 0700 	adc.w	r7, r7, #0
20027b9a:	1952      	adds	r2, r2, r5
20027b9c:	f844 2c48 	str.w	r2, [r4, #-72]
20027ba0:	f856 2c04 	ldr.w	r2, [r6, #-4]
20027ba4:	f147 0700 	adc.w	r7, r7, #0
20027ba8:	fba2 2503 	umull	r2, r5, r2, r3
20027bac:	18bf      	adds	r7, r7, r2
20027bae:	f854 2c44 	ldr.w	r2, [r4, #-68]
20027bb2:	f145 0500 	adc.w	r5, r5, #0
20027bb6:	19d2      	adds	r2, r2, r7
20027bb8:	f145 0500 	adc.w	r5, r5, #0
20027bbc:	f844 2c44 	str.w	r2, [r4, #-68]
20027bc0:	e698      	b.n	200278f4 <mpi_mul_hlp+0x10>
20027bc2:	f856 2b04 	ldr.w	r2, [r6], #4
20027bc6:	fba2 2e03 	umull	r2, lr, r2, r3
20027bca:	18aa      	adds	r2, r5, r2
20027bcc:	f14e 0500 	adc.w	r5, lr, #0
20027bd0:	1889      	adds	r1, r1, r2
20027bd2:	f145 0500 	adc.w	r5, r5, #0
20027bd6:	f847 1c04 	str.w	r1, [r7, #-4]
20027bda:	e702      	b.n	200279e2 <mpi_mul_hlp+0xfe>

20027bdc <mbedtls_mpi_init>:
20027bdc:	b120      	cbz	r0, 20027be8 <mbedtls_mpi_init+0xc>
20027bde:	2300      	movs	r3, #0
20027be0:	2201      	movs	r2, #1
20027be2:	e9c0 2300 	strd	r2, r3, [r0]
20027be6:	6083      	str	r3, [r0, #8]
20027be8:	4770      	bx	lr

20027bea <mbedtls_mpi_free>:
20027bea:	b510      	push	{r4, lr}
20027bec:	4604      	mov	r4, r0
20027bee:	b168      	cbz	r0, 20027c0c <mbedtls_mpi_free+0x22>
20027bf0:	6883      	ldr	r3, [r0, #8]
20027bf2:	b133      	cbz	r3, 20027c02 <mbedtls_mpi_free+0x18>
20027bf4:	2100      	movs	r1, #0
20027bf6:	6842      	ldr	r2, [r0, #4]
20027bf8:	3a01      	subs	r2, #1
20027bfa:	d208      	bcs.n	20027c0e <mbedtls_mpi_free+0x24>
20027bfc:	68a0      	ldr	r0, [r4, #8]
20027bfe:	f002 fcbf 	bl	2002a580 <free>
20027c02:	2300      	movs	r3, #0
20027c04:	2201      	movs	r2, #1
20027c06:	e9c4 2300 	strd	r2, r3, [r4]
20027c0a:	60a3      	str	r3, [r4, #8]
20027c0c:	bd10      	pop	{r4, pc}
20027c0e:	f843 1b04 	str.w	r1, [r3], #4
20027c12:	e7f1      	b.n	20027bf8 <mbedtls_mpi_free+0xe>

20027c14 <mbedtls_mpi_grow>:
20027c14:	f242 7310 	movw	r3, #10000	@ 0x2710
20027c18:	4299      	cmp	r1, r3
20027c1a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027c1e:	4605      	mov	r5, r0
20027c20:	460f      	mov	r7, r1
20027c22:	d903      	bls.n	20027c2c <mbedtls_mpi_grow+0x18>
20027c24:	f06f 000f 	mvn.w	r0, #15
20027c28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027c2c:	6846      	ldr	r6, [r0, #4]
20027c2e:	428e      	cmp	r6, r1
20027c30:	d301      	bcc.n	20027c36 <mbedtls_mpi_grow+0x22>
20027c32:	2000      	movs	r0, #0
20027c34:	e7f8      	b.n	20027c28 <mbedtls_mpi_grow+0x14>
20027c36:	2104      	movs	r1, #4
20027c38:	4638      	mov	r0, r7
20027c3a:	f002 fc85 	bl	2002a548 <calloc>
20027c3e:	4680      	mov	r8, r0
20027c40:	2800      	cmp	r0, #0
20027c42:	d0ef      	beq.n	20027c24 <mbedtls_mpi_grow+0x10>
20027c44:	68ac      	ldr	r4, [r5, #8]
20027c46:	b15c      	cbz	r4, 20027c60 <mbedtls_mpi_grow+0x4c>
20027c48:	00b6      	lsls	r6, r6, #2
20027c4a:	4632      	mov	r2, r6
20027c4c:	4621      	mov	r1, r4
20027c4e:	f002 fd77 	bl	2002a740 <memcpy>
20027c52:	2300      	movs	r3, #0
20027c54:	4426      	add	r6, r4
20027c56:	42b4      	cmp	r4, r6
20027c58:	d105      	bne.n	20027c66 <mbedtls_mpi_grow+0x52>
20027c5a:	68a8      	ldr	r0, [r5, #8]
20027c5c:	f002 fc90 	bl	2002a580 <free>
20027c60:	e9c5 7801 	strd	r7, r8, [r5, #4]
20027c64:	e7e5      	b.n	20027c32 <mbedtls_mpi_grow+0x1e>
20027c66:	f844 3b04 	str.w	r3, [r4], #4
20027c6a:	e7f4      	b.n	20027c56 <mbedtls_mpi_grow+0x42>

20027c6c <mbedtls_mpi_copy>:
20027c6c:	4288      	cmp	r0, r1
20027c6e:	b570      	push	{r4, r5, r6, lr}
20027c70:	4605      	mov	r5, r0
20027c72:	460e      	mov	r6, r1
20027c74:	d003      	beq.n	20027c7e <mbedtls_mpi_copy+0x12>
20027c76:	688b      	ldr	r3, [r1, #8]
20027c78:	b91b      	cbnz	r3, 20027c82 <mbedtls_mpi_copy+0x16>
20027c7a:	f7ff ffb6 	bl	20027bea <mbedtls_mpi_free>
20027c7e:	2000      	movs	r0, #0
20027c80:	bd70      	pop	{r4, r5, r6, pc}
20027c82:	684a      	ldr	r2, [r1, #4]
20027c84:	3a01      	subs	r2, #1
20027c86:	b11a      	cbz	r2, 20027c90 <mbedtls_mpi_copy+0x24>
20027c88:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20027c8c:	2900      	cmp	r1, #0
20027c8e:	d0f9      	beq.n	20027c84 <mbedtls_mpi_copy+0x18>
20027c90:	6833      	ldr	r3, [r6, #0]
20027c92:	1c54      	adds	r4, r2, #1
20027c94:	4621      	mov	r1, r4
20027c96:	4628      	mov	r0, r5
20027c98:	602b      	str	r3, [r5, #0]
20027c9a:	f7ff ffbb 	bl	20027c14 <mbedtls_mpi_grow>
20027c9e:	4601      	mov	r1, r0
20027ca0:	b950      	cbnz	r0, 20027cb8 <mbedtls_mpi_copy+0x4c>
20027ca2:	686a      	ldr	r2, [r5, #4]
20027ca4:	68a8      	ldr	r0, [r5, #8]
20027ca6:	0092      	lsls	r2, r2, #2
20027ca8:	f002 fd30 	bl	2002a70c <memset>
20027cac:	68b1      	ldr	r1, [r6, #8]
20027cae:	68a8      	ldr	r0, [r5, #8]
20027cb0:	00a2      	lsls	r2, r4, #2
20027cb2:	f002 fd45 	bl	2002a740 <memcpy>
20027cb6:	e7e2      	b.n	20027c7e <mbedtls_mpi_copy+0x12>
20027cb8:	f06f 000f 	mvn.w	r0, #15
20027cbc:	e7e0      	b.n	20027c80 <mbedtls_mpi_copy+0x14>

20027cbe <mbedtls_mpi_lset>:
20027cbe:	b570      	push	{r4, r5, r6, lr}
20027cc0:	460e      	mov	r6, r1
20027cc2:	2101      	movs	r1, #1
20027cc4:	4604      	mov	r4, r0
20027cc6:	f7ff ffa5 	bl	20027c14 <mbedtls_mpi_grow>
20027cca:	4605      	mov	r5, r0
20027ccc:	b988      	cbnz	r0, 20027cf2 <mbedtls_mpi_lset+0x34>
20027cce:	6862      	ldr	r2, [r4, #4]
20027cd0:	4601      	mov	r1, r0
20027cd2:	0092      	lsls	r2, r2, #2
20027cd4:	68a0      	ldr	r0, [r4, #8]
20027cd6:	f002 fd19 	bl	2002a70c <memset>
20027cda:	68a3      	ldr	r3, [r4, #8]
20027cdc:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20027ce0:	2e00      	cmp	r6, #0
20027ce2:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20027ce6:	601a      	str	r2, [r3, #0]
20027ce8:	bfac      	ite	ge
20027cea:	2301      	movge	r3, #1
20027cec:	f04f 33ff 	movlt.w	r3, #4294967295
20027cf0:	6023      	str	r3, [r4, #0]
20027cf2:	4628      	mov	r0, r5
20027cf4:	bd70      	pop	{r4, r5, r6, pc}

20027cf6 <mbedtls_mpi_lsb>:
20027cf6:	2300      	movs	r3, #0
20027cf8:	4619      	mov	r1, r3
20027cfa:	b570      	push	{r4, r5, r6, lr}
20027cfc:	6844      	ldr	r4, [r0, #4]
20027cfe:	428c      	cmp	r4, r1
20027d00:	d101      	bne.n	20027d06 <mbedtls_mpi_lsb+0x10>
20027d02:	2000      	movs	r0, #0
20027d04:	e008      	b.n	20027d18 <mbedtls_mpi_lsb+0x22>
20027d06:	6882      	ldr	r2, [r0, #8]
20027d08:	f852 5021 	ldr.w	r5, [r2, r1, lsl #2]
20027d0c:	2200      	movs	r2, #0
20027d0e:	fa25 f602 	lsr.w	r6, r5, r2
20027d12:	07f6      	lsls	r6, r6, #31
20027d14:	d501      	bpl.n	20027d1a <mbedtls_mpi_lsb+0x24>
20027d16:	1898      	adds	r0, r3, r2
20027d18:	bd70      	pop	{r4, r5, r6, pc}
20027d1a:	3201      	adds	r2, #1
20027d1c:	2a20      	cmp	r2, #32
20027d1e:	d1f6      	bne.n	20027d0e <mbedtls_mpi_lsb+0x18>
20027d20:	3320      	adds	r3, #32
20027d22:	3101      	adds	r1, #1
20027d24:	e7eb      	b.n	20027cfe <mbedtls_mpi_lsb+0x8>

20027d26 <mbedtls_mpi_bitlen>:
20027d26:	4602      	mov	r2, r0
20027d28:	6840      	ldr	r0, [r0, #4]
20027d2a:	b188      	cbz	r0, 20027d50 <mbedtls_mpi_bitlen+0x2a>
20027d2c:	6891      	ldr	r1, [r2, #8]
20027d2e:	1e43      	subs	r3, r0, #1
20027d30:	b97b      	cbnz	r3, 20027d52 <mbedtls_mpi_bitlen+0x2c>
20027d32:	461a      	mov	r2, r3
20027d34:	5889      	ldr	r1, [r1, r2]
20027d36:	2000      	movs	r0, #0
20027d38:	f04f 4200 	mov.w	r2, #2147483648	@ 0x80000000
20027d3c:	4211      	tst	r1, r2
20027d3e:	d104      	bne.n	20027d4a <mbedtls_mpi_bitlen+0x24>
20027d40:	3001      	adds	r0, #1
20027d42:	2820      	cmp	r0, #32
20027d44:	ea4f 0252 	mov.w	r2, r2, lsr #1
20027d48:	d1f8      	bne.n	20027d3c <mbedtls_mpi_bitlen+0x16>
20027d4a:	3301      	adds	r3, #1
20027d4c:	ebc0 1043 	rsb	r0, r0, r3, lsl #5
20027d50:	4770      	bx	lr
20027d52:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
20027d56:	009a      	lsls	r2, r3, #2
20027d58:	2800      	cmp	r0, #0
20027d5a:	d1eb      	bne.n	20027d34 <mbedtls_mpi_bitlen+0xe>
20027d5c:	3b01      	subs	r3, #1
20027d5e:	e7e7      	b.n	20027d30 <mbedtls_mpi_bitlen+0xa>

20027d60 <mbedtls_mpi_size>:
20027d60:	b508      	push	{r3, lr}
20027d62:	f7ff ffe0 	bl	20027d26 <mbedtls_mpi_bitlen>
20027d66:	3007      	adds	r0, #7
20027d68:	08c0      	lsrs	r0, r0, #3
20027d6a:	bd08      	pop	{r3, pc}

20027d6c <mbedtls_mpi_read_binary>:
20027d6c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027d6e:	4607      	mov	r7, r0
20027d70:	460c      	mov	r4, r1
20027d72:	4616      	mov	r6, r2
20027d74:	2500      	movs	r5, #0
20027d76:	42b5      	cmp	r5, r6
20027d78:	d001      	beq.n	20027d7e <mbedtls_mpi_read_binary+0x12>
20027d7a:	5d63      	ldrb	r3, [r4, r5]
20027d7c:	b173      	cbz	r3, 20027d9c <mbedtls_mpi_read_binary+0x30>
20027d7e:	1b71      	subs	r1, r6, r5
20027d80:	f011 0303 	ands.w	r3, r1, #3
20027d84:	bf18      	it	ne
20027d86:	2301      	movne	r3, #1
20027d88:	4638      	mov	r0, r7
20027d8a:	eb03 0191 	add.w	r1, r3, r1, lsr #2
20027d8e:	f7ff ff41 	bl	20027c14 <mbedtls_mpi_grow>
20027d92:	4601      	mov	r1, r0
20027d94:	b120      	cbz	r0, 20027da0 <mbedtls_mpi_read_binary+0x34>
20027d96:	f06f 000f 	mvn.w	r0, #15
20027d9a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027d9c:	3501      	adds	r5, #1
20027d9e:	e7ea      	b.n	20027d76 <mbedtls_mpi_read_binary+0xa>
20027da0:	4638      	mov	r0, r7
20027da2:	f7ff ff8c 	bl	20027cbe <mbedtls_mpi_lset>
20027da6:	2800      	cmp	r0, #0
20027da8:	d1f5      	bne.n	20027d96 <mbedtls_mpi_read_binary+0x2a>
20027daa:	4603      	mov	r3, r0
20027dac:	4434      	add	r4, r6
20027dae:	1af2      	subs	r2, r6, r3
20027db0:	4295      	cmp	r5, r2
20027db2:	d2f2      	bcs.n	20027d9a <mbedtls_mpi_read_binary+0x2e>
20027db4:	f8d7 e008 	ldr.w	lr, [r7, #8]
20027db8:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
20027dbc:	00da      	lsls	r2, r3, #3
20027dbe:	f023 0c03 	bic.w	ip, r3, #3
20027dc2:	f002 0218 	and.w	r2, r2, #24
20027dc6:	4091      	lsls	r1, r2
20027dc8:	f85e 200c 	ldr.w	r2, [lr, ip]
20027dcc:	3301      	adds	r3, #1
20027dce:	430a      	orrs	r2, r1
20027dd0:	f84e 200c 	str.w	r2, [lr, ip]
20027dd4:	e7eb      	b.n	20027dae <mbedtls_mpi_read_binary+0x42>

20027dd6 <mbedtls_mpi_write_binary>:
20027dd6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027dd8:	4615      	mov	r5, r2
20027dda:	4607      	mov	r7, r0
20027ddc:	460c      	mov	r4, r1
20027dde:	f7ff ffbf 	bl	20027d60 <mbedtls_mpi_size>
20027de2:	42a8      	cmp	r0, r5
20027de4:	4606      	mov	r6, r0
20027de6:	d816      	bhi.n	20027e16 <mbedtls_mpi_write_binary+0x40>
20027de8:	4620      	mov	r0, r4
20027dea:	462a      	mov	r2, r5
20027dec:	2100      	movs	r1, #0
20027dee:	f002 fc8d 	bl	2002a70c <memset>
20027df2:	2300      	movs	r3, #0
20027df4:	442c      	add	r4, r5
20027df6:	42b3      	cmp	r3, r6
20027df8:	d101      	bne.n	20027dfe <mbedtls_mpi_write_binary+0x28>
20027dfa:	2000      	movs	r0, #0
20027dfc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027dfe:	68b8      	ldr	r0, [r7, #8]
20027e00:	f023 0203 	bic.w	r2, r3, #3
20027e04:	5882      	ldr	r2, [r0, r2]
20027e06:	00d9      	lsls	r1, r3, #3
20027e08:	f001 0118 	and.w	r1, r1, #24
20027e0c:	40ca      	lsrs	r2, r1
20027e0e:	f804 2d01 	strb.w	r2, [r4, #-1]!
20027e12:	3301      	adds	r3, #1
20027e14:	e7ef      	b.n	20027df6 <mbedtls_mpi_write_binary+0x20>
20027e16:	f06f 0007 	mvn.w	r0, #7
20027e1a:	e7ef      	b.n	20027dfc <mbedtls_mpi_write_binary+0x26>

20027e1c <mbedtls_mpi_shift_l>:
20027e1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027e1e:	4605      	mov	r5, r0
20027e20:	460e      	mov	r6, r1
20027e22:	094c      	lsrs	r4, r1, #5
20027e24:	f001 071f 	and.w	r7, r1, #31
20027e28:	f7ff ff7d 	bl	20027d26 <mbedtls_mpi_bitlen>
20027e2c:	686b      	ldr	r3, [r5, #4]
20027e2e:	4430      	add	r0, r6
20027e30:	ebb0 1f43 	cmp.w	r0, r3, lsl #5
20027e34:	d805      	bhi.n	20027e42 <mbedtls_mpi_shift_l+0x26>
20027e36:	2e1f      	cmp	r6, #31
20027e38:	d811      	bhi.n	20027e5e <mbedtls_mpi_shift_l+0x42>
20027e3a:	2f00      	cmp	r7, #0
20027e3c:	d143      	bne.n	20027ec6 <mbedtls_mpi_shift_l+0xaa>
20027e3e:	2000      	movs	r0, #0
20027e40:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027e42:	f010 011f 	ands.w	r1, r0, #31
20027e46:	bf18      	it	ne
20027e48:	2101      	movne	r1, #1
20027e4a:	eb01 1150 	add.w	r1, r1, r0, lsr #5
20027e4e:	4628      	mov	r0, r5
20027e50:	f7ff fee0 	bl	20027c14 <mbedtls_mpi_grow>
20027e54:	2800      	cmp	r0, #0
20027e56:	d0ee      	beq.n	20027e36 <mbedtls_mpi_shift_l+0x1a>
20027e58:	f06f 000f 	mvn.w	r0, #15
20027e5c:	e7f0      	b.n	20027e40 <mbedtls_mpi_shift_l+0x24>
20027e5e:	f06f 0003 	mvn.w	r0, #3
20027e62:	686a      	ldr	r2, [r5, #4]
20027e64:	4360      	muls	r0, r4
20027e66:	4611      	mov	r1, r2
20027e68:	0093      	lsls	r3, r2, #2
20027e6a:	42a1      	cmp	r1, r4
20027e6c:	f1a3 0304 	sub.w	r3, r3, #4
20027e70:	d80c      	bhi.n	20027e8c <mbedtls_mpi_shift_l+0x70>
20027e72:	1aa3      	subs	r3, r4, r2
20027e74:	4294      	cmp	r4, r2
20027e76:	bf88      	it	hi
20027e78:	2300      	movhi	r3, #0
20027e7a:	4413      	add	r3, r2
20027e7c:	2200      	movs	r2, #0
20027e7e:	009b      	lsls	r3, r3, #2
20027e80:	3b04      	subs	r3, #4
20027e82:	1d19      	adds	r1, r3, #4
20027e84:	d0d9      	beq.n	20027e3a <mbedtls_mpi_shift_l+0x1e>
20027e86:	68a9      	ldr	r1, [r5, #8]
20027e88:	50ca      	str	r2, [r1, r3]
20027e8a:	e7f9      	b.n	20027e80 <mbedtls_mpi_shift_l+0x64>
20027e8c:	68ae      	ldr	r6, [r5, #8]
20027e8e:	3901      	subs	r1, #1
20027e90:	eb06 0c03 	add.w	ip, r6, r3
20027e94:	f85c c000 	ldr.w	ip, [ip, r0]
20027e98:	f846 c003 	str.w	ip, [r6, r3]
20027e9c:	e7e5      	b.n	20027e6a <mbedtls_mpi_shift_l+0x4e>
20027e9e:	68ab      	ldr	r3, [r5, #8]
20027ea0:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
20027ea4:	fa01 f007 	lsl.w	r0, r1, r7
20027ea8:	f843 0024 	str.w	r0, [r3, r4, lsl #2]
20027eac:	68a8      	ldr	r0, [r5, #8]
20027eae:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
20027eb2:	4313      	orrs	r3, r2
20027eb4:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
20027eb8:	fa21 f206 	lsr.w	r2, r1, r6
20027ebc:	3401      	adds	r4, #1
20027ebe:	686b      	ldr	r3, [r5, #4]
20027ec0:	42a3      	cmp	r3, r4
20027ec2:	d8ec      	bhi.n	20027e9e <mbedtls_mpi_shift_l+0x82>
20027ec4:	e7bb      	b.n	20027e3e <mbedtls_mpi_shift_l+0x22>
20027ec6:	2200      	movs	r2, #0
20027ec8:	f1c7 0620 	rsb	r6, r7, #32
20027ecc:	e7f7      	b.n	20027ebe <mbedtls_mpi_shift_l+0xa2>

20027ece <mbedtls_mpi_shift_r>:
20027ece:	b4f0      	push	{r4, r5, r6, r7}
20027ed0:	6843      	ldr	r3, [r0, #4]
20027ed2:	094c      	lsrs	r4, r1, #5
20027ed4:	42a3      	cmp	r3, r4
20027ed6:	f001 021f 	and.w	r2, r1, #31
20027eda:	d301      	bcc.n	20027ee0 <mbedtls_mpi_shift_r+0x12>
20027edc:	d104      	bne.n	20027ee8 <mbedtls_mpi_shift_r+0x1a>
20027ede:	b392      	cbz	r2, 20027f46 <mbedtls_mpi_shift_r+0x78>
20027ee0:	bcf0      	pop	{r4, r5, r6, r7}
20027ee2:	2100      	movs	r1, #0
20027ee4:	f7ff beeb 	b.w	20027cbe <mbedtls_mpi_lset>
20027ee8:	291f      	cmp	r1, #31
20027eea:	d82e      	bhi.n	20027f4a <mbedtls_mpi_shift_r+0x7c>
20027eec:	b9aa      	cbnz	r2, 20027f1a <mbedtls_mpi_shift_r+0x4c>
20027eee:	bcf0      	pop	{r4, r5, r6, r7}
20027ef0:	2000      	movs	r0, #0
20027ef2:	4770      	bx	lr
20027ef4:	6885      	ldr	r5, [r0, #8]
20027ef6:	586e      	ldr	r6, [r5, r1]
20027ef8:	3104      	adds	r1, #4
20027efa:	f845 6023 	str.w	r6, [r5, r3, lsl #2]
20027efe:	3301      	adds	r3, #1
20027f00:	6845      	ldr	r5, [r0, #4]
20027f02:	1b2d      	subs	r5, r5, r4
20027f04:	429d      	cmp	r5, r3
20027f06:	d8f5      	bhi.n	20027ef4 <mbedtls_mpi_shift_r+0x26>
20027f08:	2400      	movs	r4, #0
20027f0a:	6841      	ldr	r1, [r0, #4]
20027f0c:	4299      	cmp	r1, r3
20027f0e:	d9ed      	bls.n	20027eec <mbedtls_mpi_shift_r+0x1e>
20027f10:	6881      	ldr	r1, [r0, #8]
20027f12:	f841 4023 	str.w	r4, [r1, r3, lsl #2]
20027f16:	3301      	adds	r3, #1
20027f18:	e7f7      	b.n	20027f0a <mbedtls_mpi_shift_r+0x3c>
20027f1a:	2400      	movs	r4, #0
20027f1c:	6843      	ldr	r3, [r0, #4]
20027f1e:	f1c2 0720 	rsb	r7, r2, #32
20027f22:	3b01      	subs	r3, #1
20027f24:	d3e3      	bcc.n	20027eee <mbedtls_mpi_shift_r+0x20>
20027f26:	6881      	ldr	r1, [r0, #8]
20027f28:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
20027f2c:	fa25 f602 	lsr.w	r6, r5, r2
20027f30:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
20027f34:	6886      	ldr	r6, [r0, #8]
20027f36:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
20027f3a:	4321      	orrs	r1, r4
20027f3c:	f846 1023 	str.w	r1, [r6, r3, lsl #2]
20027f40:	fa05 f407 	lsl.w	r4, r5, r7
20027f44:	e7ed      	b.n	20027f22 <mbedtls_mpi_shift_r+0x54>
20027f46:	291f      	cmp	r1, #31
20027f48:	d9d1      	bls.n	20027eee <mbedtls_mpi_shift_r+0x20>
20027f4a:	2300      	movs	r3, #0
20027f4c:	00a1      	lsls	r1, r4, #2
20027f4e:	e7d7      	b.n	20027f00 <mbedtls_mpi_shift_r+0x32>

20027f50 <mbedtls_mpi_cmp_abs>:
20027f50:	b530      	push	{r4, r5, lr}
20027f52:	6842      	ldr	r2, [r0, #4]
20027f54:	b922      	cbnz	r2, 20027f60 <mbedtls_mpi_cmp_abs+0x10>
20027f56:	684b      	ldr	r3, [r1, #4]
20027f58:	b95b      	cbnz	r3, 20027f72 <mbedtls_mpi_cmp_abs+0x22>
20027f5a:	b19a      	cbz	r2, 20027f84 <mbedtls_mpi_cmp_abs+0x34>
20027f5c:	2001      	movs	r0, #1
20027f5e:	e015      	b.n	20027f8c <mbedtls_mpi_cmp_abs+0x3c>
20027f60:	6883      	ldr	r3, [r0, #8]
20027f62:	eb03 0382 	add.w	r3, r3, r2, lsl #2
20027f66:	f853 3c04 	ldr.w	r3, [r3, #-4]
20027f6a:	2b00      	cmp	r3, #0
20027f6c:	d1f3      	bne.n	20027f56 <mbedtls_mpi_cmp_abs+0x6>
20027f6e:	3a01      	subs	r2, #1
20027f70:	e7f0      	b.n	20027f54 <mbedtls_mpi_cmp_abs+0x4>
20027f72:	688c      	ldr	r4, [r1, #8]
20027f74:	eb04 0583 	add.w	r5, r4, r3, lsl #2
20027f78:	f855 5c04 	ldr.w	r5, [r5, #-4]
20027f7c:	b90d      	cbnz	r5, 20027f82 <mbedtls_mpi_cmp_abs+0x32>
20027f7e:	3b01      	subs	r3, #1
20027f80:	e7ea      	b.n	20027f58 <mbedtls_mpi_cmp_abs+0x8>
20027f82:	b922      	cbnz	r2, 20027f8e <mbedtls_mpi_cmp_abs+0x3e>
20027f84:	1e18      	subs	r0, r3, #0
20027f86:	bf18      	it	ne
20027f88:	2001      	movne	r0, #1
20027f8a:	4240      	negs	r0, r0
20027f8c:	bd30      	pop	{r4, r5, pc}
20027f8e:	4293      	cmp	r3, r2
20027f90:	d3e4      	bcc.n	20027f5c <mbedtls_mpi_cmp_abs+0xc>
20027f92:	d80e      	bhi.n	20027fb2 <mbedtls_mpi_cmp_abs+0x62>
20027f94:	3a01      	subs	r2, #1
20027f96:	6883      	ldr	r3, [r0, #8]
20027f98:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20027f9c:	f854 3022 	ldr.w	r3, [r4, r2, lsl #2]
20027fa0:	4299      	cmp	r1, r3
20027fa2:	d8db      	bhi.n	20027f5c <mbedtls_mpi_cmp_abs+0xc>
20027fa4:	f102 32ff 	add.w	r2, r2, #4294967295
20027fa8:	d303      	bcc.n	20027fb2 <mbedtls_mpi_cmp_abs+0x62>
20027faa:	1c53      	adds	r3, r2, #1
20027fac:	d1f3      	bne.n	20027f96 <mbedtls_mpi_cmp_abs+0x46>
20027fae:	2000      	movs	r0, #0
20027fb0:	e7ec      	b.n	20027f8c <mbedtls_mpi_cmp_abs+0x3c>
20027fb2:	f04f 30ff 	mov.w	r0, #4294967295
20027fb6:	e7e9      	b.n	20027f8c <mbedtls_mpi_cmp_abs+0x3c>

20027fb8 <mpi_montmul>:
20027fb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20027fbc:	4615      	mov	r5, r2
20027fbe:	b087      	sub	sp, #28
20027fc0:	9305      	str	r3, [sp, #20]
20027fc2:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20027fc4:	4606      	mov	r6, r0
20027fc6:	685a      	ldr	r2, [r3, #4]
20027fc8:	686b      	ldr	r3, [r5, #4]
20027fca:	4689      	mov	r9, r1
20027fcc:	3301      	adds	r3, #1
20027fce:	429a      	cmp	r2, r3
20027fd0:	d359      	bcc.n	20028086 <mpi_montmul+0xce>
20027fd2:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20027fd4:	6898      	ldr	r0, [r3, #8]
20027fd6:	2800      	cmp	r0, #0
20027fd8:	d055      	beq.n	20028086 <mpi_montmul+0xce>
20027fda:	0092      	lsls	r2, r2, #2
20027fdc:	2100      	movs	r1, #0
20027fde:	f002 fb95 	bl	2002a70c <memset>
20027fe2:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20027fe4:	f8d5 8004 	ldr.w	r8, [r5, #4]
20027fe8:	f8d3 a008 	ldr.w	sl, [r3, #8]
20027fec:	f8d9 3004 	ldr.w	r3, [r9, #4]
20027ff0:	46d3      	mov	fp, sl
20027ff2:	4543      	cmp	r3, r8
20027ff4:	bf28      	it	cs
20027ff6:	4643      	movcs	r3, r8
20027ff8:	2400      	movs	r4, #0
20027ffa:	9304      	str	r3, [sp, #16]
20027ffc:	f108 0301 	add.w	r3, r8, #1
20028000:	009a      	lsls	r2, r3, #2
20028002:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
20028006:	9202      	str	r2, [sp, #8]
20028008:	9303      	str	r3, [sp, #12]
2002800a:	4544      	cmp	r4, r8
2002800c:	68b0      	ldr	r0, [r6, #8]
2002800e:	d118      	bne.n	20028042 <mpi_montmul+0x8a>
20028010:	9b02      	ldr	r3, [sp, #8]
20028012:	1f19      	subs	r1, r3, #4
20028014:	461a      	mov	r2, r3
20028016:	4451      	add	r1, sl
20028018:	f002 fb92 	bl	2002a740 <memcpy>
2002801c:	4629      	mov	r1, r5
2002801e:	4630      	mov	r0, r6
20028020:	f7ff ff96 	bl	20027f50 <mbedtls_mpi_cmp_abs>
20028024:	3001      	adds	r0, #1
20028026:	68b1      	ldr	r1, [r6, #8]
20028028:	bf0c      	ite	eq
2002802a:	9b10      	ldreq	r3, [sp, #64]	@ 0x40
2002802c:	460a      	movne	r2, r1
2002802e:	4620      	mov	r0, r4
20028030:	bf14      	ite	ne
20028032:	68a9      	ldrne	r1, [r5, #8]
20028034:	689a      	ldreq	r2, [r3, #8]
20028036:	f7ff fc2c 	bl	20027892 <mpi_sub_hlp>
2002803a:	2000      	movs	r0, #0
2002803c:	b007      	add	sp, #28
2002803e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20028042:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
20028046:	f8d9 1008 	ldr.w	r1, [r9, #8]
2002804a:	9301      	str	r3, [sp, #4]
2002804c:	9a01      	ldr	r2, [sp, #4]
2002804e:	680b      	ldr	r3, [r1, #0]
20028050:	f8db 7000 	ldr.w	r7, [fp]
20028054:	9804      	ldr	r0, [sp, #16]
20028056:	fb03 7702 	mla	r7, r3, r2, r7
2002805a:	9b05      	ldr	r3, [sp, #20]
2002805c:	3401      	adds	r4, #1
2002805e:	435f      	muls	r7, r3
20028060:	4613      	mov	r3, r2
20028062:	465a      	mov	r2, fp
20028064:	f7ff fc3e 	bl	200278e4 <mpi_mul_hlp>
20028068:	465a      	mov	r2, fp
2002806a:	463b      	mov	r3, r7
2002806c:	4640      	mov	r0, r8
2002806e:	68a9      	ldr	r1, [r5, #8]
20028070:	f7ff fc38 	bl	200278e4 <mpi_mul_hlp>
20028074:	2200      	movs	r2, #0
20028076:	9b01      	ldr	r3, [sp, #4]
20028078:	f84b 3b04 	str.w	r3, [fp], #4
2002807c:	9b03      	ldr	r3, [sp, #12]
2002807e:	f843 2f04 	str.w	r2, [r3, #4]!
20028082:	9303      	str	r3, [sp, #12]
20028084:	e7c1      	b.n	2002800a <mpi_montmul+0x52>
20028086:	f06f 0003 	mvn.w	r0, #3
2002808a:	e7d7      	b.n	2002803c <mpi_montmul+0x84>

2002808c <mbedtls_mpi_cmp_mpi>:
2002808c:	4602      	mov	r2, r0
2002808e:	b530      	push	{r4, r5, lr}
20028090:	6843      	ldr	r3, [r0, #4]
20028092:	b923      	cbnz	r3, 2002809e <mbedtls_mpi_cmp_mpi+0x12>
20028094:	6848      	ldr	r0, [r1, #4]
20028096:	b958      	cbnz	r0, 200280b0 <mbedtls_mpi_cmp_mpi+0x24>
20028098:	2b00      	cmp	r3, #0
2002809a:	d136      	bne.n	2002810a <mbedtls_mpi_cmp_mpi+0x7e>
2002809c:	e02f      	b.n	200280fe <mbedtls_mpi_cmp_mpi+0x72>
2002809e:	6890      	ldr	r0, [r2, #8]
200280a0:	eb00 0083 	add.w	r0, r0, r3, lsl #2
200280a4:	f850 0c04 	ldr.w	r0, [r0, #-4]
200280a8:	2800      	cmp	r0, #0
200280aa:	d1f3      	bne.n	20028094 <mbedtls_mpi_cmp_mpi+0x8>
200280ac:	3b01      	subs	r3, #1
200280ae:	e7f0      	b.n	20028092 <mbedtls_mpi_cmp_mpi+0x6>
200280b0:	688c      	ldr	r4, [r1, #8]
200280b2:	eb04 0580 	add.w	r5, r4, r0, lsl #2
200280b6:	f855 5c04 	ldr.w	r5, [r5, #-4]
200280ba:	bb15      	cbnz	r5, 20028102 <mbedtls_mpi_cmp_mpi+0x76>
200280bc:	3801      	subs	r0, #1
200280be:	e7ea      	b.n	20028096 <mbedtls_mpi_cmp_mpi+0xa>
200280c0:	680d      	ldr	r5, [r1, #0]
200280c2:	d202      	bcs.n	200280ca <mbedtls_mpi_cmp_mpi+0x3e>
200280c4:	6808      	ldr	r0, [r1, #0]
200280c6:	4240      	negs	r0, r0
200280c8:	e020      	b.n	2002810c <mbedtls_mpi_cmp_mpi+0x80>
200280ca:	6810      	ldr	r0, [r2, #0]
200280cc:	2800      	cmp	r0, #0
200280ce:	dd03      	ble.n	200280d8 <mbedtls_mpi_cmp_mpi+0x4c>
200280d0:	2d00      	cmp	r5, #0
200280d2:	da07      	bge.n	200280e4 <mbedtls_mpi_cmp_mpi+0x58>
200280d4:	2001      	movs	r0, #1
200280d6:	e019      	b.n	2002810c <mbedtls_mpi_cmp_mpi+0x80>
200280d8:	2d00      	cmp	r5, #0
200280da:	dd03      	ble.n	200280e4 <mbedtls_mpi_cmp_mpi+0x58>
200280dc:	b110      	cbz	r0, 200280e4 <mbedtls_mpi_cmp_mpi+0x58>
200280de:	f04f 30ff 	mov.w	r0, #4294967295
200280e2:	e013      	b.n	2002810c <mbedtls_mpi_cmp_mpi+0x80>
200280e4:	3b01      	subs	r3, #1
200280e6:	6891      	ldr	r1, [r2, #8]
200280e8:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
200280ec:	f854 1023 	ldr.w	r1, [r4, r3, lsl #2]
200280f0:	428d      	cmp	r5, r1
200280f2:	d80b      	bhi.n	2002810c <mbedtls_mpi_cmp_mpi+0x80>
200280f4:	f103 33ff 	add.w	r3, r3, #4294967295
200280f8:	d3e5      	bcc.n	200280c6 <mbedtls_mpi_cmp_mpi+0x3a>
200280fa:	1c59      	adds	r1, r3, #1
200280fc:	d1f3      	bne.n	200280e6 <mbedtls_mpi_cmp_mpi+0x5a>
200280fe:	2000      	movs	r0, #0
20028100:	e004      	b.n	2002810c <mbedtls_mpi_cmp_mpi+0x80>
20028102:	2b00      	cmp	r3, #0
20028104:	d0de      	beq.n	200280c4 <mbedtls_mpi_cmp_mpi+0x38>
20028106:	4283      	cmp	r3, r0
20028108:	d9da      	bls.n	200280c0 <mbedtls_mpi_cmp_mpi+0x34>
2002810a:	6810      	ldr	r0, [r2, #0]
2002810c:	bd30      	pop	{r4, r5, pc}

2002810e <mbedtls_mpi_cmp_int>:
2002810e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028110:	ea81 73e1 	eor.w	r3, r1, r1, asr #31
20028114:	eba3 73e1 	sub.w	r3, r3, r1, asr #31
20028118:	2900      	cmp	r1, #0
2002811a:	9300      	str	r3, [sp, #0]
2002811c:	bfac      	ite	ge
2002811e:	2301      	movge	r3, #1
20028120:	f04f 33ff 	movlt.w	r3, #4294967295
20028124:	9301      	str	r3, [sp, #4]
20028126:	2301      	movs	r3, #1
20028128:	a901      	add	r1, sp, #4
2002812a:	9302      	str	r3, [sp, #8]
2002812c:	f8cd d00c 	str.w	sp, [sp, #12]
20028130:	f7ff ffac 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20028134:	b005      	add	sp, #20
20028136:	f85d fb04 	ldr.w	pc, [sp], #4

2002813a <mbedtls_mpi_add_abs>:
2002813a:	4290      	cmp	r0, r2
2002813c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20028140:	4606      	mov	r6, r0
20028142:	460c      	mov	r4, r1
20028144:	4615      	mov	r5, r2
20028146:	d002      	beq.n	2002814e <mbedtls_mpi_add_abs+0x14>
20028148:	4288      	cmp	r0, r1
2002814a:	d12c      	bne.n	200281a6 <mbedtls_mpi_add_abs+0x6c>
2002814c:	462c      	mov	r4, r5
2002814e:	2301      	movs	r3, #1
20028150:	6033      	str	r3, [r6, #0]
20028152:	6865      	ldr	r5, [r4, #4]
20028154:	bb85      	cbnz	r5, 200281b8 <mbedtls_mpi_add_abs+0x7e>
20028156:	4629      	mov	r1, r5
20028158:	4630      	mov	r0, r6
2002815a:	f7ff fd5b 	bl	20027c14 <mbedtls_mpi_grow>
2002815e:	4607      	mov	r7, r0
20028160:	bb28      	cbnz	r0, 200281ae <mbedtls_mpi_add_abs+0x74>
20028162:	68b3      	ldr	r3, [r6, #8]
20028164:	68a1      	ldr	r1, [r4, #8]
20028166:	469c      	mov	ip, r3
20028168:	4604      	mov	r4, r0
2002816a:	42a8      	cmp	r0, r5
2002816c:	d12d      	bne.n	200281ca <mbedtls_mpi_add_abs+0x90>
2002816e:	eb03 0385 	add.w	r3, r3, r5, lsl #2
20028172:	b1f4      	cbz	r4, 200281b2 <mbedtls_mpi_add_abs+0x78>
20028174:	6872      	ldr	r2, [r6, #4]
20028176:	f105 0801 	add.w	r8, r5, #1
2002817a:	42aa      	cmp	r2, r5
2002817c:	d807      	bhi.n	2002818e <mbedtls_mpi_add_abs+0x54>
2002817e:	4641      	mov	r1, r8
20028180:	4630      	mov	r0, r6
20028182:	f7ff fd47 	bl	20027c14 <mbedtls_mpi_grow>
20028186:	b990      	cbnz	r0, 200281ae <mbedtls_mpi_add_abs+0x74>
20028188:	68b3      	ldr	r3, [r6, #8]
2002818a:	eb03 0385 	add.w	r3, r3, r5, lsl #2
2002818e:	681a      	ldr	r2, [r3, #0]
20028190:	4645      	mov	r5, r8
20028192:	1912      	adds	r2, r2, r4
20028194:	bf2c      	ite	cs
20028196:	2401      	movcs	r4, #1
20028198:	2400      	movcc	r4, #0
2002819a:	3c00      	subs	r4, #0
2002819c:	bf18      	it	ne
2002819e:	2401      	movne	r4, #1
200281a0:	f843 2b04 	str.w	r2, [r3], #4
200281a4:	e7e5      	b.n	20028172 <mbedtls_mpi_add_abs+0x38>
200281a6:	f7ff fd61 	bl	20027c6c <mbedtls_mpi_copy>
200281aa:	2800      	cmp	r0, #0
200281ac:	d0ce      	beq.n	2002814c <mbedtls_mpi_add_abs+0x12>
200281ae:	f06f 070f 	mvn.w	r7, #15
200281b2:	4638      	mov	r0, r7
200281b4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200281b8:	68a3      	ldr	r3, [r4, #8]
200281ba:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200281be:	f853 3c04 	ldr.w	r3, [r3, #-4]
200281c2:	2b00      	cmp	r3, #0
200281c4:	d1c7      	bne.n	20028156 <mbedtls_mpi_add_abs+0x1c>
200281c6:	3d01      	subs	r5, #1
200281c8:	e7c4      	b.n	20028154 <mbedtls_mpi_add_abs+0x1a>
200281ca:	f8dc 2000 	ldr.w	r2, [ip]
200281ce:	1912      	adds	r2, r2, r4
200281d0:	bf2c      	ite	cs
200281d2:	f04f 0e01 	movcs.w	lr, #1
200281d6:	f04f 0e00 	movcc.w	lr, #0
200281da:	f851 4020 	ldr.w	r4, [r1, r0, lsl #2]
200281de:	3001      	adds	r0, #1
200281e0:	1912      	adds	r2, r2, r4
200281e2:	f84c 2b04 	str.w	r2, [ip], #4
200281e6:	f14e 0400 	adc.w	r4, lr, #0
200281ea:	e7be      	b.n	2002816a <mbedtls_mpi_add_abs+0x30>

200281ec <mbedtls_mpi_sub_abs>:
200281ec:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
200281ee:	460e      	mov	r6, r1
200281f0:	4605      	mov	r5, r0
200281f2:	4611      	mov	r1, r2
200281f4:	4630      	mov	r0, r6
200281f6:	4614      	mov	r4, r2
200281f8:	f7ff feaa 	bl	20027f50 <mbedtls_mpi_cmp_abs>
200281fc:	3001      	adds	r0, #1
200281fe:	d02f      	beq.n	20028260 <mbedtls_mpi_sub_abs+0x74>
20028200:	2300      	movs	r3, #0
20028202:	2201      	movs	r2, #1
20028204:	42ac      	cmp	r4, r5
20028206:	e9cd 2301 	strd	r2, r3, [sp, #4]
2002820a:	9303      	str	r3, [sp, #12]
2002820c:	d10d      	bne.n	2002822a <mbedtls_mpi_sub_abs+0x3e>
2002820e:	4621      	mov	r1, r4
20028210:	a801      	add	r0, sp, #4
20028212:	f7ff fd2b 	bl	20027c6c <mbedtls_mpi_copy>
20028216:	b138      	cbz	r0, 20028228 <mbedtls_mpi_sub_abs+0x3c>
20028218:	f06f 040f 	mvn.w	r4, #15
2002821c:	a801      	add	r0, sp, #4
2002821e:	f7ff fce4 	bl	20027bea <mbedtls_mpi_free>
20028222:	4620      	mov	r0, r4
20028224:	b004      	add	sp, #16
20028226:	bd70      	pop	{r4, r5, r6, pc}
20028228:	ac01      	add	r4, sp, #4
2002822a:	42ae      	cmp	r6, r5
2002822c:	d109      	bne.n	20028242 <mbedtls_mpi_sub_abs+0x56>
2002822e:	2301      	movs	r3, #1
20028230:	602b      	str	r3, [r5, #0]
20028232:	e9d4 0101 	ldrd	r0, r1, [r4, #4]
20028236:	b958      	cbnz	r0, 20028250 <mbedtls_mpi_sub_abs+0x64>
20028238:	68aa      	ldr	r2, [r5, #8]
2002823a:	f7ff fb2a 	bl	20027892 <mpi_sub_hlp>
2002823e:	2400      	movs	r4, #0
20028240:	e7ec      	b.n	2002821c <mbedtls_mpi_sub_abs+0x30>
20028242:	4631      	mov	r1, r6
20028244:	4628      	mov	r0, r5
20028246:	f7ff fd11 	bl	20027c6c <mbedtls_mpi_copy>
2002824a:	2800      	cmp	r0, #0
2002824c:	d0ef      	beq.n	2002822e <mbedtls_mpi_sub_abs+0x42>
2002824e:	e7e3      	b.n	20028218 <mbedtls_mpi_sub_abs+0x2c>
20028250:	eb01 0380 	add.w	r3, r1, r0, lsl #2
20028254:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028258:	2b00      	cmp	r3, #0
2002825a:	d1ed      	bne.n	20028238 <mbedtls_mpi_sub_abs+0x4c>
2002825c:	3801      	subs	r0, #1
2002825e:	e7ea      	b.n	20028236 <mbedtls_mpi_sub_abs+0x4a>
20028260:	f06f 0409 	mvn.w	r4, #9
20028264:	e7dd      	b.n	20028222 <mbedtls_mpi_sub_abs+0x36>

20028266 <mbedtls_mpi_add_mpi>:
20028266:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20028268:	680d      	ldr	r5, [r1, #0]
2002826a:	6813      	ldr	r3, [r2, #0]
2002826c:	4604      	mov	r4, r0
2002826e:	436b      	muls	r3, r5
20028270:	460f      	mov	r7, r1
20028272:	4616      	mov	r6, r2
20028274:	d516      	bpl.n	200282a4 <mbedtls_mpi_add_mpi+0x3e>
20028276:	4611      	mov	r1, r2
20028278:	4638      	mov	r0, r7
2002827a:	f7ff fe69 	bl	20027f50 <mbedtls_mpi_cmp_abs>
2002827e:	3001      	adds	r0, #1
20028280:	d007      	beq.n	20028292 <mbedtls_mpi_add_mpi+0x2c>
20028282:	4632      	mov	r2, r6
20028284:	4639      	mov	r1, r7
20028286:	4620      	mov	r0, r4
20028288:	f7ff ffb0 	bl	200281ec <mbedtls_mpi_sub_abs>
2002828c:	b900      	cbnz	r0, 20028290 <mbedtls_mpi_add_mpi+0x2a>
2002828e:	6025      	str	r5, [r4, #0]
20028290:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028292:	463a      	mov	r2, r7
20028294:	4631      	mov	r1, r6
20028296:	4620      	mov	r0, r4
20028298:	f7ff ffa8 	bl	200281ec <mbedtls_mpi_sub_abs>
2002829c:	2800      	cmp	r0, #0
2002829e:	d1f7      	bne.n	20028290 <mbedtls_mpi_add_mpi+0x2a>
200282a0:	426d      	negs	r5, r5
200282a2:	e7f4      	b.n	2002828e <mbedtls_mpi_add_mpi+0x28>
200282a4:	f7ff ff49 	bl	2002813a <mbedtls_mpi_add_abs>
200282a8:	2800      	cmp	r0, #0
200282aa:	d0f0      	beq.n	2002828e <mbedtls_mpi_add_mpi+0x28>
200282ac:	f06f 000f 	mvn.w	r0, #15
200282b0:	e7ee      	b.n	20028290 <mbedtls_mpi_add_mpi+0x2a>

200282b2 <mbedtls_mpi_sub_mpi>:
200282b2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200282b4:	680d      	ldr	r5, [r1, #0]
200282b6:	6813      	ldr	r3, [r2, #0]
200282b8:	4604      	mov	r4, r0
200282ba:	436b      	muls	r3, r5
200282bc:	2b00      	cmp	r3, #0
200282be:	460f      	mov	r7, r1
200282c0:	4616      	mov	r6, r2
200282c2:	dd16      	ble.n	200282f2 <mbedtls_mpi_sub_mpi+0x40>
200282c4:	4611      	mov	r1, r2
200282c6:	4638      	mov	r0, r7
200282c8:	f7ff fe42 	bl	20027f50 <mbedtls_mpi_cmp_abs>
200282cc:	3001      	adds	r0, #1
200282ce:	d007      	beq.n	200282e0 <mbedtls_mpi_sub_mpi+0x2e>
200282d0:	4632      	mov	r2, r6
200282d2:	4639      	mov	r1, r7
200282d4:	4620      	mov	r0, r4
200282d6:	f7ff ff89 	bl	200281ec <mbedtls_mpi_sub_abs>
200282da:	b900      	cbnz	r0, 200282de <mbedtls_mpi_sub_mpi+0x2c>
200282dc:	6025      	str	r5, [r4, #0]
200282de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200282e0:	463a      	mov	r2, r7
200282e2:	4631      	mov	r1, r6
200282e4:	4620      	mov	r0, r4
200282e6:	f7ff ff81 	bl	200281ec <mbedtls_mpi_sub_abs>
200282ea:	2800      	cmp	r0, #0
200282ec:	d1f7      	bne.n	200282de <mbedtls_mpi_sub_mpi+0x2c>
200282ee:	426d      	negs	r5, r5
200282f0:	e7f4      	b.n	200282dc <mbedtls_mpi_sub_mpi+0x2a>
200282f2:	f7ff ff22 	bl	2002813a <mbedtls_mpi_add_abs>
200282f6:	2800      	cmp	r0, #0
200282f8:	d0f0      	beq.n	200282dc <mbedtls_mpi_sub_mpi+0x2a>
200282fa:	f06f 000f 	mvn.w	r0, #15
200282fe:	e7ee      	b.n	200282de <mbedtls_mpi_sub_mpi+0x2c>

20028300 <mbedtls_mpi_sub_int>:
20028300:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028302:	ea82 73e2 	eor.w	r3, r2, r2, asr #31
20028306:	eba3 73e2 	sub.w	r3, r3, r2, asr #31
2002830a:	2a00      	cmp	r2, #0
2002830c:	9300      	str	r3, [sp, #0]
2002830e:	bfac      	ite	ge
20028310:	2301      	movge	r3, #1
20028312:	f04f 33ff 	movlt.w	r3, #4294967295
20028316:	9301      	str	r3, [sp, #4]
20028318:	2301      	movs	r3, #1
2002831a:	aa01      	add	r2, sp, #4
2002831c:	9302      	str	r3, [sp, #8]
2002831e:	f8cd d00c 	str.w	sp, [sp, #12]
20028322:	f7ff ffc6 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20028326:	b005      	add	sp, #20
20028328:	f85d fb04 	ldr.w	pc, [sp], #4

2002832c <mbedtls_mpi_mul_mpi>:
2002832c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20028330:	2300      	movs	r3, #0
20028332:	4615      	mov	r5, r2
20028334:	2201      	movs	r2, #1
20028336:	b087      	sub	sp, #28
20028338:	4288      	cmp	r0, r1
2002833a:	4607      	mov	r7, r0
2002833c:	460e      	mov	r6, r1
2002833e:	e9cd 2300 	strd	r2, r3, [sp]
20028342:	e9cd 3202 	strd	r3, r2, [sp, #8]
20028346:	e9cd 3304 	strd	r3, r3, [sp, #16]
2002834a:	d110      	bne.n	2002836e <mbedtls_mpi_mul_mpi+0x42>
2002834c:	4668      	mov	r0, sp
2002834e:	f7ff fc8d 	bl	20027c6c <mbedtls_mpi_copy>
20028352:	b158      	cbz	r0, 2002836c <mbedtls_mpi_mul_mpi+0x40>
20028354:	f06f 090f 	mvn.w	r9, #15
20028358:	a803      	add	r0, sp, #12
2002835a:	f7ff fc46 	bl	20027bea <mbedtls_mpi_free>
2002835e:	4668      	mov	r0, sp
20028360:	f7ff fc43 	bl	20027bea <mbedtls_mpi_free>
20028364:	4648      	mov	r0, r9
20028366:	b007      	add	sp, #28
20028368:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
2002836c:	466e      	mov	r6, sp
2002836e:	42af      	cmp	r7, r5
20028370:	d106      	bne.n	20028380 <mbedtls_mpi_mul_mpi+0x54>
20028372:	4639      	mov	r1, r7
20028374:	a803      	add	r0, sp, #12
20028376:	f7ff fc79 	bl	20027c6c <mbedtls_mpi_copy>
2002837a:	2800      	cmp	r0, #0
2002837c:	d1ea      	bne.n	20028354 <mbedtls_mpi_mul_mpi+0x28>
2002837e:	ad03      	add	r5, sp, #12
20028380:	f8d6 8004 	ldr.w	r8, [r6, #4]
20028384:	f1b8 0f00 	cmp.w	r8, #0
20028388:	d116      	bne.n	200283b8 <mbedtls_mpi_mul_mpi+0x8c>
2002838a:	686c      	ldr	r4, [r5, #4]
2002838c:	b9f4      	cbnz	r4, 200283cc <mbedtls_mpi_mul_mpi+0xa0>
2002838e:	eb08 0104 	add.w	r1, r8, r4
20028392:	4638      	mov	r0, r7
20028394:	f7ff fc3e 	bl	20027c14 <mbedtls_mpi_grow>
20028398:	4601      	mov	r1, r0
2002839a:	2800      	cmp	r0, #0
2002839c:	d1da      	bne.n	20028354 <mbedtls_mpi_mul_mpi+0x28>
2002839e:	4638      	mov	r0, r7
200283a0:	f7ff fc8d 	bl	20027cbe <mbedtls_mpi_lset>
200283a4:	4681      	mov	r9, r0
200283a6:	2800      	cmp	r0, #0
200283a8:	d1d4      	bne.n	20028354 <mbedtls_mpi_mul_mpi+0x28>
200283aa:	3c01      	subs	r4, #1
200283ac:	d217      	bcs.n	200283de <mbedtls_mpi_mul_mpi+0xb2>
200283ae:	6833      	ldr	r3, [r6, #0]
200283b0:	682a      	ldr	r2, [r5, #0]
200283b2:	4353      	muls	r3, r2
200283b4:	603b      	str	r3, [r7, #0]
200283b6:	e7cf      	b.n	20028358 <mbedtls_mpi_mul_mpi+0x2c>
200283b8:	68b3      	ldr	r3, [r6, #8]
200283ba:	eb03 0388 	add.w	r3, r3, r8, lsl #2
200283be:	f853 3c04 	ldr.w	r3, [r3, #-4]
200283c2:	2b00      	cmp	r3, #0
200283c4:	d1e1      	bne.n	2002838a <mbedtls_mpi_mul_mpi+0x5e>
200283c6:	f108 38ff 	add.w	r8, r8, #4294967295
200283ca:	e7db      	b.n	20028384 <mbedtls_mpi_mul_mpi+0x58>
200283cc:	68ab      	ldr	r3, [r5, #8]
200283ce:	eb03 0384 	add.w	r3, r3, r4, lsl #2
200283d2:	f853 3c04 	ldr.w	r3, [r3, #-4]
200283d6:	2b00      	cmp	r3, #0
200283d8:	d1d9      	bne.n	2002838e <mbedtls_mpi_mul_mpi+0x62>
200283da:	3c01      	subs	r4, #1
200283dc:	e7d6      	b.n	2002838c <mbedtls_mpi_mul_mpi+0x60>
200283de:	68ab      	ldr	r3, [r5, #8]
200283e0:	68ba      	ldr	r2, [r7, #8]
200283e2:	4640      	mov	r0, r8
200283e4:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
200283e8:	68b1      	ldr	r1, [r6, #8]
200283ea:	eb02 0284 	add.w	r2, r2, r4, lsl #2
200283ee:	f7ff fa79 	bl	200278e4 <mpi_mul_hlp>
200283f2:	e7da      	b.n	200283aa <mbedtls_mpi_mul_mpi+0x7e>

200283f4 <mbedtls_mpi_mul_int>:
200283f4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200283f6:	2301      	movs	r3, #1
200283f8:	9200      	str	r2, [sp, #0]
200283fa:	aa01      	add	r2, sp, #4
200283fc:	e9cd 3301 	strd	r3, r3, [sp, #4]
20028400:	f8cd d00c 	str.w	sp, [sp, #12]
20028404:	f7ff ff92 	bl	2002832c <mbedtls_mpi_mul_mpi>
20028408:	b005      	add	sp, #20
2002840a:	f85d fb04 	ldr.w	pc, [sp], #4

2002840e <mbedtls_mpi_div_mpi>:
2002840e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028412:	b09f      	sub	sp, #124	@ 0x7c
20028414:	e9cd 1203 	strd	r1, r2, [sp, #12]
20028418:	9005      	str	r0, [sp, #20]
2002841a:	2100      	movs	r1, #0
2002841c:	4618      	mov	r0, r3
2002841e:	9309      	str	r3, [sp, #36]	@ 0x24
20028420:	f7ff fe75 	bl	2002810e <mbedtls_mpi_cmp_int>
20028424:	2800      	cmp	r0, #0
20028426:	f000 81f3 	beq.w	20028810 <mbedtls_mpi_div_mpi+0x402>
2002842a:	2501      	movs	r5, #1
2002842c:	2400      	movs	r4, #0
2002842e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028430:	9804      	ldr	r0, [sp, #16]
20028432:	e9cd 5418 	strd	r5, r4, [sp, #96]	@ 0x60
20028436:	e9cd 541b 	strd	r5, r4, [sp, #108]	@ 0x6c
2002843a:	950f      	str	r5, [sp, #60]	@ 0x3c
2002843c:	9512      	str	r5, [sp, #72]	@ 0x48
2002843e:	9515      	str	r5, [sp, #84]	@ 0x54
20028440:	9416      	str	r4, [sp, #88]	@ 0x58
20028442:	f7ff fd85 	bl	20027f50 <mbedtls_mpi_cmp_abs>
20028446:	3001      	adds	r0, #1
20028448:	d11f      	bne.n	2002848a <mbedtls_mpi_div_mpi+0x7c>
2002844a:	9b05      	ldr	r3, [sp, #20]
2002844c:	b933      	cbnz	r3, 2002845c <mbedtls_mpi_div_mpi+0x4e>
2002844e:	9b03      	ldr	r3, [sp, #12]
20028450:	b9a3      	cbnz	r3, 2002847c <mbedtls_mpi_div_mpi+0x6e>
20028452:	2100      	movs	r1, #0
20028454:	4608      	mov	r0, r1
20028456:	b01f      	add	sp, #124	@ 0x7c
20028458:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002845c:	4621      	mov	r1, r4
2002845e:	9805      	ldr	r0, [sp, #20]
20028460:	f7ff fc2d 	bl	20027cbe <mbedtls_mpi_lset>
20028464:	2800      	cmp	r0, #0
20028466:	d0f2      	beq.n	2002844e <mbedtls_mpi_div_mpi+0x40>
20028468:	2400      	movs	r4, #0
2002846a:	4625      	mov	r5, r4
2002846c:	46a1      	mov	r9, r4
2002846e:	46a0      	mov	r8, r4
20028470:	4626      	mov	r6, r4
20028472:	4627      	mov	r7, r4
20028474:	9402      	str	r4, [sp, #8]
20028476:	f06f 010f 	mvn.w	r1, #15
2002847a:	e0ef      	b.n	2002865c <mbedtls_mpi_div_mpi+0x24e>
2002847c:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
20028480:	f7ff fbf4 	bl	20027c6c <mbedtls_mpi_copy>
20028484:	2800      	cmp	r0, #0
20028486:	d1ef      	bne.n	20028468 <mbedtls_mpi_div_mpi+0x5a>
20028488:	e7e3      	b.n	20028452 <mbedtls_mpi_div_mpi+0x44>
2002848a:	9904      	ldr	r1, [sp, #16]
2002848c:	a80f      	add	r0, sp, #60	@ 0x3c
2002848e:	e9cd 4410 	strd	r4, r4, [sp, #64]	@ 0x40
20028492:	f7ff fbeb 	bl	20027c6c <mbedtls_mpi_copy>
20028496:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
2002849a:	4682      	mov	sl, r0
2002849c:	2800      	cmp	r0, #0
2002849e:	f040 81a9 	bne.w	200287f4 <mbedtls_mpi_div_mpi+0x3e6>
200284a2:	e9cd 0013 	strd	r0, r0, [sp, #76]	@ 0x4c
200284a6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200284a8:	a812      	add	r0, sp, #72	@ 0x48
200284aa:	f7ff fbdf 	bl	20027c6c <mbedtls_mpi_copy>
200284ae:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200284b2:	4604      	mov	r4, r0
200284b4:	2800      	cmp	r0, #0
200284b6:	f040 81a2 	bne.w	200287fe <mbedtls_mpi_div_mpi+0x3f0>
200284ba:	9b04      	ldr	r3, [sp, #16]
200284bc:	9017      	str	r0, [sp, #92]	@ 0x5c
200284be:	6859      	ldr	r1, [r3, #4]
200284c0:	a815      	add	r0, sp, #84	@ 0x54
200284c2:	3102      	adds	r1, #2
200284c4:	9512      	str	r5, [sp, #72]	@ 0x48
200284c6:	950f      	str	r5, [sp, #60]	@ 0x3c
200284c8:	f7ff fba4 	bl	20027c14 <mbedtls_mpi_grow>
200284cc:	4605      	mov	r5, r0
200284ce:	b118      	cbz	r0, 200284d8 <mbedtls_mpi_div_mpi+0xca>
200284d0:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
200284d2:	9302      	str	r3, [sp, #8]
200284d4:	4625      	mov	r5, r4
200284d6:	e7ce      	b.n	20028476 <mbedtls_mpi_div_mpi+0x68>
200284d8:	4601      	mov	r1, r0
200284da:	a815      	add	r0, sp, #84	@ 0x54
200284dc:	f7ff fbef 	bl	20027cbe <mbedtls_mpi_lset>
200284e0:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
200284e2:	4604      	mov	r4, r0
200284e4:	9302      	str	r3, [sp, #8]
200284e6:	2800      	cmp	r0, #0
200284e8:	f040 818e 	bne.w	20028808 <mbedtls_mpi_div_mpi+0x3fa>
200284ec:	901a      	str	r0, [sp, #104]	@ 0x68
200284ee:	2102      	movs	r1, #2
200284f0:	a818      	add	r0, sp, #96	@ 0x60
200284f2:	f7ff fb8f 	bl	20027c14 <mbedtls_mpi_grow>
200284f6:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200284f8:	2800      	cmp	r0, #0
200284fa:	d1bc      	bne.n	20028476 <mbedtls_mpi_div_mpi+0x68>
200284fc:	901d      	str	r0, [sp, #116]	@ 0x74
200284fe:	2103      	movs	r1, #3
20028500:	a81b      	add	r0, sp, #108	@ 0x6c
20028502:	f7ff fb87 	bl	20027c14 <mbedtls_mpi_grow>
20028506:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028508:	4683      	mov	fp, r0
2002850a:	2800      	cmp	r0, #0
2002850c:	d1b3      	bne.n	20028476 <mbedtls_mpi_div_mpi+0x68>
2002850e:	a812      	add	r0, sp, #72	@ 0x48
20028510:	f7ff fc09 	bl	20027d26 <mbedtls_mpi_bitlen>
20028514:	f000 001f 	and.w	r0, r0, #31
20028518:	281f      	cmp	r0, #31
2002851a:	f000 808a 	beq.w	20028632 <mbedtls_mpi_div_mpi+0x224>
2002851e:	f1c0 031f 	rsb	r3, r0, #31
20028522:	4619      	mov	r1, r3
20028524:	a80f      	add	r0, sp, #60	@ 0x3c
20028526:	9306      	str	r3, [sp, #24]
20028528:	f7ff fc78 	bl	20027e1c <mbedtls_mpi_shift_l>
2002852c:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028530:	2800      	cmp	r0, #0
20028532:	d1a0      	bne.n	20028476 <mbedtls_mpi_div_mpi+0x68>
20028534:	9906      	ldr	r1, [sp, #24]
20028536:	a812      	add	r0, sp, #72	@ 0x48
20028538:	f7ff fc70 	bl	20027e1c <mbedtls_mpi_shift_l>
2002853c:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028540:	2800      	cmp	r0, #0
20028542:	d198      	bne.n	20028476 <mbedtls_mpi_div_mpi+0x68>
20028544:	46ba      	mov	sl, r7
20028546:	f8cd 8020 	str.w	r8, [sp, #32]
2002854a:	eba7 0b08 	sub.w	fp, r7, r8
2002854e:	ea4f 134b 	mov.w	r3, fp, lsl #5
20028552:	4619      	mov	r1, r3
20028554:	a812      	add	r0, sp, #72	@ 0x48
20028556:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
2002855a:	9301      	str	r3, [sp, #4]
2002855c:	f7ff fc5e 	bl	20027e1c <mbedtls_mpi_shift_l>
20028560:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028564:	2800      	cmp	r0, #0
20028566:	d186      	bne.n	20028476 <mbedtls_mpi_div_mpi+0x68>
20028568:	ea4f 038b 	mov.w	r3, fp, lsl #2
2002856c:	930b      	str	r3, [sp, #44]	@ 0x2c
2002856e:	9b02      	ldr	r3, [sp, #8]
20028570:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
20028574:	a912      	add	r1, sp, #72	@ 0x48
20028576:	a80f      	add	r0, sp, #60	@ 0x3c
20028578:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
2002857c:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
20028580:	f7ff fd84 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20028584:	2800      	cmp	r0, #0
20028586:	da5a      	bge.n	2002863e <mbedtls_mpi_div_mpi+0x230>
20028588:	9901      	ldr	r1, [sp, #4]
2002858a:	a812      	add	r0, sp, #72	@ 0x48
2002858c:	f7ff fc9f 	bl	20027ece <mbedtls_mpi_shift_r>
20028590:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028594:	2800      	cmp	r0, #0
20028596:	f47f af6e 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
2002859a:	f10a 33ff 	add.w	r3, sl, #4294967295
2002859e:	9301      	str	r3, [sp, #4]
200285a0:	9b08      	ldr	r3, [sp, #32]
200285a2:	9a02      	ldr	r2, [sp, #8]
200285a4:	3b01      	subs	r3, #1
200285a6:	9307      	str	r3, [sp, #28]
200285a8:	eb09 0383 	add.w	r3, r9, r3, lsl #2
200285ac:	930a      	str	r3, [sp, #40]	@ 0x28
200285ae:	9b08      	ldr	r3, [sp, #32]
200285b0:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
200285b4:	3b02      	subs	r3, #2
200285b6:	eb09 0383 	add.w	r3, r9, r3, lsl #2
200285ba:	930c      	str	r3, [sp, #48]	@ 0x30
200285bc:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200285be:	4413      	add	r3, r2
200285c0:	469a      	mov	sl, r3
200285c2:	9b01      	ldr	r3, [sp, #4]
200285c4:	9a07      	ldr	r2, [sp, #28]
200285c6:	4293      	cmp	r3, r2
200285c8:	d862      	bhi.n	20028690 <mbedtls_mpi_div_mpi+0x282>
200285ca:	9b05      	ldr	r3, [sp, #20]
200285cc:	b16b      	cbz	r3, 200285ea <mbedtls_mpi_div_mpi+0x1dc>
200285ce:	4618      	mov	r0, r3
200285d0:	a915      	add	r1, sp, #84	@ 0x54
200285d2:	f7ff fb4b 	bl	20027c6c <mbedtls_mpi_copy>
200285d6:	2800      	cmp	r0, #0
200285d8:	f47f af4d 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
200285dc:	9b04      	ldr	r3, [sp, #16]
200285de:	9a09      	ldr	r2, [sp, #36]	@ 0x24
200285e0:	681b      	ldr	r3, [r3, #0]
200285e2:	6812      	ldr	r2, [r2, #0]
200285e4:	4353      	muls	r3, r2
200285e6:	9a05      	ldr	r2, [sp, #20]
200285e8:	6013      	str	r3, [r2, #0]
200285ea:	9b03      	ldr	r3, [sp, #12]
200285ec:	2b00      	cmp	r3, #0
200285ee:	f000 810d 	beq.w	2002880c <mbedtls_mpi_div_mpi+0x3fe>
200285f2:	9906      	ldr	r1, [sp, #24]
200285f4:	a80f      	add	r0, sp, #60	@ 0x3c
200285f6:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200285fa:	f7ff fc68 	bl	20027ece <mbedtls_mpi_shift_r>
200285fe:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028602:	2800      	cmp	r0, #0
20028604:	f47f af37 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
20028608:	9b04      	ldr	r3, [sp, #16]
2002860a:	a90f      	add	r1, sp, #60	@ 0x3c
2002860c:	681b      	ldr	r3, [r3, #0]
2002860e:	9803      	ldr	r0, [sp, #12]
20028610:	930f      	str	r3, [sp, #60]	@ 0x3c
20028612:	f7ff fb2b 	bl	20027c6c <mbedtls_mpi_copy>
20028616:	4601      	mov	r1, r0
20028618:	2800      	cmp	r0, #0
2002861a:	f47f af2c 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
2002861e:	9001      	str	r0, [sp, #4]
20028620:	9803      	ldr	r0, [sp, #12]
20028622:	f7ff fd74 	bl	2002810e <mbedtls_mpi_cmp_int>
20028626:	9901      	ldr	r1, [sp, #4]
20028628:	b9c0      	cbnz	r0, 2002865c <mbedtls_mpi_div_mpi+0x24e>
2002862a:	2301      	movs	r3, #1
2002862c:	9a03      	ldr	r2, [sp, #12]
2002862e:	6013      	str	r3, [r2, #0]
20028630:	e014      	b.n	2002865c <mbedtls_mpi_div_mpi+0x24e>
20028632:	46ba      	mov	sl, r7
20028634:	f8cd 8020 	str.w	r8, [sp, #32]
20028638:	f8cd b018 	str.w	fp, [sp, #24]
2002863c:	e785      	b.n	2002854a <mbedtls_mpi_div_mpi+0x13c>
2002863e:	f8db 2000 	ldr.w	r2, [fp]
20028642:	a90f      	add	r1, sp, #60	@ 0x3c
20028644:	3201      	adds	r2, #1
20028646:	4608      	mov	r0, r1
20028648:	f8cb 2000 	str.w	r2, [fp]
2002864c:	aa12      	add	r2, sp, #72	@ 0x48
2002864e:	f7ff fe30 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20028652:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028656:	4601      	mov	r1, r0
20028658:	2800      	cmp	r0, #0
2002865a:	d08b      	beq.n	20028574 <mbedtls_mpi_div_mpi+0x166>
2002865c:	a80f      	add	r0, sp, #60	@ 0x3c
2002865e:	9101      	str	r1, [sp, #4]
20028660:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028664:	f7ff fac1 	bl	20027bea <mbedtls_mpi_free>
20028668:	a812      	add	r0, sp, #72	@ 0x48
2002866a:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
2002866e:	f7ff fabc 	bl	20027bea <mbedtls_mpi_free>
20028672:	9b02      	ldr	r3, [sp, #8]
20028674:	a815      	add	r0, sp, #84	@ 0x54
20028676:	9317      	str	r3, [sp, #92]	@ 0x5c
20028678:	f7ff fab7 	bl	20027bea <mbedtls_mpi_free>
2002867c:	a818      	add	r0, sp, #96	@ 0x60
2002867e:	951a      	str	r5, [sp, #104]	@ 0x68
20028680:	f7ff fab3 	bl	20027bea <mbedtls_mpi_free>
20028684:	a81b      	add	r0, sp, #108	@ 0x6c
20028686:	941d      	str	r4, [sp, #116]	@ 0x74
20028688:	f7ff faaf 	bl	20027bea <mbedtls_mpi_free>
2002868c:	9901      	ldr	r1, [sp, #4]
2002868e:	e6e1      	b.n	20028454 <mbedtls_mpi_div_mpi+0x46>
20028690:	9b01      	ldr	r3, [sp, #4]
20028692:	ea4f 0b83 	mov.w	fp, r3, lsl #2
20028696:	eb06 0383 	add.w	r3, r6, r3, lsl #2
2002869a:	930b      	str	r3, [sp, #44]	@ 0x2c
2002869c:	9b01      	ldr	r3, [sp, #4]
2002869e:	f1ab 0004 	sub.w	r0, fp, #4
200286a2:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
200286a6:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200286a8:	681a      	ldr	r2, [r3, #0]
200286aa:	1833      	adds	r3, r6, r0
200286ac:	4291      	cmp	r1, r2
200286ae:	930d      	str	r3, [sp, #52]	@ 0x34
200286b0:	d255      	bcs.n	2002875e <mbedtls_mpi_div_mpi+0x350>
200286b2:	2300      	movs	r3, #0
200286b4:	5830      	ldr	r0, [r6, r0]
200286b6:	f001 fd87 	bl	2002a1c8 <__aeabi_uldivmod>
200286ba:	2900      	cmp	r1, #0
200286bc:	bf14      	ite	ne
200286be:	f04f 33ff 	movne.w	r3, #4294967295
200286c2:	4603      	moveq	r3, r0
200286c4:	3301      	adds	r3, #1
200286c6:	f1ab 0b08 	sub.w	fp, fp, #8
200286ca:	f84a 3c04 	str.w	r3, [sl, #-4]
200286ce:	44b3      	add	fp, r6
200286d0:	f85a 3c04 	ldr.w	r3, [sl, #-4]
200286d4:	2100      	movs	r1, #0
200286d6:	3b01      	subs	r3, #1
200286d8:	f84a 3c04 	str.w	r3, [sl, #-4]
200286dc:	a818      	add	r0, sp, #96	@ 0x60
200286de:	951a      	str	r5, [sp, #104]	@ 0x68
200286e0:	f7ff faed 	bl	20027cbe <mbedtls_mpi_lset>
200286e4:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200286e6:	2800      	cmp	r0, #0
200286e8:	f47f aec5 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
200286ec:	9b07      	ldr	r3, [sp, #28]
200286ee:	2b00      	cmp	r3, #0
200286f0:	d038      	beq.n	20028764 <mbedtls_mpi_div_mpi+0x356>
200286f2:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200286f4:	681b      	ldr	r3, [r3, #0]
200286f6:	602b      	str	r3, [r5, #0]
200286f8:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200286fa:	a918      	add	r1, sp, #96	@ 0x60
200286fc:	681b      	ldr	r3, [r3, #0]
200286fe:	4608      	mov	r0, r1
20028700:	606b      	str	r3, [r5, #4]
20028702:	f85a 2c04 	ldr.w	r2, [sl, #-4]
20028706:	f7ff fe75 	bl	200283f4 <mbedtls_mpi_mul_int>
2002870a:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002870c:	4601      	mov	r1, r0
2002870e:	2800      	cmp	r0, #0
20028710:	f47f aeb1 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
20028714:	a81b      	add	r0, sp, #108	@ 0x6c
20028716:	941d      	str	r4, [sp, #116]	@ 0x74
20028718:	f7ff fad1 	bl	20027cbe <mbedtls_mpi_lset>
2002871c:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
2002871e:	2800      	cmp	r0, #0
20028720:	f47f aea9 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
20028724:	9b01      	ldr	r3, [sp, #4]
20028726:	a91b      	add	r1, sp, #108	@ 0x6c
20028728:	2b01      	cmp	r3, #1
2002872a:	bf18      	it	ne
2002872c:	f8db 0000 	ldrne.w	r0, [fp]
20028730:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
20028732:	6020      	str	r0, [r4, #0]
20028734:	681b      	ldr	r3, [r3, #0]
20028736:	a818      	add	r0, sp, #96	@ 0x60
20028738:	6063      	str	r3, [r4, #4]
2002873a:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002873c:	681b      	ldr	r3, [r3, #0]
2002873e:	60a3      	str	r3, [r4, #8]
20028740:	f7ff fca4 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20028744:	2800      	cmp	r0, #0
20028746:	dcc3      	bgt.n	200286d0 <mbedtls_mpi_div_mpi+0x2c2>
20028748:	f85a 2c04 	ldr.w	r2, [sl, #-4]
2002874c:	a912      	add	r1, sp, #72	@ 0x48
2002874e:	a818      	add	r0, sp, #96	@ 0x60
20028750:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
20028754:	f7ff fe4e 	bl	200283f4 <mbedtls_mpi_mul_int>
20028758:	b130      	cbz	r0, 20028768 <mbedtls_mpi_div_mpi+0x35a>
2002875a:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002875c:	e68b      	b.n	20028476 <mbedtls_mpi_div_mpi+0x68>
2002875e:	f04f 33ff 	mov.w	r3, #4294967295
20028762:	e7af      	b.n	200286c4 <mbedtls_mpi_div_mpi+0x2b6>
20028764:	9b07      	ldr	r3, [sp, #28]
20028766:	e7c6      	b.n	200286f6 <mbedtls_mpi_div_mpi+0x2e8>
20028768:	f06f 0b1f 	mvn.w	fp, #31
2002876c:	9b08      	ldr	r3, [sp, #32]
2002876e:	a818      	add	r0, sp, #96	@ 0x60
20028770:	fb0b fb03 	mul.w	fp, fp, r3
20028774:	9b01      	ldr	r3, [sp, #4]
20028776:	eb0b 1b43 	add.w	fp, fp, r3, lsl #5
2002877a:	4659      	mov	r1, fp
2002877c:	f7ff fb4e 	bl	20027e1c <mbedtls_mpi_shift_l>
20028780:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028782:	2800      	cmp	r0, #0
20028784:	f47f ae77 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
20028788:	a90f      	add	r1, sp, #60	@ 0x3c
2002878a:	4608      	mov	r0, r1
2002878c:	aa18      	add	r2, sp, #96	@ 0x60
2002878e:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028792:	f7ff fd8e 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20028796:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
2002879a:	4601      	mov	r1, r0
2002879c:	2800      	cmp	r0, #0
2002879e:	f47f af5d 	bne.w	2002865c <mbedtls_mpi_div_mpi+0x24e>
200287a2:	a80f      	add	r0, sp, #60	@ 0x3c
200287a4:	f7ff fcb3 	bl	2002810e <mbedtls_mpi_cmp_int>
200287a8:	2800      	cmp	r0, #0
200287aa:	da1d      	bge.n	200287e8 <mbedtls_mpi_div_mpi+0x3da>
200287ac:	a912      	add	r1, sp, #72	@ 0x48
200287ae:	a818      	add	r0, sp, #96	@ 0x60
200287b0:	f7ff fa5c 	bl	20027c6c <mbedtls_mpi_copy>
200287b4:	2800      	cmp	r0, #0
200287b6:	d1d0      	bne.n	2002875a <mbedtls_mpi_div_mpi+0x34c>
200287b8:	4659      	mov	r1, fp
200287ba:	a818      	add	r0, sp, #96	@ 0x60
200287bc:	f7ff fb2e 	bl	20027e1c <mbedtls_mpi_shift_l>
200287c0:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200287c2:	2800      	cmp	r0, #0
200287c4:	f47f ae57 	bne.w	20028476 <mbedtls_mpi_div_mpi+0x68>
200287c8:	a90f      	add	r1, sp, #60	@ 0x3c
200287ca:	4608      	mov	r0, r1
200287cc:	aa18      	add	r2, sp, #96	@ 0x60
200287ce:	f7ff fd4a 	bl	20028266 <mbedtls_mpi_add_mpi>
200287d2:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200287d6:	4601      	mov	r1, r0
200287d8:	2800      	cmp	r0, #0
200287da:	f47f af3f 	bne.w	2002865c <mbedtls_mpi_div_mpi+0x24e>
200287de:	f85a 3c04 	ldr.w	r3, [sl, #-4]
200287e2:	3b01      	subs	r3, #1
200287e4:	f84a 3c04 	str.w	r3, [sl, #-4]
200287e8:	9b01      	ldr	r3, [sp, #4]
200287ea:	f1aa 0a04 	sub.w	sl, sl, #4
200287ee:	3b01      	subs	r3, #1
200287f0:	9301      	str	r3, [sp, #4]
200287f2:	e6e6      	b.n	200285c2 <mbedtls_mpi_div_mpi+0x1b4>
200287f4:	4625      	mov	r5, r4
200287f6:	46a1      	mov	r9, r4
200287f8:	46a0      	mov	r8, r4
200287fa:	9402      	str	r4, [sp, #8]
200287fc:	e63b      	b.n	20028476 <mbedtls_mpi_div_mpi+0x68>
200287fe:	4654      	mov	r4, sl
20028800:	4655      	mov	r5, sl
20028802:	f8cd a008 	str.w	sl, [sp, #8]
20028806:	e636      	b.n	20028476 <mbedtls_mpi_div_mpi+0x68>
20028808:	462c      	mov	r4, r5
2002880a:	e663      	b.n	200284d4 <mbedtls_mpi_div_mpi+0xc6>
2002880c:	9903      	ldr	r1, [sp, #12]
2002880e:	e725      	b.n	2002865c <mbedtls_mpi_div_mpi+0x24e>
20028810:	f06f 010b 	mvn.w	r1, #11
20028814:	e61e      	b.n	20028454 <mbedtls_mpi_div_mpi+0x46>

20028816 <mbedtls_mpi_mod_mpi>:
20028816:	b570      	push	{r4, r5, r6, lr}
20028818:	4604      	mov	r4, r0
2002881a:	460d      	mov	r5, r1
2002881c:	4610      	mov	r0, r2
2002881e:	2100      	movs	r1, #0
20028820:	4616      	mov	r6, r2
20028822:	f7ff fc74 	bl	2002810e <mbedtls_mpi_cmp_int>
20028826:	2800      	cmp	r0, #0
20028828:	db24      	blt.n	20028874 <mbedtls_mpi_mod_mpi+0x5e>
2002882a:	462a      	mov	r2, r5
2002882c:	4633      	mov	r3, r6
2002882e:	4621      	mov	r1, r4
20028830:	2000      	movs	r0, #0
20028832:	f7ff fdec 	bl	2002840e <mbedtls_mpi_div_mpi>
20028836:	4605      	mov	r5, r0
20028838:	b138      	cbz	r0, 2002884a <mbedtls_mpi_mod_mpi+0x34>
2002883a:	4628      	mov	r0, r5
2002883c:	bd70      	pop	{r4, r5, r6, pc}
2002883e:	4632      	mov	r2, r6
20028840:	4621      	mov	r1, r4
20028842:	4620      	mov	r0, r4
20028844:	f7ff fd0f 	bl	20028266 <mbedtls_mpi_add_mpi>
20028848:	b990      	cbnz	r0, 20028870 <mbedtls_mpi_mod_mpi+0x5a>
2002884a:	2100      	movs	r1, #0
2002884c:	4620      	mov	r0, r4
2002884e:	f7ff fc5e 	bl	2002810e <mbedtls_mpi_cmp_int>
20028852:	2800      	cmp	r0, #0
20028854:	dbf3      	blt.n	2002883e <mbedtls_mpi_mod_mpi+0x28>
20028856:	4631      	mov	r1, r6
20028858:	4620      	mov	r0, r4
2002885a:	f7ff fc17 	bl	2002808c <mbedtls_mpi_cmp_mpi>
2002885e:	2800      	cmp	r0, #0
20028860:	dbeb      	blt.n	2002883a <mbedtls_mpi_mod_mpi+0x24>
20028862:	4632      	mov	r2, r6
20028864:	4621      	mov	r1, r4
20028866:	4620      	mov	r0, r4
20028868:	f7ff fd23 	bl	200282b2 <mbedtls_mpi_sub_mpi>
2002886c:	2800      	cmp	r0, #0
2002886e:	d0f2      	beq.n	20028856 <mbedtls_mpi_mod_mpi+0x40>
20028870:	4605      	mov	r5, r0
20028872:	e7e2      	b.n	2002883a <mbedtls_mpi_mod_mpi+0x24>
20028874:	f06f 0509 	mvn.w	r5, #9
20028878:	e7df      	b.n	2002883a <mbedtls_mpi_mod_mpi+0x24>

2002887a <mbedtls_mpi_exp_mod>:
2002887a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002887e:	4605      	mov	r5, r0
20028880:	f2ad 6d54 	subw	sp, sp, #1620	@ 0x654
20028884:	4688      	mov	r8, r1
20028886:	4618      	mov	r0, r3
20028888:	2100      	movs	r1, #0
2002888a:	461c      	mov	r4, r3
2002888c:	9203      	str	r2, [sp, #12]
2002888e:	f7ff fc3e 	bl	2002810e <mbedtls_mpi_cmp_int>
20028892:	2800      	cmp	r0, #0
20028894:	f2c0 8202 	blt.w	20028c9c <mbedtls_mpi_exp_mod+0x422>
20028898:	68a3      	ldr	r3, [r4, #8]
2002889a:	681f      	ldr	r7, [r3, #0]
2002889c:	f017 0301 	ands.w	r3, r7, #1
200288a0:	9305      	str	r3, [sp, #20]
200288a2:	f000 81fb 	beq.w	20028c9c <mbedtls_mpi_exp_mod+0x422>
200288a6:	2100      	movs	r1, #0
200288a8:	9803      	ldr	r0, [sp, #12]
200288aa:	f7ff fc30 	bl	2002810e <mbedtls_mpi_cmp_int>
200288ae:	2800      	cmp	r0, #0
200288b0:	f2c0 81f4 	blt.w	20028c9c <mbedtls_mpi_exp_mod+0x422>
200288b4:	2100      	movs	r1, #0
200288b6:	2301      	movs	r3, #1
200288b8:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
200288bc:	a814      	add	r0, sp, #80	@ 0x50
200288be:	e9cd 3108 	strd	r3, r1, [sp, #32]
200288c2:	e9cd 130a 	strd	r1, r3, [sp, #40]	@ 0x28
200288c6:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
200288ca:	e9cd 310e 	strd	r3, r1, [sp, #56]	@ 0x38
200288ce:	9110      	str	r1, [sp, #64]	@ 0x40
200288d0:	f001 ff1c 	bl	2002a70c <memset>
200288d4:	9803      	ldr	r0, [sp, #12]
200288d6:	f7ff fa26 	bl	20027d26 <mbedtls_mpi_bitlen>
200288da:	f5b0 7f28 	cmp.w	r0, #672	@ 0x2a0
200288de:	d233      	bcs.n	20028948 <mbedtls_mpi_exp_mod+0xce>
200288e0:	28ef      	cmp	r0, #239	@ 0xef
200288e2:	d833      	bhi.n	2002894c <mbedtls_mpi_exp_mod+0xd2>
200288e4:	284f      	cmp	r0, #79	@ 0x4f
200288e6:	d833      	bhi.n	20028950 <mbedtls_mpi_exp_mod+0xd6>
200288e8:	9b05      	ldr	r3, [sp, #20]
200288ea:	2818      	cmp	r0, #24
200288ec:	bf34      	ite	cc
200288ee:	461e      	movcc	r6, r3
200288f0:	2603      	movcs	r6, #3
200288f2:	6863      	ldr	r3, [r4, #4]
200288f4:	4628      	mov	r0, r5
200288f6:	f103 0901 	add.w	r9, r3, #1
200288fa:	4649      	mov	r1, r9
200288fc:	f7ff f98a 	bl	20027c14 <mbedtls_mpi_grow>
20028900:	b340      	cbz	r0, 20028954 <mbedtls_mpi_exp_mod+0xda>
20028902:	f06f 090f 	mvn.w	r9, #15
20028906:	2301      	movs	r3, #1
20028908:	1e74      	subs	r4, r6, #1
2002890a:	fa03 f506 	lsl.w	r5, r3, r6
2002890e:	260c      	movs	r6, #12
20028910:	fa03 f404 	lsl.w	r4, r3, r4
20028914:	af14      	add	r7, sp, #80	@ 0x50
20028916:	42a5      	cmp	r5, r4
20028918:	f200 81ba 	bhi.w	20028c90 <mbedtls_mpi_exp_mod+0x416>
2002891c:	a817      	add	r0, sp, #92	@ 0x5c
2002891e:	f7ff f964 	bl	20027bea <mbedtls_mpi_free>
20028922:	a80b      	add	r0, sp, #44	@ 0x2c
20028924:	f7ff f961 	bl	20027bea <mbedtls_mpi_free>
20028928:	a80e      	add	r0, sp, #56	@ 0x38
2002892a:	f7ff f95e 	bl	20027bea <mbedtls_mpi_free>
2002892e:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028932:	b10b      	cbz	r3, 20028938 <mbedtls_mpi_exp_mod+0xbe>
20028934:	689b      	ldr	r3, [r3, #8]
20028936:	b913      	cbnz	r3, 2002893e <mbedtls_mpi_exp_mod+0xc4>
20028938:	a808      	add	r0, sp, #32
2002893a:	f7ff f956 	bl	20027bea <mbedtls_mpi_free>
2002893e:	4648      	mov	r0, r9
20028940:	f20d 6d54 	addw	sp, sp, #1620	@ 0x654
20028944:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20028948:	2606      	movs	r6, #6
2002894a:	e7d2      	b.n	200288f2 <mbedtls_mpi_exp_mod+0x78>
2002894c:	2605      	movs	r6, #5
2002894e:	e7d0      	b.n	200288f2 <mbedtls_mpi_exp_mod+0x78>
20028950:	2604      	movs	r6, #4
20028952:	e7ce      	b.n	200288f2 <mbedtls_mpi_exp_mod+0x78>
20028954:	4649      	mov	r1, r9
20028956:	a817      	add	r0, sp, #92	@ 0x5c
20028958:	f7ff f95c 	bl	20027c14 <mbedtls_mpi_grow>
2002895c:	2800      	cmp	r0, #0
2002895e:	d1d0      	bne.n	20028902 <mbedtls_mpi_exp_mod+0x88>
20028960:	ea4f 0149 	mov.w	r1, r9, lsl #1
20028964:	a80b      	add	r0, sp, #44	@ 0x2c
20028966:	f7ff f955 	bl	20027c14 <mbedtls_mpi_grow>
2002896a:	2800      	cmp	r0, #0
2002896c:	d1c9      	bne.n	20028902 <mbedtls_mpi_exp_mod+0x88>
2002896e:	f8d8 3000 	ldr.w	r3, [r8]
20028972:	9304      	str	r3, [sp, #16]
20028974:	3301      	adds	r3, #1
20028976:	d109      	bne.n	2002898c <mbedtls_mpi_exp_mod+0x112>
20028978:	4641      	mov	r1, r8
2002897a:	a80e      	add	r0, sp, #56	@ 0x38
2002897c:	f7ff f976 	bl	20027c6c <mbedtls_mpi_copy>
20028980:	2800      	cmp	r0, #0
20028982:	d1be      	bne.n	20028902 <mbedtls_mpi_exp_mod+0x88>
20028984:	2301      	movs	r3, #1
20028986:	f10d 0838 	add.w	r8, sp, #56	@ 0x38
2002898a:	930e      	str	r3, [sp, #56]	@ 0x38
2002898c:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028990:	b11b      	cbz	r3, 2002899a <mbedtls_mpi_exp_mod+0x120>
20028992:	689b      	ldr	r3, [r3, #8]
20028994:	2b00      	cmp	r3, #0
20028996:	f040 80ab 	bne.w	20028af0 <mbedtls_mpi_exp_mod+0x276>
2002899a:	2101      	movs	r1, #1
2002899c:	a808      	add	r0, sp, #32
2002899e:	f7ff f98e 	bl	20027cbe <mbedtls_mpi_lset>
200289a2:	2800      	cmp	r0, #0
200289a4:	d1ad      	bne.n	20028902 <mbedtls_mpi_exp_mod+0x88>
200289a6:	6861      	ldr	r1, [r4, #4]
200289a8:	a808      	add	r0, sp, #32
200289aa:	0189      	lsls	r1, r1, #6
200289ac:	f7ff fa36 	bl	20027e1c <mbedtls_mpi_shift_l>
200289b0:	2800      	cmp	r0, #0
200289b2:	d1a6      	bne.n	20028902 <mbedtls_mpi_exp_mod+0x88>
200289b4:	a908      	add	r1, sp, #32
200289b6:	4622      	mov	r2, r4
200289b8:	4608      	mov	r0, r1
200289ba:	f7ff ff2c 	bl	20028816 <mbedtls_mpi_mod_mpi>
200289be:	4681      	mov	r9, r0
200289c0:	2800      	cmp	r0, #0
200289c2:	d1a0      	bne.n	20028906 <mbedtls_mpi_exp_mod+0x8c>
200289c4:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
200289c8:	b13b      	cbz	r3, 200289da <mbedtls_mpi_exp_mod+0x160>
200289ca:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
200289ce:	ab08      	add	r3, sp, #32
200289d0:	cb03      	ldmia	r3!, {r0, r1}
200289d2:	6010      	str	r0, [r2, #0]
200289d4:	6818      	ldr	r0, [r3, #0]
200289d6:	6051      	str	r1, [r2, #4]
200289d8:	6090      	str	r0, [r2, #8]
200289da:	4621      	mov	r1, r4
200289dc:	4640      	mov	r0, r8
200289de:	f7ff fb55 	bl	2002808c <mbedtls_mpi_cmp_mpi>
200289e2:	2800      	cmp	r0, #0
200289e4:	f2c0 808d 	blt.w	20028b02 <mbedtls_mpi_exp_mod+0x288>
200289e8:	4622      	mov	r2, r4
200289ea:	4641      	mov	r1, r8
200289ec:	a817      	add	r0, sp, #92	@ 0x5c
200289ee:	f7ff ff12 	bl	20028816 <mbedtls_mpi_mod_mpi>
200289f2:	4681      	mov	r9, r0
200289f4:	2800      	cmp	r0, #0
200289f6:	d186      	bne.n	20028906 <mbedtls_mpi_exp_mod+0x8c>
200289f8:	1cba      	adds	r2, r7, #2
200289fa:	0052      	lsls	r2, r2, #1
200289fc:	f002 0208 	and.w	r2, r2, #8
20028a00:	443a      	add	r2, r7
20028a02:	fb02 f307 	mul.w	r3, r2, r7
20028a06:	f1c3 0302 	rsb	r3, r3, #2
20028a0a:	4353      	muls	r3, r2
20028a0c:	fb03 f207 	mul.w	r2, r3, r7
20028a10:	f1c2 0202 	rsb	r2, r2, #2
20028a14:	4353      	muls	r3, r2
20028a16:	435f      	muls	r7, r3
20028a18:	3f02      	subs	r7, #2
20028a1a:	437b      	muls	r3, r7
20028a1c:	f10d 0b2c 	add.w	fp, sp, #44	@ 0x2c
20028a20:	4622      	mov	r2, r4
20028a22:	f8cd b000 	str.w	fp, [sp]
20028a26:	a908      	add	r1, sp, #32
20028a28:	a817      	add	r0, sp, #92	@ 0x5c
20028a2a:	9302      	str	r3, [sp, #8]
20028a2c:	f7ff fac4 	bl	20027fb8 <mpi_montmul>
20028a30:	2800      	cmp	r0, #0
20028a32:	f040 80e4 	bne.w	20028bfe <mbedtls_mpi_exp_mod+0x384>
20028a36:	4628      	mov	r0, r5
20028a38:	a908      	add	r1, sp, #32
20028a3a:	f7ff f917 	bl	20027c6c <mbedtls_mpi_copy>
20028a3e:	2800      	cmp	r0, #0
20028a40:	f47f af5f 	bne.w	20028902 <mbedtls_mpi_exp_mod+0x88>
20028a44:	2301      	movs	r3, #1
20028a46:	aa07      	add	r2, sp, #28
20028a48:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028a4c:	9307      	str	r3, [sp, #28]
20028a4e:	9213      	str	r2, [sp, #76]	@ 0x4c
20028a50:	4628      	mov	r0, r5
20028a52:	4622      	mov	r2, r4
20028a54:	9b02      	ldr	r3, [sp, #8]
20028a56:	f8cd b000 	str.w	fp, [sp]
20028a5a:	a911      	add	r1, sp, #68	@ 0x44
20028a5c:	f7ff faac 	bl	20027fb8 <mpi_montmul>
20028a60:	2800      	cmp	r0, #0
20028a62:	f040 80cc 	bne.w	20028bfe <mbedtls_mpi_exp_mod+0x384>
20028a66:	2e01      	cmp	r6, #1
20028a68:	d153      	bne.n	20028b12 <mbedtls_mpi_exp_mod+0x298>
20028a6a:	f04f 0900 	mov.w	r9, #0
20028a6e:	464f      	mov	r7, r9
20028a70:	46ca      	mov	sl, r9
20028a72:	46c8      	mov	r8, r9
20028a74:	9b03      	ldr	r3, [sp, #12]
20028a76:	f8d3 b004 	ldr.w	fp, [r3, #4]
20028a7a:	f1ba 0f00 	cmp.w	sl, #0
20028a7e:	f040 80a1 	bne.w	20028bc4 <mbedtls_mpi_exp_mod+0x34a>
20028a82:	f1bb 0f00 	cmp.w	fp, #0
20028a86:	f040 8099 	bne.w	20028bbc <mbedtls_mpi_exp_mod+0x342>
20028a8a:	f04f 0a01 	mov.w	sl, #1
20028a8e:	f10d 092c 	add.w	r9, sp, #44	@ 0x2c
20028a92:	fa0a fa06 	lsl.w	sl, sl, r6
20028a96:	45bb      	cmp	fp, r7
20028a98:	f040 80dd 	bne.w	20028c56 <mbedtls_mpi_exp_mod+0x3dc>
20028a9c:	2301      	movs	r3, #1
20028a9e:	aa07      	add	r2, sp, #28
20028aa0:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028aa4:	9307      	str	r3, [sp, #28]
20028aa6:	9213      	str	r2, [sp, #76]	@ 0x4c
20028aa8:	f8cd 9000 	str.w	r9, [sp]
20028aac:	4622      	mov	r2, r4
20028aae:	4628      	mov	r0, r5
20028ab0:	9b02      	ldr	r3, [sp, #8]
20028ab2:	a911      	add	r1, sp, #68	@ 0x44
20028ab4:	f7ff fa80 	bl	20027fb8 <mpi_montmul>
20028ab8:	4681      	mov	r9, r0
20028aba:	2800      	cmp	r0, #0
20028abc:	f040 809f 	bne.w	20028bfe <mbedtls_mpi_exp_mod+0x384>
20028ac0:	9b04      	ldr	r3, [sp, #16]
20028ac2:	3301      	adds	r3, #1
20028ac4:	f47f af1f 	bne.w	20028906 <mbedtls_mpi_exp_mod+0x8c>
20028ac8:	9b03      	ldr	r3, [sp, #12]
20028aca:	685b      	ldr	r3, [r3, #4]
20028acc:	2b00      	cmp	r3, #0
20028ace:	f43f af1a 	beq.w	20028906 <mbedtls_mpi_exp_mod+0x8c>
20028ad2:	9b03      	ldr	r3, [sp, #12]
20028ad4:	689b      	ldr	r3, [r3, #8]
20028ad6:	681b      	ldr	r3, [r3, #0]
20028ad8:	07db      	lsls	r3, r3, #31
20028ada:	f57f af14 	bpl.w	20028906 <mbedtls_mpi_exp_mod+0x8c>
20028ade:	9b04      	ldr	r3, [sp, #16]
20028ae0:	462a      	mov	r2, r5
20028ae2:	4621      	mov	r1, r4
20028ae4:	4628      	mov	r0, r5
20028ae6:	602b      	str	r3, [r5, #0]
20028ae8:	f7ff fbbd 	bl	20028266 <mbedtls_mpi_add_mpi>
20028aec:	4681      	mov	r9, r0
20028aee:	e70a      	b.n	20028906 <mbedtls_mpi_exp_mod+0x8c>
20028af0:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028af4:	ab08      	add	r3, sp, #32
20028af6:	6810      	ldr	r0, [r2, #0]
20028af8:	6851      	ldr	r1, [r2, #4]
20028afa:	c303      	stmia	r3!, {r0, r1}
20028afc:	6890      	ldr	r0, [r2, #8]
20028afe:	6018      	str	r0, [r3, #0]
20028b00:	e76b      	b.n	200289da <mbedtls_mpi_exp_mod+0x160>
20028b02:	4641      	mov	r1, r8
20028b04:	a817      	add	r0, sp, #92	@ 0x5c
20028b06:	f7ff f8b1 	bl	20027c6c <mbedtls_mpi_copy>
20028b0a:	2800      	cmp	r0, #0
20028b0c:	f43f af74 	beq.w	200289f8 <mbedtls_mpi_exp_mod+0x17e>
20028b10:	e6f7      	b.n	20028902 <mbedtls_mpi_exp_mod+0x88>
20028b12:	f04f 0a0c 	mov.w	sl, #12
20028b16:	1e77      	subs	r7, r6, #1
20028b18:	6861      	ldr	r1, [r4, #4]
20028b1a:	fa0a fa07 	lsl.w	sl, sl, r7
20028b1e:	f10d 0950 	add.w	r9, sp, #80	@ 0x50
20028b22:	44d1      	add	r9, sl
20028b24:	4648      	mov	r0, r9
20028b26:	3101      	adds	r1, #1
20028b28:	f7ff f874 	bl	20027c14 <mbedtls_mpi_grow>
20028b2c:	2800      	cmp	r0, #0
20028b2e:	f47f aee8 	bne.w	20028902 <mbedtls_mpi_exp_mod+0x88>
20028b32:	4648      	mov	r0, r9
20028b34:	a917      	add	r1, sp, #92	@ 0x5c
20028b36:	f7ff f899 	bl	20027c6c <mbedtls_mpi_copy>
20028b3a:	2800      	cmp	r0, #0
20028b3c:	f47f aee1 	bne.w	20028902 <mbedtls_mpi_exp_mod+0x88>
20028b40:	4680      	mov	r8, r0
20028b42:	4622      	mov	r2, r4
20028b44:	4649      	mov	r1, r9
20028b46:	4648      	mov	r0, r9
20028b48:	9b02      	ldr	r3, [sp, #8]
20028b4a:	f8cd b000 	str.w	fp, [sp]
20028b4e:	f7ff fa33 	bl	20027fb8 <mpi_montmul>
20028b52:	2800      	cmp	r0, #0
20028b54:	d153      	bne.n	20028bfe <mbedtls_mpi_exp_mod+0x384>
20028b56:	f108 0801 	add.w	r8, r8, #1
20028b5a:	45b8      	cmp	r8, r7
20028b5c:	d3f1      	bcc.n	20028b42 <mbedtls_mpi_exp_mod+0x2c8>
20028b5e:	f04f 0801 	mov.w	r8, #1
20028b62:	f10d 0b50 	add.w	fp, sp, #80	@ 0x50
20028b66:	fa08 f707 	lsl.w	r7, r8, r7
20028b6a:	4447      	add	r7, r8
20028b6c:	44d3      	add	fp, sl
20028b6e:	fa08 f806 	lsl.w	r8, r8, r6
20028b72:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
20028b76:	45b8      	cmp	r8, r7
20028b78:	f67f af77 	bls.w	20028a6a <mbedtls_mpi_exp_mod+0x1f0>
20028b7c:	6861      	ldr	r1, [r4, #4]
20028b7e:	f10b 090c 	add.w	r9, fp, #12
20028b82:	4648      	mov	r0, r9
20028b84:	3101      	adds	r1, #1
20028b86:	f7ff f845 	bl	20027c14 <mbedtls_mpi_grow>
20028b8a:	2800      	cmp	r0, #0
20028b8c:	f47f aeb9 	bne.w	20028902 <mbedtls_mpi_exp_mod+0x88>
20028b90:	4659      	mov	r1, fp
20028b92:	4648      	mov	r0, r9
20028b94:	f7ff f86a 	bl	20027c6c <mbedtls_mpi_copy>
20028b98:	2800      	cmp	r0, #0
20028b9a:	f47f aeb2 	bne.w	20028902 <mbedtls_mpi_exp_mod+0x88>
20028b9e:	4622      	mov	r2, r4
20028ba0:	4648      	mov	r0, r9
20028ba2:	9b02      	ldr	r3, [sp, #8]
20028ba4:	f8cd a000 	str.w	sl, [sp]
20028ba8:	a917      	add	r1, sp, #92	@ 0x5c
20028baa:	f7ff fa05 	bl	20027fb8 <mpi_montmul>
20028bae:	bb30      	cbnz	r0, 20028bfe <mbedtls_mpi_exp_mod+0x384>
20028bb0:	46cb      	mov	fp, r9
20028bb2:	3701      	adds	r7, #1
20028bb4:	e7df      	b.n	20028b76 <mbedtls_mpi_exp_mod+0x2fc>
20028bb6:	f04f 0902 	mov.w	r9, #2
20028bba:	e75e      	b.n	20028a7a <mbedtls_mpi_exp_mod+0x200>
20028bbc:	f04f 0a20 	mov.w	sl, #32
20028bc0:	f10b 3bff 	add.w	fp, fp, #4294967295
20028bc4:	9b03      	ldr	r3, [sp, #12]
20028bc6:	f10a 3aff 	add.w	sl, sl, #4294967295
20028bca:	689b      	ldr	r3, [r3, #8]
20028bcc:	f853 302b 	ldr.w	r3, [r3, fp, lsl #2]
20028bd0:	fa23 f30a 	lsr.w	r3, r3, sl
20028bd4:	f013 0301 	ands.w	r3, r3, #1
20028bd8:	d114      	bne.n	20028c04 <mbedtls_mpi_exp_mod+0x38a>
20028bda:	f1b9 0f00 	cmp.w	r9, #0
20028bde:	f43f af4c 	beq.w	20028a7a <mbedtls_mpi_exp_mod+0x200>
20028be2:	f1b9 0f01 	cmp.w	r9, #1
20028be6:	d10d      	bne.n	20028c04 <mbedtls_mpi_exp_mod+0x38a>
20028be8:	ab0b      	add	r3, sp, #44	@ 0x2c
20028bea:	9300      	str	r3, [sp, #0]
20028bec:	4622      	mov	r2, r4
20028bee:	4629      	mov	r1, r5
20028bf0:	4628      	mov	r0, r5
20028bf2:	9b02      	ldr	r3, [sp, #8]
20028bf4:	f7ff f9e0 	bl	20027fb8 <mpi_montmul>
20028bf8:	2800      	cmp	r0, #0
20028bfa:	f43f af3e 	beq.w	20028a7a <mbedtls_mpi_exp_mod+0x200>
20028bfe:	f06f 0903 	mvn.w	r9, #3
20028c02:	e680      	b.n	20028906 <mbedtls_mpi_exp_mod+0x8c>
20028c04:	3701      	adds	r7, #1
20028c06:	1bf2      	subs	r2, r6, r7
20028c08:	4093      	lsls	r3, r2
20028c0a:	42be      	cmp	r6, r7
20028c0c:	ea48 0803 	orr.w	r8, r8, r3
20028c10:	d1d1      	bne.n	20028bb6 <mbedtls_mpi_exp_mod+0x33c>
20028c12:	f04f 0900 	mov.w	r9, #0
20028c16:	ab0b      	add	r3, sp, #44	@ 0x2c
20028c18:	9300      	str	r3, [sp, #0]
20028c1a:	4622      	mov	r2, r4
20028c1c:	4629      	mov	r1, r5
20028c1e:	4628      	mov	r0, r5
20028c20:	9b02      	ldr	r3, [sp, #8]
20028c22:	f7ff f9c9 	bl	20027fb8 <mpi_montmul>
20028c26:	2800      	cmp	r0, #0
20028c28:	d1e9      	bne.n	20028bfe <mbedtls_mpi_exp_mod+0x384>
20028c2a:	f109 0901 	add.w	r9, r9, #1
20028c2e:	454f      	cmp	r7, r9
20028c30:	d8f1      	bhi.n	20028c16 <mbedtls_mpi_exp_mod+0x39c>
20028c32:	200c      	movs	r0, #12
20028c34:	ab0b      	add	r3, sp, #44	@ 0x2c
20028c36:	a914      	add	r1, sp, #80	@ 0x50
20028c38:	fb00 1108 	mla	r1, r0, r8, r1
20028c3c:	9300      	str	r3, [sp, #0]
20028c3e:	4622      	mov	r2, r4
20028c40:	4628      	mov	r0, r5
20028c42:	9b02      	ldr	r3, [sp, #8]
20028c44:	f7ff f9b8 	bl	20027fb8 <mpi_montmul>
20028c48:	4607      	mov	r7, r0
20028c4a:	2800      	cmp	r0, #0
20028c4c:	d1d7      	bne.n	20028bfe <mbedtls_mpi_exp_mod+0x384>
20028c4e:	4680      	mov	r8, r0
20028c50:	f8dd 9014 	ldr.w	r9, [sp, #20]
20028c54:	e711      	b.n	20028a7a <mbedtls_mpi_exp_mod+0x200>
20028c56:	4622      	mov	r2, r4
20028c58:	4629      	mov	r1, r5
20028c5a:	4628      	mov	r0, r5
20028c5c:	9b02      	ldr	r3, [sp, #8]
20028c5e:	f8cd 9000 	str.w	r9, [sp]
20028c62:	f7ff f9a9 	bl	20027fb8 <mpi_montmul>
20028c66:	2800      	cmp	r0, #0
20028c68:	d1c9      	bne.n	20028bfe <mbedtls_mpi_exp_mod+0x384>
20028c6a:	ea4f 0848 	mov.w	r8, r8, lsl #1
20028c6e:	ea18 0f0a 	tst.w	r8, sl
20028c72:	d102      	bne.n	20028c7a <mbedtls_mpi_exp_mod+0x400>
20028c74:	f10b 0b01 	add.w	fp, fp, #1
20028c78:	e70d      	b.n	20028a96 <mbedtls_mpi_exp_mod+0x21c>
20028c7a:	4622      	mov	r2, r4
20028c7c:	4628      	mov	r0, r5
20028c7e:	9b02      	ldr	r3, [sp, #8]
20028c80:	f8cd 9000 	str.w	r9, [sp]
20028c84:	a917      	add	r1, sp, #92	@ 0x5c
20028c86:	f7ff f997 	bl	20027fb8 <mpi_montmul>
20028c8a:	2800      	cmp	r0, #0
20028c8c:	d0f2      	beq.n	20028c74 <mbedtls_mpi_exp_mod+0x3fa>
20028c8e:	e7b6      	b.n	20028bfe <mbedtls_mpi_exp_mod+0x384>
20028c90:	fb06 7004 	mla	r0, r6, r4, r7
20028c94:	f7fe ffa9 	bl	20027bea <mbedtls_mpi_free>
20028c98:	3401      	adds	r4, #1
20028c9a:	e63c      	b.n	20028916 <mbedtls_mpi_exp_mod+0x9c>
20028c9c:	f06f 0903 	mvn.w	r9, #3
20028ca0:	e64d      	b.n	2002893e <mbedtls_mpi_exp_mod+0xc4>

20028ca2 <mbedtls_mpi_gcd>:
20028ca2:	b570      	push	{r4, r5, r6, lr}
20028ca4:	2300      	movs	r3, #0
20028ca6:	2401      	movs	r4, #1
20028ca8:	b086      	sub	sp, #24
20028caa:	4606      	mov	r6, r0
20028cac:	4668      	mov	r0, sp
20028cae:	4615      	mov	r5, r2
20028cb0:	e9cd 4300 	strd	r4, r3, [sp]
20028cb4:	e9cd 3402 	strd	r3, r4, [sp, #8]
20028cb8:	e9cd 3304 	strd	r3, r3, [sp, #16]
20028cbc:	f7fe ffd6 	bl	20027c6c <mbedtls_mpi_copy>
20028cc0:	b150      	cbz	r0, 20028cd8 <mbedtls_mpi_gcd+0x36>
20028cc2:	f06f 040f 	mvn.w	r4, #15
20028cc6:	4668      	mov	r0, sp
20028cc8:	f7fe ff8f 	bl	20027bea <mbedtls_mpi_free>
20028ccc:	a803      	add	r0, sp, #12
20028cce:	f7fe ff8c 	bl	20027bea <mbedtls_mpi_free>
20028cd2:	4620      	mov	r0, r4
20028cd4:	b006      	add	sp, #24
20028cd6:	bd70      	pop	{r4, r5, r6, pc}
20028cd8:	4629      	mov	r1, r5
20028cda:	a803      	add	r0, sp, #12
20028cdc:	f7fe ffc6 	bl	20027c6c <mbedtls_mpi_copy>
20028ce0:	2800      	cmp	r0, #0
20028ce2:	d1ee      	bne.n	20028cc2 <mbedtls_mpi_gcd+0x20>
20028ce4:	4668      	mov	r0, sp
20028ce6:	f7ff f806 	bl	20027cf6 <mbedtls_mpi_lsb>
20028cea:	4605      	mov	r5, r0
20028cec:	a803      	add	r0, sp, #12
20028cee:	f7ff f802 	bl	20027cf6 <mbedtls_mpi_lsb>
20028cf2:	4285      	cmp	r5, r0
20028cf4:	bf28      	it	cs
20028cf6:	4605      	movcs	r5, r0
20028cf8:	4668      	mov	r0, sp
20028cfa:	4629      	mov	r1, r5
20028cfc:	f7ff f8e7 	bl	20027ece <mbedtls_mpi_shift_r>
20028d00:	2800      	cmp	r0, #0
20028d02:	d1de      	bne.n	20028cc2 <mbedtls_mpi_gcd+0x20>
20028d04:	4629      	mov	r1, r5
20028d06:	a803      	add	r0, sp, #12
20028d08:	f7ff f8e1 	bl	20027ece <mbedtls_mpi_shift_r>
20028d0c:	2800      	cmp	r0, #0
20028d0e:	d1d8      	bne.n	20028cc2 <mbedtls_mpi_gcd+0x20>
20028d10:	9403      	str	r4, [sp, #12]
20028d12:	9400      	str	r4, [sp, #0]
20028d14:	2100      	movs	r1, #0
20028d16:	4668      	mov	r0, sp
20028d18:	f7ff f9f9 	bl	2002810e <mbedtls_mpi_cmp_int>
20028d1c:	b968      	cbnz	r0, 20028d3a <mbedtls_mpi_gcd+0x98>
20028d1e:	4629      	mov	r1, r5
20028d20:	a803      	add	r0, sp, #12
20028d22:	f7ff f87b 	bl	20027e1c <mbedtls_mpi_shift_l>
20028d26:	2800      	cmp	r0, #0
20028d28:	d1cb      	bne.n	20028cc2 <mbedtls_mpi_gcd+0x20>
20028d2a:	4630      	mov	r0, r6
20028d2c:	a903      	add	r1, sp, #12
20028d2e:	f7fe ff9d 	bl	20027c6c <mbedtls_mpi_copy>
20028d32:	4604      	mov	r4, r0
20028d34:	2800      	cmp	r0, #0
20028d36:	d0c6      	beq.n	20028cc6 <mbedtls_mpi_gcd+0x24>
20028d38:	e7c3      	b.n	20028cc2 <mbedtls_mpi_gcd+0x20>
20028d3a:	4668      	mov	r0, sp
20028d3c:	f7fe ffdb 	bl	20027cf6 <mbedtls_mpi_lsb>
20028d40:	4601      	mov	r1, r0
20028d42:	4668      	mov	r0, sp
20028d44:	f7ff f8c3 	bl	20027ece <mbedtls_mpi_shift_r>
20028d48:	2800      	cmp	r0, #0
20028d4a:	d1ba      	bne.n	20028cc2 <mbedtls_mpi_gcd+0x20>
20028d4c:	a803      	add	r0, sp, #12
20028d4e:	f7fe ffd2 	bl	20027cf6 <mbedtls_mpi_lsb>
20028d52:	4601      	mov	r1, r0
20028d54:	a803      	add	r0, sp, #12
20028d56:	f7ff f8ba 	bl	20027ece <mbedtls_mpi_shift_r>
20028d5a:	2800      	cmp	r0, #0
20028d5c:	d1b1      	bne.n	20028cc2 <mbedtls_mpi_gcd+0x20>
20028d5e:	4668      	mov	r0, sp
20028d60:	a903      	add	r1, sp, #12
20028d62:	f7ff f993 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20028d66:	2800      	cmp	r0, #0
20028d68:	db0e      	blt.n	20028d88 <mbedtls_mpi_gcd+0xe6>
20028d6a:	4669      	mov	r1, sp
20028d6c:	4668      	mov	r0, sp
20028d6e:	aa03      	add	r2, sp, #12
20028d70:	f7ff fa3c 	bl	200281ec <mbedtls_mpi_sub_abs>
20028d74:	4604      	mov	r4, r0
20028d76:	2800      	cmp	r0, #0
20028d78:	d1a5      	bne.n	20028cc6 <mbedtls_mpi_gcd+0x24>
20028d7a:	2101      	movs	r1, #1
20028d7c:	4668      	mov	r0, sp
20028d7e:	f7ff f8a6 	bl	20027ece <mbedtls_mpi_shift_r>
20028d82:	2800      	cmp	r0, #0
20028d84:	d0c6      	beq.n	20028d14 <mbedtls_mpi_gcd+0x72>
20028d86:	e79c      	b.n	20028cc2 <mbedtls_mpi_gcd+0x20>
20028d88:	a903      	add	r1, sp, #12
20028d8a:	466a      	mov	r2, sp
20028d8c:	4608      	mov	r0, r1
20028d8e:	f7ff fa2d 	bl	200281ec <mbedtls_mpi_sub_abs>
20028d92:	4604      	mov	r4, r0
20028d94:	2800      	cmp	r0, #0
20028d96:	d196      	bne.n	20028cc6 <mbedtls_mpi_gcd+0x24>
20028d98:	2101      	movs	r1, #1
20028d9a:	a803      	add	r0, sp, #12
20028d9c:	e7ef      	b.n	20028d7e <mbedtls_mpi_gcd+0xdc>

20028d9e <mbedtls_mpi_fill_random>:
20028d9e:	b570      	push	{r4, r5, r6, lr}
20028da0:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
20028da4:	4605      	mov	r5, r0
20028da6:	460c      	mov	r4, r1
20028da8:	4616      	mov	r6, r2
20028daa:	4618      	mov	r0, r3
20028dac:	f5ad 6d80 	sub.w	sp, sp, #1024	@ 0x400
20028db0:	d80f      	bhi.n	20028dd2 <mbedtls_mpi_fill_random+0x34>
20028db2:	460a      	mov	r2, r1
20028db4:	4669      	mov	r1, sp
20028db6:	47b0      	blx	r6
20028db8:	b940      	cbnz	r0, 20028dcc <mbedtls_mpi_fill_random+0x2e>
20028dba:	4622      	mov	r2, r4
20028dbc:	4669      	mov	r1, sp
20028dbe:	4628      	mov	r0, r5
20028dc0:	f7fe ffd4 	bl	20027d6c <mbedtls_mpi_read_binary>
20028dc4:	2800      	cmp	r0, #0
20028dc6:	bf18      	it	ne
20028dc8:	f06f 000f 	mvnne.w	r0, #15
20028dcc:	f50d 6d80 	add.w	sp, sp, #1024	@ 0x400
20028dd0:	bd70      	pop	{r4, r5, r6, pc}
20028dd2:	f06f 0003 	mvn.w	r0, #3
20028dd6:	e7f9      	b.n	20028dcc <mbedtls_mpi_fill_random+0x2e>

20028dd8 <mbedtls_mpi_inv_mod>:
20028dd8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028ddc:	b09f      	sub	sp, #124	@ 0x7c
20028dde:	9001      	str	r0, [sp, #4]
20028de0:	460f      	mov	r7, r1
20028de2:	4610      	mov	r0, r2
20028de4:	2101      	movs	r1, #1
20028de6:	4692      	mov	sl, r2
20028de8:	f7ff f991 	bl	2002810e <mbedtls_mpi_cmp_int>
20028dec:	2800      	cmp	r0, #0
20028dee:	f340 81b5 	ble.w	2002915c <mbedtls_mpi_inv_mod+0x384>
20028df2:	2500      	movs	r5, #0
20028df4:	2601      	movs	r6, #1
20028df6:	4652      	mov	r2, sl
20028df8:	4639      	mov	r1, r7
20028dfa:	a803      	add	r0, sp, #12
20028dfc:	e9cd 6506 	strd	r6, r5, [sp, #24]
20028e00:	e9cd 5608 	strd	r5, r6, [sp, #32]
20028e04:	e9cd 650c 	strd	r6, r5, [sp, #48]	@ 0x30
20028e08:	e9cd 650f 	strd	r6, r5, [sp, #60]	@ 0x3c
20028e0c:	e9cd 6503 	strd	r6, r5, [sp, #12]
20028e10:	e9cd 6512 	strd	r6, r5, [sp, #72]	@ 0x48
20028e14:	e9cd 5614 	strd	r5, r6, [sp, #80]	@ 0x50
20028e18:	e9cd 6518 	strd	r6, r5, [sp, #96]	@ 0x60
20028e1c:	e9cd 651b 	strd	r6, r5, [sp, #108]	@ 0x6c
20028e20:	950a      	str	r5, [sp, #40]	@ 0x28
20028e22:	9505      	str	r5, [sp, #20]
20028e24:	9516      	str	r5, [sp, #88]	@ 0x58
20028e26:	f7ff ff3c 	bl	20028ca2 <mbedtls_mpi_gcd>
20028e2a:	4604      	mov	r4, r0
20028e2c:	2800      	cmp	r0, #0
20028e2e:	f040 8182 	bne.w	20029136 <mbedtls_mpi_inv_mod+0x35e>
20028e32:	4631      	mov	r1, r6
20028e34:	a803      	add	r0, sp, #12
20028e36:	f7ff f96a 	bl	2002810e <mbedtls_mpi_cmp_int>
20028e3a:	4605      	mov	r5, r0
20028e3c:	2800      	cmp	r0, #0
20028e3e:	f040 8171 	bne.w	20029124 <mbedtls_mpi_inv_mod+0x34c>
20028e42:	4652      	mov	r2, sl
20028e44:	4639      	mov	r1, r7
20028e46:	a806      	add	r0, sp, #24
20028e48:	f7ff fce5 	bl	20028816 <mbedtls_mpi_mod_mpi>
20028e4c:	4604      	mov	r4, r0
20028e4e:	2800      	cmp	r0, #0
20028e50:	f040 8171 	bne.w	20029136 <mbedtls_mpi_inv_mod+0x35e>
20028e54:	900b      	str	r0, [sp, #44]	@ 0x2c
20028e56:	a906      	add	r1, sp, #24
20028e58:	a809      	add	r0, sp, #36	@ 0x24
20028e5a:	f7fe ff07 	bl	20027c6c <mbedtls_mpi_copy>
20028e5e:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028e62:	b920      	cbnz	r0, 20028e6e <mbedtls_mpi_inv_mod+0x96>
20028e64:	4651      	mov	r1, sl
20028e66:	a812      	add	r0, sp, #72	@ 0x48
20028e68:	f7fe ff00 	bl	20027c6c <mbedtls_mpi_copy>
20028e6c:	b130      	cbz	r0, 20028e7c <mbedtls_mpi_inv_mod+0xa4>
20028e6e:	f04f 0b00 	mov.w	fp, #0
20028e72:	465d      	mov	r5, fp
20028e74:	46d8      	mov	r8, fp
20028e76:	465e      	mov	r6, fp
20028e78:	465f      	mov	r7, fp
20028e7a:	e0f5      	b.n	20029068 <mbedtls_mpi_inv_mod+0x290>
20028e7c:	9017      	str	r0, [sp, #92]	@ 0x5c
20028e7e:	4651      	mov	r1, sl
20028e80:	a815      	add	r0, sp, #84	@ 0x54
20028e82:	f7fe fef3 	bl	20027c6c <mbedtls_mpi_copy>
20028e86:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20028e8a:	2800      	cmp	r0, #0
20028e8c:	f040 8159 	bne.w	20029142 <mbedtls_mpi_inv_mod+0x36a>
20028e90:	4631      	mov	r1, r6
20028e92:	900e      	str	r0, [sp, #56]	@ 0x38
20028e94:	a80c      	add	r0, sp, #48	@ 0x30
20028e96:	f7fe ff12 	bl	20027cbe <mbedtls_mpi_lset>
20028e9a:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028e9c:	4601      	mov	r1, r0
20028e9e:	2800      	cmp	r0, #0
20028ea0:	f040 8152 	bne.w	20029148 <mbedtls_mpi_inv_mod+0x370>
20028ea4:	9011      	str	r0, [sp, #68]	@ 0x44
20028ea6:	a80f      	add	r0, sp, #60	@ 0x3c
20028ea8:	f7fe ff09 	bl	20027cbe <mbedtls_mpi_lset>
20028eac:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028eae:	4683      	mov	fp, r0
20028eb0:	2800      	cmp	r0, #0
20028eb2:	f040 814d 	bne.w	20029150 <mbedtls_mpi_inv_mod+0x378>
20028eb6:	4601      	mov	r1, r0
20028eb8:	901a      	str	r0, [sp, #104]	@ 0x68
20028eba:	a818      	add	r0, sp, #96	@ 0x60
20028ebc:	f7fe feff 	bl	20027cbe <mbedtls_mpi_lset>
20028ec0:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028ec2:	2800      	cmp	r0, #0
20028ec4:	f040 8147 	bne.w	20029156 <mbedtls_mpi_inv_mod+0x37e>
20028ec8:	2101      	movs	r1, #1
20028eca:	a81b      	add	r0, sp, #108	@ 0x6c
20028ecc:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20028ed0:	f7fe fef5 	bl	20027cbe <mbedtls_mpi_lset>
20028ed4:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20028ed8:	2800      	cmp	r0, #0
20028eda:	f040 80c5 	bne.w	20029068 <mbedtls_mpi_inv_mod+0x290>
20028ede:	f8d9 2000 	ldr.w	r2, [r9]
20028ee2:	07d0      	lsls	r0, r2, #31
20028ee4:	d554      	bpl.n	20028f90 <mbedtls_mpi_inv_mod+0x1b8>
20028ee6:	f8d8 2000 	ldr.w	r2, [r8]
20028eea:	07d3      	lsls	r3, r2, #31
20028eec:	f140 8083 	bpl.w	20028ff6 <mbedtls_mpi_inv_mod+0x21e>
20028ef0:	a915      	add	r1, sp, #84	@ 0x54
20028ef2:	a809      	add	r0, sp, #36	@ 0x24
20028ef4:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20028ef8:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20028efc:	f7ff f8c6 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20028f00:	2800      	cmp	r0, #0
20028f02:	f2c0 80b4 	blt.w	2002906e <mbedtls_mpi_inv_mod+0x296>
20028f06:	a909      	add	r1, sp, #36	@ 0x24
20028f08:	4608      	mov	r0, r1
20028f0a:	aa15      	add	r2, sp, #84	@ 0x54
20028f0c:	f7ff f9d1 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20028f10:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028f14:	4604      	mov	r4, r0
20028f16:	2800      	cmp	r0, #0
20028f18:	f040 80d1 	bne.w	200290be <mbedtls_mpi_inv_mod+0x2e6>
20028f1c:	a90c      	add	r1, sp, #48	@ 0x30
20028f1e:	4608      	mov	r0, r1
20028f20:	aa18      	add	r2, sp, #96	@ 0x60
20028f22:	970e      	str	r7, [sp, #56]	@ 0x38
20028f24:	951a      	str	r5, [sp, #104]	@ 0x68
20028f26:	f7ff f9c4 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20028f2a:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028f2c:	4604      	mov	r4, r0
20028f2e:	2800      	cmp	r0, #0
20028f30:	f040 80c5 	bne.w	200290be <mbedtls_mpi_inv_mod+0x2e6>
20028f34:	a90f      	add	r1, sp, #60	@ 0x3c
20028f36:	4608      	mov	r0, r1
20028f38:	aa1b      	add	r2, sp, #108	@ 0x6c
20028f3a:	9611      	str	r6, [sp, #68]	@ 0x44
20028f3c:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20028f40:	f7ff f9b7 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20028f44:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028f46:	4604      	mov	r4, r0
20028f48:	2800      	cmp	r0, #0
20028f4a:	f040 80b8 	bne.w	200290be <mbedtls_mpi_inv_mod+0x2e6>
20028f4e:	2100      	movs	r1, #0
20028f50:	a809      	add	r0, sp, #36	@ 0x24
20028f52:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20028f56:	f7ff f8da 	bl	2002810e <mbedtls_mpi_cmp_int>
20028f5a:	2800      	cmp	r0, #0
20028f5c:	d1bf      	bne.n	20028ede <mbedtls_mpi_inv_mod+0x106>
20028f5e:	2100      	movs	r1, #0
20028f60:	a818      	add	r0, sp, #96	@ 0x60
20028f62:	951a      	str	r5, [sp, #104]	@ 0x68
20028f64:	f7ff f8d3 	bl	2002810e <mbedtls_mpi_cmp_int>
20028f68:	2800      	cmp	r0, #0
20028f6a:	f2c0 809e 	blt.w	200290aa <mbedtls_mpi_inv_mod+0x2d2>
20028f6e:	4651      	mov	r1, sl
20028f70:	a818      	add	r0, sp, #96	@ 0x60
20028f72:	951a      	str	r5, [sp, #104]	@ 0x68
20028f74:	f7ff f88a 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20028f78:	2800      	cmp	r0, #0
20028f7a:	f280 80c8 	bge.w	2002910e <mbedtls_mpi_inv_mod+0x336>
20028f7e:	9801      	ldr	r0, [sp, #4]
20028f80:	a918      	add	r1, sp, #96	@ 0x60
20028f82:	f7fe fe73 	bl	20027c6c <mbedtls_mpi_copy>
20028f86:	1e04      	subs	r4, r0, #0
20028f88:	bf18      	it	ne
20028f8a:	f06f 040f 	mvnne.w	r4, #15
20028f8e:	e096      	b.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
20028f90:	2101      	movs	r1, #1
20028f92:	a809      	add	r0, sp, #36	@ 0x24
20028f94:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20028f98:	f7fe ff99 	bl	20027ece <mbedtls_mpi_shift_r>
20028f9c:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028fa0:	2800      	cmp	r0, #0
20028fa2:	d161      	bne.n	20029068 <mbedtls_mpi_inv_mod+0x290>
20028fa4:	683a      	ldr	r2, [r7, #0]
20028fa6:	07d3      	lsls	r3, r2, #31
20028fa8:	d402      	bmi.n	20028fb0 <mbedtls_mpi_inv_mod+0x1d8>
20028faa:	6832      	ldr	r2, [r6, #0]
20028fac:	07d4      	lsls	r4, r2, #31
20028fae:	d513      	bpl.n	20028fd8 <mbedtls_mpi_inv_mod+0x200>
20028fb0:	a90c      	add	r1, sp, #48	@ 0x30
20028fb2:	4608      	mov	r0, r1
20028fb4:	aa12      	add	r2, sp, #72	@ 0x48
20028fb6:	970e      	str	r7, [sp, #56]	@ 0x38
20028fb8:	f7ff f955 	bl	20028266 <mbedtls_mpi_add_mpi>
20028fbc:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028fbe:	4604      	mov	r4, r0
20028fc0:	2800      	cmp	r0, #0
20028fc2:	d17c      	bne.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
20028fc4:	a90f      	add	r1, sp, #60	@ 0x3c
20028fc6:	4608      	mov	r0, r1
20028fc8:	aa06      	add	r2, sp, #24
20028fca:	9611      	str	r6, [sp, #68]	@ 0x44
20028fcc:	f7ff f971 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20028fd0:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028fd2:	4604      	mov	r4, r0
20028fd4:	2800      	cmp	r0, #0
20028fd6:	d172      	bne.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
20028fd8:	2101      	movs	r1, #1
20028fda:	a80c      	add	r0, sp, #48	@ 0x30
20028fdc:	970e      	str	r7, [sp, #56]	@ 0x38
20028fde:	f7fe ff76 	bl	20027ece <mbedtls_mpi_shift_r>
20028fe2:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028fe4:	2800      	cmp	r0, #0
20028fe6:	d13f      	bne.n	20029068 <mbedtls_mpi_inv_mod+0x290>
20028fe8:	2101      	movs	r1, #1
20028fea:	a80f      	add	r0, sp, #60	@ 0x3c
20028fec:	9611      	str	r6, [sp, #68]	@ 0x44
20028fee:	f7fe ff6e 	bl	20027ece <mbedtls_mpi_shift_r>
20028ff2:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028ff4:	e770      	b.n	20028ed8 <mbedtls_mpi_inv_mod+0x100>
20028ff6:	2101      	movs	r1, #1
20028ff8:	a815      	add	r0, sp, #84	@ 0x54
20028ffa:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20028ffe:	f7fe ff66 	bl	20027ece <mbedtls_mpi_shift_r>
20029002:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20029006:	2800      	cmp	r0, #0
20029008:	d12e      	bne.n	20029068 <mbedtls_mpi_inv_mod+0x290>
2002900a:	682a      	ldr	r2, [r5, #0]
2002900c:	07d1      	lsls	r1, r2, #31
2002900e:	d403      	bmi.n	20029018 <mbedtls_mpi_inv_mod+0x240>
20029010:	f8db 2000 	ldr.w	r2, [fp]
20029014:	07d2      	lsls	r2, r2, #31
20029016:	d515      	bpl.n	20029044 <mbedtls_mpi_inv_mod+0x26c>
20029018:	a918      	add	r1, sp, #96	@ 0x60
2002901a:	4608      	mov	r0, r1
2002901c:	aa12      	add	r2, sp, #72	@ 0x48
2002901e:	951a      	str	r5, [sp, #104]	@ 0x68
20029020:	f7ff f921 	bl	20028266 <mbedtls_mpi_add_mpi>
20029024:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029026:	4604      	mov	r4, r0
20029028:	2800      	cmp	r0, #0
2002902a:	d148      	bne.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
2002902c:	a91b      	add	r1, sp, #108	@ 0x6c
2002902e:	4608      	mov	r0, r1
20029030:	aa06      	add	r2, sp, #24
20029032:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029036:	f7ff f93c 	bl	200282b2 <mbedtls_mpi_sub_mpi>
2002903a:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
2002903e:	4604      	mov	r4, r0
20029040:	2800      	cmp	r0, #0
20029042:	d13c      	bne.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
20029044:	2101      	movs	r1, #1
20029046:	a818      	add	r0, sp, #96	@ 0x60
20029048:	951a      	str	r5, [sp, #104]	@ 0x68
2002904a:	f7fe ff40 	bl	20027ece <mbedtls_mpi_shift_r>
2002904e:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029050:	b950      	cbnz	r0, 20029068 <mbedtls_mpi_inv_mod+0x290>
20029052:	2101      	movs	r1, #1
20029054:	a81b      	add	r0, sp, #108	@ 0x6c
20029056:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
2002905a:	f7fe ff38 	bl	20027ece <mbedtls_mpi_shift_r>
2002905e:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029062:	2800      	cmp	r0, #0
20029064:	f43f af3f 	beq.w	20028ee6 <mbedtls_mpi_inv_mod+0x10e>
20029068:	f06f 040f 	mvn.w	r4, #15
2002906c:	e027      	b.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
2002906e:	a915      	add	r1, sp, #84	@ 0x54
20029070:	4608      	mov	r0, r1
20029072:	aa09      	add	r2, sp, #36	@ 0x24
20029074:	f7ff f91d 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20029078:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
2002907c:	4604      	mov	r4, r0
2002907e:	b9f0      	cbnz	r0, 200290be <mbedtls_mpi_inv_mod+0x2e6>
20029080:	a918      	add	r1, sp, #96	@ 0x60
20029082:	4608      	mov	r0, r1
20029084:	aa0c      	add	r2, sp, #48	@ 0x30
20029086:	951a      	str	r5, [sp, #104]	@ 0x68
20029088:	970e      	str	r7, [sp, #56]	@ 0x38
2002908a:	f7ff f912 	bl	200282b2 <mbedtls_mpi_sub_mpi>
2002908e:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029090:	4604      	mov	r4, r0
20029092:	b9a0      	cbnz	r0, 200290be <mbedtls_mpi_inv_mod+0x2e6>
20029094:	a91b      	add	r1, sp, #108	@ 0x6c
20029096:	4608      	mov	r0, r1
20029098:	aa0f      	add	r2, sp, #60	@ 0x3c
2002909a:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
2002909e:	9611      	str	r6, [sp, #68]	@ 0x44
200290a0:	f7ff f907 	bl	200282b2 <mbedtls_mpi_sub_mpi>
200290a4:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200290a8:	e74d      	b.n	20028f46 <mbedtls_mpi_inv_mod+0x16e>
200290aa:	a918      	add	r1, sp, #96	@ 0x60
200290ac:	4652      	mov	r2, sl
200290ae:	4608      	mov	r0, r1
200290b0:	f7ff f8d9 	bl	20028266 <mbedtls_mpi_add_mpi>
200290b4:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200290b6:	4604      	mov	r4, r0
200290b8:	2800      	cmp	r0, #0
200290ba:	f43f af50 	beq.w	20028f5e <mbedtls_mpi_inv_mod+0x186>
200290be:	a806      	add	r0, sp, #24
200290c0:	f7fe fd93 	bl	20027bea <mbedtls_mpi_free>
200290c4:	a809      	add	r0, sp, #36	@ 0x24
200290c6:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
200290ca:	f7fe fd8e 	bl	20027bea <mbedtls_mpi_free>
200290ce:	a80c      	add	r0, sp, #48	@ 0x30
200290d0:	970e      	str	r7, [sp, #56]	@ 0x38
200290d2:	f7fe fd8a 	bl	20027bea <mbedtls_mpi_free>
200290d6:	a80f      	add	r0, sp, #60	@ 0x3c
200290d8:	9611      	str	r6, [sp, #68]	@ 0x44
200290da:	f7fe fd86 	bl	20027bea <mbedtls_mpi_free>
200290de:	a803      	add	r0, sp, #12
200290e0:	f7fe fd83 	bl	20027bea <mbedtls_mpi_free>
200290e4:	a812      	add	r0, sp, #72	@ 0x48
200290e6:	f7fe fd80 	bl	20027bea <mbedtls_mpi_free>
200290ea:	a815      	add	r0, sp, #84	@ 0x54
200290ec:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
200290f0:	f7fe fd7b 	bl	20027bea <mbedtls_mpi_free>
200290f4:	a818      	add	r0, sp, #96	@ 0x60
200290f6:	951a      	str	r5, [sp, #104]	@ 0x68
200290f8:	f7fe fd77 	bl	20027bea <mbedtls_mpi_free>
200290fc:	a81b      	add	r0, sp, #108	@ 0x6c
200290fe:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029102:	f7fe fd72 	bl	20027bea <mbedtls_mpi_free>
20029106:	4620      	mov	r0, r4
20029108:	b01f      	add	sp, #124	@ 0x7c
2002910a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002910e:	a918      	add	r1, sp, #96	@ 0x60
20029110:	4652      	mov	r2, sl
20029112:	4608      	mov	r0, r1
20029114:	f7ff f8cd 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20029118:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002911a:	4604      	mov	r4, r0
2002911c:	2800      	cmp	r0, #0
2002911e:	f43f af26 	beq.w	20028f6e <mbedtls_mpi_inv_mod+0x196>
20029122:	e7cc      	b.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
20029124:	46a3      	mov	fp, r4
20029126:	4625      	mov	r5, r4
20029128:	46a0      	mov	r8, r4
2002912a:	4626      	mov	r6, r4
2002912c:	4627      	mov	r7, r4
2002912e:	46a1      	mov	r9, r4
20029130:	f06f 040d 	mvn.w	r4, #13
20029134:	e7c3      	b.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
20029136:	46ab      	mov	fp, r5
20029138:	46a8      	mov	r8, r5
2002913a:	462e      	mov	r6, r5
2002913c:	462f      	mov	r7, r5
2002913e:	46a9      	mov	r9, r5
20029140:	e7bd      	b.n	200290be <mbedtls_mpi_inv_mod+0x2e6>
20029142:	46a3      	mov	fp, r4
20029144:	4625      	mov	r5, r4
20029146:	e696      	b.n	20028e76 <mbedtls_mpi_inv_mod+0x9e>
20029148:	46a3      	mov	fp, r4
2002914a:	4625      	mov	r5, r4
2002914c:	4626      	mov	r6, r4
2002914e:	e78b      	b.n	20029068 <mbedtls_mpi_inv_mod+0x290>
20029150:	46a3      	mov	fp, r4
20029152:	4625      	mov	r5, r4
20029154:	e788      	b.n	20029068 <mbedtls_mpi_inv_mod+0x290>
20029156:	f04f 0b00 	mov.w	fp, #0
2002915a:	e785      	b.n	20029068 <mbedtls_mpi_inv_mod+0x290>
2002915c:	f06f 0403 	mvn.w	r4, #3
20029160:	e7d1      	b.n	20029106 <mbedtls_mpi_inv_mod+0x32e>
	...

20029164 <mbedtls_oid_get_pk_alg>:
20029164:	b570      	push	{r4, r5, r6, lr}
20029166:	460e      	mov	r6, r1
20029168:	4605      	mov	r5, r0
2002916a:	b110      	cbz	r0, 20029172 <mbedtls_oid_get_pk_alg+0xe>
2002916c:	4c09      	ldr	r4, [pc, #36]	@ (20029194 <mbedtls_oid_get_pk_alg+0x30>)
2002916e:	6820      	ldr	r0, [r4, #0]
20029170:	b910      	cbnz	r0, 20029178 <mbedtls_oid_get_pk_alg+0x14>
20029172:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
20029176:	bd70      	pop	{r4, r5, r6, pc}
20029178:	686b      	ldr	r3, [r5, #4]
2002917a:	6862      	ldr	r2, [r4, #4]
2002917c:	429a      	cmp	r2, r3
2002917e:	d103      	bne.n	20029188 <mbedtls_oid_get_pk_alg+0x24>
20029180:	68a9      	ldr	r1, [r5, #8]
20029182:	f001 fab3 	bl	2002a6ec <memcmp>
20029186:	b108      	cbz	r0, 2002918c <mbedtls_oid_get_pk_alg+0x28>
20029188:	3414      	adds	r4, #20
2002918a:	e7f0      	b.n	2002916e <mbedtls_oid_get_pk_alg+0xa>
2002918c:	7c23      	ldrb	r3, [r4, #16]
2002918e:	7033      	strb	r3, [r6, #0]
20029190:	e7f1      	b.n	20029176 <mbedtls_oid_get_pk_alg+0x12>
20029192:	bf00      	nop
20029194:	2002c07c 	.word	0x2002c07c

20029198 <mbedtls_oid_get_md_alg>:
20029198:	b570      	push	{r4, r5, r6, lr}
2002919a:	460e      	mov	r6, r1
2002919c:	4605      	mov	r5, r0
2002919e:	b110      	cbz	r0, 200291a6 <mbedtls_oid_get_md_alg+0xe>
200291a0:	4c09      	ldr	r4, [pc, #36]	@ (200291c8 <mbedtls_oid_get_md_alg+0x30>)
200291a2:	6820      	ldr	r0, [r4, #0]
200291a4:	b910      	cbnz	r0, 200291ac <mbedtls_oid_get_md_alg+0x14>
200291a6:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200291aa:	bd70      	pop	{r4, r5, r6, pc}
200291ac:	686b      	ldr	r3, [r5, #4]
200291ae:	6862      	ldr	r2, [r4, #4]
200291b0:	429a      	cmp	r2, r3
200291b2:	d103      	bne.n	200291bc <mbedtls_oid_get_md_alg+0x24>
200291b4:	68a9      	ldr	r1, [r5, #8]
200291b6:	f001 fa99 	bl	2002a6ec <memcmp>
200291ba:	b108      	cbz	r0, 200291c0 <mbedtls_oid_get_md_alg+0x28>
200291bc:	3414      	adds	r4, #20
200291be:	e7f0      	b.n	200291a2 <mbedtls_oid_get_md_alg+0xa>
200291c0:	7c23      	ldrb	r3, [r4, #16]
200291c2:	7033      	strb	r3, [r6, #0]
200291c4:	e7f1      	b.n	200291aa <mbedtls_oid_get_md_alg+0x12>
200291c6:	bf00      	nop
200291c8:	2002c018 	.word	0x2002c018

200291cc <mbedtls_oid_get_oid_by_md>:
200291cc:	b530      	push	{r4, r5, lr}
200291ce:	4b08      	ldr	r3, [pc, #32]	@ (200291f0 <mbedtls_oid_get_oid_by_md+0x24>)
200291d0:	681c      	ldr	r4, [r3, #0]
200291d2:	b914      	cbnz	r4, 200291da <mbedtls_oid_get_oid_by_md+0xe>
200291d4:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200291d8:	e006      	b.n	200291e8 <mbedtls_oid_get_oid_by_md+0x1c>
200291da:	7c1d      	ldrb	r5, [r3, #16]
200291dc:	4285      	cmp	r5, r0
200291de:	d104      	bne.n	200291ea <mbedtls_oid_get_oid_by_md+0x1e>
200291e0:	2000      	movs	r0, #0
200291e2:	600c      	str	r4, [r1, #0]
200291e4:	685b      	ldr	r3, [r3, #4]
200291e6:	6013      	str	r3, [r2, #0]
200291e8:	bd30      	pop	{r4, r5, pc}
200291ea:	3314      	adds	r3, #20
200291ec:	e7f0      	b.n	200291d0 <mbedtls_oid_get_oid_by_md+0x4>
200291ee:	bf00      	nop
200291f0:	2002c018 	.word	0x2002c018

200291f4 <mbedtls_pk_init>:
200291f4:	b110      	cbz	r0, 200291fc <mbedtls_pk_init+0x8>
200291f6:	2300      	movs	r3, #0
200291f8:	e9c0 3300 	strd	r3, r3, [r0]
200291fc:	4770      	bx	lr

200291fe <mbedtls_pk_free>:
200291fe:	b510      	push	{r4, lr}
20029200:	4604      	mov	r4, r0
20029202:	b160      	cbz	r0, 2002921e <mbedtls_pk_free+0x20>
20029204:	6803      	ldr	r3, [r0, #0]
20029206:	b153      	cbz	r3, 2002921e <mbedtls_pk_free+0x20>
20029208:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
2002920a:	6840      	ldr	r0, [r0, #4]
2002920c:	4798      	blx	r3
2002920e:	2100      	movs	r1, #0
20029210:	f104 0308 	add.w	r3, r4, #8
20029214:	4622      	mov	r2, r4
20029216:	3401      	adds	r4, #1
20029218:	429c      	cmp	r4, r3
2002921a:	7011      	strb	r1, [r2, #0]
2002921c:	d1fa      	bne.n	20029214 <mbedtls_pk_free+0x16>
2002921e:	bd10      	pop	{r4, pc}

20029220 <mbedtls_pk_info_from_type>:
20029220:	2801      	cmp	r0, #1
20029222:	4802      	ldr	r0, [pc, #8]	@ (2002922c <mbedtls_pk_info_from_type+0xc>)
20029224:	bf18      	it	ne
20029226:	2000      	movne	r0, #0
20029228:	4770      	bx	lr
2002922a:	bf00      	nop
2002922c:	2002c0cc 	.word	0x2002c0cc

20029230 <mbedtls_pk_setup>:
20029230:	b570      	push	{r4, r5, r6, lr}
20029232:	460e      	mov	r6, r1
20029234:	4605      	mov	r5, r0
20029236:	b148      	cbz	r0, 2002924c <mbedtls_pk_setup+0x1c>
20029238:	b141      	cbz	r1, 2002924c <mbedtls_pk_setup+0x1c>
2002923a:	6804      	ldr	r4, [r0, #0]
2002923c:	b934      	cbnz	r4, 2002924c <mbedtls_pk_setup+0x1c>
2002923e:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
20029240:	4798      	blx	r3
20029242:	6068      	str	r0, [r5, #4]
20029244:	b120      	cbz	r0, 20029250 <mbedtls_pk_setup+0x20>
20029246:	4620      	mov	r0, r4
20029248:	602e      	str	r6, [r5, #0]
2002924a:	bd70      	pop	{r4, r5, r6, pc}
2002924c:	4801      	ldr	r0, [pc, #4]	@ (20029254 <mbedtls_pk_setup+0x24>)
2002924e:	e7fc      	b.n	2002924a <mbedtls_pk_setup+0x1a>
20029250:	4801      	ldr	r0, [pc, #4]	@ (20029258 <mbedtls_pk_setup+0x28>)
20029252:	e7fa      	b.n	2002924a <mbedtls_pk_setup+0x1a>
20029254:	ffffc180 	.word	0xffffc180
20029258:	ffffc080 	.word	0xffffc080

2002925c <mbedtls_pk_verify>:
2002925c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20029260:	460d      	mov	r5, r1
20029262:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
20029266:	4616      	mov	r6, r2
20029268:	4604      	mov	r4, r0
2002926a:	b910      	cbnz	r0, 20029272 <mbedtls_pk_verify+0x16>
2002926c:	480e      	ldr	r0, [pc, #56]	@ (200292a8 <mbedtls_pk_verify+0x4c>)
2002926e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20029272:	6802      	ldr	r2, [r0, #0]
20029274:	2a00      	cmp	r2, #0
20029276:	d0f9      	beq.n	2002926c <mbedtls_pk_verify+0x10>
20029278:	b93b      	cbnz	r3, 2002928a <mbedtls_pk_verify+0x2e>
2002927a:	4608      	mov	r0, r1
2002927c:	f7fc fd42 	bl	20025d04 <mbedtls_md_info_from_type>
20029280:	2800      	cmp	r0, #0
20029282:	d0f3      	beq.n	2002926c <mbedtls_pk_verify+0x10>
20029284:	f7fc fd4a 	bl	20025d1c <mbedtls_md_get_size>
20029288:	4603      	mov	r3, r0
2002928a:	6822      	ldr	r2, [r4, #0]
2002928c:	6917      	ldr	r7, [r2, #16]
2002928e:	b147      	cbz	r7, 200292a2 <mbedtls_pk_verify+0x46>
20029290:	e9cd 8908 	strd	r8, r9, [sp, #32]
20029294:	4632      	mov	r2, r6
20029296:	4629      	mov	r1, r5
20029298:	46bc      	mov	ip, r7
2002929a:	6860      	ldr	r0, [r4, #4]
2002929c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200292a0:	4760      	bx	ip
200292a2:	4802      	ldr	r0, [pc, #8]	@ (200292ac <mbedtls_pk_verify+0x50>)
200292a4:	e7e3      	b.n	2002926e <mbedtls_pk_verify+0x12>
200292a6:	bf00      	nop
200292a8:	ffffc180 	.word	0xffffc180
200292ac:	ffffc100 	.word	0xffffc100

200292b0 <pk_get_pk_alg>:
200292b0:	b530      	push	{r4, r5, lr}
200292b2:	4615      	mov	r5, r2
200292b4:	2200      	movs	r2, #0
200292b6:	b085      	sub	sp, #20
200292b8:	e9c3 2200 	strd	r2, r2, [r3]
200292bc:	609a      	str	r2, [r3, #8]
200292be:	aa01      	add	r2, sp, #4
200292c0:	461c      	mov	r4, r3
200292c2:	f7fe fa98 	bl	200277f6 <mbedtls_asn1_get_alg>
200292c6:	b118      	cbz	r0, 200292d0 <pk_get_pk_alg+0x20>
200292c8:	f5a0 506a 	sub.w	r0, r0, #14976	@ 0x3a80
200292cc:	b005      	add	sp, #20
200292ce:	bd30      	pop	{r4, r5, pc}
200292d0:	4629      	mov	r1, r5
200292d2:	a801      	add	r0, sp, #4
200292d4:	f7ff ff46 	bl	20029164 <mbedtls_oid_get_pk_alg>
200292d8:	b960      	cbnz	r0, 200292f4 <pk_get_pk_alg+0x44>
200292da:	782b      	ldrb	r3, [r5, #0]
200292dc:	2b01      	cmp	r3, #1
200292de:	d1f5      	bne.n	200292cc <pk_get_pk_alg+0x1c>
200292e0:	6823      	ldr	r3, [r4, #0]
200292e2:	2b05      	cmp	r3, #5
200292e4:	d000      	beq.n	200292e8 <pk_get_pk_alg+0x38>
200292e6:	b93b      	cbnz	r3, 200292f8 <pk_get_pk_alg+0x48>
200292e8:	6862      	ldr	r2, [r4, #4]
200292ea:	4b04      	ldr	r3, [pc, #16]	@ (200292fc <pk_get_pk_alg+0x4c>)
200292ec:	2a00      	cmp	r2, #0
200292ee:	bf18      	it	ne
200292f0:	4618      	movne	r0, r3
200292f2:	e7eb      	b.n	200292cc <pk_get_pk_alg+0x1c>
200292f4:	4802      	ldr	r0, [pc, #8]	@ (20029300 <pk_get_pk_alg+0x50>)
200292f6:	e7e9      	b.n	200292cc <pk_get_pk_alg+0x1c>
200292f8:	4800      	ldr	r0, [pc, #0]	@ (200292fc <pk_get_pk_alg+0x4c>)
200292fa:	e7e7      	b.n	200292cc <pk_get_pk_alg+0x1c>
200292fc:	ffffc580 	.word	0xffffc580
20029300:	ffffc380 	.word	0xffffc380

20029304 <mbedtls_pk_parse_subpubkey>:
20029304:	2300      	movs	r3, #0
20029306:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
2002930a:	b087      	sub	sp, #28
2002930c:	4690      	mov	r8, r2
2002930e:	f88d 3003 	strb.w	r3, [sp, #3]
20029312:	aa01      	add	r2, sp, #4
20029314:	2330      	movs	r3, #48	@ 0x30
20029316:	4606      	mov	r6, r0
20029318:	f7fe fa32 	bl	20027780 <mbedtls_asn1_get_tag>
2002931c:	b128      	cbz	r0, 2002932a <mbedtls_pk_parse_subpubkey+0x26>
2002931e:	f5a0 5474 	sub.w	r4, r0, #15616	@ 0x3d00
20029322:	4620      	mov	r0, r4
20029324:	b007      	add	sp, #28
20029326:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
2002932a:	9b01      	ldr	r3, [sp, #4]
2002932c:	6837      	ldr	r7, [r6, #0]
2002932e:	4630      	mov	r0, r6
20029330:	441f      	add	r7, r3
20029332:	4639      	mov	r1, r7
20029334:	ab03      	add	r3, sp, #12
20029336:	f10d 0203 	add.w	r2, sp, #3
2002933a:	f7ff ffb9 	bl	200292b0 <pk_get_pk_alg>
2002933e:	4604      	mov	r4, r0
20029340:	2800      	cmp	r0, #0
20029342:	d1ee      	bne.n	20029322 <mbedtls_pk_parse_subpubkey+0x1e>
20029344:	4639      	mov	r1, r7
20029346:	4630      	mov	r0, r6
20029348:	aa01      	add	r2, sp, #4
2002934a:	f7fe fa40 	bl	200277ce <mbedtls_asn1_get_bitstring_null>
2002934e:	b110      	cbz	r0, 20029356 <mbedtls_pk_parse_subpubkey+0x52>
20029350:	f5a0 546c 	sub.w	r4, r0, #15104	@ 0x3b00
20029354:	e7e5      	b.n	20029322 <mbedtls_pk_parse_subpubkey+0x1e>
20029356:	6833      	ldr	r3, [r6, #0]
20029358:	9a01      	ldr	r2, [sp, #4]
2002935a:	4413      	add	r3, r2
2002935c:	429f      	cmp	r7, r3
2002935e:	d14b      	bne.n	200293f8 <mbedtls_pk_parse_subpubkey+0xf4>
20029360:	f89d 0003 	ldrb.w	r0, [sp, #3]
20029364:	f7ff ff5c 	bl	20029220 <mbedtls_pk_info_from_type>
20029368:	4601      	mov	r1, r0
2002936a:	2800      	cmp	r0, #0
2002936c:	d046      	beq.n	200293fc <mbedtls_pk_parse_subpubkey+0xf8>
2002936e:	4640      	mov	r0, r8
20029370:	f7ff ff5e 	bl	20029230 <mbedtls_pk_setup>
20029374:	4604      	mov	r4, r0
20029376:	2800      	cmp	r0, #0
20029378:	d1d3      	bne.n	20029322 <mbedtls_pk_parse_subpubkey+0x1e>
2002937a:	f89d 3003 	ldrb.w	r3, [sp, #3]
2002937e:	2b01      	cmp	r3, #1
20029380:	d138      	bne.n	200293f4 <mbedtls_pk_parse_subpubkey+0xf0>
20029382:	2330      	movs	r3, #48	@ 0x30
20029384:	4639      	mov	r1, r7
20029386:	4630      	mov	r0, r6
20029388:	aa02      	add	r2, sp, #8
2002938a:	f8d8 5004 	ldr.w	r5, [r8, #4]
2002938e:	f7fe f9f7 	bl	20027780 <mbedtls_asn1_get_tag>
20029392:	b138      	cbz	r0, 200293a4 <mbedtls_pk_parse_subpubkey+0xa0>
20029394:	f5a0 556c 	sub.w	r5, r0, #15104	@ 0x3b00
20029398:	bb3d      	cbnz	r5, 200293ea <mbedtls_pk_parse_subpubkey+0xe6>
2002939a:	6833      	ldr	r3, [r6, #0]
2002939c:	42bb      	cmp	r3, r7
2002939e:	d0c0      	beq.n	20029322 <mbedtls_pk_parse_subpubkey+0x1e>
200293a0:	4d17      	ldr	r5, [pc, #92]	@ (20029400 <mbedtls_pk_parse_subpubkey+0xfc>)
200293a2:	e022      	b.n	200293ea <mbedtls_pk_parse_subpubkey+0xe6>
200293a4:	6833      	ldr	r3, [r6, #0]
200293a6:	9a02      	ldr	r2, [sp, #8]
200293a8:	4413      	add	r3, r2
200293aa:	429f      	cmp	r7, r3
200293ac:	d1f8      	bne.n	200293a0 <mbedtls_pk_parse_subpubkey+0x9c>
200293ae:	f105 0a08 	add.w	sl, r5, #8
200293b2:	4652      	mov	r2, sl
200293b4:	4639      	mov	r1, r7
200293b6:	4630      	mov	r0, r6
200293b8:	f7fe f9f6 	bl	200277a8 <mbedtls_asn1_get_mpi>
200293bc:	2800      	cmp	r0, #0
200293be:	d1e9      	bne.n	20029394 <mbedtls_pk_parse_subpubkey+0x90>
200293c0:	4639      	mov	r1, r7
200293c2:	4630      	mov	r0, r6
200293c4:	f105 0214 	add.w	r2, r5, #20
200293c8:	f7fe f9ee 	bl	200277a8 <mbedtls_asn1_get_mpi>
200293cc:	2800      	cmp	r0, #0
200293ce:	d1e1      	bne.n	20029394 <mbedtls_pk_parse_subpubkey+0x90>
200293d0:	6833      	ldr	r3, [r6, #0]
200293d2:	429f      	cmp	r7, r3
200293d4:	d1e4      	bne.n	200293a0 <mbedtls_pk_parse_subpubkey+0x9c>
200293d6:	4628      	mov	r0, r5
200293d8:	f000 f8c2 	bl	20029560 <mbedtls_rsa_check_pubkey>
200293dc:	b920      	cbnz	r0, 200293e8 <mbedtls_pk_parse_subpubkey+0xe4>
200293de:	4650      	mov	r0, sl
200293e0:	f7fe fcbe 	bl	20027d60 <mbedtls_mpi_size>
200293e4:	6068      	str	r0, [r5, #4]
200293e6:	e7d8      	b.n	2002939a <mbedtls_pk_parse_subpubkey+0x96>
200293e8:	4d06      	ldr	r5, [pc, #24]	@ (20029404 <mbedtls_pk_parse_subpubkey+0x100>)
200293ea:	4640      	mov	r0, r8
200293ec:	f7ff ff07 	bl	200291fe <mbedtls_pk_free>
200293f0:	462c      	mov	r4, r5
200293f2:	e796      	b.n	20029322 <mbedtls_pk_parse_subpubkey+0x1e>
200293f4:	4d04      	ldr	r5, [pc, #16]	@ (20029408 <mbedtls_pk_parse_subpubkey+0x104>)
200293f6:	e7f8      	b.n	200293ea <mbedtls_pk_parse_subpubkey+0xe6>
200293f8:	4c01      	ldr	r4, [pc, #4]	@ (20029400 <mbedtls_pk_parse_subpubkey+0xfc>)
200293fa:	e792      	b.n	20029322 <mbedtls_pk_parse_subpubkey+0x1e>
200293fc:	4c02      	ldr	r4, [pc, #8]	@ (20029408 <mbedtls_pk_parse_subpubkey+0x104>)
200293fe:	e790      	b.n	20029322 <mbedtls_pk_parse_subpubkey+0x1e>
20029400:	ffffc49a 	.word	0xffffc49a
20029404:	ffffc500 	.word	0xffffc500
20029408:	ffffc380 	.word	0xffffc380

2002940c <mbedtls_pk_parse_public_key>:
2002940c:	4613      	mov	r3, r2
2002940e:	b507      	push	{r0, r1, r2, lr}
20029410:	4602      	mov	r2, r0
20029412:	9101      	str	r1, [sp, #4]
20029414:	a801      	add	r0, sp, #4
20029416:	4419      	add	r1, r3
20029418:	f7ff ff74 	bl	20029304 <mbedtls_pk_parse_subpubkey>
2002941c:	b003      	add	sp, #12
2002941e:	f85d fb04 	ldr.w	pc, [sp], #4

20029422 <rsa_can_do>:
20029422:	2801      	cmp	r0, #1
20029424:	d002      	beq.n	2002942c <rsa_can_do+0xa>
20029426:	1f83      	subs	r3, r0, #6
20029428:	4258      	negs	r0, r3
2002942a:	4158      	adcs	r0, r3
2002942c:	4770      	bx	lr

2002942e <rsa_get_bitlen>:
2002942e:	6840      	ldr	r0, [r0, #4]
20029430:	00c0      	lsls	r0, r0, #3
20029432:	4770      	bx	lr

20029434 <rsa_debug>:
20029434:	2301      	movs	r3, #1
20029436:	4a06      	ldr	r2, [pc, #24]	@ (20029450 <rsa_debug+0x1c>)
20029438:	700b      	strb	r3, [r1, #0]
2002943a:	730b      	strb	r3, [r1, #12]
2002943c:	4b05      	ldr	r3, [pc, #20]	@ (20029454 <rsa_debug+0x20>)
2002943e:	604a      	str	r2, [r1, #4]
20029440:	f100 0208 	add.w	r2, r0, #8
20029444:	3014      	adds	r0, #20
20029446:	608a      	str	r2, [r1, #8]
20029448:	610b      	str	r3, [r1, #16]
2002944a:	6148      	str	r0, [r1, #20]
2002944c:	4770      	bx	lr
2002944e:	bf00      	nop
20029450:	2002aead 	.word	0x2002aead
20029454:	2002aeb3 	.word	0x2002aeb3

20029458 <rsa_free_wrap>:
20029458:	b510      	push	{r4, lr}
2002945a:	4604      	mov	r4, r0
2002945c:	f000 fe7c 	bl	2002a158 <mbedtls_rsa_free>
20029460:	4620      	mov	r0, r4
20029462:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20029466:	f001 b88b 	b.w	2002a580 <free>

2002946a <rsa_alloc_wrap>:
2002946a:	b510      	push	{r4, lr}
2002946c:	21ac      	movs	r1, #172	@ 0xac
2002946e:	2001      	movs	r0, #1
20029470:	f001 f86a 	bl	2002a548 <calloc>
20029474:	4604      	mov	r4, r0
20029476:	b118      	cbz	r0, 20029480 <rsa_alloc_wrap+0x16>
20029478:	2200      	movs	r2, #0
2002947a:	4611      	mov	r1, r2
2002947c:	f000 f862 	bl	20029544 <mbedtls_rsa_init>
20029480:	4620      	mov	r0, r4
20029482:	bd10      	pop	{r4, pc}

20029484 <rsa_check_pair_wrap>:
20029484:	f000 b99c 	b.w	200297c0 <mbedtls_rsa_check_pub_priv>

20029488 <rsa_encrypt_wrap>:
20029488:	b4f0      	push	{r4, r5, r6, r7}
2002948a:	9f04      	ldr	r7, [sp, #16]
2002948c:	6846      	ldr	r6, [r0, #4]
2002948e:	460d      	mov	r5, r1
20029490:	603e      	str	r6, [r7, #0]
20029492:	9f05      	ldr	r7, [sp, #20]
20029494:	4614      	mov	r4, r2
20029496:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
2002949a:	42be      	cmp	r6, r7
2002949c:	d806      	bhi.n	200294ac <rsa_encrypt_wrap+0x24>
2002949e:	e9cd 5305 	strd	r5, r3, [sp, #20]
200294a2:	9404      	str	r4, [sp, #16]
200294a4:	2300      	movs	r3, #0
200294a6:	bcf0      	pop	{r4, r5, r6, r7}
200294a8:	f000 bbe2 	b.w	20029c70 <mbedtls_rsa_pkcs1_encrypt>
200294ac:	4801      	ldr	r0, [pc, #4]	@ (200294b4 <rsa_encrypt_wrap+0x2c>)
200294ae:	bcf0      	pop	{r4, r5, r6, r7}
200294b0:	4770      	bx	lr
200294b2:	bf00      	nop
200294b4:	ffffbc00 	.word	0xffffbc00

200294b8 <rsa_decrypt_wrap>:
200294b8:	b4f0      	push	{r4, r5, r6, r7}
200294ba:	4616      	mov	r6, r2
200294bc:	6847      	ldr	r7, [r0, #4]
200294be:	460c      	mov	r4, r1
200294c0:	e9dd 5105 	ldrd	r5, r1, [sp, #20]
200294c4:	42b7      	cmp	r7, r6
200294c6:	9a07      	ldr	r2, [sp, #28]
200294c8:	d106      	bne.n	200294d8 <rsa_decrypt_wrap+0x20>
200294ca:	e9cd 3506 	strd	r3, r5, [sp, #24]
200294ce:	9405      	str	r4, [sp, #20]
200294d0:	2301      	movs	r3, #1
200294d2:	bcf0      	pop	{r4, r5, r6, r7}
200294d4:	f000 bc6e 	b.w	20029db4 <mbedtls_rsa_pkcs1_decrypt>
200294d8:	4801      	ldr	r0, [pc, #4]	@ (200294e0 <rsa_decrypt_wrap+0x28>)
200294da:	bcf0      	pop	{r4, r5, r6, r7}
200294dc:	4770      	bx	lr
200294de:	bf00      	nop
200294e0:	ffffbf80 	.word	0xffffbf80

200294e4 <rsa_sign_wrap>:
200294e4:	b4f0      	push	{r4, r5, r6, r7}
200294e6:	460c      	mov	r4, r1
200294e8:	4615      	mov	r5, r2
200294ea:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
200294ee:	6847      	ldr	r7, [r0, #4]
200294f0:	9e05      	ldr	r6, [sp, #20]
200294f2:	6037      	str	r7, [r6, #0]
200294f4:	9e04      	ldr	r6, [sp, #16]
200294f6:	e9cd 4304 	strd	r4, r3, [sp, #16]
200294fa:	e9cd 5606 	strd	r5, r6, [sp, #24]
200294fe:	bcf0      	pop	{r4, r5, r6, r7}
20029500:	2301      	movs	r3, #1
20029502:	f000 bd31 	b.w	20029f68 <mbedtls_rsa_pkcs1_sign>
	...

20029508 <rsa_verify_wrap>:
20029508:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002950a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002950c:	6846      	ldr	r6, [r0, #4]
2002950e:	4604      	mov	r4, r0
20029510:	42ae      	cmp	r6, r5
20029512:	d811      	bhi.n	20029538 <rsa_verify_wrap+0x30>
20029514:	e9cd 1300 	strd	r1, r3, [sp]
20029518:	2300      	movs	r3, #0
2002951a:	9e08      	ldr	r6, [sp, #32]
2002951c:	4619      	mov	r1, r3
2002951e:	e9cd 2602 	strd	r2, r6, [sp, #8]
20029522:	461a      	mov	r2, r3
20029524:	f000 fe08 	bl	2002a138 <mbedtls_rsa_pkcs1_verify>
20029528:	b920      	cbnz	r0, 20029534 <rsa_verify_wrap+0x2c>
2002952a:	6862      	ldr	r2, [r4, #4]
2002952c:	4b03      	ldr	r3, [pc, #12]	@ (2002953c <rsa_verify_wrap+0x34>)
2002952e:	42aa      	cmp	r2, r5
20029530:	bf38      	it	cc
20029532:	4618      	movcc	r0, r3
20029534:	b004      	add	sp, #16
20029536:	bd70      	pop	{r4, r5, r6, pc}
20029538:	4801      	ldr	r0, [pc, #4]	@ (20029540 <rsa_verify_wrap+0x38>)
2002953a:	e7fb      	b.n	20029534 <rsa_verify_wrap+0x2c>
2002953c:	ffffc700 	.word	0xffffc700
20029540:	ffffbc80 	.word	0xffffbc80

20029544 <mbedtls_rsa_init>:
20029544:	b570      	push	{r4, r5, r6, lr}
20029546:	4604      	mov	r4, r0
20029548:	460e      	mov	r6, r1
2002954a:	4615      	mov	r5, r2
2002954c:	2100      	movs	r1, #0
2002954e:	22ac      	movs	r2, #172	@ 0xac
20029550:	f001 f8dc 	bl	2002a70c <memset>
20029554:	e9c4 6529 	strd	r6, r5, [r4, #164]	@ 0xa4
20029558:	bd70      	pop	{r4, r5, r6, pc}

2002955a <mbedtls_rsa_set_padding>:
2002955a:	e9c0 1229 	strd	r1, r2, [r0, #164]	@ 0xa4
2002955e:	4770      	bx	lr

20029560 <mbedtls_rsa_check_pubkey>:
20029560:	b538      	push	{r3, r4, r5, lr}
20029562:	6902      	ldr	r2, [r0, #16]
20029564:	4604      	mov	r4, r0
20029566:	b10a      	cbz	r2, 2002956c <mbedtls_rsa_check_pubkey+0xc>
20029568:	69c3      	ldr	r3, [r0, #28]
2002956a:	b90b      	cbnz	r3, 20029570 <mbedtls_rsa_check_pubkey+0x10>
2002956c:	4811      	ldr	r0, [pc, #68]	@ (200295b4 <mbedtls_rsa_check_pubkey+0x54>)
2002956e:	bd38      	pop	{r3, r4, r5, pc}
20029570:	6812      	ldr	r2, [r2, #0]
20029572:	07d2      	lsls	r2, r2, #31
20029574:	d5fa      	bpl.n	2002956c <mbedtls_rsa_check_pubkey+0xc>
20029576:	681b      	ldr	r3, [r3, #0]
20029578:	07db      	lsls	r3, r3, #31
2002957a:	d5f7      	bpl.n	2002956c <mbedtls_rsa_check_pubkey+0xc>
2002957c:	f100 0508 	add.w	r5, r0, #8
20029580:	4628      	mov	r0, r5
20029582:	f7fe fbd0 	bl	20027d26 <mbedtls_mpi_bitlen>
20029586:	287f      	cmp	r0, #127	@ 0x7f
20029588:	d9f0      	bls.n	2002956c <mbedtls_rsa_check_pubkey+0xc>
2002958a:	4628      	mov	r0, r5
2002958c:	f7fe fbcb 	bl	20027d26 <mbedtls_mpi_bitlen>
20029590:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
20029594:	d8ea      	bhi.n	2002956c <mbedtls_rsa_check_pubkey+0xc>
20029596:	3414      	adds	r4, #20
20029598:	4620      	mov	r0, r4
2002959a:	f7fe fbc4 	bl	20027d26 <mbedtls_mpi_bitlen>
2002959e:	2801      	cmp	r0, #1
200295a0:	d9e4      	bls.n	2002956c <mbedtls_rsa_check_pubkey+0xc>
200295a2:	4629      	mov	r1, r5
200295a4:	4620      	mov	r0, r4
200295a6:	f7fe fd71 	bl	2002808c <mbedtls_mpi_cmp_mpi>
200295aa:	2800      	cmp	r0, #0
200295ac:	dade      	bge.n	2002956c <mbedtls_rsa_check_pubkey+0xc>
200295ae:	2000      	movs	r0, #0
200295b0:	e7dd      	b.n	2002956e <mbedtls_rsa_check_pubkey+0xe>
200295b2:	bf00      	nop
200295b4:	ffffbe00 	.word	0xffffbe00

200295b8 <mbedtls_rsa_check_privkey>:
200295b8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200295bc:	b0a9      	sub	sp, #164	@ 0xa4
200295be:	4605      	mov	r5, r0
200295c0:	f7ff ffce 	bl	20029560 <mbedtls_rsa_check_pubkey>
200295c4:	b120      	cbz	r0, 200295d0 <mbedtls_rsa_check_privkey+0x18>
200295c6:	4c7d      	ldr	r4, [pc, #500]	@ (200297bc <mbedtls_rsa_check_privkey+0x204>)
200295c8:	4620      	mov	r0, r4
200295ca:	b029      	add	sp, #164	@ 0xa4
200295cc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200295d0:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
200295d2:	2b00      	cmp	r3, #0
200295d4:	d0f7      	beq.n	200295c6 <mbedtls_rsa_check_privkey+0xe>
200295d6:	6c2b      	ldr	r3, [r5, #64]	@ 0x40
200295d8:	2b00      	cmp	r3, #0
200295da:	d0f4      	beq.n	200295c6 <mbedtls_rsa_check_privkey+0xe>
200295dc:	6aab      	ldr	r3, [r5, #40]	@ 0x28
200295de:	2b00      	cmp	r3, #0
200295e0:	d0f1      	beq.n	200295c6 <mbedtls_rsa_check_privkey+0xe>
200295e2:	a801      	add	r0, sp, #4
200295e4:	f7fe fafa 	bl	20027bdc <mbedtls_mpi_init>
200295e8:	a804      	add	r0, sp, #16
200295ea:	f7fe faf7 	bl	20027bdc <mbedtls_mpi_init>
200295ee:	a807      	add	r0, sp, #28
200295f0:	f7fe faf4 	bl	20027bdc <mbedtls_mpi_init>
200295f4:	a80a      	add	r0, sp, #40	@ 0x28
200295f6:	f7fe faf1 	bl	20027bdc <mbedtls_mpi_init>
200295fa:	a80d      	add	r0, sp, #52	@ 0x34
200295fc:	f7fe faee 	bl	20027bdc <mbedtls_mpi_init>
20029600:	a810      	add	r0, sp, #64	@ 0x40
20029602:	f7fe faeb 	bl	20027bdc <mbedtls_mpi_init>
20029606:	a813      	add	r0, sp, #76	@ 0x4c
20029608:	f7fe fae8 	bl	20027bdc <mbedtls_mpi_init>
2002960c:	a816      	add	r0, sp, #88	@ 0x58
2002960e:	f7fe fae5 	bl	20027bdc <mbedtls_mpi_init>
20029612:	a819      	add	r0, sp, #100	@ 0x64
20029614:	f7fe fae2 	bl	20027bdc <mbedtls_mpi_init>
20029618:	a81c      	add	r0, sp, #112	@ 0x70
2002961a:	f7fe fadf 	bl	20027bdc <mbedtls_mpi_init>
2002961e:	a81f      	add	r0, sp, #124	@ 0x7c
20029620:	f7fe fadc 	bl	20027bdc <mbedtls_mpi_init>
20029624:	a822      	add	r0, sp, #136	@ 0x88
20029626:	f7fe fad9 	bl	20027bdc <mbedtls_mpi_init>
2002962a:	f105 072c 	add.w	r7, r5, #44	@ 0x2c
2002962e:	a825      	add	r0, sp, #148	@ 0x94
20029630:	f105 0638 	add.w	r6, r5, #56	@ 0x38
20029634:	f7fe fad2 	bl	20027bdc <mbedtls_mpi_init>
20029638:	4632      	mov	r2, r6
2002963a:	4639      	mov	r1, r7
2002963c:	a801      	add	r0, sp, #4
2002963e:	f7fe fe75 	bl	2002832c <mbedtls_mpi_mul_mpi>
20029642:	4604      	mov	r4, r0
20029644:	2800      	cmp	r0, #0
20029646:	d15e      	bne.n	20029706 <mbedtls_rsa_check_privkey+0x14e>
20029648:	f105 0820 	add.w	r8, r5, #32
2002964c:	f105 0914 	add.w	r9, r5, #20
20029650:	464a      	mov	r2, r9
20029652:	4641      	mov	r1, r8
20029654:	a804      	add	r0, sp, #16
20029656:	f7fe fe69 	bl	2002832c <mbedtls_mpi_mul_mpi>
2002965a:	4604      	mov	r4, r0
2002965c:	2800      	cmp	r0, #0
2002965e:	d152      	bne.n	20029706 <mbedtls_rsa_check_privkey+0x14e>
20029660:	2201      	movs	r2, #1
20029662:	4639      	mov	r1, r7
20029664:	a807      	add	r0, sp, #28
20029666:	f7fe fe4b 	bl	20028300 <mbedtls_mpi_sub_int>
2002966a:	4604      	mov	r4, r0
2002966c:	2800      	cmp	r0, #0
2002966e:	d14a      	bne.n	20029706 <mbedtls_rsa_check_privkey+0x14e>
20029670:	2201      	movs	r2, #1
20029672:	4631      	mov	r1, r6
20029674:	a80a      	add	r0, sp, #40	@ 0x28
20029676:	f7fe fe43 	bl	20028300 <mbedtls_mpi_sub_int>
2002967a:	4604      	mov	r4, r0
2002967c:	2800      	cmp	r0, #0
2002967e:	d142      	bne.n	20029706 <mbedtls_rsa_check_privkey+0x14e>
20029680:	aa0a      	add	r2, sp, #40	@ 0x28
20029682:	a907      	add	r1, sp, #28
20029684:	a80d      	add	r0, sp, #52	@ 0x34
20029686:	f7fe fe51 	bl	2002832c <mbedtls_mpi_mul_mpi>
2002968a:	4604      	mov	r4, r0
2002968c:	2800      	cmp	r0, #0
2002968e:	d13a      	bne.n	20029706 <mbedtls_rsa_check_privkey+0x14e>
20029690:	4649      	mov	r1, r9
20029692:	aa0d      	add	r2, sp, #52	@ 0x34
20029694:	a813      	add	r0, sp, #76	@ 0x4c
20029696:	f7ff fb04 	bl	20028ca2 <mbedtls_mpi_gcd>
2002969a:	4604      	mov	r4, r0
2002969c:	2800      	cmp	r0, #0
2002969e:	d132      	bne.n	20029706 <mbedtls_rsa_check_privkey+0x14e>
200296a0:	aa0a      	add	r2, sp, #40	@ 0x28
200296a2:	a907      	add	r1, sp, #28
200296a4:	a816      	add	r0, sp, #88	@ 0x58
200296a6:	f7ff fafc 	bl	20028ca2 <mbedtls_mpi_gcd>
200296aa:	4604      	mov	r4, r0
200296ac:	bb58      	cbnz	r0, 20029706 <mbedtls_rsa_check_privkey+0x14e>
200296ae:	ab16      	add	r3, sp, #88	@ 0x58
200296b0:	aa0d      	add	r2, sp, #52	@ 0x34
200296b2:	a91c      	add	r1, sp, #112	@ 0x70
200296b4:	a819      	add	r0, sp, #100	@ 0x64
200296b6:	f7fe feaa 	bl	2002840e <mbedtls_mpi_div_mpi>
200296ba:	4604      	mov	r4, r0
200296bc:	bb18      	cbnz	r0, 20029706 <mbedtls_rsa_check_privkey+0x14e>
200296be:	aa19      	add	r2, sp, #100	@ 0x64
200296c0:	a904      	add	r1, sp, #16
200296c2:	a810      	add	r0, sp, #64	@ 0x40
200296c4:	f7ff f8a7 	bl	20028816 <mbedtls_mpi_mod_mpi>
200296c8:	4604      	mov	r4, r0
200296ca:	b9e0      	cbnz	r0, 20029706 <mbedtls_rsa_check_privkey+0x14e>
200296cc:	4641      	mov	r1, r8
200296ce:	aa07      	add	r2, sp, #28
200296d0:	a81f      	add	r0, sp, #124	@ 0x7c
200296d2:	f7ff f8a0 	bl	20028816 <mbedtls_mpi_mod_mpi>
200296d6:	4604      	mov	r4, r0
200296d8:	b9a8      	cbnz	r0, 20029706 <mbedtls_rsa_check_privkey+0x14e>
200296da:	4641      	mov	r1, r8
200296dc:	aa0a      	add	r2, sp, #40	@ 0x28
200296de:	a822      	add	r0, sp, #136	@ 0x88
200296e0:	f7ff f899 	bl	20028816 <mbedtls_mpi_mod_mpi>
200296e4:	4604      	mov	r4, r0
200296e6:	b970      	cbnz	r0, 20029706 <mbedtls_rsa_check_privkey+0x14e>
200296e8:	463a      	mov	r2, r7
200296ea:	4631      	mov	r1, r6
200296ec:	a825      	add	r0, sp, #148	@ 0x94
200296ee:	f7ff fb73 	bl	20028dd8 <mbedtls_mpi_inv_mod>
200296f2:	4604      	mov	r4, r0
200296f4:	b938      	cbnz	r0, 20029706 <mbedtls_rsa_check_privkey+0x14e>
200296f6:	f105 0108 	add.w	r1, r5, #8
200296fa:	a801      	add	r0, sp, #4
200296fc:	f7fe fcc6 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20029700:	2800      	cmp	r0, #0
20029702:	d031      	beq.n	20029768 <mbedtls_rsa_check_privkey+0x1b0>
20029704:	4c2d      	ldr	r4, [pc, #180]	@ (200297bc <mbedtls_rsa_check_privkey+0x204>)
20029706:	a801      	add	r0, sp, #4
20029708:	f7fe fa6f 	bl	20027bea <mbedtls_mpi_free>
2002970c:	a804      	add	r0, sp, #16
2002970e:	f7fe fa6c 	bl	20027bea <mbedtls_mpi_free>
20029712:	a807      	add	r0, sp, #28
20029714:	f7fe fa69 	bl	20027bea <mbedtls_mpi_free>
20029718:	a80a      	add	r0, sp, #40	@ 0x28
2002971a:	f7fe fa66 	bl	20027bea <mbedtls_mpi_free>
2002971e:	a80d      	add	r0, sp, #52	@ 0x34
20029720:	f7fe fa63 	bl	20027bea <mbedtls_mpi_free>
20029724:	a810      	add	r0, sp, #64	@ 0x40
20029726:	f7fe fa60 	bl	20027bea <mbedtls_mpi_free>
2002972a:	a813      	add	r0, sp, #76	@ 0x4c
2002972c:	f7fe fa5d 	bl	20027bea <mbedtls_mpi_free>
20029730:	a816      	add	r0, sp, #88	@ 0x58
20029732:	f7fe fa5a 	bl	20027bea <mbedtls_mpi_free>
20029736:	a819      	add	r0, sp, #100	@ 0x64
20029738:	f7fe fa57 	bl	20027bea <mbedtls_mpi_free>
2002973c:	a81c      	add	r0, sp, #112	@ 0x70
2002973e:	f7fe fa54 	bl	20027bea <mbedtls_mpi_free>
20029742:	a81f      	add	r0, sp, #124	@ 0x7c
20029744:	f7fe fa51 	bl	20027bea <mbedtls_mpi_free>
20029748:	a822      	add	r0, sp, #136	@ 0x88
2002974a:	f7fe fa4e 	bl	20027bea <mbedtls_mpi_free>
2002974e:	a825      	add	r0, sp, #148	@ 0x94
20029750:	f7fe fa4b 	bl	20027bea <mbedtls_mpi_free>
20029754:	f514 4f84 	cmn.w	r4, #16896	@ 0x4200
20029758:	f43f af35 	beq.w	200295c6 <mbedtls_rsa_check_privkey+0xe>
2002975c:	2c00      	cmp	r4, #0
2002975e:	f43f af33 	beq.w	200295c8 <mbedtls_rsa_check_privkey+0x10>
20029762:	f5a4 4484 	sub.w	r4, r4, #16896	@ 0x4200
20029766:	e72f      	b.n	200295c8 <mbedtls_rsa_check_privkey+0x10>
20029768:	f105 0144 	add.w	r1, r5, #68	@ 0x44
2002976c:	a81f      	add	r0, sp, #124	@ 0x7c
2002976e:	f7fe fc8d 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20029772:	2800      	cmp	r0, #0
20029774:	d1c6      	bne.n	20029704 <mbedtls_rsa_check_privkey+0x14c>
20029776:	f105 0150 	add.w	r1, r5, #80	@ 0x50
2002977a:	a822      	add	r0, sp, #136	@ 0x88
2002977c:	f7fe fc86 	bl	2002808c <mbedtls_mpi_cmp_mpi>
20029780:	2800      	cmp	r0, #0
20029782:	d1bf      	bne.n	20029704 <mbedtls_rsa_check_privkey+0x14c>
20029784:	f105 015c 	add.w	r1, r5, #92	@ 0x5c
20029788:	a825      	add	r0, sp, #148	@ 0x94
2002978a:	f7fe fc7f 	bl	2002808c <mbedtls_mpi_cmp_mpi>
2002978e:	2800      	cmp	r0, #0
20029790:	d1b8      	bne.n	20029704 <mbedtls_rsa_check_privkey+0x14c>
20029792:	2100      	movs	r1, #0
20029794:	a81c      	add	r0, sp, #112	@ 0x70
20029796:	f7fe fcba 	bl	2002810e <mbedtls_mpi_cmp_int>
2002979a:	2800      	cmp	r0, #0
2002979c:	d1b2      	bne.n	20029704 <mbedtls_rsa_check_privkey+0x14c>
2002979e:	2101      	movs	r1, #1
200297a0:	a810      	add	r0, sp, #64	@ 0x40
200297a2:	f7fe fcb4 	bl	2002810e <mbedtls_mpi_cmp_int>
200297a6:	2800      	cmp	r0, #0
200297a8:	d1ac      	bne.n	20029704 <mbedtls_rsa_check_privkey+0x14c>
200297aa:	2101      	movs	r1, #1
200297ac:	a813      	add	r0, sp, #76	@ 0x4c
200297ae:	f7fe fcae 	bl	2002810e <mbedtls_mpi_cmp_int>
200297b2:	4604      	mov	r4, r0
200297b4:	2800      	cmp	r0, #0
200297b6:	d1a5      	bne.n	20029704 <mbedtls_rsa_check_privkey+0x14c>
200297b8:	e7a5      	b.n	20029706 <mbedtls_rsa_check_privkey+0x14e>
200297ba:	bf00      	nop
200297bc:	ffffbe00 	.word	0xffffbe00

200297c0 <mbedtls_rsa_check_pub_priv>:
200297c0:	b538      	push	{r3, r4, r5, lr}
200297c2:	4605      	mov	r5, r0
200297c4:	460c      	mov	r4, r1
200297c6:	f7ff fecb 	bl	20029560 <mbedtls_rsa_check_pubkey>
200297ca:	b918      	cbnz	r0, 200297d4 <mbedtls_rsa_check_pub_priv+0x14>
200297cc:	4620      	mov	r0, r4
200297ce:	f7ff fef3 	bl	200295b8 <mbedtls_rsa_check_privkey>
200297d2:	b108      	cbz	r0, 200297d8 <mbedtls_rsa_check_pub_priv+0x18>
200297d4:	4809      	ldr	r0, [pc, #36]	@ (200297fc <mbedtls_rsa_check_pub_priv+0x3c>)
200297d6:	bd38      	pop	{r3, r4, r5, pc}
200297d8:	f104 0108 	add.w	r1, r4, #8
200297dc:	f105 0008 	add.w	r0, r5, #8
200297e0:	f7fe fc54 	bl	2002808c <mbedtls_mpi_cmp_mpi>
200297e4:	2800      	cmp	r0, #0
200297e6:	d1f5      	bne.n	200297d4 <mbedtls_rsa_check_pub_priv+0x14>
200297e8:	f104 0114 	add.w	r1, r4, #20
200297ec:	f105 0014 	add.w	r0, r5, #20
200297f0:	f7fe fc4c 	bl	2002808c <mbedtls_mpi_cmp_mpi>
200297f4:	2800      	cmp	r0, #0
200297f6:	d0ee      	beq.n	200297d6 <mbedtls_rsa_check_pub_priv+0x16>
200297f8:	e7ec      	b.n	200297d4 <mbedtls_rsa_check_pub_priv+0x14>
200297fa:	bf00      	nop
200297fc:	ffffbe00 	.word	0xffffbe00

20029800 <mbedtls_rsa_public>:
20029800:	b5f0      	push	{r4, r5, r6, r7, lr}
20029802:	460c      	mov	r4, r1
20029804:	4605      	mov	r5, r0
20029806:	b087      	sub	sp, #28
20029808:	a803      	add	r0, sp, #12
2002980a:	4616      	mov	r6, r2
2002980c:	f7fe f9e6 	bl	20027bdc <mbedtls_mpi_init>
20029810:	4621      	mov	r1, r4
20029812:	686a      	ldr	r2, [r5, #4]
20029814:	a803      	add	r0, sp, #12
20029816:	f7fe faa9 	bl	20027d6c <mbedtls_mpi_read_binary>
2002981a:	4604      	mov	r4, r0
2002981c:	b9d0      	cbnz	r0, 20029854 <mbedtls_rsa_public+0x54>
2002981e:	f105 0408 	add.w	r4, r5, #8
20029822:	4621      	mov	r1, r4
20029824:	a803      	add	r0, sp, #12
20029826:	f7fe fc31 	bl	2002808c <mbedtls_mpi_cmp_mpi>
2002982a:	2800      	cmp	r0, #0
2002982c:	da1b      	bge.n	20029866 <mbedtls_rsa_public+0x66>
2002982e:	f105 0368 	add.w	r3, r5, #104	@ 0x68
20029832:	a903      	add	r1, sp, #12
20029834:	686f      	ldr	r7, [r5, #4]
20029836:	4608      	mov	r0, r1
20029838:	9300      	str	r3, [sp, #0]
2002983a:	f105 0214 	add.w	r2, r5, #20
2002983e:	4623      	mov	r3, r4
20029840:	f7ff f81b 	bl	2002887a <mbedtls_mpi_exp_mod>
20029844:	4604      	mov	r4, r0
20029846:	b928      	cbnz	r0, 20029854 <mbedtls_rsa_public+0x54>
20029848:	463a      	mov	r2, r7
2002984a:	4631      	mov	r1, r6
2002984c:	a803      	add	r0, sp, #12
2002984e:	f7fe fac2 	bl	20027dd6 <mbedtls_mpi_write_binary>
20029852:	4604      	mov	r4, r0
20029854:	a803      	add	r0, sp, #12
20029856:	f7fe f9c8 	bl	20027bea <mbedtls_mpi_free>
2002985a:	b10c      	cbz	r4, 20029860 <mbedtls_rsa_public+0x60>
2002985c:	f5a4 4485 	sub.w	r4, r4, #17024	@ 0x4280
20029860:	4620      	mov	r0, r4
20029862:	b007      	add	sp, #28
20029864:	bdf0      	pop	{r4, r5, r6, r7, pc}
20029866:	f06f 0403 	mvn.w	r4, #3
2002986a:	e7f3      	b.n	20029854 <mbedtls_rsa_public+0x54>

2002986c <mbedtls_rsa_private>:
2002986c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029870:	461e      	mov	r6, r3
20029872:	6b43      	ldr	r3, [r0, #52]	@ 0x34
20029874:	4604      	mov	r4, r0
20029876:	460d      	mov	r5, r1
20029878:	4617      	mov	r7, r2
2002987a:	b09d      	sub	sp, #116	@ 0x74
2002987c:	2b00      	cmp	r3, #0
2002987e:	f000 8179 	beq.w	20029b74 <mbedtls_rsa_private+0x308>
20029882:	6c03      	ldr	r3, [r0, #64]	@ 0x40
20029884:	2b00      	cmp	r3, #0
20029886:	f000 8175 	beq.w	20029b74 <mbedtls_rsa_private+0x308>
2002988a:	6a83      	ldr	r3, [r0, #40]	@ 0x28
2002988c:	2b00      	cmp	r3, #0
2002988e:	f000 8171 	beq.w	20029b74 <mbedtls_rsa_private+0x308>
20029892:	a804      	add	r0, sp, #16
20029894:	f7fe f9a2 	bl	20027bdc <mbedtls_mpi_init>
20029898:	a807      	add	r0, sp, #28
2002989a:	f7fe f99f 	bl	20027bdc <mbedtls_mpi_init>
2002989e:	a80a      	add	r0, sp, #40	@ 0x28
200298a0:	f7fe f99c 	bl	20027bdc <mbedtls_mpi_init>
200298a4:	a80d      	add	r0, sp, #52	@ 0x34
200298a6:	f7fe f999 	bl	20027bdc <mbedtls_mpi_init>
200298aa:	a810      	add	r0, sp, #64	@ 0x40
200298ac:	f7fe f996 	bl	20027bdc <mbedtls_mpi_init>
200298b0:	a813      	add	r0, sp, #76	@ 0x4c
200298b2:	f7fe f993 	bl	20027bdc <mbedtls_mpi_init>
200298b6:	b12d      	cbz	r5, 200298c4 <mbedtls_rsa_private+0x58>
200298b8:	a816      	add	r0, sp, #88	@ 0x58
200298ba:	f7fe f98f 	bl	20027bdc <mbedtls_mpi_init>
200298be:	a819      	add	r0, sp, #100	@ 0x64
200298c0:	f7fe f98c 	bl	20027bdc <mbedtls_mpi_init>
200298c4:	4631      	mov	r1, r6
200298c6:	6862      	ldr	r2, [r4, #4]
200298c8:	a804      	add	r0, sp, #16
200298ca:	f7fe fa4f 	bl	20027d6c <mbedtls_mpi_read_binary>
200298ce:	4603      	mov	r3, r0
200298d0:	2800      	cmp	r0, #0
200298d2:	f040 80e0 	bne.w	20029a96 <mbedtls_rsa_private+0x22a>
200298d6:	f104 0608 	add.w	r6, r4, #8
200298da:	4631      	mov	r1, r6
200298dc:	a804      	add	r0, sp, #16
200298de:	f7fe fbd5 	bl	2002808c <mbedtls_mpi_cmp_mpi>
200298e2:	2800      	cmp	r0, #0
200298e4:	f280 8143 	bge.w	20029b6e <mbedtls_rsa_private+0x302>
200298e8:	f104 0a44 	add.w	sl, r4, #68	@ 0x44
200298ec:	f104 0950 	add.w	r9, r4, #80	@ 0x50
200298f0:	2d00      	cmp	r5, #0
200298f2:	f000 8089 	beq.w	20029a08 <mbedtls_rsa_private+0x19c>
200298f6:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
200298fa:	2b00      	cmp	r3, #0
200298fc:	f000 80f4 	beq.w	20029ae8 <mbedtls_rsa_private+0x27c>
20029900:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029904:	4642      	mov	r2, r8
20029906:	4641      	mov	r1, r8
20029908:	4640      	mov	r0, r8
2002990a:	f7fe fd0f 	bl	2002832c <mbedtls_mpi_mul_mpi>
2002990e:	4603      	mov	r3, r0
20029910:	2800      	cmp	r0, #0
20029912:	f040 80c0 	bne.w	20029a96 <mbedtls_rsa_private+0x22a>
20029916:	4632      	mov	r2, r6
20029918:	4641      	mov	r1, r8
2002991a:	4640      	mov	r0, r8
2002991c:	f7fe ff7b 	bl	20028816 <mbedtls_mpi_mod_mpi>
20029920:	4603      	mov	r3, r0
20029922:	2800      	cmp	r0, #0
20029924:	f040 80b7 	bne.w	20029a96 <mbedtls_rsa_private+0x22a>
20029928:	f104 0898 	add.w	r8, r4, #152	@ 0x98
2002992c:	4642      	mov	r2, r8
2002992e:	4641      	mov	r1, r8
20029930:	4640      	mov	r0, r8
20029932:	f7fe fcfb 	bl	2002832c <mbedtls_mpi_mul_mpi>
20029936:	4603      	mov	r3, r0
20029938:	2800      	cmp	r0, #0
2002993a:	f040 80ac 	bne.w	20029a96 <mbedtls_rsa_private+0x22a>
2002993e:	4632      	mov	r2, r6
20029940:	4641      	mov	r1, r8
20029942:	4640      	mov	r0, r8
20029944:	f7fe ff67 	bl	20028816 <mbedtls_mpi_mod_mpi>
20029948:	4603      	mov	r3, r0
2002994a:	2800      	cmp	r0, #0
2002994c:	f040 80a3 	bne.w	20029a96 <mbedtls_rsa_private+0x22a>
20029950:	a904      	add	r1, sp, #16
20029952:	4608      	mov	r0, r1
20029954:	f104 028c 	add.w	r2, r4, #140	@ 0x8c
20029958:	f7fe fce8 	bl	2002832c <mbedtls_mpi_mul_mpi>
2002995c:	4603      	mov	r3, r0
2002995e:	2800      	cmp	r0, #0
20029960:	f040 8099 	bne.w	20029a96 <mbedtls_rsa_private+0x22a>
20029964:	a904      	add	r1, sp, #16
20029966:	4632      	mov	r2, r6
20029968:	4608      	mov	r0, r1
2002996a:	f7fe ff54 	bl	20028816 <mbedtls_mpi_mod_mpi>
2002996e:	4603      	mov	r3, r0
20029970:	2800      	cmp	r0, #0
20029972:	f040 8090 	bne.w	20029a96 <mbedtls_rsa_private+0x22a>
20029976:	2201      	movs	r2, #1
20029978:	f104 012c 	add.w	r1, r4, #44	@ 0x2c
2002997c:	a80d      	add	r0, sp, #52	@ 0x34
2002997e:	f7fe fcbf 	bl	20028300 <mbedtls_mpi_sub_int>
20029982:	4603      	mov	r3, r0
20029984:	2800      	cmp	r0, #0
20029986:	f040 8086 	bne.w	20029a96 <mbedtls_rsa_private+0x22a>
2002998a:	2201      	movs	r2, #1
2002998c:	f104 0138 	add.w	r1, r4, #56	@ 0x38
20029990:	a810      	add	r0, sp, #64	@ 0x40
20029992:	f7fe fcb5 	bl	20028300 <mbedtls_mpi_sub_int>
20029996:	4603      	mov	r3, r0
20029998:	2800      	cmp	r0, #0
2002999a:	d17c      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
2002999c:	463b      	mov	r3, r7
2002999e:	462a      	mov	r2, r5
200299a0:	211c      	movs	r1, #28
200299a2:	a813      	add	r0, sp, #76	@ 0x4c
200299a4:	f7ff f9fb 	bl	20028d9e <mbedtls_mpi_fill_random>
200299a8:	4603      	mov	r3, r0
200299aa:	2800      	cmp	r0, #0
200299ac:	d173      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
200299ae:	aa13      	add	r2, sp, #76	@ 0x4c
200299b0:	a90d      	add	r1, sp, #52	@ 0x34
200299b2:	a816      	add	r0, sp, #88	@ 0x58
200299b4:	f7fe fcba 	bl	2002832c <mbedtls_mpi_mul_mpi>
200299b8:	4603      	mov	r3, r0
200299ba:	2800      	cmp	r0, #0
200299bc:	d16b      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
200299be:	a916      	add	r1, sp, #88	@ 0x58
200299c0:	4652      	mov	r2, sl
200299c2:	4608      	mov	r0, r1
200299c4:	f7fe fc4f 	bl	20028266 <mbedtls_mpi_add_mpi>
200299c8:	4603      	mov	r3, r0
200299ca:	2800      	cmp	r0, #0
200299cc:	d163      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
200299ce:	463b      	mov	r3, r7
200299d0:	462a      	mov	r2, r5
200299d2:	211c      	movs	r1, #28
200299d4:	a813      	add	r0, sp, #76	@ 0x4c
200299d6:	f7ff f9e2 	bl	20028d9e <mbedtls_mpi_fill_random>
200299da:	4603      	mov	r3, r0
200299dc:	2800      	cmp	r0, #0
200299de:	d15a      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
200299e0:	aa13      	add	r2, sp, #76	@ 0x4c
200299e2:	a910      	add	r1, sp, #64	@ 0x40
200299e4:	a819      	add	r0, sp, #100	@ 0x64
200299e6:	f7fe fca1 	bl	2002832c <mbedtls_mpi_mul_mpi>
200299ea:	4603      	mov	r3, r0
200299ec:	2800      	cmp	r0, #0
200299ee:	d152      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
200299f0:	a919      	add	r1, sp, #100	@ 0x64
200299f2:	464a      	mov	r2, r9
200299f4:	4608      	mov	r0, r1
200299f6:	f7fe fc36 	bl	20028266 <mbedtls_mpi_add_mpi>
200299fa:	4603      	mov	r3, r0
200299fc:	2800      	cmp	r0, #0
200299fe:	d14a      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
20029a00:	f10d 0964 	add.w	r9, sp, #100	@ 0x64
20029a04:	f10d 0a58 	add.w	sl, sp, #88	@ 0x58
20029a08:	f104 0374 	add.w	r3, r4, #116	@ 0x74
20029a0c:	f104 082c 	add.w	r8, r4, #44	@ 0x2c
20029a10:	9300      	str	r3, [sp, #0]
20029a12:	4652      	mov	r2, sl
20029a14:	4643      	mov	r3, r8
20029a16:	a904      	add	r1, sp, #16
20029a18:	a807      	add	r0, sp, #28
20029a1a:	f7fe ff2e 	bl	2002887a <mbedtls_mpi_exp_mod>
20029a1e:	4603      	mov	r3, r0
20029a20:	2800      	cmp	r0, #0
20029a22:	d138      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
20029a24:	f104 0380 	add.w	r3, r4, #128	@ 0x80
20029a28:	f104 0738 	add.w	r7, r4, #56	@ 0x38
20029a2c:	9300      	str	r3, [sp, #0]
20029a2e:	464a      	mov	r2, r9
20029a30:	463b      	mov	r3, r7
20029a32:	a904      	add	r1, sp, #16
20029a34:	a80a      	add	r0, sp, #40	@ 0x28
20029a36:	f7fe ff20 	bl	2002887a <mbedtls_mpi_exp_mod>
20029a3a:	4603      	mov	r3, r0
20029a3c:	bb58      	cbnz	r0, 20029a96 <mbedtls_rsa_private+0x22a>
20029a3e:	aa0a      	add	r2, sp, #40	@ 0x28
20029a40:	a907      	add	r1, sp, #28
20029a42:	a804      	add	r0, sp, #16
20029a44:	f7fe fc35 	bl	200282b2 <mbedtls_mpi_sub_mpi>
20029a48:	4603      	mov	r3, r0
20029a4a:	bb20      	cbnz	r0, 20029a96 <mbedtls_rsa_private+0x22a>
20029a4c:	f104 025c 	add.w	r2, r4, #92	@ 0x5c
20029a50:	a904      	add	r1, sp, #16
20029a52:	a807      	add	r0, sp, #28
20029a54:	f7fe fc6a 	bl	2002832c <mbedtls_mpi_mul_mpi>
20029a58:	4603      	mov	r3, r0
20029a5a:	b9e0      	cbnz	r0, 20029a96 <mbedtls_rsa_private+0x22a>
20029a5c:	4642      	mov	r2, r8
20029a5e:	a907      	add	r1, sp, #28
20029a60:	a804      	add	r0, sp, #16
20029a62:	f7fe fed8 	bl	20028816 <mbedtls_mpi_mod_mpi>
20029a66:	4603      	mov	r3, r0
20029a68:	b9a8      	cbnz	r0, 20029a96 <mbedtls_rsa_private+0x22a>
20029a6a:	463a      	mov	r2, r7
20029a6c:	a904      	add	r1, sp, #16
20029a6e:	a807      	add	r0, sp, #28
20029a70:	f7fe fc5c 	bl	2002832c <mbedtls_mpi_mul_mpi>
20029a74:	4603      	mov	r3, r0
20029a76:	b970      	cbnz	r0, 20029a96 <mbedtls_rsa_private+0x22a>
20029a78:	aa07      	add	r2, sp, #28
20029a7a:	a90a      	add	r1, sp, #40	@ 0x28
20029a7c:	a804      	add	r0, sp, #16
20029a7e:	f7fe fbf2 	bl	20028266 <mbedtls_mpi_add_mpi>
20029a82:	4603      	mov	r3, r0
20029a84:	b938      	cbnz	r0, 20029a96 <mbedtls_rsa_private+0x22a>
20029a86:	2d00      	cmp	r5, #0
20029a88:	d15f      	bne.n	20029b4a <mbedtls_rsa_private+0x2de>
20029a8a:	6862      	ldr	r2, [r4, #4]
20029a8c:	9926      	ldr	r1, [sp, #152]	@ 0x98
20029a8e:	a804      	add	r0, sp, #16
20029a90:	f7fe f9a1 	bl	20027dd6 <mbedtls_mpi_write_binary>
20029a94:	4603      	mov	r3, r0
20029a96:	a804      	add	r0, sp, #16
20029a98:	9303      	str	r3, [sp, #12]
20029a9a:	f7fe f8a6 	bl	20027bea <mbedtls_mpi_free>
20029a9e:	a807      	add	r0, sp, #28
20029aa0:	f7fe f8a3 	bl	20027bea <mbedtls_mpi_free>
20029aa4:	a80a      	add	r0, sp, #40	@ 0x28
20029aa6:	f7fe f8a0 	bl	20027bea <mbedtls_mpi_free>
20029aaa:	a80d      	add	r0, sp, #52	@ 0x34
20029aac:	f7fe f89d 	bl	20027bea <mbedtls_mpi_free>
20029ab0:	a810      	add	r0, sp, #64	@ 0x40
20029ab2:	f7fe f89a 	bl	20027bea <mbedtls_mpi_free>
20029ab6:	a813      	add	r0, sp, #76	@ 0x4c
20029ab8:	f7fe f897 	bl	20027bea <mbedtls_mpi_free>
20029abc:	9b03      	ldr	r3, [sp, #12]
20029abe:	b135      	cbz	r5, 20029ace <mbedtls_rsa_private+0x262>
20029ac0:	a816      	add	r0, sp, #88	@ 0x58
20029ac2:	f7fe f892 	bl	20027bea <mbedtls_mpi_free>
20029ac6:	a819      	add	r0, sp, #100	@ 0x64
20029ac8:	f7fe f88f 	bl	20027bea <mbedtls_mpi_free>
20029acc:	9b03      	ldr	r3, [sp, #12]
20029ace:	b10b      	cbz	r3, 20029ad4 <mbedtls_rsa_private+0x268>
20029ad0:	f5a3 4386 	sub.w	r3, r3, #17152	@ 0x4300
20029ad4:	4618      	mov	r0, r3
20029ad6:	b01d      	add	sp, #116	@ 0x74
20029ad8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029adc:	9b03      	ldr	r3, [sp, #12]
20029ade:	3b01      	subs	r3, #1
20029ae0:	9303      	str	r3, [sp, #12]
20029ae2:	d107      	bne.n	20029af4 <mbedtls_rsa_private+0x288>
20029ae4:	4b24      	ldr	r3, [pc, #144]	@ (20029b78 <mbedtls_rsa_private+0x30c>)
20029ae6:	e7d6      	b.n	20029a96 <mbedtls_rsa_private+0x22a>
20029ae8:	230b      	movs	r3, #11
20029aea:	f104 0b98 	add.w	fp, r4, #152	@ 0x98
20029aee:	9303      	str	r3, [sp, #12]
20029af0:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029af4:	6861      	ldr	r1, [r4, #4]
20029af6:	463b      	mov	r3, r7
20029af8:	462a      	mov	r2, r5
20029afa:	4658      	mov	r0, fp
20029afc:	3901      	subs	r1, #1
20029afe:	f7ff f94e 	bl	20028d9e <mbedtls_mpi_fill_random>
20029b02:	4603      	mov	r3, r0
20029b04:	2800      	cmp	r0, #0
20029b06:	d1c6      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
20029b08:	4632      	mov	r2, r6
20029b0a:	4659      	mov	r1, fp
20029b0c:	4640      	mov	r0, r8
20029b0e:	f7ff f8c8 	bl	20028ca2 <mbedtls_mpi_gcd>
20029b12:	4603      	mov	r3, r0
20029b14:	2800      	cmp	r0, #0
20029b16:	d1be      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
20029b18:	2101      	movs	r1, #1
20029b1a:	4640      	mov	r0, r8
20029b1c:	f7fe faf7 	bl	2002810e <mbedtls_mpi_cmp_int>
20029b20:	2800      	cmp	r0, #0
20029b22:	d1db      	bne.n	20029adc <mbedtls_rsa_private+0x270>
20029b24:	4632      	mov	r2, r6
20029b26:	4659      	mov	r1, fp
20029b28:	4640      	mov	r0, r8
20029b2a:	f7ff f955 	bl	20028dd8 <mbedtls_mpi_inv_mod>
20029b2e:	4603      	mov	r3, r0
20029b30:	2800      	cmp	r0, #0
20029b32:	d1b0      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
20029b34:	f104 0368 	add.w	r3, r4, #104	@ 0x68
20029b38:	9300      	str	r3, [sp, #0]
20029b3a:	4641      	mov	r1, r8
20029b3c:	4633      	mov	r3, r6
20029b3e:	4640      	mov	r0, r8
20029b40:	f104 0214 	add.w	r2, r4, #20
20029b44:	f7fe fe99 	bl	2002887a <mbedtls_mpi_exp_mod>
20029b48:	e6fe      	b.n	20029948 <mbedtls_rsa_private+0xdc>
20029b4a:	a904      	add	r1, sp, #16
20029b4c:	4608      	mov	r0, r1
20029b4e:	f104 0298 	add.w	r2, r4, #152	@ 0x98
20029b52:	f7fe fbeb 	bl	2002832c <mbedtls_mpi_mul_mpi>
20029b56:	4603      	mov	r3, r0
20029b58:	2800      	cmp	r0, #0
20029b5a:	d19c      	bne.n	20029a96 <mbedtls_rsa_private+0x22a>
20029b5c:	a904      	add	r1, sp, #16
20029b5e:	4632      	mov	r2, r6
20029b60:	4608      	mov	r0, r1
20029b62:	f7fe fe58 	bl	20028816 <mbedtls_mpi_mod_mpi>
20029b66:	4603      	mov	r3, r0
20029b68:	2800      	cmp	r0, #0
20029b6a:	d08e      	beq.n	20029a8a <mbedtls_rsa_private+0x21e>
20029b6c:	e793      	b.n	20029a96 <mbedtls_rsa_private+0x22a>
20029b6e:	f06f 0303 	mvn.w	r3, #3
20029b72:	e790      	b.n	20029a96 <mbedtls_rsa_private+0x22a>
20029b74:	4b01      	ldr	r3, [pc, #4]	@ (20029b7c <mbedtls_rsa_private+0x310>)
20029b76:	e7ad      	b.n	20029ad4 <mbedtls_rsa_private+0x268>
20029b78:	ffffbb80 	.word	0xffffbb80
20029b7c:	ffffbf80 	.word	0xffffbf80

20029b80 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>:
20029b80:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029b84:	4698      	mov	r8, r3
20029b86:	e9dd a30c 	ldrd	sl, r3, [sp, #48]	@ 0x30
20029b8a:	f1b8 0f01 	cmp.w	r8, #1
20029b8e:	4606      	mov	r6, r0
20029b90:	460f      	mov	r7, r1
20029b92:	4691      	mov	r9, r2
20029b94:	9d0e      	ldr	r5, [sp, #56]	@ 0x38
20029b96:	d103      	bne.n	20029ba0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x20>
20029b98:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029b9c:	2a00      	cmp	r2, #0
20029b9e:	d162      	bne.n	20029c66 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ba0:	2f00      	cmp	r7, #0
20029ba2:	d060      	beq.n	20029c66 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ba4:	2b00      	cmp	r3, #0
20029ba6:	d05e      	beq.n	20029c66 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ba8:	2d00      	cmp	r5, #0
20029baa:	d05c      	beq.n	20029c66 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029bac:	f11a 0f0c 	cmn.w	sl, #12
20029bb0:	6874      	ldr	r4, [r6, #4]
20029bb2:	d858      	bhi.n	20029c66 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029bb4:	f10a 020b 	add.w	r2, sl, #11
20029bb8:	42a2      	cmp	r2, r4
20029bba:	d854      	bhi.n	20029c66 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029bbc:	4629      	mov	r1, r5
20029bbe:	2200      	movs	r2, #0
20029bc0:	eba4 040a 	sub.w	r4, r4, sl
20029bc4:	3c03      	subs	r4, #3
20029bc6:	f801 2b02 	strb.w	r2, [r1], #2
20029bca:	f1b8 0f00 	cmp.w	r8, #0
20029bce:	d131      	bne.n	20029c34 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xb4>
20029bd0:	2202      	movs	r2, #2
20029bd2:	4414      	add	r4, r2
20029bd4:	706a      	strb	r2, [r5, #1]
20029bd6:	442c      	add	r4, r5
20029bd8:	42a1      	cmp	r1, r4
20029bda:	d112      	bne.n	20029c02 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x82>
20029bdc:	2200      	movs	r2, #0
20029bde:	4620      	mov	r0, r4
20029be0:	4619      	mov	r1, r3
20029be2:	f800 2b01 	strb.w	r2, [r0], #1
20029be6:	4652      	mov	r2, sl
20029be8:	f000 fdaa 	bl	2002a740 <memcpy>
20029bec:	f1b8 0f00 	cmp.w	r8, #0
20029bf0:	d12f      	bne.n	20029c52 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xd2>
20029bf2:	462a      	mov	r2, r5
20029bf4:	4629      	mov	r1, r5
20029bf6:	4630      	mov	r0, r6
20029bf8:	b003      	add	sp, #12
20029bfa:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029bfe:	f7ff bdff 	b.w	20029800 <mbedtls_rsa_public>
20029c02:	f04f 0b64 	mov.w	fp, #100	@ 0x64
20029c06:	2201      	movs	r2, #1
20029c08:	4648      	mov	r0, r9
20029c0a:	9301      	str	r3, [sp, #4]
20029c0c:	9100      	str	r1, [sp, #0]
20029c0e:	47b8      	blx	r7
20029c10:	9900      	ldr	r1, [sp, #0]
20029c12:	9b01      	ldr	r3, [sp, #4]
20029c14:	780a      	ldrb	r2, [r1, #0]
20029c16:	b94a      	cbnz	r2, 20029c2c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xac>
20029c18:	f1bb 0b01 	subs.w	fp, fp, #1
20029c1c:	d001      	beq.n	20029c22 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029c1e:	2800      	cmp	r0, #0
20029c20:	d0f1      	beq.n	20029c06 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x86>
20029c22:	f5a0 4089 	sub.w	r0, r0, #17536	@ 0x4480
20029c26:	b003      	add	sp, #12
20029c28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029c2c:	2800      	cmp	r0, #0
20029c2e:	d1f8      	bne.n	20029c22 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029c30:	3101      	adds	r1, #1
20029c32:	e7d1      	b.n	20029bd8 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x58>
20029c34:	2001      	movs	r0, #1
20029c36:	462a      	mov	r2, r5
20029c38:	f04f 0cff 	mov.w	ip, #255	@ 0xff
20029c3c:	f802 0f01 	strb.w	r0, [r2, #1]!
20029c40:	1820      	adds	r0, r4, r0
20029c42:	4428      	add	r0, r5
20029c44:	4282      	cmp	r2, r0
20029c46:	d101      	bne.n	20029c4c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xcc>
20029c48:	440c      	add	r4, r1
20029c4a:	e7c7      	b.n	20029bdc <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x5c>
20029c4c:	f802 cf01 	strb.w	ip, [r2, #1]!
20029c50:	e7f8      	b.n	20029c44 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xc4>
20029c52:	462b      	mov	r3, r5
20029c54:	464a      	mov	r2, r9
20029c56:	4639      	mov	r1, r7
20029c58:	4630      	mov	r0, r6
20029c5a:	950c      	str	r5, [sp, #48]	@ 0x30
20029c5c:	b003      	add	sp, #12
20029c5e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029c62:	f7ff be03 	b.w	2002986c <mbedtls_rsa_private>
20029c66:	4801      	ldr	r0, [pc, #4]	@ (20029c6c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xec>)
20029c68:	e7dd      	b.n	20029c26 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa6>
20029c6a:	bf00      	nop
20029c6c:	ffffbf80 	.word	0xffffbf80

20029c70 <mbedtls_rsa_pkcs1_encrypt>:
20029c70:	b410      	push	{r4}
20029c72:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029c76:	b91c      	cbnz	r4, 20029c80 <mbedtls_rsa_pkcs1_encrypt+0x10>
20029c78:	f85d 4b04 	ldr.w	r4, [sp], #4
20029c7c:	f7ff bf80 	b.w	20029b80 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>
20029c80:	4801      	ldr	r0, [pc, #4]	@ (20029c88 <mbedtls_rsa_pkcs1_encrypt+0x18>)
20029c82:	f85d 4b04 	ldr.w	r4, [sp], #4
20029c86:	4770      	bx	lr
20029c88:	ffffbf00 	.word	0xffffbf00

20029c8c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>:
20029c8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20029c90:	4698      	mov	r8, r3
20029c92:	f5ad 6d81 	sub.w	sp, sp, #1032	@ 0x408
20029c96:	f1b8 0f01 	cmp.w	r8, #1
20029c9a:	f8dd 3424 	ldr.w	r3, [sp, #1060]	@ 0x424
20029c9e:	d103      	bne.n	20029ca8 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x1c>
20029ca0:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029ca4:	2c00      	cmp	r4, #0
20029ca6:	d17c      	bne.n	20029da2 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029ca8:	6845      	ldr	r5, [r0, #4]
20029caa:	f1a5 0410 	sub.w	r4, r5, #16
20029cae:	f5b4 7f7c 	cmp.w	r4, #1008	@ 0x3f0
20029cb2:	d876      	bhi.n	20029da2 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029cb4:	ae02      	add	r6, sp, #8
20029cb6:	f1b8 0f00 	cmp.w	r8, #0
20029cba:	d153      	bne.n	20029d64 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xd8>
20029cbc:	4632      	mov	r2, r6
20029cbe:	4619      	mov	r1, r3
20029cc0:	f7ff fd9e 	bl	20029800 <mbedtls_rsa_public>
20029cc4:	4604      	mov	r4, r0
20029cc6:	2800      	cmp	r0, #0
20029cc8:	d140      	bne.n	20029d4c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029cca:	f1b8 0f01 	cmp.w	r8, #1
20029cce:	7831      	ldrb	r1, [r6, #0]
20029cd0:	7872      	ldrb	r2, [r6, #1]
20029cd2:	f1a5 0703 	sub.w	r7, r5, #3
20029cd6:	d149      	bne.n	20029d6c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xe0>
20029cd8:	f082 0202 	eor.w	r2, r2, #2
20029cdc:	ea41 0302 	orr.w	r3, r1, r2
20029ce0:	4684      	mov	ip, r0
20029ce2:	4686      	mov	lr, r0
20029ce4:	4602      	mov	r2, r0
20029ce6:	f10d 0109 	add.w	r1, sp, #9
20029cea:	f811 0f01 	ldrb.w	r0, [r1, #1]!
20029cee:	f10e 0e01 	add.w	lr, lr, #1
20029cf2:	f1c0 0800 	rsb	r8, r0, #0
20029cf6:	ea40 0008 	orr.w	r0, r0, r8
20029cfa:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029cfe:	f080 0001 	eor.w	r0, r0, #1
20029d02:	ea4c 0c00 	orr.w	ip, ip, r0
20029d06:	f1cc 0000 	rsb	r0, ip, #0
20029d0a:	ea4c 0000 	orr.w	r0, ip, r0
20029d0e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029d12:	f080 0001 	eor.w	r0, r0, #1
20029d16:	45be      	cmp	lr, r7
20029d18:	4402      	add	r2, r0
20029d1a:	d3e6      	bcc.n	20029cea <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x5e>
20029d1c:	f10d 000a 	add.w	r0, sp, #10
20029d20:	1881      	adds	r1, r0, r2
20029d22:	5c80      	ldrb	r0, [r0, r2]
20029d24:	3101      	adds	r1, #1
20029d26:	4303      	orrs	r3, r0
20029d28:	2a07      	cmp	r2, #7
20029d2a:	bf98      	it	ls
20029d2c:	f043 0301 	orrls.w	r3, r3, #1
20029d30:	bb9b      	cbnz	r3, 20029d9a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x10e>
20029d32:	1b8b      	subs	r3, r1, r6
20029d34:	1aea      	subs	r2, r5, r3
20029d36:	f8dd 342c 	ldr.w	r3, [sp, #1068]	@ 0x42c
20029d3a:	429a      	cmp	r2, r3
20029d3c:	d82f      	bhi.n	20029d9e <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x112>
20029d3e:	f8dd 3420 	ldr.w	r3, [sp, #1056]	@ 0x420
20029d42:	f8dd 0428 	ldr.w	r0, [sp, #1064]	@ 0x428
20029d46:	601a      	str	r2, [r3, #0]
20029d48:	f000 fcfa 	bl	2002a740 <memcpy>
20029d4c:	2300      	movs	r3, #0
20029d4e:	461a      	mov	r2, r3
20029d50:	54f2      	strb	r2, [r6, r3]
20029d52:	3301      	adds	r3, #1
20029d54:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
20029d58:	d1fa      	bne.n	20029d50 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc4>
20029d5a:	4620      	mov	r0, r4
20029d5c:	f50d 6d81 	add.w	sp, sp, #1032	@ 0x408
20029d60:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20029d64:	9600      	str	r6, [sp, #0]
20029d66:	f7ff fd81 	bl	2002986c <mbedtls_rsa_private>
20029d6a:	e7ab      	b.n	20029cc4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x38>
20029d6c:	f082 0201 	eor.w	r2, r2, #1
20029d70:	ea41 0302 	orr.w	r3, r1, r2
20029d74:	4684      	mov	ip, r0
20029d76:	4602      	mov	r2, r0
20029d78:	f10d 0109 	add.w	r1, sp, #9
20029d7c:	f811 ef01 	ldrb.w	lr, [r1, #1]!
20029d80:	3001      	adds	r0, #1
20029d82:	f1be 0fff 	cmp.w	lr, #255	@ 0xff
20029d86:	bf18      	it	ne
20029d88:	f04c 0c01 	orrne.w	ip, ip, #1
20029d8c:	42b8      	cmp	r0, r7
20029d8e:	f08c 0e01 	eor.w	lr, ip, #1
20029d92:	fa52 f28e 	uxtab	r2, r2, lr
20029d96:	d3f1      	bcc.n	20029d7c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xf0>
20029d98:	e7c0      	b.n	20029d1c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x90>
20029d9a:	4c03      	ldr	r4, [pc, #12]	@ (20029da8 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x11c>)
20029d9c:	e7d6      	b.n	20029d4c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029d9e:	4c03      	ldr	r4, [pc, #12]	@ (20029dac <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x120>)
20029da0:	e7d4      	b.n	20029d4c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029da2:	4c03      	ldr	r4, [pc, #12]	@ (20029db0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x124>)
20029da4:	e7d9      	b.n	20029d5a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xce>
20029da6:	bf00      	nop
20029da8:	ffffbf00 	.word	0xffffbf00
20029dac:	ffffbc00 	.word	0xffffbc00
20029db0:	ffffbf80 	.word	0xffffbf80

20029db4 <mbedtls_rsa_pkcs1_decrypt>:
20029db4:	b410      	push	{r4}
20029db6:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029dba:	b91c      	cbnz	r4, 20029dc4 <mbedtls_rsa_pkcs1_decrypt+0x10>
20029dbc:	f85d 4b04 	ldr.w	r4, [sp], #4
20029dc0:	f7ff bf64 	b.w	20029c8c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>
20029dc4:	4801      	ldr	r0, [pc, #4]	@ (20029dcc <mbedtls_rsa_pkcs1_decrypt+0x18>)
20029dc6:	f85d 4b04 	ldr.w	r4, [sp], #4
20029dca:	4770      	bx	lr
20029dcc:	ffffbf00 	.word	0xffffbf00

20029dd0 <mbedtls_rsa_rsassa_pkcs1_v15_sign>:
20029dd0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029dd4:	4692      	mov	sl, r2
20029dd6:	2200      	movs	r2, #0
20029dd8:	b089      	sub	sp, #36	@ 0x24
20029dda:	2b01      	cmp	r3, #1
20029ddc:	4604      	mov	r4, r0
20029dde:	461f      	mov	r7, r3
20029de0:	e9cd 2206 	strd	r2, r2, [sp, #24]
20029de4:	f89d 8048 	ldrb.w	r8, [sp, #72]	@ 0x48
20029de8:	f8dd 904c 	ldr.w	r9, [sp, #76]	@ 0x4c
20029dec:	9e15      	ldr	r6, [sp, #84]	@ 0x54
20029dee:	9102      	str	r1, [sp, #8]
20029df0:	d107      	bne.n	20029e02 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029df2:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029df6:	b122      	cbz	r2, 20029e02 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029df8:	4d59      	ldr	r5, [pc, #356]	@ (20029f60 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x190>)
20029dfa:	4628      	mov	r0, r5
20029dfc:	b009      	add	sp, #36	@ 0x24
20029dfe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029e02:	f8d4 b004 	ldr.w	fp, [r4, #4]
20029e06:	f1ab 0503 	sub.w	r5, fp, #3
20029e0a:	f1b8 0f00 	cmp.w	r8, #0
20029e0e:	d014      	beq.n	20029e3a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x6a>
20029e10:	4640      	mov	r0, r8
20029e12:	f7fb ff77 	bl	20025d04 <mbedtls_md_info_from_type>
20029e16:	4681      	mov	r9, r0
20029e18:	2800      	cmp	r0, #0
20029e1a:	d0ed      	beq.n	20029df8 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029e1c:	4640      	mov	r0, r8
20029e1e:	aa06      	add	r2, sp, #24
20029e20:	a907      	add	r1, sp, #28
20029e22:	f7ff f9d3 	bl	200291cc <mbedtls_oid_get_oid_by_md>
20029e26:	2800      	cmp	r0, #0
20029e28:	d1e6      	bne.n	20029df8 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029e2a:	9a06      	ldr	r2, [sp, #24]
20029e2c:	4648      	mov	r0, r9
20029e2e:	1aaa      	subs	r2, r5, r2
20029e30:	f1a2 050a 	sub.w	r5, r2, #10
20029e34:	f7fb ff72 	bl	20025d1c <mbedtls_md_get_size>
20029e38:	4681      	mov	r9, r0
20029e3a:	eba5 0209 	sub.w	r2, r5, r9
20029e3e:	2a07      	cmp	r2, #7
20029e40:	d9da      	bls.n	20029df8 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029e42:	4593      	cmp	fp, r2
20029e44:	d3d8      	bcc.n	20029df8 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029e46:	46b3      	mov	fp, r6
20029e48:	2500      	movs	r5, #0
20029e4a:	2101      	movs	r1, #1
20029e4c:	f80b 5b02 	strb.w	r5, [fp], #2
20029e50:	4658      	mov	r0, fp
20029e52:	7071      	strb	r1, [r6, #1]
20029e54:	21ff      	movs	r1, #255	@ 0xff
20029e56:	9203      	str	r2, [sp, #12]
20029e58:	f000 fc58 	bl	2002a70c <memset>
20029e5c:	9a03      	ldr	r2, [sp, #12]
20029e5e:	eb0b 0002 	add.w	r0, fp, r2
20029e62:	f80b 5002 	strb.w	r5, [fp, r2]
20029e66:	f1b8 0f00 	cmp.w	r8, #0
20029e6a:	d10c      	bne.n	20029e86 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xb6>
20029e6c:	464a      	mov	r2, r9
20029e6e:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029e70:	3001      	adds	r0, #1
20029e72:	f000 fc65 	bl	2002a740 <memcpy>
20029e76:	bb8f      	cbnz	r7, 20029edc <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x10c>
20029e78:	4632      	mov	r2, r6
20029e7a:	4631      	mov	r1, r6
20029e7c:	4620      	mov	r0, r4
20029e7e:	f7ff fcbf 	bl	20029800 <mbedtls_rsa_public>
20029e82:	4605      	mov	r5, r0
20029e84:	e7b9      	b.n	20029dfa <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029e86:	2130      	movs	r1, #48	@ 0x30
20029e88:	7041      	strb	r1, [r0, #1]
20029e8a:	9a06      	ldr	r2, [sp, #24]
20029e8c:	70c1      	strb	r1, [r0, #3]
20029e8e:	3208      	adds	r2, #8
20029e90:	fa52 f289 	uxtab	r2, r2, r9
20029e94:	7082      	strb	r2, [r0, #2]
20029e96:	9a06      	ldr	r2, [sp, #24]
20029e98:	f100 0807 	add.w	r8, r0, #7
20029e9c:	b2d1      	uxtb	r1, r2
20029e9e:	f101 0c04 	add.w	ip, r1, #4
20029ea2:	f880 c004 	strb.w	ip, [r0, #4]
20029ea6:	f04f 0c06 	mov.w	ip, #6
20029eaa:	7181      	strb	r1, [r0, #6]
20029eac:	f880 c005 	strb.w	ip, [r0, #5]
20029eb0:	9907      	ldr	r1, [sp, #28]
20029eb2:	4640      	mov	r0, r8
20029eb4:	9203      	str	r2, [sp, #12]
20029eb6:	f000 fc43 	bl	2002a740 <memcpy>
20029eba:	2105      	movs	r1, #5
20029ebc:	9a03      	ldr	r2, [sp, #12]
20029ebe:	fa5f fb89 	uxtb.w	fp, r9
20029ec2:	eb08 0002 	add.w	r0, r8, r2
20029ec6:	f808 1002 	strb.w	r1, [r8, r2]
20029eca:	2204      	movs	r2, #4
20029ecc:	7045      	strb	r5, [r0, #1]
20029ece:	7082      	strb	r2, [r0, #2]
20029ed0:	f880 b003 	strb.w	fp, [r0, #3]
20029ed4:	464a      	mov	r2, r9
20029ed6:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029ed8:	3004      	adds	r0, #4
20029eda:	e7ca      	b.n	20029e72 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xa2>
20029edc:	6865      	ldr	r5, [r4, #4]
20029ede:	2001      	movs	r0, #1
20029ee0:	4629      	mov	r1, r5
20029ee2:	f000 fb31 	bl	2002a548 <calloc>
20029ee6:	4607      	mov	r7, r0
20029ee8:	b140      	cbz	r0, 20029efc <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x12c>
20029eea:	4629      	mov	r1, r5
20029eec:	2001      	movs	r0, #1
20029eee:	f000 fb2b 	bl	2002a548 <calloc>
20029ef2:	4680      	mov	r8, r0
20029ef4:	b928      	cbnz	r0, 20029f02 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x132>
20029ef6:	4638      	mov	r0, r7
20029ef8:	f000 fb42 	bl	2002a580 <free>
20029efc:	f06f 050f 	mvn.w	r5, #15
20029f00:	e77b      	b.n	20029dfa <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029f02:	4633      	mov	r3, r6
20029f04:	4652      	mov	r2, sl
20029f06:	4620      	mov	r0, r4
20029f08:	9902      	ldr	r1, [sp, #8]
20029f0a:	9700      	str	r7, [sp, #0]
20029f0c:	f7ff fcae 	bl	2002986c <mbedtls_rsa_private>
20029f10:	4605      	mov	r5, r0
20029f12:	b9a0      	cbnz	r0, 20029f3e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029f14:	4642      	mov	r2, r8
20029f16:	4639      	mov	r1, r7
20029f18:	4620      	mov	r0, r4
20029f1a:	f7ff fc71 	bl	20029800 <mbedtls_rsa_public>
20029f1e:	4605      	mov	r5, r0
20029f20:	b968      	cbnz	r0, 20029f3e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029f22:	4601      	mov	r1, r0
20029f24:	4603      	mov	r3, r0
20029f26:	6862      	ldr	r2, [r4, #4]
20029f28:	429a      	cmp	r2, r3
20029f2a:	d10f      	bne.n	20029f4c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x17c>
20029f2c:	f88d 1017 	strb.w	r1, [sp, #23]
20029f30:	f89d 3017 	ldrb.w	r3, [sp, #23]
20029f34:	b98b      	cbnz	r3, 20029f5a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x18a>
20029f36:	4639      	mov	r1, r7
20029f38:	4630      	mov	r0, r6
20029f3a:	f000 fc01 	bl	2002a740 <memcpy>
20029f3e:	4638      	mov	r0, r7
20029f40:	f000 fb1e 	bl	2002a580 <free>
20029f44:	4640      	mov	r0, r8
20029f46:	f000 fb1b 	bl	2002a580 <free>
20029f4a:	e756      	b.n	20029dfa <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029f4c:	f818 0003 	ldrb.w	r0, [r8, r3]
20029f50:	5cf4      	ldrb	r4, [r6, r3]
20029f52:	3301      	adds	r3, #1
20029f54:	4060      	eors	r0, r4
20029f56:	4301      	orrs	r1, r0
20029f58:	e7e6      	b.n	20029f28 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x158>
20029f5a:	4d02      	ldr	r5, [pc, #8]	@ (20029f64 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x194>)
20029f5c:	e7ef      	b.n	20029f3e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029f5e:	bf00      	nop
20029f60:	ffffbf80 	.word	0xffffbf80
20029f64:	ffffbd00 	.word	0xffffbd00

20029f68 <mbedtls_rsa_pkcs1_sign>:
20029f68:	b430      	push	{r4, r5}
20029f6a:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
20029f6e:	f89d 4008 	ldrb.w	r4, [sp, #8]
20029f72:	b91d      	cbnz	r5, 20029f7c <mbedtls_rsa_pkcs1_sign+0x14>
20029f74:	9402      	str	r4, [sp, #8]
20029f76:	bc30      	pop	{r4, r5}
20029f78:	f7ff bf2a 	b.w	20029dd0 <mbedtls_rsa_rsassa_pkcs1_v15_sign>
20029f7c:	4801      	ldr	r0, [pc, #4]	@ (20029f84 <mbedtls_rsa_pkcs1_sign+0x1c>)
20029f7e:	bc30      	pop	{r4, r5}
20029f80:	4770      	bx	lr
20029f82:	bf00      	nop
20029f84:	ffffbf00 	.word	0xffffbf00

20029f88 <mbedtls_rsa_rsassa_pkcs1_v15_verify>:
20029f88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029f8c:	461c      	mov	r4, r3
20029f8e:	f2ad 4d2c 	subw	sp, sp, #1068	@ 0x42c
20029f92:	f89d 3450 	ldrb.w	r3, [sp, #1104]	@ 0x450
20029f96:	2c01      	cmp	r4, #1
20029f98:	9303      	str	r3, [sp, #12]
20029f9a:	f8dd 8454 	ldr.w	r8, [sp, #1108]	@ 0x454
20029f9e:	f8dd 345c 	ldr.w	r3, [sp, #1116]	@ 0x45c
20029fa2:	d108      	bne.n	20029fb6 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
20029fa4:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
20029fa8:	b12d      	cbz	r5, 20029fb6 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
20029faa:	4d60      	ldr	r5, [pc, #384]	@ (2002a12c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a4>)
20029fac:	4628      	mov	r0, r5
20029fae:	f20d 4d2c 	addw	sp, sp, #1068	@ 0x42c
20029fb2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029fb6:	6846      	ldr	r6, [r0, #4]
20029fb8:	f1a6 0510 	sub.w	r5, r6, #16
20029fbc:	f5b5 7f7c 	cmp.w	r5, #1008	@ 0x3f0
20029fc0:	d8f3      	bhi.n	20029faa <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
20029fc2:	af0a      	add	r7, sp, #40	@ 0x28
20029fc4:	b954      	cbnz	r4, 20029fdc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x54>
20029fc6:	463a      	mov	r2, r7
20029fc8:	4619      	mov	r1, r3
20029fca:	f7ff fc19 	bl	20029800 <mbedtls_rsa_public>
20029fce:	4605      	mov	r5, r0
20029fd0:	2800      	cmp	r0, #0
20029fd2:	d1eb      	bne.n	20029fac <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
20029fd4:	783b      	ldrb	r3, [r7, #0]
20029fd6:	b12b      	cbz	r3, 20029fe4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x5c>
20029fd8:	4d55      	ldr	r5, [pc, #340]	@ (2002a130 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a8>)
20029fda:	e7e7      	b.n	20029fac <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
20029fdc:	9700      	str	r7, [sp, #0]
20029fde:	f7ff fc45 	bl	2002986c <mbedtls_rsa_private>
20029fe2:	e7f4      	b.n	20029fce <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x46>
20029fe4:	787b      	ldrb	r3, [r7, #1]
20029fe6:	ac06      	add	r4, sp, #24
20029fe8:	f10d 002a 	add.w	r0, sp, #42	@ 0x2a
20029fec:	2b01      	cmp	r3, #1
20029fee:	6020      	str	r0, [r4, #0]
20029ff0:	d1f2      	bne.n	20029fd8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
20029ff2:	1e73      	subs	r3, r6, #1
20029ff4:	443b      	add	r3, r7
20029ff6:	7802      	ldrb	r2, [r0, #0]
20029ff8:	b992      	cbnz	r2, 2002a020 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x98>
20029ffa:	3001      	adds	r0, #1
20029ffc:	1bc7      	subs	r7, r0, r7
20029ffe:	2f0a      	cmp	r7, #10
2002a000:	6020      	str	r0, [r4, #0]
2002a002:	dde9      	ble.n	20029fd8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a004:	1bf6      	subs	r6, r6, r7
2002a006:	4546      	cmp	r6, r8
2002a008:	d112      	bne.n	2002a030 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a00a:	9b03      	ldr	r3, [sp, #12]
2002a00c:	b983      	cbnz	r3, 2002a030 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a00e:	4642      	mov	r2, r8
2002a010:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a014:	f000 fb6a 	bl	2002a6ec <memcmp>
2002a018:	2800      	cmp	r0, #0
2002a01a:	d0c7      	beq.n	20029fac <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a01c:	4d45      	ldr	r5, [pc, #276]	@ (2002a134 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1ac>)
2002a01e:	e7c5      	b.n	20029fac <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a020:	4298      	cmp	r0, r3
2002a022:	d2d9      	bcs.n	20029fd8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a024:	2aff      	cmp	r2, #255	@ 0xff
2002a026:	f100 0001 	add.w	r0, r0, #1
2002a02a:	d1d5      	bne.n	20029fd8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a02c:	6020      	str	r0, [r4, #0]
2002a02e:	e7e2      	b.n	20029ff6 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x6e>
2002a030:	9803      	ldr	r0, [sp, #12]
2002a032:	f7fb fe67 	bl	20025d04 <mbedtls_md_info_from_type>
2002a036:	2800      	cmp	r0, #0
2002a038:	d0b7      	beq.n	20029faa <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a03a:	f7fb fe6f 	bl	20025d1c <mbedtls_md_get_size>
2002a03e:	f8d4 a000 	ldr.w	sl, [r4]
2002a042:	af05      	add	r7, sp, #20
2002a044:	eb0a 0806 	add.w	r8, sl, r6
2002a048:	4681      	mov	r9, r0
2002a04a:	2330      	movs	r3, #48	@ 0x30
2002a04c:	463a      	mov	r2, r7
2002a04e:	4641      	mov	r1, r8
2002a050:	4620      	mov	r0, r4
2002a052:	f7fd fb95 	bl	20027780 <mbedtls_asn1_get_tag>
2002a056:	2800      	cmp	r0, #0
2002a058:	d1e0      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a05a:	f8d4 b000 	ldr.w	fp, [r4]
2002a05e:	f10a 0a02 	add.w	sl, sl, #2
2002a062:	45d3      	cmp	fp, sl
2002a064:	d1da      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a066:	683b      	ldr	r3, [r7, #0]
2002a068:	3302      	adds	r3, #2
2002a06a:	42b3      	cmp	r3, r6
2002a06c:	d1d6      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a06e:	2330      	movs	r3, #48	@ 0x30
2002a070:	463a      	mov	r2, r7
2002a072:	4641      	mov	r1, r8
2002a074:	4620      	mov	r0, r4
2002a076:	f7fd fb83 	bl	20027780 <mbedtls_asn1_get_tag>
2002a07a:	2800      	cmp	r0, #0
2002a07c:	d1ce      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a07e:	f8d4 a000 	ldr.w	sl, [r4]
2002a082:	f10b 0b02 	add.w	fp, fp, #2
2002a086:	45da      	cmp	sl, fp
2002a088:	d1c8      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a08a:	683b      	ldr	r3, [r7, #0]
2002a08c:	3306      	adds	r3, #6
2002a08e:	444b      	add	r3, r9
2002a090:	42b3      	cmp	r3, r6
2002a092:	d1c3      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a094:	2306      	movs	r3, #6
2002a096:	4641      	mov	r1, r8
2002a098:	4620      	mov	r0, r4
2002a09a:	aa08      	add	r2, sp, #32
2002a09c:	ae07      	add	r6, sp, #28
2002a09e:	f7fd fb6f 	bl	20027780 <mbedtls_asn1_get_tag>
2002a0a2:	2800      	cmp	r0, #0
2002a0a4:	d1ba      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0a6:	6823      	ldr	r3, [r4, #0]
2002a0a8:	f10a 0a02 	add.w	sl, sl, #2
2002a0ac:	4553      	cmp	r3, sl
2002a0ae:	d1b5      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0b0:	9a08      	ldr	r2, [sp, #32]
2002a0b2:	f10d 0a13 	add.w	sl, sp, #19
2002a0b6:	9309      	str	r3, [sp, #36]	@ 0x24
2002a0b8:	4651      	mov	r1, sl
2002a0ba:	4413      	add	r3, r2
2002a0bc:	4630      	mov	r0, r6
2002a0be:	6023      	str	r3, [r4, #0]
2002a0c0:	f7ff f86a 	bl	20029198 <mbedtls_oid_get_md_alg>
2002a0c4:	2800      	cmp	r0, #0
2002a0c6:	d1a9      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0c8:	f89d 3013 	ldrb.w	r3, [sp, #19]
2002a0cc:	9a03      	ldr	r2, [sp, #12]
2002a0ce:	4293      	cmp	r3, r2
2002a0d0:	d1a4      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0d2:	2305      	movs	r3, #5
2002a0d4:	463a      	mov	r2, r7
2002a0d6:	4641      	mov	r1, r8
2002a0d8:	4620      	mov	r0, r4
2002a0da:	f8d4 a000 	ldr.w	sl, [r4]
2002a0de:	f7fd fb4f 	bl	20027780 <mbedtls_asn1_get_tag>
2002a0e2:	2800      	cmp	r0, #0
2002a0e4:	d19a      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0e6:	6826      	ldr	r6, [r4, #0]
2002a0e8:	f10a 0a02 	add.w	sl, sl, #2
2002a0ec:	4556      	cmp	r6, sl
2002a0ee:	d195      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0f0:	2304      	movs	r3, #4
2002a0f2:	463a      	mov	r2, r7
2002a0f4:	4641      	mov	r1, r8
2002a0f6:	4620      	mov	r0, r4
2002a0f8:	f7fd fb42 	bl	20027780 <mbedtls_asn1_get_tag>
2002a0fc:	2800      	cmp	r0, #0
2002a0fe:	d18d      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a100:	6824      	ldr	r4, [r4, #0]
2002a102:	3602      	adds	r6, #2
2002a104:	42b4      	cmp	r4, r6
2002a106:	d189      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a108:	683b      	ldr	r3, [r7, #0]
2002a10a:	454b      	cmp	r3, r9
2002a10c:	d186      	bne.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a10e:	464a      	mov	r2, r9
2002a110:	4620      	mov	r0, r4
2002a112:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a116:	f000 fae9 	bl	2002a6ec <memcmp>
2002a11a:	2800      	cmp	r0, #0
2002a11c:	f47f af7e 	bne.w	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a120:	444c      	add	r4, r9
2002a122:	45a0      	cmp	r8, r4
2002a124:	f43f af42 	beq.w	20029fac <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a128:	e778      	b.n	2002a01c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a12a:	bf00      	nop
2002a12c:	ffffbf80 	.word	0xffffbf80
2002a130:	ffffbf00 	.word	0xffffbf00
2002a134:	ffffbc80 	.word	0xffffbc80

2002a138 <mbedtls_rsa_pkcs1_verify>:
2002a138:	b430      	push	{r4, r5}
2002a13a:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a13e:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a142:	b91d      	cbnz	r5, 2002a14c <mbedtls_rsa_pkcs1_verify+0x14>
2002a144:	9402      	str	r4, [sp, #8]
2002a146:	bc30      	pop	{r4, r5}
2002a148:	f7ff bf1e 	b.w	20029f88 <mbedtls_rsa_rsassa_pkcs1_v15_verify>
2002a14c:	4801      	ldr	r0, [pc, #4]	@ (2002a154 <mbedtls_rsa_pkcs1_verify+0x1c>)
2002a14e:	bc30      	pop	{r4, r5}
2002a150:	4770      	bx	lr
2002a152:	bf00      	nop
2002a154:	ffffbf00 	.word	0xffffbf00

2002a158 <mbedtls_rsa_free>:
2002a158:	b510      	push	{r4, lr}
2002a15a:	4604      	mov	r4, r0
2002a15c:	308c      	adds	r0, #140	@ 0x8c
2002a15e:	f7fd fd44 	bl	20027bea <mbedtls_mpi_free>
2002a162:	f104 0098 	add.w	r0, r4, #152	@ 0x98
2002a166:	f7fd fd40 	bl	20027bea <mbedtls_mpi_free>
2002a16a:	f104 0080 	add.w	r0, r4, #128	@ 0x80
2002a16e:	f7fd fd3c 	bl	20027bea <mbedtls_mpi_free>
2002a172:	f104 0074 	add.w	r0, r4, #116	@ 0x74
2002a176:	f7fd fd38 	bl	20027bea <mbedtls_mpi_free>
2002a17a:	f104 0068 	add.w	r0, r4, #104	@ 0x68
2002a17e:	f7fd fd34 	bl	20027bea <mbedtls_mpi_free>
2002a182:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
2002a186:	f7fd fd30 	bl	20027bea <mbedtls_mpi_free>
2002a18a:	f104 0050 	add.w	r0, r4, #80	@ 0x50
2002a18e:	f7fd fd2c 	bl	20027bea <mbedtls_mpi_free>
2002a192:	f104 0044 	add.w	r0, r4, #68	@ 0x44
2002a196:	f7fd fd28 	bl	20027bea <mbedtls_mpi_free>
2002a19a:	f104 0038 	add.w	r0, r4, #56	@ 0x38
2002a19e:	f7fd fd24 	bl	20027bea <mbedtls_mpi_free>
2002a1a2:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
2002a1a6:	f7fd fd20 	bl	20027bea <mbedtls_mpi_free>
2002a1aa:	f104 0020 	add.w	r0, r4, #32
2002a1ae:	f7fd fd1c 	bl	20027bea <mbedtls_mpi_free>
2002a1b2:	f104 0014 	add.w	r0, r4, #20
2002a1b6:	f7fd fd18 	bl	20027bea <mbedtls_mpi_free>
2002a1ba:	f104 0008 	add.w	r0, r4, #8
2002a1be:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002a1c2:	f7fd bd12 	b.w	20027bea <mbedtls_mpi_free>
	...

2002a1c8 <__aeabi_uldivmod>:
2002a1c8:	b953      	cbnz	r3, 2002a1e0 <__aeabi_uldivmod+0x18>
2002a1ca:	b94a      	cbnz	r2, 2002a1e0 <__aeabi_uldivmod+0x18>
2002a1cc:	2900      	cmp	r1, #0
2002a1ce:	bf08      	it	eq
2002a1d0:	2800      	cmpeq	r0, #0
2002a1d2:	bf1c      	itt	ne
2002a1d4:	f04f 31ff 	movne.w	r1, #4294967295
2002a1d8:	f04f 30ff 	movne.w	r0, #4294967295
2002a1dc:	f000 b9b2 	b.w	2002a544 <__aeabi_idiv0>
2002a1e0:	f1ad 0c08 	sub.w	ip, sp, #8
2002a1e4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
2002a1e8:	f000 f806 	bl	2002a1f8 <__udivmoddi4>
2002a1ec:	f8dd e004 	ldr.w	lr, [sp, #4]
2002a1f0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
2002a1f4:	b004      	add	sp, #16
2002a1f6:	4770      	bx	lr

2002a1f8 <__udivmoddi4>:
2002a1f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a1fc:	468c      	mov	ip, r1
2002a1fe:	9e09      	ldr	r6, [sp, #36]	@ 0x24
2002a200:	4604      	mov	r4, r0
2002a202:	460f      	mov	r7, r1
2002a204:	2b00      	cmp	r3, #0
2002a206:	d148      	bne.n	2002a29a <__udivmoddi4+0xa2>
2002a208:	428a      	cmp	r2, r1
2002a20a:	4615      	mov	r5, r2
2002a20c:	d95e      	bls.n	2002a2cc <__udivmoddi4+0xd4>
2002a20e:	fab2 f382 	clz	r3, r2
2002a212:	b13b      	cbz	r3, 2002a224 <__udivmoddi4+0x2c>
2002a214:	f1c3 0220 	rsb	r2, r3, #32
2002a218:	409f      	lsls	r7, r3
2002a21a:	409d      	lsls	r5, r3
2002a21c:	409c      	lsls	r4, r3
2002a21e:	fa20 f202 	lsr.w	r2, r0, r2
2002a222:	4317      	orrs	r7, r2
2002a224:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a228:	fa1f fc85 	uxth.w	ip, r5
2002a22c:	0c22      	lsrs	r2, r4, #16
2002a22e:	fbb7 f1fe 	udiv	r1, r7, lr
2002a232:	fb0e 7711 	mls	r7, lr, r1, r7
2002a236:	fb01 f00c 	mul.w	r0, r1, ip
2002a23a:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
2002a23e:	4290      	cmp	r0, r2
2002a240:	d907      	bls.n	2002a252 <__udivmoddi4+0x5a>
2002a242:	18aa      	adds	r2, r5, r2
2002a244:	f101 37ff 	add.w	r7, r1, #4294967295
2002a248:	d202      	bcs.n	2002a250 <__udivmoddi4+0x58>
2002a24a:	4290      	cmp	r0, r2
2002a24c:	f200 8158 	bhi.w	2002a500 <__udivmoddi4+0x308>
2002a250:	4639      	mov	r1, r7
2002a252:	1a12      	subs	r2, r2, r0
2002a254:	b2a4      	uxth	r4, r4
2002a256:	fbb2 f0fe 	udiv	r0, r2, lr
2002a25a:	fb0e 2210 	mls	r2, lr, r0, r2
2002a25e:	fb00 fc0c 	mul.w	ip, r0, ip
2002a262:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a266:	45a4      	cmp	ip, r4
2002a268:	d90b      	bls.n	2002a282 <__udivmoddi4+0x8a>
2002a26a:	192c      	adds	r4, r5, r4
2002a26c:	f100 32ff 	add.w	r2, r0, #4294967295
2002a270:	bf2c      	ite	cs
2002a272:	2701      	movcs	r7, #1
2002a274:	2700      	movcc	r7, #0
2002a276:	45a4      	cmp	ip, r4
2002a278:	d902      	bls.n	2002a280 <__udivmoddi4+0x88>
2002a27a:	2f00      	cmp	r7, #0
2002a27c:	f000 8143 	beq.w	2002a506 <__udivmoddi4+0x30e>
2002a280:	4610      	mov	r0, r2
2002a282:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
2002a286:	eba4 040c 	sub.w	r4, r4, ip
2002a28a:	2100      	movs	r1, #0
2002a28c:	b11e      	cbz	r6, 2002a296 <__udivmoddi4+0x9e>
2002a28e:	40dc      	lsrs	r4, r3
2002a290:	2300      	movs	r3, #0
2002a292:	e9c6 4300 	strd	r4, r3, [r6]
2002a296:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a29a:	428b      	cmp	r3, r1
2002a29c:	d906      	bls.n	2002a2ac <__udivmoddi4+0xb4>
2002a29e:	b10e      	cbz	r6, 2002a2a4 <__udivmoddi4+0xac>
2002a2a0:	e9c6 0100 	strd	r0, r1, [r6]
2002a2a4:	2100      	movs	r1, #0
2002a2a6:	4608      	mov	r0, r1
2002a2a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a2ac:	fab3 f183 	clz	r1, r3
2002a2b0:	2900      	cmp	r1, #0
2002a2b2:	d151      	bne.n	2002a358 <__udivmoddi4+0x160>
2002a2b4:	4563      	cmp	r3, ip
2002a2b6:	f0c0 8116 	bcc.w	2002a4e6 <__udivmoddi4+0x2ee>
2002a2ba:	4282      	cmp	r2, r0
2002a2bc:	f240 8113 	bls.w	2002a4e6 <__udivmoddi4+0x2ee>
2002a2c0:	4608      	mov	r0, r1
2002a2c2:	2e00      	cmp	r6, #0
2002a2c4:	d0e7      	beq.n	2002a296 <__udivmoddi4+0x9e>
2002a2c6:	e9c6 4700 	strd	r4, r7, [r6]
2002a2ca:	e7e4      	b.n	2002a296 <__udivmoddi4+0x9e>
2002a2cc:	2a00      	cmp	r2, #0
2002a2ce:	f000 80af 	beq.w	2002a430 <__udivmoddi4+0x238>
2002a2d2:	fab2 f382 	clz	r3, r2
2002a2d6:	2b00      	cmp	r3, #0
2002a2d8:	f040 80c2 	bne.w	2002a460 <__udivmoddi4+0x268>
2002a2dc:	1a8a      	subs	r2, r1, r2
2002a2de:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a2e2:	b2af      	uxth	r7, r5
2002a2e4:	2101      	movs	r1, #1
2002a2e6:	0c20      	lsrs	r0, r4, #16
2002a2e8:	fbb2 fcfe 	udiv	ip, r2, lr
2002a2ec:	fb0e 221c 	mls	r2, lr, ip, r2
2002a2f0:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
2002a2f4:	fb07 f00c 	mul.w	r0, r7, ip
2002a2f8:	4290      	cmp	r0, r2
2002a2fa:	d90e      	bls.n	2002a31a <__udivmoddi4+0x122>
2002a2fc:	18aa      	adds	r2, r5, r2
2002a2fe:	f10c 38ff 	add.w	r8, ip, #4294967295
2002a302:	bf2c      	ite	cs
2002a304:	f04f 0901 	movcs.w	r9, #1
2002a308:	f04f 0900 	movcc.w	r9, #0
2002a30c:	4290      	cmp	r0, r2
2002a30e:	d903      	bls.n	2002a318 <__udivmoddi4+0x120>
2002a310:	f1b9 0f00 	cmp.w	r9, #0
2002a314:	f000 80f0 	beq.w	2002a4f8 <__udivmoddi4+0x300>
2002a318:	46c4      	mov	ip, r8
2002a31a:	1a12      	subs	r2, r2, r0
2002a31c:	b2a4      	uxth	r4, r4
2002a31e:	fbb2 f0fe 	udiv	r0, r2, lr
2002a322:	fb0e 2210 	mls	r2, lr, r0, r2
2002a326:	fb00 f707 	mul.w	r7, r0, r7
2002a32a:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a32e:	42a7      	cmp	r7, r4
2002a330:	d90e      	bls.n	2002a350 <__udivmoddi4+0x158>
2002a332:	192c      	adds	r4, r5, r4
2002a334:	f100 32ff 	add.w	r2, r0, #4294967295
2002a338:	bf2c      	ite	cs
2002a33a:	f04f 0e01 	movcs.w	lr, #1
2002a33e:	f04f 0e00 	movcc.w	lr, #0
2002a342:	42a7      	cmp	r7, r4
2002a344:	d903      	bls.n	2002a34e <__udivmoddi4+0x156>
2002a346:	f1be 0f00 	cmp.w	lr, #0
2002a34a:	f000 80d2 	beq.w	2002a4f2 <__udivmoddi4+0x2fa>
2002a34e:	4610      	mov	r0, r2
2002a350:	1be4      	subs	r4, r4, r7
2002a352:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
2002a356:	e799      	b.n	2002a28c <__udivmoddi4+0x94>
2002a358:	f1c1 0520 	rsb	r5, r1, #32
2002a35c:	408b      	lsls	r3, r1
2002a35e:	fa0c f401 	lsl.w	r4, ip, r1
2002a362:	fa00 f901 	lsl.w	r9, r0, r1
2002a366:	fa22 f705 	lsr.w	r7, r2, r5
2002a36a:	fa2c fc05 	lsr.w	ip, ip, r5
2002a36e:	408a      	lsls	r2, r1
2002a370:	431f      	orrs	r7, r3
2002a372:	fa20 f305 	lsr.w	r3, r0, r5
2002a376:	0c38      	lsrs	r0, r7, #16
2002a378:	4323      	orrs	r3, r4
2002a37a:	fa1f fe87 	uxth.w	lr, r7
2002a37e:	0c1c      	lsrs	r4, r3, #16
2002a380:	fbbc f8f0 	udiv	r8, ip, r0
2002a384:	fb00 cc18 	mls	ip, r0, r8, ip
2002a388:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
2002a38c:	fb08 fc0e 	mul.w	ip, r8, lr
2002a390:	45a4      	cmp	ip, r4
2002a392:	d90e      	bls.n	2002a3b2 <__udivmoddi4+0x1ba>
2002a394:	193c      	adds	r4, r7, r4
2002a396:	f108 3aff 	add.w	sl, r8, #4294967295
2002a39a:	bf2c      	ite	cs
2002a39c:	f04f 0b01 	movcs.w	fp, #1
2002a3a0:	f04f 0b00 	movcc.w	fp, #0
2002a3a4:	45a4      	cmp	ip, r4
2002a3a6:	d903      	bls.n	2002a3b0 <__udivmoddi4+0x1b8>
2002a3a8:	f1bb 0f00 	cmp.w	fp, #0
2002a3ac:	f000 80b8 	beq.w	2002a520 <__udivmoddi4+0x328>
2002a3b0:	46d0      	mov	r8, sl
2002a3b2:	eba4 040c 	sub.w	r4, r4, ip
2002a3b6:	fa1f fc83 	uxth.w	ip, r3
2002a3ba:	fbb4 f3f0 	udiv	r3, r4, r0
2002a3be:	fb00 4413 	mls	r4, r0, r3, r4
2002a3c2:	fb03 fe0e 	mul.w	lr, r3, lr
2002a3c6:	ea4c 4404 	orr.w	r4, ip, r4, lsl #16
2002a3ca:	45a6      	cmp	lr, r4
2002a3cc:	d90e      	bls.n	2002a3ec <__udivmoddi4+0x1f4>
2002a3ce:	193c      	adds	r4, r7, r4
2002a3d0:	f103 30ff 	add.w	r0, r3, #4294967295
2002a3d4:	bf2c      	ite	cs
2002a3d6:	f04f 0c01 	movcs.w	ip, #1
2002a3da:	f04f 0c00 	movcc.w	ip, #0
2002a3de:	45a6      	cmp	lr, r4
2002a3e0:	d903      	bls.n	2002a3ea <__udivmoddi4+0x1f2>
2002a3e2:	f1bc 0f00 	cmp.w	ip, #0
2002a3e6:	f000 809f 	beq.w	2002a528 <__udivmoddi4+0x330>
2002a3ea:	4603      	mov	r3, r0
2002a3ec:	ea43 4008 	orr.w	r0, r3, r8, lsl #16
2002a3f0:	eba4 040e 	sub.w	r4, r4, lr
2002a3f4:	fba0 ec02 	umull	lr, ip, r0, r2
2002a3f8:	4564      	cmp	r4, ip
2002a3fa:	4673      	mov	r3, lr
2002a3fc:	46e0      	mov	r8, ip
2002a3fe:	d302      	bcc.n	2002a406 <__udivmoddi4+0x20e>
2002a400:	d107      	bne.n	2002a412 <__udivmoddi4+0x21a>
2002a402:	45f1      	cmp	r9, lr
2002a404:	d205      	bcs.n	2002a412 <__udivmoddi4+0x21a>
2002a406:	ebbe 0302 	subs.w	r3, lr, r2
2002a40a:	eb6c 0c07 	sbc.w	ip, ip, r7
2002a40e:	3801      	subs	r0, #1
2002a410:	46e0      	mov	r8, ip
2002a412:	b15e      	cbz	r6, 2002a42c <__udivmoddi4+0x234>
2002a414:	ebb9 0203 	subs.w	r2, r9, r3
2002a418:	eb64 0408 	sbc.w	r4, r4, r8
2002a41c:	fa04 f505 	lsl.w	r5, r4, r5
2002a420:	fa22 f301 	lsr.w	r3, r2, r1
2002a424:	40cc      	lsrs	r4, r1
2002a426:	431d      	orrs	r5, r3
2002a428:	e9c6 5400 	strd	r5, r4, [r6]
2002a42c:	2100      	movs	r1, #0
2002a42e:	e732      	b.n	2002a296 <__udivmoddi4+0x9e>
2002a430:	0842      	lsrs	r2, r0, #1
2002a432:	462f      	mov	r7, r5
2002a434:	084b      	lsrs	r3, r1, #1
2002a436:	46ac      	mov	ip, r5
2002a438:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
2002a43c:	46ae      	mov	lr, r5
2002a43e:	07c4      	lsls	r4, r0, #31
2002a440:	0c11      	lsrs	r1, r2, #16
2002a442:	b292      	uxth	r2, r2
2002a444:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
2002a448:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a44c:	fbb1 f1f5 	udiv	r1, r1, r5
2002a450:	fbb3 f0f5 	udiv	r0, r3, r5
2002a454:	231f      	movs	r3, #31
2002a456:	eba2 020c 	sub.w	r2, r2, ip
2002a45a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
2002a45e:	e742      	b.n	2002a2e6 <__udivmoddi4+0xee>
2002a460:	409d      	lsls	r5, r3
2002a462:	f1c3 0220 	rsb	r2, r3, #32
2002a466:	4099      	lsls	r1, r3
2002a468:	409c      	lsls	r4, r3
2002a46a:	fa2c fc02 	lsr.w	ip, ip, r2
2002a46e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a472:	fa20 f202 	lsr.w	r2, r0, r2
2002a476:	b2af      	uxth	r7, r5
2002a478:	fbbc f8fe 	udiv	r8, ip, lr
2002a47c:	430a      	orrs	r2, r1
2002a47e:	fb0e cc18 	mls	ip, lr, r8, ip
2002a482:	0c11      	lsrs	r1, r2, #16
2002a484:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
2002a488:	fb08 fc07 	mul.w	ip, r8, r7
2002a48c:	458c      	cmp	ip, r1
2002a48e:	d950      	bls.n	2002a532 <__udivmoddi4+0x33a>
2002a490:	1869      	adds	r1, r5, r1
2002a492:	f108 30ff 	add.w	r0, r8, #4294967295
2002a496:	bf2c      	ite	cs
2002a498:	f04f 0901 	movcs.w	r9, #1
2002a49c:	f04f 0900 	movcc.w	r9, #0
2002a4a0:	458c      	cmp	ip, r1
2002a4a2:	d902      	bls.n	2002a4aa <__udivmoddi4+0x2b2>
2002a4a4:	f1b9 0f00 	cmp.w	r9, #0
2002a4a8:	d030      	beq.n	2002a50c <__udivmoddi4+0x314>
2002a4aa:	eba1 010c 	sub.w	r1, r1, ip
2002a4ae:	fbb1 f8fe 	udiv	r8, r1, lr
2002a4b2:	fb08 fc07 	mul.w	ip, r8, r7
2002a4b6:	fb0e 1118 	mls	r1, lr, r8, r1
2002a4ba:	b292      	uxth	r2, r2
2002a4bc:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a4c0:	4562      	cmp	r2, ip
2002a4c2:	d234      	bcs.n	2002a52e <__udivmoddi4+0x336>
2002a4c4:	18aa      	adds	r2, r5, r2
2002a4c6:	f108 31ff 	add.w	r1, r8, #4294967295
2002a4ca:	bf2c      	ite	cs
2002a4cc:	f04f 0901 	movcs.w	r9, #1
2002a4d0:	f04f 0900 	movcc.w	r9, #0
2002a4d4:	4562      	cmp	r2, ip
2002a4d6:	d2be      	bcs.n	2002a456 <__udivmoddi4+0x25e>
2002a4d8:	f1b9 0f00 	cmp.w	r9, #0
2002a4dc:	d1bb      	bne.n	2002a456 <__udivmoddi4+0x25e>
2002a4de:	f1a8 0102 	sub.w	r1, r8, #2
2002a4e2:	442a      	add	r2, r5
2002a4e4:	e7b7      	b.n	2002a456 <__udivmoddi4+0x25e>
2002a4e6:	1a84      	subs	r4, r0, r2
2002a4e8:	eb6c 0203 	sbc.w	r2, ip, r3
2002a4ec:	2001      	movs	r0, #1
2002a4ee:	4617      	mov	r7, r2
2002a4f0:	e6e7      	b.n	2002a2c2 <__udivmoddi4+0xca>
2002a4f2:	442c      	add	r4, r5
2002a4f4:	3802      	subs	r0, #2
2002a4f6:	e72b      	b.n	2002a350 <__udivmoddi4+0x158>
2002a4f8:	f1ac 0c02 	sub.w	ip, ip, #2
2002a4fc:	442a      	add	r2, r5
2002a4fe:	e70c      	b.n	2002a31a <__udivmoddi4+0x122>
2002a500:	3902      	subs	r1, #2
2002a502:	442a      	add	r2, r5
2002a504:	e6a5      	b.n	2002a252 <__udivmoddi4+0x5a>
2002a506:	442c      	add	r4, r5
2002a508:	3802      	subs	r0, #2
2002a50a:	e6ba      	b.n	2002a282 <__udivmoddi4+0x8a>
2002a50c:	eba5 0c0c 	sub.w	ip, r5, ip
2002a510:	f1a8 0002 	sub.w	r0, r8, #2
2002a514:	4461      	add	r1, ip
2002a516:	fbb1 f8fe 	udiv	r8, r1, lr
2002a51a:	fb08 fc07 	mul.w	ip, r8, r7
2002a51e:	e7ca      	b.n	2002a4b6 <__udivmoddi4+0x2be>
2002a520:	f1a8 0802 	sub.w	r8, r8, #2
2002a524:	443c      	add	r4, r7
2002a526:	e744      	b.n	2002a3b2 <__udivmoddi4+0x1ba>
2002a528:	3b02      	subs	r3, #2
2002a52a:	443c      	add	r4, r7
2002a52c:	e75e      	b.n	2002a3ec <__udivmoddi4+0x1f4>
2002a52e:	4641      	mov	r1, r8
2002a530:	e791      	b.n	2002a456 <__udivmoddi4+0x25e>
2002a532:	eba1 010c 	sub.w	r1, r1, ip
2002a536:	4640      	mov	r0, r8
2002a538:	fbb1 f8fe 	udiv	r8, r1, lr
2002a53c:	fb08 fc07 	mul.w	ip, r8, r7
2002a540:	e7b9      	b.n	2002a4b6 <__udivmoddi4+0x2be>
2002a542:	bf00      	nop

2002a544 <__aeabi_idiv0>:
2002a544:	4770      	bx	lr
2002a546:	bf00      	nop

2002a548 <calloc>:
2002a548:	4b02      	ldr	r3, [pc, #8]	@ (2002a554 <calloc+0xc>)
2002a54a:	460a      	mov	r2, r1
2002a54c:	4601      	mov	r1, r0
2002a54e:	6818      	ldr	r0, [r3, #0]
2002a550:	f000 b802 	b.w	2002a558 <_calloc_r>
2002a554:	20044908 	.word	0x20044908

2002a558 <_calloc_r>:
2002a558:	b570      	push	{r4, r5, r6, lr}
2002a55a:	fba1 5402 	umull	r5, r4, r1, r2
2002a55e:	b934      	cbnz	r4, 2002a56e <_calloc_r+0x16>
2002a560:	4629      	mov	r1, r5
2002a562:	f000 f837 	bl	2002a5d4 <_malloc_r>
2002a566:	4606      	mov	r6, r0
2002a568:	b928      	cbnz	r0, 2002a576 <_calloc_r+0x1e>
2002a56a:	4630      	mov	r0, r6
2002a56c:	bd70      	pop	{r4, r5, r6, pc}
2002a56e:	220c      	movs	r2, #12
2002a570:	2600      	movs	r6, #0
2002a572:	6002      	str	r2, [r0, #0]
2002a574:	e7f9      	b.n	2002a56a <_calloc_r+0x12>
2002a576:	462a      	mov	r2, r5
2002a578:	4621      	mov	r1, r4
2002a57a:	f000 f8c7 	bl	2002a70c <memset>
2002a57e:	e7f4      	b.n	2002a56a <_calloc_r+0x12>

2002a580 <free>:
2002a580:	4b02      	ldr	r3, [pc, #8]	@ (2002a58c <free+0xc>)
2002a582:	4601      	mov	r1, r0
2002a584:	6818      	ldr	r0, [r3, #0]
2002a586:	f000 b8e9 	b.w	2002a75c <_free_r>
2002a58a:	bf00      	nop
2002a58c:	20044908 	.word	0x20044908

2002a590 <sbrk_aligned>:
2002a590:	b570      	push	{r4, r5, r6, lr}
2002a592:	4e0f      	ldr	r6, [pc, #60]	@ (2002a5d0 <sbrk_aligned+0x40>)
2002a594:	460c      	mov	r4, r1
2002a596:	4605      	mov	r5, r0
2002a598:	6831      	ldr	r1, [r6, #0]
2002a59a:	b911      	cbnz	r1, 2002a5a2 <sbrk_aligned+0x12>
2002a59c:	f000 f8be 	bl	2002a71c <_sbrk_r>
2002a5a0:	6030      	str	r0, [r6, #0]
2002a5a2:	4621      	mov	r1, r4
2002a5a4:	4628      	mov	r0, r5
2002a5a6:	f000 f8b9 	bl	2002a71c <_sbrk_r>
2002a5aa:	1c43      	adds	r3, r0, #1
2002a5ac:	d103      	bne.n	2002a5b6 <sbrk_aligned+0x26>
2002a5ae:	f04f 34ff 	mov.w	r4, #4294967295
2002a5b2:	4620      	mov	r0, r4
2002a5b4:	bd70      	pop	{r4, r5, r6, pc}
2002a5b6:	1cc4      	adds	r4, r0, #3
2002a5b8:	f024 0403 	bic.w	r4, r4, #3
2002a5bc:	42a0      	cmp	r0, r4
2002a5be:	d0f8      	beq.n	2002a5b2 <sbrk_aligned+0x22>
2002a5c0:	1a21      	subs	r1, r4, r0
2002a5c2:	4628      	mov	r0, r5
2002a5c4:	f000 f8aa 	bl	2002a71c <_sbrk_r>
2002a5c8:	3001      	adds	r0, #1
2002a5ca:	d1f2      	bne.n	2002a5b2 <sbrk_aligned+0x22>
2002a5cc:	e7ef      	b.n	2002a5ae <sbrk_aligned+0x1e>
2002a5ce:	bf00      	nop
2002a5d0:	2004a3b4 	.word	0x2004a3b4

2002a5d4 <_malloc_r>:
2002a5d4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002a5d8:	1ccd      	adds	r5, r1, #3
2002a5da:	4606      	mov	r6, r0
2002a5dc:	f025 0503 	bic.w	r5, r5, #3
2002a5e0:	3508      	adds	r5, #8
2002a5e2:	2d0c      	cmp	r5, #12
2002a5e4:	bf38      	it	cc
2002a5e6:	250c      	movcc	r5, #12
2002a5e8:	2d00      	cmp	r5, #0
2002a5ea:	db01      	blt.n	2002a5f0 <_malloc_r+0x1c>
2002a5ec:	42a9      	cmp	r1, r5
2002a5ee:	d904      	bls.n	2002a5fa <_malloc_r+0x26>
2002a5f0:	230c      	movs	r3, #12
2002a5f2:	6033      	str	r3, [r6, #0]
2002a5f4:	2000      	movs	r0, #0
2002a5f6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002a5fa:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 2002a6d0 <_malloc_r+0xfc>
2002a5fe:	f000 f869 	bl	2002a6d4 <__malloc_lock>
2002a602:	f8d8 3000 	ldr.w	r3, [r8]
2002a606:	461c      	mov	r4, r3
2002a608:	bb44      	cbnz	r4, 2002a65c <_malloc_r+0x88>
2002a60a:	4629      	mov	r1, r5
2002a60c:	4630      	mov	r0, r6
2002a60e:	f7ff ffbf 	bl	2002a590 <sbrk_aligned>
2002a612:	1c43      	adds	r3, r0, #1
2002a614:	4604      	mov	r4, r0
2002a616:	d158      	bne.n	2002a6ca <_malloc_r+0xf6>
2002a618:	f8d8 4000 	ldr.w	r4, [r8]
2002a61c:	4627      	mov	r7, r4
2002a61e:	2f00      	cmp	r7, #0
2002a620:	d143      	bne.n	2002a6aa <_malloc_r+0xd6>
2002a622:	2c00      	cmp	r4, #0
2002a624:	d04b      	beq.n	2002a6be <_malloc_r+0xea>
2002a626:	6823      	ldr	r3, [r4, #0]
2002a628:	4639      	mov	r1, r7
2002a62a:	4630      	mov	r0, r6
2002a62c:	eb04 0903 	add.w	r9, r4, r3
2002a630:	f000 f874 	bl	2002a71c <_sbrk_r>
2002a634:	4581      	cmp	r9, r0
2002a636:	d142      	bne.n	2002a6be <_malloc_r+0xea>
2002a638:	6821      	ldr	r1, [r4, #0]
2002a63a:	4630      	mov	r0, r6
2002a63c:	1a6d      	subs	r5, r5, r1
2002a63e:	4629      	mov	r1, r5
2002a640:	f7ff ffa6 	bl	2002a590 <sbrk_aligned>
2002a644:	3001      	adds	r0, #1
2002a646:	d03a      	beq.n	2002a6be <_malloc_r+0xea>
2002a648:	6823      	ldr	r3, [r4, #0]
2002a64a:	442b      	add	r3, r5
2002a64c:	6023      	str	r3, [r4, #0]
2002a64e:	f8d8 3000 	ldr.w	r3, [r8]
2002a652:	685a      	ldr	r2, [r3, #4]
2002a654:	bb62      	cbnz	r2, 2002a6b0 <_malloc_r+0xdc>
2002a656:	f8c8 7000 	str.w	r7, [r8]
2002a65a:	e00f      	b.n	2002a67c <_malloc_r+0xa8>
2002a65c:	6822      	ldr	r2, [r4, #0]
2002a65e:	1b52      	subs	r2, r2, r5
2002a660:	d420      	bmi.n	2002a6a4 <_malloc_r+0xd0>
2002a662:	2a0b      	cmp	r2, #11
2002a664:	d917      	bls.n	2002a696 <_malloc_r+0xc2>
2002a666:	1961      	adds	r1, r4, r5
2002a668:	42a3      	cmp	r3, r4
2002a66a:	6025      	str	r5, [r4, #0]
2002a66c:	bf18      	it	ne
2002a66e:	6059      	strne	r1, [r3, #4]
2002a670:	6863      	ldr	r3, [r4, #4]
2002a672:	bf08      	it	eq
2002a674:	f8c8 1000 	streq.w	r1, [r8]
2002a678:	5162      	str	r2, [r4, r5]
2002a67a:	604b      	str	r3, [r1, #4]
2002a67c:	4630      	mov	r0, r6
2002a67e:	f000 f82f 	bl	2002a6e0 <__malloc_unlock>
2002a682:	f104 000b 	add.w	r0, r4, #11
2002a686:	1d23      	adds	r3, r4, #4
2002a688:	f020 0007 	bic.w	r0, r0, #7
2002a68c:	1ac2      	subs	r2, r0, r3
2002a68e:	bf1c      	itt	ne
2002a690:	1a1b      	subne	r3, r3, r0
2002a692:	50a3      	strne	r3, [r4, r2]
2002a694:	e7af      	b.n	2002a5f6 <_malloc_r+0x22>
2002a696:	6862      	ldr	r2, [r4, #4]
2002a698:	42a3      	cmp	r3, r4
2002a69a:	bf0c      	ite	eq
2002a69c:	f8c8 2000 	streq.w	r2, [r8]
2002a6a0:	605a      	strne	r2, [r3, #4]
2002a6a2:	e7eb      	b.n	2002a67c <_malloc_r+0xa8>
2002a6a4:	4623      	mov	r3, r4
2002a6a6:	6864      	ldr	r4, [r4, #4]
2002a6a8:	e7ae      	b.n	2002a608 <_malloc_r+0x34>
2002a6aa:	463c      	mov	r4, r7
2002a6ac:	687f      	ldr	r7, [r7, #4]
2002a6ae:	e7b6      	b.n	2002a61e <_malloc_r+0x4a>
2002a6b0:	461a      	mov	r2, r3
2002a6b2:	685b      	ldr	r3, [r3, #4]
2002a6b4:	42a3      	cmp	r3, r4
2002a6b6:	d1fb      	bne.n	2002a6b0 <_malloc_r+0xdc>
2002a6b8:	2300      	movs	r3, #0
2002a6ba:	6053      	str	r3, [r2, #4]
2002a6bc:	e7de      	b.n	2002a67c <_malloc_r+0xa8>
2002a6be:	230c      	movs	r3, #12
2002a6c0:	4630      	mov	r0, r6
2002a6c2:	6033      	str	r3, [r6, #0]
2002a6c4:	f000 f80c 	bl	2002a6e0 <__malloc_unlock>
2002a6c8:	e794      	b.n	2002a5f4 <_malloc_r+0x20>
2002a6ca:	6005      	str	r5, [r0, #0]
2002a6cc:	e7d6      	b.n	2002a67c <_malloc_r+0xa8>
2002a6ce:	bf00      	nop
2002a6d0:	2004a3b8 	.word	0x2004a3b8

2002a6d4 <__malloc_lock>:
2002a6d4:	4801      	ldr	r0, [pc, #4]	@ (2002a6dc <__malloc_lock+0x8>)
2002a6d6:	f000 b831 	b.w	2002a73c <__retarget_lock_acquire_recursive>
2002a6da:	bf00      	nop
2002a6dc:	2004a4f8 	.word	0x2004a4f8

2002a6e0 <__malloc_unlock>:
2002a6e0:	4801      	ldr	r0, [pc, #4]	@ (2002a6e8 <__malloc_unlock+0x8>)
2002a6e2:	f000 b82c 	b.w	2002a73e <__retarget_lock_release_recursive>
2002a6e6:	bf00      	nop
2002a6e8:	2004a4f8 	.word	0x2004a4f8

2002a6ec <memcmp>:
2002a6ec:	3901      	subs	r1, #1
2002a6ee:	4402      	add	r2, r0
2002a6f0:	b510      	push	{r4, lr}
2002a6f2:	4290      	cmp	r0, r2
2002a6f4:	d101      	bne.n	2002a6fa <memcmp+0xe>
2002a6f6:	2000      	movs	r0, #0
2002a6f8:	e005      	b.n	2002a706 <memcmp+0x1a>
2002a6fa:	7803      	ldrb	r3, [r0, #0]
2002a6fc:	f811 4f01 	ldrb.w	r4, [r1, #1]!
2002a700:	42a3      	cmp	r3, r4
2002a702:	d001      	beq.n	2002a708 <memcmp+0x1c>
2002a704:	1b18      	subs	r0, r3, r4
2002a706:	bd10      	pop	{r4, pc}
2002a708:	3001      	adds	r0, #1
2002a70a:	e7f2      	b.n	2002a6f2 <memcmp+0x6>

2002a70c <memset>:
2002a70c:	4402      	add	r2, r0
2002a70e:	4603      	mov	r3, r0
2002a710:	4293      	cmp	r3, r2
2002a712:	d100      	bne.n	2002a716 <memset+0xa>
2002a714:	4770      	bx	lr
2002a716:	f803 1b01 	strb.w	r1, [r3], #1
2002a71a:	e7f9      	b.n	2002a710 <memset+0x4>

2002a71c <_sbrk_r>:
2002a71c:	b538      	push	{r3, r4, r5, lr}
2002a71e:	2300      	movs	r3, #0
2002a720:	4d05      	ldr	r5, [pc, #20]	@ (2002a738 <_sbrk_r+0x1c>)
2002a722:	4604      	mov	r4, r0
2002a724:	4608      	mov	r0, r1
2002a726:	602b      	str	r3, [r5, #0]
2002a728:	f000 f862 	bl	2002a7f0 <_sbrk>
2002a72c:	1c43      	adds	r3, r0, #1
2002a72e:	d102      	bne.n	2002a736 <_sbrk_r+0x1a>
2002a730:	682b      	ldr	r3, [r5, #0]
2002a732:	b103      	cbz	r3, 2002a736 <_sbrk_r+0x1a>
2002a734:	6023      	str	r3, [r4, #0]
2002a736:	bd38      	pop	{r3, r4, r5, pc}
2002a738:	2004a4f4 	.word	0x2004a4f4

2002a73c <__retarget_lock_acquire_recursive>:
2002a73c:	4770      	bx	lr

2002a73e <__retarget_lock_release_recursive>:
2002a73e:	4770      	bx	lr

2002a740 <memcpy>:
2002a740:	440a      	add	r2, r1
2002a742:	1e43      	subs	r3, r0, #1
2002a744:	4291      	cmp	r1, r2
2002a746:	d100      	bne.n	2002a74a <memcpy+0xa>
2002a748:	4770      	bx	lr
2002a74a:	b510      	push	{r4, lr}
2002a74c:	f811 4b01 	ldrb.w	r4, [r1], #1
2002a750:	4291      	cmp	r1, r2
2002a752:	f803 4f01 	strb.w	r4, [r3, #1]!
2002a756:	d1f9      	bne.n	2002a74c <memcpy+0xc>
2002a758:	bd10      	pop	{r4, pc}
	...

2002a75c <_free_r>:
2002a75c:	b538      	push	{r3, r4, r5, lr}
2002a75e:	4605      	mov	r5, r0
2002a760:	2900      	cmp	r1, #0
2002a762:	d041      	beq.n	2002a7e8 <_free_r+0x8c>
2002a764:	f851 3c04 	ldr.w	r3, [r1, #-4]
2002a768:	1f0c      	subs	r4, r1, #4
2002a76a:	2b00      	cmp	r3, #0
2002a76c:	bfb8      	it	lt
2002a76e:	18e4      	addlt	r4, r4, r3
2002a770:	f7ff ffb0 	bl	2002a6d4 <__malloc_lock>
2002a774:	4a1d      	ldr	r2, [pc, #116]	@ (2002a7ec <_free_r+0x90>)
2002a776:	6813      	ldr	r3, [r2, #0]
2002a778:	b933      	cbnz	r3, 2002a788 <_free_r+0x2c>
2002a77a:	6063      	str	r3, [r4, #4]
2002a77c:	6014      	str	r4, [r2, #0]
2002a77e:	4628      	mov	r0, r5
2002a780:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002a784:	f7ff bfac 	b.w	2002a6e0 <__malloc_unlock>
2002a788:	42a3      	cmp	r3, r4
2002a78a:	d908      	bls.n	2002a79e <_free_r+0x42>
2002a78c:	6820      	ldr	r0, [r4, #0]
2002a78e:	1821      	adds	r1, r4, r0
2002a790:	428b      	cmp	r3, r1
2002a792:	bf01      	itttt	eq
2002a794:	6819      	ldreq	r1, [r3, #0]
2002a796:	685b      	ldreq	r3, [r3, #4]
2002a798:	1809      	addeq	r1, r1, r0
2002a79a:	6021      	streq	r1, [r4, #0]
2002a79c:	e7ed      	b.n	2002a77a <_free_r+0x1e>
2002a79e:	461a      	mov	r2, r3
2002a7a0:	685b      	ldr	r3, [r3, #4]
2002a7a2:	b10b      	cbz	r3, 2002a7a8 <_free_r+0x4c>
2002a7a4:	42a3      	cmp	r3, r4
2002a7a6:	d9fa      	bls.n	2002a79e <_free_r+0x42>
2002a7a8:	6811      	ldr	r1, [r2, #0]
2002a7aa:	1850      	adds	r0, r2, r1
2002a7ac:	42a0      	cmp	r0, r4
2002a7ae:	d10b      	bne.n	2002a7c8 <_free_r+0x6c>
2002a7b0:	6820      	ldr	r0, [r4, #0]
2002a7b2:	4401      	add	r1, r0
2002a7b4:	1850      	adds	r0, r2, r1
2002a7b6:	6011      	str	r1, [r2, #0]
2002a7b8:	4283      	cmp	r3, r0
2002a7ba:	d1e0      	bne.n	2002a77e <_free_r+0x22>
2002a7bc:	6818      	ldr	r0, [r3, #0]
2002a7be:	685b      	ldr	r3, [r3, #4]
2002a7c0:	4408      	add	r0, r1
2002a7c2:	6053      	str	r3, [r2, #4]
2002a7c4:	6010      	str	r0, [r2, #0]
2002a7c6:	e7da      	b.n	2002a77e <_free_r+0x22>
2002a7c8:	d902      	bls.n	2002a7d0 <_free_r+0x74>
2002a7ca:	230c      	movs	r3, #12
2002a7cc:	602b      	str	r3, [r5, #0]
2002a7ce:	e7d6      	b.n	2002a77e <_free_r+0x22>
2002a7d0:	6820      	ldr	r0, [r4, #0]
2002a7d2:	1821      	adds	r1, r4, r0
2002a7d4:	428b      	cmp	r3, r1
2002a7d6:	bf02      	ittt	eq
2002a7d8:	6819      	ldreq	r1, [r3, #0]
2002a7da:	685b      	ldreq	r3, [r3, #4]
2002a7dc:	1809      	addeq	r1, r1, r0
2002a7de:	6063      	str	r3, [r4, #4]
2002a7e0:	bf08      	it	eq
2002a7e2:	6021      	streq	r1, [r4, #0]
2002a7e4:	6054      	str	r4, [r2, #4]
2002a7e6:	e7ca      	b.n	2002a77e <_free_r+0x22>
2002a7e8:	bd38      	pop	{r3, r4, r5, pc}
2002a7ea:	bf00      	nop
2002a7ec:	2004a3b8 	.word	0x2004a3b8

2002a7f0 <_sbrk>:
2002a7f0:	4a05      	ldr	r2, [pc, #20]	@ (2002a808 <_sbrk+0x18>)
2002a7f2:	4603      	mov	r3, r0
2002a7f4:	6810      	ldr	r0, [r2, #0]
2002a7f6:	b110      	cbz	r0, 2002a7fe <_sbrk+0xe>
2002a7f8:	4403      	add	r3, r0
2002a7fa:	6013      	str	r3, [r2, #0]
2002a7fc:	4770      	bx	lr
2002a7fe:	4803      	ldr	r0, [pc, #12]	@ (2002a80c <_sbrk+0x1c>)
2002a800:	4403      	add	r3, r0
2002a802:	6013      	str	r3, [r2, #0]
2002a804:	4770      	bx	lr
2002a806:	bf00      	nop
2002a808:	2004a4fc 	.word	0x2004a4fc
2002a80c:	20042000 	.word	0x20042000
2002a810:	50041000 	.word	0x50041000
2002a814:	00000002 	.word	0x00000002
2002a818:	10000000 	.word	0x10000000
2002a81c:	00000004 	.word	0x00000004
2002a820:	00000000 	.word	0x00000000
2002a824:	50081008 	.word	0x50081008
2002a828:	00000000 	.word	0x00000000
2002a82c:	00000032 	.word	0x00000032
2002a830:	00000000 	.word	0x00000000
2002a834:	50042000 	.word	0x50042000
2002a838:	00000002 	.word	0x00000002
2002a83c:	12000000 	.word	0x12000000
2002a840:	00000004 	.word	0x00000004
2002a844:	00000000 	.word	0x00000000
2002a848:	5008101c 	.word	0x5008101c
2002a84c:	00000000 	.word	0x00000000
2002a850:	00000033 	.word	0x00000033
2002a854:	00000001 	.word	0x00000001
2002a858:	4c424653 	.word	0x4c424653
2002a85c:	6b627570 	.word	0x6b627570
2002a860:	66207965 	.word	0x66207965
2002a864:	0d6c6961 	.word	0x0d6c6961
2002a868:	4653000a 	.word	0x4653000a
2002a86c:	69734c42 	.word	0x69734c42
2002a870:	61662067 	.word	0x61662067
2002a874:	0a0d6c69 	.word	0x0a0d6c69
2002a878:	70614d00 	.word	0x70614d00
2002a87c:	72726520 	.word	0x72726520
2002a880:	203a726f 	.word	0x203a726f
2002a884:	69676f6c 	.word	0x69676f6c
2002a888:	64252063 	.word	0x64252063
2002a88c:	6870202c 	.word	0x6870202c
2002a890:	64252079 	.word	0x64252079
2002a894:	5245000a 	.word	0x5245000a
2002a898:	32203a52 	.word	0x32203a52
2002a89c:	676f6c20 	.word	0x676f6c20
2002a8a0:	62206369 	.word	0x62206369
2002a8a4:	6b636f6c 	.word	0x6b636f6c
2002a8a8:	616d2073 	.word	0x616d2073
2002a8ac:	6f742070 	.word	0x6f742070
2002a8b0:	6d617320 	.word	0x6d617320
2002a8b4:	6c622065 	.word	0x6c622065
2002a8b8:	6c203a6b 	.word	0x6c203a6b
2002a8bc:	6369676f 	.word	0x6369676f
2002a8c0:	64252030 	.word	0x64252030
2002a8c4:	6870202c 	.word	0x6870202c
2002a8c8:	25203079 	.word	0x25203079
2002a8cc:	6c202c64 	.word	0x6c202c64
2002a8d0:	6369676f 	.word	0x6369676f
2002a8d4:	64252031 	.word	0x64252031
2002a8d8:	6870202c 	.word	0x6870202c
2002a8dc:	25203179 	.word	0x25203179
2002a8e0:	4d000a64 	.word	0x4d000a64
2002a8e4:	65207061 	.word	0x65207061
2002a8e8:	726f7272 	.word	0x726f7272
2002a8ec:	6c203a30 	.word	0x6c203a30
2002a8f0:	6369676f 	.word	0x6369676f
2002a8f4:	2c642520 	.word	0x2c642520
2002a8f8:	79687020 	.word	0x79687020
2002a8fc:	0a642520 	.word	0x0a642520
2002a900:	74654700 	.word	0x74654700
2002a904:	70616d20 	.word	0x70616d20
2002a908:	6f6c6220 	.word	0x6f6c6220
2002a90c:	65206b63 	.word	0x65206b63
2002a910:	726f7272 	.word	0x726f7272
2002a914:	20642520 	.word	0x20642520
2002a918:	203e2d2d 	.word	0x203e2d2d
2002a91c:	000a6425 	.word	0x000a6425
2002a920:	204d4242 	.word	0x204d4242
2002a924:	73726576 	.word	0x73726576
2002a928:	206e6f69 	.word	0x206e6f69
2002a92c:	20746f6e 	.word	0x20746f6e
2002a930:	72636e69 	.word	0x72636e69
2002a934:	65736165 	.word	0x65736165
2002a938:	70203a64 	.word	0x70203a64
2002a93c:	20766572 	.word	0x20766572
2002a940:	202c6425 	.word	0x202c6425
2002a944:	72727563 	.word	0x72727563
2002a948:	0a642520 	.word	0x0a642520
2002a94c:	54414400 	.word	0x54414400
2002a950:	6f6e2041 	.word	0x6f6e2041
2002a954:	65722074 	.word	0x65722074
2002a958:	6e6f7361 	.word	0x6e6f7361
2002a95c:	656c6261 	.word	0x656c6261
2002a960:	206e6920 	.word	0x206e6920
2002a964:	204d4242 	.word	0x204d4242
2002a968:	206b6c62 	.word	0x206b6c62
2002a96c:	70206425 	.word	0x70206425
2002a970:	20656761 	.word	0x20656761
2002a974:	203a6425 	.word	0x203a6425
2002a978:	78257830 	.word	0x78257830
2002a97c:	6552000a 	.word	0x6552000a
2002a980:	62206461 	.word	0x62206461
2002a984:	62206d62 	.word	0x62206d62
2002a988:	25206b6c 	.word	0x25206b6c
2002a98c:	61702064 	.word	0x61702064
2002a990:	25206567 	.word	0x25206567
2002a994:	61662064 	.word	0x61662064
2002a998:	000a6c69 	.word	0x000a6c69
2002a99c:	61766e49 	.word	0x61766e49
2002a9a0:	2064696c 	.word	0x2064696c
2002a9a4:	204d4242 	.word	0x204d4242
2002a9a8:	20584449 	.word	0x20584449
2002a9ac:	000a6425 	.word	0x000a6425
2002a9b0:	25203156 	.word	0x25203156
2002a9b4:	6e692064 	.word	0x6e692064
2002a9b8:	6f6c6220 	.word	0x6f6c6220
2002a9bc:	25206b63 	.word	0x25206b63
2002a9c0:	56202c64 	.word	0x56202c64
2002a9c4:	64252032 	.word	0x64252032
2002a9c8:	206e6920 	.word	0x206e6920
2002a9cc:	636f6c62 	.word	0x636f6c62
2002a9d0:	6425206b 	.word	0x6425206b
2002a9d4:	6153000a 	.word	0x6153000a
2002a9d8:	6874656d 	.word	0x6874656d
2002a9dc:	20676e69 	.word	0x20676e69
2002a9e0:	7473756d 	.word	0x7473756d
2002a9e4:	20656220 	.word	0x20656220
2002a9e8:	6e6f7277 	.word	0x6e6f7277
2002a9ec:	67202c67 	.word	0x67202c67
2002a9f0:	6e207465 	.word	0x6e207465
2002a9f4:	76207765 	.word	0x76207765
2002a9f8:	69737265 	.word	0x69737265
2002a9fc:	25206e6f 	.word	0x25206e6f
2002aa00:	6f642064 	.word	0x6f642064
2002aa04:	746f6e20 	.word	0x746f6e20
2002aa08:	6d617320 	.word	0x6d617320
2002aa0c:	6f742065 	.word	0x6f742065
2002aa10:	65727020 	.word	0x65727020
2002aa14:	68632076 	.word	0x68632076
2002aa18:	206b6365 	.word	0x206b6365
2002aa1c:	000a6425 	.word	0x000a6425
2002aa20:	20435243 	.word	0x20435243
2002aa24:	63656863 	.word	0x63656863
2002aa28:	7265206b 	.word	0x7265206b
2002aa2c:	20726f72 	.word	0x20726f72
2002aa30:	6552000a 	.word	0x6552000a
2002aa34:	62206461 	.word	0x62206461
2002aa38:	62206d62 	.word	0x62206d62
2002aa3c:	25206b6c 	.word	0x25206b6c
2002aa40:	61702064 	.word	0x61702064
2002aa44:	25206567 	.word	0x25206567
2002aa48:	61642064 	.word	0x61642064
2002aa4c:	6e206174 	.word	0x6e206174
2002aa50:	7720746f 	.word	0x7720746f
2002aa54:	65746972 	.word	0x65746972
2002aa58:	726f6620 	.word	0x726f6620
2002aa5c:	646e3220 	.word	0x646e3220
2002aa60:	6d697420 	.word	0x6d697420
2002aa64:	52000a65 	.word	0x52000a65
2002aa68:	20646165 	.word	0x20646165
2002aa6c:	206d6262 	.word	0x206d6262
2002aa70:	206b6c62 	.word	0x206b6c62
2002aa74:	70206425 	.word	0x70206425
2002aa78:	20656761 	.word	0x20656761
2002aa7c:	66206425 	.word	0x66206425
2002aa80:	206c6961 	.word	0x206c6961
2002aa84:	20726f66 	.word	0x20726f66
2002aa88:	20646e32 	.word	0x20646e32
2002aa8c:	656d6974 	.word	0x656d6974
2002aa90:	4c000a3f 	.word	0x4c000a3f
2002aa94:	73657461 	.word	0x73657461
2002aa98:	65762074 	.word	0x65762074
2002aa9c:	6f697372 	.word	0x6f697372
2002aaa0:	6425206e 	.word	0x6425206e
2002aaa4:	6547000a 	.word	0x6547000a
2002aaa8:	68702074 	.word	0x68702074
2002aaac:	6c622079 	.word	0x6c622079
2002aab0:	6f66206b 	.word	0x6f66206b
2002aab4:	64252072 	.word	0x64252072
2002aab8:	69616620 	.word	0x69616620
2002aabc:	6877206c 	.word	0x6877206c
2002aac0:	72206e65 	.word	0x72206e65
2002aac4:	0a646165 	.word	0x0a646165
2002aac8:	6f6c4200 	.word	0x6f6c4200
2002aacc:	25206b63 	.word	0x25206b63
2002aad0:	72652064 	.word	0x72652064
2002aad4:	20657361 	.word	0x20657361
2002aad8:	6c696166 	.word	0x6c696166
2002aadc:	616d202c 	.word	0x616d202c
2002aae0:	61206b72 	.word	0x61206b72
2002aae4:	61622073 	.word	0x61622073
2002aae8:	42000a64 	.word	0x42000a64
2002aaec:	6b636f6c 	.word	0x6b636f6c
2002aaf0:	20642520 	.word	0x20642520
2002aaf4:	63656863 	.word	0x63656863
2002aaf8:	7361206b 	.word	0x7361206b
2002aafc:	64616220 	.word	0x64616220
2002ab00:	6f6c6220 	.word	0x6f6c6220
2002ab04:	000a6b63 	.word	0x000a6b63
2002ab08:	636f6c42 	.word	0x636f6c42
2002ab0c:	6425206b 	.word	0x6425206b
2002ab10:	20736920 	.word	0x20736920
2002ab14:	20646162 	.word	0x20646162
2002ab18:	75206e69 	.word	0x75206e69
2002ab1c:	20726573 	.word	0x20726573
2002ab20:	636f6c62 	.word	0x636f6c62
2002ab24:	62000a6b 	.word	0x62000a6b
2002ab28:	25206461 	.word	0x25206461
2002ab2c:	72202c64 	.word	0x72202c64
2002ab30:	616c7065 	.word	0x616c7065
2002ab34:	25206563 	.word	0x25206563
2002ab38:	4e000a64 	.word	0x4e000a64
2002ab3c:	6162206f 	.word	0x6162206f
2002ab40:	70756b63 	.word	0x70756b63
2002ab44:	6f6c6220 	.word	0x6f6c6220
2002ab48:	61206b63 	.word	0x61206b63
2002ab4c:	6d20796e 	.word	0x6d20796e
2002ab50:	0a65726f 	.word	0x0a65726f
2002ab54:	706d6500 	.word	0x706d6500
2002ab58:	74207974 	.word	0x74207974
2002ab5c:	656c6261 	.word	0x656c6261
2002ab60:	20642520 	.word	0x20642520
2002ab64:	20746f6e 	.word	0x20746f6e
2002ab68:	756f6e65 	.word	0x756f6e65
2002ab6c:	66206867 	.word	0x66206867
2002ab70:	6920726f 	.word	0x6920726f
2002ab74:	6974696e 	.word	0x6974696e
2002ab78:	000a6c61 	.word	0x000a6c61
2002ab7c:	61647055 	.word	0x61647055
2002ab80:	74206574 	.word	0x74206574
2002ab84:	656c6261 	.word	0x656c6261
2002ab88:	206f7420 	.word	0x206f7420
2002ab8c:	73616c66 	.word	0x73616c66
2002ab90:	6f642068 	.word	0x6f642068
2002ab94:	000a656e 	.word	0x000a656e
2002ab98:	74696e49 	.word	0x74696e49
2002ab9c:	206c6169 	.word	0x206c6169
2002aba0:	6c626174 	.word	0x6c626174
2002aba4:	61662065 	.word	0x61662065
2002aba8:	000a6c69 	.word	0x000a6c69
2002abac:	204d4242 	.word	0x204d4242
2002abb0:	74696e69 	.word	0x74696e69
2002abb4:	696c6169 	.word	0x696c6169
2002abb8:	2064657a 	.word	0x2064657a
2002abbc:	6f666562 	.word	0x6f666562
2002abc0:	202c6572 	.word	0x202c6572
2002abc4:	6e206f64 	.word	0x6e206f64
2002abc8:	6920746f 	.word	0x6920746f
2002abcc:	2074696e 	.word	0x2074696e
2002abd0:	20796e61 	.word	0x20796e61
2002abd4:	65726f6d 	.word	0x65726f6d
2002abd8:	4544000a 	.word	0x4544000a
2002abdc:	64252054 	.word	0x64252054
2002abe0:	64616220 	.word	0x64616220
2002abe4:	4c42000a 	.word	0x4c42000a
2002abe8:	6425204b 	.word	0x6425204b
2002abec:	61657220 	.word	0x61657220
2002abf0:	61662064 	.word	0x61662064
2002abf4:	202c6c69 	.word	0x202c6c69
2002abf8:	6b72616d 	.word	0x6b72616d
2002abfc:	20736120 	.word	0x20736120
2002ac00:	0a646162 	.word	0x0a646162
2002ac04:	74656400 	.word	0x74656400
2002ac08:	6d626220 	.word	0x6d626220
2002ac0c:	62617420 	.word	0x62617420
2002ac10:	7720656c 	.word	0x7720656c
2002ac14:	20687469 	.word	0x20687469
2002ac18:	202c6425 	.word	0x202c6425
2002ac1c:	202c6425 	.word	0x202c6425
2002ac20:	000a6425 	.word	0x000a6425
2002ac24:	65746564 	.word	0x65746564
2002ac28:	72207463 	.word	0x72207463
2002ac2c:	6c757365 	.word	0x6c757365
2002ac30:	64252074 	.word	0x64252074
2002ac34:	3176000a 	.word	0x3176000a
2002ac38:	20642520 	.word	0x20642520
2002ac3c:	62206e69 	.word	0x62206e69
2002ac40:	25206b6c 	.word	0x25206b6c
2002ac44:	76202c64 	.word	0x76202c64
2002ac48:	64252032 	.word	0x64252032
2002ac4c:	206e6920 	.word	0x206e6920
2002ac50:	636f6c62 	.word	0x636f6c62
2002ac54:	6425206b 	.word	0x6425206b
2002ac58:	6843000a 	.word	0x6843000a
2002ac5c:	206b6365 	.word	0x206b6365
2002ac60:	206d6262 	.word	0x206d6262
2002ac64:	6c626174 	.word	0x6c626174
2002ac68:	61662065 	.word	0x61662065
2002ac6c:	000a6c69 	.word	0x000a6c69
2002ac70:	65746564 	.word	0x65746564
2002ac74:	72207463 	.word	0x72207463
2002ac78:	6c757365 	.word	0x6c757365
2002ac7c:	64252074 	.word	0x64252074
2002ac80:	746f6e20 	.word	0x746f6e20
2002ac84:	61657220 	.word	0x61657220
2002ac88:	616e6f73 	.word	0x616e6f73
2002ac8c:	0a656c62 	.word	0x0a656c62
2002ac90:	4d424200 	.word	0x4d424200
2002ac94:	4d454d20 	.word	0x4d454d20
2002ac98:	7463203a 	.word	0x7463203a
2002ac9c:	70252078 	.word	0x70252078
2002aca0:	616d202c 	.word	0x616d202c
2002aca4:	25203170 	.word	0x25203170
2002aca8:	6d202c70 	.word	0x6d202c70
2002acac:	20327061 	.word	0x20327061
2002acb0:	0a207025 	.word	0x0a207025
2002acb4:	66697300 	.word	0x66697300
2002acb8:	6d62625f 	.word	0x6d62625f
2002acbc:	696e695f 	.word	0x696e695f
2002acc0:	6f642074 	.word	0x6f642074
2002acc4:	000a656e 	.word	0x000a656e
2002acc8:	35414853 	.word	0x35414853
2002accc:	53003231 	.word	0x53003231
2002acd0:	38334148 	.word	0x38334148
2002acd4:	48530034 	.word	0x48530034
2002acd8:	36353241 	.word	0x36353241
2002acdc:	41485300 	.word	0x41485300
2002ace0:	00343232 	.word	0x00343232
2002ace4:	01488660 	.word	0x01488660
2002ace8:	02040365 	.word	0x02040365
2002acec:	64690004 	.word	0x64690004
2002acf0:	6168732d 	.word	0x6168732d
2002acf4:	00343232 	.word	0x00343232
2002acf8:	01488660 	.word	0x01488660
2002acfc:	02040365 	.word	0x02040365
2002ad00:	64690001 	.word	0x64690001
2002ad04:	6168732d 	.word	0x6168732d
2002ad08:	00363532 	.word	0x00363532
2002ad0c:	01488660 	.word	0x01488660
2002ad10:	02040365 	.word	0x02040365
2002ad14:	64690002 	.word	0x64690002
2002ad18:	6168732d 	.word	0x6168732d
2002ad1c:	00343833 	.word	0x00343833
2002ad20:	01488660 	.word	0x01488660
2002ad24:	02040365 	.word	0x02040365
2002ad28:	64690003 	.word	0x64690003
2002ad2c:	6168732d 	.word	0x6168732d
2002ad30:	00323135 	.word	0x00323135
2002ad34:	02030e2b 	.word	0x02030e2b
2002ad38:	65640007 	.word	0x65640007
2002ad3c:	43424373 	.word	0x43424373
2002ad40:	53454400 	.word	0x53454400
2002ad44:	4342432d 	.word	0x4342432d
2002ad48:	48862a00 	.word	0x48862a00
2002ad4c:	030df786 	.word	0x030df786
2002ad50:	65640007 	.word	0x65640007
2002ad54:	64652d73 	.word	0x64652d73
2002ad58:	632d3365 	.word	0x632d3365
2002ad5c:	44006362 	.word	0x44006362
2002ad60:	452d5345 	.word	0x452d5345
2002ad64:	2d334544 	.word	0x2d334544
2002ad68:	00434243 	.word	0x00434243
2002ad6c:	8648862a 	.word	0x8648862a
2002ad70:	01010df7 	.word	0x01010df7
2002ad74:	73720001 	.word	0x73720001
2002ad78:	636e4561 	.word	0x636e4561
2002ad7c:	74707972 	.word	0x74707972
2002ad80:	006e6f69 	.word	0x006e6f69
2002ad84:	00415352 	.word	0x00415352
2002ad88:	ce48862a 	.word	0xce48862a
2002ad8c:	0001023d 	.word	0x0001023d
2002ad90:	652d6469 	.word	0x652d6469
2002ad94:	62755063 	.word	0x62755063
2002ad98:	4b63696c 	.word	0x4b63696c
2002ad9c:	47007965 	.word	0x47007965
2002ada0:	72656e65 	.word	0x72656e65
2002ada4:	45206369 	.word	0x45206369
2002ada8:	656b2043 	.word	0x656b2043
2002adac:	812b0079 	.word	0x812b0079
2002adb0:	000c0104 	.word	0x000c0104
2002adb4:	652d6469 	.word	0x652d6469
2002adb8:	00484463 	.word	0x00484463
2002adbc:	6b204345 	.word	0x6b204345
2002adc0:	66207965 	.word	0x66207965
2002adc4:	4520726f 	.word	0x4520726f
2002adc8:	00484443 	.word	0x00484443
2002adcc:	8648862a 	.word	0x8648862a
2002add0:	01010df7 	.word	0x01010df7
2002add4:	6873000e 	.word	0x6873000e
2002add8:	34323261 	.word	0x34323261
2002addc:	68746957 	.word	0x68746957
2002ade0:	45415352 	.word	0x45415352
2002ade4:	7972636e 	.word	0x7972636e
2002ade8:	6f697470 	.word	0x6f697470
2002adec:	5352006e 	.word	0x5352006e
2002adf0:	69772041 	.word	0x69772041
2002adf4:	53206874 	.word	0x53206874
2002adf8:	322d4148 	.word	0x322d4148
2002adfc:	2a003432 	.word	0x2a003432
2002ae00:	f7864886 	.word	0xf7864886
2002ae04:	0b01010d 	.word	0x0b01010d
2002ae08:	61687300 	.word	0x61687300
2002ae0c:	57363532 	.word	0x57363532
2002ae10:	52687469 	.word	0x52687469
2002ae14:	6e454153 	.word	0x6e454153
2002ae18:	70797263 	.word	0x70797263
2002ae1c:	6e6f6974 	.word	0x6e6f6974
2002ae20:	41535200 	.word	0x41535200
2002ae24:	74697720 	.word	0x74697720
2002ae28:	48532068 	.word	0x48532068
2002ae2c:	35322d41 	.word	0x35322d41
2002ae30:	862a0036 	.word	0x862a0036
2002ae34:	0df78648 	.word	0x0df78648
2002ae38:	000c0101 	.word	0x000c0101
2002ae3c:	33616873 	.word	0x33616873
2002ae40:	69573438 	.word	0x69573438
2002ae44:	53526874 	.word	0x53526874
2002ae48:	636e4541 	.word	0x636e4541
2002ae4c:	74707972 	.word	0x74707972
2002ae50:	006e6f69 	.word	0x006e6f69
2002ae54:	20415352 	.word	0x20415352
2002ae58:	68746977 	.word	0x68746977
2002ae5c:	41485320 	.word	0x41485320
2002ae60:	3438332d 	.word	0x3438332d
2002ae64:	48862a00 	.word	0x48862a00
2002ae68:	010df786 	.word	0x010df786
2002ae6c:	73000d01 	.word	0x73000d01
2002ae70:	31356168 	.word	0x31356168
2002ae74:	74695732 	.word	0x74695732
2002ae78:	41535268 	.word	0x41535268
2002ae7c:	72636e45 	.word	0x72636e45
2002ae80:	69747079 	.word	0x69747079
2002ae84:	52006e6f 	.word	0x52006e6f
2002ae88:	77204153 	.word	0x77204153
2002ae8c:	20687469 	.word	0x20687469
2002ae90:	2d414853 	.word	0x2d414853
2002ae94:	00323135 	.word	0x00323135
2002ae98:	8648862a 	.word	0x8648862a
2002ae9c:	01010df7 	.word	0x01010df7
2002aea0:	5352000a 	.word	0x5352000a
2002aea4:	41535341 	.word	0x41535341
2002aea8:	5353502d 	.word	0x5353502d
2002aeac:	61737200 	.word	0x61737200
2002aeb0:	72004e2e 	.word	0x72004e2e
2002aeb4:	452e6173 	.word	0x452e6173
	...

2002aeba <pin_pad_func_lcpu>:
	...
2002aeda:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
2002aeea:	00000237 00000000 00000000 00000000     7...............
2002aefa:	032200b3 00000302 00000000 024b023c     ..".........<.K.
2002af0a:	00000238 00000000 00000000 00000000     8...............
2002af1a:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
2002af2a:	0000023a 00000000 00000000 00000000     :...............
2002af3a:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
2002af4a:	00000239 00000000 00000000 00000000     9...............

2002af5a <pin_pad_func_hcpu>:
	...
2002af7a:	000400f2 00000000 000b0000 00000000     ................
	...
2002af9a:	000900f3 00000000 00030000 00000000     ................
	...
2002afba:	000a00f4 00000000 000a0000 00000000     ................
	...
2002afda:	000b00f5 00000000 000b0000 00000000     ................
	...
2002affa:	000c00f6 00000000 00030000 00000000     ................
	...
2002b01a:	000300f7 000d0000 00000009 00000000     ................
	...
2002b03a:	000200f8 000e0000 0000000b 00000000     ................
	...
2002b05a:	000100f9 000f0000 0009000a 00000000     ................
	...
2002b07a:	000d00fa 00100000 000c0003 00000000     ................
	...
2002b09a:	000e00fb 00060000 00010001 00000000     ................
	...
2002b0ba:	000f00fc 00010000 000c000c 00000000     ................
	...
2002b0da:	001000fd 00030000 00090000 00000000     ................
	...
2002b0fa:	000500fe 00000006 00000000 00000000     ................
	...
2002b11a:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
2002b13a:	00000053 00000000 026402b3 00000000     S.........d.....
	...
2002b15a:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
2002b16a:	023b0000 02270000 00000000 00000000     ..;...'.........
2002b17a:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
2002b18a:	023c0000 02280000 00000000 00000000     ..<...(.........
2002b19a:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
2002b1aa:	023d0000 02290000 00000000 00000000     ..=...).........
2002b1ba:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
2002b1ca:	023e0000 022a0000 00000000 00000000     ..>...*.........
2002b1da:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
2002b1ea:	023f0000 022b0000 00000000 00000000     ..?...+.........
2002b1fa:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
2002b20a:	02400000 022c0000 00000000 00000000     ..@...,.........
2002b21a:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
2002b22a:	02410000 0000023a 00000000 00000000     ..A.:...........
2002b23a:	0000005b 00000000 026c02bb 00000000     [.........l.....
2002b24a:	02420000 00000239 00000000 00000000     ..B.9...........
2002b25a:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
2002b27a:	0000005d 00000000 026e02bd 00000000     ].........n.....
2002b28a:	01d30000 02210237 00000000 00000000     ....7.!.........
2002b29a:	001b005e 000001b7 026f02be 00000000     ^.........o.....
2002b2aa:	00000000 02220238 00000000 00000000     ....8.".........
2002b2ba:	0022005f 000001b8 027002bf 00000000     _.".......p.....
2002b2ca:	00000000 02230000 00000000 00000000     ......#.........
2002b2da:	00230060 000001b2 027102c0 00000000     `.#.......q.....
2002b2ea:	00000000 02240000 00000000 00000000     ......$.........
2002b2fa:	00210061 000001b4 027202c1 00000000     a.!.......r.....
2002b30a:	00000000 02250000 00000000 00000000     ......%.........
2002b31a:	00190062 000001b5 027302c2 00000000     b.........s.....
2002b32a:	00000000 02260000 00000000 00000000     ......&.........
2002b33a:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
2002b35a:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
2002b37a:	00000065 00000219 027602c5 00000000     e.........v.....
	...
2002b39a:	00000066 00000000 027702c6 00000000     f.........w.....
2002b3aa:	024b0000 00000000 00000000 00000000     ..K.............
2002b3ba:	00000067 00000000 027802c7 00000000     g.........x.....
	...
2002b3da:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
2002b3fa:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
2002b41a:	0000006a 01c60149 027b02ca 00000000     j...I.....{.....
	...
2002b43a:	0000006b 01c80148 027c02cb 00000000     k...H.....|.....
	...
2002b45a:	0000006c 00000000 027d02cc 00000000     l.........}.....
	...
2002b47a:	0000006d 00000000 027e02cd 00000000     m.........~.....
	...
2002b49a:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
2002b4ba:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
2002b4da:	00000070 01c50000 028102d0 00000000     p...............
	...
2002b4fa:	00000071 00000000 028202d1 00000000     q...............
2002b50a:	02430000 00000000 00000000 00000000     ..C.............
2002b51a:	00000072 00000000 028302d2 00000000     r...............
	...
2002b53a:	00000073 00000000 028402d3 00000000     s...............
	...
2002b55a:	00000074 00000000 028502d4 00000000     t...............
	...
2002b57a:	00000075 00000000 028602d5 00000000     u...............
	...
2002b59a:	00000076 00000000 028702d6 00000000     v...............
	...
2002b5ba:	00000077 0000014d 028802d7 01620000     w...M.........b.
2002b5ca:	02440000 00000000 00000000 00000000     ..D.............
2002b5da:	00000078 0000014c 028902d8 00000000     x...L...........
	...
2002b5fa:	00000079 0000014a 028a02d9 01630190     y...J.........c.
2002b60a:	02450000 022f0000 00000000 00000000     ..E.../.........
2002b61a:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
2002b62a:	02460000 02300000 00000000 00000000     ..F...0.........
2002b63a:	0000007b 00000000 028c02db 01650193     {.............e.
2002b64a:	02470000 02310000 00000000 00000000     ..G...1.........
2002b65a:	0000007c 00000000 028d02dc 01660196     |.............f.
2002b66a:	02480000 02320000 00000000 00000000     ..H...2.........
2002b67a:	0000007d 00000000 028e02dd 01670198     }.............g.
2002b68a:	02490000 02330000 00000000 00000000     ..I...3.........
2002b69a:	0000007e 00000000 028f02de 00000000     ~...............
2002b6aa:	024a0000 02340000 00000000 00000000     ..J...4.........
2002b6ba:	00000000 04030201 00000000 01060204     ................
	...

2002b6cc <CSWTCH.47>:
2002b6cc:	0000003f 00003f00 003f0000              ?....?....?.

2002b6d8 <hpsys_dll2_limit>:
	...
2002b6e0:	112a8800 112a8800                       ..*...*.

2002b6e8 <hpsys_dvfs_config>:
2002b6e8:	000906fb 00100330 000a08fd 00110331     ....0.......1...
2002b6f8:	000d0b00 00130213 000f0d02 00130213     ................

2002b708 <crc32tab>:
2002b708:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
2002b718:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
2002b728:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
2002b738:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
2002b748:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
2002b758:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
2002b768:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
2002b778:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
2002b788:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
2002b798:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
2002b7a8:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
2002b7b8:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
2002b7c8:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
2002b7d8:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
2002b7e8:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
2002b7f8:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
2002b808:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
2002b818:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
2002b828:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
2002b838:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
2002b848:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
2002b858:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
2002b868:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
2002b878:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
2002b888:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
2002b898:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
2002b8a8:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
2002b8b8:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
2002b8c8:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
2002b8d8:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
2002b8e8:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
2002b8f8:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
2002b908:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
2002b918:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
2002b928:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
2002b938:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
2002b948:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
2002b958:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
2002b968:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
2002b978:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
2002b988:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
2002b998:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
2002b9a8:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
2002b9b8:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
2002b9c8:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
2002b9d8:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
2002b9e8:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
2002b9f8:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
2002ba08:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
2002ba18:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
2002ba28:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
2002ba38:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
2002ba48:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
2002ba58:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
2002ba68:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
2002ba78:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
2002ba88:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
2002ba98:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
2002baa8:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
2002bab8:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
2002bac8:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
2002bad8:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
2002bae8:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
2002baf8:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

2002bb08 <CSWTCH.5>:
2002bb08:	2002bba8 2002bb78 2002bb48 2002bb18     ... x.. H.. ... 

2002bb18 <mbedtls_sha512_info>:
2002bb18:	00000008 2002acc8 00000040 00000080     ....... @.......
2002bb28:	20025dbd 20025db3 20025daf 20025da9     .]. .]. .]. .]. 
2002bb38:	20025d8d 20025d7b 20025d77 20025d73     .]. {]. w]. s]. 

2002bb48 <mbedtls_sha384_info>:
2002bb48:	00000007 2002accf 00000030 00000080     ....... 0.......
2002bb58:	20025db7 20025db3 20025daf 20025da3     .]. .]. .]. .]. 
2002bb68:	20025d8d 20025d7b 20025d77 20025d73     .]. {]. w]. s]. 

2002bb78 <mbedtls_sha256_info>:
2002bb78:	00000006 2002acd6 00000020 00000040     .......  ...@...
2002bb88:	20025d6d 20025d63 20025d5f 20025d59     m]. c]. _]. Y]. 
2002bb98:	20025d3d 20025d2b 20025d27 20025d23     =]. +]. ']. #]. 

2002bba8 <mbedtls_sha224_info>:
2002bba8:	00000005 2002acdd 0000001c 00000040     ....... ....@...
2002bbb8:	20025d67 20025d63 20025d5f 20025d53     g]. c]. _]. S]. 
2002bbc8:	20025d3d 20025d2b 20025d27 20025d23     =]. +]. ']. #]. 

2002bbd8 <sha256_padding>:
2002bbd8:	00000080 00000000 00000000 00000000     ................
	...

2002bc18 <K>:
2002bc18:	428a2f98 71374491 b5c0fbcf e9b5dba5     ./.B.D7q........
2002bc28:	3956c25b 59f111f1 923f82a4 ab1c5ed5     [.V9...Y..?..^..
2002bc38:	d807aa98 12835b01 243185be 550c7dc3     .....[....1$.}.U
2002bc48:	72be5d74 80deb1fe 9bdc06a7 c19bf174     t].r........t...
2002bc58:	e49b69c1 efbe4786 0fc19dc6 240ca1cc     .i...G.........$
2002bc68:	2de92c6f 4a7484aa 5cb0a9dc 76f988da     o,.-..tJ...\...v
2002bc78:	983e5152 a831c66d b00327c8 bf597fc7     RQ>.m.1..'....Y.
2002bc88:	c6e00bf3 d5a79147 06ca6351 14292967     ....G...Qc..g)).
2002bc98:	27b70a85 2e1b2138 4d2c6dfc 53380d13     ...'8!...m,M..8S
2002bca8:	650a7354 766a0abb 81c2c92e 92722c85     Ts.e..jv.....,r.
2002bcb8:	a2bfe8a1 a81a664b c24b8b70 c76c51a3     ....Kf..p.K..Ql.
2002bcc8:	d192e819 d6990624 f40e3585 106aa070     ....$....5..p.j.
2002bcd8:	19a4c116 1e376c08 2748774c 34b0bcb5     .....l7.LwH'...4
2002bce8:	391c0cb3 4ed8aa4a 5b9cca4f 682e6ff3     ...9J..NO..[.o.h
2002bcf8:	748f82ee 78a5636f 84c87814 8cc70208     ...toc.x.x......
2002bd08:	90befffa a4506ceb bef9a3f7 c67178f2     .....lP......xq.

2002bd18 <sha512_padding>:
2002bd18:	00000080 00000000 00000000 00000000     ................
	...

2002bd98 <K>:
2002bd98:	d728ae22 428a2f98 23ef65cd 71374491     ".(../.B.e.#.D7q
2002bda8:	ec4d3b2f b5c0fbcf 8189dbbc e9b5dba5     /;M.............
2002bdb8:	f348b538 3956c25b b605d019 59f111f1     8.H.[.V9.......Y
2002bdc8:	af194f9b 923f82a4 da6d8118 ab1c5ed5     .O....?...m..^..
2002bdd8:	a3030242 d807aa98 45706fbe 12835b01     B........opE.[..
2002bde8:	4ee4b28c 243185be d5ffb4e2 550c7dc3     ...N..1$.....}.U
2002bdf8:	f27b896f 72be5d74 3b1696b1 80deb1fe     o.{.t].r...;....
2002be08:	25c71235 9bdc06a7 cf692694 c19bf174     5..%.....&i.t...
2002be18:	9ef14ad2 e49b69c1 384f25e3 efbe4786     .J...i...%O8.G..
2002be28:	8b8cd5b5 0fc19dc6 77ac9c65 240ca1cc     ........e..w...$
2002be38:	592b0275 2de92c6f 6ea6e483 4a7484aa     u.+Yo,.-...n..tJ
2002be48:	bd41fbd4 5cb0a9dc 831153b5 76f988da     ..A....\.S.....v
2002be58:	ee66dfab 983e5152 2db43210 a831c66d     ..f.RQ>..2.-m.1.
2002be68:	98fb213f b00327c8 beef0ee4 bf597fc7     ?!...'........Y.
2002be78:	3da88fc2 c6e00bf3 930aa725 d5a79147     ...=....%...G...
2002be88:	e003826f 06ca6351 0a0e6e70 14292967     o...Qc..pn..g)).
2002be98:	46d22ffc 27b70a85 5c26c926 2e1b2138     ./.F...'&.&\8!..
2002bea8:	5ac42aed 4d2c6dfc 9d95b3df 53380d13     .*.Z.m,M......8S
2002beb8:	8baf63de 650a7354 3c77b2a8 766a0abb     .c..Ts.e..w<..jv
2002bec8:	47edaee6 81c2c92e 1482353b 92722c85     ...G....;5...,r.
2002bed8:	4cf10364 a2bfe8a1 bc423001 a81a664b     d..L.....0B.Kf..
2002bee8:	d0f89791 c24b8b70 0654be30 c76c51a3     ....p.K.0.T..Ql.
2002bef8:	d6ef5218 d192e819 5565a910 d6990624     .R........eU$...
2002bf08:	5771202a f40e3585 32bbd1b8 106aa070     * qW.5.....2p.j.
2002bf18:	b8d2d0c8 19a4c116 5141ab53 1e376c08     ........S.AQ.l7.
2002bf28:	df8eeb99 2748774c e19b48a8 34b0bcb5     ....LwH'.H.....4
2002bf38:	c5c95a63 391c0cb3 e3418acb 4ed8aa4a     cZ.....9..A.J..N
2002bf48:	7763e373 5b9cca4f d6b2b8a3 682e6ff3     s.cwO..[.....o.h
2002bf58:	5defb2fc 748f82ee 43172f60 78a5636f     ...]...t`/.Coc.x
2002bf68:	a1f0ab72 84c87814 1a6439ec 8cc70208     r....x...9d.....
2002bf78:	23631e28 90befffa de82bde9 a4506ceb     (.c#.........lP.
2002bf88:	b2c67915 bef9a3f7 e372532b c67178f2     .y......+Sr..xq.
2002bf98:	ea26619c ca273ece 21c0c207 d186b8c7     .a&..>'....!....
2002bfa8:	cde0eb1e eada7dd6 ee6ed178 f57d4f7f     .....}..x.n..O}.
2002bfb8:	72176fba 06f067aa a2c898a6 0a637dc5     .o.r.g.......}c.
2002bfc8:	bef90dae 113f9804 131c471b 1b710b35     ......?..G..5.q.
2002bfd8:	23047d84 28db77f5 40c72493 32caab7b     .}.#.w.(.$.@{..2
2002bfe8:	15c9bebc 3c9ebe0a 9c100d4c 431d67c4     .......<L....g.C
2002bff8:	cb3e42b6 4cc5d4be fc657e2a 597f299c     .B>....L*~e..).Y
2002c008:	3ad6faec 5fcb6fab 4a475817 6c44198c     ...:.o._.XGJ..Dl

2002c018 <oid_md_alg>:
2002c018:	2002ace4 00000009 2002acee 2002adf7     ... ....... ... 
2002c028:	00000005 2002acf8 00000009 2002ad02     ....... ....... 
2002c038:	2002ae2a 00000006 2002ad0c 00000009     *.. ....... ....
2002c048:	2002ad16 2002ae5d 00000007 2002ad20     ... ].. .... .. 
2002c058:	00000009 2002ad2a 2002ae90 00000008     ....*.. ... ....
	...

2002c07c <oid_pk_alg>:
2002c07c:	2002ad6c 00000009 2002ad76 2002ad84     l.. ....v.. ... 
2002c08c:	00000001 2002ad88 00000007 2002ad90     ....... ....... 
2002c09c:	2002ad9f 00000002 2002adae 00000005     ... ....... ....
2002c0ac:	2002adb4 2002adbc 00000003 00000000     ... ... ........
	...

2002c0cc <mbedtls_rsa_info>:
2002c0cc:	00000001 2002ad84 2002942f 20029423     ....... /.. #.. 
2002c0dc:	20029509 200294e5 200294b9 20029489     ... ... ... ... 
2002c0ec:	20029485 2002946b 20029459 20029435     ... k.. Y.. 5.. 

2002c0fc <_init>:
2002c0fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c0fe:	bf00      	nop
2002c100:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c102:	bc08      	pop	{r3}
2002c104:	469e      	mov	lr, r3
2002c106:	4770      	bx	lr

2002c108 <_fini>:
2002c108:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c10a:	bf00      	nop
2002c10c:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c10e:	bc08      	pop	{r3}
2002c110:	469e      	mov	lr, r3
2002c112:	4770      	bx	lr

2002c114 <__EH_FRAME_BEGIN__>:
2002c114:	0000 0000                                   ....

Disassembly of section .l1_ret_text_HAL_PMU_ConfigPeriLdo:

2002c118 <HAL_PMU_ConfigPeriLdo>:
2002c118:	b538      	push	{r3, r4, r5, lr}
2002c11a:	b150      	cbz	r0, 2002c132 <HAL_PMU_ConfigPeriLdo+0x1a>
2002c11c:	4c18      	ldr	r4, [pc, #96]	@ (2002c180 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c11e:	6863      	ldr	r3, [r4, #4]
2002c120:	b2db      	uxtb	r3, r3
2002c122:	2b07      	cmp	r3, #7
2002c124:	d101      	bne.n	2002c12a <HAL_PMU_ConfigPeriLdo+0x12>
2002c126:	2000      	movs	r0, #0
2002c128:	bd38      	pop	{r3, r4, r5, pc}
2002c12a:	6863      	ldr	r3, [r4, #4]
2002c12c:	b2db      	uxtb	r3, r3
2002c12e:	2b0f      	cmp	r3, #15
2002c130:	d0f9      	beq.n	2002c126 <HAL_PMU_ConfigPeriLdo+0xe>
2002c132:	4c13      	ldr	r4, [pc, #76]	@ (2002c180 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c134:	6863      	ldr	r3, [r4, #4]
2002c136:	b2db      	uxtb	r3, r3
2002c138:	2b07      	cmp	r3, #7
2002c13a:	d0f4      	beq.n	2002c126 <HAL_PMU_ConfigPeriLdo+0xe>
2002c13c:	6863      	ldr	r3, [r4, #4]
2002c13e:	b2db      	uxtb	r3, r3
2002c140:	2b0f      	cmp	r3, #15
2002c142:	d0f0      	beq.n	2002c126 <HAL_PMU_ConfigPeriLdo+0xe>
2002c144:	2810      	cmp	r0, #16
2002c146:	d818      	bhi.n	2002c17a <HAL_PMU_ConfigPeriLdo+0x62>
2002c148:	4b0e      	ldr	r3, [pc, #56]	@ (2002c184 <HAL_PMU_ConfigPeriLdo+0x6c>)
2002c14a:	40c3      	lsrs	r3, r0
2002c14c:	07db      	lsls	r3, r3, #31
2002c14e:	d514      	bpl.n	2002c17a <HAL_PMU_ConfigPeriLdo+0x62>
2002c150:	2900      	cmp	r1, #0
2002c152:	f04f 0421 	mov.w	r4, #33	@ 0x21
2002c156:	bf0c      	ite	eq
2002c158:	2120      	moveq	r1, #32
2002c15a:	2101      	movne	r1, #1
2002c15c:	4d0a      	ldr	r5, [pc, #40]	@ (2002c188 <HAL_PMU_ConfigPeriLdo+0x70>)
2002c15e:	4084      	lsls	r4, r0
2002c160:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
2002c162:	4081      	lsls	r1, r0
2002c164:	ea23 0304 	bic.w	r3, r3, r4
2002c168:	430b      	orrs	r3, r1
2002c16a:	65eb      	str	r3, [r5, #92]	@ 0x5c
2002c16c:	2a00      	cmp	r2, #0
2002c16e:	d0da      	beq.n	2002c126 <HAL_PMU_ConfigPeriLdo+0xe>
2002c170:	f241 3088 	movw	r0, #5000	@ 0x1388
2002c174:	f7f5 fe99 	bl	20021eaa <HAL_Delay_us>
2002c178:	e7d5      	b.n	2002c126 <HAL_PMU_ConfigPeriLdo+0xe>
2002c17a:	2001      	movs	r0, #1
2002c17c:	e7d4      	b.n	2002c128 <HAL_PMU_ConfigPeriLdo+0x10>
2002c17e:	bf00      	nop
2002c180:	5000b000 	.word	0x5000b000
2002c184:	00010101 	.word	0x00010101
2002c188:	500ca000 	.word	0x500ca000

Disassembly of section .l1_ret_text_HAL_PMU_Reboot:

2002c18c <HAL_PMU_Reboot>:
2002c18c:	b508      	push	{r3, lr}
2002c18e:	f3ef 8310 	mrs	r3, PRIMASK
2002c192:	2501      	movs	r5, #1
2002c194:	f385 8810 	msr	PRIMASK, r5
2002c198:	2002      	movs	r0, #2
2002c19a:	f7f6 fbf5 	bl	20022988 <HAL_HPAON_WakeCore>
2002c19e:	4628      	mov	r0, r5
2002c1a0:	f7f8 ffde 	bl	20025160 <HAL_RCC_Reset_and_Halt_LCPU>
2002c1a4:	462a      	mov	r2, r5
2002c1a6:	2100      	movs	r1, #0
2002c1a8:	2008      	movs	r0, #8
2002c1aa:	f7ff ffb5 	bl	2002c118 <HAL_PMU_ConfigPeriLdo>
2002c1ae:	f44f 50fa 	mov.w	r0, #8000	@ 0x1f40
2002c1b2:	f7f5 fe1b 	bl	20021dec <HAL_Delay_us_>
2002c1b6:	2000      	movs	r0, #0
2002c1b8:	f7f8 fdd2 	bl	20024d60 <HAL_RCC_HCPU_GetClockSrc>
2002c1bc:	4604      	mov	r4, r0
2002c1be:	b928      	cbnz	r0, 2002c1cc <HAL_PMU_Reboot+0x40>
2002c1c0:	f7f6 fc0c 	bl	200229dc <HAL_HPAON_EnableXT48>
2002c1c4:	4629      	mov	r1, r5
2002c1c6:	4620      	mov	r0, r4
2002c1c8:	f7f8 fe92 	bl	20024ef0 <HAL_RCC_HCPU_ClockSelect>
2002c1cc:	f245 0250 	movw	r2, #20560	@ 0x5050
2002c1d0:	4c09      	ldr	r4, [pc, #36]	@ (2002c1f8 <HAL_PMU_Reboot+0x6c>)
2002c1d2:	4b0a      	ldr	r3, [pc, #40]	@ (2002c1fc <HAL_PMU_Reboot+0x70>)
2002c1d4:	6763      	str	r3, [r4, #116]	@ 0x74
2002c1d6:	4b0a      	ldr	r3, [pc, #40]	@ (2002c200 <HAL_PMU_Reboot+0x74>)
2002c1d8:	631a      	str	r2, [r3, #48]	@ 0x30
2002c1da:	6823      	ldr	r3, [r4, #0]
2002c1dc:	075b      	lsls	r3, r3, #29
2002c1de:	d506      	bpl.n	2002c1ee <HAL_PMU_Reboot+0x62>
2002c1e0:	6823      	ldr	r3, [r4, #0]
2002c1e2:	4808      	ldr	r0, [pc, #32]	@ (2002c204 <HAL_PMU_Reboot+0x78>)
2002c1e4:	f023 0304 	bic.w	r3, r3, #4
2002c1e8:	6023      	str	r3, [r4, #0]
2002c1ea:	f7f5 fe5e 	bl	20021eaa <HAL_Delay_us>
2002c1ee:	6823      	ldr	r3, [r4, #0]
2002c1f0:	f043 0304 	orr.w	r3, r3, #4
2002c1f4:	6023      	str	r3, [r4, #0]
2002c1f6:	e7fe      	b.n	2002c1f6 <HAL_PMU_Reboot+0x6a>
2002c1f8:	500ca000 	.word	0x500ca000
2002c1fc:	0a50c015 	.word	0x0a50c015
2002c200:	500cb000 	.word	0x500cb000
2002c204:	000186a0 	.word	0x000186a0

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef:

2002c208 <HAL_PMU_GetHpsysVoutRef>:
2002c208:	4b04      	ldr	r3, [pc, #16]	@ (2002c21c <HAL_PMU_GetHpsysVoutRef+0x14>)
2002c20a:	781a      	ldrb	r2, [r3, #0]
2002c20c:	b122      	cbz	r2, 2002c218 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c20e:	b118      	cbz	r0, 2002c218 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c210:	78db      	ldrb	r3, [r3, #3]
2002c212:	7003      	strb	r3, [r0, #0]
2002c214:	2000      	movs	r0, #0
2002c216:	4770      	bx	lr
2002c218:	2001      	movs	r0, #1
2002c21a:	4770      	bx	lr
2002c21c:	20049f64 	.word	0x20049f64

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef2:

2002c220 <HAL_PMU_GetHpsysVoutRef2>:
2002c220:	4b04      	ldr	r3, [pc, #16]	@ (2002c234 <HAL_PMU_GetHpsysVoutRef2+0x14>)
2002c222:	781a      	ldrb	r2, [r3, #0]
2002c224:	b122      	cbz	r2, 2002c230 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c226:	b118      	cbz	r0, 2002c230 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c228:	7b5b      	ldrb	r3, [r3, #13]
2002c22a:	7003      	strb	r3, [r0, #0]
2002c22c:	2000      	movs	r0, #0
2002c22e:	4770      	bx	lr
2002c230:	2001      	movs	r0, #1
2002c232:	4770      	bx	lr
2002c234:	20049f64 	.word	0x20049f64
