
build_sf32lb52-lcd_n16r8_test_hcpu\bootloader\bootloader.elf:     file format elf32-littlearm


Disassembly of section .text:

20020204 <deregister_tm_clones>:
20020204:	4803      	ldr	r0, [pc, #12]	@ (20020214 <deregister_tm_clones+0x10>)
20020206:	4b04      	ldr	r3, [pc, #16]	@ (20020218 <deregister_tm_clones+0x14>)
20020208:	4283      	cmp	r3, r0
2002020a:	d002      	beq.n	20020212 <deregister_tm_clones+0xe>
2002020c:	4b03      	ldr	r3, [pc, #12]	@ (2002021c <deregister_tm_clones+0x18>)
2002020e:	b103      	cbz	r3, 20020212 <deregister_tm_clones+0xe>
20020210:	4718      	bx	r3
20020212:	4770      	bx	lr
20020214:	20044910 	.word	0x20044910
20020218:	20044910 	.word	0x20044910
2002021c:	00000000 	.word	0x00000000

20020220 <register_tm_clones>:
20020220:	4b06      	ldr	r3, [pc, #24]	@ (2002023c <register_tm_clones+0x1c>)
20020222:	4907      	ldr	r1, [pc, #28]	@ (20020240 <register_tm_clones+0x20>)
20020224:	1ac9      	subs	r1, r1, r3
20020226:	1089      	asrs	r1, r1, #2
20020228:	bf48      	it	mi
2002022a:	3101      	addmi	r1, #1
2002022c:	1049      	asrs	r1, r1, #1
2002022e:	d003      	beq.n	20020238 <register_tm_clones+0x18>
20020230:	4b04      	ldr	r3, [pc, #16]	@ (20020244 <register_tm_clones+0x24>)
20020232:	b10b      	cbz	r3, 20020238 <register_tm_clones+0x18>
20020234:	4801      	ldr	r0, [pc, #4]	@ (2002023c <register_tm_clones+0x1c>)
20020236:	4718      	bx	r3
20020238:	4770      	bx	lr
2002023a:	bf00      	nop
2002023c:	20044910 	.word	0x20044910
20020240:	20044910 	.word	0x20044910
20020244:	00000000 	.word	0x00000000

20020248 <__do_global_dtors_aux>:
20020248:	b510      	push	{r4, lr}
2002024a:	4c06      	ldr	r4, [pc, #24]	@ (20020264 <__do_global_dtors_aux+0x1c>)
2002024c:	7823      	ldrb	r3, [r4, #0]
2002024e:	b943      	cbnz	r3, 20020262 <__do_global_dtors_aux+0x1a>
20020250:	f7ff ffd8 	bl	20020204 <deregister_tm_clones>
20020254:	4b04      	ldr	r3, [pc, #16]	@ (20020268 <__do_global_dtors_aux+0x20>)
20020256:	b113      	cbz	r3, 2002025e <__do_global_dtors_aux+0x16>
20020258:	4804      	ldr	r0, [pc, #16]	@ (2002026c <__do_global_dtors_aux+0x24>)
2002025a:	f3af 8000 	nop.w
2002025e:	2301      	movs	r3, #1
20020260:	7023      	strb	r3, [r4, #0]
20020262:	bd10      	pop	{r4, pc}
20020264:	20044910 	.word	0x20044910
20020268:	00000000 	.word	0x00000000
2002026c:	20026da4 	.word	0x20026da4

20020270 <frame_dummy>:
20020270:	b508      	push	{r3, lr}
20020272:	4b05      	ldr	r3, [pc, #20]	@ (20020288 <frame_dummy+0x18>)
20020274:	b11b      	cbz	r3, 2002027e <frame_dummy+0xe>
20020276:	4905      	ldr	r1, [pc, #20]	@ (2002028c <frame_dummy+0x1c>)
20020278:	4805      	ldr	r0, [pc, #20]	@ (20020290 <frame_dummy+0x20>)
2002027a:	f3af 8000 	nop.w
2002027e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20020282:	f7ff bfcd 	b.w	20020220 <register_tm_clones>
20020286:	bf00      	nop
20020288:	00000000 	.word	0x00000000
2002028c:	20044914 	.word	0x20044914
20020290:	20026da4 	.word	0x20026da4

20020294 <boot_uart_tx>:
20020294:	2300      	movs	r3, #0
20020296:	b510      	push	{r4, lr}
20020298:	4293      	cmp	r3, r2
2002029a:	db00      	blt.n	2002029e <boot_uart_tx+0xa>
2002029c:	bd10      	pop	{r4, pc}
2002029e:	69c4      	ldr	r4, [r0, #28]
200202a0:	0624      	lsls	r4, r4, #24
200202a2:	d5fc      	bpl.n	2002029e <boot_uart_tx+0xa>
200202a4:	5ccc      	ldrb	r4, [r1, r3]
200202a6:	3301      	adds	r3, #1
200202a8:	6284      	str	r4, [r0, #40]	@ 0x28
200202aa:	e7f5      	b.n	20020298 <boot_uart_tx+0x4>

200202ac <boot_error>:
200202ac:	b507      	push	{r0, r1, r2, lr}
200202ae:	2201      	movs	r2, #1
200202b0:	f88d 0007 	strb.w	r0, [sp, #7]
200202b4:	f10d 0107 	add.w	r1, sp, #7
200202b8:	480e      	ldr	r0, [pc, #56]	@ (200202f4 <boot_error+0x48>)
200202ba:	f7ff ffeb 	bl	20020294 <boot_uart_tx>
200202be:	4b0e      	ldr	r3, [pc, #56]	@ (200202f8 <boot_error+0x4c>)
200202c0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202c4:	f002 0203 	and.w	r2, r2, #3
200202c8:	2a03      	cmp	r2, #3
200202ca:	f102 0101 	add.w	r1, r2, #1
200202ce:	d00f      	beq.n	200202f0 <boot_error+0x44>
200202d0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202d4:	f022 0203 	bic.w	r2, r2, #3
200202d8:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202dc:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202e0:	430a      	orrs	r2, r1
200202e2:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202e6:	f006 fd99 	bl	20026e1c <HAL_PMU_Reboot>
200202ea:	b003      	add	sp, #12
200202ec:	f85d fb04 	ldr.w	pc, [sp], #4
200202f0:	e7fe      	b.n	200202f0 <boot_error+0x44>
200202f2:	bf00      	nop
200202f4:	50084000 	.word	0x50084000
200202f8:	500ca000 	.word	0x500ca000

200202fc <HAL_MspInit>:
200202fc:	2234      	movs	r2, #52	@ 0x34
200202fe:	4b01      	ldr	r3, [pc, #4]	@ (20020304 <HAL_MspInit+0x8>)
20020300:	60da      	str	r2, [r3, #12]
20020302:	4770      	bx	lr
20020304:	50094000 	.word	0x50094000

20020308 <mpu_config>:
20020308:	4770      	bx	lr

2002030a <cache_enable>:
2002030a:	4770      	bx	lr

2002030c <board_pinmux_mpi1_puya_base>:
2002030c:	b510      	push	{r4, lr}
2002030e:	2301      	movs	r3, #1
20020310:	2200      	movs	r2, #0
20020312:	2103      	movs	r1, #3
20020314:	2002      	movs	r0, #2
20020316:	f004 fb31 	bl	2002497c <HAL_PIN_Set>
2002031a:	2301      	movs	r3, #1
2002031c:	2200      	movs	r2, #0
2002031e:	4619      	mov	r1, r3
20020320:	200a      	movs	r0, #10
20020322:	f004 fb2b 	bl	2002497c <HAL_PIN_Set>
20020326:	2301      	movs	r3, #1
20020328:	2210      	movs	r2, #16
2002032a:	2109      	movs	r1, #9
2002032c:	2008      	movs	r0, #8
2002032e:	f004 fb25 	bl	2002497c <HAL_PIN_Set>
20020332:	2301      	movs	r3, #1
20020334:	2210      	movs	r2, #16
20020336:	210a      	movs	r1, #10
20020338:	2003      	movs	r0, #3
2002033a:	f004 fb1f 	bl	2002497c <HAL_PIN_Set>
2002033e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020342:	2301      	movs	r3, #1
20020344:	2200      	movs	r2, #0
20020346:	210c      	movs	r1, #12
20020348:	200b      	movs	r0, #11
2002034a:	f004 bb17 	b.w	2002497c <HAL_PIN_Set>

2002034e <board_pinmux_mpi1_puya_ext>:
2002034e:	b510      	push	{r4, lr}
20020350:	4604      	mov	r4, r0
20020352:	2101      	movs	r1, #1
20020354:	2005      	movs	r0, #5
20020356:	f004 fc55 	bl	20024c04 <HAL_PIN_Set_Analog>
2002035a:	2101      	movs	r1, #1
2002035c:	2006      	movs	r0, #6
2002035e:	f004 fc51 	bl	20024c04 <HAL_PIN_Set_Analog>
20020362:	2101      	movs	r1, #1
20020364:	2007      	movs	r0, #7
20020366:	f004 fc4d 	bl	20024c04 <HAL_PIN_Set_Analog>
2002036a:	2101      	movs	r1, #1
2002036c:	2009      	movs	r0, #9
2002036e:	f004 fc49 	bl	20024c04 <HAL_PIN_Set_Analog>
20020372:	2101      	movs	r1, #1
20020374:	200c      	movs	r0, #12
20020376:	f004 fc45 	bl	20024c04 <HAL_PIN_Set_Analog>
2002037a:	2101      	movs	r1, #1
2002037c:	200d      	movs	r0, #13
2002037e:	f004 fc41 	bl	20024c04 <HAL_PIN_Set_Analog>
20020382:	2101      	movs	r1, #1
20020384:	b154      	cbz	r4, 2002039c <board_pinmux_mpi1_puya_ext+0x4e>
20020386:	4608      	mov	r0, r1
20020388:	f004 fc3c 	bl	20024c04 <HAL_PIN_Set_Analog>
2002038c:	2301      	movs	r3, #1
2002038e:	2230      	movs	r2, #48	@ 0x30
20020390:	210b      	movs	r1, #11
20020392:	2004      	movs	r0, #4
20020394:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020398:	f004 baf0 	b.w	2002497c <HAL_PIN_Set>
2002039c:	2004      	movs	r0, #4
2002039e:	f004 fc31 	bl	20024c04 <HAL_PIN_Set_Analog>
200203a2:	2301      	movs	r3, #1
200203a4:	2230      	movs	r2, #48	@ 0x30
200203a6:	210b      	movs	r1, #11
200203a8:	4618      	mov	r0, r3
200203aa:	e7f3      	b.n	20020394 <board_pinmux_mpi1_puya_ext+0x46>

200203ac <board_pinmux_mpi1_gd>:
200203ac:	b508      	push	{r3, lr}
200203ae:	2200      	movs	r2, #0
200203b0:	2301      	movs	r3, #1
200203b2:	2103      	movs	r1, #3
200203b4:	2005      	movs	r0, #5
200203b6:	f004 fae1 	bl	2002497c <HAL_PIN_Set>
200203ba:	2301      	movs	r3, #1
200203bc:	2200      	movs	r2, #0
200203be:	4619      	mov	r1, r3
200203c0:	200a      	movs	r0, #10
200203c2:	f004 fadb 	bl	2002497c <HAL_PIN_Set>
200203c6:	2301      	movs	r3, #1
200203c8:	2210      	movs	r2, #16
200203ca:	2109      	movs	r1, #9
200203cc:	200c      	movs	r0, #12
200203ce:	f004 fad5 	bl	2002497c <HAL_PIN_Set>
200203d2:	2301      	movs	r3, #1
200203d4:	2210      	movs	r2, #16
200203d6:	210a      	movs	r1, #10
200203d8:	2003      	movs	r0, #3
200203da:	f004 facf 	bl	2002497c <HAL_PIN_Set>
200203de:	2301      	movs	r3, #1
200203e0:	2230      	movs	r2, #48	@ 0x30
200203e2:	210b      	movs	r1, #11
200203e4:	4618      	mov	r0, r3
200203e6:	f004 fac9 	bl	2002497c <HAL_PIN_Set>
200203ea:	2301      	movs	r3, #1
200203ec:	2230      	movs	r2, #48	@ 0x30
200203ee:	210c      	movs	r1, #12
200203f0:	2009      	movs	r0, #9
200203f2:	f004 fac3 	bl	2002497c <HAL_PIN_Set>
200203f6:	2101      	movs	r1, #1
200203f8:	2002      	movs	r0, #2
200203fa:	f004 fc03 	bl	20024c04 <HAL_PIN_Set_Analog>
200203fe:	2101      	movs	r1, #1
20020400:	2004      	movs	r0, #4
20020402:	f004 fbff 	bl	20024c04 <HAL_PIN_Set_Analog>
20020406:	2101      	movs	r1, #1
20020408:	2006      	movs	r0, #6
2002040a:	f004 fbfb 	bl	20024c04 <HAL_PIN_Set_Analog>
2002040e:	2101      	movs	r1, #1
20020410:	2007      	movs	r0, #7
20020412:	f004 fbf7 	bl	20024c04 <HAL_PIN_Set_Analog>
20020416:	2101      	movs	r1, #1
20020418:	2008      	movs	r0, #8
2002041a:	f004 fbf3 	bl	20024c04 <HAL_PIN_Set_Analog>
2002041e:	2101      	movs	r1, #1
20020420:	200b      	movs	r0, #11
20020422:	f004 fbef 	bl	20024c04 <HAL_PIN_Set_Analog>
20020426:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002042a:	2101      	movs	r1, #1
2002042c:	200d      	movs	r0, #13
2002042e:	f004 bbe9 	b.w	20024c04 <HAL_PIN_Set_Analog>

20020432 <board_pinmux_mpi2>:
20020432:	b510      	push	{r4, lr}
20020434:	2301      	movs	r3, #1
20020436:	2200      	movs	r2, #0
20020438:	2119      	movs	r1, #25
2002043a:	201e      	movs	r0, #30
2002043c:	f004 fa9e 	bl	2002497c <HAL_PIN_Set>
20020440:	2301      	movs	r3, #1
20020442:	2200      	movs	r2, #0
20020444:	211b      	movs	r1, #27
20020446:	201a      	movs	r0, #26
20020448:	f004 fa98 	bl	2002497c <HAL_PIN_Set>
2002044c:	2301      	movs	r3, #1
2002044e:	2210      	movs	r2, #16
20020450:	2121      	movs	r1, #33	@ 0x21
20020452:	201d      	movs	r0, #29
20020454:	f004 fa92 	bl	2002497c <HAL_PIN_Set>
20020458:	2301      	movs	r3, #1
2002045a:	2210      	movs	r2, #16
2002045c:	2122      	movs	r1, #34	@ 0x22
2002045e:	201b      	movs	r0, #27
20020460:	f004 fa8c 	bl	2002497c <HAL_PIN_Set>
20020464:	2301      	movs	r3, #1
20020466:	2230      	movs	r2, #48	@ 0x30
20020468:	2123      	movs	r1, #35	@ 0x23
2002046a:	201c      	movs	r0, #28
2002046c:	f004 fa86 	bl	2002497c <HAL_PIN_Set>
20020470:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020474:	2301      	movs	r3, #1
20020476:	2230      	movs	r2, #48	@ 0x30
20020478:	2124      	movs	r1, #36	@ 0x24
2002047a:	201f      	movs	r0, #31
2002047c:	f004 ba7e 	b.w	2002497c <HAL_PIN_Set>

20020480 <board_pinmux_sd>:
20020480:	b510      	push	{r4, lr}
20020482:	2301      	movs	r3, #1
20020484:	2230      	movs	r2, #48	@ 0x30
20020486:	f44f 71da 	mov.w	r1, #436	@ 0x1b4
2002048a:	201d      	movs	r0, #29
2002048c:	f004 fa76 	bl	2002497c <HAL_PIN_Set>
20020490:	2014      	movs	r0, #20
20020492:	f001 fcc6 	bl	20021e22 <HAL_Delay_us>
20020496:	2301      	movs	r3, #1
20020498:	2200      	movs	r2, #0
2002049a:	f44f 71d9 	mov.w	r1, #434	@ 0x1b2
2002049e:	201c      	movs	r0, #28
200204a0:	f004 fa6c 	bl	2002497c <HAL_PIN_Set>
200204a4:	2301      	movs	r3, #1
200204a6:	2230      	movs	r2, #48	@ 0x30
200204a8:	f240 11b5 	movw	r1, #437	@ 0x1b5
200204ac:	201e      	movs	r0, #30
200204ae:	f004 fa65 	bl	2002497c <HAL_PIN_Set>
200204b2:	2301      	movs	r3, #1
200204b4:	2230      	movs	r2, #48	@ 0x30
200204b6:	f44f 71db 	mov.w	r1, #438	@ 0x1b6
200204ba:	201f      	movs	r0, #31
200204bc:	f004 fa5e 	bl	2002497c <HAL_PIN_Set>
200204c0:	2301      	movs	r3, #1
200204c2:	2230      	movs	r2, #48	@ 0x30
200204c4:	f240 11b7 	movw	r1, #439	@ 0x1b7
200204c8:	201a      	movs	r0, #26
200204ca:	f004 fa57 	bl	2002497c <HAL_PIN_Set>
200204ce:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200204d2:	2301      	movs	r3, #1
200204d4:	2230      	movs	r2, #48	@ 0x30
200204d6:	f44f 71dc 	mov.w	r1, #440	@ 0x1b8
200204da:	201b      	movs	r0, #27
200204dc:	f004 ba4e 	b.w	2002497c <HAL_PIN_Set>

200204e0 <board_boot_from>:
200204e0:	b510      	push	{r4, lr}
200204e2:	4b0d      	ldr	r3, [pc, #52]	@ (20020518 <board_boot_from+0x38>)
200204e4:	685b      	ldr	r3, [r3, #4]
200204e6:	f3c3 2302 	ubfx	r3, r3, #8, #3
200204ea:	2b07      	cmp	r3, #7
200204ec:	d10c      	bne.n	20020508 <board_boot_from+0x28>
200204ee:	2400      	movs	r4, #0
200204f0:	3401      	adds	r4, #1
200204f2:	2101      	movs	r1, #1
200204f4:	4620      	mov	r0, r4
200204f6:	f004 fb85 	bl	20024c04 <HAL_PIN_Set_Analog>
200204fa:	2c0d      	cmp	r4, #13
200204fc:	d1f8      	bne.n	200204f0 <board_boot_from+0x10>
200204fe:	2000      	movs	r0, #0
20020500:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020504:	f002 b9f6 	b.w	200228f4 <HAL_Get_backup>
20020508:	b11b      	cbz	r3, 20020512 <board_boot_from+0x32>
2002050a:	2b01      	cmp	r3, #1
2002050c:	d1f7      	bne.n	200204fe <board_boot_from+0x1e>
2002050e:	2002      	movs	r0, #2
20020510:	bd10      	pop	{r4, pc}
20020512:	2001      	movs	r0, #1
20020514:	e7fc      	b.n	20020510 <board_boot_from+0x30>
20020516:	bf00      	nop
20020518:	5000b000 	.word	0x5000b000

2002051c <board_flash_power_on>:
2002051c:	4770      	bx	lr

2002051e <board_pinmux_psram_func0>:
2002051e:	b508      	push	{r3, lr}
20020520:	2210      	movs	r2, #16
20020522:	2301      	movs	r3, #1
20020524:	2109      	movs	r1, #9
20020526:	2002      	movs	r0, #2
20020528:	f004 fa28 	bl	2002497c <HAL_PIN_Set>
2002052c:	2301      	movs	r3, #1
2002052e:	2210      	movs	r2, #16
20020530:	210a      	movs	r1, #10
20020532:	2003      	movs	r0, #3
20020534:	f004 fa22 	bl	2002497c <HAL_PIN_Set>
20020538:	2301      	movs	r3, #1
2002053a:	2210      	movs	r2, #16
2002053c:	210b      	movs	r1, #11
2002053e:	2004      	movs	r0, #4
20020540:	f004 fa1c 	bl	2002497c <HAL_PIN_Set>
20020544:	2301      	movs	r3, #1
20020546:	2210      	movs	r2, #16
20020548:	210c      	movs	r1, #12
2002054a:	2005      	movs	r0, #5
2002054c:	f004 fa16 	bl	2002497c <HAL_PIN_Set>
20020550:	2301      	movs	r3, #1
20020552:	2210      	movs	r2, #16
20020554:	210d      	movs	r1, #13
20020556:	2006      	movs	r0, #6
20020558:	f004 fa10 	bl	2002497c <HAL_PIN_Set>
2002055c:	2301      	movs	r3, #1
2002055e:	2210      	movs	r2, #16
20020560:	210e      	movs	r1, #14
20020562:	2007      	movs	r0, #7
20020564:	f004 fa0a 	bl	2002497c <HAL_PIN_Set>
20020568:	2301      	movs	r3, #1
2002056a:	2210      	movs	r2, #16
2002056c:	210f      	movs	r1, #15
2002056e:	2008      	movs	r0, #8
20020570:	f004 fa04 	bl	2002497c <HAL_PIN_Set>
20020574:	2210      	movs	r2, #16
20020576:	2301      	movs	r3, #1
20020578:	4611      	mov	r1, r2
2002057a:	2009      	movs	r0, #9
2002057c:	f004 f9fe 	bl	2002497c <HAL_PIN_Set>
20020580:	2301      	movs	r3, #1
20020582:	2210      	movs	r2, #16
20020584:	2106      	movs	r1, #6
20020586:	200a      	movs	r0, #10
20020588:	f004 f9f8 	bl	2002497c <HAL_PIN_Set>
2002058c:	2301      	movs	r3, #1
2002058e:	2200      	movs	r2, #0
20020590:	4619      	mov	r1, r3
20020592:	200b      	movs	r0, #11
20020594:	f004 f9f2 	bl	2002497c <HAL_PIN_Set>
20020598:	2301      	movs	r3, #1
2002059a:	2200      	movs	r2, #0
2002059c:	2103      	movs	r1, #3
2002059e:	200c      	movs	r0, #12
200205a0:	f004 f9ec 	bl	2002497c <HAL_PIN_Set>
200205a4:	2101      	movs	r1, #1
200205a6:	4608      	mov	r0, r1
200205a8:	f004 fb2c 	bl	20024c04 <HAL_PIN_Set_Analog>
200205ac:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200205b0:	2101      	movs	r1, #1
200205b2:	200d      	movs	r0, #13
200205b4:	f004 bb26 	b.w	20024c04 <HAL_PIN_Set_Analog>

200205b8 <board_pinmux_psram_func1_2_4>:
200205b8:	b510      	push	{r4, lr}
200205ba:	2301      	movs	r3, #1
200205bc:	4604      	mov	r4, r0
200205be:	2210      	movs	r2, #16
200205c0:	2109      	movs	r1, #9
200205c2:	2002      	movs	r0, #2
200205c4:	f004 f9da 	bl	2002497c <HAL_PIN_Set>
200205c8:	2301      	movs	r3, #1
200205ca:	2210      	movs	r2, #16
200205cc:	210a      	movs	r1, #10
200205ce:	2003      	movs	r0, #3
200205d0:	f004 f9d4 	bl	2002497c <HAL_PIN_Set>
200205d4:	2301      	movs	r3, #1
200205d6:	2210      	movs	r2, #16
200205d8:	210b      	movs	r1, #11
200205da:	2004      	movs	r0, #4
200205dc:	f004 f9ce 	bl	2002497c <HAL_PIN_Set>
200205e0:	2301      	movs	r3, #1
200205e2:	2210      	movs	r2, #16
200205e4:	210c      	movs	r1, #12
200205e6:	2005      	movs	r0, #5
200205e8:	f004 f9c8 	bl	2002497c <HAL_PIN_Set>
200205ec:	2301      	movs	r3, #1
200205ee:	2210      	movs	r2, #16
200205f0:	210d      	movs	r1, #13
200205f2:	2009      	movs	r0, #9
200205f4:	f004 f9c2 	bl	2002497c <HAL_PIN_Set>
200205f8:	2301      	movs	r3, #1
200205fa:	2210      	movs	r2, #16
200205fc:	210e      	movs	r1, #14
200205fe:	200a      	movs	r0, #10
20020600:	f004 f9bc 	bl	2002497c <HAL_PIN_Set>
20020604:	2301      	movs	r3, #1
20020606:	2210      	movs	r2, #16
20020608:	210f      	movs	r1, #15
2002060a:	200b      	movs	r0, #11
2002060c:	f004 f9b6 	bl	2002497c <HAL_PIN_Set>
20020610:	2210      	movs	r2, #16
20020612:	2301      	movs	r3, #1
20020614:	4611      	mov	r1, r2
20020616:	200c      	movs	r0, #12
20020618:	f004 f9b0 	bl	2002497c <HAL_PIN_Set>
2002061c:	2301      	movs	r3, #1
2002061e:	2200      	movs	r2, #0
20020620:	4619      	mov	r1, r3
20020622:	2008      	movs	r0, #8
20020624:	f004 f9aa 	bl	2002497c <HAL_PIN_Set>
20020628:	2301      	movs	r3, #1
2002062a:	2200      	movs	r2, #0
2002062c:	2103      	movs	r1, #3
2002062e:	2006      	movs	r0, #6
20020630:	f004 f9a4 	bl	2002497c <HAL_PIN_Set>
20020634:	2c02      	cmp	r4, #2
20020636:	d013      	beq.n	20020660 <board_pinmux_psram_func1_2_4+0xa8>
20020638:	2c04      	cmp	r4, #4
2002063a:	d025      	beq.n	20020688 <board_pinmux_psram_func1_2_4+0xd0>
2002063c:	2c01      	cmp	r4, #1
2002063e:	d12c      	bne.n	2002069a <board_pinmux_psram_func1_2_4+0xe2>
20020640:	2106      	movs	r1, #6
20020642:	4623      	mov	r3, r4
20020644:	2210      	movs	r2, #16
20020646:	200d      	movs	r0, #13
20020648:	f004 f998 	bl	2002497c <HAL_PIN_Set>
2002064c:	4621      	mov	r1, r4
2002064e:	4620      	mov	r0, r4
20020650:	f004 fad8 	bl	20024c04 <HAL_PIN_Set_Analog>
20020654:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020658:	2101      	movs	r1, #1
2002065a:	2007      	movs	r0, #7
2002065c:	f004 bad2 	b.w	20024c04 <HAL_PIN_Set_Analog>
20020660:	2301      	movs	r3, #1
20020662:	2210      	movs	r2, #16
20020664:	2104      	movs	r1, #4
20020666:	4618      	mov	r0, r3
20020668:	f004 f988 	bl	2002497c <HAL_PIN_Set>
2002066c:	2301      	movs	r3, #1
2002066e:	2210      	movs	r2, #16
20020670:	2105      	movs	r1, #5
20020672:	200d      	movs	r0, #13
20020674:	f004 f982 	bl	2002497c <HAL_PIN_Set>
20020678:	4621      	mov	r1, r4
2002067a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002067e:	2301      	movs	r3, #1
20020680:	2200      	movs	r2, #0
20020682:	2007      	movs	r0, #7
20020684:	f004 b97a 	b.w	2002497c <HAL_PIN_Set>
20020688:	2106      	movs	r1, #6
2002068a:	2301      	movs	r3, #1
2002068c:	2200      	movs	r2, #0
2002068e:	200d      	movs	r0, #13
20020690:	f004 f974 	bl	2002497c <HAL_PIN_Set>
20020694:	2101      	movs	r1, #1
20020696:	4608      	mov	r0, r1
20020698:	e7da      	b.n	20020650 <board_pinmux_psram_func1_2_4+0x98>
2002069a:	bd10      	pop	{r4, pc}

2002069c <board_pinmux_psram_func3>:
2002069c:	b508      	push	{r3, lr}
2002069e:	2301      	movs	r3, #1
200206a0:	2200      	movs	r2, #0
200206a2:	4619      	mov	r1, r3
200206a4:	200a      	movs	r0, #10
200206a6:	f004 f969 	bl	2002497c <HAL_PIN_Set>
200206aa:	2301      	movs	r3, #1
200206ac:	2200      	movs	r2, #0
200206ae:	2103      	movs	r1, #3
200206b0:	2009      	movs	r0, #9
200206b2:	f004 f963 	bl	2002497c <HAL_PIN_Set>
200206b6:	2301      	movs	r3, #1
200206b8:	2210      	movs	r2, #16
200206ba:	2109      	movs	r1, #9
200206bc:	2006      	movs	r0, #6
200206be:	f004 f95d 	bl	2002497c <HAL_PIN_Set>
200206c2:	2301      	movs	r3, #1
200206c4:	2210      	movs	r2, #16
200206c6:	210a      	movs	r1, #10
200206c8:	2008      	movs	r0, #8
200206ca:	f004 f957 	bl	2002497c <HAL_PIN_Set>
200206ce:	2301      	movs	r3, #1
200206d0:	2230      	movs	r2, #48	@ 0x30
200206d2:	210b      	movs	r1, #11
200206d4:	2007      	movs	r0, #7
200206d6:	f004 f951 	bl	2002497c <HAL_PIN_Set>
200206da:	2301      	movs	r3, #1
200206dc:	2230      	movs	r2, #48	@ 0x30
200206de:	210c      	movs	r1, #12
200206e0:	200b      	movs	r0, #11
200206e2:	f004 f94b 	bl	2002497c <HAL_PIN_Set>
200206e6:	2101      	movs	r1, #1
200206e8:	4608      	mov	r0, r1
200206ea:	f004 fa8b 	bl	20024c04 <HAL_PIN_Set_Analog>
200206ee:	2101      	movs	r1, #1
200206f0:	2002      	movs	r0, #2
200206f2:	f004 fa87 	bl	20024c04 <HAL_PIN_Set_Analog>
200206f6:	2101      	movs	r1, #1
200206f8:	2003      	movs	r0, #3
200206fa:	f004 fa83 	bl	20024c04 <HAL_PIN_Set_Analog>
200206fe:	2101      	movs	r1, #1
20020700:	2004      	movs	r0, #4
20020702:	f004 fa7f 	bl	20024c04 <HAL_PIN_Set_Analog>
20020706:	2101      	movs	r1, #1
20020708:	2005      	movs	r0, #5
2002070a:	f004 fa7b 	bl	20024c04 <HAL_PIN_Set_Analog>
2002070e:	2101      	movs	r1, #1
20020710:	200c      	movs	r0, #12
20020712:	f004 fa77 	bl	20024c04 <HAL_PIN_Set_Analog>
20020716:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002071a:	2101      	movs	r1, #1
2002071c:	200d      	movs	r0, #13
2002071e:	f004 ba71 	b.w	20024c04 <HAL_PIN_Set_Analog>

20020722 <bootloader_switch_clock>:
20020722:	2102      	movs	r1, #2
20020724:	2004      	movs	r0, #4
20020726:	f004 bb9f 	b.w	20024e68 <HAL_RCC_HCPU_ClockSelect>
	...

2002072c <boot_psram_init>:
2002072c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020730:	2400      	movs	r4, #0
20020732:	b08a      	sub	sp, #40	@ 0x28
20020734:	4605      	mov	r5, r0
20020736:	2230      	movs	r2, #48	@ 0x30
20020738:	4621      	mov	r1, r4
2002073a:	4863      	ldr	r0, [pc, #396]	@ (200208c8 <boot_psram_init+0x19c>)
2002073c:	f005 fa9e 	bl	20025c7c <memset>
20020740:	4b62      	ldr	r3, [pc, #392]	@ (200208cc <boot_psram_init+0x1a0>)
20020742:	1ea8      	subs	r0, r5, #2
20020744:	9305      	str	r3, [sp, #20]
20020746:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
2002074a:	9307      	str	r3, [sp, #28]
2002074c:	2303      	movs	r3, #3
2002074e:	9406      	str	r4, [sp, #24]
20020750:	9309      	str	r3, [sp, #36]	@ 0x24
20020752:	2804      	cmp	r0, #4
20020754:	d804      	bhi.n	20020760 <boot_psram_init+0x34>
20020756:	e8df f000 	tbb	[pc, r0]
2002075a:	6264      	.short	0x6264
2002075c:	5d04      	.short	0x5d04
2002075e:	60          	.byte	0x60
2002075f:	00          	.byte	0x00
20020760:	e7fe      	b.n	20020760 <boot_psram_init+0x34>
20020762:	2305      	movs	r3, #5
20020764:	9309      	str	r3, [sp, #36]	@ 0x24
20020766:	2304      	movs	r3, #4
20020768:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002076a:	9308      	str	r3, [sp, #32]
2002076c:	2d03      	cmp	r5, #3
2002076e:	d162      	bne.n	20020836 <boot_psram_init+0x10a>
20020770:	f001 fa78 	bl	20021c64 <BSP_GetFlash1DIV>
20020774:	a905      	add	r1, sp, #20
20020776:	4602      	mov	r2, r0
20020778:	4853      	ldr	r0, [pc, #332]	@ (200208c8 <boot_psram_init+0x19c>)
2002077a:	f003 fe9b 	bl	200244b4 <HAL_OPI_PSRAM_Init>
2002077e:	462a      	mov	r2, r5
20020780:	2108      	movs	r1, #8
20020782:	4851      	ldr	r0, [pc, #324]	@ (200208c8 <boot_psram_init+0x19c>)
20020784:	f003 fd88 	bl	20024298 <HAL_MPI_MR_WRITE>
20020788:	484f      	ldr	r0, [pc, #316]	@ (200208c8 <boot_psram_init+0x19c>)
2002078a:	f003 fa93 	bl	20023cb4 <HAL_QSPI_GET_CLK>
2002078e:	4b50      	ldr	r3, [pc, #320]	@ (200208d0 <boot_psram_init+0x1a4>)
20020790:	4298      	cmp	r0, r3
20020792:	d948      	bls.n	20020826 <boot_psram_init+0xfa>
20020794:	f103 63a4 	add.w	r3, r3, #85983232	@ 0x5200000
20020798:	f503 4383 	add.w	r3, r3, #16768	@ 0x4180
2002079c:	4298      	cmp	r0, r3
2002079e:	d944      	bls.n	2002082a <boot_psram_init+0xfe>
200207a0:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200207a4:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200207a8:	4298      	cmp	r0, r3
200207aa:	d940      	bls.n	2002082e <boot_psram_init+0x102>
200207ac:	4b49      	ldr	r3, [pc, #292]	@ (200208d4 <boot_psram_init+0x1a8>)
200207ae:	4298      	cmp	r0, r3
200207b0:	d93f      	bls.n	20020832 <boot_psram_init+0x106>
200207b2:	4b49      	ldr	r3, [pc, #292]	@ (200208d8 <boot_psram_init+0x1ac>)
200207b4:	4298      	cmp	r0, r3
200207b6:	bf98      	it	ls
200207b8:	2407      	movls	r4, #7
200207ba:	2600      	movs	r6, #0
200207bc:	2507      	movs	r5, #7
200207be:	f04f 0803 	mov.w	r8, #3
200207c2:	0067      	lsls	r7, r4, #1
200207c4:	b2ff      	uxtb	r7, r7
200207c6:	1e7a      	subs	r2, r7, #1
200207c8:	4633      	mov	r3, r6
200207ca:	b252      	sxtb	r2, r2
200207cc:	4629      	mov	r1, r5
200207ce:	483e      	ldr	r0, [pc, #248]	@ (200208c8 <boot_psram_init+0x19c>)
200207d0:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207d4:	e9cd 6800 	strd	r6, r8, [sp]
200207d8:	f002 f8fc 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
200207dc:	4631      	mov	r1, r6
200207de:	483a      	ldr	r0, [pc, #232]	@ (200208c8 <boot_psram_init+0x19c>)
200207e0:	f002 f8ed 	bl	200229be <HAL_FLASH_SET_AHB_RCMD>
200207e4:	1e62      	subs	r2, r4, #1
200207e6:	4633      	mov	r3, r6
200207e8:	b252      	sxtb	r2, r2
200207ea:	4629      	mov	r1, r5
200207ec:	4836      	ldr	r0, [pc, #216]	@ (200208c8 <boot_psram_init+0x19c>)
200207ee:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207f2:	e9cd 6800 	strd	r6, r8, [sp]
200207f6:	f002 f916 	bl	20022a26 <HAL_FLASH_CFG_AHB_WCMD>
200207fa:	2180      	movs	r1, #128	@ 0x80
200207fc:	4832      	ldr	r0, [pc, #200]	@ (200208c8 <boot_psram_init+0x19c>)
200207fe:	f002 f906 	bl	20022a0e <HAL_FLASH_SET_AHB_WCMD>
20020802:	4623      	mov	r3, r4
20020804:	463a      	mov	r2, r7
20020806:	2101      	movs	r1, #1
20020808:	482f      	ldr	r0, [pc, #188]	@ (200208c8 <boot_psram_init+0x19c>)
2002080a:	f003 fd69 	bl	200242e0 <HAL_MPI_SET_FIXLAT>
2002080e:	b00a      	add	sp, #40	@ 0x28
20020810:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20020814:	2302      	movs	r3, #2
20020816:	9309      	str	r3, [sp, #36]	@ 0x24
20020818:	e7a6      	b.n	20020768 <boot_psram_init+0x3c>
2002081a:	2306      	movs	r3, #6
2002081c:	9309      	str	r3, [sp, #36]	@ 0x24
2002081e:	2308      	movs	r3, #8
20020820:	e7a2      	b.n	20020768 <boot_psram_init+0x3c>
20020822:	2310      	movs	r3, #16
20020824:	e7a0      	b.n	20020768 <boot_psram_init+0x3c>
20020826:	462c      	mov	r4, r5
20020828:	e7c7      	b.n	200207ba <boot_psram_init+0x8e>
2002082a:	2404      	movs	r4, #4
2002082c:	e7c5      	b.n	200207ba <boot_psram_init+0x8e>
2002082e:	2405      	movs	r4, #5
20020830:	e7c3      	b.n	200207ba <boot_psram_init+0x8e>
20020832:	2406      	movs	r4, #6
20020834:	e7c1      	b.n	200207ba <boot_psram_init+0x8e>
20020836:	2d05      	cmp	r5, #5
20020838:	d10d      	bne.n	20020856 <boot_psram_init+0x12a>
2002083a:	f001 fa13 	bl	20021c64 <BSP_GetFlash1DIV>
2002083e:	a905      	add	r1, sp, #20
20020840:	4602      	mov	r2, r0
20020842:	4821      	ldr	r0, [pc, #132]	@ (200208c8 <boot_psram_init+0x19c>)
20020844:	f003 feb2 	bl	200245ac <HAL_LEGACY_PSRAM_Init>
20020848:	481f      	ldr	r0, [pc, #124]	@ (200208c8 <boot_psram_init+0x19c>)
2002084a:	f003 fdbb 	bl	200243c4 <HAL_LEGACY_CFG_READ>
2002084e:	481e      	ldr	r0, [pc, #120]	@ (200208c8 <boot_psram_init+0x19c>)
20020850:	f003 fdd3 	bl	200243fa <HAL_LEGACY_CFG_WRITE>
20020854:	e7db      	b.n	2002080e <boot_psram_init+0xe2>
20020856:	2d06      	cmp	r5, #6
20020858:	d10d      	bne.n	20020876 <boot_psram_init+0x14a>
2002085a:	f001 fa03 	bl	20021c64 <BSP_GetFlash1DIV>
2002085e:	a905      	add	r1, sp, #20
20020860:	4602      	mov	r2, r0
20020862:	4819      	ldr	r0, [pc, #100]	@ (200208c8 <boot_psram_init+0x19c>)
20020864:	f003 ff6e 	bl	20024744 <HAL_HYPER_PSRAM_Init>
20020868:	4817      	ldr	r0, [pc, #92]	@ (200208c8 <boot_psram_init+0x19c>)
2002086a:	f003 ffa5 	bl	200247b8 <HAL_HYPER_CFG_READ>
2002086e:	4816      	ldr	r0, [pc, #88]	@ (200208c8 <boot_psram_init+0x19c>)
20020870:	f003 ffb4 	bl	200247dc <HAL_HYPER_CFG_WRITE>
20020874:	e7cb      	b.n	2002080e <boot_psram_init+0xe2>
20020876:	f001 f9f5 	bl	20021c64 <BSP_GetFlash1DIV>
2002087a:	2500      	movs	r5, #0
2002087c:	2403      	movs	r4, #3
2002087e:	2701      	movs	r7, #1
20020880:	2602      	movs	r6, #2
20020882:	4602      	mov	r2, r0
20020884:	a905      	add	r1, sp, #20
20020886:	4810      	ldr	r0, [pc, #64]	@ (200208c8 <boot_psram_init+0x19c>)
20020888:	f003 fcb0 	bl	200241ec <HAL_SPI_PSRAM_Init>
2002088c:	462b      	mov	r3, r5
2002088e:	2206      	movs	r2, #6
20020890:	4621      	mov	r1, r4
20020892:	e9cd 4702 	strd	r4, r7, [sp, #8]
20020896:	e9cd 5600 	strd	r5, r6, [sp]
2002089a:	480b      	ldr	r0, [pc, #44]	@ (200208c8 <boot_psram_init+0x19c>)
2002089c:	f002 f89a 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
200208a0:	21eb      	movs	r1, #235	@ 0xeb
200208a2:	4809      	ldr	r0, [pc, #36]	@ (200208c8 <boot_psram_init+0x19c>)
200208a4:	f002 f88b 	bl	200229be <HAL_FLASH_SET_AHB_RCMD>
200208a8:	4621      	mov	r1, r4
200208aa:	462b      	mov	r3, r5
200208ac:	462a      	mov	r2, r5
200208ae:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208b2:	e9cd 5600 	strd	r5, r6, [sp]
200208b6:	4804      	ldr	r0, [pc, #16]	@ (200208c8 <boot_psram_init+0x19c>)
200208b8:	f002 f8b5 	bl	20022a26 <HAL_FLASH_CFG_AHB_WCMD>
200208bc:	2138      	movs	r1, #56	@ 0x38
200208be:	4802      	ldr	r0, [pc, #8]	@ (200208c8 <boot_psram_init+0x19c>)
200208c0:	f002 f8a5 	bl	20022a0e <HAL_FLASH_SET_AHB_WCMD>
200208c4:	e7a3      	b.n	2002080e <boot_psram_init+0xe2>
200208c6:	bf00      	nop
200208c8:	2004492c 	.word	0x2004492c
200208cc:	50041000 	.word	0x50041000
200208d0:	07de2901 	.word	0x07de2901
200208d4:	13c9eb01 	.word	0x13c9eb01
200208d8:	17d78401 	.word	0x17d78401

200208dc <board_init_psram>:
200208dc:	b510      	push	{r4, lr}
200208de:	4b15      	ldr	r3, [pc, #84]	@ (20020934 <board_init_psram+0x58>)
200208e0:	685c      	ldr	r4, [r3, #4]
200208e2:	f3c4 2402 	ubfx	r4, r4, #8, #3
200208e6:	1ea3      	subs	r3, r4, #2
200208e8:	2b04      	cmp	r3, #4
200208ea:	d821      	bhi.n	20020930 <board_init_psram+0x54>
200208ec:	e8df f003 	tbb	[pc, r3]
200208f0:	03151b1d 	.word	0x03151b1d
200208f4:	19          	.byte	0x19
200208f5:	00          	.byte	0x00
200208f6:	f7ff fed1 	bl	2002069c <board_pinmux_psram_func3>
200208fa:	2201      	movs	r2, #1
200208fc:	2000      	movs	r0, #0
200208fe:	4611      	mov	r1, r2
20020900:	f006 fa52 	bl	20026da8 <HAL_PMU_ConfigPeriLdo>
20020904:	2001      	movs	r0, #1
20020906:	f7ff ff0c 	bl	20020722 <bootloader_switch_clock>
2002090a:	2002      	movs	r0, #2
2002090c:	f001 f9b6 	bl	20021c7c <BSP_SetFlash1DIV>
20020910:	4620      	mov	r0, r4
20020912:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020916:	f7ff bf09 	b.w	2002072c <boot_psram_init>
2002091a:	2002      	movs	r0, #2
2002091c:	f7ff fe4c 	bl	200205b8 <board_pinmux_psram_func1_2_4>
20020920:	e7eb      	b.n	200208fa <board_init_psram+0x1e>
20020922:	2004      	movs	r0, #4
20020924:	e7fa      	b.n	2002091c <board_init_psram+0x40>
20020926:	2001      	movs	r0, #1
20020928:	e7f8      	b.n	2002091c <board_init_psram+0x40>
2002092a:	f7ff fdf8 	bl	2002051e <board_pinmux_psram_func0>
2002092e:	e7e4      	b.n	200208fa <board_init_psram+0x1e>
20020930:	bd10      	pop	{r4, pc}
20020932:	bf00      	nop
20020934:	5000b000 	.word	0x5000b000

20020938 <erase_nor>:
20020938:	4b15      	ldr	r3, [pc, #84]	@ (20020990 <erase_nor+0x58>)
2002093a:	b570      	push	{r4, r5, r6, lr}
2002093c:	f103 0644 	add.w	r6, r3, #68	@ 0x44
20020940:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
20020944:	bf38      	it	cc
20020946:	461e      	movcc	r6, r3
20020948:	6933      	ldr	r3, [r6, #16]
2002094a:	460c      	mov	r4, r1
2002094c:	4283      	cmp	r3, r0
2002094e:	d901      	bls.n	20020954 <erase_nor+0x1c>
20020950:	2001      	movs	r0, #1
20020952:	bd70      	pop	{r4, r5, r6, pc}
20020954:	6972      	ldr	r2, [r6, #20]
20020956:	441a      	add	r2, r3
20020958:	4282      	cmp	r2, r0
2002095a:	d3f9      	bcc.n	20020950 <erase_nor+0x18>
2002095c:	1ac0      	subs	r0, r0, r3
2002095e:	f3c0 030b 	ubfx	r3, r0, #0, #12
20020962:	b97b      	cbnz	r3, 20020984 <erase_nor+0x4c>
20020964:	f3c1 030b 	ubfx	r3, r1, #0, #12
20020968:	b97b      	cbnz	r3, 2002098a <erase_nor+0x52>
2002096a:	1845      	adds	r5, r0, r1
2002096c:	1b29      	subs	r1, r5, r4
2002096e:	b90c      	cbnz	r4, 20020974 <erase_nor+0x3c>
20020970:	4620      	mov	r0, r4
20020972:	e7ee      	b.n	20020952 <erase_nor+0x1a>
20020974:	4630      	mov	r0, r6
20020976:	f003 f951 	bl	20023c1c <HAL_QSPIEX_SECT_ERASE>
2002097a:	2800      	cmp	r0, #0
2002097c:	d1e8      	bne.n	20020950 <erase_nor+0x18>
2002097e:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
20020982:	e7f3      	b.n	2002096c <erase_nor+0x34>
20020984:	f04f 30ff 	mov.w	r0, #4294967295
20020988:	e7e3      	b.n	20020952 <erase_nor+0x1a>
2002098a:	f06f 0001 	mvn.w	r0, #1
2002098e:	e7e0      	b.n	20020952 <erase_nor+0x1a>
20020990:	20046e7c 	.word	0x20046e7c

20020994 <write_nor>:
20020994:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020998:	4b20      	ldr	r3, [pc, #128]	@ (20020a1c <write_nor+0x88>)
2002099a:	460f      	mov	r7, r1
2002099c:	f103 0844 	add.w	r8, r3, #68	@ 0x44
200209a0:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
200209a4:	bf38      	it	cc
200209a6:	4698      	movcc	r8, r3
200209a8:	f8d8 5010 	ldr.w	r5, [r8, #16]
200209ac:	4616      	mov	r6, r2
200209ae:	4285      	cmp	r5, r0
200209b0:	d902      	bls.n	200209b8 <write_nor+0x24>
200209b2:	2000      	movs	r0, #0
200209b4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200209b8:	f8d8 2014 	ldr.w	r2, [r8, #20]
200209bc:	442a      	add	r2, r5
200209be:	4282      	cmp	r2, r0
200209c0:	d3f7      	bcc.n	200209b2 <write_nor+0x1e>
200209c2:	1b45      	subs	r5, r0, r5
200209c4:	f015 04ff 	ands.w	r4, r5, #255	@ 0xff
200209c8:	d012      	beq.n	200209f0 <write_nor+0x5c>
200209ca:	f5c4 7480 	rsb	r4, r4, #256	@ 0x100
200209ce:	42b4      	cmp	r4, r6
200209d0:	bf28      	it	cs
200209d2:	4634      	movcs	r4, r6
200209d4:	460a      	mov	r2, r1
200209d6:	4623      	mov	r3, r4
200209d8:	4629      	mov	r1, r5
200209da:	4640      	mov	r0, r8
200209dc:	f003 f839 	bl	20023a52 <HAL_QSPIEX_WRITE_PAGE>
200209e0:	4284      	cmp	r4, r0
200209e2:	d1e6      	bne.n	200209b2 <write_nor+0x1e>
200209e4:	4425      	add	r5, r4
200209e6:	4427      	add	r7, r4
200209e8:	1b34      	subs	r4, r6, r4
200209ea:	b91c      	cbnz	r4, 200209f4 <write_nor+0x60>
200209ec:	4630      	mov	r0, r6
200209ee:	e7e1      	b.n	200209b4 <write_nor+0x20>
200209f0:	4634      	mov	r4, r6
200209f2:	e7fa      	b.n	200209ea <write_nor+0x56>
200209f4:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
200209f8:	46a1      	mov	r9, r4
200209fa:	bf28      	it	cs
200209fc:	f44f 7980 	movcs.w	r9, #256	@ 0x100
20020a00:	463a      	mov	r2, r7
20020a02:	464b      	mov	r3, r9
20020a04:	4629      	mov	r1, r5
20020a06:	4640      	mov	r0, r8
20020a08:	f003 f823 	bl	20023a52 <HAL_QSPIEX_WRITE_PAGE>
20020a0c:	4581      	cmp	r9, r0
20020a0e:	d1d0      	bne.n	200209b2 <write_nor+0x1e>
20020a10:	444d      	add	r5, r9
20020a12:	444f      	add	r7, r9
20020a14:	eba4 0409 	sub.w	r4, r4, r9
20020a18:	e7e7      	b.n	200209ea <write_nor+0x56>
20020a1a:	bf00      	nop
20020a1c:	20046e7c 	.word	0x20046e7c

20020a20 <read_nor>:
20020a20:	460b      	mov	r3, r1
20020a22:	b510      	push	{r4, lr}
20020a24:	4614      	mov	r4, r2
20020a26:	4601      	mov	r1, r0
20020a28:	4618      	mov	r0, r3
20020a2a:	f005 f92f 	bl	20025c8c <memcpy>
20020a2e:	4620      	mov	r0, r4
20020a30:	bd10      	pop	{r4, pc}
	...

20020a34 <read_nand>:
20020a34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020a38:	2600      	movs	r6, #0
20020a3a:	460f      	mov	r7, r1
20020a3c:	4615      	mov	r5, r2
20020a3e:	46b0      	mov	r8, r6
20020a40:	4b19      	ldr	r3, [pc, #100]	@ (20020aa8 <read_nand+0x74>)
20020a42:	f8df a068 	ldr.w	sl, [pc, #104]	@ 20020aac <read_nand+0x78>
20020a46:	681b      	ldr	r3, [r3, #0]
20020a48:	f8df b064 	ldr.w	fp, [pc, #100]	@ 20020ab0 <read_nand+0x7c>
20020a4c:	691b      	ldr	r3, [r3, #16]
20020a4e:	4604      	mov	r4, r0
20020a50:	4283      	cmp	r3, r0
20020a52:	b085      	sub	sp, #20
20020a54:	bf98      	it	ls
20020a56:	1ac4      	subls	r4, r0, r3
20020a58:	b91d      	cbnz	r5, 20020a62 <read_nand+0x2e>
20020a5a:	4630      	mov	r0, r6
20020a5c:	b005      	add	sp, #20
20020a5e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20020a62:	f8da 1000 	ldr.w	r1, [sl]
20020a66:	f8db 0000 	ldr.w	r0, [fp]
20020a6a:	42a9      	cmp	r1, r5
20020a6c:	fbb0 fcf1 	udiv	ip, r0, r1
20020a70:	4689      	mov	r9, r1
20020a72:	f101 32ff 	add.w	r2, r1, #4294967295
20020a76:	bf28      	it	cs
20020a78:	46a9      	movcs	r9, r5
20020a7a:	fbb4 f1f1 	udiv	r1, r4, r1
20020a7e:	f10c 3cff 	add.w	ip, ip, #4294967295
20020a82:	fbb4 f0f0 	udiv	r0, r4, r0
20020a86:	e9cd 8801 	strd	r8, r8, [sp, #4]
20020a8a:	f8cd 9000 	str.w	r9, [sp]
20020a8e:	19bb      	adds	r3, r7, r6
20020a90:	4022      	ands	r2, r4
20020a92:	ea0c 0101 	and.w	r1, ip, r1
20020a96:	f004 fdfd 	bl	20025694 <bbm_read_page>
20020a9a:	4548      	cmp	r0, r9
20020a9c:	d1dd      	bne.n	20020a5a <read_nand+0x26>
20020a9e:	4406      	add	r6, r0
20020aa0:	1a2d      	subs	r5, r5, r0
20020aa2:	4404      	add	r4, r0
20020aa4:	e7d8      	b.n	20020a58 <read_nand+0x24>
20020aa6:	bf00      	nop
20020aa8:	20046c64 	.word	0x20046c64
20020aac:	20042c04 	.word	0x20042c04
20020ab0:	20042c00 	.word	0x20042c00

20020ab4 <read_sdnand>:
20020ab4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020ab8:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020abc:	460d      	mov	r5, r1
20020abe:	4614      	mov	r4, r2
20020ac0:	4617      	mov	r7, r2
20020ac2:	46b0      	mov	r8, r6
20020ac4:	eb02 0901 	add.w	r9, r2, r1
20020ac8:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020acc:	eba9 0107 	sub.w	r1, r9, r7
20020ad0:	d218      	bcs.n	20020b04 <read_sdnand+0x50>
20020ad2:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020ad6:	b197      	cbz	r7, 20020afe <read_sdnand+0x4a>
20020ad8:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020adc:	f020 0001 	bic.w	r0, r0, #1
20020ae0:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020ae4:	490c      	ldr	r1, [pc, #48]	@ (20020b18 <read_sdnand+0x64>)
20020ae6:	4430      	add	r0, r6
20020ae8:	f001 f876 	bl	20021bd8 <sd_read_data>
20020aec:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020af0:	f020 0001 	bic.w	r0, r0, #1
20020af4:	463a      	mov	r2, r7
20020af6:	4908      	ldr	r1, [pc, #32]	@ (20020b18 <read_sdnand+0x64>)
20020af8:	4428      	add	r0, r5
20020afa:	f005 f8c7 	bl	20025c8c <memcpy>
20020afe:	4620      	mov	r0, r4
20020b00:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b04:	4640      	mov	r0, r8
20020b06:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b0a:	f001 f865 	bl	20021bd8 <sd_read_data>
20020b0e:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b12:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b16:	e7d7      	b.n	20020ac8 <read_sdnand+0x14>
20020b18:	20046a60 	.word	0x20046a60

20020b1c <read_sdemmc>:
20020b1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020b20:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020b24:	460d      	mov	r5, r1
20020b26:	4614      	mov	r4, r2
20020b28:	4617      	mov	r7, r2
20020b2a:	46b0      	mov	r8, r6
20020b2c:	eb02 0901 	add.w	r9, r2, r1
20020b30:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020b34:	eba9 0107 	sub.w	r1, r9, r7
20020b38:	d218      	bcs.n	20020b6c <read_sdemmc+0x50>
20020b3a:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020b3e:	b197      	cbz	r7, 20020b66 <read_sdemmc+0x4a>
20020b40:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b44:	f020 0001 	bic.w	r0, r0, #1
20020b48:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b4c:	490c      	ldr	r1, [pc, #48]	@ (20020b80 <read_sdemmc+0x64>)
20020b4e:	4430      	add	r0, r6
20020b50:	f000 fe2c 	bl	200217ac <emmc_read_data>
20020b54:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b58:	f020 0001 	bic.w	r0, r0, #1
20020b5c:	463a      	mov	r2, r7
20020b5e:	4908      	ldr	r1, [pc, #32]	@ (20020b80 <read_sdemmc+0x64>)
20020b60:	4428      	add	r0, r5
20020b62:	f005 f893 	bl	20025c8c <memcpy>
20020b66:	4620      	mov	r0, r4
20020b68:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b6c:	4640      	mov	r0, r8
20020b6e:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b72:	f000 fe1b 	bl	200217ac <emmc_read_data>
20020b76:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b7a:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b7e:	e7d7      	b.n	20020b30 <read_sdemmc+0x14>
20020b80:	20046a60 	.word	0x20046a60

20020b84 <port_read_page>:
20020b84:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020b88:	4615      	mov	r5, r2
20020b8a:	f8df 90e8 	ldr.w	r9, [pc, #232]	@ 20020c74 <port_read_page+0xf0>
20020b8e:	460e      	mov	r6, r1
20020b90:	f8d9 7000 	ldr.w	r7, [r9]
20020b94:	461a      	mov	r2, r3
20020b96:	e9dd 3c09 	ldrd	r3, ip, [sp, #36]	@ 0x24
20020b9a:	18e9      	adds	r1, r5, r3
20020b9c:	428f      	cmp	r7, r1
20020b9e:	f8dd e02c 	ldr.w	lr, [sp, #44]	@ 0x2c
20020ba2:	d200      	bcs.n	20020ba6 <port_read_page+0x22>
20020ba4:	e7fe      	b.n	20020ba4 <port_read_page+0x20>
20020ba6:	4930      	ldr	r1, [pc, #192]	@ (20020c68 <port_read_page+0xe4>)
20020ba8:	2b00      	cmp	r3, #0
20020baa:	6809      	ldr	r1, [r1, #0]
20020bac:	dd15      	ble.n	20020bda <port_read_page+0x56>
20020bae:	f002 041f 	and.w	r4, r2, #31
20020bb2:	441c      	add	r4, r3
20020bb4:	f3bf 8f4f 	dsb	sy
20020bb8:	4690      	mov	r8, r2
20020bba:	f8df a0bc 	ldr.w	sl, [pc, #188]	@ 20020c78 <port_read_page+0xf4>
20020bbe:	4414      	add	r4, r2
20020bc0:	f8ca 825c 	str.w	r8, [sl, #604]	@ 0x25c
20020bc4:	f108 0820 	add.w	r8, r8, #32
20020bc8:	eba4 0b08 	sub.w	fp, r4, r8
20020bcc:	f1bb 0f00 	cmp.w	fp, #0
20020bd0:	dcf6      	bgt.n	20020bc0 <port_read_page+0x3c>
20020bd2:	f3bf 8f4f 	dsb	sy
20020bd6:	f3bf 8f6f 	isb	sy
20020bda:	f8d9 4000 	ldr.w	r4, [r9]
20020bde:	f104 0980 	add.w	r9, r4, #128	@ 0x80
20020be2:	f1b9 0f00 	cmp.w	r9, #0
20020be6:	dd15      	ble.n	20020c14 <port_read_page+0x90>
20020be8:	4c20      	ldr	r4, [pc, #128]	@ (20020c6c <port_read_page+0xe8>)
20020bea:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20020bec:	f004 081f 	and.w	r8, r4, #31
20020bf0:	44c8      	add	r8, r9
20020bf2:	f3bf 8f4f 	dsb	sy
20020bf6:	f8df a080 	ldr.w	sl, [pc, #128]	@ 20020c78 <port_read_page+0xf4>
20020bfa:	44a0      	add	r8, r4
20020bfc:	f8ca 425c 	str.w	r4, [sl, #604]	@ 0x25c
20020c00:	3420      	adds	r4, #32
20020c02:	eba8 0904 	sub.w	r9, r8, r4
20020c06:	f1b9 0f00 	cmp.w	r9, #0
20020c0a:	dcf7      	bgt.n	20020bfc <port_read_page+0x78>
20020c0c:	f3bf 8f4f 	dsb	sy
20020c10:	f3bf 8f6f 	isb	sy
20020c14:	07c4      	lsls	r4, r0, #31
20020c16:	d51b      	bpl.n	20020c50 <port_read_page+0xcc>
20020c18:	4c14      	ldr	r4, [pc, #80]	@ (20020c6c <port_read_page+0xe8>)
20020c1a:	f894 806b 	ldrb.w	r8, [r4, #107]	@ 0x6b
20020c1e:	f1b8 0f00 	cmp.w	r8, #0
20020c22:	d015      	beq.n	20020c50 <port_read_page+0xcc>
20020c24:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20020c26:	f504 5880 	add.w	r8, r4, #4096	@ 0x1000
20020c2a:	f004 041f 	and.w	r4, r4, #31
20020c2e:	f504 6408 	add.w	r4, r4, #2176	@ 0x880
20020c32:	f3bf 8f4f 	dsb	sy
20020c36:	f8df 9040 	ldr.w	r9, [pc, #64]	@ 20020c78 <port_read_page+0xf4>
20020c3a:	3c20      	subs	r4, #32
20020c3c:	2c00      	cmp	r4, #0
20020c3e:	f8c9 825c 	str.w	r8, [r9, #604]	@ 0x25c
20020c42:	f108 0820 	add.w	r8, r8, #32
20020c46:	dcf8      	bgt.n	20020c3a <port_read_page+0xb6>
20020c48:	f3bf 8f4f 	dsb	sy
20020c4c:	f3bf 8f6f 	isb	sy
20020c50:	fb07 5506 	mla	r5, r7, r6, r5
20020c54:	e9cd ce09 	strd	ip, lr, [sp, #36]	@ 0x24
20020c58:	fb01 5100 	mla	r1, r1, r0, r5
20020c5c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020c60:	4803      	ldr	r0, [pc, #12]	@ (20020c70 <port_read_page+0xec>)
20020c62:	f002 bdd5 	b.w	20023810 <HAL_NAND_READ_WITHOOB>
20020c66:	bf00      	nop
20020c68:	20042c00 	.word	0x20042c00
20020c6c:	20046e7c 	.word	0x20046e7c
20020c70:	20046ec0 	.word	0x20046ec0
20020c74:	20042c04 	.word	0x20042c04
20020c78:	e000ed00 	.word	0xe000ed00

20020c7c <bbm_get_bb>:
20020c7c:	b410      	push	{r4}
20020c7e:	4b1c      	ldr	r3, [pc, #112]	@ (20020cf0 <bbm_get_bb+0x74>)
20020c80:	4601      	mov	r1, r0
20020c82:	6818      	ldr	r0, [r3, #0]
20020c84:	3080      	adds	r0, #128	@ 0x80
20020c86:	2800      	cmp	r0, #0
20020c88:	dd12      	ble.n	20020cb0 <bbm_get_bb+0x34>
20020c8a:	4b1a      	ldr	r3, [pc, #104]	@ (20020cf4 <bbm_get_bb+0x78>)
20020c8c:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
20020c8e:	f003 021f 	and.w	r2, r3, #31
20020c92:	4402      	add	r2, r0
20020c94:	f3bf 8f4f 	dsb	sy
20020c98:	4c17      	ldr	r4, [pc, #92]	@ (20020cf8 <bbm_get_bb+0x7c>)
20020c9a:	441a      	add	r2, r3
20020c9c:	f8c4 325c 	str.w	r3, [r4, #604]	@ 0x25c
20020ca0:	3320      	adds	r3, #32
20020ca2:	1ad0      	subs	r0, r2, r3
20020ca4:	2800      	cmp	r0, #0
20020ca6:	dcf9      	bgt.n	20020c9c <bbm_get_bb+0x20>
20020ca8:	f3bf 8f4f 	dsb	sy
20020cac:	f3bf 8f6f 	isb	sy
20020cb0:	07cb      	lsls	r3, r1, #31
20020cb2:	d518      	bpl.n	20020ce6 <bbm_get_bb+0x6a>
20020cb4:	4b0f      	ldr	r3, [pc, #60]	@ (20020cf4 <bbm_get_bb+0x78>)
20020cb6:	f893 206b 	ldrb.w	r2, [r3, #107]	@ 0x6b
20020cba:	b1a2      	cbz	r2, 20020ce6 <bbm_get_bb+0x6a>
20020cbc:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
20020cbe:	f503 5280 	add.w	r2, r3, #4096	@ 0x1000
20020cc2:	f003 031f 	and.w	r3, r3, #31
20020cc6:	f503 6308 	add.w	r3, r3, #2176	@ 0x880
20020cca:	f3bf 8f4f 	dsb	sy
20020cce:	480a      	ldr	r0, [pc, #40]	@ (20020cf8 <bbm_get_bb+0x7c>)
20020cd0:	3b20      	subs	r3, #32
20020cd2:	2b00      	cmp	r3, #0
20020cd4:	f8c0 225c 	str.w	r2, [r0, #604]	@ 0x25c
20020cd8:	f102 0220 	add.w	r2, r2, #32
20020cdc:	dcf8      	bgt.n	20020cd0 <bbm_get_bb+0x54>
20020cde:	f3bf 8f4f 	dsb	sy
20020ce2:	f3bf 8f6f 	isb	sy
20020ce6:	4805      	ldr	r0, [pc, #20]	@ (20020cfc <bbm_get_bb+0x80>)
20020ce8:	f85d 4b04 	ldr.w	r4, [sp], #4
20020cec:	f002 be90 	b.w	20023a10 <HAL_NAND_GET_BADBLK>
20020cf0:	20042c04 	.word	0x20042c04
20020cf4:	20046e7c 	.word	0x20046e7c
20020cf8:	e000ed00 	.word	0xe000ed00
20020cfc:	20046ec0 	.word	0x20046ec0

20020d00 <dfu_flash_init>:
20020d00:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020d04:	b08c      	sub	sp, #48	@ 0x30
20020d06:	f001 fe25 	bl	20022954 <HAL_HPAON_EnableXT48>
20020d0a:	2101      	movs	r1, #1
20020d0c:	2000      	movs	r0, #0
20020d0e:	f004 f8ab 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20020d12:	2101      	movs	r1, #1
20020d14:	200c      	movs	r0, #12
20020d16:	f004 f8a7 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20020d1a:	2001      	movs	r0, #1
20020d1c:	f003 ffa2 	bl	20024c64 <HAL_PMU_EnableDLL>
20020d20:	4f97      	ldr	r7, [pc, #604]	@ (20020f80 <dfu_flash_init+0x280>)
20020d22:	2090      	movs	r0, #144	@ 0x90
20020d24:	f004 fa02 	bl	2002512c <HAL_RCC_HCPU_ConfigHCLK>
20020d28:	2000      	movs	r0, #0
20020d2a:	f001 f87a 	bl	20021e22 <HAL_Delay_us>
20020d2e:	683b      	ldr	r3, [r7, #0]
20020d30:	4d94      	ldr	r5, [pc, #592]	@ (20020f84 <dfu_flash_init+0x284>)
20020d32:	3b01      	subs	r3, #1
20020d34:	2b05      	cmp	r3, #5
20020d36:	f200 8113 	bhi.w	20020f60 <dfu_flash_init+0x260>
20020d3a:	e8df f013 	tbh	[pc, r3, lsl #1]
20020d3e:	0006      	.short	0x0006
20020d40:	00780006 	.word	0x00780006
20020d44:	00ee0078 	.word	0x00ee0078
20020d48:	0102      	.short	0x0102
20020d4a:	488f      	ldr	r0, [pc, #572]	@ (20020f88 <dfu_flash_init+0x288>)
20020d4c:	f004 f854 	bl	20024df8 <HAL_RCC_HCPU_EnableDLL2>
20020d50:	4c8e      	ldr	r4, [pc, #568]	@ (20020f8c <dfu_flash_init+0x28c>)
20020d52:	2006      	movs	r0, #6
20020d54:	f000 ff92 	bl	20021c7c <BSP_SetFlash1DIV>
20020d58:	ae07      	add	r6, sp, #28
20020d5a:	2102      	movs	r1, #2
20020d5c:	2004      	movs	r0, #4
20020d5e:	f004 f883 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20020d62:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020d64:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020d66:	f854 3b04 	ldr.w	r3, [r4], #4
20020d6a:	6033      	str	r3, [r6, #0]
20020d6c:	ae03      	add	r6, sp, #12
20020d6e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020d72:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020d76:	2301      	movs	r3, #1
20020d78:	4c85      	ldr	r4, [pc, #532]	@ (20020f90 <dfu_flash_init+0x290>)
20020d7a:	f884 3035 	strb.w	r3, [r4, #53]	@ 0x35
20020d7e:	2300      	movs	r3, #0
20020d80:	9308      	str	r3, [sp, #32]
20020d82:	683b      	ldr	r3, [r7, #0]
20020d84:	2b01      	cmp	r3, #1
20020d86:	d14d      	bne.n	20020e24 <dfu_flash_init+0x124>
20020d88:	f7ff fac0 	bl	2002030c <board_pinmux_mpi1_puya_base>
20020d8c:	f000 ff6a 	bl	20021c64 <BSP_GetFlash1DIV>
20020d90:	4633      	mov	r3, r6
20020d92:	9000      	str	r0, [sp, #0]
20020d94:	4a7f      	ldr	r2, [pc, #508]	@ (20020f94 <dfu_flash_init+0x294>)
20020d96:	487e      	ldr	r0, [pc, #504]	@ (20020f90 <dfu_flash_init+0x290>)
20020d98:	a907      	add	r1, sp, #28
20020d9a:	f003 f811 	bl	20023dc0 <HAL_FLASH_Init>
20020d9e:	683e      	ldr	r6, [r7, #0]
20020da0:	2e01      	cmp	r6, #1
20020da2:	d10d      	bne.n	20020dc0 <dfu_flash_init+0xc0>
20020da4:	6b20      	ldr	r0, [r4, #48]	@ 0x30
20020da6:	4b7c      	ldr	r3, [pc, #496]	@ (20020f98 <dfu_flash_init+0x298>)
20020da8:	1ac3      	subs	r3, r0, r3
20020daa:	4258      	negs	r0, r3
20020dac:	4158      	adcs	r0, r3
20020dae:	f7ff face 	bl	2002034e <board_pinmux_mpi1_puya_ext>
20020db2:	4631      	mov	r1, r6
20020db4:	4876      	ldr	r0, [pc, #472]	@ (20020f90 <dfu_flash_init+0x290>)
20020db6:	f002 fa38 	bl	2002322a <HAL_FLASH_SET_QUAL_SPI>
20020dba:	2302      	movs	r3, #2
20020dbc:	f884 3020 	strb.w	r3, [r4, #32]
20020dc0:	4b76      	ldr	r3, [pc, #472]	@ (20020f9c <dfu_flash_init+0x29c>)
20020dc2:	4a77      	ldr	r2, [pc, #476]	@ (20020fa0 <dfu_flash_init+0x2a0>)
20020dc4:	602b      	str	r3, [r5, #0]
20020dc6:	4b77      	ldr	r3, [pc, #476]	@ (20020fa4 <dfu_flash_init+0x2a4>)
20020dc8:	601a      	str	r2, [r3, #0]
20020dca:	4b77      	ldr	r3, [pc, #476]	@ (20020fa8 <dfu_flash_init+0x2a8>)
20020dcc:	4a77      	ldr	r2, [pc, #476]	@ (20020fac <dfu_flash_init+0x2ac>)
20020dce:	601a      	str	r2, [r3, #0]
20020dd0:	4b77      	ldr	r3, [pc, #476]	@ (20020fb0 <dfu_flash_init+0x2b0>)
20020dd2:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20020dd4:	601a      	str	r2, [r3, #0]
20020dd6:	4b77      	ldr	r3, [pc, #476]	@ (20020fb4 <dfu_flash_init+0x2b4>)
20020dd8:	601c      	str	r4, [r3, #0]
20020dda:	2405      	movs	r4, #5
20020ddc:	f8df 81d8 	ldr.w	r8, [pc, #472]	@ 20020fb8 <dfu_flash_init+0x2b8>
20020de0:	4e73      	ldr	r6, [pc, #460]	@ (20020fb0 <dfu_flash_init+0x2b0>)
20020de2:	f8df 9208 	ldr.w	r9, [pc, #520]	@ 20020fec <dfu_flash_init+0x2ec>
20020de6:	682b      	ldr	r3, [r5, #0]
20020de8:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020dec:	4972      	ldr	r1, [pc, #456]	@ (20020fb8 <dfu_flash_init+0x2b8>)
20020dee:	6830      	ldr	r0, [r6, #0]
20020df0:	4798      	blx	r3
20020df2:	f8d8 3000 	ldr.w	r3, [r8]
20020df6:	454b      	cmp	r3, r9
20020df8:	f040 80b6 	bne.w	20020f68 <dfu_flash_init+0x268>
20020dfc:	683b      	ldr	r3, [r7, #0]
20020dfe:	2b04      	cmp	r3, #4
20020e00:	f040 8085 	bne.w	20020f0e <dfu_flash_init+0x20e>
20020e04:	f8d8 30a4 	ldr.w	r3, [r8, #164]	@ 0xa4
20020e08:	1e5a      	subs	r2, r3, #1
20020e0a:	3203      	adds	r2, #3
20020e0c:	d87f      	bhi.n	20020f0e <dfu_flash_init+0x20e>
20020e0e:	4a6b      	ldr	r2, [pc, #428]	@ (20020fbc <dfu_flash_init+0x2bc>)
20020e10:	4969      	ldr	r1, [pc, #420]	@ (20020fb8 <dfu_flash_init+0x2b8>)
20020e12:	6013      	str	r3, [r2, #0]
20020e14:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020e18:	682b      	ldr	r3, [r5, #0]
20020e1a:	6830      	ldr	r0, [r6, #0]
20020e1c:	b00c      	add	sp, #48	@ 0x30
20020e1e:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020e22:	4718      	bx	r3
20020e24:	f7ff fac2 	bl	200203ac <board_pinmux_mpi1_gd>
20020e28:	2302      	movs	r3, #2
20020e2a:	9308      	str	r3, [sp, #32]
20020e2c:	e7ae      	b.n	20020d8c <dfu_flash_init+0x8c>
20020e2e:	4856      	ldr	r0, [pc, #344]	@ (20020f88 <dfu_flash_init+0x288>)
20020e30:	f003 ffe2 	bl	20024df8 <HAL_RCC_HCPU_EnableDLL2>
20020e34:	4c62      	ldr	r4, [pc, #392]	@ (20020fc0 <dfu_flash_init+0x2c0>)
20020e36:	2006      	movs	r0, #6
20020e38:	f000 ff26 	bl	20021c88 <BSP_SetFlash2DIV>
20020e3c:	ae07      	add	r6, sp, #28
20020e3e:	2102      	movs	r1, #2
20020e40:	2006      	movs	r0, #6
20020e42:	f004 f811 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20020e46:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020e48:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020e4a:	f854 3b04 	ldr.w	r3, [r4], #4
20020e4e:	f8d7 8000 	ldr.w	r8, [r7]
20020e52:	6033      	str	r3, [r6, #0]
20020e54:	ae03      	add	r6, sp, #12
20020e56:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020e5a:	f1b8 0903 	subs.w	r9, r8, #3
20020e5e:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020e62:	bf18      	it	ne
20020e64:	f04f 0901 	movne.w	r9, #1
20020e68:	f7ff fae3 	bl	20020432 <board_pinmux_mpi2>
20020e6c:	2302      	movs	r3, #2
20020e6e:	f1b8 0f03 	cmp.w	r8, #3
20020e72:	4c47      	ldr	r4, [pc, #284]	@ (20020f90 <dfu_flash_init+0x290>)
20020e74:	9308      	str	r3, [sp, #32]
20020e76:	d04d      	beq.n	20020f14 <dfu_flash_init+0x214>
20020e78:	4b52      	ldr	r3, [pc, #328]	@ (20020fc4 <dfu_flash_init+0x2c4>)
20020e7a:	602b      	str	r3, [r5, #0]
20020e7c:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20020e7e:	f103 43a0 	add.w	r3, r3, #1342177280	@ 0x50000000
20020e82:	9309      	str	r3, [sp, #36]	@ 0x24
20020e84:	2301      	movs	r3, #1
20020e86:	930b      	str	r3, [sp, #44]	@ 0x2c
20020e88:	4b4f      	ldr	r3, [pc, #316]	@ (20020fc8 <dfu_flash_init+0x2c8>)
20020e8a:	6623      	str	r3, [r4, #96]	@ 0x60
20020e8c:	f04f 0a01 	mov.w	sl, #1
20020e90:	2000      	movs	r0, #0
20020e92:	f000 ffc6 	bl	20021e22 <HAL_Delay_us>
20020e96:	f884 a079 	strb.w	sl, [r4, #121]	@ 0x79
20020e9a:	f884 9078 	strb.w	r9, [r4, #120]	@ 0x78
20020e9e:	f000 fee7 	bl	20021c70 <BSP_GetFlash2DIV>
20020ea2:	4633      	mov	r3, r6
20020ea4:	9000      	str	r0, [sp, #0]
20020ea6:	4a49      	ldr	r2, [pc, #292]	@ (20020fcc <dfu_flash_init+0x2cc>)
20020ea8:	4849      	ldr	r0, [pc, #292]	@ (20020fd0 <dfu_flash_init+0x2d0>)
20020eaa:	a907      	add	r1, sp, #28
20020eac:	f002 ff88 	bl	20023dc0 <HAL_FLASH_Init>
20020eb0:	4e47      	ldr	r6, [pc, #284]	@ (20020fd0 <dfu_flash_init+0x2d0>)
20020eb2:	bb18      	cbnz	r0, 20020efc <dfu_flash_init+0x1fc>
20020eb4:	f1b8 0f03 	cmp.w	r8, #3
20020eb8:	d020      	beq.n	20020efc <dfu_flash_init+0x1fc>
20020eba:	4630      	mov	r0, r6
20020ebc:	f002 fc9c 	bl	200237f8 <HAL_NAND_PAGE_SIZE>
20020ec0:	f8df 90f8 	ldr.w	r9, [pc, #248]	@ 20020fbc <dfu_flash_init+0x2bc>
20020ec4:	f8df 8128 	ldr.w	r8, [pc, #296]	@ 20020ff0 <dfu_flash_init+0x2f0>
20020ec8:	f8c9 0000 	str.w	r0, [r9]
20020ecc:	4630      	mov	r0, r6
20020ece:	f002 fd93 	bl	200239f8 <HAL_NAND_BLOCK_SIZE>
20020ed2:	4651      	mov	r1, sl
20020ed4:	f8c8 0000 	str.w	r0, [r8]
20020ed8:	4630      	mov	r0, r6
20020eda:	f884 a06a 	strb.w	sl, [r4, #106]	@ 0x6a
20020ede:	f002 fb64 	bl	200235aa <HAL_NAND_CONF_ECC>
20020ee2:	f8d9 0000 	ldr.w	r0, [r9]
20020ee6:	f004 febd 	bl	20025c64 <bbm_set_page_size>
20020eea:	f8d8 0000 	ldr.w	r0, [r8]
20020eee:	f004 febf 	bl	20025c70 <bbm_set_blk_size>
20020ef2:	4938      	ldr	r1, [pc, #224]	@ (20020fd4 <dfu_flash_init+0x2d4>)
20020ef4:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
20020ef8:	f004 fd56 	bl	200259a8 <sif_bbm_init>
20020efc:	4b2c      	ldr	r3, [pc, #176]	@ (20020fb0 <dfu_flash_init+0x2b0>)
20020efe:	6fe2      	ldr	r2, [r4, #124]	@ 0x7c
20020f00:	601a      	str	r2, [r3, #0]
20020f02:	4b2c      	ldr	r3, [pc, #176]	@ (20020fb4 <dfu_flash_init+0x2b4>)
20020f04:	601e      	str	r6, [r3, #0]
20020f06:	682b      	ldr	r3, [r5, #0]
20020f08:	2b00      	cmp	r3, #0
20020f0a:	f47f af66 	bne.w	20020dda <dfu_flash_init+0xda>
20020f0e:	b00c      	add	sp, #48	@ 0x30
20020f10:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20020f14:	4b21      	ldr	r3, [pc, #132]	@ (20020f9c <dfu_flash_init+0x29c>)
20020f16:	602b      	str	r3, [r5, #0]
20020f18:	e7b8      	b.n	20020e8c <dfu_flash_init+0x18c>
20020f1a:	481b      	ldr	r0, [pc, #108]	@ (20020f88 <dfu_flash_init+0x288>)
20020f1c:	f003 ff6c 	bl	20024df8 <HAL_RCC_HCPU_EnableDLL2>
20020f20:	f7ff faae 	bl	20020480 <board_pinmux_sd>
20020f24:	f000 fd2c 	bl	20021980 <sdmmc1_sdnand>
20020f28:	2801      	cmp	r0, #1
20020f2a:	d001      	beq.n	20020f30 <dfu_flash_init+0x230>
20020f2c:	f7ff f9be 	bl	200202ac <boot_error>
20020f30:	4b29      	ldr	r3, [pc, #164]	@ (20020fd8 <dfu_flash_init+0x2d8>)
20020f32:	4a2a      	ldr	r2, [pc, #168]	@ (20020fdc <dfu_flash_init+0x2dc>)
20020f34:	602b      	str	r3, [r5, #0]
20020f36:	4b1e      	ldr	r3, [pc, #120]	@ (20020fb0 <dfu_flash_init+0x2b0>)
20020f38:	601a      	str	r2, [r3, #0]
20020f3a:	2200      	movs	r2, #0
20020f3c:	4b1d      	ldr	r3, [pc, #116]	@ (20020fb4 <dfu_flash_init+0x2b4>)
20020f3e:	601a      	str	r2, [r3, #0]
20020f40:	e74b      	b.n	20020dda <dfu_flash_init+0xda>
20020f42:	4811      	ldr	r0, [pc, #68]	@ (20020f88 <dfu_flash_init+0x288>)
20020f44:	f003 ff58 	bl	20024df8 <HAL_RCC_HCPU_EnableDLL2>
20020f48:	f7ff fa9a 	bl	20020480 <board_pinmux_sd>
20020f4c:	f000 fb08 	bl	20021560 <sdio_emmc_init>
20020f50:	4b23      	ldr	r3, [pc, #140]	@ (20020fe0 <dfu_flash_init+0x2e0>)
20020f52:	6018      	str	r0, [r3, #0]
20020f54:	b110      	cbz	r0, 20020f5c <dfu_flash_init+0x25c>
20020f56:	b2c0      	uxtb	r0, r0
20020f58:	f7ff f9a8 	bl	200202ac <boot_error>
20020f5c:	4b21      	ldr	r3, [pc, #132]	@ (20020fe4 <dfu_flash_init+0x2e4>)
20020f5e:	e7e8      	b.n	20020f32 <dfu_flash_init+0x232>
20020f60:	2053      	movs	r0, #83	@ 0x53
20020f62:	f7ff f9a3 	bl	200202ac <boot_error>
20020f66:	e7ce      	b.n	20020f06 <dfu_flash_init+0x206>
20020f68:	481f      	ldr	r0, [pc, #124]	@ (20020fe8 <dfu_flash_init+0x2e8>)
20020f6a:	f000 ff5a 	bl	20021e22 <HAL_Delay_us>
20020f6e:	3c01      	subs	r4, #1
20020f70:	f47f af39 	bne.w	20020de6 <dfu_flash_init+0xe6>
20020f74:	2043      	movs	r0, #67	@ 0x43
20020f76:	b00c      	add	sp, #48	@ 0x30
20020f78:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020f7c:	f7ff b996 	b.w	200202ac <boot_error>
20020f80:	20049e80 	.word	0x20049e80
20020f84:	20046c70 	.word	0x20046c70
20020f88:	112a8800 	.word	0x112a8800
20020f8c:	20025ca8 	.word	0x20025ca8
20020f90:	20046e7c 	.word	0x20046e7c
20020f94:	20046c74 	.word	0x20046c74
20020f98:	00176085 	.word	0x00176085
20020f9c:	20020a21 	.word	0x20020a21
20020fa0:	20020995 	.word	0x20020995
20020fa4:	20046c6c 	.word	0x20046c6c
20020fa8:	20046c68 	.word	0x20046c68
20020fac:	20020939 	.word	0x20020939
20020fb0:	20046c60 	.word	0x20046c60
20020fb4:	20046c64 	.word	0x20046c64
20020fb8:	20047270 	.word	0x20047270
20020fbc:	20042c04 	.word	0x20042c04
20020fc0:	20025ccc 	.word	0x20025ccc
20020fc4:	20020a35 	.word	0x20020a35
20020fc8:	200459e0 	.word	0x200459e0
20020fcc:	20046cdc 	.word	0x20046cdc
20020fd0:	20046ec0 	.word	0x20046ec0
20020fd4:	20044960 	.word	0x20044960
20020fd8:	20020ab5 	.word	0x20020ab5
20020fdc:	62001000 	.word	0x62001000
20020fe0:	2004495c 	.word	0x2004495c
20020fe4:	20020b1d 	.word	0x20020b1d
20020fe8:	000f4240 	.word	0x000f4240
20020fec:	53454346 	.word	0x53454346
20020ff0:	20042c00 	.word	0x20042c00

20020ff4 <sifli_hw_efuse_read_bank>:
20020ff4:	2803      	cmp	r0, #3
20020ff6:	b508      	push	{r3, lr}
20020ff8:	d80c      	bhi.n	20021014 <sifli_hw_efuse_read_bank+0x20>
20020ffa:	0200      	lsls	r0, r0, #8
20020ffc:	2220      	movs	r2, #32
20020ffe:	4907      	ldr	r1, [pc, #28]	@ (2002101c <sifli_hw_efuse_read_bank+0x28>)
20021000:	f400 407f 	and.w	r0, r0, #65280	@ 0xff00
20021004:	f001 fb5e 	bl	200226c4 <HAL_EFUSE_Read>
20021008:	2800      	cmp	r0, #0
2002100a:	bf0c      	ite	eq
2002100c:	f06f 0001 	mvneq.w	r0, #1
20021010:	2000      	movne	r0, #0
20021012:	bd08      	pop	{r3, pc}
20021014:	f04f 30ff 	mov.w	r0, #4294967295
20021018:	e7fb      	b.n	20021012 <sifli_hw_efuse_read_bank+0x1e>
2002101a:	bf00      	nop
2002101c:	200471f0 	.word	0x200471f0

20021020 <sifli_hw_efuse_read>:
20021020:	b513      	push	{r0, r1, r4, lr}
20021022:	3801      	subs	r0, #1
20021024:	460c      	mov	r4, r1
20021026:	2803      	cmp	r0, #3
20021028:	d81e      	bhi.n	20021068 <sifli_hw_efuse_read+0x48>
2002102a:	e8df f000 	tbb	[pc, r0]
2002102e:	0c02      	.short	0x0c02
20021030:	1009      	.short	0x1009
20021032:	2210      	movs	r2, #16
20021034:	2000      	movs	r0, #0
20021036:	b002      	add	sp, #8
20021038:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002103c:	f001 bb42 	b.w	200226c4 <HAL_EFUSE_Read>
20021040:	2208      	movs	r2, #8
20021042:	2080      	movs	r0, #128	@ 0x80
20021044:	e7f7      	b.n	20021036 <sifli_hw_efuse_read+0x16>
20021046:	2220      	movs	r2, #32
20021048:	f44f 7040 	mov.w	r0, #768	@ 0x300
2002104c:	e7f3      	b.n	20021036 <sifli_hw_efuse_read+0x16>
2002104e:	2204      	movs	r2, #4
20021050:	20c0      	movs	r0, #192	@ 0xc0
20021052:	eb0d 0102 	add.w	r1, sp, r2
20021056:	f001 fb35 	bl	200226c4 <HAL_EFUSE_Read>
2002105a:	2804      	cmp	r0, #4
2002105c:	d104      	bne.n	20021068 <sifli_hw_efuse_read+0x48>
2002105e:	2001      	movs	r0, #1
20021060:	9b01      	ldr	r3, [sp, #4]
20021062:	7023      	strb	r3, [r4, #0]
20021064:	b002      	add	sp, #8
20021066:	bd10      	pop	{r4, pc}
20021068:	2000      	movs	r0, #0
2002106a:	e7fb      	b.n	20021064 <sifli_hw_efuse_read+0x44>

2002106c <sifli_hw_init_xip_key>:
2002106c:	b538      	push	{r3, r4, r5, lr}
2002106e:	4605      	mov	r5, r0
20021070:	4c0f      	ldr	r4, [pc, #60]	@ (200210b0 <sifli_hw_init_xip_key+0x44>)
20021072:	2210      	movs	r2, #16
20021074:	68e3      	ldr	r3, [r4, #12]
20021076:	490f      	ldr	r1, [pc, #60]	@ (200210b4 <sifli_hw_init_xip_key+0x48>)
20021078:	f043 0301 	orr.w	r3, r3, #1
2002107c:	60e3      	str	r3, [r4, #12]
2002107e:	2001      	movs	r0, #1
20021080:	f7ff ffce 	bl	20021020 <sifli_hw_efuse_read>
20021084:	2220      	movs	r2, #32
20021086:	2100      	movs	r1, #0
20021088:	480b      	ldr	r0, [pc, #44]	@ (200210b8 <sifli_hw_init_xip_key+0x4c>)
2002108a:	f004 fdf7 	bl	20025c7c <memset>
2002108e:	2302      	movs	r3, #2
20021090:	2120      	movs	r1, #32
20021092:	4a08      	ldr	r2, [pc, #32]	@ (200210b4 <sifli_hw_init_xip_key+0x48>)
20021094:	2000      	movs	r0, #0
20021096:	f000 ff21 	bl	20021edc <HAL_AES_init>
2002109a:	2320      	movs	r3, #32
2002109c:	4629      	mov	r1, r5
2002109e:	2000      	movs	r0, #0
200210a0:	4a05      	ldr	r2, [pc, #20]	@ (200210b8 <sifli_hw_init_xip_key+0x4c>)
200210a2:	f000 ff5f 	bl	20021f64 <HAL_AES_run>
200210a6:	68e3      	ldr	r3, [r4, #12]
200210a8:	f023 0301 	bic.w	r3, r3, #1
200210ac:	60e3      	str	r3, [r4, #12]
200210ae:	bd38      	pop	{r3, r4, r5, pc}
200210b0:	5000b000 	.word	0x5000b000
200210b4:	20047220 	.word	0x20047220
200210b8:	200471d0 	.word	0x200471d0

200210bc <sifli_hw_dec_key>:
200210bc:	b538      	push	{r3, r4, r5, lr}
200210be:	4604      	mov	r4, r0
200210c0:	460d      	mov	r5, r1
200210c2:	2210      	movs	r2, #16
200210c4:	4908      	ldr	r1, [pc, #32]	@ (200210e8 <sifli_hw_dec_key+0x2c>)
200210c6:	2001      	movs	r0, #1
200210c8:	f7ff ffaa 	bl	20021020 <sifli_hw_efuse_read>
200210cc:	2302      	movs	r3, #2
200210ce:	2120      	movs	r1, #32
200210d0:	4a05      	ldr	r2, [pc, #20]	@ (200210e8 <sifli_hw_dec_key+0x2c>)
200210d2:	2000      	movs	r0, #0
200210d4:	f000 ff02 	bl	20021edc <HAL_AES_init>
200210d8:	2320      	movs	r3, #32
200210da:	462a      	mov	r2, r5
200210dc:	4621      	mov	r1, r4
200210de:	2000      	movs	r0, #0
200210e0:	f000 ff40 	bl	20021f64 <HAL_AES_run>
200210e4:	2000      	movs	r0, #0
200210e6:	bd38      	pop	{r3, r4, r5, pc}
200210e8:	20047220 	.word	0x20047220

200210ec <dfu_get_counter>:
200210ec:	b538      	push	{r3, r4, r5, lr}
200210ee:	4d0a      	ldr	r5, [pc, #40]	@ (20021118 <dfu_get_counter+0x2c>)
200210f0:	4604      	mov	r4, r0
200210f2:	2208      	movs	r2, #8
200210f4:	4629      	mov	r1, r5
200210f6:	2003      	movs	r0, #3
200210f8:	f7ff ff92 	bl	20021020 <sifli_hw_efuse_read>
200210fc:	2300      	movs	r3, #0
200210fe:	e9c5 3302 	strd	r3, r3, [r5, #8]
20021102:	230f      	movs	r3, #15
20021104:	0924      	lsrs	r4, r4, #4
20021106:	b12c      	cbz	r4, 20021114 <dfu_get_counter+0x28>
20021108:	54ec      	strb	r4, [r5, r3]
2002110a:	3b01      	subs	r3, #1
2002110c:	2b0b      	cmp	r3, #11
2002110e:	ea4f 2414 	mov.w	r4, r4, lsr #8
20021112:	d1f8      	bne.n	20021106 <dfu_get_counter+0x1a>
20021114:	4800      	ldr	r0, [pc, #0]	@ (20021118 <dfu_get_counter+0x2c>)
20021116:	bd38      	pop	{r3, r4, r5, pc}
20021118:	20047210 	.word	0x20047210

2002111c <sifli_hw_dec>:
2002111c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021120:	4680      	mov	r8, r0
20021122:	4689      	mov	r9, r1
20021124:	4692      	mov	sl, r2
20021126:	2100      	movs	r1, #0
20021128:	f44f 7200 	mov.w	r2, #512	@ 0x200
2002112c:	4814      	ldr	r0, [pc, #80]	@ (20021180 <sifli_hw_dec+0x64>)
2002112e:	461e      	mov	r6, r3
20021130:	9f08      	ldr	r7, [sp, #32]
20021132:	2400      	movs	r4, #0
20021134:	f004 fda2 	bl	20025c7c <memset>
20021138:	42a6      	cmp	r6, r4
2002113a:	d802      	bhi.n	20021142 <sifli_hw_dec+0x26>
2002113c:	4620      	mov	r0, r4
2002113e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021142:	1b35      	subs	r5, r6, r4
20021144:	f5b5 7f00 	cmp.w	r5, #512	@ 0x200
20021148:	bf28      	it	cs
2002114a:	f44f 7500 	movcs.w	r5, #512	@ 0x200
2002114e:	eb09 0104 	add.w	r1, r9, r4
20021152:	462a      	mov	r2, r5
20021154:	480a      	ldr	r0, [pc, #40]	@ (20021180 <sifli_hw_dec+0x64>)
20021156:	f004 fd99 	bl	20025c8c <memcpy>
2002115a:	19e0      	adds	r0, r4, r7
2002115c:	f7ff ffc6 	bl	200210ec <dfu_get_counter>
20021160:	2301      	movs	r3, #1
20021162:	4602      	mov	r2, r0
20021164:	2120      	movs	r1, #32
20021166:	4640      	mov	r0, r8
20021168:	f000 feb8 	bl	20021edc <HAL_AES_init>
2002116c:	eb0a 0204 	add.w	r2, sl, r4
20021170:	462b      	mov	r3, r5
20021172:	2000      	movs	r0, #0
20021174:	4902      	ldr	r1, [pc, #8]	@ (20021180 <sifli_hw_dec+0x64>)
20021176:	f000 fef5 	bl	20021f64 <HAL_AES_run>
2002117a:	442c      	add	r4, r5
2002117c:	e7dc      	b.n	20021138 <sifli_hw_dec+0x1c>
2002117e:	bf00      	nop
20021180:	20046fd0 	.word	0x20046fd0

20021184 <boot_slot_via_alias>:
20021184:	b570      	push	{r4, r5, r6, lr}
20021186:	491d      	ldr	r1, [pc, #116]	@ (200211fc <boot_slot_via_alias+0x78>)
20021188:	4605      	mov	r5, r0
2002118a:	6803      	ldr	r3, [r0, #0]
2002118c:	4a1c      	ldr	r2, [pc, #112]	@ (20021200 <boot_slot_via_alias+0x7c>)
2002118e:	6808      	ldr	r0, [r1, #0]
20021190:	4290      	cmp	r0, r2
20021192:	d12d      	bne.n	200211f0 <boot_slot_via_alias+0x6c>
20021194:	f501 5200 	add.w	r2, r1, #8192	@ 0x2000
20021198:	f8d2 2c08 	ldr.w	r2, [r2, #3080]	@ 0xc08
2002119c:	1c50      	adds	r0, r2, #1
2002119e:	d027      	beq.n	200211f0 <boot_slot_via_alias+0x6c>
200211a0:	4818      	ldr	r0, [pc, #96]	@ (20021204 <boot_slot_via_alias+0x80>)
200211a2:	6800      	ldr	r0, [r0, #0]
200211a4:	1a12      	subs	r2, r2, r0
200211a6:	f5a2 5280 	sub.w	r2, r2, #4096	@ 0x1000
200211aa:	f36f 0208 	bfc	r2, #0, #9
200211ae:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
200211b2:	588c      	ldr	r4, [r1, r2]
200211b4:	1e62      	subs	r2, r4, #1
200211b6:	f5b2 1f60 	cmp.w	r2, #3670016	@ 0x380000
200211ba:	bf28      	it	cs
200211bc:	f44f 1460 	movcs.w	r4, #3670016	@ 0x380000
200211c0:	f36f 0313 	bfc	r3, #0, #20
200211c4:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
200211c8:	d115      	bne.n	200211f6 <boot_slot_via_alias+0x72>
200211ca:	f7ff fb87 	bl	200208dc <board_init_psram>
200211ce:	4e0e      	ldr	r6, [pc, #56]	@ (20021208 <boot_slot_via_alias+0x84>)
200211d0:	480e      	ldr	r0, [pc, #56]	@ (2002120c <boot_slot_via_alias+0x88>)
200211d2:	f105 436d 	add.w	r3, r5, #3976200192	@ 0xed000000
200211d6:	4622      	mov	r2, r4
200211d8:	4631      	mov	r1, r6
200211da:	6800      	ldr	r0, [r0, #0]
200211dc:	f503 037e 	add.w	r3, r3, #16646144	@ 0xfe0000
200211e0:	f002 f980 	bl	200234e4 <HAL_FLASH_ALIAS_CFG>
200211e4:	f8d6 d000 	ldr.w	sp, [r6]
200211e8:	f8d6 f004 	ldr.w	pc, [r6, #4]
200211ec:	2001      	movs	r0, #1
200211ee:	bd70      	pop	{r4, r5, r6, pc}
200211f0:	f44f 1460 	mov.w	r4, #3670016	@ 0x380000
200211f4:	e7e4      	b.n	200211c0 <boot_slot_via_alias+0x3c>
200211f6:	2000      	movs	r0, #0
200211f8:	e7f9      	b.n	200211ee <boot_slot_via_alias+0x6a>
200211fa:	bf00      	nop
200211fc:	20047270 	.word	0x20047270
20021200:	53454346 	.word	0x53454346
20021204:	20046c60 	.word	0x20046c60
20021208:	12020000 	.word	0x12020000
2002120c:	20046c64 	.word	0x20046c64

20021210 <boot_ram>:
20021210:	4b05      	ldr	r3, [pc, #20]	@ (20021228 <boot_ram+0x18>)
20021212:	b082      	sub	sp, #8
20021214:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
20021216:	9301      	str	r3, [sp, #4]
20021218:	9b01      	ldr	r3, [sp, #4]
2002121a:	b113      	cbz	r3, 20021222 <boot_ram+0x12>
2002121c:	9b01      	ldr	r3, [sp, #4]
2002121e:	b002      	add	sp, #8
20021220:	4718      	bx	r3
20021222:	b002      	add	sp, #8
20021224:	4770      	bx	lr
20021226:	bf00      	nop
20021228:	500c0000 	.word	0x500c0000

2002122c <is_addr_in_nor>:
2002122c:	4b09      	ldr	r3, [pc, #36]	@ (20021254 <is_addr_in_nor+0x28>)
2002122e:	4602      	mov	r2, r0
20021230:	681b      	ldr	r3, [r3, #0]
20021232:	b163      	cbz	r3, 2002124e <is_addr_in_nor+0x22>
20021234:	f893 0023 	ldrb.w	r0, [r3, #35]	@ 0x23
20021238:	b948      	cbnz	r0, 2002124e <is_addr_in_nor+0x22>
2002123a:	6919      	ldr	r1, [r3, #16]
2002123c:	4291      	cmp	r1, r2
2002123e:	d807      	bhi.n	20021250 <is_addr_in_nor+0x24>
20021240:	695b      	ldr	r3, [r3, #20]
20021242:	4419      	add	r1, r3
20021244:	4291      	cmp	r1, r2
20021246:	bf94      	ite	ls
20021248:	2000      	movls	r0, #0
2002124a:	2001      	movhi	r0, #1
2002124c:	4770      	bx	lr
2002124e:	2000      	movs	r0, #0
20021250:	4770      	bx	lr
20021252:	bf00      	nop
20021254:	20046c64 	.word	0x20046c64

20021258 <dfu_boot_img_in_flash>:
20021258:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002125c:	4f4c      	ldr	r7, [pc, #304]	@ (20021390 <dfu_boot_img_in_flash+0x138>)
2002125e:	1e85      	subs	r5, r0, #2
20021260:	eb07 1300 	add.w	r3, r7, r0, lsl #4
20021264:	3006      	adds	r0, #6
20021266:	ea4f 2940 	mov.w	r9, r0, lsl #9
2002126a:	eb07 2040 	add.w	r0, r7, r0, lsl #9
2002126e:	f8d3 8004 	ldr.w	r8, [r3, #4]
20021272:	68de      	ldr	r6, [r3, #12]
20021274:	88c3      	ldrh	r3, [r0, #6]
20021276:	07db      	lsls	r3, r3, #31
20021278:	d570      	bpl.n	2002135c <dfu_boot_img_in_flash+0x104>
2002127a:	2d07      	cmp	r5, #7
2002127c:	dc79      	bgt.n	20021372 <dfu_boot_img_in_flash+0x11a>
2002127e:	2003      	movs	r0, #3
20021280:	f7ff feb8 	bl	20020ff4 <sifli_hw_efuse_read_bank>
20021284:	426a      	negs	r2, r5
20021286:	f002 0203 	and.w	r2, r2, #3
2002128a:	f005 0303 	and.w	r3, r5, #3
2002128e:	bf58      	it	pl
20021290:	4253      	negpl	r3, r2
20021292:	2b02      	cmp	r3, #2
20021294:	d86d      	bhi.n	20021372 <dfu_boot_img_in_flash+0x11a>
20021296:	4630      	mov	r0, r6
20021298:	f7ff ffc8 	bl	2002122c <is_addr_in_nor>
2002129c:	f241 0308 	movw	r3, #4104	@ 0x1008
200212a0:	4682      	mov	sl, r0
200212a2:	026c      	lsls	r4, r5, #9
200212a4:	f8df c0f8 	ldr.w	ip, [pc, #248]	@ 200213a0 <dfu_boot_img_in_flash+0x148>
200212a8:	443c      	add	r4, r7
200212aa:	441c      	add	r4, r3
200212ac:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
200212ae:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
200212b2:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
200212b6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
200212ba:	f1ba 0f00 	cmp.w	sl, #0
200212be:	d036      	beq.n	2002132e <dfu_boot_img_in_flash+0xd6>
200212c0:	f1ac 0010 	sub.w	r0, ip, #16
200212c4:	f7ff fed2 	bl	2002106c <sifli_hw_init_xip_key>
200212c8:	4c32      	ldr	r4, [pc, #200]	@ (20021394 <dfu_boot_img_in_flash+0x13c>)
200212ca:	f857 2009 	ldr.w	r2, [r7, r9]
200212ce:	2000      	movs	r0, #0
200212d0:	f8d4 a000 	ldr.w	sl, [r4]
200212d4:	eb06 0b02 	add.w	fp, r6, r2
200212d8:	f7ff ff08 	bl	200210ec <dfu_get_counter>
200212dc:	465a      	mov	r2, fp
200212de:	4603      	mov	r3, r0
200212e0:	4631      	mov	r1, r6
200212e2:	4650      	mov	r0, sl
200212e4:	f002 f90f 	bl	20023506 <HAL_FLASH_NONCE_CFG>
200212e8:	4631      	mov	r1, r6
200212ea:	6820      	ldr	r0, [r4, #0]
200212ec:	f857 2009 	ldr.w	r2, [r7, r9]
200212f0:	eba8 0306 	sub.w	r3, r8, r6
200212f4:	f002 f8f6 	bl	200234e4 <HAL_FLASH_ALIAS_CFG>
200212f8:	2101      	movs	r1, #1
200212fa:	6820      	ldr	r0, [r4, #0]
200212fc:	f002 f91b 	bl	20023536 <HAL_FLASH_AES_CFG>
20021300:	f8d6 d000 	ldr.w	sp, [r6]
20021304:	f8d6 f004 	ldr.w	pc, [r6, #4]
20021308:	4630      	mov	r0, r6
2002130a:	f7ff ff8f 	bl	2002122c <is_addr_in_nor>
2002130e:	b398      	cbz	r0, 20021378 <dfu_boot_img_in_flash+0x120>
20021310:	4820      	ldr	r0, [pc, #128]	@ (20021394 <dfu_boot_img_in_flash+0x13c>)
20021312:	3508      	adds	r5, #8
20021314:	026d      	lsls	r5, r5, #9
20021316:	4631      	mov	r1, r6
20021318:	597a      	ldr	r2, [r7, r5]
2002131a:	6800      	ldr	r0, [r0, #0]
2002131c:	eba8 0306 	sub.w	r3, r8, r6
20021320:	f002 f8e0 	bl	200234e4 <HAL_FLASH_ALIAS_CFG>
20021324:	f8d6 d000 	ldr.w	sp, [r6]
20021328:	f8d6 f004 	ldr.w	pc, [r6, #4]
2002132c:	e021      	b.n	20021372 <dfu_boot_img_in_flash+0x11a>
2002132e:	f1ac 0010 	sub.w	r0, ip, #16
20021332:	2220      	movs	r2, #32
20021334:	4918      	ldr	r1, [pc, #96]	@ (20021398 <dfu_boot_img_in_flash+0x140>)
20021336:	f7ff fec1 	bl	200210bc <sifli_hw_dec_key>
2002133a:	4b18      	ldr	r3, [pc, #96]	@ (2002139c <dfu_boot_img_in_flash+0x144>)
2002133c:	4631      	mov	r1, r6
2002133e:	f857 2009 	ldr.w	r2, [r7, r9]
20021342:	4640      	mov	r0, r8
20021344:	681b      	ldr	r3, [r3, #0]
20021346:	4798      	blx	r3
20021348:	f8cd a000 	str.w	sl, [sp]
2002134c:	4632      	mov	r2, r6
2002134e:	4631      	mov	r1, r6
20021350:	f857 3009 	ldr.w	r3, [r7, r9]
20021354:	4810      	ldr	r0, [pc, #64]	@ (20021398 <dfu_boot_img_in_flash+0x140>)
20021356:	f7ff fee1 	bl	2002111c <sifli_hw_dec>
2002135a:	e7d1      	b.n	20021300 <dfu_boot_img_in_flash+0xa8>
2002135c:	2d07      	cmp	r5, #7
2002135e:	dc08      	bgt.n	20021372 <dfu_boot_img_in_flash+0x11a>
20021360:	426a      	negs	r2, r5
20021362:	f002 0203 	and.w	r2, r2, #3
20021366:	f005 0303 	and.w	r3, r5, #3
2002136a:	bf58      	it	pl
2002136c:	4253      	negpl	r3, r2
2002136e:	2b02      	cmp	r3, #2
20021370:	d9ca      	bls.n	20021308 <dfu_boot_img_in_flash+0xb0>
20021372:	b003      	add	sp, #12
20021374:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20021378:	45b0      	cmp	r8, r6
2002137a:	d0d3      	beq.n	20021324 <dfu_boot_img_in_flash+0xcc>
2002137c:	4b07      	ldr	r3, [pc, #28]	@ (2002139c <dfu_boot_img_in_flash+0x144>)
2002137e:	3508      	adds	r5, #8
20021380:	026d      	lsls	r5, r5, #9
20021382:	4631      	mov	r1, r6
20021384:	4640      	mov	r0, r8
20021386:	681b      	ldr	r3, [r3, #0]
20021388:	597a      	ldr	r2, [r7, r5]
2002138a:	4798      	blx	r3
2002138c:	e7ca      	b.n	20021324 <dfu_boot_img_in_flash+0xcc>
2002138e:	bf00      	nop
20021390:	20047270 	.word	0x20047270
20021394:	20046c64 	.word	0x20046c64
20021398:	20047230 	.word	0x20047230
2002139c:	20046c70 	.word	0x20046c70
200213a0:	20047250 	.word	0x20047250

200213a4 <boot_images_help>:
200213a4:	b537      	push	{r0, r1, r2, r4, r5, lr}
200213a6:	2009      	movs	r0, #9
200213a8:	f001 faa4 	bl	200228f4 <HAL_Get_backup>
200213ac:	4604      	mov	r4, r0
200213ae:	2008      	movs	r0, #8
200213b0:	f001 faa0 	bl	200228f4 <HAL_Get_backup>
200213b4:	4b31      	ldr	r3, [pc, #196]	@ (2002147c <boot_images_help+0xd8>)
200213b6:	4605      	mov	r5, r0
200213b8:	4423      	add	r3, r4
200213ba:	2b01      	cmp	r3, #1
200213bc:	d904      	bls.n	200213c8 <boot_images_help+0x24>
200213be:	2009      	movs	r0, #9
200213c0:	492f      	ldr	r1, [pc, #188]	@ (20021480 <boot_images_help+0xdc>)
200213c2:	f001 fa91 	bl	200228e8 <HAL_Set_backup>
200213c6:	4c2e      	ldr	r4, [pc, #184]	@ (20021480 <boot_images_help+0xdc>)
200213c8:	4b2e      	ldr	r3, [pc, #184]	@ (20021484 <boot_images_help+0xe0>)
200213ca:	442b      	add	r3, r5
200213cc:	2b01      	cmp	r3, #1
200213ce:	d812      	bhi.n	200213f6 <boot_images_help+0x52>
200213d0:	2100      	movs	r1, #0
200213d2:	2008      	movs	r0, #8
200213d4:	f001 fa88 	bl	200228e8 <HAL_Set_backup>
200213d8:	4b2b      	ldr	r3, [pc, #172]	@ (20021488 <boot_images_help+0xe4>)
200213da:	429d      	cmp	r5, r3
200213dc:	d147      	bne.n	2002146e <boot_images_help+0xca>
200213de:	2007      	movs	r0, #7
200213e0:	492a      	ldr	r1, [pc, #168]	@ (2002148c <boot_images_help+0xe8>)
200213e2:	f001 fa81 	bl	200228e8 <HAL_Set_backup>
200213e6:	482a      	ldr	r0, [pc, #168]	@ (20021490 <boot_images_help+0xec>)
200213e8:	f7ff fecc 	bl	20021184 <boot_slot_via_alias>
200213ec:	b970      	cbnz	r0, 2002140c <boot_images_help+0x68>
200213ee:	2100      	movs	r1, #0
200213f0:	2007      	movs	r0, #7
200213f2:	f001 fa79 	bl	200228e8 <HAL_Set_backup>
200213f6:	4b27      	ldr	r3, [pc, #156]	@ (20021494 <boot_images_help+0xf0>)
200213f8:	429c      	cmp	r4, r3
200213fa:	d107      	bne.n	2002140c <boot_images_help+0x68>
200213fc:	4824      	ldr	r0, [pc, #144]	@ (20021490 <boot_images_help+0xec>)
200213fe:	f7ff fec1 	bl	20021184 <boot_slot_via_alias>
20021402:	b918      	cbnz	r0, 2002140c <boot_images_help+0x68>
20021404:	2009      	movs	r0, #9
20021406:	491e      	ldr	r1, [pc, #120]	@ (20021480 <boot_images_help+0xdc>)
20021408:	f001 fa6e 	bl	200228e8 <HAL_Set_backup>
2002140c:	4c22      	ldr	r4, [pc, #136]	@ (20021498 <boot_images_help+0xf4>)
2002140e:	4b23      	ldr	r3, [pc, #140]	@ (2002149c <boot_images_help+0xf8>)
20021410:	6825      	ldr	r5, [r4, #0]
20021412:	429d      	cmp	r5, r3
20021414:	d129      	bne.n	2002146a <boot_images_help+0xc6>
20021416:	2300      	movs	r3, #0
20021418:	e9cd 3300 	strd	r3, r3, [sp]
2002141c:	4b20      	ldr	r3, [pc, #128]	@ (200214a0 <boot_images_help+0xfc>)
2002141e:	2208      	movs	r2, #8
20021420:	4669      	mov	r1, sp
20021422:	681b      	ldr	r3, [r3, #0]
20021424:	481f      	ldr	r0, [pc, #124]	@ (200214a4 <boot_images_help+0x100>)
20021426:	4798      	blx	r3
20021428:	2005      	movs	r0, #5
2002142a:	f001 fa63 	bl	200228f4 <HAL_Get_backup>
2002142e:	2802      	cmp	r0, #2
20021430:	f504 5400 	add.w	r4, r4, #8192	@ 0x2000
20021434:	d006      	beq.n	20021444 <boot_images_help+0xa0>
20021436:	9b00      	ldr	r3, [sp, #0]
20021438:	42ab      	cmp	r3, r5
2002143a:	d106      	bne.n	2002144a <boot_images_help+0xa6>
2002143c:	f89d 3005 	ldrb.w	r3, [sp, #5]
20021440:	2b7f      	cmp	r3, #127	@ 0x7f
20021442:	d102      	bne.n	2002144a <boot_images_help+0xa6>
20021444:	4b18      	ldr	r3, [pc, #96]	@ (200214a8 <boot_images_help+0x104>)
20021446:	f8c4 3c08 	str.w	r3, [r4, #3080]	@ 0xc08
2002144a:	f8d4 3c08 	ldr.w	r3, [r4, #3080]	@ 0xc08
2002144e:	1c5a      	adds	r2, r3, #1
20021450:	d00b      	beq.n	2002146a <boot_images_help+0xc6>
20021452:	4a16      	ldr	r2, [pc, #88]	@ (200214ac <boot_images_help+0x108>)
20021454:	6814      	ldr	r4, [r2, #0]
20021456:	1b1c      	subs	r4, r3, r4
20021458:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
2002145c:	0a64      	lsrs	r4, r4, #9
2002145e:	3402      	adds	r4, #2
20021460:	f7ff fa3c 	bl	200208dc <board_init_psram>
20021464:	4620      	mov	r0, r4
20021466:	f7ff fef7 	bl	20021258 <dfu_boot_img_in_flash>
2002146a:	b003      	add	sp, #12
2002146c:	bd30      	pop	{r4, r5, pc}
2002146e:	2007      	movs	r0, #7
20021470:	490f      	ldr	r1, [pc, #60]	@ (200214b0 <boot_images_help+0x10c>)
20021472:	f001 fa39 	bl	200228e8 <HAL_Set_backup>
20021476:	480f      	ldr	r0, [pc, #60]	@ (200214b4 <boot_images_help+0x110>)
20021478:	e7b6      	b.n	200213e8 <boot_images_help+0x44>
2002147a:	bf00      	nop
2002147c:	bebcabbf 	.word	0xbebcabbf
20021480:	41435441 	.word	0x41435441
20021484:	abada6bf 	.word	0xabada6bf
20021488:	54525942 	.word	0x54525942
2002148c:	434d5442 	.word	0x434d5442
20021490:	123a0000 	.word	0x123a0000
20021494:	41435442 	.word	0x41435442
20021498:	20047270 	.word	0x20047270
2002149c:	53454346 	.word	0x53454346
200214a0:	20046c70 	.word	0x20046c70
200214a4:	12780000 	.word	0x12780000
200214a8:	12001000 	.word	0x12001000
200214ac:	20046c60 	.word	0x20046c60
200214b0:	434d5441 	.word	0x434d5441
200214b4:	12020000 	.word	0x12020000

200214b8 <hw_preinit0>:
200214b8:	b508      	push	{r3, lr}
200214ba:	4b0e      	ldr	r3, [pc, #56]	@ (200214f4 <hw_preinit0+0x3c>)
200214bc:	685b      	ldr	r3, [r3, #4]
200214be:	b2db      	uxtb	r3, r3
200214c0:	2b06      	cmp	r3, #6
200214c2:	d80a      	bhi.n	200214da <hw_preinit0+0x22>
200214c4:	4a0c      	ldr	r2, [pc, #48]	@ (200214f8 <hw_preinit0+0x40>)
200214c6:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200214c8:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
200214cc:	f043 0306 	orr.w	r3, r3, #6
200214d0:	6293      	str	r3, [r2, #40]	@ 0x28
200214d2:	6853      	ldr	r3, [r2, #4]
200214d4:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
200214d8:	6053      	str	r3, [r2, #4]
200214da:	2000      	movs	r0, #0
200214dc:	f000 fca1 	bl	20021e22 <HAL_Delay_us>
200214e0:	4b06      	ldr	r3, [pc, #24]	@ (200214fc <hw_preinit0+0x44>)
200214e2:	4a07      	ldr	r2, [pc, #28]	@ (20021500 <hw_preinit0+0x48>)
200214e4:	2000      	movs	r0, #0
200214e6:	605a      	str	r2, [r3, #4]
200214e8:	f7ff fd84 	bl	20020ff4 <sifli_hw_efuse_read_bank>
200214ec:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200214f0:	f7ff be8e 	b.w	20021210 <boot_ram>
200214f4:	5000b000 	.word	0x5000b000
200214f8:	500ca000 	.word	0x500ca000
200214fc:	5000c000 	.word	0x5000c000
20021500:	0002d08f 	.word	0x0002d08f

20021504 <entry>:
20021504:	4c14      	ldr	r4, [pc, #80]	@ (20021558 <entry+0x54>)
20021506:	b508      	push	{r3, lr}
20021508:	2000      	movs	r0, #0
2002150a:	f000 fc8a 	bl	20021e22 <HAL_Delay_us>
2002150e:	6863      	ldr	r3, [r4, #4]
20021510:	4d12      	ldr	r5, [pc, #72]	@ (2002155c <entry+0x58>)
20021512:	b2db      	uxtb	r3, r3
20021514:	2b06      	cmp	r3, #6
20021516:	d90f      	bls.n	20021538 <entry+0x34>
20021518:	f7ff f800 	bl	2002051c <board_flash_power_on>
2002151c:	f7fe feee 	bl	200202fc <HAL_MspInit>
20021520:	f7fe ffde 	bl	200204e0 <board_boot_from>
20021524:	6028      	str	r0, [r5, #0]
20021526:	68e3      	ldr	r3, [r4, #12]
20021528:	f023 0301 	bic.w	r3, r3, #1
2002152c:	60e3      	str	r3, [r4, #12]
2002152e:	f7ff fbe7 	bl	20020d00 <dfu_flash_init>
20021532:	f7ff ff37 	bl	200213a4 <boot_images_help>
20021536:	e7fe      	b.n	20021536 <entry+0x32>
20021538:	f7fe ffd2 	bl	200204e0 <board_boot_from>
2002153c:	6028      	str	r0, [r5, #0]
2002153e:	f7fe ffed 	bl	2002051c <board_flash_power_on>
20021542:	f7fe fedb 	bl	200202fc <HAL_MspInit>
20021546:	68e3      	ldr	r3, [r4, #12]
20021548:	f023 0301 	bic.w	r3, r3, #1
2002154c:	60e3      	str	r3, [r4, #12]
2002154e:	f7ff fbd7 	bl	20020d00 <dfu_flash_init>
20021552:	f7ff ff27 	bl	200213a4 <boot_images_help>
20021556:	e7ee      	b.n	20021536 <entry+0x32>
20021558:	5000b000 	.word	0x5000b000
2002155c:	20049e80 	.word	0x20049e80

20021560 <sdio_emmc_init>:
20021560:	b570      	push	{r4, r5, r6, lr}
20021562:	b08c      	sub	sp, #48	@ 0x30
20021564:	f000 f968 	bl	20021838 <sd1_init>
20021568:	4c8d      	ldr	r4, [pc, #564]	@ (200217a0 <sdio_emmc_init+0x240>)
2002156a:	4b8e      	ldr	r3, [pc, #568]	@ (200217a4 <sdio_emmc_init+0x244>)
2002156c:	2500      	movs	r5, #0
2002156e:	6323      	str	r3, [r4, #48]	@ 0x30
20021570:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021572:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
20021576:	f043 0302 	orr.w	r3, r3, #2
2002157a:	6323      	str	r3, [r4, #48]	@ 0x30
2002157c:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021580:	62e5      	str	r5, [r4, #44]	@ 0x2c
20021582:	6223      	str	r3, [r4, #32]
20021584:	f000 fc4d 	bl	20021e22 <HAL_Delay_us>
20021588:	4629      	mov	r1, r5
2002158a:	4628      	mov	r0, r5
2002158c:	f000 f986 	bl	2002189c <sd1_send_cmd>
20021590:	2301      	movs	r3, #1
20021592:	65e3      	str	r3, [r4, #92]	@ 0x5c
20021594:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
20021596:	079d      	lsls	r5, r3, #30
20021598:	d5fc      	bpl.n	20021594 <sdio_emmc_init+0x34>
2002159a:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
2002159c:	f043 0320 	orr.w	r3, r3, #32
200215a0:	63e3      	str	r3, [r4, #60]	@ 0x3c
200215a2:	4981      	ldr	r1, [pc, #516]	@ (200217a8 <sdio_emmc_init+0x248>)
200215a4:	2001      	movs	r0, #1
200215a6:	ad07      	add	r5, sp, #28
200215a8:	f000 f978 	bl	2002189c <sd1_send_cmd>
200215ac:	ab06      	add	r3, sp, #24
200215ae:	aa05      	add	r2, sp, #20
200215b0:	a904      	add	r1, sp, #16
200215b2:	f10d 000f 	add.w	r0, sp, #15
200215b6:	9500      	str	r5, [sp, #0]
200215b8:	f000 f9ae 	bl	20021918 <sd1_get_rsp>
200215bc:	2014      	movs	r0, #20
200215be:	f000 fc30 	bl	20021e22 <HAL_Delay_us>
200215c2:	9b04      	ldr	r3, [sp, #16]
200215c4:	2b00      	cmp	r3, #0
200215c6:	daec      	bge.n	200215a2 <sdio_emmc_init+0x42>
200215c8:	2014      	movs	r0, #20
200215ca:	f000 fc2a 	bl	20021e22 <HAL_Delay_us>
200215ce:	2100      	movs	r1, #0
200215d0:	2002      	movs	r0, #2
200215d2:	f000 f963 	bl	2002189c <sd1_send_cmd>
200215d6:	2801      	cmp	r0, #1
200215d8:	f000 8081 	beq.w	200216de <sdio_emmc_init+0x17e>
200215dc:	2802      	cmp	r0, #2
200215de:	d07e      	beq.n	200216de <sdio_emmc_init+0x17e>
200215e0:	ab08      	add	r3, sp, #32
200215e2:	aa0a      	add	r2, sp, #40	@ 0x28
200215e4:	a90b      	add	r1, sp, #44	@ 0x2c
200215e6:	9300      	str	r3, [sp, #0]
200215e8:	f10d 000f 	add.w	r0, sp, #15
200215ec:	ab09      	add	r3, sp, #36	@ 0x24
200215ee:	f000 f993 	bl	20021918 <sd1_get_rsp>
200215f2:	2014      	movs	r0, #20
200215f4:	f000 fc15 	bl	20021e22 <HAL_Delay_us>
200215f8:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200215fc:	2003      	movs	r0, #3
200215fe:	f000 f94d 	bl	2002189c <sd1_send_cmd>
20021602:	2801      	cmp	r0, #1
20021604:	f000 80ab 	beq.w	2002175e <sdio_emmc_init+0x1fe>
20021608:	2802      	cmp	r0, #2
2002160a:	f000 80aa 	beq.w	20021762 <sdio_emmc_init+0x202>
2002160e:	ab06      	add	r3, sp, #24
20021610:	9500      	str	r5, [sp, #0]
20021612:	aa05      	add	r2, sp, #20
20021614:	a904      	add	r1, sp, #16
20021616:	f10d 000f 	add.w	r0, sp, #15
2002161a:	f000 f97d 	bl	20021918 <sd1_get_rsp>
2002161e:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021622:	2b03      	cmp	r3, #3
20021624:	f040 809f 	bne.w	20021766 <sdio_emmc_init+0x206>
20021628:	4c5d      	ldr	r4, [pc, #372]	@ (200217a0 <sdio_emmc_init+0x240>)
2002162a:	2014      	movs	r0, #20
2002162c:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
2002162e:	f023 0320 	bic.w	r3, r3, #32
20021632:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021634:	f000 fbf5 	bl	20021e22 <HAL_Delay_us>
20021638:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
2002163c:	2009      	movs	r0, #9
2002163e:	f000 f92d 	bl	2002189c <sd1_send_cmd>
20021642:	2801      	cmp	r0, #1
20021644:	f000 8091 	beq.w	2002176a <sdio_emmc_init+0x20a>
20021648:	2802      	cmp	r0, #2
2002164a:	f000 8090 	beq.w	2002176e <sdio_emmc_init+0x20e>
2002164e:	aa05      	add	r2, sp, #20
20021650:	a904      	add	r1, sp, #16
20021652:	ab06      	add	r3, sp, #24
20021654:	f10d 000f 	add.w	r0, sp, #15
20021658:	9500      	str	r5, [sp, #0]
2002165a:	f000 f95d 	bl	20021918 <sd1_get_rsp>
2002165e:	f44f 53b8 	mov.w	r3, #5888	@ 0x1700
20021662:	6323      	str	r3, [r4, #48]	@ 0x30
20021664:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021666:	2014      	movs	r0, #20
20021668:	f043 0302 	orr.w	r3, r3, #2
2002166c:	6323      	str	r3, [r4, #48]	@ 0x30
2002166e:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021672:	6223      	str	r3, [r4, #32]
20021674:	2302      	movs	r3, #2
20021676:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021678:	f000 fbd3 	bl	20021e22 <HAL_Delay_us>
2002167c:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021680:	2007      	movs	r0, #7
20021682:	f000 f90b 	bl	2002189c <sd1_send_cmd>
20021686:	2801      	cmp	r0, #1
20021688:	d073      	beq.n	20021772 <sdio_emmc_init+0x212>
2002168a:	2802      	cmp	r0, #2
2002168c:	d073      	beq.n	20021776 <sdio_emmc_init+0x216>
2002168e:	ab06      	add	r3, sp, #24
20021690:	9500      	str	r5, [sp, #0]
20021692:	aa05      	add	r2, sp, #20
20021694:	a904      	add	r1, sp, #16
20021696:	f10d 000f 	add.w	r0, sp, #15
2002169a:	f000 f93d 	bl	20021918 <sd1_get_rsp>
2002169e:	f89d 300f 	ldrb.w	r3, [sp, #15]
200216a2:	2b07      	cmp	r3, #7
200216a4:	d169      	bne.n	2002177a <sdio_emmc_init+0x21a>
200216a6:	f04f 33ff 	mov.w	r3, #4294967295
200216aa:	2101      	movs	r1, #1
200216ac:	2000      	movs	r0, #0
200216ae:	6023      	str	r3, [r4, #0]
200216b0:	f000 f942 	bl	20021938 <sd1_read>
200216b4:	2100      	movs	r1, #0
200216b6:	2008      	movs	r0, #8
200216b8:	f000 f8f0 	bl	2002189c <sd1_send_cmd>
200216bc:	2801      	cmp	r0, #1
200216be:	d05e      	beq.n	2002177e <sdio_emmc_init+0x21e>
200216c0:	2802      	cmp	r0, #2
200216c2:	d05e      	beq.n	20021782 <sdio_emmc_init+0x222>
200216c4:	ab06      	add	r3, sp, #24
200216c6:	9500      	str	r5, [sp, #0]
200216c8:	aa05      	add	r2, sp, #20
200216ca:	a904      	add	r1, sp, #16
200216cc:	f10d 000f 	add.w	r0, sp, #15
200216d0:	f000 f922 	bl	20021918 <sd1_get_rsp>
200216d4:	f89d 300f 	ldrb.w	r3, [sp, #15]
200216d8:	2b08      	cmp	r3, #8
200216da:	d002      	beq.n	200216e2 <sdio_emmc_init+0x182>
200216dc:	200d      	movs	r0, #13
200216de:	b00c      	add	sp, #48	@ 0x30
200216e0:	bd70      	pop	{r4, r5, r6, pc}
200216e2:	2320      	movs	r3, #32
200216e4:	62e3      	str	r3, [r4, #44]	@ 0x2c
200216e6:	f000 f937 	bl	20021958 <sd1_wait_read>
200216ea:	6823      	ldr	r3, [r4, #0]
200216ec:	0618      	lsls	r0, r3, #24
200216ee:	d4f5      	bmi.n	200216dc <sdio_emmc_init+0x17c>
200216f0:	6823      	ldr	r3, [r4, #0]
200216f2:	0659      	lsls	r1, r3, #25
200216f4:	d447      	bmi.n	20021786 <sdio_emmc_init+0x226>
200216f6:	2680      	movs	r6, #128	@ 0x80
200216f8:	3e01      	subs	r6, #1
200216fa:	f8d4 3200 	ldr.w	r3, [r4, #512]	@ 0x200
200216fe:	d1fb      	bne.n	200216f8 <sdio_emmc_init+0x198>
20021700:	2101      	movs	r1, #1
20021702:	4630      	mov	r0, r6
20021704:	f000 f918 	bl	20021938 <sd1_read>
20021708:	2014      	movs	r0, #20
2002170a:	f000 fb8a 	bl	20021e22 <HAL_Delay_us>
2002170e:	f04f 33ff 	mov.w	r3, #4294967295
20021712:	4631      	mov	r1, r6
20021714:	2011      	movs	r0, #17
20021716:	6023      	str	r3, [r4, #0]
20021718:	f000 f8c0 	bl	2002189c <sd1_send_cmd>
2002171c:	2801      	cmp	r0, #1
2002171e:	d034      	beq.n	2002178a <sdio_emmc_init+0x22a>
20021720:	2802      	cmp	r0, #2
20021722:	d034      	beq.n	2002178e <sdio_emmc_init+0x22e>
20021724:	ab06      	add	r3, sp, #24
20021726:	9500      	str	r5, [sp, #0]
20021728:	aa05      	add	r2, sp, #20
2002172a:	a904      	add	r1, sp, #16
2002172c:	f10d 000f 	add.w	r0, sp, #15
20021730:	f000 f8f2 	bl	20021918 <sd1_get_rsp>
20021734:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021738:	2b11      	cmp	r3, #17
2002173a:	d12a      	bne.n	20021792 <sdio_emmc_init+0x232>
2002173c:	2320      	movs	r3, #32
2002173e:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021740:	f000 f90a 	bl	20021958 <sd1_wait_read>
20021744:	6823      	ldr	r3, [r4, #0]
20021746:	061a      	lsls	r2, r3, #24
20021748:	d425      	bmi.n	20021796 <sdio_emmc_init+0x236>
2002174a:	6823      	ldr	r3, [r4, #0]
2002174c:	065b      	lsls	r3, r3, #25
2002174e:	d424      	bmi.n	2002179a <sdio_emmc_init+0x23a>
20021750:	2080      	movs	r0, #128	@ 0x80
20021752:	4b13      	ldr	r3, [pc, #76]	@ (200217a0 <sdio_emmc_init+0x240>)
20021754:	3801      	subs	r0, #1
20021756:	f8d3 2200 	ldr.w	r2, [r3, #512]	@ 0x200
2002175a:	d1fb      	bne.n	20021754 <sdio_emmc_init+0x1f4>
2002175c:	e7bf      	b.n	200216de <sdio_emmc_init+0x17e>
2002175e:	2003      	movs	r0, #3
20021760:	e7bd      	b.n	200216de <sdio_emmc_init+0x17e>
20021762:	2004      	movs	r0, #4
20021764:	e7bb      	b.n	200216de <sdio_emmc_init+0x17e>
20021766:	2005      	movs	r0, #5
20021768:	e7b9      	b.n	200216de <sdio_emmc_init+0x17e>
2002176a:	2006      	movs	r0, #6
2002176c:	e7b7      	b.n	200216de <sdio_emmc_init+0x17e>
2002176e:	2007      	movs	r0, #7
20021770:	e7b5      	b.n	200216de <sdio_emmc_init+0x17e>
20021772:	2008      	movs	r0, #8
20021774:	e7b3      	b.n	200216de <sdio_emmc_init+0x17e>
20021776:	2009      	movs	r0, #9
20021778:	e7b1      	b.n	200216de <sdio_emmc_init+0x17e>
2002177a:	200a      	movs	r0, #10
2002177c:	e7af      	b.n	200216de <sdio_emmc_init+0x17e>
2002177e:	200b      	movs	r0, #11
20021780:	e7ad      	b.n	200216de <sdio_emmc_init+0x17e>
20021782:	200c      	movs	r0, #12
20021784:	e7ab      	b.n	200216de <sdio_emmc_init+0x17e>
20021786:	200e      	movs	r0, #14
20021788:	e7a9      	b.n	200216de <sdio_emmc_init+0x17e>
2002178a:	2011      	movs	r0, #17
2002178c:	e7a7      	b.n	200216de <sdio_emmc_init+0x17e>
2002178e:	2012      	movs	r0, #18
20021790:	e7a5      	b.n	200216de <sdio_emmc_init+0x17e>
20021792:	2013      	movs	r0, #19
20021794:	e7a3      	b.n	200216de <sdio_emmc_init+0x17e>
20021796:	2014      	movs	r0, #20
20021798:	e7a1      	b.n	200216de <sdio_emmc_init+0x17e>
2002179a:	2015      	movs	r0, #21
2002179c:	e79f      	b.n	200216de <sdio_emmc_init+0x17e>
2002179e:	bf00      	nop
200217a0:	50045000 	.word	0x50045000
200217a4:	00016700 	.word	0x00016700
200217a8:	40000080 	.word	0x40000080

200217ac <emmc_read_data>:
200217ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200217b0:	4607      	mov	r7, r0
200217b2:	f04f 38ff 	mov.w	r8, #4294967295
200217b6:	b088      	sub	sp, #32
200217b8:	2000      	movs	r0, #0
200217ba:	460d      	mov	r5, r1
200217bc:	4e1d      	ldr	r6, [pc, #116]	@ (20021834 <emmc_read_data+0x88>)
200217be:	2101      	movs	r1, #1
200217c0:	4614      	mov	r4, r2
200217c2:	f000 f8b9 	bl	20021938 <sd1_read>
200217c6:	2014      	movs	r0, #20
200217c8:	f000 fb2b 	bl	20021e22 <HAL_Delay_us>
200217cc:	2011      	movs	r0, #17
200217ce:	f8c6 8000 	str.w	r8, [r6]
200217d2:	0a79      	lsrs	r1, r7, #9
200217d4:	f000 f862 	bl	2002189c <sd1_send_cmd>
200217d8:	4440      	add	r0, r8
200217da:	b2c0      	uxtb	r0, r0
200217dc:	2801      	cmp	r0, #1
200217de:	d803      	bhi.n	200217e8 <emmc_read_data+0x3c>
200217e0:	2000      	movs	r0, #0
200217e2:	b008      	add	sp, #32
200217e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200217e8:	ab07      	add	r3, sp, #28
200217ea:	9300      	str	r3, [sp, #0]
200217ec:	aa05      	add	r2, sp, #20
200217ee:	ab06      	add	r3, sp, #24
200217f0:	a904      	add	r1, sp, #16
200217f2:	f10d 000f 	add.w	r0, sp, #15
200217f6:	f000 f88f 	bl	20021918 <sd1_get_rsp>
200217fa:	f89d 300f 	ldrb.w	r3, [sp, #15]
200217fe:	2b11      	cmp	r3, #17
20021800:	d1ee      	bne.n	200217e0 <emmc_read_data+0x34>
20021802:	2320      	movs	r3, #32
20021804:	f8c6 8000 	str.w	r8, [r6]
20021808:	62f3      	str	r3, [r6, #44]	@ 0x2c
2002180a:	f000 f8a5 	bl	20021958 <sd1_wait_read>
2002180e:	6833      	ldr	r3, [r6, #0]
20021810:	061a      	lsls	r2, r3, #24
20021812:	d4e5      	bmi.n	200217e0 <emmc_read_data+0x34>
20021814:	6833      	ldr	r3, [r6, #0]
20021816:	065b      	lsls	r3, r3, #25
20021818:	d4e2      	bmi.n	200217e0 <emmc_read_data+0x34>
2002181a:	f024 0303 	bic.w	r3, r4, #3
2002181e:	442b      	add	r3, r5
20021820:	429d      	cmp	r5, r3
20021822:	d101      	bne.n	20021828 <emmc_read_data+0x7c>
20021824:	4620      	mov	r0, r4
20021826:	e7dc      	b.n	200217e2 <emmc_read_data+0x36>
20021828:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
2002182c:	f845 2b04 	str.w	r2, [r5], #4
20021830:	e7f6      	b.n	20021820 <emmc_read_data+0x74>
20021832:	bf00      	nop
20021834:	50045000 	.word	0x50045000

20021838 <sd1_init>:
20021838:	b510      	push	{r4, lr}
2002183a:	f04f 44a0 	mov.w	r4, #1342177280	@ 0x50000000
2002183e:	68e3      	ldr	r3, [r4, #12]
20021840:	2064      	movs	r0, #100	@ 0x64
20021842:	f023 0310 	bic.w	r3, r3, #16
20021846:	60e3      	str	r3, [r4, #12]
20021848:	f000 faeb 	bl	20021e22 <HAL_Delay_us>
2002184c:	68e3      	ldr	r3, [r4, #12]
2002184e:	4a07      	ldr	r2, [pc, #28]	@ (2002186c <sd1_init+0x34>)
20021850:	f043 0310 	orr.w	r3, r3, #16
20021854:	60e3      	str	r3, [r4, #12]
20021856:	6913      	ldr	r3, [r2, #16]
20021858:	f043 0302 	orr.w	r3, r3, #2
2002185c:	6113      	str	r3, [r2, #16]
2002185e:	f44f 7280 	mov.w	r2, #256	@ 0x100
20021862:	4b03      	ldr	r3, [pc, #12]	@ (20021870 <sd1_init+0x38>)
20021864:	631a      	str	r2, [r3, #48]	@ 0x30
20021866:	2200      	movs	r2, #0
20021868:	63da      	str	r2, [r3, #60]	@ 0x3c
2002186a:	bd10      	pop	{r4, pc}
2002186c:	5000b000 	.word	0x5000b000
20021870:	50045000 	.word	0x50045000

20021874 <sd1_wait_cmd>:
20021874:	4b08      	ldr	r3, [pc, #32]	@ (20021898 <sd1_wait_cmd+0x24>)
20021876:	681a      	ldr	r2, [r3, #0]
20021878:	f012 0f0a 	tst.w	r2, #10
2002187c:	d0fb      	beq.n	20021876 <sd1_wait_cmd+0x2>
2002187e:	2202      	movs	r2, #2
20021880:	601a      	str	r2, [r3, #0]
20021882:	681a      	ldr	r2, [r3, #0]
20021884:	0712      	lsls	r2, r2, #28
20021886:	bf5f      	itttt	pl
20021888:	6818      	ldrpl	r0, [r3, #0]
2002188a:	f3c0 0080 	ubfxpl	r0, r0, #2, #1
2002188e:	0040      	lslpl	r0, r0, #1
20021890:	b2c0      	uxtbpl	r0, r0
20021892:	bf48      	it	mi
20021894:	2001      	movmi	r0, #1
20021896:	4770      	bx	lr
20021898:	50045000 	.word	0x50045000

2002189c <sd1_send_cmd>:
2002189c:	4b0e      	ldr	r3, [pc, #56]	@ (200218d8 <sd1_send_cmd+0x3c>)
2002189e:	280f      	cmp	r0, #15
200218a0:	6099      	str	r1, [r3, #8]
200218a2:	ea4f 4380 	mov.w	r3, r0, lsl #18
200218a6:	d813      	bhi.n	200218d0 <sd1_send_cmd+0x34>
200218a8:	2201      	movs	r2, #1
200218aa:	f248 0111 	movw	r1, #32785	@ 0x8011
200218ae:	4082      	lsls	r2, r0
200218b0:	420a      	tst	r2, r1
200218b2:	d105      	bne.n	200218c0 <sd1_send_cmd+0x24>
200218b4:	f240 6104 	movw	r1, #1540	@ 0x604
200218b8:	420a      	tst	r2, r1
200218ba:	d009      	beq.n	200218d0 <sd1_send_cmd+0x34>
200218bc:	f443 3340 	orr.w	r3, r3, #196608	@ 0x30000
200218c0:	4a05      	ldr	r2, [pc, #20]	@ (200218d8 <sd1_send_cmd+0x3c>)
200218c2:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
200218c6:	f043 0301 	orr.w	r3, r3, #1
200218ca:	6053      	str	r3, [r2, #4]
200218cc:	f7ff bfd2 	b.w	20021874 <sd1_wait_cmd>
200218d0:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
200218d4:	e7f4      	b.n	200218c0 <sd1_send_cmd+0x24>
200218d6:	bf00      	nop
200218d8:	50045000 	.word	0x50045000

200218dc <sd1_send_acmd>:
200218dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200218de:	4605      	mov	r5, r0
200218e0:	460f      	mov	r7, r1
200218e2:	2037      	movs	r0, #55	@ 0x37
200218e4:	0411      	lsls	r1, r2, #16
200218e6:	f7ff ffd9 	bl	2002189c <sd1_send_cmd>
200218ea:	4604      	mov	r4, r0
200218ec:	b968      	cbnz	r0, 2002190a <sd1_send_acmd+0x2e>
200218ee:	4b08      	ldr	r3, [pc, #32]	@ (20021910 <sd1_send_acmd+0x34>)
200218f0:	4e08      	ldr	r6, [pc, #32]	@ (20021914 <sd1_send_acmd+0x38>)
200218f2:	ea43 4385 	orr.w	r3, r3, r5, lsl #18
200218f6:	60b7      	str	r7, [r6, #8]
200218f8:	6073      	str	r3, [r6, #4]
200218fa:	f7ff ffbb 	bl	20021874 <sd1_wait_cmd>
200218fe:	2802      	cmp	r0, #2
20021900:	d104      	bne.n	2002190c <sd1_send_acmd+0x30>
20021902:	2d29      	cmp	r5, #41	@ 0x29
20021904:	d102      	bne.n	2002190c <sd1_send_acmd+0x30>
20021906:	2304      	movs	r3, #4
20021908:	6033      	str	r3, [r6, #0]
2002190a:	4620      	mov	r0, r4
2002190c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002190e:	bf00      	nop
20021910:	00010101 	.word	0x00010101
20021914:	50045000 	.word	0x50045000

20021918 <sd1_get_rsp>:
20021918:	b530      	push	{r4, r5, lr}
2002191a:	4c06      	ldr	r4, [pc, #24]	@ (20021934 <sd1_get_rsp+0x1c>)
2002191c:	68e5      	ldr	r5, [r4, #12]
2002191e:	7005      	strb	r5, [r0, #0]
20021920:	6920      	ldr	r0, [r4, #16]
20021922:	6008      	str	r0, [r1, #0]
20021924:	6961      	ldr	r1, [r4, #20]
20021926:	6011      	str	r1, [r2, #0]
20021928:	69a2      	ldr	r2, [r4, #24]
2002192a:	601a      	str	r2, [r3, #0]
2002192c:	69e2      	ldr	r2, [r4, #28]
2002192e:	9b03      	ldr	r3, [sp, #12]
20021930:	601a      	str	r2, [r3, #0]
20021932:	bd30      	pop	{r4, r5, pc}
20021934:	50045000 	.word	0x50045000

20021938 <sd1_read>:
20021938:	f04f 33ff 	mov.w	r3, #4294967295
2002193c:	4a04      	ldr	r2, [pc, #16]	@ (20021950 <sd1_read+0x18>)
2002193e:	eb03 2341 	add.w	r3, r3, r1, lsl #9
20021942:	6293      	str	r3, [r2, #40]	@ 0x28
20021944:	4b03      	ldr	r3, [pc, #12]	@ (20021954 <sd1_read+0x1c>)
20021946:	ea43 23c0 	orr.w	r3, r3, r0, lsl #11
2002194a:	6253      	str	r3, [r2, #36]	@ 0x24
2002194c:	4770      	bx	lr
2002194e:	bf00      	nop
20021950:	50045000 	.word	0x50045000
20021954:	01ff0301 	.word	0x01ff0301

20021958 <sd1_wait_read>:
20021958:	4b08      	ldr	r3, [pc, #32]	@ (2002197c <sd1_wait_read+0x24>)
2002195a:	681a      	ldr	r2, [r3, #0]
2002195c:	f012 0fe0 	tst.w	r2, #224	@ 0xe0
20021960:	d0fb      	beq.n	2002195a <sd1_wait_read+0x2>
20021962:	2220      	movs	r2, #32
20021964:	601a      	str	r2, [r3, #0]
20021966:	681a      	ldr	r2, [r3, #0]
20021968:	0612      	lsls	r2, r2, #24
2002196a:	bf5f      	itttt	pl
2002196c:	6818      	ldrpl	r0, [r3, #0]
2002196e:	f3c0 1080 	ubfxpl	r0, r0, #6, #1
20021972:	0040      	lslpl	r0, r0, #1
20021974:	b2c0      	uxtbpl	r0, r0
20021976:	bf48      	it	mi
20021978:	2001      	movmi	r0, #1
2002197a:	4770      	bx	lr
2002197c:	50045000 	.word	0x50045000

20021980 <sdmmc1_sdnand>:
20021980:	b5f0      	push	{r4, r5, r6, r7, lr}
20021982:	b08d      	sub	sp, #52	@ 0x34
20021984:	f7ff ff58 	bl	20021838 <sd1_init>
20021988:	4c8f      	ldr	r4, [pc, #572]	@ (20021bc8 <sdmmc1_sdnand+0x248>)
2002198a:	4b90      	ldr	r3, [pc, #576]	@ (20021bcc <sdmmc1_sdnand+0x24c>)
2002198c:	2500      	movs	r5, #0
2002198e:	6323      	str	r3, [r4, #48]	@ 0x30
20021990:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021992:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
20021996:	f043 0302 	orr.w	r3, r3, #2
2002199a:	6323      	str	r3, [r4, #48]	@ 0x30
2002199c:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
200219a0:	62e5      	str	r5, [r4, #44]	@ 0x2c
200219a2:	6223      	str	r3, [r4, #32]
200219a4:	f000 fa3d 	bl	20021e22 <HAL_Delay_us>
200219a8:	4629      	mov	r1, r5
200219aa:	4628      	mov	r0, r5
200219ac:	f7ff ff76 	bl	2002189c <sd1_send_cmd>
200219b0:	2301      	movs	r3, #1
200219b2:	65e3      	str	r3, [r4, #92]	@ 0x5c
200219b4:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200219b6:	079a      	lsls	r2, r3, #30
200219b8:	d5fc      	bpl.n	200219b4 <sdmmc1_sdnand+0x34>
200219ba:	2014      	movs	r0, #20
200219bc:	f000 fa31 	bl	20021e22 <HAL_Delay_us>
200219c0:	f44f 71d5 	mov.w	r1, #426	@ 0x1aa
200219c4:	2008      	movs	r0, #8
200219c6:	f7ff ff69 	bl	2002189c <sd1_send_cmd>
200219ca:	3801      	subs	r0, #1
200219cc:	b2c0      	uxtb	r0, r0
200219ce:	2801      	cmp	r0, #1
200219d0:	d802      	bhi.n	200219d8 <sdmmc1_sdnand+0x58>
200219d2:	2038      	movs	r0, #56	@ 0x38
200219d4:	b00d      	add	sp, #52	@ 0x34
200219d6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200219d8:	ac07      	add	r4, sp, #28
200219da:	ab06      	add	r3, sp, #24
200219dc:	9400      	str	r4, [sp, #0]
200219de:	aa05      	add	r2, sp, #20
200219e0:	a904      	add	r1, sp, #16
200219e2:	f10d 000f 	add.w	r0, sp, #15
200219e6:	f7ff ff97 	bl	20021918 <sd1_get_rsp>
200219ea:	f89d 300f 	ldrb.w	r3, [sp, #15]
200219ee:	2b08      	cmp	r3, #8
200219f0:	d1ef      	bne.n	200219d2 <sdmmc1_sdnand+0x52>
200219f2:	9b04      	ldr	r3, [sp, #16]
200219f4:	f5b3 7fd5 	cmp.w	r3, #426	@ 0x1aa
200219f8:	d1eb      	bne.n	200219d2 <sdmmc1_sdnand+0x52>
200219fa:	2014      	movs	r0, #20
200219fc:	f000 fa11 	bl	20021e22 <HAL_Delay_us>
20021a00:	2200      	movs	r2, #0
20021a02:	2029      	movs	r0, #41	@ 0x29
20021a04:	4972      	ldr	r1, [pc, #456]	@ (20021bd0 <sdmmc1_sdnand+0x250>)
20021a06:	f7ff ff69 	bl	200218dc <sd1_send_acmd>
20021a0a:	2801      	cmp	r0, #1
20021a0c:	f000 80d0 	beq.w	20021bb0 <sdmmc1_sdnand+0x230>
20021a10:	ab06      	add	r3, sp, #24
20021a12:	9400      	str	r4, [sp, #0]
20021a14:	aa05      	add	r2, sp, #20
20021a16:	a904      	add	r1, sp, #16
20021a18:	f10d 000f 	add.w	r0, sp, #15
20021a1c:	f7ff ff7c 	bl	20021918 <sd1_get_rsp>
20021a20:	9b04      	ldr	r3, [sp, #16]
20021a22:	2b00      	cmp	r3, #0
20021a24:	db03      	blt.n	20021a2e <sdmmc1_sdnand+0xae>
20021a26:	2002      	movs	r0, #2
20021a28:	f000 f9fb 	bl	20021e22 <HAL_Delay_us>
20021a2c:	e7e5      	b.n	200219fa <sdmmc1_sdnand+0x7a>
20021a2e:	2014      	movs	r0, #20
20021a30:	f000 f9f7 	bl	20021e22 <HAL_Delay_us>
20021a34:	2100      	movs	r1, #0
20021a36:	2002      	movs	r0, #2
20021a38:	f7ff ff30 	bl	2002189c <sd1_send_cmd>
20021a3c:	3801      	subs	r0, #1
20021a3e:	b2c0      	uxtb	r0, r0
20021a40:	2801      	cmp	r0, #1
20021a42:	f240 80b7 	bls.w	20021bb4 <sdmmc1_sdnand+0x234>
20021a46:	ab08      	add	r3, sp, #32
20021a48:	aa0a      	add	r2, sp, #40	@ 0x28
20021a4a:	a90b      	add	r1, sp, #44	@ 0x2c
20021a4c:	9300      	str	r3, [sp, #0]
20021a4e:	f10d 000f 	add.w	r0, sp, #15
20021a52:	ab09      	add	r3, sp, #36	@ 0x24
20021a54:	f7ff ff60 	bl	20021918 <sd1_get_rsp>
20021a58:	2014      	movs	r0, #20
20021a5a:	f000 f9e2 	bl	20021e22 <HAL_Delay_us>
20021a5e:	2100      	movs	r1, #0
20021a60:	2003      	movs	r0, #3
20021a62:	f7ff ff1b 	bl	2002189c <sd1_send_cmd>
20021a66:	3801      	subs	r0, #1
20021a68:	b2c0      	uxtb	r0, r0
20021a6a:	2801      	cmp	r0, #1
20021a6c:	d801      	bhi.n	20021a72 <sdmmc1_sdnand+0xf2>
20021a6e:	2033      	movs	r0, #51	@ 0x33
20021a70:	e7b0      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021a72:	ab06      	add	r3, sp, #24
20021a74:	9400      	str	r4, [sp, #0]
20021a76:	aa05      	add	r2, sp, #20
20021a78:	a904      	add	r1, sp, #16
20021a7a:	f10d 000f 	add.w	r0, sp, #15
20021a7e:	f7ff ff4b 	bl	20021918 <sd1_get_rsp>
20021a82:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a86:	2b03      	cmp	r3, #3
20021a88:	d1f1      	bne.n	20021a6e <sdmmc1_sdnand+0xee>
20021a8a:	9e04      	ldr	r6, [sp, #16]
20021a8c:	2014      	movs	r0, #20
20021a8e:	0c35      	lsrs	r5, r6, #16
20021a90:	042d      	lsls	r5, r5, #16
20021a92:	f000 f9c6 	bl	20021e22 <HAL_Delay_us>
20021a96:	4629      	mov	r1, r5
20021a98:	2009      	movs	r0, #9
20021a9a:	f7ff feff 	bl	2002189c <sd1_send_cmd>
20021a9e:	3801      	subs	r0, #1
20021aa0:	b2c0      	uxtb	r0, r0
20021aa2:	2801      	cmp	r0, #1
20021aa4:	f240 8088 	bls.w	20021bb8 <sdmmc1_sdnand+0x238>
20021aa8:	9400      	str	r4, [sp, #0]
20021aaa:	ab06      	add	r3, sp, #24
20021aac:	aa05      	add	r2, sp, #20
20021aae:	a904      	add	r1, sp, #16
20021ab0:	f10d 000f 	add.w	r0, sp, #15
20021ab4:	f7ff ff30 	bl	20021918 <sd1_get_rsp>
20021ab8:	e9dd 2004 	ldrd	r2, r0, [sp, #16]
20021abc:	9c06      	ldr	r4, [sp, #24]
20021abe:	9907      	ldr	r1, [sp, #28]
20021ac0:	0e23      	lsrs	r3, r4, #24
20021ac2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
20021ac6:	0e01      	lsrs	r1, r0, #24
20021ac8:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
20021acc:	9105      	str	r1, [sp, #20]
20021ace:	0e11      	lsrs	r1, r2, #24
20021ad0:	9304      	str	r3, [sp, #16]
20021ad2:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
20021ad6:	0212      	lsls	r2, r2, #8
20021ad8:	0f9b      	lsrs	r3, r3, #30
20021ada:	9106      	str	r1, [sp, #24]
20021adc:	9207      	str	r2, [sp, #28]
20021ade:	d01e      	beq.n	20021b1e <sdmmc1_sdnand+0x19e>
20021ae0:	2b01      	cmp	r3, #1
20021ae2:	d16b      	bne.n	20021bbc <sdmmc1_sdnand+0x23c>
20021ae4:	2300      	movs	r3, #0
20021ae6:	4a3b      	ldr	r2, [pc, #236]	@ (20021bd4 <sdmmc1_sdnand+0x254>)
20021ae8:	4c37      	ldr	r4, [pc, #220]	@ (20021bc8 <sdmmc1_sdnand+0x248>)
20021aea:	7013      	strb	r3, [r2, #0]
20021aec:	f44f 63a0 	mov.w	r3, #1280	@ 0x500
20021af0:	6323      	str	r3, [r4, #48]	@ 0x30
20021af2:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021af4:	2702      	movs	r7, #2
20021af6:	f043 0302 	orr.w	r3, r3, #2
20021afa:	6323      	str	r3, [r4, #48]	@ 0x30
20021afc:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021b00:	2014      	movs	r0, #20
20021b02:	6223      	str	r3, [r4, #32]
20021b04:	63e7      	str	r7, [r4, #60]	@ 0x3c
20021b06:	f000 f98c 	bl	20021e22 <HAL_Delay_us>
20021b0a:	4629      	mov	r1, r5
20021b0c:	2007      	movs	r0, #7
20021b0e:	f7ff fec5 	bl	2002189c <sd1_send_cmd>
20021b12:	3801      	subs	r0, #1
20021b14:	b2c0      	uxtb	r0, r0
20021b16:	2801      	cmp	r0, #1
20021b18:	d803      	bhi.n	20021b22 <sdmmc1_sdnand+0x1a2>
20021b1a:	2037      	movs	r0, #55	@ 0x37
20021b1c:	e75a      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021b1e:	2301      	movs	r3, #1
20021b20:	e7e1      	b.n	20021ae6 <sdmmc1_sdnand+0x166>
20021b22:	ad07      	add	r5, sp, #28
20021b24:	ab06      	add	r3, sp, #24
20021b26:	9500      	str	r5, [sp, #0]
20021b28:	aa05      	add	r2, sp, #20
20021b2a:	a904      	add	r1, sp, #16
20021b2c:	f10d 000f 	add.w	r0, sp, #15
20021b30:	f7ff fef2 	bl	20021918 <sd1_get_rsp>
20021b34:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b38:	2b07      	cmp	r3, #7
20021b3a:	d1ee      	bne.n	20021b1a <sdmmc1_sdnand+0x19a>
20021b3c:	2014      	movs	r0, #20
20021b3e:	f000 f970 	bl	20021e22 <HAL_Delay_us>
20021b42:	4639      	mov	r1, r7
20021b44:	2006      	movs	r0, #6
20021b46:	0c32      	lsrs	r2, r6, #16
20021b48:	f7ff fec8 	bl	200218dc <sd1_send_acmd>
20021b4c:	3801      	subs	r0, #1
20021b4e:	b2c0      	uxtb	r0, r0
20021b50:	2801      	cmp	r0, #1
20021b52:	d935      	bls.n	20021bc0 <sdmmc1_sdnand+0x240>
20021b54:	2101      	movs	r1, #1
20021b56:	4608      	mov	r0, r1
20021b58:	f7ff feee 	bl	20021938 <sd1_read>
20021b5c:	2014      	movs	r0, #20
20021b5e:	f000 f960 	bl	20021e22 <HAL_Delay_us>
20021b62:	2100      	movs	r1, #0
20021b64:	2011      	movs	r0, #17
20021b66:	f7ff fe99 	bl	2002189c <sd1_send_cmd>
20021b6a:	3801      	subs	r0, #1
20021b6c:	b2c0      	uxtb	r0, r0
20021b6e:	2801      	cmp	r0, #1
20021b70:	d801      	bhi.n	20021b76 <sdmmc1_sdnand+0x1f6>
20021b72:	2052      	movs	r0, #82	@ 0x52
20021b74:	e72e      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021b76:	ab06      	add	r3, sp, #24
20021b78:	9500      	str	r5, [sp, #0]
20021b7a:	aa05      	add	r2, sp, #20
20021b7c:	a904      	add	r1, sp, #16
20021b7e:	f10d 000f 	add.w	r0, sp, #15
20021b82:	f7ff fec9 	bl	20021918 <sd1_get_rsp>
20021b86:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b8a:	2b11      	cmp	r3, #17
20021b8c:	d1f1      	bne.n	20021b72 <sdmmc1_sdnand+0x1f2>
20021b8e:	f04f 33ff 	mov.w	r3, #4294967295
20021b92:	6023      	str	r3, [r4, #0]
20021b94:	2320      	movs	r3, #32
20021b96:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021b98:	f7ff fede 	bl	20021958 <sd1_wait_read>
20021b9c:	6823      	ldr	r3, [r4, #0]
20021b9e:	061b      	lsls	r3, r3, #24
20021ba0:	d410      	bmi.n	20021bc4 <sdmmc1_sdnand+0x244>
20021ba2:	6823      	ldr	r3, [r4, #0]
20021ba4:	f013 0f40 	tst.w	r3, #64	@ 0x40
20021ba8:	bf14      	ite	ne
20021baa:	2044      	movne	r0, #68	@ 0x44
20021bac:	2001      	moveq	r0, #1
20021bae:	e711      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021bb0:	2034      	movs	r0, #52	@ 0x34
20021bb2:	e70f      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021bb4:	2032      	movs	r0, #50	@ 0x32
20021bb6:	e70d      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021bb8:	2039      	movs	r0, #57	@ 0x39
20021bba:	e70b      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021bbc:	2054      	movs	r0, #84	@ 0x54
20021bbe:	e709      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021bc0:	2036      	movs	r0, #54	@ 0x36
20021bc2:	e707      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021bc4:	204f      	movs	r0, #79	@ 0x4f
20021bc6:	e705      	b.n	200219d4 <sdmmc1_sdnand+0x54>
20021bc8:	50045000 	.word	0x50045000
20021bcc:	00016700 	.word	0x00016700
20021bd0:	40ff8000 	.word	0x40ff8000
20021bd4:	20042c08 	.word	0x20042c08

20021bd8 <sd_read_data>:
20021bd8:	b570      	push	{r4, r5, r6, lr}
20021bda:	460d      	mov	r5, r1
20021bdc:	2101      	movs	r1, #1
20021bde:	b088      	sub	sp, #32
20021be0:	4606      	mov	r6, r0
20021be2:	4608      	mov	r0, r1
20021be4:	4614      	mov	r4, r2
20021be6:	f7ff fea7 	bl	20021938 <sd1_read>
20021bea:	2014      	movs	r0, #20
20021bec:	f000 f919 	bl	20021e22 <HAL_Delay_us>
20021bf0:	4b1a      	ldr	r3, [pc, #104]	@ (20021c5c <sd_read_data+0x84>)
20021bf2:	781b      	ldrb	r3, [r3, #0]
20021bf4:	b903      	cbnz	r3, 20021bf8 <sd_read_data+0x20>
20021bf6:	0a76      	lsrs	r6, r6, #9
20021bf8:	4631      	mov	r1, r6
20021bfa:	2011      	movs	r0, #17
20021bfc:	f7ff fe4e 	bl	2002189c <sd1_send_cmd>
20021c00:	3801      	subs	r0, #1
20021c02:	b2c0      	uxtb	r0, r0
20021c04:	2801      	cmp	r0, #1
20021c06:	d802      	bhi.n	20021c0e <sd_read_data+0x36>
20021c08:	2000      	movs	r0, #0
20021c0a:	b008      	add	sp, #32
20021c0c:	bd70      	pop	{r4, r5, r6, pc}
20021c0e:	ab07      	add	r3, sp, #28
20021c10:	9300      	str	r3, [sp, #0]
20021c12:	aa05      	add	r2, sp, #20
20021c14:	ab06      	add	r3, sp, #24
20021c16:	a904      	add	r1, sp, #16
20021c18:	f10d 000f 	add.w	r0, sp, #15
20021c1c:	f7ff fe7c 	bl	20021918 <sd1_get_rsp>
20021c20:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021c24:	2b11      	cmp	r3, #17
20021c26:	d1ef      	bne.n	20021c08 <sd_read_data+0x30>
20021c28:	f04f 33ff 	mov.w	r3, #4294967295
20021c2c:	4e0c      	ldr	r6, [pc, #48]	@ (20021c60 <sd_read_data+0x88>)
20021c2e:	6033      	str	r3, [r6, #0]
20021c30:	2320      	movs	r3, #32
20021c32:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021c34:	f7ff fe90 	bl	20021958 <sd1_wait_read>
20021c38:	6833      	ldr	r3, [r6, #0]
20021c3a:	061a      	lsls	r2, r3, #24
20021c3c:	d4e4      	bmi.n	20021c08 <sd_read_data+0x30>
20021c3e:	6833      	ldr	r3, [r6, #0]
20021c40:	065b      	lsls	r3, r3, #25
20021c42:	d4e1      	bmi.n	20021c08 <sd_read_data+0x30>
20021c44:	f024 0303 	bic.w	r3, r4, #3
20021c48:	442b      	add	r3, r5
20021c4a:	429d      	cmp	r5, r3
20021c4c:	d101      	bne.n	20021c52 <sd_read_data+0x7a>
20021c4e:	4620      	mov	r0, r4
20021c50:	e7db      	b.n	20021c0a <sd_read_data+0x32>
20021c52:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021c56:	f845 2b04 	str.w	r2, [r5], #4
20021c5a:	e7f6      	b.n	20021c4a <sd_read_data+0x72>
20021c5c:	20042c08 	.word	0x20042c08
20021c60:	50045000 	.word	0x50045000

20021c64 <BSP_GetFlash1DIV>:
20021c64:	4b01      	ldr	r3, [pc, #4]	@ (20021c6c <BSP_GetFlash1DIV+0x8>)
20021c66:	8818      	ldrh	r0, [r3, #0]
20021c68:	4770      	bx	lr
20021c6a:	bf00      	nop
20021c6c:	20042c0c 	.word	0x20042c0c

20021c70 <BSP_GetFlash2DIV>:
20021c70:	4b01      	ldr	r3, [pc, #4]	@ (20021c78 <BSP_GetFlash2DIV+0x8>)
20021c72:	8818      	ldrh	r0, [r3, #0]
20021c74:	4770      	bx	lr
20021c76:	bf00      	nop
20021c78:	20042c0a 	.word	0x20042c0a

20021c7c <BSP_SetFlash1DIV>:
20021c7c:	4b01      	ldr	r3, [pc, #4]	@ (20021c84 <BSP_SetFlash1DIV+0x8>)
20021c7e:	8018      	strh	r0, [r3, #0]
20021c80:	4770      	bx	lr
20021c82:	bf00      	nop
20021c84:	20042c0c 	.word	0x20042c0c

20021c88 <BSP_SetFlash2DIV>:
20021c88:	4b01      	ldr	r3, [pc, #4]	@ (20021c90 <BSP_SetFlash2DIV+0x8>)
20021c8a:	8018      	strh	r0, [r3, #0]
20021c8c:	4770      	bx	lr
20021c8e:	bf00      	nop
20021c90:	20042c0a 	.word	0x20042c0a

20021c94 <boot_images>:
20021c94:	4770      	bx	lr

20021c96 <SystemPowerOnModeInit>:
20021c96:	4770      	bx	lr

20021c98 <SystemInit>:
20021c98:	b508      	push	{r3, lr}
20021c9a:	4a10      	ldr	r2, [pc, #64]	@ (20021cdc <SystemInit+0x44>)
20021c9c:	4b10      	ldr	r3, [pc, #64]	@ (20021ce0 <SystemInit+0x48>)
20021c9e:	609a      	str	r2, [r3, #8]
20021ca0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021ca4:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
20021ca8:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021cac:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021cb0:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
20021cb4:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021cb8:	f7ff fbfe 	bl	200214b8 <hw_preinit0>
20021cbc:	f7fe fb24 	bl	20020308 <mpu_config>
20021cc0:	4b08      	ldr	r3, [pc, #32]	@ (20021ce4 <SystemInit+0x4c>)
20021cc2:	681b      	ldr	r3, [r3, #0]
20021cc4:	07db      	lsls	r3, r3, #31
20021cc6:	d401      	bmi.n	20021ccc <SystemInit+0x34>
20021cc8:	f7ff ffe4 	bl	20021c94 <boot_images>
20021ccc:	f7fe fb1d 	bl	2002030a <cache_enable>
20021cd0:	f7ff ffe1 	bl	20021c96 <SystemPowerOnModeInit>
20021cd4:	4b04      	ldr	r3, [pc, #16]	@ (20021ce8 <SystemInit+0x50>)
20021cd6:	4a05      	ldr	r2, [pc, #20]	@ (20021cec <SystemInit+0x54>)
20021cd8:	601a      	str	r2, [r3, #0]
20021cda:	bd08      	pop	{r3, pc}
20021cdc:	20020000 	.word	0x20020000
20021ce0:	e000ed00 	.word	0xe000ed00
20021ce4:	5000b000 	.word	0x5000b000
20021ce8:	20042c10 	.word	0x20042c10
20021cec:	017d7840 	.word	0x017d7840

20021cf0 <Reset_Handler>:
20021cf0:	f8df d048 	ldr.w	sp, [pc, #72]	@ 20021d3c <AES_IRQHandler+0x2>
20021cf4:	4812      	ldr	r0, [pc, #72]	@ (20021d40 <AES_IRQHandler+0x6>)
20021cf6:	f380 880a 	msr	MSPLIM, r0
20021cfa:	f7ff ffcd 	bl	20021c98 <SystemInit>
20021cfe:	4c11      	ldr	r4, [pc, #68]	@ (20021d44 <AES_IRQHandler+0xa>)
20021d00:	4d11      	ldr	r5, [pc, #68]	@ (20021d48 <AES_IRQHandler+0xe>)
20021d02:	42ac      	cmp	r4, r5
20021d04:	da09      	bge.n	20021d1a <Reset_Handler+0x2a>
20021d06:	6821      	ldr	r1, [r4, #0]
20021d08:	6862      	ldr	r2, [r4, #4]
20021d0a:	68a3      	ldr	r3, [r4, #8]
20021d0c:	3b04      	subs	r3, #4
20021d0e:	bfa2      	ittt	ge
20021d10:	58c8      	ldrge	r0, [r1, r3]
20021d12:	50d0      	strge	r0, [r2, r3]
20021d14:	e7fa      	bge.n	20021d0c <Reset_Handler+0x1c>
20021d16:	340c      	adds	r4, #12
20021d18:	e7f3      	b.n	20021d02 <Reset_Handler+0x12>
20021d1a:	4b0c      	ldr	r3, [pc, #48]	@ (20021d4c <AES_IRQHandler+0x12>)
20021d1c:	4c0c      	ldr	r4, [pc, #48]	@ (20021d50 <AES_IRQHandler+0x16>)
20021d1e:	42a3      	cmp	r3, r4
20021d20:	da08      	bge.n	20021d34 <Reset_Handler+0x44>
20021d22:	6819      	ldr	r1, [r3, #0]
20021d24:	685a      	ldr	r2, [r3, #4]
20021d26:	2000      	movs	r0, #0
20021d28:	3a04      	subs	r2, #4
20021d2a:	bfa4      	itt	ge
20021d2c:	5088      	strge	r0, [r1, r2]
20021d2e:	e7fb      	bge.n	20021d28 <Reset_Handler+0x38>
20021d30:	3308      	adds	r3, #8
20021d32:	e7f4      	b.n	20021d1e <Reset_Handler+0x2e>
20021d34:	f7ff fbe6 	bl	20021504 <entry>

20021d38 <HardFault_Handler>:
20021d38:	e7fe      	b.n	20021d38 <HardFault_Handler>

20021d3a <AES_IRQHandler>:
20021d3a:	e7fe      	b.n	20021d3a <AES_IRQHandler>
20021d3c:	20042000 	.word	0x20042000
20021d40:	20040000 	.word	0x20040000
20021d44:	20026ed8 	.word	0x20026ed8
20021d48:	20026ee4 	.word	0x20026ee4
20021d4c:	20026ee4 	.word	0x20026ee4
20021d50:	20026eec 	.word	0x20026eec

20021d54 <__aeabi_unwind_cpp_pr0>:
20021d54:	2000      	movs	r0, #0
20021d56:	4770      	bx	lr

20021d58 <HAL_GetTick>:
20021d58:	4b01      	ldr	r3, [pc, #4]	@ (20021d60 <HAL_GetTick+0x8>)
20021d5a:	6818      	ldr	r0, [r3, #0]
20021d5c:	4770      	bx	lr
20021d5e:	bf00      	nop
20021d60:	20049e88 	.word	0x20049e88

20021d64 <HAL_Delay_us_>:
20021d64:	b513      	push	{r0, r1, r4, lr}
20021d66:	9001      	str	r0, [sp, #4]
20021d68:	9b01      	ldr	r3, [sp, #4]
20021d6a:	4c1a      	ldr	r4, [pc, #104]	@ (20021dd4 <HAL_Delay_us_+0x70>)
20021d6c:	b133      	cbz	r3, 20021d7c <HAL_Delay_us_+0x18>
20021d6e:	6823      	ldr	r3, [r4, #0]
20021d70:	b123      	cbz	r3, 20021d7c <HAL_Delay_us_+0x18>
20021d72:	9b01      	ldr	r3, [sp, #4]
20021d74:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20021d78:	d90c      	bls.n	20021d94 <HAL_Delay_us_+0x30>
20021d7a:	e7fe      	b.n	20021d7a <HAL_Delay_us_+0x16>
20021d7c:	2000      	movs	r0, #0
20021d7e:	f003 f857 	bl	20024e30 <HAL_RCC_GetHCLKFreq>
20021d82:	4b15      	ldr	r3, [pc, #84]	@ (20021dd8 <HAL_Delay_us_+0x74>)
20021d84:	fbb0 f0f3 	udiv	r0, r0, r3
20021d88:	9b01      	ldr	r3, [sp, #4]
20021d8a:	6020      	str	r0, [r4, #0]
20021d8c:	2b00      	cmp	r3, #0
20021d8e:	d1f0      	bne.n	20021d72 <HAL_Delay_us_+0xe>
20021d90:	b002      	add	sp, #8
20021d92:	bd10      	pop	{r4, pc}
20021d94:	9b01      	ldr	r3, [sp, #4]
20021d96:	2b00      	cmp	r3, #0
20021d98:	d0fa      	beq.n	20021d90 <HAL_Delay_us_+0x2c>
20021d9a:	4a10      	ldr	r2, [pc, #64]	@ (20021ddc <HAL_Delay_us_+0x78>)
20021d9c:	6813      	ldr	r3, [r2, #0]
20021d9e:	f013 0301 	ands.w	r3, r3, #1
20021da2:	d10d      	bne.n	20021dc0 <HAL_Delay_us_+0x5c>
20021da4:	480e      	ldr	r0, [pc, #56]	@ (20021de0 <HAL_Delay_us_+0x7c>)
20021da6:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
20021daa:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20021dae:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20021db2:	6053      	str	r3, [r2, #4]
20021db4:	6813      	ldr	r3, [r2, #0]
20021db6:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
20021dba:	f043 0301 	orr.w	r3, r3, #1
20021dbe:	6013      	str	r3, [r2, #0]
20021dc0:	9b01      	ldr	r3, [sp, #4]
20021dc2:	6822      	ldr	r2, [r4, #0]
20021dc4:	4905      	ldr	r1, [pc, #20]	@ (20021ddc <HAL_Delay_us_+0x78>)
20021dc6:	4353      	muls	r3, r2
20021dc8:	6848      	ldr	r0, [r1, #4]
20021dca:	684a      	ldr	r2, [r1, #4]
20021dcc:	1a12      	subs	r2, r2, r0
20021dce:	429a      	cmp	r2, r3
20021dd0:	d3fb      	bcc.n	20021dca <HAL_Delay_us_+0x66>
20021dd2:	e7dd      	b.n	20021d90 <HAL_Delay_us_+0x2c>
20021dd4:	20049e84 	.word	0x20049e84
20021dd8:	000f4240 	.word	0x000f4240
20021ddc:	e0001000 	.word	0xe0001000
20021de0:	e000ed00 	.word	0xe000ed00

20021de4 <HAL_Delay_us2_>:
20021de4:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021de6:	9001      	str	r0, [sp, #4]
20021de8:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20021dec:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20021df0:	6944      	ldr	r4, [r0, #20]
20021df2:	9b01      	ldr	r3, [sp, #4]
20021df4:	4363      	muls	r3, r4
20021df6:	fbb3 f3f2 	udiv	r3, r3, r2
20021dfa:	9301      	str	r3, [sp, #4]
20021dfc:	2300      	movs	r3, #0
20021dfe:	6981      	ldr	r1, [r0, #24]
20021e00:	6982      	ldr	r2, [r0, #24]
20021e02:	428a      	cmp	r2, r1
20021e04:	d0fc      	beq.n	20021e00 <HAL_Delay_us2_+0x1c>
20021e06:	bf25      	ittet	cs
20021e08:	1aa5      	subcs	r5, r4, r2
20021e0a:	195b      	addcs	r3, r3, r5
20021e0c:	185b      	addcc	r3, r3, r1
20021e0e:	185b      	addcs	r3, r3, r1
20021e10:	9901      	ldr	r1, [sp, #4]
20021e12:	bf38      	it	cc
20021e14:	1a9b      	subcc	r3, r3, r2
20021e16:	4299      	cmp	r1, r3
20021e18:	d801      	bhi.n	20021e1e <HAL_Delay_us2_+0x3a>
20021e1a:	b003      	add	sp, #12
20021e1c:	bd30      	pop	{r4, r5, pc}
20021e1e:	4611      	mov	r1, r2
20021e20:	e7ee      	b.n	20021e00 <HAL_Delay_us2_+0x1c>

20021e22 <HAL_Delay_us>:
20021e22:	4603      	mov	r3, r0
20021e24:	b570      	push	{r4, r5, r6, lr}
20021e26:	b1b8      	cbz	r0, 20021e58 <HAL_Delay_us+0x36>
20021e28:	f242 7510 	movw	r5, #10000	@ 0x2710
20021e2c:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
20021e30:	42ab      	cmp	r3, r5
20021e32:	bf84      	itt	hi
20021e34:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
20021e38:	f242 7310 	movwhi	r3, #10000	@ 0x2710
20021e3c:	6932      	ldr	r2, [r6, #16]
20021e3e:	bf98      	it	ls
20021e40:	2400      	movls	r4, #0
20021e42:	4618      	mov	r0, r3
20021e44:	bf88      	it	hi
20021e46:	3c10      	subhi	r4, #16
20021e48:	07d3      	lsls	r3, r2, #31
20021e4a:	d408      	bmi.n	20021e5e <HAL_Delay_us+0x3c>
20021e4c:	f7ff ff8a 	bl	20021d64 <HAL_Delay_us_>
20021e50:	4623      	mov	r3, r4
20021e52:	2c00      	cmp	r4, #0
20021e54:	d1ec      	bne.n	20021e30 <HAL_Delay_us+0xe>
20021e56:	e001      	b.n	20021e5c <HAL_Delay_us+0x3a>
20021e58:	f7ff ff84 	bl	20021d64 <HAL_Delay_us_>
20021e5c:	bd70      	pop	{r4, r5, r6, pc}
20021e5e:	f7ff ffc1 	bl	20021de4 <HAL_Delay_us2_>
20021e62:	e7f5      	b.n	20021e50 <HAL_Delay_us+0x2e>

20021e64 <WDT_IRQHandler>:
20021e64:	4770      	bx	lr

20021e66 <DBG_Trigger_IRQHandler>:
20021e66:	4770      	bx	lr

20021e68 <NMI_Handler>:
20021e68:	b508      	push	{r3, lr}
20021e6a:	4b05      	ldr	r3, [pc, #20]	@ (20021e80 <NMI_Handler+0x18>)
20021e6c:	6a1b      	ldr	r3, [r3, #32]
20021e6e:	005b      	lsls	r3, r3, #1
20021e70:	d502      	bpl.n	20021e78 <NMI_Handler+0x10>
20021e72:	f7ff fff8 	bl	20021e66 <DBG_Trigger_IRQHandler>
20021e76:	bd08      	pop	{r3, pc}
20021e78:	f7ff fff4 	bl	20021e64 <WDT_IRQHandler>
20021e7c:	e7fb      	b.n	20021e76 <NMI_Handler+0xe>
20021e7e:	bf00      	nop
20021e80:	5000b000 	.word	0x5000b000

20021e84 <HAL_AES_run_help>:
20021e84:	b510      	push	{r4, lr}
20021e86:	f101 4470 	add.w	r4, r1, #4026531840	@ 0xf0000000
20021e8a:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
20021e8e:	4c0e      	ldr	r4, [pc, #56]	@ (20021ec8 <HAL_AES_run_help+0x44>)
20021e90:	bf38      	it	cc
20021e92:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20021e96:	6161      	str	r1, [r4, #20]
20021e98:	f102 4170 	add.w	r1, r2, #4026531840	@ 0xf0000000
20021e9c:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
20021ea0:	f103 030f 	add.w	r3, r3, #15
20021ea4:	ea4f 1323 	mov.w	r3, r3, asr #4
20021ea8:	bf38      	it	cc
20021eaa:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20021eae:	61a2      	str	r2, [r4, #24]
20021eb0:	61e3      	str	r3, [r4, #28]
20021eb2:	6923      	ldr	r3, [r4, #16]
20021eb4:	b108      	cbz	r0, 20021eba <HAL_AES_run_help+0x36>
20021eb6:	ea43 13c0 	orr.w	r3, r3, r0, lsl #7
20021eba:	4a03      	ldr	r2, [pc, #12]	@ (20021ec8 <HAL_AES_run_help+0x44>)
20021ebc:	6123      	str	r3, [r4, #16]
20021ebe:	6813      	ldr	r3, [r2, #0]
20021ec0:	f043 0301 	orr.w	r3, r3, #1
20021ec4:	6013      	str	r3, [r2, #0]
20021ec6:	bd10      	pop	{r4, pc}
20021ec8:	5000d000 	.word	0x5000d000

20021ecc <HAL_AES_reset>:
20021ecc:	2202      	movs	r2, #2
20021ece:	2000      	movs	r0, #0
20021ed0:	4b01      	ldr	r3, [pc, #4]	@ (20021ed8 <HAL_AES_reset+0xc>)
20021ed2:	601a      	str	r2, [r3, #0]
20021ed4:	6018      	str	r0, [r3, #0]
20021ed6:	4770      	bx	lr
20021ed8:	5000d000 	.word	0x5000d000

20021edc <HAL_AES_init>:
20021edc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20021ede:	461f      	mov	r7, r3
20021ee0:	4b1e      	ldr	r3, [pc, #120]	@ (20021f5c <HAL_AES_init+0x80>)
20021ee2:	4604      	mov	r4, r0
20021ee4:	685b      	ldr	r3, [r3, #4]
20021ee6:	4616      	mov	r6, r2
20021ee8:	07db      	lsls	r3, r3, #31
20021eea:	d501      	bpl.n	20021ef0 <HAL_AES_init+0x14>
20021eec:	f7ff ffee 	bl	20021ecc <HAL_AES_reset>
20021ef0:	fab4 f084 	clz	r0, r4
20021ef4:	2918      	cmp	r1, #24
20021ef6:	ea4f 1050 	mov.w	r0, r0, lsr #5
20021efa:	ea4f 1540 	mov.w	r5, r0, lsl #5
20021efe:	d01c      	beq.n	20021f3a <HAL_AES_init+0x5e>
20021f00:	2920      	cmp	r1, #32
20021f02:	d01c      	beq.n	20021f3e <HAL_AES_init+0x62>
20021f04:	2910      	cmp	r1, #16
20021f06:	d125      	bne.n	20021f54 <HAL_AES_init+0x78>
20021f08:	2300      	movs	r3, #0
20021f0a:	b164      	cbz	r4, 20021f26 <HAL_AES_init+0x4a>
20021f0c:	4620      	mov	r0, r4
20021f0e:	4a14      	ldr	r2, [pc, #80]	@ (20021f60 <HAL_AES_init+0x84>)
20021f10:	f021 0103 	bic.w	r1, r1, #3
20021f14:	4421      	add	r1, r4
20021f16:	1b12      	subs	r2, r2, r4
20021f18:	1814      	adds	r4, r2, r0
20021f1a:	f850 cb04 	ldr.w	ip, [r0], #4
20021f1e:	4281      	cmp	r1, r0
20021f20:	f8c4 c000 	str.w	ip, [r4]
20021f24:	d1f8      	bne.n	20021f18 <HAL_AES_init+0x3c>
20021f26:	ea47 0005 	orr.w	r0, r7, r5
20021f2a:	ea40 00c3 	orr.w	r0, r0, r3, lsl #3
20021f2e:	4b0b      	ldr	r3, [pc, #44]	@ (20021f5c <HAL_AES_init+0x80>)
20021f30:	6118      	str	r0, [r3, #16]
20021f32:	b107      	cbz	r7, 20021f36 <HAL_AES_init+0x5a>
20021f34:	b92e      	cbnz	r6, 20021f42 <HAL_AES_init+0x66>
20021f36:	2000      	movs	r0, #0
20021f38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20021f3a:	2301      	movs	r3, #1
20021f3c:	e7e5      	b.n	20021f0a <HAL_AES_init+0x2e>
20021f3e:	2302      	movs	r3, #2
20021f40:	e7e3      	b.n	20021f0a <HAL_AES_init+0x2e>
20021f42:	6832      	ldr	r2, [r6, #0]
20021f44:	621a      	str	r2, [r3, #32]
20021f46:	6872      	ldr	r2, [r6, #4]
20021f48:	625a      	str	r2, [r3, #36]	@ 0x24
20021f4a:	68b2      	ldr	r2, [r6, #8]
20021f4c:	629a      	str	r2, [r3, #40]	@ 0x28
20021f4e:	68f2      	ldr	r2, [r6, #12]
20021f50:	62da      	str	r2, [r3, #44]	@ 0x2c
20021f52:	e7f0      	b.n	20021f36 <HAL_AES_init+0x5a>
20021f54:	f04f 30ff 	mov.w	r0, #4294967295
20021f58:	e7ee      	b.n	20021f38 <HAL_AES_init+0x5c>
20021f5a:	bf00      	nop
20021f5c:	5000d000 	.word	0x5000d000
20021f60:	5000d030 	.word	0x5000d030

20021f64 <HAL_AES_run>:
20021f64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20021f66:	2708      	movs	r7, #8
20021f68:	4e17      	ldr	r6, [pc, #92]	@ (20021fc8 <HAL_AES_run+0x64>)
20021f6a:	4614      	mov	r4, r2
20021f6c:	461d      	mov	r5, r3
20021f6e:	f8c6 7088 	str.w	r7, [r6, #136]	@ 0x88
20021f72:	f3bf 8f4f 	dsb	sy
20021f76:	f3bf 8f6f 	isb	sy
20021f7a:	2700      	movs	r7, #0
20021f7c:	4e13      	ldr	r6, [pc, #76]	@ (20021fcc <HAL_AES_run+0x68>)
20021f7e:	60f7      	str	r7, [r6, #12]
20021f80:	f7ff ff80 	bl	20021e84 <HAL_AES_run_help>
20021f84:	6873      	ldr	r3, [r6, #4]
20021f86:	07db      	lsls	r3, r3, #31
20021f88:	d4fc      	bmi.n	20021f84 <HAL_AES_run+0x20>
20021f8a:	68b0      	ldr	r0, [r6, #8]
20021f8c:	f000 0006 	and.w	r0, r0, #6
20021f90:	3800      	subs	r0, #0
20021f92:	bf18      	it	ne
20021f94:	2001      	movne	r0, #1
20021f96:	f1b4 4fc0 	cmp.w	r4, #1610612736	@ 0x60000000
20021f9a:	d313      	bcc.n	20021fc4 <HAL_AES_run+0x60>
20021f9c:	2d00      	cmp	r5, #0
20021f9e:	dd11      	ble.n	20021fc4 <HAL_AES_run+0x60>
20021fa0:	f004 031f 	and.w	r3, r4, #31
20021fa4:	442b      	add	r3, r5
20021fa6:	f3bf 8f4f 	dsb	sy
20021faa:	4622      	mov	r2, r4
20021fac:	4c08      	ldr	r4, [pc, #32]	@ (20021fd0 <HAL_AES_run+0x6c>)
20021fae:	4413      	add	r3, r2
20021fb0:	f8c4 225c 	str.w	r2, [r4, #604]	@ 0x25c
20021fb4:	3220      	adds	r2, #32
20021fb6:	1a99      	subs	r1, r3, r2
20021fb8:	2900      	cmp	r1, #0
20021fba:	dcf9      	bgt.n	20021fb0 <HAL_AES_run+0x4c>
20021fbc:	f3bf 8f4f 	dsb	sy
20021fc0:	f3bf 8f6f 	isb	sy
20021fc4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20021fc6:	bf00      	nop
20021fc8:	e000e100 	.word	0xe000e100
20021fcc:	5000d000 	.word	0x5000d000
20021fd0:	e000ed00 	.word	0xe000ed00

20021fd4 <HAL_NVIC_SetPriority>:
20021fd4:	2a0f      	cmp	r2, #15
20021fd6:	b530      	push	{r4, r5, lr}
20021fd8:	d900      	bls.n	20021fdc <HAL_NVIC_SetPriority+0x8>
20021fda:	e7fe      	b.n	20021fda <HAL_NVIC_SetPriority+0x6>
20021fdc:	290f      	cmp	r1, #15
20021fde:	d900      	bls.n	20021fe2 <HAL_NVIC_SetPriority+0xe>
20021fe0:	e7fe      	b.n	20021fe0 <HAL_NVIC_SetPriority+0xc>
20021fe2:	4b15      	ldr	r3, [pc, #84]	@ (20022038 <HAL_NVIC_SetPriority+0x64>)
20021fe4:	68dc      	ldr	r4, [r3, #12]
20021fe6:	f3c4 2402 	ubfx	r4, r4, #8, #3
20021fea:	f1c4 0307 	rsb	r3, r4, #7
20021fee:	1ce5      	adds	r5, r4, #3
20021ff0:	2b03      	cmp	r3, #3
20021ff2:	bf28      	it	cs
20021ff4:	2303      	movcs	r3, #3
20021ff6:	2d06      	cmp	r5, #6
20021ff8:	f04f 35ff 	mov.w	r5, #4294967295
20021ffc:	bf94      	ite	ls
20021ffe:	2400      	movls	r4, #0
20022000:	3c04      	subhi	r4, #4
20022002:	fa05 f303 	lsl.w	r3, r5, r3
20022006:	ea21 0303 	bic.w	r3, r1, r3
2002200a:	40a5      	lsls	r5, r4
2002200c:	ea22 0205 	bic.w	r2, r2, r5
20022010:	40a3      	lsls	r3, r4
20022012:	2800      	cmp	r0, #0
20022014:	ea43 0302 	orr.w	r3, r3, r2
20022018:	bfac      	ite	ge
2002201a:	f100 4060 	addge.w	r0, r0, #3758096384	@ 0xe0000000
2002201e:	4a07      	ldrlt	r2, [pc, #28]	@ (2002203c <HAL_NVIC_SetPriority+0x68>)
20022020:	ea4f 1343 	mov.w	r3, r3, lsl #5
20022024:	b2db      	uxtb	r3, r3
20022026:	bfab      	itete	ge
20022028:	f500 4061 	addge.w	r0, r0, #57600	@ 0xe100
2002202c:	f000 000f 	andlt.w	r0, r0, #15
20022030:	f880 3300 	strbge.w	r3, [r0, #768]	@ 0x300
20022034:	5413      	strblt	r3, [r2, r0]
20022036:	bd30      	pop	{r4, r5, pc}
20022038:	e000ed00 	.word	0xe000ed00
2002203c:	e000ed14 	.word	0xe000ed14

20022040 <HAL_NVIC_EnableIRQ>:
20022040:	2800      	cmp	r0, #0
20022042:	da00      	bge.n	20022046 <HAL_NVIC_EnableIRQ+0x6>
20022044:	e7fe      	b.n	20022044 <HAL_NVIC_EnableIRQ+0x4>
20022046:	2301      	movs	r3, #1
20022048:	0941      	lsrs	r1, r0, #5
2002204a:	4a03      	ldr	r2, [pc, #12]	@ (20022058 <HAL_NVIC_EnableIRQ+0x18>)
2002204c:	f000 001f 	and.w	r0, r0, #31
20022050:	4083      	lsls	r3, r0
20022052:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
20022056:	4770      	bx	lr
20022058:	e000e100 	.word	0xe000e100

2002205c <HAL_NVIC_DisableIRQ>:
2002205c:	2800      	cmp	r0, #0
2002205e:	da00      	bge.n	20022062 <HAL_NVIC_DisableIRQ+0x6>
20022060:	e7fe      	b.n	20022060 <HAL_NVIC_DisableIRQ+0x4>
20022062:	2201      	movs	r2, #1
20022064:	4906      	ldr	r1, [pc, #24]	@ (20022080 <HAL_NVIC_DisableIRQ+0x24>)
20022066:	0943      	lsrs	r3, r0, #5
20022068:	f000 001f 	and.w	r0, r0, #31
2002206c:	4082      	lsls	r2, r0
2002206e:	3320      	adds	r3, #32
20022070:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20022074:	f3bf 8f4f 	dsb	sy
20022078:	f3bf 8f6f 	isb	sy
2002207c:	4770      	bx	lr
2002207e:	bf00      	nop
20022080:	e000e100 	.word	0xe000e100

20022084 <DMA_Init>:
20022084:	2302      	movs	r3, #2
20022086:	b530      	push	{r4, r5, lr}
20022088:	6a42      	ldr	r2, [r0, #36]	@ 0x24
2002208a:	f880 302d 	strb.w	r3, [r0, #45]	@ 0x2d
2002208e:	6803      	ldr	r3, [r0, #0]
20022090:	611a      	str	r2, [r3, #16]
20022092:	e9d0 3402 	ldrd	r3, r4, [r0, #8]
20022096:	4323      	orrs	r3, r4
20022098:	6904      	ldr	r4, [r0, #16]
2002209a:	6801      	ldr	r1, [r0, #0]
2002209c:	4323      	orrs	r3, r4
2002209e:	6944      	ldr	r4, [r0, #20]
200220a0:	680a      	ldr	r2, [r1, #0]
200220a2:	4323      	orrs	r3, r4
200220a4:	6984      	ldr	r4, [r0, #24]
200220a6:	f36f 120e 	bfc	r2, #4, #11
200220aa:	4323      	orrs	r3, r4
200220ac:	69c4      	ldr	r4, [r0, #28]
200220ae:	4323      	orrs	r3, r4
200220b0:	6a04      	ldr	r4, [r0, #32]
200220b2:	4323      	orrs	r3, r4
200220b4:	4313      	orrs	r3, r2
200220b6:	600b      	str	r3, [r1, #0]
200220b8:	6883      	ldr	r3, [r0, #8]
200220ba:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200220be:	d018      	beq.n	200220f2 <DMA_Init+0x6e>
200220c0:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
200220c2:	6c82      	ldr	r2, [r0, #72]	@ 0x48
200220c4:	f3c1 0387 	ubfx	r3, r1, #2, #8
200220c8:	06c9      	lsls	r1, r1, #27
200220ca:	d41b      	bmi.n	20022104 <DMA_Init+0x80>
200220cc:	243f      	movs	r4, #63	@ 0x3f
200220ce:	f003 0307 	and.w	r3, r3, #7
200220d2:	f8d2 10a8 	ldr.w	r1, [r2, #168]	@ 0xa8
200220d6:	00db      	lsls	r3, r3, #3
200220d8:	409c      	lsls	r4, r3
200220da:	ea21 0104 	bic.w	r1, r1, r4
200220de:	f8c2 10a8 	str.w	r1, [r2, #168]	@ 0xa8
200220e2:	6c81      	ldr	r1, [r0, #72]	@ 0x48
200220e4:	6842      	ldr	r2, [r0, #4]
200220e6:	f8d1 40a8 	ldr.w	r4, [r1, #168]	@ 0xa8
200220ea:	409a      	lsls	r2, r3
200220ec:	4322      	orrs	r2, r4
200220ee:	f8c1 20a8 	str.w	r2, [r1, #168]	@ 0xa8
200220f2:	6982      	ldr	r2, [r0, #24]
200220f4:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
200220f8:	d018      	beq.n	2002212c <DMA_Init+0xa8>
200220fa:	f5b2 6f00 	cmp.w	r2, #2048	@ 0x800
200220fe:	d01f      	beq.n	20022140 <DMA_Init+0xbc>
20022100:	b1aa      	cbz	r2, 2002212e <DMA_Init+0xaa>
20022102:	e7fe      	b.n	20022102 <DMA_Init+0x7e>
20022104:	243f      	movs	r4, #63	@ 0x3f
20022106:	f003 0303 	and.w	r3, r3, #3
2002210a:	f8d2 10ac 	ldr.w	r1, [r2, #172]	@ 0xac
2002210e:	00db      	lsls	r3, r3, #3
20022110:	409c      	lsls	r4, r3
20022112:	ea21 0104 	bic.w	r1, r1, r4
20022116:	f8c2 10ac 	str.w	r1, [r2, #172]	@ 0xac
2002211a:	6c81      	ldr	r1, [r0, #72]	@ 0x48
2002211c:	6842      	ldr	r2, [r0, #4]
2002211e:	f8d1 40ac 	ldr.w	r4, [r1, #172]	@ 0xac
20022122:	409a      	lsls	r2, r3
20022124:	4322      	orrs	r2, r4
20022126:	f8c1 20ac 	str.w	r2, [r1, #172]	@ 0xac
2002212a:	e7e2      	b.n	200220f2 <DMA_Init+0x6e>
2002212c:	2201      	movs	r2, #1
2002212e:	6943      	ldr	r3, [r0, #20]
20022130:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20022134:	d006      	beq.n	20022144 <DMA_Init+0xc0>
20022136:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
2002213a:	d02b      	beq.n	20022194 <DMA_Init+0x110>
2002213c:	b11b      	cbz	r3, 20022146 <DMA_Init+0xc2>
2002213e:	e7fe      	b.n	2002213e <DMA_Init+0xba>
20022140:	2202      	movs	r2, #2
20022142:	e7f4      	b.n	2002212e <DMA_Init+0xaa>
20022144:	2301      	movs	r3, #1
20022146:	6901      	ldr	r1, [r0, #16]
20022148:	f1a1 0480 	sub.w	r4, r1, #128	@ 0x80
2002214c:	4261      	negs	r1, r4
2002214e:	4161      	adcs	r1, r4
20022150:	68c4      	ldr	r4, [r0, #12]
20022152:	f1a4 0540 	sub.w	r5, r4, #64	@ 0x40
20022156:	426c      	negs	r4, r5
20022158:	416c      	adcs	r4, r5
2002215a:	6885      	ldr	r5, [r0, #8]
2002215c:	2d10      	cmp	r5, #16
2002215e:	bf1f      	itttt	ne
20022160:	f880 1065 	strbne.w	r1, [r0, #101]	@ 0x65
20022164:	4619      	movne	r1, r3
20022166:	4613      	movne	r3, r2
20022168:	460a      	movne	r2, r1
2002216a:	f880 3067 	strb.w	r3, [r0, #103]	@ 0x67
2002216e:	f880 2066 	strb.w	r2, [r0, #102]	@ 0x66
20022172:	f04f 0300 	mov.w	r3, #0
20022176:	f04f 0201 	mov.w	r2, #1
2002217a:	6443      	str	r3, [r0, #68]	@ 0x44
2002217c:	bf06      	itte	eq
2002217e:	f880 4065 	strbeq.w	r4, [r0, #101]	@ 0x65
20022182:	f880 1064 	strbeq.w	r1, [r0, #100]	@ 0x64
20022186:	f880 4064 	strbne.w	r4, [r0, #100]	@ 0x64
2002218a:	f880 202d 	strb.w	r2, [r0, #45]	@ 0x2d
2002218e:	f880 302c 	strb.w	r3, [r0, #44]	@ 0x2c
20022192:	bd30      	pop	{r4, r5, pc}
20022194:	2302      	movs	r3, #2
20022196:	e7d6      	b.n	20022146 <DMA_Init+0xc2>

20022198 <DMA_AllocChannel>:
20022198:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002219a:	4b2c      	ldr	r3, [pc, #176]	@ (2002224c <DMA_AllocChannel+0xb4>)
2002219c:	6802      	ldr	r2, [r0, #0]
2002219e:	4413      	add	r3, r2
200221a0:	2ba0      	cmp	r3, #160	@ 0xa0
200221a2:	d904      	bls.n	200221ae <DMA_AllocChannel+0x16>
200221a4:	4b2a      	ldr	r3, [pc, #168]	@ (20022250 <DMA_AllocChannel+0xb8>)
200221a6:	4413      	add	r3, r2
200221a8:	2ba0      	cmp	r3, #160	@ 0xa0
200221aa:	d90f      	bls.n	200221cc <DMA_AllocChannel+0x34>
200221ac:	e7fe      	b.n	200221ac <DMA_AllocChannel+0x14>
200221ae:	2632      	movs	r6, #50	@ 0x32
200221b0:	f8df c0a8 	ldr.w	ip, [pc, #168]	@ 2002225c <DMA_AllocChannel+0xc4>
200221b4:	4b27      	ldr	r3, [pc, #156]	@ (20022254 <DMA_AllocChannel+0xbc>)
200221b6:	f3ef 8710 	mrs	r7, PRIMASK
200221ba:	2201      	movs	r2, #1
200221bc:	f382 8810 	msr	PRIMASK, r2
200221c0:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
200221c2:	2d1f      	cmp	r5, #31
200221c4:	ea4f 0495 	mov.w	r4, r5, lsr #2
200221c8:	d905      	bls.n	200221d6 <DMA_AllocChannel+0x3e>
200221ca:	e7fe      	b.n	200221ca <DMA_AllocChannel+0x32>
200221cc:	2602      	movs	r6, #2
200221ce:	f8df c090 	ldr.w	ip, [pc, #144]	@ 20022260 <DMA_AllocChannel+0xc8>
200221d2:	4b21      	ldr	r3, [pc, #132]	@ (20022258 <DMA_AllocChannel+0xc0>)
200221d4:	e7ef      	b.n	200221b6 <DMA_AllocChannel+0x1e>
200221d6:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
200221da:	f895 e004 	ldrb.w	lr, [r5, #4]
200221de:	f1be 0f00 	cmp.w	lr, #0
200221e2:	d02e      	beq.n	20022242 <DMA_AllocChannel+0xaa>
200221e4:	f853 2034 	ldr.w	r2, [r3, r4, lsl #3]
200221e8:	4282      	cmp	r2, r0
200221ea:	d103      	bne.n	200221f4 <DMA_AllocChannel+0x5c>
200221ec:	f387 8810 	msr	PRIMASK, r7
200221f0:	2002      	movs	r0, #2
200221f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200221f4:	2200      	movs	r2, #0
200221f6:	791c      	ldrb	r4, [r3, #4]
200221f8:	461d      	mov	r5, r3
200221fa:	b9e4      	cbnz	r4, 20022236 <DMA_AllocChannel+0x9e>
200221fc:	2301      	movs	r3, #1
200221fe:	712b      	strb	r3, [r5, #4]
20022200:	2314      	movs	r3, #20
20022202:	fb03 c302 	mla	r3, r3, r2, ip
20022206:	4416      	add	r6, r2
20022208:	0092      	lsls	r2, r2, #2
2002220a:	b274      	sxtb	r4, r6
2002220c:	6003      	str	r3, [r0, #0]
2002220e:	64c2      	str	r2, [r0, #76]	@ 0x4c
20022210:	f387 8810 	msr	PRIMASK, r7
20022214:	b121      	cbz	r1, 20022220 <DMA_AllocChannel+0x88>
20022216:	682b      	ldr	r3, [r5, #0]
20022218:	4283      	cmp	r3, r0
2002221a:	d001      	beq.n	20022220 <DMA_AllocChannel+0x88>
2002221c:	f7ff ff32 	bl	20022084 <DMA_Init>
20022220:	2200      	movs	r2, #0
20022222:	6028      	str	r0, [r5, #0]
20022224:	4611      	mov	r1, r2
20022226:	4620      	mov	r0, r4
20022228:	f7ff fed4 	bl	20021fd4 <HAL_NVIC_SetPriority>
2002222c:	4620      	mov	r0, r4
2002222e:	f7ff ff07 	bl	20022040 <HAL_NVIC_EnableIRQ>
20022232:	2000      	movs	r0, #0
20022234:	e7dd      	b.n	200221f2 <DMA_AllocChannel+0x5a>
20022236:	3201      	adds	r2, #1
20022238:	2a08      	cmp	r2, #8
2002223a:	f103 0308 	add.w	r3, r3, #8
2002223e:	d1da      	bne.n	200221f6 <DMA_AllocChannel+0x5e>
20022240:	e7d4      	b.n	200221ec <DMA_AllocChannel+0x54>
20022242:	4434      	add	r4, r6
20022244:	712a      	strb	r2, [r5, #4]
20022246:	b264      	sxtb	r4, r4
20022248:	e7e2      	b.n	20022210 <DMA_AllocChannel+0x78>
2002224a:	bf00      	nop
2002224c:	aff7eff8 	.word	0xaff7eff8
20022250:	bfffeff8 	.word	0xbfffeff8
20022254:	20049ecc 	.word	0x20049ecc
20022258:	20049e8c 	.word	0x20049e8c
2002225c:	50081008 	.word	0x50081008
20022260:	40001008 	.word	0x40001008

20022264 <DMA_FreeChannel.isra.0>:
20022264:	b538      	push	{r3, r4, r5, lr}
20022266:	4a13      	ldr	r2, [pc, #76]	@ (200222b4 <DMA_FreeChannel.isra.0+0x50>)
20022268:	6c83      	ldr	r3, [r0, #72]	@ 0x48
2002226a:	4293      	cmp	r3, r2
2002226c:	d003      	beq.n	20022276 <DMA_FreeChannel.isra.0+0x12>
2002226e:	4a12      	ldr	r2, [pc, #72]	@ (200222b8 <DMA_FreeChannel.isra.0+0x54>)
20022270:	4293      	cmp	r3, r2
20022272:	d008      	beq.n	20022286 <DMA_FreeChannel.isra.0+0x22>
20022274:	e7fe      	b.n	20022274 <DMA_FreeChannel.isra.0+0x10>
20022276:	2132      	movs	r1, #50	@ 0x32
20022278:	4a10      	ldr	r2, [pc, #64]	@ (200222bc <DMA_FreeChannel.isra.0+0x58>)
2002227a:	6cc4      	ldr	r4, [r0, #76]	@ 0x4c
2002227c:	2c1f      	cmp	r4, #31
2002227e:	ea4f 0394 	mov.w	r3, r4, lsr #2
20022282:	d903      	bls.n	2002228c <DMA_FreeChannel.isra.0+0x28>
20022284:	e7fe      	b.n	20022284 <DMA_FreeChannel.isra.0+0x20>
20022286:	2102      	movs	r1, #2
20022288:	4a0d      	ldr	r2, [pc, #52]	@ (200222c0 <DMA_FreeChannel.isra.0+0x5c>)
2002228a:	e7f6      	b.n	2002227a <DMA_FreeChannel.isra.0+0x16>
2002228c:	f3ef 8410 	mrs	r4, PRIMASK
20022290:	2501      	movs	r5, #1
20022292:	f385 8810 	msr	PRIMASK, r5
20022296:	eb02 05c3 	add.w	r5, r2, r3, lsl #3
2002229a:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
2002229e:	4290      	cmp	r0, r2
200222a0:	d105      	bne.n	200222ae <DMA_FreeChannel.isra.0+0x4a>
200222a2:	1858      	adds	r0, r3, r1
200222a4:	b240      	sxtb	r0, r0
200222a6:	f7ff fed9 	bl	2002205c <HAL_NVIC_DisableIRQ>
200222aa:	2300      	movs	r3, #0
200222ac:	712b      	strb	r3, [r5, #4]
200222ae:	f384 8810 	msr	PRIMASK, r4
200222b2:	bd38      	pop	{r3, r4, r5, pc}
200222b4:	50081000 	.word	0x50081000
200222b8:	40001000 	.word	0x40001000
200222bc:	20049ecc 	.word	0x20049ecc
200222c0:	20049e8c 	.word	0x20049e8c

200222c4 <HAL_DMA_Init>:
200222c4:	b538      	push	{r3, r4, r5, lr}
200222c6:	4604      	mov	r4, r0
200222c8:	2800      	cmp	r0, #0
200222ca:	d053      	beq.n	20022374 <HAL_DMA_Init+0xb0>
200222cc:	6883      	ldr	r3, [r0, #8]
200222ce:	f033 0210 	bics.w	r2, r3, #16
200222d2:	d003      	beq.n	200222dc <HAL_DMA_Init+0x18>
200222d4:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200222d8:	d000      	beq.n	200222dc <HAL_DMA_Init+0x18>
200222da:	e7fe      	b.n	200222da <HAL_DMA_Init+0x16>
200222dc:	68e3      	ldr	r3, [r4, #12]
200222de:	f033 0340 	bics.w	r3, r3, #64	@ 0x40
200222e2:	d000      	beq.n	200222e6 <HAL_DMA_Init+0x22>
200222e4:	e7fe      	b.n	200222e4 <HAL_DMA_Init+0x20>
200222e6:	6923      	ldr	r3, [r4, #16]
200222e8:	f033 0380 	bics.w	r3, r3, #128	@ 0x80
200222ec:	d000      	beq.n	200222f0 <HAL_DMA_Init+0x2c>
200222ee:	e7fe      	b.n	200222ee <HAL_DMA_Init+0x2a>
200222f0:	6963      	ldr	r3, [r4, #20]
200222f2:	f433 7280 	bics.w	r2, r3, #256	@ 0x100
200222f6:	d003      	beq.n	20022300 <HAL_DMA_Init+0x3c>
200222f8:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
200222fc:	d000      	beq.n	20022300 <HAL_DMA_Init+0x3c>
200222fe:	e7fe      	b.n	200222fe <HAL_DMA_Init+0x3a>
20022300:	69a3      	ldr	r3, [r4, #24]
20022302:	f433 6280 	bics.w	r2, r3, #1024	@ 0x400
20022306:	d003      	beq.n	20022310 <HAL_DMA_Init+0x4c>
20022308:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
2002230c:	d000      	beq.n	20022310 <HAL_DMA_Init+0x4c>
2002230e:	e7fe      	b.n	2002230e <HAL_DMA_Init+0x4a>
20022310:	69e3      	ldr	r3, [r4, #28]
20022312:	f033 0320 	bics.w	r3, r3, #32
20022316:	d000      	beq.n	2002231a <HAL_DMA_Init+0x56>
20022318:	e7fe      	b.n	20022318 <HAL_DMA_Init+0x54>
2002231a:	6a23      	ldr	r3, [r4, #32]
2002231c:	f433 5340 	bics.w	r3, r3, #12288	@ 0x3000
20022320:	d000      	beq.n	20022324 <HAL_DMA_Init+0x60>
20022322:	e7fe      	b.n	20022322 <HAL_DMA_Init+0x5e>
20022324:	6863      	ldr	r3, [r4, #4]
20022326:	2b3f      	cmp	r3, #63	@ 0x3f
20022328:	d900      	bls.n	2002232c <HAL_DMA_Init+0x68>
2002232a:	e7fe      	b.n	2002232a <HAL_DMA_Init+0x66>
2002232c:	6822      	ldr	r2, [r4, #0]
2002232e:	4b13      	ldr	r3, [pc, #76]	@ (2002237c <HAL_DMA_Init+0xb8>)
20022330:	4413      	add	r3, r2
20022332:	2b8c      	cmp	r3, #140	@ 0x8c
20022334:	d813      	bhi.n	2002235e <HAL_DMA_Init+0x9a>
20022336:	2214      	movs	r2, #20
20022338:	fbb3 f3f2 	udiv	r3, r3, r2
2002233c:	009b      	lsls	r3, r3, #2
2002233e:	64e3      	str	r3, [r4, #76]	@ 0x4c
20022340:	4b0f      	ldr	r3, [pc, #60]	@ (20022380 <HAL_DMA_Init+0xbc>)
20022342:	64a3      	str	r3, [r4, #72]	@ 0x48
20022344:	2100      	movs	r1, #0
20022346:	4620      	mov	r0, r4
20022348:	f7ff ff26 	bl	20022198 <DMA_AllocChannel>
2002234c:	4605      	mov	r5, r0
2002234e:	b998      	cbnz	r0, 20022378 <HAL_DMA_Init+0xb4>
20022350:	4620      	mov	r0, r4
20022352:	f7ff fe97 	bl	20022084 <DMA_Init>
20022356:	f7ff ff85 	bl	20022264 <DMA_FreeChannel.isra.0>
2002235a:	4628      	mov	r0, r5
2002235c:	bd38      	pop	{r3, r4, r5, pc}
2002235e:	4b09      	ldr	r3, [pc, #36]	@ (20022384 <HAL_DMA_Init+0xc0>)
20022360:	4413      	add	r3, r2
20022362:	2b8c      	cmp	r3, #140	@ 0x8c
20022364:	d8ee      	bhi.n	20022344 <HAL_DMA_Init+0x80>
20022366:	2214      	movs	r2, #20
20022368:	fbb3 f3f2 	udiv	r3, r3, r2
2002236c:	009b      	lsls	r3, r3, #2
2002236e:	64e3      	str	r3, [r4, #76]	@ 0x4c
20022370:	4b05      	ldr	r3, [pc, #20]	@ (20022388 <HAL_DMA_Init+0xc4>)
20022372:	e7e6      	b.n	20022342 <HAL_DMA_Init+0x7e>
20022374:	2501      	movs	r5, #1
20022376:	e7f0      	b.n	2002235a <HAL_DMA_Init+0x96>
20022378:	2502      	movs	r5, #2
2002237a:	e7ee      	b.n	2002235a <HAL_DMA_Init+0x96>
2002237c:	aff7eff8 	.word	0xaff7eff8
20022380:	50081000 	.word	0x50081000
20022384:	bfffeff8 	.word	0xbfffeff8
20022388:	40001000 	.word	0x40001000

2002238c <HAL_DMA_DeInit>:
2002238c:	b510      	push	{r4, lr}
2002238e:	4604      	mov	r4, r0
20022390:	2800      	cmp	r0, #0
20022392:	d051      	beq.n	20022438 <HAL_DMA_DeInit+0xac>
20022394:	6802      	ldr	r2, [r0, #0]
20022396:	6813      	ldr	r3, [r2, #0]
20022398:	f023 0301 	bic.w	r3, r3, #1
2002239c:	6013      	str	r3, [r2, #0]
2002239e:	6802      	ldr	r2, [r0, #0]
200223a0:	4b26      	ldr	r3, [pc, #152]	@ (2002243c <HAL_DMA_DeInit+0xb0>)
200223a2:	4413      	add	r3, r2
200223a4:	2b8c      	cmp	r3, #140	@ 0x8c
200223a6:	d82f      	bhi.n	20022408 <HAL_DMA_DeInit+0x7c>
200223a8:	2114      	movs	r1, #20
200223aa:	fbb3 f3f1 	udiv	r3, r3, r1
200223ae:	009b      	lsls	r3, r3, #2
200223b0:	64c3      	str	r3, [r0, #76]	@ 0x4c
200223b2:	4b23      	ldr	r3, [pc, #140]	@ (20022440 <HAL_DMA_DeInit+0xb4>)
200223b4:	64a3      	str	r3, [r4, #72]	@ 0x48
200223b6:	2300      	movs	r3, #0
200223b8:	6013      	str	r3, [r2, #0]
200223ba:	e9d4 1312 	ldrd	r1, r3, [r4, #72]	@ 0x48
200223be:	f003 021c 	and.w	r2, r3, #28
200223c2:	2301      	movs	r3, #1
200223c4:	4093      	lsls	r3, r2
200223c6:	604b      	str	r3, [r1, #4]
200223c8:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200223ca:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
200223cc:	2b0f      	cmp	r3, #15
200223ce:	ea4f 0293 	mov.w	r2, r3, lsr #2
200223d2:	d824      	bhi.n	2002241e <HAL_DMA_DeInit+0x92>
200223d4:	203f      	movs	r0, #63	@ 0x3f
200223d6:	005b      	lsls	r3, r3, #1
200223d8:	f8d1 20a8 	ldr.w	r2, [r1, #168]	@ 0xa8
200223dc:	f003 0338 	and.w	r3, r3, #56	@ 0x38
200223e0:	fa00 f303 	lsl.w	r3, r0, r3
200223e4:	ea22 0303 	bic.w	r3, r2, r3
200223e8:	f8c1 30a8 	str.w	r3, [r1, #168]	@ 0xa8
200223ec:	4620      	mov	r0, r4
200223ee:	f7ff ff39 	bl	20022264 <DMA_FreeChannel.isra.0>
200223f2:	2000      	movs	r0, #0
200223f4:	e9c4 000d 	strd	r0, r0, [r4, #52]	@ 0x34
200223f8:	e9c4 000f 	strd	r0, r0, [r4, #60]	@ 0x3c
200223fc:	6460      	str	r0, [r4, #68]	@ 0x44
200223fe:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
20022402:	f884 002d 	strb.w	r0, [r4, #45]	@ 0x2d
20022406:	bd10      	pop	{r4, pc}
20022408:	4b0e      	ldr	r3, [pc, #56]	@ (20022444 <HAL_DMA_DeInit+0xb8>)
2002240a:	4413      	add	r3, r2
2002240c:	2b8c      	cmp	r3, #140	@ 0x8c
2002240e:	d8d2      	bhi.n	200223b6 <HAL_DMA_DeInit+0x2a>
20022410:	2114      	movs	r1, #20
20022412:	fbb3 f3f1 	udiv	r3, r3, r1
20022416:	009b      	lsls	r3, r3, #2
20022418:	64c3      	str	r3, [r0, #76]	@ 0x4c
2002241a:	4b0b      	ldr	r3, [pc, #44]	@ (20022448 <HAL_DMA_DeInit+0xbc>)
2002241c:	e7ca      	b.n	200223b4 <HAL_DMA_DeInit+0x28>
2002241e:	f002 0303 	and.w	r3, r2, #3
20022422:	223f      	movs	r2, #63	@ 0x3f
20022424:	f8d1 00ac 	ldr.w	r0, [r1, #172]	@ 0xac
20022428:	00db      	lsls	r3, r3, #3
2002242a:	fa02 f303 	lsl.w	r3, r2, r3
2002242e:	ea20 0303 	bic.w	r3, r0, r3
20022432:	f8c1 30ac 	str.w	r3, [r1, #172]	@ 0xac
20022436:	e7d9      	b.n	200223ec <HAL_DMA_DeInit+0x60>
20022438:	2001      	movs	r0, #1
2002243a:	e7e4      	b.n	20022406 <HAL_DMA_DeInit+0x7a>
2002243c:	aff7eff8 	.word	0xaff7eff8
20022440:	50081000 	.word	0x50081000
20022444:	bfffeff8 	.word	0xbfffeff8
20022448:	40001000 	.word	0x40001000

2002244c <HAL_DMA_PollForTransfer>:
2002244c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20022450:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
20022454:	4617      	mov	r7, r2
20022456:	2b02      	cmp	r3, #2
20022458:	4604      	mov	r4, r0
2002245a:	4688      	mov	r8, r1
2002245c:	b2da      	uxtb	r2, r3
2002245e:	d005      	beq.n	2002246c <HAL_DMA_PollForTransfer+0x20>
20022460:	2304      	movs	r3, #4
20022462:	6443      	str	r3, [r0, #68]	@ 0x44
20022464:	2300      	movs	r3, #0
20022466:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002246a:	e006      	b.n	2002247a <HAL_DMA_PollForTransfer+0x2e>
2002246c:	6803      	ldr	r3, [r0, #0]
2002246e:	681b      	ldr	r3, [r3, #0]
20022470:	0699      	lsls	r1, r3, #26
20022472:	d505      	bpl.n	20022480 <HAL_DMA_PollForTransfer+0x34>
20022474:	f44f 7380 	mov.w	r3, #256	@ 0x100
20022478:	6443      	str	r3, [r0, #68]	@ 0x44
2002247a:	2001      	movs	r0, #1
2002247c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
20022480:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
20022482:	f005 051c 	and.w	r5, r5, #28
20022486:	f1b8 0f00 	cmp.w	r8, #0
2002248a:	d123      	bne.n	200224d4 <HAL_DMA_PollForTransfer+0x88>
2002248c:	fa02 f505 	lsl.w	r5, r2, r5
20022490:	f7ff fc62 	bl	20021d58 <HAL_GetTick>
20022494:	f04f 0a08 	mov.w	sl, #8
20022498:	4681      	mov	r9, r0
2002249a:	e9d4 6312 	ldrd	r6, r3, [r4, #72]	@ 0x48
2002249e:	f003 031c 	and.w	r3, r3, #28
200224a2:	fa0a f103 	lsl.w	r1, sl, r3
200224a6:	6832      	ldr	r2, [r6, #0]
200224a8:	ea12 0b05 	ands.w	fp, r2, r5
200224ac:	d016      	beq.n	200224dc <HAL_DMA_PollForTransfer+0x90>
200224ae:	f1b8 0f00 	cmp.w	r8, #0
200224b2:	d136      	bne.n	20022522 <HAL_DMA_PollForTransfer+0xd6>
200224b4:	2202      	movs	r2, #2
200224b6:	fa02 f303 	lsl.w	r3, r2, r3
200224ba:	6073      	str	r3, [r6, #4]
200224bc:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200224be:	b92b      	cbnz	r3, 200224cc <HAL_DMA_PollForTransfer+0x80>
200224c0:	4620      	mov	r0, r4
200224c2:	f7ff fecf 	bl	20022264 <DMA_FreeChannel.isra.0>
200224c6:	2301      	movs	r3, #1
200224c8:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200224cc:	2000      	movs	r0, #0
200224ce:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
200224d2:	e7d3      	b.n	2002247c <HAL_DMA_PollForTransfer+0x30>
200224d4:	2304      	movs	r3, #4
200224d6:	fa03 f505 	lsl.w	r5, r3, r5
200224da:	e7d9      	b.n	20022490 <HAL_DMA_PollForTransfer+0x44>
200224dc:	6832      	ldr	r2, [r6, #0]
200224de:	4211      	tst	r1, r2
200224e0:	d00c      	beq.n	200224fc <HAL_DMA_PollForTransfer+0xb0>
200224e2:	2501      	movs	r5, #1
200224e4:	fa05 f303 	lsl.w	r3, r5, r3
200224e8:	6073      	str	r3, [r6, #4]
200224ea:	4620      	mov	r0, r4
200224ec:	6465      	str	r5, [r4, #68]	@ 0x44
200224ee:	f7ff feb9 	bl	20022264 <DMA_FreeChannel.isra.0>
200224f2:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
200224f6:	f884 b02c 	strb.w	fp, [r4, #44]	@ 0x2c
200224fa:	e7be      	b.n	2002247a <HAL_DMA_PollForTransfer+0x2e>
200224fc:	1c7a      	adds	r2, r7, #1
200224fe:	d0d2      	beq.n	200224a6 <HAL_DMA_PollForTransfer+0x5a>
20022500:	f7ff fc2a 	bl	20021d58 <HAL_GetTick>
20022504:	eba0 0009 	sub.w	r0, r0, r9
20022508:	42b8      	cmp	r0, r7
2002250a:	d801      	bhi.n	20022510 <HAL_DMA_PollForTransfer+0xc4>
2002250c:	2f00      	cmp	r7, #0
2002250e:	d1c4      	bne.n	2002249a <HAL_DMA_PollForTransfer+0x4e>
20022510:	2320      	movs	r3, #32
20022512:	4620      	mov	r0, r4
20022514:	6463      	str	r3, [r4, #68]	@ 0x44
20022516:	f7ff fea5 	bl	20022264 <DMA_FreeChannel.isra.0>
2002251a:	2301      	movs	r3, #1
2002251c:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
20022520:	e7a0      	b.n	20022464 <HAL_DMA_PollForTransfer+0x18>
20022522:	2204      	movs	r2, #4
20022524:	fa02 f303 	lsl.w	r3, r2, r3
20022528:	6073      	str	r3, [r6, #4]
2002252a:	e7cf      	b.n	200224cc <HAL_DMA_PollForTransfer+0x80>

2002252c <DMA_Remap>:
2002252c:	b530      	push	{r4, r5, lr}
2002252e:	4b15      	ldr	r3, [pc, #84]	@ (20022584 <DMA_Remap+0x58>)
20022530:	6c84      	ldr	r4, [r0, #72]	@ 0x48
20022532:	429c      	cmp	r4, r3
20022534:	d11b      	bne.n	2002256e <DMA_Remap+0x42>
20022536:	6883      	ldr	r3, [r0, #8]
20022538:	2b10      	cmp	r3, #16
2002253a:	d002      	beq.n	20022542 <DMA_Remap+0x16>
2002253c:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022540:	d108      	bne.n	20022554 <DMA_Remap+0x28>
20022542:	680b      	ldr	r3, [r1, #0]
20022544:	4c10      	ldr	r4, [pc, #64]	@ (20022588 <DMA_Remap+0x5c>)
20022546:	f103 4560 	add.w	r5, r3, #3758096384	@ 0xe0000000
2002254a:	42a5      	cmp	r5, r4
2002254c:	bf98      	it	ls
2002254e:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
20022552:	600b      	str	r3, [r1, #0]
20022554:	6883      	ldr	r3, [r0, #8]
20022556:	f433 4380 	bics.w	r3, r3, #16384	@ 0x4000
2002255a:	d108      	bne.n	2002256e <DMA_Remap+0x42>
2002255c:	6813      	ldr	r3, [r2, #0]
2002255e:	480a      	ldr	r0, [pc, #40]	@ (20022588 <DMA_Remap+0x5c>)
20022560:	f103 4460 	add.w	r4, r3, #3758096384	@ 0xe0000000
20022564:	4284      	cmp	r4, r0
20022566:	bf98      	it	ls
20022568:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
2002256c:	6013      	str	r3, [r2, #0]
2002256e:	680b      	ldr	r3, [r1, #0]
20022570:	f103 4270 	add.w	r2, r3, #4026531840	@ 0xf0000000
20022574:	f1b2 5f80 	cmp.w	r2, #268435456	@ 0x10000000
20022578:	bf3c      	itt	cc
2002257a:	f103 43a0 	addcc.w	r3, r3, #1342177280	@ 0x50000000
2002257e:	600b      	strcc	r3, [r1, #0]
20022580:	bd30      	pop	{r4, r5, pc}
20022582:	bf00      	nop
20022584:	40001000 	.word	0x40001000
20022588:	0007fffe 	.word	0x0007fffe

2002258c <DMA_Start>:
2002258c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20022590:	f64f 75ff 	movw	r5, #65535	@ 0xffff
20022594:	6d03      	ldr	r3, [r0, #80]	@ 0x50
20022596:	6802      	ldr	r2, [r0, #0]
20022598:	429d      	cmp	r5, r3
2002259a:	bf28      	it	cs
2002259c:	461d      	movcs	r5, r3
2002259e:	1b5b      	subs	r3, r3, r5
200225a0:	6503      	str	r3, [r0, #80]	@ 0x50
200225a2:	6585      	str	r5, [r0, #88]	@ 0x58
200225a4:	6813      	ldr	r3, [r2, #0]
200225a6:	f890 7066 	ldrb.w	r7, [r0, #102]	@ 0x66
200225aa:	f023 0301 	bic.w	r3, r3, #1
200225ae:	f890 8067 	ldrb.w	r8, [r0, #103]	@ 0x67
200225b2:	6013      	str	r3, [r2, #0]
200225b4:	e9d0 2317 	ldrd	r2, r3, [r0, #92]	@ 0x5c
200225b8:	460e      	mov	r6, r1
200225ba:	e9cd 2300 	strd	r2, r3, [sp]
200225be:	e9d0 2312 	ldrd	r2, r3, [r0, #72]	@ 0x48
200225c2:	f003 011c 	and.w	r1, r3, #28
200225c6:	2301      	movs	r3, #1
200225c8:	4604      	mov	r4, r0
200225ca:	408b      	lsls	r3, r1
200225cc:	6053      	str	r3, [r2, #4]
200225ce:	6803      	ldr	r3, [r0, #0]
200225d0:	4669      	mov	r1, sp
200225d2:	605d      	str	r5, [r3, #4]
200225d4:	aa01      	add	r2, sp, #4
200225d6:	f7ff ffa9 	bl	2002252c <DMA_Remap>
200225da:	e9dd 0300 	ldrd	r0, r3, [sp]
200225de:	68a1      	ldr	r1, [r4, #8]
200225e0:	6822      	ldr	r2, [r4, #0]
200225e2:	2910      	cmp	r1, #16
200225e4:	bf0b      	itete	eq
200225e6:	6093      	streq	r3, [r2, #8]
200225e8:	6090      	strne	r0, [r2, #8]
200225ea:	6823      	ldreq	r3, [r4, #0]
200225ec:	6822      	ldrne	r2, [r4, #0]
200225ee:	bf0c      	ite	eq
200225f0:	60d8      	streq	r0, [r3, #12]
200225f2:	60d3      	strne	r3, [r2, #12]
200225f4:	f894 3064 	ldrb.w	r3, [r4, #100]	@ 0x64
200225f8:	b123      	cbz	r3, 20022604 <DMA_Start+0x78>
200225fa:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200225fc:	fa05 f707 	lsl.w	r7, r5, r7
20022600:	443b      	add	r3, r7
20022602:	65e3      	str	r3, [r4, #92]	@ 0x5c
20022604:	f894 3065 	ldrb.w	r3, [r4, #101]	@ 0x65
20022608:	b123      	cbz	r3, 20022614 <DMA_Start+0x88>
2002260a:	6e23      	ldr	r3, [r4, #96]	@ 0x60
2002260c:	fa05 f508 	lsl.w	r5, r5, r8
20022610:	442b      	add	r3, r5
20022612:	6623      	str	r3, [r4, #96]	@ 0x60
20022614:	b136      	cbz	r6, 20022624 <DMA_Start+0x98>
20022616:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20022618:	6823      	ldr	r3, [r4, #0]
2002261a:	b15a      	cbz	r2, 20022634 <DMA_Start+0xa8>
2002261c:	681a      	ldr	r2, [r3, #0]
2002261e:	f042 020e 	orr.w	r2, r2, #14
20022622:	601a      	str	r2, [r3, #0]
20022624:	6822      	ldr	r2, [r4, #0]
20022626:	6813      	ldr	r3, [r2, #0]
20022628:	f043 0301 	orr.w	r3, r3, #1
2002262c:	6013      	str	r3, [r2, #0]
2002262e:	b002      	add	sp, #8
20022630:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022634:	681a      	ldr	r2, [r3, #0]
20022636:	f022 0204 	bic.w	r2, r2, #4
2002263a:	601a      	str	r2, [r3, #0]
2002263c:	6822      	ldr	r2, [r4, #0]
2002263e:	6813      	ldr	r3, [r2, #0]
20022640:	f043 030a 	orr.w	r3, r3, #10
20022644:	6013      	str	r3, [r2, #0]
20022646:	e7ed      	b.n	20022624 <DMA_Start+0x98>

20022648 <HAL_DMA_Start>:
20022648:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002264a:	461d      	mov	r5, r3
2002264c:	69c3      	ldr	r3, [r0, #28]
2002264e:	4604      	mov	r4, r0
20022650:	2b20      	cmp	r3, #32
20022652:	460f      	mov	r7, r1
20022654:	4616      	mov	r6, r2
20022656:	d105      	bne.n	20022664 <HAL_DMA_Start+0x1c>
20022658:	f64f 73fe 	movw	r3, #65534	@ 0xfffe
2002265c:	1e6a      	subs	r2, r5, #1
2002265e:	429a      	cmp	r2, r3
20022660:	d900      	bls.n	20022664 <HAL_DMA_Start+0x1c>
20022662:	e7fe      	b.n	20022662 <HAL_DMA_Start+0x1a>
20022664:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
20022668:	2b01      	cmp	r3, #1
2002266a:	d00e      	beq.n	2002268a <HAL_DMA_Start+0x42>
2002266c:	2301      	movs	r3, #1
2002266e:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022672:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
20022676:	2b01      	cmp	r3, #1
20022678:	b2d9      	uxtb	r1, r3
2002267a:	d103      	bne.n	20022684 <HAL_DMA_Start+0x3c>
2002267c:	4620      	mov	r0, r4
2002267e:	f7ff fd8b 	bl	20022198 <DMA_AllocChannel>
20022682:	b120      	cbz	r0, 2002268e <HAL_DMA_Start+0x46>
20022684:	2300      	movs	r3, #0
20022686:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002268a:	2002      	movs	r0, #2
2002268c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002268e:	2302      	movs	r3, #2
20022690:	e9c4 5514 	strd	r5, r5, [r4, #80]	@ 0x50
20022694:	e9c4 7617 	strd	r7, r6, [r4, #92]	@ 0x5c
20022698:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
2002269c:	6460      	str	r0, [r4, #68]	@ 0x44
2002269e:	6d20      	ldr	r0, [r4, #80]	@ 0x50
200226a0:	2800      	cmp	r0, #0
200226a2:	d0f3      	beq.n	2002268c <HAL_DMA_Start+0x44>
200226a4:	2100      	movs	r1, #0
200226a6:	4620      	mov	r0, r4
200226a8:	f7ff ff70 	bl	2002258c <DMA_Start>
200226ac:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200226ae:	2b00      	cmp	r3, #0
200226b0:	d0f5      	beq.n	2002269e <HAL_DMA_Start+0x56>
200226b2:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
200226b6:	2100      	movs	r1, #0
200226b8:	4620      	mov	r0, r4
200226ba:	f7ff fec7 	bl	2002244c <HAL_DMA_PollForTransfer>
200226be:	2800      	cmp	r0, #0
200226c0:	d0ed      	beq.n	2002269e <HAL_DMA_Start+0x56>
200226c2:	e7e3      	b.n	2002268c <HAL_DMA_Start+0x44>

200226c4 <HAL_EFUSE_Read>:
200226c4:	2a20      	cmp	r2, #32
200226c6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200226ca:	4606      	mov	r6, r0
200226cc:	460c      	mov	r4, r1
200226ce:	4615      	mov	r5, r2
200226d0:	dc35      	bgt.n	2002273e <HAL_EFUSE_Read+0x7a>
200226d2:	f3c0 09c4 	ubfx	r9, r0, #3, #5
200226d6:	eb09 0302 	add.w	r3, r9, r2
200226da:	2b20      	cmp	r3, #32
200226dc:	dc2f      	bgt.n	2002273e <HAL_EFUSE_Read+0x7a>
200226de:	0790      	lsls	r0, r2, #30
200226e0:	d12d      	bne.n	2002273e <HAL_EFUSE_Read+0x7a>
200226e2:	f016 0a1f 	ands.w	sl, r6, #31
200226e6:	d12a      	bne.n	2002273e <HAL_EFUSE_Read+0x7a>
200226e8:	2301      	movs	r3, #1
200226ea:	4f28      	ldr	r7, [pc, #160]	@ (2002278c <HAL_EFUSE_Read+0xc8>)
200226ec:	4a28      	ldr	r2, [pc, #160]	@ (20022790 <HAL_EFUSE_Read+0xcc>)
200226ee:	60bb      	str	r3, [r7, #8]
200226f0:	4b28      	ldr	r3, [pc, #160]	@ (20022794 <HAL_EFUSE_Read+0xd0>)
200226f2:	2014      	movs	r0, #20
200226f4:	607b      	str	r3, [r7, #4]
200226f6:	f8d2 8094 	ldr.w	r8, [r2, #148]	@ 0x94
200226fa:	0a36      	lsrs	r6, r6, #8
200226fc:	f108 0303 	add.w	r3, r8, #3
20022700:	2b0e      	cmp	r3, #14
20022702:	bf38      	it	cc
20022704:	230e      	movcc	r3, #14
20022706:	2b0f      	cmp	r3, #15
20022708:	bf28      	it	cs
2002270a:	230f      	movcs	r3, #15
2002270c:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20022710:	f7ff fb87 	bl	20021e22 <HAL_Delay_us>
20022714:	00b3      	lsls	r3, r6, #2
20022716:	603b      	str	r3, [r7, #0]
20022718:	683b      	ldr	r3, [r7, #0]
2002271a:	4a1f      	ldr	r2, [pc, #124]	@ (20022798 <HAL_EFUSE_Read+0xd4>)
2002271c:	f043 0301 	orr.w	r3, r3, #1
20022720:	603b      	str	r3, [r7, #0]
20022722:	4653      	mov	r3, sl
20022724:	436a      	muls	r2, r5
20022726:	68b9      	ldr	r1, [r7, #8]
20022728:	07c9      	lsls	r1, r1, #31
2002272a:	d50c      	bpl.n	20022746 <HAL_EFUSE_Read+0x82>
2002272c:	68b9      	ldr	r1, [r7, #8]
2002272e:	4293      	cmp	r3, r2
20022730:	f041 0101 	orr.w	r1, r1, #1
20022734:	60b9      	str	r1, [r7, #8]
20022736:	d30a      	bcc.n	2002274e <HAL_EFUSE_Read+0x8a>
20022738:	4b15      	ldr	r3, [pc, #84]	@ (20022790 <HAL_EFUSE_Read+0xcc>)
2002273a:	f8c3 8094 	str.w	r8, [r3, #148]	@ 0x94
2002273e:	2500      	movs	r5, #0
20022740:	4628      	mov	r0, r5
20022742:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20022746:	4293      	cmp	r3, r2
20022748:	d2f0      	bcs.n	2002272c <HAL_EFUSE_Read+0x68>
2002274a:	3301      	adds	r3, #1
2002274c:	e7eb      	b.n	20022726 <HAL_EFUSE_Read+0x62>
2002274e:	4a13      	ldr	r2, [pc, #76]	@ (2002279c <HAL_EFUSE_Read+0xd8>)
20022750:	f009 001c 	and.w	r0, r9, #28
20022754:	eb00 1046 	add.w	r0, r0, r6, lsl #5
20022758:	f025 0103 	bic.w	r1, r5, #3
2002275c:	4402      	add	r2, r0
2002275e:	4421      	add	r1, r4
20022760:	428c      	cmp	r4, r1
20022762:	d103      	bne.n	2002276c <HAL_EFUSE_Read+0xa8>
20022764:	4b0a      	ldr	r3, [pc, #40]	@ (20022790 <HAL_EFUSE_Read+0xcc>)
20022766:	f8c3 8094 	str.w	r8, [r3, #148]	@ 0x94
2002276a:	e7e9      	b.n	20022740 <HAL_EFUSE_Read+0x7c>
2002276c:	f852 3b04 	ldr.w	r3, [r2], #4
20022770:	3404      	adds	r4, #4
20022772:	0a18      	lsrs	r0, r3, #8
20022774:	f804 3c04 	strb.w	r3, [r4, #-4]
20022778:	f804 0c03 	strb.w	r0, [r4, #-3]
2002277c:	0c18      	lsrs	r0, r3, #16
2002277e:	0e1b      	lsrs	r3, r3, #24
20022780:	f804 0c02 	strb.w	r0, [r4, #-2]
20022784:	f804 3c01 	strb.w	r3, [r4, #-1]
20022788:	e7ea      	b.n	20022760 <HAL_EFUSE_Read+0x9c>
2002278a:	bf00      	nop
2002278c:	5000c000 	.word	0x5000c000
20022790:	500ca000 	.word	0x500ca000
20022794:	0002d08f 	.word	0x0002d08f
20022798:	0005dc00 	.word	0x0005dc00
2002279c:	5000c030 	.word	0x5000c030

200227a0 <EXT_DMA_SetConfig>:
200227a0:	b530      	push	{r4, r5, lr}
200227a2:	2501      	movs	r5, #1
200227a4:	6804      	ldr	r4, [r0, #0]
200227a6:	6065      	str	r5, [r4, #4]
200227a8:	6804      	ldr	r4, [r0, #0]
200227aa:	60e3      	str	r3, [r4, #12]
200227ac:	f101 4370 	add.w	r3, r1, #4026531840	@ 0xf0000000
200227b0:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
200227b4:	6803      	ldr	r3, [r0, #0]
200227b6:	bf38      	it	cc
200227b8:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
200227bc:	6119      	str	r1, [r3, #16]
200227be:	f102 4370 	add.w	r3, r2, #4026531840	@ 0xf0000000
200227c2:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
200227c6:	6803      	ldr	r3, [r0, #0]
200227c8:	bf38      	it	cc
200227ca:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
200227ce:	615a      	str	r2, [r3, #20]
200227d0:	7b03      	ldrb	r3, [r0, #12]
200227d2:	b103      	cbz	r3, 200227d6 <EXT_DMA_SetConfig+0x36>
200227d4:	e7fe      	b.n	200227d4 <EXT_DMA_SetConfig+0x34>
200227d6:	bd30      	pop	{r4, r5, pc}

200227d8 <HAL_EXT_DMA_Init>:
200227d8:	b510      	push	{r4, lr}
200227da:	b1c0      	cbz	r0, 2002280e <HAL_EXT_DMA_Init+0x36>
200227dc:	2302      	movs	r3, #2
200227de:	4a0d      	ldr	r2, [pc, #52]	@ (20022814 <HAL_EXT_DMA_Init+0x3c>)
200227e0:	7643      	strb	r3, [r0, #25]
200227e2:	6002      	str	r2, [r0, #0]
200227e4:	e9d0 3101 	ldrd	r3, r1, [r0, #4]
200227e8:	6894      	ldr	r4, [r2, #8]
200227ea:	430b      	orrs	r3, r1
200227ec:	490a      	ldr	r1, [pc, #40]	@ (20022818 <HAL_EXT_DMA_Init+0x40>)
200227ee:	4021      	ands	r1, r4
200227f0:	430b      	orrs	r3, r1
200227f2:	f443 6320 	orr.w	r3, r3, #2560	@ 0xa00
200227f6:	6093      	str	r3, [r2, #8]
200227f8:	7b03      	ldrb	r3, [r0, #12]
200227fa:	b103      	cbz	r3, 200227fe <HAL_EXT_DMA_Init+0x26>
200227fc:	e7fe      	b.n	200227fc <HAL_EXT_DMA_Init+0x24>
200227fe:	6802      	ldr	r2, [r0, #0]
20022800:	6213      	str	r3, [r2, #32]
20022802:	2201      	movs	r2, #1
20022804:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022806:	7603      	strb	r3, [r0, #24]
20022808:	7642      	strb	r2, [r0, #25]
2002280a:	4618      	mov	r0, r3
2002280c:	bd10      	pop	{r4, pc}
2002280e:	2001      	movs	r0, #1
20022810:	e7fc      	b.n	2002280c <HAL_EXT_DMA_Init+0x34>
20022812:	bf00      	nop
20022814:	50001000 	.word	0x50001000
20022818:	fff0f020 	.word	0xfff0f020

2002281c <HAL_EXT_DMA_Start>:
2002281c:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
20022820:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022822:	d304      	bcc.n	2002282e <HAL_EXT_DMA_Start+0x12>
20022824:	f44f 7300 	mov.w	r3, #512	@ 0x200
20022828:	62c3      	str	r3, [r0, #44]	@ 0x2c
2002282a:	2001      	movs	r0, #1
2002282c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002282e:	7e05      	ldrb	r5, [r0, #24]
20022830:	2d01      	cmp	r5, #1
20022832:	d018      	beq.n	20022866 <HAL_EXT_DMA_Start+0x4a>
20022834:	2501      	movs	r5, #1
20022836:	7605      	strb	r5, [r0, #24]
20022838:	7e45      	ldrb	r5, [r0, #25]
2002283a:	2d01      	cmp	r5, #1
2002283c:	f04f 0500 	mov.w	r5, #0
20022840:	d110      	bne.n	20022864 <HAL_EXT_DMA_Start+0x48>
20022842:	2602      	movs	r6, #2
20022844:	6807      	ldr	r7, [r0, #0]
20022846:	7646      	strb	r6, [r0, #25]
20022848:	62c5      	str	r5, [r0, #44]	@ 0x2c
2002284a:	68be      	ldr	r6, [r7, #8]
2002284c:	f026 0601 	bic.w	r6, r6, #1
20022850:	60be      	str	r6, [r7, #8]
20022852:	f7ff ffa5 	bl	200227a0 <EXT_DMA_SetConfig>
20022856:	6802      	ldr	r2, [r0, #0]
20022858:	4628      	mov	r0, r5
2002285a:	6893      	ldr	r3, [r2, #8]
2002285c:	f043 0301 	orr.w	r3, r3, #1
20022860:	6093      	str	r3, [r2, #8]
20022862:	e7e3      	b.n	2002282c <HAL_EXT_DMA_Start+0x10>
20022864:	7605      	strb	r5, [r0, #24]
20022866:	2002      	movs	r0, #2
20022868:	e7e0      	b.n	2002282c <HAL_EXT_DMA_Start+0x10>

2002286a <HAL_EXT_DMA_PollForTransfer>:
2002286a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
2002286e:	7e43      	ldrb	r3, [r0, #25]
20022870:	4604      	mov	r4, r0
20022872:	2b02      	cmp	r3, #2
20022874:	460e      	mov	r6, r1
20022876:	4615      	mov	r5, r2
20022878:	d006      	beq.n	20022888 <HAL_EXT_DMA_PollForTransfer+0x1e>
2002287a:	2304      	movs	r3, #4
2002287c:	62c3      	str	r3, [r0, #44]	@ 0x2c
2002287e:	2001      	movs	r0, #1
20022880:	2300      	movs	r3, #0
20022882:	7623      	strb	r3, [r4, #24]
20022884:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022888:	2900      	cmp	r1, #0
2002288a:	bf14      	ite	ne
2002288c:	f04f 0804 	movne.w	r8, #4
20022890:	f04f 0802 	moveq.w	r8, #2
20022894:	f7ff fa60 	bl	20021d58 <HAL_GetTick>
20022898:	4607      	mov	r7, r0
2002289a:	6823      	ldr	r3, [r4, #0]
2002289c:	681a      	ldr	r2, [r3, #0]
2002289e:	ea12 0f08 	tst.w	r2, r8
200228a2:	d006      	beq.n	200228b2 <HAL_EXT_DMA_PollForTransfer+0x48>
200228a4:	b9e6      	cbnz	r6, 200228e0 <HAL_EXT_DMA_PollForTransfer+0x76>
200228a6:	2202      	movs	r2, #2
200228a8:	605a      	str	r2, [r3, #4]
200228aa:	2301      	movs	r3, #1
200228ac:	7663      	strb	r3, [r4, #25]
200228ae:	2000      	movs	r0, #0
200228b0:	e7e6      	b.n	20022880 <HAL_EXT_DMA_PollForTransfer+0x16>
200228b2:	681a      	ldr	r2, [r3, #0]
200228b4:	f012 0f18 	tst.w	r2, #24
200228b8:	d004      	beq.n	200228c4 <HAL_EXT_DMA_PollForTransfer+0x5a>
200228ba:	2201      	movs	r2, #1
200228bc:	605a      	str	r2, [r3, #4]
200228be:	62e2      	str	r2, [r4, #44]	@ 0x2c
200228c0:	7662      	strb	r2, [r4, #25]
200228c2:	e7dc      	b.n	2002287e <HAL_EXT_DMA_PollForTransfer+0x14>
200228c4:	1c6a      	adds	r2, r5, #1
200228c6:	d0e9      	beq.n	2002289c <HAL_EXT_DMA_PollForTransfer+0x32>
200228c8:	f7ff fa46 	bl	20021d58 <HAL_GetTick>
200228cc:	1bc0      	subs	r0, r0, r7
200228ce:	42a8      	cmp	r0, r5
200228d0:	d801      	bhi.n	200228d6 <HAL_EXT_DMA_PollForTransfer+0x6c>
200228d2:	2d00      	cmp	r5, #0
200228d4:	d1e1      	bne.n	2002289a <HAL_EXT_DMA_PollForTransfer+0x30>
200228d6:	2320      	movs	r3, #32
200228d8:	62e3      	str	r3, [r4, #44]	@ 0x2c
200228da:	2301      	movs	r3, #1
200228dc:	7663      	strb	r3, [r4, #25]
200228de:	e7ce      	b.n	2002287e <HAL_EXT_DMA_PollForTransfer+0x14>
200228e0:	2204      	movs	r2, #4
200228e2:	605a      	str	r2, [r3, #4]
200228e4:	e7e3      	b.n	200228ae <HAL_EXT_DMA_PollForTransfer+0x44>
	...

200228e8 <HAL_Set_backup>:
200228e8:	4b01      	ldr	r3, [pc, #4]	@ (200228f0 <HAL_Set_backup+0x8>)
200228ea:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
200228ee:	4770      	bx	lr
200228f0:	500cb030 	.word	0x500cb030

200228f4 <HAL_Get_backup>:
200228f4:	4b01      	ldr	r3, [pc, #4]	@ (200228fc <HAL_Get_backup+0x8>)
200228f6:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
200228fa:	4770      	bx	lr
200228fc:	500cb030 	.word	0x500cb030

20022900 <HAL_HPAON_WakeCore>:
20022900:	2802      	cmp	r0, #2
20022902:	b510      	push	{r4, lr}
20022904:	d120      	bne.n	20022948 <HAL_HPAON_WakeCore+0x48>
20022906:	4c11      	ldr	r4, [pc, #68]	@ (2002294c <HAL_HPAON_WakeCore+0x4c>)
20022908:	20e6      	movs	r0, #230	@ 0xe6
2002290a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
2002290c:	f043 0301 	orr.w	r3, r3, #1
20022910:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022912:	f7ff fa86 	bl	20021e22 <HAL_Delay_us>
20022916:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022918:	069a      	lsls	r2, r3, #26
2002291a:	d5fc      	bpl.n	20022916 <HAL_HPAON_WakeCore+0x16>
2002291c:	201e      	movs	r0, #30
2002291e:	f7ff fa80 	bl	20021e22 <HAL_Delay_us>
20022922:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022924:	069b      	lsls	r3, r3, #26
20022926:	d5fc      	bpl.n	20022922 <HAL_HPAON_WakeCore+0x22>
20022928:	f3ef 8110 	mrs	r1, PRIMASK
2002292c:	2301      	movs	r3, #1
2002292e:	f383 8810 	msr	PRIMASK, r3
20022932:	4a07      	ldr	r2, [pc, #28]	@ (20022950 <HAL_HPAON_WakeCore+0x50>)
20022934:	7813      	ldrb	r3, [r2, #0]
20022936:	2b13      	cmp	r3, #19
20022938:	d900      	bls.n	2002293c <HAL_HPAON_WakeCore+0x3c>
2002293a:	e7fe      	b.n	2002293a <HAL_HPAON_WakeCore+0x3a>
2002293c:	3301      	adds	r3, #1
2002293e:	7013      	strb	r3, [r2, #0]
20022940:	f381 8810 	msr	PRIMASK, r1
20022944:	2000      	movs	r0, #0
20022946:	bd10      	pop	{r4, pc}
20022948:	2001      	movs	r0, #1
2002294a:	e7fc      	b.n	20022946 <HAL_HPAON_WakeCore+0x46>
2002294c:	500c0000 	.word	0x500c0000
20022950:	20049f0c 	.word	0x20049f0c

20022954 <HAL_HPAON_EnableXT48>:
20022954:	4b04      	ldr	r3, [pc, #16]	@ (20022968 <HAL_HPAON_EnableXT48+0x14>)
20022956:	691a      	ldr	r2, [r3, #16]
20022958:	f042 0202 	orr.w	r2, r2, #2
2002295c:	611a      	str	r2, [r3, #16]
2002295e:	691a      	ldr	r2, [r3, #16]
20022960:	2a00      	cmp	r2, #0
20022962:	dafc      	bge.n	2002295e <HAL_HPAON_EnableXT48+0xa>
20022964:	4770      	bx	lr
20022966:	bf00      	nop
20022968:	500c0000 	.word	0x500c0000

2002296c <HAL_HPAON_DisableXT48>:
2002296c:	4a02      	ldr	r2, [pc, #8]	@ (20022978 <HAL_HPAON_DisableXT48+0xc>)
2002296e:	6913      	ldr	r3, [r2, #16]
20022970:	f023 0302 	bic.w	r3, r3, #2
20022974:	6113      	str	r3, [r2, #16]
20022976:	4770      	bx	lr
20022978:	500c0000 	.word	0x500c0000

2002297c <HAL_QSPI_Init>:
2002297c:	b510      	push	{r4, lr}
2002297e:	b1e0      	cbz	r0, 200229ba <HAL_QSPI_Init+0x3e>
20022980:	b1d9      	cbz	r1, 200229ba <HAL_QSPI_Init+0x3e>
20022982:	2300      	movs	r3, #0
20022984:	2201      	movs	r2, #1
20022986:	6043      	str	r3, [r0, #4]
20022988:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
2002298c:	680c      	ldr	r4, [r1, #0]
2002298e:	6004      	str	r4, [r0, #0]
20022990:	684a      	ldr	r2, [r1, #4]
20022992:	f880 2020 	strb.w	r2, [r0, #32]
20022996:	688a      	ldr	r2, [r1, #8]
20022998:	6102      	str	r2, [r0, #16]
2002299a:	68ca      	ldr	r2, [r1, #12]
2002299c:	0512      	lsls	r2, r2, #20
2002299e:	6142      	str	r2, [r0, #20]
200229a0:	22ff      	movs	r2, #255	@ 0xff
200229a2:	f8c4 2084 	str.w	r2, [r4, #132]	@ 0x84
200229a6:	f04f 2450 	mov.w	r4, #1342197760	@ 0x50005000
200229aa:	6801      	ldr	r1, [r0, #0]
200229ac:	678c      	str	r4, [r1, #120]	@ 0x78
200229ae:	6801      	ldr	r1, [r0, #0]
200229b0:	620a      	str	r2, [r1, #32]
200229b2:	6801      	ldr	r1, [r0, #0]
200229b4:	4618      	mov	r0, r3
200229b6:	644a      	str	r2, [r1, #68]	@ 0x44
200229b8:	bd10      	pop	{r4, pc}
200229ba:	2001      	movs	r0, #1
200229bc:	e7fc      	b.n	200229b8 <HAL_QSPI_Init+0x3c>

200229be <HAL_FLASH_SET_AHB_RCMD>:
200229be:	b138      	cbz	r0, 200229d0 <HAL_FLASH_SET_AHB_RCMD+0x12>
200229c0:	6802      	ldr	r2, [r0, #0]
200229c2:	2000      	movs	r0, #0
200229c4:	6c13      	ldr	r3, [r2, #64]	@ 0x40
200229c6:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
200229ca:	4319      	orrs	r1, r3
200229cc:	6411      	str	r1, [r2, #64]	@ 0x40
200229ce:	4770      	bx	lr
200229d0:	2001      	movs	r0, #1
200229d2:	4770      	bx	lr

200229d4 <HAL_FLASH_CFG_AHB_RCMD>:
200229d4:	b570      	push	{r4, r5, r6, lr}
200229d6:	b1c8      	cbz	r0, 20022a0c <HAL_FLASH_CFG_AHB_RCMD+0x38>
200229d8:	6805      	ldr	r5, [r0, #0]
200229da:	f99d 6018 	ldrsb.w	r6, [sp, #24]
200229de:	f99d 001c 	ldrsb.w	r0, [sp, #28]
200229e2:	6cac      	ldr	r4, [r5, #72]	@ 0x48
200229e4:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
200229e8:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
200229ec:	f99d 0010 	ldrsb.w	r0, [sp, #16]
200229f0:	f36f 0414 	bfc	r4, #0, #21
200229f4:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
200229f8:	f99d 0014 	ldrsb.w	r0, [sp, #20]
200229fc:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022a00:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022a04:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022a08:	4321      	orrs	r1, r4
20022a0a:	64a9      	str	r1, [r5, #72]	@ 0x48
20022a0c:	bd70      	pop	{r4, r5, r6, pc}

20022a0e <HAL_FLASH_SET_AHB_WCMD>:
20022a0e:	b140      	cbz	r0, 20022a22 <HAL_FLASH_SET_AHB_WCMD+0x14>
20022a10:	6802      	ldr	r2, [r0, #0]
20022a12:	2000      	movs	r0, #0
20022a14:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022a16:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022a1a:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20022a1e:	6411      	str	r1, [r2, #64]	@ 0x40
20022a20:	4770      	bx	lr
20022a22:	2001      	movs	r0, #1
20022a24:	4770      	bx	lr

20022a26 <HAL_FLASH_CFG_AHB_WCMD>:
20022a26:	b570      	push	{r4, r5, r6, lr}
20022a28:	b1c8      	cbz	r0, 20022a5e <HAL_FLASH_CFG_AHB_WCMD+0x38>
20022a2a:	6805      	ldr	r5, [r0, #0]
20022a2c:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022a30:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022a34:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20022a36:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022a3a:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022a3e:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022a42:	f36f 0414 	bfc	r4, #0, #21
20022a46:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022a4a:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022a4e:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022a52:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022a56:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022a5a:	4321      	orrs	r1, r4
20022a5c:	6529      	str	r1, [r5, #80]	@ 0x50
20022a5e:	bd70      	pop	{r4, r5, r6, pc}

20022a60 <HAL_FLASH_WRITE_WORD>:
20022a60:	b118      	cbz	r0, 20022a6a <HAL_FLASH_WRITE_WORD+0xa>
20022a62:	6803      	ldr	r3, [r0, #0]
20022a64:	2000      	movs	r0, #0
20022a66:	6059      	str	r1, [r3, #4]
20022a68:	4770      	bx	lr
20022a6a:	2001      	movs	r0, #1
20022a6c:	4770      	bx	lr

20022a6e <HAL_FLASH_WRITE_DLEN>:
20022a6e:	b130      	cbz	r0, 20022a7e <HAL_FLASH_WRITE_DLEN+0x10>
20022a70:	6803      	ldr	r3, [r0, #0]
20022a72:	3901      	subs	r1, #1
20022a74:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022a78:	2000      	movs	r0, #0
20022a7a:	6259      	str	r1, [r3, #36]	@ 0x24
20022a7c:	4770      	bx	lr
20022a7e:	2001      	movs	r0, #1
20022a80:	4770      	bx	lr

20022a82 <HAL_FLASH_WRITE_DLEN2>:
20022a82:	b130      	cbz	r0, 20022a92 <HAL_FLASH_WRITE_DLEN2+0x10>
20022a84:	6803      	ldr	r3, [r0, #0]
20022a86:	3901      	subs	r1, #1
20022a88:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022a8c:	2000      	movs	r0, #0
20022a8e:	6399      	str	r1, [r3, #56]	@ 0x38
20022a90:	4770      	bx	lr
20022a92:	2001      	movs	r0, #1
20022a94:	4770      	bx	lr

20022a96 <HAL_FLASH_WRITE_ABYTE>:
20022a96:	b108      	cbz	r0, 20022a9c <HAL_FLASH_WRITE_ABYTE+0x6>
20022a98:	6803      	ldr	r3, [r0, #0]
20022a9a:	6219      	str	r1, [r3, #32]
20022a9c:	4770      	bx	lr

20022a9e <HAL_FLASH_IS_CMD_DONE>:
20022a9e:	b118      	cbz	r0, 20022aa8 <HAL_FLASH_IS_CMD_DONE+0xa>
20022aa0:	6803      	ldr	r3, [r0, #0]
20022aa2:	6918      	ldr	r0, [r3, #16]
20022aa4:	f000 0001 	and.w	r0, r0, #1
20022aa8:	4770      	bx	lr

20022aaa <HAL_FLASH_CLR_CMD_DONE>:
20022aaa:	b120      	cbz	r0, 20022ab6 <HAL_FLASH_CLR_CMD_DONE+0xc>
20022aac:	6802      	ldr	r2, [r0, #0]
20022aae:	6953      	ldr	r3, [r2, #20]
20022ab0:	f043 0301 	orr.w	r3, r3, #1
20022ab4:	6153      	str	r3, [r2, #20]
20022ab6:	4770      	bx	lr

20022ab8 <HAL_FLASH_SET_CMD>:
20022ab8:	b538      	push	{r3, r4, r5, lr}
20022aba:	460d      	mov	r5, r1
20022abc:	4604      	mov	r4, r0
20022abe:	b1a8      	cbz	r0, 20022aec <HAL_FLASH_SET_CMD+0x34>
20022ac0:	6803      	ldr	r3, [r0, #0]
20022ac2:	61da      	str	r2, [r3, #28]
20022ac4:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
20022ac6:	b10b      	cbz	r3, 20022acc <HAL_FLASH_SET_CMD+0x14>
20022ac8:	2001      	movs	r0, #1
20022aca:	4798      	blx	r3
20022acc:	6823      	ldr	r3, [r4, #0]
20022ace:	619d      	str	r5, [r3, #24]
20022ad0:	4620      	mov	r0, r4
20022ad2:	f7ff ffe4 	bl	20022a9e <HAL_FLASH_IS_CMD_DONE>
20022ad6:	2800      	cmp	r0, #0
20022ad8:	d0fa      	beq.n	20022ad0 <HAL_FLASH_SET_CMD+0x18>
20022ada:	4620      	mov	r0, r4
20022adc:	f7ff ffe5 	bl	20022aaa <HAL_FLASH_CLR_CMD_DONE>
20022ae0:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022ae2:	b10b      	cbz	r3, 20022ae8 <HAL_FLASH_SET_CMD+0x30>
20022ae4:	2000      	movs	r0, #0
20022ae6:	4798      	blx	r3
20022ae8:	2000      	movs	r0, #0
20022aea:	bd38      	pop	{r3, r4, r5, pc}
20022aec:	2001      	movs	r0, #1
20022aee:	e7fc      	b.n	20022aea <HAL_FLASH_SET_CMD+0x32>

20022af0 <HAL_FLASH_CLR_STATUS>:
20022af0:	b118      	cbz	r0, 20022afa <HAL_FLASH_CLR_STATUS+0xa>
20022af2:	6802      	ldr	r2, [r0, #0]
20022af4:	6953      	ldr	r3, [r2, #20]
20022af6:	4319      	orrs	r1, r3
20022af8:	6151      	str	r1, [r2, #20]
20022afa:	4770      	bx	lr

20022afc <HAL_FLASH_STATUS_MATCH>:
20022afc:	b118      	cbz	r0, 20022b06 <HAL_FLASH_STATUS_MATCH+0xa>
20022afe:	6803      	ldr	r3, [r0, #0]
20022b00:	6918      	ldr	r0, [r3, #16]
20022b02:	f3c0 00c0 	ubfx	r0, r0, #3, #1
20022b06:	4770      	bx	lr

20022b08 <HAL_FLASH_IS_PROG_DONE>:
20022b08:	b128      	cbz	r0, 20022b16 <HAL_FLASH_IS_PROG_DONE+0xe>
20022b0a:	6803      	ldr	r3, [r0, #0]
20022b0c:	6858      	ldr	r0, [r3, #4]
20022b0e:	43c0      	mvns	r0, r0
20022b10:	f000 0001 	and.w	r0, r0, #1
20022b14:	4770      	bx	lr
20022b16:	2001      	movs	r0, #1
20022b18:	4770      	bx	lr

20022b1a <HAL_FLASH_READ32>:
20022b1a:	b108      	cbz	r0, 20022b20 <HAL_FLASH_READ32+0x6>
20022b1c:	6803      	ldr	r3, [r0, #0]
20022b1e:	6858      	ldr	r0, [r3, #4]
20022b20:	4770      	bx	lr

20022b22 <HAL_FLASH_SET_TXSLOT>:
20022b22:	b120      	cbz	r0, 20022b2e <HAL_FLASH_SET_TXSLOT+0xc>
20022b24:	6802      	ldr	r2, [r0, #0]
20022b26:	6d53      	ldr	r3, [r2, #84]	@ 0x54
20022b28:	f361 238e 	bfi	r3, r1, #10, #5
20022b2c:	6553      	str	r3, [r2, #84]	@ 0x54
20022b2e:	4770      	bx	lr

20022b30 <HAL_FLASH_SET_CLK_rom>:
20022b30:	b108      	cbz	r0, 20022b36 <HAL_FLASH_SET_CLK_rom+0x6>
20022b32:	6803      	ldr	r3, [r0, #0]
20022b34:	60d9      	str	r1, [r3, #12]
20022b36:	4770      	bx	lr

20022b38 <HAL_FLASH_GET_DIV>:
20022b38:	b110      	cbz	r0, 20022b40 <HAL_FLASH_GET_DIV+0x8>
20022b3a:	6803      	ldr	r3, [r0, #0]
20022b3c:	68d8      	ldr	r0, [r3, #12]
20022b3e:	b2c0      	uxtb	r0, r0
20022b40:	4770      	bx	lr

20022b42 <HAL_FLASH_MANUAL_CMD>:
20022b42:	b570      	push	{r4, r5, r6, lr}
20022b44:	b1e8      	cbz	r0, 20022b82 <HAL_FLASH_MANUAL_CMD+0x40>
20022b46:	6805      	ldr	r5, [r0, #0]
20022b48:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022b4c:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022b50:	6aac      	ldr	r4, [r5, #40]	@ 0x28
20022b52:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022b56:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022b5a:	f36f 0415 	bfc	r4, #0, #22
20022b5e:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022b62:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022b66:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022b6a:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022b6e:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022b72:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022b76:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022b7a:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022b7e:	4321      	orrs	r1, r4
20022b80:	62a9      	str	r1, [r5, #40]	@ 0x28
20022b82:	bd70      	pop	{r4, r5, r6, pc}

20022b84 <HAL_FLASH_MANUAL_CMD2>:
20022b84:	b570      	push	{r4, r5, r6, lr}
20022b86:	b1e8      	cbz	r0, 20022bc4 <HAL_FLASH_MANUAL_CMD2+0x40>
20022b88:	6805      	ldr	r5, [r0, #0]
20022b8a:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022b8e:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022b92:	6bec      	ldr	r4, [r5, #60]	@ 0x3c
20022b94:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022b98:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022b9c:	f36f 0415 	bfc	r4, #0, #22
20022ba0:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022ba4:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022ba8:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022bac:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022bb0:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022bb4:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022bb8:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022bbc:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022bc0:	4321      	orrs	r1, r4
20022bc2:	63e9      	str	r1, [r5, #60]	@ 0x3c
20022bc4:	bd70      	pop	{r4, r5, r6, pc}
	...

20022bc8 <HAL_FLASH_SET_ALIAS_RANGE>:
20022bc8:	b510      	push	{r4, lr}
20022bca:	b158      	cbz	r0, 20022be4 <HAL_FLASH_SET_ALIAS_RANGE+0x1c>
20022bcc:	4b06      	ldr	r3, [pc, #24]	@ (20022be8 <HAL_FLASH_SET_ALIAS_RANGE+0x20>)
20022bce:	6804      	ldr	r4, [r0, #0]
20022bd0:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022bd4:	440a      	add	r2, r1
20022bd6:	4019      	ands	r1, r3
20022bd8:	66e1      	str	r1, [r4, #108]	@ 0x6c
20022bda:	401a      	ands	r2, r3
20022bdc:	6803      	ldr	r3, [r0, #0]
20022bde:	2000      	movs	r0, #0
20022be0:	671a      	str	r2, [r3, #112]	@ 0x70
20022be2:	bd10      	pop	{r4, pc}
20022be4:	2001      	movs	r0, #1
20022be6:	e7fc      	b.n	20022be2 <HAL_FLASH_SET_ALIAS_RANGE+0x1a>
20022be8:	fffffc00 	.word	0xfffffc00

20022bec <HAL_FLASH_SET_ALIAS_OFFSET>:
20022bec:	b128      	cbz	r0, 20022bfa <HAL_FLASH_SET_ALIAS_OFFSET+0xe>
20022bee:	6803      	ldr	r3, [r0, #0]
20022bf0:	f36f 0109 	bfc	r1, #0, #10
20022bf4:	2000      	movs	r0, #0
20022bf6:	6759      	str	r1, [r3, #116]	@ 0x74
20022bf8:	4770      	bx	lr
20022bfa:	2001      	movs	r0, #1
20022bfc:	4770      	bx	lr
	...

20022c00 <HAL_FLASH_SET_CTR>:
20022c00:	b510      	push	{r4, lr}
20022c02:	b150      	cbz	r0, 20022c1a <HAL_FLASH_SET_CTR+0x1a>
20022c04:	4b06      	ldr	r3, [pc, #24]	@ (20022c20 <HAL_FLASH_SET_CTR+0x20>)
20022c06:	6804      	ldr	r4, [r0, #0]
20022c08:	4019      	ands	r1, r3
20022c0a:	65e1      	str	r1, [r4, #92]	@ 0x5c
20022c0c:	6801      	ldr	r1, [r0, #0]
20022c0e:	2000      	movs	r0, #0
20022c10:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022c14:	401a      	ands	r2, r3
20022c16:	660a      	str	r2, [r1, #96]	@ 0x60
20022c18:	bd10      	pop	{r4, pc}
20022c1a:	2001      	movs	r0, #1
20022c1c:	e7fc      	b.n	20022c18 <HAL_FLASH_SET_CTR+0x18>
20022c1e:	bf00      	nop
20022c20:	fffffc00 	.word	0xfffffc00

20022c24 <HAL_FLASH_SET_NONCE>:
20022c24:	b150      	cbz	r0, 20022c3c <HAL_FLASH_SET_NONCE+0x18>
20022c26:	b149      	cbz	r1, 20022c3c <HAL_FLASH_SET_NONCE+0x18>
20022c28:	680b      	ldr	r3, [r1, #0]
20022c2a:	6802      	ldr	r2, [r0, #0]
20022c2c:	ba1b      	rev	r3, r3
20022c2e:	6653      	str	r3, [r2, #100]	@ 0x64
20022c30:	684b      	ldr	r3, [r1, #4]
20022c32:	6802      	ldr	r2, [r0, #0]
20022c34:	ba1b      	rev	r3, r3
20022c36:	2000      	movs	r0, #0
20022c38:	6693      	str	r3, [r2, #104]	@ 0x68
20022c3a:	4770      	bx	lr
20022c3c:	2001      	movs	r0, #1
20022c3e:	4770      	bx	lr

20022c40 <HAL_FLASH_SET_AES>:
20022c40:	b158      	cbz	r0, 20022c5a <HAL_FLASH_SET_AES+0x1a>
20022c42:	6803      	ldr	r3, [r0, #0]
20022c44:	2901      	cmp	r1, #1
20022c46:	681a      	ldr	r2, [r3, #0]
20022c48:	d104      	bne.n	20022c54 <HAL_FLASH_SET_AES+0x14>
20022c4a:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
20022c4e:	2000      	movs	r0, #0
20022c50:	601a      	str	r2, [r3, #0]
20022c52:	4770      	bx	lr
20022c54:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
20022c58:	e7f9      	b.n	20022c4e <HAL_FLASH_SET_AES+0xe>
20022c5a:	2001      	movs	r0, #1
20022c5c:	4770      	bx	lr

20022c5e <HAL_FLASH_ENABLE_AES>:
20022c5e:	b150      	cbz	r0, 20022c76 <HAL_FLASH_ENABLE_AES+0x18>
20022c60:	6803      	ldr	r3, [r0, #0]
20022c62:	681a      	ldr	r2, [r3, #0]
20022c64:	b121      	cbz	r1, 20022c70 <HAL_FLASH_ENABLE_AES+0x12>
20022c66:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
20022c6a:	2000      	movs	r0, #0
20022c6c:	601a      	str	r2, [r3, #0]
20022c6e:	4770      	bx	lr
20022c70:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
20022c74:	e7f9      	b.n	20022c6a <HAL_FLASH_ENABLE_AES+0xc>
20022c76:	2001      	movs	r0, #1
20022c78:	4770      	bx	lr

20022c7a <HAL_FLASH_ENABLE_QSPI>:
20022c7a:	b150      	cbz	r0, 20022c92 <HAL_FLASH_ENABLE_QSPI+0x18>
20022c7c:	6803      	ldr	r3, [r0, #0]
20022c7e:	681a      	ldr	r2, [r3, #0]
20022c80:	b121      	cbz	r1, 20022c8c <HAL_FLASH_ENABLE_QSPI+0x12>
20022c82:	f042 0201 	orr.w	r2, r2, #1
20022c86:	2000      	movs	r0, #0
20022c88:	601a      	str	r2, [r3, #0]
20022c8a:	4770      	bx	lr
20022c8c:	f022 0201 	bic.w	r2, r2, #1
20022c90:	e7f9      	b.n	20022c86 <HAL_FLASH_ENABLE_QSPI+0xc>
20022c92:	2001      	movs	r0, #1
20022c94:	4770      	bx	lr

20022c96 <HAL_FLASH_ENABLE_OPI>:
20022c96:	b150      	cbz	r0, 20022cae <HAL_FLASH_ENABLE_OPI+0x18>
20022c98:	6803      	ldr	r3, [r0, #0]
20022c9a:	681a      	ldr	r2, [r3, #0]
20022c9c:	b121      	cbz	r1, 20022ca8 <HAL_FLASH_ENABLE_OPI+0x12>
20022c9e:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20022ca2:	2000      	movs	r0, #0
20022ca4:	601a      	str	r2, [r3, #0]
20022ca6:	4770      	bx	lr
20022ca8:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20022cac:	e7f9      	b.n	20022ca2 <HAL_FLASH_ENABLE_OPI+0xc>
20022cae:	2001      	movs	r0, #1
20022cb0:	4770      	bx	lr

20022cb2 <HAL_FLASH_ENABLE_HYPER>:
20022cb2:	b150      	cbz	r0, 20022cca <HAL_FLASH_ENABLE_HYPER+0x18>
20022cb4:	6803      	ldr	r3, [r0, #0]
20022cb6:	689a      	ldr	r2, [r3, #8]
20022cb8:	b121      	cbz	r1, 20022cc4 <HAL_FLASH_ENABLE_HYPER+0x12>
20022cba:	f042 0210 	orr.w	r2, r2, #16
20022cbe:	2000      	movs	r0, #0
20022cc0:	609a      	str	r2, [r3, #8]
20022cc2:	4770      	bx	lr
20022cc4:	f022 0210 	bic.w	r2, r2, #16
20022cc8:	e7f9      	b.n	20022cbe <HAL_FLASH_ENABLE_HYPER+0xc>
20022cca:	2001      	movs	r0, #1
20022ccc:	4770      	bx	lr

20022cce <HAL_FLASH_ENABLE_CMD2>:
20022cce:	b150      	cbz	r0, 20022ce6 <HAL_FLASH_ENABLE_CMD2+0x18>
20022cd0:	6803      	ldr	r3, [r0, #0]
20022cd2:	681a      	ldr	r2, [r3, #0]
20022cd4:	b121      	cbz	r1, 20022ce0 <HAL_FLASH_ENABLE_CMD2+0x12>
20022cd6:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
20022cda:	2000      	movs	r0, #0
20022cdc:	601a      	str	r2, [r3, #0]
20022cde:	4770      	bx	lr
20022ce0:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
20022ce4:	e7f9      	b.n	20022cda <HAL_FLASH_ENABLE_CMD2+0xc>
20022ce6:	2001      	movs	r0, #1
20022ce8:	4770      	bx	lr

20022cea <HAL_FLASH_STAUS_MATCH_CMD2>:
20022cea:	b150      	cbz	r0, 20022d02 <HAL_FLASH_STAUS_MATCH_CMD2+0x18>
20022cec:	6803      	ldr	r3, [r0, #0]
20022cee:	681a      	ldr	r2, [r3, #0]
20022cf0:	b121      	cbz	r1, 20022cfc <HAL_FLASH_STAUS_MATCH_CMD2+0x12>
20022cf2:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
20022cf6:	2000      	movs	r0, #0
20022cf8:	601a      	str	r2, [r3, #0]
20022cfa:	4770      	bx	lr
20022cfc:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20022d00:	e7f9      	b.n	20022cf6 <HAL_FLASH_STAUS_MATCH_CMD2+0xc>
20022d02:	2001      	movs	r0, #1
20022d04:	4770      	bx	lr

20022d06 <HAL_FLASH_SET_CS_TIME>:
20022d06:	b530      	push	{r4, r5, lr}
20022d08:	b180      	cbz	r0, 20022d2c <HAL_FLASH_SET_CS_TIME+0x26>
20022d0a:	6805      	ldr	r5, [r0, #0]
20022d0c:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20022d10:	68ac      	ldr	r4, [r5, #8]
20022d12:	0680      	lsls	r0, r0, #26
20022d14:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20022d18:	2000      	movs	r0, #0
20022d1a:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
20022d1e:	f36f 149e 	bfc	r4, #6, #25
20022d22:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20022d26:	4322      	orrs	r2, r4
20022d28:	60aa      	str	r2, [r5, #8]
20022d2a:	bd30      	pop	{r4, r5, pc}
20022d2c:	2001      	movs	r0, #1
20022d2e:	e7fc      	b.n	20022d2a <HAL_FLASH_SET_CS_TIME+0x24>

20022d30 <HAL_FLASH_SET_ROW_BOUNDARY>:
20022d30:	b130      	cbz	r0, 20022d40 <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20022d32:	6802      	ldr	r2, [r0, #0]
20022d34:	2000      	movs	r0, #0
20022d36:	6893      	ldr	r3, [r2, #8]
20022d38:	f361 0302 	bfi	r3, r1, #0, #3
20022d3c:	6093      	str	r3, [r2, #8]
20022d3e:	4770      	bx	lr
20022d40:	2001      	movs	r0, #1
20022d42:	4770      	bx	lr

20022d44 <HAL_FLASH_SET_LEGACY>:
20022d44:	b150      	cbz	r0, 20022d5c <HAL_FLASH_SET_LEGACY+0x18>
20022d46:	6803      	ldr	r3, [r0, #0]
20022d48:	689a      	ldr	r2, [r3, #8]
20022d4a:	b121      	cbz	r1, 20022d56 <HAL_FLASH_SET_LEGACY+0x12>
20022d4c:	f042 0220 	orr.w	r2, r2, #32
20022d50:	2000      	movs	r0, #0
20022d52:	609a      	str	r2, [r3, #8]
20022d54:	4770      	bx	lr
20022d56:	f022 0220 	bic.w	r2, r2, #32
20022d5a:	e7f9      	b.n	20022d50 <HAL_FLASH_SET_LEGACY+0xc>
20022d5c:	2001      	movs	r0, #1
20022d5e:	4770      	bx	lr

20022d60 <HAL_FLASH_SET_DUAL_MODE>:
20022d60:	b150      	cbz	r0, 20022d78 <HAL_FLASH_SET_DUAL_MODE+0x18>
20022d62:	6803      	ldr	r3, [r0, #0]
20022d64:	681a      	ldr	r2, [r3, #0]
20022d66:	b121      	cbz	r1, 20022d72 <HAL_FLASH_SET_DUAL_MODE+0x12>
20022d68:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
20022d6c:	2000      	movs	r0, #0
20022d6e:	601a      	str	r2, [r3, #0]
20022d70:	4770      	bx	lr
20022d72:	f022 7280 	bic.w	r2, r2, #16777216	@ 0x1000000
20022d76:	e7f9      	b.n	20022d6c <HAL_FLASH_SET_DUAL_MODE+0xc>
20022d78:	2001      	movs	r0, #1
20022d7a:	4770      	bx	lr

20022d7c <HAL_MPI_EN_FIXLAT>:
20022d7c:	b150      	cbz	r0, 20022d94 <HAL_MPI_EN_FIXLAT+0x18>
20022d7e:	6803      	ldr	r3, [r0, #0]
20022d80:	689a      	ldr	r2, [r3, #8]
20022d82:	b121      	cbz	r1, 20022d8e <HAL_MPI_EN_FIXLAT+0x12>
20022d84:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20022d88:	2000      	movs	r0, #0
20022d8a:	609a      	str	r2, [r3, #8]
20022d8c:	4770      	bx	lr
20022d8e:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20022d92:	e7f9      	b.n	20022d88 <HAL_MPI_EN_FIXLAT+0xc>
20022d94:	2001      	movs	r0, #1
20022d96:	4770      	bx	lr

20022d98 <HAL_MPI_ENABLE_DQS>:
20022d98:	b150      	cbz	r0, 20022db0 <HAL_MPI_ENABLE_DQS+0x18>
20022d9a:	6803      	ldr	r3, [r0, #0]
20022d9c:	689a      	ldr	r2, [r3, #8]
20022d9e:	b121      	cbz	r1, 20022daa <HAL_MPI_ENABLE_DQS+0x12>
20022da0:	f042 0208 	orr.w	r2, r2, #8
20022da4:	2000      	movs	r0, #0
20022da6:	609a      	str	r2, [r3, #8]
20022da8:	4770      	bx	lr
20022daa:	f022 0208 	bic.w	r2, r2, #8
20022dae:	e7f9      	b.n	20022da4 <HAL_MPI_ENABLE_DQS+0xc>
20022db0:	2001      	movs	r0, #1
20022db2:	4770      	bx	lr

20022db4 <HAL_MPI_SET_DQS_DELAY>:
20022db4:	b140      	cbz	r0, 20022dc8 <HAL_MPI_SET_DQS_DELAY+0x14>
20022db6:	6802      	ldr	r2, [r0, #0]
20022db8:	2000      	movs	r0, #0
20022dba:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20022dbc:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
20022dc0:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
20022dc4:	6591      	str	r1, [r2, #88]	@ 0x58
20022dc6:	4770      	bx	lr
20022dc8:	2001      	movs	r0, #1
20022dca:	4770      	bx	lr

20022dcc <HAL_MPI_SET_SCK>:
20022dcc:	b160      	cbz	r0, 20022de8 <HAL_MPI_SET_SCK+0x1c>
20022dce:	6800      	ldr	r0, [r0, #0]
20022dd0:	0652      	lsls	r2, r2, #25
20022dd2:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20022dd4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
20022dd8:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022ddc:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022de0:	4319      	orrs	r1, r3
20022de2:	6581      	str	r1, [r0, #88]	@ 0x58
20022de4:	2000      	movs	r0, #0
20022de6:	4770      	bx	lr
20022de8:	2001      	movs	r0, #1
20022dea:	4770      	bx	lr

20022dec <HAL_MPI_CFG_DTR>:
20022dec:	b510      	push	{r4, lr}
20022dee:	b1f0      	cbz	r0, 20022e2e <HAL_MPI_CFG_DTR+0x42>
20022df0:	6804      	ldr	r4, [r0, #0]
20022df2:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20022df4:	b1b1      	cbz	r1, 20022e24 <HAL_MPI_CFG_DTR+0x38>
20022df6:	2a02      	cmp	r2, #2
20022df8:	bf84      	itt	hi
20022dfa:	3a02      	subhi	r2, #2
20022dfc:	b2d2      	uxtbhi	r2, r2
20022dfe:	0213      	lsls	r3, r2, #8
20022e00:	f36f 000f 	bfc	r0, #0, #16
20022e04:	f403 43fe 	and.w	r3, r3, #32512	@ 0x7f00
20022e08:	4303      	orrs	r3, r0
20022e0a:	0612      	lsls	r2, r2, #24
20022e0c:	bf54      	ite	pl
20022e0e:	f043 6380 	orrpl.w	r3, r3, #67108864	@ 0x4000000
20022e12:	f043 63a0 	orrmi.w	r3, r3, #83886080	@ 0x5000000
20022e16:	f043 030a 	orr.w	r3, r3, #10
20022e1a:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022e1e:	2000      	movs	r0, #0
20022e20:	65a3      	str	r3, [r4, #88]	@ 0x58
20022e22:	bd10      	pop	{r4, pc}
20022e24:	4b03      	ldr	r3, [pc, #12]	@ (20022e34 <HAL_MPI_CFG_DTR+0x48>)
20022e26:	4003      	ands	r3, r0
20022e28:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
20022e2c:	e7f7      	b.n	20022e1e <HAL_MPI_CFG_DTR+0x32>
20022e2e:	2001      	movs	r0, #1
20022e30:	e7f7      	b.n	20022e22 <HAL_MPI_CFG_DTR+0x36>
20022e32:	bf00      	nop
20022e34:	faff0000 	.word	0xfaff0000

20022e38 <HAL_MPI_MODIFY_RCMD_DELAY>:
20022e38:	b130      	cbz	r0, 20022e48 <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
20022e3a:	6802      	ldr	r2, [r0, #0]
20022e3c:	6c93      	ldr	r3, [r2, #72]	@ 0x48
20022e3e:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022e42:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022e46:	6491      	str	r1, [r2, #72]	@ 0x48
20022e48:	4770      	bx	lr

20022e4a <HAL_MPI_MODIFY_WCMD_DELAY>:
20022e4a:	b130      	cbz	r0, 20022e5a <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
20022e4c:	6802      	ldr	r2, [r0, #0]
20022e4e:	6d13      	ldr	r3, [r2, #80]	@ 0x50
20022e50:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022e54:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022e58:	6511      	str	r1, [r2, #80]	@ 0x50
20022e5a:	4770      	bx	lr

20022e5c <HAL_FLASH_CONFIG_AHB_READ>:
20022e5c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20022e5e:	4605      	mov	r5, r0
20022e60:	2800      	cmp	r0, #0
20022e62:	d03d      	beq.n	20022ee0 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022e64:	68c4      	ldr	r4, [r0, #12]
20022e66:	b301      	cbz	r1, 20022eaa <HAL_FLASH_CONFIG_AHB_READ+0x4e>
20022e68:	f894 306a 	ldrb.w	r3, [r4, #106]	@ 0x6a
20022e6c:	2b00      	cmp	r3, #0
20022e6e:	d037      	beq.n	20022ee0 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022e70:	f994 6072 	ldrsb.w	r6, [r4, #114]	@ 0x72
20022e74:	f994 306e 	ldrsb.w	r3, [r4, #110]	@ 0x6e
20022e78:	f994 106c 	ldrsb.w	r1, [r4, #108]	@ 0x6c
20022e7c:	f994 206d 	ldrsb.w	r2, [r4, #109]	@ 0x6d
20022e80:	9603      	str	r6, [sp, #12]
20022e82:	f994 6071 	ldrsb.w	r6, [r4, #113]	@ 0x71
20022e86:	9602      	str	r6, [sp, #8]
20022e88:	f994 6070 	ldrsb.w	r6, [r4, #112]	@ 0x70
20022e8c:	9601      	str	r6, [sp, #4]
20022e8e:	f994 406f 	ldrsb.w	r4, [r4, #111]	@ 0x6f
20022e92:	9400      	str	r4, [sp, #0]
20022e94:	f7ff fd9e 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
20022e98:	68eb      	ldr	r3, [r5, #12]
20022e9a:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20022e9e:	4628      	mov	r0, r5
20022ea0:	f7ff fd8d 	bl	200229be <HAL_FLASH_SET_AHB_RCMD>
20022ea4:	2000      	movs	r0, #0
20022ea6:	b004      	add	sp, #16
20022ea8:	bd70      	pop	{r4, r5, r6, pc}
20022eaa:	f894 3046 	ldrb.w	r3, [r4, #70]	@ 0x46
20022eae:	b1bb      	cbz	r3, 20022ee0 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022eb0:	f994 604e 	ldrsb.w	r6, [r4, #78]	@ 0x4e
20022eb4:	f994 304a 	ldrsb.w	r3, [r4, #74]	@ 0x4a
20022eb8:	f994 1048 	ldrsb.w	r1, [r4, #72]	@ 0x48
20022ebc:	f994 2049 	ldrsb.w	r2, [r4, #73]	@ 0x49
20022ec0:	9603      	str	r6, [sp, #12]
20022ec2:	f994 604d 	ldrsb.w	r6, [r4, #77]	@ 0x4d
20022ec6:	9602      	str	r6, [sp, #8]
20022ec8:	f994 604c 	ldrsb.w	r6, [r4, #76]	@ 0x4c
20022ecc:	9601      	str	r6, [sp, #4]
20022ece:	f994 404b 	ldrsb.w	r4, [r4, #75]	@ 0x4b
20022ed2:	9400      	str	r4, [sp, #0]
20022ed4:	f7ff fd7e 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
20022ed8:	68eb      	ldr	r3, [r5, #12]
20022eda:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
20022ede:	e7de      	b.n	20022e9e <HAL_FLASH_CONFIG_AHB_READ+0x42>
20022ee0:	2001      	movs	r0, #1
20022ee2:	e7e0      	b.n	20022ea6 <HAL_FLASH_CONFIG_AHB_READ+0x4a>

20022ee4 <HAL_FLASH_CONFIG_FULL_AHB_READ>:
20022ee4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20022ee6:	4605      	mov	r5, r0
20022ee8:	2800      	cmp	r0, #0
20022eea:	d036      	beq.n	20022f5a <HAL_FLASH_CONFIG_FULL_AHB_READ+0x76>
20022eec:	68c4      	ldr	r4, [r0, #12]
20022eee:	b1e1      	cbz	r1, 20022f2a <HAL_FLASH_CONFIG_FULL_AHB_READ+0x46>
20022ef0:	f994 616e 	ldrsb.w	r6, [r4, #366]	@ 0x16e
20022ef4:	f994 316a 	ldrsb.w	r3, [r4, #362]	@ 0x16a
20022ef8:	f994 1168 	ldrsb.w	r1, [r4, #360]	@ 0x168
20022efc:	f994 2169 	ldrsb.w	r2, [r4, #361]	@ 0x169
20022f00:	9603      	str	r6, [sp, #12]
20022f02:	f994 616d 	ldrsb.w	r6, [r4, #365]	@ 0x16d
20022f06:	9602      	str	r6, [sp, #8]
20022f08:	f994 616c 	ldrsb.w	r6, [r4, #364]	@ 0x16c
20022f0c:	9601      	str	r6, [sp, #4]
20022f0e:	f994 416b 	ldrsb.w	r4, [r4, #363]	@ 0x16b
20022f12:	9400      	str	r4, [sp, #0]
20022f14:	f7ff fd5e 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
20022f18:	68eb      	ldr	r3, [r5, #12]
20022f1a:	f893 1166 	ldrb.w	r1, [r3, #358]	@ 0x166
20022f1e:	4628      	mov	r0, r5
20022f20:	f7ff fd4d 	bl	200229be <HAL_FLASH_SET_AHB_RCMD>
20022f24:	2000      	movs	r0, #0
20022f26:	b004      	add	sp, #16
20022f28:	bd70      	pop	{r4, r5, r6, pc}
20022f2a:	f994 615c 	ldrsb.w	r6, [r4, #348]	@ 0x15c
20022f2e:	f994 3158 	ldrsb.w	r3, [r4, #344]	@ 0x158
20022f32:	f994 1156 	ldrsb.w	r1, [r4, #342]	@ 0x156
20022f36:	f994 2157 	ldrsb.w	r2, [r4, #343]	@ 0x157
20022f3a:	9603      	str	r6, [sp, #12]
20022f3c:	f994 615b 	ldrsb.w	r6, [r4, #347]	@ 0x15b
20022f40:	9602      	str	r6, [sp, #8]
20022f42:	f994 615a 	ldrsb.w	r6, [r4, #346]	@ 0x15a
20022f46:	9601      	str	r6, [sp, #4]
20022f48:	f994 4159 	ldrsb.w	r4, [r4, #345]	@ 0x159
20022f4c:	9400      	str	r4, [sp, #0]
20022f4e:	f7ff fd41 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
20022f52:	68eb      	ldr	r3, [r5, #12]
20022f54:	f893 1154 	ldrb.w	r1, [r3, #340]	@ 0x154
20022f58:	e7e1      	b.n	20022f1e <HAL_FLASH_CONFIG_FULL_AHB_READ+0x3a>
20022f5a:	2001      	movs	r0, #1
20022f5c:	e7e3      	b.n	20022f26 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x42>

20022f5e <HAL_FLASH_PRE_CMD>:
20022f5e:	b530      	push	{r4, r5, lr}
20022f60:	68c4      	ldr	r4, [r0, #12]
20022f62:	b087      	sub	sp, #28
20022f64:	b304      	cbz	r4, 20022fa8 <HAL_FLASH_PRE_CMD+0x4a>
20022f66:	2938      	cmp	r1, #56	@ 0x38
20022f68:	d81e      	bhi.n	20022fa8 <HAL_FLASH_PRE_CMD+0x4a>
20022f6a:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
20022f6e:	440c      	add	r4, r1
20022f70:	7c23      	ldrb	r3, [r4, #16]
20022f72:	b1cb      	cbz	r3, 20022fa8 <HAL_FLASH_PRE_CMD+0x4a>
20022f74:	f994 5018 	ldrsb.w	r5, [r4, #24]
20022f78:	f994 3013 	ldrsb.w	r3, [r4, #19]
20022f7c:	f994 2012 	ldrsb.w	r2, [r4, #18]
20022f80:	f994 1011 	ldrsb.w	r1, [r4, #17]
20022f84:	9504      	str	r5, [sp, #16]
20022f86:	f994 5017 	ldrsb.w	r5, [r4, #23]
20022f8a:	9503      	str	r5, [sp, #12]
20022f8c:	f994 5016 	ldrsb.w	r5, [r4, #22]
20022f90:	9502      	str	r5, [sp, #8]
20022f92:	f994 5015 	ldrsb.w	r5, [r4, #21]
20022f96:	9501      	str	r5, [sp, #4]
20022f98:	f994 4014 	ldrsb.w	r4, [r4, #20]
20022f9c:	9400      	str	r4, [sp, #0]
20022f9e:	f7ff fdd0 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
20022fa2:	2000      	movs	r0, #0
20022fa4:	b007      	add	sp, #28
20022fa6:	bd30      	pop	{r4, r5, pc}
20022fa8:	2001      	movs	r0, #1
20022faa:	e7fb      	b.n	20022fa4 <HAL_FLASH_PRE_CMD+0x46>

20022fac <HAL_FLASH_ISSUE_CMD>:
20022fac:	b5f0      	push	{r4, r5, r6, r7, lr}
20022fae:	68c4      	ldr	r4, [r0, #12]
20022fb0:	4606      	mov	r6, r0
20022fb2:	4617      	mov	r7, r2
20022fb4:	b087      	sub	sp, #28
20022fb6:	b354      	cbz	r4, 2002300e <HAL_FLASH_ISSUE_CMD+0x62>
20022fb8:	2938      	cmp	r1, #56	@ 0x38
20022fba:	d828      	bhi.n	2002300e <HAL_FLASH_ISSUE_CMD+0x62>
20022fbc:	eb01 05c1 	add.w	r5, r1, r1, lsl #3
20022fc0:	442c      	add	r4, r5
20022fc2:	7c23      	ldrb	r3, [r4, #16]
20022fc4:	b31b      	cbz	r3, 2002300e <HAL_FLASH_ISSUE_CMD+0x62>
20022fc6:	f994 c018 	ldrsb.w	ip, [r4, #24]
20022fca:	f994 3013 	ldrsb.w	r3, [r4, #19]
20022fce:	f994 2012 	ldrsb.w	r2, [r4, #18]
20022fd2:	f994 1011 	ldrsb.w	r1, [r4, #17]
20022fd6:	f8cd c010 	str.w	ip, [sp, #16]
20022fda:	f994 c017 	ldrsb.w	ip, [r4, #23]
20022fde:	f8cd c00c 	str.w	ip, [sp, #12]
20022fe2:	f994 c016 	ldrsb.w	ip, [r4, #22]
20022fe6:	f8cd c008 	str.w	ip, [sp, #8]
20022fea:	f994 c015 	ldrsb.w	ip, [r4, #21]
20022fee:	f8cd c004 	str.w	ip, [sp, #4]
20022ff2:	f994 4014 	ldrsb.w	r4, [r4, #20]
20022ff6:	9400      	str	r4, [sp, #0]
20022ff8:	f7ff fda3 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
20022ffc:	68f3      	ldr	r3, [r6, #12]
20022ffe:	463a      	mov	r2, r7
20023000:	442b      	add	r3, r5
20023002:	4630      	mov	r0, r6
20023004:	7c19      	ldrb	r1, [r3, #16]
20023006:	f7ff fd57 	bl	20022ab8 <HAL_FLASH_SET_CMD>
2002300a:	b007      	add	sp, #28
2002300c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002300e:	2001      	movs	r0, #1
20023010:	e7fb      	b.n	2002300a <HAL_FLASH_ISSUE_CMD+0x5e>

20023012 <HAL_FLASH_ISSUE_CMD_SEQ>:
20023012:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20023016:	4690      	mov	r8, r2
20023018:	68c2      	ldr	r2, [r0, #12]
2002301a:	4604      	mov	r4, r0
2002301c:	b086      	sub	sp, #24
2002301e:	2a00      	cmp	r2, #0
20023020:	d072      	beq.n	20023108 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023022:	2938      	cmp	r1, #56	@ 0x38
20023024:	d870      	bhi.n	20023108 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023026:	eb01 07c1 	add.w	r7, r1, r1, lsl #3
2002302a:	19d6      	adds	r6, r2, r7
2002302c:	7c31      	ldrb	r1, [r6, #16]
2002302e:	2900      	cmp	r1, #0
20023030:	d06a      	beq.n	20023108 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023032:	2b38      	cmp	r3, #56	@ 0x38
20023034:	d868      	bhi.n	20023108 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023036:	eb03 05c3 	add.w	r5, r3, r3, lsl #3
2002303a:	442a      	add	r2, r5
2002303c:	7c13      	ldrb	r3, [r2, #16]
2002303e:	2b00      	cmp	r3, #0
20023040:	d062      	beq.n	20023108 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023042:	f996 c018 	ldrsb.w	ip, [r6, #24]
20023046:	f996 3013 	ldrsb.w	r3, [r6, #19]
2002304a:	f996 2012 	ldrsb.w	r2, [r6, #18]
2002304e:	f996 1011 	ldrsb.w	r1, [r6, #17]
20023052:	f8cd c010 	str.w	ip, [sp, #16]
20023056:	f996 c017 	ldrsb.w	ip, [r6, #23]
2002305a:	f8cd c00c 	str.w	ip, [sp, #12]
2002305e:	f996 c016 	ldrsb.w	ip, [r6, #22]
20023062:	f8cd c008 	str.w	ip, [sp, #8]
20023066:	f996 c015 	ldrsb.w	ip, [r6, #21]
2002306a:	f8cd c004 	str.w	ip, [sp, #4]
2002306e:	f996 6014 	ldrsb.w	r6, [r6, #20]
20023072:	9600      	str	r6, [sp, #0]
20023074:	f7ff fd65 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
20023078:	68e0      	ldr	r0, [r4, #12]
2002307a:	4428      	add	r0, r5
2002307c:	f990 6018 	ldrsb.w	r6, [r0, #24]
20023080:	f990 3013 	ldrsb.w	r3, [r0, #19]
20023084:	f990 2012 	ldrsb.w	r2, [r0, #18]
20023088:	f990 1011 	ldrsb.w	r1, [r0, #17]
2002308c:	9604      	str	r6, [sp, #16]
2002308e:	f990 6017 	ldrsb.w	r6, [r0, #23]
20023092:	9603      	str	r6, [sp, #12]
20023094:	f990 6016 	ldrsb.w	r6, [r0, #22]
20023098:	9602      	str	r6, [sp, #8]
2002309a:	f990 6015 	ldrsb.w	r6, [r0, #21]
2002309e:	9601      	str	r6, [sp, #4]
200230a0:	f990 0014 	ldrsb.w	r0, [r0, #20]
200230a4:	9000      	str	r0, [sp, #0]
200230a6:	4620      	mov	r0, r4
200230a8:	f7ff fd6c 	bl	20022b84 <HAL_FLASH_MANUAL_CMD2>
200230ac:	2200      	movs	r2, #0
200230ae:	6823      	ldr	r3, [r4, #0]
200230b0:	2101      	movs	r1, #1
200230b2:	67da      	str	r2, [r3, #124]	@ 0x7c
200230b4:	68e3      	ldr	r3, [r4, #12]
200230b6:	6822      	ldr	r2, [r4, #0]
200230b8:	442b      	add	r3, r5
200230ba:	7c1b      	ldrb	r3, [r3, #16]
200230bc:	4620      	mov	r0, r4
200230be:	62d3      	str	r3, [r2, #44]	@ 0x2c
200230c0:	6823      	ldr	r3, [r4, #0]
200230c2:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
200230c4:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
200230c8:	f7ff fe01 	bl	20022cce <HAL_FLASH_ENABLE_CMD2>
200230cc:	4620      	mov	r0, r4
200230ce:	f7ff fe0c 	bl	20022cea <HAL_FLASH_STAUS_MATCH_CMD2>
200230d2:	6823      	ldr	r3, [r4, #0]
200230d4:	f8c3 801c 	str.w	r8, [r3, #28]
200230d8:	68e3      	ldr	r3, [r4, #12]
200230da:	6822      	ldr	r2, [r4, #0]
200230dc:	443b      	add	r3, r7
200230de:	7c1b      	ldrb	r3, [r3, #16]
200230e0:	6193      	str	r3, [r2, #24]
200230e2:	4620      	mov	r0, r4
200230e4:	f7ff fd0a 	bl	20022afc <HAL_FLASH_STATUS_MATCH>
200230e8:	2800      	cmp	r0, #0
200230ea:	d0fa      	beq.n	200230e2 <HAL_FLASH_ISSUE_CMD_SEQ+0xd0>
200230ec:	2109      	movs	r1, #9
200230ee:	4620      	mov	r0, r4
200230f0:	f7ff fcfe 	bl	20022af0 <HAL_FLASH_CLR_STATUS>
200230f4:	2100      	movs	r1, #0
200230f6:	f7ff fdea 	bl	20022cce <HAL_FLASH_ENABLE_CMD2>
200230fa:	4620      	mov	r0, r4
200230fc:	f7ff fdf5 	bl	20022cea <HAL_FLASH_STAUS_MATCH_CMD2>
20023100:	4608      	mov	r0, r1
20023102:	b006      	add	sp, #24
20023104:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20023108:	2001      	movs	r0, #1
2002310a:	e7fa      	b.n	20023102 <HAL_FLASH_ISSUE_CMD_SEQ+0xf0>

2002310c <nor_qspi_switch>:
2002310c:	b570      	push	{r4, r5, r6, lr}
2002310e:	4604      	mov	r4, r0
20023110:	b3e0      	cbz	r0, 2002318c <nor_qspi_switch+0x80>
20023112:	68c3      	ldr	r3, [r0, #12]
20023114:	b3d3      	cbz	r3, 2002318c <nor_qspi_switch+0x80>
20023116:	b3c9      	cbz	r1, 2002318c <nor_qspi_switch+0x80>
20023118:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
2002311c:	2101      	movs	r1, #1
2002311e:	b3b5      	cbz	r5, 2002318e <nor_qspi_switch+0x82>
20023120:	f7ff fca5 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023124:	2200      	movs	r2, #0
20023126:	2114      	movs	r1, #20
20023128:	4620      	mov	r0, r4
2002312a:	f7ff ff3f 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002312e:	4620      	mov	r0, r4
20023130:	f7ff fcf3 	bl	20022b1a <HAL_FLASH_READ32>
20023134:	f010 0501 	ands.w	r5, r0, #1
20023138:	d000      	beq.n	2002313c <nor_qspi_switch+0x30>
2002313a:	e7fe      	b.n	2002313a <nor_qspi_switch+0x2e>
2002313c:	462a      	mov	r2, r5
2002313e:	2115      	movs	r1, #21
20023140:	4620      	mov	r0, r4
20023142:	f7ff ff33 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023146:	4606      	mov	r6, r0
20023148:	b120      	cbz	r0, 20023154 <nor_qspi_switch+0x48>
2002314a:	462a      	mov	r2, r5
2002314c:	4629      	mov	r1, r5
2002314e:	4620      	mov	r0, r4
20023150:	f7ff ff2c 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023154:	2102      	movs	r1, #2
20023156:	4620      	mov	r0, r4
20023158:	f7ff fc82 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
2002315c:	2101      	movs	r1, #1
2002315e:	4620      	mov	r0, r4
20023160:	f7ff fc85 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023164:	2200      	movs	r2, #0
20023166:	212b      	movs	r1, #43	@ 0x2b
20023168:	4620      	mov	r0, r4
2002316a:	f7ff ff1f 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002316e:	b16e      	cbz	r6, 2002318c <nor_qspi_switch+0x80>
20023170:	2101      	movs	r1, #1
20023172:	4620      	mov	r0, r4
20023174:	f7ff fc7b 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023178:	2200      	movs	r2, #0
2002317a:	2102      	movs	r1, #2
2002317c:	4620      	mov	r0, r4
2002317e:	f7ff ff15 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023182:	4620      	mov	r0, r4
20023184:	f7ff fcc0 	bl	20022b08 <HAL_FLASH_IS_PROG_DONE>
20023188:	2800      	cmp	r0, #0
2002318a:	d0f5      	beq.n	20023178 <nor_qspi_switch+0x6c>
2002318c:	bd70      	pop	{r4, r5, r6, pc}
2002318e:	f7ff fc6e 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023192:	462a      	mov	r2, r5
20023194:	2102      	movs	r1, #2
20023196:	4620      	mov	r0, r4
20023198:	f7ff ff08 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002319c:	4620      	mov	r0, r4
2002319e:	f7ff fcbc 	bl	20022b1a <HAL_FLASH_READ32>
200231a2:	462a      	mov	r2, r5
200231a4:	2114      	movs	r1, #20
200231a6:	4620      	mov	r0, r4
200231a8:	f7ff ff00 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200231ac:	b910      	cbnz	r0, 200231b4 <nor_qspi_switch+0xa8>
200231ae:	4620      	mov	r0, r4
200231b0:	f7ff fcb3 	bl	20022b1a <HAL_FLASH_READ32>
200231b4:	68e3      	ldr	r3, [r4, #12]
200231b6:	7a1b      	ldrb	r3, [r3, #8]
200231b8:	b3ab      	cbz	r3, 20023226 <nor_qspi_switch+0x11a>
200231ba:	2101      	movs	r1, #1
200231bc:	f003 050f 	and.w	r5, r3, #15
200231c0:	091b      	lsrs	r3, r3, #4
200231c2:	fa01 f303 	lsl.w	r3, r1, r3
200231c6:	b2db      	uxtb	r3, r3
200231c8:	b10d      	cbz	r5, 200231ce <nor_qspi_switch+0xc2>
200231ca:	461d      	mov	r5, r3
200231cc:	2300      	movs	r3, #0
200231ce:	2200      	movs	r2, #0
200231d0:	2115      	movs	r1, #21
200231d2:	4620      	mov	r0, r4
200231d4:	ea43 2505 	orr.w	r5, r3, r5, lsl #8
200231d8:	f7ff fee8 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200231dc:	4606      	mov	r6, r0
200231de:	b120      	cbz	r0, 200231ea <nor_qspi_switch+0xde>
200231e0:	2200      	movs	r2, #0
200231e2:	4620      	mov	r0, r4
200231e4:	4611      	mov	r1, r2
200231e6:	f7ff fee1 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200231ea:	4629      	mov	r1, r5
200231ec:	4620      	mov	r0, r4
200231ee:	f7ff fc37 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
200231f2:	2102      	movs	r1, #2
200231f4:	4620      	mov	r0, r4
200231f6:	f7ff fc3a 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200231fa:	2200      	movs	r2, #0
200231fc:	2103      	movs	r1, #3
200231fe:	4620      	mov	r0, r4
20023200:	f7ff fed4 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023204:	2e00      	cmp	r6, #0
20023206:	d0c1      	beq.n	2002318c <nor_qspi_switch+0x80>
20023208:	2101      	movs	r1, #1
2002320a:	4620      	mov	r0, r4
2002320c:	f7ff fc2f 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023210:	2200      	movs	r2, #0
20023212:	2102      	movs	r1, #2
20023214:	4620      	mov	r0, r4
20023216:	f7ff fec9 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002321a:	4620      	mov	r0, r4
2002321c:	f7ff fc74 	bl	20022b08 <HAL_FLASH_IS_PROG_DONE>
20023220:	2800      	cmp	r0, #0
20023222:	d0f5      	beq.n	20023210 <nor_qspi_switch+0x104>
20023224:	e7b2      	b.n	2002318c <nor_qspi_switch+0x80>
20023226:	2502      	movs	r5, #2
20023228:	e7d1      	b.n	200231ce <nor_qspi_switch+0xc2>

2002322a <HAL_FLASH_SET_QUAL_SPI>:
2002322a:	b538      	push	{r3, r4, r5, lr}
2002322c:	4604      	mov	r4, r0
2002322e:	460d      	mov	r5, r1
20023230:	f7ff ff6c 	bl	2002310c <nor_qspi_switch>
20023234:	4629      	mov	r1, r5
20023236:	4620      	mov	r0, r4
20023238:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002323c:	f7ff be0e 	b.w	20022e5c <HAL_FLASH_CONFIG_AHB_READ>

20023240 <HAL_FLASH_FADDR_SET_QSPI>:
20023240:	b538      	push	{r3, r4, r5, lr}
20023242:	4604      	mov	r4, r0
20023244:	460d      	mov	r5, r1
20023246:	f7ff ff61 	bl	2002310c <nor_qspi_switch>
2002324a:	4629      	mov	r1, r5
2002324c:	4620      	mov	r0, r4
2002324e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023252:	f7ff be47 	b.w	20022ee4 <HAL_FLASH_CONFIG_FULL_AHB_READ>

20023256 <HAL_FLASH_GET_NOR_ID>:
20023256:	b510      	push	{r4, lr}
20023258:	4604      	mov	r4, r0
2002325a:	b140      	cbz	r0, 2002326e <HAL_FLASH_GET_NOR_ID+0x18>
2002325c:	6802      	ldr	r2, [r0, #0]
2002325e:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20023260:	f36f 0315 	bfc	r3, #0, #22
20023264:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
20023268:	f043 0301 	orr.w	r3, r3, #1
2002326c:	6293      	str	r3, [r2, #40]	@ 0x28
2002326e:	2103      	movs	r1, #3
20023270:	4620      	mov	r0, r4
20023272:	f7ff fbfc 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023276:	2200      	movs	r2, #0
20023278:	219f      	movs	r1, #159	@ 0x9f
2002327a:	4620      	mov	r0, r4
2002327c:	f7ff fc1c 	bl	20022ab8 <HAL_FLASH_SET_CMD>
20023280:	4620      	mov	r0, r4
20023282:	f7ff fc4a 	bl	20022b1a <HAL_FLASH_READ32>
20023286:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002328a:	bd10      	pop	{r4, pc}

2002328c <HAL_FLASH_CLR_PROTECT>:
2002328c:	b570      	push	{r4, r5, r6, lr}
2002328e:	4604      	mov	r4, r0
20023290:	2800      	cmp	r0, #0
20023292:	d03e      	beq.n	20023312 <HAL_FLASH_CLR_PROTECT+0x86>
20023294:	68c3      	ldr	r3, [r0, #12]
20023296:	2101      	movs	r1, #1
20023298:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
2002329c:	2d00      	cmp	r5, #0
2002329e:	d03b      	beq.n	20023318 <HAL_FLASH_CLR_PROTECT+0x8c>
200232a0:	f7ff fbe5 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200232a4:	2200      	movs	r2, #0
200232a6:	2102      	movs	r1, #2
200232a8:	4620      	mov	r0, r4
200232aa:	f7ff fe7f 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200232ae:	bb88      	cbnz	r0, 20023314 <HAL_FLASH_CLR_PROTECT+0x88>
200232b0:	4620      	mov	r0, r4
200232b2:	f7ff fc32 	bl	20022b1a <HAL_FLASH_READ32>
200232b6:	b2c0      	uxtb	r0, r0
200232b8:	68e3      	ldr	r3, [r4, #12]
200232ba:	79dd      	ldrb	r5, [r3, #7]
200232bc:	b10d      	cbz	r5, 200232c2 <HAL_FLASH_CLR_PROTECT+0x36>
200232be:	ea20 0505 	bic.w	r5, r0, r5
200232c2:	2200      	movs	r2, #0
200232c4:	2115      	movs	r1, #21
200232c6:	4620      	mov	r0, r4
200232c8:	f7ff fe70 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200232cc:	4606      	mov	r6, r0
200232ce:	b120      	cbz	r0, 200232da <HAL_FLASH_CLR_PROTECT+0x4e>
200232d0:	2200      	movs	r2, #0
200232d2:	4620      	mov	r0, r4
200232d4:	4611      	mov	r1, r2
200232d6:	f7ff fe69 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200232da:	4629      	mov	r1, r5
200232dc:	4620      	mov	r0, r4
200232de:	f7ff fbbf 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
200232e2:	2101      	movs	r1, #1
200232e4:	4620      	mov	r0, r4
200232e6:	f7ff fbc2 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200232ea:	2200      	movs	r2, #0
200232ec:	2103      	movs	r1, #3
200232ee:	4620      	mov	r0, r4
200232f0:	f7ff fe5c 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200232f4:	b16e      	cbz	r6, 20023312 <HAL_FLASH_CLR_PROTECT+0x86>
200232f6:	2101      	movs	r1, #1
200232f8:	4620      	mov	r0, r4
200232fa:	f7ff fbb8 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200232fe:	2200      	movs	r2, #0
20023300:	2102      	movs	r1, #2
20023302:	4620      	mov	r0, r4
20023304:	f7ff fe52 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023308:	4620      	mov	r0, r4
2002330a:	f7ff fbfd 	bl	20022b08 <HAL_FLASH_IS_PROG_DONE>
2002330e:	2800      	cmp	r0, #0
20023310:	d0f5      	beq.n	200232fe <HAL_FLASH_CLR_PROTECT+0x72>
20023312:	bd70      	pop	{r4, r5, r6, pc}
20023314:	2000      	movs	r0, #0
20023316:	e7cf      	b.n	200232b8 <HAL_FLASH_CLR_PROTECT+0x2c>
20023318:	f7ff fba9 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
2002331c:	462a      	mov	r2, r5
2002331e:	2102      	movs	r1, #2
20023320:	4620      	mov	r0, r4
20023322:	f7ff fe43 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023326:	2800      	cmp	r0, #0
20023328:	d13e      	bne.n	200233a8 <HAL_FLASH_CLR_PROTECT+0x11c>
2002332a:	4620      	mov	r0, r4
2002332c:	f7ff fbf5 	bl	20022b1a <HAL_FLASH_READ32>
20023330:	b2c6      	uxtb	r6, r0
20023332:	2200      	movs	r2, #0
20023334:	2114      	movs	r1, #20
20023336:	4620      	mov	r0, r4
20023338:	f7ff fe38 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002333c:	b918      	cbnz	r0, 20023346 <HAL_FLASH_CLR_PROTECT+0xba>
2002333e:	4620      	mov	r0, r4
20023340:	f7ff fbeb 	bl	20022b1a <HAL_FLASH_READ32>
20023344:	b2c5      	uxtb	r5, r0
20023346:	68e3      	ldr	r3, [r4, #12]
20023348:	79d9      	ldrb	r1, [r3, #7]
2002334a:	b109      	cbz	r1, 20023350 <HAL_FLASH_CLR_PROTECT+0xc4>
2002334c:	ea26 0101 	bic.w	r1, r6, r1
20023350:	2200      	movs	r2, #0
20023352:	4620      	mov	r0, r4
20023354:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
20023358:	2115      	movs	r1, #21
2002335a:	f7ff fe27 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002335e:	4606      	mov	r6, r0
20023360:	b120      	cbz	r0, 2002336c <HAL_FLASH_CLR_PROTECT+0xe0>
20023362:	2200      	movs	r2, #0
20023364:	4620      	mov	r0, r4
20023366:	4611      	mov	r1, r2
20023368:	f7ff fe20 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002336c:	4629      	mov	r1, r5
2002336e:	4620      	mov	r0, r4
20023370:	f7ff fb76 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
20023374:	2102      	movs	r1, #2
20023376:	4620      	mov	r0, r4
20023378:	f7ff fb79 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
2002337c:	2200      	movs	r2, #0
2002337e:	2103      	movs	r1, #3
20023380:	4620      	mov	r0, r4
20023382:	f7ff fe13 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023386:	2e00      	cmp	r6, #0
20023388:	d0c3      	beq.n	20023312 <HAL_FLASH_CLR_PROTECT+0x86>
2002338a:	2101      	movs	r1, #1
2002338c:	4620      	mov	r0, r4
2002338e:	f7ff fb6e 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023392:	2200      	movs	r2, #0
20023394:	2102      	movs	r1, #2
20023396:	4620      	mov	r0, r4
20023398:	f7ff fe08 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002339c:	4620      	mov	r0, r4
2002339e:	f7ff fbb3 	bl	20022b08 <HAL_FLASH_IS_PROG_DONE>
200233a2:	2800      	cmp	r0, #0
200233a4:	d0f5      	beq.n	20023392 <HAL_FLASH_CLR_PROTECT+0x106>
200233a6:	e7b4      	b.n	20023312 <HAL_FLASH_CLR_PROTECT+0x86>
200233a8:	462e      	mov	r6, r5
200233aa:	e7c2      	b.n	20023332 <HAL_FLASH_CLR_PROTECT+0xa6>

200233ac <HAL_QSPI_SET_CLK_INV>:
200233ac:	b160      	cbz	r0, 200233c8 <HAL_QSPI_SET_CLK_INV+0x1c>
200233ae:	6800      	ldr	r0, [r0, #0]
200233b0:	b150      	cbz	r0, 200233c8 <HAL_QSPI_SET_CLK_INV+0x1c>
200233b2:	6d83      	ldr	r3, [r0, #88]	@ 0x58
200233b4:	0609      	lsls	r1, r1, #24
200233b6:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
200233ba:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
200233be:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
200233c2:	4311      	orrs	r1, r2
200233c4:	4319      	orrs	r1, r3
200233c6:	6581      	str	r1, [r0, #88]	@ 0x58
200233c8:	4770      	bx	lr

200233ca <HAL_FLASH_RELEASE_DPD>:
200233ca:	b538      	push	{r3, r4, r5, lr}
200233cc:	4604      	mov	r4, r0
200233ce:	b1d0      	cbz	r0, 20023406 <HAL_FLASH_RELEASE_DPD+0x3c>
200233d0:	6803      	ldr	r3, [r0, #0]
200233d2:	21ab      	movs	r1, #171	@ 0xab
200233d4:	681d      	ldr	r5, [r3, #0]
200233d6:	f015 0501 	ands.w	r5, r5, #1
200233da:	bf02      	ittt	eq
200233dc:	681a      	ldreq	r2, [r3, #0]
200233de:	f042 0201 	orreq.w	r2, r2, #1
200233e2:	601a      	streq	r2, [r3, #0]
200233e4:	6802      	ldr	r2, [r0, #0]
200233e6:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200233e8:	f36f 0315 	bfc	r3, #0, #22
200233ec:	f043 0301 	orr.w	r3, r3, #1
200233f0:	6293      	str	r3, [r2, #40]	@ 0x28
200233f2:	2200      	movs	r2, #0
200233f4:	f7ff fb60 	bl	20022ab8 <HAL_FLASH_SET_CMD>
200233f8:	b925      	cbnz	r5, 20023404 <HAL_FLASH_RELEASE_DPD+0x3a>
200233fa:	6822      	ldr	r2, [r4, #0]
200233fc:	6813      	ldr	r3, [r2, #0]
200233fe:	f023 0301 	bic.w	r3, r3, #1
20023402:	6013      	str	r3, [r2, #0]
20023404:	bd38      	pop	{r3, r4, r5, pc}
20023406:	2001      	movs	r0, #1
20023408:	e7fc      	b.n	20023404 <HAL_FLASH_RELEASE_DPD+0x3a>

2002340a <flash_handle_valid>:
2002340a:	b118      	cbz	r0, 20023414 <flash_handle_valid+0xa>
2002340c:	68c0      	ldr	r0, [r0, #12]
2002340e:	3800      	subs	r0, #0
20023410:	bf18      	it	ne
20023412:	2001      	movne	r0, #1
20023414:	4770      	bx	lr

20023416 <HAL_GET_FLASH_MID>:
20023416:	2000      	movs	r0, #0
20023418:	4770      	bx	lr

2002341a <HAL_FLASH_DMA_START>:
2002341a:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002341e:	4688      	mov	r8, r1
20023420:	4699      	mov	r9, r3
20023422:	4604      	mov	r4, r0
20023424:	2800      	cmp	r0, #0
20023426:	d045      	beq.n	200234b4 <HAL_FLASH_DMA_START+0x9a>
20023428:	6883      	ldr	r3, [r0, #8]
2002342a:	2b00      	cmp	r3, #0
2002342c:	d042      	beq.n	200234b4 <HAL_FLASH_DMA_START+0x9a>
2002342e:	f1b9 0f00 	cmp.w	r9, #0
20023432:	d03f      	beq.n	200234b4 <HAL_FLASH_DMA_START+0x9a>
20023434:	6801      	ldr	r1, [r0, #0]
20023436:	680f      	ldr	r7, [r1, #0]
20023438:	b332      	cbz	r2, 20023488 <HAL_FLASH_DMA_START+0x6e>
2002343a:	2210      	movs	r2, #16
2002343c:	609a      	str	r2, [r3, #8]
2002343e:	2300      	movs	r3, #0
20023440:	6882      	ldr	r2, [r0, #8]
20023442:	464e      	mov	r6, r9
20023444:	6153      	str	r3, [r2, #20]
20023446:	6882      	ldr	r2, [r0, #8]
20023448:	6193      	str	r3, [r2, #24]
2002344a:	6882      	ldr	r2, [r0, #8]
2002344c:	60d3      	str	r3, [r2, #12]
2002344e:	2280      	movs	r2, #128	@ 0x80
20023450:	6883      	ldr	r3, [r0, #8]
20023452:	611a      	str	r2, [r3, #16]
20023454:	6805      	ldr	r5, [r0, #0]
20023456:	3504      	adds	r5, #4
20023458:	68a0      	ldr	r0, [r4, #8]
2002345a:	f7fe ff97 	bl	2002238c <HAL_DMA_DeInit>
2002345e:	bb50      	cbnz	r0, 200234b6 <HAL_FLASH_DMA_START+0x9c>
20023460:	68a0      	ldr	r0, [r4, #8]
20023462:	f7fe ff2f 	bl	200222c4 <HAL_DMA_Init>
20023466:	bb30      	cbnz	r0, 200234b6 <HAL_FLASH_DMA_START+0x9c>
20023468:	6823      	ldr	r3, [r4, #0]
2002346a:	f047 0720 	orr.w	r7, r7, #32
2002346e:	601f      	str	r7, [r3, #0]
20023470:	6822      	ldr	r2, [r4, #0]
20023472:	f109 33ff 	add.w	r3, r9, #4294967295
20023476:	6253      	str	r3, [r2, #36]	@ 0x24
20023478:	4641      	mov	r1, r8
2002347a:	4633      	mov	r3, r6
2002347c:	462a      	mov	r2, r5
2002347e:	68a0      	ldr	r0, [r4, #8]
20023480:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20023484:	f7ff b8e0 	b.w	20022648 <HAL_DMA_Start>
20023488:	f44f 7100 	mov.w	r1, #512	@ 0x200
2002348c:	609a      	str	r2, [r3, #8]
2002348e:	6883      	ldr	r3, [r0, #8]
20023490:	f109 0603 	add.w	r6, r9, #3
20023494:	6159      	str	r1, [r3, #20]
20023496:	f44f 6100 	mov.w	r1, #2048	@ 0x800
2002349a:	6883      	ldr	r3, [r0, #8]
2002349c:	4645      	mov	r5, r8
2002349e:	6199      	str	r1, [r3, #24]
200234a0:	6883      	ldr	r3, [r0, #8]
200234a2:	08b6      	lsrs	r6, r6, #2
200234a4:	60da      	str	r2, [r3, #12]
200234a6:	2280      	movs	r2, #128	@ 0x80
200234a8:	6883      	ldr	r3, [r0, #8]
200234aa:	611a      	str	r2, [r3, #16]
200234ac:	6803      	ldr	r3, [r0, #0]
200234ae:	f103 0804 	add.w	r8, r3, #4
200234b2:	e7d1      	b.n	20023458 <HAL_FLASH_DMA_START+0x3e>
200234b4:	2001      	movs	r0, #1
200234b6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

200234ba <HAL_FLASH_DMA_WAIT_DONE>:
200234ba:	b510      	push	{r4, lr}
200234bc:	460a      	mov	r2, r1
200234be:	4604      	mov	r4, r0
200234c0:	b170      	cbz	r0, 200234e0 <HAL_FLASH_DMA_WAIT_DONE+0x26>
200234c2:	6880      	ldr	r0, [r0, #8]
200234c4:	b160      	cbz	r0, 200234e0 <HAL_FLASH_DMA_WAIT_DONE+0x26>
200234c6:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
200234c8:	b111      	cbz	r1, 200234d0 <HAL_FLASH_DMA_WAIT_DONE+0x16>
200234ca:	f04f 32ff 	mov.w	r2, #4294967295
200234ce:	2100      	movs	r1, #0
200234d0:	f7fe ffbc 	bl	2002244c <HAL_DMA_PollForTransfer>
200234d4:	6822      	ldr	r2, [r4, #0]
200234d6:	6813      	ldr	r3, [r2, #0]
200234d8:	f023 0320 	bic.w	r3, r3, #32
200234dc:	6013      	str	r3, [r2, #0]
200234de:	bd10      	pop	{r4, pc}
200234e0:	2001      	movs	r0, #1
200234e2:	e7fc      	b.n	200234de <HAL_FLASH_DMA_WAIT_DONE+0x24>

200234e4 <HAL_FLASH_ALIAS_CFG>:
200234e4:	b538      	push	{r3, r4, r5, lr}
200234e6:	461d      	mov	r5, r3
200234e8:	4604      	mov	r4, r0
200234ea:	b158      	cbz	r0, 20023504 <HAL_FLASH_ALIAS_CFG+0x20>
200234ec:	6903      	ldr	r3, [r0, #16]
200234ee:	428b      	cmp	r3, r1
200234f0:	bf98      	it	ls
200234f2:	1ac9      	subls	r1, r1, r3
200234f4:	f7ff fb68 	bl	20022bc8 <HAL_FLASH_SET_ALIAS_RANGE>
200234f8:	4629      	mov	r1, r5
200234fa:	4620      	mov	r0, r4
200234fc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023500:	f7ff bb74 	b.w	20022bec <HAL_FLASH_SET_ALIAS_OFFSET>
20023504:	bd38      	pop	{r3, r4, r5, pc}

20023506 <HAL_FLASH_NONCE_CFG>:
20023506:	b570      	push	{r4, r5, r6, lr}
20023508:	460c      	mov	r4, r1
2002350a:	4615      	mov	r5, r2
2002350c:	4619      	mov	r1, r3
2002350e:	4606      	mov	r6, r0
20023510:	b180      	cbz	r0, 20023534 <HAL_FLASH_NONCE_CFG+0x2e>
20023512:	b17b      	cbz	r3, 20023534 <HAL_FLASH_NONCE_CFG+0x2e>
20023514:	f7ff fb86 	bl	20022c24 <HAL_FLASH_SET_NONCE>
20023518:	6933      	ldr	r3, [r6, #16]
2002351a:	4630      	mov	r0, r6
2002351c:	42a3      	cmp	r3, r4
2002351e:	bf98      	it	ls
20023520:	1ae4      	subls	r4, r4, r3
20023522:	42ab      	cmp	r3, r5
20023524:	bf98      	it	ls
20023526:	1aed      	subls	r5, r5, r3
20023528:	462a      	mov	r2, r5
2002352a:	4621      	mov	r1, r4
2002352c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
20023530:	f7ff bb66 	b.w	20022c00 <HAL_FLASH_SET_CTR>
20023534:	bd70      	pop	{r4, r5, r6, pc}

20023536 <HAL_FLASH_AES_CFG>:
20023536:	b510      	push	{r4, lr}
20023538:	4604      	mov	r4, r0
2002353a:	b148      	cbz	r0, 20023550 <HAL_FLASH_AES_CFG+0x1a>
2002353c:	b101      	cbz	r1, 20023540 <HAL_FLASH_AES_CFG+0xa>
2002353e:	2101      	movs	r1, #1
20023540:	f7ff fb7e 	bl	20022c40 <HAL_FLASH_SET_AES>
20023544:	4620      	mov	r0, r4
20023546:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002354a:	2101      	movs	r1, #1
2002354c:	f7ff bb87 	b.w	20022c5e <HAL_FLASH_ENABLE_AES>
20023550:	bd10      	pop	{r4, pc}

20023552 <nand_read_id>:
20023552:	b510      	push	{r4, lr}
20023554:	460b      	mov	r3, r1
20023556:	4604      	mov	r4, r0
20023558:	b086      	sub	sp, #24
2002355a:	b320      	cbz	r0, 200235a6 <nand_read_id+0x54>
2002355c:	2908      	cmp	r1, #8
2002355e:	f04f 0100 	mov.w	r1, #0
20023562:	f04f 0201 	mov.w	r2, #1
20023566:	bf83      	ittte	hi
20023568:	460b      	movhi	r3, r1
2002356a:	e9cd 1202 	strdhi	r1, r2, [sp, #8]
2002356e:	e9cd 1100 	strdhi	r1, r1, [sp]
20023572:	e9cd 1102 	strdls	r1, r1, [sp, #8]
20023576:	bf8e      	itee	hi
20023578:	4619      	movhi	r1, r3
2002357a:	e9cd 1100 	strdls	r1, r1, [sp]
2002357e:	b25b      	sxtbls	r3, r3
20023580:	9204      	str	r2, [sp, #16]
20023582:	f7ff fade 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
20023586:	2103      	movs	r1, #3
20023588:	4620      	mov	r0, r4
2002358a:	f7ff fa70 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
2002358e:	2200      	movs	r2, #0
20023590:	219f      	movs	r1, #159	@ 0x9f
20023592:	4620      	mov	r0, r4
20023594:	f7ff fa90 	bl	20022ab8 <HAL_FLASH_SET_CMD>
20023598:	4620      	mov	r0, r4
2002359a:	f7ff fabe 	bl	20022b1a <HAL_FLASH_READ32>
2002359e:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
200235a2:	b006      	add	sp, #24
200235a4:	bd10      	pop	{r4, pc}
200235a6:	20ff      	movs	r0, #255	@ 0xff
200235a8:	e7fb      	b.n	200235a2 <nand_read_id+0x50>

200235aa <HAL_NAND_CONF_ECC>:
200235aa:	b538      	push	{r3, r4, r5, lr}
200235ac:	460d      	mov	r5, r1
200235ae:	4604      	mov	r4, r0
200235b0:	b398      	cbz	r0, 2002361a <HAL_NAND_CONF_ECC+0x70>
200235b2:	68c3      	ldr	r3, [r0, #12]
200235b4:	b38b      	cbz	r3, 2002361a <HAL_NAND_CONF_ECC+0x70>
200235b6:	799a      	ldrb	r2, [r3, #6]
200235b8:	b392      	cbz	r2, 20023620 <HAL_NAND_CONF_ECC+0x76>
200235ba:	7a9b      	ldrb	r3, [r3, #10]
200235bc:	b383      	cbz	r3, 20023620 <HAL_NAND_CONF_ECC+0x76>
200235be:	2101      	movs	r1, #1
200235c0:	f7ff fa55 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200235c4:	68e3      	ldr	r3, [r4, #12]
200235c6:	2102      	movs	r1, #2
200235c8:	799a      	ldrb	r2, [r3, #6]
200235ca:	4620      	mov	r0, r4
200235cc:	f7ff fcee 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200235d0:	4620      	mov	r0, r4
200235d2:	f7ff faa2 	bl	20022b1a <HAL_FLASH_READ32>
200235d6:	68e3      	ldr	r3, [r4, #12]
200235d8:	7a9b      	ldrb	r3, [r3, #10]
200235da:	b1dd      	cbz	r5, 20023614 <HAL_NAND_CONF_ECC+0x6a>
200235dc:	ea43 0100 	orr.w	r1, r3, r0
200235e0:	4620      	mov	r0, r4
200235e2:	f7ff fa3d 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
200235e6:	2101      	movs	r1, #1
200235e8:	4620      	mov	r0, r4
200235ea:	f7ff fa40 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200235ee:	68e3      	ldr	r3, [r4, #12]
200235f0:	2103      	movs	r1, #3
200235f2:	799a      	ldrb	r2, [r3, #6]
200235f4:	4620      	mov	r0, r4
200235f6:	f7ff fcd9 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200235fa:	68e3      	ldr	r3, [r4, #12]
200235fc:	f884 5025 	strb.w	r5, [r4, #37]	@ 0x25
20023600:	2102      	movs	r1, #2
20023602:	799a      	ldrb	r2, [r3, #6]
20023604:	4620      	mov	r0, r4
20023606:	f7ff fcd1 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002360a:	4620      	mov	r0, r4
2002360c:	f7ff fa85 	bl	20022b1a <HAL_FLASH_READ32>
20023610:	2000      	movs	r0, #0
20023612:	bd38      	pop	{r3, r4, r5, pc}
20023614:	ea20 0103 	bic.w	r1, r0, r3
20023618:	e7e2      	b.n	200235e0 <HAL_NAND_CONF_ECC+0x36>
2002361a:	f04f 30ff 	mov.w	r0, #4294967295
2002361e:	e7f8      	b.n	20023612 <HAL_NAND_CONF_ECC+0x68>
20023620:	f06f 0001 	mvn.w	r0, #1
20023624:	e7f5      	b.n	20023612 <HAL_NAND_CONF_ECC+0x68>

20023626 <HAL_NAND_GET_ECC_STATUS>:
20023626:	b510      	push	{r4, lr}
20023628:	4604      	mov	r4, r0
2002362a:	b320      	cbz	r0, 20023676 <HAL_NAND_GET_ECC_STATUS+0x50>
2002362c:	68c2      	ldr	r2, [r0, #12]
2002362e:	b31a      	cbz	r2, 20023678 <HAL_NAND_GET_ECC_STATUS+0x52>
20023630:	7913      	ldrb	r3, [r2, #4]
20023632:	b31b      	cbz	r3, 2002367c <HAL_NAND_GET_ECC_STATUS+0x56>
20023634:	79d3      	ldrb	r3, [r2, #7]
20023636:	b30b      	cbz	r3, 2002367c <HAL_NAND_GET_ECC_STATUS+0x56>
20023638:	2101      	movs	r1, #1
2002363a:	f7ff fa18 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
2002363e:	68e3      	ldr	r3, [r4, #12]
20023640:	2102      	movs	r1, #2
20023642:	791a      	ldrb	r2, [r3, #4]
20023644:	4620      	mov	r0, r4
20023646:	f7ff fcb1 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002364a:	4620      	mov	r0, r4
2002364c:	f7ff fa65 	bl	20022b1a <HAL_FLASH_READ32>
20023650:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
20023654:	2a3f      	cmp	r2, #63	@ 0x3f
20023656:	ea4f 1312 	mov.w	r3, r2, lsr #4
2002365a:	d804      	bhi.n	20023666 <HAL_NAND_GET_ECC_STATUS+0x40>
2002365c:	2b01      	cmp	r3, #1
2002365e:	d808      	bhi.n	20023672 <HAL_NAND_GET_ECC_STATUS+0x4c>
20023660:	f000 0030 	and.w	r0, r0, #48	@ 0x30
20023664:	e007      	b.n	20023676 <HAL_NAND_GET_ECC_STATUS+0x50>
20023666:	3b04      	subs	r3, #4
20023668:	2b01      	cmp	r3, #1
2002366a:	d8f9      	bhi.n	20023660 <HAL_NAND_GET_ECC_STATUS+0x3a>
2002366c:	f000 00f0 	and.w	r0, r0, #240	@ 0xf0
20023670:	e001      	b.n	20023676 <HAL_NAND_GET_ECC_STATUS+0x50>
20023672:	f000 0070 	and.w	r0, r0, #112	@ 0x70
20023676:	bd10      	pop	{r4, pc}
20023678:	4610      	mov	r0, r2
2002367a:	e7fc      	b.n	20023676 <HAL_NAND_GET_ECC_STATUS+0x50>
2002367c:	4618      	mov	r0, r3
2002367e:	e7fa      	b.n	20023676 <HAL_NAND_GET_ECC_STATUS+0x50>

20023680 <HAL_NAND_CHECK_ECC>:
20023680:	4603      	mov	r3, r0
20023682:	1108      	asrs	r0, r1, #4
20023684:	b172      	cbz	r2, 200236a4 <HAL_NAND_CHECK_ECC+0x24>
20023686:	2b07      	cmp	r3, #7
20023688:	d80c      	bhi.n	200236a4 <HAL_NAND_CHECK_ECC+0x24>
2002368a:	e8df f003 	tbb	[pc, r3]
2002368e:	0d04      	.short	0x0d04
20023690:	3f352e18 	.word	0x3f352e18
20023694:	4c47      	.short	0x4c47
20023696:	b128      	cbz	r0, 200236a4 <HAL_NAND_CHECK_ECC+0x24>
20023698:	2801      	cmp	r0, #1
2002369a:	6813      	ldr	r3, [r2, #0]
2002369c:	d10a      	bne.n	200236b4 <HAL_NAND_CHECK_ECC+0x34>
2002369e:	f043 0301 	orr.w	r3, r3, #1
200236a2:	6013      	str	r3, [r2, #0]
200236a4:	2000      	movs	r0, #0
200236a6:	4770      	bx	lr
200236a8:	f020 0302 	bic.w	r3, r0, #2
200236ac:	2b01      	cmp	r3, #1
200236ae:	d003      	beq.n	200236b8 <HAL_NAND_CHECK_ECC+0x38>
200236b0:	b1d0      	cbz	r0, 200236e8 <HAL_NAND_CHECK_ECC+0x68>
200236b2:	6813      	ldr	r3, [r2, #0]
200236b4:	4303      	orrs	r3, r0
200236b6:	e016      	b.n	200236e6 <HAL_NAND_CHECK_ECC+0x66>
200236b8:	6813      	ldr	r3, [r2, #0]
200236ba:	4303      	orrs	r3, r0
200236bc:	e7f1      	b.n	200236a2 <HAL_NAND_CHECK_ECC+0x22>
200236be:	2805      	cmp	r0, #5
200236c0:	d8f7      	bhi.n	200236b2 <HAL_NAND_CHECK_ECC+0x32>
200236c2:	a301      	add	r3, pc, #4	@ (adr r3, 200236c8 <HAL_NAND_CHECK_ECC+0x48>)
200236c4:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
200236c8:	200236a5 	.word	0x200236a5
200236cc:	200236b9 	.word	0x200236b9
200236d0:	200236e1 	.word	0x200236e1
200236d4:	200236b9 	.word	0x200236b9
200236d8:	200236b3 	.word	0x200236b3
200236dc:	200236b9 	.word	0x200236b9
200236e0:	6813      	ldr	r3, [r2, #0]
200236e2:	f043 0302 	orr.w	r3, r3, #2
200236e6:	6013      	str	r3, [r2, #0]
200236e8:	4770      	bx	lr
200236ea:	2800      	cmp	r0, #0
200236ec:	d0da      	beq.n	200236a4 <HAL_NAND_CHECK_ECC+0x24>
200236ee:	1e43      	subs	r3, r0, #1
200236f0:	2b05      	cmp	r3, #5
200236f2:	6813      	ldr	r3, [r2, #0]
200236f4:	d9e1      	bls.n	200236ba <HAL_NAND_CHECK_ECC+0x3a>
200236f6:	e7dd      	b.n	200236b4 <HAL_NAND_CHECK_ECC+0x34>
200236f8:	07c3      	lsls	r3, r0, #31
200236fa:	f000 0103 	and.w	r1, r0, #3
200236fe:	d402      	bmi.n	20023706 <HAL_NAND_CHECK_ECC+0x86>
20023700:	2900      	cmp	r1, #0
20023702:	d0cf      	beq.n	200236a4 <HAL_NAND_CHECK_ECC+0x24>
20023704:	e7d5      	b.n	200236b2 <HAL_NAND_CHECK_ECC+0x32>
20023706:	6813      	ldr	r3, [r2, #0]
20023708:	430b      	orrs	r3, r1
2002370a:	e7ca      	b.n	200236a2 <HAL_NAND_CHECK_ECC+0x22>
2002370c:	2800      	cmp	r0, #0
2002370e:	d0c9      	beq.n	200236a4 <HAL_NAND_CHECK_ECC+0x24>
20023710:	6813      	ldr	r3, [r2, #0]
20023712:	2808      	cmp	r0, #8
20023714:	ea43 0300 	orr.w	r3, r3, r0
20023718:	dce5      	bgt.n	200236e6 <HAL_NAND_CHECK_ECC+0x66>
2002371a:	e7c2      	b.n	200236a2 <HAL_NAND_CHECK_ECC+0x22>
2002371c:	2800      	cmp	r0, #0
2002371e:	d0c1      	beq.n	200236a4 <HAL_NAND_CHECK_ECC+0x24>
20023720:	1e43      	subs	r3, r0, #1
20023722:	2b01      	cmp	r3, #1
20023724:	e7e5      	b.n	200236f2 <HAL_NAND_CHECK_ECC+0x72>
20023726:	2800      	cmp	r0, #0
20023728:	d0bc      	beq.n	200236a4 <HAL_NAND_CHECK_ECC+0x24>
2002372a:	1e43      	subs	r3, r0, #1
2002372c:	2b02      	cmp	r3, #2
2002372e:	e7e0      	b.n	200236f2 <HAL_NAND_CHECK_ECC+0x72>

20023730 <HAL_NAND_GET_ECC_RESULT>:
20023730:	b510      	push	{r4, lr}
20023732:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
20023736:	4604      	mov	r4, r0
20023738:	b183      	cbz	r3, 2002375c <HAL_NAND_GET_ECC_RESULT+0x2c>
2002373a:	f7ff ff74 	bl	20023626 <HAL_NAND_GET_ECC_STATUS>
2002373e:	4601      	mov	r1, r0
20023740:	b160      	cbz	r0, 2002375c <HAL_NAND_GET_ECC_RESULT+0x2c>
20023742:	4622      	mov	r2, r4
20023744:	6863      	ldr	r3, [r4, #4]
20023746:	f443 4300 	orr.w	r3, r3, #32768	@ 0x8000
2002374a:	f842 3f04 	str.w	r3, [r2, #4]!
2002374e:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
20023752:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20023756:	0900      	lsrs	r0, r0, #4
20023758:	f7ff bf92 	b.w	20023680 <HAL_NAND_CHECK_ECC>
2002375c:	2000      	movs	r0, #0
2002375e:	bd10      	pop	{r4, pc}

20023760 <HAL_NAND_EN_QUAL>:
20023760:	b538      	push	{r3, r4, r5, lr}
20023762:	460d      	mov	r5, r1
20023764:	4604      	mov	r4, r0
20023766:	b348      	cbz	r0, 200237bc <HAL_NAND_EN_QUAL+0x5c>
20023768:	68c3      	ldr	r3, [r0, #12]
2002376a:	b33b      	cbz	r3, 200237bc <HAL_NAND_EN_QUAL+0x5c>
2002376c:	799a      	ldrb	r2, [r3, #6]
2002376e:	b10a      	cbz	r2, 20023774 <HAL_NAND_EN_QUAL+0x14>
20023770:	7a1b      	ldrb	r3, [r3, #8]
20023772:	b90b      	cbnz	r3, 20023778 <HAL_NAND_EN_QUAL+0x18>
20023774:	2000      	movs	r0, #0
20023776:	bd38      	pop	{r3, r4, r5, pc}
20023778:	2101      	movs	r1, #1
2002377a:	f7ff f978 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
2002377e:	68e3      	ldr	r3, [r4, #12]
20023780:	2102      	movs	r1, #2
20023782:	799a      	ldrb	r2, [r3, #6]
20023784:	4620      	mov	r0, r4
20023786:	f7ff fc11 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
2002378a:	4620      	mov	r0, r4
2002378c:	f7ff f9c5 	bl	20022b1a <HAL_FLASH_READ32>
20023790:	68e3      	ldr	r3, [r4, #12]
20023792:	7a1b      	ldrb	r3, [r3, #8]
20023794:	b17d      	cbz	r5, 200237b6 <HAL_NAND_EN_QUAL+0x56>
20023796:	ea43 0100 	orr.w	r1, r3, r0
2002379a:	4620      	mov	r0, r4
2002379c:	f7ff f960 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
200237a0:	2101      	movs	r1, #1
200237a2:	4620      	mov	r0, r4
200237a4:	f7ff f963 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200237a8:	68e3      	ldr	r3, [r4, #12]
200237aa:	2103      	movs	r1, #3
200237ac:	4620      	mov	r0, r4
200237ae:	799a      	ldrb	r2, [r3, #6]
200237b0:	f7ff fbfc 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200237b4:	e7de      	b.n	20023774 <HAL_NAND_EN_QUAL+0x14>
200237b6:	ea20 0103 	bic.w	r1, r0, r3
200237ba:	e7ee      	b.n	2002379a <HAL_NAND_EN_QUAL+0x3a>
200237bc:	f04f 30ff 	mov.w	r0, #4294967295
200237c0:	e7d9      	b.n	20023776 <HAL_NAND_EN_QUAL+0x16>

200237c2 <nand_clear_status>:
200237c2:	b510      	push	{r4, lr}
200237c4:	4604      	mov	r4, r0
200237c6:	2101      	movs	r1, #1
200237c8:	f7ff f951 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200237cc:	2102      	movs	r1, #2
200237ce:	4620      	mov	r0, r4
200237d0:	f7ff f946 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
200237d4:	68e3      	ldr	r3, [r4, #12]
200237d6:	2103      	movs	r1, #3
200237d8:	795a      	ldrb	r2, [r3, #5]
200237da:	4620      	mov	r0, r4
200237dc:	f7ff fbe6 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200237e0:	2100      	movs	r1, #0
200237e2:	4620      	mov	r0, r4
200237e4:	f7ff f93c 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
200237e8:	68e3      	ldr	r3, [r4, #12]
200237ea:	2103      	movs	r1, #3
200237ec:	4620      	mov	r0, r4
200237ee:	795a      	ldrb	r2, [r3, #5]
200237f0:	f7ff fbdc 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
200237f4:	2000      	movs	r0, #0
200237f6:	bd10      	pop	{r4, pc}

200237f8 <HAL_NAND_PAGE_SIZE>:
200237f8:	b140      	cbz	r0, 2002380c <HAL_NAND_PAGE_SIZE+0x14>
200237fa:	f890 3024 	ldrb.w	r3, [r0, #36]	@ 0x24
200237fe:	f013 0f01 	tst.w	r3, #1
20023802:	bf14      	ite	ne
20023804:	f44f 5080 	movne.w	r0, #4096	@ 0x1000
20023808:	f44f 6000 	moveq.w	r0, #2048	@ 0x800
2002380c:	4770      	bx	lr
	...

20023810 <HAL_NAND_READ_WITHOOB>:
20023810:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023814:	b091      	sub	sp, #68	@ 0x44
20023816:	460e      	mov	r6, r1
20023818:	4692      	mov	sl, r2
2002381a:	461d      	mov	r5, r3
2002381c:	4604      	mov	r4, r0
2002381e:	9f1b      	ldr	r7, [sp, #108]	@ 0x6c
20023820:	b128      	cbz	r0, 2002382e <HAL_NAND_READ_WITHOOB+0x1e>
20023822:	68c3      	ldr	r3, [r0, #12]
20023824:	b11b      	cbz	r3, 2002382e <HAL_NAND_READ_WITHOOB+0x1e>
20023826:	69c3      	ldr	r3, [r0, #28]
20023828:	b10b      	cbz	r3, 2002382e <HAL_NAND_READ_WITHOOB+0x1e>
2002382a:	2f80      	cmp	r7, #128	@ 0x80
2002382c:	d905      	bls.n	2002383a <HAL_NAND_READ_WITHOOB+0x2a>
2002382e:	2301      	movs	r3, #1
20023830:	6063      	str	r3, [r4, #4]
20023832:	2000      	movs	r0, #0
20023834:	b011      	add	sp, #68	@ 0x44
20023836:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002383a:	f7ff ffdd 	bl	200237f8 <HAL_NAND_PAGE_SIZE>
2002383e:	f100 39ff 	add.w	r9, r0, #4294967295
20023842:	ea09 0901 	and.w	r9, r9, r1
20023846:	eb09 0305 	add.w	r3, r9, r5
2002384a:	4283      	cmp	r3, r0
2002384c:	4680      	mov	r8, r0
2002384e:	d901      	bls.n	20023854 <HAL_NAND_READ_WITHOOB+0x44>
20023850:	2302      	movs	r3, #2
20023852:	e7ed      	b.n	20023830 <HAL_NAND_READ_WITHOOB+0x20>
20023854:	2300      	movs	r3, #0
20023856:	6063      	str	r3, [r4, #4]
20023858:	6923      	ldr	r3, [r4, #16]
2002385a:	f04f 0b00 	mov.w	fp, #0
2002385e:	428b      	cmp	r3, r1
20023860:	bf98      	it	ls
20023862:	1ace      	subls	r6, r1, r3
20023864:	fbb6 f2f0 	udiv	r2, r6, r0
20023868:	2104      	movs	r1, #4
2002386a:	4620      	mov	r0, r4
2002386c:	f7ff fb9e 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023870:	2014      	movs	r0, #20
20023872:	f7fe fa77 	bl	20021d64 <HAL_Delay_us_>
20023876:	2101      	movs	r1, #1
20023878:	4620      	mov	r0, r4
2002387a:	f7ff f8f8 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
2002387e:	2005      	movs	r0, #5
20023880:	f7fe fa70 	bl	20021d64 <HAL_Delay_us_>
20023884:	68e3      	ldr	r3, [r4, #12]
20023886:	2102      	movs	r1, #2
20023888:	791a      	ldrb	r2, [r3, #4]
2002388a:	4620      	mov	r0, r4
2002388c:	f7ff fb8e 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023890:	4620      	mov	r0, r4
20023892:	f7ff f942 	bl	20022b1a <HAL_FLASH_READ32>
20023896:	07c3      	lsls	r3, r0, #31
20023898:	d4f1      	bmi.n	2002387e <HAL_NAND_READ_WITHOOB+0x6e>
2002389a:	f1bb 0f00 	cmp.w	fp, #0
2002389e:	d102      	bne.n	200238a6 <HAL_NAND_READ_WITHOOB+0x96>
200238a0:	f04f 0b01 	mov.w	fp, #1
200238a4:	e7eb      	b.n	2002387e <HAL_NAND_READ_WITHOOB+0x6e>
200238a6:	4620      	mov	r0, r4
200238a8:	f7ff ff42 	bl	20023730 <HAL_NAND_GET_ECC_RESULT>
200238ac:	b118      	cbz	r0, 200238b6 <HAL_NAND_READ_WITHOOB+0xa6>
200238ae:	f440 4000 	orr.w	r0, r0, #32768	@ 0x8000
200238b2:	6060      	str	r0, [r4, #4]
200238b4:	e7bd      	b.n	20023832 <HAL_NAND_READ_WITHOOB+0x22>
200238b6:	f894 2020 	ldrb.w	r2, [r4, #32]
200238ba:	68e3      	ldr	r3, [r4, #12]
200238bc:	2a00      	cmp	r2, #0
200238be:	d140      	bne.n	20023942 <HAL_NAND_READ_WITHOOB+0x132>
200238c0:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
200238c4:	4620      	mov	r0, r4
200238c6:	f7ff f87a 	bl	200229be <HAL_FLASH_SET_AHB_RCMD>
200238ca:	68e0      	ldr	r0, [r4, #12]
200238cc:	f990 c04e 	ldrsb.w	ip, [r0, #78]	@ 0x4e
200238d0:	f990 304a 	ldrsb.w	r3, [r0, #74]	@ 0x4a
200238d4:	f990 2049 	ldrsb.w	r2, [r0, #73]	@ 0x49
200238d8:	f990 1048 	ldrsb.w	r1, [r0, #72]	@ 0x48
200238dc:	f8cd c00c 	str.w	ip, [sp, #12]
200238e0:	f990 c04d 	ldrsb.w	ip, [r0, #77]	@ 0x4d
200238e4:	f8cd c008 	str.w	ip, [sp, #8]
200238e8:	f990 c04c 	ldrsb.w	ip, [r0, #76]	@ 0x4c
200238ec:	f8cd c004 	str.w	ip, [sp, #4]
200238f0:	f990 004b 	ldrsb.w	r0, [r0, #75]	@ 0x4b
200238f4:	9000      	str	r0, [sp, #0]
200238f6:	4620      	mov	r0, r4
200238f8:	f7ff f86c 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
200238fc:	03b0      	lsls	r0, r6, #14
200238fe:	f8d4 b010 	ldr.w	fp, [r4, #16]
20023902:	d504      	bpl.n	2002390e <HAL_NAND_READ_WITHOOB+0xfe>
20023904:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20023908:	b10b      	cbz	r3, 2002390e <HAL_NAND_READ_WITHOOB+0xfe>
2002390a:	f44b 5b80 	orr.w	fp, fp, #4096	@ 0x1000
2002390e:	ea4a 0305 	orr.w	r3, sl, r5
20023912:	ea43 0309 	orr.w	r3, r3, r9
20023916:	f013 0303 	ands.w	r3, r3, #3
2002391a:	d102      	bne.n	20023922 <HAL_NAND_READ_WITHOOB+0x112>
2002391c:	1e6a      	subs	r2, r5, #1
2002391e:	2afe      	cmp	r2, #254	@ 0xfe
20023920:	d82a      	bhi.n	20023978 <HAL_NAND_READ_WITHOOB+0x168>
20023922:	462a      	mov	r2, r5
20023924:	4650      	mov	r0, sl
20023926:	eb0b 0109 	add.w	r1, fp, r9
2002392a:	f002 f9af 	bl	20025c8c <memcpy>
2002392e:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20023930:	b12b      	cbz	r3, 2002393e <HAL_NAND_READ_WITHOOB+0x12e>
20023932:	463a      	mov	r2, r7
20023934:	4618      	mov	r0, r3
20023936:	eb0b 0108 	add.w	r1, fp, r8
2002393a:	f002 f9a7 	bl	20025c8c <memcpy>
2002393e:	1978      	adds	r0, r7, r5
20023940:	e778      	b.n	20023834 <HAL_NAND_READ_WITHOOB+0x24>
20023942:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20023946:	4620      	mov	r0, r4
20023948:	f7ff f839 	bl	200229be <HAL_FLASH_SET_AHB_RCMD>
2002394c:	68e0      	ldr	r0, [r4, #12]
2002394e:	f990 c072 	ldrsb.w	ip, [r0, #114]	@ 0x72
20023952:	f990 306e 	ldrsb.w	r3, [r0, #110]	@ 0x6e
20023956:	f990 206d 	ldrsb.w	r2, [r0, #109]	@ 0x6d
2002395a:	f990 106c 	ldrsb.w	r1, [r0, #108]	@ 0x6c
2002395e:	f8cd c00c 	str.w	ip, [sp, #12]
20023962:	f990 c071 	ldrsb.w	ip, [r0, #113]	@ 0x71
20023966:	f8cd c008 	str.w	ip, [sp, #8]
2002396a:	f990 c070 	ldrsb.w	ip, [r0, #112]	@ 0x70
2002396e:	f8cd c004 	str.w	ip, [sp, #4]
20023972:	f990 006f 	ldrsb.w	r0, [r0, #111]	@ 0x6f
20023976:	e7bd      	b.n	200238f4 <HAL_NAND_READ_WITHOOB+0xe4>
20023978:	f1ba 0f00 	cmp.w	sl, #0
2002397c:	d0d7      	beq.n	2002392e <HAL_NAND_READ_WITHOOB+0x11e>
2002397e:	491c      	ldr	r1, [pc, #112]	@ (200239f0 <HAL_NAND_READ_WITHOOB+0x1e0>)
20023980:	4a1c      	ldr	r2, [pc, #112]	@ (200239f4 <HAL_NAND_READ_WITHOOB+0x1e4>)
20023982:	a804      	add	r0, sp, #16
20023984:	e9cd 1205 	strd	r1, r2, [sp, #20]
20023988:	f88d 301c 	strb.w	r3, [sp, #28]
2002398c:	f7fe ff24 	bl	200227d8 <HAL_EXT_DMA_Init>
20023990:	b150      	cbz	r0, 200239a8 <HAL_NAND_READ_WITHOOB+0x198>
20023992:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023994:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023998:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
2002399c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
200239a0:	f041 4100 	orr.w	r1, r1, #2147483648	@ 0x80000000
200239a4:	6061      	str	r1, [r4, #4]
200239a6:	e744      	b.n	20023832 <HAL_NAND_READ_WITHOOB+0x22>
200239a8:	eb0b 0109 	add.w	r1, fp, r9
200239ac:	4652      	mov	r2, sl
200239ae:	08ab      	lsrs	r3, r5, #2
200239b0:	a804      	add	r0, sp, #16
200239b2:	f7fe ff33 	bl	2002281c <HAL_EXT_DMA_Start>
200239b6:	4601      	mov	r1, r0
200239b8:	b980      	cbnz	r0, 200239dc <HAL_NAND_READ_WITHOOB+0x1cc>
200239ba:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
200239be:	a804      	add	r0, sp, #16
200239c0:	f7fe ff53 	bl	2002286a <HAL_EXT_DMA_PollForTransfer>
200239c4:	2800      	cmp	r0, #0
200239c6:	d0b2      	beq.n	2002392e <HAL_NAND_READ_WITHOOB+0x11e>
200239c8:	990f      	ldr	r1, [sp, #60]	@ 0x3c
200239ca:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
200239ce:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
200239d2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
200239d6:	f041 4160 	orr.w	r1, r1, #3758096384	@ 0xe0000000
200239da:	e7e3      	b.n	200239a4 <HAL_NAND_READ_WITHOOB+0x194>
200239dc:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
200239de:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
200239e2:	ea40 4102 	orr.w	r1, r0, r2, lsl #16
200239e6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
200239ea:	f041 4140 	orr.w	r1, r1, #3221225472	@ 0xc0000000
200239ee:	e7d9      	b.n	200239a4 <HAL_NAND_READ_WITHOOB+0x194>
200239f0:	000c0080 	.word	0x000c0080
200239f4:	00030040 	.word	0x00030040

200239f8 <HAL_NAND_BLOCK_SIZE>:
200239f8:	b508      	push	{r3, lr}
200239fa:	4602      	mov	r2, r0
200239fc:	f7ff fefc 	bl	200237f8 <HAL_NAND_PAGE_SIZE>
20023a00:	b128      	cbz	r0, 20023a0e <HAL_NAND_BLOCK_SIZE+0x16>
20023a02:	f892 3024 	ldrb.w	r3, [r2, #36]	@ 0x24
20023a06:	079b      	lsls	r3, r3, #30
20023a08:	bf4c      	ite	mi
20023a0a:	01c0      	lslmi	r0, r0, #7
20023a0c:	0180      	lslpl	r0, r0, #6
20023a0e:	bd08      	pop	{r3, pc}

20023a10 <HAL_NAND_GET_BADBLK>:
20023a10:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20023a12:	4604      	mov	r4, r0
20023a14:	b910      	cbnz	r0, 20023a1c <HAL_NAND_GET_BADBLK+0xc>
20023a16:	2000      	movs	r0, #0
20023a18:	b004      	add	sp, #16
20023a1a:	bd10      	pop	{r4, pc}
20023a1c:	69c3      	ldr	r3, [r0, #28]
20023a1e:	2b00      	cmp	r3, #0
20023a20:	d0f9      	beq.n	20023a16 <HAL_NAND_GET_BADBLK+0x6>
20023a22:	f7ff ffe9 	bl	200239f8 <HAL_NAND_BLOCK_SIZE>
20023a26:	2304      	movs	r3, #4
20023a28:	9301      	str	r3, [sp, #4]
20023a2a:	ab03      	add	r3, sp, #12
20023a2c:	9300      	str	r3, [sp, #0]
20023a2e:	2300      	movs	r3, #0
20023a30:	4341      	muls	r1, r0
20023a32:	461a      	mov	r2, r3
20023a34:	4620      	mov	r0, r4
20023a36:	f7ff feeb 	bl	20023810 <HAL_NAND_READ_WITHOOB>
20023a3a:	b140      	cbz	r0, 20023a4e <HAL_NAND_GET_BADBLK+0x3e>
20023a3c:	f89d 300c 	ldrb.w	r3, [sp, #12]
20023a40:	2bff      	cmp	r3, #255	@ 0xff
20023a42:	d0e8      	beq.n	20023a16 <HAL_NAND_GET_BADBLK+0x6>
20023a44:	9803      	ldr	r0, [sp, #12]
20023a46:	2800      	cmp	r0, #0
20023a48:	bf08      	it	eq
20023a4a:	2001      	moveq	r0, #1
20023a4c:	e7e4      	b.n	20023a18 <HAL_NAND_GET_BADBLK+0x8>
20023a4e:	2001      	movs	r0, #1
20023a50:	e7e2      	b.n	20023a18 <HAL_NAND_GET_BADBLK+0x8>

20023a52 <HAL_QSPIEX_WRITE_PAGE>:
20023a52:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023a56:	b099      	sub	sp, #100	@ 0x64
20023a58:	4604      	mov	r4, r0
20023a5a:	460e      	mov	r6, r1
20023a5c:	4691      	mov	r9, r2
20023a5e:	f7ff fcd4 	bl	2002340a <flash_handle_valid>
20023a62:	b318      	cbz	r0, 20023aac <HAL_QSPIEX_WRITE_PAGE+0x5a>
20023a64:	2b00      	cmp	r3, #0
20023a66:	f000 80d7 	beq.w	20023c18 <HAL_QSPIEX_WRITE_PAGE+0x1c6>
20023a6a:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20023a6e:	bf28      	it	cs
20023a70:	f44f 7380 	movcs.w	r3, #256	@ 0x100
20023a74:	68a1      	ldr	r1, [r4, #8]
20023a76:	461d      	mov	r5, r3
20023a78:	6962      	ldr	r2, [r4, #20]
20023a7a:	f894 3020 	ldrb.w	r3, [r4, #32]
20023a7e:	2900      	cmp	r1, #0
20023a80:	d03b      	beq.n	20023afa <HAL_QSPIEX_WRITE_PAGE+0xa8>
20023a82:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023a86:	d914      	bls.n	20023ab2 <HAL_QSPIEX_WRITE_PAGE+0x60>
20023a88:	2b02      	cmp	r3, #2
20023a8a:	bf14      	ite	ne
20023a8c:	2727      	movne	r7, #39	@ 0x27
20023a8e:	2728      	moveq	r7, #40	@ 0x28
20023a90:	4639      	mov	r1, r7
20023a92:	4620      	mov	r0, r4
20023a94:	f7ff fa63 	bl	20022f5e <HAL_FLASH_PRE_CMD>
20023a98:	4649      	mov	r1, r9
20023a9a:	462b      	mov	r3, r5
20023a9c:	2201      	movs	r2, #1
20023a9e:	4620      	mov	r0, r4
20023aa0:	f7ff fcbb 	bl	2002341a <HAL_FLASH_DMA_START>
20023aa4:	4601      	mov	r1, r0
20023aa6:	b148      	cbz	r0, 20023abc <HAL_QSPIEX_WRITE_PAGE+0x6a>
20023aa8:	2500      	movs	r5, #0
20023aaa:	4628      	mov	r0, r5
20023aac:	b019      	add	sp, #100	@ 0x64
20023aae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023ab2:	2b02      	cmp	r3, #2
20023ab4:	bf14      	ite	ne
20023ab6:	2716      	movne	r7, #22
20023ab8:	2717      	moveq	r7, #23
20023aba:	e7e9      	b.n	20023a90 <HAL_QSPIEX_WRITE_PAGE+0x3e>
20023abc:	4632      	mov	r2, r6
20023abe:	4620      	mov	r0, r4
20023ac0:	f7ff fa74 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023ac4:	2101      	movs	r1, #1
20023ac6:	4620      	mov	r0, r4
20023ac8:	f7fe ffdb 	bl	20022a82 <HAL_FLASH_WRITE_DLEN2>
20023acc:	2301      	movs	r3, #1
20023ace:	4632      	mov	r2, r6
20023ad0:	9300      	str	r3, [sp, #0]
20023ad2:	4639      	mov	r1, r7
20023ad4:	2302      	movs	r3, #2
20023ad6:	4620      	mov	r0, r4
20023ad8:	f7ff fa9b 	bl	20023012 <HAL_FLASH_ISSUE_CMD_SEQ>
20023adc:	2800      	cmp	r0, #0
20023ade:	d1e3      	bne.n	20023aa8 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023ae0:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
20023ae4:	4620      	mov	r0, r4
20023ae6:	f7ff fce8 	bl	200234ba <HAL_FLASH_DMA_WAIT_DONE>
20023aea:	2800      	cmp	r0, #0
20023aec:	d1dc      	bne.n	20023aa8 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023aee:	6822      	ldr	r2, [r4, #0]
20023af0:	6813      	ldr	r3, [r2, #0]
20023af2:	f023 0320 	bic.w	r3, r3, #32
20023af6:	6013      	str	r3, [r2, #0]
20023af8:	e7d7      	b.n	20023aaa <HAL_QSPIEX_WRITE_PAGE+0x58>
20023afa:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023afe:	f240 8082 	bls.w	20023c06 <HAL_QSPIEX_WRITE_PAGE+0x1b4>
20023b02:	2b02      	cmp	r3, #2
20023b04:	bf14      	ite	ne
20023b06:	2327      	movne	r3, #39	@ 0x27
20023b08:	2328      	moveq	r3, #40	@ 0x28
20023b0a:	462f      	mov	r7, r5
20023b0c:	f04f 0800 	mov.w	r8, #0
20023b10:	9303      	str	r3, [sp, #12]
20023b12:	f64f 7afc 	movw	sl, #65532	@ 0xfffc
20023b16:	2f40      	cmp	r7, #64	@ 0x40
20023b18:	bfd4      	ite	le
20023b1a:	ea0a 0a07 	andle.w	sl, sl, r7
20023b1e:	f00a 0a40 	andgt.w	sl, sl, #64	@ 0x40
20023b22:	f1ba 0f00 	cmp.w	sl, #0
20023b26:	d03f      	beq.n	20023ba8 <HAL_QSPIEX_WRITE_PAGE+0x156>
20023b28:	2200      	movs	r2, #0
20023b2a:	4620      	mov	r0, r4
20023b2c:	4611      	mov	r1, r2
20023b2e:	f7ff fa3d 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023b32:	eb09 0308 	add.w	r3, r9, r8
20023b36:	f10d 0c20 	add.w	ip, sp, #32
20023b3a:	f103 0e40 	add.w	lr, r3, #64	@ 0x40
20023b3e:	4662      	mov	r2, ip
20023b40:	6818      	ldr	r0, [r3, #0]
20023b42:	6859      	ldr	r1, [r3, #4]
20023b44:	3308      	adds	r3, #8
20023b46:	c203      	stmia	r2!, {r0, r1}
20023b48:	4573      	cmp	r3, lr
20023b4a:	4694      	mov	ip, r2
20023b4c:	d1f7      	bne.n	20023b3e <HAL_QSPIEX_WRITE_PAGE+0xec>
20023b4e:	f04f 0b00 	mov.w	fp, #0
20023b52:	ea4f 02aa 	mov.w	r2, sl, asr #2
20023b56:	ab08      	add	r3, sp, #32
20023b58:	f853 1b04 	ldr.w	r1, [r3], #4
20023b5c:	4620      	mov	r0, r4
20023b5e:	9205      	str	r2, [sp, #20]
20023b60:	9304      	str	r3, [sp, #16]
20023b62:	f7fe ff7d 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
20023b66:	9a05      	ldr	r2, [sp, #20]
20023b68:	f10b 0b01 	add.w	fp, fp, #1
20023b6c:	4593      	cmp	fp, r2
20023b6e:	9b04      	ldr	r3, [sp, #16]
20023b70:	d1f2      	bne.n	20023b58 <HAL_QSPIEX_WRITE_PAGE+0x106>
20023b72:	4651      	mov	r1, sl
20023b74:	4620      	mov	r0, r4
20023b76:	f7fe ff7a 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023b7a:	4620      	mov	r0, r4
20023b7c:	9903      	ldr	r1, [sp, #12]
20023b7e:	eb06 0208 	add.w	r2, r6, r8
20023b82:	f7ff fa13 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023b86:	2101      	movs	r1, #1
20023b88:	4620      	mov	r0, r4
20023b8a:	f7fe ff70 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023b8e:	2200      	movs	r2, #0
20023b90:	2102      	movs	r1, #2
20023b92:	4620      	mov	r0, r4
20023b94:	f7ff fa0a 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023b98:	4620      	mov	r0, r4
20023b9a:	f7fe ffb5 	bl	20022b08 <HAL_FLASH_IS_PROG_DONE>
20023b9e:	2800      	cmp	r0, #0
20023ba0:	d0f1      	beq.n	20023b86 <HAL_QSPIEX_WRITE_PAGE+0x134>
20023ba2:	eba7 070a 	sub.w	r7, r7, sl
20023ba6:	44d0      	add	r8, sl
20023ba8:	1e7b      	subs	r3, r7, #1
20023baa:	2b02      	cmp	r3, #2
20023bac:	d830      	bhi.n	20023c10 <HAL_QSPIEX_WRITE_PAGE+0x1be>
20023bae:	6923      	ldr	r3, [r4, #16]
20023bb0:	4446      	add	r6, r8
20023bb2:	4333      	orrs	r3, r6
20023bb4:	681b      	ldr	r3, [r3, #0]
20023bb6:	463a      	mov	r2, r7
20023bb8:	eb09 0108 	add.w	r1, r9, r8
20023bbc:	a807      	add	r0, sp, #28
20023bbe:	9307      	str	r3, [sp, #28]
20023bc0:	f002 f864 	bl	20025c8c <memcpy>
20023bc4:	2200      	movs	r2, #0
20023bc6:	4620      	mov	r0, r4
20023bc8:	4611      	mov	r1, r2
20023bca:	f7ff f9ef 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023bce:	9907      	ldr	r1, [sp, #28]
20023bd0:	4620      	mov	r0, r4
20023bd2:	f7fe ff45 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
20023bd6:	2104      	movs	r1, #4
20023bd8:	4620      	mov	r0, r4
20023bda:	f7fe ff48 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023bde:	4632      	mov	r2, r6
20023be0:	4620      	mov	r0, r4
20023be2:	9903      	ldr	r1, [sp, #12]
20023be4:	f7ff f9e2 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023be8:	2101      	movs	r1, #1
20023bea:	4620      	mov	r0, r4
20023bec:	f7fe ff3f 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20023bf0:	2200      	movs	r2, #0
20023bf2:	2102      	movs	r1, #2
20023bf4:	4620      	mov	r0, r4
20023bf6:	f7ff f9d9 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023bfa:	4620      	mov	r0, r4
20023bfc:	f7fe ff84 	bl	20022b08 <HAL_FLASH_IS_PROG_DONE>
20023c00:	2800      	cmp	r0, #0
20023c02:	d0f1      	beq.n	20023be8 <HAL_QSPIEX_WRITE_PAGE+0x196>
20023c04:	e751      	b.n	20023aaa <HAL_QSPIEX_WRITE_PAGE+0x58>
20023c06:	2b02      	cmp	r3, #2
20023c08:	bf14      	ite	ne
20023c0a:	2316      	movne	r3, #22
20023c0c:	2317      	moveq	r3, #23
20023c0e:	e77c      	b.n	20023b0a <HAL_QSPIEX_WRITE_PAGE+0xb8>
20023c10:	2f00      	cmp	r7, #0
20023c12:	f73f af7e 	bgt.w	20023b12 <HAL_QSPIEX_WRITE_PAGE+0xc0>
20023c16:	e748      	b.n	20023aaa <HAL_QSPIEX_WRITE_PAGE+0x58>
20023c18:	4618      	mov	r0, r3
20023c1a:	e747      	b.n	20023aac <HAL_QSPIEX_WRITE_PAGE+0x5a>

20023c1c <HAL_QSPIEX_SECT_ERASE>:
20023c1c:	b573      	push	{r0, r1, r4, r5, r6, lr}
20023c1e:	4604      	mov	r4, r0
20023c20:	460d      	mov	r5, r1
20023c22:	f7ff fbf2 	bl	2002340a <flash_handle_valid>
20023c26:	b1e8      	cbz	r0, 20023c64 <HAL_QSPIEX_SECT_ERASE+0x48>
20023c28:	6963      	ldr	r3, [r4, #20]
20023c2a:	460a      	mov	r2, r1
20023c2c:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023c30:	f04f 0100 	mov.w	r1, #0
20023c34:	4620      	mov	r0, r4
20023c36:	bf94      	ite	ls
20023c38:	261b      	movls	r6, #27
20023c3a:	2629      	movhi	r6, #41	@ 0x29
20023c3c:	f7ff f9b6 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20023c40:	2101      	movs	r1, #1
20023c42:	4620      	mov	r0, r4
20023c44:	f7fe ff1d 	bl	20022a82 <HAL_FLASH_WRITE_DLEN2>
20023c48:	2301      	movs	r3, #1
20023c4a:	462a      	mov	r2, r5
20023c4c:	9300      	str	r3, [sp, #0]
20023c4e:	4631      	mov	r1, r6
20023c50:	2302      	movs	r3, #2
20023c52:	4620      	mov	r0, r4
20023c54:	f7ff f9dd 	bl	20023012 <HAL_FLASH_ISSUE_CMD_SEQ>
20023c58:	3800      	subs	r0, #0
20023c5a:	bf18      	it	ne
20023c5c:	2001      	movne	r0, #1
20023c5e:	4240      	negs	r0, r0
20023c60:	b002      	add	sp, #8
20023c62:	bd70      	pop	{r4, r5, r6, pc}
20023c64:	f04f 30ff 	mov.w	r0, #4294967295
20023c68:	e7fa      	b.n	20023c60 <HAL_QSPIEX_SECT_ERASE+0x44>
	...

20023c6c <HAL_QSPI_GET_SRC_CLK>:
20023c6c:	b508      	push	{r3, lr}
20023c6e:	b1e8      	cbz	r0, 20023cac <HAL_QSPI_GET_SRC_CLK+0x40>
20023c70:	6803      	ldr	r3, [r0, #0]
20023c72:	4a0f      	ldr	r2, [pc, #60]	@ (20023cb0 <HAL_QSPI_GET_SRC_CLK+0x44>)
20023c74:	4293      	cmp	r3, r2
20023c76:	d00c      	beq.n	20023c92 <HAL_QSPI_GET_SRC_CLK+0x26>
20023c78:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20023c7c:	4293      	cmp	r3, r2
20023c7e:	d115      	bne.n	20023cac <HAL_QSPI_GET_SRC_CLK+0x40>
20023c80:	2006      	movs	r0, #6
20023c82:	f001 f829 	bl	20024cd8 <HAL_RCC_HCPU_GetClockSrc>
20023c86:	2802      	cmp	r0, #2
20023c88:	d105      	bne.n	20023c96 <HAL_QSPI_GET_SRC_CLK+0x2a>
20023c8a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023c8e:	f001 b858 	b.w	20024d42 <HAL_RCC_HCPU_GetDLL2Freq>
20023c92:	2004      	movs	r0, #4
20023c94:	e7f5      	b.n	20023c82 <HAL_QSPI_GET_SRC_CLK+0x16>
20023c96:	2803      	cmp	r0, #3
20023c98:	d103      	bne.n	20023ca2 <HAL_QSPI_GET_SRC_CLK+0x36>
20023c9a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023c9e:	f001 b853 	b.w	20024d48 <HAL_RCC_HCPU_GetDLL3Freq>
20023ca2:	2001      	movs	r0, #1
20023ca4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023ca8:	f001 b8b2 	b.w	20024e10 <HAL_RCC_GetSysCLKFreq>
20023cac:	2000      	movs	r0, #0
20023cae:	bd08      	pop	{r3, pc}
20023cb0:	50041000 	.word	0x50041000

20023cb4 <HAL_QSPI_GET_CLK>:
20023cb4:	b538      	push	{r3, r4, r5, lr}
20023cb6:	4605      	mov	r5, r0
20023cb8:	b908      	cbnz	r0, 20023cbe <HAL_QSPI_GET_CLK+0xa>
20023cba:	2000      	movs	r0, #0
20023cbc:	bd38      	pop	{r3, r4, r5, pc}
20023cbe:	f7fe ff3b 	bl	20022b38 <HAL_FLASH_GET_DIV>
20023cc2:	4604      	mov	r4, r0
20023cc4:	2800      	cmp	r0, #0
20023cc6:	d0f8      	beq.n	20023cba <HAL_QSPI_GET_CLK+0x6>
20023cc8:	4628      	mov	r0, r5
20023cca:	f7ff ffcf 	bl	20023c6c <HAL_QSPI_GET_SRC_CLK>
20023cce:	fbb0 f0f4 	udiv	r0, r0, r4
20023cd2:	e7f3      	b.n	20023cbc <HAL_QSPI_GET_CLK+0x8>

20023cd4 <HAL_QSPI_READ_ID>:
20023cd4:	b138      	cbz	r0, 20023ce6 <HAL_QSPI_READ_ID+0x12>
20023cd6:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20023cda:	b113      	cbz	r3, 20023ce2 <HAL_QSPI_READ_ID+0xe>
20023cdc:	2100      	movs	r1, #0
20023cde:	f7ff bc38 	b.w	20023552 <nand_read_id>
20023ce2:	f7ff bab8 	b.w	20023256 <HAL_FLASH_GET_NOR_ID>
20023ce6:	20ff      	movs	r0, #255	@ 0xff
20023ce8:	4770      	bx	lr

20023cea <HAL_NOR_CFG_DTR>:
20023cea:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023cec:	4604      	mov	r4, r0
20023cee:	460a      	mov	r2, r1
20023cf0:	b351      	cbz	r1, 20023d48 <HAL_NOR_CFG_DTR+0x5e>
20023cf2:	68c5      	ldr	r5, [r0, #12]
20023cf4:	f895 31ff 	ldrb.w	r3, [r5, #511]	@ 0x1ff
20023cf8:	2b00      	cmp	r3, #0
20023cfa:	d03b      	beq.n	20023d74 <HAL_NOR_CFG_DTR+0x8a>
20023cfc:	f890 3020 	ldrb.w	r3, [r0, #32]
20023d00:	b3c3      	cbz	r3, 20023d74 <HAL_NOR_CFG_DTR+0x8a>
20023d02:	f995 6207 	ldrsb.w	r6, [r5, #519]	@ 0x207
20023d06:	f995 2202 	ldrsb.w	r2, [r5, #514]	@ 0x202
20023d0a:	f995 3203 	ldrsb.w	r3, [r5, #515]	@ 0x203
20023d0e:	f995 1201 	ldrsb.w	r1, [r5, #513]	@ 0x201
20023d12:	9603      	str	r6, [sp, #12]
20023d14:	f995 6206 	ldrsb.w	r6, [r5, #518]	@ 0x206
20023d18:	9602      	str	r6, [sp, #8]
20023d1a:	f995 6205 	ldrsb.w	r6, [r5, #517]	@ 0x205
20023d1e:	9601      	str	r6, [sp, #4]
20023d20:	f995 5204 	ldrsb.w	r5, [r5, #516]	@ 0x204
20023d24:	9500      	str	r5, [sp, #0]
20023d26:	f7fe fe55 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
20023d2a:	68e3      	ldr	r3, [r4, #12]
20023d2c:	4620      	mov	r0, r4
20023d2e:	f893 11ff 	ldrb.w	r1, [r3, #511]	@ 0x1ff
20023d32:	f7fe fe44 	bl	200229be <HAL_FLASH_SET_AHB_RCMD>
20023d36:	2101      	movs	r1, #1
20023d38:	4620      	mov	r0, r4
20023d3a:	f894 2025 	ldrb.w	r2, [r4, #37]	@ 0x25
20023d3e:	f7ff f855 	bl	20022dec <HAL_MPI_CFG_DTR>
20023d42:	2000      	movs	r0, #0
20023d44:	b004      	add	sp, #16
20023d46:	bd70      	pop	{r4, r5, r6, pc}
20023d48:	f7ff f850 	bl	20022dec <HAL_MPI_CFG_DTR>
20023d4c:	6963      	ldr	r3, [r4, #20]
20023d4e:	f894 1020 	ldrb.w	r1, [r4, #32]
20023d52:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023d56:	d906      	bls.n	20023d66 <HAL_NOR_CFG_DTR+0x7c>
20023d58:	b919      	cbnz	r1, 20023d62 <HAL_NOR_CFG_DTR+0x78>
20023d5a:	4620      	mov	r0, r4
20023d5c:	f7ff f8c2 	bl	20022ee4 <HAL_FLASH_CONFIG_FULL_AHB_READ>
20023d60:	e7ef      	b.n	20023d42 <HAL_NOR_CFG_DTR+0x58>
20023d62:	2101      	movs	r1, #1
20023d64:	e7f9      	b.n	20023d5a <HAL_NOR_CFG_DTR+0x70>
20023d66:	b919      	cbnz	r1, 20023d70 <HAL_NOR_CFG_DTR+0x86>
20023d68:	4620      	mov	r0, r4
20023d6a:	f7ff f877 	bl	20022e5c <HAL_FLASH_CONFIG_AHB_READ>
20023d6e:	e7e8      	b.n	20023d42 <HAL_NOR_CFG_DTR+0x58>
20023d70:	2101      	movs	r1, #1
20023d72:	e7f9      	b.n	20023d68 <HAL_NOR_CFG_DTR+0x7e>
20023d74:	2001      	movs	r0, #1
20023d76:	e7e5      	b.n	20023d44 <HAL_NOR_CFG_DTR+0x5a>

20023d78 <HAL_NOR_DTR_CAL>:
20023d78:	b510      	push	{r4, lr}
20023d7a:	4604      	mov	r4, r0
20023d7c:	b1f0      	cbz	r0, 20023dbc <HAL_NOR_DTR_CAL+0x44>
20023d7e:	6802      	ldr	r2, [r0, #0]
20023d80:	2014      	movs	r0, #20
20023d82:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20023d86:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
20023d8a:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20023d8e:	f7fe f848 	bl	20021e22 <HAL_Delay_us>
20023d92:	6823      	ldr	r3, [r4, #0]
20023d94:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023d98:	05d2      	lsls	r2, r2, #23
20023d9a:	d5fb      	bpl.n	20023d94 <HAL_NOR_DTR_CAL+0x1c>
20023d9c:	f8d3 0094 	ldr.w	r0, [r3, #148]	@ 0x94
20023da0:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023da4:	b2c0      	uxtb	r0, r0
20023da6:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20023daa:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
20023dae:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
20023db2:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20023db6:	4303      	orrs	r3, r0
20023db8:	f884 3025 	strb.w	r3, [r4, #37]	@ 0x25
20023dbc:	bd10      	pop	{r4, pc}
	...

20023dc0 <HAL_FLASH_Init>:
20023dc0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20023dc4:	460e      	mov	r6, r1
20023dc6:	4690      	mov	r8, r2
20023dc8:	461f      	mov	r7, r3
20023dca:	4604      	mov	r4, r0
20023dcc:	b087      	sub	sp, #28
20023dce:	2800      	cmp	r0, #0
20023dd0:	f000 80e5 	beq.w	20023f9e <HAL_FLASH_Init+0x1de>
20023dd4:	2900      	cmp	r1, #0
20023dd6:	f000 80e2 	beq.w	20023f9e <HAL_FLASH_Init+0x1de>
20023dda:	f7fe fdcf 	bl	2002297c <HAL_QSPI_Init>
20023dde:	6820      	ldr	r0, [r4, #0]
20023de0:	f7ff fb19 	bl	20023416 <HAL_GET_FLASH_MID>
20023de4:	6933      	ldr	r3, [r6, #16]
20023de6:	2100      	movs	r1, #0
20023de8:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
20023dec:	68b3      	ldr	r3, [r6, #8]
20023dee:	4605      	mov	r5, r0
20023df0:	63a3      	str	r3, [r4, #56]	@ 0x38
20023df2:	68f3      	ldr	r3, [r6, #12]
20023df4:	f884 1024 	strb.w	r1, [r4, #36]	@ 0x24
20023df8:	051b      	lsls	r3, r3, #20
20023dfa:	63e3      	str	r3, [r4, #60]	@ 0x3c
20023dfc:	2302      	movs	r3, #2
20023dfe:	f884 3036 	strb.w	r3, [r4, #54]	@ 0x36
20023e02:	6933      	ldr	r3, [r6, #16]
20023e04:	f8c4 8008 	str.w	r8, [r4, #8]
20023e08:	1e5a      	subs	r2, r3, #1
20023e0a:	4253      	negs	r3, r2
20023e0c:	4153      	adcs	r3, r2
20023e0e:	f884 3023 	strb.w	r3, [r4, #35]	@ 0x23
20023e12:	f1b8 0f00 	cmp.w	r8, #0
20023e16:	d058      	beq.n	20023eca <HAL_FLASH_Init+0x10a>
20023e18:	2f00      	cmp	r7, #0
20023e1a:	d056      	beq.n	20023eca <HAL_FLASH_Init+0x10a>
20023e1c:	683b      	ldr	r3, [r7, #0]
20023e1e:	f8c8 3000 	str.w	r3, [r8]
20023e22:	68a3      	ldr	r3, [r4, #8]
20023e24:	68fa      	ldr	r2, [r7, #12]
20023e26:	605a      	str	r2, [r3, #4]
20023e28:	2210      	movs	r2, #16
20023e2a:	68a3      	ldr	r3, [r4, #8]
20023e2c:	609a      	str	r2, [r3, #8]
20023e2e:	2280      	movs	r2, #128	@ 0x80
20023e30:	68a3      	ldr	r3, [r4, #8]
20023e32:	60d9      	str	r1, [r3, #12]
20023e34:	68a3      	ldr	r3, [r4, #8]
20023e36:	611a      	str	r2, [r3, #16]
20023e38:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
20023e3c:	68a3      	ldr	r3, [r4, #8]
20023e3e:	6159      	str	r1, [r3, #20]
20023e40:	68a3      	ldr	r3, [r4, #8]
20023e42:	6199      	str	r1, [r3, #24]
20023e44:	68a3      	ldr	r3, [r4, #8]
20023e46:	61d9      	str	r1, [r3, #28]
20023e48:	68a3      	ldr	r3, [r4, #8]
20023e4a:	621a      	str	r2, [r3, #32]
20023e4c:	68a3      	ldr	r3, [r4, #8]
20023e4e:	6259      	str	r1, [r3, #36]	@ 0x24
20023e50:	b1c0      	cbz	r0, 20023e84 <HAL_FLASH_Init+0xc4>
20023e52:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023e56:	4298      	cmp	r0, r3
20023e58:	d014      	beq.n	20023e84 <HAL_FLASH_Init+0xc4>
20023e5a:	2601      	movs	r6, #1
20023e5c:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023e60:	2b00      	cmp	r3, #0
20023e62:	d13d      	bne.n	20023ee0 <HAL_FLASH_Init+0x120>
20023e64:	2e00      	cmp	r6, #0
20023e66:	d15a      	bne.n	20023f1e <HAL_FLASH_Init+0x15e>
20023e68:	4620      	mov	r0, r4
20023e6a:	f7ff faae 	bl	200233ca <HAL_FLASH_RELEASE_DPD>
20023e6e:	4630      	mov	r0, r6
20023e70:	f7fd ffd7 	bl	20021e22 <HAL_Delay_us>
20023e74:	2032      	movs	r0, #50	@ 0x32
20023e76:	f7fd ffd4 	bl	20021e22 <HAL_Delay_us>
20023e7a:	4620      	mov	r0, r4
20023e7c:	f7ff ff2a 	bl	20023cd4 <HAL_QSPI_READ_ID>
20023e80:	4605      	mov	r5, r0
20023e82:	e04c      	b.n	20023f1e <HAL_FLASH_Init+0x15e>
20023e84:	2101      	movs	r1, #1
20023e86:	4620      	mov	r0, r4
20023e88:	f7fe fe4b 	bl	20022b22 <HAL_FLASH_SET_TXSLOT>
20023e8c:	4ba7      	ldr	r3, [pc, #668]	@ (2002412c <HAL_FLASH_Init+0x36c>)
20023e8e:	69a2      	ldr	r2, [r4, #24]
20023e90:	4620      	mov	r0, r4
20023e92:	429a      	cmp	r2, r3
20023e94:	f04f 0200 	mov.w	r2, #0
20023e98:	bf8c      	ite	hi
20023e9a:	2101      	movhi	r1, #1
20023e9c:	4611      	movls	r1, r2
20023e9e:	f7ff fa85 	bl	200233ac <HAL_QSPI_SET_CLK_INV>
20023ea2:	4620      	mov	r0, r4
20023ea4:	f89d 1038 	ldrb.w	r1, [sp, #56]	@ 0x38
20023ea8:	f7fe fe42 	bl	20022b30 <HAL_FLASH_SET_CLK_rom>
20023eac:	f894 3035 	ldrb.w	r3, [r4, #53]	@ 0x35
20023eb0:	b12b      	cbz	r3, 20023ebe <HAL_FLASH_Init+0xfe>
20023eb2:	2b01      	cmp	r3, #1
20023eb4:	d110      	bne.n	20023ed8 <HAL_FLASH_Init+0x118>
20023eb6:	2100      	movs	r1, #0
20023eb8:	4620      	mov	r0, r4
20023eba:	f7fe ff51 	bl	20022d60 <HAL_FLASH_SET_DUAL_MODE>
20023ebe:	2101      	movs	r1, #1
20023ec0:	4620      	mov	r0, r4
20023ec2:	f7fe feda 	bl	20022c7a <HAL_FLASH_ENABLE_QSPI>
20023ec6:	2600      	movs	r6, #0
20023ec8:	e7c8      	b.n	20023e5c <HAL_FLASH_Init+0x9c>
20023eca:	2d00      	cmp	r5, #0
20023ecc:	d0de      	beq.n	20023e8c <HAL_FLASH_Init+0xcc>
20023ece:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023ed2:	429d      	cmp	r5, r3
20023ed4:	d1c1      	bne.n	20023e5a <HAL_FLASH_Init+0x9a>
20023ed6:	e7d9      	b.n	20023e8c <HAL_FLASH_Init+0xcc>
20023ed8:	2b02      	cmp	r3, #2
20023eda:	d1f0      	bne.n	20023ebe <HAL_FLASH_Init+0xfe>
20023edc:	2101      	movs	r1, #1
20023ede:	e7eb      	b.n	20023eb8 <HAL_FLASH_Init+0xf8>
20023ee0:	6822      	ldr	r2, [r4, #0]
20023ee2:	2700      	movs	r7, #0
20023ee4:	6893      	ldr	r3, [r2, #8]
20023ee6:	4639      	mov	r1, r7
20023ee8:	f043 7370 	orr.w	r3, r3, #62914560	@ 0x3c00000
20023eec:	6093      	str	r3, [r2, #8]
20023eee:	2301      	movs	r3, #1
20023ef0:	463a      	mov	r2, r7
20023ef2:	4620      	mov	r0, r4
20023ef4:	e9cd 7303 	strd	r7, r3, [sp, #12]
20023ef8:	e9cd 7701 	strd	r7, r7, [sp, #4]
20023efc:	463b      	mov	r3, r7
20023efe:	9700      	str	r7, [sp, #0]
20023f00:	f7fe fe1f 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
20023f04:	463a      	mov	r2, r7
20023f06:	21ff      	movs	r1, #255	@ 0xff
20023f08:	4620      	mov	r0, r4
20023f0a:	f7fe fdd5 	bl	20022ab8 <HAL_FLASH_SET_CMD>
20023f0e:	4638      	mov	r0, r7
20023f10:	f7fd ff87 	bl	20021e22 <HAL_Delay_us>
20023f14:	20c8      	movs	r0, #200	@ 0xc8
20023f16:	f7fd ff84 	bl	20021e22 <HAL_Delay_us>
20023f1a:	2e00      	cmp	r6, #0
20023f1c:	d0ad      	beq.n	20023e7a <HAL_FLASH_Init+0xba>
20023f1e:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023f22:	b2ef      	uxtb	r7, r5
20023f24:	f3c5 2807 	ubfx	r8, r5, #8, #8
20023f28:	6325      	str	r5, [r4, #48]	@ 0x30
20023f2a:	f3c5 4507 	ubfx	r5, r5, #16, #8
20023f2e:	4642      	mov	r2, r8
20023f30:	4629      	mov	r1, r5
20023f32:	4638      	mov	r0, r7
20023f34:	b3ab      	cbz	r3, 20023fa2 <HAL_FLASH_Init+0x1e2>
20023f36:	f001 f973 	bl	20025220 <spi_nand_get_cmd_by_id>
20023f3a:	60e0      	str	r0, [r4, #12]
20023f3c:	bba0      	cbnz	r0, 20023fa8 <HAL_FLASH_Init+0x1e8>
20023f3e:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023f42:	b32b      	cbz	r3, 20023f90 <HAL_FLASH_Init+0x1d0>
20023f44:	2108      	movs	r1, #8
20023f46:	4620      	mov	r0, r4
20023f48:	f7ff fb03 	bl	20023552 <nand_read_id>
20023f4c:	f3c0 2807 	ubfx	r8, r0, #8, #8
20023f50:	f3c0 4507 	ubfx	r5, r0, #16, #8
20023f54:	b2c7      	uxtb	r7, r0
20023f56:	6320      	str	r0, [r4, #48]	@ 0x30
20023f58:	4642      	mov	r2, r8
20023f5a:	4629      	mov	r1, r5
20023f5c:	4638      	mov	r0, r7
20023f5e:	f001 f95f 	bl	20025220 <spi_nand_get_cmd_by_id>
20023f62:	60e0      	str	r0, [r4, #12]
20023f64:	bb00      	cbnz	r0, 20023fa8 <HAL_FLASH_Init+0x1e8>
20023f66:	210f      	movs	r1, #15
20023f68:	4620      	mov	r0, r4
20023f6a:	f7ff faf2 	bl	20023552 <nand_read_id>
20023f6e:	f3c0 2807 	ubfx	r8, r0, #8, #8
20023f72:	f3c0 4507 	ubfx	r5, r0, #16, #8
20023f76:	b2c7      	uxtb	r7, r0
20023f78:	6320      	str	r0, [r4, #48]	@ 0x30
20023f7a:	4642      	mov	r2, r8
20023f7c:	4629      	mov	r1, r5
20023f7e:	4638      	mov	r0, r7
20023f80:	f001 f94e 	bl	20025220 <spi_nand_get_cmd_by_id>
20023f84:	60e0      	str	r0, [r4, #12]
20023f86:	b978      	cbnz	r0, 20023fa8 <HAL_FLASH_Init+0x1e8>
20023f88:	f001 f960 	bl	2002524c <spi_nand_get_default_ctable>
20023f8c:	60e0      	str	r0, [r4, #12]
20023f8e:	b958      	cbnz	r0, 20023fa8 <HAL_FLASH_Init+0x1e8>
20023f90:	2100      	movs	r1, #0
20023f92:	4620      	mov	r0, r4
20023f94:	f7fe fe71 	bl	20022c7a <HAL_FLASH_ENABLE_QSPI>
20023f98:	2300      	movs	r3, #0
20023f9a:	e9c4 330e 	strd	r3, r3, [r4, #56]	@ 0x38
20023f9e:	2001      	movs	r0, #1
20023fa0:	e04c      	b.n	2002403c <HAL_FLASH_Init+0x27c>
20023fa2:	f001 f8f5 	bl	20025190 <spi_flash_get_cmd_by_id>
20023fa6:	e7c8      	b.n	20023f3a <HAL_FLASH_Init+0x17a>
20023fa8:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023fac:	4642      	mov	r2, r8
20023fae:	4629      	mov	r1, r5
20023fb0:	4638      	mov	r0, r7
20023fb2:	2b00      	cmp	r3, #0
20023fb4:	d045      	beq.n	20024042 <HAL_FLASH_Init+0x282>
20023fb6:	f001 f957 	bl	20025268 <spi_nand_get_size_by_id>
20023fba:	4642      	mov	r2, r8
20023fbc:	4629      	mov	r1, r5
20023fbe:	4681      	mov	r9, r0
20023fc0:	4638      	mov	r0, r7
20023fc2:	f001 f95b 	bl	2002527c <spi_nand_get_plane_select_flag>
20023fc6:	4642      	mov	r2, r8
20023fc8:	4629      	mov	r1, r5
20023fca:	f884 0027 	strb.w	r0, [r4, #39]	@ 0x27
20023fce:	4638      	mov	r0, r7
20023fd0:	f001 f95d 	bl	2002528e <spi_nand_get_big_page_flag>
20023fd4:	4642      	mov	r2, r8
20023fd6:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
20023fda:	4629      	mov	r1, r5
20023fdc:	4638      	mov	r0, r7
20023fde:	f001 f95f 	bl	200252a0 <spi_nand_get_ecc_mode>
20023fe2:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
20023fe6:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
20023fea:	f884 3024 	strb.w	r3, [r4, #36]	@ 0x24
20023fee:	f1b9 0f00 	cmp.w	r9, #0
20023ff2:	d003      	beq.n	20023ffc <HAL_FLASH_Init+0x23c>
20023ff4:	f8c4 903c 	str.w	r9, [r4, #60]	@ 0x3c
20023ff8:	f8c4 9014 	str.w	r9, [r4, #20]
20023ffc:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024000:	2b00      	cmp	r3, #0
20024002:	d173      	bne.n	200240ec <HAL_FLASH_Init+0x32c>
20024004:	2e00      	cmp	r6, #0
20024006:	d16e      	bne.n	200240e6 <HAL_FLASH_Init+0x326>
20024008:	4620      	mov	r0, r4
2002400a:	f7ff f93f 	bl	2002328c <HAL_FLASH_CLR_PROTECT>
2002400e:	6963      	ldr	r3, [r4, #20]
20024010:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20024014:	d938      	bls.n	20024088 <HAL_FLASH_Init+0x2c8>
20024016:	4632      	mov	r2, r6
20024018:	2121      	movs	r1, #33	@ 0x21
2002401a:	4620      	mov	r0, r4
2002401c:	f7fe ffc6 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20024020:	f894 3020 	ldrb.w	r3, [r4, #32]
20024024:	b98b      	cbnz	r3, 2002404a <HAL_FLASH_Init+0x28a>
20024026:	4631      	mov	r1, r6
20024028:	4620      	mov	r0, r4
2002402a:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
2002402e:	f7ff f907 	bl	20023240 <HAL_FLASH_FADDR_SET_QSPI>
20024032:	2107      	movs	r1, #7
20024034:	4620      	mov	r0, r4
20024036:	f7fe fe7b 	bl	20022d30 <HAL_FLASH_SET_ROW_BOUNDARY>
2002403a:	2000      	movs	r0, #0
2002403c:	b007      	add	sp, #28
2002403e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20024042:	f001 f8b9 	bl	200251b8 <spi_flash_get_size_by_id>
20024046:	4681      	mov	r9, r0
20024048:	e7d1      	b.n	20023fee <HAL_FLASH_Init+0x22e>
2002404a:	2101      	movs	r1, #1
2002404c:	4620      	mov	r0, r4
2002404e:	f7ff f8f7 	bl	20023240 <HAL_FLASH_FADDR_SET_QSPI>
20024052:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
20024056:	f1b9 0f01 	cmp.w	r9, #1
2002405a:	d1ea      	bne.n	20024032 <HAL_FLASH_Init+0x272>
2002405c:	4642      	mov	r2, r8
2002405e:	4629      	mov	r1, r5
20024060:	4638      	mov	r0, r7
20024062:	f001 f8b3 	bl	200251cc <spi_flash_is_support_dtr>
20024066:	b138      	cbz	r0, 20024078 <HAL_FLASH_Init+0x2b8>
20024068:	4620      	mov	r0, r4
2002406a:	f7ff fe85 	bl	20023d78 <HAL_NOR_DTR_CAL>
2002406e:	4649      	mov	r1, r9
20024070:	4620      	mov	r0, r4
20024072:	f7ff fe3a 	bl	20023cea <HAL_NOR_CFG_DTR>
20024076:	e7dc      	b.n	20024032 <HAL_FLASH_Init+0x272>
20024078:	4632      	mov	r2, r6
2002407a:	4631      	mov	r1, r6
2002407c:	4620      	mov	r0, r4
2002407e:	f7fe feb5 	bl	20022dec <HAL_MPI_CFG_DTR>
20024082:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024086:	e7d4      	b.n	20024032 <HAL_FLASH_Init+0x272>
20024088:	f894 3020 	ldrb.w	r3, [r4, #32]
2002408c:	b933      	cbnz	r3, 2002409c <HAL_FLASH_Init+0x2dc>
2002408e:	4631      	mov	r1, r6
20024090:	4620      	mov	r0, r4
20024092:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024096:	f7ff f8c8 	bl	2002322a <HAL_FLASH_SET_QUAL_SPI>
2002409a:	e7ce      	b.n	2002403a <HAL_FLASH_Init+0x27a>
2002409c:	2101      	movs	r1, #1
2002409e:	4620      	mov	r0, r4
200240a0:	f7ff f8c3 	bl	2002322a <HAL_FLASH_SET_QUAL_SPI>
200240a4:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
200240a8:	f1b9 0f01 	cmp.w	r9, #1
200240ac:	d115      	bne.n	200240da <HAL_FLASH_Init+0x31a>
200240ae:	4642      	mov	r2, r8
200240b0:	4629      	mov	r1, r5
200240b2:	4638      	mov	r0, r7
200240b4:	f001 f88a 	bl	200251cc <spi_flash_is_support_dtr>
200240b8:	b138      	cbz	r0, 200240ca <HAL_FLASH_Init+0x30a>
200240ba:	4620      	mov	r0, r4
200240bc:	f7ff fe5c 	bl	20023d78 <HAL_NOR_DTR_CAL>
200240c0:	4649      	mov	r1, r9
200240c2:	4620      	mov	r0, r4
200240c4:	f7ff fe11 	bl	20023cea <HAL_NOR_CFG_DTR>
200240c8:	e7b7      	b.n	2002403a <HAL_FLASH_Init+0x27a>
200240ca:	4632      	mov	r2, r6
200240cc:	4631      	mov	r1, r6
200240ce:	4620      	mov	r0, r4
200240d0:	f7fe fe8c 	bl	20022dec <HAL_MPI_CFG_DTR>
200240d4:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200240d8:	e7af      	b.n	2002403a <HAL_FLASH_Init+0x27a>
200240da:	4632      	mov	r2, r6
200240dc:	4631      	mov	r1, r6
200240de:	4620      	mov	r0, r4
200240e0:	f7fe fe84 	bl	20022dec <HAL_MPI_CFG_DTR>
200240e4:	e7a9      	b.n	2002403a <HAL_FLASH_Init+0x27a>
200240e6:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
200240ea:	e7a6      	b.n	2002403a <HAL_FLASH_Init+0x27a>
200240ec:	2101      	movs	r1, #1
200240ee:	4620      	mov	r0, r4
200240f0:	f7fe fcbd 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200240f4:	68e3      	ldr	r3, [r4, #12]
200240f6:	2102      	movs	r1, #2
200240f8:	791a      	ldrb	r2, [r3, #4]
200240fa:	4620      	mov	r0, r4
200240fc:	f7fe ff56 	bl	20022fac <HAL_FLASH_ISSUE_CMD>
20024100:	4620      	mov	r0, r4
20024102:	f7fe fd0a 	bl	20022b1a <HAL_FLASH_READ32>
20024106:	4605      	mov	r5, r0
20024108:	200a      	movs	r0, #10
2002410a:	f7fd fe8a 	bl	20021e22 <HAL_Delay_us>
2002410e:	07eb      	lsls	r3, r5, #31
20024110:	d4ec      	bmi.n	200240ec <HAL_FLASH_Init+0x32c>
20024112:	4620      	mov	r0, r4
20024114:	f7ff fb55 	bl	200237c2 <nand_clear_status>
20024118:	f894 3020 	ldrb.w	r3, [r4, #32]
2002411c:	2b02      	cmp	r3, #2
2002411e:	d18c      	bne.n	2002403a <HAL_FLASH_Init+0x27a>
20024120:	2101      	movs	r1, #1
20024122:	4620      	mov	r0, r4
20024124:	f7ff fb1c 	bl	20023760 <HAL_NAND_EN_QUAL>
20024128:	e787      	b.n	2002403a <HAL_FLASH_Init+0x27a>
2002412a:	bf00      	nop
2002412c:	05f5e100 	.word	0x05f5e100

20024130 <HAL_Delay_us_psram>:
20024130:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024132:	9001      	str	r0, [sp, #4]
20024134:	9b01      	ldr	r3, [sp, #4]
20024136:	4c11      	ldr	r4, [pc, #68]	@ (2002417c <HAL_Delay_us_psram+0x4c>)
20024138:	b10b      	cbz	r3, 2002413e <HAL_Delay_us_psram+0xe>
2002413a:	6820      	ldr	r0, [r4, #0]
2002413c:	b940      	cbnz	r0, 20024150 <HAL_Delay_us_psram+0x20>
2002413e:	2000      	movs	r0, #0
20024140:	f000 fe76 	bl	20024e30 <HAL_RCC_GetHCLKFreq>
20024144:	4b0e      	ldr	r3, [pc, #56]	@ (20024180 <HAL_Delay_us_psram+0x50>)
20024146:	fbb0 f0f3 	udiv	r0, r0, r3
2002414a:	9b01      	ldr	r3, [sp, #4]
2002414c:	6020      	str	r0, [r4, #0]
2002414e:	b19b      	cbz	r3, 20024178 <HAL_Delay_us_psram+0x48>
20024150:	2830      	cmp	r0, #48	@ 0x30
20024152:	bf82      	ittt	hi
20024154:	9b01      	ldrhi	r3, [sp, #4]
20024156:	f103 33ff 	addhi.w	r3, r3, #4294967295
2002415a:	9301      	strhi	r3, [sp, #4]
2002415c:	9b01      	ldr	r3, [sp, #4]
2002415e:	b15b      	cbz	r3, 20024178 <HAL_Delay_us_psram+0x48>
20024160:	2205      	movs	r2, #5
20024162:	9b01      	ldr	r3, [sp, #4]
20024164:	3b01      	subs	r3, #1
20024166:	4343      	muls	r3, r0
20024168:	fbb3 f3f2 	udiv	r3, r3, r2
2002416c:	9303      	str	r3, [sp, #12]
2002416e:	9b03      	ldr	r3, [sp, #12]
20024170:	1e5a      	subs	r2, r3, #1
20024172:	9203      	str	r2, [sp, #12]
20024174:	2b00      	cmp	r3, #0
20024176:	d1fa      	bne.n	2002416e <HAL_Delay_us_psram+0x3e>
20024178:	b004      	add	sp, #16
2002417a:	bd10      	pop	{r4, pc}
2002417c:	20049f10 	.word	0x20049f10
20024180:	000f4240 	.word	0x000f4240

20024184 <HAL_MPI_OPSRAM_CAL_DELAY>:
20024184:	b570      	push	{r4, r5, r6, lr}
20024186:	460e      	mov	r6, r1
20024188:	4615      	mov	r5, r2
2002418a:	4604      	mov	r4, r0
2002418c:	b358      	cbz	r0, 200241e6 <HAL_MPI_OPSRAM_CAL_DELAY+0x62>
2002418e:	2202      	movs	r2, #2
20024190:	6803      	ldr	r3, [r0, #0]
20024192:	60da      	str	r2, [r3, #12]
20024194:	6802      	ldr	r2, [r0, #0]
20024196:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20024198:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
2002419c:	6593      	str	r3, [r2, #88]	@ 0x58
2002419e:	6802      	ldr	r2, [r0, #0]
200241a0:	2000      	movs	r0, #0
200241a2:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
200241a6:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
200241aa:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
200241ae:	f7ff ffbf 	bl	20024130 <HAL_Delay_us_psram>
200241b2:	2014      	movs	r0, #20
200241b4:	f7ff ffbc 	bl	20024130 <HAL_Delay_us_psram>
200241b8:	6820      	ldr	r0, [r4, #0]
200241ba:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200241be:	05db      	lsls	r3, r3, #23
200241c0:	d5fb      	bpl.n	200241ba <HAL_MPI_OPSRAM_CAL_DELAY+0x36>
200241c2:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200241c6:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
200241ca:	b2db      	uxtb	r3, r3
200241cc:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
200241d0:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
200241d4:	1e5a      	subs	r2, r3, #1
200241d6:	7032      	strb	r2, [r6, #0]
200241d8:	2201      	movs	r2, #1
200241da:	2000      	movs	r0, #0
200241dc:	3b04      	subs	r3, #4
200241de:	702b      	strb	r3, [r5, #0]
200241e0:	6823      	ldr	r3, [r4, #0]
200241e2:	60da      	str	r2, [r3, #12]
200241e4:	bd70      	pop	{r4, r5, r6, pc}
200241e6:	2001      	movs	r0, #1
200241e8:	e7fc      	b.n	200241e4 <HAL_MPI_OPSRAM_CAL_DELAY+0x60>
	...

200241ec <HAL_SPI_PSRAM_Init>:
200241ec:	b537      	push	{r0, r1, r2, r4, r5, lr}
200241ee:	4614      	mov	r4, r2
200241f0:	4605      	mov	r5, r0
200241f2:	2800      	cmp	r0, #0
200241f4:	d043      	beq.n	2002427e <HAL_SPI_PSRAM_Init+0x92>
200241f6:	2900      	cmp	r1, #0
200241f8:	d041      	beq.n	2002427e <HAL_SPI_PSRAM_Init+0x92>
200241fa:	f7fe fbbf 	bl	2002297c <HAL_QSPI_Init>
200241fe:	4628      	mov	r0, r5
20024200:	b2e1      	uxtb	r1, r4
20024202:	f7fe fc95 	bl	20022b30 <HAL_FLASH_SET_CLK_rom>
20024206:	4628      	mov	r0, r5
20024208:	f7ff fd54 	bl	20023cb4 <HAL_QSPI_GET_CLK>
2002420c:	4b1d      	ldr	r3, [pc, #116]	@ (20024284 <HAL_SPI_PSRAM_Init+0x98>)
2002420e:	4298      	cmp	r0, r3
20024210:	d930      	bls.n	20024274 <HAL_SPI_PSRAM_Init+0x88>
20024212:	4b1d      	ldr	r3, [pc, #116]	@ (20024288 <HAL_SPI_PSRAM_Init+0x9c>)
20024214:	4298      	cmp	r0, r3
20024216:	d92f      	bls.n	20024278 <HAL_SPI_PSRAM_Init+0x8c>
20024218:	4b1c      	ldr	r3, [pc, #112]	@ (2002428c <HAL_SPI_PSRAM_Init+0xa0>)
2002421a:	4298      	cmp	r0, r3
2002421c:	d922      	bls.n	20024264 <HAL_SPI_PSRAM_Init+0x78>
2002421e:	f240 34b6 	movw	r4, #950	@ 0x3b6
20024222:	f240 4374 	movw	r3, #1140	@ 0x474
20024226:	4a1a      	ldr	r2, [pc, #104]	@ (20024290 <HAL_SPI_PSRAM_Init+0xa4>)
20024228:	4290      	cmp	r0, r2
2002422a:	bf88      	it	hi
2002422c:	461c      	movhi	r4, r3
2002422e:	2200      	movs	r2, #0
20024230:	2101      	movs	r1, #1
20024232:	4628      	mov	r0, r5
20024234:	f7ff f8ba 	bl	200233ac <HAL_QSPI_SET_CLK_INV>
20024238:	2100      	movs	r1, #0
2002423a:	4622      	mov	r2, r4
2002423c:	2302      	movs	r3, #2
2002423e:	4628      	mov	r0, r5
20024240:	9100      	str	r1, [sp, #0]
20024242:	f7fe fd60 	bl	20022d06 <HAL_FLASH_SET_CS_TIME>
20024246:	4604      	mov	r4, r0
20024248:	b948      	cbnz	r0, 2002425e <HAL_SPI_PSRAM_Init+0x72>
2002424a:	2106      	movs	r1, #6
2002424c:	4628      	mov	r0, r5
2002424e:	f7fe fd6f 	bl	20022d30 <HAL_FLASH_SET_ROW_BOUNDARY>
20024252:	4604      	mov	r4, r0
20024254:	b918      	cbnz	r0, 2002425e <HAL_SPI_PSRAM_Init+0x72>
20024256:	2101      	movs	r1, #1
20024258:	4628      	mov	r0, r5
2002425a:	f7fe fd0e 	bl	20022c7a <HAL_FLASH_ENABLE_QSPI>
2002425e:	4620      	mov	r0, r4
20024260:	b003      	add	sp, #12
20024262:	bd30      	pop	{r4, r5, pc}
20024264:	4b0b      	ldr	r3, [pc, #44]	@ (20024294 <HAL_SPI_PSRAM_Init+0xa8>)
20024266:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
2002426a:	4298      	cmp	r0, r3
2002426c:	d8df      	bhi.n	2002422e <HAL_SPI_PSRAM_Init+0x42>
2002426e:	2200      	movs	r2, #0
20024270:	4611      	mov	r1, r2
20024272:	e7de      	b.n	20024232 <HAL_SPI_PSRAM_Init+0x46>
20024274:	24b4      	movs	r4, #180	@ 0xb4
20024276:	e7fa      	b.n	2002426e <HAL_SPI_PSRAM_Init+0x82>
20024278:	f44f 74be 	mov.w	r4, #380	@ 0x17c
2002427c:	e7f7      	b.n	2002426e <HAL_SPI_PSRAM_Init+0x82>
2002427e:	2401      	movs	r4, #1
20024280:	e7ed      	b.n	2002425e <HAL_SPI_PSRAM_Init+0x72>
20024282:	bf00      	nop
20024284:	016e3600 	.word	0x016e3600
20024288:	02dc6c00 	.word	0x02dc6c00
2002428c:	05b8d800 	.word	0x05b8d800
20024290:	07270e00 	.word	0x07270e00
20024294:	03938700 	.word	0x03938700

20024298 <HAL_MPI_MR_WRITE>:
20024298:	b5f0      	push	{r4, r5, r6, r7, lr}
2002429a:	460e      	mov	r6, r1
2002429c:	4617      	mov	r7, r2
2002429e:	4605      	mov	r5, r0
200242a0:	b087      	sub	sp, #28
200242a2:	b1d8      	cbz	r0, 200242dc <HAL_MPI_MR_WRITE+0x44>
200242a4:	2207      	movs	r2, #7
200242a6:	2400      	movs	r4, #0
200242a8:	2303      	movs	r3, #3
200242aa:	e9cd 2203 	strd	r2, r2, [sp, #12]
200242ae:	2101      	movs	r1, #1
200242b0:	e9cd 4301 	strd	r4, r3, [sp, #4]
200242b4:	9400      	str	r4, [sp, #0]
200242b6:	4623      	mov	r3, r4
200242b8:	f7fe fc43 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
200242bc:	2102      	movs	r1, #2
200242be:	4628      	mov	r0, r5
200242c0:	f7fe fbd5 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200242c4:	4639      	mov	r1, r7
200242c6:	4628      	mov	r0, r5
200242c8:	f7fe fbca 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
200242cc:	4632      	mov	r2, r6
200242ce:	21c0      	movs	r1, #192	@ 0xc0
200242d0:	4628      	mov	r0, r5
200242d2:	f7fe fbf1 	bl	20022ab8 <HAL_FLASH_SET_CMD>
200242d6:	4620      	mov	r0, r4
200242d8:	b007      	add	sp, #28
200242da:	bdf0      	pop	{r4, r5, r6, r7, pc}
200242dc:	2001      	movs	r0, #1
200242de:	e7fb      	b.n	200242d8 <HAL_MPI_MR_WRITE+0x40>

200242e0 <HAL_MPI_SET_FIXLAT>:
200242e0:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
200242e4:	460c      	mov	r4, r1
200242e6:	4616      	mov	r6, r2
200242e8:	461f      	mov	r7, r3
200242ea:	4605      	mov	r5, r0
200242ec:	2800      	cmp	r0, #0
200242ee:	d040      	beq.n	20024372 <HAL_MPI_SET_FIXLAT+0x92>
200242f0:	466b      	mov	r3, sp
200242f2:	4a21      	ldr	r2, [pc, #132]	@ (20024378 <HAL_MPI_SET_FIXLAT+0x98>)
200242f4:	6810      	ldr	r0, [r2, #0]
200242f6:	6851      	ldr	r1, [r2, #4]
200242f8:	c303      	stmia	r3!, {r0, r1}
200242fa:	6890      	ldr	r0, [r2, #8]
200242fc:	68d1      	ldr	r1, [r2, #12]
200242fe:	c303      	stmia	r3!, {r0, r1}
20024300:	4628      	mov	r0, r5
20024302:	b2e1      	uxtb	r1, r4
20024304:	f7fe fd3a 	bl	20022d7c <HAL_MPI_EN_FIXLAT>
20024308:	f107 0310 	add.w	r3, r7, #16
2002430c:	446b      	add	r3, sp
2002430e:	f813 8c08 	ldrb.w	r8, [r3, #-8]
20024312:	ea4f 1848 	mov.w	r8, r8, lsl #5
20024316:	fa5f f888 	uxtb.w	r8, r8
2002431a:	b30c      	cbz	r4, 20024360 <HAL_MPI_SET_FIXLAT+0x80>
2002431c:	ab04      	add	r3, sp, #16
2002431e:	eb03 0356 	add.w	r3, r3, r6, lsr #1
20024322:	f813 4c10 	ldrb.w	r4, [r3, #-16]
20024326:	00a4      	lsls	r4, r4, #2
20024328:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
2002432c:	b264      	sxtb	r4, r4
2002432e:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
20024332:	2100      	movs	r1, #0
20024334:	4628      	mov	r0, r5
20024336:	f7ff ffaf 	bl	20024298 <HAL_MPI_MR_WRITE>
2002433a:	1e71      	subs	r1, r6, #1
2002433c:	4628      	mov	r0, r5
2002433e:	b249      	sxtb	r1, r1
20024340:	f7fe fd7a 	bl	20022e38 <HAL_MPI_MODIFY_RCMD_DELAY>
20024344:	4642      	mov	r2, r8
20024346:	2104      	movs	r1, #4
20024348:	4628      	mov	r0, r5
2002434a:	f7ff ffa5 	bl	20024298 <HAL_MPI_MR_WRITE>
2002434e:	1e79      	subs	r1, r7, #1
20024350:	4628      	mov	r0, r5
20024352:	b249      	sxtb	r1, r1
20024354:	f7fe fd79 	bl	20022e4a <HAL_MPI_MODIFY_WCMD_DELAY>
20024358:	2000      	movs	r0, #0
2002435a:	b004      	add	sp, #16
2002435c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20024360:	f106 0310 	add.w	r3, r6, #16
20024364:	446b      	add	r3, sp
20024366:	f813 4c10 	ldrb.w	r4, [r3, #-16]
2002436a:	00a4      	lsls	r4, r4, #2
2002436c:	f044 0401 	orr.w	r4, r4, #1
20024370:	e7dc      	b.n	2002432c <HAL_MPI_SET_FIXLAT+0x4c>
20024372:	2001      	movs	r0, #1
20024374:	e7f1      	b.n	2002435a <HAL_MPI_SET_FIXLAT+0x7a>
20024376:	bf00      	nop
20024378:	200264f0 	.word	0x200264f0

2002437c <HAL_LEGACY_MR_WRITE>:
2002437c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002437e:	460e      	mov	r6, r1
20024380:	4617      	mov	r7, r2
20024382:	4605      	mov	r5, r0
20024384:	b087      	sub	sp, #28
20024386:	b1d8      	cbz	r0, 200243c0 <HAL_LEGACY_MR_WRITE+0x44>
20024388:	2207      	movs	r2, #7
2002438a:	2400      	movs	r4, #0
2002438c:	2302      	movs	r3, #2
2002438e:	e9cd 2203 	strd	r2, r2, [sp, #12]
20024392:	2101      	movs	r1, #1
20024394:	e9cd 4301 	strd	r4, r3, [sp, #4]
20024398:	9400      	str	r4, [sp, #0]
2002439a:	4623      	mov	r3, r4
2002439c:	f7fe fbd1 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
200243a0:	2104      	movs	r1, #4
200243a2:	4628      	mov	r0, r5
200243a4:	f7fe fb63 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
200243a8:	4639      	mov	r1, r7
200243aa:	4628      	mov	r0, r5
200243ac:	f7fe fb58 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
200243b0:	4632      	mov	r2, r6
200243b2:	21c0      	movs	r1, #192	@ 0xc0
200243b4:	4628      	mov	r0, r5
200243b6:	f7fe fb7f 	bl	20022ab8 <HAL_FLASH_SET_CMD>
200243ba:	4620      	mov	r0, r4
200243bc:	b007      	add	sp, #28
200243be:	bdf0      	pop	{r4, r5, r6, r7, pc}
200243c0:	2001      	movs	r0, #1
200243c2:	e7fb      	b.n	200243bc <HAL_LEGACY_MR_WRITE+0x40>

200243c4 <HAL_LEGACY_CFG_READ>:
200243c4:	b530      	push	{r4, r5, lr}
200243c6:	4605      	mov	r5, r0
200243c8:	b085      	sub	sp, #20
200243ca:	b1a0      	cbz	r0, 200243f6 <HAL_LEGACY_CFG_READ+0x32>
200243cc:	2400      	movs	r4, #0
200243ce:	2107      	movs	r1, #7
200243d0:	2302      	movs	r3, #2
200243d2:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200243d6:	e9cd 1102 	strd	r1, r1, [sp, #8]
200243da:	0052      	lsls	r2, r2, #1
200243dc:	e9cd 4300 	strd	r4, r3, [sp]
200243e0:	b252      	sxtb	r2, r2
200243e2:	4623      	mov	r3, r4
200243e4:	f7fe faf6 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
200243e8:	4621      	mov	r1, r4
200243ea:	4628      	mov	r0, r5
200243ec:	f7fe fae7 	bl	200229be <HAL_FLASH_SET_AHB_RCMD>
200243f0:	4620      	mov	r0, r4
200243f2:	b005      	add	sp, #20
200243f4:	bd30      	pop	{r4, r5, pc}
200243f6:	2001      	movs	r0, #1
200243f8:	e7fb      	b.n	200243f2 <HAL_LEGACY_CFG_READ+0x2e>

200243fa <HAL_LEGACY_CFG_WRITE>:
200243fa:	b530      	push	{r4, r5, lr}
200243fc:	4605      	mov	r5, r0
200243fe:	b085      	sub	sp, #20
20024400:	b190      	cbz	r0, 20024428 <HAL_LEGACY_CFG_WRITE+0x2e>
20024402:	2107      	movs	r1, #7
20024404:	2400      	movs	r4, #0
20024406:	2302      	movs	r3, #2
20024408:	e9cd 1102 	strd	r1, r1, [sp, #8]
2002440c:	e9cd 4300 	strd	r4, r3, [sp]
20024410:	4623      	mov	r3, r4
20024412:	f990 2026 	ldrsb.w	r2, [r0, #38]	@ 0x26
20024416:	f7fe fb06 	bl	20022a26 <HAL_FLASH_CFG_AHB_WCMD>
2002441a:	2180      	movs	r1, #128	@ 0x80
2002441c:	4628      	mov	r0, r5
2002441e:	f7fe faf6 	bl	20022a0e <HAL_FLASH_SET_AHB_WCMD>
20024422:	4620      	mov	r0, r4
20024424:	b005      	add	sp, #20
20024426:	bd30      	pop	{r4, r5, pc}
20024428:	2001      	movs	r0, #1
2002442a:	e7fb      	b.n	20024424 <HAL_LEGACY_CFG_WRITE+0x2a>

2002442c <HAL_PSRAM_RESET>:
2002442c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002442e:	4604      	mov	r4, r0
20024430:	b087      	sub	sp, #28
20024432:	2800      	cmp	r0, #0
20024434:	d03b      	beq.n	200244ae <HAL_PSRAM_RESET+0x82>
20024436:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
2002443a:	2b05      	cmp	r3, #5
2002443c:	d034      	beq.n	200244a8 <HAL_PSRAM_RESET+0x7c>
2002443e:	3b03      	subs	r3, #3
20024440:	2b01      	cmp	r3, #1
20024442:	d82e      	bhi.n	200244a2 <HAL_PSRAM_RESET+0x76>
20024444:	2601      	movs	r6, #1
20024446:	2703      	movs	r7, #3
20024448:	2300      	movs	r3, #0
2002444a:	2507      	movs	r5, #7
2002444c:	b276      	sxtb	r6, r6
2002444e:	b27f      	sxtb	r7, r7
20024450:	461a      	mov	r2, r3
20024452:	2101      	movs	r1, #1
20024454:	4620      	mov	r0, r4
20024456:	e9cd 5503 	strd	r5, r5, [sp, #12]
2002445a:	e9cd 5701 	strd	r5, r7, [sp, #4]
2002445e:	9600      	str	r6, [sp, #0]
20024460:	f7fe fb6f 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
20024464:	2200      	movs	r2, #0
20024466:	21ff      	movs	r1, #255	@ 0xff
20024468:	4620      	mov	r0, r4
2002446a:	f7fe fb25 	bl	20022ab8 <HAL_FLASH_SET_CMD>
2002446e:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024472:	2b05      	cmp	r3, #5
20024474:	d10f      	bne.n	20024496 <HAL_PSRAM_RESET+0x6a>
20024476:	2300      	movs	r3, #0
20024478:	2101      	movs	r1, #1
2002447a:	461a      	mov	r2, r3
2002447c:	4620      	mov	r0, r4
2002447e:	e9cd 5503 	strd	r5, r5, [sp, #12]
20024482:	e9cd 5701 	strd	r5, r7, [sp, #4]
20024486:	9600      	str	r6, [sp, #0]
20024488:	f7fe fb5b 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
2002448c:	2200      	movs	r2, #0
2002448e:	21ff      	movs	r1, #255	@ 0xff
20024490:	4620      	mov	r0, r4
20024492:	f7fe fb11 	bl	20022ab8 <HAL_FLASH_SET_CMD>
20024496:	2000      	movs	r0, #0
20024498:	f7fd fcc3 	bl	20021e22 <HAL_Delay_us>
2002449c:	2003      	movs	r0, #3
2002449e:	f7fd fcc0 	bl	20021e22 <HAL_Delay_us>
200244a2:	2000      	movs	r0, #0
200244a4:	b007      	add	sp, #28
200244a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200244a8:	2603      	movs	r6, #3
200244aa:	2702      	movs	r7, #2
200244ac:	e7cc      	b.n	20024448 <HAL_PSRAM_RESET+0x1c>
200244ae:	2001      	movs	r0, #1
200244b0:	e7f8      	b.n	200244a4 <HAL_PSRAM_RESET+0x78>
	...

200244b4 <HAL_OPI_PSRAM_Init>:
200244b4:	b530      	push	{r4, r5, lr}
200244b6:	4604      	mov	r4, r0
200244b8:	b085      	sub	sp, #20
200244ba:	2800      	cmp	r0, #0
200244bc:	d06e      	beq.n	2002459c <HAL_OPI_PSRAM_Init+0xe8>
200244be:	2900      	cmp	r1, #0
200244c0:	d06c      	beq.n	2002459c <HAL_OPI_PSRAM_Init+0xe8>
200244c2:	f7fe fa5b 	bl	2002297c <HAL_QSPI_Init>
200244c6:	6823      	ldr	r3, [r4, #0]
200244c8:	f10d 020e 	add.w	r2, sp, #14
200244cc:	f10d 010f 	add.w	r1, sp, #15
200244d0:	4620      	mov	r0, r4
200244d2:	681d      	ldr	r5, [r3, #0]
200244d4:	f7ff fe56 	bl	20024184 <HAL_MPI_OPSRAM_CAL_DELAY>
200244d8:	2101      	movs	r1, #1
200244da:	4620      	mov	r0, r4
200244dc:	f7fe fb28 	bl	20022b30 <HAL_FLASH_SET_CLK_rom>
200244e0:	4620      	mov	r0, r4
200244e2:	f7ff fbe7 	bl	20023cb4 <HAL_QSPI_GET_CLK>
200244e6:	4b2e      	ldr	r3, [pc, #184]	@ (200245a0 <HAL_OPI_PSRAM_Init+0xec>)
200244e8:	f005 0501 	and.w	r5, r5, #1
200244ec:	4298      	cmp	r0, r3
200244ee:	d836      	bhi.n	2002455e <HAL_OPI_PSRAM_Init+0xaa>
200244f0:	2314      	movs	r3, #20
200244f2:	2103      	movs	r1, #3
200244f4:	f88d 300e 	strb.w	r3, [sp, #14]
200244f8:	f88d 300f 	strb.w	r3, [sp, #15]
200244fc:	4608      	mov	r0, r1
200244fe:	2300      	movs	r3, #0
20024500:	22b4      	movs	r2, #180	@ 0xb4
20024502:	f884 1025 	strb.w	r1, [r4, #37]	@ 0x25
20024506:	f884 1026 	strb.w	r1, [r4, #38]	@ 0x26
2002450a:	2106      	movs	r1, #6
2002450c:	9000      	str	r0, [sp, #0]
2002450e:	4620      	mov	r0, r4
20024510:	f7fe fbf9 	bl	20022d06 <HAL_FLASH_SET_CS_TIME>
20024514:	2107      	movs	r1, #7
20024516:	4620      	mov	r0, r4
20024518:	f7fe fc0a 	bl	20022d30 <HAL_FLASH_SET_ROW_BOUNDARY>
2002451c:	2101      	movs	r1, #1
2002451e:	4620      	mov	r0, r4
20024520:	f7fe fc3a 	bl	20022d98 <HAL_MPI_ENABLE_DQS>
20024524:	f89d 100e 	ldrb.w	r1, [sp, #14]
20024528:	4620      	mov	r0, r4
2002452a:	f7fe fc43 	bl	20022db4 <HAL_MPI_SET_DQS_DELAY>
2002452e:	2200      	movs	r2, #0
20024530:	f89d 100f 	ldrb.w	r1, [sp, #15]
20024534:	4620      	mov	r0, r4
20024536:	f7fe fc49 	bl	20022dcc <HAL_MPI_SET_SCK>
2002453a:	2101      	movs	r1, #1
2002453c:	4620      	mov	r0, r4
2002453e:	f7fe fb9c 	bl	20022c7a <HAL_FLASH_ENABLE_QSPI>
20024542:	2101      	movs	r1, #1
20024544:	4620      	mov	r0, r4
20024546:	f7fe fba6 	bl	20022c96 <HAL_FLASH_ENABLE_OPI>
2002454a:	b92d      	cbnz	r5, 20024558 <HAL_OPI_PSRAM_Init+0xa4>
2002454c:	4b15      	ldr	r3, [pc, #84]	@ (200245a4 <HAL_OPI_PSRAM_Init+0xf0>)
2002454e:	681b      	ldr	r3, [r3, #0]
20024550:	f003 0303 	and.w	r3, r3, #3
20024554:	2b03      	cmp	r3, #3
20024556:	d11d      	bne.n	20024594 <HAL_OPI_PSRAM_Init+0xe0>
20024558:	2000      	movs	r0, #0
2002455a:	b005      	add	sp, #20
2002455c:	bd30      	pop	{r4, r5, pc}
2002455e:	4b12      	ldr	r3, [pc, #72]	@ (200245a8 <HAL_OPI_PSRAM_Init+0xf4>)
20024560:	4298      	cmp	r0, r3
20024562:	d90b      	bls.n	2002457c <HAL_OPI_PSRAM_Init+0xc8>
20024564:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024568:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
2002456c:	4298      	cmp	r0, r3
2002456e:	d90b      	bls.n	20024588 <HAL_OPI_PSRAM_Init+0xd4>
20024570:	2107      	movs	r1, #7
20024572:	2014      	movs	r0, #20
20024574:	2308      	movs	r3, #8
20024576:	f240 5232 	movw	r2, #1330	@ 0x532
2002457a:	e7c2      	b.n	20024502 <HAL_OPI_PSRAM_Init+0x4e>
2002457c:	2105      	movs	r1, #5
2002457e:	200e      	movs	r0, #14
20024580:	2303      	movs	r3, #3
20024582:	f240 32b6 	movw	r2, #950	@ 0x3b6
20024586:	e7bc      	b.n	20024502 <HAL_OPI_PSRAM_Init+0x4e>
20024588:	2106      	movs	r1, #6
2002458a:	2011      	movs	r0, #17
2002458c:	2305      	movs	r3, #5
2002458e:	f240 4274 	movw	r2, #1140	@ 0x474
20024592:	e7b6      	b.n	20024502 <HAL_OPI_PSRAM_Init+0x4e>
20024594:	4620      	mov	r0, r4
20024596:	f7ff ff49 	bl	2002442c <HAL_PSRAM_RESET>
2002459a:	e7dd      	b.n	20024558 <HAL_OPI_PSRAM_Init+0xa4>
2002459c:	2001      	movs	r0, #1
2002459e:	e7dc      	b.n	2002455a <HAL_OPI_PSRAM_Init+0xa6>
200245a0:	02dc6c01 	.word	0x02dc6c01
200245a4:	500c0000 	.word	0x500c0000
200245a8:	0e4e1c01 	.word	0x0e4e1c01

200245ac <HAL_LEGACY_PSRAM_Init>:
200245ac:	b5f0      	push	{r4, r5, r6, r7, lr}
200245ae:	4604      	mov	r4, r0
200245b0:	b085      	sub	sp, #20
200245b2:	2800      	cmp	r0, #0
200245b4:	f000 8096 	beq.w	200246e4 <HAL_LEGACY_PSRAM_Init+0x138>
200245b8:	2900      	cmp	r1, #0
200245ba:	f000 8093 	beq.w	200246e4 <HAL_LEGACY_PSRAM_Init+0x138>
200245be:	f7fe f9dd 	bl	2002297c <HAL_QSPI_Init>
200245c2:	6823      	ldr	r3, [r4, #0]
200245c4:	f10d 020e 	add.w	r2, sp, #14
200245c8:	f10d 010f 	add.w	r1, sp, #15
200245cc:	4620      	mov	r0, r4
200245ce:	681e      	ldr	r6, [r3, #0]
200245d0:	f7ff fdd8 	bl	20024184 <HAL_MPI_OPSRAM_CAL_DELAY>
200245d4:	2101      	movs	r1, #1
200245d6:	4620      	mov	r0, r4
200245d8:	f7fe faaa 	bl	20022b30 <HAL_FLASH_SET_CLK_rom>
200245dc:	4620      	mov	r0, r4
200245de:	f7ff fb69 	bl	20023cb4 <HAL_QSPI_GET_CLK>
200245e2:	4b41      	ldr	r3, [pc, #260]	@ (200246e8 <HAL_LEGACY_PSRAM_Init+0x13c>)
200245e4:	4605      	mov	r5, r0
200245e6:	4298      	cmp	r0, r3
200245e8:	4f40      	ldr	r7, [pc, #256]	@ (200246ec <HAL_LEGACY_PSRAM_Init+0x140>)
200245ea:	f006 0601 	and.w	r6, r6, #1
200245ee:	d850      	bhi.n	20024692 <HAL_LEGACY_PSRAM_Init+0xe6>
200245f0:	2314      	movs	r3, #20
200245f2:	2103      	movs	r1, #3
200245f4:	f88d 300e 	strb.w	r3, [sp, #14]
200245f8:	f88d 300f 	strb.w	r3, [sp, #15]
200245fc:	22b4      	movs	r2, #180	@ 0xb4
200245fe:	2300      	movs	r3, #0
20024600:	9100      	str	r1, [sp, #0]
20024602:	4620      	mov	r0, r4
20024604:	2106      	movs	r1, #6
20024606:	f7fe fb7e 	bl	20022d06 <HAL_FLASH_SET_CS_TIME>
2002460a:	2107      	movs	r1, #7
2002460c:	4620      	mov	r0, r4
2002460e:	f7fe fb8f 	bl	20022d30 <HAL_FLASH_SET_ROW_BOUNDARY>
20024612:	2101      	movs	r1, #1
20024614:	4620      	mov	r0, r4
20024616:	f7fe fbbf 	bl	20022d98 <HAL_MPI_ENABLE_DQS>
2002461a:	f89d 100e 	ldrb.w	r1, [sp, #14]
2002461e:	4620      	mov	r0, r4
20024620:	f7fe fbc8 	bl	20022db4 <HAL_MPI_SET_DQS_DELAY>
20024624:	2200      	movs	r2, #0
20024626:	f89d 100f 	ldrb.w	r1, [sp, #15]
2002462a:	4620      	mov	r0, r4
2002462c:	f7fe fbce 	bl	20022dcc <HAL_MPI_SET_SCK>
20024630:	2101      	movs	r1, #1
20024632:	4620      	mov	r0, r4
20024634:	f7fe fb86 	bl	20022d44 <HAL_FLASH_SET_LEGACY>
20024638:	2101      	movs	r1, #1
2002463a:	4620      	mov	r0, r4
2002463c:	f7fe fb1d 	bl	20022c7a <HAL_FLASH_ENABLE_QSPI>
20024640:	2101      	movs	r1, #1
20024642:	4620      	mov	r0, r4
20024644:	f7fe fb27 	bl	20022c96 <HAL_FLASH_ENABLE_OPI>
20024648:	b92e      	cbnz	r6, 20024656 <HAL_LEGACY_PSRAM_Init+0xaa>
2002464a:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
2002464e:	b913      	cbnz	r3, 20024656 <HAL_LEGACY_PSRAM_Init+0xaa>
20024650:	4620      	mov	r0, r4
20024652:	f7ff feeb 	bl	2002442c <HAL_PSRAM_RESET>
20024656:	42bd      	cmp	r5, r7
20024658:	d93a      	bls.n	200246d0 <HAL_LEGACY_PSRAM_Init+0x124>
2002465a:	4b25      	ldr	r3, [pc, #148]	@ (200246f0 <HAL_LEGACY_PSRAM_Init+0x144>)
2002465c:	429d      	cmp	r5, r3
2002465e:	d93c      	bls.n	200246da <HAL_LEGACY_PSRAM_Init+0x12e>
20024660:	2206      	movs	r2, #6
20024662:	2302      	movs	r3, #2
20024664:	2588      	movs	r5, #136	@ 0x88
20024666:	263b      	movs	r6, #59	@ 0x3b
20024668:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
2002466c:	2101      	movs	r1, #1
2002466e:	f884 2025 	strb.w	r2, [r4, #37]	@ 0x25
20024672:	4620      	mov	r0, r4
20024674:	f7fe fb82 	bl	20022d7c <HAL_MPI_EN_FIXLAT>
20024678:	4632      	mov	r2, r6
2002467a:	2100      	movs	r1, #0
2002467c:	4620      	mov	r0, r4
2002467e:	f7ff fe7d 	bl	2002437c <HAL_LEGACY_MR_WRITE>
20024682:	462a      	mov	r2, r5
20024684:	2104      	movs	r1, #4
20024686:	4620      	mov	r0, r4
20024688:	f7ff fe78 	bl	2002437c <HAL_LEGACY_MR_WRITE>
2002468c:	2000      	movs	r0, #0
2002468e:	b005      	add	sp, #20
20024690:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024692:	42b8      	cmp	r0, r7
20024694:	d90d      	bls.n	200246b2 <HAL_LEGACY_PSRAM_Init+0x106>
20024696:	4b16      	ldr	r3, [pc, #88]	@ (200246f0 <HAL_LEGACY_PSRAM_Init+0x144>)
20024698:	4298      	cmp	r0, r3
2002469a:	d90f      	bls.n	200246bc <HAL_LEGACY_PSRAM_Init+0x110>
2002469c:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200246a0:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200246a4:	4298      	cmp	r0, r3
200246a6:	d80e      	bhi.n	200246c6 <HAL_LEGACY_PSRAM_Init+0x11a>
200246a8:	2114      	movs	r1, #20
200246aa:	2308      	movs	r3, #8
200246ac:	f240 5232 	movw	r2, #1330	@ 0x532
200246b0:	e7a6      	b.n	20024600 <HAL_LEGACY_PSRAM_Init+0x54>
200246b2:	210e      	movs	r1, #14
200246b4:	2303      	movs	r3, #3
200246b6:	f240 32b6 	movw	r2, #950	@ 0x3b6
200246ba:	e7a1      	b.n	20024600 <HAL_LEGACY_PSRAM_Init+0x54>
200246bc:	2111      	movs	r1, #17
200246be:	2305      	movs	r3, #5
200246c0:	f240 4274 	movw	r2, #1140	@ 0x474
200246c4:	e79c      	b.n	20024600 <HAL_LEGACY_PSRAM_Init+0x54>
200246c6:	2117      	movs	r1, #23
200246c8:	2309      	movs	r3, #9
200246ca:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
200246ce:	e797      	b.n	20024600 <HAL_LEGACY_PSRAM_Init+0x54>
200246d0:	2204      	movs	r2, #4
200246d2:	2300      	movs	r3, #0
200246d4:	2508      	movs	r5, #8
200246d6:	2633      	movs	r6, #51	@ 0x33
200246d8:	e7c6      	b.n	20024668 <HAL_LEGACY_PSRAM_Init+0xbc>
200246da:	2205      	movs	r2, #5
200246dc:	2300      	movs	r3, #0
200246de:	2508      	movs	r5, #8
200246e0:	2637      	movs	r6, #55	@ 0x37
200246e2:	e7c1      	b.n	20024668 <HAL_LEGACY_PSRAM_Init+0xbc>
200246e4:	2001      	movs	r0, #1
200246e6:	e7d2      	b.n	2002468e <HAL_LEGACY_PSRAM_Init+0xe2>
200246e8:	02dc6c01 	.word	0x02dc6c01
200246ec:	0e4e1c01 	.word	0x0e4e1c01
200246f0:	112a8801 	.word	0x112a8801

200246f4 <HAL_HYPER_PSRAM_WriteCR>:
200246f4:	b570      	push	{r4, r5, r6, lr}
200246f6:	460e      	mov	r6, r1
200246f8:	4615      	mov	r5, r2
200246fa:	4604      	mov	r4, r0
200246fc:	b086      	sub	sp, #24
200246fe:	b1f8      	cbz	r0, 20024740 <HAL_HYPER_PSRAM_WriteCR+0x4c>
20024700:	2207      	movs	r2, #7
20024702:	2303      	movs	r3, #3
20024704:	e9cd 2301 	strd	r2, r3, [sp, #4]
20024708:	2300      	movs	r3, #0
2002470a:	e9cd 2203 	strd	r2, r2, [sp, #12]
2002470e:	9300      	str	r3, [sp, #0]
20024710:	2101      	movs	r1, #1
20024712:	f7fe fa16 	bl	20022b42 <HAL_FLASH_MANUAL_CMD>
20024716:	4631      	mov	r1, r6
20024718:	4620      	mov	r0, r4
2002471a:	f7fe f9bc 	bl	20022a96 <HAL_FLASH_WRITE_ABYTE>
2002471e:	2102      	movs	r1, #2
20024720:	4620      	mov	r0, r4
20024722:	f7fe f9a4 	bl	20022a6e <HAL_FLASH_WRITE_DLEN>
20024726:	4629      	mov	r1, r5
20024728:	4620      	mov	r0, r4
2002472a:	f7fe f999 	bl	20022a60 <HAL_FLASH_WRITE_WORD>
2002472e:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
20024732:	2160      	movs	r1, #96	@ 0x60
20024734:	4620      	mov	r0, r4
20024736:	b006      	add	sp, #24
20024738:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
2002473c:	f7fe b9bc 	b.w	20022ab8 <HAL_FLASH_SET_CMD>
20024740:	b006      	add	sp, #24
20024742:	bd70      	pop	{r4, r5, r6, pc}

20024744 <HAL_HYPER_PSRAM_Init>:
20024744:	b538      	push	{r3, r4, r5, lr}
20024746:	4604      	mov	r4, r0
20024748:	2201      	movs	r2, #1
2002474a:	f7ff feb3 	bl	200244b4 <HAL_OPI_PSRAM_Init>
2002474e:	4620      	mov	r0, r4
20024750:	f7ff fab0 	bl	20023cb4 <HAL_QSPI_GET_CLK>
20024754:	4b15      	ldr	r3, [pc, #84]	@ (200247ac <HAL_HYPER_PSRAM_Init+0x68>)
20024756:	4298      	cmp	r0, r3
20024758:	d91f      	bls.n	2002479a <HAL_HYPER_PSRAM_Init+0x56>
2002475a:	4b15      	ldr	r3, [pc, #84]	@ (200247b0 <HAL_HYPER_PSRAM_Init+0x6c>)
2002475c:	4298      	cmp	r0, r3
2002475e:	d91f      	bls.n	200247a0 <HAL_HYPER_PSRAM_Init+0x5c>
20024760:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
20024764:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
20024768:	4298      	cmp	r0, r3
2002476a:	d91c      	bls.n	200247a6 <HAL_HYPER_PSRAM_Init+0x62>
2002476c:	f242 758f 	movw	r5, #10127	@ 0x278f
20024770:	f241 738f 	movw	r3, #6031	@ 0x178f
20024774:	4a0f      	ldr	r2, [pc, #60]	@ (200247b4 <HAL_HYPER_PSRAM_Init+0x70>)
20024776:	4290      	cmp	r0, r2
20024778:	bf98      	it	ls
2002477a:	461d      	movls	r5, r3
2002477c:	2101      	movs	r1, #1
2002477e:	4620      	mov	r0, r4
20024780:	f7fe fa97 	bl	20022cb2 <HAL_FLASH_ENABLE_HYPER>
20024784:	462a      	mov	r2, r5
20024786:	4620      	mov	r0, r4
20024788:	2100      	movs	r1, #0
2002478a:	f7ff ffb3 	bl	200246f4 <HAL_HYPER_PSRAM_WriteCR>
2002478e:	2101      	movs	r1, #1
20024790:	4620      	mov	r0, r4
20024792:	f7fe faf3 	bl	20022d7c <HAL_MPI_EN_FIXLAT>
20024796:	2000      	movs	r0, #0
20024798:	bd38      	pop	{r3, r4, r5, pc}
2002479a:	f24e 758f 	movw	r5, #59279	@ 0xe78f
2002479e:	e7ed      	b.n	2002477c <HAL_HYPER_PSRAM_Init+0x38>
200247a0:	f24f 758f 	movw	r5, #63375	@ 0xf78f
200247a4:	e7ea      	b.n	2002477c <HAL_HYPER_PSRAM_Init+0x38>
200247a6:	f240 758f 	movw	r5, #1935	@ 0x78f
200247aa:	e7e7      	b.n	2002477c <HAL_HYPER_PSRAM_Init+0x38>
200247ac:	0a21fe81 	.word	0x0a21fe81
200247b0:	0c65d401 	.word	0x0c65d401
200247b4:	112a8801 	.word	0x112a8801

200247b8 <HAL_HYPER_CFG_READ>:
200247b8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200247ba:	b160      	cbz	r0, 200247d6 <HAL_HYPER_CFG_READ+0x1e>
200247bc:	2107      	movs	r1, #7
200247be:	2303      	movs	r3, #3
200247c0:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200247c4:	e9cd 1300 	strd	r1, r3, [sp]
200247c8:	3a01      	subs	r2, #1
200247ca:	2300      	movs	r3, #0
200247cc:	e9cd 1102 	strd	r1, r1, [sp, #8]
200247d0:	b252      	sxtb	r2, r2
200247d2:	f7fe f8ff 	bl	200229d4 <HAL_FLASH_CFG_AHB_RCMD>
200247d6:	b005      	add	sp, #20
200247d8:	f85d fb04 	ldr.w	pc, [sp], #4

200247dc <HAL_HYPER_CFG_WRITE>:
200247dc:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200247de:	b160      	cbz	r0, 200247fa <HAL_HYPER_CFG_WRITE+0x1e>
200247e0:	2107      	movs	r1, #7
200247e2:	2303      	movs	r3, #3
200247e4:	f890 2026 	ldrb.w	r2, [r0, #38]	@ 0x26
200247e8:	e9cd 1300 	strd	r1, r3, [sp]
200247ec:	3a01      	subs	r2, #1
200247ee:	2300      	movs	r3, #0
200247f0:	e9cd 1102 	strd	r1, r1, [sp, #8]
200247f4:	b252      	sxtb	r2, r2
200247f6:	f7fe f916 	bl	20022a26 <HAL_FLASH_CFG_AHB_WCMD>
200247fa:	b005      	add	sp, #20
200247fc:	f85d fb04 	ldr.w	pc, [sp], #4

20024800 <HAL_PIN_SetUartFunc.part.0>:
20024800:	108b      	asrs	r3, r1, #2
20024802:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
20024806:	b5f0      	push	{r4, r5, r6, r7, lr}
20024808:	b2d6      	uxtb	r6, r2
2002480a:	2e04      	cmp	r6, #4
2002480c:	d849      	bhi.n	200248a2 <HAL_PIN_SetUartFunc.part.0+0xa2>
2002480e:	2e02      	cmp	r6, #2
20024810:	d810      	bhi.n	20024834 <HAL_PIN_SetUartFunc.part.0+0x34>
20024812:	4d25      	ldr	r5, [pc, #148]	@ (200248a8 <HAL_PIN_SetUartFunc.part.0+0xa8>)
20024814:	240e      	movs	r4, #14
20024816:	eb05 0582 	add.w	r5, r5, r2, lsl #2
2002481a:	f240 22b2 	movw	r2, #690	@ 0x2b2
2002481e:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
20024822:	b29b      	uxth	r3, r3
20024824:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
20024828:	2b03      	cmp	r3, #3
2002482a:	d83a      	bhi.n	200248a2 <HAL_PIN_SetUartFunc.part.0+0xa2>
2002482c:	e8df f003 	tbb	[pc, r3]
20024830:	20271a09 	.word	0x20271a09
20024834:	4d1d      	ldr	r5, [pc, #116]	@ (200248ac <HAL_PIN_SetUartFunc.part.0+0xac>)
20024836:	009b      	lsls	r3, r3, #2
20024838:	243d      	movs	r4, #61	@ 0x3d
2002483a:	f240 3221 	movw	r2, #801	@ 0x321
2002483e:	441d      	add	r5, r3
20024840:	e7ed      	b.n	2002481e <HAL_PIN_SetUartFunc.part.0+0x1e>
20024842:	2c0e      	cmp	r4, #14
20024844:	f04f 0608 	mov.w	r6, #8
20024848:	d120      	bne.n	2002488c <HAL_PIN_SetUartFunc.part.0+0x8c>
2002484a:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
2002484e:	682f      	ldr	r7, [r5, #0]
20024850:	1b03      	subs	r3, r0, r4
20024852:	40b3      	lsls	r3, r6
20024854:	407b      	eors	r3, r7
20024856:	400b      	ands	r3, r1
20024858:	4410      	add	r0, r2
2002485a:	407b      	eors	r3, r7
2002485c:	1b00      	subs	r0, r0, r4
2002485e:	602b      	str	r3, [r5, #0]
20024860:	b280      	uxth	r0, r0
20024862:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024864:	2c0e      	cmp	r4, #14
20024866:	f04f 0600 	mov.w	r6, #0
2002486a:	d112      	bne.n	20024892 <HAL_PIN_SetUartFunc.part.0+0x92>
2002486c:	213f      	movs	r1, #63	@ 0x3f
2002486e:	e7ee      	b.n	2002484e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024870:	2c0e      	cmp	r4, #14
20024872:	f04f 0610 	mov.w	r6, #16
20024876:	d10e      	bne.n	20024896 <HAL_PIN_SetUartFunc.part.0+0x96>
20024878:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
2002487c:	e7e7      	b.n	2002484e <HAL_PIN_SetUartFunc.part.0+0x4e>
2002487e:	2c0e      	cmp	r4, #14
20024880:	f04f 0618 	mov.w	r6, #24
20024884:	d10a      	bne.n	2002489c <HAL_PIN_SetUartFunc.part.0+0x9c>
20024886:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
2002488a:	e7e0      	b.n	2002484e <HAL_PIN_SetUartFunc.part.0+0x4e>
2002488c:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
20024890:	e7dd      	b.n	2002484e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024892:	2107      	movs	r1, #7
20024894:	e7db      	b.n	2002484e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024896:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
2002489a:	e7d8      	b.n	2002484e <HAL_PIN_SetUartFunc.part.0+0x4e>
2002489c:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
200248a0:	e7d5      	b.n	2002484e <HAL_PIN_SetUartFunc.part.0+0x4e>
200248a2:	2000      	movs	r0, #0
200248a4:	e7dd      	b.n	20024862 <HAL_PIN_SetUartFunc.part.0+0x62>
200248a6:	bf00      	nop
200248a8:	5000b058 	.word	0x5000b058
200248ac:	4000ef0c 	.word	0x4000ef0c

200248b0 <HAL_PIN_SetAonPE>:
200248b0:	2a00      	cmp	r2, #0
200248b2:	d031      	beq.n	20024918 <HAL_PIN_SetAonPE+0x68>
200248b4:	282f      	cmp	r0, #47	@ 0x2f
200248b6:	dd16      	ble.n	200248e6 <HAL_PIN_SetAonPE+0x36>
200248b8:	283a      	cmp	r0, #58	@ 0x3a
200248ba:	dc2d      	bgt.n	20024918 <HAL_PIN_SetAonPE+0x68>
200248bc:	2301      	movs	r3, #1
200248be:	4a17      	ldr	r2, [pc, #92]	@ (2002491c <HAL_PIN_SetAonPE+0x6c>)
200248c0:	382a      	subs	r0, #42	@ 0x2a
200248c2:	4083      	lsls	r3, r0
200248c4:	6f10      	ldr	r0, [r2, #112]	@ 0x70
200248c6:	f011 0f20 	tst.w	r1, #32
200248ca:	bf14      	ite	ne
200248cc:	4318      	orrne	r0, r3
200248ce:	4398      	biceq	r0, r3
200248d0:	6710      	str	r0, [r2, #112]	@ 0x70
200248d2:	4a12      	ldr	r2, [pc, #72]	@ (2002491c <HAL_PIN_SetAonPE+0x6c>)
200248d4:	f011 0f10 	tst.w	r1, #16
200248d8:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
200248da:	bf14      	ite	ne
200248dc:	430b      	orrne	r3, r1
200248de:	ea21 0303 	biceq.w	r3, r1, r3
200248e2:	66d3      	str	r3, [r2, #108]	@ 0x6c
200248e4:	4770      	bx	lr
200248e6:	3826      	subs	r0, #38	@ 0x26
200248e8:	2803      	cmp	r0, #3
200248ea:	d815      	bhi.n	20024918 <HAL_PIN_SetAonPE+0x68>
200248ec:	4b0c      	ldr	r3, [pc, #48]	@ (20024920 <HAL_PIN_SetAonPE+0x70>)
200248ee:	f011 0f20 	tst.w	r1, #32
200248f2:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
200248f6:	bf14      	ite	ne
200248f8:	f042 0210 	orrne.w	r2, r2, #16
200248fc:	f022 0210 	biceq.w	r2, r2, #16
20024900:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024904:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024908:	06c9      	lsls	r1, r1, #27
2002490a:	bf4c      	ite	mi
2002490c:	f042 0208 	orrmi.w	r2, r2, #8
20024910:	f022 0208 	bicpl.w	r2, r2, #8
20024914:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024918:	4770      	bx	lr
2002491a:	bf00      	nop
2002491c:	500cb000 	.word	0x500cb000
20024920:	500cb05c 	.word	0x500cb05c

20024924 <HAL_PIN_Get_Base>:
20024924:	b138      	cbz	r0, 20024936 <HAL_PIN_Get_Base+0x12>
20024926:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
2002492a:	6893      	ldr	r3, [r2, #8]
2002492c:	4806      	ldr	r0, [pc, #24]	@ (20024948 <HAL_PIN_Get_Base+0x24>)
2002492e:	f043 0304 	orr.w	r3, r3, #4
20024932:	6093      	str	r3, [r2, #8]
20024934:	4770      	bx	lr
20024936:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
2002493a:	6853      	ldr	r3, [r2, #4]
2002493c:	4803      	ldr	r0, [pc, #12]	@ (2002494c <HAL_PIN_Get_Base+0x28>)
2002493e:	f043 0308 	orr.w	r3, r3, #8
20024942:	6053      	str	r3, [r2, #4]
20024944:	4770      	bx	lr
20024946:	bf00      	nop
20024948:	50003000 	.word	0x50003000
2002494c:	40003000 	.word	0x40003000

20024950 <HAL_PIN_Func2Idx>:
20024950:	283b      	cmp	r0, #59	@ 0x3b
20024952:	bfc8      	it	gt
20024954:	383c      	subgt	r0, #60	@ 0x3c
20024956:	0143      	lsls	r3, r0, #5
20024958:	b152      	cbz	r2, 20024970 <HAL_PIN_Func2Idx+0x20>
2002495a:	4a06      	ldr	r2, [pc, #24]	@ (20024974 <HAL_PIN_Func2Idx+0x24>)
2002495c:	2000      	movs	r0, #0
2002495e:	4413      	add	r3, r2
20024960:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
20024964:	428a      	cmp	r2, r1
20024966:	d002      	beq.n	2002496e <HAL_PIN_Func2Idx+0x1e>
20024968:	3001      	adds	r0, #1
2002496a:	2810      	cmp	r0, #16
2002496c:	d1f8      	bne.n	20024960 <HAL_PIN_Func2Idx+0x10>
2002496e:	4770      	bx	lr
20024970:	4a01      	ldr	r2, [pc, #4]	@ (20024978 <HAL_PIN_Func2Idx+0x28>)
20024972:	e7f3      	b.n	2002495c <HAL_PIN_Func2Idx+0xc>
20024974:	20025d90 	.word	0x20025d90
20024978:	20025cf0 	.word	0x20025cf0

2002497c <HAL_PIN_Set>:
2002497c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20024980:	4615      	mov	r5, r2
20024982:	4604      	mov	r4, r0
20024984:	b918      	cbnz	r0, 2002498e <HAL_PIN_Set+0x12>
20024986:	f04f 30ff 	mov.w	r0, #4294967295
2002498a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002498e:	283a      	cmp	r0, #58	@ 0x3a
20024990:	bfcd      	iteet	gt
20024992:	2700      	movgt	r7, #0
20024994:	2701      	movle	r7, #1
20024996:	4606      	movle	r6, r0
20024998:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
2002499c:	4638      	mov	r0, r7
2002499e:	f7ff ffc1 	bl	20024924 <HAL_PIN_Get_Base>
200249a2:	4680      	mov	r8, r0
200249a4:	2f00      	cmp	r7, #0
200249a6:	f000 80fe 	beq.w	20024ba6 <HAL_PIN_Set+0x22a>
200249aa:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
200249ae:	b29b      	uxth	r3, r3
200249b0:	2b0b      	cmp	r3, #11
200249b2:	d82e      	bhi.n	20024a12 <HAL_PIN_Set+0x96>
200249b4:	4620      	mov	r0, r4
200249b6:	f7ff ff23 	bl	20024800 <HAL_PIN_SetUartFunc.part.0>
200249ba:	4601      	mov	r1, r0
200249bc:	463a      	mov	r2, r7
200249be:	4620      	mov	r0, r4
200249c0:	f7ff ffc6 	bl	20024950 <HAL_PIN_Func2Idx>
200249c4:	280f      	cmp	r0, #15
200249c6:	4681      	mov	r9, r0
200249c8:	dcdd      	bgt.n	20024986 <HAL_PIN_Set+0xa>
200249ca:	463a      	mov	r2, r7
200249cc:	4629      	mov	r1, r5
200249ce:	4620      	mov	r0, r4
200249d0:	f7ff ff6e 	bl	200248b0 <HAL_PIN_SetAonPE>
200249d4:	2f00      	cmp	r7, #0
200249d6:	f040 80ef 	bne.w	20024bb8 <HAL_PIN_Set+0x23c>
200249da:	2c40      	cmp	r4, #64	@ 0x40
200249dc:	f340 80ec 	ble.w	20024bb8 <HAL_PIN_Set+0x23c>
200249e0:	4a7f      	ldr	r2, [pc, #508]	@ (20024be0 <HAL_PIN_Set+0x264>)
200249e2:	06e8      	lsls	r0, r5, #27
200249e4:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
200249e8:	ea4f 3909 	mov.w	r9, r9, lsl #12
200249ec:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
200249f0:	f023 0318 	bic.w	r3, r3, #24
200249f4:	bf48      	it	mi
200249f6:	f043 0308 	orrmi.w	r3, r3, #8
200249fa:	06a9      	lsls	r1, r5, #26
200249fc:	bf48      	it	mi
200249fe:	f043 0310 	orrmi.w	r3, r3, #16
20024a02:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20024a06:	ea49 0303 	orr.w	r3, r9, r3
20024a0a:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20024a0e:	2000      	movs	r0, #0
20024a10:	e7bb      	b.n	2002498a <HAL_PIN_Set+0xe>
20024a12:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20024a16:	b29b      	uxth	r3, r3
20024a18:	2b07      	cmp	r3, #7
20024a1a:	d826      	bhi.n	20024a6a <HAL_PIN_Set+0xee>
20024a1c:	104a      	asrs	r2, r1, #1
20024a1e:	3a9c      	subs	r2, #156	@ 0x9c
20024a20:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20024a24:	b289      	uxth	r1, r1
20024a26:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20024a2a:	d019      	beq.n	20024a60 <HAL_PIN_Set+0xe4>
20024a2c:	f240 1339 	movw	r3, #313	@ 0x139
20024a30:	4299      	cmp	r1, r3
20024a32:	f040 80bf 	bne.w	20024bb4 <HAL_PIN_Set+0x238>
20024a36:	f04f 0e08 	mov.w	lr, #8
20024a3a:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20024a3e:	4969      	ldr	r1, [pc, #420]	@ (20024be4 <HAL_PIN_Set+0x268>)
20024a40:	f1a4 030e 	sub.w	r3, r4, #14
20024a44:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024a48:	fa03 f30e 	lsl.w	r3, r3, lr
20024a4c:	4043      	eors	r3, r0
20024a4e:	ea03 030c 	and.w	r3, r3, ip
20024a52:	4043      	eors	r3, r0
20024a54:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024a58:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20024a5c:	b289      	uxth	r1, r1
20024a5e:	e7ad      	b.n	200249bc <HAL_PIN_Set+0x40>
20024a60:	f04f 0e00 	mov.w	lr, #0
20024a64:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20024a68:	e7e9      	b.n	20024a3e <HAL_PIN_Set+0xc2>
20024a6a:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20024a6e:	b29a      	uxth	r2, r3
20024a70:	2a09      	cmp	r2, #9
20024a72:	d836      	bhi.n	20024ae2 <HAL_PIN_Set+0x166>
20024a74:	2205      	movs	r2, #5
20024a76:	fbb3 f3f2 	udiv	r3, r3, r2
20024a7a:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20024a7e:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20024a82:	440a      	add	r2, r1
20024a84:	b292      	uxth	r2, r2
20024a86:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20024a8a:	b288      	uxth	r0, r1
20024a8c:	2803      	cmp	r0, #3
20024a8e:	d814      	bhi.n	20024aba <HAL_PIN_Set+0x13e>
20024a90:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20024a94:	4854      	ldr	r0, [pc, #336]	@ (20024be8 <HAL_PIN_Set+0x26c>)
20024a96:	00c9      	lsls	r1, r1, #3
20024a98:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20024a9c:	f1a4 020e 	sub.w	r2, r4, #14
20024aa0:	408a      	lsls	r2, r1
20024aa2:	ea82 020c 	eor.w	r2, r2, ip
20024aa6:	fa0e f101 	lsl.w	r1, lr, r1
20024aaa:	400a      	ands	r2, r1
20024aac:	ea82 020c 	eor.w	r2, r2, ip
20024ab0:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20024ab4:	f204 2155 	addw	r1, r4, #597	@ 0x255
20024ab8:	e7d0      	b.n	20024a5c <HAL_PIN_Set+0xe0>
20024aba:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20024abe:	d179      	bne.n	20024bb4 <HAL_PIN_Set+0x238>
20024ac0:	213f      	movs	r1, #63	@ 0x3f
20024ac2:	484a      	ldr	r0, [pc, #296]	@ (20024bec <HAL_PIN_Set+0x270>)
20024ac4:	00da      	lsls	r2, r3, #3
20024ac6:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20024aca:	f1a4 030e 	sub.w	r3, r4, #14
20024ace:	4093      	lsls	r3, r2
20024ad0:	ea83 030c 	eor.w	r3, r3, ip
20024ad4:	fa01 f202 	lsl.w	r2, r1, r2
20024ad8:	4013      	ands	r3, r2
20024ada:	ea83 030c 	eor.w	r3, r3, ip
20024ade:	66c3      	str	r3, [r0, #108]	@ 0x6c
20024ae0:	e7e8      	b.n	20024ab4 <HAL_PIN_Set+0x138>
20024ae2:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20024ae6:	eb01 0209 	add.w	r2, r1, r9
20024aea:	b293      	uxth	r3, r2
20024aec:	2b05      	cmp	r3, #5
20024aee:	d827      	bhi.n	20024b40 <HAL_PIN_Set+0x1c4>
20024af0:	2303      	movs	r3, #3
20024af2:	fbb2 f2f3 	udiv	r2, r2, r3
20024af6:	f46f 7e01 	mvn.w	lr, #516	@ 0x204
20024afa:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20024afe:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20024b02:	440b      	add	r3, r1
20024b04:	b29b      	uxth	r3, r3
20024b06:	eb03 0c0e 	add.w	ip, r3, lr
20024b0a:	fa1f fc8c 	uxth.w	ip, ip
20024b0e:	f1bc 0f02 	cmp.w	ip, #2
20024b12:	d84f      	bhi.n	20024bb4 <HAL_PIN_Set+0x238>
20024b14:	00db      	lsls	r3, r3, #3
20024b16:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20024b1a:	4935      	ldr	r1, [pc, #212]	@ (20024bf0 <HAL_PIN_Set+0x274>)
20024b1c:	f1a4 0e0e 	sub.w	lr, r4, #14
20024b20:	3b08      	subs	r3, #8
20024b22:	fa0e f303 	lsl.w	r3, lr, r3
20024b26:	f8df e0d8 	ldr.w	lr, [pc, #216]	@ 20024c00 <HAL_PIN_Set+0x284>
20024b2a:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024b2e:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20024b32:	4043      	eors	r3, r0
20024b34:	ea03 030c 	and.w	r3, r3, ip
20024b38:	4043      	eors	r3, r0
20024b3a:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024b3e:	e7b9      	b.n	20024ab4 <HAL_PIN_Set+0x138>
20024b40:	f46f 7cf8 	mvn.w	ip, #496	@ 0x1f0
20024b44:	eb01 030c 	add.w	r3, r1, ip
20024b48:	b29a      	uxth	r2, r3
20024b4a:	2a09      	cmp	r2, #9
20024b4c:	f63f af36 	bhi.w	200249bc <HAL_PIN_Set+0x40>
20024b50:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20024b54:	d216      	bcs.n	20024b84 <HAL_PIN_Set+0x208>
20024b56:	0859      	lsrs	r1, r3, #1
20024b58:	f013 0f01 	tst.w	r3, #1
20024b5c:	4b25      	ldr	r3, [pc, #148]	@ (20024bf4 <HAL_PIN_Set+0x278>)
20024b5e:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20024b62:	4a25      	ldr	r2, [pc, #148]	@ (20024bf8 <HAL_PIN_Set+0x27c>)
20024b64:	bf18      	it	ne
20024b66:	461a      	movne	r2, r3
20024b68:	00c9      	lsls	r1, r1, #3
20024b6a:	4088      	lsls	r0, r1
20024b6c:	f8d2 c000 	ldr.w	ip, [r2]
20024b70:	f1a4 030e 	sub.w	r3, r4, #14
20024b74:	408b      	lsls	r3, r1
20024b76:	ea83 030c 	eor.w	r3, r3, ip
20024b7a:	4003      	ands	r3, r0
20024b7c:	ea83 030c 	eor.w	r3, r3, ip
20024b80:	6013      	str	r3, [r2, #0]
20024b82:	e797      	b.n	20024ab4 <HAL_PIN_Set+0x138>
20024b84:	d007      	beq.n	20024b96 <HAL_PIN_Set+0x21a>
20024b86:	f240 13f9 	movw	r3, #505	@ 0x1f9
20024b8a:	4299      	cmp	r1, r3
20024b8c:	d107      	bne.n	20024b9e <HAL_PIN_Set+0x222>
20024b8e:	2100      	movs	r1, #0
20024b90:	203f      	movs	r0, #63	@ 0x3f
20024b92:	4a1a      	ldr	r2, [pc, #104]	@ (20024bfc <HAL_PIN_Set+0x280>)
20024b94:	e7ea      	b.n	20024b6c <HAL_PIN_Set+0x1f0>
20024b96:	2110      	movs	r1, #16
20024b98:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20024b9c:	e7f9      	b.n	20024b92 <HAL_PIN_Set+0x216>
20024b9e:	2108      	movs	r1, #8
20024ba0:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20024ba4:	e7f5      	b.n	20024b92 <HAL_PIN_Set+0x216>
20024ba6:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20024baa:	b29b      	uxth	r3, r3
20024bac:	2b07      	cmp	r3, #7
20024bae:	f63f af05 	bhi.w	200249bc <HAL_PIN_Set+0x40>
20024bb2:	e6ff      	b.n	200249b4 <HAL_PIN_Set+0x38>
20024bb4:	2100      	movs	r1, #0
20024bb6:	e701      	b.n	200249bc <HAL_PIN_Set+0x40>
20024bb8:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20024bbc:	3e01      	subs	r6, #1
20024bbe:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
20024bc2:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20024bc6:	f009 090f 	and.w	r9, r9, #15
20024bca:	ea45 0509 	orr.w	r5, r5, r9
20024bce:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
20024bd2:	431d      	orrs	r5, r3
20024bd4:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20024bd8:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20024bdc:	e717      	b.n	20024a0e <HAL_PIN_Set+0x92>
20024bde:	bf00      	nop
20024be0:	500caf58 	.word	0x500caf58
20024be4:	5000b048 	.word	0x5000b048
20024be8:	5000b064 	.word	0x5000b064
20024bec:	5000b000 	.word	0x5000b000
20024bf0:	5000b070 	.word	0x5000b070
20024bf4:	5000b07c 	.word	0x5000b07c
20024bf8:	5000b078 	.word	0x5000b078
20024bfc:	5000b080 	.word	0x5000b080
20024c00:	20026500 	.word	0x20026500

20024c04 <HAL_PIN_Set_Analog>:
20024c04:	283a      	cmp	r0, #58	@ 0x3a
20024c06:	b538      	push	{r3, r4, r5, lr}
20024c08:	4604      	mov	r4, r0
20024c0a:	dd25      	ble.n	20024c58 <HAL_PIN_Set_Analog+0x54>
20024c0c:	2840      	cmp	r0, #64	@ 0x40
20024c0e:	dc16      	bgt.n	20024c3e <HAL_PIN_Set_Analog+0x3a>
20024c10:	2500      	movs	r5, #0
20024c12:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20024c16:	4628      	mov	r0, r5
20024c18:	f7ff fe84 	bl	20024924 <HAL_PIN_Get_Base>
20024c1c:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
20024c20:	3b01      	subs	r3, #1
20024c22:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20024c26:	462a      	mov	r2, r5
20024c28:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20024c2c:	f041 010f 	orr.w	r1, r1, #15
20024c30:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
20024c34:	2100      	movs	r1, #0
20024c36:	4620      	mov	r0, r4
20024c38:	f7ff fe3a 	bl	200248b0 <HAL_PIN_SetAonPE>
20024c3c:	e00a      	b.n	20024c54 <HAL_PIN_Set_Analog+0x50>
20024c3e:	4a08      	ldr	r2, [pc, #32]	@ (20024c60 <HAL_PIN_Set_Analog+0x5c>)
20024c40:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
20024c44:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024c48:	f023 030e 	bic.w	r3, r3, #14
20024c4c:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024c50:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
20024c54:	2000      	movs	r0, #0
20024c56:	bd38      	pop	{r3, r4, r5, pc}
20024c58:	4601      	mov	r1, r0
20024c5a:	2501      	movs	r5, #1
20024c5c:	e7db      	b.n	20024c16 <HAL_PIN_Set_Analog+0x12>
20024c5e:	bf00      	nop
20024c60:	500caf58 	.word	0x500caf58

20024c64 <HAL_PMU_EnableDLL>:
20024c64:	4b05      	ldr	r3, [pc, #20]	@ (20024c7c <HAL_PMU_EnableDLL+0x18>)
20024c66:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
20024c68:	b120      	cbz	r0, 20024c74 <HAL_PMU_EnableDLL+0x10>
20024c6a:	f042 0220 	orr.w	r2, r2, #32
20024c6e:	2000      	movs	r0, #0
20024c70:	669a      	str	r2, [r3, #104]	@ 0x68
20024c72:	4770      	bx	lr
20024c74:	f022 0220 	bic.w	r2, r2, #32
20024c78:	e7f9      	b.n	20024c6e <HAL_PMU_EnableDLL+0xa>
20024c7a:	bf00      	nop
20024c7c:	500ca000 	.word	0x500ca000

20024c80 <HAL_RCC_HCPU_ConfigSxModeVolt>:
20024c80:	b507      	push	{r0, r1, r2, lr}
20024c82:	4a13      	ldr	r2, [pc, #76]	@ (20024cd0 <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20024c84:	4913      	ldr	r1, [pc, #76]	@ (20024cd4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024c86:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20024c8a:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20024c8e:	7892      	ldrb	r2, [r2, #2]
20024c90:	2802      	cmp	r0, #2
20024c92:	f362 0303 	bfi	r3, r2, #0, #4
20024c96:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20024c9a:	f10d 0007 	add.w	r0, sp, #7
20024c9e:	d111      	bne.n	20024cc4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20024ca0:	f002 f8fa 	bl	20026e98 <HAL_PMU_GetHpsysVoutRef>
20024ca4:	b110      	cbz	r0, 20024cac <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024ca6:	230b      	movs	r3, #11
20024ca8:	f88d 3007 	strb.w	r3, [sp, #7]
20024cac:	4a09      	ldr	r2, [pc, #36]	@ (20024cd4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024cae:	f89d 1007 	ldrb.w	r1, [sp, #7]
20024cb2:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024cb6:	f361 0303 	bfi	r3, r1, #0, #4
20024cba:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20024cbe:	b003      	add	sp, #12
20024cc0:	f85d fb04 	ldr.w	pc, [sp], #4
20024cc4:	f002 f8f4 	bl	20026eb0 <HAL_PMU_GetHpsysVoutRef2>
20024cc8:	2800      	cmp	r0, #0
20024cca:	d0ef      	beq.n	20024cac <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024ccc:	230d      	movs	r3, #13
20024cce:	e7eb      	b.n	20024ca8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20024cd0:	2002651c 	.word	0x2002651c
20024cd4:	500ca000 	.word	0x500ca000

20024cd8 <HAL_RCC_HCPU_GetClockSrc>:
20024cd8:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024cdc:	280d      	cmp	r0, #13
20024cde:	6a1a      	ldr	r2, [r3, #32]
20024ce0:	d80d      	bhi.n	20024cfe <HAL_RCC_HCPU_GetClockSrc+0x26>
20024ce2:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
20024ce6:	40c3      	lsrs	r3, r0
20024ce8:	f013 0f01 	tst.w	r3, #1
20024cec:	bf0c      	ite	eq
20024cee:	2301      	moveq	r3, #1
20024cf0:	2303      	movne	r3, #3
20024cf2:	4083      	lsls	r3, r0
20024cf4:	4013      	ands	r3, r2
20024cf6:	fa23 f000 	lsr.w	r0, r3, r0
20024cfa:	b2c0      	uxtb	r0, r0
20024cfc:	4770      	bx	lr
20024cfe:	2301      	movs	r3, #1
20024d00:	e7f7      	b.n	20024cf2 <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

20024d04 <HAL_RCC_HCPU_GetDLLFreq>:
20024d04:	2801      	cmp	r0, #1
20024d06:	d003      	beq.n	20024d10 <HAL_RCC_HCPU_GetDLLFreq+0xc>
20024d08:	2802      	cmp	r0, #2
20024d0a:	d00e      	beq.n	20024d2a <HAL_RCC_HCPU_GetDLLFreq+0x26>
20024d0c:	2000      	movs	r0, #0
20024d0e:	4770      	bx	lr
20024d10:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024d14:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
20024d16:	b163      	cbz	r3, 20024d32 <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20024d18:	f013 0001 	ands.w	r0, r3, #1
20024d1c:	d00a      	beq.n	20024d34 <HAL_RCC_HCPU_GetDLLFreq+0x30>
20024d1e:	4806      	ldr	r0, [pc, #24]	@ (20024d38 <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20024d20:	f3c3 0383 	ubfx	r3, r3, #2, #4
20024d24:	fb03 0000 	mla	r0, r3, r0, r0
20024d28:	4770      	bx	lr
20024d2a:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024d2e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20024d30:	e7f1      	b.n	20024d16 <HAL_RCC_HCPU_GetDLLFreq+0x12>
20024d32:	4618      	mov	r0, r3
20024d34:	4770      	bx	lr
20024d36:	bf00      	nop
20024d38:	016e3600 	.word	0x016e3600

20024d3c <HAL_RCC_HCPU_GetDLL1Freq>:
20024d3c:	2001      	movs	r0, #1
20024d3e:	f7ff bfe1 	b.w	20024d04 <HAL_RCC_HCPU_GetDLLFreq>

20024d42 <HAL_RCC_HCPU_GetDLL2Freq>:
20024d42:	2002      	movs	r0, #2
20024d44:	f7ff bfde 	b.w	20024d04 <HAL_RCC_HCPU_GetDLLFreq>

20024d48 <HAL_RCC_HCPU_GetDLL3Freq>:
20024d48:	2000      	movs	r0, #0
20024d4a:	4770      	bx	lr

20024d4c <HAL_RCC_HCPU_EnableDLL>:
20024d4c:	4b23      	ldr	r3, [pc, #140]	@ (20024ddc <HAL_RCC_HCPU_EnableDLL+0x90>)
20024d4e:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
20024d52:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
20024d56:	4299      	cmp	r1, r3
20024d58:	b510      	push	{r4, lr}
20024d5a:	d83c      	bhi.n	20024dd6 <HAL_RCC_HCPU_EnableDLL+0x8a>
20024d5c:	2801      	cmp	r0, #1
20024d5e:	d002      	beq.n	20024d66 <HAL_RCC_HCPU_EnableDLL+0x1a>
20024d60:	2802      	cmp	r0, #2
20024d62:	d036      	beq.n	20024dd2 <HAL_RCC_HCPU_EnableDLL+0x86>
20024d64:	e7fe      	b.n	20024d64 <HAL_RCC_HCPU_EnableDLL+0x18>
20024d66:	4c1e      	ldr	r4, [pc, #120]	@ (20024de0 <HAL_RCC_HCPU_EnableDLL+0x94>)
20024d68:	4b1e      	ldr	r3, [pc, #120]	@ (20024de4 <HAL_RCC_HCPU_EnableDLL+0x98>)
20024d6a:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024d6e:	0790      	lsls	r0, r2, #30
20024d70:	bf58      	it	pl
20024d72:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024d76:	f04f 0000 	mov.w	r0, #0
20024d7a:	bf5c      	itt	pl
20024d7c:	f042 0202 	orrpl.w	r2, r2, #2
20024d80:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024d84:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024d88:	07d2      	lsls	r2, r2, #31
20024d8a:	bf5e      	ittt	pl
20024d8c:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024d90:	f042 0201 	orrpl.w	r2, r2, #1
20024d94:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024d98:	4a13      	ldr	r2, [pc, #76]	@ (20024de8 <HAL_RCC_HCPU_EnableDLL+0x9c>)
20024d9a:	6823      	ldr	r3, [r4, #0]
20024d9c:	fbb1 f1f2 	udiv	r1, r1, r2
20024da0:	f023 0301 	bic.w	r3, r3, #1
20024da4:	6023      	str	r3, [r4, #0]
20024da6:	6823      	ldr	r3, [r4, #0]
20024da8:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
20024dac:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
20024db0:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
20024db4:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
20024db8:	f043 0301 	orr.w	r3, r3, #1
20024dbc:	6023      	str	r3, [r4, #0]
20024dbe:	f7fd f830 	bl	20021e22 <HAL_Delay_us>
20024dc2:	200a      	movs	r0, #10
20024dc4:	f7fd f82d 	bl	20021e22 <HAL_Delay_us>
20024dc8:	6823      	ldr	r3, [r4, #0]
20024dca:	2b00      	cmp	r3, #0
20024dcc:	dafc      	bge.n	20024dc8 <HAL_RCC_HCPU_EnableDLL+0x7c>
20024dce:	2000      	movs	r0, #0
20024dd0:	bd10      	pop	{r4, pc}
20024dd2:	4c06      	ldr	r4, [pc, #24]	@ (20024dec <HAL_RCC_HCPU_EnableDLL+0xa0>)
20024dd4:	e7c8      	b.n	20024d68 <HAL_RCC_HCPU_EnableDLL+0x1c>
20024dd6:	2001      	movs	r0, #1
20024dd8:	e7fa      	b.n	20024dd0 <HAL_RCC_HCPU_EnableDLL+0x84>
20024dda:	bf00      	nop
20024ddc:	15752a00 	.word	0x15752a00
20024de0:	5000002c 	.word	0x5000002c
20024de4:	5000b000 	.word	0x5000b000
20024de8:	016e3600 	.word	0x016e3600
20024dec:	50000030 	.word	0x50000030

20024df0 <HAL_RCC_HCPU_EnableDLL1>:
20024df0:	4601      	mov	r1, r0
20024df2:	2001      	movs	r0, #1
20024df4:	f7ff bfaa 	b.w	20024d4c <HAL_RCC_HCPU_EnableDLL>

20024df8 <HAL_RCC_HCPU_EnableDLL2>:
20024df8:	4601      	mov	r1, r0
20024dfa:	2002      	movs	r0, #2
20024dfc:	f7ff bfa6 	b.w	20024d4c <HAL_RCC_HCPU_EnableDLL>

20024e00 <HAL_RCC_HCPU_DisableDLL1>:
20024e00:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024e04:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20024e06:	2000      	movs	r0, #0
20024e08:	f023 0301 	bic.w	r3, r3, #1
20024e0c:	62d3      	str	r3, [r2, #44]	@ 0x2c
20024e0e:	4770      	bx	lr

20024e10 <HAL_RCC_GetSysCLKFreq>:
20024e10:	2801      	cmp	r0, #1
20024e12:	d108      	bne.n	20024e26 <HAL_RCC_GetSysCLKFreq+0x16>
20024e14:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e18:	6a1b      	ldr	r3, [r3, #32]
20024e1a:	f003 0303 	and.w	r3, r3, #3
20024e1e:	2b03      	cmp	r3, #3
20024e20:	d101      	bne.n	20024e26 <HAL_RCC_GetSysCLKFreq+0x16>
20024e22:	f7ff bf8b 	b.w	20024d3c <HAL_RCC_HCPU_GetDLL1Freq>
20024e26:	4801      	ldr	r0, [pc, #4]	@ (20024e2c <HAL_RCC_GetSysCLKFreq+0x1c>)
20024e28:	4770      	bx	lr
20024e2a:	bf00      	nop
20024e2c:	02dc6c00 	.word	0x02dc6c00

20024e30 <HAL_RCC_GetHCLKFreq>:
20024e30:	1e02      	subs	r2, r0, #0
20024e32:	bf08      	it	eq
20024e34:	2201      	moveq	r2, #1
20024e36:	b508      	push	{r3, lr}
20024e38:	4610      	mov	r0, r2
20024e3a:	f7ff ffe9 	bl	20024e10 <HAL_RCC_GetSysCLKFreq>
20024e3e:	2a01      	cmp	r2, #1
20024e40:	d002      	beq.n	20024e48 <HAL_RCC_GetHCLKFreq+0x18>
20024e42:	2a02      	cmp	r2, #2
20024e44:	d00a      	beq.n	20024e5c <HAL_RCC_GetHCLKFreq+0x2c>
20024e46:	e7fe      	b.n	20024e46 <HAL_RCC_GetHCLKFreq+0x16>
20024e48:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e4c:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
20024e4e:	b2db      	uxtb	r3, r3
20024e50:	2b01      	cmp	r3, #1
20024e52:	bfb8      	it	lt
20024e54:	2301      	movlt	r3, #1
20024e56:	fbb0 f0f3 	udiv	r0, r0, r3
20024e5a:	bd08      	pop	{r3, pc}
20024e5c:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20024e60:	695b      	ldr	r3, [r3, #20]
20024e62:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
20024e66:	e7f3      	b.n	20024e50 <HAL_RCC_GetHCLKFreq+0x20>

20024e68 <HAL_RCC_HCPU_ClockSelect>:
20024e68:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e6c:	b510      	push	{r4, lr}
20024e6e:	280d      	cmp	r0, #13
20024e70:	6a1b      	ldr	r3, [r3, #32]
20024e72:	d818      	bhi.n	20024ea6 <HAL_RCC_HCPU_ClockSelect+0x3e>
20024e74:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
20024e78:	40c2      	lsrs	r2, r0
20024e7a:	f012 0f01 	tst.w	r2, #1
20024e7e:	bf0c      	ite	eq
20024e80:	2201      	moveq	r2, #1
20024e82:	2203      	movne	r2, #3
20024e84:	fa02 f400 	lsl.w	r4, r2, r0
20024e88:	4011      	ands	r1, r2
20024e8a:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024e8e:	ea23 0304 	bic.w	r3, r3, r4
20024e92:	4081      	lsls	r1, r0
20024e94:	430b      	orrs	r3, r1
20024e96:	6213      	str	r3, [r2, #32]
20024e98:	b920      	cbnz	r0, 20024ea4 <HAL_RCC_HCPU_ClockSelect+0x3c>
20024e9a:	2001      	movs	r0, #1
20024e9c:	f7ff ffc8 	bl	20024e30 <HAL_RCC_GetHCLKFreq>
20024ea0:	4b02      	ldr	r3, [pc, #8]	@ (20024eac <HAL_RCC_HCPU_ClockSelect+0x44>)
20024ea2:	6018      	str	r0, [r3, #0]
20024ea4:	bd10      	pop	{r4, pc}
20024ea6:	2201      	movs	r2, #1
20024ea8:	e7ec      	b.n	20024e84 <HAL_RCC_HCPU_ClockSelect+0x1c>
20024eaa:	bf00      	nop
20024eac:	20042c10 	.word	0x20042c10

20024eb0 <HAL_RCC_HCPU_SetDiv>:
20024eb0:	2800      	cmp	r0, #0
20024eb2:	bfd8      	it	le
20024eb4:	2000      	movle	r0, #0
20024eb6:	b508      	push	{r3, lr}
20024eb8:	bfcc      	ite	gt
20024eba:	23ff      	movgt	r3, #255	@ 0xff
20024ebc:	4603      	movle	r3, r0
20024ebe:	2900      	cmp	r1, #0
20024ec0:	db12      	blt.n	20024ee8 <HAL_RCC_HCPU_SetDiv+0x38>
20024ec2:	2a00      	cmp	r2, #0
20024ec4:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
20024ec8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
20024ecc:	da0e      	bge.n	20024eec <HAL_RCC_HCPU_SetDiv+0x3c>
20024ece:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
20024ed2:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
20024ed4:	ea22 0303 	bic.w	r3, r2, r3
20024ed8:	4303      	orrs	r3, r0
20024eda:	624b      	str	r3, [r1, #36]	@ 0x24
20024edc:	2001      	movs	r0, #1
20024ede:	f7ff ffa7 	bl	20024e30 <HAL_RCC_GetHCLKFreq>
20024ee2:	4b07      	ldr	r3, [pc, #28]	@ (20024f00 <HAL_RCC_HCPU_SetDiv+0x50>)
20024ee4:	6018      	str	r0, [r3, #0]
20024ee6:	bd08      	pop	{r3, pc}
20024ee8:	2a00      	cmp	r2, #0
20024eea:	db04      	blt.n	20024ef6 <HAL_RCC_HCPU_SetDiv+0x46>
20024eec:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024ef0:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
20024ef4:	e7eb      	b.n	20024ece <HAL_RCC_HCPU_SetDiv+0x1e>
20024ef6:	2b00      	cmp	r3, #0
20024ef8:	d0f0      	beq.n	20024edc <HAL_RCC_HCPU_SetDiv+0x2c>
20024efa:	23ff      	movs	r3, #255	@ 0xff
20024efc:	e7e7      	b.n	20024ece <HAL_RCC_HCPU_SetDiv+0x1e>
20024efe:	bf00      	nop
20024f00:	20042c10 	.word	0x20042c10

20024f04 <HAL_RCC_HCPU_SwitchDvfsD2S>:
20024f04:	b570      	push	{r4, r5, r6, lr}
20024f06:	460c      	mov	r4, r1
20024f08:	4d19      	ldr	r5, [pc, #100]	@ (20024f70 <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
20024f0a:	4606      	mov	r6, r0
20024f0c:	f7ff feb8 	bl	20024c80 <HAL_RCC_HCPU_ConfigSxModeVolt>
20024f10:	692b      	ldr	r3, [r5, #16]
20024f12:	20fa      	movs	r0, #250	@ 0xfa
20024f14:	f023 0304 	bic.w	r3, r3, #4
20024f18:	612b      	str	r3, [r5, #16]
20024f1a:	f7fc ff82 	bl	20021e22 <HAL_Delay_us>
20024f1e:	2c30      	cmp	r4, #48	@ 0x30
20024f20:	d80d      	bhi.n	20024f3e <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
20024f22:	2100      	movs	r1, #0
20024f24:	4608      	mov	r0, r1
20024f26:	f7ff ff9f 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20024f2a:	2030      	movs	r0, #48	@ 0x30
20024f2c:	2204      	movs	r2, #4
20024f2e:	2100      	movs	r1, #0
20024f30:	fbb0 f0f4 	udiv	r0, r0, r4
20024f34:	f7ff ffbc 	bl	20024eb0 <HAL_RCC_HCPU_SetDiv>
20024f38:	2400      	movs	r4, #0
20024f3a:	4620      	mov	r0, r4
20024f3c:	bd70      	pop	{r4, r5, r6, pc}
20024f3e:	f7fd fd09 	bl	20022954 <HAL_HPAON_EnableXT48>
20024f42:	480c      	ldr	r0, [pc, #48]	@ (20024f74 <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
20024f44:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
20024f48:	6843      	ldr	r3, [r0, #4]
20024f4a:	480b      	ldr	r0, [pc, #44]	@ (20024f78 <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
20024f4c:	61eb      	str	r3, [r5, #28]
20024f4e:	4360      	muls	r0, r4
20024f50:	f7ff ff4e 	bl	20024df0 <HAL_RCC_HCPU_EnableDLL1>
20024f54:	4604      	mov	r4, r0
20024f56:	2800      	cmp	r0, #0
20024f58:	d1ef      	bne.n	20024f3a <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
20024f5a:	2101      	movs	r1, #1
20024f5c:	2206      	movs	r2, #6
20024f5e:	4608      	mov	r0, r1
20024f60:	f7ff ffa6 	bl	20024eb0 <HAL_RCC_HCPU_SetDiv>
20024f64:	2103      	movs	r1, #3
20024f66:	4620      	mov	r0, r4
20024f68:	f7ff ff7e 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20024f6c:	e7e4      	b.n	20024f38 <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
20024f6e:	bf00      	nop
20024f70:	5000b000 	.word	0x5000b000
20024f74:	2002651c 	.word	0x2002651c
20024f78:	000f4240 	.word	0x000f4240

20024f7c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
20024f7c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20024f80:	4c1d      	ldr	r4, [pc, #116]	@ (20024ff8 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
20024f82:	4f1e      	ldr	r7, [pc, #120]	@ (20024ffc <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
20024f84:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
20024f88:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
20024f8a:	7892      	ldrb	r2, [r2, #2]
20024f8c:	4605      	mov	r5, r0
20024f8e:	f362 5317 	bfi	r3, r2, #20, #4
20024f92:	ea4f 08c0 	mov.w	r8, r0, lsl #3
20024f96:	633b      	str	r3, [r7, #48]	@ 0x30
20024f98:	f10d 0007 	add.w	r0, sp, #7
20024f9c:	460e      	mov	r6, r1
20024f9e:	f001 ff7b 	bl	20026e98 <HAL_PMU_GetHpsysVoutRef>
20024fa2:	b110      	cbz	r0, 20024faa <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
20024fa4:	230b      	movs	r3, #11
20024fa6:	f88d 3007 	strb.w	r3, [sp, #7]
20024faa:	f89d 1007 	ldrb.w	r1, [sp, #7]
20024fae:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
20024fb2:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
20024fb4:	440a      	add	r2, r1
20024fb6:	2100      	movs	r1, #0
20024fb8:	f362 0385 	bfi	r3, r2, #2, #4
20024fbc:	4608      	mov	r0, r1
20024fbe:	64fb      	str	r3, [r7, #76]	@ 0x4c
20024fc0:	f7ff ff52 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20024fc4:	2e30      	cmp	r6, #48	@ 0x30
20024fc6:	d900      	bls.n	20024fca <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
20024fc8:	e7fe      	b.n	20024fc8 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
20024fca:	2030      	movs	r0, #48	@ 0x30
20024fcc:	2204      	movs	r2, #4
20024fce:	2100      	movs	r1, #0
20024fd0:	fbb0 f0f6 	udiv	r0, r0, r6
20024fd4:	f7ff ff6c 	bl	20024eb0 <HAL_RCC_HCPU_SetDiv>
20024fd8:	f7ff ff12 	bl	20024e00 <HAL_RCC_HCPU_DisableDLL1>
20024fdc:	f7fd fcc6 	bl	2002296c <HAL_HPAON_DisableXT48>
20024fe0:	4444      	add	r4, r8
20024fe2:	4b07      	ldr	r3, [pc, #28]	@ (20025000 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
20024fe4:	6862      	ldr	r2, [r4, #4]
20024fe6:	61da      	str	r2, [r3, #28]
20024fe8:	691a      	ldr	r2, [r3, #16]
20024fea:	f042 0204 	orr.w	r2, r2, #4
20024fee:	611a      	str	r2, [r3, #16]
20024ff0:	b002      	add	sp, #8
20024ff2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20024ff6:	bf00      	nop
20024ff8:	2002651c 	.word	0x2002651c
20024ffc:	500ca000 	.word	0x500ca000
20025000:	5000b000 	.word	0x5000b000

20025004 <HAL_RCC_HCPU_ConfigDvfs>:
20025004:	b570      	push	{r4, r5, r6, lr}
20025006:	4e31      	ldr	r6, [pc, #196]	@ (200250cc <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
20025008:	4605      	mov	r5, r0
2002500a:	7833      	ldrb	r3, [r6, #0]
2002500c:	460c      	mov	r4, r1
2002500e:	2b01      	cmp	r3, #1
20025010:	d943      	bls.n	2002509a <HAL_RCC_HCPU_ConfigDvfs+0x96>
20025012:	3b02      	subs	r3, #2
20025014:	2b01      	cmp	r3, #1
20025016:	d902      	bls.n	2002501e <HAL_RCC_HCPU_ConfigDvfs+0x1a>
20025018:	2501      	movs	r5, #1
2002501a:	4628      	mov	r0, r5
2002501c:	bd70      	pop	{r4, r5, r6, pc}
2002501e:	4b2c      	ldr	r3, [pc, #176]	@ (200250d0 <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
20025020:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
20025024:	f7ff fe8d 	bl	20024d42 <HAL_RCC_HCPU_GetDLL2Freq>
20025028:	4290      	cmp	r0, r2
2002502a:	d8f5      	bhi.n	20025018 <HAL_RCC_HCPU_ConfigDvfs+0x14>
2002502c:	2901      	cmp	r1, #1
2002502e:	d805      	bhi.n	2002503c <HAL_RCC_HCPU_ConfigDvfs+0x38>
20025030:	4629      	mov	r1, r5
20025032:	4620      	mov	r0, r4
20025034:	f7ff ffa2 	bl	20024f7c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
20025038:	2500      	movs	r5, #0
2002503a:	e035      	b.n	200250a8 <HAL_RCC_HCPU_ConfigDvfs+0xa4>
2002503c:	2100      	movs	r1, #0
2002503e:	4608      	mov	r0, r1
20025040:	f7ff ff12 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20025044:	4620      	mov	r0, r4
20025046:	f7ff fe1b 	bl	20024c80 <HAL_RCC_HCPU_ConfigSxModeVolt>
2002504a:	20fa      	movs	r0, #250	@ 0xfa
2002504c:	f7fc fee9 	bl	20021e22 <HAL_Delay_us>
20025050:	f7ff fed6 	bl	20024e00 <HAL_RCC_HCPU_DisableDLL1>
20025054:	2d30      	cmp	r5, #48	@ 0x30
20025056:	d80d      	bhi.n	20025074 <HAL_RCC_HCPU_ConfigDvfs+0x70>
20025058:	f7fd fc88 	bl	2002296c <HAL_HPAON_DisableXT48>
2002505c:	2100      	movs	r1, #0
2002505e:	4608      	mov	r0, r1
20025060:	f7ff ff02 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20025064:	2204      	movs	r2, #4
20025066:	2100      	movs	r1, #0
20025068:	2030      	movs	r0, #48	@ 0x30
2002506a:	fbb0 f0f5 	udiv	r0, r0, r5
2002506e:	f7ff ff1f 	bl	20024eb0 <HAL_RCC_HCPU_SetDiv>
20025072:	e7e1      	b.n	20025038 <HAL_RCC_HCPU_ConfigDvfs+0x34>
20025074:	f7fd fc6e 	bl	20022954 <HAL_HPAON_EnableXT48>
20025078:	4816      	ldr	r0, [pc, #88]	@ (200250d4 <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
2002507a:	4368      	muls	r0, r5
2002507c:	f7ff feb8 	bl	20024df0 <HAL_RCC_HCPU_EnableDLL1>
20025080:	4605      	mov	r5, r0
20025082:	2800      	cmp	r0, #0
20025084:	d1c8      	bne.n	20025018 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025086:	2101      	movs	r1, #1
20025088:	2206      	movs	r2, #6
2002508a:	4608      	mov	r0, r1
2002508c:	f7ff ff10 	bl	20024eb0 <HAL_RCC_HCPU_SetDiv>
20025090:	2103      	movs	r1, #3
20025092:	4628      	mov	r0, r5
20025094:	f7ff fee8 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20025098:	e7ce      	b.n	20025038 <HAL_RCC_HCPU_ConfigDvfs+0x34>
2002509a:	2901      	cmp	r1, #1
2002509c:	d909      	bls.n	200250b2 <HAL_RCC_HCPU_ConfigDvfs+0xae>
2002509e:	4601      	mov	r1, r0
200250a0:	4620      	mov	r0, r4
200250a2:	f7ff ff2f 	bl	20024f04 <HAL_RCC_HCPU_SwitchDvfsD2S>
200250a6:	4605      	mov	r5, r0
200250a8:	2000      	movs	r0, #0
200250aa:	7034      	strb	r4, [r6, #0]
200250ac:	f7fc feb9 	bl	20021e22 <HAL_Delay_us>
200250b0:	e7b3      	b.n	2002501a <HAL_RCC_HCPU_ConfigDvfs+0x16>
200250b2:	428b      	cmp	r3, r1
200250b4:	d103      	bne.n	200250be <HAL_RCC_HCPU_ConfigDvfs+0xba>
200250b6:	f04f 32ff 	mov.w	r2, #4294967295
200250ba:	4611      	mov	r1, r2
200250bc:	e7d4      	b.n	20025068 <HAL_RCC_HCPU_ConfigDvfs+0x64>
200250be:	2190      	movs	r1, #144	@ 0x90
200250c0:	2002      	movs	r0, #2
200250c2:	f7ff ff1f 	bl	20024f04 <HAL_RCC_HCPU_SwitchDvfsD2S>
200250c6:	2800      	cmp	r0, #0
200250c8:	d1a6      	bne.n	20025018 <HAL_RCC_HCPU_ConfigDvfs+0x14>
200250ca:	e7b1      	b.n	20025030 <HAL_RCC_HCPU_ConfigDvfs+0x2c>
200250cc:	20042c14 	.word	0x20042c14
200250d0:	2002650c 	.word	0x2002650c
200250d4:	000f4240 	.word	0x000f4240

200250d8 <HAL_RCC_Reset_and_Halt_LCPU>:
200250d8:	4a13      	ldr	r2, [pc, #76]	@ (20025128 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
200250da:	6813      	ldr	r3, [r2, #0]
200250dc:	0759      	lsls	r1, r3, #29
200250de:	d421      	bmi.n	20025124 <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
200250e0:	6811      	ldr	r1, [r2, #0]
200250e2:	2800      	cmp	r0, #0
200250e4:	bf0c      	ite	eq
200250e6:	2301      	moveq	r3, #1
200250e8:	f04f 33ff 	movne.w	r3, #4294967295
200250ec:	f041 0104 	orr.w	r1, r1, #4
200250f0:	6011      	str	r1, [r2, #0]
200250f2:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
200250f6:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
200250fa:	6013      	str	r3, [r2, #0]
200250fc:	6811      	ldr	r1, [r2, #0]
200250fe:	2900      	cmp	r1, #0
20025100:	d0fc      	beq.n	200250fc <HAL_RCC_Reset_and_Halt_LCPU+0x24>
20025102:	4a09      	ldr	r2, [pc, #36]	@ (20025128 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20025104:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025106:	06c8      	lsls	r0, r1, #27
20025108:	d506      	bpl.n	20025118 <HAL_RCC_Reset_and_Halt_LCPU+0x40>
2002510a:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002510c:	f041 0102 	orr.w	r1, r1, #2
20025110:	6411      	str	r1, [r2, #64]	@ 0x40
20025112:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025114:	06c9      	lsls	r1, r1, #27
20025116:	d4fc      	bmi.n	20025112 <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
20025118:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
2002511c:	680a      	ldr	r2, [r1, #0]
2002511e:	ea22 0303 	bic.w	r3, r2, r3
20025122:	600b      	str	r3, [r1, #0]
20025124:	4770      	bx	lr
20025126:	bf00      	nop
20025128:	40040000 	.word	0x40040000

2002512c <HAL_RCC_HCPU_ConfigHCLK>:
2002512c:	28f0      	cmp	r0, #240	@ 0xf0
2002512e:	d80d      	bhi.n	2002514c <HAL_RCC_HCPU_ConfigHCLK+0x20>
20025130:	2890      	cmp	r0, #144	@ 0x90
20025132:	d807      	bhi.n	20025144 <HAL_RCC_HCPU_ConfigHCLK+0x18>
20025134:	2830      	cmp	r0, #48	@ 0x30
20025136:	d807      	bhi.n	20025148 <HAL_RCC_HCPU_ConfigHCLK+0x1c>
20025138:	2818      	cmp	r0, #24
2002513a:	bf94      	ite	ls
2002513c:	2100      	movls	r1, #0
2002513e:	2101      	movhi	r1, #1
20025140:	f7ff bf60 	b.w	20025004 <HAL_RCC_HCPU_ConfigDvfs>
20025144:	2103      	movs	r1, #3
20025146:	e7fb      	b.n	20025140 <HAL_RCC_HCPU_ConfigHCLK+0x14>
20025148:	2102      	movs	r1, #2
2002514a:	e7f9      	b.n	20025140 <HAL_RCC_HCPU_ConfigHCLK+0x14>
2002514c:	2001      	movs	r0, #1
2002514e:	4770      	bx	lr

20025150 <spi_flash_get_rdid>:
20025150:	b5f0      	push	{r4, r5, r6, r7, lr}
20025152:	4605      	mov	r5, r0
20025154:	3801      	subs	r0, #1
20025156:	b2c0      	uxtb	r0, r0
20025158:	28fd      	cmp	r0, #253	@ 0xfd
2002515a:	d808      	bhi.n	2002516e <spi_flash_get_rdid+0x1e>
2002515c:	2400      	movs	r4, #0
2002515e:	4f0b      	ldr	r7, [pc, #44]	@ (2002518c <spi_flash_get_rdid+0x3c>)
20025160:	f857 0b04 	ldr.w	r0, [r7], #4
20025164:	7806      	ldrb	r6, [r0, #0]
20025166:	b926      	cbnz	r6, 20025172 <spi_flash_get_rdid+0x22>
20025168:	3401      	adds	r4, #1
2002516a:	2c06      	cmp	r4, #6
2002516c:	d1f8      	bne.n	20025160 <spi_flash_get_rdid+0x10>
2002516e:	2000      	movs	r0, #0
20025170:	e00b      	b.n	2002518a <spi_flash_get_rdid+0x3a>
20025172:	42ae      	cmp	r6, r5
20025174:	d105      	bne.n	20025182 <spi_flash_get_rdid+0x32>
20025176:	7846      	ldrb	r6, [r0, #1]
20025178:	4296      	cmp	r6, r2
2002517a:	d102      	bne.n	20025182 <spi_flash_get_rdid+0x32>
2002517c:	7886      	ldrb	r6, [r0, #2]
2002517e:	428e      	cmp	r6, r1
20025180:	d001      	beq.n	20025186 <spi_flash_get_rdid+0x36>
20025182:	3008      	adds	r0, #8
20025184:	e7ee      	b.n	20025164 <spi_flash_get_rdid+0x14>
20025186:	b103      	cbz	r3, 2002518a <spi_flash_get_rdid+0x3a>
20025188:	701c      	strb	r4, [r3, #0]
2002518a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002518c:	20042c18 	.word	0x20042c18

20025190 <spi_flash_get_cmd_by_id>:
20025190:	b507      	push	{r0, r1, r2, lr}
20025192:	f10d 0307 	add.w	r3, sp, #7
20025196:	f7ff ffdb 	bl	20025150 <spi_flash_get_rdid>
2002519a:	4b06      	ldr	r3, [pc, #24]	@ (200251b4 <spi_flash_get_cmd_by_id+0x24>)
2002519c:	b140      	cbz	r0, 200251b0 <spi_flash_get_cmd_by_id+0x20>
2002519e:	f44f 7105 	mov.w	r1, #532	@ 0x214
200251a2:	f89d 2007 	ldrb.w	r2, [sp, #7]
200251a6:	fb01 3002 	mla	r0, r1, r2, r3
200251aa:	b003      	add	sp, #12
200251ac:	f85d fb04 	ldr.w	pc, [sp], #4
200251b0:	4618      	mov	r0, r3
200251b2:	e7fa      	b.n	200251aa <spi_flash_get_cmd_by_id+0x1a>
200251b4:	20042e30 	.word	0x20042e30

200251b8 <spi_flash_get_size_by_id>:
200251b8:	b508      	push	{r3, lr}
200251ba:	2300      	movs	r3, #0
200251bc:	f7ff ffc8 	bl	20025150 <spi_flash_get_rdid>
200251c0:	b108      	cbz	r0, 200251c6 <spi_flash_get_size_by_id+0xe>
200251c2:	6840      	ldr	r0, [r0, #4]
200251c4:	bd08      	pop	{r3, pc}
200251c6:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
200251ca:	e7fb      	b.n	200251c4 <spi_flash_get_size_by_id+0xc>

200251cc <spi_flash_is_support_dtr>:
200251cc:	b508      	push	{r3, lr}
200251ce:	2300      	movs	r3, #0
200251d0:	f7ff ffbe 	bl	20025150 <spi_flash_get_rdid>
200251d4:	b110      	cbz	r0, 200251dc <spi_flash_is_support_dtr+0x10>
200251d6:	78c0      	ldrb	r0, [r0, #3]
200251d8:	f000 0001 	and.w	r0, r0, #1
200251dc:	bd08      	pop	{r3, pc}
	...

200251e0 <spi_nand_get_rdid>:
200251e0:	b5f0      	push	{r4, r5, r6, r7, lr}
200251e2:	4605      	mov	r5, r0
200251e4:	3801      	subs	r0, #1
200251e6:	b2c0      	uxtb	r0, r0
200251e8:	28fd      	cmp	r0, #253	@ 0xfd
200251ea:	d808      	bhi.n	200251fe <spi_nand_get_rdid+0x1e>
200251ec:	2400      	movs	r4, #0
200251ee:	4f0b      	ldr	r7, [pc, #44]	@ (2002521c <spi_nand_get_rdid+0x3c>)
200251f0:	f857 0b04 	ldr.w	r0, [r7], #4
200251f4:	7806      	ldrb	r6, [r0, #0]
200251f6:	b926      	cbnz	r6, 20025202 <spi_nand_get_rdid+0x22>
200251f8:	3401      	adds	r4, #1
200251fa:	2c06      	cmp	r4, #6
200251fc:	d1f8      	bne.n	200251f0 <spi_nand_get_rdid+0x10>
200251fe:	2000      	movs	r0, #0
20025200:	e00b      	b.n	2002521a <spi_nand_get_rdid+0x3a>
20025202:	42ae      	cmp	r6, r5
20025204:	d105      	bne.n	20025212 <spi_nand_get_rdid+0x32>
20025206:	7846      	ldrb	r6, [r0, #1]
20025208:	4296      	cmp	r6, r2
2002520a:	d102      	bne.n	20025212 <spi_nand_get_rdid+0x32>
2002520c:	7886      	ldrb	r6, [r0, #2]
2002520e:	428e      	cmp	r6, r1
20025210:	d001      	beq.n	20025216 <spi_nand_get_rdid+0x36>
20025212:	3008      	adds	r0, #8
20025214:	e7ee      	b.n	200251f4 <spi_nand_get_rdid+0x14>
20025216:	b103      	cbz	r3, 2002521a <spi_nand_get_rdid+0x3a>
20025218:	701c      	strb	r4, [r3, #0]
2002521a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002521c:	20043aa8 	.word	0x20043aa8

20025220 <spi_nand_get_cmd_by_id>:
20025220:	b507      	push	{r0, r1, r2, lr}
20025222:	f10d 0307 	add.w	r3, sp, #7
20025226:	f7ff ffdb 	bl	200251e0 <spi_nand_get_rdid>
2002522a:	b130      	cbz	r0, 2002523a <spi_nand_get_cmd_by_id+0x1a>
2002522c:	f44f 7205 	mov.w	r2, #532	@ 0x214
20025230:	f89d 3007 	ldrb.w	r3, [sp, #7]
20025234:	4802      	ldr	r0, [pc, #8]	@ (20025240 <spi_nand_get_cmd_by_id+0x20>)
20025236:	fb02 0003 	mla	r0, r2, r3, r0
2002523a:	b003      	add	sp, #12
2002523c:	f85d fb04 	ldr.w	pc, [sp], #4
20025240:	20043c88 	.word	0x20043c88

20025244 <HAL_GET_FLASH_DEFAUT_INX>:
20025244:	f04f 30ff 	mov.w	r0, #4294967295
20025248:	4770      	bx	lr
	...

2002524c <spi_nand_get_default_ctable>:
2002524c:	b508      	push	{r3, lr}
2002524e:	f7ff fff9 	bl	20025244 <HAL_GET_FLASH_DEFAUT_INX>
20025252:	1e03      	subs	r3, r0, #0
20025254:	bfa5      	ittet	ge
20025256:	f44f 7205 	movge.w	r2, #532	@ 0x214
2002525a:	4802      	ldrge	r0, [pc, #8]	@ (20025264 <spi_nand_get_default_ctable+0x18>)
2002525c:	2000      	movlt	r0, #0
2002525e:	fb02 0003 	mlage	r0, r2, r3, r0
20025262:	bd08      	pop	{r3, pc}
20025264:	20043c88 	.word	0x20043c88

20025268 <spi_nand_get_size_by_id>:
20025268:	b508      	push	{r3, lr}
2002526a:	2300      	movs	r3, #0
2002526c:	f7ff ffb8 	bl	200251e0 <spi_nand_get_rdid>
20025270:	b108      	cbz	r0, 20025276 <spi_nand_get_size_by_id+0xe>
20025272:	6840      	ldr	r0, [r0, #4]
20025274:	bd08      	pop	{r3, pc}
20025276:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
2002527a:	e7fb      	b.n	20025274 <spi_nand_get_size_by_id+0xc>

2002527c <spi_nand_get_plane_select_flag>:
2002527c:	b508      	push	{r3, lr}
2002527e:	2300      	movs	r3, #0
20025280:	f7ff ffae 	bl	200251e0 <spi_nand_get_rdid>
20025284:	b110      	cbz	r0, 2002528c <spi_nand_get_plane_select_flag+0x10>
20025286:	78c0      	ldrb	r0, [r0, #3]
20025288:	f3c0 0040 	ubfx	r0, r0, #1, #1
2002528c:	bd08      	pop	{r3, pc}

2002528e <spi_nand_get_big_page_flag>:
2002528e:	b508      	push	{r3, lr}
20025290:	2300      	movs	r3, #0
20025292:	f7ff ffa5 	bl	200251e0 <spi_nand_get_rdid>
20025296:	b110      	cbz	r0, 2002529e <spi_nand_get_big_page_flag+0x10>
20025298:	78c0      	ldrb	r0, [r0, #3]
2002529a:	f3c0 0081 	ubfx	r0, r0, #2, #2
2002529e:	bd08      	pop	{r3, pc}

200252a0 <spi_nand_get_ecc_mode>:
200252a0:	b508      	push	{r3, lr}
200252a2:	2300      	movs	r3, #0
200252a4:	f7ff ff9c 	bl	200251e0 <spi_nand_get_rdid>
200252a8:	b108      	cbz	r0, 200252ae <spi_nand_get_ecc_mode+0xe>
200252aa:	78c0      	ldrb	r0, [r0, #3]
200252ac:	0900      	lsrs	r0, r0, #4
200252ae:	bd08      	pop	{r3, pc}

200252b0 <bbm_map_check.part.0>:
200252b0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200252b2:	4b21      	ldr	r3, [pc, #132]	@ (20025338 <bbm_map_check.part.0+0x88>)
200252b4:	4606      	mov	r6, r0
200252b6:	681d      	ldr	r5, [r3, #0]
200252b8:	4b20      	ldr	r3, [pc, #128]	@ (2002533c <bbm_map_check.part.0+0x8c>)
200252ba:	3d04      	subs	r5, #4
200252bc:	681f      	ldr	r7, [r3, #0]
200252be:	2300      	movs	r3, #0
200252c0:	f100 0e1a 	add.w	lr, r0, #26
200252c4:	42ab      	cmp	r3, r5
200252c6:	db02      	blt.n	200252ce <bbm_map_check.part.0+0x1e>
200252c8:	2000      	movs	r0, #0
200252ca:	b003      	add	sp, #12
200252cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
200252ce:	8b31      	ldrh	r1, [r6, #24]
200252d0:	b321      	cbz	r1, 2002531c <bbm_map_check.part.0+0x6c>
200252d2:	8b72      	ldrh	r2, [r6, #26]
200252d4:	b33a      	cbz	r2, 20025326 <bbm_map_check.part.0+0x76>
200252d6:	42b9      	cmp	r1, r7
200252d8:	d201      	bcs.n	200252de <bbm_map_check.part.0+0x2e>
200252da:	4297      	cmp	r7, r2
200252dc:	d905      	bls.n	200252ea <bbm_map_check.part.0+0x3a>
200252de:	4b18      	ldr	r3, [pc, #96]	@ (20025340 <bbm_map_check.part.0+0x90>)
200252e0:	681b      	ldr	r3, [r3, #0]
200252e2:	b10b      	cbz	r3, 200252e8 <bbm_map_check.part.0+0x38>
200252e4:	4817      	ldr	r0, [pc, #92]	@ (20025344 <bbm_map_check.part.0+0x94>)
200252e6:	4798      	blx	r3
200252e8:	e7fe      	b.n	200252e8 <bbm_map_check.part.0+0x38>
200252ea:	3301      	adds	r3, #1
200252ec:	461c      	mov	r4, r3
200252ee:	42ac      	cmp	r4, r5
200252f0:	db01      	blt.n	200252f6 <bbm_map_check.part.0+0x46>
200252f2:	3604      	adds	r6, #4
200252f4:	e7e6      	b.n	200252c4 <bbm_map_check.part.0+0x14>
200252f6:	f83e c024 	ldrh.w	ip, [lr, r4, lsl #2]
200252fa:	f1bc 0f00 	cmp.w	ip, #0
200252fe:	d0f8      	beq.n	200252f2 <bbm_map_check.part.0+0x42>
20025300:	4562      	cmp	r2, ip
20025302:	d109      	bne.n	20025318 <bbm_map_check.part.0+0x68>
20025304:	4b0e      	ldr	r3, [pc, #56]	@ (20025340 <bbm_map_check.part.0+0x90>)
20025306:	681d      	ldr	r5, [r3, #0]
20025308:	b12d      	cbz	r5, 20025316 <bbm_map_check.part.0+0x66>
2002530a:	3406      	adds	r4, #6
2002530c:	f830 3024 	ldrh.w	r3, [r0, r4, lsl #2]
20025310:	480d      	ldr	r0, [pc, #52]	@ (20025348 <bbm_map_check.part.0+0x98>)
20025312:	9200      	str	r2, [sp, #0]
20025314:	47a8      	blx	r5
20025316:	e7fe      	b.n	20025316 <bbm_map_check.part.0+0x66>
20025318:	3401      	adds	r4, #1
2002531a:	e7e8      	b.n	200252ee <bbm_map_check.part.0+0x3e>
2002531c:	eb00 0283 	add.w	r2, r0, r3, lsl #2
20025320:	8b52      	ldrh	r2, [r2, #26]
20025322:	2a00      	cmp	r2, #0
20025324:	d0d0      	beq.n	200252c8 <bbm_map_check.part.0+0x18>
20025326:	4a06      	ldr	r2, [pc, #24]	@ (20025340 <bbm_map_check.part.0+0x90>)
20025328:	6814      	ldr	r4, [r2, #0]
2002532a:	b124      	cbz	r4, 20025336 <bbm_map_check.part.0+0x86>
2002532c:	eb00 0383 	add.w	r3, r0, r3, lsl #2
20025330:	8b5a      	ldrh	r2, [r3, #26]
20025332:	4806      	ldr	r0, [pc, #24]	@ (2002534c <bbm_map_check.part.0+0x9c>)
20025334:	47a0      	blx	r4
20025336:	e7fe      	b.n	20025336 <bbm_map_check.part.0+0x86>
20025338:	20049f34 	.word	0x20049f34
2002533c:	20049f38 	.word	0x20049f38
20025340:	20049f24 	.word	0x20049f24
20025344:	2002653c 	.word	0x2002653c
20025348:	20026559 	.word	0x20026559
2002534c:	200265a6 	.word	0x200265a6

20025350 <bbm_crc_check>:
20025350:	f04f 32ff 	mov.w	r2, #4294967295
20025354:	b510      	push	{r4, lr}
20025356:	4c07      	ldr	r4, [pc, #28]	@ (20025374 <bbm_crc_check+0x24>)
20025358:	4401      	add	r1, r0
2002535a:	4288      	cmp	r0, r1
2002535c:	d101      	bne.n	20025362 <bbm_crc_check+0x12>
2002535e:	43d0      	mvns	r0, r2
20025360:	bd10      	pop	{r4, pc}
20025362:	f810 3b01 	ldrb.w	r3, [r0], #1
20025366:	4053      	eors	r3, r2
20025368:	b2db      	uxtb	r3, r3
2002536a:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
2002536e:	ea83 2212 	eor.w	r2, r3, r2, lsr #8
20025372:	e7f2      	b.n	2002535a <bbm_crc_check+0xa>
20025374:	2002698c 	.word	0x2002698c

20025378 <bbm_get_phy_blk>:
20025378:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002537a:	4b14      	ldr	r3, [pc, #80]	@ (200253cc <bbm_get_phy_blk+0x54>)
2002537c:	4601      	mov	r1, r0
2002537e:	681e      	ldr	r6, [r3, #0]
20025380:	42b0      	cmp	r0, r6
20025382:	d21e      	bcs.n	200253c2 <bbm_get_phy_blk+0x4a>
20025384:	b138      	cbz	r0, 20025396 <bbm_get_phy_blk+0x1e>
20025386:	4b12      	ldr	r3, [pc, #72]	@ (200253d0 <bbm_get_phy_blk+0x58>)
20025388:	2200      	movs	r2, #0
2002538a:	681c      	ldr	r4, [r3, #0]
2002538c:	4b11      	ldr	r3, [pc, #68]	@ (200253d4 <bbm_get_phy_blk+0x5c>)
2002538e:	3c04      	subs	r4, #4
20025390:	461d      	mov	r5, r3
20025392:	4294      	cmp	r4, r2
20025394:	dc00      	bgt.n	20025398 <bbm_get_phy_blk+0x20>
20025396:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20025398:	8b1f      	ldrh	r7, [r3, #24]
2002539a:	428f      	cmp	r7, r1
2002539c:	d10a      	bne.n	200253b4 <bbm_get_phy_blk+0x3c>
2002539e:	eb05 0582 	add.w	r5, r5, r2, lsl #2
200253a2:	8b6a      	ldrh	r2, [r5, #26]
200253a4:	4296      	cmp	r6, r2
200253a6:	dd0f      	ble.n	200253c8 <bbm_get_phy_blk+0x50>
200253a8:	4b0b      	ldr	r3, [pc, #44]	@ (200253d8 <bbm_get_phy_blk+0x60>)
200253aa:	681b      	ldr	r3, [r3, #0]
200253ac:	b10b      	cbz	r3, 200253b2 <bbm_get_phy_blk+0x3a>
200253ae:	480b      	ldr	r0, [pc, #44]	@ (200253dc <bbm_get_phy_blk+0x64>)
200253b0:	4798      	blx	r3
200253b2:	e7fe      	b.n	200253b2 <bbm_get_phy_blk+0x3a>
200253b4:	b917      	cbnz	r7, 200253bc <bbm_get_phy_blk+0x44>
200253b6:	8b5f      	ldrh	r7, [r3, #26]
200253b8:	2f00      	cmp	r7, #0
200253ba:	d0ec      	beq.n	20025396 <bbm_get_phy_blk+0x1e>
200253bc:	3201      	adds	r2, #1
200253be:	3304      	adds	r3, #4
200253c0:	e7e7      	b.n	20025392 <bbm_get_phy_blk+0x1a>
200253c2:	f04f 30ff 	mov.w	r0, #4294967295
200253c6:	e7e6      	b.n	20025396 <bbm_get_phy_blk+0x1e>
200253c8:	4610      	mov	r0, r2
200253ca:	e7e4      	b.n	20025396 <bbm_get_phy_blk+0x1e>
200253cc:	20049f38 	.word	0x20049f38
200253d0:	20049f34 	.word	0x20049f34
200253d4:	20049f3c 	.word	0x20049f3c
200253d8:	20049f24 	.word	0x20049f24
200253dc:	200265c4 	.word	0x200265c4

200253e0 <bbm_get_version_inblk>:
200253e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200253e4:	4607      	mov	r7, r0
200253e6:	4688      	mov	r8, r1
200253e8:	b087      	sub	sp, #28
200253ea:	2900      	cmp	r1, #0
200253ec:	d14b      	bne.n	20025486 <bbm_get_version_inblk+0xa6>
200253ee:	2500      	movs	r5, #0
200253f0:	4628      	mov	r0, r5
200253f2:	b007      	add	sp, #28
200253f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200253f8:	2200      	movs	r2, #0
200253fa:	e9cd 2201 	strd	r2, r2, [sp, #4]
200253fe:	4e26      	ldr	r6, [pc, #152]	@ (20025498 <bbm_get_version_inblk+0xb8>)
20025400:	9100      	str	r1, [sp, #0]
20025402:	4638      	mov	r0, r7
20025404:	4621      	mov	r1, r4
20025406:	6833      	ldr	r3, [r6, #0]
20025408:	f7fb fbbc 	bl	20020b84 <port_read_page>
2002540c:	2800      	cmp	r0, #0
2002540e:	dd32      	ble.n	20025476 <bbm_get_version_inblk+0x96>
20025410:	6832      	ldr	r2, [r6, #0]
20025412:	6813      	ldr	r3, [r2, #0]
20025414:	455b      	cmp	r3, fp
20025416:	d123      	bne.n	20025460 <bbm_get_version_inblk+0x80>
20025418:	6856      	ldr	r6, [r2, #4]
2002541a:	f3c6 061e 	ubfx	r6, r6, #0, #31
2002541e:	42ae      	cmp	r6, r5
20025420:	dd15      	ble.n	2002544e <bbm_get_version_inblk+0x6e>
20025422:	4610      	mov	r0, r2
20025424:	2110      	movs	r1, #16
20025426:	9205      	str	r2, [sp, #20]
20025428:	f7ff ff92 	bl	20025350 <bbm_crc_check>
2002542c:	9a05      	ldr	r2, [sp, #20]
2002542e:	6913      	ldr	r3, [r2, #16]
20025430:	4283      	cmp	r3, r0
20025432:	d113      	bne.n	2002545c <bbm_get_version_inblk+0x7c>
20025434:	f8c8 4000 	str.w	r4, [r8]
20025438:	4635      	mov	r5, r6
2002543a:	3401      	adds	r4, #1
2002543c:	f8da 1000 	ldr.w	r1, [sl]
20025440:	f8d9 3000 	ldr.w	r3, [r9]
20025444:	fbb3 f3f1 	udiv	r3, r3, r1
20025448:	42a3      	cmp	r3, r4
2002544a:	d8d5      	bhi.n	200253f8 <bbm_get_version_inblk+0x18>
2002544c:	e7d0      	b.n	200253f0 <bbm_get_version_inblk+0x10>
2002544e:	4b13      	ldr	r3, [pc, #76]	@ (2002549c <bbm_get_version_inblk+0xbc>)
20025450:	681b      	ldr	r3, [r3, #0]
20025452:	b11b      	cbz	r3, 2002545c <bbm_get_version_inblk+0x7c>
20025454:	4632      	mov	r2, r6
20025456:	4629      	mov	r1, r5
20025458:	4811      	ldr	r0, [pc, #68]	@ (200254a0 <bbm_get_version_inblk+0xc0>)
2002545a:	4798      	blx	r3
2002545c:	462e      	mov	r6, r5
2002545e:	e7eb      	b.n	20025438 <bbm_get_version_inblk+0x58>
20025460:	1c5a      	adds	r2, r3, #1
20025462:	d0c5      	beq.n	200253f0 <bbm_get_version_inblk+0x10>
20025464:	4a0d      	ldr	r2, [pc, #52]	@ (2002549c <bbm_get_version_inblk+0xbc>)
20025466:	6815      	ldr	r5, [r2, #0]
20025468:	2d00      	cmp	r5, #0
2002546a:	d0c0      	beq.n	200253ee <bbm_get_version_inblk+0xe>
2002546c:	4622      	mov	r2, r4
2002546e:	4639      	mov	r1, r7
20025470:	480c      	ldr	r0, [pc, #48]	@ (200254a4 <bbm_get_version_inblk+0xc4>)
20025472:	47a8      	blx	r5
20025474:	e7bb      	b.n	200253ee <bbm_get_version_inblk+0xe>
20025476:	4b09      	ldr	r3, [pc, #36]	@ (2002549c <bbm_get_version_inblk+0xbc>)
20025478:	681b      	ldr	r3, [r3, #0]
2002547a:	2b00      	cmp	r3, #0
2002547c:	d0ee      	beq.n	2002545c <bbm_get_version_inblk+0x7c>
2002547e:	4622      	mov	r2, r4
20025480:	4639      	mov	r1, r7
20025482:	4809      	ldr	r0, [pc, #36]	@ (200254a8 <bbm_get_version_inblk+0xc8>)
20025484:	e7e9      	b.n	2002545a <bbm_get_version_inblk+0x7a>
20025486:	2400      	movs	r4, #0
20025488:	f8df a020 	ldr.w	sl, [pc, #32]	@ 200254ac <bbm_get_version_inblk+0xcc>
2002548c:	4625      	mov	r5, r4
2002548e:	f8df 9020 	ldr.w	r9, [pc, #32]	@ 200254b0 <bbm_get_version_inblk+0xd0>
20025492:	f8df b020 	ldr.w	fp, [pc, #32]	@ 200254b4 <bbm_get_version_inblk+0xd4>
20025496:	e7d1      	b.n	2002543c <bbm_get_version_inblk+0x5c>
20025498:	20049f28 	.word	0x20049f28
2002549c:	20049f24 	.word	0x20049f24
200254a0:	200265e3 	.word	0x200265e3
200254a4:	20026610 	.word	0x20026610
200254a8:	20026641 	.word	0x20026641
200254ac:	20044900 	.word	0x20044900
200254b0:	20044904 	.word	0x20044904
200254b4:	5366424d 	.word	0x5366424d

200254b8 <bbm_get_map_table>:
200254b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200254bc:	2801      	cmp	r0, #1
200254be:	4607      	mov	r7, r0
200254c0:	f8df b15c 	ldr.w	fp, [pc, #348]	@ 20025620 <bbm_get_map_table+0x168>
200254c4:	b087      	sub	sp, #28
200254c6:	dd0a      	ble.n	200254de <bbm_get_map_table+0x26>
200254c8:	f8db 3000 	ldr.w	r3, [fp]
200254cc:	b91b      	cbnz	r3, 200254d6 <bbm_get_map_table+0x1e>
200254ce:	2000      	movs	r0, #0
200254d0:	b007      	add	sp, #28
200254d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200254d6:	4601      	mov	r1, r0
200254d8:	4847      	ldr	r0, [pc, #284]	@ (200255f8 <bbm_get_map_table+0x140>)
200254da:	4798      	blx	r3
200254dc:	e7f7      	b.n	200254ce <bbm_get_map_table+0x16>
200254de:	f8df 8144 	ldr.w	r8, [pc, #324]	@ 20025624 <bbm_get_map_table+0x16c>
200254e2:	2800      	cmp	r0, #0
200254e4:	d163      	bne.n	200255ae <bbm_get_map_table+0xf6>
200254e6:	f8b8 6000 	ldrh.w	r6, [r8]
200254ea:	f8b8 5002 	ldrh.w	r5, [r8, #2]
200254ee:	2e00      	cmp	r6, #0
200254f0:	d062      	beq.n	200255b8 <bbm_get_map_table+0x100>
200254f2:	4630      	mov	r0, r6
200254f4:	a904      	add	r1, sp, #16
200254f6:	f7ff ff73 	bl	200253e0 <bbm_get_version_inblk>
200254fa:	4681      	mov	r9, r0
200254fc:	2d00      	cmp	r5, #0
200254fe:	d05d      	beq.n	200255bc <bbm_get_map_table+0x104>
20025500:	4628      	mov	r0, r5
20025502:	a905      	add	r1, sp, #20
20025504:	f7ff ff6c 	bl	200253e0 <bbm_get_version_inblk>
20025508:	4604      	mov	r4, r0
2002550a:	f8db a000 	ldr.w	sl, [fp]
2002550e:	f1ba 0f00 	cmp.w	sl, #0
20025512:	d005      	beq.n	20025520 <bbm_get_map_table+0x68>
20025514:	4623      	mov	r3, r4
20025516:	4632      	mov	r2, r6
20025518:	4649      	mov	r1, r9
2002551a:	4838      	ldr	r0, [pc, #224]	@ (200255fc <bbm_get_map_table+0x144>)
2002551c:	9500      	str	r5, [sp, #0]
2002551e:	47d0      	blx	sl
20025520:	45a1      	cmp	r9, r4
20025522:	d0d4      	beq.n	200254ce <bbm_get_map_table+0x16>
20025524:	f04f 0200 	mov.w	r2, #0
20025528:	bf98      	it	ls
2002552a:	462e      	movls	r6, r5
2002552c:	f107 0308 	add.w	r3, r7, #8
20025530:	bf94      	ite	ls
20025532:	f828 5013 	strhls.w	r5, [r8, r3, lsl #1]
20025536:	f828 6013 	strhhi.w	r6, [r8, r3, lsl #1]
2002553a:	e9cd 2201 	strd	r2, r2, [sp, #4]
2002553e:	4b30      	ldr	r3, [pc, #192]	@ (20025600 <bbm_get_map_table+0x148>)
20025540:	bf88      	it	hi
20025542:	f8dd a010 	ldrhi.w	sl, [sp, #16]
20025546:	681b      	ldr	r3, [r3, #0]
20025548:	bf98      	it	ls
2002554a:	f8dd a014 	ldrls.w	sl, [sp, #20]
2002554e:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 20025628 <bbm_get_map_table+0x170>
20025552:	9300      	str	r3, [sp, #0]
20025554:	4651      	mov	r1, sl
20025556:	4630      	mov	r0, r6
20025558:	f8d8 3000 	ldr.w	r3, [r8]
2002555c:	bf88      	it	hi
2002555e:	464c      	movhi	r4, r9
20025560:	f7fb fb10 	bl	20020b84 <port_read_page>
20025564:	2800      	cmp	r0, #0
20025566:	f8db 5000 	ldr.w	r5, [fp]
2002556a:	dd38      	ble.n	200255de <bbm_get_map_table+0x126>
2002556c:	f8d8 8000 	ldr.w	r8, [r8]
20025570:	4b24      	ldr	r3, [pc, #144]	@ (20025604 <bbm_get_map_table+0x14c>)
20025572:	f8d8 2000 	ldr.w	r2, [r8]
20025576:	429a      	cmp	r2, r3
20025578:	d12b      	bne.n	200255d2 <bbm_get_map_table+0x11a>
2002557a:	2110      	movs	r1, #16
2002557c:	4640      	mov	r0, r8
2002557e:	f7ff fee7 	bl	20025350 <bbm_crc_check>
20025582:	f8d8 2010 	ldr.w	r2, [r8, #16]
20025586:	4601      	mov	r1, r0
20025588:	4282      	cmp	r2, r0
2002558a:	d11e      	bne.n	200255ca <bbm_get_map_table+0x112>
2002558c:	f8d8 1004 	ldr.w	r1, [r8, #4]
20025590:	f3c1 011e 	ubfx	r1, r1, #0, #31
20025594:	42a1      	cmp	r1, r4
20025596:	d113      	bne.n	200255c0 <bbm_get_map_table+0x108>
20025598:	f44f 7202 	mov.w	r2, #520	@ 0x208
2002559c:	481a      	ldr	r0, [pc, #104]	@ (20025608 <bbm_get_map_table+0x150>)
2002559e:	4641      	mov	r1, r8
200255a0:	fb02 0007 	mla	r0, r2, r7, r0
200255a4:	f000 fb72 	bl	20025c8c <memcpy>
200255a8:	bb0d      	cbnz	r5, 200255ee <bbm_get_map_table+0x136>
200255aa:	4620      	mov	r0, r4
200255ac:	e790      	b.n	200254d0 <bbm_get_map_table+0x18>
200255ae:	f8b8 6004 	ldrh.w	r6, [r8, #4]
200255b2:	f8b8 5006 	ldrh.w	r5, [r8, #6]
200255b6:	e79a      	b.n	200254ee <bbm_get_map_table+0x36>
200255b8:	46b1      	mov	r9, r6
200255ba:	e79f      	b.n	200254fc <bbm_get_map_table+0x44>
200255bc:	462c      	mov	r4, r5
200255be:	e7a4      	b.n	2002550a <bbm_get_map_table+0x52>
200255c0:	b115      	cbz	r5, 200255c8 <bbm_get_map_table+0x110>
200255c2:	4622      	mov	r2, r4
200255c4:	4811      	ldr	r0, [pc, #68]	@ (2002560c <bbm_get_map_table+0x154>)
200255c6:	47a8      	blx	r5
200255c8:	e7fe      	b.n	200255c8 <bbm_get_map_table+0x110>
200255ca:	b10d      	cbz	r5, 200255d0 <bbm_get_map_table+0x118>
200255cc:	4810      	ldr	r0, [pc, #64]	@ (20025610 <bbm_get_map_table+0x158>)
200255ce:	47a8      	blx	r5
200255d0:	e7fe      	b.n	200255d0 <bbm_get_map_table+0x118>
200255d2:	b11d      	cbz	r5, 200255dc <bbm_get_map_table+0x124>
200255d4:	4652      	mov	r2, sl
200255d6:	4631      	mov	r1, r6
200255d8:	480e      	ldr	r0, [pc, #56]	@ (20025614 <bbm_get_map_table+0x15c>)
200255da:	47a8      	blx	r5
200255dc:	e7fe      	b.n	200255dc <bbm_get_map_table+0x124>
200255de:	2d00      	cmp	r5, #0
200255e0:	f43f af75 	beq.w	200254ce <bbm_get_map_table+0x16>
200255e4:	4652      	mov	r2, sl
200255e6:	4631      	mov	r1, r6
200255e8:	480b      	ldr	r0, [pc, #44]	@ (20025618 <bbm_get_map_table+0x160>)
200255ea:	47a8      	blx	r5
200255ec:	e76f      	b.n	200254ce <bbm_get_map_table+0x16>
200255ee:	4621      	mov	r1, r4
200255f0:	480a      	ldr	r0, [pc, #40]	@ (2002561c <bbm_get_map_table+0x164>)
200255f2:	47a8      	blx	r5
200255f4:	e7d9      	b.n	200255aa <bbm_get_map_table+0xf2>
200255f6:	bf00      	nop
200255f8:	2002665f 	.word	0x2002665f
200255fc:	20026673 	.word	0x20026673
20025600:	20044900 	.word	0x20044900
20025604:	5366424d 	.word	0x5366424d
20025608:	20049f3c 	.word	0x20049f3c
2002560c:	20026699 	.word	0x20026699
20025610:	200266e3 	.word	0x200266e3
20025614:	200266f5 	.word	0x200266f5
20025618:	2002672a 	.word	0x2002672a
2002561c:	20026756 	.word	0x20026756
20025620:	20049f24 	.word	0x20049f24
20025624:	2004a34c 	.word	0x2004a34c
20025628:	20049f28 	.word	0x20049f28

2002562c <bbm_get_page_num>:
2002562c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20025630:	4605      	mov	r5, r0
20025632:	2400      	movs	r4, #0
20025634:	4f13      	ldr	r7, [pc, #76]	@ (20025684 <bbm_get_page_num+0x58>)
20025636:	4e14      	ldr	r6, [pc, #80]	@ (20025688 <bbm_get_page_num+0x5c>)
20025638:	f8df 8050 	ldr.w	r8, [pc, #80]	@ 2002568c <bbm_get_page_num+0x60>
2002563c:	b085      	sub	sp, #20
2002563e:	6839      	ldr	r1, [r7, #0]
20025640:	6833      	ldr	r3, [r6, #0]
20025642:	fbb3 f3f1 	udiv	r3, r3, r1
20025646:	42a3      	cmp	r3, r4
20025648:	d802      	bhi.n	20025650 <bbm_get_page_num+0x24>
2002564a:	f04f 34ff 	mov.w	r4, #4294967295
2002564e:	e015      	b.n	2002567c <bbm_get_page_num+0x50>
20025650:	2200      	movs	r2, #0
20025652:	e9cd 2201 	strd	r2, r2, [sp, #4]
20025656:	f8df 9038 	ldr.w	r9, [pc, #56]	@ 20025690 <bbm_get_page_num+0x64>
2002565a:	9100      	str	r1, [sp, #0]
2002565c:	4628      	mov	r0, r5
2002565e:	4621      	mov	r1, r4
20025660:	f8d9 3000 	ldr.w	r3, [r9]
20025664:	f7fb fa8e 	bl	20020b84 <port_read_page>
20025668:	b120      	cbz	r0, 20025674 <bbm_get_page_num+0x48>
2002566a:	f8d9 3000 	ldr.w	r3, [r9]
2002566e:	681b      	ldr	r3, [r3, #0]
20025670:	4543      	cmp	r3, r8
20025672:	d101      	bne.n	20025678 <bbm_get_page_num+0x4c>
20025674:	3401      	adds	r4, #1
20025676:	e7e2      	b.n	2002563e <bbm_get_page_num+0x12>
20025678:	3301      	adds	r3, #1
2002567a:	d1fb      	bne.n	20025674 <bbm_get_page_num+0x48>
2002567c:	4620      	mov	r0, r4
2002567e:	b005      	add	sp, #20
20025680:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20025684:	20044900 	.word	0x20044900
20025688:	20044904 	.word	0x20044904
2002568c:	5366424d 	.word	0x5366424d
20025690:	20049f28 	.word	0x20049f28

20025694 <bbm_read_page>:
20025694:	b5f0      	push	{r4, r5, r6, r7, lr}
20025696:	4604      	mov	r4, r0
20025698:	b085      	sub	sp, #20
2002569a:	b280      	uxth	r0, r0
2002569c:	461f      	mov	r7, r3
2002569e:	460d      	mov	r5, r1
200256a0:	4616      	mov	r6, r2
200256a2:	f7ff fe69 	bl	20025378 <bbm_get_phy_blk>
200256a6:	1c43      	adds	r3, r0, #1
200256a8:	d108      	bne.n	200256bc <bbm_read_page+0x28>
200256aa:	4b0a      	ldr	r3, [pc, #40]	@ (200256d4 <bbm_read_page+0x40>)
200256ac:	681b      	ldr	r3, [r3, #0]
200256ae:	b113      	cbz	r3, 200256b6 <bbm_read_page+0x22>
200256b0:	4621      	mov	r1, r4
200256b2:	4809      	ldr	r0, [pc, #36]	@ (200256d8 <bbm_read_page+0x44>)
200256b4:	4798      	blx	r3
200256b6:	2000      	movs	r0, #0
200256b8:	b005      	add	sp, #20
200256ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
200256bc:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200256be:	4632      	mov	r2, r6
200256c0:	9302      	str	r3, [sp, #8]
200256c2:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200256c4:	4629      	mov	r1, r5
200256c6:	9301      	str	r3, [sp, #4]
200256c8:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200256ca:	9300      	str	r3, [sp, #0]
200256cc:	463b      	mov	r3, r7
200256ce:	f7fb fa59 	bl	20020b84 <port_read_page>
200256d2:	e7f1      	b.n	200256b8 <bbm_read_page+0x24>
200256d4:	20049f24 	.word	0x20049f24
200256d8:	20026769 	.word	0x20026769

200256dc <port_write_page>:
200256dc:	4b01      	ldr	r3, [pc, #4]	@ (200256e4 <port_write_page+0x8>)
200256de:	6818      	ldr	r0, [r3, #0]
200256e0:	4770      	bx	lr
200256e2:	bf00      	nop
200256e4:	20044900 	.word	0x20044900

200256e8 <bbm_write_talbe.isra.0>:
200256e8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200256ea:	4604      	mov	r4, r0
200256ec:	4608      	mov	r0, r1
200256ee:	460e      	mov	r6, r1
200256f0:	f7ff ff9c 	bl	2002562c <bbm_get_page_num>
200256f4:	1e05      	subs	r5, r0, #0
200256f6:	db25      	blt.n	20025744 <bbm_write_talbe.isra.0+0x5c>
200256f8:	4b13      	ldr	r3, [pc, #76]	@ (20025748 <bbm_write_talbe.isra.0+0x60>)
200256fa:	681a      	ldr	r2, [r3, #0]
200256fc:	4b13      	ldr	r3, [pc, #76]	@ (2002574c <bbm_write_talbe.isra.0+0x64>)
200256fe:	681b      	ldr	r3, [r3, #0]
20025700:	fbb3 f3f2 	udiv	r3, r3, r2
20025704:	429d      	cmp	r5, r3
20025706:	da1d      	bge.n	20025744 <bbm_write_talbe.isra.0+0x5c>
20025708:	4f11      	ldr	r7, [pc, #68]	@ (20025750 <bbm_write_talbe.isra.0+0x68>)
2002570a:	21ff      	movs	r1, #255	@ 0xff
2002570c:	6838      	ldr	r0, [r7, #0]
2002570e:	f000 fab5 	bl	20025c7c <memset>
20025712:	4264      	negs	r4, r4
20025714:	490f      	ldr	r1, [pc, #60]	@ (20025754 <bbm_write_talbe.isra.0+0x6c>)
20025716:	f404 7402 	and.w	r4, r4, #520	@ 0x208
2002571a:	f44f 7202 	mov.w	r2, #520	@ 0x208
2002571e:	6838      	ldr	r0, [r7, #0]
20025720:	4421      	add	r1, r4
20025722:	f000 fab3 	bl	20025c8c <memcpy>
20025726:	6838      	ldr	r0, [r7, #0]
20025728:	b160      	cbz	r0, 20025744 <bbm_write_talbe.isra.0+0x5c>
2002572a:	6802      	ldr	r2, [r0, #0]
2002572c:	4b0a      	ldr	r3, [pc, #40]	@ (20025758 <bbm_write_talbe.isra.0+0x70>)
2002572e:	429a      	cmp	r2, r3
20025730:	d108      	bne.n	20025744 <bbm_write_talbe.isra.0+0x5c>
20025732:	f7ff fdbd 	bl	200252b0 <bbm_map_check.part.0>
20025736:	2300      	movs	r3, #0
20025738:	9300      	str	r3, [sp, #0]
2002573a:	4629      	mov	r1, r5
2002573c:	4630      	mov	r0, r6
2002573e:	683a      	ldr	r2, [r7, #0]
20025740:	f7ff ffcc 	bl	200256dc <port_write_page>
20025744:	b003      	add	sp, #12
20025746:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025748:	20044900 	.word	0x20044900
2002574c:	20044904 	.word	0x20044904
20025750:	20049f28 	.word	0x20049f28
20025754:	20049f3c 	.word	0x20049f3c
20025758:	5366424d 	.word	0x5366424d

2002575c <port_erase_block>:
2002575c:	2000      	movs	r0, #0
2002575e:	4770      	bx	lr

20025760 <bbm_init_table>:
20025760:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025764:	4c7d      	ldr	r4, [pc, #500]	@ (2002595c <bbm_init_table+0x1fc>)
20025766:	4b7e      	ldr	r3, [pc, #504]	@ (20025960 <bbm_init_table+0x200>)
20025768:	6822      	ldr	r2, [r4, #0]
2002576a:	b085      	sub	sp, #20
2002576c:	429a      	cmp	r2, r3
2002576e:	f000 80ef 	beq.w	20025950 <bbm_init_table+0x1f0>
20025772:	f8d4 2208 	ldr.w	r2, [r4, #520]	@ 0x208
20025776:	429a      	cmp	r2, r3
20025778:	f000 80ea 	beq.w	20025950 <bbm_init_table+0x1f0>
2002577c:	6023      	str	r3, [r4, #0]
2002577e:	2301      	movs	r3, #1
20025780:	6063      	str	r3, [r4, #4]
20025782:	2300      	movs	r3, #0
20025784:	f8df 9210 	ldr.w	r9, [pc, #528]	@ 20025998 <bbm_init_table+0x238>
20025788:	8123      	strh	r3, [r4, #8]
2002578a:	f8d9 3000 	ldr.w	r3, [r9]
2002578e:	4f75      	ldr	r7, [pc, #468]	@ (20025964 <bbm_init_table+0x204>)
20025790:	3b04      	subs	r3, #4
20025792:	f8df a208 	ldr.w	sl, [pc, #520]	@ 2002599c <bbm_init_table+0x23c>
20025796:	8163      	strh	r3, [r4, #10]
20025798:	683b      	ldr	r3, [r7, #0]
2002579a:	f8da 5000 	ldr.w	r5, [sl]
2002579e:	3b01      	subs	r3, #1
200257a0:	4e71      	ldr	r6, [pc, #452]	@ (20025968 <bbm_init_table+0x208>)
200257a2:	81a3      	strh	r3, [r4, #12]
200257a4:	81e5      	strh	r5, [r4, #14]
200257a6:	683b      	ldr	r3, [r7, #0]
200257a8:	429d      	cmp	r5, r3
200257aa:	db10      	blt.n	200257ce <bbm_init_table+0x6e>
200257ac:	2500      	movs	r5, #0
200257ae:	46a8      	mov	r8, r5
200257b0:	f8df b1b4 	ldr.w	fp, [pc, #436]	@ 20025968 <bbm_init_table+0x208>
200257b4:	f8da 6000 	ldr.w	r6, [sl]
200257b8:	42b5      	cmp	r5, r6
200257ba:	db20      	blt.n	200257fe <bbm_init_table+0x9e>
200257bc:	8963      	ldrh	r3, [r4, #10]
200257be:	2b00      	cmp	r3, #0
200257c0:	d14d      	bne.n	2002585e <bbm_init_table+0xfe>
200257c2:	4b69      	ldr	r3, [pc, #420]	@ (20025968 <bbm_init_table+0x208>)
200257c4:	681b      	ldr	r3, [r3, #0]
200257c6:	b10b      	cbz	r3, 200257cc <bbm_init_table+0x6c>
200257c8:	4868      	ldr	r0, [pc, #416]	@ (2002596c <bbm_init_table+0x20c>)
200257ca:	4798      	blx	r3
200257cc:	e7fe      	b.n	200257cc <bbm_init_table+0x6c>
200257ce:	4628      	mov	r0, r5
200257d0:	f7fb fa54 	bl	20020c7c <bbm_get_bb>
200257d4:	b968      	cbnz	r0, 200257f2 <bbm_init_table+0x92>
200257d6:	4628      	mov	r0, r5
200257d8:	f7ff ffc0 	bl	2002575c <port_erase_block>
200257dc:	b138      	cbz	r0, 200257ee <bbm_init_table+0x8e>
200257de:	6833      	ldr	r3, [r6, #0]
200257e0:	b113      	cbz	r3, 200257e8 <bbm_init_table+0x88>
200257e2:	4629      	mov	r1, r5
200257e4:	4862      	ldr	r0, [pc, #392]	@ (20025970 <bbm_init_table+0x210>)
200257e6:	4798      	blx	r3
200257e8:	8963      	ldrh	r3, [r4, #10]
200257ea:	3b01      	subs	r3, #1
200257ec:	8163      	strh	r3, [r4, #10]
200257ee:	3501      	adds	r5, #1
200257f0:	e7d9      	b.n	200257a6 <bbm_init_table+0x46>
200257f2:	6833      	ldr	r3, [r6, #0]
200257f4:	2b00      	cmp	r3, #0
200257f6:	d0f7      	beq.n	200257e8 <bbm_init_table+0x88>
200257f8:	4629      	mov	r1, r5
200257fa:	485e      	ldr	r0, [pc, #376]	@ (20025974 <bbm_init_table+0x214>)
200257fc:	e7f3      	b.n	200257e6 <bbm_init_table+0x86>
200257fe:	4628      	mov	r0, r5
20025800:	f7fb fa3c 	bl	20020c7c <bbm_get_bb>
20025804:	b348      	cbz	r0, 2002585a <bbm_init_table+0xfa>
20025806:	f8db 3000 	ldr.w	r3, [fp]
2002580a:	b113      	cbz	r3, 20025812 <bbm_init_table+0xb2>
2002580c:	4629      	mov	r1, r5
2002580e:	485a      	ldr	r0, [pc, #360]	@ (20025978 <bbm_init_table+0x218>)
20025810:	4798      	blx	r3
20025812:	89a0      	ldrh	r0, [r4, #12]
20025814:	f7fb fa32 	bl	20020c7c <bbm_get_bb>
20025818:	89a3      	ldrh	r3, [r4, #12]
2002581a:	4606      	mov	r6, r0
2002581c:	3b01      	subs	r3, #1
2002581e:	81a3      	strh	r3, [r4, #12]
20025820:	8963      	ldrh	r3, [r4, #10]
20025822:	3b01      	subs	r3, #1
20025824:	b29b      	uxth	r3, r3
20025826:	8163      	strh	r3, [r4, #10]
20025828:	b108      	cbz	r0, 2002582e <bbm_init_table+0xce>
2002582a:	2b00      	cmp	r3, #0
2002582c:	d1f1      	bne.n	20025812 <bbm_init_table+0xb2>
2002582e:	f8db 3000 	ldr.w	r3, [fp]
20025832:	b11b      	cbz	r3, 2002583c <bbm_init_table+0xdc>
20025834:	4642      	mov	r2, r8
20025836:	4629      	mov	r1, r5
20025838:	4850      	ldr	r0, [pc, #320]	@ (2002597c <bbm_init_table+0x21c>)
2002583a:	4798      	blx	r3
2002583c:	b946      	cbnz	r6, 20025850 <bbm_init_table+0xf0>
2002583e:	89a2      	ldrh	r2, [r4, #12]
20025840:	f108 0306 	add.w	r3, r8, #6
20025844:	f824 5023 	strh.w	r5, [r4, r3, lsl #2]
20025848:	3201      	adds	r2, #1
2002584a:	eb04 0383 	add.w	r3, r4, r3, lsl #2
2002584e:	805a      	strh	r2, [r3, #2]
20025850:	8923      	ldrh	r3, [r4, #8]
20025852:	f108 0801 	add.w	r8, r8, #1
20025856:	3301      	adds	r3, #1
20025858:	8123      	strh	r3, [r4, #8]
2002585a:	3501      	adds	r5, #1
2002585c:	e7aa      	b.n	200257b4 <bbm_init_table+0x54>
2002585e:	2110      	movs	r1, #16
20025860:	483e      	ldr	r0, [pc, #248]	@ (2002595c <bbm_init_table+0x1fc>)
20025862:	f7ff fd75 	bl	20025350 <bbm_crc_check>
20025866:	f8d9 1000 	ldr.w	r1, [r9]
2002586a:	6120      	str	r0, [r4, #16]
2002586c:	3904      	subs	r1, #4
2002586e:	0089      	lsls	r1, r1, #2
20025870:	4843      	ldr	r0, [pc, #268]	@ (20025980 <bbm_init_table+0x220>)
20025872:	f7ff fd6d 	bl	20025350 <bbm_crc_check>
20025876:	f44f 7202 	mov.w	r2, #520	@ 0x208
2002587a:	4938      	ldr	r1, [pc, #224]	@ (2002595c <bbm_init_table+0x1fc>)
2002587c:	6160      	str	r0, [r4, #20]
2002587e:	1888      	adds	r0, r1, r2
20025880:	f000 fa04 	bl	20025c8c <memcpy>
20025884:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025888:	2110      	movs	r1, #16
2002588a:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
2002588e:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025892:	483c      	ldr	r0, [pc, #240]	@ (20025984 <bbm_init_table+0x224>)
20025894:	f7ff fd5c 	bl	20025350 <bbm_crc_check>
20025898:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
2002589c:	2400      	movs	r4, #0
2002589e:	f8df 9100 	ldr.w	r9, [pc, #256]	@ 200259a0 <bbm_init_table+0x240>
200258a2:	f8df 8100 	ldr.w	r8, [pc, #256]	@ 200259a4 <bbm_init_table+0x244>
200258a6:	683b      	ldr	r3, [r7, #0]
200258a8:	429e      	cmp	r6, r3
200258aa:	db08      	blt.n	200258be <bbm_init_table+0x15e>
200258ac:	2c03      	cmp	r4, #3
200258ae:	dc30      	bgt.n	20025912 <bbm_init_table+0x1b2>
200258b0:	4b2d      	ldr	r3, [pc, #180]	@ (20025968 <bbm_init_table+0x208>)
200258b2:	681b      	ldr	r3, [r3, #0]
200258b4:	b113      	cbz	r3, 200258bc <bbm_init_table+0x15c>
200258b6:	4621      	mov	r1, r4
200258b8:	4833      	ldr	r0, [pc, #204]	@ (20025988 <bbm_init_table+0x228>)
200258ba:	4798      	blx	r3
200258bc:	e7fe      	b.n	200258bc <bbm_init_table+0x15c>
200258be:	4630      	mov	r0, r6
200258c0:	f7fb f9dc 	bl	20020c7c <bbm_get_bb>
200258c4:	4605      	mov	r5, r0
200258c6:	bb10      	cbnz	r0, 2002590e <bbm_init_table+0x1ae>
200258c8:	f8d9 a000 	ldr.w	sl, [r9]
200258cc:	21ff      	movs	r1, #255	@ 0xff
200258ce:	4652      	mov	r2, sl
200258d0:	f8d8 0000 	ldr.w	r0, [r8]
200258d4:	f000 f9d2 	bl	20025c7c <memset>
200258d8:	e9cd 5501 	strd	r5, r5, [sp, #4]
200258dc:	f8cd a000 	str.w	sl, [sp]
200258e0:	f8d8 3000 	ldr.w	r3, [r8]
200258e4:	462a      	mov	r2, r5
200258e6:	4629      	mov	r1, r5
200258e8:	4630      	mov	r0, r6
200258ea:	f7fb f94b 	bl	20020b84 <port_read_page>
200258ee:	f8d9 3000 	ldr.w	r3, [r9]
200258f2:	4298      	cmp	r0, r3
200258f4:	d109      	bne.n	2002590a <bbm_init_table+0x1aa>
200258f6:	f8d8 3000 	ldr.w	r3, [r8]
200258fa:	681b      	ldr	r3, [r3, #0]
200258fc:	3301      	adds	r3, #1
200258fe:	bf01      	itttt	eq
20025900:	4b22      	ldreq	r3, [pc, #136]	@ (2002598c <bbm_init_table+0x22c>)
20025902:	1d22      	addeq	r2, r4, #4
20025904:	f823 6012 	strheq.w	r6, [r3, r2, lsl #1]
20025908:	3401      	addeq	r4, #1
2002590a:	2c03      	cmp	r4, #3
2002590c:	dc01      	bgt.n	20025912 <bbm_init_table+0x1b2>
2002590e:	3601      	adds	r6, #1
20025910:	e7c9      	b.n	200258a6 <bbm_init_table+0x146>
20025912:	2500      	movs	r5, #0
20025914:	4c1d      	ldr	r4, [pc, #116]	@ (2002598c <bbm_init_table+0x22c>)
20025916:	2000      	movs	r0, #0
20025918:	8921      	ldrh	r1, [r4, #8]
2002591a:	f7ff fee5 	bl	200256e8 <bbm_write_talbe.isra.0>
2002591e:	8923      	ldrh	r3, [r4, #8]
20025920:	2001      	movs	r0, #1
20025922:	8961      	ldrh	r1, [r4, #10]
20025924:	8023      	strh	r3, [r4, #0]
20025926:	8223      	strh	r3, [r4, #16]
20025928:	8125      	strh	r5, [r4, #8]
2002592a:	f7ff fedd 	bl	200256e8 <bbm_write_talbe.isra.0>
2002592e:	8963      	ldrh	r3, [r4, #10]
20025930:	8165      	strh	r5, [r4, #10]
20025932:	80a3      	strh	r3, [r4, #4]
20025934:	8263      	strh	r3, [r4, #18]
20025936:	89a3      	ldrh	r3, [r4, #12]
20025938:	8063      	strh	r3, [r4, #2]
2002593a:	89e3      	ldrh	r3, [r4, #14]
2002593c:	80e3      	strh	r3, [r4, #6]
2002593e:	4b0a      	ldr	r3, [pc, #40]	@ (20025968 <bbm_init_table+0x208>)
20025940:	681b      	ldr	r3, [r3, #0]
20025942:	b10b      	cbz	r3, 20025948 <bbm_init_table+0x1e8>
20025944:	4812      	ldr	r0, [pc, #72]	@ (20025990 <bbm_init_table+0x230>)
20025946:	4798      	blx	r3
20025948:	2000      	movs	r0, #0
2002594a:	b005      	add	sp, #20
2002594c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025950:	4b05      	ldr	r3, [pc, #20]	@ (20025968 <bbm_init_table+0x208>)
20025952:	681b      	ldr	r3, [r3, #0]
20025954:	b10b      	cbz	r3, 2002595a <bbm_init_table+0x1fa>
20025956:	480f      	ldr	r0, [pc, #60]	@ (20025994 <bbm_init_table+0x234>)
20025958:	4798      	blx	r3
2002595a:	e7fe      	b.n	2002595a <bbm_init_table+0x1fa>
2002595c:	20049f3c 	.word	0x20049f3c
20025960:	5366424d 	.word	0x5366424d
20025964:	20049f30 	.word	0x20049f30
20025968:	20049f24 	.word	0x20049f24
2002596c:	200267fe 	.word	0x200267fe
20025970:	2002678c 	.word	0x2002678c
20025974:	200267ae 	.word	0x200267ae
20025978:	200267cb 	.word	0x200267cb
2002597c:	200267ea 	.word	0x200267ea
20025980:	20049f54 	.word	0x20049f54
20025984:	2004a144 	.word	0x2004a144
20025988:	20026818 	.word	0x20026818
2002598c:	2004a34c 	.word	0x2004a34c
20025990:	2002683f 	.word	0x2002683f
20025994:	2002685b 	.word	0x2002685b
20025998:	20049f34 	.word	0x20049f34
2002599c:	20049f38 	.word	0x20049f38
200259a0:	20044900 	.word	0x20044900
200259a4:	20049f28 	.word	0x20049f28

200259a8 <sif_bbm_init>:
200259a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200259ac:	b087      	sub	sp, #28
200259ae:	2900      	cmp	r1, #0
200259b0:	f000 8129 	beq.w	20025c06 <sif_bbm_init+0x25e>
200259b4:	4b95      	ldr	r3, [pc, #596]	@ (20025c0c <sif_bbm_init+0x264>)
200259b6:	681a      	ldr	r2, [r3, #0]
200259b8:	2a01      	cmp	r2, #1
200259ba:	d108      	bne.n	200259ce <sif_bbm_init+0x26>
200259bc:	4b94      	ldr	r3, [pc, #592]	@ (20025c10 <sif_bbm_init+0x268>)
200259be:	681b      	ldr	r3, [r3, #0]
200259c0:	b10b      	cbz	r3, 200259c6 <sif_bbm_init+0x1e>
200259c2:	4894      	ldr	r0, [pc, #592]	@ (20025c14 <sif_bbm_init+0x26c>)
200259c4:	4798      	blx	r3
200259c6:	2000      	movs	r0, #0
200259c8:	b007      	add	sp, #28
200259ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200259ce:	2201      	movs	r2, #1
200259d0:	601a      	str	r2, [r3, #0]
200259d2:	4b91      	ldr	r3, [pc, #580]	@ (20025c18 <sif_bbm_init+0x270>)
200259d4:	681c      	ldr	r4, [r3, #0]
200259d6:	b904      	cbnz	r4, 200259da <sif_bbm_init+0x32>
200259d8:	e7fe      	b.n	200259d8 <sif_bbm_init+0x30>
200259da:	f8df a27c 	ldr.w	sl, [pc, #636]	@ 20025c58 <sif_bbm_init+0x2b0>
200259de:	f8da 2000 	ldr.w	r2, [sl]
200259e2:	b902      	cbnz	r2, 200259e6 <sif_bbm_init+0x3e>
200259e4:	e7fe      	b.n	200259e4 <sif_bbm_init+0x3c>
200259e6:	fbb0 f4f4 	udiv	r4, r0, r4
200259ea:	f04f 0800 	mov.w	r8, #0
200259ee:	4a8b      	ldr	r2, [pc, #556]	@ (20025c1c <sif_bbm_init+0x274>)
200259f0:	f8df b268 	ldr.w	fp, [pc, #616]	@ 20025c5c <sif_bbm_init+0x2b4>
200259f4:	0963      	lsrs	r3, r4, #5
200259f6:	f8df 9268 	ldr.w	r9, [pc, #616]	@ 20025c60 <sif_bbm_init+0x2b8>
200259fa:	6013      	str	r3, [r2, #0]
200259fc:	f8cb 4000 	str.w	r4, [fp]
20025a00:	1ae4      	subs	r4, r4, r3
20025a02:	4b87      	ldr	r3, [pc, #540]	@ (20025c20 <sif_bbm_init+0x278>)
20025a04:	2218      	movs	r2, #24
20025a06:	f8c9 1000 	str.w	r1, [r9]
20025a0a:	4886      	ldr	r0, [pc, #536]	@ (20025c24 <sif_bbm_init+0x27c>)
20025a0c:	2100      	movs	r1, #0
20025a0e:	601c      	str	r4, [r3, #0]
20025a10:	f000 f934 	bl	20025c7c <memset>
20025a14:	f44f 6282 	mov.w	r2, #1040	@ 0x410
20025a18:	2100      	movs	r1, #0
20025a1a:	4883      	ldr	r0, [pc, #524]	@ (20025c28 <sif_bbm_init+0x280>)
20025a1c:	f000 f92e 	bl	20025c7c <memset>
20025a20:	4647      	mov	r7, r8
20025a22:	4646      	mov	r6, r8
20025a24:	f8db 3000 	ldr.w	r3, [fp]
20025a28:	429c      	cmp	r4, r3
20025a2a:	db02      	blt.n	20025a32 <sif_bbm_init+0x8a>
20025a2c:	f04f 35ff 	mov.w	r5, #4294967295
20025a30:	e064      	b.n	20025afc <sif_bbm_init+0x154>
20025a32:	4620      	mov	r0, r4
20025a34:	f7fb f922 	bl	20020c7c <bbm_get_bb>
20025a38:	4605      	mov	r5, r0
20025a3a:	b138      	cbz	r0, 20025a4c <sif_bbm_init+0xa4>
20025a3c:	4b74      	ldr	r3, [pc, #464]	@ (20025c10 <sif_bbm_init+0x268>)
20025a3e:	681b      	ldr	r3, [r3, #0]
20025a40:	b113      	cbz	r3, 20025a48 <sif_bbm_init+0xa0>
20025a42:	487a      	ldr	r0, [pc, #488]	@ (20025c2c <sif_bbm_init+0x284>)
20025a44:	1c61      	adds	r1, r4, #1
20025a46:	4798      	blx	r3
20025a48:	3401      	adds	r4, #1
20025a4a:	e7eb      	b.n	20025a24 <sif_bbm_init+0x7c>
20025a4c:	f8da 2000 	ldr.w	r2, [sl]
20025a50:	21ff      	movs	r1, #255	@ 0xff
20025a52:	f8d9 0000 	ldr.w	r0, [r9]
20025a56:	9205      	str	r2, [sp, #20]
20025a58:	f000 f910 	bl	20025c7c <memset>
20025a5c:	9a05      	ldr	r2, [sp, #20]
20025a5e:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025a62:	9200      	str	r2, [sp, #0]
20025a64:	f8d9 3000 	ldr.w	r3, [r9]
20025a68:	462a      	mov	r2, r5
20025a6a:	4629      	mov	r1, r5
20025a6c:	4620      	mov	r0, r4
20025a6e:	f7fb f889 	bl	20020b84 <port_read_page>
20025a72:	f8da 3000 	ldr.w	r3, [sl]
20025a76:	4298      	cmp	r0, r3
20025a78:	d12e      	bne.n	20025ad8 <sif_bbm_init+0x130>
20025a7a:	f8d9 1000 	ldr.w	r1, [r9]
20025a7e:	486c      	ldr	r0, [pc, #432]	@ (20025c30 <sif_bbm_init+0x288>)
20025a80:	680b      	ldr	r3, [r1, #0]
20025a82:	b2a2      	uxth	r2, r4
20025a84:	4283      	cmp	r3, r0
20025a86:	4b67      	ldr	r3, [pc, #412]	@ (20025c24 <sif_bbm_init+0x27c>)
20025a88:	d11f      	bne.n	20025aca <sif_bbm_init+0x122>
20025a8a:	f991 1007 	ldrsb.w	r1, [r1, #7]
20025a8e:	2900      	cmp	r1, #0
20025a90:	bfb5      	itete	lt
20025a92:	eb03 0147 	addlt.w	r1, r3, r7, lsl #1
20025a96:	f823 2016 	strhge.w	r2, [r3, r6, lsl #1]
20025a9a:	808a      	strhlt	r2, [r1, #4]
20025a9c:	3601      	addge	r6, #1
20025a9e:	bfb8      	it	lt
20025aa0:	3701      	addlt	r7, #1
20025aa2:	eb06 0208 	add.w	r2, r6, r8
20025aa6:	443a      	add	r2, r7
20025aa8:	2a03      	cmp	r2, #3
20025aaa:	ddcd      	ble.n	20025a48 <sif_bbm_init+0xa0>
20025aac:	2e00      	cmp	r6, #0
20025aae:	f000 8081 	beq.w	20025bb4 <sif_bbm_init+0x20c>
20025ab2:	2f00      	cmp	r7, #0
20025ab4:	d07e      	beq.n	20025bb4 <sif_bbm_init+0x20c>
20025ab6:	2e01      	cmp	r6, #1
20025ab8:	d001      	beq.n	20025abe <sif_bbm_init+0x116>
20025aba:	2f01      	cmp	r7, #1
20025abc:	d11e      	bne.n	20025afc <sif_bbm_init+0x154>
20025abe:	8819      	ldrh	r1, [r3, #0]
20025ac0:	891a      	ldrh	r2, [r3, #8]
20025ac2:	b981      	cbnz	r1, 20025ae6 <sif_bbm_init+0x13e>
20025ac4:	801a      	strh	r2, [r3, #0]
20025ac6:	895a      	ldrh	r2, [r3, #10]
20025ac8:	e013      	b.n	20025af2 <sif_bbm_init+0x14a>
20025aca:	f108 0104 	add.w	r1, r8, #4
20025ace:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
20025ad2:	f108 0801 	add.w	r8, r8, #1
20025ad6:	e7e4      	b.n	20025aa2 <sif_bbm_init+0xfa>
20025ad8:	4b4d      	ldr	r3, [pc, #308]	@ (20025c10 <sif_bbm_init+0x268>)
20025ada:	681b      	ldr	r3, [r3, #0]
20025adc:	2b00      	cmp	r3, #0
20025ade:	d0b3      	beq.n	20025a48 <sif_bbm_init+0xa0>
20025ae0:	4854      	ldr	r0, [pc, #336]	@ (20025c34 <sif_bbm_init+0x28c>)
20025ae2:	1c61      	adds	r1, r4, #1
20025ae4:	e7af      	b.n	20025a46 <sif_bbm_init+0x9e>
20025ae6:	8859      	ldrh	r1, [r3, #2]
20025ae8:	b909      	cbnz	r1, 20025aee <sif_bbm_init+0x146>
20025aea:	805a      	strh	r2, [r3, #2]
20025aec:	e7eb      	b.n	20025ac6 <sif_bbm_init+0x11e>
20025aee:	2a00      	cmp	r2, #0
20025af0:	d0e9      	beq.n	20025ac6 <sif_bbm_init+0x11e>
20025af2:	8899      	ldrh	r1, [r3, #4]
20025af4:	2900      	cmp	r1, #0
20025af6:	d158      	bne.n	20025baa <sif_bbm_init+0x202>
20025af8:	809a      	strh	r2, [r3, #4]
20025afa:	2502      	movs	r5, #2
20025afc:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20025c10 <sif_bbm_init+0x268>
20025b00:	f8d9 4000 	ldr.w	r4, [r9]
20025b04:	b124      	cbz	r4, 20025b10 <sif_bbm_init+0x168>
20025b06:	4643      	mov	r3, r8
20025b08:	463a      	mov	r2, r7
20025b0a:	4631      	mov	r1, r6
20025b0c:	484a      	ldr	r0, [pc, #296]	@ (20025c38 <sif_bbm_init+0x290>)
20025b0e:	47a0      	blx	r4
20025b10:	f8d9 3000 	ldr.w	r3, [r9]
20025b14:	b113      	cbz	r3, 20025b1c <sif_bbm_init+0x174>
20025b16:	4629      	mov	r1, r5
20025b18:	4848      	ldr	r0, [pc, #288]	@ (20025c3c <sif_bbm_init+0x294>)
20025b1a:	4798      	blx	r3
20025b1c:	f035 0002 	bics.w	r0, r5, #2
20025b20:	d164      	bne.n	20025bec <sif_bbm_init+0x244>
20025b22:	f7ff fcc9 	bl	200254b8 <bbm_get_map_table>
20025b26:	4605      	mov	r5, r0
20025b28:	2001      	movs	r0, #1
20025b2a:	f7ff fcc5 	bl	200254b8 <bbm_get_map_table>
20025b2e:	f8d9 6000 	ldr.w	r6, [r9]
20025b32:	4604      	mov	r4, r0
20025b34:	b13e      	cbz	r6, 20025b46 <sif_bbm_init+0x19e>
20025b36:	4a3b      	ldr	r2, [pc, #236]	@ (20025c24 <sif_bbm_init+0x27c>)
20025b38:	4629      	mov	r1, r5
20025b3a:	8a53      	ldrh	r3, [r2, #18]
20025b3c:	9300      	str	r3, [sp, #0]
20025b3e:	8a12      	ldrh	r2, [r2, #16]
20025b40:	4603      	mov	r3, r0
20025b42:	483f      	ldr	r0, [pc, #252]	@ (20025c40 <sif_bbm_init+0x298>)
20025b44:	47b0      	blx	r6
20025b46:	42a5      	cmp	r5, r4
20025b48:	4c37      	ldr	r4, [pc, #220]	@ (20025c28 <sif_bbm_init+0x280>)
20025b4a:	dd35      	ble.n	20025bb8 <sif_bbm_init+0x210>
20025b4c:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025b50:	4621      	mov	r1, r4
20025b52:	18a0      	adds	r0, r4, r2
20025b54:	f000 f89a 	bl	20025c8c <memcpy>
20025b58:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025b5c:	2110      	movs	r1, #16
20025b5e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025b62:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025b66:	f504 7002 	add.w	r0, r4, #520	@ 0x208
20025b6a:	f7ff fbf1 	bl	20025350 <bbm_crc_check>
20025b6e:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025b72:	2001      	movs	r0, #1
20025b74:	4b2b      	ldr	r3, [pc, #172]	@ (20025c24 <sif_bbm_init+0x27c>)
20025b76:	8a59      	ldrh	r1, [r3, #18]
20025b78:	f7ff fdb6 	bl	200256e8 <bbm_write_talbe.isra.0>
20025b7c:	6822      	ldr	r2, [r4, #0]
20025b7e:	4b2c      	ldr	r3, [pc, #176]	@ (20025c30 <sif_bbm_init+0x288>)
20025b80:	429a      	cmp	r2, r3
20025b82:	d12d      	bne.n	20025be0 <sif_bbm_init+0x238>
20025b84:	4828      	ldr	r0, [pc, #160]	@ (20025c28 <sif_bbm_init+0x280>)
20025b86:	f7ff fb93 	bl	200252b0 <bbm_map_check.part.0>
20025b8a:	f8d9 4000 	ldr.w	r4, [r9]
20025b8e:	b12c      	cbz	r4, 20025b9c <sif_bbm_init+0x1f4>
20025b90:	4b2c      	ldr	r3, [pc, #176]	@ (20025c44 <sif_bbm_init+0x29c>)
20025b92:	4924      	ldr	r1, [pc, #144]	@ (20025c24 <sif_bbm_init+0x27c>)
20025b94:	482c      	ldr	r0, [pc, #176]	@ (20025c48 <sif_bbm_init+0x2a0>)
20025b96:	f5a3 7202 	sub.w	r2, r3, #520	@ 0x208
20025b9a:	47a0      	blx	r4
20025b9c:	f8d9 3000 	ldr.w	r3, [r9]
20025ba0:	2b00      	cmp	r3, #0
20025ba2:	f43f af10 	beq.w	200259c6 <sif_bbm_init+0x1e>
20025ba6:	4829      	ldr	r0, [pc, #164]	@ (20025c4c <sif_bbm_init+0x2a4>)
20025ba8:	e70c      	b.n	200259c4 <sif_bbm_init+0x1c>
20025baa:	88d9      	ldrh	r1, [r3, #6]
20025bac:	2900      	cmp	r1, #0
20025bae:	d1a4      	bne.n	20025afa <sif_bbm_init+0x152>
20025bb0:	80da      	strh	r2, [r3, #6]
20025bb2:	e7a2      	b.n	20025afa <sif_bbm_init+0x152>
20025bb4:	2501      	movs	r5, #1
20025bb6:	e7a1      	b.n	20025afc <sif_bbm_init+0x154>
20025bb8:	dae0      	bge.n	20025b7c <sif_bbm_init+0x1d4>
20025bba:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025bbe:	4620      	mov	r0, r4
20025bc0:	18a1      	adds	r1, r4, r2
20025bc2:	f000 f863 	bl	20025c8c <memcpy>
20025bc6:	79e3      	ldrb	r3, [r4, #7]
20025bc8:	2110      	movs	r1, #16
20025bca:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
20025bce:	71e3      	strb	r3, [r4, #7]
20025bd0:	4620      	mov	r0, r4
20025bd2:	f7ff fbbd 	bl	20025350 <bbm_crc_check>
20025bd6:	4b13      	ldr	r3, [pc, #76]	@ (20025c24 <sif_bbm_init+0x27c>)
20025bd8:	6120      	str	r0, [r4, #16]
20025bda:	8a19      	ldrh	r1, [r3, #16]
20025bdc:	2000      	movs	r0, #0
20025bde:	e7cb      	b.n	20025b78 <sif_bbm_init+0x1d0>
20025be0:	f8d9 3000 	ldr.w	r3, [r9]
20025be4:	b10b      	cbz	r3, 20025bea <sif_bbm_init+0x242>
20025be6:	481a      	ldr	r0, [pc, #104]	@ (20025c50 <sif_bbm_init+0x2a8>)
20025be8:	4798      	blx	r3
20025bea:	e7fe      	b.n	20025bea <sif_bbm_init+0x242>
20025bec:	2d01      	cmp	r5, #1
20025bee:	d102      	bne.n	20025bf6 <sif_bbm_init+0x24e>
20025bf0:	f7ff fdb6 	bl	20025760 <bbm_init_table>
20025bf4:	e7c9      	b.n	20025b8a <sif_bbm_init+0x1e2>
20025bf6:	f8d9 3000 	ldr.w	r3, [r9]
20025bfa:	b11b      	cbz	r3, 20025c04 <sif_bbm_init+0x25c>
20025bfc:	f04f 31ff 	mov.w	r1, #4294967295
20025c00:	4814      	ldr	r0, [pc, #80]	@ (20025c54 <sif_bbm_init+0x2ac>)
20025c02:	4798      	blx	r3
20025c04:	e7fe      	b.n	20025c04 <sif_bbm_init+0x25c>
20025c06:	f04f 30ff 	mov.w	r0, #4294967295
20025c0a:	e6dd      	b.n	200259c8 <sif_bbm_init+0x20>
20025c0c:	20049f2c 	.word	0x20049f2c
20025c10:	20049f24 	.word	0x20049f24
20025c14:	2002686f 	.word	0x2002686f
20025c18:	20044904 	.word	0x20044904
20025c1c:	20049f34 	.word	0x20049f34
20025c20:	20049f38 	.word	0x20049f38
20025c24:	2004a34c 	.word	0x2004a34c
20025c28:	20049f3c 	.word	0x20049f3c
20025c2c:	2002689d 	.word	0x2002689d
20025c30:	5366424d 	.word	0x5366424d
20025c34:	200268a9 	.word	0x200268a9
20025c38:	200268c8 	.word	0x200268c8
20025c3c:	200268e7 	.word	0x200268e7
20025c40:	200268f9 	.word	0x200268f9
20025c44:	2004a144 	.word	0x2004a144
20025c48:	20026954 	.word	0x20026954
20025c4c:	20026978 	.word	0x20026978
20025c50:	2002691d 	.word	0x2002691d
20025c54:	20026933 	.word	0x20026933
20025c58:	20044900 	.word	0x20044900
20025c5c:	20049f30 	.word	0x20049f30
20025c60:	20049f28 	.word	0x20049f28

20025c64 <bbm_set_page_size>:
20025c64:	4b01      	ldr	r3, [pc, #4]	@ (20025c6c <bbm_set_page_size+0x8>)
20025c66:	6018      	str	r0, [r3, #0]
20025c68:	4770      	bx	lr
20025c6a:	bf00      	nop
20025c6c:	20044900 	.word	0x20044900

20025c70 <bbm_set_blk_size>:
20025c70:	4b01      	ldr	r3, [pc, #4]	@ (20025c78 <bbm_set_blk_size+0x8>)
20025c72:	6018      	str	r0, [r3, #0]
20025c74:	4770      	bx	lr
20025c76:	bf00      	nop
20025c78:	20044904 	.word	0x20044904

20025c7c <memset>:
20025c7c:	4402      	add	r2, r0
20025c7e:	4603      	mov	r3, r0
20025c80:	4293      	cmp	r3, r2
20025c82:	d100      	bne.n	20025c86 <memset+0xa>
20025c84:	4770      	bx	lr
20025c86:	f803 1b01 	strb.w	r1, [r3], #1
20025c8a:	e7f9      	b.n	20025c80 <memset+0x4>

20025c8c <memcpy>:
20025c8c:	440a      	add	r2, r1
20025c8e:	1e43      	subs	r3, r0, #1
20025c90:	4291      	cmp	r1, r2
20025c92:	d100      	bne.n	20025c96 <memcpy+0xa>
20025c94:	4770      	bx	lr
20025c96:	b510      	push	{r4, lr}
20025c98:	f811 4b01 	ldrb.w	r4, [r1], #1
20025c9c:	4291      	cmp	r1, r2
20025c9e:	f803 4f01 	strb.w	r4, [r3, #1]!
20025ca2:	d1f9      	bne.n	20025c98 <memcpy+0xc>
20025ca4:	bd10      	pop	{r4, pc}
20025ca6:	0000      	movs	r0, r0
20025ca8:	50041000 	.word	0x50041000
20025cac:	00000002 	.word	0x00000002
20025cb0:	10000000 	.word	0x10000000
20025cb4:	00000004 	.word	0x00000004
20025cb8:	00000000 	.word	0x00000000
20025cbc:	50081008 	.word	0x50081008
20025cc0:	00000000 	.word	0x00000000
20025cc4:	00000032 	.word	0x00000032
20025cc8:	00000000 	.word	0x00000000
20025ccc:	50042000 	.word	0x50042000
20025cd0:	00000002 	.word	0x00000002
20025cd4:	12000000 	.word	0x12000000
20025cd8:	00000004 	.word	0x00000004
20025cdc:	00000000 	.word	0x00000000
20025ce0:	5008101c 	.word	0x5008101c
20025ce4:	00000000 	.word	0x00000000
20025ce8:	00000033 	.word	0x00000033
20025cec:	00000001 	.word	0x00000001

20025cf0 <pin_pad_func_lcpu>:
	...
20025d10:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
20025d20:	00000237 00000000 00000000 00000000     7...............
20025d30:	032200b3 00000302 00000000 024b023c     ..".........<.K.
20025d40:	00000238 00000000 00000000 00000000     8...............
20025d50:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
20025d60:	0000023a 00000000 00000000 00000000     :...............
20025d70:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
20025d80:	00000239 00000000 00000000 00000000     9...............

20025d90 <pin_pad_func_hcpu>:
	...
20025db0:	000400f2 00000000 000b0000 00000000     ................
	...
20025dd0:	000900f3 00000000 00030000 00000000     ................
	...
20025df0:	000a00f4 00000000 000a0000 00000000     ................
	...
20025e10:	000b00f5 00000000 000b0000 00000000     ................
	...
20025e30:	000c00f6 00000000 00030000 00000000     ................
	...
20025e50:	000300f7 000d0000 00000009 00000000     ................
	...
20025e70:	000200f8 000e0000 0000000b 00000000     ................
	...
20025e90:	000100f9 000f0000 0009000a 00000000     ................
	...
20025eb0:	000d00fa 00100000 000c0003 00000000     ................
	...
20025ed0:	000e00fb 00060000 00010001 00000000     ................
	...
20025ef0:	000f00fc 00010000 000c000c 00000000     ................
	...
20025f10:	001000fd 00030000 00090000 00000000     ................
	...
20025f30:	000500fe 00000006 00000000 00000000     ................
	...
20025f50:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
20025f70:	00000053 00000000 026402b3 00000000     S.........d.....
	...
20025f90:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
20025fa0:	023b0000 02270000 00000000 00000000     ..;...'.........
20025fb0:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
20025fc0:	023c0000 02280000 00000000 00000000     ..<...(.........
20025fd0:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
20025fe0:	023d0000 02290000 00000000 00000000     ..=...).........
20025ff0:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
20026000:	023e0000 022a0000 00000000 00000000     ..>...*.........
20026010:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
20026020:	023f0000 022b0000 00000000 00000000     ..?...+.........
20026030:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
20026040:	02400000 022c0000 00000000 00000000     ..@...,.........
20026050:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
20026060:	02410000 0000023a 00000000 00000000     ..A.:...........
20026070:	0000005b 00000000 026c02bb 00000000     [.........l.....
20026080:	02420000 00000239 00000000 00000000     ..B.9...........
20026090:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
200260b0:	0000005d 00000000 026e02bd 00000000     ].........n.....
200260c0:	01d30000 02210237 00000000 00000000     ....7.!.........
200260d0:	001b005e 000001b7 026f02be 00000000     ^.........o.....
200260e0:	00000000 02220238 00000000 00000000     ....8.".........
200260f0:	0022005f 000001b8 027002bf 00000000     _.".......p.....
20026100:	00000000 02230000 00000000 00000000     ......#.........
20026110:	00230060 000001b2 027102c0 00000000     `.#.......q.....
20026120:	00000000 02240000 00000000 00000000     ......$.........
20026130:	00210061 000001b4 027202c1 00000000     a.!.......r.....
20026140:	00000000 02250000 00000000 00000000     ......%.........
20026150:	00190062 000001b5 027302c2 00000000     b.........s.....
20026160:	00000000 02260000 00000000 00000000     ......&.........
20026170:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
20026190:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
200261b0:	00000065 00000219 027602c5 00000000     e.........v.....
	...
200261d0:	00000066 00000000 027702c6 00000000     f.........w.....
200261e0:	024b0000 00000000 00000000 00000000     ..K.............
200261f0:	00000067 00000000 027802c7 00000000     g.........x.....
	...
20026210:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
20026230:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
20026250:	0000006a 01c60149 027b02ca 00000000     j...I.....{.....
	...
20026270:	0000006b 01c80148 027c02cb 00000000     k...H.....|.....
	...
20026290:	0000006c 00000000 027d02cc 00000000     l.........}.....
	...
200262b0:	0000006d 00000000 027e02cd 00000000     m.........~.....
	...
200262d0:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
200262f0:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
20026310:	00000070 01c50000 028102d0 00000000     p...............
	...
20026330:	00000071 00000000 028202d1 00000000     q...............
20026340:	02430000 00000000 00000000 00000000     ..C.............
20026350:	00000072 00000000 028302d2 00000000     r...............
	...
20026370:	00000073 00000000 028402d3 00000000     s...............
	...
20026390:	00000074 00000000 028502d4 00000000     t...............
	...
200263b0:	00000075 00000000 028602d5 00000000     u...............
	...
200263d0:	00000076 00000000 028702d6 00000000     v...............
	...
200263f0:	00000077 0000014d 028802d7 01620000     w...M.........b.
20026400:	02440000 00000000 00000000 00000000     ..D.............
20026410:	00000078 0000014c 028902d8 00000000     x...L...........
	...
20026430:	00000079 0000014a 028a02d9 01630190     y...J.........c.
20026440:	02450000 022f0000 00000000 00000000     ..E.../.........
20026450:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
20026460:	02460000 02300000 00000000 00000000     ..F...0.........
20026470:	0000007b 00000000 028c02db 01650193     {.............e.
20026480:	02470000 02310000 00000000 00000000     ..G...1.........
20026490:	0000007c 00000000 028d02dc 01660196     |.............f.
200264a0:	02480000 02320000 00000000 00000000     ..H...2.........
200264b0:	0000007d 00000000 028e02dd 01670198     }.............g.
200264c0:	02490000 02330000 00000000 00000000     ..I...3.........
200264d0:	0000007e 00000000 028f02de 00000000     ~...............
200264e0:	024a0000 02340000 00000000 00000000     ..J...4.........
200264f0:	00000000 04030201 00000000 01060204     ................

20026500 <CSWTCH.47>:
20026500:	0000003f 00003f00 003f0000              ?....?....?.

2002650c <hpsys_dll2_limit>:
	...
20026514:	112a8800 112a8800                       ..*...*.

2002651c <hpsys_dvfs_config>:
2002651c:	000906fb 00100330 000a08fd 00110331     ....0.......1...
2002652c:	000d0b00 00130213 000f0d02 00130213     ................
2002653c:	2070614d 6f727265 6c203a72 6369676f     Map error: logic
2002654c:	2c642520 79687020 0a642520 52524500      %d, phy %d..ERR
2002655c:	2032203a 69676f6c 6c622063 736b636f     : 2 logic blocks
2002656c:	70616d20 206f7420 656d6173 6b6c6220      map to same blk
2002657c:	6f6c203a 30636967 2c642520 79687020     : logic0 %d, phy
2002658c:	64252030 6f6c202c 31636967 2c642520     0 %d, logic1 %d,
2002659c:	79687020 64252031 614d000a 72652070      phy1 %d..Map er
200265ac:	30726f72 6f6c203a 20636967 202c6425     ror0: logic %d, 
200265bc:	20796870 000a6425 20746547 2070616d     phy %d..Get map 
200265cc:	636f6c62 7265206b 20726f72 2d206425     block error %d -
200265dc:	25203e2d 42000a64 76204d42 69737265     -> %d..BBM versi
200265ec:	6e206e6f 6920746f 6572636e 64657361     on not increased
200265fc:	7270203a 25207665 63202c64 20727275     : prev %d, curr 
2002660c:	000a6425 41544144 746f6e20 61657220     %d..DATA not rea
2002661c:	616e6f73 20656c62 42206e69 62204d42     sonable in BBM b
2002662c:	25206b6c 61702064 25206567 30203a64     lk %d page %d: 0
2002663c:	0a782578 61655200 62622064 6c62206d     x%x..Read bbm bl
2002664c:	6425206b 67617020 64252065 69616620     k %d page %d fai
2002665c:	49000a6c 6c61766e 42206469 49204d42     l..Invalid BBM I
2002666c:	25205844 56000a64 64252031 206e6920     DX %d..V1 %d in 
2002667c:	636f6c62 6425206b 3256202c 20642520     block %d, V2 %d 
2002668c:	62206e69 6b636f6c 0a642520 6d615300     in block %d..Sam
2002669c:	69687465 6d20676e 20747375 77206562     ething must be w
200266ac:	676e6f72 6567202c 656e2074 65762077     rong, get new ve
200266bc:	6f697372 6425206e 206f6420 20746f6e     rsion %d do not 
200266cc:	656d6173 206f7420 76657270 65686320     same to prev che
200266dc:	25206b63 43000a64 63204352 6b636568     ck %d..CRC check
200266ec:	72726520 0a20726f 61655200 62622064      error ..Read bb
200266fc:	6c62206d 6425206b 67617020 64252065     m blk %d page %d
2002670c:	74616420 6f6e2061 72772074 20657469      data not write 
2002671c:	20726f66 20646e32 656d6974 6552000a     for 2nd time..Re
2002672c:	62206461 62206d62 25206b6c 61702064     ad bbm blk %d pa
2002673c:	25206567 61662064 66206c69 3220726f     ge %d fail for 2
2002674c:	7420646e 3f656d69 614c000a 74736574     nd time?..Latest
2002675c:	72657620 6e6f6973 0a642520 74654700      version %d..Get
2002676c:	79687020 6b6c6220 726f6620 20642520      phy blk for %d 
2002677c:	6c696166 65687720 6572206e 000a6461     fail when read..
2002678c:	636f6c42 6425206b 61726520 66206573     Block %d erase f
2002679c:	2c6c6961 72616d20 7361206b 64616220     ail, mark as bad
200267ac:	6c42000a 206b636f 63206425 6b636568     ..Block %d check
200267bc:	20736120 20646162 636f6c62 42000a6b      as bad block..B
200267cc:	6b636f6c 20642520 62207369 69206461     lock %d is bad i
200267dc:	7375206e 62207265 6b636f6c 6162000a     n user block..ba
200267ec:	64252064 6572202c 63616c70 64252065     d %d, replace %d
200267fc:	6f4e000a 63616220 2070756b 636f6c62     ..No backup bloc
2002680c:	6e61206b 6f6d2079 000a6572 74706d65     k any more..empt
2002681c:	61742079 20656c62 6e206425 6520746f     y table %d not e
2002682c:	67756f6e 6f662068 6e692072 61697469     nough for initia
2002683c:	55000a6c 74616470 61742065 20656c62     l..Update table 
2002684c:	66206f74 6873616c 6e6f6420 49000a65     to flash done..I
2002685c:	6974696e 74206c61 656c6261 69616620     nitial table fai
2002686c:	42000a6c 69204d42 6974696e 7a696c61     l..BBM initializ
2002687c:	62206465 726f6665 64202c65 6f6e206f     ed before, do no
2002688c:	6e692074 61207469 6d20796e 0a65726f     t init any more.
2002689c:	54454400 20642520 0a646162 4b4c4200     .DET %d bad..BLK
200268ac:	20642520 64616572 69616620 6d202c6c      %d read fail, m
200268bc:	206b7261 62207361 000a6461 20746564     ark as bad..det 
200268cc:	206d6262 6c626174 69772065 25206874     bbm table with %
200268dc:	25202c64 25202c64 64000a64 63657465     d, %d, %d..detec
200268ec:	65722074 746c7573 0a642520 20317600     t result %d..v1 
200268fc:	69206425 6c62206e 6425206b 3276202c     %d in blk %d, v2
2002690c:	20642520 62206e69 6b636f6c 0a642520      %d in block %d.
2002691c:	65684300 62206b63 74206d62 656c6261     .Check bbm table
2002692c:	69616620 64000a6c 63657465 65722074      fail..detect re
2002693c:	746c7573 20642520 20746f6e 73616572     sult %d not reas
2002694c:	62616e6f 000a656c 204d4242 3a4d454d     onable..BBM MEM:
2002695c:	78746320 2c702520 70616d20 70252031      ctx %p, map1 %p
2002696c:	616d202c 25203270 000a2070 5f666973     , map2 %p ..sif_
2002697c:	5f6d6262 74696e69 6e6f6420 00000a65     bbm_init done...

2002698c <crc32tab>:
2002698c:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
2002699c:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
200269ac:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
200269bc:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
200269cc:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
200269dc:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
200269ec:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
200269fc:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
20026a0c:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
20026a1c:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
20026a2c:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
20026a3c:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
20026a4c:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
20026a5c:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
20026a6c:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
20026a7c:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
20026a8c:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
20026a9c:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
20026aac:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
20026abc:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
20026acc:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
20026adc:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
20026aec:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
20026afc:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
20026b0c:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
20026b1c:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
20026b2c:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
20026b3c:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
20026b4c:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
20026b5c:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
20026b6c:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
20026b7c:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
20026b8c:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
20026b9c:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
20026bac:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
20026bbc:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
20026bcc:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
20026bdc:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
20026bec:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
20026bfc:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
20026c0c:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
20026c1c:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
20026c2c:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
20026c3c:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
20026c4c:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
20026c5c:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
20026c6c:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
20026c7c:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
20026c8c:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
20026c9c:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
20026cac:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
20026cbc:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
20026ccc:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
20026cdc:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
20026cec:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
20026cfc:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
20026d0c:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
20026d1c:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
20026d2c:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
20026d3c:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
20026d4c:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
20026d5c:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
20026d6c:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
20026d7c:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

20026d8c <_init>:
20026d8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20026d8e:	bf00      	nop
20026d90:	bcf8      	pop	{r3, r4, r5, r6, r7}
20026d92:	bc08      	pop	{r3}
20026d94:	469e      	mov	lr, r3
20026d96:	4770      	bx	lr

20026d98 <_fini>:
20026d98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20026d9a:	bf00      	nop
20026d9c:	bcf8      	pop	{r3, r4, r5, r6, r7}
20026d9e:	bc08      	pop	{r3}
20026da0:	469e      	mov	lr, r3
20026da2:	4770      	bx	lr

20026da4 <__EH_FRAME_BEGIN__>:
20026da4:	0000 0000                                   ....

Disassembly of section .l1_ret_text_HAL_PMU_ConfigPeriLdo:

20026da8 <HAL_PMU_ConfigPeriLdo>:
20026da8:	b538      	push	{r3, r4, r5, lr}
20026daa:	b150      	cbz	r0, 20026dc2 <HAL_PMU_ConfigPeriLdo+0x1a>
20026dac:	4c18      	ldr	r4, [pc, #96]	@ (20026e10 <HAL_PMU_ConfigPeriLdo+0x68>)
20026dae:	6863      	ldr	r3, [r4, #4]
20026db0:	b2db      	uxtb	r3, r3
20026db2:	2b07      	cmp	r3, #7
20026db4:	d101      	bne.n	20026dba <HAL_PMU_ConfigPeriLdo+0x12>
20026db6:	2000      	movs	r0, #0
20026db8:	bd38      	pop	{r3, r4, r5, pc}
20026dba:	6863      	ldr	r3, [r4, #4]
20026dbc:	b2db      	uxtb	r3, r3
20026dbe:	2b0f      	cmp	r3, #15
20026dc0:	d0f9      	beq.n	20026db6 <HAL_PMU_ConfigPeriLdo+0xe>
20026dc2:	4c13      	ldr	r4, [pc, #76]	@ (20026e10 <HAL_PMU_ConfigPeriLdo+0x68>)
20026dc4:	6863      	ldr	r3, [r4, #4]
20026dc6:	b2db      	uxtb	r3, r3
20026dc8:	2b07      	cmp	r3, #7
20026dca:	d0f4      	beq.n	20026db6 <HAL_PMU_ConfigPeriLdo+0xe>
20026dcc:	6863      	ldr	r3, [r4, #4]
20026dce:	b2db      	uxtb	r3, r3
20026dd0:	2b0f      	cmp	r3, #15
20026dd2:	d0f0      	beq.n	20026db6 <HAL_PMU_ConfigPeriLdo+0xe>
20026dd4:	2810      	cmp	r0, #16
20026dd6:	d818      	bhi.n	20026e0a <HAL_PMU_ConfigPeriLdo+0x62>
20026dd8:	4b0e      	ldr	r3, [pc, #56]	@ (20026e14 <HAL_PMU_ConfigPeriLdo+0x6c>)
20026dda:	40c3      	lsrs	r3, r0
20026ddc:	07db      	lsls	r3, r3, #31
20026dde:	d514      	bpl.n	20026e0a <HAL_PMU_ConfigPeriLdo+0x62>
20026de0:	2900      	cmp	r1, #0
20026de2:	f04f 0421 	mov.w	r4, #33	@ 0x21
20026de6:	bf0c      	ite	eq
20026de8:	2120      	moveq	r1, #32
20026dea:	2101      	movne	r1, #1
20026dec:	4d0a      	ldr	r5, [pc, #40]	@ (20026e18 <HAL_PMU_ConfigPeriLdo+0x70>)
20026dee:	4084      	lsls	r4, r0
20026df0:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
20026df2:	4081      	lsls	r1, r0
20026df4:	ea23 0304 	bic.w	r3, r3, r4
20026df8:	430b      	orrs	r3, r1
20026dfa:	65eb      	str	r3, [r5, #92]	@ 0x5c
20026dfc:	2a00      	cmp	r2, #0
20026dfe:	d0da      	beq.n	20026db6 <HAL_PMU_ConfigPeriLdo+0xe>
20026e00:	f241 3088 	movw	r0, #5000	@ 0x1388
20026e04:	f7fb f80d 	bl	20021e22 <HAL_Delay_us>
20026e08:	e7d5      	b.n	20026db6 <HAL_PMU_ConfigPeriLdo+0xe>
20026e0a:	2001      	movs	r0, #1
20026e0c:	e7d4      	b.n	20026db8 <HAL_PMU_ConfigPeriLdo+0x10>
20026e0e:	bf00      	nop
20026e10:	5000b000 	.word	0x5000b000
20026e14:	00010101 	.word	0x00010101
20026e18:	500ca000 	.word	0x500ca000

Disassembly of section .l1_ret_text_HAL_PMU_Reboot:

20026e1c <HAL_PMU_Reboot>:
20026e1c:	b508      	push	{r3, lr}
20026e1e:	f3ef 8310 	mrs	r3, PRIMASK
20026e22:	2501      	movs	r5, #1
20026e24:	f385 8810 	msr	PRIMASK, r5
20026e28:	2002      	movs	r0, #2
20026e2a:	f7fb fd69 	bl	20022900 <HAL_HPAON_WakeCore>
20026e2e:	4628      	mov	r0, r5
20026e30:	f7fe f952 	bl	200250d8 <HAL_RCC_Reset_and_Halt_LCPU>
20026e34:	462a      	mov	r2, r5
20026e36:	2100      	movs	r1, #0
20026e38:	2008      	movs	r0, #8
20026e3a:	f7ff ffb5 	bl	20026da8 <HAL_PMU_ConfigPeriLdo>
20026e3e:	f44f 50fa 	mov.w	r0, #8000	@ 0x1f40
20026e42:	f7fa ff8f 	bl	20021d64 <HAL_Delay_us_>
20026e46:	2000      	movs	r0, #0
20026e48:	f7fd ff46 	bl	20024cd8 <HAL_RCC_HCPU_GetClockSrc>
20026e4c:	4604      	mov	r4, r0
20026e4e:	b928      	cbnz	r0, 20026e5c <HAL_PMU_Reboot+0x40>
20026e50:	f7fb fd80 	bl	20022954 <HAL_HPAON_EnableXT48>
20026e54:	4629      	mov	r1, r5
20026e56:	4620      	mov	r0, r4
20026e58:	f7fe f806 	bl	20024e68 <HAL_RCC_HCPU_ClockSelect>
20026e5c:	f245 0250 	movw	r2, #20560	@ 0x5050
20026e60:	4c09      	ldr	r4, [pc, #36]	@ (20026e88 <HAL_PMU_Reboot+0x6c>)
20026e62:	4b0a      	ldr	r3, [pc, #40]	@ (20026e8c <HAL_PMU_Reboot+0x70>)
20026e64:	6763      	str	r3, [r4, #116]	@ 0x74
20026e66:	4b0a      	ldr	r3, [pc, #40]	@ (20026e90 <HAL_PMU_Reboot+0x74>)
20026e68:	631a      	str	r2, [r3, #48]	@ 0x30
20026e6a:	6823      	ldr	r3, [r4, #0]
20026e6c:	075b      	lsls	r3, r3, #29
20026e6e:	d506      	bpl.n	20026e7e <HAL_PMU_Reboot+0x62>
20026e70:	6823      	ldr	r3, [r4, #0]
20026e72:	4808      	ldr	r0, [pc, #32]	@ (20026e94 <HAL_PMU_Reboot+0x78>)
20026e74:	f023 0304 	bic.w	r3, r3, #4
20026e78:	6023      	str	r3, [r4, #0]
20026e7a:	f7fa ffd2 	bl	20021e22 <HAL_Delay_us>
20026e7e:	6823      	ldr	r3, [r4, #0]
20026e80:	f043 0304 	orr.w	r3, r3, #4
20026e84:	6023      	str	r3, [r4, #0]
20026e86:	e7fe      	b.n	20026e86 <HAL_PMU_Reboot+0x6a>
20026e88:	500ca000 	.word	0x500ca000
20026e8c:	0a50c015 	.word	0x0a50c015
20026e90:	500cb000 	.word	0x500cb000
20026e94:	000186a0 	.word	0x000186a0

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef:

20026e98 <HAL_PMU_GetHpsysVoutRef>:
20026e98:	4b04      	ldr	r3, [pc, #16]	@ (20026eac <HAL_PMU_GetHpsysVoutRef+0x14>)
20026e9a:	781a      	ldrb	r2, [r3, #0]
20026e9c:	b122      	cbz	r2, 20026ea8 <HAL_PMU_GetHpsysVoutRef+0x10>
20026e9e:	b118      	cbz	r0, 20026ea8 <HAL_PMU_GetHpsysVoutRef+0x10>
20026ea0:	78db      	ldrb	r3, [r3, #3]
20026ea2:	7003      	strb	r3, [r0, #0]
20026ea4:	2000      	movs	r0, #0
20026ea6:	4770      	bx	lr
20026ea8:	2001      	movs	r0, #1
20026eaa:	4770      	bx	lr
20026eac:	20049f14 	.word	0x20049f14

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef2:

20026eb0 <HAL_PMU_GetHpsysVoutRef2>:
20026eb0:	4b04      	ldr	r3, [pc, #16]	@ (20026ec4 <HAL_PMU_GetHpsysVoutRef2+0x14>)
20026eb2:	781a      	ldrb	r2, [r3, #0]
20026eb4:	b122      	cbz	r2, 20026ec0 <HAL_PMU_GetHpsysVoutRef2+0x10>
20026eb6:	b118      	cbz	r0, 20026ec0 <HAL_PMU_GetHpsysVoutRef2+0x10>
20026eb8:	7b5b      	ldrb	r3, [r3, #13]
20026eba:	7003      	strb	r3, [r0, #0]
20026ebc:	2000      	movs	r0, #0
20026ebe:	4770      	bx	lr
20026ec0:	2001      	movs	r0, #1
20026ec2:	4770      	bx	lr
20026ec4:	20049f14 	.word	0x20049f14
