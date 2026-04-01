
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
20020270:	2002c41c 	.word	0x2002c41c

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
20020294:	2002c41c 	.word	0x2002c41c

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
200202ea:	f00c f8d3 	bl	2002c494 <HAL_PMU_Reboot>
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
2002031a:	f004 fcb7 	bl	20024c8c <HAL_PIN_Set>
2002031e:	2301      	movs	r3, #1
20020320:	2200      	movs	r2, #0
20020322:	4619      	mov	r1, r3
20020324:	200a      	movs	r0, #10
20020326:	f004 fcb1 	bl	20024c8c <HAL_PIN_Set>
2002032a:	2301      	movs	r3, #1
2002032c:	2210      	movs	r2, #16
2002032e:	2109      	movs	r1, #9
20020330:	2008      	movs	r0, #8
20020332:	f004 fcab 	bl	20024c8c <HAL_PIN_Set>
20020336:	2301      	movs	r3, #1
20020338:	2210      	movs	r2, #16
2002033a:	210a      	movs	r1, #10
2002033c:	2003      	movs	r0, #3
2002033e:	f004 fca5 	bl	20024c8c <HAL_PIN_Set>
20020342:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020346:	2301      	movs	r3, #1
20020348:	2200      	movs	r2, #0
2002034a:	210c      	movs	r1, #12
2002034c:	200b      	movs	r0, #11
2002034e:	f004 bc9d 	b.w	20024c8c <HAL_PIN_Set>

20020352 <board_pinmux_mpi1_puya_ext>:
20020352:	b510      	push	{r4, lr}
20020354:	4604      	mov	r4, r0
20020356:	2101      	movs	r1, #1
20020358:	2005      	movs	r0, #5
2002035a:	f004 fddb 	bl	20024f14 <HAL_PIN_Set_Analog>
2002035e:	2101      	movs	r1, #1
20020360:	2006      	movs	r0, #6
20020362:	f004 fdd7 	bl	20024f14 <HAL_PIN_Set_Analog>
20020366:	2101      	movs	r1, #1
20020368:	2007      	movs	r0, #7
2002036a:	f004 fdd3 	bl	20024f14 <HAL_PIN_Set_Analog>
2002036e:	2101      	movs	r1, #1
20020370:	2009      	movs	r0, #9
20020372:	f004 fdcf 	bl	20024f14 <HAL_PIN_Set_Analog>
20020376:	2101      	movs	r1, #1
20020378:	200c      	movs	r0, #12
2002037a:	f004 fdcb 	bl	20024f14 <HAL_PIN_Set_Analog>
2002037e:	2101      	movs	r1, #1
20020380:	200d      	movs	r0, #13
20020382:	f004 fdc7 	bl	20024f14 <HAL_PIN_Set_Analog>
20020386:	2101      	movs	r1, #1
20020388:	b154      	cbz	r4, 200203a0 <board_pinmux_mpi1_puya_ext+0x4e>
2002038a:	4608      	mov	r0, r1
2002038c:	f004 fdc2 	bl	20024f14 <HAL_PIN_Set_Analog>
20020390:	2301      	movs	r3, #1
20020392:	2230      	movs	r2, #48	@ 0x30
20020394:	210b      	movs	r1, #11
20020396:	2004      	movs	r0, #4
20020398:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002039c:	f004 bc76 	b.w	20024c8c <HAL_PIN_Set>
200203a0:	2004      	movs	r0, #4
200203a2:	f004 fdb7 	bl	20024f14 <HAL_PIN_Set_Analog>
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
200203ba:	f004 fc67 	bl	20024c8c <HAL_PIN_Set>
200203be:	2301      	movs	r3, #1
200203c0:	2200      	movs	r2, #0
200203c2:	4619      	mov	r1, r3
200203c4:	200a      	movs	r0, #10
200203c6:	f004 fc61 	bl	20024c8c <HAL_PIN_Set>
200203ca:	2301      	movs	r3, #1
200203cc:	2210      	movs	r2, #16
200203ce:	2109      	movs	r1, #9
200203d0:	200c      	movs	r0, #12
200203d2:	f004 fc5b 	bl	20024c8c <HAL_PIN_Set>
200203d6:	2301      	movs	r3, #1
200203d8:	2210      	movs	r2, #16
200203da:	210a      	movs	r1, #10
200203dc:	2003      	movs	r0, #3
200203de:	f004 fc55 	bl	20024c8c <HAL_PIN_Set>
200203e2:	2301      	movs	r3, #1
200203e4:	2230      	movs	r2, #48	@ 0x30
200203e6:	210b      	movs	r1, #11
200203e8:	4618      	mov	r0, r3
200203ea:	f004 fc4f 	bl	20024c8c <HAL_PIN_Set>
200203ee:	2301      	movs	r3, #1
200203f0:	2230      	movs	r2, #48	@ 0x30
200203f2:	210c      	movs	r1, #12
200203f4:	2009      	movs	r0, #9
200203f6:	f004 fc49 	bl	20024c8c <HAL_PIN_Set>
200203fa:	2101      	movs	r1, #1
200203fc:	2002      	movs	r0, #2
200203fe:	f004 fd89 	bl	20024f14 <HAL_PIN_Set_Analog>
20020402:	2101      	movs	r1, #1
20020404:	2004      	movs	r0, #4
20020406:	f004 fd85 	bl	20024f14 <HAL_PIN_Set_Analog>
2002040a:	2101      	movs	r1, #1
2002040c:	2006      	movs	r0, #6
2002040e:	f004 fd81 	bl	20024f14 <HAL_PIN_Set_Analog>
20020412:	2101      	movs	r1, #1
20020414:	2007      	movs	r0, #7
20020416:	f004 fd7d 	bl	20024f14 <HAL_PIN_Set_Analog>
2002041a:	2101      	movs	r1, #1
2002041c:	2008      	movs	r0, #8
2002041e:	f004 fd79 	bl	20024f14 <HAL_PIN_Set_Analog>
20020422:	2101      	movs	r1, #1
20020424:	200b      	movs	r0, #11
20020426:	f004 fd75 	bl	20024f14 <HAL_PIN_Set_Analog>
2002042a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002042e:	2101      	movs	r1, #1
20020430:	200d      	movs	r0, #13
20020432:	f004 bd6f 	b.w	20024f14 <HAL_PIN_Set_Analog>

20020436 <board_pinmux_mpi2>:
20020436:	b510      	push	{r4, lr}
20020438:	2301      	movs	r3, #1
2002043a:	2200      	movs	r2, #0
2002043c:	2119      	movs	r1, #25
2002043e:	201e      	movs	r0, #30
20020440:	f004 fc24 	bl	20024c8c <HAL_PIN_Set>
20020444:	2301      	movs	r3, #1
20020446:	2200      	movs	r2, #0
20020448:	211b      	movs	r1, #27
2002044a:	201a      	movs	r0, #26
2002044c:	f004 fc1e 	bl	20024c8c <HAL_PIN_Set>
20020450:	2301      	movs	r3, #1
20020452:	2210      	movs	r2, #16
20020454:	2121      	movs	r1, #33	@ 0x21
20020456:	201d      	movs	r0, #29
20020458:	f004 fc18 	bl	20024c8c <HAL_PIN_Set>
2002045c:	2301      	movs	r3, #1
2002045e:	2210      	movs	r2, #16
20020460:	2122      	movs	r1, #34	@ 0x22
20020462:	201b      	movs	r0, #27
20020464:	f004 fc12 	bl	20024c8c <HAL_PIN_Set>
20020468:	2301      	movs	r3, #1
2002046a:	2230      	movs	r2, #48	@ 0x30
2002046c:	2123      	movs	r1, #35	@ 0x23
2002046e:	201c      	movs	r0, #28
20020470:	f004 fc0c 	bl	20024c8c <HAL_PIN_Set>
20020474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020478:	2301      	movs	r3, #1
2002047a:	2230      	movs	r2, #48	@ 0x30
2002047c:	2124      	movs	r1, #36	@ 0x24
2002047e:	201f      	movs	r0, #31
20020480:	f004 bc04 	b.w	20024c8c <HAL_PIN_Set>

20020484 <board_pinmux_sd>:
20020484:	b510      	push	{r4, lr}
20020486:	2301      	movs	r3, #1
20020488:	2230      	movs	r2, #48	@ 0x30
2002048a:	f44f 71da 	mov.w	r1, #436	@ 0x1b4
2002048e:	201d      	movs	r0, #29
20020490:	f004 fbfc 	bl	20024c8c <HAL_PIN_Set>
20020494:	2014      	movs	r0, #20
20020496:	f001 fdc2 	bl	2002201e <HAL_Delay_us>
2002049a:	2301      	movs	r3, #1
2002049c:	2200      	movs	r2, #0
2002049e:	f44f 71d9 	mov.w	r1, #434	@ 0x1b2
200204a2:	201c      	movs	r0, #28
200204a4:	f004 fbf2 	bl	20024c8c <HAL_PIN_Set>
200204a8:	2301      	movs	r3, #1
200204aa:	2230      	movs	r2, #48	@ 0x30
200204ac:	f240 11b5 	movw	r1, #437	@ 0x1b5
200204b0:	201e      	movs	r0, #30
200204b2:	f004 fbeb 	bl	20024c8c <HAL_PIN_Set>
200204b6:	2301      	movs	r3, #1
200204b8:	2230      	movs	r2, #48	@ 0x30
200204ba:	f44f 71db 	mov.w	r1, #438	@ 0x1b6
200204be:	201f      	movs	r0, #31
200204c0:	f004 fbe4 	bl	20024c8c <HAL_PIN_Set>
200204c4:	2301      	movs	r3, #1
200204c6:	2230      	movs	r2, #48	@ 0x30
200204c8:	f240 11b7 	movw	r1, #439	@ 0x1b7
200204cc:	201a      	movs	r0, #26
200204ce:	f004 fbdd 	bl	20024c8c <HAL_PIN_Set>
200204d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200204d6:	2301      	movs	r3, #1
200204d8:	2230      	movs	r2, #48	@ 0x30
200204da:	f44f 71dc 	mov.w	r1, #440	@ 0x1b8
200204de:	201b      	movs	r0, #27
200204e0:	f004 bbd4 	b.w	20024c8c <HAL_PIN_Set>

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
200204fa:	f004 fd0b 	bl	20024f14 <HAL_PIN_Set_Analog>
200204fe:	2c0d      	cmp	r4, #13
20020500:	d1f8      	bne.n	200204f4 <board_boot_from+0x10>
20020502:	2000      	movs	r0, #0
20020504:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020508:	f002 bb7c 	b.w	20022c04 <HAL_Get_backup>
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
2002052c:	f004 fbae 	bl	20024c8c <HAL_PIN_Set>
20020530:	2301      	movs	r3, #1
20020532:	2210      	movs	r2, #16
20020534:	210a      	movs	r1, #10
20020536:	2003      	movs	r0, #3
20020538:	f004 fba8 	bl	20024c8c <HAL_PIN_Set>
2002053c:	2301      	movs	r3, #1
2002053e:	2210      	movs	r2, #16
20020540:	210b      	movs	r1, #11
20020542:	2004      	movs	r0, #4
20020544:	f004 fba2 	bl	20024c8c <HAL_PIN_Set>
20020548:	2301      	movs	r3, #1
2002054a:	2210      	movs	r2, #16
2002054c:	210c      	movs	r1, #12
2002054e:	2005      	movs	r0, #5
20020550:	f004 fb9c 	bl	20024c8c <HAL_PIN_Set>
20020554:	2301      	movs	r3, #1
20020556:	2210      	movs	r2, #16
20020558:	210d      	movs	r1, #13
2002055a:	2006      	movs	r0, #6
2002055c:	f004 fb96 	bl	20024c8c <HAL_PIN_Set>
20020560:	2301      	movs	r3, #1
20020562:	2210      	movs	r2, #16
20020564:	210e      	movs	r1, #14
20020566:	2007      	movs	r0, #7
20020568:	f004 fb90 	bl	20024c8c <HAL_PIN_Set>
2002056c:	2301      	movs	r3, #1
2002056e:	2210      	movs	r2, #16
20020570:	210f      	movs	r1, #15
20020572:	2008      	movs	r0, #8
20020574:	f004 fb8a 	bl	20024c8c <HAL_PIN_Set>
20020578:	2210      	movs	r2, #16
2002057a:	2301      	movs	r3, #1
2002057c:	4611      	mov	r1, r2
2002057e:	2009      	movs	r0, #9
20020580:	f004 fb84 	bl	20024c8c <HAL_PIN_Set>
20020584:	2301      	movs	r3, #1
20020586:	2210      	movs	r2, #16
20020588:	2106      	movs	r1, #6
2002058a:	200a      	movs	r0, #10
2002058c:	f004 fb7e 	bl	20024c8c <HAL_PIN_Set>
20020590:	2301      	movs	r3, #1
20020592:	2200      	movs	r2, #0
20020594:	4619      	mov	r1, r3
20020596:	200b      	movs	r0, #11
20020598:	f004 fb78 	bl	20024c8c <HAL_PIN_Set>
2002059c:	2301      	movs	r3, #1
2002059e:	2200      	movs	r2, #0
200205a0:	2103      	movs	r1, #3
200205a2:	200c      	movs	r0, #12
200205a4:	f004 fb72 	bl	20024c8c <HAL_PIN_Set>
200205a8:	2101      	movs	r1, #1
200205aa:	4608      	mov	r0, r1
200205ac:	f004 fcb2 	bl	20024f14 <HAL_PIN_Set_Analog>
200205b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200205b4:	2101      	movs	r1, #1
200205b6:	200d      	movs	r0, #13
200205b8:	f004 bcac 	b.w	20024f14 <HAL_PIN_Set_Analog>

200205bc <board_pinmux_psram_func1_2_4>:
200205bc:	b510      	push	{r4, lr}
200205be:	2301      	movs	r3, #1
200205c0:	4604      	mov	r4, r0
200205c2:	2210      	movs	r2, #16
200205c4:	2109      	movs	r1, #9
200205c6:	2002      	movs	r0, #2
200205c8:	f004 fb60 	bl	20024c8c <HAL_PIN_Set>
200205cc:	2301      	movs	r3, #1
200205ce:	2210      	movs	r2, #16
200205d0:	210a      	movs	r1, #10
200205d2:	2003      	movs	r0, #3
200205d4:	f004 fb5a 	bl	20024c8c <HAL_PIN_Set>
200205d8:	2301      	movs	r3, #1
200205da:	2210      	movs	r2, #16
200205dc:	210b      	movs	r1, #11
200205de:	2004      	movs	r0, #4
200205e0:	f004 fb54 	bl	20024c8c <HAL_PIN_Set>
200205e4:	2301      	movs	r3, #1
200205e6:	2210      	movs	r2, #16
200205e8:	210c      	movs	r1, #12
200205ea:	2005      	movs	r0, #5
200205ec:	f004 fb4e 	bl	20024c8c <HAL_PIN_Set>
200205f0:	2301      	movs	r3, #1
200205f2:	2210      	movs	r2, #16
200205f4:	210d      	movs	r1, #13
200205f6:	2009      	movs	r0, #9
200205f8:	f004 fb48 	bl	20024c8c <HAL_PIN_Set>
200205fc:	2301      	movs	r3, #1
200205fe:	2210      	movs	r2, #16
20020600:	210e      	movs	r1, #14
20020602:	200a      	movs	r0, #10
20020604:	f004 fb42 	bl	20024c8c <HAL_PIN_Set>
20020608:	2301      	movs	r3, #1
2002060a:	2210      	movs	r2, #16
2002060c:	210f      	movs	r1, #15
2002060e:	200b      	movs	r0, #11
20020610:	f004 fb3c 	bl	20024c8c <HAL_PIN_Set>
20020614:	2210      	movs	r2, #16
20020616:	2301      	movs	r3, #1
20020618:	4611      	mov	r1, r2
2002061a:	200c      	movs	r0, #12
2002061c:	f004 fb36 	bl	20024c8c <HAL_PIN_Set>
20020620:	2301      	movs	r3, #1
20020622:	2200      	movs	r2, #0
20020624:	4619      	mov	r1, r3
20020626:	2008      	movs	r0, #8
20020628:	f004 fb30 	bl	20024c8c <HAL_PIN_Set>
2002062c:	2301      	movs	r3, #1
2002062e:	2200      	movs	r2, #0
20020630:	2103      	movs	r1, #3
20020632:	2006      	movs	r0, #6
20020634:	f004 fb2a 	bl	20024c8c <HAL_PIN_Set>
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
2002064c:	f004 fb1e 	bl	20024c8c <HAL_PIN_Set>
20020650:	4621      	mov	r1, r4
20020652:	4620      	mov	r0, r4
20020654:	f004 fc5e 	bl	20024f14 <HAL_PIN_Set_Analog>
20020658:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002065c:	2101      	movs	r1, #1
2002065e:	2007      	movs	r0, #7
20020660:	f004 bc58 	b.w	20024f14 <HAL_PIN_Set_Analog>
20020664:	2301      	movs	r3, #1
20020666:	2210      	movs	r2, #16
20020668:	2104      	movs	r1, #4
2002066a:	4618      	mov	r0, r3
2002066c:	f004 fb0e 	bl	20024c8c <HAL_PIN_Set>
20020670:	2301      	movs	r3, #1
20020672:	2210      	movs	r2, #16
20020674:	2105      	movs	r1, #5
20020676:	200d      	movs	r0, #13
20020678:	f004 fb08 	bl	20024c8c <HAL_PIN_Set>
2002067c:	4621      	mov	r1, r4
2002067e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020682:	2301      	movs	r3, #1
20020684:	2200      	movs	r2, #0
20020686:	2007      	movs	r0, #7
20020688:	f004 bb00 	b.w	20024c8c <HAL_PIN_Set>
2002068c:	2106      	movs	r1, #6
2002068e:	2301      	movs	r3, #1
20020690:	2200      	movs	r2, #0
20020692:	200d      	movs	r0, #13
20020694:	f004 fafa 	bl	20024c8c <HAL_PIN_Set>
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
200206aa:	f004 faef 	bl	20024c8c <HAL_PIN_Set>
200206ae:	2301      	movs	r3, #1
200206b0:	2200      	movs	r2, #0
200206b2:	2103      	movs	r1, #3
200206b4:	2009      	movs	r0, #9
200206b6:	f004 fae9 	bl	20024c8c <HAL_PIN_Set>
200206ba:	2301      	movs	r3, #1
200206bc:	2210      	movs	r2, #16
200206be:	2109      	movs	r1, #9
200206c0:	2006      	movs	r0, #6
200206c2:	f004 fae3 	bl	20024c8c <HAL_PIN_Set>
200206c6:	2301      	movs	r3, #1
200206c8:	2210      	movs	r2, #16
200206ca:	210a      	movs	r1, #10
200206cc:	2008      	movs	r0, #8
200206ce:	f004 fadd 	bl	20024c8c <HAL_PIN_Set>
200206d2:	2301      	movs	r3, #1
200206d4:	2230      	movs	r2, #48	@ 0x30
200206d6:	210b      	movs	r1, #11
200206d8:	2007      	movs	r0, #7
200206da:	f004 fad7 	bl	20024c8c <HAL_PIN_Set>
200206de:	2301      	movs	r3, #1
200206e0:	2230      	movs	r2, #48	@ 0x30
200206e2:	210c      	movs	r1, #12
200206e4:	200b      	movs	r0, #11
200206e6:	f004 fad1 	bl	20024c8c <HAL_PIN_Set>
200206ea:	2101      	movs	r1, #1
200206ec:	4608      	mov	r0, r1
200206ee:	f004 fc11 	bl	20024f14 <HAL_PIN_Set_Analog>
200206f2:	2101      	movs	r1, #1
200206f4:	2002      	movs	r0, #2
200206f6:	f004 fc0d 	bl	20024f14 <HAL_PIN_Set_Analog>
200206fa:	2101      	movs	r1, #1
200206fc:	2003      	movs	r0, #3
200206fe:	f004 fc09 	bl	20024f14 <HAL_PIN_Set_Analog>
20020702:	2101      	movs	r1, #1
20020704:	2004      	movs	r0, #4
20020706:	f004 fc05 	bl	20024f14 <HAL_PIN_Set_Analog>
2002070a:	2101      	movs	r1, #1
2002070c:	2005      	movs	r0, #5
2002070e:	f004 fc01 	bl	20024f14 <HAL_PIN_Set_Analog>
20020712:	2101      	movs	r1, #1
20020714:	200c      	movs	r0, #12
20020716:	f004 fbfd 	bl	20024f14 <HAL_PIN_Set_Analog>
2002071a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002071e:	2101      	movs	r1, #1
20020720:	200d      	movs	r0, #13
20020722:	f004 bbf7 	b.w	20024f14 <HAL_PIN_Set_Analog>

20020726 <bootloader_switch_clock>:
20020726:	2102      	movs	r1, #2
20020728:	2004      	movs	r0, #4
2002072a:	f004 bd25 	b.w	20025178 <HAL_RCC_HCPU_ClockSelect>
	...

20020730 <boot_psram_init>:
20020730:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020734:	2400      	movs	r4, #0
20020736:	b08a      	sub	sp, #40	@ 0x28
20020738:	4605      	mov	r5, r0
2002073a:	2230      	movs	r2, #48	@ 0x30
2002073c:	4621      	mov	r1, r4
2002073e:	4863      	ldr	r0, [pc, #396]	@ (200208cc <boot_psram_init+0x19c>)
20020740:	f00a f928 	bl	2002a994 <memset>
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
20020774:	f001 fb74 	bl	20021e60 <BSP_GetFlash1DIV>
20020778:	a905      	add	r1, sp, #20
2002077a:	4602      	mov	r2, r0
2002077c:	4853      	ldr	r0, [pc, #332]	@ (200208cc <boot_psram_init+0x19c>)
2002077e:	f004 f821 	bl	200247c4 <HAL_OPI_PSRAM_Init>
20020782:	462a      	mov	r2, r5
20020784:	2108      	movs	r1, #8
20020786:	4851      	ldr	r0, [pc, #324]	@ (200208cc <boot_psram_init+0x19c>)
20020788:	f003 ff0e 	bl	200245a8 <HAL_MPI_MR_WRITE>
2002078c:	484f      	ldr	r0, [pc, #316]	@ (200208cc <boot_psram_init+0x19c>)
2002078e:	f003 fc19 	bl	20023fc4 <HAL_QSPI_GET_CLK>
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
200207dc:	f002 fa82 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
200207e0:	4631      	mov	r1, r6
200207e2:	483a      	ldr	r0, [pc, #232]	@ (200208cc <boot_psram_init+0x19c>)
200207e4:	f002 fa73 	bl	20022cce <HAL_FLASH_SET_AHB_RCMD>
200207e8:	1e62      	subs	r2, r4, #1
200207ea:	4633      	mov	r3, r6
200207ec:	b252      	sxtb	r2, r2
200207ee:	4629      	mov	r1, r5
200207f0:	4836      	ldr	r0, [pc, #216]	@ (200208cc <boot_psram_init+0x19c>)
200207f2:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207f6:	e9cd 6800 	strd	r6, r8, [sp]
200207fa:	f002 fa9c 	bl	20022d36 <HAL_FLASH_CFG_AHB_WCMD>
200207fe:	2180      	movs	r1, #128	@ 0x80
20020800:	4832      	ldr	r0, [pc, #200]	@ (200208cc <boot_psram_init+0x19c>)
20020802:	f002 fa8c 	bl	20022d1e <HAL_FLASH_SET_AHB_WCMD>
20020806:	4623      	mov	r3, r4
20020808:	463a      	mov	r2, r7
2002080a:	2101      	movs	r1, #1
2002080c:	482f      	ldr	r0, [pc, #188]	@ (200208cc <boot_psram_init+0x19c>)
2002080e:	f003 feef 	bl	200245f0 <HAL_MPI_SET_FIXLAT>
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
2002083e:	f001 fb0f 	bl	20021e60 <BSP_GetFlash1DIV>
20020842:	a905      	add	r1, sp, #20
20020844:	4602      	mov	r2, r0
20020846:	4821      	ldr	r0, [pc, #132]	@ (200208cc <boot_psram_init+0x19c>)
20020848:	f004 f838 	bl	200248bc <HAL_LEGACY_PSRAM_Init>
2002084c:	481f      	ldr	r0, [pc, #124]	@ (200208cc <boot_psram_init+0x19c>)
2002084e:	f003 ff41 	bl	200246d4 <HAL_LEGACY_CFG_READ>
20020852:	481e      	ldr	r0, [pc, #120]	@ (200208cc <boot_psram_init+0x19c>)
20020854:	f003 ff59 	bl	2002470a <HAL_LEGACY_CFG_WRITE>
20020858:	e7db      	b.n	20020812 <boot_psram_init+0xe2>
2002085a:	2d06      	cmp	r5, #6
2002085c:	d10d      	bne.n	2002087a <boot_psram_init+0x14a>
2002085e:	f001 faff 	bl	20021e60 <BSP_GetFlash1DIV>
20020862:	a905      	add	r1, sp, #20
20020864:	4602      	mov	r2, r0
20020866:	4819      	ldr	r0, [pc, #100]	@ (200208cc <boot_psram_init+0x19c>)
20020868:	f004 f8f4 	bl	20024a54 <HAL_HYPER_PSRAM_Init>
2002086c:	4817      	ldr	r0, [pc, #92]	@ (200208cc <boot_psram_init+0x19c>)
2002086e:	f004 f92b 	bl	20024ac8 <HAL_HYPER_CFG_READ>
20020872:	4816      	ldr	r0, [pc, #88]	@ (200208cc <boot_psram_init+0x19c>)
20020874:	f004 f93a 	bl	20024aec <HAL_HYPER_CFG_WRITE>
20020878:	e7cb      	b.n	20020812 <boot_psram_init+0xe2>
2002087a:	f001 faf1 	bl	20021e60 <BSP_GetFlash1DIV>
2002087e:	2500      	movs	r5, #0
20020880:	2403      	movs	r4, #3
20020882:	2701      	movs	r7, #1
20020884:	2602      	movs	r6, #2
20020886:	4602      	mov	r2, r0
20020888:	a905      	add	r1, sp, #20
2002088a:	4810      	ldr	r0, [pc, #64]	@ (200208cc <boot_psram_init+0x19c>)
2002088c:	f003 fe36 	bl	200244fc <HAL_SPI_PSRAM_Init>
20020890:	462b      	mov	r3, r5
20020892:	2206      	movs	r2, #6
20020894:	4621      	mov	r1, r4
20020896:	e9cd 4702 	strd	r4, r7, [sp, #8]
2002089a:	e9cd 5600 	strd	r5, r6, [sp]
2002089e:	480b      	ldr	r0, [pc, #44]	@ (200208cc <boot_psram_init+0x19c>)
200208a0:	f002 fa20 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
200208a4:	21eb      	movs	r1, #235	@ 0xeb
200208a6:	4809      	ldr	r0, [pc, #36]	@ (200208cc <boot_psram_init+0x19c>)
200208a8:	f002 fa11 	bl	20022cce <HAL_FLASH_SET_AHB_RCMD>
200208ac:	4621      	mov	r1, r4
200208ae:	462b      	mov	r3, r5
200208b0:	462a      	mov	r2, r5
200208b2:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208b6:	e9cd 5600 	strd	r5, r6, [sp]
200208ba:	4804      	ldr	r0, [pc, #16]	@ (200208cc <boot_psram_init+0x19c>)
200208bc:	f002 fa3b 	bl	20022d36 <HAL_FLASH_CFG_AHB_WCMD>
200208c0:	2138      	movs	r1, #56	@ 0x38
200208c2:	4802      	ldr	r0, [pc, #8]	@ (200208cc <boot_psram_init+0x19c>)
200208c4:	f002 fa2b 	bl	20022d1e <HAL_FLASH_SET_AHB_WCMD>
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
20020904:	f00b fd8c 	bl	2002c420 <HAL_PMU_ConfigPeriLdo>
20020908:	2001      	movs	r0, #1
2002090a:	f7ff ff0c 	bl	20020726 <bootloader_switch_clock>
2002090e:	2002      	movs	r0, #2
20020910:	f001 fab2 	bl	20021e78 <BSP_SetFlash1DIV>
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
2002097a:	f003 fad7 	bl	20023f2c <HAL_QSPIEX_SECT_ERASE>
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
200209e0:	f003 f9bf 	bl	20023d62 <HAL_QSPIEX_WRITE_PAGE>
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
20020a0c:	f003 f9a9 	bl	20023d62 <HAL_QSPIEX_WRITE_PAGE>
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
20020a2e:	f009 ffcb 	bl	2002a9c8 <memcpy>
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
20020a9a:	f004 ff83 	bl	200259a4 <bbm_read_page>
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
20020aec:	f001 f89c 	bl	20021c28 <sd_read_data>
20020af0:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020af4:	f020 0001 	bic.w	r0, r0, #1
20020af8:	463a      	mov	r2, r7
20020afa:	4908      	ldr	r1, [pc, #32]	@ (20020b1c <read_sdnand+0x64>)
20020afc:	4428      	add	r0, r5
20020afe:	f009 ff63 	bl	2002a9c8 <memcpy>
20020b02:	4620      	mov	r0, r4
20020b04:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b08:	4640      	mov	r0, r8
20020b0a:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b0e:	f001 f88b 	bl	20021c28 <sd_read_data>
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
20020b54:	f000 fe52 	bl	200217fc <emmc_read_data>
20020b58:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b5c:	f020 0001 	bic.w	r0, r0, #1
20020b60:	463a      	mov	r2, r7
20020b62:	4908      	ldr	r1, [pc, #32]	@ (20020b84 <read_sdemmc+0x64>)
20020b64:	4428      	add	r0, r5
20020b66:	f009 ff2f 	bl	2002a9c8 <memcpy>
20020b6a:	4620      	mov	r0, r4
20020b6c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b70:	4640      	mov	r0, r8
20020b72:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b76:	f000 fe41 	bl	200217fc <emmc_read_data>
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
20020c66:	f002 bf5b 	b.w	20023b20 <HAL_NAND_READ_WITHOOB>
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
20020cf0:	f003 b816 	b.w	20023d20 <HAL_NAND_GET_BADBLK>
20020cf4:	20042c04 	.word	0x20042c04
20020cf8:	20046ecc 	.word	0x20046ecc
20020cfc:	e000ed00 	.word	0xe000ed00
20020d00:	20046f10 	.word	0x20046f10

20020d04 <dfu_flash_init>:
20020d04:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020d08:	b08c      	sub	sp, #48	@ 0x30
20020d0a:	f001 ffab 	bl	20022c64 <HAL_HPAON_EnableXT48>
20020d0e:	2101      	movs	r1, #1
20020d10:	2000      	movs	r0, #0
20020d12:	f004 fa31 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
20020d16:	2101      	movs	r1, #1
20020d18:	200c      	movs	r0, #12
20020d1a:	f004 fa2d 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
20020d1e:	2001      	movs	r0, #1
20020d20:	f004 f928 	bl	20024f74 <HAL_PMU_EnableDLL>
20020d24:	4f97      	ldr	r7, [pc, #604]	@ (20020f84 <dfu_flash_init+0x280>)
20020d26:	2090      	movs	r0, #144	@ 0x90
20020d28:	f004 fb88 	bl	2002543c <HAL_RCC_HCPU_ConfigHCLK>
20020d2c:	2000      	movs	r0, #0
20020d2e:	f001 f976 	bl	2002201e <HAL_Delay_us>
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
20020d50:	f004 f9da 	bl	20025108 <HAL_RCC_HCPU_EnableDLL2>
20020d54:	4c8e      	ldr	r4, [pc, #568]	@ (20020f90 <dfu_flash_init+0x28c>)
20020d56:	2006      	movs	r0, #6
20020d58:	f001 f88e 	bl	20021e78 <BSP_SetFlash1DIV>
20020d5c:	ae07      	add	r6, sp, #28
20020d5e:	2102      	movs	r1, #2
20020d60:	2004      	movs	r0, #4
20020d62:	f004 fa09 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
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
20020d90:	f001 f866 	bl	20021e60 <BSP_GetFlash1DIV>
20020d94:	4633      	mov	r3, r6
20020d96:	9000      	str	r0, [sp, #0]
20020d98:	4a7f      	ldr	r2, [pc, #508]	@ (20020f98 <dfu_flash_init+0x294>)
20020d9a:	487e      	ldr	r0, [pc, #504]	@ (20020f94 <dfu_flash_init+0x290>)
20020d9c:	a907      	add	r1, sp, #28
20020d9e:	f003 f997 	bl	200240d0 <HAL_FLASH_Init>
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
20020dba:	f002 fbbe 	bl	2002353a <HAL_FLASH_SET_QUAL_SPI>
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
20020e34:	f004 f968 	bl	20025108 <HAL_RCC_HCPU_EnableDLL2>
20020e38:	4c62      	ldr	r4, [pc, #392]	@ (20020fc4 <dfu_flash_init+0x2c0>)
20020e3a:	2006      	movs	r0, #6
20020e3c:	f001 f822 	bl	20021e84 <BSP_SetFlash2DIV>
20020e40:	ae07      	add	r6, sp, #28
20020e42:	2102      	movs	r1, #2
20020e44:	2006      	movs	r0, #6
20020e46:	f004 f997 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
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
20020e96:	f001 f8c2 	bl	2002201e <HAL_Delay_us>
20020e9a:	f884 a079 	strb.w	sl, [r4, #121]	@ 0x79
20020e9e:	f884 9078 	strb.w	r9, [r4, #120]	@ 0x78
20020ea2:	f000 ffe3 	bl	20021e6c <BSP_GetFlash2DIV>
20020ea6:	4633      	mov	r3, r6
20020ea8:	9000      	str	r0, [sp, #0]
20020eaa:	4a49      	ldr	r2, [pc, #292]	@ (20020fd0 <dfu_flash_init+0x2cc>)
20020eac:	4849      	ldr	r0, [pc, #292]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eae:	a907      	add	r1, sp, #28
20020eb0:	f003 f90e 	bl	200240d0 <HAL_FLASH_Init>
20020eb4:	4e47      	ldr	r6, [pc, #284]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eb6:	bb18      	cbnz	r0, 20020f00 <dfu_flash_init+0x1fc>
20020eb8:	f1b8 0f03 	cmp.w	r8, #3
20020ebc:	d020      	beq.n	20020f00 <dfu_flash_init+0x1fc>
20020ebe:	4630      	mov	r0, r6
20020ec0:	f002 fe22 	bl	20023b08 <HAL_NAND_PAGE_SIZE>
20020ec4:	f8df 90f8 	ldr.w	r9, [pc, #248]	@ 20020fc0 <dfu_flash_init+0x2bc>
20020ec8:	f8df 8128 	ldr.w	r8, [pc, #296]	@ 20020ff4 <dfu_flash_init+0x2f0>
20020ecc:	f8c9 0000 	str.w	r0, [r9]
20020ed0:	4630      	mov	r0, r6
20020ed2:	f002 ff19 	bl	20023d08 <HAL_NAND_BLOCK_SIZE>
20020ed6:	4651      	mov	r1, sl
20020ed8:	f8c8 0000 	str.w	r0, [r8]
20020edc:	4630      	mov	r0, r6
20020ede:	f884 a06a 	strb.w	sl, [r4, #106]	@ 0x6a
20020ee2:	f002 fcea 	bl	200238ba <HAL_NAND_CONF_ECC>
20020ee6:	f8d9 0000 	ldr.w	r0, [r9]
20020eea:	f005 f843 	bl	20025f74 <bbm_set_page_size>
20020eee:	f8d8 0000 	ldr.w	r0, [r8]
20020ef2:	f005 f845 	bl	20025f80 <bbm_set_blk_size>
20020ef6:	4938      	ldr	r1, [pc, #224]	@ (20020fd8 <dfu_flash_init+0x2d4>)
20020ef8:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
20020efc:	f004 fedc 	bl	20025cb8 <sif_bbm_init>
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
20020f20:	f004 f8f2 	bl	20025108 <HAL_RCC_HCPU_EnableDLL2>
20020f24:	f7ff faae 	bl	20020484 <board_pinmux_sd>
20020f28:	f000 fd52 	bl	200219d0 <sdmmc1_sdnand>
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
20020f48:	f004 f8de 	bl	20025108 <HAL_RCC_HCPU_EnableDLL2>
20020f4c:	f7ff fa9a 	bl	20020484 <board_pinmux_sd>
20020f50:	f000 fb2e 	bl	200215b0 <sdio_emmc_init>
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
20020f6e:	f001 f856 	bl	2002201e <HAL_Delay_us>
20020f72:	3c01      	subs	r4, #1
20020f74:	f47f af39 	bne.w	20020dea <dfu_flash_init+0xe6>
20020f78:	2043      	movs	r0, #67	@ 0x43
20020f7a:	b00c      	add	sp, #48	@ 0x30
20020f7c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020f80:	f7ff b996 	b.w	200202b0 <boot_error>
20020f84:	20049ed0 	.word	0x20049ed0
20020f88:	20046cc0 	.word	0x20046cc0
20020f8c:	112a8800 	.word	0x112a8800
20020f90:	2002aa98 	.word	0x2002aa98
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
20020fc4:	2002aabc 	.word	0x2002aabc
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
20021008:	f001 fce2 	bl	200229d0 <HAL_EFUSE_Read>
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
20021040:	f001 bcc6 	b.w	200229d0 <HAL_EFUSE_Read>
20021044:	2208      	movs	r2, #8
20021046:	2080      	movs	r0, #128	@ 0x80
20021048:	e7f7      	b.n	2002103a <sifli_hw_efuse_read+0x16>
2002104a:	2220      	movs	r2, #32
2002104c:	f44f 7040 	mov.w	r0, #768	@ 0x300
20021050:	e7f3      	b.n	2002103a <sifli_hw_efuse_read+0x16>
20021052:	2204      	movs	r2, #4
20021054:	20c0      	movs	r0, #192	@ 0xc0
20021056:	eb0d 0102 	add.w	r1, sp, r2
2002105a:	f001 fcb9 	bl	200229d0 <HAL_EFUSE_Read>
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
2002108e:	f009 fc81 	bl	2002a994 <memset>
20021092:	2302      	movs	r3, #2
20021094:	2120      	movs	r1, #32
20021096:	4a08      	ldr	r2, [pc, #32]	@ (200210b8 <sifli_hw_init_xip_key+0x48>)
20021098:	2000      	movs	r0, #0
2002109a:	f001 f839 	bl	20022110 <HAL_AES_init>
2002109e:	2320      	movs	r3, #32
200210a0:	4629      	mov	r1, r5
200210a2:	2000      	movs	r0, #0
200210a4:	4a05      	ldr	r2, [pc, #20]	@ (200210bc <sifli_hw_init_xip_key+0x4c>)
200210a6:	f001 f877 	bl	20022198 <HAL_AES_run>
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
200210d8:	f001 f81a 	bl	20022110 <HAL_AES_init>
200210dc:	2320      	movs	r3, #32
200210de:	462a      	mov	r2, r5
200210e0:	4621      	mov	r1, r4
200210e2:	2000      	movs	r0, #0
200210e4:	f001 f858 	bl	20022198 <HAL_AES_run>
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
20021138:	f009 fc2c 	bl	2002a994 <memset>
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
2002115a:	f009 fc35 	bl	2002a9c8 <memcpy>
2002115e:	19e0      	adds	r0, r4, r7
20021160:	f7ff ffc6 	bl	200210f0 <dfu_get_counter>
20021164:	2301      	movs	r3, #1
20021166:	4602      	mov	r2, r0
20021168:	2120      	movs	r1, #32
2002116a:	4640      	mov	r0, r8
2002116c:	f000 ffd0 	bl	20022110 <HAL_AES_init>
20021170:	eb0a 0204 	add.w	r2, sl, r4
20021174:	462b      	mov	r3, r5
20021176:	2000      	movs	r0, #0
20021178:	4902      	ldr	r1, [pc, #8]	@ (20021184 <sifli_hw_dec+0x64>)
2002117a:	f001 f80d 	bl	20022198 <HAL_AES_run>
2002117e:	442c      	add	r4, r5
20021180:	e7dc      	b.n	2002113c <sifli_hw_dec+0x1c>
20021182:	bf00      	nop
20021184:	20047020 	.word	0x20047020

20021188 <boot_slot_via_alias>:
20021188:	b570      	push	{r4, r5, r6, lr}
2002118a:	491d      	ldr	r1, [pc, #116]	@ (20021200 <boot_slot_via_alias+0x78>)
2002118c:	4605      	mov	r5, r0
2002118e:	6803      	ldr	r3, [r0, #0]
20021190:	4a1c      	ldr	r2, [pc, #112]	@ (20021204 <boot_slot_via_alias+0x7c>)
20021192:	6808      	ldr	r0, [r1, #0]
20021194:	4290      	cmp	r0, r2
20021196:	d12d      	bne.n	200211f4 <boot_slot_via_alias+0x6c>
20021198:	f501 5200 	add.w	r2, r1, #8192	@ 0x2000
2002119c:	f8d2 2c08 	ldr.w	r2, [r2, #3080]	@ 0xc08
200211a0:	1c50      	adds	r0, r2, #1
200211a2:	d027      	beq.n	200211f4 <boot_slot_via_alias+0x6c>
200211a4:	4818      	ldr	r0, [pc, #96]	@ (20021208 <boot_slot_via_alias+0x80>)
200211a6:	6800      	ldr	r0, [r0, #0]
200211a8:	1a12      	subs	r2, r2, r0
200211aa:	f5a2 5280 	sub.w	r2, r2, #4096	@ 0x1000
200211ae:	f36f 0208 	bfc	r2, #0, #9
200211b2:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
200211b6:	588c      	ldr	r4, [r1, r2]
200211b8:	1e62      	subs	r2, r4, #1
200211ba:	f5b2 1f60 	cmp.w	r2, #3670016	@ 0x380000
200211be:	bf28      	it	cs
200211c0:	f44f 1460 	movcs.w	r4, #3670016	@ 0x380000
200211c4:	f36f 0313 	bfc	r3, #0, #20
200211c8:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
200211cc:	d115      	bne.n	200211fa <boot_slot_via_alias+0x72>
200211ce:	f7ff fb87 	bl	200208e0 <board_init_psram>
200211d2:	4e0e      	ldr	r6, [pc, #56]	@ (2002120c <boot_slot_via_alias+0x84>)
200211d4:	480e      	ldr	r0, [pc, #56]	@ (20021210 <boot_slot_via_alias+0x88>)
200211d6:	f105 436d 	add.w	r3, r5, #3976200192	@ 0xed000000
200211da:	4622      	mov	r2, r4
200211dc:	4631      	mov	r1, r6
200211de:	6800      	ldr	r0, [r0, #0]
200211e0:	f503 037e 	add.w	r3, r3, #16646144	@ 0xfe0000
200211e4:	f002 fb06 	bl	200237f4 <HAL_FLASH_ALIAS_CFG>
200211e8:	f8d6 d000 	ldr.w	sp, [r6]
200211ec:	f8d6 f004 	ldr.w	pc, [r6, #4]
200211f0:	2001      	movs	r0, #1
200211f2:	bd70      	pop	{r4, r5, r6, pc}
200211f4:	f44f 1460 	mov.w	r4, #3670016	@ 0x380000
200211f8:	e7e4      	b.n	200211c4 <boot_slot_via_alias+0x3c>
200211fa:	2000      	movs	r0, #0
200211fc:	e7f9      	b.n	200211f2 <boot_slot_via_alias+0x6a>
200211fe:	bf00      	nop
20021200:	200472c0 	.word	0x200472c0
20021204:	53454346 	.word	0x53454346
20021208:	20046cb0 	.word	0x20046cb0
2002120c:	12020000 	.word	0x12020000
20021210:	20046cb4 	.word	0x20046cb4

20021214 <boot_ram>:
20021214:	4b05      	ldr	r3, [pc, #20]	@ (2002122c <boot_ram+0x18>)
20021216:	b082      	sub	sp, #8
20021218:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
2002121a:	9301      	str	r3, [sp, #4]
2002121c:	9b01      	ldr	r3, [sp, #4]
2002121e:	b113      	cbz	r3, 20021226 <boot_ram+0x12>
20021220:	9b01      	ldr	r3, [sp, #4]
20021222:	b002      	add	sp, #8
20021224:	4718      	bx	r3
20021226:	b002      	add	sp, #8
20021228:	4770      	bx	lr
2002122a:	bf00      	nop
2002122c:	500c0000 	.word	0x500c0000

20021230 <is_addr_in_nor>:
20021230:	4b09      	ldr	r3, [pc, #36]	@ (20021258 <is_addr_in_nor+0x28>)
20021232:	4602      	mov	r2, r0
20021234:	681b      	ldr	r3, [r3, #0]
20021236:	b163      	cbz	r3, 20021252 <is_addr_in_nor+0x22>
20021238:	f893 0023 	ldrb.w	r0, [r3, #35]	@ 0x23
2002123c:	b948      	cbnz	r0, 20021252 <is_addr_in_nor+0x22>
2002123e:	6919      	ldr	r1, [r3, #16]
20021240:	4291      	cmp	r1, r2
20021242:	d807      	bhi.n	20021254 <is_addr_in_nor+0x24>
20021244:	695b      	ldr	r3, [r3, #20]
20021246:	4419      	add	r1, r3
20021248:	4291      	cmp	r1, r2
2002124a:	bf94      	ite	ls
2002124c:	2000      	movls	r0, #0
2002124e:	2001      	movhi	r0, #1
20021250:	4770      	bx	lr
20021252:	2000      	movs	r0, #0
20021254:	4770      	bx	lr
20021256:	bf00      	nop
20021258:	20046cb4 	.word	0x20046cb4

2002125c <dfu_boot_img_in_flash>:
2002125c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20021260:	4f5e      	ldr	r7, [pc, #376]	@ (200213dc <dfu_boot_img_in_flash+0x180>)
20021262:	1e84      	subs	r4, r0, #2
20021264:	eb07 1300 	add.w	r3, r7, r0, lsl #4
20021268:	eb07 2040 	add.w	r0, r7, r0, lsl #9
2002126c:	f8d3 8004 	ldr.w	r8, [r3, #4]
20021270:	68dd      	ldr	r5, [r3, #12]
20021272:	f8b0 3c06 	ldrh.w	r3, [r0, #3078]	@ 0xc06
20021276:	b085      	sub	sp, #20
20021278:	07db      	lsls	r3, r3, #31
2002127a:	f140 8095 	bpl.w	200213a8 <dfu_boot_img_in_flash+0x14c>
2002127e:	f44f 7193 	mov.w	r1, #294	@ 0x126
20021282:	f507 7082 	add.w	r0, r7, #260	@ 0x104
20021286:	f000 fd84 	bl	20021d92 <sifli_sigkey_pub_verify>
2002128a:	b110      	cbz	r0, 20021292 <dfu_boot_img_in_flash+0x36>
2002128c:	2001      	movs	r0, #1
2002128e:	f000 fdcd 	bl	20021e2c <sifli_secboot_exception>
20021292:	2c07      	cmp	r4, #7
20021294:	f300 8093 	bgt.w	200213be <dfu_boot_img_in_flash+0x162>
20021298:	2003      	movs	r0, #3
2002129a:	f7ff fead 	bl	20020ff8 <sifli_hw_efuse_read_bank>
2002129e:	4262      	negs	r2, r4
200212a0:	f002 0203 	and.w	r2, r2, #3
200212a4:	f004 0303 	and.w	r3, r4, #3
200212a8:	bf58      	it	pl
200212aa:	4253      	negpl	r3, r2
200212ac:	2b02      	cmp	r3, #2
200212ae:	f200 8086 	bhi.w	200213be <dfu_boot_img_in_flash+0x162>
200212b2:	4628      	mov	r0, r5
200212b4:	f7ff ffbc 	bl	20021230 <is_addr_in_nor>
200212b8:	f241 0308 	movw	r3, #4104	@ 0x1008
200212bc:	4682      	mov	sl, r0
200212be:	ea4f 2944 	mov.w	r9, r4, lsl #9
200212c2:	f8df c12c 	ldr.w	ip, [pc, #300]	@ 200213f0 <dfu_boot_img_in_flash+0x194>
200212c6:	eb07 0609 	add.w	r6, r7, r9
200212ca:	441e      	add	r6, r3
200212cc:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200212ce:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
200212d2:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200212d6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
200212da:	f1ba 0f00 	cmp.w	sl, #0
200212de:	d04b      	beq.n	20021378 <dfu_boot_img_in_flash+0x11c>
200212e0:	f104 0608 	add.w	r6, r4, #8
200212e4:	f1ac 0010 	sub.w	r0, ip, #16
200212e8:	0276      	lsls	r6, r6, #9
200212ea:	f7ff fec1 	bl	20021070 <sifli_hw_init_xip_key>
200212ee:	59ba      	ldr	r2, [r7, r6]
200212f0:	f8df a0f0 	ldr.w	sl, [pc, #240]	@ 200213e4 <dfu_boot_img_in_flash+0x188>
200212f4:	442a      	add	r2, r5
200212f6:	2000      	movs	r0, #0
200212f8:	f8da b000 	ldr.w	fp, [sl]
200212fc:	9203      	str	r2, [sp, #12]
200212fe:	f7ff fef7 	bl	200210f0 <dfu_get_counter>
20021302:	4629      	mov	r1, r5
20021304:	4603      	mov	r3, r0
20021306:	9a03      	ldr	r2, [sp, #12]
20021308:	4658      	mov	r0, fp
2002130a:	f002 fa84 	bl	20023816 <HAL_FLASH_NONCE_CFG>
2002130e:	4629      	mov	r1, r5
20021310:	f8da 0000 	ldr.w	r0, [sl]
20021314:	59ba      	ldr	r2, [r7, r6]
20021316:	eba8 0305 	sub.w	r3, r8, r5
2002131a:	f002 fa6b 	bl	200237f4 <HAL_FLASH_ALIAS_CFG>
2002131e:	2101      	movs	r1, #1
20021320:	f8da 0000 	ldr.w	r0, [sl]
20021324:	f002 fa8f 	bl	20023846 <HAL_FLASH_AES_CFG>
20021328:	f104 0308 	add.w	r3, r4, #8
2002132c:	f509 5081 	add.w	r0, r9, #4128	@ 0x1020
20021330:	025b      	lsls	r3, r3, #9
20021332:	3008      	adds	r0, #8
20021334:	462a      	mov	r2, r5
20021336:	58fb      	ldr	r3, [r7, r3]
20021338:	4929      	ldr	r1, [pc, #164]	@ (200213e0 <dfu_boot_img_in_flash+0x184>)
2002133a:	4438      	add	r0, r7
2002133c:	f000 fd41 	bl	20021dc2 <sifli_img_sig_hash_verify>
20021340:	b110      	cbz	r0, 20021348 <dfu_boot_img_in_flash+0xec>
20021342:	2002      	movs	r0, #2
20021344:	f000 fd72 	bl	20021e2c <sifli_secboot_exception>
20021348:	f8d5 d000 	ldr.w	sp, [r5]
2002134c:	f8d5 f004 	ldr.w	pc, [r5, #4]
20021350:	4628      	mov	r0, r5
20021352:	f7ff ff6d 	bl	20021230 <is_addr_in_nor>
20021356:	2800      	cmp	r0, #0
20021358:	d034      	beq.n	200213c4 <dfu_boot_img_in_flash+0x168>
2002135a:	4822      	ldr	r0, [pc, #136]	@ (200213e4 <dfu_boot_img_in_flash+0x188>)
2002135c:	3408      	adds	r4, #8
2002135e:	0264      	lsls	r4, r4, #9
20021360:	4629      	mov	r1, r5
20021362:	593a      	ldr	r2, [r7, r4]
20021364:	6800      	ldr	r0, [r0, #0]
20021366:	eba8 0305 	sub.w	r3, r8, r5
2002136a:	f002 fa43 	bl	200237f4 <HAL_FLASH_ALIAS_CFG>
2002136e:	f8d5 d000 	ldr.w	sp, [r5]
20021372:	f8d5 f004 	ldr.w	pc, [r5, #4]
20021376:	e022      	b.n	200213be <dfu_boot_img_in_flash+0x162>
20021378:	f1ac 0010 	sub.w	r0, ip, #16
2002137c:	2220      	movs	r2, #32
2002137e:	491a      	ldr	r1, [pc, #104]	@ (200213e8 <dfu_boot_img_in_flash+0x18c>)
20021380:	f7ff fe9e 	bl	200210c0 <sifli_hw_dec_key>
20021384:	f104 0608 	add.w	r6, r4, #8
20021388:	4b18      	ldr	r3, [pc, #96]	@ (200213ec <dfu_boot_img_in_flash+0x190>)
2002138a:	0276      	lsls	r6, r6, #9
2002138c:	4629      	mov	r1, r5
2002138e:	59ba      	ldr	r2, [r7, r6]
20021390:	4640      	mov	r0, r8
20021392:	681b      	ldr	r3, [r3, #0]
20021394:	4798      	blx	r3
20021396:	f8cd a000 	str.w	sl, [sp]
2002139a:	462a      	mov	r2, r5
2002139c:	4629      	mov	r1, r5
2002139e:	59bb      	ldr	r3, [r7, r6]
200213a0:	4811      	ldr	r0, [pc, #68]	@ (200213e8 <dfu_boot_img_in_flash+0x18c>)
200213a2:	f7ff febd 	bl	20021120 <sifli_hw_dec>
200213a6:	e7bf      	b.n	20021328 <dfu_boot_img_in_flash+0xcc>
200213a8:	2c07      	cmp	r4, #7
200213aa:	dc08      	bgt.n	200213be <dfu_boot_img_in_flash+0x162>
200213ac:	4262      	negs	r2, r4
200213ae:	f002 0203 	and.w	r2, r2, #3
200213b2:	f004 0303 	and.w	r3, r4, #3
200213b6:	bf58      	it	pl
200213b8:	4253      	negpl	r3, r2
200213ba:	2b02      	cmp	r3, #2
200213bc:	d9c8      	bls.n	20021350 <dfu_boot_img_in_flash+0xf4>
200213be:	b005      	add	sp, #20
200213c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200213c4:	45a8      	cmp	r8, r5
200213c6:	d0d2      	beq.n	2002136e <dfu_boot_img_in_flash+0x112>
200213c8:	4b08      	ldr	r3, [pc, #32]	@ (200213ec <dfu_boot_img_in_flash+0x190>)
200213ca:	3408      	adds	r4, #8
200213cc:	0264      	lsls	r4, r4, #9
200213ce:	4629      	mov	r1, r5
200213d0:	4640      	mov	r0, r8
200213d2:	681b      	ldr	r3, [r3, #0]
200213d4:	593a      	ldr	r2, [r7, r4]
200213d6:	4798      	blx	r3
200213d8:	e7c9      	b.n	2002136e <dfu_boot_img_in_flash+0x112>
200213da:	bf00      	nop
200213dc:	200472c0 	.word	0x200472c0
200213e0:	200473c4 	.word	0x200473c4
200213e4:	20046cb4 	.word	0x20046cb4
200213e8:	20047280 	.word	0x20047280
200213ec:	20046cc0 	.word	0x20046cc0
200213f0:	200472a0 	.word	0x200472a0

200213f4 <boot_images_help>:
200213f4:	b537      	push	{r0, r1, r2, r4, r5, lr}
200213f6:	2009      	movs	r0, #9
200213f8:	f001 fc04 	bl	20022c04 <HAL_Get_backup>
200213fc:	4604      	mov	r4, r0
200213fe:	2008      	movs	r0, #8
20021400:	f001 fc00 	bl	20022c04 <HAL_Get_backup>
20021404:	4b31      	ldr	r3, [pc, #196]	@ (200214cc <boot_images_help+0xd8>)
20021406:	4605      	mov	r5, r0
20021408:	4423      	add	r3, r4
2002140a:	2b01      	cmp	r3, #1
2002140c:	d904      	bls.n	20021418 <boot_images_help+0x24>
2002140e:	2009      	movs	r0, #9
20021410:	492f      	ldr	r1, [pc, #188]	@ (200214d0 <boot_images_help+0xdc>)
20021412:	f001 fbf1 	bl	20022bf8 <HAL_Set_backup>
20021416:	4c2e      	ldr	r4, [pc, #184]	@ (200214d0 <boot_images_help+0xdc>)
20021418:	4b2e      	ldr	r3, [pc, #184]	@ (200214d4 <boot_images_help+0xe0>)
2002141a:	442b      	add	r3, r5
2002141c:	2b01      	cmp	r3, #1
2002141e:	d812      	bhi.n	20021446 <boot_images_help+0x52>
20021420:	2100      	movs	r1, #0
20021422:	2008      	movs	r0, #8
20021424:	f001 fbe8 	bl	20022bf8 <HAL_Set_backup>
20021428:	4b2b      	ldr	r3, [pc, #172]	@ (200214d8 <boot_images_help+0xe4>)
2002142a:	429d      	cmp	r5, r3
2002142c:	d147      	bne.n	200214be <boot_images_help+0xca>
2002142e:	2007      	movs	r0, #7
20021430:	492a      	ldr	r1, [pc, #168]	@ (200214dc <boot_images_help+0xe8>)
20021432:	f001 fbe1 	bl	20022bf8 <HAL_Set_backup>
20021436:	482a      	ldr	r0, [pc, #168]	@ (200214e0 <boot_images_help+0xec>)
20021438:	f7ff fea6 	bl	20021188 <boot_slot_via_alias>
2002143c:	b970      	cbnz	r0, 2002145c <boot_images_help+0x68>
2002143e:	2100      	movs	r1, #0
20021440:	2007      	movs	r0, #7
20021442:	f001 fbd9 	bl	20022bf8 <HAL_Set_backup>
20021446:	4b27      	ldr	r3, [pc, #156]	@ (200214e4 <boot_images_help+0xf0>)
20021448:	429c      	cmp	r4, r3
2002144a:	d107      	bne.n	2002145c <boot_images_help+0x68>
2002144c:	4824      	ldr	r0, [pc, #144]	@ (200214e0 <boot_images_help+0xec>)
2002144e:	f7ff fe9b 	bl	20021188 <boot_slot_via_alias>
20021452:	b918      	cbnz	r0, 2002145c <boot_images_help+0x68>
20021454:	2009      	movs	r0, #9
20021456:	491e      	ldr	r1, [pc, #120]	@ (200214d0 <boot_images_help+0xdc>)
20021458:	f001 fbce 	bl	20022bf8 <HAL_Set_backup>
2002145c:	4c22      	ldr	r4, [pc, #136]	@ (200214e8 <boot_images_help+0xf4>)
2002145e:	4b23      	ldr	r3, [pc, #140]	@ (200214ec <boot_images_help+0xf8>)
20021460:	6825      	ldr	r5, [r4, #0]
20021462:	429d      	cmp	r5, r3
20021464:	d129      	bne.n	200214ba <boot_images_help+0xc6>
20021466:	2300      	movs	r3, #0
20021468:	e9cd 3300 	strd	r3, r3, [sp]
2002146c:	4b20      	ldr	r3, [pc, #128]	@ (200214f0 <boot_images_help+0xfc>)
2002146e:	2208      	movs	r2, #8
20021470:	4669      	mov	r1, sp
20021472:	681b      	ldr	r3, [r3, #0]
20021474:	481f      	ldr	r0, [pc, #124]	@ (200214f4 <boot_images_help+0x100>)
20021476:	4798      	blx	r3
20021478:	2005      	movs	r0, #5
2002147a:	f001 fbc3 	bl	20022c04 <HAL_Get_backup>
2002147e:	2802      	cmp	r0, #2
20021480:	f504 5400 	add.w	r4, r4, #8192	@ 0x2000
20021484:	d006      	beq.n	20021494 <boot_images_help+0xa0>
20021486:	9b00      	ldr	r3, [sp, #0]
20021488:	42ab      	cmp	r3, r5
2002148a:	d106      	bne.n	2002149a <boot_images_help+0xa6>
2002148c:	f89d 3005 	ldrb.w	r3, [sp, #5]
20021490:	2b7f      	cmp	r3, #127	@ 0x7f
20021492:	d102      	bne.n	2002149a <boot_images_help+0xa6>
20021494:	4b18      	ldr	r3, [pc, #96]	@ (200214f8 <boot_images_help+0x104>)
20021496:	f8c4 3c08 	str.w	r3, [r4, #3080]	@ 0xc08
2002149a:	f8d4 3c08 	ldr.w	r3, [r4, #3080]	@ 0xc08
2002149e:	1c5a      	adds	r2, r3, #1
200214a0:	d00b      	beq.n	200214ba <boot_images_help+0xc6>
200214a2:	4a16      	ldr	r2, [pc, #88]	@ (200214fc <boot_images_help+0x108>)
200214a4:	6814      	ldr	r4, [r2, #0]
200214a6:	1b1c      	subs	r4, r3, r4
200214a8:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
200214ac:	0a64      	lsrs	r4, r4, #9
200214ae:	3402      	adds	r4, #2
200214b0:	f7ff fa16 	bl	200208e0 <board_init_psram>
200214b4:	4620      	mov	r0, r4
200214b6:	f7ff fed1 	bl	2002125c <dfu_boot_img_in_flash>
200214ba:	b003      	add	sp, #12
200214bc:	bd30      	pop	{r4, r5, pc}
200214be:	2007      	movs	r0, #7
200214c0:	490f      	ldr	r1, [pc, #60]	@ (20021500 <boot_images_help+0x10c>)
200214c2:	f001 fb99 	bl	20022bf8 <HAL_Set_backup>
200214c6:	480f      	ldr	r0, [pc, #60]	@ (20021504 <boot_images_help+0x110>)
200214c8:	e7b6      	b.n	20021438 <boot_images_help+0x44>
200214ca:	bf00      	nop
200214cc:	bebcabbf 	.word	0xbebcabbf
200214d0:	41435441 	.word	0x41435441
200214d4:	abada6bf 	.word	0xabada6bf
200214d8:	54525942 	.word	0x54525942
200214dc:	434d5442 	.word	0x434d5442
200214e0:	123a0000 	.word	0x123a0000
200214e4:	41435442 	.word	0x41435442
200214e8:	200472c0 	.word	0x200472c0
200214ec:	53454346 	.word	0x53454346
200214f0:	20046cc0 	.word	0x20046cc0
200214f4:	12780000 	.word	0x12780000
200214f8:	12001000 	.word	0x12001000
200214fc:	20046cb0 	.word	0x20046cb0
20021500:	434d5441 	.word	0x434d5441
20021504:	12020000 	.word	0x12020000

20021508 <hw_preinit0>:
20021508:	b508      	push	{r3, lr}
2002150a:	4b0e      	ldr	r3, [pc, #56]	@ (20021544 <hw_preinit0+0x3c>)
2002150c:	685b      	ldr	r3, [r3, #4]
2002150e:	b2db      	uxtb	r3, r3
20021510:	2b06      	cmp	r3, #6
20021512:	d80a      	bhi.n	2002152a <hw_preinit0+0x22>
20021514:	4a0c      	ldr	r2, [pc, #48]	@ (20021548 <hw_preinit0+0x40>)
20021516:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20021518:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
2002151c:	f043 0306 	orr.w	r3, r3, #6
20021520:	6293      	str	r3, [r2, #40]	@ 0x28
20021522:	6853      	ldr	r3, [r2, #4]
20021524:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20021528:	6053      	str	r3, [r2, #4]
2002152a:	2000      	movs	r0, #0
2002152c:	f000 fd77 	bl	2002201e <HAL_Delay_us>
20021530:	4b06      	ldr	r3, [pc, #24]	@ (2002154c <hw_preinit0+0x44>)
20021532:	4a07      	ldr	r2, [pc, #28]	@ (20021550 <hw_preinit0+0x48>)
20021534:	2000      	movs	r0, #0
20021536:	605a      	str	r2, [r3, #4]
20021538:	f7ff fd5e 	bl	20020ff8 <sifli_hw_efuse_read_bank>
2002153c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20021540:	f7ff be68 	b.w	20021214 <boot_ram>
20021544:	5000b000 	.word	0x5000b000
20021548:	500ca000 	.word	0x500ca000
2002154c:	5000c000 	.word	0x5000c000
20021550:	0002d08f 	.word	0x0002d08f

20021554 <entry>:
20021554:	4c14      	ldr	r4, [pc, #80]	@ (200215a8 <entry+0x54>)
20021556:	b508      	push	{r3, lr}
20021558:	2000      	movs	r0, #0
2002155a:	f000 fd60 	bl	2002201e <HAL_Delay_us>
2002155e:	6863      	ldr	r3, [r4, #4]
20021560:	4d12      	ldr	r5, [pc, #72]	@ (200215ac <entry+0x58>)
20021562:	b2db      	uxtb	r3, r3
20021564:	2b06      	cmp	r3, #6
20021566:	d90f      	bls.n	20021588 <entry+0x34>
20021568:	f7fe ffda 	bl	20020520 <board_flash_power_on>
2002156c:	f7fe fec8 	bl	20020300 <HAL_MspInit>
20021570:	f7fe ffb8 	bl	200204e4 <board_boot_from>
20021574:	6028      	str	r0, [r5, #0]
20021576:	68e3      	ldr	r3, [r4, #12]
20021578:	f023 0301 	bic.w	r3, r3, #1
2002157c:	60e3      	str	r3, [r4, #12]
2002157e:	f7ff fbc1 	bl	20020d04 <dfu_flash_init>
20021582:	f7ff ff37 	bl	200213f4 <boot_images_help>
20021586:	e7fe      	b.n	20021586 <entry+0x32>
20021588:	f7fe ffac 	bl	200204e4 <board_boot_from>
2002158c:	6028      	str	r0, [r5, #0]
2002158e:	f7fe ffc7 	bl	20020520 <board_flash_power_on>
20021592:	f7fe feb5 	bl	20020300 <HAL_MspInit>
20021596:	68e3      	ldr	r3, [r4, #12]
20021598:	f023 0301 	bic.w	r3, r3, #1
2002159c:	60e3      	str	r3, [r4, #12]
2002159e:	f7ff fbb1 	bl	20020d04 <dfu_flash_init>
200215a2:	f7ff ff27 	bl	200213f4 <boot_images_help>
200215a6:	e7ee      	b.n	20021586 <entry+0x32>
200215a8:	5000b000 	.word	0x5000b000
200215ac:	20049ed0 	.word	0x20049ed0

200215b0 <sdio_emmc_init>:
200215b0:	b570      	push	{r4, r5, r6, lr}
200215b2:	b08c      	sub	sp, #48	@ 0x30
200215b4:	f000 f968 	bl	20021888 <sd1_init>
200215b8:	4c8d      	ldr	r4, [pc, #564]	@ (200217f0 <sdio_emmc_init+0x240>)
200215ba:	4b8e      	ldr	r3, [pc, #568]	@ (200217f4 <sdio_emmc_init+0x244>)
200215bc:	2500      	movs	r5, #0
200215be:	6323      	str	r3, [r4, #48]	@ 0x30
200215c0:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200215c2:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
200215c6:	f043 0302 	orr.w	r3, r3, #2
200215ca:	6323      	str	r3, [r4, #48]	@ 0x30
200215cc:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200215d0:	62e5      	str	r5, [r4, #44]	@ 0x2c
200215d2:	6223      	str	r3, [r4, #32]
200215d4:	f000 fd23 	bl	2002201e <HAL_Delay_us>
200215d8:	4629      	mov	r1, r5
200215da:	4628      	mov	r0, r5
200215dc:	f000 f986 	bl	200218ec <sd1_send_cmd>
200215e0:	2301      	movs	r3, #1
200215e2:	65e3      	str	r3, [r4, #92]	@ 0x5c
200215e4:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200215e6:	079d      	lsls	r5, r3, #30
200215e8:	d5fc      	bpl.n	200215e4 <sdio_emmc_init+0x34>
200215ea:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
200215ec:	f043 0320 	orr.w	r3, r3, #32
200215f0:	63e3      	str	r3, [r4, #60]	@ 0x3c
200215f2:	4981      	ldr	r1, [pc, #516]	@ (200217f8 <sdio_emmc_init+0x248>)
200215f4:	2001      	movs	r0, #1
200215f6:	ad07      	add	r5, sp, #28
200215f8:	f000 f978 	bl	200218ec <sd1_send_cmd>
200215fc:	ab06      	add	r3, sp, #24
200215fe:	aa05      	add	r2, sp, #20
20021600:	a904      	add	r1, sp, #16
20021602:	f10d 000f 	add.w	r0, sp, #15
20021606:	9500      	str	r5, [sp, #0]
20021608:	f000 f9ae 	bl	20021968 <sd1_get_rsp>
2002160c:	2014      	movs	r0, #20
2002160e:	f000 fd06 	bl	2002201e <HAL_Delay_us>
20021612:	9b04      	ldr	r3, [sp, #16]
20021614:	2b00      	cmp	r3, #0
20021616:	daec      	bge.n	200215f2 <sdio_emmc_init+0x42>
20021618:	2014      	movs	r0, #20
2002161a:	f000 fd00 	bl	2002201e <HAL_Delay_us>
2002161e:	2100      	movs	r1, #0
20021620:	2002      	movs	r0, #2
20021622:	f000 f963 	bl	200218ec <sd1_send_cmd>
20021626:	2801      	cmp	r0, #1
20021628:	f000 8081 	beq.w	2002172e <sdio_emmc_init+0x17e>
2002162c:	2802      	cmp	r0, #2
2002162e:	d07e      	beq.n	2002172e <sdio_emmc_init+0x17e>
20021630:	ab08      	add	r3, sp, #32
20021632:	aa0a      	add	r2, sp, #40	@ 0x28
20021634:	a90b      	add	r1, sp, #44	@ 0x2c
20021636:	9300      	str	r3, [sp, #0]
20021638:	f10d 000f 	add.w	r0, sp, #15
2002163c:	ab09      	add	r3, sp, #36	@ 0x24
2002163e:	f000 f993 	bl	20021968 <sd1_get_rsp>
20021642:	2014      	movs	r0, #20
20021644:	f000 fceb 	bl	2002201e <HAL_Delay_us>
20021648:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
2002164c:	2003      	movs	r0, #3
2002164e:	f000 f94d 	bl	200218ec <sd1_send_cmd>
20021652:	2801      	cmp	r0, #1
20021654:	f000 80ab 	beq.w	200217ae <sdio_emmc_init+0x1fe>
20021658:	2802      	cmp	r0, #2
2002165a:	f000 80aa 	beq.w	200217b2 <sdio_emmc_init+0x202>
2002165e:	ab06      	add	r3, sp, #24
20021660:	9500      	str	r5, [sp, #0]
20021662:	aa05      	add	r2, sp, #20
20021664:	a904      	add	r1, sp, #16
20021666:	f10d 000f 	add.w	r0, sp, #15
2002166a:	f000 f97d 	bl	20021968 <sd1_get_rsp>
2002166e:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021672:	2b03      	cmp	r3, #3
20021674:	f040 809f 	bne.w	200217b6 <sdio_emmc_init+0x206>
20021678:	4c5d      	ldr	r4, [pc, #372]	@ (200217f0 <sdio_emmc_init+0x240>)
2002167a:	2014      	movs	r0, #20
2002167c:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
2002167e:	f023 0320 	bic.w	r3, r3, #32
20021682:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021684:	f000 fccb 	bl	2002201e <HAL_Delay_us>
20021688:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
2002168c:	2009      	movs	r0, #9
2002168e:	f000 f92d 	bl	200218ec <sd1_send_cmd>
20021692:	2801      	cmp	r0, #1
20021694:	f000 8091 	beq.w	200217ba <sdio_emmc_init+0x20a>
20021698:	2802      	cmp	r0, #2
2002169a:	f000 8090 	beq.w	200217be <sdio_emmc_init+0x20e>
2002169e:	aa05      	add	r2, sp, #20
200216a0:	a904      	add	r1, sp, #16
200216a2:	ab06      	add	r3, sp, #24
200216a4:	f10d 000f 	add.w	r0, sp, #15
200216a8:	9500      	str	r5, [sp, #0]
200216aa:	f000 f95d 	bl	20021968 <sd1_get_rsp>
200216ae:	f44f 53b8 	mov.w	r3, #5888	@ 0x1700
200216b2:	6323      	str	r3, [r4, #48]	@ 0x30
200216b4:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200216b6:	2014      	movs	r0, #20
200216b8:	f043 0302 	orr.w	r3, r3, #2
200216bc:	6323      	str	r3, [r4, #48]	@ 0x30
200216be:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200216c2:	6223      	str	r3, [r4, #32]
200216c4:	2302      	movs	r3, #2
200216c6:	63e3      	str	r3, [r4, #60]	@ 0x3c
200216c8:	f000 fca9 	bl	2002201e <HAL_Delay_us>
200216cc:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200216d0:	2007      	movs	r0, #7
200216d2:	f000 f90b 	bl	200218ec <sd1_send_cmd>
200216d6:	2801      	cmp	r0, #1
200216d8:	d073      	beq.n	200217c2 <sdio_emmc_init+0x212>
200216da:	2802      	cmp	r0, #2
200216dc:	d073      	beq.n	200217c6 <sdio_emmc_init+0x216>
200216de:	ab06      	add	r3, sp, #24
200216e0:	9500      	str	r5, [sp, #0]
200216e2:	aa05      	add	r2, sp, #20
200216e4:	a904      	add	r1, sp, #16
200216e6:	f10d 000f 	add.w	r0, sp, #15
200216ea:	f000 f93d 	bl	20021968 <sd1_get_rsp>
200216ee:	f89d 300f 	ldrb.w	r3, [sp, #15]
200216f2:	2b07      	cmp	r3, #7
200216f4:	d169      	bne.n	200217ca <sdio_emmc_init+0x21a>
200216f6:	f04f 33ff 	mov.w	r3, #4294967295
200216fa:	2101      	movs	r1, #1
200216fc:	2000      	movs	r0, #0
200216fe:	6023      	str	r3, [r4, #0]
20021700:	f000 f942 	bl	20021988 <sd1_read>
20021704:	2100      	movs	r1, #0
20021706:	2008      	movs	r0, #8
20021708:	f000 f8f0 	bl	200218ec <sd1_send_cmd>
2002170c:	2801      	cmp	r0, #1
2002170e:	d05e      	beq.n	200217ce <sdio_emmc_init+0x21e>
20021710:	2802      	cmp	r0, #2
20021712:	d05e      	beq.n	200217d2 <sdio_emmc_init+0x222>
20021714:	ab06      	add	r3, sp, #24
20021716:	9500      	str	r5, [sp, #0]
20021718:	aa05      	add	r2, sp, #20
2002171a:	a904      	add	r1, sp, #16
2002171c:	f10d 000f 	add.w	r0, sp, #15
20021720:	f000 f922 	bl	20021968 <sd1_get_rsp>
20021724:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021728:	2b08      	cmp	r3, #8
2002172a:	d002      	beq.n	20021732 <sdio_emmc_init+0x182>
2002172c:	200d      	movs	r0, #13
2002172e:	b00c      	add	sp, #48	@ 0x30
20021730:	bd70      	pop	{r4, r5, r6, pc}
20021732:	2320      	movs	r3, #32
20021734:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021736:	f000 f937 	bl	200219a8 <sd1_wait_read>
2002173a:	6823      	ldr	r3, [r4, #0]
2002173c:	0618      	lsls	r0, r3, #24
2002173e:	d4f5      	bmi.n	2002172c <sdio_emmc_init+0x17c>
20021740:	6823      	ldr	r3, [r4, #0]
20021742:	0659      	lsls	r1, r3, #25
20021744:	d447      	bmi.n	200217d6 <sdio_emmc_init+0x226>
20021746:	2680      	movs	r6, #128	@ 0x80
20021748:	3e01      	subs	r6, #1
2002174a:	f8d4 3200 	ldr.w	r3, [r4, #512]	@ 0x200
2002174e:	d1fb      	bne.n	20021748 <sdio_emmc_init+0x198>
20021750:	2101      	movs	r1, #1
20021752:	4630      	mov	r0, r6
20021754:	f000 f918 	bl	20021988 <sd1_read>
20021758:	2014      	movs	r0, #20
2002175a:	f000 fc60 	bl	2002201e <HAL_Delay_us>
2002175e:	f04f 33ff 	mov.w	r3, #4294967295
20021762:	4631      	mov	r1, r6
20021764:	2011      	movs	r0, #17
20021766:	6023      	str	r3, [r4, #0]
20021768:	f000 f8c0 	bl	200218ec <sd1_send_cmd>
2002176c:	2801      	cmp	r0, #1
2002176e:	d034      	beq.n	200217da <sdio_emmc_init+0x22a>
20021770:	2802      	cmp	r0, #2
20021772:	d034      	beq.n	200217de <sdio_emmc_init+0x22e>
20021774:	ab06      	add	r3, sp, #24
20021776:	9500      	str	r5, [sp, #0]
20021778:	aa05      	add	r2, sp, #20
2002177a:	a904      	add	r1, sp, #16
2002177c:	f10d 000f 	add.w	r0, sp, #15
20021780:	f000 f8f2 	bl	20021968 <sd1_get_rsp>
20021784:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021788:	2b11      	cmp	r3, #17
2002178a:	d12a      	bne.n	200217e2 <sdio_emmc_init+0x232>
2002178c:	2320      	movs	r3, #32
2002178e:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021790:	f000 f90a 	bl	200219a8 <sd1_wait_read>
20021794:	6823      	ldr	r3, [r4, #0]
20021796:	061a      	lsls	r2, r3, #24
20021798:	d425      	bmi.n	200217e6 <sdio_emmc_init+0x236>
2002179a:	6823      	ldr	r3, [r4, #0]
2002179c:	065b      	lsls	r3, r3, #25
2002179e:	d424      	bmi.n	200217ea <sdio_emmc_init+0x23a>
200217a0:	2080      	movs	r0, #128	@ 0x80
200217a2:	4b13      	ldr	r3, [pc, #76]	@ (200217f0 <sdio_emmc_init+0x240>)
200217a4:	3801      	subs	r0, #1
200217a6:	f8d3 2200 	ldr.w	r2, [r3, #512]	@ 0x200
200217aa:	d1fb      	bne.n	200217a4 <sdio_emmc_init+0x1f4>
200217ac:	e7bf      	b.n	2002172e <sdio_emmc_init+0x17e>
200217ae:	2003      	movs	r0, #3
200217b0:	e7bd      	b.n	2002172e <sdio_emmc_init+0x17e>
200217b2:	2004      	movs	r0, #4
200217b4:	e7bb      	b.n	2002172e <sdio_emmc_init+0x17e>
200217b6:	2005      	movs	r0, #5
200217b8:	e7b9      	b.n	2002172e <sdio_emmc_init+0x17e>
200217ba:	2006      	movs	r0, #6
200217bc:	e7b7      	b.n	2002172e <sdio_emmc_init+0x17e>
200217be:	2007      	movs	r0, #7
200217c0:	e7b5      	b.n	2002172e <sdio_emmc_init+0x17e>
200217c2:	2008      	movs	r0, #8
200217c4:	e7b3      	b.n	2002172e <sdio_emmc_init+0x17e>
200217c6:	2009      	movs	r0, #9
200217c8:	e7b1      	b.n	2002172e <sdio_emmc_init+0x17e>
200217ca:	200a      	movs	r0, #10
200217cc:	e7af      	b.n	2002172e <sdio_emmc_init+0x17e>
200217ce:	200b      	movs	r0, #11
200217d0:	e7ad      	b.n	2002172e <sdio_emmc_init+0x17e>
200217d2:	200c      	movs	r0, #12
200217d4:	e7ab      	b.n	2002172e <sdio_emmc_init+0x17e>
200217d6:	200e      	movs	r0, #14
200217d8:	e7a9      	b.n	2002172e <sdio_emmc_init+0x17e>
200217da:	2011      	movs	r0, #17
200217dc:	e7a7      	b.n	2002172e <sdio_emmc_init+0x17e>
200217de:	2012      	movs	r0, #18
200217e0:	e7a5      	b.n	2002172e <sdio_emmc_init+0x17e>
200217e2:	2013      	movs	r0, #19
200217e4:	e7a3      	b.n	2002172e <sdio_emmc_init+0x17e>
200217e6:	2014      	movs	r0, #20
200217e8:	e7a1      	b.n	2002172e <sdio_emmc_init+0x17e>
200217ea:	2015      	movs	r0, #21
200217ec:	e79f      	b.n	2002172e <sdio_emmc_init+0x17e>
200217ee:	bf00      	nop
200217f0:	50045000 	.word	0x50045000
200217f4:	00016700 	.word	0x00016700
200217f8:	40000080 	.word	0x40000080

200217fc <emmc_read_data>:
200217fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20021800:	4607      	mov	r7, r0
20021802:	f04f 38ff 	mov.w	r8, #4294967295
20021806:	b088      	sub	sp, #32
20021808:	2000      	movs	r0, #0
2002180a:	460d      	mov	r5, r1
2002180c:	4e1d      	ldr	r6, [pc, #116]	@ (20021884 <emmc_read_data+0x88>)
2002180e:	2101      	movs	r1, #1
20021810:	4614      	mov	r4, r2
20021812:	f000 f8b9 	bl	20021988 <sd1_read>
20021816:	2014      	movs	r0, #20
20021818:	f000 fc01 	bl	2002201e <HAL_Delay_us>
2002181c:	2011      	movs	r0, #17
2002181e:	f8c6 8000 	str.w	r8, [r6]
20021822:	0a79      	lsrs	r1, r7, #9
20021824:	f000 f862 	bl	200218ec <sd1_send_cmd>
20021828:	4440      	add	r0, r8
2002182a:	b2c0      	uxtb	r0, r0
2002182c:	2801      	cmp	r0, #1
2002182e:	d803      	bhi.n	20021838 <emmc_read_data+0x3c>
20021830:	2000      	movs	r0, #0
20021832:	b008      	add	sp, #32
20021834:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20021838:	ab07      	add	r3, sp, #28
2002183a:	9300      	str	r3, [sp, #0]
2002183c:	aa05      	add	r2, sp, #20
2002183e:	ab06      	add	r3, sp, #24
20021840:	a904      	add	r1, sp, #16
20021842:	f10d 000f 	add.w	r0, sp, #15
20021846:	f000 f88f 	bl	20021968 <sd1_get_rsp>
2002184a:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002184e:	2b11      	cmp	r3, #17
20021850:	d1ee      	bne.n	20021830 <emmc_read_data+0x34>
20021852:	2320      	movs	r3, #32
20021854:	f8c6 8000 	str.w	r8, [r6]
20021858:	62f3      	str	r3, [r6, #44]	@ 0x2c
2002185a:	f000 f8a5 	bl	200219a8 <sd1_wait_read>
2002185e:	6833      	ldr	r3, [r6, #0]
20021860:	061a      	lsls	r2, r3, #24
20021862:	d4e5      	bmi.n	20021830 <emmc_read_data+0x34>
20021864:	6833      	ldr	r3, [r6, #0]
20021866:	065b      	lsls	r3, r3, #25
20021868:	d4e2      	bmi.n	20021830 <emmc_read_data+0x34>
2002186a:	f024 0303 	bic.w	r3, r4, #3
2002186e:	442b      	add	r3, r5
20021870:	429d      	cmp	r5, r3
20021872:	d101      	bne.n	20021878 <emmc_read_data+0x7c>
20021874:	4620      	mov	r0, r4
20021876:	e7dc      	b.n	20021832 <emmc_read_data+0x36>
20021878:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
2002187c:	f845 2b04 	str.w	r2, [r5], #4
20021880:	e7f6      	b.n	20021870 <emmc_read_data+0x74>
20021882:	bf00      	nop
20021884:	50045000 	.word	0x50045000

20021888 <sd1_init>:
20021888:	b510      	push	{r4, lr}
2002188a:	f04f 44a0 	mov.w	r4, #1342177280	@ 0x50000000
2002188e:	68e3      	ldr	r3, [r4, #12]
20021890:	2064      	movs	r0, #100	@ 0x64
20021892:	f023 0310 	bic.w	r3, r3, #16
20021896:	60e3      	str	r3, [r4, #12]
20021898:	f000 fbc1 	bl	2002201e <HAL_Delay_us>
2002189c:	68e3      	ldr	r3, [r4, #12]
2002189e:	4a07      	ldr	r2, [pc, #28]	@ (200218bc <sd1_init+0x34>)
200218a0:	f043 0310 	orr.w	r3, r3, #16
200218a4:	60e3      	str	r3, [r4, #12]
200218a6:	6913      	ldr	r3, [r2, #16]
200218a8:	f043 0302 	orr.w	r3, r3, #2
200218ac:	6113      	str	r3, [r2, #16]
200218ae:	f44f 7280 	mov.w	r2, #256	@ 0x100
200218b2:	4b03      	ldr	r3, [pc, #12]	@ (200218c0 <sd1_init+0x38>)
200218b4:	631a      	str	r2, [r3, #48]	@ 0x30
200218b6:	2200      	movs	r2, #0
200218b8:	63da      	str	r2, [r3, #60]	@ 0x3c
200218ba:	bd10      	pop	{r4, pc}
200218bc:	5000b000 	.word	0x5000b000
200218c0:	50045000 	.word	0x50045000

200218c4 <sd1_wait_cmd>:
200218c4:	4b08      	ldr	r3, [pc, #32]	@ (200218e8 <sd1_wait_cmd+0x24>)
200218c6:	681a      	ldr	r2, [r3, #0]
200218c8:	f012 0f0a 	tst.w	r2, #10
200218cc:	d0fb      	beq.n	200218c6 <sd1_wait_cmd+0x2>
200218ce:	2202      	movs	r2, #2
200218d0:	601a      	str	r2, [r3, #0]
200218d2:	681a      	ldr	r2, [r3, #0]
200218d4:	0712      	lsls	r2, r2, #28
200218d6:	bf5f      	itttt	pl
200218d8:	6818      	ldrpl	r0, [r3, #0]
200218da:	f3c0 0080 	ubfxpl	r0, r0, #2, #1
200218de:	0040      	lslpl	r0, r0, #1
200218e0:	b2c0      	uxtbpl	r0, r0
200218e2:	bf48      	it	mi
200218e4:	2001      	movmi	r0, #1
200218e6:	4770      	bx	lr
200218e8:	50045000 	.word	0x50045000

200218ec <sd1_send_cmd>:
200218ec:	4b0e      	ldr	r3, [pc, #56]	@ (20021928 <sd1_send_cmd+0x3c>)
200218ee:	280f      	cmp	r0, #15
200218f0:	6099      	str	r1, [r3, #8]
200218f2:	ea4f 4380 	mov.w	r3, r0, lsl #18
200218f6:	d813      	bhi.n	20021920 <sd1_send_cmd+0x34>
200218f8:	2201      	movs	r2, #1
200218fa:	f248 0111 	movw	r1, #32785	@ 0x8011
200218fe:	4082      	lsls	r2, r0
20021900:	420a      	tst	r2, r1
20021902:	d105      	bne.n	20021910 <sd1_send_cmd+0x24>
20021904:	f240 6104 	movw	r1, #1540	@ 0x604
20021908:	420a      	tst	r2, r1
2002190a:	d009      	beq.n	20021920 <sd1_send_cmd+0x34>
2002190c:	f443 3340 	orr.w	r3, r3, #196608	@ 0x30000
20021910:	4a05      	ldr	r2, [pc, #20]	@ (20021928 <sd1_send_cmd+0x3c>)
20021912:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
20021916:	f043 0301 	orr.w	r3, r3, #1
2002191a:	6053      	str	r3, [r2, #4]
2002191c:	f7ff bfd2 	b.w	200218c4 <sd1_wait_cmd>
20021920:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
20021924:	e7f4      	b.n	20021910 <sd1_send_cmd+0x24>
20021926:	bf00      	nop
20021928:	50045000 	.word	0x50045000

2002192c <sd1_send_acmd>:
2002192c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002192e:	4605      	mov	r5, r0
20021930:	460f      	mov	r7, r1
20021932:	2037      	movs	r0, #55	@ 0x37
20021934:	0411      	lsls	r1, r2, #16
20021936:	f7ff ffd9 	bl	200218ec <sd1_send_cmd>
2002193a:	4604      	mov	r4, r0
2002193c:	b968      	cbnz	r0, 2002195a <sd1_send_acmd+0x2e>
2002193e:	4b08      	ldr	r3, [pc, #32]	@ (20021960 <sd1_send_acmd+0x34>)
20021940:	4e08      	ldr	r6, [pc, #32]	@ (20021964 <sd1_send_acmd+0x38>)
20021942:	ea43 4385 	orr.w	r3, r3, r5, lsl #18
20021946:	60b7      	str	r7, [r6, #8]
20021948:	6073      	str	r3, [r6, #4]
2002194a:	f7ff ffbb 	bl	200218c4 <sd1_wait_cmd>
2002194e:	2802      	cmp	r0, #2
20021950:	d104      	bne.n	2002195c <sd1_send_acmd+0x30>
20021952:	2d29      	cmp	r5, #41	@ 0x29
20021954:	d102      	bne.n	2002195c <sd1_send_acmd+0x30>
20021956:	2304      	movs	r3, #4
20021958:	6033      	str	r3, [r6, #0]
2002195a:	4620      	mov	r0, r4
2002195c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002195e:	bf00      	nop
20021960:	00010101 	.word	0x00010101
20021964:	50045000 	.word	0x50045000

20021968 <sd1_get_rsp>:
20021968:	b530      	push	{r4, r5, lr}
2002196a:	4c06      	ldr	r4, [pc, #24]	@ (20021984 <sd1_get_rsp+0x1c>)
2002196c:	68e5      	ldr	r5, [r4, #12]
2002196e:	7005      	strb	r5, [r0, #0]
20021970:	6920      	ldr	r0, [r4, #16]
20021972:	6008      	str	r0, [r1, #0]
20021974:	6961      	ldr	r1, [r4, #20]
20021976:	6011      	str	r1, [r2, #0]
20021978:	69a2      	ldr	r2, [r4, #24]
2002197a:	601a      	str	r2, [r3, #0]
2002197c:	69e2      	ldr	r2, [r4, #28]
2002197e:	9b03      	ldr	r3, [sp, #12]
20021980:	601a      	str	r2, [r3, #0]
20021982:	bd30      	pop	{r4, r5, pc}
20021984:	50045000 	.word	0x50045000

20021988 <sd1_read>:
20021988:	f04f 33ff 	mov.w	r3, #4294967295
2002198c:	4a04      	ldr	r2, [pc, #16]	@ (200219a0 <sd1_read+0x18>)
2002198e:	eb03 2341 	add.w	r3, r3, r1, lsl #9
20021992:	6293      	str	r3, [r2, #40]	@ 0x28
20021994:	4b03      	ldr	r3, [pc, #12]	@ (200219a4 <sd1_read+0x1c>)
20021996:	ea43 23c0 	orr.w	r3, r3, r0, lsl #11
2002199a:	6253      	str	r3, [r2, #36]	@ 0x24
2002199c:	4770      	bx	lr
2002199e:	bf00      	nop
200219a0:	50045000 	.word	0x50045000
200219a4:	01ff0301 	.word	0x01ff0301

200219a8 <sd1_wait_read>:
200219a8:	4b08      	ldr	r3, [pc, #32]	@ (200219cc <sd1_wait_read+0x24>)
200219aa:	681a      	ldr	r2, [r3, #0]
200219ac:	f012 0fe0 	tst.w	r2, #224	@ 0xe0
200219b0:	d0fb      	beq.n	200219aa <sd1_wait_read+0x2>
200219b2:	2220      	movs	r2, #32
200219b4:	601a      	str	r2, [r3, #0]
200219b6:	681a      	ldr	r2, [r3, #0]
200219b8:	0612      	lsls	r2, r2, #24
200219ba:	bf5f      	itttt	pl
200219bc:	6818      	ldrpl	r0, [r3, #0]
200219be:	f3c0 1080 	ubfxpl	r0, r0, #6, #1
200219c2:	0040      	lslpl	r0, r0, #1
200219c4:	b2c0      	uxtbpl	r0, r0
200219c6:	bf48      	it	mi
200219c8:	2001      	movmi	r0, #1
200219ca:	4770      	bx	lr
200219cc:	50045000 	.word	0x50045000

200219d0 <sdmmc1_sdnand>:
200219d0:	b5f0      	push	{r4, r5, r6, r7, lr}
200219d2:	b08d      	sub	sp, #52	@ 0x34
200219d4:	f7ff ff58 	bl	20021888 <sd1_init>
200219d8:	4c8f      	ldr	r4, [pc, #572]	@ (20021c18 <sdmmc1_sdnand+0x248>)
200219da:	4b90      	ldr	r3, [pc, #576]	@ (20021c1c <sdmmc1_sdnand+0x24c>)
200219dc:	2500      	movs	r5, #0
200219de:	6323      	str	r3, [r4, #48]	@ 0x30
200219e0:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200219e2:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
200219e6:	f043 0302 	orr.w	r3, r3, #2
200219ea:	6323      	str	r3, [r4, #48]	@ 0x30
200219ec:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
200219f0:	62e5      	str	r5, [r4, #44]	@ 0x2c
200219f2:	6223      	str	r3, [r4, #32]
200219f4:	f000 fb13 	bl	2002201e <HAL_Delay_us>
200219f8:	4629      	mov	r1, r5
200219fa:	4628      	mov	r0, r5
200219fc:	f7ff ff76 	bl	200218ec <sd1_send_cmd>
20021a00:	2301      	movs	r3, #1
20021a02:	65e3      	str	r3, [r4, #92]	@ 0x5c
20021a04:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
20021a06:	079a      	lsls	r2, r3, #30
20021a08:	d5fc      	bpl.n	20021a04 <sdmmc1_sdnand+0x34>
20021a0a:	2014      	movs	r0, #20
20021a0c:	f000 fb07 	bl	2002201e <HAL_Delay_us>
20021a10:	f44f 71d5 	mov.w	r1, #426	@ 0x1aa
20021a14:	2008      	movs	r0, #8
20021a16:	f7ff ff69 	bl	200218ec <sd1_send_cmd>
20021a1a:	3801      	subs	r0, #1
20021a1c:	b2c0      	uxtb	r0, r0
20021a1e:	2801      	cmp	r0, #1
20021a20:	d802      	bhi.n	20021a28 <sdmmc1_sdnand+0x58>
20021a22:	2038      	movs	r0, #56	@ 0x38
20021a24:	b00d      	add	sp, #52	@ 0x34
20021a26:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021a28:	ac07      	add	r4, sp, #28
20021a2a:	ab06      	add	r3, sp, #24
20021a2c:	9400      	str	r4, [sp, #0]
20021a2e:	aa05      	add	r2, sp, #20
20021a30:	a904      	add	r1, sp, #16
20021a32:	f10d 000f 	add.w	r0, sp, #15
20021a36:	f7ff ff97 	bl	20021968 <sd1_get_rsp>
20021a3a:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a3e:	2b08      	cmp	r3, #8
20021a40:	d1ef      	bne.n	20021a22 <sdmmc1_sdnand+0x52>
20021a42:	9b04      	ldr	r3, [sp, #16]
20021a44:	f5b3 7fd5 	cmp.w	r3, #426	@ 0x1aa
20021a48:	d1eb      	bne.n	20021a22 <sdmmc1_sdnand+0x52>
20021a4a:	2014      	movs	r0, #20
20021a4c:	f000 fae7 	bl	2002201e <HAL_Delay_us>
20021a50:	2200      	movs	r2, #0
20021a52:	2029      	movs	r0, #41	@ 0x29
20021a54:	4972      	ldr	r1, [pc, #456]	@ (20021c20 <sdmmc1_sdnand+0x250>)
20021a56:	f7ff ff69 	bl	2002192c <sd1_send_acmd>
20021a5a:	2801      	cmp	r0, #1
20021a5c:	f000 80d0 	beq.w	20021c00 <sdmmc1_sdnand+0x230>
20021a60:	ab06      	add	r3, sp, #24
20021a62:	9400      	str	r4, [sp, #0]
20021a64:	aa05      	add	r2, sp, #20
20021a66:	a904      	add	r1, sp, #16
20021a68:	f10d 000f 	add.w	r0, sp, #15
20021a6c:	f7ff ff7c 	bl	20021968 <sd1_get_rsp>
20021a70:	9b04      	ldr	r3, [sp, #16]
20021a72:	2b00      	cmp	r3, #0
20021a74:	db03      	blt.n	20021a7e <sdmmc1_sdnand+0xae>
20021a76:	2002      	movs	r0, #2
20021a78:	f000 fad1 	bl	2002201e <HAL_Delay_us>
20021a7c:	e7e5      	b.n	20021a4a <sdmmc1_sdnand+0x7a>
20021a7e:	2014      	movs	r0, #20
20021a80:	f000 facd 	bl	2002201e <HAL_Delay_us>
20021a84:	2100      	movs	r1, #0
20021a86:	2002      	movs	r0, #2
20021a88:	f7ff ff30 	bl	200218ec <sd1_send_cmd>
20021a8c:	3801      	subs	r0, #1
20021a8e:	b2c0      	uxtb	r0, r0
20021a90:	2801      	cmp	r0, #1
20021a92:	f240 80b7 	bls.w	20021c04 <sdmmc1_sdnand+0x234>
20021a96:	ab08      	add	r3, sp, #32
20021a98:	aa0a      	add	r2, sp, #40	@ 0x28
20021a9a:	a90b      	add	r1, sp, #44	@ 0x2c
20021a9c:	9300      	str	r3, [sp, #0]
20021a9e:	f10d 000f 	add.w	r0, sp, #15
20021aa2:	ab09      	add	r3, sp, #36	@ 0x24
20021aa4:	f7ff ff60 	bl	20021968 <sd1_get_rsp>
20021aa8:	2014      	movs	r0, #20
20021aaa:	f000 fab8 	bl	2002201e <HAL_Delay_us>
20021aae:	2100      	movs	r1, #0
20021ab0:	2003      	movs	r0, #3
20021ab2:	f7ff ff1b 	bl	200218ec <sd1_send_cmd>
20021ab6:	3801      	subs	r0, #1
20021ab8:	b2c0      	uxtb	r0, r0
20021aba:	2801      	cmp	r0, #1
20021abc:	d801      	bhi.n	20021ac2 <sdmmc1_sdnand+0xf2>
20021abe:	2033      	movs	r0, #51	@ 0x33
20021ac0:	e7b0      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021ac2:	ab06      	add	r3, sp, #24
20021ac4:	9400      	str	r4, [sp, #0]
20021ac6:	aa05      	add	r2, sp, #20
20021ac8:	a904      	add	r1, sp, #16
20021aca:	f10d 000f 	add.w	r0, sp, #15
20021ace:	f7ff ff4b 	bl	20021968 <sd1_get_rsp>
20021ad2:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021ad6:	2b03      	cmp	r3, #3
20021ad8:	d1f1      	bne.n	20021abe <sdmmc1_sdnand+0xee>
20021ada:	9e04      	ldr	r6, [sp, #16]
20021adc:	2014      	movs	r0, #20
20021ade:	0c35      	lsrs	r5, r6, #16
20021ae0:	042d      	lsls	r5, r5, #16
20021ae2:	f000 fa9c 	bl	2002201e <HAL_Delay_us>
20021ae6:	4629      	mov	r1, r5
20021ae8:	2009      	movs	r0, #9
20021aea:	f7ff feff 	bl	200218ec <sd1_send_cmd>
20021aee:	3801      	subs	r0, #1
20021af0:	b2c0      	uxtb	r0, r0
20021af2:	2801      	cmp	r0, #1
20021af4:	f240 8088 	bls.w	20021c08 <sdmmc1_sdnand+0x238>
20021af8:	9400      	str	r4, [sp, #0]
20021afa:	ab06      	add	r3, sp, #24
20021afc:	aa05      	add	r2, sp, #20
20021afe:	a904      	add	r1, sp, #16
20021b00:	f10d 000f 	add.w	r0, sp, #15
20021b04:	f7ff ff30 	bl	20021968 <sd1_get_rsp>
20021b08:	e9dd 2004 	ldrd	r2, r0, [sp, #16]
20021b0c:	9c06      	ldr	r4, [sp, #24]
20021b0e:	9907      	ldr	r1, [sp, #28]
20021b10:	0e23      	lsrs	r3, r4, #24
20021b12:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
20021b16:	0e01      	lsrs	r1, r0, #24
20021b18:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
20021b1c:	9105      	str	r1, [sp, #20]
20021b1e:	0e11      	lsrs	r1, r2, #24
20021b20:	9304      	str	r3, [sp, #16]
20021b22:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
20021b26:	0212      	lsls	r2, r2, #8
20021b28:	0f9b      	lsrs	r3, r3, #30
20021b2a:	9106      	str	r1, [sp, #24]
20021b2c:	9207      	str	r2, [sp, #28]
20021b2e:	d01e      	beq.n	20021b6e <sdmmc1_sdnand+0x19e>
20021b30:	2b01      	cmp	r3, #1
20021b32:	d16b      	bne.n	20021c0c <sdmmc1_sdnand+0x23c>
20021b34:	2300      	movs	r3, #0
20021b36:	4a3b      	ldr	r2, [pc, #236]	@ (20021c24 <sdmmc1_sdnand+0x254>)
20021b38:	4c37      	ldr	r4, [pc, #220]	@ (20021c18 <sdmmc1_sdnand+0x248>)
20021b3a:	7013      	strb	r3, [r2, #0]
20021b3c:	f44f 63a0 	mov.w	r3, #1280	@ 0x500
20021b40:	6323      	str	r3, [r4, #48]	@ 0x30
20021b42:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021b44:	2702      	movs	r7, #2
20021b46:	f043 0302 	orr.w	r3, r3, #2
20021b4a:	6323      	str	r3, [r4, #48]	@ 0x30
20021b4c:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021b50:	2014      	movs	r0, #20
20021b52:	6223      	str	r3, [r4, #32]
20021b54:	63e7      	str	r7, [r4, #60]	@ 0x3c
20021b56:	f000 fa62 	bl	2002201e <HAL_Delay_us>
20021b5a:	4629      	mov	r1, r5
20021b5c:	2007      	movs	r0, #7
20021b5e:	f7ff fec5 	bl	200218ec <sd1_send_cmd>
20021b62:	3801      	subs	r0, #1
20021b64:	b2c0      	uxtb	r0, r0
20021b66:	2801      	cmp	r0, #1
20021b68:	d803      	bhi.n	20021b72 <sdmmc1_sdnand+0x1a2>
20021b6a:	2037      	movs	r0, #55	@ 0x37
20021b6c:	e75a      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021b6e:	2301      	movs	r3, #1
20021b70:	e7e1      	b.n	20021b36 <sdmmc1_sdnand+0x166>
20021b72:	ad07      	add	r5, sp, #28
20021b74:	ab06      	add	r3, sp, #24
20021b76:	9500      	str	r5, [sp, #0]
20021b78:	aa05      	add	r2, sp, #20
20021b7a:	a904      	add	r1, sp, #16
20021b7c:	f10d 000f 	add.w	r0, sp, #15
20021b80:	f7ff fef2 	bl	20021968 <sd1_get_rsp>
20021b84:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b88:	2b07      	cmp	r3, #7
20021b8a:	d1ee      	bne.n	20021b6a <sdmmc1_sdnand+0x19a>
20021b8c:	2014      	movs	r0, #20
20021b8e:	f000 fa46 	bl	2002201e <HAL_Delay_us>
20021b92:	4639      	mov	r1, r7
20021b94:	2006      	movs	r0, #6
20021b96:	0c32      	lsrs	r2, r6, #16
20021b98:	f7ff fec8 	bl	2002192c <sd1_send_acmd>
20021b9c:	3801      	subs	r0, #1
20021b9e:	b2c0      	uxtb	r0, r0
20021ba0:	2801      	cmp	r0, #1
20021ba2:	d935      	bls.n	20021c10 <sdmmc1_sdnand+0x240>
20021ba4:	2101      	movs	r1, #1
20021ba6:	4608      	mov	r0, r1
20021ba8:	f7ff feee 	bl	20021988 <sd1_read>
20021bac:	2014      	movs	r0, #20
20021bae:	f000 fa36 	bl	2002201e <HAL_Delay_us>
20021bb2:	2100      	movs	r1, #0
20021bb4:	2011      	movs	r0, #17
20021bb6:	f7ff fe99 	bl	200218ec <sd1_send_cmd>
20021bba:	3801      	subs	r0, #1
20021bbc:	b2c0      	uxtb	r0, r0
20021bbe:	2801      	cmp	r0, #1
20021bc0:	d801      	bhi.n	20021bc6 <sdmmc1_sdnand+0x1f6>
20021bc2:	2052      	movs	r0, #82	@ 0x52
20021bc4:	e72e      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021bc6:	ab06      	add	r3, sp, #24
20021bc8:	9500      	str	r5, [sp, #0]
20021bca:	aa05      	add	r2, sp, #20
20021bcc:	a904      	add	r1, sp, #16
20021bce:	f10d 000f 	add.w	r0, sp, #15
20021bd2:	f7ff fec9 	bl	20021968 <sd1_get_rsp>
20021bd6:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021bda:	2b11      	cmp	r3, #17
20021bdc:	d1f1      	bne.n	20021bc2 <sdmmc1_sdnand+0x1f2>
20021bde:	f04f 33ff 	mov.w	r3, #4294967295
20021be2:	6023      	str	r3, [r4, #0]
20021be4:	2320      	movs	r3, #32
20021be6:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021be8:	f7ff fede 	bl	200219a8 <sd1_wait_read>
20021bec:	6823      	ldr	r3, [r4, #0]
20021bee:	061b      	lsls	r3, r3, #24
20021bf0:	d410      	bmi.n	20021c14 <sdmmc1_sdnand+0x244>
20021bf2:	6823      	ldr	r3, [r4, #0]
20021bf4:	f013 0f40 	tst.w	r3, #64	@ 0x40
20021bf8:	bf14      	ite	ne
20021bfa:	2044      	movne	r0, #68	@ 0x44
20021bfc:	2001      	moveq	r0, #1
20021bfe:	e711      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021c00:	2034      	movs	r0, #52	@ 0x34
20021c02:	e70f      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021c04:	2032      	movs	r0, #50	@ 0x32
20021c06:	e70d      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021c08:	2039      	movs	r0, #57	@ 0x39
20021c0a:	e70b      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021c0c:	2054      	movs	r0, #84	@ 0x54
20021c0e:	e709      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021c10:	2036      	movs	r0, #54	@ 0x36
20021c12:	e707      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021c14:	204f      	movs	r0, #79	@ 0x4f
20021c16:	e705      	b.n	20021a24 <sdmmc1_sdnand+0x54>
20021c18:	50045000 	.word	0x50045000
20021c1c:	00016700 	.word	0x00016700
20021c20:	40ff8000 	.word	0x40ff8000
20021c24:	20042c08 	.word	0x20042c08

20021c28 <sd_read_data>:
20021c28:	b570      	push	{r4, r5, r6, lr}
20021c2a:	460d      	mov	r5, r1
20021c2c:	2101      	movs	r1, #1
20021c2e:	b088      	sub	sp, #32
20021c30:	4606      	mov	r6, r0
20021c32:	4608      	mov	r0, r1
20021c34:	4614      	mov	r4, r2
20021c36:	f7ff fea7 	bl	20021988 <sd1_read>
20021c3a:	2014      	movs	r0, #20
20021c3c:	f000 f9ef 	bl	2002201e <HAL_Delay_us>
20021c40:	4b1a      	ldr	r3, [pc, #104]	@ (20021cac <sd_read_data+0x84>)
20021c42:	781b      	ldrb	r3, [r3, #0]
20021c44:	b903      	cbnz	r3, 20021c48 <sd_read_data+0x20>
20021c46:	0a76      	lsrs	r6, r6, #9
20021c48:	4631      	mov	r1, r6
20021c4a:	2011      	movs	r0, #17
20021c4c:	f7ff fe4e 	bl	200218ec <sd1_send_cmd>
20021c50:	3801      	subs	r0, #1
20021c52:	b2c0      	uxtb	r0, r0
20021c54:	2801      	cmp	r0, #1
20021c56:	d802      	bhi.n	20021c5e <sd_read_data+0x36>
20021c58:	2000      	movs	r0, #0
20021c5a:	b008      	add	sp, #32
20021c5c:	bd70      	pop	{r4, r5, r6, pc}
20021c5e:	ab07      	add	r3, sp, #28
20021c60:	9300      	str	r3, [sp, #0]
20021c62:	aa05      	add	r2, sp, #20
20021c64:	ab06      	add	r3, sp, #24
20021c66:	a904      	add	r1, sp, #16
20021c68:	f10d 000f 	add.w	r0, sp, #15
20021c6c:	f7ff fe7c 	bl	20021968 <sd1_get_rsp>
20021c70:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021c74:	2b11      	cmp	r3, #17
20021c76:	d1ef      	bne.n	20021c58 <sd_read_data+0x30>
20021c78:	f04f 33ff 	mov.w	r3, #4294967295
20021c7c:	4e0c      	ldr	r6, [pc, #48]	@ (20021cb0 <sd_read_data+0x88>)
20021c7e:	6033      	str	r3, [r6, #0]
20021c80:	2320      	movs	r3, #32
20021c82:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021c84:	f7ff fe90 	bl	200219a8 <sd1_wait_read>
20021c88:	6833      	ldr	r3, [r6, #0]
20021c8a:	061a      	lsls	r2, r3, #24
20021c8c:	d4e4      	bmi.n	20021c58 <sd_read_data+0x30>
20021c8e:	6833      	ldr	r3, [r6, #0]
20021c90:	065b      	lsls	r3, r3, #25
20021c92:	d4e1      	bmi.n	20021c58 <sd_read_data+0x30>
20021c94:	f024 0303 	bic.w	r3, r4, #3
20021c98:	442b      	add	r3, r5
20021c9a:	429d      	cmp	r5, r3
20021c9c:	d101      	bne.n	20021ca2 <sd_read_data+0x7a>
20021c9e:	4620      	mov	r0, r4
20021ca0:	e7db      	b.n	20021c5a <sd_read_data+0x32>
20021ca2:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021ca6:	f845 2b04 	str.w	r2, [r5], #4
20021caa:	e7f6      	b.n	20021c9a <sd_read_data+0x72>
20021cac:	20042c08 	.word	0x20042c08
20021cb0:	50045000 	.word	0x50045000

20021cb4 <sifli_hash_calculate>:
20021cb4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021cb8:	460c      	mov	r4, r1
20021cba:	4615      	mov	r5, r2
20021cbc:	4699      	mov	r9, r3
20021cbe:	4680      	mov	r8, r0
20021cc0:	2800      	cmp	r0, #0
20021cc2:	d03f      	beq.n	20021d44 <sifli_hash_calculate+0x90>
20021cc4:	2900      	cmp	r1, #0
20021cc6:	d03d      	beq.n	20021d44 <sifli_hash_calculate+0x90>
20021cc8:	2a00      	cmp	r2, #0
20021cca:	d03b      	beq.n	20021d44 <sifli_hash_calculate+0x90>
20021ccc:	2b03      	cmp	r3, #3
20021cce:	d839      	bhi.n	20021d44 <sifli_hash_calculate+0x90>
20021cd0:	f000 fab8 	bl	20022244 <HAL_HASH_reset>
20021cd4:	2200      	movs	r2, #0
20021cd6:	4649      	mov	r1, r9
20021cd8:	4610      	mov	r0, r2
20021cda:	f000 fabb 	bl	20022254 <HAL_HASH_init>
20021cde:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
20021ce2:	d929      	bls.n	20021d38 <sifli_hash_calculate+0x84>
20021ce4:	2600      	movs	r6, #0
20021ce6:	4637      	mov	r7, r6
20021ce8:	f506 7680 	add.w	r6, r6, #256	@ 0x100
20021cec:	42a6      	cmp	r6, r4
20021cee:	bf34      	ite	cc
20021cf0:	f04f 0a00 	movcc.w	sl, #0
20021cf4:	f04f 0a01 	movcs.w	sl, #1
20021cf8:	b14f      	cbz	r7, 20021d0e <sifli_hash_calculate+0x5a>
20021cfa:	f000 faa3 	bl	20022244 <HAL_HASH_reset>
20021cfe:	42a6      	cmp	r6, r4
20021d00:	bf2c      	ite	cs
20021d02:	463a      	movcs	r2, r7
20021d04:	2200      	movcc	r2, #0
20021d06:	4649      	mov	r1, r9
20021d08:	4628      	mov	r0, r5
20021d0a:	f000 faa3 	bl	20022254 <HAL_HASH_init>
20021d0e:	42a6      	cmp	r6, r4
20021d10:	bf34      	ite	cc
20021d12:	f44f 7180 	movcc.w	r1, #256	@ 0x100
20021d16:	1be1      	subcs	r1, r4, r7
20021d18:	4652      	mov	r2, sl
20021d1a:	eb08 0007 	add.w	r0, r8, r7
20021d1e:	f000 fa73 	bl	20022208 <HAL_HASH_run>
20021d22:	4628      	mov	r0, r5
20021d24:	f000 fac4 	bl	200222b0 <HAL_HASH_result>
20021d28:	42a6      	cmp	r6, r4
20021d2a:	d3dc      	bcc.n	20021ce6 <sifli_hash_calculate+0x32>
20021d2c:	4628      	mov	r0, r5
20021d2e:	f000 fabf 	bl	200222b0 <HAL_HASH_result>
20021d32:	2000      	movs	r0, #0
20021d34:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021d38:	2201      	movs	r2, #1
20021d3a:	4621      	mov	r1, r4
20021d3c:	4640      	mov	r0, r8
20021d3e:	f000 fa63 	bl	20022208 <HAL_HASH_run>
20021d42:	e7f3      	b.n	20021d2c <sifli_hash_calculate+0x78>
20021d44:	f04f 30ff 	mov.w	r0, #4294967295
20021d48:	e7f4      	b.n	20021d34 <sifli_hash_calculate+0x80>

20021d4a <sifli_hash_verify>:
20021d4a:	b5f0      	push	{r4, r5, r6, r7, lr}
20021d4c:	4605      	mov	r5, r0
20021d4e:	b089      	sub	sp, #36	@ 0x24
20021d50:	460f      	mov	r7, r1
20021d52:	4614      	mov	r4, r2
20021d54:	2100      	movs	r1, #0
20021d56:	2220      	movs	r2, #32
20021d58:	4668      	mov	r0, sp
20021d5a:	461e      	mov	r6, r3
20021d5c:	f008 fe1a 	bl	2002a994 <memset>
20021d60:	b91d      	cbnz	r5, 20021d6a <sifli_hash_verify+0x20>
20021d62:	f04f 30ff 	mov.w	r0, #4294967295
20021d66:	b009      	add	sp, #36	@ 0x24
20021d68:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021d6a:	2c00      	cmp	r4, #0
20021d6c:	d0f9      	beq.n	20021d62 <sifli_hash_verify+0x18>
20021d6e:	2302      	movs	r3, #2
20021d70:	466a      	mov	r2, sp
20021d72:	4639      	mov	r1, r7
20021d74:	4628      	mov	r0, r5
20021d76:	f7ff ff9d 	bl	20021cb4 <sifli_hash_calculate>
20021d7a:	2800      	cmp	r0, #0
20021d7c:	d1f1      	bne.n	20021d62 <sifli_hash_verify+0x18>
20021d7e:	4632      	mov	r2, r6
20021d80:	4621      	mov	r1, r4
20021d82:	4668      	mov	r0, sp
20021d84:	f008 fdf6 	bl	2002a974 <memcmp>
20021d88:	3800      	subs	r0, #0
20021d8a:	bf18      	it	ne
20021d8c:	2001      	movne	r0, #1
20021d8e:	4240      	negs	r0, r0
20021d90:	e7e9      	b.n	20021d66 <sifli_hash_verify+0x1c>

20021d92 <sifli_sigkey_pub_verify>:
20021d92:	2300      	movs	r3, #0
20021d94:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021d96:	4604      	mov	r4, r0
20021d98:	460d      	mov	r5, r1
20021d9a:	2208      	movs	r2, #8
20021d9c:	4669      	mov	r1, sp
20021d9e:	2003      	movs	r0, #3
20021da0:	e9cd 3300 	strd	r3, r3, [sp]
20021da4:	f7ff f93e 	bl	20021024 <sifli_hw_efuse_read>
20021da8:	2808      	cmp	r0, #8
20021daa:	4603      	mov	r3, r0
20021dac:	d106      	bne.n	20021dbc <sifli_sigkey_pub_verify+0x2a>
20021dae:	466a      	mov	r2, sp
20021db0:	4629      	mov	r1, r5
20021db2:	4620      	mov	r0, r4
20021db4:	f7ff ffc9 	bl	20021d4a <sifli_hash_verify>
20021db8:	b003      	add	sp, #12
20021dba:	bd30      	pop	{r4, r5, pc}
20021dbc:	f04f 30ff 	mov.w	r0, #4294967295
20021dc0:	e7fa      	b.n	20021db8 <sifli_sigkey_pub_verify+0x26>

20021dc2 <sifli_img_sig_hash_verify>:
20021dc2:	b5f0      	push	{r4, r5, r6, r7, lr}
20021dc4:	461f      	mov	r7, r3
20021dc6:	4616      	mov	r6, r2
20021dc8:	b08d      	sub	sp, #52	@ 0x34
20021dca:	2220      	movs	r2, #32
20021dcc:	4604      	mov	r4, r0
20021dce:	460d      	mov	r5, r1
20021dd0:	a804      	add	r0, sp, #16
20021dd2:	2100      	movs	r1, #0
20021dd4:	f008 fdde 	bl	2002a994 <memset>
20021dd8:	2302      	movs	r3, #2
20021dda:	4639      	mov	r1, r7
20021ddc:	4630      	mov	r0, r6
20021dde:	aa04      	add	r2, sp, #16
20021de0:	f7ff ff68 	bl	20021cb4 <sifli_hash_calculate>
20021de4:	b118      	cbz	r0, 20021dee <sifli_img_sig_hash_verify+0x2c>
20021de6:	f04f 30ff 	mov.w	r0, #4294967295
20021dea:	b00d      	add	sp, #52	@ 0x34
20021dec:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021dee:	a802      	add	r0, sp, #8
20021df0:	f007 fb44 	bl	2002947c <mbedtls_pk_init>
20021df4:	4629      	mov	r1, r5
20021df6:	f44f 7293 	mov.w	r2, #294	@ 0x126
20021dfa:	a802      	add	r0, sp, #8
20021dfc:	f007 fc4a 	bl	20029694 <mbedtls_pk_parse_public_key>
20021e00:	4601      	mov	r1, r0
20021e02:	2800      	cmp	r0, #0
20021e04:	d1ef      	bne.n	20021de6 <sifli_img_sig_hash_verify+0x24>
20021e06:	2206      	movs	r2, #6
20021e08:	9803      	ldr	r0, [sp, #12]
20021e0a:	f007 fcea 	bl	200297e2 <mbedtls_rsa_set_padding>
20021e0e:	f44f 7380 	mov.w	r3, #256	@ 0x100
20021e12:	2106      	movs	r1, #6
20021e14:	e9cd 4300 	strd	r4, r3, [sp]
20021e18:	aa04      	add	r2, sp, #16
20021e1a:	2320      	movs	r3, #32
20021e1c:	a802      	add	r0, sp, #8
20021e1e:	f007 fb61 	bl	200294e4 <mbedtls_pk_verify>
20021e22:	3800      	subs	r0, #0
20021e24:	bf18      	it	ne
20021e26:	2001      	movne	r0, #1
20021e28:	4240      	negs	r0, r0
20021e2a:	e7de      	b.n	20021dea <sifli_img_sig_hash_verify+0x28>

20021e2c <sifli_secboot_exception>:
20021e2c:	2801      	cmp	r0, #1
20021e2e:	b508      	push	{r3, lr}
20021e30:	d004      	beq.n	20021e3c <sifli_secboot_exception+0x10>
20021e32:	2802      	cmp	r0, #2
20021e34:	d009      	beq.n	20021e4a <sifli_secboot_exception+0x1e>
20021e36:	2213      	movs	r2, #19
20021e38:	4905      	ldr	r1, [pc, #20]	@ (20021e50 <sifli_secboot_exception+0x24>)
20021e3a:	e001      	b.n	20021e40 <sifli_secboot_exception+0x14>
20021e3c:	2217      	movs	r2, #23
20021e3e:	4905      	ldr	r1, [pc, #20]	@ (20021e54 <sifli_secboot_exception+0x28>)
20021e40:	4805      	ldr	r0, [pc, #20]	@ (20021e58 <sifli_secboot_exception+0x2c>)
20021e42:	f7fe fa29 	bl	20020298 <boot_uart_tx>
20021e46:	e7fe      	b.n	20021e46 <sifli_secboot_exception+0x1a>
20021e48:	bd08      	pop	{r3, pc}
20021e4a:	2219      	movs	r2, #25
20021e4c:	4903      	ldr	r1, [pc, #12]	@ (20021e5c <sifli_secboot_exception+0x30>)
20021e4e:	e7f7      	b.n	20021e40 <sifli_secboot_exception+0x14>
20021e50:	2002ab12 	.word	0x2002ab12
20021e54:	2002aae0 	.word	0x2002aae0
20021e58:	50084000 	.word	0x50084000
20021e5c:	2002aaf8 	.word	0x2002aaf8

20021e60 <BSP_GetFlash1DIV>:
20021e60:	4b01      	ldr	r3, [pc, #4]	@ (20021e68 <BSP_GetFlash1DIV+0x8>)
20021e62:	8818      	ldrh	r0, [r3, #0]
20021e64:	4770      	bx	lr
20021e66:	bf00      	nop
20021e68:	20042c0c 	.word	0x20042c0c

20021e6c <BSP_GetFlash2DIV>:
20021e6c:	4b01      	ldr	r3, [pc, #4]	@ (20021e74 <BSP_GetFlash2DIV+0x8>)
20021e6e:	8818      	ldrh	r0, [r3, #0]
20021e70:	4770      	bx	lr
20021e72:	bf00      	nop
20021e74:	20042c0a 	.word	0x20042c0a

20021e78 <BSP_SetFlash1DIV>:
20021e78:	4b01      	ldr	r3, [pc, #4]	@ (20021e80 <BSP_SetFlash1DIV+0x8>)
20021e7a:	8018      	strh	r0, [r3, #0]
20021e7c:	4770      	bx	lr
20021e7e:	bf00      	nop
20021e80:	20042c0c 	.word	0x20042c0c

20021e84 <BSP_SetFlash2DIV>:
20021e84:	4b01      	ldr	r3, [pc, #4]	@ (20021e8c <BSP_SetFlash2DIV+0x8>)
20021e86:	8018      	strh	r0, [r3, #0]
20021e88:	4770      	bx	lr
20021e8a:	bf00      	nop
20021e8c:	20042c0a 	.word	0x20042c0a

20021e90 <boot_images>:
20021e90:	4770      	bx	lr

20021e92 <SystemPowerOnModeInit>:
20021e92:	4770      	bx	lr

20021e94 <SystemInit>:
20021e94:	b508      	push	{r3, lr}
20021e96:	4a10      	ldr	r2, [pc, #64]	@ (20021ed8 <SystemInit+0x44>)
20021e98:	4b10      	ldr	r3, [pc, #64]	@ (20021edc <SystemInit+0x48>)
20021e9a:	609a      	str	r2, [r3, #8]
20021e9c:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021ea0:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
20021ea4:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021ea8:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021eac:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
20021eb0:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021eb4:	f7ff fb28 	bl	20021508 <hw_preinit0>
20021eb8:	f7fe fa28 	bl	2002030c <mpu_config>
20021ebc:	4b08      	ldr	r3, [pc, #32]	@ (20021ee0 <SystemInit+0x4c>)
20021ebe:	681b      	ldr	r3, [r3, #0]
20021ec0:	07db      	lsls	r3, r3, #31
20021ec2:	d401      	bmi.n	20021ec8 <SystemInit+0x34>
20021ec4:	f7ff ffe4 	bl	20021e90 <boot_images>
20021ec8:	f7fe fa21 	bl	2002030e <cache_enable>
20021ecc:	f7ff ffe1 	bl	20021e92 <SystemPowerOnModeInit>
20021ed0:	4b04      	ldr	r3, [pc, #16]	@ (20021ee4 <SystemInit+0x50>)
20021ed2:	4a05      	ldr	r2, [pc, #20]	@ (20021ee8 <SystemInit+0x54>)
20021ed4:	601a      	str	r2, [r3, #0]
20021ed6:	bd08      	pop	{r3, pc}
20021ed8:	20020000 	.word	0x20020000
20021edc:	e000ed00 	.word	0xe000ed00
20021ee0:	5000b000 	.word	0x5000b000
20021ee4:	20042c10 	.word	0x20042c10
20021ee8:	017d7840 	.word	0x017d7840

20021eec <Reset_Handler>:
20021eec:	f8df d048 	ldr.w	sp, [pc, #72]	@ 20021f38 <AES_IRQHandler+0x2>
20021ef0:	4812      	ldr	r0, [pc, #72]	@ (20021f3c <AES_IRQHandler+0x6>)
20021ef2:	f380 880a 	msr	MSPLIM, r0
20021ef6:	f7ff ffcd 	bl	20021e94 <SystemInit>
20021efa:	4c11      	ldr	r4, [pc, #68]	@ (20021f40 <AES_IRQHandler+0xa>)
20021efc:	4d11      	ldr	r5, [pc, #68]	@ (20021f44 <AES_IRQHandler+0xe>)
20021efe:	42ac      	cmp	r4, r5
20021f00:	da09      	bge.n	20021f16 <Reset_Handler+0x2a>
20021f02:	6821      	ldr	r1, [r4, #0]
20021f04:	6862      	ldr	r2, [r4, #4]
20021f06:	68a3      	ldr	r3, [r4, #8]
20021f08:	3b04      	subs	r3, #4
20021f0a:	bfa2      	ittt	ge
20021f0c:	58c8      	ldrge	r0, [r1, r3]
20021f0e:	50d0      	strge	r0, [r2, r3]
20021f10:	e7fa      	bge.n	20021f08 <Reset_Handler+0x1c>
20021f12:	340c      	adds	r4, #12
20021f14:	e7f3      	b.n	20021efe <Reset_Handler+0x12>
20021f16:	4b0c      	ldr	r3, [pc, #48]	@ (20021f48 <AES_IRQHandler+0x12>)
20021f18:	4c0c      	ldr	r4, [pc, #48]	@ (20021f4c <AES_IRQHandler+0x16>)
20021f1a:	42a3      	cmp	r3, r4
20021f1c:	da08      	bge.n	20021f30 <Reset_Handler+0x44>
20021f1e:	6819      	ldr	r1, [r3, #0]
20021f20:	685a      	ldr	r2, [r3, #4]
20021f22:	2000      	movs	r0, #0
20021f24:	3a04      	subs	r2, #4
20021f26:	bfa4      	itt	ge
20021f28:	5088      	strge	r0, [r1, r2]
20021f2a:	e7fb      	bge.n	20021f24 <Reset_Handler+0x38>
20021f2c:	3308      	adds	r3, #8
20021f2e:	e7f4      	b.n	20021f1a <Reset_Handler+0x2e>
20021f30:	f7ff fb10 	bl	20021554 <entry>

20021f34 <HardFault_Handler>:
20021f34:	e7fe      	b.n	20021f34 <HardFault_Handler>

20021f36 <AES_IRQHandler>:
20021f36:	e7fe      	b.n	20021f36 <AES_IRQHandler>
20021f38:	20042000 	.word	0x20042000
20021f3c:	20040000 	.word	0x20040000
20021f40:	2002c550 	.word	0x2002c550
20021f44:	2002c55c 	.word	0x2002c55c
20021f48:	2002c55c 	.word	0x2002c55c
20021f4c:	2002c564 	.word	0x2002c564

20021f50 <__aeabi_unwind_cpp_pr0>:
20021f50:	2000      	movs	r0, #0
20021f52:	4770      	bx	lr

20021f54 <HAL_GetTick>:
20021f54:	4b01      	ldr	r3, [pc, #4]	@ (20021f5c <HAL_GetTick+0x8>)
20021f56:	6818      	ldr	r0, [r3, #0]
20021f58:	4770      	bx	lr
20021f5a:	bf00      	nop
20021f5c:	20049ed8 	.word	0x20049ed8

20021f60 <HAL_Delay_us_>:
20021f60:	b513      	push	{r0, r1, r4, lr}
20021f62:	9001      	str	r0, [sp, #4]
20021f64:	9b01      	ldr	r3, [sp, #4]
20021f66:	4c1a      	ldr	r4, [pc, #104]	@ (20021fd0 <HAL_Delay_us_+0x70>)
20021f68:	b133      	cbz	r3, 20021f78 <HAL_Delay_us_+0x18>
20021f6a:	6823      	ldr	r3, [r4, #0]
20021f6c:	b123      	cbz	r3, 20021f78 <HAL_Delay_us_+0x18>
20021f6e:	9b01      	ldr	r3, [sp, #4]
20021f70:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20021f74:	d90c      	bls.n	20021f90 <HAL_Delay_us_+0x30>
20021f76:	e7fe      	b.n	20021f76 <HAL_Delay_us_+0x16>
20021f78:	2000      	movs	r0, #0
20021f7a:	f003 f8e1 	bl	20025140 <HAL_RCC_GetHCLKFreq>
20021f7e:	4b15      	ldr	r3, [pc, #84]	@ (20021fd4 <HAL_Delay_us_+0x74>)
20021f80:	fbb0 f0f3 	udiv	r0, r0, r3
20021f84:	9b01      	ldr	r3, [sp, #4]
20021f86:	6020      	str	r0, [r4, #0]
20021f88:	2b00      	cmp	r3, #0
20021f8a:	d1f0      	bne.n	20021f6e <HAL_Delay_us_+0xe>
20021f8c:	b002      	add	sp, #8
20021f8e:	bd10      	pop	{r4, pc}
20021f90:	9b01      	ldr	r3, [sp, #4]
20021f92:	2b00      	cmp	r3, #0
20021f94:	d0fa      	beq.n	20021f8c <HAL_Delay_us_+0x2c>
20021f96:	4a10      	ldr	r2, [pc, #64]	@ (20021fd8 <HAL_Delay_us_+0x78>)
20021f98:	6813      	ldr	r3, [r2, #0]
20021f9a:	f013 0301 	ands.w	r3, r3, #1
20021f9e:	d10d      	bne.n	20021fbc <HAL_Delay_us_+0x5c>
20021fa0:	480e      	ldr	r0, [pc, #56]	@ (20021fdc <HAL_Delay_us_+0x7c>)
20021fa2:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
20021fa6:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20021faa:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20021fae:	6053      	str	r3, [r2, #4]
20021fb0:	6813      	ldr	r3, [r2, #0]
20021fb2:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
20021fb6:	f043 0301 	orr.w	r3, r3, #1
20021fba:	6013      	str	r3, [r2, #0]
20021fbc:	9b01      	ldr	r3, [sp, #4]
20021fbe:	6822      	ldr	r2, [r4, #0]
20021fc0:	4905      	ldr	r1, [pc, #20]	@ (20021fd8 <HAL_Delay_us_+0x78>)
20021fc2:	4353      	muls	r3, r2
20021fc4:	6848      	ldr	r0, [r1, #4]
20021fc6:	684a      	ldr	r2, [r1, #4]
20021fc8:	1a12      	subs	r2, r2, r0
20021fca:	429a      	cmp	r2, r3
20021fcc:	d3fb      	bcc.n	20021fc6 <HAL_Delay_us_+0x66>
20021fce:	e7dd      	b.n	20021f8c <HAL_Delay_us_+0x2c>
20021fd0:	20049ed4 	.word	0x20049ed4
20021fd4:	000f4240 	.word	0x000f4240
20021fd8:	e0001000 	.word	0xe0001000
20021fdc:	e000ed00 	.word	0xe000ed00

20021fe0 <HAL_Delay_us2_>:
20021fe0:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021fe2:	9001      	str	r0, [sp, #4]
20021fe4:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20021fe8:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20021fec:	6944      	ldr	r4, [r0, #20]
20021fee:	9b01      	ldr	r3, [sp, #4]
20021ff0:	4363      	muls	r3, r4
20021ff2:	fbb3 f3f2 	udiv	r3, r3, r2
20021ff6:	9301      	str	r3, [sp, #4]
20021ff8:	2300      	movs	r3, #0
20021ffa:	6981      	ldr	r1, [r0, #24]
20021ffc:	6982      	ldr	r2, [r0, #24]
20021ffe:	428a      	cmp	r2, r1
20022000:	d0fc      	beq.n	20021ffc <HAL_Delay_us2_+0x1c>
20022002:	bf25      	ittet	cs
20022004:	1aa5      	subcs	r5, r4, r2
20022006:	195b      	addcs	r3, r3, r5
20022008:	185b      	addcc	r3, r3, r1
2002200a:	185b      	addcs	r3, r3, r1
2002200c:	9901      	ldr	r1, [sp, #4]
2002200e:	bf38      	it	cc
20022010:	1a9b      	subcc	r3, r3, r2
20022012:	4299      	cmp	r1, r3
20022014:	d801      	bhi.n	2002201a <HAL_Delay_us2_+0x3a>
20022016:	b003      	add	sp, #12
20022018:	bd30      	pop	{r4, r5, pc}
2002201a:	4611      	mov	r1, r2
2002201c:	e7ee      	b.n	20021ffc <HAL_Delay_us2_+0x1c>

2002201e <HAL_Delay_us>:
2002201e:	4603      	mov	r3, r0
20022020:	b570      	push	{r4, r5, r6, lr}
20022022:	b1b8      	cbz	r0, 20022054 <HAL_Delay_us+0x36>
20022024:	f242 7510 	movw	r5, #10000	@ 0x2710
20022028:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
2002202c:	42ab      	cmp	r3, r5
2002202e:	bf84      	itt	hi
20022030:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
20022034:	f242 7310 	movwhi	r3, #10000	@ 0x2710
20022038:	6932      	ldr	r2, [r6, #16]
2002203a:	bf98      	it	ls
2002203c:	2400      	movls	r4, #0
2002203e:	4618      	mov	r0, r3
20022040:	bf88      	it	hi
20022042:	3c10      	subhi	r4, #16
20022044:	07d3      	lsls	r3, r2, #31
20022046:	d408      	bmi.n	2002205a <HAL_Delay_us+0x3c>
20022048:	f7ff ff8a 	bl	20021f60 <HAL_Delay_us_>
2002204c:	4623      	mov	r3, r4
2002204e:	2c00      	cmp	r4, #0
20022050:	d1ec      	bne.n	2002202c <HAL_Delay_us+0xe>
20022052:	e001      	b.n	20022058 <HAL_Delay_us+0x3a>
20022054:	f7ff ff84 	bl	20021f60 <HAL_Delay_us_>
20022058:	bd70      	pop	{r4, r5, r6, pc}
2002205a:	f7ff ffc1 	bl	20021fe0 <HAL_Delay_us2_>
2002205e:	e7f5      	b.n	2002204c <HAL_Delay_us+0x2e>

20022060 <WDT_IRQHandler>:
20022060:	4770      	bx	lr

20022062 <DBG_Trigger_IRQHandler>:
20022062:	4770      	bx	lr

20022064 <NMI_Handler>:
20022064:	b508      	push	{r3, lr}
20022066:	4b05      	ldr	r3, [pc, #20]	@ (2002207c <NMI_Handler+0x18>)
20022068:	6a1b      	ldr	r3, [r3, #32]
2002206a:	005b      	lsls	r3, r3, #1
2002206c:	d502      	bpl.n	20022074 <NMI_Handler+0x10>
2002206e:	f7ff fff8 	bl	20022062 <DBG_Trigger_IRQHandler>
20022072:	bd08      	pop	{r3, pc}
20022074:	f7ff fff4 	bl	20022060 <WDT_IRQHandler>
20022078:	e7fb      	b.n	20022072 <NMI_Handler+0xe>
2002207a:	bf00      	nop
2002207c:	5000b000 	.word	0x5000b000

20022080 <HAL_AES_run_help>:
20022080:	b510      	push	{r4, lr}
20022082:	f101 4470 	add.w	r4, r1, #4026531840	@ 0xf0000000
20022086:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
2002208a:	4c0e      	ldr	r4, [pc, #56]	@ (200220c4 <HAL_AES_run_help+0x44>)
2002208c:	bf38      	it	cc
2002208e:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20022092:	6161      	str	r1, [r4, #20]
20022094:	f102 4170 	add.w	r1, r2, #4026531840	@ 0xf0000000
20022098:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
2002209c:	f103 030f 	add.w	r3, r3, #15
200220a0:	ea4f 1323 	mov.w	r3, r3, asr #4
200220a4:	bf38      	it	cc
200220a6:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
200220aa:	61a2      	str	r2, [r4, #24]
200220ac:	61e3      	str	r3, [r4, #28]
200220ae:	6923      	ldr	r3, [r4, #16]
200220b0:	b108      	cbz	r0, 200220b6 <HAL_AES_run_help+0x36>
200220b2:	ea43 13c0 	orr.w	r3, r3, r0, lsl #7
200220b6:	4a03      	ldr	r2, [pc, #12]	@ (200220c4 <HAL_AES_run_help+0x44>)
200220b8:	6123      	str	r3, [r4, #16]
200220ba:	6813      	ldr	r3, [r2, #0]
200220bc:	f043 0301 	orr.w	r3, r3, #1
200220c0:	6013      	str	r3, [r2, #0]
200220c2:	bd10      	pop	{r4, pc}
200220c4:	5000d000 	.word	0x5000d000

200220c8 <HAL_HASH_run_help.isra.0>:
200220c8:	f100 4370 	add.w	r3, r0, #4026531840	@ 0xf0000000
200220cc:	b510      	push	{r4, lr}
200220ce:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
200220d2:	4c09      	ldr	r4, [pc, #36]	@ (200220f8 <HAL_HASH_run_help.isra.0+0x30>)
200220d4:	bf38      	it	cc
200220d6:	f100 40a0 	addcc.w	r0, r0, #1342177280	@ 0x50000000
200220da:	6560      	str	r0, [r4, #84]	@ 0x54
200220dc:	65a1      	str	r1, [r4, #88]	@ 0x58
200220de:	b11a      	cbz	r2, 200220e8 <HAL_HASH_run_help.isra.0+0x20>
200220e0:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200220e2:	f043 0308 	orr.w	r3, r3, #8
200220e6:	6523      	str	r3, [r4, #80]	@ 0x50
200220e8:	6d21      	ldr	r1, [r4, #80]	@ 0x50
200220ea:	4804      	ldr	r0, [pc, #16]	@ (200220fc <HAL_HASH_run_help.isra.0+0x34>)
200220ec:	f000 fd81 	bl	20022bf2 <HAL_DBG_printf>
200220f0:	2304      	movs	r3, #4
200220f2:	6023      	str	r3, [r4, #0]
200220f4:	bd10      	pop	{r4, pc}
200220f6:	bf00      	nop
200220f8:	5000d000 	.word	0x5000d000
200220fc:	2002ab26 	.word	0x2002ab26

20022100 <HAL_AES_reset>:
20022100:	2202      	movs	r2, #2
20022102:	2000      	movs	r0, #0
20022104:	4b01      	ldr	r3, [pc, #4]	@ (2002210c <HAL_AES_reset+0xc>)
20022106:	601a      	str	r2, [r3, #0]
20022108:	6018      	str	r0, [r3, #0]
2002210a:	4770      	bx	lr
2002210c:	5000d000 	.word	0x5000d000

20022110 <HAL_AES_init>:
20022110:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022112:	461f      	mov	r7, r3
20022114:	4b1e      	ldr	r3, [pc, #120]	@ (20022190 <HAL_AES_init+0x80>)
20022116:	4604      	mov	r4, r0
20022118:	685b      	ldr	r3, [r3, #4]
2002211a:	4616      	mov	r6, r2
2002211c:	07db      	lsls	r3, r3, #31
2002211e:	d501      	bpl.n	20022124 <HAL_AES_init+0x14>
20022120:	f7ff ffee 	bl	20022100 <HAL_AES_reset>
20022124:	fab4 f084 	clz	r0, r4
20022128:	2918      	cmp	r1, #24
2002212a:	ea4f 1050 	mov.w	r0, r0, lsr #5
2002212e:	ea4f 1540 	mov.w	r5, r0, lsl #5
20022132:	d01c      	beq.n	2002216e <HAL_AES_init+0x5e>
20022134:	2920      	cmp	r1, #32
20022136:	d01c      	beq.n	20022172 <HAL_AES_init+0x62>
20022138:	2910      	cmp	r1, #16
2002213a:	d125      	bne.n	20022188 <HAL_AES_init+0x78>
2002213c:	2300      	movs	r3, #0
2002213e:	b164      	cbz	r4, 2002215a <HAL_AES_init+0x4a>
20022140:	4620      	mov	r0, r4
20022142:	4a14      	ldr	r2, [pc, #80]	@ (20022194 <HAL_AES_init+0x84>)
20022144:	f021 0103 	bic.w	r1, r1, #3
20022148:	4421      	add	r1, r4
2002214a:	1b12      	subs	r2, r2, r4
2002214c:	1814      	adds	r4, r2, r0
2002214e:	f850 cb04 	ldr.w	ip, [r0], #4
20022152:	4281      	cmp	r1, r0
20022154:	f8c4 c000 	str.w	ip, [r4]
20022158:	d1f8      	bne.n	2002214c <HAL_AES_init+0x3c>
2002215a:	ea47 0005 	orr.w	r0, r7, r5
2002215e:	ea40 00c3 	orr.w	r0, r0, r3, lsl #3
20022162:	4b0b      	ldr	r3, [pc, #44]	@ (20022190 <HAL_AES_init+0x80>)
20022164:	6118      	str	r0, [r3, #16]
20022166:	b107      	cbz	r7, 2002216a <HAL_AES_init+0x5a>
20022168:	b92e      	cbnz	r6, 20022176 <HAL_AES_init+0x66>
2002216a:	2000      	movs	r0, #0
2002216c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002216e:	2301      	movs	r3, #1
20022170:	e7e5      	b.n	2002213e <HAL_AES_init+0x2e>
20022172:	2302      	movs	r3, #2
20022174:	e7e3      	b.n	2002213e <HAL_AES_init+0x2e>
20022176:	6832      	ldr	r2, [r6, #0]
20022178:	621a      	str	r2, [r3, #32]
2002217a:	6872      	ldr	r2, [r6, #4]
2002217c:	625a      	str	r2, [r3, #36]	@ 0x24
2002217e:	68b2      	ldr	r2, [r6, #8]
20022180:	629a      	str	r2, [r3, #40]	@ 0x28
20022182:	68f2      	ldr	r2, [r6, #12]
20022184:	62da      	str	r2, [r3, #44]	@ 0x2c
20022186:	e7f0      	b.n	2002216a <HAL_AES_init+0x5a>
20022188:	f04f 30ff 	mov.w	r0, #4294967295
2002218c:	e7ee      	b.n	2002216c <HAL_AES_init+0x5c>
2002218e:	bf00      	nop
20022190:	5000d000 	.word	0x5000d000
20022194:	5000d030 	.word	0x5000d030

20022198 <HAL_AES_run>:
20022198:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002219a:	2708      	movs	r7, #8
2002219c:	4e17      	ldr	r6, [pc, #92]	@ (200221fc <HAL_AES_run+0x64>)
2002219e:	4614      	mov	r4, r2
200221a0:	461d      	mov	r5, r3
200221a2:	f8c6 7088 	str.w	r7, [r6, #136]	@ 0x88
200221a6:	f3bf 8f4f 	dsb	sy
200221aa:	f3bf 8f6f 	isb	sy
200221ae:	2700      	movs	r7, #0
200221b0:	4e13      	ldr	r6, [pc, #76]	@ (20022200 <HAL_AES_run+0x68>)
200221b2:	60f7      	str	r7, [r6, #12]
200221b4:	f7ff ff64 	bl	20022080 <HAL_AES_run_help>
200221b8:	6873      	ldr	r3, [r6, #4]
200221ba:	07db      	lsls	r3, r3, #31
200221bc:	d4fc      	bmi.n	200221b8 <HAL_AES_run+0x20>
200221be:	68b0      	ldr	r0, [r6, #8]
200221c0:	f000 0006 	and.w	r0, r0, #6
200221c4:	3800      	subs	r0, #0
200221c6:	bf18      	it	ne
200221c8:	2001      	movne	r0, #1
200221ca:	f1b4 4fc0 	cmp.w	r4, #1610612736	@ 0x60000000
200221ce:	d313      	bcc.n	200221f8 <HAL_AES_run+0x60>
200221d0:	2d00      	cmp	r5, #0
200221d2:	dd11      	ble.n	200221f8 <HAL_AES_run+0x60>
200221d4:	f004 031f 	and.w	r3, r4, #31
200221d8:	442b      	add	r3, r5
200221da:	f3bf 8f4f 	dsb	sy
200221de:	4622      	mov	r2, r4
200221e0:	4c08      	ldr	r4, [pc, #32]	@ (20022204 <HAL_AES_run+0x6c>)
200221e2:	4413      	add	r3, r2
200221e4:	f8c4 225c 	str.w	r2, [r4, #604]	@ 0x25c
200221e8:	3220      	adds	r2, #32
200221ea:	1a99      	subs	r1, r3, r2
200221ec:	2900      	cmp	r1, #0
200221ee:	dcf9      	bgt.n	200221e4 <HAL_AES_run+0x4c>
200221f0:	f3bf 8f4f 	dsb	sy
200221f4:	f3bf 8f6f 	isb	sy
200221f8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200221fa:	bf00      	nop
200221fc:	e000e100 	.word	0xe000e100
20022200:	5000d000 	.word	0x5000d000
20022204:	e000ed00 	.word	0xe000ed00

20022208 <HAL_HASH_run>:
20022208:	b510      	push	{r4, lr}
2002220a:	2408      	movs	r4, #8
2002220c:	4b0b      	ldr	r3, [pc, #44]	@ (2002223c <HAL_HASH_run+0x34>)
2002220e:	f8c3 4088 	str.w	r4, [r3, #136]	@ 0x88
20022212:	f3bf 8f4f 	dsb	sy
20022216:	f3bf 8f6f 	isb	sy
2002221a:	f7ff ff55 	bl	200220c8 <HAL_HASH_run_help.isra.0>
2002221e:	4b08      	ldr	r3, [pc, #32]	@ (20022240 <HAL_HASH_run+0x38>)
20022220:	685a      	ldr	r2, [r3, #4]
20022222:	0752      	lsls	r2, r2, #29
20022224:	d4fc      	bmi.n	20022220 <HAL_HASH_run+0x18>
20022226:	689a      	ldr	r2, [r3, #8]
20022228:	f002 0238 	and.w	r2, r2, #56	@ 0x38
2002222c:	609a      	str	r2, [r3, #8]
2002222e:	6898      	ldr	r0, [r3, #8]
20022230:	f000 0030 	and.w	r0, r0, #48	@ 0x30
20022234:	3800      	subs	r0, #0
20022236:	bf18      	it	ne
20022238:	2001      	movne	r0, #1
2002223a:	bd10      	pop	{r4, pc}
2002223c:	e000e100 	.word	0xe000e100
20022240:	5000d000 	.word	0x5000d000

20022244 <HAL_HASH_reset>:
20022244:	2208      	movs	r2, #8
20022246:	2000      	movs	r0, #0
20022248:	4b01      	ldr	r3, [pc, #4]	@ (20022250 <HAL_HASH_reset+0xc>)
2002224a:	601a      	str	r2, [r3, #0]
2002224c:	6018      	str	r0, [r3, #0]
2002224e:	4770      	bx	lr
20022250:	5000d000 	.word	0x5000d000

20022254 <HAL_HASH_init>:
20022254:	0693      	lsls	r3, r2, #26
20022256:	b570      	push	{r4, r5, r6, lr}
20022258:	4606      	mov	r6, r0
2002225a:	460c      	mov	r4, r1
2002225c:	4615      	mov	r5, r2
2002225e:	d11c      	bne.n	2002229a <HAL_HASH_init+0x46>
20022260:	2903      	cmp	r1, #3
20022262:	d81a      	bhi.n	2002229a <HAL_HASH_init+0x46>
20022264:	f7ff ffee 	bl	20022244 <HAL_HASH_reset>
20022268:	b13e      	cbz	r6, 2002227a <HAL_HASH_init+0x26>
2002226a:	4b0d      	ldr	r3, [pc, #52]	@ (200222a0 <HAL_HASH_init+0x4c>)
2002226c:	480d      	ldr	r0, [pc, #52]	@ (200222a4 <HAL_HASH_init+0x50>)
2002226e:	5c5a      	ldrb	r2, [r3, r1]
20022270:	4631      	mov	r1, r6
20022272:	f008 fba9 	bl	2002a9c8 <memcpy>
20022276:	f044 0420 	orr.w	r4, r4, #32
2002227a:	4b0b      	ldr	r3, [pc, #44]	@ (200222a8 <HAL_HASH_init+0x54>)
2002227c:	f044 0180 	orr.w	r1, r4, #128	@ 0x80
20022280:	6519      	str	r1, [r3, #80]	@ 0x50
20022282:	b11d      	cbz	r5, 2002228c <HAL_HASH_init+0x38>
20022284:	f8c3 509c 	str.w	r5, [r3, #156]	@ 0x9c
20022288:	f444 71c0 	orr.w	r1, r4, #384	@ 0x180
2002228c:	4807      	ldr	r0, [pc, #28]	@ (200222ac <HAL_HASH_init+0x58>)
2002228e:	462a      	mov	r2, r5
20022290:	6519      	str	r1, [r3, #80]	@ 0x50
20022292:	f000 fcae 	bl	20022bf2 <HAL_DBG_printf>
20022296:	2000      	movs	r0, #0
20022298:	bd70      	pop	{r4, r5, r6, pc}
2002229a:	f04f 30ff 	mov.w	r0, #4294967295
2002229e:	e7fb      	b.n	20022298 <HAL_HASH_init+0x44>
200222a0:	2002b9bc 	.word	0x2002b9bc
200222a4:	5000d05c 	.word	0x5000d05c
200222a8:	5000d000 	.word	0x5000d000
200222ac:	2002ab39 	.word	0x2002ab39

200222b0 <HAL_HASH_result>:
200222b0:	b510      	push	{r4, lr}
200222b2:	4c08      	ldr	r4, [pc, #32]	@ (200222d4 <HAL_HASH_result+0x24>)
200222b4:	4a08      	ldr	r2, [pc, #32]	@ (200222d8 <HAL_HASH_result+0x28>)
200222b6:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200222b8:	f104 017c 	add.w	r1, r4, #124	@ 0x7c
200222bc:	f003 0307 	and.w	r3, r3, #7
200222c0:	5cd2      	ldrb	r2, [r2, r3]
200222c2:	f008 fb81 	bl	2002a9c8 <memcpy>
200222c6:	f8d4 10a4 	ldr.w	r1, [r4, #164]	@ 0xa4
200222ca:	4804      	ldr	r0, [pc, #16]	@ (200222dc <HAL_HASH_result+0x2c>)
200222cc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200222d0:	f000 bc8f 	b.w	20022bf2 <HAL_DBG_printf>
200222d4:	5000d000 	.word	0x5000d000
200222d8:	2002b9bc 	.word	0x2002b9bc
200222dc:	2002ab6d 	.word	0x2002ab6d

200222e0 <HAL_NVIC_SetPriority>:
200222e0:	2a0f      	cmp	r2, #15
200222e2:	b530      	push	{r4, r5, lr}
200222e4:	d900      	bls.n	200222e8 <HAL_NVIC_SetPriority+0x8>
200222e6:	e7fe      	b.n	200222e6 <HAL_NVIC_SetPriority+0x6>
200222e8:	290f      	cmp	r1, #15
200222ea:	d900      	bls.n	200222ee <HAL_NVIC_SetPriority+0xe>
200222ec:	e7fe      	b.n	200222ec <HAL_NVIC_SetPriority+0xc>
200222ee:	4b15      	ldr	r3, [pc, #84]	@ (20022344 <HAL_NVIC_SetPriority+0x64>)
200222f0:	68dc      	ldr	r4, [r3, #12]
200222f2:	f3c4 2402 	ubfx	r4, r4, #8, #3
200222f6:	f1c4 0307 	rsb	r3, r4, #7
200222fa:	1ce5      	adds	r5, r4, #3
200222fc:	2b03      	cmp	r3, #3
200222fe:	bf28      	it	cs
20022300:	2303      	movcs	r3, #3
20022302:	2d06      	cmp	r5, #6
20022304:	f04f 35ff 	mov.w	r5, #4294967295
20022308:	bf94      	ite	ls
2002230a:	2400      	movls	r4, #0
2002230c:	3c04      	subhi	r4, #4
2002230e:	fa05 f303 	lsl.w	r3, r5, r3
20022312:	ea21 0303 	bic.w	r3, r1, r3
20022316:	40a5      	lsls	r5, r4
20022318:	ea22 0205 	bic.w	r2, r2, r5
2002231c:	40a3      	lsls	r3, r4
2002231e:	2800      	cmp	r0, #0
20022320:	ea43 0302 	orr.w	r3, r3, r2
20022324:	bfac      	ite	ge
20022326:	f100 4060 	addge.w	r0, r0, #3758096384	@ 0xe0000000
2002232a:	4a07      	ldrlt	r2, [pc, #28]	@ (20022348 <HAL_NVIC_SetPriority+0x68>)
2002232c:	ea4f 1343 	mov.w	r3, r3, lsl #5
20022330:	b2db      	uxtb	r3, r3
20022332:	bfab      	itete	ge
20022334:	f500 4061 	addge.w	r0, r0, #57600	@ 0xe100
20022338:	f000 000f 	andlt.w	r0, r0, #15
2002233c:	f880 3300 	strbge.w	r3, [r0, #768]	@ 0x300
20022340:	5413      	strblt	r3, [r2, r0]
20022342:	bd30      	pop	{r4, r5, pc}
20022344:	e000ed00 	.word	0xe000ed00
20022348:	e000ed14 	.word	0xe000ed14

2002234c <HAL_NVIC_EnableIRQ>:
2002234c:	2800      	cmp	r0, #0
2002234e:	da00      	bge.n	20022352 <HAL_NVIC_EnableIRQ+0x6>
20022350:	e7fe      	b.n	20022350 <HAL_NVIC_EnableIRQ+0x4>
20022352:	2301      	movs	r3, #1
20022354:	0941      	lsrs	r1, r0, #5
20022356:	4a03      	ldr	r2, [pc, #12]	@ (20022364 <HAL_NVIC_EnableIRQ+0x18>)
20022358:	f000 001f 	and.w	r0, r0, #31
2002235c:	4083      	lsls	r3, r0
2002235e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
20022362:	4770      	bx	lr
20022364:	e000e100 	.word	0xe000e100

20022368 <HAL_NVIC_DisableIRQ>:
20022368:	2800      	cmp	r0, #0
2002236a:	da00      	bge.n	2002236e <HAL_NVIC_DisableIRQ+0x6>
2002236c:	e7fe      	b.n	2002236c <HAL_NVIC_DisableIRQ+0x4>
2002236e:	2201      	movs	r2, #1
20022370:	4906      	ldr	r1, [pc, #24]	@ (2002238c <HAL_NVIC_DisableIRQ+0x24>)
20022372:	0943      	lsrs	r3, r0, #5
20022374:	f000 001f 	and.w	r0, r0, #31
20022378:	4082      	lsls	r2, r0
2002237a:	3320      	adds	r3, #32
2002237c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20022380:	f3bf 8f4f 	dsb	sy
20022384:	f3bf 8f6f 	isb	sy
20022388:	4770      	bx	lr
2002238a:	bf00      	nop
2002238c:	e000e100 	.word	0xe000e100

20022390 <DMA_Init>:
20022390:	2302      	movs	r3, #2
20022392:	b530      	push	{r4, r5, lr}
20022394:	6a42      	ldr	r2, [r0, #36]	@ 0x24
20022396:	f880 302d 	strb.w	r3, [r0, #45]	@ 0x2d
2002239a:	6803      	ldr	r3, [r0, #0]
2002239c:	611a      	str	r2, [r3, #16]
2002239e:	e9d0 3402 	ldrd	r3, r4, [r0, #8]
200223a2:	4323      	orrs	r3, r4
200223a4:	6904      	ldr	r4, [r0, #16]
200223a6:	6801      	ldr	r1, [r0, #0]
200223a8:	4323      	orrs	r3, r4
200223aa:	6944      	ldr	r4, [r0, #20]
200223ac:	680a      	ldr	r2, [r1, #0]
200223ae:	4323      	orrs	r3, r4
200223b0:	6984      	ldr	r4, [r0, #24]
200223b2:	f36f 120e 	bfc	r2, #4, #11
200223b6:	4323      	orrs	r3, r4
200223b8:	69c4      	ldr	r4, [r0, #28]
200223ba:	4323      	orrs	r3, r4
200223bc:	6a04      	ldr	r4, [r0, #32]
200223be:	4323      	orrs	r3, r4
200223c0:	4313      	orrs	r3, r2
200223c2:	600b      	str	r3, [r1, #0]
200223c4:	6883      	ldr	r3, [r0, #8]
200223c6:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200223ca:	d018      	beq.n	200223fe <DMA_Init+0x6e>
200223cc:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
200223ce:	6c82      	ldr	r2, [r0, #72]	@ 0x48
200223d0:	f3c1 0387 	ubfx	r3, r1, #2, #8
200223d4:	06c9      	lsls	r1, r1, #27
200223d6:	d41b      	bmi.n	20022410 <DMA_Init+0x80>
200223d8:	243f      	movs	r4, #63	@ 0x3f
200223da:	f003 0307 	and.w	r3, r3, #7
200223de:	f8d2 10a8 	ldr.w	r1, [r2, #168]	@ 0xa8
200223e2:	00db      	lsls	r3, r3, #3
200223e4:	409c      	lsls	r4, r3
200223e6:	ea21 0104 	bic.w	r1, r1, r4
200223ea:	f8c2 10a8 	str.w	r1, [r2, #168]	@ 0xa8
200223ee:	6c81      	ldr	r1, [r0, #72]	@ 0x48
200223f0:	6842      	ldr	r2, [r0, #4]
200223f2:	f8d1 40a8 	ldr.w	r4, [r1, #168]	@ 0xa8
200223f6:	409a      	lsls	r2, r3
200223f8:	4322      	orrs	r2, r4
200223fa:	f8c1 20a8 	str.w	r2, [r1, #168]	@ 0xa8
200223fe:	6982      	ldr	r2, [r0, #24]
20022400:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
20022404:	d018      	beq.n	20022438 <DMA_Init+0xa8>
20022406:	f5b2 6f00 	cmp.w	r2, #2048	@ 0x800
2002240a:	d01f      	beq.n	2002244c <DMA_Init+0xbc>
2002240c:	b1aa      	cbz	r2, 2002243a <DMA_Init+0xaa>
2002240e:	e7fe      	b.n	2002240e <DMA_Init+0x7e>
20022410:	243f      	movs	r4, #63	@ 0x3f
20022412:	f003 0303 	and.w	r3, r3, #3
20022416:	f8d2 10ac 	ldr.w	r1, [r2, #172]	@ 0xac
2002241a:	00db      	lsls	r3, r3, #3
2002241c:	409c      	lsls	r4, r3
2002241e:	ea21 0104 	bic.w	r1, r1, r4
20022422:	f8c2 10ac 	str.w	r1, [r2, #172]	@ 0xac
20022426:	6c81      	ldr	r1, [r0, #72]	@ 0x48
20022428:	6842      	ldr	r2, [r0, #4]
2002242a:	f8d1 40ac 	ldr.w	r4, [r1, #172]	@ 0xac
2002242e:	409a      	lsls	r2, r3
20022430:	4322      	orrs	r2, r4
20022432:	f8c1 20ac 	str.w	r2, [r1, #172]	@ 0xac
20022436:	e7e2      	b.n	200223fe <DMA_Init+0x6e>
20022438:	2201      	movs	r2, #1
2002243a:	6943      	ldr	r3, [r0, #20]
2002243c:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20022440:	d006      	beq.n	20022450 <DMA_Init+0xc0>
20022442:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
20022446:	d02b      	beq.n	200224a0 <DMA_Init+0x110>
20022448:	b11b      	cbz	r3, 20022452 <DMA_Init+0xc2>
2002244a:	e7fe      	b.n	2002244a <DMA_Init+0xba>
2002244c:	2202      	movs	r2, #2
2002244e:	e7f4      	b.n	2002243a <DMA_Init+0xaa>
20022450:	2301      	movs	r3, #1
20022452:	6901      	ldr	r1, [r0, #16]
20022454:	f1a1 0480 	sub.w	r4, r1, #128	@ 0x80
20022458:	4261      	negs	r1, r4
2002245a:	4161      	adcs	r1, r4
2002245c:	68c4      	ldr	r4, [r0, #12]
2002245e:	f1a4 0540 	sub.w	r5, r4, #64	@ 0x40
20022462:	426c      	negs	r4, r5
20022464:	416c      	adcs	r4, r5
20022466:	6885      	ldr	r5, [r0, #8]
20022468:	2d10      	cmp	r5, #16
2002246a:	bf1f      	itttt	ne
2002246c:	f880 1065 	strbne.w	r1, [r0, #101]	@ 0x65
20022470:	4619      	movne	r1, r3
20022472:	4613      	movne	r3, r2
20022474:	460a      	movne	r2, r1
20022476:	f880 3067 	strb.w	r3, [r0, #103]	@ 0x67
2002247a:	f880 2066 	strb.w	r2, [r0, #102]	@ 0x66
2002247e:	f04f 0300 	mov.w	r3, #0
20022482:	f04f 0201 	mov.w	r2, #1
20022486:	6443      	str	r3, [r0, #68]	@ 0x44
20022488:	bf06      	itte	eq
2002248a:	f880 4065 	strbeq.w	r4, [r0, #101]	@ 0x65
2002248e:	f880 1064 	strbeq.w	r1, [r0, #100]	@ 0x64
20022492:	f880 4064 	strbne.w	r4, [r0, #100]	@ 0x64
20022496:	f880 202d 	strb.w	r2, [r0, #45]	@ 0x2d
2002249a:	f880 302c 	strb.w	r3, [r0, #44]	@ 0x2c
2002249e:	bd30      	pop	{r4, r5, pc}
200224a0:	2302      	movs	r3, #2
200224a2:	e7d6      	b.n	20022452 <DMA_Init+0xc2>

200224a4 <DMA_AllocChannel>:
200224a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200224a6:	4b2c      	ldr	r3, [pc, #176]	@ (20022558 <DMA_AllocChannel+0xb4>)
200224a8:	6802      	ldr	r2, [r0, #0]
200224aa:	4413      	add	r3, r2
200224ac:	2ba0      	cmp	r3, #160	@ 0xa0
200224ae:	d904      	bls.n	200224ba <DMA_AllocChannel+0x16>
200224b0:	4b2a      	ldr	r3, [pc, #168]	@ (2002255c <DMA_AllocChannel+0xb8>)
200224b2:	4413      	add	r3, r2
200224b4:	2ba0      	cmp	r3, #160	@ 0xa0
200224b6:	d90f      	bls.n	200224d8 <DMA_AllocChannel+0x34>
200224b8:	e7fe      	b.n	200224b8 <DMA_AllocChannel+0x14>
200224ba:	2632      	movs	r6, #50	@ 0x32
200224bc:	f8df c0a8 	ldr.w	ip, [pc, #168]	@ 20022568 <DMA_AllocChannel+0xc4>
200224c0:	4b27      	ldr	r3, [pc, #156]	@ (20022560 <DMA_AllocChannel+0xbc>)
200224c2:	f3ef 8710 	mrs	r7, PRIMASK
200224c6:	2201      	movs	r2, #1
200224c8:	f382 8810 	msr	PRIMASK, r2
200224cc:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
200224ce:	2d1f      	cmp	r5, #31
200224d0:	ea4f 0495 	mov.w	r4, r5, lsr #2
200224d4:	d905      	bls.n	200224e2 <DMA_AllocChannel+0x3e>
200224d6:	e7fe      	b.n	200224d6 <DMA_AllocChannel+0x32>
200224d8:	2602      	movs	r6, #2
200224da:	f8df c090 	ldr.w	ip, [pc, #144]	@ 2002256c <DMA_AllocChannel+0xc8>
200224de:	4b21      	ldr	r3, [pc, #132]	@ (20022564 <DMA_AllocChannel+0xc0>)
200224e0:	e7ef      	b.n	200224c2 <DMA_AllocChannel+0x1e>
200224e2:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
200224e6:	f895 e004 	ldrb.w	lr, [r5, #4]
200224ea:	f1be 0f00 	cmp.w	lr, #0
200224ee:	d02e      	beq.n	2002254e <DMA_AllocChannel+0xaa>
200224f0:	f853 2034 	ldr.w	r2, [r3, r4, lsl #3]
200224f4:	4282      	cmp	r2, r0
200224f6:	d103      	bne.n	20022500 <DMA_AllocChannel+0x5c>
200224f8:	f387 8810 	msr	PRIMASK, r7
200224fc:	2002      	movs	r0, #2
200224fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022500:	2200      	movs	r2, #0
20022502:	791c      	ldrb	r4, [r3, #4]
20022504:	461d      	mov	r5, r3
20022506:	b9e4      	cbnz	r4, 20022542 <DMA_AllocChannel+0x9e>
20022508:	2301      	movs	r3, #1
2002250a:	712b      	strb	r3, [r5, #4]
2002250c:	2314      	movs	r3, #20
2002250e:	fb03 c302 	mla	r3, r3, r2, ip
20022512:	4416      	add	r6, r2
20022514:	0092      	lsls	r2, r2, #2
20022516:	b274      	sxtb	r4, r6
20022518:	6003      	str	r3, [r0, #0]
2002251a:	64c2      	str	r2, [r0, #76]	@ 0x4c
2002251c:	f387 8810 	msr	PRIMASK, r7
20022520:	b121      	cbz	r1, 2002252c <DMA_AllocChannel+0x88>
20022522:	682b      	ldr	r3, [r5, #0]
20022524:	4283      	cmp	r3, r0
20022526:	d001      	beq.n	2002252c <DMA_AllocChannel+0x88>
20022528:	f7ff ff32 	bl	20022390 <DMA_Init>
2002252c:	2200      	movs	r2, #0
2002252e:	6028      	str	r0, [r5, #0]
20022530:	4611      	mov	r1, r2
20022532:	4620      	mov	r0, r4
20022534:	f7ff fed4 	bl	200222e0 <HAL_NVIC_SetPriority>
20022538:	4620      	mov	r0, r4
2002253a:	f7ff ff07 	bl	2002234c <HAL_NVIC_EnableIRQ>
2002253e:	2000      	movs	r0, #0
20022540:	e7dd      	b.n	200224fe <DMA_AllocChannel+0x5a>
20022542:	3201      	adds	r2, #1
20022544:	2a08      	cmp	r2, #8
20022546:	f103 0308 	add.w	r3, r3, #8
2002254a:	d1da      	bne.n	20022502 <DMA_AllocChannel+0x5e>
2002254c:	e7d4      	b.n	200224f8 <DMA_AllocChannel+0x54>
2002254e:	4434      	add	r4, r6
20022550:	712a      	strb	r2, [r5, #4]
20022552:	b264      	sxtb	r4, r4
20022554:	e7e2      	b.n	2002251c <DMA_AllocChannel+0x78>
20022556:	bf00      	nop
20022558:	aff7eff8 	.word	0xaff7eff8
2002255c:	bfffeff8 	.word	0xbfffeff8
20022560:	20049f1c 	.word	0x20049f1c
20022564:	20049edc 	.word	0x20049edc
20022568:	50081008 	.word	0x50081008
2002256c:	40001008 	.word	0x40001008

20022570 <DMA_FreeChannel.isra.0>:
20022570:	b538      	push	{r3, r4, r5, lr}
20022572:	4a13      	ldr	r2, [pc, #76]	@ (200225c0 <DMA_FreeChannel.isra.0+0x50>)
20022574:	6c83      	ldr	r3, [r0, #72]	@ 0x48
20022576:	4293      	cmp	r3, r2
20022578:	d003      	beq.n	20022582 <DMA_FreeChannel.isra.0+0x12>
2002257a:	4a12      	ldr	r2, [pc, #72]	@ (200225c4 <DMA_FreeChannel.isra.0+0x54>)
2002257c:	4293      	cmp	r3, r2
2002257e:	d008      	beq.n	20022592 <DMA_FreeChannel.isra.0+0x22>
20022580:	e7fe      	b.n	20022580 <DMA_FreeChannel.isra.0+0x10>
20022582:	2132      	movs	r1, #50	@ 0x32
20022584:	4a10      	ldr	r2, [pc, #64]	@ (200225c8 <DMA_FreeChannel.isra.0+0x58>)
20022586:	6cc4      	ldr	r4, [r0, #76]	@ 0x4c
20022588:	2c1f      	cmp	r4, #31
2002258a:	ea4f 0394 	mov.w	r3, r4, lsr #2
2002258e:	d903      	bls.n	20022598 <DMA_FreeChannel.isra.0+0x28>
20022590:	e7fe      	b.n	20022590 <DMA_FreeChannel.isra.0+0x20>
20022592:	2102      	movs	r1, #2
20022594:	4a0d      	ldr	r2, [pc, #52]	@ (200225cc <DMA_FreeChannel.isra.0+0x5c>)
20022596:	e7f6      	b.n	20022586 <DMA_FreeChannel.isra.0+0x16>
20022598:	f3ef 8410 	mrs	r4, PRIMASK
2002259c:	2501      	movs	r5, #1
2002259e:	f385 8810 	msr	PRIMASK, r5
200225a2:	eb02 05c3 	add.w	r5, r2, r3, lsl #3
200225a6:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
200225aa:	4290      	cmp	r0, r2
200225ac:	d105      	bne.n	200225ba <DMA_FreeChannel.isra.0+0x4a>
200225ae:	1858      	adds	r0, r3, r1
200225b0:	b240      	sxtb	r0, r0
200225b2:	f7ff fed9 	bl	20022368 <HAL_NVIC_DisableIRQ>
200225b6:	2300      	movs	r3, #0
200225b8:	712b      	strb	r3, [r5, #4]
200225ba:	f384 8810 	msr	PRIMASK, r4
200225be:	bd38      	pop	{r3, r4, r5, pc}
200225c0:	50081000 	.word	0x50081000
200225c4:	40001000 	.word	0x40001000
200225c8:	20049f1c 	.word	0x20049f1c
200225cc:	20049edc 	.word	0x20049edc

200225d0 <HAL_DMA_Init>:
200225d0:	b538      	push	{r3, r4, r5, lr}
200225d2:	4604      	mov	r4, r0
200225d4:	2800      	cmp	r0, #0
200225d6:	d053      	beq.n	20022680 <HAL_DMA_Init+0xb0>
200225d8:	6883      	ldr	r3, [r0, #8]
200225da:	f033 0210 	bics.w	r2, r3, #16
200225de:	d003      	beq.n	200225e8 <HAL_DMA_Init+0x18>
200225e0:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200225e4:	d000      	beq.n	200225e8 <HAL_DMA_Init+0x18>
200225e6:	e7fe      	b.n	200225e6 <HAL_DMA_Init+0x16>
200225e8:	68e3      	ldr	r3, [r4, #12]
200225ea:	f033 0340 	bics.w	r3, r3, #64	@ 0x40
200225ee:	d000      	beq.n	200225f2 <HAL_DMA_Init+0x22>
200225f0:	e7fe      	b.n	200225f0 <HAL_DMA_Init+0x20>
200225f2:	6923      	ldr	r3, [r4, #16]
200225f4:	f033 0380 	bics.w	r3, r3, #128	@ 0x80
200225f8:	d000      	beq.n	200225fc <HAL_DMA_Init+0x2c>
200225fa:	e7fe      	b.n	200225fa <HAL_DMA_Init+0x2a>
200225fc:	6963      	ldr	r3, [r4, #20]
200225fe:	f433 7280 	bics.w	r2, r3, #256	@ 0x100
20022602:	d003      	beq.n	2002260c <HAL_DMA_Init+0x3c>
20022604:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
20022608:	d000      	beq.n	2002260c <HAL_DMA_Init+0x3c>
2002260a:	e7fe      	b.n	2002260a <HAL_DMA_Init+0x3a>
2002260c:	69a3      	ldr	r3, [r4, #24]
2002260e:	f433 6280 	bics.w	r2, r3, #1024	@ 0x400
20022612:	d003      	beq.n	2002261c <HAL_DMA_Init+0x4c>
20022614:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
20022618:	d000      	beq.n	2002261c <HAL_DMA_Init+0x4c>
2002261a:	e7fe      	b.n	2002261a <HAL_DMA_Init+0x4a>
2002261c:	69e3      	ldr	r3, [r4, #28]
2002261e:	f033 0320 	bics.w	r3, r3, #32
20022622:	d000      	beq.n	20022626 <HAL_DMA_Init+0x56>
20022624:	e7fe      	b.n	20022624 <HAL_DMA_Init+0x54>
20022626:	6a23      	ldr	r3, [r4, #32]
20022628:	f433 5340 	bics.w	r3, r3, #12288	@ 0x3000
2002262c:	d000      	beq.n	20022630 <HAL_DMA_Init+0x60>
2002262e:	e7fe      	b.n	2002262e <HAL_DMA_Init+0x5e>
20022630:	6863      	ldr	r3, [r4, #4]
20022632:	2b3f      	cmp	r3, #63	@ 0x3f
20022634:	d900      	bls.n	20022638 <HAL_DMA_Init+0x68>
20022636:	e7fe      	b.n	20022636 <HAL_DMA_Init+0x66>
20022638:	6822      	ldr	r2, [r4, #0]
2002263a:	4b13      	ldr	r3, [pc, #76]	@ (20022688 <HAL_DMA_Init+0xb8>)
2002263c:	4413      	add	r3, r2
2002263e:	2b8c      	cmp	r3, #140	@ 0x8c
20022640:	d813      	bhi.n	2002266a <HAL_DMA_Init+0x9a>
20022642:	2214      	movs	r2, #20
20022644:	fbb3 f3f2 	udiv	r3, r3, r2
20022648:	009b      	lsls	r3, r3, #2
2002264a:	64e3      	str	r3, [r4, #76]	@ 0x4c
2002264c:	4b0f      	ldr	r3, [pc, #60]	@ (2002268c <HAL_DMA_Init+0xbc>)
2002264e:	64a3      	str	r3, [r4, #72]	@ 0x48
20022650:	2100      	movs	r1, #0
20022652:	4620      	mov	r0, r4
20022654:	f7ff ff26 	bl	200224a4 <DMA_AllocChannel>
20022658:	4605      	mov	r5, r0
2002265a:	b998      	cbnz	r0, 20022684 <HAL_DMA_Init+0xb4>
2002265c:	4620      	mov	r0, r4
2002265e:	f7ff fe97 	bl	20022390 <DMA_Init>
20022662:	f7ff ff85 	bl	20022570 <DMA_FreeChannel.isra.0>
20022666:	4628      	mov	r0, r5
20022668:	bd38      	pop	{r3, r4, r5, pc}
2002266a:	4b09      	ldr	r3, [pc, #36]	@ (20022690 <HAL_DMA_Init+0xc0>)
2002266c:	4413      	add	r3, r2
2002266e:	2b8c      	cmp	r3, #140	@ 0x8c
20022670:	d8ee      	bhi.n	20022650 <HAL_DMA_Init+0x80>
20022672:	2214      	movs	r2, #20
20022674:	fbb3 f3f2 	udiv	r3, r3, r2
20022678:	009b      	lsls	r3, r3, #2
2002267a:	64e3      	str	r3, [r4, #76]	@ 0x4c
2002267c:	4b05      	ldr	r3, [pc, #20]	@ (20022694 <HAL_DMA_Init+0xc4>)
2002267e:	e7e6      	b.n	2002264e <HAL_DMA_Init+0x7e>
20022680:	2501      	movs	r5, #1
20022682:	e7f0      	b.n	20022666 <HAL_DMA_Init+0x96>
20022684:	2502      	movs	r5, #2
20022686:	e7ee      	b.n	20022666 <HAL_DMA_Init+0x96>
20022688:	aff7eff8 	.word	0xaff7eff8
2002268c:	50081000 	.word	0x50081000
20022690:	bfffeff8 	.word	0xbfffeff8
20022694:	40001000 	.word	0x40001000

20022698 <HAL_DMA_DeInit>:
20022698:	b510      	push	{r4, lr}
2002269a:	4604      	mov	r4, r0
2002269c:	2800      	cmp	r0, #0
2002269e:	d051      	beq.n	20022744 <HAL_DMA_DeInit+0xac>
200226a0:	6802      	ldr	r2, [r0, #0]
200226a2:	6813      	ldr	r3, [r2, #0]
200226a4:	f023 0301 	bic.w	r3, r3, #1
200226a8:	6013      	str	r3, [r2, #0]
200226aa:	6802      	ldr	r2, [r0, #0]
200226ac:	4b26      	ldr	r3, [pc, #152]	@ (20022748 <HAL_DMA_DeInit+0xb0>)
200226ae:	4413      	add	r3, r2
200226b0:	2b8c      	cmp	r3, #140	@ 0x8c
200226b2:	d82f      	bhi.n	20022714 <HAL_DMA_DeInit+0x7c>
200226b4:	2114      	movs	r1, #20
200226b6:	fbb3 f3f1 	udiv	r3, r3, r1
200226ba:	009b      	lsls	r3, r3, #2
200226bc:	64c3      	str	r3, [r0, #76]	@ 0x4c
200226be:	4b23      	ldr	r3, [pc, #140]	@ (2002274c <HAL_DMA_DeInit+0xb4>)
200226c0:	64a3      	str	r3, [r4, #72]	@ 0x48
200226c2:	2300      	movs	r3, #0
200226c4:	6013      	str	r3, [r2, #0]
200226c6:	e9d4 1312 	ldrd	r1, r3, [r4, #72]	@ 0x48
200226ca:	f003 021c 	and.w	r2, r3, #28
200226ce:	2301      	movs	r3, #1
200226d0:	4093      	lsls	r3, r2
200226d2:	604b      	str	r3, [r1, #4]
200226d4:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200226d6:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
200226d8:	2b0f      	cmp	r3, #15
200226da:	ea4f 0293 	mov.w	r2, r3, lsr #2
200226de:	d824      	bhi.n	2002272a <HAL_DMA_DeInit+0x92>
200226e0:	203f      	movs	r0, #63	@ 0x3f
200226e2:	005b      	lsls	r3, r3, #1
200226e4:	f8d1 20a8 	ldr.w	r2, [r1, #168]	@ 0xa8
200226e8:	f003 0338 	and.w	r3, r3, #56	@ 0x38
200226ec:	fa00 f303 	lsl.w	r3, r0, r3
200226f0:	ea22 0303 	bic.w	r3, r2, r3
200226f4:	f8c1 30a8 	str.w	r3, [r1, #168]	@ 0xa8
200226f8:	4620      	mov	r0, r4
200226fa:	f7ff ff39 	bl	20022570 <DMA_FreeChannel.isra.0>
200226fe:	2000      	movs	r0, #0
20022700:	e9c4 000d 	strd	r0, r0, [r4, #52]	@ 0x34
20022704:	e9c4 000f 	strd	r0, r0, [r4, #60]	@ 0x3c
20022708:	6460      	str	r0, [r4, #68]	@ 0x44
2002270a:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
2002270e:	f884 002d 	strb.w	r0, [r4, #45]	@ 0x2d
20022712:	bd10      	pop	{r4, pc}
20022714:	4b0e      	ldr	r3, [pc, #56]	@ (20022750 <HAL_DMA_DeInit+0xb8>)
20022716:	4413      	add	r3, r2
20022718:	2b8c      	cmp	r3, #140	@ 0x8c
2002271a:	d8d2      	bhi.n	200226c2 <HAL_DMA_DeInit+0x2a>
2002271c:	2114      	movs	r1, #20
2002271e:	fbb3 f3f1 	udiv	r3, r3, r1
20022722:	009b      	lsls	r3, r3, #2
20022724:	64c3      	str	r3, [r0, #76]	@ 0x4c
20022726:	4b0b      	ldr	r3, [pc, #44]	@ (20022754 <HAL_DMA_DeInit+0xbc>)
20022728:	e7ca      	b.n	200226c0 <HAL_DMA_DeInit+0x28>
2002272a:	f002 0303 	and.w	r3, r2, #3
2002272e:	223f      	movs	r2, #63	@ 0x3f
20022730:	f8d1 00ac 	ldr.w	r0, [r1, #172]	@ 0xac
20022734:	00db      	lsls	r3, r3, #3
20022736:	fa02 f303 	lsl.w	r3, r2, r3
2002273a:	ea20 0303 	bic.w	r3, r0, r3
2002273e:	f8c1 30ac 	str.w	r3, [r1, #172]	@ 0xac
20022742:	e7d9      	b.n	200226f8 <HAL_DMA_DeInit+0x60>
20022744:	2001      	movs	r0, #1
20022746:	e7e4      	b.n	20022712 <HAL_DMA_DeInit+0x7a>
20022748:	aff7eff8 	.word	0xaff7eff8
2002274c:	50081000 	.word	0x50081000
20022750:	bfffeff8 	.word	0xbfffeff8
20022754:	40001000 	.word	0x40001000

20022758 <HAL_DMA_PollForTransfer>:
20022758:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002275c:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
20022760:	4617      	mov	r7, r2
20022762:	2b02      	cmp	r3, #2
20022764:	4604      	mov	r4, r0
20022766:	4688      	mov	r8, r1
20022768:	b2da      	uxtb	r2, r3
2002276a:	d005      	beq.n	20022778 <HAL_DMA_PollForTransfer+0x20>
2002276c:	2304      	movs	r3, #4
2002276e:	6443      	str	r3, [r0, #68]	@ 0x44
20022770:	2300      	movs	r3, #0
20022772:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022776:	e006      	b.n	20022786 <HAL_DMA_PollForTransfer+0x2e>
20022778:	6803      	ldr	r3, [r0, #0]
2002277a:	681b      	ldr	r3, [r3, #0]
2002277c:	0699      	lsls	r1, r3, #26
2002277e:	d505      	bpl.n	2002278c <HAL_DMA_PollForTransfer+0x34>
20022780:	f44f 7380 	mov.w	r3, #256	@ 0x100
20022784:	6443      	str	r3, [r0, #68]	@ 0x44
20022786:	2001      	movs	r0, #1
20022788:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002278c:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
2002278e:	f005 051c 	and.w	r5, r5, #28
20022792:	f1b8 0f00 	cmp.w	r8, #0
20022796:	d123      	bne.n	200227e0 <HAL_DMA_PollForTransfer+0x88>
20022798:	fa02 f505 	lsl.w	r5, r2, r5
2002279c:	f7ff fbda 	bl	20021f54 <HAL_GetTick>
200227a0:	f04f 0a08 	mov.w	sl, #8
200227a4:	4681      	mov	r9, r0
200227a6:	e9d4 6312 	ldrd	r6, r3, [r4, #72]	@ 0x48
200227aa:	f003 031c 	and.w	r3, r3, #28
200227ae:	fa0a f103 	lsl.w	r1, sl, r3
200227b2:	6832      	ldr	r2, [r6, #0]
200227b4:	ea12 0b05 	ands.w	fp, r2, r5
200227b8:	d016      	beq.n	200227e8 <HAL_DMA_PollForTransfer+0x90>
200227ba:	f1b8 0f00 	cmp.w	r8, #0
200227be:	d136      	bne.n	2002282e <HAL_DMA_PollForTransfer+0xd6>
200227c0:	2202      	movs	r2, #2
200227c2:	fa02 f303 	lsl.w	r3, r2, r3
200227c6:	6073      	str	r3, [r6, #4]
200227c8:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200227ca:	b92b      	cbnz	r3, 200227d8 <HAL_DMA_PollForTransfer+0x80>
200227cc:	4620      	mov	r0, r4
200227ce:	f7ff fecf 	bl	20022570 <DMA_FreeChannel.isra.0>
200227d2:	2301      	movs	r3, #1
200227d4:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200227d8:	2000      	movs	r0, #0
200227da:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
200227de:	e7d3      	b.n	20022788 <HAL_DMA_PollForTransfer+0x30>
200227e0:	2304      	movs	r3, #4
200227e2:	fa03 f505 	lsl.w	r5, r3, r5
200227e6:	e7d9      	b.n	2002279c <HAL_DMA_PollForTransfer+0x44>
200227e8:	6832      	ldr	r2, [r6, #0]
200227ea:	4211      	tst	r1, r2
200227ec:	d00c      	beq.n	20022808 <HAL_DMA_PollForTransfer+0xb0>
200227ee:	2501      	movs	r5, #1
200227f0:	fa05 f303 	lsl.w	r3, r5, r3
200227f4:	6073      	str	r3, [r6, #4]
200227f6:	4620      	mov	r0, r4
200227f8:	6465      	str	r5, [r4, #68]	@ 0x44
200227fa:	f7ff feb9 	bl	20022570 <DMA_FreeChannel.isra.0>
200227fe:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
20022802:	f884 b02c 	strb.w	fp, [r4, #44]	@ 0x2c
20022806:	e7be      	b.n	20022786 <HAL_DMA_PollForTransfer+0x2e>
20022808:	1c7a      	adds	r2, r7, #1
2002280a:	d0d2      	beq.n	200227b2 <HAL_DMA_PollForTransfer+0x5a>
2002280c:	f7ff fba2 	bl	20021f54 <HAL_GetTick>
20022810:	eba0 0009 	sub.w	r0, r0, r9
20022814:	42b8      	cmp	r0, r7
20022816:	d801      	bhi.n	2002281c <HAL_DMA_PollForTransfer+0xc4>
20022818:	2f00      	cmp	r7, #0
2002281a:	d1c4      	bne.n	200227a6 <HAL_DMA_PollForTransfer+0x4e>
2002281c:	2320      	movs	r3, #32
2002281e:	4620      	mov	r0, r4
20022820:	6463      	str	r3, [r4, #68]	@ 0x44
20022822:	f7ff fea5 	bl	20022570 <DMA_FreeChannel.isra.0>
20022826:	2301      	movs	r3, #1
20022828:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
2002282c:	e7a0      	b.n	20022770 <HAL_DMA_PollForTransfer+0x18>
2002282e:	2204      	movs	r2, #4
20022830:	fa02 f303 	lsl.w	r3, r2, r3
20022834:	6073      	str	r3, [r6, #4]
20022836:	e7cf      	b.n	200227d8 <HAL_DMA_PollForTransfer+0x80>

20022838 <DMA_Remap>:
20022838:	b530      	push	{r4, r5, lr}
2002283a:	4b15      	ldr	r3, [pc, #84]	@ (20022890 <DMA_Remap+0x58>)
2002283c:	6c84      	ldr	r4, [r0, #72]	@ 0x48
2002283e:	429c      	cmp	r4, r3
20022840:	d11b      	bne.n	2002287a <DMA_Remap+0x42>
20022842:	6883      	ldr	r3, [r0, #8]
20022844:	2b10      	cmp	r3, #16
20022846:	d002      	beq.n	2002284e <DMA_Remap+0x16>
20022848:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
2002284c:	d108      	bne.n	20022860 <DMA_Remap+0x28>
2002284e:	680b      	ldr	r3, [r1, #0]
20022850:	4c10      	ldr	r4, [pc, #64]	@ (20022894 <DMA_Remap+0x5c>)
20022852:	f103 4560 	add.w	r5, r3, #3758096384	@ 0xe0000000
20022856:	42a5      	cmp	r5, r4
20022858:	bf98      	it	ls
2002285a:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
2002285e:	600b      	str	r3, [r1, #0]
20022860:	6883      	ldr	r3, [r0, #8]
20022862:	f433 4380 	bics.w	r3, r3, #16384	@ 0x4000
20022866:	d108      	bne.n	2002287a <DMA_Remap+0x42>
20022868:	6813      	ldr	r3, [r2, #0]
2002286a:	480a      	ldr	r0, [pc, #40]	@ (20022894 <DMA_Remap+0x5c>)
2002286c:	f103 4460 	add.w	r4, r3, #3758096384	@ 0xe0000000
20022870:	4284      	cmp	r4, r0
20022872:	bf98      	it	ls
20022874:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
20022878:	6013      	str	r3, [r2, #0]
2002287a:	680b      	ldr	r3, [r1, #0]
2002287c:	f103 4270 	add.w	r2, r3, #4026531840	@ 0xf0000000
20022880:	f1b2 5f80 	cmp.w	r2, #268435456	@ 0x10000000
20022884:	bf3c      	itt	cc
20022886:	f103 43a0 	addcc.w	r3, r3, #1342177280	@ 0x50000000
2002288a:	600b      	strcc	r3, [r1, #0]
2002288c:	bd30      	pop	{r4, r5, pc}
2002288e:	bf00      	nop
20022890:	40001000 	.word	0x40001000
20022894:	0007fffe 	.word	0x0007fffe

20022898 <DMA_Start>:
20022898:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
2002289c:	f64f 75ff 	movw	r5, #65535	@ 0xffff
200228a0:	6d03      	ldr	r3, [r0, #80]	@ 0x50
200228a2:	6802      	ldr	r2, [r0, #0]
200228a4:	429d      	cmp	r5, r3
200228a6:	bf28      	it	cs
200228a8:	461d      	movcs	r5, r3
200228aa:	1b5b      	subs	r3, r3, r5
200228ac:	6503      	str	r3, [r0, #80]	@ 0x50
200228ae:	6585      	str	r5, [r0, #88]	@ 0x58
200228b0:	6813      	ldr	r3, [r2, #0]
200228b2:	f890 7066 	ldrb.w	r7, [r0, #102]	@ 0x66
200228b6:	f023 0301 	bic.w	r3, r3, #1
200228ba:	f890 8067 	ldrb.w	r8, [r0, #103]	@ 0x67
200228be:	6013      	str	r3, [r2, #0]
200228c0:	e9d0 2317 	ldrd	r2, r3, [r0, #92]	@ 0x5c
200228c4:	460e      	mov	r6, r1
200228c6:	e9cd 2300 	strd	r2, r3, [sp]
200228ca:	e9d0 2312 	ldrd	r2, r3, [r0, #72]	@ 0x48
200228ce:	f003 011c 	and.w	r1, r3, #28
200228d2:	2301      	movs	r3, #1
200228d4:	4604      	mov	r4, r0
200228d6:	408b      	lsls	r3, r1
200228d8:	6053      	str	r3, [r2, #4]
200228da:	6803      	ldr	r3, [r0, #0]
200228dc:	4669      	mov	r1, sp
200228de:	605d      	str	r5, [r3, #4]
200228e0:	aa01      	add	r2, sp, #4
200228e2:	f7ff ffa9 	bl	20022838 <DMA_Remap>
200228e6:	e9dd 0300 	ldrd	r0, r3, [sp]
200228ea:	68a1      	ldr	r1, [r4, #8]
200228ec:	6822      	ldr	r2, [r4, #0]
200228ee:	2910      	cmp	r1, #16
200228f0:	bf0b      	itete	eq
200228f2:	6093      	streq	r3, [r2, #8]
200228f4:	6090      	strne	r0, [r2, #8]
200228f6:	6823      	ldreq	r3, [r4, #0]
200228f8:	6822      	ldrne	r2, [r4, #0]
200228fa:	bf0c      	ite	eq
200228fc:	60d8      	streq	r0, [r3, #12]
200228fe:	60d3      	strne	r3, [r2, #12]
20022900:	f894 3064 	ldrb.w	r3, [r4, #100]	@ 0x64
20022904:	b123      	cbz	r3, 20022910 <DMA_Start+0x78>
20022906:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
20022908:	fa05 f707 	lsl.w	r7, r5, r7
2002290c:	443b      	add	r3, r7
2002290e:	65e3      	str	r3, [r4, #92]	@ 0x5c
20022910:	f894 3065 	ldrb.w	r3, [r4, #101]	@ 0x65
20022914:	b123      	cbz	r3, 20022920 <DMA_Start+0x88>
20022916:	6e23      	ldr	r3, [r4, #96]	@ 0x60
20022918:	fa05 f508 	lsl.w	r5, r5, r8
2002291c:	442b      	add	r3, r5
2002291e:	6623      	str	r3, [r4, #96]	@ 0x60
20022920:	b136      	cbz	r6, 20022930 <DMA_Start+0x98>
20022922:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20022924:	6823      	ldr	r3, [r4, #0]
20022926:	b15a      	cbz	r2, 20022940 <DMA_Start+0xa8>
20022928:	681a      	ldr	r2, [r3, #0]
2002292a:	f042 020e 	orr.w	r2, r2, #14
2002292e:	601a      	str	r2, [r3, #0]
20022930:	6822      	ldr	r2, [r4, #0]
20022932:	6813      	ldr	r3, [r2, #0]
20022934:	f043 0301 	orr.w	r3, r3, #1
20022938:	6013      	str	r3, [r2, #0]
2002293a:	b002      	add	sp, #8
2002293c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022940:	681a      	ldr	r2, [r3, #0]
20022942:	f022 0204 	bic.w	r2, r2, #4
20022946:	601a      	str	r2, [r3, #0]
20022948:	6822      	ldr	r2, [r4, #0]
2002294a:	6813      	ldr	r3, [r2, #0]
2002294c:	f043 030a 	orr.w	r3, r3, #10
20022950:	6013      	str	r3, [r2, #0]
20022952:	e7ed      	b.n	20022930 <DMA_Start+0x98>

20022954 <HAL_DMA_Start>:
20022954:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022956:	461d      	mov	r5, r3
20022958:	69c3      	ldr	r3, [r0, #28]
2002295a:	4604      	mov	r4, r0
2002295c:	2b20      	cmp	r3, #32
2002295e:	460f      	mov	r7, r1
20022960:	4616      	mov	r6, r2
20022962:	d105      	bne.n	20022970 <HAL_DMA_Start+0x1c>
20022964:	f64f 73fe 	movw	r3, #65534	@ 0xfffe
20022968:	1e6a      	subs	r2, r5, #1
2002296a:	429a      	cmp	r2, r3
2002296c:	d900      	bls.n	20022970 <HAL_DMA_Start+0x1c>
2002296e:	e7fe      	b.n	2002296e <HAL_DMA_Start+0x1a>
20022970:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
20022974:	2b01      	cmp	r3, #1
20022976:	d00e      	beq.n	20022996 <HAL_DMA_Start+0x42>
20022978:	2301      	movs	r3, #1
2002297a:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002297e:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
20022982:	2b01      	cmp	r3, #1
20022984:	b2d9      	uxtb	r1, r3
20022986:	d103      	bne.n	20022990 <HAL_DMA_Start+0x3c>
20022988:	4620      	mov	r0, r4
2002298a:	f7ff fd8b 	bl	200224a4 <DMA_AllocChannel>
2002298e:	b120      	cbz	r0, 2002299a <HAL_DMA_Start+0x46>
20022990:	2300      	movs	r3, #0
20022992:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022996:	2002      	movs	r0, #2
20022998:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002299a:	2302      	movs	r3, #2
2002299c:	e9c4 5514 	strd	r5, r5, [r4, #80]	@ 0x50
200229a0:	e9c4 7617 	strd	r7, r6, [r4, #92]	@ 0x5c
200229a4:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200229a8:	6460      	str	r0, [r4, #68]	@ 0x44
200229aa:	6d20      	ldr	r0, [r4, #80]	@ 0x50
200229ac:	2800      	cmp	r0, #0
200229ae:	d0f3      	beq.n	20022998 <HAL_DMA_Start+0x44>
200229b0:	2100      	movs	r1, #0
200229b2:	4620      	mov	r0, r4
200229b4:	f7ff ff70 	bl	20022898 <DMA_Start>
200229b8:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200229ba:	2b00      	cmp	r3, #0
200229bc:	d0f5      	beq.n	200229aa <HAL_DMA_Start+0x56>
200229be:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
200229c2:	2100      	movs	r1, #0
200229c4:	4620      	mov	r0, r4
200229c6:	f7ff fec7 	bl	20022758 <HAL_DMA_PollForTransfer>
200229ca:	2800      	cmp	r0, #0
200229cc:	d0ed      	beq.n	200229aa <HAL_DMA_Start+0x56>
200229ce:	e7e3      	b.n	20022998 <HAL_DMA_Start+0x44>

200229d0 <HAL_EFUSE_Read>:
200229d0:	2a20      	cmp	r2, #32
200229d2:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200229d6:	4606      	mov	r6, r0
200229d8:	460c      	mov	r4, r1
200229da:	4615      	mov	r5, r2
200229dc:	dc35      	bgt.n	20022a4a <HAL_EFUSE_Read+0x7a>
200229de:	f3c0 09c4 	ubfx	r9, r0, #3, #5
200229e2:	eb09 0302 	add.w	r3, r9, r2
200229e6:	2b20      	cmp	r3, #32
200229e8:	dc2f      	bgt.n	20022a4a <HAL_EFUSE_Read+0x7a>
200229ea:	0790      	lsls	r0, r2, #30
200229ec:	d12d      	bne.n	20022a4a <HAL_EFUSE_Read+0x7a>
200229ee:	f016 0a1f 	ands.w	sl, r6, #31
200229f2:	d12a      	bne.n	20022a4a <HAL_EFUSE_Read+0x7a>
200229f4:	2301      	movs	r3, #1
200229f6:	4f28      	ldr	r7, [pc, #160]	@ (20022a98 <HAL_EFUSE_Read+0xc8>)
200229f8:	4a28      	ldr	r2, [pc, #160]	@ (20022a9c <HAL_EFUSE_Read+0xcc>)
200229fa:	60bb      	str	r3, [r7, #8]
200229fc:	4b28      	ldr	r3, [pc, #160]	@ (20022aa0 <HAL_EFUSE_Read+0xd0>)
200229fe:	2014      	movs	r0, #20
20022a00:	607b      	str	r3, [r7, #4]
20022a02:	f8d2 8094 	ldr.w	r8, [r2, #148]	@ 0x94
20022a06:	0a36      	lsrs	r6, r6, #8
20022a08:	f108 0303 	add.w	r3, r8, #3
20022a0c:	2b0e      	cmp	r3, #14
20022a0e:	bf38      	it	cc
20022a10:	230e      	movcc	r3, #14
20022a12:	2b0f      	cmp	r3, #15
20022a14:	bf28      	it	cs
20022a16:	230f      	movcs	r3, #15
20022a18:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20022a1c:	f7ff faff 	bl	2002201e <HAL_Delay_us>
20022a20:	00b3      	lsls	r3, r6, #2
20022a22:	603b      	str	r3, [r7, #0]
20022a24:	683b      	ldr	r3, [r7, #0]
20022a26:	4a1f      	ldr	r2, [pc, #124]	@ (20022aa4 <HAL_EFUSE_Read+0xd4>)
20022a28:	f043 0301 	orr.w	r3, r3, #1
20022a2c:	603b      	str	r3, [r7, #0]
20022a2e:	4653      	mov	r3, sl
20022a30:	436a      	muls	r2, r5
20022a32:	68b9      	ldr	r1, [r7, #8]
20022a34:	07c9      	lsls	r1, r1, #31
20022a36:	d50c      	bpl.n	20022a52 <HAL_EFUSE_Read+0x82>
20022a38:	68b9      	ldr	r1, [r7, #8]
20022a3a:	4293      	cmp	r3, r2
20022a3c:	f041 0101 	orr.w	r1, r1, #1
20022a40:	60b9      	str	r1, [r7, #8]
20022a42:	d30a      	bcc.n	20022a5a <HAL_EFUSE_Read+0x8a>
20022a44:	4b15      	ldr	r3, [pc, #84]	@ (20022a9c <HAL_EFUSE_Read+0xcc>)
20022a46:	f8c3 8094 	str.w	r8, [r3, #148]	@ 0x94
20022a4a:	2500      	movs	r5, #0
20022a4c:	4628      	mov	r0, r5
20022a4e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20022a52:	4293      	cmp	r3, r2
20022a54:	d2f0      	bcs.n	20022a38 <HAL_EFUSE_Read+0x68>
20022a56:	3301      	adds	r3, #1
20022a58:	e7eb      	b.n	20022a32 <HAL_EFUSE_Read+0x62>
20022a5a:	4a13      	ldr	r2, [pc, #76]	@ (20022aa8 <HAL_EFUSE_Read+0xd8>)
20022a5c:	f009 001c 	and.w	r0, r9, #28
20022a60:	eb00 1046 	add.w	r0, r0, r6, lsl #5
20022a64:	f025 0103 	bic.w	r1, r5, #3
20022a68:	4402      	add	r2, r0
20022a6a:	4421      	add	r1, r4
20022a6c:	428c      	cmp	r4, r1
20022a6e:	d103      	bne.n	20022a78 <HAL_EFUSE_Read+0xa8>
20022a70:	4b0a      	ldr	r3, [pc, #40]	@ (20022a9c <HAL_EFUSE_Read+0xcc>)
20022a72:	f8c3 8094 	str.w	r8, [r3, #148]	@ 0x94
20022a76:	e7e9      	b.n	20022a4c <HAL_EFUSE_Read+0x7c>
20022a78:	f852 3b04 	ldr.w	r3, [r2], #4
20022a7c:	3404      	adds	r4, #4
20022a7e:	0a18      	lsrs	r0, r3, #8
20022a80:	f804 3c04 	strb.w	r3, [r4, #-4]
20022a84:	f804 0c03 	strb.w	r0, [r4, #-3]
20022a88:	0c18      	lsrs	r0, r3, #16
20022a8a:	0e1b      	lsrs	r3, r3, #24
20022a8c:	f804 0c02 	strb.w	r0, [r4, #-2]
20022a90:	f804 3c01 	strb.w	r3, [r4, #-1]
20022a94:	e7ea      	b.n	20022a6c <HAL_EFUSE_Read+0x9c>
20022a96:	bf00      	nop
20022a98:	5000c000 	.word	0x5000c000
20022a9c:	500ca000 	.word	0x500ca000
20022aa0:	0002d08f 	.word	0x0002d08f
20022aa4:	0005dc00 	.word	0x0005dc00
20022aa8:	5000c030 	.word	0x5000c030

20022aac <EXT_DMA_SetConfig>:
20022aac:	b530      	push	{r4, r5, lr}
20022aae:	2501      	movs	r5, #1
20022ab0:	6804      	ldr	r4, [r0, #0]
20022ab2:	6065      	str	r5, [r4, #4]
20022ab4:	6804      	ldr	r4, [r0, #0]
20022ab6:	60e3      	str	r3, [r4, #12]
20022ab8:	f101 4370 	add.w	r3, r1, #4026531840	@ 0xf0000000
20022abc:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20022ac0:	6803      	ldr	r3, [r0, #0]
20022ac2:	bf38      	it	cc
20022ac4:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20022ac8:	6119      	str	r1, [r3, #16]
20022aca:	f102 4370 	add.w	r3, r2, #4026531840	@ 0xf0000000
20022ace:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20022ad2:	6803      	ldr	r3, [r0, #0]
20022ad4:	bf38      	it	cc
20022ad6:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20022ada:	615a      	str	r2, [r3, #20]
20022adc:	7b03      	ldrb	r3, [r0, #12]
20022ade:	b103      	cbz	r3, 20022ae2 <EXT_DMA_SetConfig+0x36>
20022ae0:	e7fe      	b.n	20022ae0 <EXT_DMA_SetConfig+0x34>
20022ae2:	bd30      	pop	{r4, r5, pc}

20022ae4 <HAL_EXT_DMA_Init>:
20022ae4:	b510      	push	{r4, lr}
20022ae6:	b1c0      	cbz	r0, 20022b1a <HAL_EXT_DMA_Init+0x36>
20022ae8:	2302      	movs	r3, #2
20022aea:	4a0d      	ldr	r2, [pc, #52]	@ (20022b20 <HAL_EXT_DMA_Init+0x3c>)
20022aec:	7643      	strb	r3, [r0, #25]
20022aee:	6002      	str	r2, [r0, #0]
20022af0:	e9d0 3101 	ldrd	r3, r1, [r0, #4]
20022af4:	6894      	ldr	r4, [r2, #8]
20022af6:	430b      	orrs	r3, r1
20022af8:	490a      	ldr	r1, [pc, #40]	@ (20022b24 <HAL_EXT_DMA_Init+0x40>)
20022afa:	4021      	ands	r1, r4
20022afc:	430b      	orrs	r3, r1
20022afe:	f443 6320 	orr.w	r3, r3, #2560	@ 0xa00
20022b02:	6093      	str	r3, [r2, #8]
20022b04:	7b03      	ldrb	r3, [r0, #12]
20022b06:	b103      	cbz	r3, 20022b0a <HAL_EXT_DMA_Init+0x26>
20022b08:	e7fe      	b.n	20022b08 <HAL_EXT_DMA_Init+0x24>
20022b0a:	6802      	ldr	r2, [r0, #0]
20022b0c:	6213      	str	r3, [r2, #32]
20022b0e:	2201      	movs	r2, #1
20022b10:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022b12:	7603      	strb	r3, [r0, #24]
20022b14:	7642      	strb	r2, [r0, #25]
20022b16:	4618      	mov	r0, r3
20022b18:	bd10      	pop	{r4, pc}
20022b1a:	2001      	movs	r0, #1
20022b1c:	e7fc      	b.n	20022b18 <HAL_EXT_DMA_Init+0x34>
20022b1e:	bf00      	nop
20022b20:	50001000 	.word	0x50001000
20022b24:	fff0f020 	.word	0xfff0f020

20022b28 <HAL_EXT_DMA_Start>:
20022b28:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
20022b2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022b2e:	d304      	bcc.n	20022b3a <HAL_EXT_DMA_Start+0x12>
20022b30:	f44f 7300 	mov.w	r3, #512	@ 0x200
20022b34:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022b36:	2001      	movs	r0, #1
20022b38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022b3a:	7e05      	ldrb	r5, [r0, #24]
20022b3c:	2d01      	cmp	r5, #1
20022b3e:	d018      	beq.n	20022b72 <HAL_EXT_DMA_Start+0x4a>
20022b40:	2501      	movs	r5, #1
20022b42:	7605      	strb	r5, [r0, #24]
20022b44:	7e45      	ldrb	r5, [r0, #25]
20022b46:	2d01      	cmp	r5, #1
20022b48:	f04f 0500 	mov.w	r5, #0
20022b4c:	d110      	bne.n	20022b70 <HAL_EXT_DMA_Start+0x48>
20022b4e:	2602      	movs	r6, #2
20022b50:	6807      	ldr	r7, [r0, #0]
20022b52:	7646      	strb	r6, [r0, #25]
20022b54:	62c5      	str	r5, [r0, #44]	@ 0x2c
20022b56:	68be      	ldr	r6, [r7, #8]
20022b58:	f026 0601 	bic.w	r6, r6, #1
20022b5c:	60be      	str	r6, [r7, #8]
20022b5e:	f7ff ffa5 	bl	20022aac <EXT_DMA_SetConfig>
20022b62:	6802      	ldr	r2, [r0, #0]
20022b64:	4628      	mov	r0, r5
20022b66:	6893      	ldr	r3, [r2, #8]
20022b68:	f043 0301 	orr.w	r3, r3, #1
20022b6c:	6093      	str	r3, [r2, #8]
20022b6e:	e7e3      	b.n	20022b38 <HAL_EXT_DMA_Start+0x10>
20022b70:	7605      	strb	r5, [r0, #24]
20022b72:	2002      	movs	r0, #2
20022b74:	e7e0      	b.n	20022b38 <HAL_EXT_DMA_Start+0x10>

20022b76 <HAL_EXT_DMA_PollForTransfer>:
20022b76:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20022b7a:	7e43      	ldrb	r3, [r0, #25]
20022b7c:	4604      	mov	r4, r0
20022b7e:	2b02      	cmp	r3, #2
20022b80:	460e      	mov	r6, r1
20022b82:	4615      	mov	r5, r2
20022b84:	d006      	beq.n	20022b94 <HAL_EXT_DMA_PollForTransfer+0x1e>
20022b86:	2304      	movs	r3, #4
20022b88:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022b8a:	2001      	movs	r0, #1
20022b8c:	2300      	movs	r3, #0
20022b8e:	7623      	strb	r3, [r4, #24]
20022b90:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022b94:	2900      	cmp	r1, #0
20022b96:	bf14      	ite	ne
20022b98:	f04f 0804 	movne.w	r8, #4
20022b9c:	f04f 0802 	moveq.w	r8, #2
20022ba0:	f7ff f9d8 	bl	20021f54 <HAL_GetTick>
20022ba4:	4607      	mov	r7, r0
20022ba6:	6823      	ldr	r3, [r4, #0]
20022ba8:	681a      	ldr	r2, [r3, #0]
20022baa:	ea12 0f08 	tst.w	r2, r8
20022bae:	d006      	beq.n	20022bbe <HAL_EXT_DMA_PollForTransfer+0x48>
20022bb0:	b9e6      	cbnz	r6, 20022bec <HAL_EXT_DMA_PollForTransfer+0x76>
20022bb2:	2202      	movs	r2, #2
20022bb4:	605a      	str	r2, [r3, #4]
20022bb6:	2301      	movs	r3, #1
20022bb8:	7663      	strb	r3, [r4, #25]
20022bba:	2000      	movs	r0, #0
20022bbc:	e7e6      	b.n	20022b8c <HAL_EXT_DMA_PollForTransfer+0x16>
20022bbe:	681a      	ldr	r2, [r3, #0]
20022bc0:	f012 0f18 	tst.w	r2, #24
20022bc4:	d004      	beq.n	20022bd0 <HAL_EXT_DMA_PollForTransfer+0x5a>
20022bc6:	2201      	movs	r2, #1
20022bc8:	605a      	str	r2, [r3, #4]
20022bca:	62e2      	str	r2, [r4, #44]	@ 0x2c
20022bcc:	7662      	strb	r2, [r4, #25]
20022bce:	e7dc      	b.n	20022b8a <HAL_EXT_DMA_PollForTransfer+0x14>
20022bd0:	1c6a      	adds	r2, r5, #1
20022bd2:	d0e9      	beq.n	20022ba8 <HAL_EXT_DMA_PollForTransfer+0x32>
20022bd4:	f7ff f9be 	bl	20021f54 <HAL_GetTick>
20022bd8:	1bc0      	subs	r0, r0, r7
20022bda:	42a8      	cmp	r0, r5
20022bdc:	d801      	bhi.n	20022be2 <HAL_EXT_DMA_PollForTransfer+0x6c>
20022bde:	2d00      	cmp	r5, #0
20022be0:	d1e1      	bne.n	20022ba6 <HAL_EXT_DMA_PollForTransfer+0x30>
20022be2:	2320      	movs	r3, #32
20022be4:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022be6:	2301      	movs	r3, #1
20022be8:	7663      	strb	r3, [r4, #25]
20022bea:	e7ce      	b.n	20022b8a <HAL_EXT_DMA_PollForTransfer+0x14>
20022bec:	2204      	movs	r2, #4
20022bee:	605a      	str	r2, [r3, #4]
20022bf0:	e7e3      	b.n	20022bba <HAL_EXT_DMA_PollForTransfer+0x44>

20022bf2 <HAL_DBG_printf>:
20022bf2:	b40f      	push	{r0, r1, r2, r3}
20022bf4:	b004      	add	sp, #16
20022bf6:	4770      	bx	lr

20022bf8 <HAL_Set_backup>:
20022bf8:	4b01      	ldr	r3, [pc, #4]	@ (20022c00 <HAL_Set_backup+0x8>)
20022bfa:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
20022bfe:	4770      	bx	lr
20022c00:	500cb030 	.word	0x500cb030

20022c04 <HAL_Get_backup>:
20022c04:	4b01      	ldr	r3, [pc, #4]	@ (20022c0c <HAL_Get_backup+0x8>)
20022c06:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20022c0a:	4770      	bx	lr
20022c0c:	500cb030 	.word	0x500cb030

20022c10 <HAL_HPAON_WakeCore>:
20022c10:	2802      	cmp	r0, #2
20022c12:	b510      	push	{r4, lr}
20022c14:	d120      	bne.n	20022c58 <HAL_HPAON_WakeCore+0x48>
20022c16:	4c11      	ldr	r4, [pc, #68]	@ (20022c5c <HAL_HPAON_WakeCore+0x4c>)
20022c18:	20e6      	movs	r0, #230	@ 0xe6
20022c1a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022c1c:	f043 0301 	orr.w	r3, r3, #1
20022c20:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022c22:	f7ff f9fc 	bl	2002201e <HAL_Delay_us>
20022c26:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022c28:	069a      	lsls	r2, r3, #26
20022c2a:	d5fc      	bpl.n	20022c26 <HAL_HPAON_WakeCore+0x16>
20022c2c:	201e      	movs	r0, #30
20022c2e:	f7ff f9f6 	bl	2002201e <HAL_Delay_us>
20022c32:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022c34:	069b      	lsls	r3, r3, #26
20022c36:	d5fc      	bpl.n	20022c32 <HAL_HPAON_WakeCore+0x22>
20022c38:	f3ef 8110 	mrs	r1, PRIMASK
20022c3c:	2301      	movs	r3, #1
20022c3e:	f383 8810 	msr	PRIMASK, r3
20022c42:	4a07      	ldr	r2, [pc, #28]	@ (20022c60 <HAL_HPAON_WakeCore+0x50>)
20022c44:	7813      	ldrb	r3, [r2, #0]
20022c46:	2b13      	cmp	r3, #19
20022c48:	d900      	bls.n	20022c4c <HAL_HPAON_WakeCore+0x3c>
20022c4a:	e7fe      	b.n	20022c4a <HAL_HPAON_WakeCore+0x3a>
20022c4c:	3301      	adds	r3, #1
20022c4e:	7013      	strb	r3, [r2, #0]
20022c50:	f381 8810 	msr	PRIMASK, r1
20022c54:	2000      	movs	r0, #0
20022c56:	bd10      	pop	{r4, pc}
20022c58:	2001      	movs	r0, #1
20022c5a:	e7fc      	b.n	20022c56 <HAL_HPAON_WakeCore+0x46>
20022c5c:	500c0000 	.word	0x500c0000
20022c60:	20049f5c 	.word	0x20049f5c

20022c64 <HAL_HPAON_EnableXT48>:
20022c64:	4b04      	ldr	r3, [pc, #16]	@ (20022c78 <HAL_HPAON_EnableXT48+0x14>)
20022c66:	691a      	ldr	r2, [r3, #16]
20022c68:	f042 0202 	orr.w	r2, r2, #2
20022c6c:	611a      	str	r2, [r3, #16]
20022c6e:	691a      	ldr	r2, [r3, #16]
20022c70:	2a00      	cmp	r2, #0
20022c72:	dafc      	bge.n	20022c6e <HAL_HPAON_EnableXT48+0xa>
20022c74:	4770      	bx	lr
20022c76:	bf00      	nop
20022c78:	500c0000 	.word	0x500c0000

20022c7c <HAL_HPAON_DisableXT48>:
20022c7c:	4a02      	ldr	r2, [pc, #8]	@ (20022c88 <HAL_HPAON_DisableXT48+0xc>)
20022c7e:	6913      	ldr	r3, [r2, #16]
20022c80:	f023 0302 	bic.w	r3, r3, #2
20022c84:	6113      	str	r3, [r2, #16]
20022c86:	4770      	bx	lr
20022c88:	500c0000 	.word	0x500c0000

20022c8c <HAL_QSPI_Init>:
20022c8c:	b510      	push	{r4, lr}
20022c8e:	b1e0      	cbz	r0, 20022cca <HAL_QSPI_Init+0x3e>
20022c90:	b1d9      	cbz	r1, 20022cca <HAL_QSPI_Init+0x3e>
20022c92:	2300      	movs	r3, #0
20022c94:	2201      	movs	r2, #1
20022c96:	6043      	str	r3, [r0, #4]
20022c98:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
20022c9c:	680c      	ldr	r4, [r1, #0]
20022c9e:	6004      	str	r4, [r0, #0]
20022ca0:	684a      	ldr	r2, [r1, #4]
20022ca2:	f880 2020 	strb.w	r2, [r0, #32]
20022ca6:	688a      	ldr	r2, [r1, #8]
20022ca8:	6102      	str	r2, [r0, #16]
20022caa:	68ca      	ldr	r2, [r1, #12]
20022cac:	0512      	lsls	r2, r2, #20
20022cae:	6142      	str	r2, [r0, #20]
20022cb0:	22ff      	movs	r2, #255	@ 0xff
20022cb2:	f8c4 2084 	str.w	r2, [r4, #132]	@ 0x84
20022cb6:	f04f 2450 	mov.w	r4, #1342197760	@ 0x50005000
20022cba:	6801      	ldr	r1, [r0, #0]
20022cbc:	678c      	str	r4, [r1, #120]	@ 0x78
20022cbe:	6801      	ldr	r1, [r0, #0]
20022cc0:	620a      	str	r2, [r1, #32]
20022cc2:	6801      	ldr	r1, [r0, #0]
20022cc4:	4618      	mov	r0, r3
20022cc6:	644a      	str	r2, [r1, #68]	@ 0x44
20022cc8:	bd10      	pop	{r4, pc}
20022cca:	2001      	movs	r0, #1
20022ccc:	e7fc      	b.n	20022cc8 <HAL_QSPI_Init+0x3c>

20022cce <HAL_FLASH_SET_AHB_RCMD>:
20022cce:	b138      	cbz	r0, 20022ce0 <HAL_FLASH_SET_AHB_RCMD+0x12>
20022cd0:	6802      	ldr	r2, [r0, #0]
20022cd2:	2000      	movs	r0, #0
20022cd4:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022cd6:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20022cda:	4319      	orrs	r1, r3
20022cdc:	6411      	str	r1, [r2, #64]	@ 0x40
20022cde:	4770      	bx	lr
20022ce0:	2001      	movs	r0, #1
20022ce2:	4770      	bx	lr

20022ce4 <HAL_FLASH_CFG_AHB_RCMD>:
20022ce4:	b570      	push	{r4, r5, r6, lr}
20022ce6:	b1c8      	cbz	r0, 20022d1c <HAL_FLASH_CFG_AHB_RCMD+0x38>
20022ce8:	6805      	ldr	r5, [r0, #0]
20022cea:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022cee:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022cf2:	6cac      	ldr	r4, [r5, #72]	@ 0x48
20022cf4:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022cf8:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022cfc:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022d00:	f36f 0414 	bfc	r4, #0, #21
20022d04:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022d08:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022d0c:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022d10:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022d14:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022d18:	4321      	orrs	r1, r4
20022d1a:	64a9      	str	r1, [r5, #72]	@ 0x48
20022d1c:	bd70      	pop	{r4, r5, r6, pc}

20022d1e <HAL_FLASH_SET_AHB_WCMD>:
20022d1e:	b140      	cbz	r0, 20022d32 <HAL_FLASH_SET_AHB_WCMD+0x14>
20022d20:	6802      	ldr	r2, [r0, #0]
20022d22:	2000      	movs	r0, #0
20022d24:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022d26:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022d2a:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20022d2e:	6411      	str	r1, [r2, #64]	@ 0x40
20022d30:	4770      	bx	lr
20022d32:	2001      	movs	r0, #1
20022d34:	4770      	bx	lr

20022d36 <HAL_FLASH_CFG_AHB_WCMD>:
20022d36:	b570      	push	{r4, r5, r6, lr}
20022d38:	b1c8      	cbz	r0, 20022d6e <HAL_FLASH_CFG_AHB_WCMD+0x38>
20022d3a:	6805      	ldr	r5, [r0, #0]
20022d3c:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022d40:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022d44:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20022d46:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022d4a:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022d4e:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022d52:	f36f 0414 	bfc	r4, #0, #21
20022d56:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022d5a:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022d5e:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022d62:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022d66:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022d6a:	4321      	orrs	r1, r4
20022d6c:	6529      	str	r1, [r5, #80]	@ 0x50
20022d6e:	bd70      	pop	{r4, r5, r6, pc}

20022d70 <HAL_FLASH_WRITE_WORD>:
20022d70:	b118      	cbz	r0, 20022d7a <HAL_FLASH_WRITE_WORD+0xa>
20022d72:	6803      	ldr	r3, [r0, #0]
20022d74:	2000      	movs	r0, #0
20022d76:	6059      	str	r1, [r3, #4]
20022d78:	4770      	bx	lr
20022d7a:	2001      	movs	r0, #1
20022d7c:	4770      	bx	lr

20022d7e <HAL_FLASH_WRITE_DLEN>:
20022d7e:	b130      	cbz	r0, 20022d8e <HAL_FLASH_WRITE_DLEN+0x10>
20022d80:	6803      	ldr	r3, [r0, #0]
20022d82:	3901      	subs	r1, #1
20022d84:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022d88:	2000      	movs	r0, #0
20022d8a:	6259      	str	r1, [r3, #36]	@ 0x24
20022d8c:	4770      	bx	lr
20022d8e:	2001      	movs	r0, #1
20022d90:	4770      	bx	lr

20022d92 <HAL_FLASH_WRITE_DLEN2>:
20022d92:	b130      	cbz	r0, 20022da2 <HAL_FLASH_WRITE_DLEN2+0x10>
20022d94:	6803      	ldr	r3, [r0, #0]
20022d96:	3901      	subs	r1, #1
20022d98:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022d9c:	2000      	movs	r0, #0
20022d9e:	6399      	str	r1, [r3, #56]	@ 0x38
20022da0:	4770      	bx	lr
20022da2:	2001      	movs	r0, #1
20022da4:	4770      	bx	lr

20022da6 <HAL_FLASH_WRITE_ABYTE>:
20022da6:	b108      	cbz	r0, 20022dac <HAL_FLASH_WRITE_ABYTE+0x6>
20022da8:	6803      	ldr	r3, [r0, #0]
20022daa:	6219      	str	r1, [r3, #32]
20022dac:	4770      	bx	lr

20022dae <HAL_FLASH_IS_CMD_DONE>:
20022dae:	b118      	cbz	r0, 20022db8 <HAL_FLASH_IS_CMD_DONE+0xa>
20022db0:	6803      	ldr	r3, [r0, #0]
20022db2:	6918      	ldr	r0, [r3, #16]
20022db4:	f000 0001 	and.w	r0, r0, #1
20022db8:	4770      	bx	lr

20022dba <HAL_FLASH_CLR_CMD_DONE>:
20022dba:	b120      	cbz	r0, 20022dc6 <HAL_FLASH_CLR_CMD_DONE+0xc>
20022dbc:	6802      	ldr	r2, [r0, #0]
20022dbe:	6953      	ldr	r3, [r2, #20]
20022dc0:	f043 0301 	orr.w	r3, r3, #1
20022dc4:	6153      	str	r3, [r2, #20]
20022dc6:	4770      	bx	lr

20022dc8 <HAL_FLASH_SET_CMD>:
20022dc8:	b538      	push	{r3, r4, r5, lr}
20022dca:	460d      	mov	r5, r1
20022dcc:	4604      	mov	r4, r0
20022dce:	b1a8      	cbz	r0, 20022dfc <HAL_FLASH_SET_CMD+0x34>
20022dd0:	6803      	ldr	r3, [r0, #0]
20022dd2:	61da      	str	r2, [r3, #28]
20022dd4:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
20022dd6:	b10b      	cbz	r3, 20022ddc <HAL_FLASH_SET_CMD+0x14>
20022dd8:	2001      	movs	r0, #1
20022dda:	4798      	blx	r3
20022ddc:	6823      	ldr	r3, [r4, #0]
20022dde:	619d      	str	r5, [r3, #24]
20022de0:	4620      	mov	r0, r4
20022de2:	f7ff ffe4 	bl	20022dae <HAL_FLASH_IS_CMD_DONE>
20022de6:	2800      	cmp	r0, #0
20022de8:	d0fa      	beq.n	20022de0 <HAL_FLASH_SET_CMD+0x18>
20022dea:	4620      	mov	r0, r4
20022dec:	f7ff ffe5 	bl	20022dba <HAL_FLASH_CLR_CMD_DONE>
20022df0:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022df2:	b10b      	cbz	r3, 20022df8 <HAL_FLASH_SET_CMD+0x30>
20022df4:	2000      	movs	r0, #0
20022df6:	4798      	blx	r3
20022df8:	2000      	movs	r0, #0
20022dfa:	bd38      	pop	{r3, r4, r5, pc}
20022dfc:	2001      	movs	r0, #1
20022dfe:	e7fc      	b.n	20022dfa <HAL_FLASH_SET_CMD+0x32>

20022e00 <HAL_FLASH_CLR_STATUS>:
20022e00:	b118      	cbz	r0, 20022e0a <HAL_FLASH_CLR_STATUS+0xa>
20022e02:	6802      	ldr	r2, [r0, #0]
20022e04:	6953      	ldr	r3, [r2, #20]
20022e06:	4319      	orrs	r1, r3
20022e08:	6151      	str	r1, [r2, #20]
20022e0a:	4770      	bx	lr

20022e0c <HAL_FLASH_STATUS_MATCH>:
20022e0c:	b118      	cbz	r0, 20022e16 <HAL_FLASH_STATUS_MATCH+0xa>
20022e0e:	6803      	ldr	r3, [r0, #0]
20022e10:	6918      	ldr	r0, [r3, #16]
20022e12:	f3c0 00c0 	ubfx	r0, r0, #3, #1
20022e16:	4770      	bx	lr

20022e18 <HAL_FLASH_IS_PROG_DONE>:
20022e18:	b128      	cbz	r0, 20022e26 <HAL_FLASH_IS_PROG_DONE+0xe>
20022e1a:	6803      	ldr	r3, [r0, #0]
20022e1c:	6858      	ldr	r0, [r3, #4]
20022e1e:	43c0      	mvns	r0, r0
20022e20:	f000 0001 	and.w	r0, r0, #1
20022e24:	4770      	bx	lr
20022e26:	2001      	movs	r0, #1
20022e28:	4770      	bx	lr

20022e2a <HAL_FLASH_READ32>:
20022e2a:	b108      	cbz	r0, 20022e30 <HAL_FLASH_READ32+0x6>
20022e2c:	6803      	ldr	r3, [r0, #0]
20022e2e:	6858      	ldr	r0, [r3, #4]
20022e30:	4770      	bx	lr

20022e32 <HAL_FLASH_SET_TXSLOT>:
20022e32:	b120      	cbz	r0, 20022e3e <HAL_FLASH_SET_TXSLOT+0xc>
20022e34:	6802      	ldr	r2, [r0, #0]
20022e36:	6d53      	ldr	r3, [r2, #84]	@ 0x54
20022e38:	f361 238e 	bfi	r3, r1, #10, #5
20022e3c:	6553      	str	r3, [r2, #84]	@ 0x54
20022e3e:	4770      	bx	lr

20022e40 <HAL_FLASH_SET_CLK_rom>:
20022e40:	b108      	cbz	r0, 20022e46 <HAL_FLASH_SET_CLK_rom+0x6>
20022e42:	6803      	ldr	r3, [r0, #0]
20022e44:	60d9      	str	r1, [r3, #12]
20022e46:	4770      	bx	lr

20022e48 <HAL_FLASH_GET_DIV>:
20022e48:	b110      	cbz	r0, 20022e50 <HAL_FLASH_GET_DIV+0x8>
20022e4a:	6803      	ldr	r3, [r0, #0]
20022e4c:	68d8      	ldr	r0, [r3, #12]
20022e4e:	b2c0      	uxtb	r0, r0
20022e50:	4770      	bx	lr

20022e52 <HAL_FLASH_MANUAL_CMD>:
20022e52:	b570      	push	{r4, r5, r6, lr}
20022e54:	b1e8      	cbz	r0, 20022e92 <HAL_FLASH_MANUAL_CMD+0x40>
20022e56:	6805      	ldr	r5, [r0, #0]
20022e58:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022e5c:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022e60:	6aac      	ldr	r4, [r5, #40]	@ 0x28
20022e62:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022e66:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022e6a:	f36f 0415 	bfc	r4, #0, #22
20022e6e:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022e72:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022e76:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022e7a:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022e7e:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022e82:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022e86:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022e8a:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022e8e:	4321      	orrs	r1, r4
20022e90:	62a9      	str	r1, [r5, #40]	@ 0x28
20022e92:	bd70      	pop	{r4, r5, r6, pc}

20022e94 <HAL_FLASH_MANUAL_CMD2>:
20022e94:	b570      	push	{r4, r5, r6, lr}
20022e96:	b1e8      	cbz	r0, 20022ed4 <HAL_FLASH_MANUAL_CMD2+0x40>
20022e98:	6805      	ldr	r5, [r0, #0]
20022e9a:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022e9e:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022ea2:	6bec      	ldr	r4, [r5, #60]	@ 0x3c
20022ea4:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022ea8:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022eac:	f36f 0415 	bfc	r4, #0, #22
20022eb0:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022eb4:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022eb8:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022ebc:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022ec0:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022ec4:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022ec8:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022ecc:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022ed0:	4321      	orrs	r1, r4
20022ed2:	63e9      	str	r1, [r5, #60]	@ 0x3c
20022ed4:	bd70      	pop	{r4, r5, r6, pc}
	...

20022ed8 <HAL_FLASH_SET_ALIAS_RANGE>:
20022ed8:	b510      	push	{r4, lr}
20022eda:	b158      	cbz	r0, 20022ef4 <HAL_FLASH_SET_ALIAS_RANGE+0x1c>
20022edc:	4b06      	ldr	r3, [pc, #24]	@ (20022ef8 <HAL_FLASH_SET_ALIAS_RANGE+0x20>)
20022ede:	6804      	ldr	r4, [r0, #0]
20022ee0:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022ee4:	440a      	add	r2, r1
20022ee6:	4019      	ands	r1, r3
20022ee8:	66e1      	str	r1, [r4, #108]	@ 0x6c
20022eea:	401a      	ands	r2, r3
20022eec:	6803      	ldr	r3, [r0, #0]
20022eee:	2000      	movs	r0, #0
20022ef0:	671a      	str	r2, [r3, #112]	@ 0x70
20022ef2:	bd10      	pop	{r4, pc}
20022ef4:	2001      	movs	r0, #1
20022ef6:	e7fc      	b.n	20022ef2 <HAL_FLASH_SET_ALIAS_RANGE+0x1a>
20022ef8:	fffffc00 	.word	0xfffffc00

20022efc <HAL_FLASH_SET_ALIAS_OFFSET>:
20022efc:	b128      	cbz	r0, 20022f0a <HAL_FLASH_SET_ALIAS_OFFSET+0xe>
20022efe:	6803      	ldr	r3, [r0, #0]
20022f00:	f36f 0109 	bfc	r1, #0, #10
20022f04:	2000      	movs	r0, #0
20022f06:	6759      	str	r1, [r3, #116]	@ 0x74
20022f08:	4770      	bx	lr
20022f0a:	2001      	movs	r0, #1
20022f0c:	4770      	bx	lr
	...

20022f10 <HAL_FLASH_SET_CTR>:
20022f10:	b510      	push	{r4, lr}
20022f12:	b150      	cbz	r0, 20022f2a <HAL_FLASH_SET_CTR+0x1a>
20022f14:	4b06      	ldr	r3, [pc, #24]	@ (20022f30 <HAL_FLASH_SET_CTR+0x20>)
20022f16:	6804      	ldr	r4, [r0, #0]
20022f18:	4019      	ands	r1, r3
20022f1a:	65e1      	str	r1, [r4, #92]	@ 0x5c
20022f1c:	6801      	ldr	r1, [r0, #0]
20022f1e:	2000      	movs	r0, #0
20022f20:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022f24:	401a      	ands	r2, r3
20022f26:	660a      	str	r2, [r1, #96]	@ 0x60
20022f28:	bd10      	pop	{r4, pc}
20022f2a:	2001      	movs	r0, #1
20022f2c:	e7fc      	b.n	20022f28 <HAL_FLASH_SET_CTR+0x18>
20022f2e:	bf00      	nop
20022f30:	fffffc00 	.word	0xfffffc00

20022f34 <HAL_FLASH_SET_NONCE>:
20022f34:	b150      	cbz	r0, 20022f4c <HAL_FLASH_SET_NONCE+0x18>
20022f36:	b149      	cbz	r1, 20022f4c <HAL_FLASH_SET_NONCE+0x18>
20022f38:	680b      	ldr	r3, [r1, #0]
20022f3a:	6802      	ldr	r2, [r0, #0]
20022f3c:	ba1b      	rev	r3, r3
20022f3e:	6653      	str	r3, [r2, #100]	@ 0x64
20022f40:	684b      	ldr	r3, [r1, #4]
20022f42:	6802      	ldr	r2, [r0, #0]
20022f44:	ba1b      	rev	r3, r3
20022f46:	2000      	movs	r0, #0
20022f48:	6693      	str	r3, [r2, #104]	@ 0x68
20022f4a:	4770      	bx	lr
20022f4c:	2001      	movs	r0, #1
20022f4e:	4770      	bx	lr

20022f50 <HAL_FLASH_SET_AES>:
20022f50:	b158      	cbz	r0, 20022f6a <HAL_FLASH_SET_AES+0x1a>
20022f52:	6803      	ldr	r3, [r0, #0]
20022f54:	2901      	cmp	r1, #1
20022f56:	681a      	ldr	r2, [r3, #0]
20022f58:	d104      	bne.n	20022f64 <HAL_FLASH_SET_AES+0x14>
20022f5a:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
20022f5e:	2000      	movs	r0, #0
20022f60:	601a      	str	r2, [r3, #0]
20022f62:	4770      	bx	lr
20022f64:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
20022f68:	e7f9      	b.n	20022f5e <HAL_FLASH_SET_AES+0xe>
20022f6a:	2001      	movs	r0, #1
20022f6c:	4770      	bx	lr

20022f6e <HAL_FLASH_ENABLE_AES>:
20022f6e:	b150      	cbz	r0, 20022f86 <HAL_FLASH_ENABLE_AES+0x18>
20022f70:	6803      	ldr	r3, [r0, #0]
20022f72:	681a      	ldr	r2, [r3, #0]
20022f74:	b121      	cbz	r1, 20022f80 <HAL_FLASH_ENABLE_AES+0x12>
20022f76:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
20022f7a:	2000      	movs	r0, #0
20022f7c:	601a      	str	r2, [r3, #0]
20022f7e:	4770      	bx	lr
20022f80:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
20022f84:	e7f9      	b.n	20022f7a <HAL_FLASH_ENABLE_AES+0xc>
20022f86:	2001      	movs	r0, #1
20022f88:	4770      	bx	lr

20022f8a <HAL_FLASH_ENABLE_QSPI>:
20022f8a:	b150      	cbz	r0, 20022fa2 <HAL_FLASH_ENABLE_QSPI+0x18>
20022f8c:	6803      	ldr	r3, [r0, #0]
20022f8e:	681a      	ldr	r2, [r3, #0]
20022f90:	b121      	cbz	r1, 20022f9c <HAL_FLASH_ENABLE_QSPI+0x12>
20022f92:	f042 0201 	orr.w	r2, r2, #1
20022f96:	2000      	movs	r0, #0
20022f98:	601a      	str	r2, [r3, #0]
20022f9a:	4770      	bx	lr
20022f9c:	f022 0201 	bic.w	r2, r2, #1
20022fa0:	e7f9      	b.n	20022f96 <HAL_FLASH_ENABLE_QSPI+0xc>
20022fa2:	2001      	movs	r0, #1
20022fa4:	4770      	bx	lr

20022fa6 <HAL_FLASH_ENABLE_OPI>:
20022fa6:	b150      	cbz	r0, 20022fbe <HAL_FLASH_ENABLE_OPI+0x18>
20022fa8:	6803      	ldr	r3, [r0, #0]
20022faa:	681a      	ldr	r2, [r3, #0]
20022fac:	b121      	cbz	r1, 20022fb8 <HAL_FLASH_ENABLE_OPI+0x12>
20022fae:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20022fb2:	2000      	movs	r0, #0
20022fb4:	601a      	str	r2, [r3, #0]
20022fb6:	4770      	bx	lr
20022fb8:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20022fbc:	e7f9      	b.n	20022fb2 <HAL_FLASH_ENABLE_OPI+0xc>
20022fbe:	2001      	movs	r0, #1
20022fc0:	4770      	bx	lr

20022fc2 <HAL_FLASH_ENABLE_HYPER>:
20022fc2:	b150      	cbz	r0, 20022fda <HAL_FLASH_ENABLE_HYPER+0x18>
20022fc4:	6803      	ldr	r3, [r0, #0]
20022fc6:	689a      	ldr	r2, [r3, #8]
20022fc8:	b121      	cbz	r1, 20022fd4 <HAL_FLASH_ENABLE_HYPER+0x12>
20022fca:	f042 0210 	orr.w	r2, r2, #16
20022fce:	2000      	movs	r0, #0
20022fd0:	609a      	str	r2, [r3, #8]
20022fd2:	4770      	bx	lr
20022fd4:	f022 0210 	bic.w	r2, r2, #16
20022fd8:	e7f9      	b.n	20022fce <HAL_FLASH_ENABLE_HYPER+0xc>
20022fda:	2001      	movs	r0, #1
20022fdc:	4770      	bx	lr

20022fde <HAL_FLASH_ENABLE_CMD2>:
20022fde:	b150      	cbz	r0, 20022ff6 <HAL_FLASH_ENABLE_CMD2+0x18>
20022fe0:	6803      	ldr	r3, [r0, #0]
20022fe2:	681a      	ldr	r2, [r3, #0]
20022fe4:	b121      	cbz	r1, 20022ff0 <HAL_FLASH_ENABLE_CMD2+0x12>
20022fe6:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
20022fea:	2000      	movs	r0, #0
20022fec:	601a      	str	r2, [r3, #0]
20022fee:	4770      	bx	lr
20022ff0:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
20022ff4:	e7f9      	b.n	20022fea <HAL_FLASH_ENABLE_CMD2+0xc>
20022ff6:	2001      	movs	r0, #1
20022ff8:	4770      	bx	lr

20022ffa <HAL_FLASH_STAUS_MATCH_CMD2>:
20022ffa:	b150      	cbz	r0, 20023012 <HAL_FLASH_STAUS_MATCH_CMD2+0x18>
20022ffc:	6803      	ldr	r3, [r0, #0]
20022ffe:	681a      	ldr	r2, [r3, #0]
20023000:	b121      	cbz	r1, 2002300c <HAL_FLASH_STAUS_MATCH_CMD2+0x12>
20023002:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
20023006:	2000      	movs	r0, #0
20023008:	601a      	str	r2, [r3, #0]
2002300a:	4770      	bx	lr
2002300c:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20023010:	e7f9      	b.n	20023006 <HAL_FLASH_STAUS_MATCH_CMD2+0xc>
20023012:	2001      	movs	r0, #1
20023014:	4770      	bx	lr

20023016 <HAL_FLASH_SET_CS_TIME>:
20023016:	b530      	push	{r4, r5, lr}
20023018:	b180      	cbz	r0, 2002303c <HAL_FLASH_SET_CS_TIME+0x26>
2002301a:	6805      	ldr	r5, [r0, #0]
2002301c:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20023020:	68ac      	ldr	r4, [r5, #8]
20023022:	0680      	lsls	r0, r0, #26
20023024:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20023028:	2000      	movs	r0, #0
2002302a:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
2002302e:	f36f 149e 	bfc	r4, #6, #25
20023032:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20023036:	4322      	orrs	r2, r4
20023038:	60aa      	str	r2, [r5, #8]
2002303a:	bd30      	pop	{r4, r5, pc}
2002303c:	2001      	movs	r0, #1
2002303e:	e7fc      	b.n	2002303a <HAL_FLASH_SET_CS_TIME+0x24>

20023040 <HAL_FLASH_SET_ROW_BOUNDARY>:
20023040:	b130      	cbz	r0, 20023050 <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20023042:	6802      	ldr	r2, [r0, #0]
20023044:	2000      	movs	r0, #0
20023046:	6893      	ldr	r3, [r2, #8]
20023048:	f361 0302 	bfi	r3, r1, #0, #3
2002304c:	6093      	str	r3, [r2, #8]
2002304e:	4770      	bx	lr
20023050:	2001      	movs	r0, #1
20023052:	4770      	bx	lr

20023054 <HAL_FLASH_SET_LEGACY>:
20023054:	b150      	cbz	r0, 2002306c <HAL_FLASH_SET_LEGACY+0x18>
20023056:	6803      	ldr	r3, [r0, #0]
20023058:	689a      	ldr	r2, [r3, #8]
2002305a:	b121      	cbz	r1, 20023066 <HAL_FLASH_SET_LEGACY+0x12>
2002305c:	f042 0220 	orr.w	r2, r2, #32
20023060:	2000      	movs	r0, #0
20023062:	609a      	str	r2, [r3, #8]
20023064:	4770      	bx	lr
20023066:	f022 0220 	bic.w	r2, r2, #32
2002306a:	e7f9      	b.n	20023060 <HAL_FLASH_SET_LEGACY+0xc>
2002306c:	2001      	movs	r0, #1
2002306e:	4770      	bx	lr

20023070 <HAL_FLASH_SET_DUAL_MODE>:
20023070:	b150      	cbz	r0, 20023088 <HAL_FLASH_SET_DUAL_MODE+0x18>
20023072:	6803      	ldr	r3, [r0, #0]
20023074:	681a      	ldr	r2, [r3, #0]
20023076:	b121      	cbz	r1, 20023082 <HAL_FLASH_SET_DUAL_MODE+0x12>
20023078:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
2002307c:	2000      	movs	r0, #0
2002307e:	601a      	str	r2, [r3, #0]
20023080:	4770      	bx	lr
20023082:	f022 7280 	bic.w	r2, r2, #16777216	@ 0x1000000
20023086:	e7f9      	b.n	2002307c <HAL_FLASH_SET_DUAL_MODE+0xc>
20023088:	2001      	movs	r0, #1
2002308a:	4770      	bx	lr

2002308c <HAL_MPI_EN_FIXLAT>:
2002308c:	b150      	cbz	r0, 200230a4 <HAL_MPI_EN_FIXLAT+0x18>
2002308e:	6803      	ldr	r3, [r0, #0]
20023090:	689a      	ldr	r2, [r3, #8]
20023092:	b121      	cbz	r1, 2002309e <HAL_MPI_EN_FIXLAT+0x12>
20023094:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20023098:	2000      	movs	r0, #0
2002309a:	609a      	str	r2, [r3, #8]
2002309c:	4770      	bx	lr
2002309e:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
200230a2:	e7f9      	b.n	20023098 <HAL_MPI_EN_FIXLAT+0xc>
200230a4:	2001      	movs	r0, #1
200230a6:	4770      	bx	lr

200230a8 <HAL_MPI_ENABLE_DQS>:
200230a8:	b150      	cbz	r0, 200230c0 <HAL_MPI_ENABLE_DQS+0x18>
200230aa:	6803      	ldr	r3, [r0, #0]
200230ac:	689a      	ldr	r2, [r3, #8]
200230ae:	b121      	cbz	r1, 200230ba <HAL_MPI_ENABLE_DQS+0x12>
200230b0:	f042 0208 	orr.w	r2, r2, #8
200230b4:	2000      	movs	r0, #0
200230b6:	609a      	str	r2, [r3, #8]
200230b8:	4770      	bx	lr
200230ba:	f022 0208 	bic.w	r2, r2, #8
200230be:	e7f9      	b.n	200230b4 <HAL_MPI_ENABLE_DQS+0xc>
200230c0:	2001      	movs	r0, #1
200230c2:	4770      	bx	lr

200230c4 <HAL_MPI_SET_DQS_DELAY>:
200230c4:	b140      	cbz	r0, 200230d8 <HAL_MPI_SET_DQS_DELAY+0x14>
200230c6:	6802      	ldr	r2, [r0, #0]
200230c8:	2000      	movs	r0, #0
200230ca:	6d93      	ldr	r3, [r2, #88]	@ 0x58
200230cc:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
200230d0:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
200230d4:	6591      	str	r1, [r2, #88]	@ 0x58
200230d6:	4770      	bx	lr
200230d8:	2001      	movs	r0, #1
200230da:	4770      	bx	lr

200230dc <HAL_MPI_SET_SCK>:
200230dc:	b160      	cbz	r0, 200230f8 <HAL_MPI_SET_SCK+0x1c>
200230de:	6800      	ldr	r0, [r0, #0]
200230e0:	0652      	lsls	r2, r2, #25
200230e2:	6d83      	ldr	r3, [r0, #88]	@ 0x58
200230e4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
200230e8:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
200230ec:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
200230f0:	4319      	orrs	r1, r3
200230f2:	6581      	str	r1, [r0, #88]	@ 0x58
200230f4:	2000      	movs	r0, #0
200230f6:	4770      	bx	lr
200230f8:	2001      	movs	r0, #1
200230fa:	4770      	bx	lr

200230fc <HAL_MPI_CFG_DTR>:
200230fc:	b510      	push	{r4, lr}
200230fe:	b1f0      	cbz	r0, 2002313e <HAL_MPI_CFG_DTR+0x42>
20023100:	6804      	ldr	r4, [r0, #0]
20023102:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20023104:	b1b1      	cbz	r1, 20023134 <HAL_MPI_CFG_DTR+0x38>
20023106:	2a02      	cmp	r2, #2
20023108:	bf84      	itt	hi
2002310a:	3a02      	subhi	r2, #2
2002310c:	b2d2      	uxtbhi	r2, r2
2002310e:	0213      	lsls	r3, r2, #8
20023110:	f36f 000f 	bfc	r0, #0, #16
20023114:	f403 43fe 	and.w	r3, r3, #32512	@ 0x7f00
20023118:	4303      	orrs	r3, r0
2002311a:	0612      	lsls	r2, r2, #24
2002311c:	bf54      	ite	pl
2002311e:	f043 6380 	orrpl.w	r3, r3, #67108864	@ 0x4000000
20023122:	f043 63a0 	orrmi.w	r3, r3, #83886080	@ 0x5000000
20023126:	f043 030a 	orr.w	r3, r3, #10
2002312a:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
2002312e:	2000      	movs	r0, #0
20023130:	65a3      	str	r3, [r4, #88]	@ 0x58
20023132:	bd10      	pop	{r4, pc}
20023134:	4b03      	ldr	r3, [pc, #12]	@ (20023144 <HAL_MPI_CFG_DTR+0x48>)
20023136:	4003      	ands	r3, r0
20023138:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
2002313c:	e7f7      	b.n	2002312e <HAL_MPI_CFG_DTR+0x32>
2002313e:	2001      	movs	r0, #1
20023140:	e7f7      	b.n	20023132 <HAL_MPI_CFG_DTR+0x36>
20023142:	bf00      	nop
20023144:	faff0000 	.word	0xfaff0000

20023148 <HAL_MPI_MODIFY_RCMD_DELAY>:
20023148:	b130      	cbz	r0, 20023158 <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
2002314a:	6802      	ldr	r2, [r0, #0]
2002314c:	6c93      	ldr	r3, [r2, #72]	@ 0x48
2002314e:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20023152:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20023156:	6491      	str	r1, [r2, #72]	@ 0x48
20023158:	4770      	bx	lr

2002315a <HAL_MPI_MODIFY_WCMD_DELAY>:
2002315a:	b130      	cbz	r0, 2002316a <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
2002315c:	6802      	ldr	r2, [r0, #0]
2002315e:	6d13      	ldr	r3, [r2, #80]	@ 0x50
20023160:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20023164:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20023168:	6511      	str	r1, [r2, #80]	@ 0x50
2002316a:	4770      	bx	lr

2002316c <HAL_FLASH_CONFIG_AHB_READ>:
2002316c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002316e:	4605      	mov	r5, r0
20023170:	2800      	cmp	r0, #0
20023172:	d03d      	beq.n	200231f0 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20023174:	68c4      	ldr	r4, [r0, #12]
20023176:	b301      	cbz	r1, 200231ba <HAL_FLASH_CONFIG_AHB_READ+0x4e>
20023178:	f894 306a 	ldrb.w	r3, [r4, #106]	@ 0x6a
2002317c:	2b00      	cmp	r3, #0
2002317e:	d037      	beq.n	200231f0 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20023180:	f994 6072 	ldrsb.w	r6, [r4, #114]	@ 0x72
20023184:	f994 306e 	ldrsb.w	r3, [r4, #110]	@ 0x6e
20023188:	f994 106c 	ldrsb.w	r1, [r4, #108]	@ 0x6c
2002318c:	f994 206d 	ldrsb.w	r2, [r4, #109]	@ 0x6d
20023190:	9603      	str	r6, [sp, #12]
20023192:	f994 6071 	ldrsb.w	r6, [r4, #113]	@ 0x71
20023196:	9602      	str	r6, [sp, #8]
20023198:	f994 6070 	ldrsb.w	r6, [r4, #112]	@ 0x70
2002319c:	9601      	str	r6, [sp, #4]
2002319e:	f994 406f 	ldrsb.w	r4, [r4, #111]	@ 0x6f
200231a2:	9400      	str	r4, [sp, #0]
200231a4:	f7ff fd9e 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
200231a8:	68eb      	ldr	r3, [r5, #12]
200231aa:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
200231ae:	4628      	mov	r0, r5
200231b0:	f7ff fd8d 	bl	20022cce <HAL_FLASH_SET_AHB_RCMD>
200231b4:	2000      	movs	r0, #0
200231b6:	b004      	add	sp, #16
200231b8:	bd70      	pop	{r4, r5, r6, pc}
200231ba:	f894 3046 	ldrb.w	r3, [r4, #70]	@ 0x46
200231be:	b1bb      	cbz	r3, 200231f0 <HAL_FLASH_CONFIG_AHB_READ+0x84>
200231c0:	f994 604e 	ldrsb.w	r6, [r4, #78]	@ 0x4e
200231c4:	f994 304a 	ldrsb.w	r3, [r4, #74]	@ 0x4a
200231c8:	f994 1048 	ldrsb.w	r1, [r4, #72]	@ 0x48
200231cc:	f994 2049 	ldrsb.w	r2, [r4, #73]	@ 0x49
200231d0:	9603      	str	r6, [sp, #12]
200231d2:	f994 604d 	ldrsb.w	r6, [r4, #77]	@ 0x4d
200231d6:	9602      	str	r6, [sp, #8]
200231d8:	f994 604c 	ldrsb.w	r6, [r4, #76]	@ 0x4c
200231dc:	9601      	str	r6, [sp, #4]
200231de:	f994 404b 	ldrsb.w	r4, [r4, #75]	@ 0x4b
200231e2:	9400      	str	r4, [sp, #0]
200231e4:	f7ff fd7e 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
200231e8:	68eb      	ldr	r3, [r5, #12]
200231ea:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
200231ee:	e7de      	b.n	200231ae <HAL_FLASH_CONFIG_AHB_READ+0x42>
200231f0:	2001      	movs	r0, #1
200231f2:	e7e0      	b.n	200231b6 <HAL_FLASH_CONFIG_AHB_READ+0x4a>

200231f4 <HAL_FLASH_CONFIG_FULL_AHB_READ>:
200231f4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
200231f6:	4605      	mov	r5, r0
200231f8:	2800      	cmp	r0, #0
200231fa:	d036      	beq.n	2002326a <HAL_FLASH_CONFIG_FULL_AHB_READ+0x76>
200231fc:	68c4      	ldr	r4, [r0, #12]
200231fe:	b1e1      	cbz	r1, 2002323a <HAL_FLASH_CONFIG_FULL_AHB_READ+0x46>
20023200:	f994 616e 	ldrsb.w	r6, [r4, #366]	@ 0x16e
20023204:	f994 316a 	ldrsb.w	r3, [r4, #362]	@ 0x16a
20023208:	f994 1168 	ldrsb.w	r1, [r4, #360]	@ 0x168
2002320c:	f994 2169 	ldrsb.w	r2, [r4, #361]	@ 0x169
20023210:	9603      	str	r6, [sp, #12]
20023212:	f994 616d 	ldrsb.w	r6, [r4, #365]	@ 0x16d
20023216:	9602      	str	r6, [sp, #8]
20023218:	f994 616c 	ldrsb.w	r6, [r4, #364]	@ 0x16c
2002321c:	9601      	str	r6, [sp, #4]
2002321e:	f994 416b 	ldrsb.w	r4, [r4, #363]	@ 0x16b
20023222:	9400      	str	r4, [sp, #0]
20023224:	f7ff fd5e 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
20023228:	68eb      	ldr	r3, [r5, #12]
2002322a:	f893 1166 	ldrb.w	r1, [r3, #358]	@ 0x166
2002322e:	4628      	mov	r0, r5
20023230:	f7ff fd4d 	bl	20022cce <HAL_FLASH_SET_AHB_RCMD>
20023234:	2000      	movs	r0, #0
20023236:	b004      	add	sp, #16
20023238:	bd70      	pop	{r4, r5, r6, pc}
2002323a:	f994 615c 	ldrsb.w	r6, [r4, #348]	@ 0x15c
2002323e:	f994 3158 	ldrsb.w	r3, [r4, #344]	@ 0x158
20023242:	f994 1156 	ldrsb.w	r1, [r4, #342]	@ 0x156
20023246:	f994 2157 	ldrsb.w	r2, [r4, #343]	@ 0x157
2002324a:	9603      	str	r6, [sp, #12]
2002324c:	f994 615b 	ldrsb.w	r6, [r4, #347]	@ 0x15b
20023250:	9602      	str	r6, [sp, #8]
20023252:	f994 615a 	ldrsb.w	r6, [r4, #346]	@ 0x15a
20023256:	9601      	str	r6, [sp, #4]
20023258:	f994 4159 	ldrsb.w	r4, [r4, #345]	@ 0x159
2002325c:	9400      	str	r4, [sp, #0]
2002325e:	f7ff fd41 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
20023262:	68eb      	ldr	r3, [r5, #12]
20023264:	f893 1154 	ldrb.w	r1, [r3, #340]	@ 0x154
20023268:	e7e1      	b.n	2002322e <HAL_FLASH_CONFIG_FULL_AHB_READ+0x3a>
2002326a:	2001      	movs	r0, #1
2002326c:	e7e3      	b.n	20023236 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x42>

2002326e <HAL_FLASH_PRE_CMD>:
2002326e:	b530      	push	{r4, r5, lr}
20023270:	68c4      	ldr	r4, [r0, #12]
20023272:	b087      	sub	sp, #28
20023274:	b304      	cbz	r4, 200232b8 <HAL_FLASH_PRE_CMD+0x4a>
20023276:	2938      	cmp	r1, #56	@ 0x38
20023278:	d81e      	bhi.n	200232b8 <HAL_FLASH_PRE_CMD+0x4a>
2002327a:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
2002327e:	440c      	add	r4, r1
20023280:	7c23      	ldrb	r3, [r4, #16]
20023282:	b1cb      	cbz	r3, 200232b8 <HAL_FLASH_PRE_CMD+0x4a>
20023284:	f994 5018 	ldrsb.w	r5, [r4, #24]
20023288:	f994 3013 	ldrsb.w	r3, [r4, #19]
2002328c:	f994 2012 	ldrsb.w	r2, [r4, #18]
20023290:	f994 1011 	ldrsb.w	r1, [r4, #17]
20023294:	9504      	str	r5, [sp, #16]
20023296:	f994 5017 	ldrsb.w	r5, [r4, #23]
2002329a:	9503      	str	r5, [sp, #12]
2002329c:	f994 5016 	ldrsb.w	r5, [r4, #22]
200232a0:	9502      	str	r5, [sp, #8]
200232a2:	f994 5015 	ldrsb.w	r5, [r4, #21]
200232a6:	9501      	str	r5, [sp, #4]
200232a8:	f994 4014 	ldrsb.w	r4, [r4, #20]
200232ac:	9400      	str	r4, [sp, #0]
200232ae:	f7ff fdd0 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
200232b2:	2000      	movs	r0, #0
200232b4:	b007      	add	sp, #28
200232b6:	bd30      	pop	{r4, r5, pc}
200232b8:	2001      	movs	r0, #1
200232ba:	e7fb      	b.n	200232b4 <HAL_FLASH_PRE_CMD+0x46>

200232bc <HAL_FLASH_ISSUE_CMD>:
200232bc:	b5f0      	push	{r4, r5, r6, r7, lr}
200232be:	68c4      	ldr	r4, [r0, #12]
200232c0:	4606      	mov	r6, r0
200232c2:	4617      	mov	r7, r2
200232c4:	b087      	sub	sp, #28
200232c6:	b354      	cbz	r4, 2002331e <HAL_FLASH_ISSUE_CMD+0x62>
200232c8:	2938      	cmp	r1, #56	@ 0x38
200232ca:	d828      	bhi.n	2002331e <HAL_FLASH_ISSUE_CMD+0x62>
200232cc:	eb01 05c1 	add.w	r5, r1, r1, lsl #3
200232d0:	442c      	add	r4, r5
200232d2:	7c23      	ldrb	r3, [r4, #16]
200232d4:	b31b      	cbz	r3, 2002331e <HAL_FLASH_ISSUE_CMD+0x62>
200232d6:	f994 c018 	ldrsb.w	ip, [r4, #24]
200232da:	f994 3013 	ldrsb.w	r3, [r4, #19]
200232de:	f994 2012 	ldrsb.w	r2, [r4, #18]
200232e2:	f994 1011 	ldrsb.w	r1, [r4, #17]
200232e6:	f8cd c010 	str.w	ip, [sp, #16]
200232ea:	f994 c017 	ldrsb.w	ip, [r4, #23]
200232ee:	f8cd c00c 	str.w	ip, [sp, #12]
200232f2:	f994 c016 	ldrsb.w	ip, [r4, #22]
200232f6:	f8cd c008 	str.w	ip, [sp, #8]
200232fa:	f994 c015 	ldrsb.w	ip, [r4, #21]
200232fe:	f8cd c004 	str.w	ip, [sp, #4]
20023302:	f994 4014 	ldrsb.w	r4, [r4, #20]
20023306:	9400      	str	r4, [sp, #0]
20023308:	f7ff fda3 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
2002330c:	68f3      	ldr	r3, [r6, #12]
2002330e:	463a      	mov	r2, r7
20023310:	442b      	add	r3, r5
20023312:	4630      	mov	r0, r6
20023314:	7c19      	ldrb	r1, [r3, #16]
20023316:	f7ff fd57 	bl	20022dc8 <HAL_FLASH_SET_CMD>
2002331a:	b007      	add	sp, #28
2002331c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002331e:	2001      	movs	r0, #1
20023320:	e7fb      	b.n	2002331a <HAL_FLASH_ISSUE_CMD+0x5e>

20023322 <HAL_FLASH_ISSUE_CMD_SEQ>:
20023322:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20023326:	4690      	mov	r8, r2
20023328:	68c2      	ldr	r2, [r0, #12]
2002332a:	4604      	mov	r4, r0
2002332c:	b086      	sub	sp, #24
2002332e:	2a00      	cmp	r2, #0
20023330:	d072      	beq.n	20023418 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023332:	2938      	cmp	r1, #56	@ 0x38
20023334:	d870      	bhi.n	20023418 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023336:	eb01 07c1 	add.w	r7, r1, r1, lsl #3
2002333a:	19d6      	adds	r6, r2, r7
2002333c:	7c31      	ldrb	r1, [r6, #16]
2002333e:	2900      	cmp	r1, #0
20023340:	d06a      	beq.n	20023418 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023342:	2b38      	cmp	r3, #56	@ 0x38
20023344:	d868      	bhi.n	20023418 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023346:	eb03 05c3 	add.w	r5, r3, r3, lsl #3
2002334a:	442a      	add	r2, r5
2002334c:	7c13      	ldrb	r3, [r2, #16]
2002334e:	2b00      	cmp	r3, #0
20023350:	d062      	beq.n	20023418 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023352:	f996 c018 	ldrsb.w	ip, [r6, #24]
20023356:	f996 3013 	ldrsb.w	r3, [r6, #19]
2002335a:	f996 2012 	ldrsb.w	r2, [r6, #18]
2002335e:	f996 1011 	ldrsb.w	r1, [r6, #17]
20023362:	f8cd c010 	str.w	ip, [sp, #16]
20023366:	f996 c017 	ldrsb.w	ip, [r6, #23]
2002336a:	f8cd c00c 	str.w	ip, [sp, #12]
2002336e:	f996 c016 	ldrsb.w	ip, [r6, #22]
20023372:	f8cd c008 	str.w	ip, [sp, #8]
20023376:	f996 c015 	ldrsb.w	ip, [r6, #21]
2002337a:	f8cd c004 	str.w	ip, [sp, #4]
2002337e:	f996 6014 	ldrsb.w	r6, [r6, #20]
20023382:	9600      	str	r6, [sp, #0]
20023384:	f7ff fd65 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
20023388:	68e0      	ldr	r0, [r4, #12]
2002338a:	4428      	add	r0, r5
2002338c:	f990 6018 	ldrsb.w	r6, [r0, #24]
20023390:	f990 3013 	ldrsb.w	r3, [r0, #19]
20023394:	f990 2012 	ldrsb.w	r2, [r0, #18]
20023398:	f990 1011 	ldrsb.w	r1, [r0, #17]
2002339c:	9604      	str	r6, [sp, #16]
2002339e:	f990 6017 	ldrsb.w	r6, [r0, #23]
200233a2:	9603      	str	r6, [sp, #12]
200233a4:	f990 6016 	ldrsb.w	r6, [r0, #22]
200233a8:	9602      	str	r6, [sp, #8]
200233aa:	f990 6015 	ldrsb.w	r6, [r0, #21]
200233ae:	9601      	str	r6, [sp, #4]
200233b0:	f990 0014 	ldrsb.w	r0, [r0, #20]
200233b4:	9000      	str	r0, [sp, #0]
200233b6:	4620      	mov	r0, r4
200233b8:	f7ff fd6c 	bl	20022e94 <HAL_FLASH_MANUAL_CMD2>
200233bc:	2200      	movs	r2, #0
200233be:	6823      	ldr	r3, [r4, #0]
200233c0:	2101      	movs	r1, #1
200233c2:	67da      	str	r2, [r3, #124]	@ 0x7c
200233c4:	68e3      	ldr	r3, [r4, #12]
200233c6:	6822      	ldr	r2, [r4, #0]
200233c8:	442b      	add	r3, r5
200233ca:	7c1b      	ldrb	r3, [r3, #16]
200233cc:	4620      	mov	r0, r4
200233ce:	62d3      	str	r3, [r2, #44]	@ 0x2c
200233d0:	6823      	ldr	r3, [r4, #0]
200233d2:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
200233d4:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
200233d8:	f7ff fe01 	bl	20022fde <HAL_FLASH_ENABLE_CMD2>
200233dc:	4620      	mov	r0, r4
200233de:	f7ff fe0c 	bl	20022ffa <HAL_FLASH_STAUS_MATCH_CMD2>
200233e2:	6823      	ldr	r3, [r4, #0]
200233e4:	f8c3 801c 	str.w	r8, [r3, #28]
200233e8:	68e3      	ldr	r3, [r4, #12]
200233ea:	6822      	ldr	r2, [r4, #0]
200233ec:	443b      	add	r3, r7
200233ee:	7c1b      	ldrb	r3, [r3, #16]
200233f0:	6193      	str	r3, [r2, #24]
200233f2:	4620      	mov	r0, r4
200233f4:	f7ff fd0a 	bl	20022e0c <HAL_FLASH_STATUS_MATCH>
200233f8:	2800      	cmp	r0, #0
200233fa:	d0fa      	beq.n	200233f2 <HAL_FLASH_ISSUE_CMD_SEQ+0xd0>
200233fc:	2109      	movs	r1, #9
200233fe:	4620      	mov	r0, r4
20023400:	f7ff fcfe 	bl	20022e00 <HAL_FLASH_CLR_STATUS>
20023404:	2100      	movs	r1, #0
20023406:	f7ff fdea 	bl	20022fde <HAL_FLASH_ENABLE_CMD2>
2002340a:	4620      	mov	r0, r4
2002340c:	f7ff fdf5 	bl	20022ffa <HAL_FLASH_STAUS_MATCH_CMD2>
20023410:	4608      	mov	r0, r1
20023412:	b006      	add	sp, #24
20023414:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20023418:	2001      	movs	r0, #1
2002341a:	e7fa      	b.n	20023412 <HAL_FLASH_ISSUE_CMD_SEQ+0xf0>

2002341c <nor_qspi_switch>:
2002341c:	b570      	push	{r4, r5, r6, lr}
2002341e:	4604      	mov	r4, r0
20023420:	b3e0      	cbz	r0, 2002349c <nor_qspi_switch+0x80>
20023422:	68c3      	ldr	r3, [r0, #12]
20023424:	b3d3      	cbz	r3, 2002349c <nor_qspi_switch+0x80>
20023426:	b3c9      	cbz	r1, 2002349c <nor_qspi_switch+0x80>
20023428:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
2002342c:	2101      	movs	r1, #1
2002342e:	b3b5      	cbz	r5, 2002349e <nor_qspi_switch+0x82>
20023430:	f7ff fca5 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023434:	2200      	movs	r2, #0
20023436:	2114      	movs	r1, #20
20023438:	4620      	mov	r0, r4
2002343a:	f7ff ff3f 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002343e:	4620      	mov	r0, r4
20023440:	f7ff fcf3 	bl	20022e2a <HAL_FLASH_READ32>
20023444:	f010 0501 	ands.w	r5, r0, #1
20023448:	d000      	beq.n	2002344c <nor_qspi_switch+0x30>
2002344a:	e7fe      	b.n	2002344a <nor_qspi_switch+0x2e>
2002344c:	462a      	mov	r2, r5
2002344e:	2115      	movs	r1, #21
20023450:	4620      	mov	r0, r4
20023452:	f7ff ff33 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023456:	4606      	mov	r6, r0
20023458:	b120      	cbz	r0, 20023464 <nor_qspi_switch+0x48>
2002345a:	462a      	mov	r2, r5
2002345c:	4629      	mov	r1, r5
2002345e:	4620      	mov	r0, r4
20023460:	f7ff ff2c 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023464:	2102      	movs	r1, #2
20023466:	4620      	mov	r0, r4
20023468:	f7ff fc82 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
2002346c:	2101      	movs	r1, #1
2002346e:	4620      	mov	r0, r4
20023470:	f7ff fc85 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023474:	2200      	movs	r2, #0
20023476:	212b      	movs	r1, #43	@ 0x2b
20023478:	4620      	mov	r0, r4
2002347a:	f7ff ff1f 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002347e:	b16e      	cbz	r6, 2002349c <nor_qspi_switch+0x80>
20023480:	2101      	movs	r1, #1
20023482:	4620      	mov	r0, r4
20023484:	f7ff fc7b 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023488:	2200      	movs	r2, #0
2002348a:	2102      	movs	r1, #2
2002348c:	4620      	mov	r0, r4
2002348e:	f7ff ff15 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023492:	4620      	mov	r0, r4
20023494:	f7ff fcc0 	bl	20022e18 <HAL_FLASH_IS_PROG_DONE>
20023498:	2800      	cmp	r0, #0
2002349a:	d0f5      	beq.n	20023488 <nor_qspi_switch+0x6c>
2002349c:	bd70      	pop	{r4, r5, r6, pc}
2002349e:	f7ff fc6e 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
200234a2:	462a      	mov	r2, r5
200234a4:	2102      	movs	r1, #2
200234a6:	4620      	mov	r0, r4
200234a8:	f7ff ff08 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200234ac:	4620      	mov	r0, r4
200234ae:	f7ff fcbc 	bl	20022e2a <HAL_FLASH_READ32>
200234b2:	462a      	mov	r2, r5
200234b4:	2114      	movs	r1, #20
200234b6:	4620      	mov	r0, r4
200234b8:	f7ff ff00 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200234bc:	b910      	cbnz	r0, 200234c4 <nor_qspi_switch+0xa8>
200234be:	4620      	mov	r0, r4
200234c0:	f7ff fcb3 	bl	20022e2a <HAL_FLASH_READ32>
200234c4:	68e3      	ldr	r3, [r4, #12]
200234c6:	7a1b      	ldrb	r3, [r3, #8]
200234c8:	b3ab      	cbz	r3, 20023536 <nor_qspi_switch+0x11a>
200234ca:	2101      	movs	r1, #1
200234cc:	f003 050f 	and.w	r5, r3, #15
200234d0:	091b      	lsrs	r3, r3, #4
200234d2:	fa01 f303 	lsl.w	r3, r1, r3
200234d6:	b2db      	uxtb	r3, r3
200234d8:	b10d      	cbz	r5, 200234de <nor_qspi_switch+0xc2>
200234da:	461d      	mov	r5, r3
200234dc:	2300      	movs	r3, #0
200234de:	2200      	movs	r2, #0
200234e0:	2115      	movs	r1, #21
200234e2:	4620      	mov	r0, r4
200234e4:	ea43 2505 	orr.w	r5, r3, r5, lsl #8
200234e8:	f7ff fee8 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200234ec:	4606      	mov	r6, r0
200234ee:	b120      	cbz	r0, 200234fa <nor_qspi_switch+0xde>
200234f0:	2200      	movs	r2, #0
200234f2:	4620      	mov	r0, r4
200234f4:	4611      	mov	r1, r2
200234f6:	f7ff fee1 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200234fa:	4629      	mov	r1, r5
200234fc:	4620      	mov	r0, r4
200234fe:	f7ff fc37 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
20023502:	2102      	movs	r1, #2
20023504:	4620      	mov	r0, r4
20023506:	f7ff fc3a 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
2002350a:	2200      	movs	r2, #0
2002350c:	2103      	movs	r1, #3
2002350e:	4620      	mov	r0, r4
20023510:	f7ff fed4 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023514:	2e00      	cmp	r6, #0
20023516:	d0c1      	beq.n	2002349c <nor_qspi_switch+0x80>
20023518:	2101      	movs	r1, #1
2002351a:	4620      	mov	r0, r4
2002351c:	f7ff fc2f 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023520:	2200      	movs	r2, #0
20023522:	2102      	movs	r1, #2
20023524:	4620      	mov	r0, r4
20023526:	f7ff fec9 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002352a:	4620      	mov	r0, r4
2002352c:	f7ff fc74 	bl	20022e18 <HAL_FLASH_IS_PROG_DONE>
20023530:	2800      	cmp	r0, #0
20023532:	d0f5      	beq.n	20023520 <nor_qspi_switch+0x104>
20023534:	e7b2      	b.n	2002349c <nor_qspi_switch+0x80>
20023536:	2502      	movs	r5, #2
20023538:	e7d1      	b.n	200234de <nor_qspi_switch+0xc2>

2002353a <HAL_FLASH_SET_QUAL_SPI>:
2002353a:	b538      	push	{r3, r4, r5, lr}
2002353c:	4604      	mov	r4, r0
2002353e:	460d      	mov	r5, r1
20023540:	f7ff ff6c 	bl	2002341c <nor_qspi_switch>
20023544:	4629      	mov	r1, r5
20023546:	4620      	mov	r0, r4
20023548:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002354c:	f7ff be0e 	b.w	2002316c <HAL_FLASH_CONFIG_AHB_READ>

20023550 <HAL_FLASH_FADDR_SET_QSPI>:
20023550:	b538      	push	{r3, r4, r5, lr}
20023552:	4604      	mov	r4, r0
20023554:	460d      	mov	r5, r1
20023556:	f7ff ff61 	bl	2002341c <nor_qspi_switch>
2002355a:	4629      	mov	r1, r5
2002355c:	4620      	mov	r0, r4
2002355e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023562:	f7ff be47 	b.w	200231f4 <HAL_FLASH_CONFIG_FULL_AHB_READ>

20023566 <HAL_FLASH_GET_NOR_ID>:
20023566:	b510      	push	{r4, lr}
20023568:	4604      	mov	r4, r0
2002356a:	b140      	cbz	r0, 2002357e <HAL_FLASH_GET_NOR_ID+0x18>
2002356c:	6802      	ldr	r2, [r0, #0]
2002356e:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20023570:	f36f 0315 	bfc	r3, #0, #22
20023574:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
20023578:	f043 0301 	orr.w	r3, r3, #1
2002357c:	6293      	str	r3, [r2, #40]	@ 0x28
2002357e:	2103      	movs	r1, #3
20023580:	4620      	mov	r0, r4
20023582:	f7ff fbfc 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023586:	2200      	movs	r2, #0
20023588:	219f      	movs	r1, #159	@ 0x9f
2002358a:	4620      	mov	r0, r4
2002358c:	f7ff fc1c 	bl	20022dc8 <HAL_FLASH_SET_CMD>
20023590:	4620      	mov	r0, r4
20023592:	f7ff fc4a 	bl	20022e2a <HAL_FLASH_READ32>
20023596:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002359a:	bd10      	pop	{r4, pc}

2002359c <HAL_FLASH_CLR_PROTECT>:
2002359c:	b570      	push	{r4, r5, r6, lr}
2002359e:	4604      	mov	r4, r0
200235a0:	2800      	cmp	r0, #0
200235a2:	d03e      	beq.n	20023622 <HAL_FLASH_CLR_PROTECT+0x86>
200235a4:	68c3      	ldr	r3, [r0, #12]
200235a6:	2101      	movs	r1, #1
200235a8:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
200235ac:	2d00      	cmp	r5, #0
200235ae:	d03b      	beq.n	20023628 <HAL_FLASH_CLR_PROTECT+0x8c>
200235b0:	f7ff fbe5 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
200235b4:	2200      	movs	r2, #0
200235b6:	2102      	movs	r1, #2
200235b8:	4620      	mov	r0, r4
200235ba:	f7ff fe7f 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200235be:	bb88      	cbnz	r0, 20023624 <HAL_FLASH_CLR_PROTECT+0x88>
200235c0:	4620      	mov	r0, r4
200235c2:	f7ff fc32 	bl	20022e2a <HAL_FLASH_READ32>
200235c6:	b2c0      	uxtb	r0, r0
200235c8:	68e3      	ldr	r3, [r4, #12]
200235ca:	79dd      	ldrb	r5, [r3, #7]
200235cc:	b10d      	cbz	r5, 200235d2 <HAL_FLASH_CLR_PROTECT+0x36>
200235ce:	ea20 0505 	bic.w	r5, r0, r5
200235d2:	2200      	movs	r2, #0
200235d4:	2115      	movs	r1, #21
200235d6:	4620      	mov	r0, r4
200235d8:	f7ff fe70 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200235dc:	4606      	mov	r6, r0
200235de:	b120      	cbz	r0, 200235ea <HAL_FLASH_CLR_PROTECT+0x4e>
200235e0:	2200      	movs	r2, #0
200235e2:	4620      	mov	r0, r4
200235e4:	4611      	mov	r1, r2
200235e6:	f7ff fe69 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200235ea:	4629      	mov	r1, r5
200235ec:	4620      	mov	r0, r4
200235ee:	f7ff fbbf 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
200235f2:	2101      	movs	r1, #1
200235f4:	4620      	mov	r0, r4
200235f6:	f7ff fbc2 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
200235fa:	2200      	movs	r2, #0
200235fc:	2103      	movs	r1, #3
200235fe:	4620      	mov	r0, r4
20023600:	f7ff fe5c 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023604:	b16e      	cbz	r6, 20023622 <HAL_FLASH_CLR_PROTECT+0x86>
20023606:	2101      	movs	r1, #1
20023608:	4620      	mov	r0, r4
2002360a:	f7ff fbb8 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
2002360e:	2200      	movs	r2, #0
20023610:	2102      	movs	r1, #2
20023612:	4620      	mov	r0, r4
20023614:	f7ff fe52 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023618:	4620      	mov	r0, r4
2002361a:	f7ff fbfd 	bl	20022e18 <HAL_FLASH_IS_PROG_DONE>
2002361e:	2800      	cmp	r0, #0
20023620:	d0f5      	beq.n	2002360e <HAL_FLASH_CLR_PROTECT+0x72>
20023622:	bd70      	pop	{r4, r5, r6, pc}
20023624:	2000      	movs	r0, #0
20023626:	e7cf      	b.n	200235c8 <HAL_FLASH_CLR_PROTECT+0x2c>
20023628:	f7ff fba9 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
2002362c:	462a      	mov	r2, r5
2002362e:	2102      	movs	r1, #2
20023630:	4620      	mov	r0, r4
20023632:	f7ff fe43 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023636:	2800      	cmp	r0, #0
20023638:	d13e      	bne.n	200236b8 <HAL_FLASH_CLR_PROTECT+0x11c>
2002363a:	4620      	mov	r0, r4
2002363c:	f7ff fbf5 	bl	20022e2a <HAL_FLASH_READ32>
20023640:	b2c6      	uxtb	r6, r0
20023642:	2200      	movs	r2, #0
20023644:	2114      	movs	r1, #20
20023646:	4620      	mov	r0, r4
20023648:	f7ff fe38 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002364c:	b918      	cbnz	r0, 20023656 <HAL_FLASH_CLR_PROTECT+0xba>
2002364e:	4620      	mov	r0, r4
20023650:	f7ff fbeb 	bl	20022e2a <HAL_FLASH_READ32>
20023654:	b2c5      	uxtb	r5, r0
20023656:	68e3      	ldr	r3, [r4, #12]
20023658:	79d9      	ldrb	r1, [r3, #7]
2002365a:	b109      	cbz	r1, 20023660 <HAL_FLASH_CLR_PROTECT+0xc4>
2002365c:	ea26 0101 	bic.w	r1, r6, r1
20023660:	2200      	movs	r2, #0
20023662:	4620      	mov	r0, r4
20023664:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
20023668:	2115      	movs	r1, #21
2002366a:	f7ff fe27 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002366e:	4606      	mov	r6, r0
20023670:	b120      	cbz	r0, 2002367c <HAL_FLASH_CLR_PROTECT+0xe0>
20023672:	2200      	movs	r2, #0
20023674:	4620      	mov	r0, r4
20023676:	4611      	mov	r1, r2
20023678:	f7ff fe20 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002367c:	4629      	mov	r1, r5
2002367e:	4620      	mov	r0, r4
20023680:	f7ff fb76 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
20023684:	2102      	movs	r1, #2
20023686:	4620      	mov	r0, r4
20023688:	f7ff fb79 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
2002368c:	2200      	movs	r2, #0
2002368e:	2103      	movs	r1, #3
20023690:	4620      	mov	r0, r4
20023692:	f7ff fe13 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023696:	2e00      	cmp	r6, #0
20023698:	d0c3      	beq.n	20023622 <HAL_FLASH_CLR_PROTECT+0x86>
2002369a:	2101      	movs	r1, #1
2002369c:	4620      	mov	r0, r4
2002369e:	f7ff fb6e 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
200236a2:	2200      	movs	r2, #0
200236a4:	2102      	movs	r1, #2
200236a6:	4620      	mov	r0, r4
200236a8:	f7ff fe08 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200236ac:	4620      	mov	r0, r4
200236ae:	f7ff fbb3 	bl	20022e18 <HAL_FLASH_IS_PROG_DONE>
200236b2:	2800      	cmp	r0, #0
200236b4:	d0f5      	beq.n	200236a2 <HAL_FLASH_CLR_PROTECT+0x106>
200236b6:	e7b4      	b.n	20023622 <HAL_FLASH_CLR_PROTECT+0x86>
200236b8:	462e      	mov	r6, r5
200236ba:	e7c2      	b.n	20023642 <HAL_FLASH_CLR_PROTECT+0xa6>

200236bc <HAL_QSPI_SET_CLK_INV>:
200236bc:	b160      	cbz	r0, 200236d8 <HAL_QSPI_SET_CLK_INV+0x1c>
200236be:	6800      	ldr	r0, [r0, #0]
200236c0:	b150      	cbz	r0, 200236d8 <HAL_QSPI_SET_CLK_INV+0x1c>
200236c2:	6d83      	ldr	r3, [r0, #88]	@ 0x58
200236c4:	0609      	lsls	r1, r1, #24
200236c6:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
200236ca:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
200236ce:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
200236d2:	4311      	orrs	r1, r2
200236d4:	4319      	orrs	r1, r3
200236d6:	6581      	str	r1, [r0, #88]	@ 0x58
200236d8:	4770      	bx	lr

200236da <HAL_FLASH_RELEASE_DPD>:
200236da:	b538      	push	{r3, r4, r5, lr}
200236dc:	4604      	mov	r4, r0
200236de:	b1d0      	cbz	r0, 20023716 <HAL_FLASH_RELEASE_DPD+0x3c>
200236e0:	6803      	ldr	r3, [r0, #0]
200236e2:	21ab      	movs	r1, #171	@ 0xab
200236e4:	681d      	ldr	r5, [r3, #0]
200236e6:	f015 0501 	ands.w	r5, r5, #1
200236ea:	bf02      	ittt	eq
200236ec:	681a      	ldreq	r2, [r3, #0]
200236ee:	f042 0201 	orreq.w	r2, r2, #1
200236f2:	601a      	streq	r2, [r3, #0]
200236f4:	6802      	ldr	r2, [r0, #0]
200236f6:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200236f8:	f36f 0315 	bfc	r3, #0, #22
200236fc:	f043 0301 	orr.w	r3, r3, #1
20023700:	6293      	str	r3, [r2, #40]	@ 0x28
20023702:	2200      	movs	r2, #0
20023704:	f7ff fb60 	bl	20022dc8 <HAL_FLASH_SET_CMD>
20023708:	b925      	cbnz	r5, 20023714 <HAL_FLASH_RELEASE_DPD+0x3a>
2002370a:	6822      	ldr	r2, [r4, #0]
2002370c:	6813      	ldr	r3, [r2, #0]
2002370e:	f023 0301 	bic.w	r3, r3, #1
20023712:	6013      	str	r3, [r2, #0]
20023714:	bd38      	pop	{r3, r4, r5, pc}
20023716:	2001      	movs	r0, #1
20023718:	e7fc      	b.n	20023714 <HAL_FLASH_RELEASE_DPD+0x3a>

2002371a <flash_handle_valid>:
2002371a:	b118      	cbz	r0, 20023724 <flash_handle_valid+0xa>
2002371c:	68c0      	ldr	r0, [r0, #12]
2002371e:	3800      	subs	r0, #0
20023720:	bf18      	it	ne
20023722:	2001      	movne	r0, #1
20023724:	4770      	bx	lr

20023726 <HAL_GET_FLASH_MID>:
20023726:	2000      	movs	r0, #0
20023728:	4770      	bx	lr

2002372a <HAL_FLASH_DMA_START>:
2002372a:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002372e:	4688      	mov	r8, r1
20023730:	4699      	mov	r9, r3
20023732:	4604      	mov	r4, r0
20023734:	2800      	cmp	r0, #0
20023736:	d045      	beq.n	200237c4 <HAL_FLASH_DMA_START+0x9a>
20023738:	6883      	ldr	r3, [r0, #8]
2002373a:	2b00      	cmp	r3, #0
2002373c:	d042      	beq.n	200237c4 <HAL_FLASH_DMA_START+0x9a>
2002373e:	f1b9 0f00 	cmp.w	r9, #0
20023742:	d03f      	beq.n	200237c4 <HAL_FLASH_DMA_START+0x9a>
20023744:	6801      	ldr	r1, [r0, #0]
20023746:	680f      	ldr	r7, [r1, #0]
20023748:	b332      	cbz	r2, 20023798 <HAL_FLASH_DMA_START+0x6e>
2002374a:	2210      	movs	r2, #16
2002374c:	609a      	str	r2, [r3, #8]
2002374e:	2300      	movs	r3, #0
20023750:	6882      	ldr	r2, [r0, #8]
20023752:	464e      	mov	r6, r9
20023754:	6153      	str	r3, [r2, #20]
20023756:	6882      	ldr	r2, [r0, #8]
20023758:	6193      	str	r3, [r2, #24]
2002375a:	6882      	ldr	r2, [r0, #8]
2002375c:	60d3      	str	r3, [r2, #12]
2002375e:	2280      	movs	r2, #128	@ 0x80
20023760:	6883      	ldr	r3, [r0, #8]
20023762:	611a      	str	r2, [r3, #16]
20023764:	6805      	ldr	r5, [r0, #0]
20023766:	3504      	adds	r5, #4
20023768:	68a0      	ldr	r0, [r4, #8]
2002376a:	f7fe ff95 	bl	20022698 <HAL_DMA_DeInit>
2002376e:	bb50      	cbnz	r0, 200237c6 <HAL_FLASH_DMA_START+0x9c>
20023770:	68a0      	ldr	r0, [r4, #8]
20023772:	f7fe ff2d 	bl	200225d0 <HAL_DMA_Init>
20023776:	bb30      	cbnz	r0, 200237c6 <HAL_FLASH_DMA_START+0x9c>
20023778:	6823      	ldr	r3, [r4, #0]
2002377a:	f047 0720 	orr.w	r7, r7, #32
2002377e:	601f      	str	r7, [r3, #0]
20023780:	6822      	ldr	r2, [r4, #0]
20023782:	f109 33ff 	add.w	r3, r9, #4294967295
20023786:	6253      	str	r3, [r2, #36]	@ 0x24
20023788:	4641      	mov	r1, r8
2002378a:	4633      	mov	r3, r6
2002378c:	462a      	mov	r2, r5
2002378e:	68a0      	ldr	r0, [r4, #8]
20023790:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20023794:	f7ff b8de 	b.w	20022954 <HAL_DMA_Start>
20023798:	f44f 7100 	mov.w	r1, #512	@ 0x200
2002379c:	609a      	str	r2, [r3, #8]
2002379e:	6883      	ldr	r3, [r0, #8]
200237a0:	f109 0603 	add.w	r6, r9, #3
200237a4:	6159      	str	r1, [r3, #20]
200237a6:	f44f 6100 	mov.w	r1, #2048	@ 0x800
200237aa:	6883      	ldr	r3, [r0, #8]
200237ac:	4645      	mov	r5, r8
200237ae:	6199      	str	r1, [r3, #24]
200237b0:	6883      	ldr	r3, [r0, #8]
200237b2:	08b6      	lsrs	r6, r6, #2
200237b4:	60da      	str	r2, [r3, #12]
200237b6:	2280      	movs	r2, #128	@ 0x80
200237b8:	6883      	ldr	r3, [r0, #8]
200237ba:	611a      	str	r2, [r3, #16]
200237bc:	6803      	ldr	r3, [r0, #0]
200237be:	f103 0804 	add.w	r8, r3, #4
200237c2:	e7d1      	b.n	20023768 <HAL_FLASH_DMA_START+0x3e>
200237c4:	2001      	movs	r0, #1
200237c6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

200237ca <HAL_FLASH_DMA_WAIT_DONE>:
200237ca:	b510      	push	{r4, lr}
200237cc:	460a      	mov	r2, r1
200237ce:	4604      	mov	r4, r0
200237d0:	b170      	cbz	r0, 200237f0 <HAL_FLASH_DMA_WAIT_DONE+0x26>
200237d2:	6880      	ldr	r0, [r0, #8]
200237d4:	b160      	cbz	r0, 200237f0 <HAL_FLASH_DMA_WAIT_DONE+0x26>
200237d6:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
200237d8:	b111      	cbz	r1, 200237e0 <HAL_FLASH_DMA_WAIT_DONE+0x16>
200237da:	f04f 32ff 	mov.w	r2, #4294967295
200237de:	2100      	movs	r1, #0
200237e0:	f7fe ffba 	bl	20022758 <HAL_DMA_PollForTransfer>
200237e4:	6822      	ldr	r2, [r4, #0]
200237e6:	6813      	ldr	r3, [r2, #0]
200237e8:	f023 0320 	bic.w	r3, r3, #32
200237ec:	6013      	str	r3, [r2, #0]
200237ee:	bd10      	pop	{r4, pc}
200237f0:	2001      	movs	r0, #1
200237f2:	e7fc      	b.n	200237ee <HAL_FLASH_DMA_WAIT_DONE+0x24>

200237f4 <HAL_FLASH_ALIAS_CFG>:
200237f4:	b538      	push	{r3, r4, r5, lr}
200237f6:	461d      	mov	r5, r3
200237f8:	4604      	mov	r4, r0
200237fa:	b158      	cbz	r0, 20023814 <HAL_FLASH_ALIAS_CFG+0x20>
200237fc:	6903      	ldr	r3, [r0, #16]
200237fe:	428b      	cmp	r3, r1
20023800:	bf98      	it	ls
20023802:	1ac9      	subls	r1, r1, r3
20023804:	f7ff fb68 	bl	20022ed8 <HAL_FLASH_SET_ALIAS_RANGE>
20023808:	4629      	mov	r1, r5
2002380a:	4620      	mov	r0, r4
2002380c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023810:	f7ff bb74 	b.w	20022efc <HAL_FLASH_SET_ALIAS_OFFSET>
20023814:	bd38      	pop	{r3, r4, r5, pc}

20023816 <HAL_FLASH_NONCE_CFG>:
20023816:	b570      	push	{r4, r5, r6, lr}
20023818:	460c      	mov	r4, r1
2002381a:	4615      	mov	r5, r2
2002381c:	4619      	mov	r1, r3
2002381e:	4606      	mov	r6, r0
20023820:	b180      	cbz	r0, 20023844 <HAL_FLASH_NONCE_CFG+0x2e>
20023822:	b17b      	cbz	r3, 20023844 <HAL_FLASH_NONCE_CFG+0x2e>
20023824:	f7ff fb86 	bl	20022f34 <HAL_FLASH_SET_NONCE>
20023828:	6933      	ldr	r3, [r6, #16]
2002382a:	4630      	mov	r0, r6
2002382c:	42a3      	cmp	r3, r4
2002382e:	bf98      	it	ls
20023830:	1ae4      	subls	r4, r4, r3
20023832:	42ab      	cmp	r3, r5
20023834:	bf98      	it	ls
20023836:	1aed      	subls	r5, r5, r3
20023838:	462a      	mov	r2, r5
2002383a:	4621      	mov	r1, r4
2002383c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
20023840:	f7ff bb66 	b.w	20022f10 <HAL_FLASH_SET_CTR>
20023844:	bd70      	pop	{r4, r5, r6, pc}

20023846 <HAL_FLASH_AES_CFG>:
20023846:	b510      	push	{r4, lr}
20023848:	4604      	mov	r4, r0
2002384a:	b148      	cbz	r0, 20023860 <HAL_FLASH_AES_CFG+0x1a>
2002384c:	b101      	cbz	r1, 20023850 <HAL_FLASH_AES_CFG+0xa>
2002384e:	2101      	movs	r1, #1
20023850:	f7ff fb7e 	bl	20022f50 <HAL_FLASH_SET_AES>
20023854:	4620      	mov	r0, r4
20023856:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002385a:	2101      	movs	r1, #1
2002385c:	f7ff bb87 	b.w	20022f6e <HAL_FLASH_ENABLE_AES>
20023860:	bd10      	pop	{r4, pc}

20023862 <nand_read_id>:
20023862:	b510      	push	{r4, lr}
20023864:	460b      	mov	r3, r1
20023866:	4604      	mov	r4, r0
20023868:	b086      	sub	sp, #24
2002386a:	b320      	cbz	r0, 200238b6 <nand_read_id+0x54>
2002386c:	2908      	cmp	r1, #8
2002386e:	f04f 0100 	mov.w	r1, #0
20023872:	f04f 0201 	mov.w	r2, #1
20023876:	bf83      	ittte	hi
20023878:	460b      	movhi	r3, r1
2002387a:	e9cd 1202 	strdhi	r1, r2, [sp, #8]
2002387e:	e9cd 1100 	strdhi	r1, r1, [sp]
20023882:	e9cd 1102 	strdls	r1, r1, [sp, #8]
20023886:	bf8e      	itee	hi
20023888:	4619      	movhi	r1, r3
2002388a:	e9cd 1100 	strdls	r1, r1, [sp]
2002388e:	b25b      	sxtbls	r3, r3
20023890:	9204      	str	r2, [sp, #16]
20023892:	f7ff fade 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
20023896:	2103      	movs	r1, #3
20023898:	4620      	mov	r0, r4
2002389a:	f7ff fa70 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
2002389e:	2200      	movs	r2, #0
200238a0:	219f      	movs	r1, #159	@ 0x9f
200238a2:	4620      	mov	r0, r4
200238a4:	f7ff fa90 	bl	20022dc8 <HAL_FLASH_SET_CMD>
200238a8:	4620      	mov	r0, r4
200238aa:	f7ff fabe 	bl	20022e2a <HAL_FLASH_READ32>
200238ae:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
200238b2:	b006      	add	sp, #24
200238b4:	bd10      	pop	{r4, pc}
200238b6:	20ff      	movs	r0, #255	@ 0xff
200238b8:	e7fb      	b.n	200238b2 <nand_read_id+0x50>

200238ba <HAL_NAND_CONF_ECC>:
200238ba:	b538      	push	{r3, r4, r5, lr}
200238bc:	460d      	mov	r5, r1
200238be:	4604      	mov	r4, r0
200238c0:	b398      	cbz	r0, 2002392a <HAL_NAND_CONF_ECC+0x70>
200238c2:	68c3      	ldr	r3, [r0, #12]
200238c4:	b38b      	cbz	r3, 2002392a <HAL_NAND_CONF_ECC+0x70>
200238c6:	799a      	ldrb	r2, [r3, #6]
200238c8:	b392      	cbz	r2, 20023930 <HAL_NAND_CONF_ECC+0x76>
200238ca:	7a9b      	ldrb	r3, [r3, #10]
200238cc:	b383      	cbz	r3, 20023930 <HAL_NAND_CONF_ECC+0x76>
200238ce:	2101      	movs	r1, #1
200238d0:	f7ff fa55 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
200238d4:	68e3      	ldr	r3, [r4, #12]
200238d6:	2102      	movs	r1, #2
200238d8:	799a      	ldrb	r2, [r3, #6]
200238da:	4620      	mov	r0, r4
200238dc:	f7ff fcee 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
200238e0:	4620      	mov	r0, r4
200238e2:	f7ff faa2 	bl	20022e2a <HAL_FLASH_READ32>
200238e6:	68e3      	ldr	r3, [r4, #12]
200238e8:	7a9b      	ldrb	r3, [r3, #10]
200238ea:	b1dd      	cbz	r5, 20023924 <HAL_NAND_CONF_ECC+0x6a>
200238ec:	ea43 0100 	orr.w	r1, r3, r0
200238f0:	4620      	mov	r0, r4
200238f2:	f7ff fa3d 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
200238f6:	2101      	movs	r1, #1
200238f8:	4620      	mov	r0, r4
200238fa:	f7ff fa40 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
200238fe:	68e3      	ldr	r3, [r4, #12]
20023900:	2103      	movs	r1, #3
20023902:	799a      	ldrb	r2, [r3, #6]
20023904:	4620      	mov	r0, r4
20023906:	f7ff fcd9 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002390a:	68e3      	ldr	r3, [r4, #12]
2002390c:	f884 5025 	strb.w	r5, [r4, #37]	@ 0x25
20023910:	2102      	movs	r1, #2
20023912:	799a      	ldrb	r2, [r3, #6]
20023914:	4620      	mov	r0, r4
20023916:	f7ff fcd1 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002391a:	4620      	mov	r0, r4
2002391c:	f7ff fa85 	bl	20022e2a <HAL_FLASH_READ32>
20023920:	2000      	movs	r0, #0
20023922:	bd38      	pop	{r3, r4, r5, pc}
20023924:	ea20 0103 	bic.w	r1, r0, r3
20023928:	e7e2      	b.n	200238f0 <HAL_NAND_CONF_ECC+0x36>
2002392a:	f04f 30ff 	mov.w	r0, #4294967295
2002392e:	e7f8      	b.n	20023922 <HAL_NAND_CONF_ECC+0x68>
20023930:	f06f 0001 	mvn.w	r0, #1
20023934:	e7f5      	b.n	20023922 <HAL_NAND_CONF_ECC+0x68>

20023936 <HAL_NAND_GET_ECC_STATUS>:
20023936:	b510      	push	{r4, lr}
20023938:	4604      	mov	r4, r0
2002393a:	b320      	cbz	r0, 20023986 <HAL_NAND_GET_ECC_STATUS+0x50>
2002393c:	68c2      	ldr	r2, [r0, #12]
2002393e:	b31a      	cbz	r2, 20023988 <HAL_NAND_GET_ECC_STATUS+0x52>
20023940:	7913      	ldrb	r3, [r2, #4]
20023942:	b31b      	cbz	r3, 2002398c <HAL_NAND_GET_ECC_STATUS+0x56>
20023944:	79d3      	ldrb	r3, [r2, #7]
20023946:	b30b      	cbz	r3, 2002398c <HAL_NAND_GET_ECC_STATUS+0x56>
20023948:	2101      	movs	r1, #1
2002394a:	f7ff fa18 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
2002394e:	68e3      	ldr	r3, [r4, #12]
20023950:	2102      	movs	r1, #2
20023952:	791a      	ldrb	r2, [r3, #4]
20023954:	4620      	mov	r0, r4
20023956:	f7ff fcb1 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
2002395a:	4620      	mov	r0, r4
2002395c:	f7ff fa65 	bl	20022e2a <HAL_FLASH_READ32>
20023960:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
20023964:	2a3f      	cmp	r2, #63	@ 0x3f
20023966:	ea4f 1312 	mov.w	r3, r2, lsr #4
2002396a:	d804      	bhi.n	20023976 <HAL_NAND_GET_ECC_STATUS+0x40>
2002396c:	2b01      	cmp	r3, #1
2002396e:	d808      	bhi.n	20023982 <HAL_NAND_GET_ECC_STATUS+0x4c>
20023970:	f000 0030 	and.w	r0, r0, #48	@ 0x30
20023974:	e007      	b.n	20023986 <HAL_NAND_GET_ECC_STATUS+0x50>
20023976:	3b04      	subs	r3, #4
20023978:	2b01      	cmp	r3, #1
2002397a:	d8f9      	bhi.n	20023970 <HAL_NAND_GET_ECC_STATUS+0x3a>
2002397c:	f000 00f0 	and.w	r0, r0, #240	@ 0xf0
20023980:	e001      	b.n	20023986 <HAL_NAND_GET_ECC_STATUS+0x50>
20023982:	f000 0070 	and.w	r0, r0, #112	@ 0x70
20023986:	bd10      	pop	{r4, pc}
20023988:	4610      	mov	r0, r2
2002398a:	e7fc      	b.n	20023986 <HAL_NAND_GET_ECC_STATUS+0x50>
2002398c:	4618      	mov	r0, r3
2002398e:	e7fa      	b.n	20023986 <HAL_NAND_GET_ECC_STATUS+0x50>

20023990 <HAL_NAND_CHECK_ECC>:
20023990:	4603      	mov	r3, r0
20023992:	1108      	asrs	r0, r1, #4
20023994:	b172      	cbz	r2, 200239b4 <HAL_NAND_CHECK_ECC+0x24>
20023996:	2b07      	cmp	r3, #7
20023998:	d80c      	bhi.n	200239b4 <HAL_NAND_CHECK_ECC+0x24>
2002399a:	e8df f003 	tbb	[pc, r3]
2002399e:	0d04      	.short	0x0d04
200239a0:	3f352e18 	.word	0x3f352e18
200239a4:	4c47      	.short	0x4c47
200239a6:	b128      	cbz	r0, 200239b4 <HAL_NAND_CHECK_ECC+0x24>
200239a8:	2801      	cmp	r0, #1
200239aa:	6813      	ldr	r3, [r2, #0]
200239ac:	d10a      	bne.n	200239c4 <HAL_NAND_CHECK_ECC+0x34>
200239ae:	f043 0301 	orr.w	r3, r3, #1
200239b2:	6013      	str	r3, [r2, #0]
200239b4:	2000      	movs	r0, #0
200239b6:	4770      	bx	lr
200239b8:	f020 0302 	bic.w	r3, r0, #2
200239bc:	2b01      	cmp	r3, #1
200239be:	d003      	beq.n	200239c8 <HAL_NAND_CHECK_ECC+0x38>
200239c0:	b1d0      	cbz	r0, 200239f8 <HAL_NAND_CHECK_ECC+0x68>
200239c2:	6813      	ldr	r3, [r2, #0]
200239c4:	4303      	orrs	r3, r0
200239c6:	e016      	b.n	200239f6 <HAL_NAND_CHECK_ECC+0x66>
200239c8:	6813      	ldr	r3, [r2, #0]
200239ca:	4303      	orrs	r3, r0
200239cc:	e7f1      	b.n	200239b2 <HAL_NAND_CHECK_ECC+0x22>
200239ce:	2805      	cmp	r0, #5
200239d0:	d8f7      	bhi.n	200239c2 <HAL_NAND_CHECK_ECC+0x32>
200239d2:	a301      	add	r3, pc, #4	@ (adr r3, 200239d8 <HAL_NAND_CHECK_ECC+0x48>)
200239d4:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
200239d8:	200239b5 	.word	0x200239b5
200239dc:	200239c9 	.word	0x200239c9
200239e0:	200239f1 	.word	0x200239f1
200239e4:	200239c9 	.word	0x200239c9
200239e8:	200239c3 	.word	0x200239c3
200239ec:	200239c9 	.word	0x200239c9
200239f0:	6813      	ldr	r3, [r2, #0]
200239f2:	f043 0302 	orr.w	r3, r3, #2
200239f6:	6013      	str	r3, [r2, #0]
200239f8:	4770      	bx	lr
200239fa:	2800      	cmp	r0, #0
200239fc:	d0da      	beq.n	200239b4 <HAL_NAND_CHECK_ECC+0x24>
200239fe:	1e43      	subs	r3, r0, #1
20023a00:	2b05      	cmp	r3, #5
20023a02:	6813      	ldr	r3, [r2, #0]
20023a04:	d9e1      	bls.n	200239ca <HAL_NAND_CHECK_ECC+0x3a>
20023a06:	e7dd      	b.n	200239c4 <HAL_NAND_CHECK_ECC+0x34>
20023a08:	07c3      	lsls	r3, r0, #31
20023a0a:	f000 0103 	and.w	r1, r0, #3
20023a0e:	d402      	bmi.n	20023a16 <HAL_NAND_CHECK_ECC+0x86>
20023a10:	2900      	cmp	r1, #0
20023a12:	d0cf      	beq.n	200239b4 <HAL_NAND_CHECK_ECC+0x24>
20023a14:	e7d5      	b.n	200239c2 <HAL_NAND_CHECK_ECC+0x32>
20023a16:	6813      	ldr	r3, [r2, #0]
20023a18:	430b      	orrs	r3, r1
20023a1a:	e7ca      	b.n	200239b2 <HAL_NAND_CHECK_ECC+0x22>
20023a1c:	2800      	cmp	r0, #0
20023a1e:	d0c9      	beq.n	200239b4 <HAL_NAND_CHECK_ECC+0x24>
20023a20:	6813      	ldr	r3, [r2, #0]
20023a22:	2808      	cmp	r0, #8
20023a24:	ea43 0300 	orr.w	r3, r3, r0
20023a28:	dce5      	bgt.n	200239f6 <HAL_NAND_CHECK_ECC+0x66>
20023a2a:	e7c2      	b.n	200239b2 <HAL_NAND_CHECK_ECC+0x22>
20023a2c:	2800      	cmp	r0, #0
20023a2e:	d0c1      	beq.n	200239b4 <HAL_NAND_CHECK_ECC+0x24>
20023a30:	1e43      	subs	r3, r0, #1
20023a32:	2b01      	cmp	r3, #1
20023a34:	e7e5      	b.n	20023a02 <HAL_NAND_CHECK_ECC+0x72>
20023a36:	2800      	cmp	r0, #0
20023a38:	d0bc      	beq.n	200239b4 <HAL_NAND_CHECK_ECC+0x24>
20023a3a:	1e43      	subs	r3, r0, #1
20023a3c:	2b02      	cmp	r3, #2
20023a3e:	e7e0      	b.n	20023a02 <HAL_NAND_CHECK_ECC+0x72>

20023a40 <HAL_NAND_GET_ECC_RESULT>:
20023a40:	b510      	push	{r4, lr}
20023a42:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
20023a46:	4604      	mov	r4, r0
20023a48:	b183      	cbz	r3, 20023a6c <HAL_NAND_GET_ECC_RESULT+0x2c>
20023a4a:	f7ff ff74 	bl	20023936 <HAL_NAND_GET_ECC_STATUS>
20023a4e:	4601      	mov	r1, r0
20023a50:	b160      	cbz	r0, 20023a6c <HAL_NAND_GET_ECC_RESULT+0x2c>
20023a52:	4622      	mov	r2, r4
20023a54:	6863      	ldr	r3, [r4, #4]
20023a56:	f443 4300 	orr.w	r3, r3, #32768	@ 0x8000
20023a5a:	f842 3f04 	str.w	r3, [r2, #4]!
20023a5e:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
20023a62:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20023a66:	0900      	lsrs	r0, r0, #4
20023a68:	f7ff bf92 	b.w	20023990 <HAL_NAND_CHECK_ECC>
20023a6c:	2000      	movs	r0, #0
20023a6e:	bd10      	pop	{r4, pc}

20023a70 <HAL_NAND_EN_QUAL>:
20023a70:	b538      	push	{r3, r4, r5, lr}
20023a72:	460d      	mov	r5, r1
20023a74:	4604      	mov	r4, r0
20023a76:	b348      	cbz	r0, 20023acc <HAL_NAND_EN_QUAL+0x5c>
20023a78:	68c3      	ldr	r3, [r0, #12]
20023a7a:	b33b      	cbz	r3, 20023acc <HAL_NAND_EN_QUAL+0x5c>
20023a7c:	799a      	ldrb	r2, [r3, #6]
20023a7e:	b10a      	cbz	r2, 20023a84 <HAL_NAND_EN_QUAL+0x14>
20023a80:	7a1b      	ldrb	r3, [r3, #8]
20023a82:	b90b      	cbnz	r3, 20023a88 <HAL_NAND_EN_QUAL+0x18>
20023a84:	2000      	movs	r0, #0
20023a86:	bd38      	pop	{r3, r4, r5, pc}
20023a88:	2101      	movs	r1, #1
20023a8a:	f7ff f978 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023a8e:	68e3      	ldr	r3, [r4, #12]
20023a90:	2102      	movs	r1, #2
20023a92:	799a      	ldrb	r2, [r3, #6]
20023a94:	4620      	mov	r0, r4
20023a96:	f7ff fc11 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023a9a:	4620      	mov	r0, r4
20023a9c:	f7ff f9c5 	bl	20022e2a <HAL_FLASH_READ32>
20023aa0:	68e3      	ldr	r3, [r4, #12]
20023aa2:	7a1b      	ldrb	r3, [r3, #8]
20023aa4:	b17d      	cbz	r5, 20023ac6 <HAL_NAND_EN_QUAL+0x56>
20023aa6:	ea43 0100 	orr.w	r1, r3, r0
20023aaa:	4620      	mov	r0, r4
20023aac:	f7ff f960 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
20023ab0:	2101      	movs	r1, #1
20023ab2:	4620      	mov	r0, r4
20023ab4:	f7ff f963 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023ab8:	68e3      	ldr	r3, [r4, #12]
20023aba:	2103      	movs	r1, #3
20023abc:	4620      	mov	r0, r4
20023abe:	799a      	ldrb	r2, [r3, #6]
20023ac0:	f7ff fbfc 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023ac4:	e7de      	b.n	20023a84 <HAL_NAND_EN_QUAL+0x14>
20023ac6:	ea20 0103 	bic.w	r1, r0, r3
20023aca:	e7ee      	b.n	20023aaa <HAL_NAND_EN_QUAL+0x3a>
20023acc:	f04f 30ff 	mov.w	r0, #4294967295
20023ad0:	e7d9      	b.n	20023a86 <HAL_NAND_EN_QUAL+0x16>

20023ad2 <nand_clear_status>:
20023ad2:	b510      	push	{r4, lr}
20023ad4:	4604      	mov	r4, r0
20023ad6:	2101      	movs	r1, #1
20023ad8:	f7ff f951 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023adc:	2102      	movs	r1, #2
20023ade:	4620      	mov	r0, r4
20023ae0:	f7ff f946 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
20023ae4:	68e3      	ldr	r3, [r4, #12]
20023ae6:	2103      	movs	r1, #3
20023ae8:	795a      	ldrb	r2, [r3, #5]
20023aea:	4620      	mov	r0, r4
20023aec:	f7ff fbe6 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023af0:	2100      	movs	r1, #0
20023af2:	4620      	mov	r0, r4
20023af4:	f7ff f93c 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
20023af8:	68e3      	ldr	r3, [r4, #12]
20023afa:	2103      	movs	r1, #3
20023afc:	4620      	mov	r0, r4
20023afe:	795a      	ldrb	r2, [r3, #5]
20023b00:	f7ff fbdc 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023b04:	2000      	movs	r0, #0
20023b06:	bd10      	pop	{r4, pc}

20023b08 <HAL_NAND_PAGE_SIZE>:
20023b08:	b140      	cbz	r0, 20023b1c <HAL_NAND_PAGE_SIZE+0x14>
20023b0a:	f890 3024 	ldrb.w	r3, [r0, #36]	@ 0x24
20023b0e:	f013 0f01 	tst.w	r3, #1
20023b12:	bf14      	ite	ne
20023b14:	f44f 5080 	movne.w	r0, #4096	@ 0x1000
20023b18:	f44f 6000 	moveq.w	r0, #2048	@ 0x800
20023b1c:	4770      	bx	lr
	...

20023b20 <HAL_NAND_READ_WITHOOB>:
20023b20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023b24:	b091      	sub	sp, #68	@ 0x44
20023b26:	460e      	mov	r6, r1
20023b28:	4692      	mov	sl, r2
20023b2a:	461d      	mov	r5, r3
20023b2c:	4604      	mov	r4, r0
20023b2e:	9f1b      	ldr	r7, [sp, #108]	@ 0x6c
20023b30:	b128      	cbz	r0, 20023b3e <HAL_NAND_READ_WITHOOB+0x1e>
20023b32:	68c3      	ldr	r3, [r0, #12]
20023b34:	b11b      	cbz	r3, 20023b3e <HAL_NAND_READ_WITHOOB+0x1e>
20023b36:	69c3      	ldr	r3, [r0, #28]
20023b38:	b10b      	cbz	r3, 20023b3e <HAL_NAND_READ_WITHOOB+0x1e>
20023b3a:	2f80      	cmp	r7, #128	@ 0x80
20023b3c:	d905      	bls.n	20023b4a <HAL_NAND_READ_WITHOOB+0x2a>
20023b3e:	2301      	movs	r3, #1
20023b40:	6063      	str	r3, [r4, #4]
20023b42:	2000      	movs	r0, #0
20023b44:	b011      	add	sp, #68	@ 0x44
20023b46:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023b4a:	f7ff ffdd 	bl	20023b08 <HAL_NAND_PAGE_SIZE>
20023b4e:	f100 39ff 	add.w	r9, r0, #4294967295
20023b52:	ea09 0901 	and.w	r9, r9, r1
20023b56:	eb09 0305 	add.w	r3, r9, r5
20023b5a:	4283      	cmp	r3, r0
20023b5c:	4680      	mov	r8, r0
20023b5e:	d901      	bls.n	20023b64 <HAL_NAND_READ_WITHOOB+0x44>
20023b60:	2302      	movs	r3, #2
20023b62:	e7ed      	b.n	20023b40 <HAL_NAND_READ_WITHOOB+0x20>
20023b64:	2300      	movs	r3, #0
20023b66:	6063      	str	r3, [r4, #4]
20023b68:	6923      	ldr	r3, [r4, #16]
20023b6a:	f04f 0b00 	mov.w	fp, #0
20023b6e:	428b      	cmp	r3, r1
20023b70:	bf98      	it	ls
20023b72:	1ace      	subls	r6, r1, r3
20023b74:	fbb6 f2f0 	udiv	r2, r6, r0
20023b78:	2104      	movs	r1, #4
20023b7a:	4620      	mov	r0, r4
20023b7c:	f7ff fb9e 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023b80:	2014      	movs	r0, #20
20023b82:	f7fe f9ed 	bl	20021f60 <HAL_Delay_us_>
20023b86:	2101      	movs	r1, #1
20023b88:	4620      	mov	r0, r4
20023b8a:	f7ff f8f8 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023b8e:	2005      	movs	r0, #5
20023b90:	f7fe f9e6 	bl	20021f60 <HAL_Delay_us_>
20023b94:	68e3      	ldr	r3, [r4, #12]
20023b96:	2102      	movs	r1, #2
20023b98:	791a      	ldrb	r2, [r3, #4]
20023b9a:	4620      	mov	r0, r4
20023b9c:	f7ff fb8e 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023ba0:	4620      	mov	r0, r4
20023ba2:	f7ff f942 	bl	20022e2a <HAL_FLASH_READ32>
20023ba6:	07c3      	lsls	r3, r0, #31
20023ba8:	d4f1      	bmi.n	20023b8e <HAL_NAND_READ_WITHOOB+0x6e>
20023baa:	f1bb 0f00 	cmp.w	fp, #0
20023bae:	d102      	bne.n	20023bb6 <HAL_NAND_READ_WITHOOB+0x96>
20023bb0:	f04f 0b01 	mov.w	fp, #1
20023bb4:	e7eb      	b.n	20023b8e <HAL_NAND_READ_WITHOOB+0x6e>
20023bb6:	4620      	mov	r0, r4
20023bb8:	f7ff ff42 	bl	20023a40 <HAL_NAND_GET_ECC_RESULT>
20023bbc:	b118      	cbz	r0, 20023bc6 <HAL_NAND_READ_WITHOOB+0xa6>
20023bbe:	f440 4000 	orr.w	r0, r0, #32768	@ 0x8000
20023bc2:	6060      	str	r0, [r4, #4]
20023bc4:	e7bd      	b.n	20023b42 <HAL_NAND_READ_WITHOOB+0x22>
20023bc6:	f894 2020 	ldrb.w	r2, [r4, #32]
20023bca:	68e3      	ldr	r3, [r4, #12]
20023bcc:	2a00      	cmp	r2, #0
20023bce:	d140      	bne.n	20023c52 <HAL_NAND_READ_WITHOOB+0x132>
20023bd0:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
20023bd4:	4620      	mov	r0, r4
20023bd6:	f7ff f87a 	bl	20022cce <HAL_FLASH_SET_AHB_RCMD>
20023bda:	68e0      	ldr	r0, [r4, #12]
20023bdc:	f990 c04e 	ldrsb.w	ip, [r0, #78]	@ 0x4e
20023be0:	f990 304a 	ldrsb.w	r3, [r0, #74]	@ 0x4a
20023be4:	f990 2049 	ldrsb.w	r2, [r0, #73]	@ 0x49
20023be8:	f990 1048 	ldrsb.w	r1, [r0, #72]	@ 0x48
20023bec:	f8cd c00c 	str.w	ip, [sp, #12]
20023bf0:	f990 c04d 	ldrsb.w	ip, [r0, #77]	@ 0x4d
20023bf4:	f8cd c008 	str.w	ip, [sp, #8]
20023bf8:	f990 c04c 	ldrsb.w	ip, [r0, #76]	@ 0x4c
20023bfc:	f8cd c004 	str.w	ip, [sp, #4]
20023c00:	f990 004b 	ldrsb.w	r0, [r0, #75]	@ 0x4b
20023c04:	9000      	str	r0, [sp, #0]
20023c06:	4620      	mov	r0, r4
20023c08:	f7ff f86c 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
20023c0c:	03b0      	lsls	r0, r6, #14
20023c0e:	f8d4 b010 	ldr.w	fp, [r4, #16]
20023c12:	d504      	bpl.n	20023c1e <HAL_NAND_READ_WITHOOB+0xfe>
20023c14:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20023c18:	b10b      	cbz	r3, 20023c1e <HAL_NAND_READ_WITHOOB+0xfe>
20023c1a:	f44b 5b80 	orr.w	fp, fp, #4096	@ 0x1000
20023c1e:	ea4a 0305 	orr.w	r3, sl, r5
20023c22:	ea43 0309 	orr.w	r3, r3, r9
20023c26:	f013 0303 	ands.w	r3, r3, #3
20023c2a:	d102      	bne.n	20023c32 <HAL_NAND_READ_WITHOOB+0x112>
20023c2c:	1e6a      	subs	r2, r5, #1
20023c2e:	2afe      	cmp	r2, #254	@ 0xfe
20023c30:	d82a      	bhi.n	20023c88 <HAL_NAND_READ_WITHOOB+0x168>
20023c32:	462a      	mov	r2, r5
20023c34:	4650      	mov	r0, sl
20023c36:	eb0b 0109 	add.w	r1, fp, r9
20023c3a:	f006 fec5 	bl	2002a9c8 <memcpy>
20023c3e:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20023c40:	b12b      	cbz	r3, 20023c4e <HAL_NAND_READ_WITHOOB+0x12e>
20023c42:	463a      	mov	r2, r7
20023c44:	4618      	mov	r0, r3
20023c46:	eb0b 0108 	add.w	r1, fp, r8
20023c4a:	f006 febd 	bl	2002a9c8 <memcpy>
20023c4e:	1978      	adds	r0, r7, r5
20023c50:	e778      	b.n	20023b44 <HAL_NAND_READ_WITHOOB+0x24>
20023c52:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20023c56:	4620      	mov	r0, r4
20023c58:	f7ff f839 	bl	20022cce <HAL_FLASH_SET_AHB_RCMD>
20023c5c:	68e0      	ldr	r0, [r4, #12]
20023c5e:	f990 c072 	ldrsb.w	ip, [r0, #114]	@ 0x72
20023c62:	f990 306e 	ldrsb.w	r3, [r0, #110]	@ 0x6e
20023c66:	f990 206d 	ldrsb.w	r2, [r0, #109]	@ 0x6d
20023c6a:	f990 106c 	ldrsb.w	r1, [r0, #108]	@ 0x6c
20023c6e:	f8cd c00c 	str.w	ip, [sp, #12]
20023c72:	f990 c071 	ldrsb.w	ip, [r0, #113]	@ 0x71
20023c76:	f8cd c008 	str.w	ip, [sp, #8]
20023c7a:	f990 c070 	ldrsb.w	ip, [r0, #112]	@ 0x70
20023c7e:	f8cd c004 	str.w	ip, [sp, #4]
20023c82:	f990 006f 	ldrsb.w	r0, [r0, #111]	@ 0x6f
20023c86:	e7bd      	b.n	20023c04 <HAL_NAND_READ_WITHOOB+0xe4>
20023c88:	f1ba 0f00 	cmp.w	sl, #0
20023c8c:	d0d7      	beq.n	20023c3e <HAL_NAND_READ_WITHOOB+0x11e>
20023c8e:	491c      	ldr	r1, [pc, #112]	@ (20023d00 <HAL_NAND_READ_WITHOOB+0x1e0>)
20023c90:	4a1c      	ldr	r2, [pc, #112]	@ (20023d04 <HAL_NAND_READ_WITHOOB+0x1e4>)
20023c92:	a804      	add	r0, sp, #16
20023c94:	e9cd 1205 	strd	r1, r2, [sp, #20]
20023c98:	f88d 301c 	strb.w	r3, [sp, #28]
20023c9c:	f7fe ff22 	bl	20022ae4 <HAL_EXT_DMA_Init>
20023ca0:	b150      	cbz	r0, 20023cb8 <HAL_NAND_READ_WITHOOB+0x198>
20023ca2:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023ca4:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023ca8:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023cac:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023cb0:	f041 4100 	orr.w	r1, r1, #2147483648	@ 0x80000000
20023cb4:	6061      	str	r1, [r4, #4]
20023cb6:	e744      	b.n	20023b42 <HAL_NAND_READ_WITHOOB+0x22>
20023cb8:	eb0b 0109 	add.w	r1, fp, r9
20023cbc:	4652      	mov	r2, sl
20023cbe:	08ab      	lsrs	r3, r5, #2
20023cc0:	a804      	add	r0, sp, #16
20023cc2:	f7fe ff31 	bl	20022b28 <HAL_EXT_DMA_Start>
20023cc6:	4601      	mov	r1, r0
20023cc8:	b980      	cbnz	r0, 20023cec <HAL_NAND_READ_WITHOOB+0x1cc>
20023cca:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20023cce:	a804      	add	r0, sp, #16
20023cd0:	f7fe ff51 	bl	20022b76 <HAL_EXT_DMA_PollForTransfer>
20023cd4:	2800      	cmp	r0, #0
20023cd6:	d0b2      	beq.n	20023c3e <HAL_NAND_READ_WITHOOB+0x11e>
20023cd8:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023cda:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023cde:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023ce2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023ce6:	f041 4160 	orr.w	r1, r1, #3758096384	@ 0xe0000000
20023cea:	e7e3      	b.n	20023cb4 <HAL_NAND_READ_WITHOOB+0x194>
20023cec:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
20023cee:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023cf2:	ea40 4102 	orr.w	r1, r0, r2, lsl #16
20023cf6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023cfa:	f041 4140 	orr.w	r1, r1, #3221225472	@ 0xc0000000
20023cfe:	e7d9      	b.n	20023cb4 <HAL_NAND_READ_WITHOOB+0x194>
20023d00:	000c0080 	.word	0x000c0080
20023d04:	00030040 	.word	0x00030040

20023d08 <HAL_NAND_BLOCK_SIZE>:
20023d08:	b508      	push	{r3, lr}
20023d0a:	4602      	mov	r2, r0
20023d0c:	f7ff fefc 	bl	20023b08 <HAL_NAND_PAGE_SIZE>
20023d10:	b128      	cbz	r0, 20023d1e <HAL_NAND_BLOCK_SIZE+0x16>
20023d12:	f892 3024 	ldrb.w	r3, [r2, #36]	@ 0x24
20023d16:	079b      	lsls	r3, r3, #30
20023d18:	bf4c      	ite	mi
20023d1a:	01c0      	lslmi	r0, r0, #7
20023d1c:	0180      	lslpl	r0, r0, #6
20023d1e:	bd08      	pop	{r3, pc}

20023d20 <HAL_NAND_GET_BADBLK>:
20023d20:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20023d22:	4604      	mov	r4, r0
20023d24:	b910      	cbnz	r0, 20023d2c <HAL_NAND_GET_BADBLK+0xc>
20023d26:	2000      	movs	r0, #0
20023d28:	b004      	add	sp, #16
20023d2a:	bd10      	pop	{r4, pc}
20023d2c:	69c3      	ldr	r3, [r0, #28]
20023d2e:	2b00      	cmp	r3, #0
20023d30:	d0f9      	beq.n	20023d26 <HAL_NAND_GET_BADBLK+0x6>
20023d32:	f7ff ffe9 	bl	20023d08 <HAL_NAND_BLOCK_SIZE>
20023d36:	2304      	movs	r3, #4
20023d38:	9301      	str	r3, [sp, #4]
20023d3a:	ab03      	add	r3, sp, #12
20023d3c:	9300      	str	r3, [sp, #0]
20023d3e:	2300      	movs	r3, #0
20023d40:	4341      	muls	r1, r0
20023d42:	461a      	mov	r2, r3
20023d44:	4620      	mov	r0, r4
20023d46:	f7ff feeb 	bl	20023b20 <HAL_NAND_READ_WITHOOB>
20023d4a:	b140      	cbz	r0, 20023d5e <HAL_NAND_GET_BADBLK+0x3e>
20023d4c:	f89d 300c 	ldrb.w	r3, [sp, #12]
20023d50:	2bff      	cmp	r3, #255	@ 0xff
20023d52:	d0e8      	beq.n	20023d26 <HAL_NAND_GET_BADBLK+0x6>
20023d54:	9803      	ldr	r0, [sp, #12]
20023d56:	2800      	cmp	r0, #0
20023d58:	bf08      	it	eq
20023d5a:	2001      	moveq	r0, #1
20023d5c:	e7e4      	b.n	20023d28 <HAL_NAND_GET_BADBLK+0x8>
20023d5e:	2001      	movs	r0, #1
20023d60:	e7e2      	b.n	20023d28 <HAL_NAND_GET_BADBLK+0x8>

20023d62 <HAL_QSPIEX_WRITE_PAGE>:
20023d62:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023d66:	b099      	sub	sp, #100	@ 0x64
20023d68:	4604      	mov	r4, r0
20023d6a:	460e      	mov	r6, r1
20023d6c:	4691      	mov	r9, r2
20023d6e:	f7ff fcd4 	bl	2002371a <flash_handle_valid>
20023d72:	b318      	cbz	r0, 20023dbc <HAL_QSPIEX_WRITE_PAGE+0x5a>
20023d74:	2b00      	cmp	r3, #0
20023d76:	f000 80d7 	beq.w	20023f28 <HAL_QSPIEX_WRITE_PAGE+0x1c6>
20023d7a:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20023d7e:	bf28      	it	cs
20023d80:	f44f 7380 	movcs.w	r3, #256	@ 0x100
20023d84:	68a1      	ldr	r1, [r4, #8]
20023d86:	461d      	mov	r5, r3
20023d88:	6962      	ldr	r2, [r4, #20]
20023d8a:	f894 3020 	ldrb.w	r3, [r4, #32]
20023d8e:	2900      	cmp	r1, #0
20023d90:	d03b      	beq.n	20023e0a <HAL_QSPIEX_WRITE_PAGE+0xa8>
20023d92:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023d96:	d914      	bls.n	20023dc2 <HAL_QSPIEX_WRITE_PAGE+0x60>
20023d98:	2b02      	cmp	r3, #2
20023d9a:	bf14      	ite	ne
20023d9c:	2727      	movne	r7, #39	@ 0x27
20023d9e:	2728      	moveq	r7, #40	@ 0x28
20023da0:	4639      	mov	r1, r7
20023da2:	4620      	mov	r0, r4
20023da4:	f7ff fa63 	bl	2002326e <HAL_FLASH_PRE_CMD>
20023da8:	4649      	mov	r1, r9
20023daa:	462b      	mov	r3, r5
20023dac:	2201      	movs	r2, #1
20023dae:	4620      	mov	r0, r4
20023db0:	f7ff fcbb 	bl	2002372a <HAL_FLASH_DMA_START>
20023db4:	4601      	mov	r1, r0
20023db6:	b148      	cbz	r0, 20023dcc <HAL_QSPIEX_WRITE_PAGE+0x6a>
20023db8:	2500      	movs	r5, #0
20023dba:	4628      	mov	r0, r5
20023dbc:	b019      	add	sp, #100	@ 0x64
20023dbe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023dc2:	2b02      	cmp	r3, #2
20023dc4:	bf14      	ite	ne
20023dc6:	2716      	movne	r7, #22
20023dc8:	2717      	moveq	r7, #23
20023dca:	e7e9      	b.n	20023da0 <HAL_QSPIEX_WRITE_PAGE+0x3e>
20023dcc:	4632      	mov	r2, r6
20023dce:	4620      	mov	r0, r4
20023dd0:	f7ff fa74 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023dd4:	2101      	movs	r1, #1
20023dd6:	4620      	mov	r0, r4
20023dd8:	f7fe ffdb 	bl	20022d92 <HAL_FLASH_WRITE_DLEN2>
20023ddc:	2301      	movs	r3, #1
20023dde:	4632      	mov	r2, r6
20023de0:	9300      	str	r3, [sp, #0]
20023de2:	4639      	mov	r1, r7
20023de4:	2302      	movs	r3, #2
20023de6:	4620      	mov	r0, r4
20023de8:	f7ff fa9b 	bl	20023322 <HAL_FLASH_ISSUE_CMD_SEQ>
20023dec:	2800      	cmp	r0, #0
20023dee:	d1e3      	bne.n	20023db8 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023df0:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
20023df4:	4620      	mov	r0, r4
20023df6:	f7ff fce8 	bl	200237ca <HAL_FLASH_DMA_WAIT_DONE>
20023dfa:	2800      	cmp	r0, #0
20023dfc:	d1dc      	bne.n	20023db8 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023dfe:	6822      	ldr	r2, [r4, #0]
20023e00:	6813      	ldr	r3, [r2, #0]
20023e02:	f023 0320 	bic.w	r3, r3, #32
20023e06:	6013      	str	r3, [r2, #0]
20023e08:	e7d7      	b.n	20023dba <HAL_QSPIEX_WRITE_PAGE+0x58>
20023e0a:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023e0e:	f240 8082 	bls.w	20023f16 <HAL_QSPIEX_WRITE_PAGE+0x1b4>
20023e12:	2b02      	cmp	r3, #2
20023e14:	bf14      	ite	ne
20023e16:	2327      	movne	r3, #39	@ 0x27
20023e18:	2328      	moveq	r3, #40	@ 0x28
20023e1a:	462f      	mov	r7, r5
20023e1c:	f04f 0800 	mov.w	r8, #0
20023e20:	9303      	str	r3, [sp, #12]
20023e22:	f64f 7afc 	movw	sl, #65532	@ 0xfffc
20023e26:	2f40      	cmp	r7, #64	@ 0x40
20023e28:	bfd4      	ite	le
20023e2a:	ea0a 0a07 	andle.w	sl, sl, r7
20023e2e:	f00a 0a40 	andgt.w	sl, sl, #64	@ 0x40
20023e32:	f1ba 0f00 	cmp.w	sl, #0
20023e36:	d03f      	beq.n	20023eb8 <HAL_QSPIEX_WRITE_PAGE+0x156>
20023e38:	2200      	movs	r2, #0
20023e3a:	4620      	mov	r0, r4
20023e3c:	4611      	mov	r1, r2
20023e3e:	f7ff fa3d 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023e42:	eb09 0308 	add.w	r3, r9, r8
20023e46:	f10d 0c20 	add.w	ip, sp, #32
20023e4a:	f103 0e40 	add.w	lr, r3, #64	@ 0x40
20023e4e:	4662      	mov	r2, ip
20023e50:	6818      	ldr	r0, [r3, #0]
20023e52:	6859      	ldr	r1, [r3, #4]
20023e54:	3308      	adds	r3, #8
20023e56:	c203      	stmia	r2!, {r0, r1}
20023e58:	4573      	cmp	r3, lr
20023e5a:	4694      	mov	ip, r2
20023e5c:	d1f7      	bne.n	20023e4e <HAL_QSPIEX_WRITE_PAGE+0xec>
20023e5e:	f04f 0b00 	mov.w	fp, #0
20023e62:	ea4f 02aa 	mov.w	r2, sl, asr #2
20023e66:	ab08      	add	r3, sp, #32
20023e68:	f853 1b04 	ldr.w	r1, [r3], #4
20023e6c:	4620      	mov	r0, r4
20023e6e:	9205      	str	r2, [sp, #20]
20023e70:	9304      	str	r3, [sp, #16]
20023e72:	f7fe ff7d 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
20023e76:	9a05      	ldr	r2, [sp, #20]
20023e78:	f10b 0b01 	add.w	fp, fp, #1
20023e7c:	4593      	cmp	fp, r2
20023e7e:	9b04      	ldr	r3, [sp, #16]
20023e80:	d1f2      	bne.n	20023e68 <HAL_QSPIEX_WRITE_PAGE+0x106>
20023e82:	4651      	mov	r1, sl
20023e84:	4620      	mov	r0, r4
20023e86:	f7fe ff7a 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023e8a:	4620      	mov	r0, r4
20023e8c:	9903      	ldr	r1, [sp, #12]
20023e8e:	eb06 0208 	add.w	r2, r6, r8
20023e92:	f7ff fa13 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023e96:	2101      	movs	r1, #1
20023e98:	4620      	mov	r0, r4
20023e9a:	f7fe ff70 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023e9e:	2200      	movs	r2, #0
20023ea0:	2102      	movs	r1, #2
20023ea2:	4620      	mov	r0, r4
20023ea4:	f7ff fa0a 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023ea8:	4620      	mov	r0, r4
20023eaa:	f7fe ffb5 	bl	20022e18 <HAL_FLASH_IS_PROG_DONE>
20023eae:	2800      	cmp	r0, #0
20023eb0:	d0f1      	beq.n	20023e96 <HAL_QSPIEX_WRITE_PAGE+0x134>
20023eb2:	eba7 070a 	sub.w	r7, r7, sl
20023eb6:	44d0      	add	r8, sl
20023eb8:	1e7b      	subs	r3, r7, #1
20023eba:	2b02      	cmp	r3, #2
20023ebc:	d830      	bhi.n	20023f20 <HAL_QSPIEX_WRITE_PAGE+0x1be>
20023ebe:	6923      	ldr	r3, [r4, #16]
20023ec0:	4446      	add	r6, r8
20023ec2:	4333      	orrs	r3, r6
20023ec4:	681b      	ldr	r3, [r3, #0]
20023ec6:	463a      	mov	r2, r7
20023ec8:	eb09 0108 	add.w	r1, r9, r8
20023ecc:	a807      	add	r0, sp, #28
20023ece:	9307      	str	r3, [sp, #28]
20023ed0:	f006 fd7a 	bl	2002a9c8 <memcpy>
20023ed4:	2200      	movs	r2, #0
20023ed6:	4620      	mov	r0, r4
20023ed8:	4611      	mov	r1, r2
20023eda:	f7ff f9ef 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023ede:	9907      	ldr	r1, [sp, #28]
20023ee0:	4620      	mov	r0, r4
20023ee2:	f7fe ff45 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
20023ee6:	2104      	movs	r1, #4
20023ee8:	4620      	mov	r0, r4
20023eea:	f7fe ff48 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023eee:	4632      	mov	r2, r6
20023ef0:	4620      	mov	r0, r4
20023ef2:	9903      	ldr	r1, [sp, #12]
20023ef4:	f7ff f9e2 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023ef8:	2101      	movs	r1, #1
20023efa:	4620      	mov	r0, r4
20023efc:	f7fe ff3f 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20023f00:	2200      	movs	r2, #0
20023f02:	2102      	movs	r1, #2
20023f04:	4620      	mov	r0, r4
20023f06:	f7ff f9d9 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023f0a:	4620      	mov	r0, r4
20023f0c:	f7fe ff84 	bl	20022e18 <HAL_FLASH_IS_PROG_DONE>
20023f10:	2800      	cmp	r0, #0
20023f12:	d0f1      	beq.n	20023ef8 <HAL_QSPIEX_WRITE_PAGE+0x196>
20023f14:	e751      	b.n	20023dba <HAL_QSPIEX_WRITE_PAGE+0x58>
20023f16:	2b02      	cmp	r3, #2
20023f18:	bf14      	ite	ne
20023f1a:	2316      	movne	r3, #22
20023f1c:	2317      	moveq	r3, #23
20023f1e:	e77c      	b.n	20023e1a <HAL_QSPIEX_WRITE_PAGE+0xb8>
20023f20:	2f00      	cmp	r7, #0
20023f22:	f73f af7e 	bgt.w	20023e22 <HAL_QSPIEX_WRITE_PAGE+0xc0>
20023f26:	e748      	b.n	20023dba <HAL_QSPIEX_WRITE_PAGE+0x58>
20023f28:	4618      	mov	r0, r3
20023f2a:	e747      	b.n	20023dbc <HAL_QSPIEX_WRITE_PAGE+0x5a>

20023f2c <HAL_QSPIEX_SECT_ERASE>:
20023f2c:	b573      	push	{r0, r1, r4, r5, r6, lr}
20023f2e:	4604      	mov	r4, r0
20023f30:	460d      	mov	r5, r1
20023f32:	f7ff fbf2 	bl	2002371a <flash_handle_valid>
20023f36:	b1e8      	cbz	r0, 20023f74 <HAL_QSPIEX_SECT_ERASE+0x48>
20023f38:	6963      	ldr	r3, [r4, #20]
20023f3a:	460a      	mov	r2, r1
20023f3c:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023f40:	f04f 0100 	mov.w	r1, #0
20023f44:	4620      	mov	r0, r4
20023f46:	bf94      	ite	ls
20023f48:	261b      	movls	r6, #27
20023f4a:	2629      	movhi	r6, #41	@ 0x29
20023f4c:	f7ff f9b6 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20023f50:	2101      	movs	r1, #1
20023f52:	4620      	mov	r0, r4
20023f54:	f7fe ff1d 	bl	20022d92 <HAL_FLASH_WRITE_DLEN2>
20023f58:	2301      	movs	r3, #1
20023f5a:	462a      	mov	r2, r5
20023f5c:	9300      	str	r3, [sp, #0]
20023f5e:	4631      	mov	r1, r6
20023f60:	2302      	movs	r3, #2
20023f62:	4620      	mov	r0, r4
20023f64:	f7ff f9dd 	bl	20023322 <HAL_FLASH_ISSUE_CMD_SEQ>
20023f68:	3800      	subs	r0, #0
20023f6a:	bf18      	it	ne
20023f6c:	2001      	movne	r0, #1
20023f6e:	4240      	negs	r0, r0
20023f70:	b002      	add	sp, #8
20023f72:	bd70      	pop	{r4, r5, r6, pc}
20023f74:	f04f 30ff 	mov.w	r0, #4294967295
20023f78:	e7fa      	b.n	20023f70 <HAL_QSPIEX_SECT_ERASE+0x44>
	...

20023f7c <HAL_QSPI_GET_SRC_CLK>:
20023f7c:	b508      	push	{r3, lr}
20023f7e:	b1e8      	cbz	r0, 20023fbc <HAL_QSPI_GET_SRC_CLK+0x40>
20023f80:	6803      	ldr	r3, [r0, #0]
20023f82:	4a0f      	ldr	r2, [pc, #60]	@ (20023fc0 <HAL_QSPI_GET_SRC_CLK+0x44>)
20023f84:	4293      	cmp	r3, r2
20023f86:	d00c      	beq.n	20023fa2 <HAL_QSPI_GET_SRC_CLK+0x26>
20023f88:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20023f8c:	4293      	cmp	r3, r2
20023f8e:	d115      	bne.n	20023fbc <HAL_QSPI_GET_SRC_CLK+0x40>
20023f90:	2006      	movs	r0, #6
20023f92:	f001 f829 	bl	20024fe8 <HAL_RCC_HCPU_GetClockSrc>
20023f96:	2802      	cmp	r0, #2
20023f98:	d105      	bne.n	20023fa6 <HAL_QSPI_GET_SRC_CLK+0x2a>
20023f9a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023f9e:	f001 b858 	b.w	20025052 <HAL_RCC_HCPU_GetDLL2Freq>
20023fa2:	2004      	movs	r0, #4
20023fa4:	e7f5      	b.n	20023f92 <HAL_QSPI_GET_SRC_CLK+0x16>
20023fa6:	2803      	cmp	r0, #3
20023fa8:	d103      	bne.n	20023fb2 <HAL_QSPI_GET_SRC_CLK+0x36>
20023faa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023fae:	f001 b853 	b.w	20025058 <HAL_RCC_HCPU_GetDLL3Freq>
20023fb2:	2001      	movs	r0, #1
20023fb4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023fb8:	f001 b8b2 	b.w	20025120 <HAL_RCC_GetSysCLKFreq>
20023fbc:	2000      	movs	r0, #0
20023fbe:	bd08      	pop	{r3, pc}
20023fc0:	50041000 	.word	0x50041000

20023fc4 <HAL_QSPI_GET_CLK>:
20023fc4:	b538      	push	{r3, r4, r5, lr}
20023fc6:	4605      	mov	r5, r0
20023fc8:	b908      	cbnz	r0, 20023fce <HAL_QSPI_GET_CLK+0xa>
20023fca:	2000      	movs	r0, #0
20023fcc:	bd38      	pop	{r3, r4, r5, pc}
20023fce:	f7fe ff3b 	bl	20022e48 <HAL_FLASH_GET_DIV>
20023fd2:	4604      	mov	r4, r0
20023fd4:	2800      	cmp	r0, #0
20023fd6:	d0f8      	beq.n	20023fca <HAL_QSPI_GET_CLK+0x6>
20023fd8:	4628      	mov	r0, r5
20023fda:	f7ff ffcf 	bl	20023f7c <HAL_QSPI_GET_SRC_CLK>
20023fde:	fbb0 f0f4 	udiv	r0, r0, r4
20023fe2:	e7f3      	b.n	20023fcc <HAL_QSPI_GET_CLK+0x8>

20023fe4 <HAL_QSPI_READ_ID>:
20023fe4:	b138      	cbz	r0, 20023ff6 <HAL_QSPI_READ_ID+0x12>
20023fe6:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20023fea:	b113      	cbz	r3, 20023ff2 <HAL_QSPI_READ_ID+0xe>
20023fec:	2100      	movs	r1, #0
20023fee:	f7ff bc38 	b.w	20023862 <nand_read_id>
20023ff2:	f7ff bab8 	b.w	20023566 <HAL_FLASH_GET_NOR_ID>
20023ff6:	20ff      	movs	r0, #255	@ 0xff
20023ff8:	4770      	bx	lr

20023ffa <HAL_NOR_CFG_DTR>:
20023ffa:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023ffc:	4604      	mov	r4, r0
20023ffe:	460a      	mov	r2, r1
20024000:	b351      	cbz	r1, 20024058 <HAL_NOR_CFG_DTR+0x5e>
20024002:	68c5      	ldr	r5, [r0, #12]
20024004:	f895 31ff 	ldrb.w	r3, [r5, #511]	@ 0x1ff
20024008:	2b00      	cmp	r3, #0
2002400a:	d03b      	beq.n	20024084 <HAL_NOR_CFG_DTR+0x8a>
2002400c:	f890 3020 	ldrb.w	r3, [r0, #32]
20024010:	b3c3      	cbz	r3, 20024084 <HAL_NOR_CFG_DTR+0x8a>
20024012:	f995 6207 	ldrsb.w	r6, [r5, #519]	@ 0x207
20024016:	f995 2202 	ldrsb.w	r2, [r5, #514]	@ 0x202
2002401a:	f995 3203 	ldrsb.w	r3, [r5, #515]	@ 0x203
2002401e:	f995 1201 	ldrsb.w	r1, [r5, #513]	@ 0x201
20024022:	9603      	str	r6, [sp, #12]
20024024:	f995 6206 	ldrsb.w	r6, [r5, #518]	@ 0x206
20024028:	9602      	str	r6, [sp, #8]
2002402a:	f995 6205 	ldrsb.w	r6, [r5, #517]	@ 0x205
2002402e:	9601      	str	r6, [sp, #4]
20024030:	f995 5204 	ldrsb.w	r5, [r5, #516]	@ 0x204
20024034:	9500      	str	r5, [sp, #0]
20024036:	f7fe fe55 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
2002403a:	68e3      	ldr	r3, [r4, #12]
2002403c:	4620      	mov	r0, r4
2002403e:	f893 11ff 	ldrb.w	r1, [r3, #511]	@ 0x1ff
20024042:	f7fe fe44 	bl	20022cce <HAL_FLASH_SET_AHB_RCMD>
20024046:	2101      	movs	r1, #1
20024048:	4620      	mov	r0, r4
2002404a:	f894 2025 	ldrb.w	r2, [r4, #37]	@ 0x25
2002404e:	f7ff f855 	bl	200230fc <HAL_MPI_CFG_DTR>
20024052:	2000      	movs	r0, #0
20024054:	b004      	add	sp, #16
20024056:	bd70      	pop	{r4, r5, r6, pc}
20024058:	f7ff f850 	bl	200230fc <HAL_MPI_CFG_DTR>
2002405c:	6963      	ldr	r3, [r4, #20]
2002405e:	f894 1020 	ldrb.w	r1, [r4, #32]
20024062:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20024066:	d906      	bls.n	20024076 <HAL_NOR_CFG_DTR+0x7c>
20024068:	b919      	cbnz	r1, 20024072 <HAL_NOR_CFG_DTR+0x78>
2002406a:	4620      	mov	r0, r4
2002406c:	f7ff f8c2 	bl	200231f4 <HAL_FLASH_CONFIG_FULL_AHB_READ>
20024070:	e7ef      	b.n	20024052 <HAL_NOR_CFG_DTR+0x58>
20024072:	2101      	movs	r1, #1
20024074:	e7f9      	b.n	2002406a <HAL_NOR_CFG_DTR+0x70>
20024076:	b919      	cbnz	r1, 20024080 <HAL_NOR_CFG_DTR+0x86>
20024078:	4620      	mov	r0, r4
2002407a:	f7ff f877 	bl	2002316c <HAL_FLASH_CONFIG_AHB_READ>
2002407e:	e7e8      	b.n	20024052 <HAL_NOR_CFG_DTR+0x58>
20024080:	2101      	movs	r1, #1
20024082:	e7f9      	b.n	20024078 <HAL_NOR_CFG_DTR+0x7e>
20024084:	2001      	movs	r0, #1
20024086:	e7e5      	b.n	20024054 <HAL_NOR_CFG_DTR+0x5a>

20024088 <HAL_NOR_DTR_CAL>:
20024088:	b510      	push	{r4, lr}
2002408a:	4604      	mov	r4, r0
2002408c:	b1f0      	cbz	r0, 200240cc <HAL_NOR_DTR_CAL+0x44>
2002408e:	6802      	ldr	r2, [r0, #0]
20024090:	2014      	movs	r0, #20
20024092:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024096:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
2002409a:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
2002409e:	f7fd ffbe 	bl	2002201e <HAL_Delay_us>
200240a2:	6823      	ldr	r3, [r4, #0]
200240a4:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
200240a8:	05d2      	lsls	r2, r2, #23
200240aa:	d5fb      	bpl.n	200240a4 <HAL_NOR_DTR_CAL+0x1c>
200240ac:	f8d3 0094 	ldr.w	r0, [r3, #148]	@ 0x94
200240b0:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
200240b4:	b2c0      	uxtb	r0, r0
200240b6:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
200240ba:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
200240be:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
200240c2:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
200240c6:	4303      	orrs	r3, r0
200240c8:	f884 3025 	strb.w	r3, [r4, #37]	@ 0x25
200240cc:	bd10      	pop	{r4, pc}
	...

200240d0 <HAL_FLASH_Init>:
200240d0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200240d4:	460e      	mov	r6, r1
200240d6:	4690      	mov	r8, r2
200240d8:	461f      	mov	r7, r3
200240da:	4604      	mov	r4, r0
200240dc:	b087      	sub	sp, #28
200240de:	2800      	cmp	r0, #0
200240e0:	f000 80e5 	beq.w	200242ae <HAL_FLASH_Init+0x1de>
200240e4:	2900      	cmp	r1, #0
200240e6:	f000 80e2 	beq.w	200242ae <HAL_FLASH_Init+0x1de>
200240ea:	f7fe fdcf 	bl	20022c8c <HAL_QSPI_Init>
200240ee:	6820      	ldr	r0, [r4, #0]
200240f0:	f7ff fb19 	bl	20023726 <HAL_GET_FLASH_MID>
200240f4:	6933      	ldr	r3, [r6, #16]
200240f6:	2100      	movs	r1, #0
200240f8:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
200240fc:	68b3      	ldr	r3, [r6, #8]
200240fe:	4605      	mov	r5, r0
20024100:	63a3      	str	r3, [r4, #56]	@ 0x38
20024102:	68f3      	ldr	r3, [r6, #12]
20024104:	f884 1024 	strb.w	r1, [r4, #36]	@ 0x24
20024108:	051b      	lsls	r3, r3, #20
2002410a:	63e3      	str	r3, [r4, #60]	@ 0x3c
2002410c:	2302      	movs	r3, #2
2002410e:	f884 3036 	strb.w	r3, [r4, #54]	@ 0x36
20024112:	6933      	ldr	r3, [r6, #16]
20024114:	f8c4 8008 	str.w	r8, [r4, #8]
20024118:	1e5a      	subs	r2, r3, #1
2002411a:	4253      	negs	r3, r2
2002411c:	4153      	adcs	r3, r2
2002411e:	f884 3023 	strb.w	r3, [r4, #35]	@ 0x23
20024122:	f1b8 0f00 	cmp.w	r8, #0
20024126:	d058      	beq.n	200241da <HAL_FLASH_Init+0x10a>
20024128:	2f00      	cmp	r7, #0
2002412a:	d056      	beq.n	200241da <HAL_FLASH_Init+0x10a>
2002412c:	683b      	ldr	r3, [r7, #0]
2002412e:	f8c8 3000 	str.w	r3, [r8]
20024132:	68a3      	ldr	r3, [r4, #8]
20024134:	68fa      	ldr	r2, [r7, #12]
20024136:	605a      	str	r2, [r3, #4]
20024138:	2210      	movs	r2, #16
2002413a:	68a3      	ldr	r3, [r4, #8]
2002413c:	609a      	str	r2, [r3, #8]
2002413e:	2280      	movs	r2, #128	@ 0x80
20024140:	68a3      	ldr	r3, [r4, #8]
20024142:	60d9      	str	r1, [r3, #12]
20024144:	68a3      	ldr	r3, [r4, #8]
20024146:	611a      	str	r2, [r3, #16]
20024148:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
2002414c:	68a3      	ldr	r3, [r4, #8]
2002414e:	6159      	str	r1, [r3, #20]
20024150:	68a3      	ldr	r3, [r4, #8]
20024152:	6199      	str	r1, [r3, #24]
20024154:	68a3      	ldr	r3, [r4, #8]
20024156:	61d9      	str	r1, [r3, #28]
20024158:	68a3      	ldr	r3, [r4, #8]
2002415a:	621a      	str	r2, [r3, #32]
2002415c:	68a3      	ldr	r3, [r4, #8]
2002415e:	6259      	str	r1, [r3, #36]	@ 0x24
20024160:	b1c0      	cbz	r0, 20024194 <HAL_FLASH_Init+0xc4>
20024162:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20024166:	4298      	cmp	r0, r3
20024168:	d014      	beq.n	20024194 <HAL_FLASH_Init+0xc4>
2002416a:	2601      	movs	r6, #1
2002416c:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024170:	2b00      	cmp	r3, #0
20024172:	d13d      	bne.n	200241f0 <HAL_FLASH_Init+0x120>
20024174:	2e00      	cmp	r6, #0
20024176:	d15a      	bne.n	2002422e <HAL_FLASH_Init+0x15e>
20024178:	4620      	mov	r0, r4
2002417a:	f7ff faae 	bl	200236da <HAL_FLASH_RELEASE_DPD>
2002417e:	4630      	mov	r0, r6
20024180:	f7fd ff4d 	bl	2002201e <HAL_Delay_us>
20024184:	2032      	movs	r0, #50	@ 0x32
20024186:	f7fd ff4a 	bl	2002201e <HAL_Delay_us>
2002418a:	4620      	mov	r0, r4
2002418c:	f7ff ff2a 	bl	20023fe4 <HAL_QSPI_READ_ID>
20024190:	4605      	mov	r5, r0
20024192:	e04c      	b.n	2002422e <HAL_FLASH_Init+0x15e>
20024194:	2101      	movs	r1, #1
20024196:	4620      	mov	r0, r4
20024198:	f7fe fe4b 	bl	20022e32 <HAL_FLASH_SET_TXSLOT>
2002419c:	4ba7      	ldr	r3, [pc, #668]	@ (2002443c <HAL_FLASH_Init+0x36c>)
2002419e:	69a2      	ldr	r2, [r4, #24]
200241a0:	4620      	mov	r0, r4
200241a2:	429a      	cmp	r2, r3
200241a4:	f04f 0200 	mov.w	r2, #0
200241a8:	bf8c      	ite	hi
200241aa:	2101      	movhi	r1, #1
200241ac:	4611      	movls	r1, r2
200241ae:	f7ff fa85 	bl	200236bc <HAL_QSPI_SET_CLK_INV>
200241b2:	4620      	mov	r0, r4
200241b4:	f89d 1038 	ldrb.w	r1, [sp, #56]	@ 0x38
200241b8:	f7fe fe42 	bl	20022e40 <HAL_FLASH_SET_CLK_rom>
200241bc:	f894 3035 	ldrb.w	r3, [r4, #53]	@ 0x35
200241c0:	b12b      	cbz	r3, 200241ce <HAL_FLASH_Init+0xfe>
200241c2:	2b01      	cmp	r3, #1
200241c4:	d110      	bne.n	200241e8 <HAL_FLASH_Init+0x118>
200241c6:	2100      	movs	r1, #0
200241c8:	4620      	mov	r0, r4
200241ca:	f7fe ff51 	bl	20023070 <HAL_FLASH_SET_DUAL_MODE>
200241ce:	2101      	movs	r1, #1
200241d0:	4620      	mov	r0, r4
200241d2:	f7fe feda 	bl	20022f8a <HAL_FLASH_ENABLE_QSPI>
200241d6:	2600      	movs	r6, #0
200241d8:	e7c8      	b.n	2002416c <HAL_FLASH_Init+0x9c>
200241da:	2d00      	cmp	r5, #0
200241dc:	d0de      	beq.n	2002419c <HAL_FLASH_Init+0xcc>
200241de:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
200241e2:	429d      	cmp	r5, r3
200241e4:	d1c1      	bne.n	2002416a <HAL_FLASH_Init+0x9a>
200241e6:	e7d9      	b.n	2002419c <HAL_FLASH_Init+0xcc>
200241e8:	2b02      	cmp	r3, #2
200241ea:	d1f0      	bne.n	200241ce <HAL_FLASH_Init+0xfe>
200241ec:	2101      	movs	r1, #1
200241ee:	e7eb      	b.n	200241c8 <HAL_FLASH_Init+0xf8>
200241f0:	6822      	ldr	r2, [r4, #0]
200241f2:	2700      	movs	r7, #0
200241f4:	6893      	ldr	r3, [r2, #8]
200241f6:	4639      	mov	r1, r7
200241f8:	f043 7370 	orr.w	r3, r3, #62914560	@ 0x3c00000
200241fc:	6093      	str	r3, [r2, #8]
200241fe:	2301      	movs	r3, #1
20024200:	463a      	mov	r2, r7
20024202:	4620      	mov	r0, r4
20024204:	e9cd 7303 	strd	r7, r3, [sp, #12]
20024208:	e9cd 7701 	strd	r7, r7, [sp, #4]
2002420c:	463b      	mov	r3, r7
2002420e:	9700      	str	r7, [sp, #0]
20024210:	f7fe fe1f 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
20024214:	463a      	mov	r2, r7
20024216:	21ff      	movs	r1, #255	@ 0xff
20024218:	4620      	mov	r0, r4
2002421a:	f7fe fdd5 	bl	20022dc8 <HAL_FLASH_SET_CMD>
2002421e:	4638      	mov	r0, r7
20024220:	f7fd fefd 	bl	2002201e <HAL_Delay_us>
20024224:	20c8      	movs	r0, #200	@ 0xc8
20024226:	f7fd fefa 	bl	2002201e <HAL_Delay_us>
2002422a:	2e00      	cmp	r6, #0
2002422c:	d0ad      	beq.n	2002418a <HAL_FLASH_Init+0xba>
2002422e:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024232:	b2ef      	uxtb	r7, r5
20024234:	f3c5 2807 	ubfx	r8, r5, #8, #8
20024238:	6325      	str	r5, [r4, #48]	@ 0x30
2002423a:	f3c5 4507 	ubfx	r5, r5, #16, #8
2002423e:	4642      	mov	r2, r8
20024240:	4629      	mov	r1, r5
20024242:	4638      	mov	r0, r7
20024244:	b3ab      	cbz	r3, 200242b2 <HAL_FLASH_Init+0x1e2>
20024246:	f001 f973 	bl	20025530 <spi_nand_get_cmd_by_id>
2002424a:	60e0      	str	r0, [r4, #12]
2002424c:	bba0      	cbnz	r0, 200242b8 <HAL_FLASH_Init+0x1e8>
2002424e:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024252:	b32b      	cbz	r3, 200242a0 <HAL_FLASH_Init+0x1d0>
20024254:	2108      	movs	r1, #8
20024256:	4620      	mov	r0, r4
20024258:	f7ff fb03 	bl	20023862 <nand_read_id>
2002425c:	f3c0 2807 	ubfx	r8, r0, #8, #8
20024260:	f3c0 4507 	ubfx	r5, r0, #16, #8
20024264:	b2c7      	uxtb	r7, r0
20024266:	6320      	str	r0, [r4, #48]	@ 0x30
20024268:	4642      	mov	r2, r8
2002426a:	4629      	mov	r1, r5
2002426c:	4638      	mov	r0, r7
2002426e:	f001 f95f 	bl	20025530 <spi_nand_get_cmd_by_id>
20024272:	60e0      	str	r0, [r4, #12]
20024274:	bb00      	cbnz	r0, 200242b8 <HAL_FLASH_Init+0x1e8>
20024276:	210f      	movs	r1, #15
20024278:	4620      	mov	r0, r4
2002427a:	f7ff faf2 	bl	20023862 <nand_read_id>
2002427e:	f3c0 2807 	ubfx	r8, r0, #8, #8
20024282:	f3c0 4507 	ubfx	r5, r0, #16, #8
20024286:	b2c7      	uxtb	r7, r0
20024288:	6320      	str	r0, [r4, #48]	@ 0x30
2002428a:	4642      	mov	r2, r8
2002428c:	4629      	mov	r1, r5
2002428e:	4638      	mov	r0, r7
20024290:	f001 f94e 	bl	20025530 <spi_nand_get_cmd_by_id>
20024294:	60e0      	str	r0, [r4, #12]
20024296:	b978      	cbnz	r0, 200242b8 <HAL_FLASH_Init+0x1e8>
20024298:	f001 f960 	bl	2002555c <spi_nand_get_default_ctable>
2002429c:	60e0      	str	r0, [r4, #12]
2002429e:	b958      	cbnz	r0, 200242b8 <HAL_FLASH_Init+0x1e8>
200242a0:	2100      	movs	r1, #0
200242a2:	4620      	mov	r0, r4
200242a4:	f7fe fe71 	bl	20022f8a <HAL_FLASH_ENABLE_QSPI>
200242a8:	2300      	movs	r3, #0
200242aa:	e9c4 330e 	strd	r3, r3, [r4, #56]	@ 0x38
200242ae:	2001      	movs	r0, #1
200242b0:	e04c      	b.n	2002434c <HAL_FLASH_Init+0x27c>
200242b2:	f001 f8f5 	bl	200254a0 <spi_flash_get_cmd_by_id>
200242b6:	e7c8      	b.n	2002424a <HAL_FLASH_Init+0x17a>
200242b8:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200242bc:	4642      	mov	r2, r8
200242be:	4629      	mov	r1, r5
200242c0:	4638      	mov	r0, r7
200242c2:	2b00      	cmp	r3, #0
200242c4:	d045      	beq.n	20024352 <HAL_FLASH_Init+0x282>
200242c6:	f001 f957 	bl	20025578 <spi_nand_get_size_by_id>
200242ca:	4642      	mov	r2, r8
200242cc:	4629      	mov	r1, r5
200242ce:	4681      	mov	r9, r0
200242d0:	4638      	mov	r0, r7
200242d2:	f001 f95b 	bl	2002558c <spi_nand_get_plane_select_flag>
200242d6:	4642      	mov	r2, r8
200242d8:	4629      	mov	r1, r5
200242da:	f884 0027 	strb.w	r0, [r4, #39]	@ 0x27
200242de:	4638      	mov	r0, r7
200242e0:	f001 f95d 	bl	2002559e <spi_nand_get_big_page_flag>
200242e4:	4642      	mov	r2, r8
200242e6:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
200242ea:	4629      	mov	r1, r5
200242ec:	4638      	mov	r0, r7
200242ee:	f001 f95f 	bl	200255b0 <spi_nand_get_ecc_mode>
200242f2:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
200242f6:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
200242fa:	f884 3024 	strb.w	r3, [r4, #36]	@ 0x24
200242fe:	f1b9 0f00 	cmp.w	r9, #0
20024302:	d003      	beq.n	2002430c <HAL_FLASH_Init+0x23c>
20024304:	f8c4 903c 	str.w	r9, [r4, #60]	@ 0x3c
20024308:	f8c4 9014 	str.w	r9, [r4, #20]
2002430c:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024310:	2b00      	cmp	r3, #0
20024312:	d173      	bne.n	200243fc <HAL_FLASH_Init+0x32c>
20024314:	2e00      	cmp	r6, #0
20024316:	d16e      	bne.n	200243f6 <HAL_FLASH_Init+0x326>
20024318:	4620      	mov	r0, r4
2002431a:	f7ff f93f 	bl	2002359c <HAL_FLASH_CLR_PROTECT>
2002431e:	6963      	ldr	r3, [r4, #20]
20024320:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20024324:	d938      	bls.n	20024398 <HAL_FLASH_Init+0x2c8>
20024326:	4632      	mov	r2, r6
20024328:	2121      	movs	r1, #33	@ 0x21
2002432a:	4620      	mov	r0, r4
2002432c:	f7fe ffc6 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20024330:	f894 3020 	ldrb.w	r3, [r4, #32]
20024334:	b98b      	cbnz	r3, 2002435a <HAL_FLASH_Init+0x28a>
20024336:	4631      	mov	r1, r6
20024338:	4620      	mov	r0, r4
2002433a:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
2002433e:	f7ff f907 	bl	20023550 <HAL_FLASH_FADDR_SET_QSPI>
20024342:	2107      	movs	r1, #7
20024344:	4620      	mov	r0, r4
20024346:	f7fe fe7b 	bl	20023040 <HAL_FLASH_SET_ROW_BOUNDARY>
2002434a:	2000      	movs	r0, #0
2002434c:	b007      	add	sp, #28
2002434e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20024352:	f001 f8b9 	bl	200254c8 <spi_flash_get_size_by_id>
20024356:	4681      	mov	r9, r0
20024358:	e7d1      	b.n	200242fe <HAL_FLASH_Init+0x22e>
2002435a:	2101      	movs	r1, #1
2002435c:	4620      	mov	r0, r4
2002435e:	f7ff f8f7 	bl	20023550 <HAL_FLASH_FADDR_SET_QSPI>
20024362:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
20024366:	f1b9 0f01 	cmp.w	r9, #1
2002436a:	d1ea      	bne.n	20024342 <HAL_FLASH_Init+0x272>
2002436c:	4642      	mov	r2, r8
2002436e:	4629      	mov	r1, r5
20024370:	4638      	mov	r0, r7
20024372:	f001 f8b3 	bl	200254dc <spi_flash_is_support_dtr>
20024376:	b138      	cbz	r0, 20024388 <HAL_FLASH_Init+0x2b8>
20024378:	4620      	mov	r0, r4
2002437a:	f7ff fe85 	bl	20024088 <HAL_NOR_DTR_CAL>
2002437e:	4649      	mov	r1, r9
20024380:	4620      	mov	r0, r4
20024382:	f7ff fe3a 	bl	20023ffa <HAL_NOR_CFG_DTR>
20024386:	e7dc      	b.n	20024342 <HAL_FLASH_Init+0x272>
20024388:	4632      	mov	r2, r6
2002438a:	4631      	mov	r1, r6
2002438c:	4620      	mov	r0, r4
2002438e:	f7fe feb5 	bl	200230fc <HAL_MPI_CFG_DTR>
20024392:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024396:	e7d4      	b.n	20024342 <HAL_FLASH_Init+0x272>
20024398:	f894 3020 	ldrb.w	r3, [r4, #32]
2002439c:	b933      	cbnz	r3, 200243ac <HAL_FLASH_Init+0x2dc>
2002439e:	4631      	mov	r1, r6
200243a0:	4620      	mov	r0, r4
200243a2:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200243a6:	f7ff f8c8 	bl	2002353a <HAL_FLASH_SET_QUAL_SPI>
200243aa:	e7ce      	b.n	2002434a <HAL_FLASH_Init+0x27a>
200243ac:	2101      	movs	r1, #1
200243ae:	4620      	mov	r0, r4
200243b0:	f7ff f8c3 	bl	2002353a <HAL_FLASH_SET_QUAL_SPI>
200243b4:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
200243b8:	f1b9 0f01 	cmp.w	r9, #1
200243bc:	d115      	bne.n	200243ea <HAL_FLASH_Init+0x31a>
200243be:	4642      	mov	r2, r8
200243c0:	4629      	mov	r1, r5
200243c2:	4638      	mov	r0, r7
200243c4:	f001 f88a 	bl	200254dc <spi_flash_is_support_dtr>
200243c8:	b138      	cbz	r0, 200243da <HAL_FLASH_Init+0x30a>
200243ca:	4620      	mov	r0, r4
200243cc:	f7ff fe5c 	bl	20024088 <HAL_NOR_DTR_CAL>
200243d0:	4649      	mov	r1, r9
200243d2:	4620      	mov	r0, r4
200243d4:	f7ff fe11 	bl	20023ffa <HAL_NOR_CFG_DTR>
200243d8:	e7b7      	b.n	2002434a <HAL_FLASH_Init+0x27a>
200243da:	4632      	mov	r2, r6
200243dc:	4631      	mov	r1, r6
200243de:	4620      	mov	r0, r4
200243e0:	f7fe fe8c 	bl	200230fc <HAL_MPI_CFG_DTR>
200243e4:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200243e8:	e7af      	b.n	2002434a <HAL_FLASH_Init+0x27a>
200243ea:	4632      	mov	r2, r6
200243ec:	4631      	mov	r1, r6
200243ee:	4620      	mov	r0, r4
200243f0:	f7fe fe84 	bl	200230fc <HAL_MPI_CFG_DTR>
200243f4:	e7a9      	b.n	2002434a <HAL_FLASH_Init+0x27a>
200243f6:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
200243fa:	e7a6      	b.n	2002434a <HAL_FLASH_Init+0x27a>
200243fc:	2101      	movs	r1, #1
200243fe:	4620      	mov	r0, r4
20024400:	f7fe fcbd 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20024404:	68e3      	ldr	r3, [r4, #12]
20024406:	2102      	movs	r1, #2
20024408:	791a      	ldrb	r2, [r3, #4]
2002440a:	4620      	mov	r0, r4
2002440c:	f7fe ff56 	bl	200232bc <HAL_FLASH_ISSUE_CMD>
20024410:	4620      	mov	r0, r4
20024412:	f7fe fd0a 	bl	20022e2a <HAL_FLASH_READ32>
20024416:	4605      	mov	r5, r0
20024418:	200a      	movs	r0, #10
2002441a:	f7fd fe00 	bl	2002201e <HAL_Delay_us>
2002441e:	07eb      	lsls	r3, r5, #31
20024420:	d4ec      	bmi.n	200243fc <HAL_FLASH_Init+0x32c>
20024422:	4620      	mov	r0, r4
20024424:	f7ff fb55 	bl	20023ad2 <nand_clear_status>
20024428:	f894 3020 	ldrb.w	r3, [r4, #32]
2002442c:	2b02      	cmp	r3, #2
2002442e:	d18c      	bne.n	2002434a <HAL_FLASH_Init+0x27a>
20024430:	2101      	movs	r1, #1
20024432:	4620      	mov	r0, r4
20024434:	f7ff fb1c 	bl	20023a70 <HAL_NAND_EN_QUAL>
20024438:	e787      	b.n	2002434a <HAL_FLASH_Init+0x27a>
2002443a:	bf00      	nop
2002443c:	05f5e100 	.word	0x05f5e100

20024440 <HAL_Delay_us_psram>:
20024440:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024442:	9001      	str	r0, [sp, #4]
20024444:	9b01      	ldr	r3, [sp, #4]
20024446:	4c11      	ldr	r4, [pc, #68]	@ (2002448c <HAL_Delay_us_psram+0x4c>)
20024448:	b10b      	cbz	r3, 2002444e <HAL_Delay_us_psram+0xe>
2002444a:	6820      	ldr	r0, [r4, #0]
2002444c:	b940      	cbnz	r0, 20024460 <HAL_Delay_us_psram+0x20>
2002444e:	2000      	movs	r0, #0
20024450:	f000 fe76 	bl	20025140 <HAL_RCC_GetHCLKFreq>
20024454:	4b0e      	ldr	r3, [pc, #56]	@ (20024490 <HAL_Delay_us_psram+0x50>)
20024456:	fbb0 f0f3 	udiv	r0, r0, r3
2002445a:	9b01      	ldr	r3, [sp, #4]
2002445c:	6020      	str	r0, [r4, #0]
2002445e:	b19b      	cbz	r3, 20024488 <HAL_Delay_us_psram+0x48>
20024460:	2830      	cmp	r0, #48	@ 0x30
20024462:	bf82      	ittt	hi
20024464:	9b01      	ldrhi	r3, [sp, #4]
20024466:	f103 33ff 	addhi.w	r3, r3, #4294967295
2002446a:	9301      	strhi	r3, [sp, #4]
2002446c:	9b01      	ldr	r3, [sp, #4]
2002446e:	b15b      	cbz	r3, 20024488 <HAL_Delay_us_psram+0x48>
20024470:	2205      	movs	r2, #5
20024472:	9b01      	ldr	r3, [sp, #4]
20024474:	3b01      	subs	r3, #1
20024476:	4343      	muls	r3, r0
20024478:	fbb3 f3f2 	udiv	r3, r3, r2
2002447c:	9303      	str	r3, [sp, #12]
2002447e:	9b03      	ldr	r3, [sp, #12]
20024480:	1e5a      	subs	r2, r3, #1
20024482:	9203      	str	r2, [sp, #12]
20024484:	2b00      	cmp	r3, #0
20024486:	d1fa      	bne.n	2002447e <HAL_Delay_us_psram+0x3e>
20024488:	b004      	add	sp, #16
2002448a:	bd10      	pop	{r4, pc}
2002448c:	20049f60 	.word	0x20049f60
20024490:	000f4240 	.word	0x000f4240

20024494 <HAL_MPI_OPSRAM_CAL_DELAY>:
20024494:	b570      	push	{r4, r5, r6, lr}
20024496:	460e      	mov	r6, r1
20024498:	4615      	mov	r5, r2
2002449a:	4604      	mov	r4, r0
2002449c:	b358      	cbz	r0, 200244f6 <HAL_MPI_OPSRAM_CAL_DELAY+0x62>
2002449e:	2202      	movs	r2, #2
200244a0:	6803      	ldr	r3, [r0, #0]
200244a2:	60da      	str	r2, [r3, #12]
200244a4:	6802      	ldr	r2, [r0, #0]
200244a6:	6d93      	ldr	r3, [r2, #88]	@ 0x58
200244a8:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
200244ac:	6593      	str	r3, [r2, #88]	@ 0x58
200244ae:	6802      	ldr	r2, [r0, #0]
200244b0:	2000      	movs	r0, #0
200244b2:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
200244b6:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
200244ba:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
200244be:	f7ff ffbf 	bl	20024440 <HAL_Delay_us_psram>
200244c2:	2014      	movs	r0, #20
200244c4:	f7ff ffbc 	bl	20024440 <HAL_Delay_us_psram>
200244c8:	6820      	ldr	r0, [r4, #0]
200244ca:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200244ce:	05db      	lsls	r3, r3, #23
200244d0:	d5fb      	bpl.n	200244ca <HAL_MPI_OPSRAM_CAL_DELAY+0x36>
200244d2:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200244d6:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
200244da:	b2db      	uxtb	r3, r3
200244dc:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
200244e0:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
200244e4:	1e5a      	subs	r2, r3, #1
200244e6:	7032      	strb	r2, [r6, #0]
200244e8:	2201      	movs	r2, #1
200244ea:	2000      	movs	r0, #0
200244ec:	3b04      	subs	r3, #4
200244ee:	702b      	strb	r3, [r5, #0]
200244f0:	6823      	ldr	r3, [r4, #0]
200244f2:	60da      	str	r2, [r3, #12]
200244f4:	bd70      	pop	{r4, r5, r6, pc}
200244f6:	2001      	movs	r0, #1
200244f8:	e7fc      	b.n	200244f4 <HAL_MPI_OPSRAM_CAL_DELAY+0x60>
	...

200244fc <HAL_SPI_PSRAM_Init>:
200244fc:	b537      	push	{r0, r1, r2, r4, r5, lr}
200244fe:	4614      	mov	r4, r2
20024500:	4605      	mov	r5, r0
20024502:	2800      	cmp	r0, #0
20024504:	d043      	beq.n	2002458e <HAL_SPI_PSRAM_Init+0x92>
20024506:	2900      	cmp	r1, #0
20024508:	d041      	beq.n	2002458e <HAL_SPI_PSRAM_Init+0x92>
2002450a:	f7fe fbbf 	bl	20022c8c <HAL_QSPI_Init>
2002450e:	4628      	mov	r0, r5
20024510:	b2e1      	uxtb	r1, r4
20024512:	f7fe fc95 	bl	20022e40 <HAL_FLASH_SET_CLK_rom>
20024516:	4628      	mov	r0, r5
20024518:	f7ff fd54 	bl	20023fc4 <HAL_QSPI_GET_CLK>
2002451c:	4b1d      	ldr	r3, [pc, #116]	@ (20024594 <HAL_SPI_PSRAM_Init+0x98>)
2002451e:	4298      	cmp	r0, r3
20024520:	d930      	bls.n	20024584 <HAL_SPI_PSRAM_Init+0x88>
20024522:	4b1d      	ldr	r3, [pc, #116]	@ (20024598 <HAL_SPI_PSRAM_Init+0x9c>)
20024524:	4298      	cmp	r0, r3
20024526:	d92f      	bls.n	20024588 <HAL_SPI_PSRAM_Init+0x8c>
20024528:	4b1c      	ldr	r3, [pc, #112]	@ (2002459c <HAL_SPI_PSRAM_Init+0xa0>)
2002452a:	4298      	cmp	r0, r3
2002452c:	d922      	bls.n	20024574 <HAL_SPI_PSRAM_Init+0x78>
2002452e:	f240 34b6 	movw	r4, #950	@ 0x3b6
20024532:	f240 4374 	movw	r3, #1140	@ 0x474
20024536:	4a1a      	ldr	r2, [pc, #104]	@ (200245a0 <HAL_SPI_PSRAM_Init+0xa4>)
20024538:	4290      	cmp	r0, r2
2002453a:	bf88      	it	hi
2002453c:	461c      	movhi	r4, r3
2002453e:	2200      	movs	r2, #0
20024540:	2101      	movs	r1, #1
20024542:	4628      	mov	r0, r5
20024544:	f7ff f8ba 	bl	200236bc <HAL_QSPI_SET_CLK_INV>
20024548:	2100      	movs	r1, #0
2002454a:	4622      	mov	r2, r4
2002454c:	2302      	movs	r3, #2
2002454e:	4628      	mov	r0, r5
20024550:	9100      	str	r1, [sp, #0]
20024552:	f7fe fd60 	bl	20023016 <HAL_FLASH_SET_CS_TIME>
20024556:	4604      	mov	r4, r0
20024558:	b948      	cbnz	r0, 2002456e <HAL_SPI_PSRAM_Init+0x72>
2002455a:	2106      	movs	r1, #6
2002455c:	4628      	mov	r0, r5
2002455e:	f7fe fd6f 	bl	20023040 <HAL_FLASH_SET_ROW_BOUNDARY>
20024562:	4604      	mov	r4, r0
20024564:	b918      	cbnz	r0, 2002456e <HAL_SPI_PSRAM_Init+0x72>
20024566:	2101      	movs	r1, #1
20024568:	4628      	mov	r0, r5
2002456a:	f7fe fd0e 	bl	20022f8a <HAL_FLASH_ENABLE_QSPI>
2002456e:	4620      	mov	r0, r4
20024570:	b003      	add	sp, #12
20024572:	bd30      	pop	{r4, r5, pc}
20024574:	4b0b      	ldr	r3, [pc, #44]	@ (200245a4 <HAL_SPI_PSRAM_Init+0xa8>)
20024576:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
2002457a:	4298      	cmp	r0, r3
2002457c:	d8df      	bhi.n	2002453e <HAL_SPI_PSRAM_Init+0x42>
2002457e:	2200      	movs	r2, #0
20024580:	4611      	mov	r1, r2
20024582:	e7de      	b.n	20024542 <HAL_SPI_PSRAM_Init+0x46>
20024584:	24b4      	movs	r4, #180	@ 0xb4
20024586:	e7fa      	b.n	2002457e <HAL_SPI_PSRAM_Init+0x82>
20024588:	f44f 74be 	mov.w	r4, #380	@ 0x17c
2002458c:	e7f7      	b.n	2002457e <HAL_SPI_PSRAM_Init+0x82>
2002458e:	2401      	movs	r4, #1
20024590:	e7ed      	b.n	2002456e <HAL_SPI_PSRAM_Init+0x72>
20024592:	bf00      	nop
20024594:	016e3600 	.word	0x016e3600
20024598:	02dc6c00 	.word	0x02dc6c00
2002459c:	05b8d800 	.word	0x05b8d800
200245a0:	07270e00 	.word	0x07270e00
200245a4:	03938700 	.word	0x03938700

200245a8 <HAL_MPI_MR_WRITE>:
200245a8:	b5f0      	push	{r4, r5, r6, r7, lr}
200245aa:	460e      	mov	r6, r1
200245ac:	4617      	mov	r7, r2
200245ae:	4605      	mov	r5, r0
200245b0:	b087      	sub	sp, #28
200245b2:	b1d8      	cbz	r0, 200245ec <HAL_MPI_MR_WRITE+0x44>
200245b4:	2207      	movs	r2, #7
200245b6:	2400      	movs	r4, #0
200245b8:	2303      	movs	r3, #3
200245ba:	e9cd 2203 	strd	r2, r2, [sp, #12]
200245be:	2101      	movs	r1, #1
200245c0:	e9cd 4301 	strd	r4, r3, [sp, #4]
200245c4:	9400      	str	r4, [sp, #0]
200245c6:	4623      	mov	r3, r4
200245c8:	f7fe fc43 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
200245cc:	2102      	movs	r1, #2
200245ce:	4628      	mov	r0, r5
200245d0:	f7fe fbd5 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
200245d4:	4639      	mov	r1, r7
200245d6:	4628      	mov	r0, r5
200245d8:	f7fe fbca 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
200245dc:	4632      	mov	r2, r6
200245de:	21c0      	movs	r1, #192	@ 0xc0
200245e0:	4628      	mov	r0, r5
200245e2:	f7fe fbf1 	bl	20022dc8 <HAL_FLASH_SET_CMD>
200245e6:	4620      	mov	r0, r4
200245e8:	b007      	add	sp, #28
200245ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
200245ec:	2001      	movs	r0, #1
200245ee:	e7fb      	b.n	200245e8 <HAL_MPI_MR_WRITE+0x40>

200245f0 <HAL_MPI_SET_FIXLAT>:
200245f0:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
200245f4:	460c      	mov	r4, r1
200245f6:	4616      	mov	r6, r2
200245f8:	461f      	mov	r7, r3
200245fa:	4605      	mov	r5, r0
200245fc:	2800      	cmp	r0, #0
200245fe:	d040      	beq.n	20024682 <HAL_MPI_SET_FIXLAT+0x92>
20024600:	466b      	mov	r3, sp
20024602:	4a21      	ldr	r2, [pc, #132]	@ (20024688 <HAL_MPI_SET_FIXLAT+0x98>)
20024604:	6810      	ldr	r0, [r2, #0]
20024606:	6851      	ldr	r1, [r2, #4]
20024608:	c303      	stmia	r3!, {r0, r1}
2002460a:	6890      	ldr	r0, [r2, #8]
2002460c:	68d1      	ldr	r1, [r2, #12]
2002460e:	c303      	stmia	r3!, {r0, r1}
20024610:	4628      	mov	r0, r5
20024612:	b2e1      	uxtb	r1, r4
20024614:	f7fe fd3a 	bl	2002308c <HAL_MPI_EN_FIXLAT>
20024618:	f107 0310 	add.w	r3, r7, #16
2002461c:	446b      	add	r3, sp
2002461e:	f813 8c08 	ldrb.w	r8, [r3, #-8]
20024622:	ea4f 1848 	mov.w	r8, r8, lsl #5
20024626:	fa5f f888 	uxtb.w	r8, r8
2002462a:	b30c      	cbz	r4, 20024670 <HAL_MPI_SET_FIXLAT+0x80>
2002462c:	ab04      	add	r3, sp, #16
2002462e:	eb03 0356 	add.w	r3, r3, r6, lsr #1
20024632:	f813 4c10 	ldrb.w	r4, [r3, #-16]
20024636:	00a4      	lsls	r4, r4, #2
20024638:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
2002463c:	b264      	sxtb	r4, r4
2002463e:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
20024642:	2100      	movs	r1, #0
20024644:	4628      	mov	r0, r5
20024646:	f7ff ffaf 	bl	200245a8 <HAL_MPI_MR_WRITE>
2002464a:	1e71      	subs	r1, r6, #1
2002464c:	4628      	mov	r0, r5
2002464e:	b249      	sxtb	r1, r1
20024650:	f7fe fd7a 	bl	20023148 <HAL_MPI_MODIFY_RCMD_DELAY>
20024654:	4642      	mov	r2, r8
20024656:	2104      	movs	r1, #4
20024658:	4628      	mov	r0, r5
2002465a:	f7ff ffa5 	bl	200245a8 <HAL_MPI_MR_WRITE>
2002465e:	1e79      	subs	r1, r7, #1
20024660:	4628      	mov	r0, r5
20024662:	b249      	sxtb	r1, r1
20024664:	f7fe fd79 	bl	2002315a <HAL_MPI_MODIFY_WCMD_DELAY>
20024668:	2000      	movs	r0, #0
2002466a:	b004      	add	sp, #16
2002466c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20024670:	f106 0310 	add.w	r3, r6, #16
20024674:	446b      	add	r3, sp
20024676:	f813 4c10 	ldrb.w	r4, [r3, #-16]
2002467a:	00a4      	lsls	r4, r4, #2
2002467c:	f044 0401 	orr.w	r4, r4, #1
20024680:	e7dc      	b.n	2002463c <HAL_MPI_SET_FIXLAT+0x4c>
20024682:	2001      	movs	r0, #1
20024684:	e7f1      	b.n	2002466a <HAL_MPI_SET_FIXLAT+0x7a>
20024686:	bf00      	nop
20024688:	2002b9c0 	.word	0x2002b9c0

2002468c <HAL_LEGACY_MR_WRITE>:
2002468c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002468e:	460e      	mov	r6, r1
20024690:	4617      	mov	r7, r2
20024692:	4605      	mov	r5, r0
20024694:	b087      	sub	sp, #28
20024696:	b1d8      	cbz	r0, 200246d0 <HAL_LEGACY_MR_WRITE+0x44>
20024698:	2207      	movs	r2, #7
2002469a:	2400      	movs	r4, #0
2002469c:	2302      	movs	r3, #2
2002469e:	e9cd 2203 	strd	r2, r2, [sp, #12]
200246a2:	2101      	movs	r1, #1
200246a4:	e9cd 4301 	strd	r4, r3, [sp, #4]
200246a8:	9400      	str	r4, [sp, #0]
200246aa:	4623      	mov	r3, r4
200246ac:	f7fe fbd1 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
200246b0:	2104      	movs	r1, #4
200246b2:	4628      	mov	r0, r5
200246b4:	f7fe fb63 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
200246b8:	4639      	mov	r1, r7
200246ba:	4628      	mov	r0, r5
200246bc:	f7fe fb58 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
200246c0:	4632      	mov	r2, r6
200246c2:	21c0      	movs	r1, #192	@ 0xc0
200246c4:	4628      	mov	r0, r5
200246c6:	f7fe fb7f 	bl	20022dc8 <HAL_FLASH_SET_CMD>
200246ca:	4620      	mov	r0, r4
200246cc:	b007      	add	sp, #28
200246ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
200246d0:	2001      	movs	r0, #1
200246d2:	e7fb      	b.n	200246cc <HAL_LEGACY_MR_WRITE+0x40>

200246d4 <HAL_LEGACY_CFG_READ>:
200246d4:	b530      	push	{r4, r5, lr}
200246d6:	4605      	mov	r5, r0
200246d8:	b085      	sub	sp, #20
200246da:	b1a0      	cbz	r0, 20024706 <HAL_LEGACY_CFG_READ+0x32>
200246dc:	2400      	movs	r4, #0
200246de:	2107      	movs	r1, #7
200246e0:	2302      	movs	r3, #2
200246e2:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200246e6:	e9cd 1102 	strd	r1, r1, [sp, #8]
200246ea:	0052      	lsls	r2, r2, #1
200246ec:	e9cd 4300 	strd	r4, r3, [sp]
200246f0:	b252      	sxtb	r2, r2
200246f2:	4623      	mov	r3, r4
200246f4:	f7fe faf6 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
200246f8:	4621      	mov	r1, r4
200246fa:	4628      	mov	r0, r5
200246fc:	f7fe fae7 	bl	20022cce <HAL_FLASH_SET_AHB_RCMD>
20024700:	4620      	mov	r0, r4
20024702:	b005      	add	sp, #20
20024704:	bd30      	pop	{r4, r5, pc}
20024706:	2001      	movs	r0, #1
20024708:	e7fb      	b.n	20024702 <HAL_LEGACY_CFG_READ+0x2e>

2002470a <HAL_LEGACY_CFG_WRITE>:
2002470a:	b530      	push	{r4, r5, lr}
2002470c:	4605      	mov	r5, r0
2002470e:	b085      	sub	sp, #20
20024710:	b190      	cbz	r0, 20024738 <HAL_LEGACY_CFG_WRITE+0x2e>
20024712:	2107      	movs	r1, #7
20024714:	2400      	movs	r4, #0
20024716:	2302      	movs	r3, #2
20024718:	e9cd 1102 	strd	r1, r1, [sp, #8]
2002471c:	e9cd 4300 	strd	r4, r3, [sp]
20024720:	4623      	mov	r3, r4
20024722:	f990 2026 	ldrsb.w	r2, [r0, #38]	@ 0x26
20024726:	f7fe fb06 	bl	20022d36 <HAL_FLASH_CFG_AHB_WCMD>
2002472a:	2180      	movs	r1, #128	@ 0x80
2002472c:	4628      	mov	r0, r5
2002472e:	f7fe faf6 	bl	20022d1e <HAL_FLASH_SET_AHB_WCMD>
20024732:	4620      	mov	r0, r4
20024734:	b005      	add	sp, #20
20024736:	bd30      	pop	{r4, r5, pc}
20024738:	2001      	movs	r0, #1
2002473a:	e7fb      	b.n	20024734 <HAL_LEGACY_CFG_WRITE+0x2a>

2002473c <HAL_PSRAM_RESET>:
2002473c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002473e:	4604      	mov	r4, r0
20024740:	b087      	sub	sp, #28
20024742:	2800      	cmp	r0, #0
20024744:	d03b      	beq.n	200247be <HAL_PSRAM_RESET+0x82>
20024746:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
2002474a:	2b05      	cmp	r3, #5
2002474c:	d034      	beq.n	200247b8 <HAL_PSRAM_RESET+0x7c>
2002474e:	3b03      	subs	r3, #3
20024750:	2b01      	cmp	r3, #1
20024752:	d82e      	bhi.n	200247b2 <HAL_PSRAM_RESET+0x76>
20024754:	2601      	movs	r6, #1
20024756:	2703      	movs	r7, #3
20024758:	2300      	movs	r3, #0
2002475a:	2507      	movs	r5, #7
2002475c:	b276      	sxtb	r6, r6
2002475e:	b27f      	sxtb	r7, r7
20024760:	461a      	mov	r2, r3
20024762:	2101      	movs	r1, #1
20024764:	4620      	mov	r0, r4
20024766:	e9cd 5503 	strd	r5, r5, [sp, #12]
2002476a:	e9cd 5701 	strd	r5, r7, [sp, #4]
2002476e:	9600      	str	r6, [sp, #0]
20024770:	f7fe fb6f 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
20024774:	2200      	movs	r2, #0
20024776:	21ff      	movs	r1, #255	@ 0xff
20024778:	4620      	mov	r0, r4
2002477a:	f7fe fb25 	bl	20022dc8 <HAL_FLASH_SET_CMD>
2002477e:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024782:	2b05      	cmp	r3, #5
20024784:	d10f      	bne.n	200247a6 <HAL_PSRAM_RESET+0x6a>
20024786:	2300      	movs	r3, #0
20024788:	2101      	movs	r1, #1
2002478a:	461a      	mov	r2, r3
2002478c:	4620      	mov	r0, r4
2002478e:	e9cd 5503 	strd	r5, r5, [sp, #12]
20024792:	e9cd 5701 	strd	r5, r7, [sp, #4]
20024796:	9600      	str	r6, [sp, #0]
20024798:	f7fe fb5b 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
2002479c:	2200      	movs	r2, #0
2002479e:	21ff      	movs	r1, #255	@ 0xff
200247a0:	4620      	mov	r0, r4
200247a2:	f7fe fb11 	bl	20022dc8 <HAL_FLASH_SET_CMD>
200247a6:	2000      	movs	r0, #0
200247a8:	f7fd fc39 	bl	2002201e <HAL_Delay_us>
200247ac:	2003      	movs	r0, #3
200247ae:	f7fd fc36 	bl	2002201e <HAL_Delay_us>
200247b2:	2000      	movs	r0, #0
200247b4:	b007      	add	sp, #28
200247b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200247b8:	2603      	movs	r6, #3
200247ba:	2702      	movs	r7, #2
200247bc:	e7cc      	b.n	20024758 <HAL_PSRAM_RESET+0x1c>
200247be:	2001      	movs	r0, #1
200247c0:	e7f8      	b.n	200247b4 <HAL_PSRAM_RESET+0x78>
	...

200247c4 <HAL_OPI_PSRAM_Init>:
200247c4:	b530      	push	{r4, r5, lr}
200247c6:	4604      	mov	r4, r0
200247c8:	b085      	sub	sp, #20
200247ca:	2800      	cmp	r0, #0
200247cc:	d06e      	beq.n	200248ac <HAL_OPI_PSRAM_Init+0xe8>
200247ce:	2900      	cmp	r1, #0
200247d0:	d06c      	beq.n	200248ac <HAL_OPI_PSRAM_Init+0xe8>
200247d2:	f7fe fa5b 	bl	20022c8c <HAL_QSPI_Init>
200247d6:	6823      	ldr	r3, [r4, #0]
200247d8:	f10d 020e 	add.w	r2, sp, #14
200247dc:	f10d 010f 	add.w	r1, sp, #15
200247e0:	4620      	mov	r0, r4
200247e2:	681d      	ldr	r5, [r3, #0]
200247e4:	f7ff fe56 	bl	20024494 <HAL_MPI_OPSRAM_CAL_DELAY>
200247e8:	2101      	movs	r1, #1
200247ea:	4620      	mov	r0, r4
200247ec:	f7fe fb28 	bl	20022e40 <HAL_FLASH_SET_CLK_rom>
200247f0:	4620      	mov	r0, r4
200247f2:	f7ff fbe7 	bl	20023fc4 <HAL_QSPI_GET_CLK>
200247f6:	4b2e      	ldr	r3, [pc, #184]	@ (200248b0 <HAL_OPI_PSRAM_Init+0xec>)
200247f8:	f005 0501 	and.w	r5, r5, #1
200247fc:	4298      	cmp	r0, r3
200247fe:	d836      	bhi.n	2002486e <HAL_OPI_PSRAM_Init+0xaa>
20024800:	2314      	movs	r3, #20
20024802:	2103      	movs	r1, #3
20024804:	f88d 300e 	strb.w	r3, [sp, #14]
20024808:	f88d 300f 	strb.w	r3, [sp, #15]
2002480c:	4608      	mov	r0, r1
2002480e:	2300      	movs	r3, #0
20024810:	22b4      	movs	r2, #180	@ 0xb4
20024812:	f884 1025 	strb.w	r1, [r4, #37]	@ 0x25
20024816:	f884 1026 	strb.w	r1, [r4, #38]	@ 0x26
2002481a:	2106      	movs	r1, #6
2002481c:	9000      	str	r0, [sp, #0]
2002481e:	4620      	mov	r0, r4
20024820:	f7fe fbf9 	bl	20023016 <HAL_FLASH_SET_CS_TIME>
20024824:	2107      	movs	r1, #7
20024826:	4620      	mov	r0, r4
20024828:	f7fe fc0a 	bl	20023040 <HAL_FLASH_SET_ROW_BOUNDARY>
2002482c:	2101      	movs	r1, #1
2002482e:	4620      	mov	r0, r4
20024830:	f7fe fc3a 	bl	200230a8 <HAL_MPI_ENABLE_DQS>
20024834:	f89d 100e 	ldrb.w	r1, [sp, #14]
20024838:	4620      	mov	r0, r4
2002483a:	f7fe fc43 	bl	200230c4 <HAL_MPI_SET_DQS_DELAY>
2002483e:	2200      	movs	r2, #0
20024840:	f89d 100f 	ldrb.w	r1, [sp, #15]
20024844:	4620      	mov	r0, r4
20024846:	f7fe fc49 	bl	200230dc <HAL_MPI_SET_SCK>
2002484a:	2101      	movs	r1, #1
2002484c:	4620      	mov	r0, r4
2002484e:	f7fe fb9c 	bl	20022f8a <HAL_FLASH_ENABLE_QSPI>
20024852:	2101      	movs	r1, #1
20024854:	4620      	mov	r0, r4
20024856:	f7fe fba6 	bl	20022fa6 <HAL_FLASH_ENABLE_OPI>
2002485a:	b92d      	cbnz	r5, 20024868 <HAL_OPI_PSRAM_Init+0xa4>
2002485c:	4b15      	ldr	r3, [pc, #84]	@ (200248b4 <HAL_OPI_PSRAM_Init+0xf0>)
2002485e:	681b      	ldr	r3, [r3, #0]
20024860:	f003 0303 	and.w	r3, r3, #3
20024864:	2b03      	cmp	r3, #3
20024866:	d11d      	bne.n	200248a4 <HAL_OPI_PSRAM_Init+0xe0>
20024868:	2000      	movs	r0, #0
2002486a:	b005      	add	sp, #20
2002486c:	bd30      	pop	{r4, r5, pc}
2002486e:	4b12      	ldr	r3, [pc, #72]	@ (200248b8 <HAL_OPI_PSRAM_Init+0xf4>)
20024870:	4298      	cmp	r0, r3
20024872:	d90b      	bls.n	2002488c <HAL_OPI_PSRAM_Init+0xc8>
20024874:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024878:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
2002487c:	4298      	cmp	r0, r3
2002487e:	d90b      	bls.n	20024898 <HAL_OPI_PSRAM_Init+0xd4>
20024880:	2107      	movs	r1, #7
20024882:	2014      	movs	r0, #20
20024884:	2308      	movs	r3, #8
20024886:	f240 5232 	movw	r2, #1330	@ 0x532
2002488a:	e7c2      	b.n	20024812 <HAL_OPI_PSRAM_Init+0x4e>
2002488c:	2105      	movs	r1, #5
2002488e:	200e      	movs	r0, #14
20024890:	2303      	movs	r3, #3
20024892:	f240 32b6 	movw	r2, #950	@ 0x3b6
20024896:	e7bc      	b.n	20024812 <HAL_OPI_PSRAM_Init+0x4e>
20024898:	2106      	movs	r1, #6
2002489a:	2011      	movs	r0, #17
2002489c:	2305      	movs	r3, #5
2002489e:	f240 4274 	movw	r2, #1140	@ 0x474
200248a2:	e7b6      	b.n	20024812 <HAL_OPI_PSRAM_Init+0x4e>
200248a4:	4620      	mov	r0, r4
200248a6:	f7ff ff49 	bl	2002473c <HAL_PSRAM_RESET>
200248aa:	e7dd      	b.n	20024868 <HAL_OPI_PSRAM_Init+0xa4>
200248ac:	2001      	movs	r0, #1
200248ae:	e7dc      	b.n	2002486a <HAL_OPI_PSRAM_Init+0xa6>
200248b0:	02dc6c01 	.word	0x02dc6c01
200248b4:	500c0000 	.word	0x500c0000
200248b8:	0e4e1c01 	.word	0x0e4e1c01

200248bc <HAL_LEGACY_PSRAM_Init>:
200248bc:	b5f0      	push	{r4, r5, r6, r7, lr}
200248be:	4604      	mov	r4, r0
200248c0:	b085      	sub	sp, #20
200248c2:	2800      	cmp	r0, #0
200248c4:	f000 8096 	beq.w	200249f4 <HAL_LEGACY_PSRAM_Init+0x138>
200248c8:	2900      	cmp	r1, #0
200248ca:	f000 8093 	beq.w	200249f4 <HAL_LEGACY_PSRAM_Init+0x138>
200248ce:	f7fe f9dd 	bl	20022c8c <HAL_QSPI_Init>
200248d2:	6823      	ldr	r3, [r4, #0]
200248d4:	f10d 020e 	add.w	r2, sp, #14
200248d8:	f10d 010f 	add.w	r1, sp, #15
200248dc:	4620      	mov	r0, r4
200248de:	681e      	ldr	r6, [r3, #0]
200248e0:	f7ff fdd8 	bl	20024494 <HAL_MPI_OPSRAM_CAL_DELAY>
200248e4:	2101      	movs	r1, #1
200248e6:	4620      	mov	r0, r4
200248e8:	f7fe faaa 	bl	20022e40 <HAL_FLASH_SET_CLK_rom>
200248ec:	4620      	mov	r0, r4
200248ee:	f7ff fb69 	bl	20023fc4 <HAL_QSPI_GET_CLK>
200248f2:	4b41      	ldr	r3, [pc, #260]	@ (200249f8 <HAL_LEGACY_PSRAM_Init+0x13c>)
200248f4:	4605      	mov	r5, r0
200248f6:	4298      	cmp	r0, r3
200248f8:	4f40      	ldr	r7, [pc, #256]	@ (200249fc <HAL_LEGACY_PSRAM_Init+0x140>)
200248fa:	f006 0601 	and.w	r6, r6, #1
200248fe:	d850      	bhi.n	200249a2 <HAL_LEGACY_PSRAM_Init+0xe6>
20024900:	2314      	movs	r3, #20
20024902:	2103      	movs	r1, #3
20024904:	f88d 300e 	strb.w	r3, [sp, #14]
20024908:	f88d 300f 	strb.w	r3, [sp, #15]
2002490c:	22b4      	movs	r2, #180	@ 0xb4
2002490e:	2300      	movs	r3, #0
20024910:	9100      	str	r1, [sp, #0]
20024912:	4620      	mov	r0, r4
20024914:	2106      	movs	r1, #6
20024916:	f7fe fb7e 	bl	20023016 <HAL_FLASH_SET_CS_TIME>
2002491a:	2107      	movs	r1, #7
2002491c:	4620      	mov	r0, r4
2002491e:	f7fe fb8f 	bl	20023040 <HAL_FLASH_SET_ROW_BOUNDARY>
20024922:	2101      	movs	r1, #1
20024924:	4620      	mov	r0, r4
20024926:	f7fe fbbf 	bl	200230a8 <HAL_MPI_ENABLE_DQS>
2002492a:	f89d 100e 	ldrb.w	r1, [sp, #14]
2002492e:	4620      	mov	r0, r4
20024930:	f7fe fbc8 	bl	200230c4 <HAL_MPI_SET_DQS_DELAY>
20024934:	2200      	movs	r2, #0
20024936:	f89d 100f 	ldrb.w	r1, [sp, #15]
2002493a:	4620      	mov	r0, r4
2002493c:	f7fe fbce 	bl	200230dc <HAL_MPI_SET_SCK>
20024940:	2101      	movs	r1, #1
20024942:	4620      	mov	r0, r4
20024944:	f7fe fb86 	bl	20023054 <HAL_FLASH_SET_LEGACY>
20024948:	2101      	movs	r1, #1
2002494a:	4620      	mov	r0, r4
2002494c:	f7fe fb1d 	bl	20022f8a <HAL_FLASH_ENABLE_QSPI>
20024950:	2101      	movs	r1, #1
20024952:	4620      	mov	r0, r4
20024954:	f7fe fb27 	bl	20022fa6 <HAL_FLASH_ENABLE_OPI>
20024958:	b92e      	cbnz	r6, 20024966 <HAL_LEGACY_PSRAM_Init+0xaa>
2002495a:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
2002495e:	b913      	cbnz	r3, 20024966 <HAL_LEGACY_PSRAM_Init+0xaa>
20024960:	4620      	mov	r0, r4
20024962:	f7ff feeb 	bl	2002473c <HAL_PSRAM_RESET>
20024966:	42bd      	cmp	r5, r7
20024968:	d93a      	bls.n	200249e0 <HAL_LEGACY_PSRAM_Init+0x124>
2002496a:	4b25      	ldr	r3, [pc, #148]	@ (20024a00 <HAL_LEGACY_PSRAM_Init+0x144>)
2002496c:	429d      	cmp	r5, r3
2002496e:	d93c      	bls.n	200249ea <HAL_LEGACY_PSRAM_Init+0x12e>
20024970:	2206      	movs	r2, #6
20024972:	2302      	movs	r3, #2
20024974:	2588      	movs	r5, #136	@ 0x88
20024976:	263b      	movs	r6, #59	@ 0x3b
20024978:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
2002497c:	2101      	movs	r1, #1
2002497e:	f884 2025 	strb.w	r2, [r4, #37]	@ 0x25
20024982:	4620      	mov	r0, r4
20024984:	f7fe fb82 	bl	2002308c <HAL_MPI_EN_FIXLAT>
20024988:	4632      	mov	r2, r6
2002498a:	2100      	movs	r1, #0
2002498c:	4620      	mov	r0, r4
2002498e:	f7ff fe7d 	bl	2002468c <HAL_LEGACY_MR_WRITE>
20024992:	462a      	mov	r2, r5
20024994:	2104      	movs	r1, #4
20024996:	4620      	mov	r0, r4
20024998:	f7ff fe78 	bl	2002468c <HAL_LEGACY_MR_WRITE>
2002499c:	2000      	movs	r0, #0
2002499e:	b005      	add	sp, #20
200249a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
200249a2:	42b8      	cmp	r0, r7
200249a4:	d90d      	bls.n	200249c2 <HAL_LEGACY_PSRAM_Init+0x106>
200249a6:	4b16      	ldr	r3, [pc, #88]	@ (20024a00 <HAL_LEGACY_PSRAM_Init+0x144>)
200249a8:	4298      	cmp	r0, r3
200249aa:	d90f      	bls.n	200249cc <HAL_LEGACY_PSRAM_Init+0x110>
200249ac:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200249b0:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200249b4:	4298      	cmp	r0, r3
200249b6:	d80e      	bhi.n	200249d6 <HAL_LEGACY_PSRAM_Init+0x11a>
200249b8:	2114      	movs	r1, #20
200249ba:	2308      	movs	r3, #8
200249bc:	f240 5232 	movw	r2, #1330	@ 0x532
200249c0:	e7a6      	b.n	20024910 <HAL_LEGACY_PSRAM_Init+0x54>
200249c2:	210e      	movs	r1, #14
200249c4:	2303      	movs	r3, #3
200249c6:	f240 32b6 	movw	r2, #950	@ 0x3b6
200249ca:	e7a1      	b.n	20024910 <HAL_LEGACY_PSRAM_Init+0x54>
200249cc:	2111      	movs	r1, #17
200249ce:	2305      	movs	r3, #5
200249d0:	f240 4274 	movw	r2, #1140	@ 0x474
200249d4:	e79c      	b.n	20024910 <HAL_LEGACY_PSRAM_Init+0x54>
200249d6:	2117      	movs	r1, #23
200249d8:	2309      	movs	r3, #9
200249da:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
200249de:	e797      	b.n	20024910 <HAL_LEGACY_PSRAM_Init+0x54>
200249e0:	2204      	movs	r2, #4
200249e2:	2300      	movs	r3, #0
200249e4:	2508      	movs	r5, #8
200249e6:	2633      	movs	r6, #51	@ 0x33
200249e8:	e7c6      	b.n	20024978 <HAL_LEGACY_PSRAM_Init+0xbc>
200249ea:	2205      	movs	r2, #5
200249ec:	2300      	movs	r3, #0
200249ee:	2508      	movs	r5, #8
200249f0:	2637      	movs	r6, #55	@ 0x37
200249f2:	e7c1      	b.n	20024978 <HAL_LEGACY_PSRAM_Init+0xbc>
200249f4:	2001      	movs	r0, #1
200249f6:	e7d2      	b.n	2002499e <HAL_LEGACY_PSRAM_Init+0xe2>
200249f8:	02dc6c01 	.word	0x02dc6c01
200249fc:	0e4e1c01 	.word	0x0e4e1c01
20024a00:	112a8801 	.word	0x112a8801

20024a04 <HAL_HYPER_PSRAM_WriteCR>:
20024a04:	b570      	push	{r4, r5, r6, lr}
20024a06:	460e      	mov	r6, r1
20024a08:	4615      	mov	r5, r2
20024a0a:	4604      	mov	r4, r0
20024a0c:	b086      	sub	sp, #24
20024a0e:	b1f8      	cbz	r0, 20024a50 <HAL_HYPER_PSRAM_WriteCR+0x4c>
20024a10:	2207      	movs	r2, #7
20024a12:	2303      	movs	r3, #3
20024a14:	e9cd 2301 	strd	r2, r3, [sp, #4]
20024a18:	2300      	movs	r3, #0
20024a1a:	e9cd 2203 	strd	r2, r2, [sp, #12]
20024a1e:	9300      	str	r3, [sp, #0]
20024a20:	2101      	movs	r1, #1
20024a22:	f7fe fa16 	bl	20022e52 <HAL_FLASH_MANUAL_CMD>
20024a26:	4631      	mov	r1, r6
20024a28:	4620      	mov	r0, r4
20024a2a:	f7fe f9bc 	bl	20022da6 <HAL_FLASH_WRITE_ABYTE>
20024a2e:	2102      	movs	r1, #2
20024a30:	4620      	mov	r0, r4
20024a32:	f7fe f9a4 	bl	20022d7e <HAL_FLASH_WRITE_DLEN>
20024a36:	4629      	mov	r1, r5
20024a38:	4620      	mov	r0, r4
20024a3a:	f7fe f999 	bl	20022d70 <HAL_FLASH_WRITE_WORD>
20024a3e:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
20024a42:	2160      	movs	r1, #96	@ 0x60
20024a44:	4620      	mov	r0, r4
20024a46:	b006      	add	sp, #24
20024a48:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
20024a4c:	f7fe b9bc 	b.w	20022dc8 <HAL_FLASH_SET_CMD>
20024a50:	b006      	add	sp, #24
20024a52:	bd70      	pop	{r4, r5, r6, pc}

20024a54 <HAL_HYPER_PSRAM_Init>:
20024a54:	b538      	push	{r3, r4, r5, lr}
20024a56:	4604      	mov	r4, r0
20024a58:	2201      	movs	r2, #1
20024a5a:	f7ff feb3 	bl	200247c4 <HAL_OPI_PSRAM_Init>
20024a5e:	4620      	mov	r0, r4
20024a60:	f7ff fab0 	bl	20023fc4 <HAL_QSPI_GET_CLK>
20024a64:	4b15      	ldr	r3, [pc, #84]	@ (20024abc <HAL_HYPER_PSRAM_Init+0x68>)
20024a66:	4298      	cmp	r0, r3
20024a68:	d91f      	bls.n	20024aaa <HAL_HYPER_PSRAM_Init+0x56>
20024a6a:	4b15      	ldr	r3, [pc, #84]	@ (20024ac0 <HAL_HYPER_PSRAM_Init+0x6c>)
20024a6c:	4298      	cmp	r0, r3
20024a6e:	d91f      	bls.n	20024ab0 <HAL_HYPER_PSRAM_Init+0x5c>
20024a70:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
20024a74:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
20024a78:	4298      	cmp	r0, r3
20024a7a:	d91c      	bls.n	20024ab6 <HAL_HYPER_PSRAM_Init+0x62>
20024a7c:	f242 758f 	movw	r5, #10127	@ 0x278f
20024a80:	f241 738f 	movw	r3, #6031	@ 0x178f
20024a84:	4a0f      	ldr	r2, [pc, #60]	@ (20024ac4 <HAL_HYPER_PSRAM_Init+0x70>)
20024a86:	4290      	cmp	r0, r2
20024a88:	bf98      	it	ls
20024a8a:	461d      	movls	r5, r3
20024a8c:	2101      	movs	r1, #1
20024a8e:	4620      	mov	r0, r4
20024a90:	f7fe fa97 	bl	20022fc2 <HAL_FLASH_ENABLE_HYPER>
20024a94:	462a      	mov	r2, r5
20024a96:	4620      	mov	r0, r4
20024a98:	2100      	movs	r1, #0
20024a9a:	f7ff ffb3 	bl	20024a04 <HAL_HYPER_PSRAM_WriteCR>
20024a9e:	2101      	movs	r1, #1
20024aa0:	4620      	mov	r0, r4
20024aa2:	f7fe faf3 	bl	2002308c <HAL_MPI_EN_FIXLAT>
20024aa6:	2000      	movs	r0, #0
20024aa8:	bd38      	pop	{r3, r4, r5, pc}
20024aaa:	f24e 758f 	movw	r5, #59279	@ 0xe78f
20024aae:	e7ed      	b.n	20024a8c <HAL_HYPER_PSRAM_Init+0x38>
20024ab0:	f24f 758f 	movw	r5, #63375	@ 0xf78f
20024ab4:	e7ea      	b.n	20024a8c <HAL_HYPER_PSRAM_Init+0x38>
20024ab6:	f240 758f 	movw	r5, #1935	@ 0x78f
20024aba:	e7e7      	b.n	20024a8c <HAL_HYPER_PSRAM_Init+0x38>
20024abc:	0a21fe81 	.word	0x0a21fe81
20024ac0:	0c65d401 	.word	0x0c65d401
20024ac4:	112a8801 	.word	0x112a8801

20024ac8 <HAL_HYPER_CFG_READ>:
20024ac8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024aca:	b160      	cbz	r0, 20024ae6 <HAL_HYPER_CFG_READ+0x1e>
20024acc:	2107      	movs	r1, #7
20024ace:	2303      	movs	r3, #3
20024ad0:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
20024ad4:	e9cd 1300 	strd	r1, r3, [sp]
20024ad8:	3a01      	subs	r2, #1
20024ada:	2300      	movs	r3, #0
20024adc:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024ae0:	b252      	sxtb	r2, r2
20024ae2:	f7fe f8ff 	bl	20022ce4 <HAL_FLASH_CFG_AHB_RCMD>
20024ae6:	b005      	add	sp, #20
20024ae8:	f85d fb04 	ldr.w	pc, [sp], #4

20024aec <HAL_HYPER_CFG_WRITE>:
20024aec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024aee:	b160      	cbz	r0, 20024b0a <HAL_HYPER_CFG_WRITE+0x1e>
20024af0:	2107      	movs	r1, #7
20024af2:	2303      	movs	r3, #3
20024af4:	f890 2026 	ldrb.w	r2, [r0, #38]	@ 0x26
20024af8:	e9cd 1300 	strd	r1, r3, [sp]
20024afc:	3a01      	subs	r2, #1
20024afe:	2300      	movs	r3, #0
20024b00:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024b04:	b252      	sxtb	r2, r2
20024b06:	f7fe f916 	bl	20022d36 <HAL_FLASH_CFG_AHB_WCMD>
20024b0a:	b005      	add	sp, #20
20024b0c:	f85d fb04 	ldr.w	pc, [sp], #4

20024b10 <HAL_PIN_SetUartFunc.part.0>:
20024b10:	108b      	asrs	r3, r1, #2
20024b12:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
20024b16:	b5f0      	push	{r4, r5, r6, r7, lr}
20024b18:	b2d6      	uxtb	r6, r2
20024b1a:	2e04      	cmp	r6, #4
20024b1c:	d849      	bhi.n	20024bb2 <HAL_PIN_SetUartFunc.part.0+0xa2>
20024b1e:	2e02      	cmp	r6, #2
20024b20:	d810      	bhi.n	20024b44 <HAL_PIN_SetUartFunc.part.0+0x34>
20024b22:	4d25      	ldr	r5, [pc, #148]	@ (20024bb8 <HAL_PIN_SetUartFunc.part.0+0xa8>)
20024b24:	240e      	movs	r4, #14
20024b26:	eb05 0582 	add.w	r5, r5, r2, lsl #2
20024b2a:	f240 22b2 	movw	r2, #690	@ 0x2b2
20024b2e:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
20024b32:	b29b      	uxth	r3, r3
20024b34:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
20024b38:	2b03      	cmp	r3, #3
20024b3a:	d83a      	bhi.n	20024bb2 <HAL_PIN_SetUartFunc.part.0+0xa2>
20024b3c:	e8df f003 	tbb	[pc, r3]
20024b40:	20271a09 	.word	0x20271a09
20024b44:	4d1d      	ldr	r5, [pc, #116]	@ (20024bbc <HAL_PIN_SetUartFunc.part.0+0xac>)
20024b46:	009b      	lsls	r3, r3, #2
20024b48:	243d      	movs	r4, #61	@ 0x3d
20024b4a:	f240 3221 	movw	r2, #801	@ 0x321
20024b4e:	441d      	add	r5, r3
20024b50:	e7ed      	b.n	20024b2e <HAL_PIN_SetUartFunc.part.0+0x1e>
20024b52:	2c0e      	cmp	r4, #14
20024b54:	f04f 0608 	mov.w	r6, #8
20024b58:	d120      	bne.n	20024b9c <HAL_PIN_SetUartFunc.part.0+0x8c>
20024b5a:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
20024b5e:	682f      	ldr	r7, [r5, #0]
20024b60:	1b03      	subs	r3, r0, r4
20024b62:	40b3      	lsls	r3, r6
20024b64:	407b      	eors	r3, r7
20024b66:	400b      	ands	r3, r1
20024b68:	4410      	add	r0, r2
20024b6a:	407b      	eors	r3, r7
20024b6c:	1b00      	subs	r0, r0, r4
20024b6e:	602b      	str	r3, [r5, #0]
20024b70:	b280      	uxth	r0, r0
20024b72:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024b74:	2c0e      	cmp	r4, #14
20024b76:	f04f 0600 	mov.w	r6, #0
20024b7a:	d112      	bne.n	20024ba2 <HAL_PIN_SetUartFunc.part.0+0x92>
20024b7c:	213f      	movs	r1, #63	@ 0x3f
20024b7e:	e7ee      	b.n	20024b5e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b80:	2c0e      	cmp	r4, #14
20024b82:	f04f 0610 	mov.w	r6, #16
20024b86:	d10e      	bne.n	20024ba6 <HAL_PIN_SetUartFunc.part.0+0x96>
20024b88:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
20024b8c:	e7e7      	b.n	20024b5e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b8e:	2c0e      	cmp	r4, #14
20024b90:	f04f 0618 	mov.w	r6, #24
20024b94:	d10a      	bne.n	20024bac <HAL_PIN_SetUartFunc.part.0+0x9c>
20024b96:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
20024b9a:	e7e0      	b.n	20024b5e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b9c:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
20024ba0:	e7dd      	b.n	20024b5e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024ba2:	2107      	movs	r1, #7
20024ba4:	e7db      	b.n	20024b5e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024ba6:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
20024baa:	e7d8      	b.n	20024b5e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024bac:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
20024bb0:	e7d5      	b.n	20024b5e <HAL_PIN_SetUartFunc.part.0+0x4e>
20024bb2:	2000      	movs	r0, #0
20024bb4:	e7dd      	b.n	20024b72 <HAL_PIN_SetUartFunc.part.0+0x62>
20024bb6:	bf00      	nop
20024bb8:	5000b058 	.word	0x5000b058
20024bbc:	4000ef0c 	.word	0x4000ef0c

20024bc0 <HAL_PIN_SetAonPE>:
20024bc0:	2a00      	cmp	r2, #0
20024bc2:	d031      	beq.n	20024c28 <HAL_PIN_SetAonPE+0x68>
20024bc4:	282f      	cmp	r0, #47	@ 0x2f
20024bc6:	dd16      	ble.n	20024bf6 <HAL_PIN_SetAonPE+0x36>
20024bc8:	283a      	cmp	r0, #58	@ 0x3a
20024bca:	dc2d      	bgt.n	20024c28 <HAL_PIN_SetAonPE+0x68>
20024bcc:	2301      	movs	r3, #1
20024bce:	4a17      	ldr	r2, [pc, #92]	@ (20024c2c <HAL_PIN_SetAonPE+0x6c>)
20024bd0:	382a      	subs	r0, #42	@ 0x2a
20024bd2:	4083      	lsls	r3, r0
20024bd4:	6f10      	ldr	r0, [r2, #112]	@ 0x70
20024bd6:	f011 0f20 	tst.w	r1, #32
20024bda:	bf14      	ite	ne
20024bdc:	4318      	orrne	r0, r3
20024bde:	4398      	biceq	r0, r3
20024be0:	6710      	str	r0, [r2, #112]	@ 0x70
20024be2:	4a12      	ldr	r2, [pc, #72]	@ (20024c2c <HAL_PIN_SetAonPE+0x6c>)
20024be4:	f011 0f10 	tst.w	r1, #16
20024be8:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
20024bea:	bf14      	ite	ne
20024bec:	430b      	orrne	r3, r1
20024bee:	ea21 0303 	biceq.w	r3, r1, r3
20024bf2:	66d3      	str	r3, [r2, #108]	@ 0x6c
20024bf4:	4770      	bx	lr
20024bf6:	3826      	subs	r0, #38	@ 0x26
20024bf8:	2803      	cmp	r0, #3
20024bfa:	d815      	bhi.n	20024c28 <HAL_PIN_SetAonPE+0x68>
20024bfc:	4b0c      	ldr	r3, [pc, #48]	@ (20024c30 <HAL_PIN_SetAonPE+0x70>)
20024bfe:	f011 0f20 	tst.w	r1, #32
20024c02:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024c06:	bf14      	ite	ne
20024c08:	f042 0210 	orrne.w	r2, r2, #16
20024c0c:	f022 0210 	biceq.w	r2, r2, #16
20024c10:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024c14:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024c18:	06c9      	lsls	r1, r1, #27
20024c1a:	bf4c      	ite	mi
20024c1c:	f042 0208 	orrmi.w	r2, r2, #8
20024c20:	f022 0208 	bicpl.w	r2, r2, #8
20024c24:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024c28:	4770      	bx	lr
20024c2a:	bf00      	nop
20024c2c:	500cb000 	.word	0x500cb000
20024c30:	500cb05c 	.word	0x500cb05c

20024c34 <HAL_PIN_Get_Base>:
20024c34:	b138      	cbz	r0, 20024c46 <HAL_PIN_Get_Base+0x12>
20024c36:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024c3a:	6893      	ldr	r3, [r2, #8]
20024c3c:	4806      	ldr	r0, [pc, #24]	@ (20024c58 <HAL_PIN_Get_Base+0x24>)
20024c3e:	f043 0304 	orr.w	r3, r3, #4
20024c42:	6093      	str	r3, [r2, #8]
20024c44:	4770      	bx	lr
20024c46:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20024c4a:	6853      	ldr	r3, [r2, #4]
20024c4c:	4803      	ldr	r0, [pc, #12]	@ (20024c5c <HAL_PIN_Get_Base+0x28>)
20024c4e:	f043 0308 	orr.w	r3, r3, #8
20024c52:	6053      	str	r3, [r2, #4]
20024c54:	4770      	bx	lr
20024c56:	bf00      	nop
20024c58:	50003000 	.word	0x50003000
20024c5c:	40003000 	.word	0x40003000

20024c60 <HAL_PIN_Func2Idx>:
20024c60:	283b      	cmp	r0, #59	@ 0x3b
20024c62:	bfc8      	it	gt
20024c64:	383c      	subgt	r0, #60	@ 0x3c
20024c66:	0143      	lsls	r3, r0, #5
20024c68:	b152      	cbz	r2, 20024c80 <HAL_PIN_Func2Idx+0x20>
20024c6a:	4a06      	ldr	r2, [pc, #24]	@ (20024c84 <HAL_PIN_Func2Idx+0x24>)
20024c6c:	2000      	movs	r0, #0
20024c6e:	4413      	add	r3, r2
20024c70:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
20024c74:	428a      	cmp	r2, r1
20024c76:	d002      	beq.n	20024c7e <HAL_PIN_Func2Idx+0x1e>
20024c78:	3001      	adds	r0, #1
20024c7a:	2810      	cmp	r0, #16
20024c7c:	d1f8      	bne.n	20024c70 <HAL_PIN_Func2Idx+0x10>
20024c7e:	4770      	bx	lr
20024c80:	4a01      	ldr	r2, [pc, #4]	@ (20024c88 <HAL_PIN_Func2Idx+0x28>)
20024c82:	e7f3      	b.n	20024c6c <HAL_PIN_Func2Idx+0xc>
20024c84:	2002b25c 	.word	0x2002b25c
20024c88:	2002b1bc 	.word	0x2002b1bc

20024c8c <HAL_PIN_Set>:
20024c8c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20024c90:	4615      	mov	r5, r2
20024c92:	4604      	mov	r4, r0
20024c94:	b918      	cbnz	r0, 20024c9e <HAL_PIN_Set+0x12>
20024c96:	f04f 30ff 	mov.w	r0, #4294967295
20024c9a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20024c9e:	283a      	cmp	r0, #58	@ 0x3a
20024ca0:	bfcd      	iteet	gt
20024ca2:	2700      	movgt	r7, #0
20024ca4:	2701      	movle	r7, #1
20024ca6:	4606      	movle	r6, r0
20024ca8:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
20024cac:	4638      	mov	r0, r7
20024cae:	f7ff ffc1 	bl	20024c34 <HAL_PIN_Get_Base>
20024cb2:	4680      	mov	r8, r0
20024cb4:	2f00      	cmp	r7, #0
20024cb6:	f000 80fe 	beq.w	20024eb6 <HAL_PIN_Set+0x22a>
20024cba:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
20024cbe:	b29b      	uxth	r3, r3
20024cc0:	2b0b      	cmp	r3, #11
20024cc2:	d82e      	bhi.n	20024d22 <HAL_PIN_Set+0x96>
20024cc4:	4620      	mov	r0, r4
20024cc6:	f7ff ff23 	bl	20024b10 <HAL_PIN_SetUartFunc.part.0>
20024cca:	4601      	mov	r1, r0
20024ccc:	463a      	mov	r2, r7
20024cce:	4620      	mov	r0, r4
20024cd0:	f7ff ffc6 	bl	20024c60 <HAL_PIN_Func2Idx>
20024cd4:	280f      	cmp	r0, #15
20024cd6:	4681      	mov	r9, r0
20024cd8:	dcdd      	bgt.n	20024c96 <HAL_PIN_Set+0xa>
20024cda:	463a      	mov	r2, r7
20024cdc:	4629      	mov	r1, r5
20024cde:	4620      	mov	r0, r4
20024ce0:	f7ff ff6e 	bl	20024bc0 <HAL_PIN_SetAonPE>
20024ce4:	2f00      	cmp	r7, #0
20024ce6:	f040 80ef 	bne.w	20024ec8 <HAL_PIN_Set+0x23c>
20024cea:	2c40      	cmp	r4, #64	@ 0x40
20024cec:	f340 80ec 	ble.w	20024ec8 <HAL_PIN_Set+0x23c>
20024cf0:	4a7f      	ldr	r2, [pc, #508]	@ (20024ef0 <HAL_PIN_Set+0x264>)
20024cf2:	06e8      	lsls	r0, r5, #27
20024cf4:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
20024cf8:	ea4f 3909 	mov.w	r9, r9, lsl #12
20024cfc:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024d00:	f023 0318 	bic.w	r3, r3, #24
20024d04:	bf48      	it	mi
20024d06:	f043 0308 	orrmi.w	r3, r3, #8
20024d0a:	06a9      	lsls	r1, r5, #26
20024d0c:	bf48      	it	mi
20024d0e:	f043 0310 	orrmi.w	r3, r3, #16
20024d12:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20024d16:	ea49 0303 	orr.w	r3, r9, r3
20024d1a:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20024d1e:	2000      	movs	r0, #0
20024d20:	e7bb      	b.n	20024c9a <HAL_PIN_Set+0xe>
20024d22:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20024d26:	b29b      	uxth	r3, r3
20024d28:	2b07      	cmp	r3, #7
20024d2a:	d826      	bhi.n	20024d7a <HAL_PIN_Set+0xee>
20024d2c:	104a      	asrs	r2, r1, #1
20024d2e:	3a9c      	subs	r2, #156	@ 0x9c
20024d30:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20024d34:	b289      	uxth	r1, r1
20024d36:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20024d3a:	d019      	beq.n	20024d70 <HAL_PIN_Set+0xe4>
20024d3c:	f240 1339 	movw	r3, #313	@ 0x139
20024d40:	4299      	cmp	r1, r3
20024d42:	f040 80bf 	bne.w	20024ec4 <HAL_PIN_Set+0x238>
20024d46:	f04f 0e08 	mov.w	lr, #8
20024d4a:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20024d4e:	4969      	ldr	r1, [pc, #420]	@ (20024ef4 <HAL_PIN_Set+0x268>)
20024d50:	f1a4 030e 	sub.w	r3, r4, #14
20024d54:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024d58:	fa03 f30e 	lsl.w	r3, r3, lr
20024d5c:	4043      	eors	r3, r0
20024d5e:	ea03 030c 	and.w	r3, r3, ip
20024d62:	4043      	eors	r3, r0
20024d64:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024d68:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20024d6c:	b289      	uxth	r1, r1
20024d6e:	e7ad      	b.n	20024ccc <HAL_PIN_Set+0x40>
20024d70:	f04f 0e00 	mov.w	lr, #0
20024d74:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20024d78:	e7e9      	b.n	20024d4e <HAL_PIN_Set+0xc2>
20024d7a:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20024d7e:	b29a      	uxth	r2, r3
20024d80:	2a09      	cmp	r2, #9
20024d82:	d836      	bhi.n	20024df2 <HAL_PIN_Set+0x166>
20024d84:	2205      	movs	r2, #5
20024d86:	fbb3 f3f2 	udiv	r3, r3, r2
20024d8a:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20024d8e:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20024d92:	440a      	add	r2, r1
20024d94:	b292      	uxth	r2, r2
20024d96:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20024d9a:	b288      	uxth	r0, r1
20024d9c:	2803      	cmp	r0, #3
20024d9e:	d814      	bhi.n	20024dca <HAL_PIN_Set+0x13e>
20024da0:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20024da4:	4854      	ldr	r0, [pc, #336]	@ (20024ef8 <HAL_PIN_Set+0x26c>)
20024da6:	00c9      	lsls	r1, r1, #3
20024da8:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20024dac:	f1a4 020e 	sub.w	r2, r4, #14
20024db0:	408a      	lsls	r2, r1
20024db2:	ea82 020c 	eor.w	r2, r2, ip
20024db6:	fa0e f101 	lsl.w	r1, lr, r1
20024dba:	400a      	ands	r2, r1
20024dbc:	ea82 020c 	eor.w	r2, r2, ip
20024dc0:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20024dc4:	f204 2155 	addw	r1, r4, #597	@ 0x255
20024dc8:	e7d0      	b.n	20024d6c <HAL_PIN_Set+0xe0>
20024dca:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20024dce:	d179      	bne.n	20024ec4 <HAL_PIN_Set+0x238>
20024dd0:	213f      	movs	r1, #63	@ 0x3f
20024dd2:	484a      	ldr	r0, [pc, #296]	@ (20024efc <HAL_PIN_Set+0x270>)
20024dd4:	00da      	lsls	r2, r3, #3
20024dd6:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20024dda:	f1a4 030e 	sub.w	r3, r4, #14
20024dde:	4093      	lsls	r3, r2
20024de0:	ea83 030c 	eor.w	r3, r3, ip
20024de4:	fa01 f202 	lsl.w	r2, r1, r2
20024de8:	4013      	ands	r3, r2
20024dea:	ea83 030c 	eor.w	r3, r3, ip
20024dee:	66c3      	str	r3, [r0, #108]	@ 0x6c
20024df0:	e7e8      	b.n	20024dc4 <HAL_PIN_Set+0x138>
20024df2:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20024df6:	eb01 0209 	add.w	r2, r1, r9
20024dfa:	b293      	uxth	r3, r2
20024dfc:	2b05      	cmp	r3, #5
20024dfe:	d827      	bhi.n	20024e50 <HAL_PIN_Set+0x1c4>
20024e00:	2303      	movs	r3, #3
20024e02:	fbb2 f2f3 	udiv	r2, r2, r3
20024e06:	f46f 7e01 	mvn.w	lr, #516	@ 0x204
20024e0a:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20024e0e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20024e12:	440b      	add	r3, r1
20024e14:	b29b      	uxth	r3, r3
20024e16:	eb03 0c0e 	add.w	ip, r3, lr
20024e1a:	fa1f fc8c 	uxth.w	ip, ip
20024e1e:	f1bc 0f02 	cmp.w	ip, #2
20024e22:	d84f      	bhi.n	20024ec4 <HAL_PIN_Set+0x238>
20024e24:	00db      	lsls	r3, r3, #3
20024e26:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20024e2a:	4935      	ldr	r1, [pc, #212]	@ (20024f00 <HAL_PIN_Set+0x274>)
20024e2c:	f1a4 0e0e 	sub.w	lr, r4, #14
20024e30:	3b08      	subs	r3, #8
20024e32:	fa0e f303 	lsl.w	r3, lr, r3
20024e36:	f8df e0d8 	ldr.w	lr, [pc, #216]	@ 20024f10 <HAL_PIN_Set+0x284>
20024e3a:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024e3e:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20024e42:	4043      	eors	r3, r0
20024e44:	ea03 030c 	and.w	r3, r3, ip
20024e48:	4043      	eors	r3, r0
20024e4a:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024e4e:	e7b9      	b.n	20024dc4 <HAL_PIN_Set+0x138>
20024e50:	f46f 7cf8 	mvn.w	ip, #496	@ 0x1f0
20024e54:	eb01 030c 	add.w	r3, r1, ip
20024e58:	b29a      	uxth	r2, r3
20024e5a:	2a09      	cmp	r2, #9
20024e5c:	f63f af36 	bhi.w	20024ccc <HAL_PIN_Set+0x40>
20024e60:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20024e64:	d216      	bcs.n	20024e94 <HAL_PIN_Set+0x208>
20024e66:	0859      	lsrs	r1, r3, #1
20024e68:	f013 0f01 	tst.w	r3, #1
20024e6c:	4b25      	ldr	r3, [pc, #148]	@ (20024f04 <HAL_PIN_Set+0x278>)
20024e6e:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20024e72:	4a25      	ldr	r2, [pc, #148]	@ (20024f08 <HAL_PIN_Set+0x27c>)
20024e74:	bf18      	it	ne
20024e76:	461a      	movne	r2, r3
20024e78:	00c9      	lsls	r1, r1, #3
20024e7a:	4088      	lsls	r0, r1
20024e7c:	f8d2 c000 	ldr.w	ip, [r2]
20024e80:	f1a4 030e 	sub.w	r3, r4, #14
20024e84:	408b      	lsls	r3, r1
20024e86:	ea83 030c 	eor.w	r3, r3, ip
20024e8a:	4003      	ands	r3, r0
20024e8c:	ea83 030c 	eor.w	r3, r3, ip
20024e90:	6013      	str	r3, [r2, #0]
20024e92:	e797      	b.n	20024dc4 <HAL_PIN_Set+0x138>
20024e94:	d007      	beq.n	20024ea6 <HAL_PIN_Set+0x21a>
20024e96:	f240 13f9 	movw	r3, #505	@ 0x1f9
20024e9a:	4299      	cmp	r1, r3
20024e9c:	d107      	bne.n	20024eae <HAL_PIN_Set+0x222>
20024e9e:	2100      	movs	r1, #0
20024ea0:	203f      	movs	r0, #63	@ 0x3f
20024ea2:	4a1a      	ldr	r2, [pc, #104]	@ (20024f0c <HAL_PIN_Set+0x280>)
20024ea4:	e7ea      	b.n	20024e7c <HAL_PIN_Set+0x1f0>
20024ea6:	2110      	movs	r1, #16
20024ea8:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20024eac:	e7f9      	b.n	20024ea2 <HAL_PIN_Set+0x216>
20024eae:	2108      	movs	r1, #8
20024eb0:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20024eb4:	e7f5      	b.n	20024ea2 <HAL_PIN_Set+0x216>
20024eb6:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20024eba:	b29b      	uxth	r3, r3
20024ebc:	2b07      	cmp	r3, #7
20024ebe:	f63f af05 	bhi.w	20024ccc <HAL_PIN_Set+0x40>
20024ec2:	e6ff      	b.n	20024cc4 <HAL_PIN_Set+0x38>
20024ec4:	2100      	movs	r1, #0
20024ec6:	e701      	b.n	20024ccc <HAL_PIN_Set+0x40>
20024ec8:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20024ecc:	3e01      	subs	r6, #1
20024ece:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
20024ed2:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20024ed6:	f009 090f 	and.w	r9, r9, #15
20024eda:	ea45 0509 	orr.w	r5, r5, r9
20024ede:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
20024ee2:	431d      	orrs	r5, r3
20024ee4:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20024ee8:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20024eec:	e717      	b.n	20024d1e <HAL_PIN_Set+0x92>
20024eee:	bf00      	nop
20024ef0:	500caf58 	.word	0x500caf58
20024ef4:	5000b048 	.word	0x5000b048
20024ef8:	5000b064 	.word	0x5000b064
20024efc:	5000b000 	.word	0x5000b000
20024f00:	5000b070 	.word	0x5000b070
20024f04:	5000b07c 	.word	0x5000b07c
20024f08:	5000b078 	.word	0x5000b078
20024f0c:	5000b080 	.word	0x5000b080
20024f10:	2002b9d0 	.word	0x2002b9d0

20024f14 <HAL_PIN_Set_Analog>:
20024f14:	283a      	cmp	r0, #58	@ 0x3a
20024f16:	b538      	push	{r3, r4, r5, lr}
20024f18:	4604      	mov	r4, r0
20024f1a:	dd25      	ble.n	20024f68 <HAL_PIN_Set_Analog+0x54>
20024f1c:	2840      	cmp	r0, #64	@ 0x40
20024f1e:	dc16      	bgt.n	20024f4e <HAL_PIN_Set_Analog+0x3a>
20024f20:	2500      	movs	r5, #0
20024f22:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20024f26:	4628      	mov	r0, r5
20024f28:	f7ff fe84 	bl	20024c34 <HAL_PIN_Get_Base>
20024f2c:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
20024f30:	3b01      	subs	r3, #1
20024f32:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20024f36:	462a      	mov	r2, r5
20024f38:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20024f3c:	f041 010f 	orr.w	r1, r1, #15
20024f40:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
20024f44:	2100      	movs	r1, #0
20024f46:	4620      	mov	r0, r4
20024f48:	f7ff fe3a 	bl	20024bc0 <HAL_PIN_SetAonPE>
20024f4c:	e00a      	b.n	20024f64 <HAL_PIN_Set_Analog+0x50>
20024f4e:	4a08      	ldr	r2, [pc, #32]	@ (20024f70 <HAL_PIN_Set_Analog+0x5c>)
20024f50:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
20024f54:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024f58:	f023 030e 	bic.w	r3, r3, #14
20024f5c:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024f60:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
20024f64:	2000      	movs	r0, #0
20024f66:	bd38      	pop	{r3, r4, r5, pc}
20024f68:	4601      	mov	r1, r0
20024f6a:	2501      	movs	r5, #1
20024f6c:	e7db      	b.n	20024f26 <HAL_PIN_Set_Analog+0x12>
20024f6e:	bf00      	nop
20024f70:	500caf58 	.word	0x500caf58

20024f74 <HAL_PMU_EnableDLL>:
20024f74:	4b05      	ldr	r3, [pc, #20]	@ (20024f8c <HAL_PMU_EnableDLL+0x18>)
20024f76:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
20024f78:	b120      	cbz	r0, 20024f84 <HAL_PMU_EnableDLL+0x10>
20024f7a:	f042 0220 	orr.w	r2, r2, #32
20024f7e:	2000      	movs	r0, #0
20024f80:	669a      	str	r2, [r3, #104]	@ 0x68
20024f82:	4770      	bx	lr
20024f84:	f022 0220 	bic.w	r2, r2, #32
20024f88:	e7f9      	b.n	20024f7e <HAL_PMU_EnableDLL+0xa>
20024f8a:	bf00      	nop
20024f8c:	500ca000 	.word	0x500ca000

20024f90 <HAL_RCC_HCPU_ConfigSxModeVolt>:
20024f90:	b507      	push	{r0, r1, r2, lr}
20024f92:	4a13      	ldr	r2, [pc, #76]	@ (20024fe0 <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20024f94:	4913      	ldr	r1, [pc, #76]	@ (20024fe4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024f96:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20024f9a:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20024f9e:	7892      	ldrb	r2, [r2, #2]
20024fa0:	2802      	cmp	r0, #2
20024fa2:	f362 0303 	bfi	r3, r2, #0, #4
20024fa6:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20024faa:	f10d 0007 	add.w	r0, sp, #7
20024fae:	d111      	bne.n	20024fd4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20024fb0:	f007 faae 	bl	2002c510 <HAL_PMU_GetHpsysVoutRef>
20024fb4:	b110      	cbz	r0, 20024fbc <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024fb6:	230b      	movs	r3, #11
20024fb8:	f88d 3007 	strb.w	r3, [sp, #7]
20024fbc:	4a09      	ldr	r2, [pc, #36]	@ (20024fe4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024fbe:	f89d 1007 	ldrb.w	r1, [sp, #7]
20024fc2:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024fc6:	f361 0303 	bfi	r3, r1, #0, #4
20024fca:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20024fce:	b003      	add	sp, #12
20024fd0:	f85d fb04 	ldr.w	pc, [sp], #4
20024fd4:	f007 faa8 	bl	2002c528 <HAL_PMU_GetHpsysVoutRef2>
20024fd8:	2800      	cmp	r0, #0
20024fda:	d0ef      	beq.n	20024fbc <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024fdc:	230d      	movs	r3, #13
20024fde:	e7eb      	b.n	20024fb8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20024fe0:	2002b9ec 	.word	0x2002b9ec
20024fe4:	500ca000 	.word	0x500ca000

20024fe8 <HAL_RCC_HCPU_GetClockSrc>:
20024fe8:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024fec:	280d      	cmp	r0, #13
20024fee:	6a1a      	ldr	r2, [r3, #32]
20024ff0:	d80d      	bhi.n	2002500e <HAL_RCC_HCPU_GetClockSrc+0x26>
20024ff2:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
20024ff6:	40c3      	lsrs	r3, r0
20024ff8:	f013 0f01 	tst.w	r3, #1
20024ffc:	bf0c      	ite	eq
20024ffe:	2301      	moveq	r3, #1
20025000:	2303      	movne	r3, #3
20025002:	4083      	lsls	r3, r0
20025004:	4013      	ands	r3, r2
20025006:	fa23 f000 	lsr.w	r0, r3, r0
2002500a:	b2c0      	uxtb	r0, r0
2002500c:	4770      	bx	lr
2002500e:	2301      	movs	r3, #1
20025010:	e7f7      	b.n	20025002 <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

20025014 <HAL_RCC_HCPU_GetDLLFreq>:
20025014:	2801      	cmp	r0, #1
20025016:	d003      	beq.n	20025020 <HAL_RCC_HCPU_GetDLLFreq+0xc>
20025018:	2802      	cmp	r0, #2
2002501a:	d00e      	beq.n	2002503a <HAL_RCC_HCPU_GetDLLFreq+0x26>
2002501c:	2000      	movs	r0, #0
2002501e:	4770      	bx	lr
20025020:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20025024:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
20025026:	b163      	cbz	r3, 20025042 <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20025028:	f013 0001 	ands.w	r0, r3, #1
2002502c:	d00a      	beq.n	20025044 <HAL_RCC_HCPU_GetDLLFreq+0x30>
2002502e:	4806      	ldr	r0, [pc, #24]	@ (20025048 <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20025030:	f3c3 0383 	ubfx	r3, r3, #2, #4
20025034:	fb03 0000 	mla	r0, r3, r0, r0
20025038:	4770      	bx	lr
2002503a:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
2002503e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20025040:	e7f1      	b.n	20025026 <HAL_RCC_HCPU_GetDLLFreq+0x12>
20025042:	4618      	mov	r0, r3
20025044:	4770      	bx	lr
20025046:	bf00      	nop
20025048:	016e3600 	.word	0x016e3600

2002504c <HAL_RCC_HCPU_GetDLL1Freq>:
2002504c:	2001      	movs	r0, #1
2002504e:	f7ff bfe1 	b.w	20025014 <HAL_RCC_HCPU_GetDLLFreq>

20025052 <HAL_RCC_HCPU_GetDLL2Freq>:
20025052:	2002      	movs	r0, #2
20025054:	f7ff bfde 	b.w	20025014 <HAL_RCC_HCPU_GetDLLFreq>

20025058 <HAL_RCC_HCPU_GetDLL3Freq>:
20025058:	2000      	movs	r0, #0
2002505a:	4770      	bx	lr

2002505c <HAL_RCC_HCPU_EnableDLL>:
2002505c:	4b23      	ldr	r3, [pc, #140]	@ (200250ec <HAL_RCC_HCPU_EnableDLL+0x90>)
2002505e:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
20025062:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
20025066:	4299      	cmp	r1, r3
20025068:	b510      	push	{r4, lr}
2002506a:	d83c      	bhi.n	200250e6 <HAL_RCC_HCPU_EnableDLL+0x8a>
2002506c:	2801      	cmp	r0, #1
2002506e:	d002      	beq.n	20025076 <HAL_RCC_HCPU_EnableDLL+0x1a>
20025070:	2802      	cmp	r0, #2
20025072:	d036      	beq.n	200250e2 <HAL_RCC_HCPU_EnableDLL+0x86>
20025074:	e7fe      	b.n	20025074 <HAL_RCC_HCPU_EnableDLL+0x18>
20025076:	4c1e      	ldr	r4, [pc, #120]	@ (200250f0 <HAL_RCC_HCPU_EnableDLL+0x94>)
20025078:	4b1e      	ldr	r3, [pc, #120]	@ (200250f4 <HAL_RCC_HCPU_EnableDLL+0x98>)
2002507a:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
2002507e:	0790      	lsls	r0, r2, #30
20025080:	bf58      	it	pl
20025082:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20025086:	f04f 0000 	mov.w	r0, #0
2002508a:	bf5c      	itt	pl
2002508c:	f042 0202 	orrpl.w	r2, r2, #2
20025090:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20025094:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20025098:	07d2      	lsls	r2, r2, #31
2002509a:	bf5e      	ittt	pl
2002509c:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
200250a0:	f042 0201 	orrpl.w	r2, r2, #1
200250a4:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
200250a8:	4a13      	ldr	r2, [pc, #76]	@ (200250f8 <HAL_RCC_HCPU_EnableDLL+0x9c>)
200250aa:	6823      	ldr	r3, [r4, #0]
200250ac:	fbb1 f1f2 	udiv	r1, r1, r2
200250b0:	f023 0301 	bic.w	r3, r3, #1
200250b4:	6023      	str	r3, [r4, #0]
200250b6:	6823      	ldr	r3, [r4, #0]
200250b8:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
200250bc:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
200250c0:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
200250c4:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
200250c8:	f043 0301 	orr.w	r3, r3, #1
200250cc:	6023      	str	r3, [r4, #0]
200250ce:	f7fc ffa6 	bl	2002201e <HAL_Delay_us>
200250d2:	200a      	movs	r0, #10
200250d4:	f7fc ffa3 	bl	2002201e <HAL_Delay_us>
200250d8:	6823      	ldr	r3, [r4, #0]
200250da:	2b00      	cmp	r3, #0
200250dc:	dafc      	bge.n	200250d8 <HAL_RCC_HCPU_EnableDLL+0x7c>
200250de:	2000      	movs	r0, #0
200250e0:	bd10      	pop	{r4, pc}
200250e2:	4c06      	ldr	r4, [pc, #24]	@ (200250fc <HAL_RCC_HCPU_EnableDLL+0xa0>)
200250e4:	e7c8      	b.n	20025078 <HAL_RCC_HCPU_EnableDLL+0x1c>
200250e6:	2001      	movs	r0, #1
200250e8:	e7fa      	b.n	200250e0 <HAL_RCC_HCPU_EnableDLL+0x84>
200250ea:	bf00      	nop
200250ec:	15752a00 	.word	0x15752a00
200250f0:	5000002c 	.word	0x5000002c
200250f4:	5000b000 	.word	0x5000b000
200250f8:	016e3600 	.word	0x016e3600
200250fc:	50000030 	.word	0x50000030

20025100 <HAL_RCC_HCPU_EnableDLL1>:
20025100:	4601      	mov	r1, r0
20025102:	2001      	movs	r0, #1
20025104:	f7ff bfaa 	b.w	2002505c <HAL_RCC_HCPU_EnableDLL>

20025108 <HAL_RCC_HCPU_EnableDLL2>:
20025108:	4601      	mov	r1, r0
2002510a:	2002      	movs	r0, #2
2002510c:	f7ff bfa6 	b.w	2002505c <HAL_RCC_HCPU_EnableDLL>

20025110 <HAL_RCC_HCPU_DisableDLL1>:
20025110:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20025114:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20025116:	2000      	movs	r0, #0
20025118:	f023 0301 	bic.w	r3, r3, #1
2002511c:	62d3      	str	r3, [r2, #44]	@ 0x2c
2002511e:	4770      	bx	lr

20025120 <HAL_RCC_GetSysCLKFreq>:
20025120:	2801      	cmp	r0, #1
20025122:	d108      	bne.n	20025136 <HAL_RCC_GetSysCLKFreq+0x16>
20025124:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20025128:	6a1b      	ldr	r3, [r3, #32]
2002512a:	f003 0303 	and.w	r3, r3, #3
2002512e:	2b03      	cmp	r3, #3
20025130:	d101      	bne.n	20025136 <HAL_RCC_GetSysCLKFreq+0x16>
20025132:	f7ff bf8b 	b.w	2002504c <HAL_RCC_HCPU_GetDLL1Freq>
20025136:	4801      	ldr	r0, [pc, #4]	@ (2002513c <HAL_RCC_GetSysCLKFreq+0x1c>)
20025138:	4770      	bx	lr
2002513a:	bf00      	nop
2002513c:	02dc6c00 	.word	0x02dc6c00

20025140 <HAL_RCC_GetHCLKFreq>:
20025140:	1e02      	subs	r2, r0, #0
20025142:	bf08      	it	eq
20025144:	2201      	moveq	r2, #1
20025146:	b508      	push	{r3, lr}
20025148:	4610      	mov	r0, r2
2002514a:	f7ff ffe9 	bl	20025120 <HAL_RCC_GetSysCLKFreq>
2002514e:	2a01      	cmp	r2, #1
20025150:	d002      	beq.n	20025158 <HAL_RCC_GetHCLKFreq+0x18>
20025152:	2a02      	cmp	r2, #2
20025154:	d00a      	beq.n	2002516c <HAL_RCC_GetHCLKFreq+0x2c>
20025156:	e7fe      	b.n	20025156 <HAL_RCC_GetHCLKFreq+0x16>
20025158:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
2002515c:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
2002515e:	b2db      	uxtb	r3, r3
20025160:	2b01      	cmp	r3, #1
20025162:	bfb8      	it	lt
20025164:	2301      	movlt	r3, #1
20025166:	fbb0 f0f3 	udiv	r0, r0, r3
2002516a:	bd08      	pop	{r3, pc}
2002516c:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20025170:	695b      	ldr	r3, [r3, #20]
20025172:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
20025176:	e7f3      	b.n	20025160 <HAL_RCC_GetHCLKFreq+0x20>

20025178 <HAL_RCC_HCPU_ClockSelect>:
20025178:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
2002517c:	b510      	push	{r4, lr}
2002517e:	280d      	cmp	r0, #13
20025180:	6a1b      	ldr	r3, [r3, #32]
20025182:	d818      	bhi.n	200251b6 <HAL_RCC_HCPU_ClockSelect+0x3e>
20025184:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
20025188:	40c2      	lsrs	r2, r0
2002518a:	f012 0f01 	tst.w	r2, #1
2002518e:	bf0c      	ite	eq
20025190:	2201      	moveq	r2, #1
20025192:	2203      	movne	r2, #3
20025194:	fa02 f400 	lsl.w	r4, r2, r0
20025198:	4011      	ands	r1, r2
2002519a:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
2002519e:	ea23 0304 	bic.w	r3, r3, r4
200251a2:	4081      	lsls	r1, r0
200251a4:	430b      	orrs	r3, r1
200251a6:	6213      	str	r3, [r2, #32]
200251a8:	b920      	cbnz	r0, 200251b4 <HAL_RCC_HCPU_ClockSelect+0x3c>
200251aa:	2001      	movs	r0, #1
200251ac:	f7ff ffc8 	bl	20025140 <HAL_RCC_GetHCLKFreq>
200251b0:	4b02      	ldr	r3, [pc, #8]	@ (200251bc <HAL_RCC_HCPU_ClockSelect+0x44>)
200251b2:	6018      	str	r0, [r3, #0]
200251b4:	bd10      	pop	{r4, pc}
200251b6:	2201      	movs	r2, #1
200251b8:	e7ec      	b.n	20025194 <HAL_RCC_HCPU_ClockSelect+0x1c>
200251ba:	bf00      	nop
200251bc:	20042c10 	.word	0x20042c10

200251c0 <HAL_RCC_HCPU_SetDiv>:
200251c0:	2800      	cmp	r0, #0
200251c2:	bfd8      	it	le
200251c4:	2000      	movle	r0, #0
200251c6:	b508      	push	{r3, lr}
200251c8:	bfcc      	ite	gt
200251ca:	23ff      	movgt	r3, #255	@ 0xff
200251cc:	4603      	movle	r3, r0
200251ce:	2900      	cmp	r1, #0
200251d0:	db12      	blt.n	200251f8 <HAL_RCC_HCPU_SetDiv+0x38>
200251d2:	2a00      	cmp	r2, #0
200251d4:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
200251d8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
200251dc:	da0e      	bge.n	200251fc <HAL_RCC_HCPU_SetDiv+0x3c>
200251de:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
200251e2:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
200251e4:	ea22 0303 	bic.w	r3, r2, r3
200251e8:	4303      	orrs	r3, r0
200251ea:	624b      	str	r3, [r1, #36]	@ 0x24
200251ec:	2001      	movs	r0, #1
200251ee:	f7ff ffa7 	bl	20025140 <HAL_RCC_GetHCLKFreq>
200251f2:	4b07      	ldr	r3, [pc, #28]	@ (20025210 <HAL_RCC_HCPU_SetDiv+0x50>)
200251f4:	6018      	str	r0, [r3, #0]
200251f6:	bd08      	pop	{r3, pc}
200251f8:	2a00      	cmp	r2, #0
200251fa:	db04      	blt.n	20025206 <HAL_RCC_HCPU_SetDiv+0x46>
200251fc:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20025200:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
20025204:	e7eb      	b.n	200251de <HAL_RCC_HCPU_SetDiv+0x1e>
20025206:	2b00      	cmp	r3, #0
20025208:	d0f0      	beq.n	200251ec <HAL_RCC_HCPU_SetDiv+0x2c>
2002520a:	23ff      	movs	r3, #255	@ 0xff
2002520c:	e7e7      	b.n	200251de <HAL_RCC_HCPU_SetDiv+0x1e>
2002520e:	bf00      	nop
20025210:	20042c10 	.word	0x20042c10

20025214 <HAL_RCC_HCPU_SwitchDvfsD2S>:
20025214:	b570      	push	{r4, r5, r6, lr}
20025216:	460c      	mov	r4, r1
20025218:	4d19      	ldr	r5, [pc, #100]	@ (20025280 <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
2002521a:	4606      	mov	r6, r0
2002521c:	f7ff feb8 	bl	20024f90 <HAL_RCC_HCPU_ConfigSxModeVolt>
20025220:	692b      	ldr	r3, [r5, #16]
20025222:	20fa      	movs	r0, #250	@ 0xfa
20025224:	f023 0304 	bic.w	r3, r3, #4
20025228:	612b      	str	r3, [r5, #16]
2002522a:	f7fc fef8 	bl	2002201e <HAL_Delay_us>
2002522e:	2c30      	cmp	r4, #48	@ 0x30
20025230:	d80d      	bhi.n	2002524e <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
20025232:	2100      	movs	r1, #0
20025234:	4608      	mov	r0, r1
20025236:	f7ff ff9f 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
2002523a:	2030      	movs	r0, #48	@ 0x30
2002523c:	2204      	movs	r2, #4
2002523e:	2100      	movs	r1, #0
20025240:	fbb0 f0f4 	udiv	r0, r0, r4
20025244:	f7ff ffbc 	bl	200251c0 <HAL_RCC_HCPU_SetDiv>
20025248:	2400      	movs	r4, #0
2002524a:	4620      	mov	r0, r4
2002524c:	bd70      	pop	{r4, r5, r6, pc}
2002524e:	f7fd fd09 	bl	20022c64 <HAL_HPAON_EnableXT48>
20025252:	480c      	ldr	r0, [pc, #48]	@ (20025284 <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
20025254:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
20025258:	6843      	ldr	r3, [r0, #4]
2002525a:	480b      	ldr	r0, [pc, #44]	@ (20025288 <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
2002525c:	61eb      	str	r3, [r5, #28]
2002525e:	4360      	muls	r0, r4
20025260:	f7ff ff4e 	bl	20025100 <HAL_RCC_HCPU_EnableDLL1>
20025264:	4604      	mov	r4, r0
20025266:	2800      	cmp	r0, #0
20025268:	d1ef      	bne.n	2002524a <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
2002526a:	2101      	movs	r1, #1
2002526c:	2206      	movs	r2, #6
2002526e:	4608      	mov	r0, r1
20025270:	f7ff ffa6 	bl	200251c0 <HAL_RCC_HCPU_SetDiv>
20025274:	2103      	movs	r1, #3
20025276:	4620      	mov	r0, r4
20025278:	f7ff ff7e 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
2002527c:	e7e4      	b.n	20025248 <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
2002527e:	bf00      	nop
20025280:	5000b000 	.word	0x5000b000
20025284:	2002b9ec 	.word	0x2002b9ec
20025288:	000f4240 	.word	0x000f4240

2002528c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
2002528c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20025290:	4c1d      	ldr	r4, [pc, #116]	@ (20025308 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
20025292:	4f1e      	ldr	r7, [pc, #120]	@ (2002530c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
20025294:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
20025298:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
2002529a:	7892      	ldrb	r2, [r2, #2]
2002529c:	4605      	mov	r5, r0
2002529e:	f362 5317 	bfi	r3, r2, #20, #4
200252a2:	ea4f 08c0 	mov.w	r8, r0, lsl #3
200252a6:	633b      	str	r3, [r7, #48]	@ 0x30
200252a8:	f10d 0007 	add.w	r0, sp, #7
200252ac:	460e      	mov	r6, r1
200252ae:	f007 f92f 	bl	2002c510 <HAL_PMU_GetHpsysVoutRef>
200252b2:	b110      	cbz	r0, 200252ba <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
200252b4:	230b      	movs	r3, #11
200252b6:	f88d 3007 	strb.w	r3, [sp, #7]
200252ba:	f89d 1007 	ldrb.w	r1, [sp, #7]
200252be:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
200252c2:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
200252c4:	440a      	add	r2, r1
200252c6:	2100      	movs	r1, #0
200252c8:	f362 0385 	bfi	r3, r2, #2, #4
200252cc:	4608      	mov	r0, r1
200252ce:	64fb      	str	r3, [r7, #76]	@ 0x4c
200252d0:	f7ff ff52 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
200252d4:	2e30      	cmp	r6, #48	@ 0x30
200252d6:	d900      	bls.n	200252da <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
200252d8:	e7fe      	b.n	200252d8 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
200252da:	2030      	movs	r0, #48	@ 0x30
200252dc:	2204      	movs	r2, #4
200252de:	2100      	movs	r1, #0
200252e0:	fbb0 f0f6 	udiv	r0, r0, r6
200252e4:	f7ff ff6c 	bl	200251c0 <HAL_RCC_HCPU_SetDiv>
200252e8:	f7ff ff12 	bl	20025110 <HAL_RCC_HCPU_DisableDLL1>
200252ec:	f7fd fcc6 	bl	20022c7c <HAL_HPAON_DisableXT48>
200252f0:	4444      	add	r4, r8
200252f2:	4b07      	ldr	r3, [pc, #28]	@ (20025310 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
200252f4:	6862      	ldr	r2, [r4, #4]
200252f6:	61da      	str	r2, [r3, #28]
200252f8:	691a      	ldr	r2, [r3, #16]
200252fa:	f042 0204 	orr.w	r2, r2, #4
200252fe:	611a      	str	r2, [r3, #16]
20025300:	b002      	add	sp, #8
20025302:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20025306:	bf00      	nop
20025308:	2002b9ec 	.word	0x2002b9ec
2002530c:	500ca000 	.word	0x500ca000
20025310:	5000b000 	.word	0x5000b000

20025314 <HAL_RCC_HCPU_ConfigDvfs>:
20025314:	b570      	push	{r4, r5, r6, lr}
20025316:	4e31      	ldr	r6, [pc, #196]	@ (200253dc <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
20025318:	4605      	mov	r5, r0
2002531a:	7833      	ldrb	r3, [r6, #0]
2002531c:	460c      	mov	r4, r1
2002531e:	2b01      	cmp	r3, #1
20025320:	d943      	bls.n	200253aa <HAL_RCC_HCPU_ConfigDvfs+0x96>
20025322:	3b02      	subs	r3, #2
20025324:	2b01      	cmp	r3, #1
20025326:	d902      	bls.n	2002532e <HAL_RCC_HCPU_ConfigDvfs+0x1a>
20025328:	2501      	movs	r5, #1
2002532a:	4628      	mov	r0, r5
2002532c:	bd70      	pop	{r4, r5, r6, pc}
2002532e:	4b2c      	ldr	r3, [pc, #176]	@ (200253e0 <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
20025330:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
20025334:	f7ff fe8d 	bl	20025052 <HAL_RCC_HCPU_GetDLL2Freq>
20025338:	4290      	cmp	r0, r2
2002533a:	d8f5      	bhi.n	20025328 <HAL_RCC_HCPU_ConfigDvfs+0x14>
2002533c:	2901      	cmp	r1, #1
2002533e:	d805      	bhi.n	2002534c <HAL_RCC_HCPU_ConfigDvfs+0x38>
20025340:	4629      	mov	r1, r5
20025342:	4620      	mov	r0, r4
20025344:	f7ff ffa2 	bl	2002528c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
20025348:	2500      	movs	r5, #0
2002534a:	e035      	b.n	200253b8 <HAL_RCC_HCPU_ConfigDvfs+0xa4>
2002534c:	2100      	movs	r1, #0
2002534e:	4608      	mov	r0, r1
20025350:	f7ff ff12 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
20025354:	4620      	mov	r0, r4
20025356:	f7ff fe1b 	bl	20024f90 <HAL_RCC_HCPU_ConfigSxModeVolt>
2002535a:	20fa      	movs	r0, #250	@ 0xfa
2002535c:	f7fc fe5f 	bl	2002201e <HAL_Delay_us>
20025360:	f7ff fed6 	bl	20025110 <HAL_RCC_HCPU_DisableDLL1>
20025364:	2d30      	cmp	r5, #48	@ 0x30
20025366:	d80d      	bhi.n	20025384 <HAL_RCC_HCPU_ConfigDvfs+0x70>
20025368:	f7fd fc88 	bl	20022c7c <HAL_HPAON_DisableXT48>
2002536c:	2100      	movs	r1, #0
2002536e:	4608      	mov	r0, r1
20025370:	f7ff ff02 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
20025374:	2204      	movs	r2, #4
20025376:	2100      	movs	r1, #0
20025378:	2030      	movs	r0, #48	@ 0x30
2002537a:	fbb0 f0f5 	udiv	r0, r0, r5
2002537e:	f7ff ff1f 	bl	200251c0 <HAL_RCC_HCPU_SetDiv>
20025382:	e7e1      	b.n	20025348 <HAL_RCC_HCPU_ConfigDvfs+0x34>
20025384:	f7fd fc6e 	bl	20022c64 <HAL_HPAON_EnableXT48>
20025388:	4816      	ldr	r0, [pc, #88]	@ (200253e4 <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
2002538a:	4368      	muls	r0, r5
2002538c:	f7ff feb8 	bl	20025100 <HAL_RCC_HCPU_EnableDLL1>
20025390:	4605      	mov	r5, r0
20025392:	2800      	cmp	r0, #0
20025394:	d1c8      	bne.n	20025328 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025396:	2101      	movs	r1, #1
20025398:	2206      	movs	r2, #6
2002539a:	4608      	mov	r0, r1
2002539c:	f7ff ff10 	bl	200251c0 <HAL_RCC_HCPU_SetDiv>
200253a0:	2103      	movs	r1, #3
200253a2:	4628      	mov	r0, r5
200253a4:	f7ff fee8 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
200253a8:	e7ce      	b.n	20025348 <HAL_RCC_HCPU_ConfigDvfs+0x34>
200253aa:	2901      	cmp	r1, #1
200253ac:	d909      	bls.n	200253c2 <HAL_RCC_HCPU_ConfigDvfs+0xae>
200253ae:	4601      	mov	r1, r0
200253b0:	4620      	mov	r0, r4
200253b2:	f7ff ff2f 	bl	20025214 <HAL_RCC_HCPU_SwitchDvfsD2S>
200253b6:	4605      	mov	r5, r0
200253b8:	2000      	movs	r0, #0
200253ba:	7034      	strb	r4, [r6, #0]
200253bc:	f7fc fe2f 	bl	2002201e <HAL_Delay_us>
200253c0:	e7b3      	b.n	2002532a <HAL_RCC_HCPU_ConfigDvfs+0x16>
200253c2:	428b      	cmp	r3, r1
200253c4:	d103      	bne.n	200253ce <HAL_RCC_HCPU_ConfigDvfs+0xba>
200253c6:	f04f 32ff 	mov.w	r2, #4294967295
200253ca:	4611      	mov	r1, r2
200253cc:	e7d4      	b.n	20025378 <HAL_RCC_HCPU_ConfigDvfs+0x64>
200253ce:	2190      	movs	r1, #144	@ 0x90
200253d0:	2002      	movs	r0, #2
200253d2:	f7ff ff1f 	bl	20025214 <HAL_RCC_HCPU_SwitchDvfsD2S>
200253d6:	2800      	cmp	r0, #0
200253d8:	d1a6      	bne.n	20025328 <HAL_RCC_HCPU_ConfigDvfs+0x14>
200253da:	e7b1      	b.n	20025340 <HAL_RCC_HCPU_ConfigDvfs+0x2c>
200253dc:	20042c14 	.word	0x20042c14
200253e0:	2002b9dc 	.word	0x2002b9dc
200253e4:	000f4240 	.word	0x000f4240

200253e8 <HAL_RCC_Reset_and_Halt_LCPU>:
200253e8:	4a13      	ldr	r2, [pc, #76]	@ (20025438 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
200253ea:	6813      	ldr	r3, [r2, #0]
200253ec:	0759      	lsls	r1, r3, #29
200253ee:	d421      	bmi.n	20025434 <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
200253f0:	6811      	ldr	r1, [r2, #0]
200253f2:	2800      	cmp	r0, #0
200253f4:	bf0c      	ite	eq
200253f6:	2301      	moveq	r3, #1
200253f8:	f04f 33ff 	movne.w	r3, #4294967295
200253fc:	f041 0104 	orr.w	r1, r1, #4
20025400:	6011      	str	r1, [r2, #0]
20025402:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20025406:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
2002540a:	6013      	str	r3, [r2, #0]
2002540c:	6811      	ldr	r1, [r2, #0]
2002540e:	2900      	cmp	r1, #0
20025410:	d0fc      	beq.n	2002540c <HAL_RCC_Reset_and_Halt_LCPU+0x24>
20025412:	4a09      	ldr	r2, [pc, #36]	@ (20025438 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20025414:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025416:	06c8      	lsls	r0, r1, #27
20025418:	d506      	bpl.n	20025428 <HAL_RCC_Reset_and_Halt_LCPU+0x40>
2002541a:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002541c:	f041 0102 	orr.w	r1, r1, #2
20025420:	6411      	str	r1, [r2, #64]	@ 0x40
20025422:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025424:	06c9      	lsls	r1, r1, #27
20025426:	d4fc      	bmi.n	20025422 <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
20025428:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
2002542c:	680a      	ldr	r2, [r1, #0]
2002542e:	ea22 0303 	bic.w	r3, r2, r3
20025432:	600b      	str	r3, [r1, #0]
20025434:	4770      	bx	lr
20025436:	bf00      	nop
20025438:	40040000 	.word	0x40040000

2002543c <HAL_RCC_HCPU_ConfigHCLK>:
2002543c:	28f0      	cmp	r0, #240	@ 0xf0
2002543e:	d80d      	bhi.n	2002545c <HAL_RCC_HCPU_ConfigHCLK+0x20>
20025440:	2890      	cmp	r0, #144	@ 0x90
20025442:	d807      	bhi.n	20025454 <HAL_RCC_HCPU_ConfigHCLK+0x18>
20025444:	2830      	cmp	r0, #48	@ 0x30
20025446:	d807      	bhi.n	20025458 <HAL_RCC_HCPU_ConfigHCLK+0x1c>
20025448:	2818      	cmp	r0, #24
2002544a:	bf94      	ite	ls
2002544c:	2100      	movls	r1, #0
2002544e:	2101      	movhi	r1, #1
20025450:	f7ff bf60 	b.w	20025314 <HAL_RCC_HCPU_ConfigDvfs>
20025454:	2103      	movs	r1, #3
20025456:	e7fb      	b.n	20025450 <HAL_RCC_HCPU_ConfigHCLK+0x14>
20025458:	2102      	movs	r1, #2
2002545a:	e7f9      	b.n	20025450 <HAL_RCC_HCPU_ConfigHCLK+0x14>
2002545c:	2001      	movs	r0, #1
2002545e:	4770      	bx	lr

20025460 <spi_flash_get_rdid>:
20025460:	b5f0      	push	{r4, r5, r6, r7, lr}
20025462:	4605      	mov	r5, r0
20025464:	3801      	subs	r0, #1
20025466:	b2c0      	uxtb	r0, r0
20025468:	28fd      	cmp	r0, #253	@ 0xfd
2002546a:	d808      	bhi.n	2002547e <spi_flash_get_rdid+0x1e>
2002546c:	2400      	movs	r4, #0
2002546e:	4f0b      	ldr	r7, [pc, #44]	@ (2002549c <spi_flash_get_rdid+0x3c>)
20025470:	f857 0b04 	ldr.w	r0, [r7], #4
20025474:	7806      	ldrb	r6, [r0, #0]
20025476:	b926      	cbnz	r6, 20025482 <spi_flash_get_rdid+0x22>
20025478:	3401      	adds	r4, #1
2002547a:	2c06      	cmp	r4, #6
2002547c:	d1f8      	bne.n	20025470 <spi_flash_get_rdid+0x10>
2002547e:	2000      	movs	r0, #0
20025480:	e00b      	b.n	2002549a <spi_flash_get_rdid+0x3a>
20025482:	42ae      	cmp	r6, r5
20025484:	d105      	bne.n	20025492 <spi_flash_get_rdid+0x32>
20025486:	7846      	ldrb	r6, [r0, #1]
20025488:	4296      	cmp	r6, r2
2002548a:	d102      	bne.n	20025492 <spi_flash_get_rdid+0x32>
2002548c:	7886      	ldrb	r6, [r0, #2]
2002548e:	428e      	cmp	r6, r1
20025490:	d001      	beq.n	20025496 <spi_flash_get_rdid+0x36>
20025492:	3008      	adds	r0, #8
20025494:	e7ee      	b.n	20025474 <spi_flash_get_rdid+0x14>
20025496:	b103      	cbz	r3, 2002549a <spi_flash_get_rdid+0x3a>
20025498:	701c      	strb	r4, [r3, #0]
2002549a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002549c:	20042c18 	.word	0x20042c18

200254a0 <spi_flash_get_cmd_by_id>:
200254a0:	b507      	push	{r0, r1, r2, lr}
200254a2:	f10d 0307 	add.w	r3, sp, #7
200254a6:	f7ff ffdb 	bl	20025460 <spi_flash_get_rdid>
200254aa:	4b06      	ldr	r3, [pc, #24]	@ (200254c4 <spi_flash_get_cmd_by_id+0x24>)
200254ac:	b140      	cbz	r0, 200254c0 <spi_flash_get_cmd_by_id+0x20>
200254ae:	f44f 7105 	mov.w	r1, #532	@ 0x214
200254b2:	f89d 2007 	ldrb.w	r2, [sp, #7]
200254b6:	fb01 3002 	mla	r0, r1, r2, r3
200254ba:	b003      	add	sp, #12
200254bc:	f85d fb04 	ldr.w	pc, [sp], #4
200254c0:	4618      	mov	r0, r3
200254c2:	e7fa      	b.n	200254ba <spi_flash_get_cmd_by_id+0x1a>
200254c4:	20042e30 	.word	0x20042e30

200254c8 <spi_flash_get_size_by_id>:
200254c8:	b508      	push	{r3, lr}
200254ca:	2300      	movs	r3, #0
200254cc:	f7ff ffc8 	bl	20025460 <spi_flash_get_rdid>
200254d0:	b108      	cbz	r0, 200254d6 <spi_flash_get_size_by_id+0xe>
200254d2:	6840      	ldr	r0, [r0, #4]
200254d4:	bd08      	pop	{r3, pc}
200254d6:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
200254da:	e7fb      	b.n	200254d4 <spi_flash_get_size_by_id+0xc>

200254dc <spi_flash_is_support_dtr>:
200254dc:	b508      	push	{r3, lr}
200254de:	2300      	movs	r3, #0
200254e0:	f7ff ffbe 	bl	20025460 <spi_flash_get_rdid>
200254e4:	b110      	cbz	r0, 200254ec <spi_flash_is_support_dtr+0x10>
200254e6:	78c0      	ldrb	r0, [r0, #3]
200254e8:	f000 0001 	and.w	r0, r0, #1
200254ec:	bd08      	pop	{r3, pc}
	...

200254f0 <spi_nand_get_rdid>:
200254f0:	b5f0      	push	{r4, r5, r6, r7, lr}
200254f2:	4605      	mov	r5, r0
200254f4:	3801      	subs	r0, #1
200254f6:	b2c0      	uxtb	r0, r0
200254f8:	28fd      	cmp	r0, #253	@ 0xfd
200254fa:	d808      	bhi.n	2002550e <spi_nand_get_rdid+0x1e>
200254fc:	2400      	movs	r4, #0
200254fe:	4f0b      	ldr	r7, [pc, #44]	@ (2002552c <spi_nand_get_rdid+0x3c>)
20025500:	f857 0b04 	ldr.w	r0, [r7], #4
20025504:	7806      	ldrb	r6, [r0, #0]
20025506:	b926      	cbnz	r6, 20025512 <spi_nand_get_rdid+0x22>
20025508:	3401      	adds	r4, #1
2002550a:	2c06      	cmp	r4, #6
2002550c:	d1f8      	bne.n	20025500 <spi_nand_get_rdid+0x10>
2002550e:	2000      	movs	r0, #0
20025510:	e00b      	b.n	2002552a <spi_nand_get_rdid+0x3a>
20025512:	42ae      	cmp	r6, r5
20025514:	d105      	bne.n	20025522 <spi_nand_get_rdid+0x32>
20025516:	7846      	ldrb	r6, [r0, #1]
20025518:	4296      	cmp	r6, r2
2002551a:	d102      	bne.n	20025522 <spi_nand_get_rdid+0x32>
2002551c:	7886      	ldrb	r6, [r0, #2]
2002551e:	428e      	cmp	r6, r1
20025520:	d001      	beq.n	20025526 <spi_nand_get_rdid+0x36>
20025522:	3008      	adds	r0, #8
20025524:	e7ee      	b.n	20025504 <spi_nand_get_rdid+0x14>
20025526:	b103      	cbz	r3, 2002552a <spi_nand_get_rdid+0x3a>
20025528:	701c      	strb	r4, [r3, #0]
2002552a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002552c:	20043aa8 	.word	0x20043aa8

20025530 <spi_nand_get_cmd_by_id>:
20025530:	b507      	push	{r0, r1, r2, lr}
20025532:	f10d 0307 	add.w	r3, sp, #7
20025536:	f7ff ffdb 	bl	200254f0 <spi_nand_get_rdid>
2002553a:	b130      	cbz	r0, 2002554a <spi_nand_get_cmd_by_id+0x1a>
2002553c:	f44f 7205 	mov.w	r2, #532	@ 0x214
20025540:	f89d 3007 	ldrb.w	r3, [sp, #7]
20025544:	4802      	ldr	r0, [pc, #8]	@ (20025550 <spi_nand_get_cmd_by_id+0x20>)
20025546:	fb02 0003 	mla	r0, r2, r3, r0
2002554a:	b003      	add	sp, #12
2002554c:	f85d fb04 	ldr.w	pc, [sp], #4
20025550:	20043c88 	.word	0x20043c88

20025554 <HAL_GET_FLASH_DEFAUT_INX>:
20025554:	f04f 30ff 	mov.w	r0, #4294967295
20025558:	4770      	bx	lr
	...

2002555c <spi_nand_get_default_ctable>:
2002555c:	b508      	push	{r3, lr}
2002555e:	f7ff fff9 	bl	20025554 <HAL_GET_FLASH_DEFAUT_INX>
20025562:	1e03      	subs	r3, r0, #0
20025564:	bfa5      	ittet	ge
20025566:	f44f 7205 	movge.w	r2, #532	@ 0x214
2002556a:	4802      	ldrge	r0, [pc, #8]	@ (20025574 <spi_nand_get_default_ctable+0x18>)
2002556c:	2000      	movlt	r0, #0
2002556e:	fb02 0003 	mlage	r0, r2, r3, r0
20025572:	bd08      	pop	{r3, pc}
20025574:	20043c88 	.word	0x20043c88

20025578 <spi_nand_get_size_by_id>:
20025578:	b508      	push	{r3, lr}
2002557a:	2300      	movs	r3, #0
2002557c:	f7ff ffb8 	bl	200254f0 <spi_nand_get_rdid>
20025580:	b108      	cbz	r0, 20025586 <spi_nand_get_size_by_id+0xe>
20025582:	6840      	ldr	r0, [r0, #4]
20025584:	bd08      	pop	{r3, pc}
20025586:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
2002558a:	e7fb      	b.n	20025584 <spi_nand_get_size_by_id+0xc>

2002558c <spi_nand_get_plane_select_flag>:
2002558c:	b508      	push	{r3, lr}
2002558e:	2300      	movs	r3, #0
20025590:	f7ff ffae 	bl	200254f0 <spi_nand_get_rdid>
20025594:	b110      	cbz	r0, 2002559c <spi_nand_get_plane_select_flag+0x10>
20025596:	78c0      	ldrb	r0, [r0, #3]
20025598:	f3c0 0040 	ubfx	r0, r0, #1, #1
2002559c:	bd08      	pop	{r3, pc}

2002559e <spi_nand_get_big_page_flag>:
2002559e:	b508      	push	{r3, lr}
200255a0:	2300      	movs	r3, #0
200255a2:	f7ff ffa5 	bl	200254f0 <spi_nand_get_rdid>
200255a6:	b110      	cbz	r0, 200255ae <spi_nand_get_big_page_flag+0x10>
200255a8:	78c0      	ldrb	r0, [r0, #3]
200255aa:	f3c0 0081 	ubfx	r0, r0, #2, #2
200255ae:	bd08      	pop	{r3, pc}

200255b0 <spi_nand_get_ecc_mode>:
200255b0:	b508      	push	{r3, lr}
200255b2:	2300      	movs	r3, #0
200255b4:	f7ff ff9c 	bl	200254f0 <spi_nand_get_rdid>
200255b8:	b108      	cbz	r0, 200255be <spi_nand_get_ecc_mode+0xe>
200255ba:	78c0      	ldrb	r0, [r0, #3]
200255bc:	0900      	lsrs	r0, r0, #4
200255be:	bd08      	pop	{r3, pc}

200255c0 <bbm_map_check.part.0>:
200255c0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200255c2:	4b21      	ldr	r3, [pc, #132]	@ (20025648 <bbm_map_check.part.0+0x88>)
200255c4:	4606      	mov	r6, r0
200255c6:	681d      	ldr	r5, [r3, #0]
200255c8:	4b20      	ldr	r3, [pc, #128]	@ (2002564c <bbm_map_check.part.0+0x8c>)
200255ca:	3d04      	subs	r5, #4
200255cc:	681f      	ldr	r7, [r3, #0]
200255ce:	2300      	movs	r3, #0
200255d0:	f100 0e1a 	add.w	lr, r0, #26
200255d4:	42ab      	cmp	r3, r5
200255d6:	db02      	blt.n	200255de <bbm_map_check.part.0+0x1e>
200255d8:	2000      	movs	r0, #0
200255da:	b003      	add	sp, #12
200255dc:	bdf0      	pop	{r4, r5, r6, r7, pc}
200255de:	8b31      	ldrh	r1, [r6, #24]
200255e0:	b321      	cbz	r1, 2002562c <bbm_map_check.part.0+0x6c>
200255e2:	8b72      	ldrh	r2, [r6, #26]
200255e4:	b33a      	cbz	r2, 20025636 <bbm_map_check.part.0+0x76>
200255e6:	42b9      	cmp	r1, r7
200255e8:	d201      	bcs.n	200255ee <bbm_map_check.part.0+0x2e>
200255ea:	4297      	cmp	r7, r2
200255ec:	d905      	bls.n	200255fa <bbm_map_check.part.0+0x3a>
200255ee:	4b18      	ldr	r3, [pc, #96]	@ (20025650 <bbm_map_check.part.0+0x90>)
200255f0:	681b      	ldr	r3, [r3, #0]
200255f2:	b10b      	cbz	r3, 200255f8 <bbm_map_check.part.0+0x38>
200255f4:	4817      	ldr	r0, [pc, #92]	@ (20025654 <bbm_map_check.part.0+0x94>)
200255f6:	4798      	blx	r3
200255f8:	e7fe      	b.n	200255f8 <bbm_map_check.part.0+0x38>
200255fa:	3301      	adds	r3, #1
200255fc:	461c      	mov	r4, r3
200255fe:	42ac      	cmp	r4, r5
20025600:	db01      	blt.n	20025606 <bbm_map_check.part.0+0x46>
20025602:	3604      	adds	r6, #4
20025604:	e7e6      	b.n	200255d4 <bbm_map_check.part.0+0x14>
20025606:	f83e c024 	ldrh.w	ip, [lr, r4, lsl #2]
2002560a:	f1bc 0f00 	cmp.w	ip, #0
2002560e:	d0f8      	beq.n	20025602 <bbm_map_check.part.0+0x42>
20025610:	4562      	cmp	r2, ip
20025612:	d109      	bne.n	20025628 <bbm_map_check.part.0+0x68>
20025614:	4b0e      	ldr	r3, [pc, #56]	@ (20025650 <bbm_map_check.part.0+0x90>)
20025616:	681d      	ldr	r5, [r3, #0]
20025618:	b12d      	cbz	r5, 20025626 <bbm_map_check.part.0+0x66>
2002561a:	3406      	adds	r4, #6
2002561c:	f830 3024 	ldrh.w	r3, [r0, r4, lsl #2]
20025620:	480d      	ldr	r0, [pc, #52]	@ (20025658 <bbm_map_check.part.0+0x98>)
20025622:	9200      	str	r2, [sp, #0]
20025624:	47a8      	blx	r5
20025626:	e7fe      	b.n	20025626 <bbm_map_check.part.0+0x66>
20025628:	3401      	adds	r4, #1
2002562a:	e7e8      	b.n	200255fe <bbm_map_check.part.0+0x3e>
2002562c:	eb00 0283 	add.w	r2, r0, r3, lsl #2
20025630:	8b52      	ldrh	r2, [r2, #26]
20025632:	2a00      	cmp	r2, #0
20025634:	d0d0      	beq.n	200255d8 <bbm_map_check.part.0+0x18>
20025636:	4a06      	ldr	r2, [pc, #24]	@ (20025650 <bbm_map_check.part.0+0x90>)
20025638:	6814      	ldr	r4, [r2, #0]
2002563a:	b124      	cbz	r4, 20025646 <bbm_map_check.part.0+0x86>
2002563c:	eb00 0383 	add.w	r3, r0, r3, lsl #2
20025640:	8b5a      	ldrh	r2, [r3, #26]
20025642:	4806      	ldr	r0, [pc, #24]	@ (2002565c <bbm_map_check.part.0+0x9c>)
20025644:	47a0      	blx	r4
20025646:	e7fe      	b.n	20025646 <bbm_map_check.part.0+0x86>
20025648:	20049f84 	.word	0x20049f84
2002564c:	20049f88 	.word	0x20049f88
20025650:	20049f74 	.word	0x20049f74
20025654:	2002ab7c 	.word	0x2002ab7c
20025658:	2002ab99 	.word	0x2002ab99
2002565c:	2002abe6 	.word	0x2002abe6

20025660 <bbm_crc_check>:
20025660:	f04f 32ff 	mov.w	r2, #4294967295
20025664:	b510      	push	{r4, lr}
20025666:	4c07      	ldr	r4, [pc, #28]	@ (20025684 <bbm_crc_check+0x24>)
20025668:	4401      	add	r1, r0
2002566a:	4288      	cmp	r0, r1
2002566c:	d101      	bne.n	20025672 <bbm_crc_check+0x12>
2002566e:	43d0      	mvns	r0, r2
20025670:	bd10      	pop	{r4, pc}
20025672:	f810 3b01 	ldrb.w	r3, [r0], #1
20025676:	4053      	eors	r3, r2
20025678:	b2db      	uxtb	r3, r3
2002567a:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
2002567e:	ea83 2212 	eor.w	r2, r3, r2, lsr #8
20025682:	e7f2      	b.n	2002566a <bbm_crc_check+0xa>
20025684:	2002ba0c 	.word	0x2002ba0c

20025688 <bbm_get_phy_blk>:
20025688:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002568a:	4b14      	ldr	r3, [pc, #80]	@ (200256dc <bbm_get_phy_blk+0x54>)
2002568c:	4601      	mov	r1, r0
2002568e:	681e      	ldr	r6, [r3, #0]
20025690:	42b0      	cmp	r0, r6
20025692:	d21e      	bcs.n	200256d2 <bbm_get_phy_blk+0x4a>
20025694:	b138      	cbz	r0, 200256a6 <bbm_get_phy_blk+0x1e>
20025696:	4b12      	ldr	r3, [pc, #72]	@ (200256e0 <bbm_get_phy_blk+0x58>)
20025698:	2200      	movs	r2, #0
2002569a:	681c      	ldr	r4, [r3, #0]
2002569c:	4b11      	ldr	r3, [pc, #68]	@ (200256e4 <bbm_get_phy_blk+0x5c>)
2002569e:	3c04      	subs	r4, #4
200256a0:	461d      	mov	r5, r3
200256a2:	4294      	cmp	r4, r2
200256a4:	dc00      	bgt.n	200256a8 <bbm_get_phy_blk+0x20>
200256a6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200256a8:	8b1f      	ldrh	r7, [r3, #24]
200256aa:	428f      	cmp	r7, r1
200256ac:	d10a      	bne.n	200256c4 <bbm_get_phy_blk+0x3c>
200256ae:	eb05 0582 	add.w	r5, r5, r2, lsl #2
200256b2:	8b6a      	ldrh	r2, [r5, #26]
200256b4:	4296      	cmp	r6, r2
200256b6:	dd0f      	ble.n	200256d8 <bbm_get_phy_blk+0x50>
200256b8:	4b0b      	ldr	r3, [pc, #44]	@ (200256e8 <bbm_get_phy_blk+0x60>)
200256ba:	681b      	ldr	r3, [r3, #0]
200256bc:	b10b      	cbz	r3, 200256c2 <bbm_get_phy_blk+0x3a>
200256be:	480b      	ldr	r0, [pc, #44]	@ (200256ec <bbm_get_phy_blk+0x64>)
200256c0:	4798      	blx	r3
200256c2:	e7fe      	b.n	200256c2 <bbm_get_phy_blk+0x3a>
200256c4:	b917      	cbnz	r7, 200256cc <bbm_get_phy_blk+0x44>
200256c6:	8b5f      	ldrh	r7, [r3, #26]
200256c8:	2f00      	cmp	r7, #0
200256ca:	d0ec      	beq.n	200256a6 <bbm_get_phy_blk+0x1e>
200256cc:	3201      	adds	r2, #1
200256ce:	3304      	adds	r3, #4
200256d0:	e7e7      	b.n	200256a2 <bbm_get_phy_blk+0x1a>
200256d2:	f04f 30ff 	mov.w	r0, #4294967295
200256d6:	e7e6      	b.n	200256a6 <bbm_get_phy_blk+0x1e>
200256d8:	4610      	mov	r0, r2
200256da:	e7e4      	b.n	200256a6 <bbm_get_phy_blk+0x1e>
200256dc:	20049f88 	.word	0x20049f88
200256e0:	20049f84 	.word	0x20049f84
200256e4:	20049f8c 	.word	0x20049f8c
200256e8:	20049f74 	.word	0x20049f74
200256ec:	2002ac04 	.word	0x2002ac04

200256f0 <bbm_get_version_inblk>:
200256f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200256f4:	4607      	mov	r7, r0
200256f6:	4688      	mov	r8, r1
200256f8:	b087      	sub	sp, #28
200256fa:	2900      	cmp	r1, #0
200256fc:	d14b      	bne.n	20025796 <bbm_get_version_inblk+0xa6>
200256fe:	2500      	movs	r5, #0
20025700:	4628      	mov	r0, r5
20025702:	b007      	add	sp, #28
20025704:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025708:	2200      	movs	r2, #0
2002570a:	e9cd 2201 	strd	r2, r2, [sp, #4]
2002570e:	4e26      	ldr	r6, [pc, #152]	@ (200257a8 <bbm_get_version_inblk+0xb8>)
20025710:	9100      	str	r1, [sp, #0]
20025712:	4638      	mov	r0, r7
20025714:	4621      	mov	r1, r4
20025716:	6833      	ldr	r3, [r6, #0]
20025718:	f7fb fa36 	bl	20020b88 <port_read_page>
2002571c:	2800      	cmp	r0, #0
2002571e:	dd32      	ble.n	20025786 <bbm_get_version_inblk+0x96>
20025720:	6832      	ldr	r2, [r6, #0]
20025722:	6813      	ldr	r3, [r2, #0]
20025724:	455b      	cmp	r3, fp
20025726:	d123      	bne.n	20025770 <bbm_get_version_inblk+0x80>
20025728:	6856      	ldr	r6, [r2, #4]
2002572a:	f3c6 061e 	ubfx	r6, r6, #0, #31
2002572e:	42ae      	cmp	r6, r5
20025730:	dd15      	ble.n	2002575e <bbm_get_version_inblk+0x6e>
20025732:	4610      	mov	r0, r2
20025734:	2110      	movs	r1, #16
20025736:	9205      	str	r2, [sp, #20]
20025738:	f7ff ff92 	bl	20025660 <bbm_crc_check>
2002573c:	9a05      	ldr	r2, [sp, #20]
2002573e:	6913      	ldr	r3, [r2, #16]
20025740:	4283      	cmp	r3, r0
20025742:	d113      	bne.n	2002576c <bbm_get_version_inblk+0x7c>
20025744:	f8c8 4000 	str.w	r4, [r8]
20025748:	4635      	mov	r5, r6
2002574a:	3401      	adds	r4, #1
2002574c:	f8da 1000 	ldr.w	r1, [sl]
20025750:	f8d9 3000 	ldr.w	r3, [r9]
20025754:	fbb3 f3f1 	udiv	r3, r3, r1
20025758:	42a3      	cmp	r3, r4
2002575a:	d8d5      	bhi.n	20025708 <bbm_get_version_inblk+0x18>
2002575c:	e7d0      	b.n	20025700 <bbm_get_version_inblk+0x10>
2002575e:	4b13      	ldr	r3, [pc, #76]	@ (200257ac <bbm_get_version_inblk+0xbc>)
20025760:	681b      	ldr	r3, [r3, #0]
20025762:	b11b      	cbz	r3, 2002576c <bbm_get_version_inblk+0x7c>
20025764:	4632      	mov	r2, r6
20025766:	4629      	mov	r1, r5
20025768:	4811      	ldr	r0, [pc, #68]	@ (200257b0 <bbm_get_version_inblk+0xc0>)
2002576a:	4798      	blx	r3
2002576c:	462e      	mov	r6, r5
2002576e:	e7eb      	b.n	20025748 <bbm_get_version_inblk+0x58>
20025770:	1c5a      	adds	r2, r3, #1
20025772:	d0c5      	beq.n	20025700 <bbm_get_version_inblk+0x10>
20025774:	4a0d      	ldr	r2, [pc, #52]	@ (200257ac <bbm_get_version_inblk+0xbc>)
20025776:	6815      	ldr	r5, [r2, #0]
20025778:	2d00      	cmp	r5, #0
2002577a:	d0c0      	beq.n	200256fe <bbm_get_version_inblk+0xe>
2002577c:	4622      	mov	r2, r4
2002577e:	4639      	mov	r1, r7
20025780:	480c      	ldr	r0, [pc, #48]	@ (200257b4 <bbm_get_version_inblk+0xc4>)
20025782:	47a8      	blx	r5
20025784:	e7bb      	b.n	200256fe <bbm_get_version_inblk+0xe>
20025786:	4b09      	ldr	r3, [pc, #36]	@ (200257ac <bbm_get_version_inblk+0xbc>)
20025788:	681b      	ldr	r3, [r3, #0]
2002578a:	2b00      	cmp	r3, #0
2002578c:	d0ee      	beq.n	2002576c <bbm_get_version_inblk+0x7c>
2002578e:	4622      	mov	r2, r4
20025790:	4639      	mov	r1, r7
20025792:	4809      	ldr	r0, [pc, #36]	@ (200257b8 <bbm_get_version_inblk+0xc8>)
20025794:	e7e9      	b.n	2002576a <bbm_get_version_inblk+0x7a>
20025796:	2400      	movs	r4, #0
20025798:	f8df a020 	ldr.w	sl, [pc, #32]	@ 200257bc <bbm_get_version_inblk+0xcc>
2002579c:	4625      	mov	r5, r4
2002579e:	f8df 9020 	ldr.w	r9, [pc, #32]	@ 200257c0 <bbm_get_version_inblk+0xd0>
200257a2:	f8df b020 	ldr.w	fp, [pc, #32]	@ 200257c4 <bbm_get_version_inblk+0xd4>
200257a6:	e7d1      	b.n	2002574c <bbm_get_version_inblk+0x5c>
200257a8:	20049f78 	.word	0x20049f78
200257ac:	20049f74 	.word	0x20049f74
200257b0:	2002ac23 	.word	0x2002ac23
200257b4:	2002ac50 	.word	0x2002ac50
200257b8:	2002ac81 	.word	0x2002ac81
200257bc:	20044900 	.word	0x20044900
200257c0:	20044904 	.word	0x20044904
200257c4:	5366424d 	.word	0x5366424d

200257c8 <bbm_get_map_table>:
200257c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200257cc:	2801      	cmp	r0, #1
200257ce:	4607      	mov	r7, r0
200257d0:	f8df b15c 	ldr.w	fp, [pc, #348]	@ 20025930 <bbm_get_map_table+0x168>
200257d4:	b087      	sub	sp, #28
200257d6:	dd0a      	ble.n	200257ee <bbm_get_map_table+0x26>
200257d8:	f8db 3000 	ldr.w	r3, [fp]
200257dc:	b91b      	cbnz	r3, 200257e6 <bbm_get_map_table+0x1e>
200257de:	2000      	movs	r0, #0
200257e0:	b007      	add	sp, #28
200257e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200257e6:	4601      	mov	r1, r0
200257e8:	4847      	ldr	r0, [pc, #284]	@ (20025908 <bbm_get_map_table+0x140>)
200257ea:	4798      	blx	r3
200257ec:	e7f7      	b.n	200257de <bbm_get_map_table+0x16>
200257ee:	f8df 8144 	ldr.w	r8, [pc, #324]	@ 20025934 <bbm_get_map_table+0x16c>
200257f2:	2800      	cmp	r0, #0
200257f4:	d163      	bne.n	200258be <bbm_get_map_table+0xf6>
200257f6:	f8b8 6000 	ldrh.w	r6, [r8]
200257fa:	f8b8 5002 	ldrh.w	r5, [r8, #2]
200257fe:	2e00      	cmp	r6, #0
20025800:	d062      	beq.n	200258c8 <bbm_get_map_table+0x100>
20025802:	4630      	mov	r0, r6
20025804:	a904      	add	r1, sp, #16
20025806:	f7ff ff73 	bl	200256f0 <bbm_get_version_inblk>
2002580a:	4681      	mov	r9, r0
2002580c:	2d00      	cmp	r5, #0
2002580e:	d05d      	beq.n	200258cc <bbm_get_map_table+0x104>
20025810:	4628      	mov	r0, r5
20025812:	a905      	add	r1, sp, #20
20025814:	f7ff ff6c 	bl	200256f0 <bbm_get_version_inblk>
20025818:	4604      	mov	r4, r0
2002581a:	f8db a000 	ldr.w	sl, [fp]
2002581e:	f1ba 0f00 	cmp.w	sl, #0
20025822:	d005      	beq.n	20025830 <bbm_get_map_table+0x68>
20025824:	4623      	mov	r3, r4
20025826:	4632      	mov	r2, r6
20025828:	4649      	mov	r1, r9
2002582a:	4838      	ldr	r0, [pc, #224]	@ (2002590c <bbm_get_map_table+0x144>)
2002582c:	9500      	str	r5, [sp, #0]
2002582e:	47d0      	blx	sl
20025830:	45a1      	cmp	r9, r4
20025832:	d0d4      	beq.n	200257de <bbm_get_map_table+0x16>
20025834:	f04f 0200 	mov.w	r2, #0
20025838:	bf98      	it	ls
2002583a:	462e      	movls	r6, r5
2002583c:	f107 0308 	add.w	r3, r7, #8
20025840:	bf94      	ite	ls
20025842:	f828 5013 	strhls.w	r5, [r8, r3, lsl #1]
20025846:	f828 6013 	strhhi.w	r6, [r8, r3, lsl #1]
2002584a:	e9cd 2201 	strd	r2, r2, [sp, #4]
2002584e:	4b30      	ldr	r3, [pc, #192]	@ (20025910 <bbm_get_map_table+0x148>)
20025850:	bf88      	it	hi
20025852:	f8dd a010 	ldrhi.w	sl, [sp, #16]
20025856:	681b      	ldr	r3, [r3, #0]
20025858:	bf98      	it	ls
2002585a:	f8dd a014 	ldrls.w	sl, [sp, #20]
2002585e:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 20025938 <bbm_get_map_table+0x170>
20025862:	9300      	str	r3, [sp, #0]
20025864:	4651      	mov	r1, sl
20025866:	4630      	mov	r0, r6
20025868:	f8d8 3000 	ldr.w	r3, [r8]
2002586c:	bf88      	it	hi
2002586e:	464c      	movhi	r4, r9
20025870:	f7fb f98a 	bl	20020b88 <port_read_page>
20025874:	2800      	cmp	r0, #0
20025876:	f8db 5000 	ldr.w	r5, [fp]
2002587a:	dd38      	ble.n	200258ee <bbm_get_map_table+0x126>
2002587c:	f8d8 8000 	ldr.w	r8, [r8]
20025880:	4b24      	ldr	r3, [pc, #144]	@ (20025914 <bbm_get_map_table+0x14c>)
20025882:	f8d8 2000 	ldr.w	r2, [r8]
20025886:	429a      	cmp	r2, r3
20025888:	d12b      	bne.n	200258e2 <bbm_get_map_table+0x11a>
2002588a:	2110      	movs	r1, #16
2002588c:	4640      	mov	r0, r8
2002588e:	f7ff fee7 	bl	20025660 <bbm_crc_check>
20025892:	f8d8 2010 	ldr.w	r2, [r8, #16]
20025896:	4601      	mov	r1, r0
20025898:	4282      	cmp	r2, r0
2002589a:	d11e      	bne.n	200258da <bbm_get_map_table+0x112>
2002589c:	f8d8 1004 	ldr.w	r1, [r8, #4]
200258a0:	f3c1 011e 	ubfx	r1, r1, #0, #31
200258a4:	42a1      	cmp	r1, r4
200258a6:	d113      	bne.n	200258d0 <bbm_get_map_table+0x108>
200258a8:	f44f 7202 	mov.w	r2, #520	@ 0x208
200258ac:	481a      	ldr	r0, [pc, #104]	@ (20025918 <bbm_get_map_table+0x150>)
200258ae:	4641      	mov	r1, r8
200258b0:	fb02 0007 	mla	r0, r2, r7, r0
200258b4:	f005 f888 	bl	2002a9c8 <memcpy>
200258b8:	bb0d      	cbnz	r5, 200258fe <bbm_get_map_table+0x136>
200258ba:	4620      	mov	r0, r4
200258bc:	e790      	b.n	200257e0 <bbm_get_map_table+0x18>
200258be:	f8b8 6004 	ldrh.w	r6, [r8, #4]
200258c2:	f8b8 5006 	ldrh.w	r5, [r8, #6]
200258c6:	e79a      	b.n	200257fe <bbm_get_map_table+0x36>
200258c8:	46b1      	mov	r9, r6
200258ca:	e79f      	b.n	2002580c <bbm_get_map_table+0x44>
200258cc:	462c      	mov	r4, r5
200258ce:	e7a4      	b.n	2002581a <bbm_get_map_table+0x52>
200258d0:	b115      	cbz	r5, 200258d8 <bbm_get_map_table+0x110>
200258d2:	4622      	mov	r2, r4
200258d4:	4811      	ldr	r0, [pc, #68]	@ (2002591c <bbm_get_map_table+0x154>)
200258d6:	47a8      	blx	r5
200258d8:	e7fe      	b.n	200258d8 <bbm_get_map_table+0x110>
200258da:	b10d      	cbz	r5, 200258e0 <bbm_get_map_table+0x118>
200258dc:	4810      	ldr	r0, [pc, #64]	@ (20025920 <bbm_get_map_table+0x158>)
200258de:	47a8      	blx	r5
200258e0:	e7fe      	b.n	200258e0 <bbm_get_map_table+0x118>
200258e2:	b11d      	cbz	r5, 200258ec <bbm_get_map_table+0x124>
200258e4:	4652      	mov	r2, sl
200258e6:	4631      	mov	r1, r6
200258e8:	480e      	ldr	r0, [pc, #56]	@ (20025924 <bbm_get_map_table+0x15c>)
200258ea:	47a8      	blx	r5
200258ec:	e7fe      	b.n	200258ec <bbm_get_map_table+0x124>
200258ee:	2d00      	cmp	r5, #0
200258f0:	f43f af75 	beq.w	200257de <bbm_get_map_table+0x16>
200258f4:	4652      	mov	r2, sl
200258f6:	4631      	mov	r1, r6
200258f8:	480b      	ldr	r0, [pc, #44]	@ (20025928 <bbm_get_map_table+0x160>)
200258fa:	47a8      	blx	r5
200258fc:	e76f      	b.n	200257de <bbm_get_map_table+0x16>
200258fe:	4621      	mov	r1, r4
20025900:	480a      	ldr	r0, [pc, #40]	@ (2002592c <bbm_get_map_table+0x164>)
20025902:	47a8      	blx	r5
20025904:	e7d9      	b.n	200258ba <bbm_get_map_table+0xf2>
20025906:	bf00      	nop
20025908:	2002ac9f 	.word	0x2002ac9f
2002590c:	2002acb3 	.word	0x2002acb3
20025910:	20044900 	.word	0x20044900
20025914:	5366424d 	.word	0x5366424d
20025918:	20049f8c 	.word	0x20049f8c
2002591c:	2002acd9 	.word	0x2002acd9
20025920:	2002ad23 	.word	0x2002ad23
20025924:	2002ad35 	.word	0x2002ad35
20025928:	2002ad6a 	.word	0x2002ad6a
2002592c:	2002ad96 	.word	0x2002ad96
20025930:	20049f74 	.word	0x20049f74
20025934:	2004a39c 	.word	0x2004a39c
20025938:	20049f78 	.word	0x20049f78

2002593c <bbm_get_page_num>:
2002593c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20025940:	4605      	mov	r5, r0
20025942:	2400      	movs	r4, #0
20025944:	4f13      	ldr	r7, [pc, #76]	@ (20025994 <bbm_get_page_num+0x58>)
20025946:	4e14      	ldr	r6, [pc, #80]	@ (20025998 <bbm_get_page_num+0x5c>)
20025948:	f8df 8050 	ldr.w	r8, [pc, #80]	@ 2002599c <bbm_get_page_num+0x60>
2002594c:	b085      	sub	sp, #20
2002594e:	6839      	ldr	r1, [r7, #0]
20025950:	6833      	ldr	r3, [r6, #0]
20025952:	fbb3 f3f1 	udiv	r3, r3, r1
20025956:	42a3      	cmp	r3, r4
20025958:	d802      	bhi.n	20025960 <bbm_get_page_num+0x24>
2002595a:	f04f 34ff 	mov.w	r4, #4294967295
2002595e:	e015      	b.n	2002598c <bbm_get_page_num+0x50>
20025960:	2200      	movs	r2, #0
20025962:	e9cd 2201 	strd	r2, r2, [sp, #4]
20025966:	f8df 9038 	ldr.w	r9, [pc, #56]	@ 200259a0 <bbm_get_page_num+0x64>
2002596a:	9100      	str	r1, [sp, #0]
2002596c:	4628      	mov	r0, r5
2002596e:	4621      	mov	r1, r4
20025970:	f8d9 3000 	ldr.w	r3, [r9]
20025974:	f7fb f908 	bl	20020b88 <port_read_page>
20025978:	b120      	cbz	r0, 20025984 <bbm_get_page_num+0x48>
2002597a:	f8d9 3000 	ldr.w	r3, [r9]
2002597e:	681b      	ldr	r3, [r3, #0]
20025980:	4543      	cmp	r3, r8
20025982:	d101      	bne.n	20025988 <bbm_get_page_num+0x4c>
20025984:	3401      	adds	r4, #1
20025986:	e7e2      	b.n	2002594e <bbm_get_page_num+0x12>
20025988:	3301      	adds	r3, #1
2002598a:	d1fb      	bne.n	20025984 <bbm_get_page_num+0x48>
2002598c:	4620      	mov	r0, r4
2002598e:	b005      	add	sp, #20
20025990:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20025994:	20044900 	.word	0x20044900
20025998:	20044904 	.word	0x20044904
2002599c:	5366424d 	.word	0x5366424d
200259a0:	20049f78 	.word	0x20049f78

200259a4 <bbm_read_page>:
200259a4:	b5f0      	push	{r4, r5, r6, r7, lr}
200259a6:	4604      	mov	r4, r0
200259a8:	b085      	sub	sp, #20
200259aa:	b280      	uxth	r0, r0
200259ac:	461f      	mov	r7, r3
200259ae:	460d      	mov	r5, r1
200259b0:	4616      	mov	r6, r2
200259b2:	f7ff fe69 	bl	20025688 <bbm_get_phy_blk>
200259b6:	1c43      	adds	r3, r0, #1
200259b8:	d108      	bne.n	200259cc <bbm_read_page+0x28>
200259ba:	4b0a      	ldr	r3, [pc, #40]	@ (200259e4 <bbm_read_page+0x40>)
200259bc:	681b      	ldr	r3, [r3, #0]
200259be:	b113      	cbz	r3, 200259c6 <bbm_read_page+0x22>
200259c0:	4621      	mov	r1, r4
200259c2:	4809      	ldr	r0, [pc, #36]	@ (200259e8 <bbm_read_page+0x44>)
200259c4:	4798      	blx	r3
200259c6:	2000      	movs	r0, #0
200259c8:	b005      	add	sp, #20
200259ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
200259cc:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200259ce:	4632      	mov	r2, r6
200259d0:	9302      	str	r3, [sp, #8]
200259d2:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200259d4:	4629      	mov	r1, r5
200259d6:	9301      	str	r3, [sp, #4]
200259d8:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200259da:	9300      	str	r3, [sp, #0]
200259dc:	463b      	mov	r3, r7
200259de:	f7fb f8d3 	bl	20020b88 <port_read_page>
200259e2:	e7f1      	b.n	200259c8 <bbm_read_page+0x24>
200259e4:	20049f74 	.word	0x20049f74
200259e8:	2002ada9 	.word	0x2002ada9

200259ec <port_write_page>:
200259ec:	4b01      	ldr	r3, [pc, #4]	@ (200259f4 <port_write_page+0x8>)
200259ee:	6818      	ldr	r0, [r3, #0]
200259f0:	4770      	bx	lr
200259f2:	bf00      	nop
200259f4:	20044900 	.word	0x20044900

200259f8 <bbm_write_talbe.isra.0>:
200259f8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200259fa:	4604      	mov	r4, r0
200259fc:	4608      	mov	r0, r1
200259fe:	460e      	mov	r6, r1
20025a00:	f7ff ff9c 	bl	2002593c <bbm_get_page_num>
20025a04:	1e05      	subs	r5, r0, #0
20025a06:	db25      	blt.n	20025a54 <bbm_write_talbe.isra.0+0x5c>
20025a08:	4b13      	ldr	r3, [pc, #76]	@ (20025a58 <bbm_write_talbe.isra.0+0x60>)
20025a0a:	681a      	ldr	r2, [r3, #0]
20025a0c:	4b13      	ldr	r3, [pc, #76]	@ (20025a5c <bbm_write_talbe.isra.0+0x64>)
20025a0e:	681b      	ldr	r3, [r3, #0]
20025a10:	fbb3 f3f2 	udiv	r3, r3, r2
20025a14:	429d      	cmp	r5, r3
20025a16:	da1d      	bge.n	20025a54 <bbm_write_talbe.isra.0+0x5c>
20025a18:	4f11      	ldr	r7, [pc, #68]	@ (20025a60 <bbm_write_talbe.isra.0+0x68>)
20025a1a:	21ff      	movs	r1, #255	@ 0xff
20025a1c:	6838      	ldr	r0, [r7, #0]
20025a1e:	f004 ffb9 	bl	2002a994 <memset>
20025a22:	4264      	negs	r4, r4
20025a24:	490f      	ldr	r1, [pc, #60]	@ (20025a64 <bbm_write_talbe.isra.0+0x6c>)
20025a26:	f404 7402 	and.w	r4, r4, #520	@ 0x208
20025a2a:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025a2e:	6838      	ldr	r0, [r7, #0]
20025a30:	4421      	add	r1, r4
20025a32:	f004 ffc9 	bl	2002a9c8 <memcpy>
20025a36:	6838      	ldr	r0, [r7, #0]
20025a38:	b160      	cbz	r0, 20025a54 <bbm_write_talbe.isra.0+0x5c>
20025a3a:	6802      	ldr	r2, [r0, #0]
20025a3c:	4b0a      	ldr	r3, [pc, #40]	@ (20025a68 <bbm_write_talbe.isra.0+0x70>)
20025a3e:	429a      	cmp	r2, r3
20025a40:	d108      	bne.n	20025a54 <bbm_write_talbe.isra.0+0x5c>
20025a42:	f7ff fdbd 	bl	200255c0 <bbm_map_check.part.0>
20025a46:	2300      	movs	r3, #0
20025a48:	9300      	str	r3, [sp, #0]
20025a4a:	4629      	mov	r1, r5
20025a4c:	4630      	mov	r0, r6
20025a4e:	683a      	ldr	r2, [r7, #0]
20025a50:	f7ff ffcc 	bl	200259ec <port_write_page>
20025a54:	b003      	add	sp, #12
20025a56:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025a58:	20044900 	.word	0x20044900
20025a5c:	20044904 	.word	0x20044904
20025a60:	20049f78 	.word	0x20049f78
20025a64:	20049f8c 	.word	0x20049f8c
20025a68:	5366424d 	.word	0x5366424d

20025a6c <port_erase_block>:
20025a6c:	2000      	movs	r0, #0
20025a6e:	4770      	bx	lr

20025a70 <bbm_init_table>:
20025a70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025a74:	4c7d      	ldr	r4, [pc, #500]	@ (20025c6c <bbm_init_table+0x1fc>)
20025a76:	4b7e      	ldr	r3, [pc, #504]	@ (20025c70 <bbm_init_table+0x200>)
20025a78:	6822      	ldr	r2, [r4, #0]
20025a7a:	b085      	sub	sp, #20
20025a7c:	429a      	cmp	r2, r3
20025a7e:	f000 80ef 	beq.w	20025c60 <bbm_init_table+0x1f0>
20025a82:	f8d4 2208 	ldr.w	r2, [r4, #520]	@ 0x208
20025a86:	429a      	cmp	r2, r3
20025a88:	f000 80ea 	beq.w	20025c60 <bbm_init_table+0x1f0>
20025a8c:	6023      	str	r3, [r4, #0]
20025a8e:	2301      	movs	r3, #1
20025a90:	6063      	str	r3, [r4, #4]
20025a92:	2300      	movs	r3, #0
20025a94:	f8df 9210 	ldr.w	r9, [pc, #528]	@ 20025ca8 <bbm_init_table+0x238>
20025a98:	8123      	strh	r3, [r4, #8]
20025a9a:	f8d9 3000 	ldr.w	r3, [r9]
20025a9e:	4f75      	ldr	r7, [pc, #468]	@ (20025c74 <bbm_init_table+0x204>)
20025aa0:	3b04      	subs	r3, #4
20025aa2:	f8df a208 	ldr.w	sl, [pc, #520]	@ 20025cac <bbm_init_table+0x23c>
20025aa6:	8163      	strh	r3, [r4, #10]
20025aa8:	683b      	ldr	r3, [r7, #0]
20025aaa:	f8da 5000 	ldr.w	r5, [sl]
20025aae:	3b01      	subs	r3, #1
20025ab0:	4e71      	ldr	r6, [pc, #452]	@ (20025c78 <bbm_init_table+0x208>)
20025ab2:	81a3      	strh	r3, [r4, #12]
20025ab4:	81e5      	strh	r5, [r4, #14]
20025ab6:	683b      	ldr	r3, [r7, #0]
20025ab8:	429d      	cmp	r5, r3
20025aba:	db10      	blt.n	20025ade <bbm_init_table+0x6e>
20025abc:	2500      	movs	r5, #0
20025abe:	46a8      	mov	r8, r5
20025ac0:	f8df b1b4 	ldr.w	fp, [pc, #436]	@ 20025c78 <bbm_init_table+0x208>
20025ac4:	f8da 6000 	ldr.w	r6, [sl]
20025ac8:	42b5      	cmp	r5, r6
20025aca:	db20      	blt.n	20025b0e <bbm_init_table+0x9e>
20025acc:	8963      	ldrh	r3, [r4, #10]
20025ace:	2b00      	cmp	r3, #0
20025ad0:	d14d      	bne.n	20025b6e <bbm_init_table+0xfe>
20025ad2:	4b69      	ldr	r3, [pc, #420]	@ (20025c78 <bbm_init_table+0x208>)
20025ad4:	681b      	ldr	r3, [r3, #0]
20025ad6:	b10b      	cbz	r3, 20025adc <bbm_init_table+0x6c>
20025ad8:	4868      	ldr	r0, [pc, #416]	@ (20025c7c <bbm_init_table+0x20c>)
20025ada:	4798      	blx	r3
20025adc:	e7fe      	b.n	20025adc <bbm_init_table+0x6c>
20025ade:	4628      	mov	r0, r5
20025ae0:	f7fb f8ce 	bl	20020c80 <bbm_get_bb>
20025ae4:	b968      	cbnz	r0, 20025b02 <bbm_init_table+0x92>
20025ae6:	4628      	mov	r0, r5
20025ae8:	f7ff ffc0 	bl	20025a6c <port_erase_block>
20025aec:	b138      	cbz	r0, 20025afe <bbm_init_table+0x8e>
20025aee:	6833      	ldr	r3, [r6, #0]
20025af0:	b113      	cbz	r3, 20025af8 <bbm_init_table+0x88>
20025af2:	4629      	mov	r1, r5
20025af4:	4862      	ldr	r0, [pc, #392]	@ (20025c80 <bbm_init_table+0x210>)
20025af6:	4798      	blx	r3
20025af8:	8963      	ldrh	r3, [r4, #10]
20025afa:	3b01      	subs	r3, #1
20025afc:	8163      	strh	r3, [r4, #10]
20025afe:	3501      	adds	r5, #1
20025b00:	e7d9      	b.n	20025ab6 <bbm_init_table+0x46>
20025b02:	6833      	ldr	r3, [r6, #0]
20025b04:	2b00      	cmp	r3, #0
20025b06:	d0f7      	beq.n	20025af8 <bbm_init_table+0x88>
20025b08:	4629      	mov	r1, r5
20025b0a:	485e      	ldr	r0, [pc, #376]	@ (20025c84 <bbm_init_table+0x214>)
20025b0c:	e7f3      	b.n	20025af6 <bbm_init_table+0x86>
20025b0e:	4628      	mov	r0, r5
20025b10:	f7fb f8b6 	bl	20020c80 <bbm_get_bb>
20025b14:	b348      	cbz	r0, 20025b6a <bbm_init_table+0xfa>
20025b16:	f8db 3000 	ldr.w	r3, [fp]
20025b1a:	b113      	cbz	r3, 20025b22 <bbm_init_table+0xb2>
20025b1c:	4629      	mov	r1, r5
20025b1e:	485a      	ldr	r0, [pc, #360]	@ (20025c88 <bbm_init_table+0x218>)
20025b20:	4798      	blx	r3
20025b22:	89a0      	ldrh	r0, [r4, #12]
20025b24:	f7fb f8ac 	bl	20020c80 <bbm_get_bb>
20025b28:	89a3      	ldrh	r3, [r4, #12]
20025b2a:	4606      	mov	r6, r0
20025b2c:	3b01      	subs	r3, #1
20025b2e:	81a3      	strh	r3, [r4, #12]
20025b30:	8963      	ldrh	r3, [r4, #10]
20025b32:	3b01      	subs	r3, #1
20025b34:	b29b      	uxth	r3, r3
20025b36:	8163      	strh	r3, [r4, #10]
20025b38:	b108      	cbz	r0, 20025b3e <bbm_init_table+0xce>
20025b3a:	2b00      	cmp	r3, #0
20025b3c:	d1f1      	bne.n	20025b22 <bbm_init_table+0xb2>
20025b3e:	f8db 3000 	ldr.w	r3, [fp]
20025b42:	b11b      	cbz	r3, 20025b4c <bbm_init_table+0xdc>
20025b44:	4642      	mov	r2, r8
20025b46:	4629      	mov	r1, r5
20025b48:	4850      	ldr	r0, [pc, #320]	@ (20025c8c <bbm_init_table+0x21c>)
20025b4a:	4798      	blx	r3
20025b4c:	b946      	cbnz	r6, 20025b60 <bbm_init_table+0xf0>
20025b4e:	89a2      	ldrh	r2, [r4, #12]
20025b50:	f108 0306 	add.w	r3, r8, #6
20025b54:	f824 5023 	strh.w	r5, [r4, r3, lsl #2]
20025b58:	3201      	adds	r2, #1
20025b5a:	eb04 0383 	add.w	r3, r4, r3, lsl #2
20025b5e:	805a      	strh	r2, [r3, #2]
20025b60:	8923      	ldrh	r3, [r4, #8]
20025b62:	f108 0801 	add.w	r8, r8, #1
20025b66:	3301      	adds	r3, #1
20025b68:	8123      	strh	r3, [r4, #8]
20025b6a:	3501      	adds	r5, #1
20025b6c:	e7aa      	b.n	20025ac4 <bbm_init_table+0x54>
20025b6e:	2110      	movs	r1, #16
20025b70:	483e      	ldr	r0, [pc, #248]	@ (20025c6c <bbm_init_table+0x1fc>)
20025b72:	f7ff fd75 	bl	20025660 <bbm_crc_check>
20025b76:	f8d9 1000 	ldr.w	r1, [r9]
20025b7a:	6120      	str	r0, [r4, #16]
20025b7c:	3904      	subs	r1, #4
20025b7e:	0089      	lsls	r1, r1, #2
20025b80:	4843      	ldr	r0, [pc, #268]	@ (20025c90 <bbm_init_table+0x220>)
20025b82:	f7ff fd6d 	bl	20025660 <bbm_crc_check>
20025b86:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025b8a:	4938      	ldr	r1, [pc, #224]	@ (20025c6c <bbm_init_table+0x1fc>)
20025b8c:	6160      	str	r0, [r4, #20]
20025b8e:	1888      	adds	r0, r1, r2
20025b90:	f004 ff1a 	bl	2002a9c8 <memcpy>
20025b94:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025b98:	2110      	movs	r1, #16
20025b9a:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025b9e:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025ba2:	483c      	ldr	r0, [pc, #240]	@ (20025c94 <bbm_init_table+0x224>)
20025ba4:	f7ff fd5c 	bl	20025660 <bbm_crc_check>
20025ba8:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025bac:	2400      	movs	r4, #0
20025bae:	f8df 9100 	ldr.w	r9, [pc, #256]	@ 20025cb0 <bbm_init_table+0x240>
20025bb2:	f8df 8100 	ldr.w	r8, [pc, #256]	@ 20025cb4 <bbm_init_table+0x244>
20025bb6:	683b      	ldr	r3, [r7, #0]
20025bb8:	429e      	cmp	r6, r3
20025bba:	db08      	blt.n	20025bce <bbm_init_table+0x15e>
20025bbc:	2c03      	cmp	r4, #3
20025bbe:	dc30      	bgt.n	20025c22 <bbm_init_table+0x1b2>
20025bc0:	4b2d      	ldr	r3, [pc, #180]	@ (20025c78 <bbm_init_table+0x208>)
20025bc2:	681b      	ldr	r3, [r3, #0]
20025bc4:	b113      	cbz	r3, 20025bcc <bbm_init_table+0x15c>
20025bc6:	4621      	mov	r1, r4
20025bc8:	4833      	ldr	r0, [pc, #204]	@ (20025c98 <bbm_init_table+0x228>)
20025bca:	4798      	blx	r3
20025bcc:	e7fe      	b.n	20025bcc <bbm_init_table+0x15c>
20025bce:	4630      	mov	r0, r6
20025bd0:	f7fb f856 	bl	20020c80 <bbm_get_bb>
20025bd4:	4605      	mov	r5, r0
20025bd6:	bb10      	cbnz	r0, 20025c1e <bbm_init_table+0x1ae>
20025bd8:	f8d9 a000 	ldr.w	sl, [r9]
20025bdc:	21ff      	movs	r1, #255	@ 0xff
20025bde:	4652      	mov	r2, sl
20025be0:	f8d8 0000 	ldr.w	r0, [r8]
20025be4:	f004 fed6 	bl	2002a994 <memset>
20025be8:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025bec:	f8cd a000 	str.w	sl, [sp]
20025bf0:	f8d8 3000 	ldr.w	r3, [r8]
20025bf4:	462a      	mov	r2, r5
20025bf6:	4629      	mov	r1, r5
20025bf8:	4630      	mov	r0, r6
20025bfa:	f7fa ffc5 	bl	20020b88 <port_read_page>
20025bfe:	f8d9 3000 	ldr.w	r3, [r9]
20025c02:	4298      	cmp	r0, r3
20025c04:	d109      	bne.n	20025c1a <bbm_init_table+0x1aa>
20025c06:	f8d8 3000 	ldr.w	r3, [r8]
20025c0a:	681b      	ldr	r3, [r3, #0]
20025c0c:	3301      	adds	r3, #1
20025c0e:	bf01      	itttt	eq
20025c10:	4b22      	ldreq	r3, [pc, #136]	@ (20025c9c <bbm_init_table+0x22c>)
20025c12:	1d22      	addeq	r2, r4, #4
20025c14:	f823 6012 	strheq.w	r6, [r3, r2, lsl #1]
20025c18:	3401      	addeq	r4, #1
20025c1a:	2c03      	cmp	r4, #3
20025c1c:	dc01      	bgt.n	20025c22 <bbm_init_table+0x1b2>
20025c1e:	3601      	adds	r6, #1
20025c20:	e7c9      	b.n	20025bb6 <bbm_init_table+0x146>
20025c22:	2500      	movs	r5, #0
20025c24:	4c1d      	ldr	r4, [pc, #116]	@ (20025c9c <bbm_init_table+0x22c>)
20025c26:	2000      	movs	r0, #0
20025c28:	8921      	ldrh	r1, [r4, #8]
20025c2a:	f7ff fee5 	bl	200259f8 <bbm_write_talbe.isra.0>
20025c2e:	8923      	ldrh	r3, [r4, #8]
20025c30:	2001      	movs	r0, #1
20025c32:	8961      	ldrh	r1, [r4, #10]
20025c34:	8023      	strh	r3, [r4, #0]
20025c36:	8223      	strh	r3, [r4, #16]
20025c38:	8125      	strh	r5, [r4, #8]
20025c3a:	f7ff fedd 	bl	200259f8 <bbm_write_talbe.isra.0>
20025c3e:	8963      	ldrh	r3, [r4, #10]
20025c40:	8165      	strh	r5, [r4, #10]
20025c42:	80a3      	strh	r3, [r4, #4]
20025c44:	8263      	strh	r3, [r4, #18]
20025c46:	89a3      	ldrh	r3, [r4, #12]
20025c48:	8063      	strh	r3, [r4, #2]
20025c4a:	89e3      	ldrh	r3, [r4, #14]
20025c4c:	80e3      	strh	r3, [r4, #6]
20025c4e:	4b0a      	ldr	r3, [pc, #40]	@ (20025c78 <bbm_init_table+0x208>)
20025c50:	681b      	ldr	r3, [r3, #0]
20025c52:	b10b      	cbz	r3, 20025c58 <bbm_init_table+0x1e8>
20025c54:	4812      	ldr	r0, [pc, #72]	@ (20025ca0 <bbm_init_table+0x230>)
20025c56:	4798      	blx	r3
20025c58:	2000      	movs	r0, #0
20025c5a:	b005      	add	sp, #20
20025c5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025c60:	4b05      	ldr	r3, [pc, #20]	@ (20025c78 <bbm_init_table+0x208>)
20025c62:	681b      	ldr	r3, [r3, #0]
20025c64:	b10b      	cbz	r3, 20025c6a <bbm_init_table+0x1fa>
20025c66:	480f      	ldr	r0, [pc, #60]	@ (20025ca4 <bbm_init_table+0x234>)
20025c68:	4798      	blx	r3
20025c6a:	e7fe      	b.n	20025c6a <bbm_init_table+0x1fa>
20025c6c:	20049f8c 	.word	0x20049f8c
20025c70:	5366424d 	.word	0x5366424d
20025c74:	20049f80 	.word	0x20049f80
20025c78:	20049f74 	.word	0x20049f74
20025c7c:	2002ae3e 	.word	0x2002ae3e
20025c80:	2002adcc 	.word	0x2002adcc
20025c84:	2002adee 	.word	0x2002adee
20025c88:	2002ae0b 	.word	0x2002ae0b
20025c8c:	2002ae2a 	.word	0x2002ae2a
20025c90:	20049fa4 	.word	0x20049fa4
20025c94:	2004a194 	.word	0x2004a194
20025c98:	2002ae58 	.word	0x2002ae58
20025c9c:	2004a39c 	.word	0x2004a39c
20025ca0:	2002ae7f 	.word	0x2002ae7f
20025ca4:	2002ae9b 	.word	0x2002ae9b
20025ca8:	20049f84 	.word	0x20049f84
20025cac:	20049f88 	.word	0x20049f88
20025cb0:	20044900 	.word	0x20044900
20025cb4:	20049f78 	.word	0x20049f78

20025cb8 <sif_bbm_init>:
20025cb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025cbc:	b087      	sub	sp, #28
20025cbe:	2900      	cmp	r1, #0
20025cc0:	f000 8129 	beq.w	20025f16 <sif_bbm_init+0x25e>
20025cc4:	4b95      	ldr	r3, [pc, #596]	@ (20025f1c <sif_bbm_init+0x264>)
20025cc6:	681a      	ldr	r2, [r3, #0]
20025cc8:	2a01      	cmp	r2, #1
20025cca:	d108      	bne.n	20025cde <sif_bbm_init+0x26>
20025ccc:	4b94      	ldr	r3, [pc, #592]	@ (20025f20 <sif_bbm_init+0x268>)
20025cce:	681b      	ldr	r3, [r3, #0]
20025cd0:	b10b      	cbz	r3, 20025cd6 <sif_bbm_init+0x1e>
20025cd2:	4894      	ldr	r0, [pc, #592]	@ (20025f24 <sif_bbm_init+0x26c>)
20025cd4:	4798      	blx	r3
20025cd6:	2000      	movs	r0, #0
20025cd8:	b007      	add	sp, #28
20025cda:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025cde:	2201      	movs	r2, #1
20025ce0:	601a      	str	r2, [r3, #0]
20025ce2:	4b91      	ldr	r3, [pc, #580]	@ (20025f28 <sif_bbm_init+0x270>)
20025ce4:	681c      	ldr	r4, [r3, #0]
20025ce6:	b904      	cbnz	r4, 20025cea <sif_bbm_init+0x32>
20025ce8:	e7fe      	b.n	20025ce8 <sif_bbm_init+0x30>
20025cea:	f8df a27c 	ldr.w	sl, [pc, #636]	@ 20025f68 <sif_bbm_init+0x2b0>
20025cee:	f8da 2000 	ldr.w	r2, [sl]
20025cf2:	b902      	cbnz	r2, 20025cf6 <sif_bbm_init+0x3e>
20025cf4:	e7fe      	b.n	20025cf4 <sif_bbm_init+0x3c>
20025cf6:	fbb0 f4f4 	udiv	r4, r0, r4
20025cfa:	f04f 0800 	mov.w	r8, #0
20025cfe:	4a8b      	ldr	r2, [pc, #556]	@ (20025f2c <sif_bbm_init+0x274>)
20025d00:	f8df b268 	ldr.w	fp, [pc, #616]	@ 20025f6c <sif_bbm_init+0x2b4>
20025d04:	0963      	lsrs	r3, r4, #5
20025d06:	f8df 9268 	ldr.w	r9, [pc, #616]	@ 20025f70 <sif_bbm_init+0x2b8>
20025d0a:	6013      	str	r3, [r2, #0]
20025d0c:	f8cb 4000 	str.w	r4, [fp]
20025d10:	1ae4      	subs	r4, r4, r3
20025d12:	4b87      	ldr	r3, [pc, #540]	@ (20025f30 <sif_bbm_init+0x278>)
20025d14:	2218      	movs	r2, #24
20025d16:	f8c9 1000 	str.w	r1, [r9]
20025d1a:	4886      	ldr	r0, [pc, #536]	@ (20025f34 <sif_bbm_init+0x27c>)
20025d1c:	2100      	movs	r1, #0
20025d1e:	601c      	str	r4, [r3, #0]
20025d20:	f004 fe38 	bl	2002a994 <memset>
20025d24:	f44f 6282 	mov.w	r2, #1040	@ 0x410
20025d28:	2100      	movs	r1, #0
20025d2a:	4883      	ldr	r0, [pc, #524]	@ (20025f38 <sif_bbm_init+0x280>)
20025d2c:	f004 fe32 	bl	2002a994 <memset>
20025d30:	4647      	mov	r7, r8
20025d32:	4646      	mov	r6, r8
20025d34:	f8db 3000 	ldr.w	r3, [fp]
20025d38:	429c      	cmp	r4, r3
20025d3a:	db02      	blt.n	20025d42 <sif_bbm_init+0x8a>
20025d3c:	f04f 35ff 	mov.w	r5, #4294967295
20025d40:	e064      	b.n	20025e0c <sif_bbm_init+0x154>
20025d42:	4620      	mov	r0, r4
20025d44:	f7fa ff9c 	bl	20020c80 <bbm_get_bb>
20025d48:	4605      	mov	r5, r0
20025d4a:	b138      	cbz	r0, 20025d5c <sif_bbm_init+0xa4>
20025d4c:	4b74      	ldr	r3, [pc, #464]	@ (20025f20 <sif_bbm_init+0x268>)
20025d4e:	681b      	ldr	r3, [r3, #0]
20025d50:	b113      	cbz	r3, 20025d58 <sif_bbm_init+0xa0>
20025d52:	487a      	ldr	r0, [pc, #488]	@ (20025f3c <sif_bbm_init+0x284>)
20025d54:	1c61      	adds	r1, r4, #1
20025d56:	4798      	blx	r3
20025d58:	3401      	adds	r4, #1
20025d5a:	e7eb      	b.n	20025d34 <sif_bbm_init+0x7c>
20025d5c:	f8da 2000 	ldr.w	r2, [sl]
20025d60:	21ff      	movs	r1, #255	@ 0xff
20025d62:	f8d9 0000 	ldr.w	r0, [r9]
20025d66:	9205      	str	r2, [sp, #20]
20025d68:	f004 fe14 	bl	2002a994 <memset>
20025d6c:	9a05      	ldr	r2, [sp, #20]
20025d6e:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025d72:	9200      	str	r2, [sp, #0]
20025d74:	f8d9 3000 	ldr.w	r3, [r9]
20025d78:	462a      	mov	r2, r5
20025d7a:	4629      	mov	r1, r5
20025d7c:	4620      	mov	r0, r4
20025d7e:	f7fa ff03 	bl	20020b88 <port_read_page>
20025d82:	f8da 3000 	ldr.w	r3, [sl]
20025d86:	4298      	cmp	r0, r3
20025d88:	d12e      	bne.n	20025de8 <sif_bbm_init+0x130>
20025d8a:	f8d9 1000 	ldr.w	r1, [r9]
20025d8e:	486c      	ldr	r0, [pc, #432]	@ (20025f40 <sif_bbm_init+0x288>)
20025d90:	680b      	ldr	r3, [r1, #0]
20025d92:	b2a2      	uxth	r2, r4
20025d94:	4283      	cmp	r3, r0
20025d96:	4b67      	ldr	r3, [pc, #412]	@ (20025f34 <sif_bbm_init+0x27c>)
20025d98:	d11f      	bne.n	20025dda <sif_bbm_init+0x122>
20025d9a:	f991 1007 	ldrsb.w	r1, [r1, #7]
20025d9e:	2900      	cmp	r1, #0
20025da0:	bfb5      	itete	lt
20025da2:	eb03 0147 	addlt.w	r1, r3, r7, lsl #1
20025da6:	f823 2016 	strhge.w	r2, [r3, r6, lsl #1]
20025daa:	808a      	strhlt	r2, [r1, #4]
20025dac:	3601      	addge	r6, #1
20025dae:	bfb8      	it	lt
20025db0:	3701      	addlt	r7, #1
20025db2:	eb06 0208 	add.w	r2, r6, r8
20025db6:	443a      	add	r2, r7
20025db8:	2a03      	cmp	r2, #3
20025dba:	ddcd      	ble.n	20025d58 <sif_bbm_init+0xa0>
20025dbc:	2e00      	cmp	r6, #0
20025dbe:	f000 8081 	beq.w	20025ec4 <sif_bbm_init+0x20c>
20025dc2:	2f00      	cmp	r7, #0
20025dc4:	d07e      	beq.n	20025ec4 <sif_bbm_init+0x20c>
20025dc6:	2e01      	cmp	r6, #1
20025dc8:	d001      	beq.n	20025dce <sif_bbm_init+0x116>
20025dca:	2f01      	cmp	r7, #1
20025dcc:	d11e      	bne.n	20025e0c <sif_bbm_init+0x154>
20025dce:	8819      	ldrh	r1, [r3, #0]
20025dd0:	891a      	ldrh	r2, [r3, #8]
20025dd2:	b981      	cbnz	r1, 20025df6 <sif_bbm_init+0x13e>
20025dd4:	801a      	strh	r2, [r3, #0]
20025dd6:	895a      	ldrh	r2, [r3, #10]
20025dd8:	e013      	b.n	20025e02 <sif_bbm_init+0x14a>
20025dda:	f108 0104 	add.w	r1, r8, #4
20025dde:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
20025de2:	f108 0801 	add.w	r8, r8, #1
20025de6:	e7e4      	b.n	20025db2 <sif_bbm_init+0xfa>
20025de8:	4b4d      	ldr	r3, [pc, #308]	@ (20025f20 <sif_bbm_init+0x268>)
20025dea:	681b      	ldr	r3, [r3, #0]
20025dec:	2b00      	cmp	r3, #0
20025dee:	d0b3      	beq.n	20025d58 <sif_bbm_init+0xa0>
20025df0:	4854      	ldr	r0, [pc, #336]	@ (20025f44 <sif_bbm_init+0x28c>)
20025df2:	1c61      	adds	r1, r4, #1
20025df4:	e7af      	b.n	20025d56 <sif_bbm_init+0x9e>
20025df6:	8859      	ldrh	r1, [r3, #2]
20025df8:	b909      	cbnz	r1, 20025dfe <sif_bbm_init+0x146>
20025dfa:	805a      	strh	r2, [r3, #2]
20025dfc:	e7eb      	b.n	20025dd6 <sif_bbm_init+0x11e>
20025dfe:	2a00      	cmp	r2, #0
20025e00:	d0e9      	beq.n	20025dd6 <sif_bbm_init+0x11e>
20025e02:	8899      	ldrh	r1, [r3, #4]
20025e04:	2900      	cmp	r1, #0
20025e06:	d158      	bne.n	20025eba <sif_bbm_init+0x202>
20025e08:	809a      	strh	r2, [r3, #4]
20025e0a:	2502      	movs	r5, #2
20025e0c:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20025f20 <sif_bbm_init+0x268>
20025e10:	f8d9 4000 	ldr.w	r4, [r9]
20025e14:	b124      	cbz	r4, 20025e20 <sif_bbm_init+0x168>
20025e16:	4643      	mov	r3, r8
20025e18:	463a      	mov	r2, r7
20025e1a:	4631      	mov	r1, r6
20025e1c:	484a      	ldr	r0, [pc, #296]	@ (20025f48 <sif_bbm_init+0x290>)
20025e1e:	47a0      	blx	r4
20025e20:	f8d9 3000 	ldr.w	r3, [r9]
20025e24:	b113      	cbz	r3, 20025e2c <sif_bbm_init+0x174>
20025e26:	4629      	mov	r1, r5
20025e28:	4848      	ldr	r0, [pc, #288]	@ (20025f4c <sif_bbm_init+0x294>)
20025e2a:	4798      	blx	r3
20025e2c:	f035 0002 	bics.w	r0, r5, #2
20025e30:	d164      	bne.n	20025efc <sif_bbm_init+0x244>
20025e32:	f7ff fcc9 	bl	200257c8 <bbm_get_map_table>
20025e36:	4605      	mov	r5, r0
20025e38:	2001      	movs	r0, #1
20025e3a:	f7ff fcc5 	bl	200257c8 <bbm_get_map_table>
20025e3e:	f8d9 6000 	ldr.w	r6, [r9]
20025e42:	4604      	mov	r4, r0
20025e44:	b13e      	cbz	r6, 20025e56 <sif_bbm_init+0x19e>
20025e46:	4a3b      	ldr	r2, [pc, #236]	@ (20025f34 <sif_bbm_init+0x27c>)
20025e48:	4629      	mov	r1, r5
20025e4a:	8a53      	ldrh	r3, [r2, #18]
20025e4c:	9300      	str	r3, [sp, #0]
20025e4e:	8a12      	ldrh	r2, [r2, #16]
20025e50:	4603      	mov	r3, r0
20025e52:	483f      	ldr	r0, [pc, #252]	@ (20025f50 <sif_bbm_init+0x298>)
20025e54:	47b0      	blx	r6
20025e56:	42a5      	cmp	r5, r4
20025e58:	4c37      	ldr	r4, [pc, #220]	@ (20025f38 <sif_bbm_init+0x280>)
20025e5a:	dd35      	ble.n	20025ec8 <sif_bbm_init+0x210>
20025e5c:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025e60:	4621      	mov	r1, r4
20025e62:	18a0      	adds	r0, r4, r2
20025e64:	f004 fdb0 	bl	2002a9c8 <memcpy>
20025e68:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025e6c:	2110      	movs	r1, #16
20025e6e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025e72:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025e76:	f504 7002 	add.w	r0, r4, #520	@ 0x208
20025e7a:	f7ff fbf1 	bl	20025660 <bbm_crc_check>
20025e7e:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025e82:	2001      	movs	r0, #1
20025e84:	4b2b      	ldr	r3, [pc, #172]	@ (20025f34 <sif_bbm_init+0x27c>)
20025e86:	8a59      	ldrh	r1, [r3, #18]
20025e88:	f7ff fdb6 	bl	200259f8 <bbm_write_talbe.isra.0>
20025e8c:	6822      	ldr	r2, [r4, #0]
20025e8e:	4b2c      	ldr	r3, [pc, #176]	@ (20025f40 <sif_bbm_init+0x288>)
20025e90:	429a      	cmp	r2, r3
20025e92:	d12d      	bne.n	20025ef0 <sif_bbm_init+0x238>
20025e94:	4828      	ldr	r0, [pc, #160]	@ (20025f38 <sif_bbm_init+0x280>)
20025e96:	f7ff fb93 	bl	200255c0 <bbm_map_check.part.0>
20025e9a:	f8d9 4000 	ldr.w	r4, [r9]
20025e9e:	b12c      	cbz	r4, 20025eac <sif_bbm_init+0x1f4>
20025ea0:	4b2c      	ldr	r3, [pc, #176]	@ (20025f54 <sif_bbm_init+0x29c>)
20025ea2:	4924      	ldr	r1, [pc, #144]	@ (20025f34 <sif_bbm_init+0x27c>)
20025ea4:	482c      	ldr	r0, [pc, #176]	@ (20025f58 <sif_bbm_init+0x2a0>)
20025ea6:	f5a3 7202 	sub.w	r2, r3, #520	@ 0x208
20025eaa:	47a0      	blx	r4
20025eac:	f8d9 3000 	ldr.w	r3, [r9]
20025eb0:	2b00      	cmp	r3, #0
20025eb2:	f43f af10 	beq.w	20025cd6 <sif_bbm_init+0x1e>
20025eb6:	4829      	ldr	r0, [pc, #164]	@ (20025f5c <sif_bbm_init+0x2a4>)
20025eb8:	e70c      	b.n	20025cd4 <sif_bbm_init+0x1c>
20025eba:	88d9      	ldrh	r1, [r3, #6]
20025ebc:	2900      	cmp	r1, #0
20025ebe:	d1a4      	bne.n	20025e0a <sif_bbm_init+0x152>
20025ec0:	80da      	strh	r2, [r3, #6]
20025ec2:	e7a2      	b.n	20025e0a <sif_bbm_init+0x152>
20025ec4:	2501      	movs	r5, #1
20025ec6:	e7a1      	b.n	20025e0c <sif_bbm_init+0x154>
20025ec8:	dae0      	bge.n	20025e8c <sif_bbm_init+0x1d4>
20025eca:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025ece:	4620      	mov	r0, r4
20025ed0:	18a1      	adds	r1, r4, r2
20025ed2:	f004 fd79 	bl	2002a9c8 <memcpy>
20025ed6:	79e3      	ldrb	r3, [r4, #7]
20025ed8:	2110      	movs	r1, #16
20025eda:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
20025ede:	71e3      	strb	r3, [r4, #7]
20025ee0:	4620      	mov	r0, r4
20025ee2:	f7ff fbbd 	bl	20025660 <bbm_crc_check>
20025ee6:	4b13      	ldr	r3, [pc, #76]	@ (20025f34 <sif_bbm_init+0x27c>)
20025ee8:	6120      	str	r0, [r4, #16]
20025eea:	8a19      	ldrh	r1, [r3, #16]
20025eec:	2000      	movs	r0, #0
20025eee:	e7cb      	b.n	20025e88 <sif_bbm_init+0x1d0>
20025ef0:	f8d9 3000 	ldr.w	r3, [r9]
20025ef4:	b10b      	cbz	r3, 20025efa <sif_bbm_init+0x242>
20025ef6:	481a      	ldr	r0, [pc, #104]	@ (20025f60 <sif_bbm_init+0x2a8>)
20025ef8:	4798      	blx	r3
20025efa:	e7fe      	b.n	20025efa <sif_bbm_init+0x242>
20025efc:	2d01      	cmp	r5, #1
20025efe:	d102      	bne.n	20025f06 <sif_bbm_init+0x24e>
20025f00:	f7ff fdb6 	bl	20025a70 <bbm_init_table>
20025f04:	e7c9      	b.n	20025e9a <sif_bbm_init+0x1e2>
20025f06:	f8d9 3000 	ldr.w	r3, [r9]
20025f0a:	b11b      	cbz	r3, 20025f14 <sif_bbm_init+0x25c>
20025f0c:	f04f 31ff 	mov.w	r1, #4294967295
20025f10:	4814      	ldr	r0, [pc, #80]	@ (20025f64 <sif_bbm_init+0x2ac>)
20025f12:	4798      	blx	r3
20025f14:	e7fe      	b.n	20025f14 <sif_bbm_init+0x25c>
20025f16:	f04f 30ff 	mov.w	r0, #4294967295
20025f1a:	e6dd      	b.n	20025cd8 <sif_bbm_init+0x20>
20025f1c:	20049f7c 	.word	0x20049f7c
20025f20:	20049f74 	.word	0x20049f74
20025f24:	2002aeaf 	.word	0x2002aeaf
20025f28:	20044904 	.word	0x20044904
20025f2c:	20049f84 	.word	0x20049f84
20025f30:	20049f88 	.word	0x20049f88
20025f34:	2004a39c 	.word	0x2004a39c
20025f38:	20049f8c 	.word	0x20049f8c
20025f3c:	2002aedd 	.word	0x2002aedd
20025f40:	5366424d 	.word	0x5366424d
20025f44:	2002aee9 	.word	0x2002aee9
20025f48:	2002af08 	.word	0x2002af08
20025f4c:	2002af27 	.word	0x2002af27
20025f50:	2002af39 	.word	0x2002af39
20025f54:	2004a194 	.word	0x2004a194
20025f58:	2002af94 	.word	0x2002af94
20025f5c:	2002afb8 	.word	0x2002afb8
20025f60:	2002af5d 	.word	0x2002af5d
20025f64:	2002af73 	.word	0x2002af73
20025f68:	20044900 	.word	0x20044900
20025f6c:	20049f80 	.word	0x20049f80
20025f70:	20049f78 	.word	0x20049f78

20025f74 <bbm_set_page_size>:
20025f74:	4b01      	ldr	r3, [pc, #4]	@ (20025f7c <bbm_set_page_size+0x8>)
20025f76:	6018      	str	r0, [r3, #0]
20025f78:	4770      	bx	lr
20025f7a:	bf00      	nop
20025f7c:	20044900 	.word	0x20044900

20025f80 <bbm_set_blk_size>:
20025f80:	4b01      	ldr	r3, [pc, #4]	@ (20025f88 <bbm_set_blk_size+0x8>)
20025f82:	6018      	str	r0, [r3, #0]
20025f84:	4770      	bx	lr
20025f86:	bf00      	nop
20025f88:	20044904 	.word	0x20044904

20025f8c <mbedtls_md_info_from_type>:
20025f8c:	3805      	subs	r0, #5
20025f8e:	b2c0      	uxtb	r0, r0
20025f90:	2803      	cmp	r0, #3
20025f92:	bf9a      	itte	ls
20025f94:	4b02      	ldrls	r3, [pc, #8]	@ (20025fa0 <mbedtls_md_info_from_type+0x14>)
20025f96:	f853 0020 	ldrls.w	r0, [r3, r0, lsl #2]
20025f9a:	2000      	movhi	r0, #0
20025f9c:	4770      	bx	lr
20025f9e:	bf00      	nop
20025fa0:	2002be0c 	.word	0x2002be0c

20025fa4 <mbedtls_md_get_size>:
20025fa4:	b100      	cbz	r0, 20025fa8 <mbedtls_md_get_size+0x4>
20025fa6:	7a00      	ldrb	r0, [r0, #8]
20025fa8:	4770      	bx	lr

20025faa <sha224_process_wrap>:
20025faa:	f000 b8a9 	b.w	20026100 <mbedtls_sha256_process>

20025fae <sha224_clone_wrap>:
20025fae:	f000 b85a 	b.w	20026066 <mbedtls_sha256_clone>

20025fb2 <sha224_ctx_free>:
20025fb2:	b510      	push	{r4, lr}
20025fb4:	4604      	mov	r4, r0
20025fb6:	f000 f84c 	bl	20026052 <mbedtls_sha256_free>
20025fba:	4620      	mov	r0, r4
20025fbc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025fc0:	f004 bc22 	b.w	2002a808 <free>

20025fc4 <sha224_ctx_alloc>:
20025fc4:	b510      	push	{r4, lr}
20025fc6:	216c      	movs	r1, #108	@ 0x6c
20025fc8:	2001      	movs	r0, #1
20025fca:	f004 fc01 	bl	2002a7d0 <calloc>
20025fce:	4604      	mov	r4, r0
20025fd0:	b108      	cbz	r0, 20025fd6 <sha224_ctx_alloc+0x12>
20025fd2:	f000 f83a 	bl	2002604a <mbedtls_sha256_init>
20025fd6:	4620      	mov	r0, r4
20025fd8:	bd10      	pop	{r4, pc}

20025fda <sha224_wrap>:
20025fda:	2301      	movs	r3, #1
20025fdc:	f000 bc94 	b.w	20026908 <mbedtls_sha256>

20025fe0 <sha256_wrap>:
20025fe0:	2300      	movs	r3, #0
20025fe2:	f000 bc91 	b.w	20026908 <mbedtls_sha256>

20025fe6 <sha224_finish_wrap>:
20025fe6:	f000 bc21 	b.w	2002682c <mbedtls_sha256_finish>

20025fea <sha224_update_wrap>:
20025fea:	f000 bc1b 	b.w	20026824 <mbedtls_sha256_update>

20025fee <sha224_starts_wrap>:
20025fee:	2101      	movs	r1, #1
20025ff0:	f000 b83e 	b.w	20026070 <mbedtls_sha256_starts>

20025ff4 <sha256_starts_wrap>:
20025ff4:	2100      	movs	r1, #0
20025ff6:	f000 b83b 	b.w	20026070 <mbedtls_sha256_starts>

20025ffa <sha384_process_wrap>:
20025ffa:	f000 bd8d 	b.w	20026b18 <mbedtls_sha512_process>

20025ffe <sha384_clone_wrap>:
20025ffe:	f000 bcf5 	b.w	200269ec <mbedtls_sha512_clone>

20026002 <sha384_ctx_free>:
20026002:	b510      	push	{r4, lr}
20026004:	4604      	mov	r4, r0
20026006:	f000 fce7 	bl	200269d8 <mbedtls_sha512_free>
2002600a:	4620      	mov	r0, r4
2002600c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20026010:	f004 bbfa 	b.w	2002a808 <free>

20026014 <sha384_ctx_alloc>:
20026014:	b510      	push	{r4, lr}
20026016:	21d8      	movs	r1, #216	@ 0xd8
20026018:	2001      	movs	r0, #1
2002601a:	f004 fbd9 	bl	2002a7d0 <calloc>
2002601e:	4604      	mov	r4, r0
20026020:	b108      	cbz	r0, 20026026 <sha384_ctx_alloc+0x12>
20026022:	f000 fcd5 	bl	200269d0 <mbedtls_sha512_init>
20026026:	4620      	mov	r0, r4
20026028:	bd10      	pop	{r4, pc}

2002602a <sha384_wrap>:
2002602a:	2301      	movs	r3, #1
2002602c:	f001 bbf8 	b.w	20027820 <mbedtls_sha512>

20026030 <sha512_wrap>:
20026030:	2300      	movs	r3, #0
20026032:	f001 bbf5 	b.w	20027820 <mbedtls_sha512>

20026036 <sha384_finish_wrap>:
20026036:	f001 baed 	b.w	20027614 <mbedtls_sha512_finish>

2002603a <sha384_update_wrap>:
2002603a:	f001 bae6 	b.w	2002760a <mbedtls_sha512_update>

2002603e <sha384_starts_wrap>:
2002603e:	2101      	movs	r1, #1
20026040:	f000 bcda 	b.w	200269f8 <mbedtls_sha512_starts>

20026044 <sha512_starts_wrap>:
20026044:	2100      	movs	r1, #0
20026046:	f000 bcd7 	b.w	200269f8 <mbedtls_sha512_starts>

2002604a <mbedtls_sha256_init>:
2002604a:	226c      	movs	r2, #108	@ 0x6c
2002604c:	2100      	movs	r1, #0
2002604e:	f004 bca1 	b.w	2002a994 <memset>

20026052 <mbedtls_sha256_free>:
20026052:	b138      	cbz	r0, 20026064 <mbedtls_sha256_free+0x12>
20026054:	2100      	movs	r1, #0
20026056:	f100 036c 	add.w	r3, r0, #108	@ 0x6c
2002605a:	4602      	mov	r2, r0
2002605c:	3001      	adds	r0, #1
2002605e:	4298      	cmp	r0, r3
20026060:	7011      	strb	r1, [r2, #0]
20026062:	d1fa      	bne.n	2002605a <mbedtls_sha256_free+0x8>
20026064:	4770      	bx	lr

20026066 <mbedtls_sha256_clone>:
20026066:	b508      	push	{r3, lr}
20026068:	226c      	movs	r2, #108	@ 0x6c
2002606a:	f004 fcad 	bl	2002a9c8 <memcpy>
2002606e:	bd08      	pop	{r3, pc}

20026070 <mbedtls_sha256_starts>:
20026070:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20026074:	b1c1      	cbz	r1, 200260a8 <mbedtls_sha256_starts+0x38>
20026076:	f8df e078 	ldr.w	lr, [pc, #120]	@ 200260f0 <mbedtls_sha256_starts+0x80>
2002607a:	f8df c078 	ldr.w	ip, [pc, #120]	@ 200260f4 <mbedtls_sha256_starts+0x84>
2002607e:	4f10      	ldr	r7, [pc, #64]	@ (200260c0 <mbedtls_sha256_starts+0x50>)
20026080:	4e10      	ldr	r6, [pc, #64]	@ (200260c4 <mbedtls_sha256_starts+0x54>)
20026082:	4d11      	ldr	r5, [pc, #68]	@ (200260c8 <mbedtls_sha256_starts+0x58>)
20026084:	4c11      	ldr	r4, [pc, #68]	@ (200260cc <mbedtls_sha256_starts+0x5c>)
20026086:	4a12      	ldr	r2, [pc, #72]	@ (200260d0 <mbedtls_sha256_starts+0x60>)
20026088:	4b12      	ldr	r3, [pc, #72]	@ (200260d4 <mbedtls_sha256_starts+0x64>)
2002608a:	f04f 0800 	mov.w	r8, #0
2002608e:	e9c0 ec02 	strd	lr, ip, [r0, #8]
20026092:	e9c0 8800 	strd	r8, r8, [r0]
20026096:	e9c0 7604 	strd	r7, r6, [r0, #16]
2002609a:	e9c0 5406 	strd	r5, r4, [r0, #24]
2002609e:	e9c0 2308 	strd	r2, r3, [r0, #32]
200260a2:	6681      	str	r1, [r0, #104]	@ 0x68
200260a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200260a8:	f8df e04c 	ldr.w	lr, [pc, #76]	@ 200260f8 <mbedtls_sha256_starts+0x88>
200260ac:	f8df c04c 	ldr.w	ip, [pc, #76]	@ 200260fc <mbedtls_sha256_starts+0x8c>
200260b0:	4f09      	ldr	r7, [pc, #36]	@ (200260d8 <mbedtls_sha256_starts+0x68>)
200260b2:	4e0a      	ldr	r6, [pc, #40]	@ (200260dc <mbedtls_sha256_starts+0x6c>)
200260b4:	4d0a      	ldr	r5, [pc, #40]	@ (200260e0 <mbedtls_sha256_starts+0x70>)
200260b6:	4c0b      	ldr	r4, [pc, #44]	@ (200260e4 <mbedtls_sha256_starts+0x74>)
200260b8:	4a0b      	ldr	r2, [pc, #44]	@ (200260e8 <mbedtls_sha256_starts+0x78>)
200260ba:	4b0c      	ldr	r3, [pc, #48]	@ (200260ec <mbedtls_sha256_starts+0x7c>)
200260bc:	e7e5      	b.n	2002608a <mbedtls_sha256_starts+0x1a>
200260be:	bf00      	nop
200260c0:	3070dd17 	.word	0x3070dd17
200260c4:	f70e5939 	.word	0xf70e5939
200260c8:	ffc00b31 	.word	0xffc00b31
200260cc:	68581511 	.word	0x68581511
200260d0:	64f98fa7 	.word	0x64f98fa7
200260d4:	befa4fa4 	.word	0xbefa4fa4
200260d8:	3c6ef372 	.word	0x3c6ef372
200260dc:	a54ff53a 	.word	0xa54ff53a
200260e0:	510e527f 	.word	0x510e527f
200260e4:	9b05688c 	.word	0x9b05688c
200260e8:	1f83d9ab 	.word	0x1f83d9ab
200260ec:	5be0cd19 	.word	0x5be0cd19
200260f0:	c1059ed8 	.word	0xc1059ed8
200260f4:	367cd507 	.word	0x367cd507
200260f8:	6a09e667 	.word	0x6a09e667
200260fc:	bb67ae85 	.word	0xbb67ae85

20026100 <mbedtls_sha256_process>:
20026100:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20026104:	b0cf      	sub	sp, #316	@ 0x13c
20026106:	aa06      	add	r2, sp, #24
20026108:	460b      	mov	r3, r1
2002610a:	4616      	mov	r6, r2
2002610c:	9004      	str	r0, [sp, #16]
2002610e:	f100 0408 	add.w	r4, r0, #8
20026112:	f100 0728 	add.w	r7, r0, #40	@ 0x28
20026116:	4635      	mov	r5, r6
20026118:	6820      	ldr	r0, [r4, #0]
2002611a:	6861      	ldr	r1, [r4, #4]
2002611c:	3408      	adds	r4, #8
2002611e:	c503      	stmia	r5!, {r0, r1}
20026120:	42bc      	cmp	r4, r7
20026122:	462e      	mov	r6, r5
20026124:	d1f7      	bne.n	20026116 <mbedtls_sha256_process+0x16>
20026126:	f10d 0a38 	add.w	sl, sp, #56	@ 0x38
2002612a:	4619      	mov	r1, r3
2002612c:	4650      	mov	r0, sl
2002612e:	f103 0440 	add.w	r4, r3, #64	@ 0x40
20026132:	784b      	ldrb	r3, [r1, #1]
20026134:	780d      	ldrb	r5, [r1, #0]
20026136:	041b      	lsls	r3, r3, #16
20026138:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
2002613c:	78cd      	ldrb	r5, [r1, #3]
2002613e:	3104      	adds	r1, #4
20026140:	432b      	orrs	r3, r5
20026142:	f811 5c02 	ldrb.w	r5, [r1, #-2]
20026146:	428c      	cmp	r4, r1
20026148:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
2002614c:	f840 3b04 	str.w	r3, [r0], #4
20026150:	d1ef      	bne.n	20026132 <mbedtls_sha256_process+0x32>
20026152:	4996      	ldr	r1, [pc, #600]	@ (200263ac <mbedtls_sha256_process+0x2ac>)
20026154:	46d4      	mov	ip, sl
20026156:	e9d2 e705 	ldrd	lr, r7, [r2, #20]
2002615a:	e9d2 9600 	ldrd	r9, r6, [r2]
2002615e:	460d      	mov	r5, r1
20026160:	9100      	str	r1, [sp, #0]
20026162:	f8d2 801c 	ldr.w	r8, [r2, #28]
20026166:	f8d2 b010 	ldr.w	fp, [r2, #16]
2002616a:	e9d2 3202 	ldrd	r3, r2, [r2, #8]
2002616e:	6829      	ldr	r1, [r5, #0]
20026170:	f8dc 0000 	ldr.w	r0, [ip]
20026174:	ea4f 24fb 	mov.w	r4, fp, ror #11
20026178:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
2002617c:	4401      	add	r1, r0
2002617e:	ea87 000e 	eor.w	r0, r7, lr
20026182:	ea84 647b 	eor.w	r4, r4, fp, ror #25
20026186:	ea00 000b 	and.w	r0, r0, fp
2002618a:	4078      	eors	r0, r7
2002618c:	4421      	add	r1, r4
2002618e:	4401      	add	r1, r0
20026190:	4441      	add	r1, r8
20026192:	ea4f 3879 	mov.w	r8, r9, ror #13
20026196:	ea88 08b9 	eor.w	r8, r8, r9, ror #2
2002619a:	ea88 58b9 	eor.w	r8, r8, r9, ror #22
2002619e:	440a      	add	r2, r1
200261a0:	4488      	add	r8, r1
200261a2:	ea49 0106 	orr.w	r1, r9, r6
200261a6:	ea09 0006 	and.w	r0, r9, r6
200261aa:	4019      	ands	r1, r3
200261ac:	4301      	orrs	r1, r0
200261ae:	4488      	add	r8, r1
200261b0:	f8dc 0004 	ldr.w	r0, [ip, #4]
200261b4:	6869      	ldr	r1, [r5, #4]
200261b6:	ea4f 3478 	mov.w	r4, r8, ror #13
200261ba:	4401      	add	r1, r0
200261bc:	ea8b 000e 	eor.w	r0, fp, lr
200261c0:	4010      	ands	r0, r2
200261c2:	ea80 000e 	eor.w	r0, r0, lr
200261c6:	4439      	add	r1, r7
200261c8:	4401      	add	r1, r0
200261ca:	ea4f 20f2 	mov.w	r0, r2, ror #11
200261ce:	ea80 10b2 	eor.w	r0, r0, r2, ror #6
200261d2:	ea80 6072 	eor.w	r0, r0, r2, ror #25
200261d6:	ea84 04b8 	eor.w	r4, r4, r8, ror #2
200261da:	4401      	add	r1, r0
200261dc:	ea84 54b8 	eor.w	r4, r4, r8, ror #22
200261e0:	440b      	add	r3, r1
200261e2:	440c      	add	r4, r1
200261e4:	ea48 0109 	orr.w	r1, r8, r9
200261e8:	ea08 0009 	and.w	r0, r8, r9
200261ec:	4031      	ands	r1, r6
200261ee:	4301      	orrs	r1, r0
200261f0:	440c      	add	r4, r1
200261f2:	f8dc 0008 	ldr.w	r0, [ip, #8]
200261f6:	68a9      	ldr	r1, [r5, #8]
200261f8:	ea82 0703 	eor.w	r7, r2, r3
200261fc:	4401      	add	r1, r0
200261fe:	ea82 000b 	eor.w	r0, r2, fp
20026202:	4018      	ands	r0, r3
20026204:	ea80 000b 	eor.w	r0, r0, fp
20026208:	4471      	add	r1, lr
2002620a:	4401      	add	r1, r0
2002620c:	ea4f 20f3 	mov.w	r0, r3, ror #11
20026210:	ea80 10b3 	eor.w	r0, r0, r3, ror #6
20026214:	ea80 6073 	eor.w	r0, r0, r3, ror #25
20026218:	4401      	add	r1, r0
2002621a:	ea4f 3074 	mov.w	r0, r4, ror #13
2002621e:	ea80 00b4 	eor.w	r0, r0, r4, ror #2
20026222:	ea80 50b4 	eor.w	r0, r0, r4, ror #22
20026226:	eb06 0e01 	add.w	lr, r6, r1
2002622a:	4408      	add	r0, r1
2002622c:	ea48 0104 	orr.w	r1, r8, r4
20026230:	ea08 0604 	and.w	r6, r8, r4
20026234:	ea01 0109 	and.w	r1, r1, r9
20026238:	4331      	orrs	r1, r6
2002623a:	4408      	add	r0, r1
2002623c:	f8dc 600c 	ldr.w	r6, [ip, #12]
20026240:	68e9      	ldr	r1, [r5, #12]
20026242:	ea07 070e 	and.w	r7, r7, lr
20026246:	440e      	add	r6, r1
20026248:	ea4f 21fe 	mov.w	r1, lr, ror #11
2002624c:	4057      	eors	r7, r2
2002624e:	445e      	add	r6, fp
20026250:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20026254:	ea81 617e 	eor.w	r1, r1, lr, ror #25
20026258:	443e      	add	r6, r7
2002625a:	440e      	add	r6, r1
2002625c:	ea4f 3170 	mov.w	r1, r0, ror #13
20026260:	ea81 01b0 	eor.w	r1, r1, r0, ror #2
20026264:	ea81 51b0 	eor.w	r1, r1, r0, ror #22
20026268:	44b1      	add	r9, r6
2002626a:	4431      	add	r1, r6
2002626c:	ea44 0600 	orr.w	r6, r4, r0
20026270:	ea04 0700 	and.w	r7, r4, r0
20026274:	ea06 0608 	and.w	r6, r6, r8
20026278:	433e      	orrs	r6, r7
2002627a:	4431      	add	r1, r6
2002627c:	f8dc 7010 	ldr.w	r7, [ip, #16]
20026280:	692e      	ldr	r6, [r5, #16]
20026282:	3520      	adds	r5, #32
20026284:	443e      	add	r6, r7
20026286:	4416      	add	r6, r2
20026288:	ea83 020e 	eor.w	r2, r3, lr
2002628c:	ea02 0209 	and.w	r2, r2, r9
20026290:	405a      	eors	r2, r3
20026292:	4416      	add	r6, r2
20026294:	ea4f 22f9 	mov.w	r2, r9, ror #11
20026298:	ea82 12b9 	eor.w	r2, r2, r9, ror #6
2002629c:	ea82 6279 	eor.w	r2, r2, r9, ror #25
200262a0:	4416      	add	r6, r2
200262a2:	ea4f 3271 	mov.w	r2, r1, ror #13
200262a6:	ea82 02b1 	eor.w	r2, r2, r1, ror #2
200262aa:	ea82 52b1 	eor.w	r2, r2, r1, ror #22
200262ae:	44b0      	add	r8, r6
200262b0:	4432      	add	r2, r6
200262b2:	ea40 0601 	orr.w	r6, r0, r1
200262b6:	ea00 0701 	and.w	r7, r0, r1
200262ba:	4026      	ands	r6, r4
200262bc:	433e      	orrs	r6, r7
200262be:	4432      	add	r2, r6
200262c0:	f8dc 7014 	ldr.w	r7, [ip, #20]
200262c4:	f855 6c0c 	ldr.w	r6, [r5, #-12]
200262c8:	f10c 0c20 	add.w	ip, ip, #32
200262cc:	443e      	add	r6, r7
200262ce:	441e      	add	r6, r3
200262d0:	ea8e 0309 	eor.w	r3, lr, r9
200262d4:	ea03 0308 	and.w	r3, r3, r8
200262d8:	ea83 030e 	eor.w	r3, r3, lr
200262dc:	441e      	add	r6, r3
200262de:	ea4f 23f8 	mov.w	r3, r8, ror #11
200262e2:	ea83 13b8 	eor.w	r3, r3, r8, ror #6
200262e6:	ea83 6378 	eor.w	r3, r3, r8, ror #25
200262ea:	441e      	add	r6, r3
200262ec:	ea4f 3372 	mov.w	r3, r2, ror #13
200262f0:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
200262f4:	19a7      	adds	r7, r4, r6
200262f6:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
200262fa:	ea41 0402 	orr.w	r4, r1, r2
200262fe:	4433      	add	r3, r6
20026300:	4004      	ands	r4, r0
20026302:	ea01 0602 	and.w	r6, r1, r2
20026306:	4334      	orrs	r4, r6
20026308:	4423      	add	r3, r4
2002630a:	f85c 6c08 	ldr.w	r6, [ip, #-8]
2002630e:	f855 4c08 	ldr.w	r4, [r5, #-8]
20026312:	4434      	add	r4, r6
20026314:	ea89 0608 	eor.w	r6, r9, r8
20026318:	403e      	ands	r6, r7
2002631a:	ea86 0609 	eor.w	r6, r6, r9
2002631e:	4474      	add	r4, lr
20026320:	4434      	add	r4, r6
20026322:	ea4f 26f7 	mov.w	r6, r7, ror #11
20026326:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
2002632a:	ea86 6677 	eor.w	r6, r6, r7, ror #25
2002632e:	4434      	add	r4, r6
20026330:	eb00 0e04 	add.w	lr, r0, r4
20026334:	ea4f 3073 	mov.w	r0, r3, ror #13
20026338:	ea80 00b3 	eor.w	r0, r0, r3, ror #2
2002633c:	ea80 50b3 	eor.w	r0, r0, r3, ror #22
20026340:	4420      	add	r0, r4
20026342:	ea42 0403 	orr.w	r4, r2, r3
20026346:	400c      	ands	r4, r1
20026348:	ea02 0603 	and.w	r6, r2, r3
2002634c:	4334      	orrs	r4, r6
2002634e:	1906      	adds	r6, r0, r4
20026350:	f855 0c04 	ldr.w	r0, [r5, #-4]
20026354:	f85c 4c04 	ldr.w	r4, [ip, #-4]
20026358:	4420      	add	r0, r4
2002635a:	ea88 0407 	eor.w	r4, r8, r7
2002635e:	ea04 040e 	and.w	r4, r4, lr
20026362:	4448      	add	r0, r9
20026364:	ea84 0408 	eor.w	r4, r4, r8
20026368:	4420      	add	r0, r4
2002636a:	ea4f 24fe 	mov.w	r4, lr, ror #11
2002636e:	ea84 14be 	eor.w	r4, r4, lr, ror #6
20026372:	ea84 647e 	eor.w	r4, r4, lr, ror #25
20026376:	4420      	add	r0, r4
20026378:	eb01 0b00 	add.w	fp, r1, r0
2002637c:	ea4f 3176 	mov.w	r1, r6, ror #13
20026380:	ea81 01b6 	eor.w	r1, r1, r6, ror #2
20026384:	ea81 51b6 	eor.w	r1, r1, r6, ror #22
20026388:	4401      	add	r1, r0
2002638a:	ea43 0006 	orr.w	r0, r3, r6
2002638e:	4010      	ands	r0, r2
20026390:	ea03 0406 	and.w	r4, r3, r6
20026394:	4320      	orrs	r0, r4
20026396:	eb01 0900 	add.w	r9, r1, r0
2002639a:	4905      	ldr	r1, [pc, #20]	@ (200263b0 <mbedtls_sha256_process+0x2b0>)
2002639c:	42a9      	cmp	r1, r5
2002639e:	f47f aee6 	bne.w	2002616e <mbedtls_sha256_process+0x6e>
200263a2:	f10a 01c0 	add.w	r1, sl, #192	@ 0xc0
200263a6:	9105      	str	r1, [sp, #20]
200263a8:	e004      	b.n	200263b4 <mbedtls_sha256_process+0x2b4>
200263aa:	bf00      	nop
200263ac:	2002bf1c 	.word	0x2002bf1c
200263b0:	2002bf5c 	.word	0x2002bf5c
200263b4:	f8da 1038 	ldr.w	r1, [sl, #56]	@ 0x38
200263b8:	f8da 5004 	ldr.w	r5, [sl, #4]
200263bc:	ea4f 44f1 	mov.w	r4, r1, ror #19
200263c0:	ea84 4471 	eor.w	r4, r4, r1, ror #17
200263c4:	f8da 0000 	ldr.w	r0, [sl]
200263c8:	ea84 2491 	eor.w	r4, r4, r1, lsr #10
200263cc:	f8da 1024 	ldr.w	r1, [sl, #36]	@ 0x24
200263d0:	f10a 0a20 	add.w	sl, sl, #32
200263d4:	4401      	add	r1, r0
200263d6:	ea4f 40b5 	mov.w	r0, r5, ror #18
200263da:	ea80 10f5 	eor.w	r0, r0, r5, ror #7
200263de:	ea80 00d5 	eor.w	r0, r0, r5, lsr #3
200263e2:	4421      	add	r1, r4
200263e4:	4401      	add	r1, r0
200263e6:	9103      	str	r1, [sp, #12]
200263e8:	ea87 000e 	eor.w	r0, r7, lr
200263ec:	9900      	ldr	r1, [sp, #0]
200263ee:	ea4f 24fb 	mov.w	r4, fp, ror #11
200263f2:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
200263f6:	ea00 000b 	and.w	r0, r0, fp
200263fa:	ea84 647b 	eor.w	r4, r4, fp, ror #25
200263fe:	6c09      	ldr	r1, [r1, #64]	@ 0x40
20026400:	4078      	eors	r0, r7
20026402:	4420      	add	r0, r4
20026404:	4401      	add	r1, r0
20026406:	9803      	ldr	r0, [sp, #12]
20026408:	ea4f 3479 	mov.w	r4, r9, ror #13
2002640c:	4401      	add	r1, r0
2002640e:	4441      	add	r1, r8
20026410:	eb02 0801 	add.w	r8, r2, r1
20026414:	ea49 0206 	orr.w	r2, r9, r6
20026418:	f8ca 0020 	str.w	r0, [sl, #32]
2002641c:	ea84 04b9 	eor.w	r4, r4, r9, ror #2
20026420:	ea09 0006 	and.w	r0, r9, r6
20026424:	401a      	ands	r2, r3
20026426:	4302      	orrs	r2, r0
20026428:	ea84 54b9 	eor.w	r4, r4, r9, ror #22
2002642c:	4414      	add	r4, r2
2002642e:	f8da 201c 	ldr.w	r2, [sl, #28]
20026432:	440c      	add	r4, r1
20026434:	ea4f 4cf2 	mov.w	ip, r2, ror #19
20026438:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
2002643c:	f85a 1c18 	ldr.w	r1, [sl, #-24]
20026440:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
20026444:	f8da 2008 	ldr.w	r2, [sl, #8]
20026448:	18a8      	adds	r0, r5, r2
2002644a:	ea4f 42b1 	mov.w	r2, r1, ror #18
2002644e:	ea82 12f1 	eor.w	r2, r2, r1, ror #7
20026452:	ea82 02d1 	eor.w	r2, r2, r1, lsr #3
20026456:	4460      	add	r0, ip
20026458:	4410      	add	r0, r2
2002645a:	9a00      	ldr	r2, [sp, #0]
2002645c:	ea8b 050e 	eor.w	r5, fp, lr
20026460:	6c52      	ldr	r2, [r2, #68]	@ 0x44
20026462:	ea05 0508 	and.w	r5, r5, r8
20026466:	443a      	add	r2, r7
20026468:	4402      	add	r2, r0
2002646a:	ea85 050e 	eor.w	r5, r5, lr
2002646e:	4415      	add	r5, r2
20026470:	ea4f 22f8 	mov.w	r2, r8, ror #11
20026474:	ea82 12b8 	eor.w	r2, r2, r8, ror #6
20026478:	ea82 6278 	eor.w	r2, r2, r8, ror #25
2002647c:	442a      	add	r2, r5
2002647e:	4413      	add	r3, r2
20026480:	9301      	str	r3, [sp, #4]
20026482:	ea49 0504 	orr.w	r5, r9, r4
20026486:	ea4f 3374 	mov.w	r3, r4, ror #13
2002648a:	ea09 0704 	and.w	r7, r9, r4
2002648e:	ea83 03b4 	eor.w	r3, r3, r4, ror #2
20026492:	4035      	ands	r5, r6
20026494:	433d      	orrs	r5, r7
20026496:	ea83 53b4 	eor.w	r3, r3, r4, ror #22
2002649a:	442b      	add	r3, r5
2002649c:	4413      	add	r3, r2
2002649e:	9a03      	ldr	r2, [sp, #12]
200264a0:	f85a 5c14 	ldr.w	r5, [sl, #-20]
200264a4:	ea4f 4cf2 	mov.w	ip, r2, ror #19
200264a8:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
200264ac:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
200264b0:	f8da 200c 	ldr.w	r2, [sl, #12]
200264b4:	f8ca 0024 	str.w	r0, [sl, #36]	@ 0x24
200264b8:	188f      	adds	r7, r1, r2
200264ba:	ea4f 42b5 	mov.w	r2, r5, ror #18
200264be:	ea82 12f5 	eor.w	r2, r2, r5, ror #7
200264c2:	ea82 02d5 	eor.w	r2, r2, r5, lsr #3
200264c6:	4467      	add	r7, ip
200264c8:	4417      	add	r7, r2
200264ca:	9a01      	ldr	r2, [sp, #4]
200264cc:	ea8b 0108 	eor.w	r1, fp, r8
200264d0:	4011      	ands	r1, r2
200264d2:	9a00      	ldr	r2, [sp, #0]
200264d4:	ea81 010b 	eor.w	r1, r1, fp
200264d8:	6c92      	ldr	r2, [r2, #72]	@ 0x48
200264da:	f8ca 7028 	str.w	r7, [sl, #40]	@ 0x28
200264de:	4472      	add	r2, lr
200264e0:	443a      	add	r2, r7
200264e2:	eb01 0c02 	add.w	ip, r1, r2
200264e6:	9a01      	ldr	r2, [sp, #4]
200264e8:	9901      	ldr	r1, [sp, #4]
200264ea:	ea4f 22f2 	mov.w	r2, r2, ror #11
200264ee:	ea82 12b1 	eor.w	r2, r2, r1, ror #6
200264f2:	ea82 6271 	eor.w	r2, r2, r1, ror #25
200264f6:	4462      	add	r2, ip
200264f8:	18b1      	adds	r1, r6, r2
200264fa:	9102      	str	r1, [sp, #8]
200264fc:	ea44 0603 	orr.w	r6, r4, r3
20026500:	ea4f 3173 	mov.w	r1, r3, ror #13
20026504:	ea04 0c03 	and.w	ip, r4, r3
20026508:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
2002650c:	ea06 0609 	and.w	r6, r6, r9
20026510:	ea46 060c 	orr.w	r6, r6, ip
20026514:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
20026518:	4431      	add	r1, r6
2002651a:	4411      	add	r1, r2
2002651c:	ea4f 42f0 	mov.w	r2, r0, ror #19
20026520:	ea82 4270 	eor.w	r2, r2, r0, ror #17
20026524:	f85a 6c10 	ldr.w	r6, [sl, #-16]
20026528:	ea82 2090 	eor.w	r0, r2, r0, lsr #10
2002652c:	f8da 2010 	ldr.w	r2, [sl, #16]
20026530:	ea03 0e01 	and.w	lr, r3, r1
20026534:	4415      	add	r5, r2
20026536:	ea4f 42b6 	mov.w	r2, r6, ror #18
2002653a:	ea82 12f6 	eor.w	r2, r2, r6, ror #7
2002653e:	ea82 02d6 	eor.w	r2, r2, r6, lsr #3
20026542:	4405      	add	r5, r0
20026544:	4415      	add	r5, r2
20026546:	9a01      	ldr	r2, [sp, #4]
20026548:	ea88 0002 	eor.w	r0, r8, r2
2002654c:	9a02      	ldr	r2, [sp, #8]
2002654e:	4010      	ands	r0, r2
20026550:	9a00      	ldr	r2, [sp, #0]
20026552:	ea80 0008 	eor.w	r0, r0, r8
20026556:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
20026558:	f8ca 502c 	str.w	r5, [sl, #44]	@ 0x2c
2002655c:	445a      	add	r2, fp
2002655e:	442a      	add	r2, r5
20026560:	eb00 0c02 	add.w	ip, r0, r2
20026564:	9a02      	ldr	r2, [sp, #8]
20026566:	9802      	ldr	r0, [sp, #8]
20026568:	ea4f 22f2 	mov.w	r2, r2, ror #11
2002656c:	ea82 12b0 	eor.w	r2, r2, r0, ror #6
20026570:	ea82 6270 	eor.w	r2, r2, r0, ror #25
20026574:	4462      	add	r2, ip
20026576:	ea4f 3071 	mov.w	r0, r1, ror #13
2002657a:	ea43 0c01 	orr.w	ip, r3, r1
2002657e:	ea80 00b1 	eor.w	r0, r0, r1, ror #2
20026582:	ea0c 0c04 	and.w	ip, ip, r4
20026586:	ea4c 0c0e 	orr.w	ip, ip, lr
2002658a:	ea80 50b1 	eor.w	r0, r0, r1, ror #22
2002658e:	4460      	add	r0, ip
20026590:	4410      	add	r0, r2
20026592:	4491      	add	r9, r2
20026594:	ea4f 42f7 	mov.w	r2, r7, ror #19
20026598:	ea82 4277 	eor.w	r2, r2, r7, ror #17
2002659c:	f85a cc0c 	ldr.w	ip, [sl, #-12]
200265a0:	ea82 2797 	eor.w	r7, r2, r7, lsr #10
200265a4:	f8da 2014 	ldr.w	r2, [sl, #20]
200265a8:	ea01 0e00 	and.w	lr, r1, r0
200265ac:	4416      	add	r6, r2
200265ae:	ea4f 42bc 	mov.w	r2, ip, ror #18
200265b2:	ea82 12fc 	eor.w	r2, r2, ip, ror #7
200265b6:	ea82 02dc 	eor.w	r2, r2, ip, lsr #3
200265ba:	443e      	add	r6, r7
200265bc:	4416      	add	r6, r2
200265be:	e9dd 2701 	ldrd	r2, r7, [sp, #4]
200265c2:	4057      	eors	r7, r2
200265c4:	ea07 0709 	and.w	r7, r7, r9
200265c8:	4057      	eors	r7, r2
200265ca:	9a00      	ldr	r2, [sp, #0]
200265cc:	f8ca 6030 	str.w	r6, [sl, #48]	@ 0x30
200265d0:	6d12      	ldr	r2, [r2, #80]	@ 0x50
200265d2:	4432      	add	r2, r6
200265d4:	4442      	add	r2, r8
200265d6:	443a      	add	r2, r7
200265d8:	ea4f 27f9 	mov.w	r7, r9, ror #11
200265dc:	ea87 17b9 	eor.w	r7, r7, r9, ror #6
200265e0:	ea87 6779 	eor.w	r7, r7, r9, ror #25
200265e4:	4417      	add	r7, r2
200265e6:	eb04 0807 	add.w	r8, r4, r7
200265ea:	ea4f 3270 	mov.w	r2, r0, ror #13
200265ee:	ea41 0400 	orr.w	r4, r1, r0
200265f2:	ea82 02b0 	eor.w	r2, r2, r0, ror #2
200265f6:	401c      	ands	r4, r3
200265f8:	ea44 040e 	orr.w	r4, r4, lr
200265fc:	ea82 52b0 	eor.w	r2, r2, r0, ror #22
20026600:	4422      	add	r2, r4
20026602:	ea4f 44f5 	mov.w	r4, r5, ror #19
20026606:	ea84 4475 	eor.w	r4, r4, r5, ror #17
2002660a:	ea84 2495 	eor.w	r4, r4, r5, lsr #10
2002660e:	f8da 5018 	ldr.w	r5, [sl, #24]
20026612:	f85a ec08 	ldr.w	lr, [sl, #-8]
20026616:	4465      	add	r5, ip
20026618:	4425      	add	r5, r4
2002661a:	ea4f 44be 	mov.w	r4, lr, ror #18
2002661e:	ea84 14fe 	eor.w	r4, r4, lr, ror #7
20026622:	ea84 04de 	eor.w	r4, r4, lr, lsr #3
20026626:	4425      	add	r5, r4
20026628:	9c02      	ldr	r4, [sp, #8]
2002662a:	443a      	add	r2, r7
2002662c:	ea84 0709 	eor.w	r7, r4, r9
20026630:	ea07 0708 	and.w	r7, r7, r8
20026634:	ea87 0c04 	eor.w	ip, r7, r4
20026638:	9c00      	ldr	r4, [sp, #0]
2002663a:	9f01      	ldr	r7, [sp, #4]
2002663c:	6d64      	ldr	r4, [r4, #84]	@ 0x54
2002663e:	ea00 0b02 	and.w	fp, r0, r2
20026642:	442c      	add	r4, r5
20026644:	443c      	add	r4, r7
20026646:	eb0c 0704 	add.w	r7, ip, r4
2002664a:	ea4f 24f8 	mov.w	r4, r8, ror #11
2002664e:	ea84 14b8 	eor.w	r4, r4, r8, ror #6
20026652:	ea84 6478 	eor.w	r4, r4, r8, ror #25
20026656:	443c      	add	r4, r7
20026658:	191f      	adds	r7, r3, r4
2002665a:	ea40 0c02 	orr.w	ip, r0, r2
2002665e:	ea4f 3372 	mov.w	r3, r2, ror #13
20026662:	ea0c 0c01 	and.w	ip, ip, r1
20026666:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
2002666a:	ea4c 0c0b 	orr.w	ip, ip, fp
2002666e:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
20026672:	4463      	add	r3, ip
20026674:	4423      	add	r3, r4
20026676:	ea4f 44f6 	mov.w	r4, r6, ror #19
2002667a:	ea84 4476 	eor.w	r4, r4, r6, ror #17
2002667e:	ea84 2496 	eor.w	r4, r4, r6, lsr #10
20026682:	f8da 601c 	ldr.w	r6, [sl, #28]
20026686:	f85a cc04 	ldr.w	ip, [sl, #-4]
2002668a:	4476      	add	r6, lr
2002668c:	4426      	add	r6, r4
2002668e:	ea4f 44bc 	mov.w	r4, ip, ror #18
20026692:	ea84 14fc 	eor.w	r4, r4, ip, ror #7
20026696:	ea84 04dc 	eor.w	r4, r4, ip, lsr #3
2002669a:	eb06 0b04 	add.w	fp, r6, r4
2002669e:	9c00      	ldr	r4, [sp, #0]
200266a0:	9e02      	ldr	r6, [sp, #8]
200266a2:	6da4      	ldr	r4, [r4, #88]	@ 0x58
200266a4:	ea89 0e08 	eor.w	lr, r9, r8
200266a8:	445c      	add	r4, fp
200266aa:	4434      	add	r4, r6
200266ac:	ea0e 0e07 	and.w	lr, lr, r7
200266b0:	ea4f 26f7 	mov.w	r6, r7, ror #11
200266b4:	ea8e 0e09 	eor.w	lr, lr, r9
200266b8:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
200266bc:	4474      	add	r4, lr
200266be:	ea86 6677 	eor.w	r6, r6, r7, ror #25
200266c2:	4434      	add	r4, r6
200266c4:	eb01 0e04 	add.w	lr, r1, r4
200266c8:	ea42 0603 	orr.w	r6, r2, r3
200266cc:	ea4f 3173 	mov.w	r1, r3, ror #13
200266d0:	f8ca b038 	str.w	fp, [sl, #56]	@ 0x38
200266d4:	4006      	ands	r6, r0
200266d6:	ea02 0b03 	and.w	fp, r2, r3
200266da:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
200266de:	ea46 060b 	orr.w	r6, r6, fp
200266e2:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
200266e6:	4431      	add	r1, r6
200266e8:	190e      	adds	r6, r1, r4
200266ea:	ea4f 41f5 	mov.w	r1, r5, ror #19
200266ee:	ea81 4175 	eor.w	r1, r1, r5, ror #17
200266f2:	f8ca 5034 	str.w	r5, [sl, #52]	@ 0x34
200266f6:	ea81 2195 	eor.w	r1, r1, r5, lsr #10
200266fa:	9d03      	ldr	r5, [sp, #12]
200266fc:	f8da 4000 	ldr.w	r4, [sl]
20026700:	4465      	add	r5, ip
20026702:	4429      	add	r1, r5
20026704:	ea4f 45b4 	mov.w	r5, r4, ror #18
20026708:	ea85 15f4 	eor.w	r5, r5, r4, ror #7
2002670c:	ea85 05d4 	eor.w	r5, r5, r4, lsr #3
20026710:	194c      	adds	r4, r1, r5
20026712:	9900      	ldr	r1, [sp, #0]
20026714:	ea88 0507 	eor.w	r5, r8, r7
20026718:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
2002671a:	ea05 050e 	and.w	r5, r5, lr
2002671e:	4421      	add	r1, r4
20026720:	4449      	add	r1, r9
20026722:	ea85 0508 	eor.w	r5, r5, r8
20026726:	440d      	add	r5, r1
20026728:	ea4f 21fe 	mov.w	r1, lr, ror #11
2002672c:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20026730:	ea81 617e 	eor.w	r1, r1, lr, ror #25
20026734:	4429      	add	r1, r5
20026736:	f8ca 403c 	str.w	r4, [sl, #60]	@ 0x3c
2002673a:	eb00 0b01 	add.w	fp, r0, r1
2002673e:	ea43 0406 	orr.w	r4, r3, r6
20026742:	ea4f 3076 	mov.w	r0, r6, ror #13
20026746:	ea80 00b6 	eor.w	r0, r0, r6, ror #2
2002674a:	4014      	ands	r4, r2
2002674c:	ea03 0506 	and.w	r5, r3, r6
20026750:	ea80 50b6 	eor.w	r0, r0, r6, ror #22
20026754:	432c      	orrs	r4, r5
20026756:	4420      	add	r0, r4
20026758:	eb00 0901 	add.w	r9, r0, r1
2002675c:	9900      	ldr	r1, [sp, #0]
2002675e:	3120      	adds	r1, #32
20026760:	9100      	str	r1, [sp, #0]
20026762:	9905      	ldr	r1, [sp, #20]
20026764:	4551      	cmp	r1, sl
20026766:	f47f ae25 	bne.w	200263b4 <mbedtls_sha256_process+0x2b4>
2002676a:	9308      	str	r3, [sp, #32]
2002676c:	9b04      	ldr	r3, [sp, #16]
2002676e:	a906      	add	r1, sp, #24
20026770:	60ca      	str	r2, [r1, #12]
20026772:	f8c1 801c 	str.w	r8, [r1, #28]
20026776:	1d1a      	adds	r2, r3, #4
20026778:	618f      	str	r7, [r1, #24]
2002677a:	3324      	adds	r3, #36	@ 0x24
2002677c:	f8c1 e014 	str.w	lr, [r1, #20]
20026780:	604e      	str	r6, [r1, #4]
20026782:	f8c1 b010 	str.w	fp, [r1, #16]
20026786:	f8c1 9000 	str.w	r9, [r1]
2002678a:	f852 0f04 	ldr.w	r0, [r2, #4]!
2002678e:	f851 4b04 	ldr.w	r4, [r1], #4
20026792:	4293      	cmp	r3, r2
20026794:	4420      	add	r0, r4
20026796:	6010      	str	r0, [r2, #0]
20026798:	d1f7      	bne.n	2002678a <mbedtls_sha256_process+0x68a>
2002679a:	b04f      	add	sp, #316	@ 0x13c
2002679c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

200267a0 <mbedtls_sha256_update.part.0>:
200267a0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200267a4:	6803      	ldr	r3, [r0, #0]
200267a6:	4605      	mov	r5, r0
200267a8:	f003 073f 	and.w	r7, r3, #63	@ 0x3f
200267ac:	189b      	adds	r3, r3, r2
200267ae:	6003      	str	r3, [r0, #0]
200267b0:	bf28      	it	cs
200267b2:	6843      	ldrcs	r3, [r0, #4]
200267b4:	460e      	mov	r6, r1
200267b6:	bf28      	it	cs
200267b8:	3301      	addcs	r3, #1
200267ba:	4614      	mov	r4, r2
200267bc:	bf28      	it	cs
200267be:	6043      	strcs	r3, [r0, #4]
200267c0:	b197      	cbz	r7, 200267e8 <mbedtls_sha256_update.part.0+0x48>
200267c2:	f1c7 0940 	rsb	r9, r7, #64	@ 0x40
200267c6:	4591      	cmp	r9, r2
200267c8:	d80e      	bhi.n	200267e8 <mbedtls_sha256_update.part.0+0x48>
200267ca:	f100 0828 	add.w	r8, r0, #40	@ 0x28
200267ce:	464a      	mov	r2, r9
200267d0:	eb08 0007 	add.w	r0, r8, r7
200267d4:	f004 f8f8 	bl	2002a9c8 <memcpy>
200267d8:	3c40      	subs	r4, #64	@ 0x40
200267da:	4641      	mov	r1, r8
200267dc:	4628      	mov	r0, r5
200267de:	443c      	add	r4, r7
200267e0:	f7ff fc8e 	bl	20026100 <mbedtls_sha256_process>
200267e4:	2700      	movs	r7, #0
200267e6:	444e      	add	r6, r9
200267e8:	46a0      	mov	r8, r4
200267ea:	eb04 0906 	add.w	r9, r4, r6
200267ee:	e004      	b.n	200267fa <mbedtls_sha256_update.part.0+0x5a>
200267f0:	4628      	mov	r0, r5
200267f2:	f7ff fc85 	bl	20026100 <mbedtls_sha256_process>
200267f6:	f1a8 0840 	sub.w	r8, r8, #64	@ 0x40
200267fa:	f1b8 0f3f 	cmp.w	r8, #63	@ 0x3f
200267fe:	eba9 0108 	sub.w	r1, r9, r8
20026802:	d8f5      	bhi.n	200267f0 <mbedtls_sha256_update.part.0+0x50>
20026804:	f06f 033f 	mvn.w	r3, #63	@ 0x3f
20026808:	09a1      	lsrs	r1, r4, #6
2002680a:	4359      	muls	r1, r3
2002680c:	1862      	adds	r2, r4, r1
2002680e:	d007      	beq.n	20026820 <mbedtls_sha256_update.part.0+0x80>
20026810:	f105 0028 	add.w	r0, r5, #40	@ 0x28
20026814:	1a71      	subs	r1, r6, r1
20026816:	4438      	add	r0, r7
20026818:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002681c:	f004 b8d4 	b.w	2002a9c8 <memcpy>
20026820:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

20026824 <mbedtls_sha256_update>:
20026824:	b10a      	cbz	r2, 2002682a <mbedtls_sha256_update+0x6>
20026826:	f7ff bfbb 	b.w	200267a0 <mbedtls_sha256_update.part.0>
2002682a:	4770      	bx	lr

2002682c <mbedtls_sha256_finish>:
2002682c:	b537      	push	{r0, r1, r2, r4, r5, lr}
2002682e:	4604      	mov	r4, r0
20026830:	460d      	mov	r5, r1
20026832:	e9d0 2100 	ldrd	r2, r1, [r0]
20026836:	0f53      	lsrs	r3, r2, #29
20026838:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
2002683c:	ba1b      	rev	r3, r3
2002683e:	9300      	str	r3, [sp, #0]
20026840:	00d3      	lsls	r3, r2, #3
20026842:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
20026846:	2a37      	cmp	r2, #55	@ 0x37
20026848:	ba1b      	rev	r3, r3
2002684a:	bf94      	ite	ls
2002684c:	f1c2 0238 	rsbls	r2, r2, #56	@ 0x38
20026850:	f1c2 0278 	rsbhi	r2, r2, #120	@ 0x78
20026854:	492b      	ldr	r1, [pc, #172]	@ (20026904 <mbedtls_sha256_finish+0xd8>)
20026856:	9301      	str	r3, [sp, #4]
20026858:	f7ff ffe4 	bl	20026824 <mbedtls_sha256_update>
2002685c:	2208      	movs	r2, #8
2002685e:	4669      	mov	r1, sp
20026860:	4620      	mov	r0, r4
20026862:	f7ff ff9d 	bl	200267a0 <mbedtls_sha256_update.part.0>
20026866:	7ae3      	ldrb	r3, [r4, #11]
20026868:	702b      	strb	r3, [r5, #0]
2002686a:	8963      	ldrh	r3, [r4, #10]
2002686c:	706b      	strb	r3, [r5, #1]
2002686e:	68a3      	ldr	r3, [r4, #8]
20026870:	0a1b      	lsrs	r3, r3, #8
20026872:	70ab      	strb	r3, [r5, #2]
20026874:	68a3      	ldr	r3, [r4, #8]
20026876:	70eb      	strb	r3, [r5, #3]
20026878:	7be3      	ldrb	r3, [r4, #15]
2002687a:	712b      	strb	r3, [r5, #4]
2002687c:	89e3      	ldrh	r3, [r4, #14]
2002687e:	716b      	strb	r3, [r5, #5]
20026880:	68e3      	ldr	r3, [r4, #12]
20026882:	0a1b      	lsrs	r3, r3, #8
20026884:	71ab      	strb	r3, [r5, #6]
20026886:	68e3      	ldr	r3, [r4, #12]
20026888:	71eb      	strb	r3, [r5, #7]
2002688a:	7ce3      	ldrb	r3, [r4, #19]
2002688c:	722b      	strb	r3, [r5, #8]
2002688e:	8a63      	ldrh	r3, [r4, #18]
20026890:	726b      	strb	r3, [r5, #9]
20026892:	6923      	ldr	r3, [r4, #16]
20026894:	0a1b      	lsrs	r3, r3, #8
20026896:	72ab      	strb	r3, [r5, #10]
20026898:	6923      	ldr	r3, [r4, #16]
2002689a:	72eb      	strb	r3, [r5, #11]
2002689c:	7de3      	ldrb	r3, [r4, #23]
2002689e:	732b      	strb	r3, [r5, #12]
200268a0:	8ae3      	ldrh	r3, [r4, #22]
200268a2:	736b      	strb	r3, [r5, #13]
200268a4:	6963      	ldr	r3, [r4, #20]
200268a6:	0a1b      	lsrs	r3, r3, #8
200268a8:	73ab      	strb	r3, [r5, #14]
200268aa:	6963      	ldr	r3, [r4, #20]
200268ac:	73eb      	strb	r3, [r5, #15]
200268ae:	7ee3      	ldrb	r3, [r4, #27]
200268b0:	742b      	strb	r3, [r5, #16]
200268b2:	8b63      	ldrh	r3, [r4, #26]
200268b4:	746b      	strb	r3, [r5, #17]
200268b6:	69a3      	ldr	r3, [r4, #24]
200268b8:	0a1b      	lsrs	r3, r3, #8
200268ba:	74ab      	strb	r3, [r5, #18]
200268bc:	69a3      	ldr	r3, [r4, #24]
200268be:	74eb      	strb	r3, [r5, #19]
200268c0:	7fe3      	ldrb	r3, [r4, #31]
200268c2:	752b      	strb	r3, [r5, #20]
200268c4:	8be3      	ldrh	r3, [r4, #30]
200268c6:	756b      	strb	r3, [r5, #21]
200268c8:	69e3      	ldr	r3, [r4, #28]
200268ca:	0a1b      	lsrs	r3, r3, #8
200268cc:	75ab      	strb	r3, [r5, #22]
200268ce:	69e3      	ldr	r3, [r4, #28]
200268d0:	75eb      	strb	r3, [r5, #23]
200268d2:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200268d6:	762b      	strb	r3, [r5, #24]
200268d8:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
200268da:	766b      	strb	r3, [r5, #25]
200268dc:	6a23      	ldr	r3, [r4, #32]
200268de:	0a1b      	lsrs	r3, r3, #8
200268e0:	76ab      	strb	r3, [r5, #26]
200268e2:	6a23      	ldr	r3, [r4, #32]
200268e4:	76eb      	strb	r3, [r5, #27]
200268e6:	6ea3      	ldr	r3, [r4, #104]	@ 0x68
200268e8:	b94b      	cbnz	r3, 200268fe <mbedtls_sha256_finish+0xd2>
200268ea:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200268ee:	772b      	strb	r3, [r5, #28]
200268f0:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
200268f2:	776b      	strb	r3, [r5, #29]
200268f4:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200268f6:	0a1b      	lsrs	r3, r3, #8
200268f8:	77ab      	strb	r3, [r5, #30]
200268fa:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200268fc:	77eb      	strb	r3, [r5, #31]
200268fe:	b003      	add	sp, #12
20026900:	bd30      	pop	{r4, r5, pc}
20026902:	bf00      	nop
20026904:	2002bedc 	.word	0x2002bedc

20026908 <mbedtls_sha256>:
20026908:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002690c:	461d      	mov	r5, r3
2002690e:	b09c      	sub	sp, #112	@ 0x70
20026910:	4607      	mov	r7, r0
20026912:	a801      	add	r0, sp, #4
20026914:	4688      	mov	r8, r1
20026916:	4616      	mov	r6, r2
20026918:	f7ff fb97 	bl	2002604a <mbedtls_sha256_init>
2002691c:	b355      	cbz	r5, 20026974 <mbedtls_sha256+0x6c>
2002691e:	f8df a090 	ldr.w	sl, [pc, #144]	@ 200269b0 <mbedtls_sha256+0xa8>
20026922:	f8df 9090 	ldr.w	r9, [pc, #144]	@ 200269b4 <mbedtls_sha256+0xac>
20026926:	f8df e090 	ldr.w	lr, [pc, #144]	@ 200269b8 <mbedtls_sha256+0xb0>
2002692a:	f8df c090 	ldr.w	ip, [pc, #144]	@ 200269bc <mbedtls_sha256+0xb4>
2002692e:	4818      	ldr	r0, [pc, #96]	@ (20026990 <mbedtls_sha256+0x88>)
20026930:	4918      	ldr	r1, [pc, #96]	@ (20026994 <mbedtls_sha256+0x8c>)
20026932:	4a19      	ldr	r2, [pc, #100]	@ (20026998 <mbedtls_sha256+0x90>)
20026934:	4b19      	ldr	r3, [pc, #100]	@ (2002699c <mbedtls_sha256+0x94>)
20026936:	2400      	movs	r4, #0
20026938:	e9cd 2309 	strd	r2, r3, [sp, #36]	@ 0x24
2002693c:	e9cd 0107 	strd	r0, r1, [sp, #28]
20026940:	4642      	mov	r2, r8
20026942:	4639      	mov	r1, r7
20026944:	a801      	add	r0, sp, #4
20026946:	e9cd ec05 	strd	lr, ip, [sp, #20]
2002694a:	e9cd 4401 	strd	r4, r4, [sp, #4]
2002694e:	e9cd a903 	strd	sl, r9, [sp, #12]
20026952:	951b      	str	r5, [sp, #108]	@ 0x6c
20026954:	f7ff ff66 	bl	20026824 <mbedtls_sha256_update>
20026958:	4631      	mov	r1, r6
2002695a:	a801      	add	r0, sp, #4
2002695c:	f7ff ff66 	bl	2002682c <mbedtls_sha256_finish>
20026960:	4623      	mov	r3, r4
20026962:	4622      	mov	r2, r4
20026964:	a901      	add	r1, sp, #4
20026966:	54ca      	strb	r2, [r1, r3]
20026968:	3301      	adds	r3, #1
2002696a:	2b6c      	cmp	r3, #108	@ 0x6c
2002696c:	d1fa      	bne.n	20026964 <mbedtls_sha256+0x5c>
2002696e:	b01c      	add	sp, #112	@ 0x70
20026970:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20026974:	f8df a048 	ldr.w	sl, [pc, #72]	@ 200269c0 <mbedtls_sha256+0xb8>
20026978:	f8df 9048 	ldr.w	r9, [pc, #72]	@ 200269c4 <mbedtls_sha256+0xbc>
2002697c:	f8df e048 	ldr.w	lr, [pc, #72]	@ 200269c8 <mbedtls_sha256+0xc0>
20026980:	f8df c048 	ldr.w	ip, [pc, #72]	@ 200269cc <mbedtls_sha256+0xc4>
20026984:	4806      	ldr	r0, [pc, #24]	@ (200269a0 <mbedtls_sha256+0x98>)
20026986:	4907      	ldr	r1, [pc, #28]	@ (200269a4 <mbedtls_sha256+0x9c>)
20026988:	4a07      	ldr	r2, [pc, #28]	@ (200269a8 <mbedtls_sha256+0xa0>)
2002698a:	4b08      	ldr	r3, [pc, #32]	@ (200269ac <mbedtls_sha256+0xa4>)
2002698c:	e7d3      	b.n	20026936 <mbedtls_sha256+0x2e>
2002698e:	bf00      	nop
20026990:	ffc00b31 	.word	0xffc00b31
20026994:	68581511 	.word	0x68581511
20026998:	64f98fa7 	.word	0x64f98fa7
2002699c:	befa4fa4 	.word	0xbefa4fa4
200269a0:	510e527f 	.word	0x510e527f
200269a4:	9b05688c 	.word	0x9b05688c
200269a8:	1f83d9ab 	.word	0x1f83d9ab
200269ac:	5be0cd19 	.word	0x5be0cd19
200269b0:	c1059ed8 	.word	0xc1059ed8
200269b4:	367cd507 	.word	0x367cd507
200269b8:	3070dd17 	.word	0x3070dd17
200269bc:	f70e5939 	.word	0xf70e5939
200269c0:	6a09e667 	.word	0x6a09e667
200269c4:	bb67ae85 	.word	0xbb67ae85
200269c8:	3c6ef372 	.word	0x3c6ef372
200269cc:	a54ff53a 	.word	0xa54ff53a

200269d0 <mbedtls_sha512_init>:
200269d0:	22d8      	movs	r2, #216	@ 0xd8
200269d2:	2100      	movs	r1, #0
200269d4:	f003 bfde 	b.w	2002a994 <memset>

200269d8 <mbedtls_sha512_free>:
200269d8:	b138      	cbz	r0, 200269ea <mbedtls_sha512_free+0x12>
200269da:	2100      	movs	r1, #0
200269dc:	f100 03d8 	add.w	r3, r0, #216	@ 0xd8
200269e0:	4602      	mov	r2, r0
200269e2:	3001      	adds	r0, #1
200269e4:	4298      	cmp	r0, r3
200269e6:	7011      	strb	r1, [r2, #0]
200269e8:	d1fa      	bne.n	200269e0 <mbedtls_sha512_free+0x8>
200269ea:	4770      	bx	lr

200269ec <mbedtls_sha512_clone>:
200269ec:	b508      	push	{r3, lr}
200269ee:	22d8      	movs	r2, #216	@ 0xd8
200269f0:	f003 ffea 	bl	2002a9c8 <memcpy>
200269f4:	bd08      	pop	{r3, pc}
	...

200269f8 <mbedtls_sha512_starts>:
200269f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200269fc:	b381      	cbz	r1, 20026a60 <mbedtls_sha512_starts+0x68>
200269fe:	f20f 0bc8 	addw	fp, pc, #200	@ 0xc8
20026a02:	e9db ab00 	ldrd	sl, fp, [fp]
20026a06:	f20f 09c8 	addw	r9, pc, #200	@ 0xc8
20026a0a:	e9d9 8900 	ldrd	r8, r9, [r9]
20026a0e:	a732      	add	r7, pc, #200	@ (adr r7, 20026ad8 <mbedtls_sha512_starts+0xe0>)
20026a10:	e9d7 6700 	ldrd	r6, r7, [r7]
20026a14:	a532      	add	r5, pc, #200	@ (adr r5, 20026ae0 <mbedtls_sha512_starts+0xe8>)
20026a16:	e9d5 4500 	ldrd	r4, r5, [r5]
20026a1a:	a333      	add	r3, pc, #204	@ (adr r3, 20026ae8 <mbedtls_sha512_starts+0xf0>)
20026a1c:	e9d3 2300 	ldrd	r2, r3, [r3]
20026a20:	ed9f 5b1b 	vldr	d5, [pc, #108]	@ 20026a90 <mbedtls_sha512_starts+0x98>
20026a24:	ed9f 6b1c 	vldr	d6, [pc, #112]	@ 20026a98 <mbedtls_sha512_starts+0xa0>
20026a28:	ed9f 7b1d 	vldr	d7, [pc, #116]	@ 20026aa0 <mbedtls_sha512_starts+0xa8>
20026a2c:	ed9f 4b1e 	vldr	d4, [pc, #120]	@ 20026aa8 <mbedtls_sha512_starts+0xb0>
20026a30:	ed80 5b04 	vstr	d5, [r0, #16]
20026a34:	ed80 4b00 	vstr	d4, [r0]
20026a38:	ed80 4b02 	vstr	d4, [r0, #8]
20026a3c:	ed80 6b06 	vstr	d6, [r0, #24]
20026a40:	ed80 7b08 	vstr	d7, [r0, #32]
20026a44:	e9c0 ab0a 	strd	sl, fp, [r0, #40]	@ 0x28
20026a48:	e9c0 890c 	strd	r8, r9, [r0, #48]	@ 0x30
20026a4c:	e9c0 670e 	strd	r6, r7, [r0, #56]	@ 0x38
20026a50:	e9c0 4510 	strd	r4, r5, [r0, #64]	@ 0x40
20026a54:	e9c0 2312 	strd	r2, r3, [r0, #72]	@ 0x48
20026a58:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
20026a5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20026a60:	ed9f 5b13 	vldr	d5, [pc, #76]	@ 20026ab0 <mbedtls_sha512_starts+0xb8>
20026a64:	f20f 0b88 	addw	fp, pc, #136	@ 0x88
20026a68:	e9db ab00 	ldrd	sl, fp, [fp]
20026a6c:	f20f 0988 	addw	r9, pc, #136	@ 0x88
20026a70:	e9d9 8900 	ldrd	r8, r9, [r9]
20026a74:	a722      	add	r7, pc, #136	@ (adr r7, 20026b00 <mbedtls_sha512_starts+0x108>)
20026a76:	e9d7 6700 	ldrd	r6, r7, [r7]
20026a7a:	a523      	add	r5, pc, #140	@ (adr r5, 20026b08 <mbedtls_sha512_starts+0x110>)
20026a7c:	e9d5 4500 	ldrd	r4, r5, [r5]
20026a80:	a323      	add	r3, pc, #140	@ (adr r3, 20026b10 <mbedtls_sha512_starts+0x118>)
20026a82:	e9d3 2300 	ldrd	r2, r3, [r3]
20026a86:	ed9f 6b0c 	vldr	d6, [pc, #48]	@ 20026ab8 <mbedtls_sha512_starts+0xc0>
20026a8a:	ed9f 7b0d 	vldr	d7, [pc, #52]	@ 20026ac0 <mbedtls_sha512_starts+0xc8>
20026a8e:	e7cd      	b.n	20026a2c <mbedtls_sha512_starts+0x34>
20026a90:	c1059ed8 	.word	0xc1059ed8
20026a94:	cbbb9d5d 	.word	0xcbbb9d5d
20026a98:	367cd507 	.word	0x367cd507
20026a9c:	629a292a 	.word	0x629a292a
20026aa0:	3070dd17 	.word	0x3070dd17
20026aa4:	9159015a 	.word	0x9159015a
	...
20026ab0:	f3bcc908 	.word	0xf3bcc908
20026ab4:	6a09e667 	.word	0x6a09e667
20026ab8:	84caa73b 	.word	0x84caa73b
20026abc:	bb67ae85 	.word	0xbb67ae85
20026ac0:	fe94f82b 	.word	0xfe94f82b
20026ac4:	3c6ef372 	.word	0x3c6ef372
20026ac8:	f70e5939 	.word	0xf70e5939
20026acc:	152fecd8 	.word	0x152fecd8
20026ad0:	ffc00b31 	.word	0xffc00b31
20026ad4:	67332667 	.word	0x67332667
20026ad8:	68581511 	.word	0x68581511
20026adc:	8eb44a87 	.word	0x8eb44a87
20026ae0:	64f98fa7 	.word	0x64f98fa7
20026ae4:	db0c2e0d 	.word	0xdb0c2e0d
20026ae8:	befa4fa4 	.word	0xbefa4fa4
20026aec:	47b5481d 	.word	0x47b5481d
20026af0:	5f1d36f1 	.word	0x5f1d36f1
20026af4:	a54ff53a 	.word	0xa54ff53a
20026af8:	ade682d1 	.word	0xade682d1
20026afc:	510e527f 	.word	0x510e527f
20026b00:	2b3e6c1f 	.word	0x2b3e6c1f
20026b04:	9b05688c 	.word	0x9b05688c
20026b08:	fb41bd6b 	.word	0xfb41bd6b
20026b0c:	1f83d9ab 	.word	0x1f83d9ab
20026b10:	137e2179 	.word	0x137e2179
20026b14:	5be0cd19 	.word	0x5be0cd19

20026b18 <mbedtls_sha512_process>:
20026b18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20026b1c:	f5ad 7d3f 	sub.w	sp, sp, #764	@ 0x2fc
20026b20:	4682      	mov	sl, r0
20026b22:	a81e      	add	r0, sp, #120	@ 0x78
20026b24:	4604      	mov	r4, r0
20026b26:	f101 0580 	add.w	r5, r1, #128	@ 0x80
20026b2a:	784b      	ldrb	r3, [r1, #1]
20026b2c:	780a      	ldrb	r2, [r1, #0]
20026b2e:	041b      	lsls	r3, r3, #16
20026b30:	790f      	ldrb	r7, [r1, #4]
20026b32:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
20026b36:	79ca      	ldrb	r2, [r1, #7]
20026b38:	788e      	ldrb	r6, [r1, #2]
20026b3a:	ea42 6207 	orr.w	r2, r2, r7, lsl #24
20026b3e:	794f      	ldrb	r7, [r1, #5]
20026b40:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
20026b44:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
20026b48:	78ce      	ldrb	r6, [r1, #3]
20026b4a:	798f      	ldrb	r7, [r1, #6]
20026b4c:	3108      	adds	r1, #8
20026b4e:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
20026b52:	4333      	orrs	r3, r6
20026b54:	428d      	cmp	r5, r1
20026b56:	e9c4 2300 	strd	r2, r3, [r4]
20026b5a:	f104 0408 	add.w	r4, r4, #8
20026b5e:	d1e4      	bne.n	20026b2a <mbedtls_sha512_process+0x12>
20026b60:	4601      	mov	r1, r0
20026b62:	2610      	movs	r6, #16
20026b64:	e9d1 4c1c 	ldrd	r4, ip, [r1, #112]	@ 0x70
20026b68:	e9d1 2502 	ldrd	r2, r5, [r1, #8]
20026b6c:	468e      	mov	lr, r1
20026b6e:	0ce3      	lsrs	r3, r4, #19
20026b70:	ea4f 47dc 	mov.w	r7, ip, lsr #19
20026b74:	ea4f 09c4 	mov.w	r9, r4, lsl #3
20026b78:	ea4f 08cc 	mov.w	r8, ip, lsl #3
20026b7c:	ea48 7854 	orr.w	r8, r8, r4, lsr #29
20026b80:	ea43 334c 	orr.w	r3, r3, ip, lsl #13
20026b84:	ea47 3744 	orr.w	r7, r7, r4, lsl #13
20026b88:	ea49 795c 	orr.w	r9, r9, ip, lsr #29
20026b8c:	09a4      	lsrs	r4, r4, #6
20026b8e:	ea87 0708 	eor.w	r7, r7, r8
20026b92:	ea44 648c 	orr.w	r4, r4, ip, lsl #26
20026b96:	ea83 0309 	eor.w	r3, r3, r9
20026b9a:	4063      	eors	r3, r4
20026b9c:	ea87 179c 	eor.w	r7, r7, ip, lsr #6
20026ba0:	e9de 4c12 	ldrd	r4, ip, [lr, #72]	@ 0x48
20026ba4:	e9de 8e00 	ldrd	r8, lr, [lr]
20026ba8:	eb14 0408 	adds.w	r4, r4, r8
20026bac:	eb4c 0c0e 	adc.w	ip, ip, lr
20026bb0:	191b      	adds	r3, r3, r4
20026bb2:	eb47 070c 	adc.w	r7, r7, ip
20026bb6:	0854      	lsrs	r4, r2, #1
20026bb8:	ea4f 2812 	mov.w	r8, r2, lsr #8
20026bbc:	ea4f 0c55 	mov.w	ip, r5, lsr #1
20026bc0:	ea4f 2e15 	mov.w	lr, r5, lsr #8
20026bc4:	ea4c 7cc2 	orr.w	ip, ip, r2, lsl #31
20026bc8:	ea4e 6e02 	orr.w	lr, lr, r2, lsl #24
20026bcc:	ea44 74c5 	orr.w	r4, r4, r5, lsl #31
20026bd0:	ea48 6805 	orr.w	r8, r8, r5, lsl #24
20026bd4:	09d2      	lsrs	r2, r2, #7
20026bd6:	ea84 0408 	eor.w	r4, r4, r8
20026bda:	ea42 6245 	orr.w	r2, r2, r5, lsl #25
20026bde:	4062      	eors	r2, r4
20026be0:	ea8c 0c0e 	eor.w	ip, ip, lr
20026be4:	189b      	adds	r3, r3, r2
20026be6:	ea8c 14d5 	eor.w	r4, ip, r5, lsr #7
20026bea:	f106 0601 	add.w	r6, r6, #1
20026bee:	eb47 0704 	adc.w	r7, r7, r4
20026bf2:	3108      	adds	r1, #8
20026bf4:	2e50      	cmp	r6, #80	@ 0x50
20026bf6:	e9c1 371e 	strd	r3, r7, [r1, #120]	@ 0x78
20026bfa:	d1b3      	bne.n	20026b64 <mbedtls_sha512_process+0x4c>
20026bfc:	f8da 3010 	ldr.w	r3, [sl, #16]
20026c00:	930e      	str	r3, [sp, #56]	@ 0x38
20026c02:	f8da 3014 	ldr.w	r3, [sl, #20]
20026c06:	930f      	str	r3, [sp, #60]	@ 0x3c
20026c08:	f8da 3018 	ldr.w	r3, [sl, #24]
20026c0c:	9310      	str	r3, [sp, #64]	@ 0x40
20026c0e:	f8da 301c 	ldr.w	r3, [sl, #28]
20026c12:	9311      	str	r3, [sp, #68]	@ 0x44
20026c14:	f8da 3020 	ldr.w	r3, [sl, #32]
20026c18:	9312      	str	r3, [sp, #72]	@ 0x48
20026c1a:	f8da 3024 	ldr.w	r3, [sl, #36]	@ 0x24
20026c1e:	9313      	str	r3, [sp, #76]	@ 0x4c
20026c20:	f8da 3028 	ldr.w	r3, [sl, #40]	@ 0x28
20026c24:	9314      	str	r3, [sp, #80]	@ 0x50
20026c26:	f8da 302c 	ldr.w	r3, [sl, #44]	@ 0x2c
20026c2a:	9315      	str	r3, [sp, #84]	@ 0x54
20026c2c:	f8da 3030 	ldr.w	r3, [sl, #48]	@ 0x30
20026c30:	9316      	str	r3, [sp, #88]	@ 0x58
20026c32:	f8da 3034 	ldr.w	r3, [sl, #52]	@ 0x34
20026c36:	9317      	str	r3, [sp, #92]	@ 0x5c
20026c38:	f8da 3038 	ldr.w	r3, [sl, #56]	@ 0x38
20026c3c:	9318      	str	r3, [sp, #96]	@ 0x60
20026c3e:	f8da 303c 	ldr.w	r3, [sl, #60]	@ 0x3c
20026c42:	9319      	str	r3, [sp, #100]	@ 0x64
20026c44:	f8da 3040 	ldr.w	r3, [sl, #64]	@ 0x40
20026c48:	931a      	str	r3, [sp, #104]	@ 0x68
20026c4a:	f8da 3044 	ldr.w	r3, [sl, #68]	@ 0x44
20026c4e:	931b      	str	r3, [sp, #108]	@ 0x6c
20026c50:	f8da 3048 	ldr.w	r3, [sl, #72]	@ 0x48
20026c54:	931c      	str	r3, [sp, #112]	@ 0x70
20026c56:	f8da 304c 	ldr.w	r3, [sl, #76]	@ 0x4c
20026c5a:	931d      	str	r3, [sp, #116]	@ 0x74
20026c5c:	4b0f      	ldr	r3, [pc, #60]	@ (20026c9c <mbedtls_sha512_process+0x184>)
20026c5e:	9300      	str	r3, [sp, #0]
20026c60:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
20026c62:	f8dd b054 	ldr.w	fp, [sp, #84]	@ 0x54
20026c66:	930a      	str	r3, [sp, #40]	@ 0x28
20026c68:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
20026c6a:	e9dd ce10 	ldrd	ip, lr, [sp, #64]	@ 0x40
20026c6e:	930b      	str	r3, [sp, #44]	@ 0x2c
20026c70:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20026c72:	9308      	str	r3, [sp, #32]
20026c74:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
20026c76:	9309      	str	r3, [sp, #36]	@ 0x24
20026c78:	9b18      	ldr	r3, [sp, #96]	@ 0x60
20026c7a:	9306      	str	r3, [sp, #24]
20026c7c:	9b19      	ldr	r3, [sp, #100]	@ 0x64
20026c7e:	9307      	str	r3, [sp, #28]
20026c80:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20026c82:	9304      	str	r3, [sp, #16]
20026c84:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20026c86:	9305      	str	r3, [sp, #20]
20026c88:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20026c8a:	9303      	str	r3, [sp, #12]
20026c8c:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20026c8e:	9301      	str	r3, [sp, #4]
20026c90:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
20026c92:	9302      	str	r3, [sp, #8]
20026c94:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	@ 0x38
20026c98:	e002      	b.n	20026ca0 <mbedtls_sha512_process+0x188>
20026c9a:	bf00      	nop
20026c9c:	2002c0a0 	.word	0x2002c0a0
20026ca0:	9c04      	ldr	r4, [sp, #16]
20026ca2:	9e04      	ldr	r6, [sp, #16]
20026ca4:	ea4f 3894 	mov.w	r8, r4, lsr #14
20026ca8:	9c05      	ldr	r4, [sp, #20]
20026caa:	9900      	ldr	r1, [sp, #0]
20026cac:	ea48 4884 	orr.w	r8, r8, r4, lsl #18
20026cb0:	ea4f 3994 	mov.w	r9, r4, lsr #14
20026cb4:	9c04      	ldr	r4, [sp, #16]
20026cb6:	ea49 4984 	orr.w	r9, r9, r4, lsl #18
20026cba:	0ca5      	lsrs	r5, r4, #18
20026cbc:	9c05      	ldr	r4, [sp, #20]
20026cbe:	ea45 3584 	orr.w	r5, r5, r4, lsl #14
20026cc2:	0ca4      	lsrs	r4, r4, #18
20026cc4:	ea44 3486 	orr.w	r4, r4, r6, lsl #14
20026cc8:	ea89 0904 	eor.w	r9, r9, r4
20026ccc:	9c05      	ldr	r4, [sp, #20]
20026cce:	ea88 0805 	eor.w	r8, r8, r5
20026cd2:	05f5      	lsls	r5, r6, #23
20026cd4:	ea45 2554 	orr.w	r5, r5, r4, lsr #9
20026cd8:	05e4      	lsls	r4, r4, #23
20026cda:	ea44 2456 	orr.w	r4, r4, r6, lsr #9
20026cde:	ea88 0805 	eor.w	r8, r8, r5
20026ce2:	ea89 0904 	eor.w	r9, r9, r4
20026ce6:	e9d1 5700 	ldrd	r5, r7, [r1]
20026cea:	e9d0 6400 	ldrd	r6, r4, [r0]
20026cee:	19ad      	adds	r5, r5, r6
20026cf0:	eb47 0404 	adc.w	r4, r7, r4
20026cf4:	9e06      	ldr	r6, [sp, #24]
20026cf6:	9f08      	ldr	r7, [sp, #32]
20026cf8:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026cfa:	407e      	eors	r6, r7
20026cfc:	9f07      	ldr	r7, [sp, #28]
20026cfe:	eb18 0505 	adds.w	r5, r8, r5
20026d02:	ea87 0701 	eor.w	r7, r7, r1
20026d06:	9904      	ldr	r1, [sp, #16]
20026d08:	eb49 0404 	adc.w	r4, r9, r4
20026d0c:	400e      	ands	r6, r1
20026d0e:	9905      	ldr	r1, [sp, #20]
20026d10:	ea4f 7813 	mov.w	r8, r3, lsr #28
20026d14:	400f      	ands	r7, r1
20026d16:	9908      	ldr	r1, [sp, #32]
20026d18:	ea4f 7983 	mov.w	r9, r3, lsl #30
20026d1c:	404e      	eors	r6, r1
20026d1e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d20:	19ad      	adds	r5, r5, r6
20026d22:	ea87 0701 	eor.w	r7, r7, r1
20026d26:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026d28:	eb44 0407 	adc.w	r4, r4, r7
20026d2c:	186d      	adds	r5, r5, r1
20026d2e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026d30:	ea4f 7712 	mov.w	r7, r2, lsr #28
20026d34:	eb41 0404 	adc.w	r4, r1, r4
20026d38:	9903      	ldr	r1, [sp, #12]
20026d3a:	0796      	lsls	r6, r2, #30
20026d3c:	1949      	adds	r1, r1, r5
20026d3e:	ea46 0693 	orr.w	r6, r6, r3, lsr #2
20026d42:	ea47 1703 	orr.w	r7, r7, r3, lsl #4
20026d46:	910a      	str	r1, [sp, #40]	@ 0x28
20026d48:	ea87 0706 	eor.w	r7, r7, r6
20026d4c:	eb4b 0104 	adc.w	r1, fp, r4
20026d50:	0656      	lsls	r6, r2, #25
20026d52:	ea49 0992 	orr.w	r9, r9, r2, lsr #2
20026d56:	ea46 16d3 	orr.w	r6, r6, r3, lsr #7
20026d5a:	910b      	str	r1, [sp, #44]	@ 0x2c
20026d5c:	ea48 1802 	orr.w	r8, r8, r2, lsl #4
20026d60:	9901      	ldr	r1, [sp, #4]
20026d62:	ea88 0809 	eor.w	r8, r8, r9
20026d66:	4077      	eors	r7, r6
20026d68:	ea4f 6943 	mov.w	r9, r3, lsl #25
20026d6c:	ea43 060c 	orr.w	r6, r3, ip
20026d70:	ea49 19d2 	orr.w	r9, r9, r2, lsr #7
20026d74:	400e      	ands	r6, r1
20026d76:	9902      	ldr	r1, [sp, #8]
20026d78:	ea03 0b0c 	and.w	fp, r3, ip
20026d7c:	ea88 0809 	eor.w	r8, r8, r9
20026d80:	ea42 090e 	orr.w	r9, r2, lr
20026d84:	ea09 0901 	and.w	r9, r9, r1
20026d88:	ea46 060b 	orr.w	r6, r6, fp
20026d8c:	ea02 010e 	and.w	r1, r2, lr
20026d90:	eb18 0606 	adds.w	r6, r8, r6
20026d94:	ea49 0901 	orr.w	r9, r9, r1
20026d98:	eb47 0709 	adc.w	r7, r7, r9
20026d9c:	1971      	adds	r1, r6, r5
20026d9e:	9103      	str	r1, [sp, #12]
20026da0:	9900      	ldr	r1, [sp, #0]
20026da2:	eb44 0b07 	adc.w	fp, r4, r7
20026da6:	e9d0 6702 	ldrd	r6, r7, [r0, #8]
20026daa:	e9d1 4502 	ldrd	r4, r5, [r1, #8]
20026dae:	9908      	ldr	r1, [sp, #32]
20026db0:	19a4      	adds	r4, r4, r6
20026db2:	eb45 0507 	adc.w	r5, r5, r7
20026db6:	1864      	adds	r4, r4, r1
20026db8:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026dba:	9e06      	ldr	r6, [sp, #24]
20026dbc:	eb41 0505 	adc.w	r5, r1, r5
20026dc0:	9904      	ldr	r1, [sp, #16]
20026dc2:	ea81 0706 	eor.w	r7, r1, r6
20026dc6:	9905      	ldr	r1, [sp, #20]
20026dc8:	9e07      	ldr	r6, [sp, #28]
20026dca:	404e      	eors	r6, r1
20026dcc:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026dce:	400f      	ands	r7, r1
20026dd0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026dd2:	400e      	ands	r6, r1
20026dd4:	9906      	ldr	r1, [sp, #24]
20026dd6:	404f      	eors	r7, r1
20026dd8:	9907      	ldr	r1, [sp, #28]
20026dda:	19e4      	adds	r4, r4, r7
20026ddc:	ea86 0601 	eor.w	r6, r6, r1
20026de0:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026de2:	eb45 0506 	adc.w	r5, r5, r6
20026de6:	0b8f      	lsrs	r7, r1, #14
20026de8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026dea:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026dee:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026df2:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026df4:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026df8:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026dfc:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026dfe:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026e02:	0c8e      	lsrs	r6, r1, #18
20026e04:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e06:	ea87 0709 	eor.w	r7, r7, r9
20026e0a:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026e0e:	ea88 0806 	eor.w	r8, r8, r6
20026e12:	05ce      	lsls	r6, r1, #23
20026e14:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026e16:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026e1a:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026e1e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e20:	407e      	eors	r6, r7
20026e22:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026e26:	9901      	ldr	r1, [sp, #4]
20026e28:	19a4      	adds	r4, r4, r6
20026e2a:	ea88 0809 	eor.w	r8, r8, r9
20026e2e:	eb45 0808 	adc.w	r8, r5, r8
20026e32:	1909      	adds	r1, r1, r4
20026e34:	9108      	str	r1, [sp, #32]
20026e36:	9902      	ldr	r1, [sp, #8]
20026e38:	ea4f 761b 	mov.w	r6, fp, lsr #28
20026e3c:	eb41 0108 	adc.w	r1, r1, r8
20026e40:	9109      	str	r1, [sp, #36]	@ 0x24
20026e42:	9903      	ldr	r1, [sp, #12]
20026e44:	ea4f 758b 	mov.w	r5, fp, lsl #30
20026e48:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026e4c:	0f0f      	lsrs	r7, r1, #28
20026e4e:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026e52:	ea4f 7981 	mov.w	r9, r1, lsl #30
20026e56:	ea49 099b 	orr.w	r9, r9, fp, lsr #2
20026e5a:	ea47 170b 	orr.w	r7, r7, fp, lsl #4
20026e5e:	406e      	eors	r6, r5
20026e60:	ea4f 654b 	mov.w	r5, fp, lsl #25
20026e64:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026e68:	ea87 0709 	eor.w	r7, r7, r9
20026e6c:	ea4f 6941 	mov.w	r9, r1, lsl #25
20026e70:	ea49 19db 	orr.w	r9, r9, fp, lsr #7
20026e74:	406e      	eors	r6, r5
20026e76:	ea43 0501 	orr.w	r5, r3, r1
20026e7a:	ea87 0709 	eor.w	r7, r7, r9
20026e7e:	4019      	ands	r1, r3
20026e80:	ea42 090b 	orr.w	r9, r2, fp
20026e84:	ea05 050c 	and.w	r5, r5, ip
20026e88:	ea09 090e 	and.w	r9, r9, lr
20026e8c:	430d      	orrs	r5, r1
20026e8e:	ea02 010b 	and.w	r1, r2, fp
20026e92:	197d      	adds	r5, r7, r5
20026e94:	ea49 0901 	orr.w	r9, r9, r1
20026e98:	eb46 0609 	adc.w	r6, r6, r9
20026e9c:	1929      	adds	r1, r5, r4
20026e9e:	9101      	str	r1, [sp, #4]
20026ea0:	eb48 0106 	adc.w	r1, r8, r6
20026ea4:	9102      	str	r1, [sp, #8]
20026ea6:	9900      	ldr	r1, [sp, #0]
20026ea8:	e9d0 6704 	ldrd	r6, r7, [r0, #16]
20026eac:	e9d1 4504 	ldrd	r4, r5, [r1, #16]
20026eb0:	9906      	ldr	r1, [sp, #24]
20026eb2:	19a4      	adds	r4, r4, r6
20026eb4:	eb45 0507 	adc.w	r5, r5, r7
20026eb8:	1864      	adds	r4, r4, r1
20026eba:	9907      	ldr	r1, [sp, #28]
20026ebc:	eb41 0505 	adc.w	r5, r1, r5
20026ec0:	9904      	ldr	r1, [sp, #16]
20026ec2:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
20026ec4:	ea81 0706 	eor.w	r7, r1, r6
20026ec8:	9905      	ldr	r1, [sp, #20]
20026eca:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
20026ecc:	404e      	eors	r6, r1
20026ece:	9908      	ldr	r1, [sp, #32]
20026ed0:	400f      	ands	r7, r1
20026ed2:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026ed4:	400e      	ands	r6, r1
20026ed6:	9904      	ldr	r1, [sp, #16]
20026ed8:	404f      	eors	r7, r1
20026eda:	9905      	ldr	r1, [sp, #20]
20026edc:	19e4      	adds	r4, r4, r7
20026ede:	ea86 0601 	eor.w	r6, r6, r1
20026ee2:	9908      	ldr	r1, [sp, #32]
20026ee4:	eb45 0506 	adc.w	r5, r5, r6
20026ee8:	0b8f      	lsrs	r7, r1, #14
20026eea:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026eec:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026ef0:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026ef4:	9908      	ldr	r1, [sp, #32]
20026ef6:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026efa:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026efe:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026f00:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026f04:	0c8e      	lsrs	r6, r1, #18
20026f06:	9908      	ldr	r1, [sp, #32]
20026f08:	ea87 0709 	eor.w	r7, r7, r9
20026f0c:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026f10:	ea88 0806 	eor.w	r8, r8, r6
20026f14:	05ce      	lsls	r6, r1, #23
20026f16:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026f18:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026f1c:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026f20:	9908      	ldr	r1, [sp, #32]
20026f22:	407e      	eors	r6, r7
20026f24:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026f28:	19a4      	adds	r4, r4, r6
20026f2a:	ea88 0809 	eor.w	r8, r8, r9
20026f2e:	eb45 0808 	adc.w	r8, r5, r8
20026f32:	eb1c 0104 	adds.w	r1, ip, r4
20026f36:	9106      	str	r1, [sp, #24]
20026f38:	eb4e 0108 	adc.w	r1, lr, r8
20026f3c:	9107      	str	r1, [sp, #28]
20026f3e:	9901      	ldr	r1, [sp, #4]
20026f40:	0f0f      	lsrs	r7, r1, #28
20026f42:	9902      	ldr	r1, [sp, #8]
20026f44:	ea47 1701 	orr.w	r7, r7, r1, lsl #4
20026f48:	0f0e      	lsrs	r6, r1, #28
20026f4a:	9901      	ldr	r1, [sp, #4]
20026f4c:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026f50:	ea4f 7c81 	mov.w	ip, r1, lsl #30
20026f54:	9902      	ldr	r1, [sp, #8]
20026f56:	ea4c 0c91 	orr.w	ip, ip, r1, lsr #2
20026f5a:	078d      	lsls	r5, r1, #30
20026f5c:	9901      	ldr	r1, [sp, #4]
20026f5e:	ea87 070c 	eor.w	r7, r7, ip
20026f62:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026f66:	ea4f 6c41 	mov.w	ip, r1, lsl #25
20026f6a:	9902      	ldr	r1, [sp, #8]
20026f6c:	406e      	eors	r6, r5
20026f6e:	ea4c 1cd1 	orr.w	ip, ip, r1, lsr #7
20026f72:	064d      	lsls	r5, r1, #25
20026f74:	9901      	ldr	r1, [sp, #4]
20026f76:	ea87 070c 	eor.w	r7, r7, ip
20026f7a:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026f7e:	406e      	eors	r6, r5
20026f80:	9903      	ldr	r1, [sp, #12]
20026f82:	9d01      	ldr	r5, [sp, #4]
20026f84:	430d      	orrs	r5, r1
20026f86:	9902      	ldr	r1, [sp, #8]
20026f88:	ea4b 0c01 	orr.w	ip, fp, r1
20026f8c:	ea05 0103 	and.w	r1, r5, r3
20026f90:	910c      	str	r1, [sp, #48]	@ 0x30
20026f92:	9d01      	ldr	r5, [sp, #4]
20026f94:	9903      	ldr	r1, [sp, #12]
20026f96:	ea0c 0c02 	and.w	ip, ip, r2
20026f9a:	ea01 0905 	and.w	r9, r1, r5
20026f9e:	9902      	ldr	r1, [sp, #8]
20026fa0:	ea0b 0e01 	and.w	lr, fp, r1
20026fa4:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026fa6:	ea4c 0c0e 	orr.w	ip, ip, lr
20026faa:	ea41 0509 	orr.w	r5, r1, r9
20026fae:	9900      	ldr	r1, [sp, #0]
20026fb0:	197d      	adds	r5, r7, r5
20026fb2:	eb46 060c 	adc.w	r6, r6, ip
20026fb6:	eb15 0904 	adds.w	r9, r5, r4
20026fba:	e9d1 4506 	ldrd	r4, r5, [r1, #24]
20026fbe:	9904      	ldr	r1, [sp, #16]
20026fc0:	eb48 0806 	adc.w	r8, r8, r6
20026fc4:	e9d0 6706 	ldrd	r6, r7, [r0, #24]
20026fc8:	19a4      	adds	r4, r4, r6
20026fca:	eb45 0507 	adc.w	r5, r5, r7
20026fce:	1864      	adds	r4, r4, r1
20026fd0:	9905      	ldr	r1, [sp, #20]
20026fd2:	9e08      	ldr	r6, [sp, #32]
20026fd4:	eb41 0505 	adc.w	r5, r1, r5
20026fd8:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026fda:	ea81 0706 	eor.w	r7, r1, r6
20026fde:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026fe0:	9e09      	ldr	r6, [sp, #36]	@ 0x24
20026fe2:	404e      	eors	r6, r1
20026fe4:	9906      	ldr	r1, [sp, #24]
20026fe6:	400f      	ands	r7, r1
20026fe8:	9907      	ldr	r1, [sp, #28]
20026fea:	400e      	ands	r6, r1
20026fec:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026fee:	404f      	eors	r7, r1
20026ff0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026ff2:	19e4      	adds	r4, r4, r7
20026ff4:	ea86 0601 	eor.w	r6, r6, r1
20026ff8:	9906      	ldr	r1, [sp, #24]
20026ffa:	eb45 0506 	adc.w	r5, r5, r6
20026ffe:	ea4f 3c91 	mov.w	ip, r1, lsr #14
20027002:	9907      	ldr	r1, [sp, #28]
20027004:	ea4c 4c81 	orr.w	ip, ip, r1, lsl #18
20027008:	0b8e      	lsrs	r6, r1, #14
2002700a:	9906      	ldr	r1, [sp, #24]
2002700c:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20027010:	ea4f 4e91 	mov.w	lr, r1, lsr #18
20027014:	9907      	ldr	r1, [sp, #28]
20027016:	ea4e 3e81 	orr.w	lr, lr, r1, lsl #14
2002701a:	0c8f      	lsrs	r7, r1, #18
2002701c:	9906      	ldr	r1, [sp, #24]
2002701e:	ea8c 0c0e 	eor.w	ip, ip, lr
20027022:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027026:	407e      	eors	r6, r7
20027028:	05cf      	lsls	r7, r1, #23
2002702a:	9907      	ldr	r1, [sp, #28]
2002702c:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20027030:	ea4f 5ec1 	mov.w	lr, r1, lsl #23
20027034:	9906      	ldr	r1, [sp, #24]
20027036:	ea8c 0707 	eor.w	r7, ip, r7
2002703a:	ea4e 2e51 	orr.w	lr, lr, r1, lsr #9
2002703e:	19e4      	adds	r4, r4, r7
20027040:	ea86 060e 	eor.w	r6, r6, lr
20027044:	eb45 0606 	adc.w	r6, r5, r6
20027048:	191b      	adds	r3, r3, r4
2002704a:	930c      	str	r3, [sp, #48]	@ 0x30
2002704c:	eb42 0306 	adc.w	r3, r2, r6
20027050:	930d      	str	r3, [sp, #52]	@ 0x34
20027052:	ea4f 7218 	mov.w	r2, r8, lsr #28
20027056:	ea4f 7388 	mov.w	r3, r8, lsl #30
2002705a:	ea43 0399 	orr.w	r3, r3, r9, lsr #2
2002705e:	ea4f 7519 	mov.w	r5, r9, lsr #28
20027062:	ea42 1209 	orr.w	r2, r2, r9, lsl #4
20027066:	ea4f 7789 	mov.w	r7, r9, lsl #30
2002706a:	ea47 0798 	orr.w	r7, r7, r8, lsr #2
2002706e:	ea45 1508 	orr.w	r5, r5, r8, lsl #4
20027072:	405a      	eors	r2, r3
20027074:	ea4f 6348 	mov.w	r3, r8, lsl #25
20027078:	9902      	ldr	r1, [sp, #8]
2002707a:	ea43 13d9 	orr.w	r3, r3, r9, lsr #7
2002707e:	407d      	eors	r5, r7
20027080:	ea4f 6749 	mov.w	r7, r9, lsl #25
20027084:	ea47 17d8 	orr.w	r7, r7, r8, lsr #7
20027088:	405a      	eors	r2, r3
2002708a:	9b01      	ldr	r3, [sp, #4]
2002708c:	407d      	eors	r5, r7
2002708e:	ea41 0708 	orr.w	r7, r1, r8
20027092:	9903      	ldr	r1, [sp, #12]
20027094:	ea43 0309 	orr.w	r3, r3, r9
20027098:	400b      	ands	r3, r1
2002709a:	9901      	ldr	r1, [sp, #4]
2002709c:	ea07 070b 	and.w	r7, r7, fp
200270a0:	ea01 0e09 	and.w	lr, r1, r9
200270a4:	9902      	ldr	r1, [sp, #8]
200270a6:	ea43 030e 	orr.w	r3, r3, lr
200270aa:	ea01 0c08 	and.w	ip, r1, r8
200270ae:	ea47 070c 	orr.w	r7, r7, ip
200270b2:	18eb      	adds	r3, r5, r3
200270b4:	eb42 0207 	adc.w	r2, r2, r7
200270b8:	191b      	adds	r3, r3, r4
200270ba:	9304      	str	r3, [sp, #16]
200270bc:	eb46 0302 	adc.w	r3, r6, r2
200270c0:	9305      	str	r3, [sp, #20]
200270c2:	9b00      	ldr	r3, [sp, #0]
200270c4:	6a1b      	ldr	r3, [r3, #32]
200270c6:	9a00      	ldr	r2, [sp, #0]
200270c8:	990a      	ldr	r1, [sp, #40]	@ 0x28
200270ca:	6a52      	ldr	r2, [r2, #36]	@ 0x24
200270cc:	e9d0 4508 	ldrd	r4, r5, [r0, #32]
200270d0:	191b      	adds	r3, r3, r4
200270d2:	eb42 0205 	adc.w	r2, r2, r5
200270d6:	185b      	adds	r3, r3, r1
200270d8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200270da:	9c06      	ldr	r4, [sp, #24]
200270dc:	eb41 0202 	adc.w	r2, r1, r2
200270e0:	9908      	ldr	r1, [sp, #32]
200270e2:	ea81 0504 	eor.w	r5, r1, r4
200270e6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200270e8:	9c07      	ldr	r4, [sp, #28]
200270ea:	404c      	eors	r4, r1
200270ec:	990c      	ldr	r1, [sp, #48]	@ 0x30
200270ee:	400d      	ands	r5, r1
200270f0:	990d      	ldr	r1, [sp, #52]	@ 0x34
200270f2:	400c      	ands	r4, r1
200270f4:	9908      	ldr	r1, [sp, #32]
200270f6:	404d      	eors	r5, r1
200270f8:	9909      	ldr	r1, [sp, #36]	@ 0x24
200270fa:	195b      	adds	r3, r3, r5
200270fc:	ea84 0401 	eor.w	r4, r4, r1
20027100:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027102:	eb42 0204 	adc.w	r2, r2, r4
20027106:	0b8e      	lsrs	r6, r1, #14
20027108:	990d      	ldr	r1, [sp, #52]	@ 0x34
2002710a:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
2002710e:	0b8c      	lsrs	r4, r1, #14
20027110:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027112:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027116:	0c8f      	lsrs	r7, r1, #18
20027118:	990d      	ldr	r1, [sp, #52]	@ 0x34
2002711a:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
2002711e:	0c8d      	lsrs	r5, r1, #18
20027120:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027122:	407e      	eors	r6, r7
20027124:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027128:	406c      	eors	r4, r5
2002712a:	05cd      	lsls	r5, r1, #23
2002712c:	990d      	ldr	r1, [sp, #52]	@ 0x34
2002712e:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027132:	05cf      	lsls	r7, r1, #23
20027134:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027136:	4075      	eors	r5, r6
20027138:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
2002713c:	9903      	ldr	r1, [sp, #12]
2002713e:	195b      	adds	r3, r3, r5
20027140:	ea84 0407 	eor.w	r4, r4, r7
20027144:	eb42 0204 	adc.w	r2, r2, r4
20027148:	18c9      	adds	r1, r1, r3
2002714a:	910a      	str	r1, [sp, #40]	@ 0x28
2002714c:	eb4b 0102 	adc.w	r1, fp, r2
20027150:	910b      	str	r1, [sp, #44]	@ 0x2c
20027152:	9904      	ldr	r1, [sp, #16]
20027154:	0f0e      	lsrs	r6, r1, #28
20027156:	9905      	ldr	r1, [sp, #20]
20027158:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
2002715c:	0f0d      	lsrs	r5, r1, #28
2002715e:	9904      	ldr	r1, [sp, #16]
20027160:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20027164:	078f      	lsls	r7, r1, #30
20027166:	9905      	ldr	r1, [sp, #20]
20027168:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
2002716c:	078c      	lsls	r4, r1, #30
2002716e:	9904      	ldr	r1, [sp, #16]
20027170:	407e      	eors	r6, r7
20027172:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027176:	064f      	lsls	r7, r1, #25
20027178:	9905      	ldr	r1, [sp, #20]
2002717a:	4065      	eors	r5, r4
2002717c:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20027180:	064c      	lsls	r4, r1, #25
20027182:	9904      	ldr	r1, [sp, #16]
20027184:	407e      	eors	r6, r7
20027186:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
2002718a:	4065      	eors	r5, r4
2002718c:	ea49 0401 	orr.w	r4, r9, r1
20027190:	9905      	ldr	r1, [sp, #20]
20027192:	ea48 0701 	orr.w	r7, r8, r1
20027196:	9901      	ldr	r1, [sp, #4]
20027198:	400c      	ands	r4, r1
2002719a:	9902      	ldr	r1, [sp, #8]
2002719c:	400f      	ands	r7, r1
2002719e:	9904      	ldr	r1, [sp, #16]
200271a0:	ea09 0e01 	and.w	lr, r9, r1
200271a4:	9905      	ldr	r1, [sp, #20]
200271a6:	ea44 040e 	orr.w	r4, r4, lr
200271aa:	ea08 0c01 	and.w	ip, r8, r1
200271ae:	1934      	adds	r4, r6, r4
200271b0:	ea47 070c 	orr.w	r7, r7, ip
200271b4:	eb45 0507 	adc.w	r5, r5, r7
200271b8:	18e3      	adds	r3, r4, r3
200271ba:	9303      	str	r3, [sp, #12]
200271bc:	9b00      	ldr	r3, [sp, #0]
200271be:	eb42 0b05 	adc.w	fp, r2, r5
200271c2:	9a00      	ldr	r2, [sp, #0]
200271c4:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
200271c6:	9908      	ldr	r1, [sp, #32]
200271c8:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
200271ca:	e9d0 450a 	ldrd	r4, r5, [r0, #40]	@ 0x28
200271ce:	191b      	adds	r3, r3, r4
200271d0:	eb42 0205 	adc.w	r2, r2, r5
200271d4:	185b      	adds	r3, r3, r1
200271d6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200271d8:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
200271da:	eb41 0202 	adc.w	r2, r1, r2
200271de:	9906      	ldr	r1, [sp, #24]
200271e0:	ea81 0504 	eor.w	r5, r1, r4
200271e4:	9907      	ldr	r1, [sp, #28]
200271e6:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
200271e8:	404c      	eors	r4, r1
200271ea:	990a      	ldr	r1, [sp, #40]	@ 0x28
200271ec:	400d      	ands	r5, r1
200271ee:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200271f0:	400c      	ands	r4, r1
200271f2:	9906      	ldr	r1, [sp, #24]
200271f4:	404d      	eors	r5, r1
200271f6:	9907      	ldr	r1, [sp, #28]
200271f8:	195b      	adds	r3, r3, r5
200271fa:	ea84 0401 	eor.w	r4, r4, r1
200271fe:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027200:	eb42 0204 	adc.w	r2, r2, r4
20027204:	0b8e      	lsrs	r6, r1, #14
20027206:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027208:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
2002720c:	0b8c      	lsrs	r4, r1, #14
2002720e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027210:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027214:	0c8f      	lsrs	r7, r1, #18
20027216:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027218:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
2002721c:	0c8d      	lsrs	r5, r1, #18
2002721e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027220:	407e      	eors	r6, r7
20027222:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027226:	406c      	eors	r4, r5
20027228:	05cd      	lsls	r5, r1, #23
2002722a:	990b      	ldr	r1, [sp, #44]	@ 0x2c
2002722c:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027230:	05cf      	lsls	r7, r1, #23
20027232:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027234:	4075      	eors	r5, r6
20027236:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
2002723a:	9901      	ldr	r1, [sp, #4]
2002723c:	195b      	adds	r3, r3, r5
2002723e:	ea84 0407 	eor.w	r4, r4, r7
20027242:	eb42 0204 	adc.w	r2, r2, r4
20027246:	18c9      	adds	r1, r1, r3
20027248:	9108      	str	r1, [sp, #32]
2002724a:	9902      	ldr	r1, [sp, #8]
2002724c:	ea4f 751b 	mov.w	r5, fp, lsr #28
20027250:	eb41 0102 	adc.w	r1, r1, r2
20027254:	9109      	str	r1, [sp, #36]	@ 0x24
20027256:	9903      	ldr	r1, [sp, #12]
20027258:	ea4f 748b 	mov.w	r4, fp, lsl #30
2002725c:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027260:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20027264:	0f0e      	lsrs	r6, r1, #28
20027266:	078f      	lsls	r7, r1, #30
20027268:	4065      	eors	r5, r4
2002726a:	ea4f 644b 	mov.w	r4, fp, lsl #25
2002726e:	ea47 079b 	orr.w	r7, r7, fp, lsr #2
20027272:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20027276:	ea46 160b 	orr.w	r6, r6, fp, lsl #4
2002727a:	407e      	eors	r6, r7
2002727c:	4065      	eors	r5, r4
2002727e:	064f      	lsls	r7, r1, #25
20027280:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
20027284:	430c      	orrs	r4, r1
20027286:	9905      	ldr	r1, [sp, #20]
20027288:	ea47 17db 	orr.w	r7, r7, fp, lsr #7
2002728c:	407e      	eors	r6, r7
2002728e:	ea41 070b 	orr.w	r7, r1, fp
20027292:	ea04 0109 	and.w	r1, r4, r9
20027296:	9101      	str	r1, [sp, #4]
20027298:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
2002729c:	ea01 0e04 	and.w	lr, r1, r4
200272a0:	9905      	ldr	r1, [sp, #20]
200272a2:	ea07 0708 	and.w	r7, r7, r8
200272a6:	ea01 0c0b 	and.w	ip, r1, fp
200272aa:	9901      	ldr	r1, [sp, #4]
200272ac:	ea47 070c 	orr.w	r7, r7, ip
200272b0:	ea41 040e 	orr.w	r4, r1, lr
200272b4:	1934      	adds	r4, r6, r4
200272b6:	eb45 0507 	adc.w	r5, r5, r7
200272ba:	18e3      	adds	r3, r4, r3
200272bc:	9301      	str	r3, [sp, #4]
200272be:	eb42 0305 	adc.w	r3, r2, r5
200272c2:	9302      	str	r3, [sp, #8]
200272c4:	9b00      	ldr	r3, [sp, #0]
200272c6:	9a00      	ldr	r2, [sp, #0]
200272c8:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
200272ca:	9906      	ldr	r1, [sp, #24]
200272cc:	6b52      	ldr	r2, [r2, #52]	@ 0x34
200272ce:	e9d0 450c 	ldrd	r4, r5, [r0, #48]	@ 0x30
200272d2:	191b      	adds	r3, r3, r4
200272d4:	eb42 0205 	adc.w	r2, r2, r5
200272d8:	185b      	adds	r3, r3, r1
200272da:	9907      	ldr	r1, [sp, #28]
200272dc:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
200272de:	eb41 0202 	adc.w	r2, r1, r2
200272e2:	990c      	ldr	r1, [sp, #48]	@ 0x30
200272e4:	ea81 0504 	eor.w	r5, r1, r4
200272e8:	990d      	ldr	r1, [sp, #52]	@ 0x34
200272ea:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
200272ec:	404c      	eors	r4, r1
200272ee:	9908      	ldr	r1, [sp, #32]
200272f0:	400d      	ands	r5, r1
200272f2:	9909      	ldr	r1, [sp, #36]	@ 0x24
200272f4:	400c      	ands	r4, r1
200272f6:	990c      	ldr	r1, [sp, #48]	@ 0x30
200272f8:	404d      	eors	r5, r1
200272fa:	990d      	ldr	r1, [sp, #52]	@ 0x34
200272fc:	195b      	adds	r3, r3, r5
200272fe:	ea84 0401 	eor.w	r4, r4, r1
20027302:	9908      	ldr	r1, [sp, #32]
20027304:	eb42 0204 	adc.w	r2, r2, r4
20027308:	0b8e      	lsrs	r6, r1, #14
2002730a:	9909      	ldr	r1, [sp, #36]	@ 0x24
2002730c:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20027310:	0b8c      	lsrs	r4, r1, #14
20027312:	9908      	ldr	r1, [sp, #32]
20027314:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027318:	0c8f      	lsrs	r7, r1, #18
2002731a:	9909      	ldr	r1, [sp, #36]	@ 0x24
2002731c:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027320:	0c8d      	lsrs	r5, r1, #18
20027322:	9908      	ldr	r1, [sp, #32]
20027324:	407e      	eors	r6, r7
20027326:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
2002732a:	406c      	eors	r4, r5
2002732c:	05cd      	lsls	r5, r1, #23
2002732e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027330:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027334:	05cf      	lsls	r7, r1, #23
20027336:	9908      	ldr	r1, [sp, #32]
20027338:	4075      	eors	r5, r6
2002733a:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
2002733e:	195b      	adds	r3, r3, r5
20027340:	ea84 0407 	eor.w	r4, r4, r7
20027344:	eb42 0204 	adc.w	r2, r2, r4
20027348:	eb19 0103 	adds.w	r1, r9, r3
2002734c:	9106      	str	r1, [sp, #24]
2002734e:	eb48 0102 	adc.w	r1, r8, r2
20027352:	9107      	str	r1, [sp, #28]
20027354:	9901      	ldr	r1, [sp, #4]
20027356:	0f0e      	lsrs	r6, r1, #28
20027358:	9902      	ldr	r1, [sp, #8]
2002735a:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
2002735e:	0f0d      	lsrs	r5, r1, #28
20027360:	9901      	ldr	r1, [sp, #4]
20027362:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20027366:	078f      	lsls	r7, r1, #30
20027368:	9902      	ldr	r1, [sp, #8]
2002736a:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
2002736e:	078c      	lsls	r4, r1, #30
20027370:	9901      	ldr	r1, [sp, #4]
20027372:	407e      	eors	r6, r7
20027374:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027378:	064f      	lsls	r7, r1, #25
2002737a:	9902      	ldr	r1, [sp, #8]
2002737c:	4065      	eors	r5, r4
2002737e:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20027382:	064c      	lsls	r4, r1, #25
20027384:	9901      	ldr	r1, [sp, #4]
20027386:	407e      	eors	r6, r7
20027388:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
2002738c:	4065      	eors	r5, r4
2002738e:	9903      	ldr	r1, [sp, #12]
20027390:	9c01      	ldr	r4, [sp, #4]
20027392:	430c      	orrs	r4, r1
20027394:	9902      	ldr	r1, [sp, #8]
20027396:	ea4b 0701 	orr.w	r7, fp, r1
2002739a:	9904      	ldr	r1, [sp, #16]
2002739c:	ea04 0801 	and.w	r8, r4, r1
200273a0:	9905      	ldr	r1, [sp, #20]
200273a2:	9c01      	ldr	r4, [sp, #4]
200273a4:	400f      	ands	r7, r1
200273a6:	9903      	ldr	r1, [sp, #12]
200273a8:	ea01 0e04 	and.w	lr, r1, r4
200273ac:	9902      	ldr	r1, [sp, #8]
200273ae:	ea48 040e 	orr.w	r4, r8, lr
200273b2:	ea0b 0c01 	and.w	ip, fp, r1
200273b6:	1934      	adds	r4, r6, r4
200273b8:	ea47 070c 	orr.w	r7, r7, ip
200273bc:	eb45 0507 	adc.w	r5, r5, r7
200273c0:	eb14 0c03 	adds.w	ip, r4, r3
200273c4:	9b00      	ldr	r3, [sp, #0]
200273c6:	eb42 0e05 	adc.w	lr, r2, r5
200273ca:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
200273cc:	9a00      	ldr	r2, [sp, #0]
200273ce:	e9d0 450e 	ldrd	r4, r5, [r0, #56]	@ 0x38
200273d2:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
200273d4:	191c      	adds	r4, r3, r4
200273d6:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200273d8:	eb42 0205 	adc.w	r2, r2, r5
200273dc:	18e4      	adds	r4, r4, r3
200273de:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
200273e0:	9908      	ldr	r1, [sp, #32]
200273e2:	eb43 0202 	adc.w	r2, r3, r2
200273e6:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200273e8:	3040      	adds	r0, #64	@ 0x40
200273ea:	ea83 0501 	eor.w	r5, r3, r1
200273ee:	9909      	ldr	r1, [sp, #36]	@ 0x24
200273f0:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200273f2:	404b      	eors	r3, r1
200273f4:	9906      	ldr	r1, [sp, #24]
200273f6:	400d      	ands	r5, r1
200273f8:	9907      	ldr	r1, [sp, #28]
200273fa:	400b      	ands	r3, r1
200273fc:	990a      	ldr	r1, [sp, #40]	@ 0x28
200273fe:	404d      	eors	r5, r1
20027400:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027402:	1964      	adds	r4, r4, r5
20027404:	ea83 0301 	eor.w	r3, r3, r1
20027408:	eb42 0203 	adc.w	r2, r2, r3
2002740c:	9b06      	ldr	r3, [sp, #24]
2002740e:	9906      	ldr	r1, [sp, #24]
20027410:	0b9e      	lsrs	r6, r3, #14
20027412:	9b07      	ldr	r3, [sp, #28]
20027414:	0c8f      	lsrs	r7, r1, #18
20027416:	ea46 4683 	orr.w	r6, r6, r3, lsl #18
2002741a:	0b9b      	lsrs	r3, r3, #14
2002741c:	ea43 4381 	orr.w	r3, r3, r1, lsl #18
20027420:	9907      	ldr	r1, [sp, #28]
20027422:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027426:	0c8d      	lsrs	r5, r1, #18
20027428:	9906      	ldr	r1, [sp, #24]
2002742a:	407e      	eors	r6, r7
2002742c:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027430:	406b      	eors	r3, r5
20027432:	05cd      	lsls	r5, r1, #23
20027434:	9907      	ldr	r1, [sp, #28]
20027436:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
2002743a:	05cf      	lsls	r7, r1, #23
2002743c:	9906      	ldr	r1, [sp, #24]
2002743e:	4075      	eors	r5, r6
20027440:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20027444:	1964      	adds	r4, r4, r5
20027446:	ea83 0307 	eor.w	r3, r3, r7
2002744a:	eb42 0203 	adc.w	r2, r2, r3
2002744e:	9b04      	ldr	r3, [sp, #16]
20027450:	ea4f 751e 	mov.w	r5, lr, lsr #28
20027454:	191b      	adds	r3, r3, r4
20027456:	9304      	str	r3, [sp, #16]
20027458:	9b05      	ldr	r3, [sp, #20]
2002745a:	ea4f 761c 	mov.w	r6, ip, lsr #28
2002745e:	eb43 0302 	adc.w	r3, r3, r2
20027462:	9305      	str	r3, [sp, #20]
20027464:	ea4f 738e 	mov.w	r3, lr, lsl #30
20027468:	ea43 039c 	orr.w	r3, r3, ip, lsr #2
2002746c:	ea45 150c 	orr.w	r5, r5, ip, lsl #4
20027470:	ea4f 778c 	mov.w	r7, ip, lsl #30
20027474:	ea47 079e 	orr.w	r7, r7, lr, lsr #2
20027478:	405d      	eors	r5, r3
2002747a:	ea46 160e 	orr.w	r6, r6, lr, lsl #4
2002747e:	ea4f 634e 	mov.w	r3, lr, lsl #25
20027482:	9902      	ldr	r1, [sp, #8]
20027484:	407e      	eors	r6, r7
20027486:	ea43 13dc 	orr.w	r3, r3, ip, lsr #7
2002748a:	ea4f 674c 	mov.w	r7, ip, lsl #25
2002748e:	ea47 17de 	orr.w	r7, r7, lr, lsr #7
20027492:	405d      	eors	r5, r3
20027494:	9b01      	ldr	r3, [sp, #4]
20027496:	407e      	eors	r6, r7
20027498:	ea41 070e 	orr.w	r7, r1, lr
2002749c:	9903      	ldr	r1, [sp, #12]
2002749e:	ea43 030c 	orr.w	r3, r3, ip
200274a2:	400b      	ands	r3, r1
200274a4:	9901      	ldr	r1, [sp, #4]
200274a6:	ea07 070b 	and.w	r7, r7, fp
200274aa:	ea01 090c 	and.w	r9, r1, ip
200274ae:	9902      	ldr	r1, [sp, #8]
200274b0:	ea43 0309 	orr.w	r3, r3, r9
200274b4:	ea01 080e 	and.w	r8, r1, lr
200274b8:	9900      	ldr	r1, [sp, #0]
200274ba:	18f3      	adds	r3, r6, r3
200274bc:	f101 0140 	add.w	r1, r1, #64	@ 0x40
200274c0:	9100      	str	r1, [sp, #0]
200274c2:	ea47 0708 	orr.w	r7, r7, r8
200274c6:	eb45 0507 	adc.w	r5, r5, r7
200274ca:	4928      	ldr	r1, [pc, #160]	@ (2002756c <mbedtls_sha512_process+0xa54>)
200274cc:	191b      	adds	r3, r3, r4
200274ce:	9c00      	ldr	r4, [sp, #0]
200274d0:	eb42 0205 	adc.w	r2, r2, r5
200274d4:	42a1      	cmp	r1, r4
200274d6:	f47f abe3 	bne.w	20026ca0 <mbedtls_sha512_process+0x188>
200274da:	990e      	ldr	r1, [sp, #56]	@ 0x38
200274dc:	18cb      	adds	r3, r1, r3
200274de:	990f      	ldr	r1, [sp, #60]	@ 0x3c
200274e0:	eb42 0201 	adc.w	r2, r2, r1
200274e4:	e9ca 3204 	strd	r3, r2, [sl, #16]
200274e8:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200274ea:	9a11      	ldr	r2, [sp, #68]	@ 0x44
200274ec:	eb13 030c 	adds.w	r3, r3, ip
200274f0:	eb4e 0202 	adc.w	r2, lr, r2
200274f4:	e9ca 3206 	strd	r3, r2, [sl, #24]
200274f8:	9a01      	ldr	r2, [sp, #4]
200274fa:	9b12      	ldr	r3, [sp, #72]	@ 0x48
200274fc:	9913      	ldr	r1, [sp, #76]	@ 0x4c
200274fe:	189b      	adds	r3, r3, r2
20027500:	9a02      	ldr	r2, [sp, #8]
20027502:	eb42 0201 	adc.w	r2, r2, r1
20027506:	e9ca 3208 	strd	r3, r2, [sl, #32]
2002750a:	9a03      	ldr	r2, [sp, #12]
2002750c:	9b14      	ldr	r3, [sp, #80]	@ 0x50
2002750e:	9917      	ldr	r1, [sp, #92]	@ 0x5c
20027510:	189b      	adds	r3, r3, r2
20027512:	9a15      	ldr	r2, [sp, #84]	@ 0x54
20027514:	eb4b 0202 	adc.w	r2, fp, r2
20027518:	e9ca 320a 	strd	r3, r2, [sl, #40]	@ 0x28
2002751c:	9a04      	ldr	r2, [sp, #16]
2002751e:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20027520:	189b      	adds	r3, r3, r2
20027522:	9a05      	ldr	r2, [sp, #20]
20027524:	eb42 0201 	adc.w	r2, r2, r1
20027528:	e9ca 320c 	strd	r3, r2, [sl, #48]	@ 0x30
2002752c:	9b18      	ldr	r3, [sp, #96]	@ 0x60
2002752e:	9a06      	ldr	r2, [sp, #24]
20027530:	9919      	ldr	r1, [sp, #100]	@ 0x64
20027532:	189a      	adds	r2, r3, r2
20027534:	9b07      	ldr	r3, [sp, #28]
20027536:	eb43 0301 	adc.w	r3, r3, r1
2002753a:	e9ca 230e 	strd	r2, r3, [sl, #56]	@ 0x38
2002753e:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20027540:	9a08      	ldr	r2, [sp, #32]
20027542:	991b      	ldr	r1, [sp, #108]	@ 0x6c
20027544:	189a      	adds	r2, r3, r2
20027546:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20027548:	eb43 0301 	adc.w	r3, r3, r1
2002754c:	e9ca 2310 	strd	r2, r3, [sl, #64]	@ 0x40
20027550:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
20027552:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
20027554:	991d      	ldr	r1, [sp, #116]	@ 0x74
20027556:	189a      	adds	r2, r3, r2
20027558:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002755a:	eb43 0301 	adc.w	r3, r3, r1
2002755e:	e9ca 2312 	strd	r2, r3, [sl, #72]	@ 0x48
20027562:	f50d 7d3f 	add.w	sp, sp, #764	@ 0x2fc
20027566:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002756a:	bf00      	nop
2002756c:	2002c320 	.word	0x2002c320

20027570 <mbedtls_sha512_update.part.0>:
20027570:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20027574:	4615      	mov	r5, r2
20027576:	e9d0 3200 	ldrd	r3, r2, [r0]
2002757a:	f003 077f 	and.w	r7, r3, #127	@ 0x7f
2002757e:	195b      	adds	r3, r3, r5
20027580:	f152 0200 	adcs.w	r2, r2, #0
20027584:	460e      	mov	r6, r1
20027586:	f04f 0100 	mov.w	r1, #0
2002758a:	bf28      	it	cs
2002758c:	2101      	movcs	r1, #1
2002758e:	4604      	mov	r4, r0
20027590:	e9c0 3200 	strd	r3, r2, [r0]
20027594:	b131      	cbz	r1, 200275a4 <mbedtls_sha512_update.part.0+0x34>
20027596:	e9d0 3202 	ldrd	r3, r2, [r0, #8]
2002759a:	3301      	adds	r3, #1
2002759c:	f142 0200 	adc.w	r2, r2, #0
200275a0:	e9c0 3202 	strd	r3, r2, [r0, #8]
200275a4:	b19f      	cbz	r7, 200275ce <mbedtls_sha512_update.part.0+0x5e>
200275a6:	f1c7 0980 	rsb	r9, r7, #128	@ 0x80
200275aa:	45a9      	cmp	r9, r5
200275ac:	d80f      	bhi.n	200275ce <mbedtls_sha512_update.part.0+0x5e>
200275ae:	f104 0850 	add.w	r8, r4, #80	@ 0x50
200275b2:	4631      	mov	r1, r6
200275b4:	464a      	mov	r2, r9
200275b6:	eb08 0007 	add.w	r0, r8, r7
200275ba:	f003 fa05 	bl	2002a9c8 <memcpy>
200275be:	3d80      	subs	r5, #128	@ 0x80
200275c0:	4641      	mov	r1, r8
200275c2:	4620      	mov	r0, r4
200275c4:	443d      	add	r5, r7
200275c6:	f7ff faa7 	bl	20026b18 <mbedtls_sha512_process>
200275ca:	2700      	movs	r7, #0
200275cc:	444e      	add	r6, r9
200275ce:	46a8      	mov	r8, r5
200275d0:	eb05 0906 	add.w	r9, r5, r6
200275d4:	e004      	b.n	200275e0 <mbedtls_sha512_update.part.0+0x70>
200275d6:	4620      	mov	r0, r4
200275d8:	f7ff fa9e 	bl	20026b18 <mbedtls_sha512_process>
200275dc:	f1a8 0880 	sub.w	r8, r8, #128	@ 0x80
200275e0:	f1b8 0f7f 	cmp.w	r8, #127	@ 0x7f
200275e4:	eba9 0108 	sub.w	r1, r9, r8
200275e8:	d8f5      	bhi.n	200275d6 <mbedtls_sha512_update.part.0+0x66>
200275ea:	f06f 037f 	mvn.w	r3, #127	@ 0x7f
200275ee:	09e9      	lsrs	r1, r5, #7
200275f0:	4359      	muls	r1, r3
200275f2:	186a      	adds	r2, r5, r1
200275f4:	d007      	beq.n	20027606 <mbedtls_sha512_update.part.0+0x96>
200275f6:	f104 0050 	add.w	r0, r4, #80	@ 0x50
200275fa:	1a71      	subs	r1, r6, r1
200275fc:	4438      	add	r0, r7
200275fe:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20027602:	f003 b9e1 	b.w	2002a9c8 <memcpy>
20027606:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

2002760a <mbedtls_sha512_update>:
2002760a:	b10a      	cbz	r2, 20027610 <mbedtls_sha512_update+0x6>
2002760c:	f7ff bfb0 	b.w	20027570 <mbedtls_sha512_update.part.0>
20027610:	4770      	bx	lr
	...

20027614 <mbedtls_sha512_finish>:
20027614:	b5f0      	push	{r4, r5, r6, r7, lr}
20027616:	4604      	mov	r4, r0
20027618:	e9d0 2300 	ldrd	r2, r3, [r0]
2002761c:	460d      	mov	r5, r1
2002761e:	e9d0 6102 	ldrd	r6, r1, [r0, #8]
20027622:	00c9      	lsls	r1, r1, #3
20027624:	ea41 7156 	orr.w	r1, r1, r6, lsr #29
20027628:	b085      	sub	sp, #20
2002762a:	0e0f      	lsrs	r7, r1, #24
2002762c:	0f58      	lsrs	r0, r3, #29
2002762e:	00db      	lsls	r3, r3, #3
20027630:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
20027634:	f88d 7000 	strb.w	r7, [sp]
20027638:	0c0f      	lsrs	r7, r1, #16
2002763a:	f88d 7001 	strb.w	r7, [sp, #1]
2002763e:	f88d 1003 	strb.w	r1, [sp, #3]
20027642:	0a0f      	lsrs	r7, r1, #8
20027644:	0e19      	lsrs	r1, r3, #24
20027646:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
2002764a:	f88d 1008 	strb.w	r1, [sp, #8]
2002764e:	00d6      	lsls	r6, r2, #3
20027650:	0c19      	lsrs	r1, r3, #16
20027652:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
20027656:	2a6f      	cmp	r2, #111	@ 0x6f
20027658:	ba00      	rev	r0, r0
2002765a:	f88d 1009 	strb.w	r1, [sp, #9]
2002765e:	ea4f 2113 	mov.w	r1, r3, lsr #8
20027662:	bf94      	ite	ls
20027664:	f1c2 0270 	rsbls	r2, r2, #112	@ 0x70
20027668:	f1c2 02f0 	rsbhi	r2, r2, #240	@ 0xf0
2002766c:	9001      	str	r0, [sp, #4]
2002766e:	f88d 100a 	strb.w	r1, [sp, #10]
20027672:	4620      	mov	r0, r4
20027674:	4969      	ldr	r1, [pc, #420]	@ (2002781c <mbedtls_sha512_finish+0x208>)
20027676:	ba36      	rev	r6, r6
20027678:	f88d 300b 	strb.w	r3, [sp, #11]
2002767c:	f88d 7002 	strb.w	r7, [sp, #2]
20027680:	9603      	str	r6, [sp, #12]
20027682:	f7ff ffc2 	bl	2002760a <mbedtls_sha512_update>
20027686:	2210      	movs	r2, #16
20027688:	4669      	mov	r1, sp
2002768a:	4620      	mov	r0, r4
2002768c:	f7ff ff70 	bl	20027570 <mbedtls_sha512_update.part.0>
20027690:	7de3      	ldrb	r3, [r4, #23]
20027692:	702b      	strb	r3, [r5, #0]
20027694:	8ae3      	ldrh	r3, [r4, #22]
20027696:	706b      	strb	r3, [r5, #1]
20027698:	6963      	ldr	r3, [r4, #20]
2002769a:	0a1b      	lsrs	r3, r3, #8
2002769c:	70ab      	strb	r3, [r5, #2]
2002769e:	6963      	ldr	r3, [r4, #20]
200276a0:	70eb      	strb	r3, [r5, #3]
200276a2:	7ce3      	ldrb	r3, [r4, #19]
200276a4:	712b      	strb	r3, [r5, #4]
200276a6:	8a63      	ldrh	r3, [r4, #18]
200276a8:	716b      	strb	r3, [r5, #5]
200276aa:	6923      	ldr	r3, [r4, #16]
200276ac:	0a1b      	lsrs	r3, r3, #8
200276ae:	71ab      	strb	r3, [r5, #6]
200276b0:	6923      	ldr	r3, [r4, #16]
200276b2:	71eb      	strb	r3, [r5, #7]
200276b4:	7fe3      	ldrb	r3, [r4, #31]
200276b6:	722b      	strb	r3, [r5, #8]
200276b8:	8be3      	ldrh	r3, [r4, #30]
200276ba:	726b      	strb	r3, [r5, #9]
200276bc:	69e3      	ldr	r3, [r4, #28]
200276be:	0a1b      	lsrs	r3, r3, #8
200276c0:	72ab      	strb	r3, [r5, #10]
200276c2:	69e3      	ldr	r3, [r4, #28]
200276c4:	72eb      	strb	r3, [r5, #11]
200276c6:	7ee3      	ldrb	r3, [r4, #27]
200276c8:	732b      	strb	r3, [r5, #12]
200276ca:	8b63      	ldrh	r3, [r4, #26]
200276cc:	736b      	strb	r3, [r5, #13]
200276ce:	69a3      	ldr	r3, [r4, #24]
200276d0:	0a1b      	lsrs	r3, r3, #8
200276d2:	73ab      	strb	r3, [r5, #14]
200276d4:	69a3      	ldr	r3, [r4, #24]
200276d6:	73eb      	strb	r3, [r5, #15]
200276d8:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200276dc:	742b      	strb	r3, [r5, #16]
200276de:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
200276e0:	746b      	strb	r3, [r5, #17]
200276e2:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200276e4:	0a1b      	lsrs	r3, r3, #8
200276e6:	74ab      	strb	r3, [r5, #18]
200276e8:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200276ea:	74eb      	strb	r3, [r5, #19]
200276ec:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200276f0:	752b      	strb	r3, [r5, #20]
200276f2:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
200276f4:	756b      	strb	r3, [r5, #21]
200276f6:	6a23      	ldr	r3, [r4, #32]
200276f8:	0a1b      	lsrs	r3, r3, #8
200276fa:	75ab      	strb	r3, [r5, #22]
200276fc:	6a23      	ldr	r3, [r4, #32]
200276fe:	75eb      	strb	r3, [r5, #23]
20027700:	f894 302f 	ldrb.w	r3, [r4, #47]	@ 0x2f
20027704:	762b      	strb	r3, [r5, #24]
20027706:	8de3      	ldrh	r3, [r4, #46]	@ 0x2e
20027708:	766b      	strb	r3, [r5, #25]
2002770a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
2002770c:	0a1b      	lsrs	r3, r3, #8
2002770e:	76ab      	strb	r3, [r5, #26]
20027710:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20027712:	76eb      	strb	r3, [r5, #27]
20027714:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
20027718:	772b      	strb	r3, [r5, #28]
2002771a:	8d63      	ldrh	r3, [r4, #42]	@ 0x2a
2002771c:	776b      	strb	r3, [r5, #29]
2002771e:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
20027720:	0a1b      	lsrs	r3, r3, #8
20027722:	77ab      	strb	r3, [r5, #30]
20027724:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
20027726:	77eb      	strb	r3, [r5, #31]
20027728:	f894 3037 	ldrb.w	r3, [r4, #55]	@ 0x37
2002772c:	f885 3020 	strb.w	r3, [r5, #32]
20027730:	8ee3      	ldrh	r3, [r4, #54]	@ 0x36
20027732:	f885 3021 	strb.w	r3, [r5, #33]	@ 0x21
20027736:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20027738:	0a1b      	lsrs	r3, r3, #8
2002773a:	f885 3022 	strb.w	r3, [r5, #34]	@ 0x22
2002773e:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20027740:	f885 3023 	strb.w	r3, [r5, #35]	@ 0x23
20027744:	f894 3033 	ldrb.w	r3, [r4, #51]	@ 0x33
20027748:	f885 3024 	strb.w	r3, [r5, #36]	@ 0x24
2002774c:	8e63      	ldrh	r3, [r4, #50]	@ 0x32
2002774e:	f885 3025 	strb.w	r3, [r5, #37]	@ 0x25
20027752:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20027754:	0a1b      	lsrs	r3, r3, #8
20027756:	f885 3026 	strb.w	r3, [r5, #38]	@ 0x26
2002775a:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002775c:	f885 3027 	strb.w	r3, [r5, #39]	@ 0x27
20027760:	f894 303f 	ldrb.w	r3, [r4, #63]	@ 0x3f
20027764:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
20027768:	8fe3      	ldrh	r3, [r4, #62]	@ 0x3e
2002776a:	f885 3029 	strb.w	r3, [r5, #41]	@ 0x29
2002776e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027770:	0a1b      	lsrs	r3, r3, #8
20027772:	f885 302a 	strb.w	r3, [r5, #42]	@ 0x2a
20027776:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027778:	f885 302b 	strb.w	r3, [r5, #43]	@ 0x2b
2002777c:	f894 303b 	ldrb.w	r3, [r4, #59]	@ 0x3b
20027780:	f885 302c 	strb.w	r3, [r5, #44]	@ 0x2c
20027784:	8f63      	ldrh	r3, [r4, #58]	@ 0x3a
20027786:	f885 302d 	strb.w	r3, [r5, #45]	@ 0x2d
2002778a:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
2002778c:	0a1b      	lsrs	r3, r3, #8
2002778e:	f885 302e 	strb.w	r3, [r5, #46]	@ 0x2e
20027792:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
20027794:	f885 302f 	strb.w	r3, [r5, #47]	@ 0x2f
20027798:	f8d4 30d0 	ldr.w	r3, [r4, #208]	@ 0xd0
2002779c:	2b00      	cmp	r3, #0
2002779e:	d13b      	bne.n	20027818 <mbedtls_sha512_finish+0x204>
200277a0:	f894 3047 	ldrb.w	r3, [r4, #71]	@ 0x47
200277a4:	f885 3030 	strb.w	r3, [r5, #48]	@ 0x30
200277a8:	f8b4 3046 	ldrh.w	r3, [r4, #70]	@ 0x46
200277ac:	f885 3031 	strb.w	r3, [r5, #49]	@ 0x31
200277b0:	6c63      	ldr	r3, [r4, #68]	@ 0x44
200277b2:	0a1b      	lsrs	r3, r3, #8
200277b4:	f885 3032 	strb.w	r3, [r5, #50]	@ 0x32
200277b8:	6c63      	ldr	r3, [r4, #68]	@ 0x44
200277ba:	f885 3033 	strb.w	r3, [r5, #51]	@ 0x33
200277be:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
200277c2:	f885 3034 	strb.w	r3, [r5, #52]	@ 0x34
200277c6:	f8b4 3042 	ldrh.w	r3, [r4, #66]	@ 0x42
200277ca:	f885 3035 	strb.w	r3, [r5, #53]	@ 0x35
200277ce:	6c23      	ldr	r3, [r4, #64]	@ 0x40
200277d0:	0a1b      	lsrs	r3, r3, #8
200277d2:	f885 3036 	strb.w	r3, [r5, #54]	@ 0x36
200277d6:	6c23      	ldr	r3, [r4, #64]	@ 0x40
200277d8:	f885 3037 	strb.w	r3, [r5, #55]	@ 0x37
200277dc:	f894 304f 	ldrb.w	r3, [r4, #79]	@ 0x4f
200277e0:	f885 3038 	strb.w	r3, [r5, #56]	@ 0x38
200277e4:	f8b4 304e 	ldrh.w	r3, [r4, #78]	@ 0x4e
200277e8:	f885 3039 	strb.w	r3, [r5, #57]	@ 0x39
200277ec:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200277ee:	0a1b      	lsrs	r3, r3, #8
200277f0:	f885 303a 	strb.w	r3, [r5, #58]	@ 0x3a
200277f4:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200277f6:	f885 303b 	strb.w	r3, [r5, #59]	@ 0x3b
200277fa:	f894 304b 	ldrb.w	r3, [r4, #75]	@ 0x4b
200277fe:	f885 303c 	strb.w	r3, [r5, #60]	@ 0x3c
20027802:	f8b4 304a 	ldrh.w	r3, [r4, #74]	@ 0x4a
20027806:	f885 303d 	strb.w	r3, [r5, #61]	@ 0x3d
2002780a:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
2002780c:	0a1b      	lsrs	r3, r3, #8
2002780e:	f885 303e 	strb.w	r3, [r5, #62]	@ 0x3e
20027812:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
20027814:	f885 303f 	strb.w	r3, [r5, #63]	@ 0x3f
20027818:	b005      	add	sp, #20
2002781a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002781c:	2002c01c 	.word	0x2002c01c

20027820 <mbedtls_sha512>:
20027820:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20027824:	461c      	mov	r4, r3
20027826:	b0b7      	sub	sp, #220	@ 0xdc
20027828:	4606      	mov	r6, r0
2002782a:	4668      	mov	r0, sp
2002782c:	460f      	mov	r7, r1
2002782e:	4615      	mov	r5, r2
20027830:	f7ff f8ce 	bl	200269d0 <mbedtls_sha512_init>
20027834:	2c00      	cmp	r4, #0
20027836:	d03f      	beq.n	200278b8 <mbedtls_sha512+0x98>
20027838:	f20f 0bf4 	addw	fp, pc, #244	@ 0xf4
2002783c:	e9db ab00 	ldrd	sl, fp, [fp]
20027840:	f20f 09f4 	addw	r9, pc, #244	@ 0xf4
20027844:	e9d9 8900 	ldrd	r8, r9, [r9]
20027848:	a13d      	add	r1, pc, #244	@ (adr r1, 20027940 <mbedtls_sha512+0x120>)
2002784a:	e9d1 0100 	ldrd	r0, r1, [r1]
2002784e:	a33e      	add	r3, pc, #248	@ (adr r3, 20027948 <mbedtls_sha512+0x128>)
20027850:	e9d3 2300 	ldrd	r2, r3, [r3]
20027854:	ed9f 4b24 	vldr	d4, [pc, #144]	@ 200278e8 <mbedtls_sha512+0xc8>
20027858:	ed9f 5b25 	vldr	d5, [pc, #148]	@ 200278f0 <mbedtls_sha512+0xd0>
2002785c:	ed9f 6b26 	vldr	d6, [pc, #152]	@ 200278f8 <mbedtls_sha512+0xd8>
20027860:	ed9f 7b27 	vldr	d7, [pc, #156]	@ 20027900 <mbedtls_sha512+0xe0>
20027864:	ed9f 3b28 	vldr	d3, [pc, #160]	@ 20027908 <mbedtls_sha512+0xe8>
20027868:	e9cd 2312 	strd	r2, r3, [sp, #72]	@ 0x48
2002786c:	e9cd 0110 	strd	r0, r1, [sp, #64]	@ 0x40
20027870:	463a      	mov	r2, r7
20027872:	4631      	mov	r1, r6
20027874:	4668      	mov	r0, sp
20027876:	ed8d 3b00 	vstr	d3, [sp]
2002787a:	ed8d 3b02 	vstr	d3, [sp, #8]
2002787e:	ed8d 4b04 	vstr	d4, [sp, #16]
20027882:	ed8d 5b06 	vstr	d5, [sp, #24]
20027886:	ed8d 6b08 	vstr	d6, [sp, #32]
2002788a:	ed8d 7b0a 	vstr	d7, [sp, #40]	@ 0x28
2002788e:	e9cd ab0c 	strd	sl, fp, [sp, #48]	@ 0x30
20027892:	e9cd 890e 	strd	r8, r9, [sp, #56]	@ 0x38
20027896:	9434      	str	r4, [sp, #208]	@ 0xd0
20027898:	f7ff feb7 	bl	2002760a <mbedtls_sha512_update>
2002789c:	4629      	mov	r1, r5
2002789e:	4668      	mov	r0, sp
200278a0:	f7ff feb8 	bl	20027614 <mbedtls_sha512_finish>
200278a4:	2300      	movs	r3, #0
200278a6:	461a      	mov	r2, r3
200278a8:	f80d 2003 	strb.w	r2, [sp, r3]
200278ac:	3301      	adds	r3, #1
200278ae:	2bd8      	cmp	r3, #216	@ 0xd8
200278b0:	d1fa      	bne.n	200278a8 <mbedtls_sha512+0x88>
200278b2:	b037      	add	sp, #220	@ 0xdc
200278b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200278b8:	ed9f 4b15 	vldr	d4, [pc, #84]	@ 20027910 <mbedtls_sha512+0xf0>
200278bc:	f20f 0b90 	addw	fp, pc, #144	@ 0x90
200278c0:	e9db ab00 	ldrd	sl, fp, [fp]
200278c4:	f20f 0990 	addw	r9, pc, #144	@ 0x90
200278c8:	e9d9 8900 	ldrd	r8, r9, [r9]
200278cc:	a124      	add	r1, pc, #144	@ (adr r1, 20027960 <mbedtls_sha512+0x140>)
200278ce:	e9d1 0100 	ldrd	r0, r1, [r1]
200278d2:	a325      	add	r3, pc, #148	@ (adr r3, 20027968 <mbedtls_sha512+0x148>)
200278d4:	e9d3 2300 	ldrd	r2, r3, [r3]
200278d8:	ed9f 5b0f 	vldr	d5, [pc, #60]	@ 20027918 <mbedtls_sha512+0xf8>
200278dc:	ed9f 6b10 	vldr	d6, [pc, #64]	@ 20027920 <mbedtls_sha512+0x100>
200278e0:	ed9f 7b11 	vldr	d7, [pc, #68]	@ 20027928 <mbedtls_sha512+0x108>
200278e4:	e7be      	b.n	20027864 <mbedtls_sha512+0x44>
200278e6:	bf00      	nop
200278e8:	c1059ed8 	.word	0xc1059ed8
200278ec:	cbbb9d5d 	.word	0xcbbb9d5d
200278f0:	367cd507 	.word	0x367cd507
200278f4:	629a292a 	.word	0x629a292a
200278f8:	3070dd17 	.word	0x3070dd17
200278fc:	9159015a 	.word	0x9159015a
20027900:	f70e5939 	.word	0xf70e5939
20027904:	152fecd8 	.word	0x152fecd8
	...
20027910:	f3bcc908 	.word	0xf3bcc908
20027914:	6a09e667 	.word	0x6a09e667
20027918:	84caa73b 	.word	0x84caa73b
2002791c:	bb67ae85 	.word	0xbb67ae85
20027920:	fe94f82b 	.word	0xfe94f82b
20027924:	3c6ef372 	.word	0x3c6ef372
20027928:	5f1d36f1 	.word	0x5f1d36f1
2002792c:	a54ff53a 	.word	0xa54ff53a
20027930:	ffc00b31 	.word	0xffc00b31
20027934:	67332667 	.word	0x67332667
20027938:	68581511 	.word	0x68581511
2002793c:	8eb44a87 	.word	0x8eb44a87
20027940:	64f98fa7 	.word	0x64f98fa7
20027944:	db0c2e0d 	.word	0xdb0c2e0d
20027948:	befa4fa4 	.word	0xbefa4fa4
2002794c:	47b5481d 	.word	0x47b5481d
20027950:	ade682d1 	.word	0xade682d1
20027954:	510e527f 	.word	0x510e527f
20027958:	2b3e6c1f 	.word	0x2b3e6c1f
2002795c:	9b05688c 	.word	0x9b05688c
20027960:	fb41bd6b 	.word	0xfb41bd6b
20027964:	1f83d9ab 	.word	0x1f83d9ab
20027968:	137e2179 	.word	0x137e2179
2002796c:	5be0cd19 	.word	0x5be0cd19

20027970 <mbedtls_asn1_get_len>:
20027970:	b570      	push	{r4, r5, r6, lr}
20027972:	6803      	ldr	r3, [r0, #0]
20027974:	1acd      	subs	r5, r1, r3
20027976:	2d00      	cmp	r5, #0
20027978:	dc02      	bgt.n	20027980 <mbedtls_asn1_get_len+0x10>
2002797a:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
2002797e:	bd70      	pop	{r4, r5, r6, pc}
20027980:	f993 6000 	ldrsb.w	r6, [r3]
20027984:	781c      	ldrb	r4, [r3, #0]
20027986:	2e00      	cmp	r6, #0
20027988:	db0a      	blt.n	200279a0 <mbedtls_asn1_get_len+0x30>
2002798a:	1c5c      	adds	r4, r3, #1
2002798c:	6004      	str	r4, [r0, #0]
2002798e:	781b      	ldrb	r3, [r3, #0]
20027990:	6013      	str	r3, [r2, #0]
20027992:	6803      	ldr	r3, [r0, #0]
20027994:	1ac9      	subs	r1, r1, r3
20027996:	6813      	ldr	r3, [r2, #0]
20027998:	428b      	cmp	r3, r1
2002799a:	d8ee      	bhi.n	2002797a <mbedtls_asn1_get_len+0xa>
2002799c:	2000      	movs	r0, #0
2002799e:	e7ee      	b.n	2002797e <mbedtls_asn1_get_len+0xe>
200279a0:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
200279a4:	3c01      	subs	r4, #1
200279a6:	2c03      	cmp	r4, #3
200279a8:	d82b      	bhi.n	20027a02 <mbedtls_asn1_get_len+0x92>
200279aa:	e8df f004 	tbb	[pc, r4]
200279ae:	0a02      	.short	0x0a02
200279b0:	2114      	.short	0x2114
200279b2:	2d01      	cmp	r5, #1
200279b4:	d0e1      	beq.n	2002797a <mbedtls_asn1_get_len+0xa>
200279b6:	785b      	ldrb	r3, [r3, #1]
200279b8:	6013      	str	r3, [r2, #0]
200279ba:	6803      	ldr	r3, [r0, #0]
200279bc:	3302      	adds	r3, #2
200279be:	6003      	str	r3, [r0, #0]
200279c0:	e7e7      	b.n	20027992 <mbedtls_asn1_get_len+0x22>
200279c2:	2d02      	cmp	r5, #2
200279c4:	ddd9      	ble.n	2002797a <mbedtls_asn1_get_len+0xa>
200279c6:	f8b3 3001 	ldrh.w	r3, [r3, #1]
200279ca:	ba5b      	rev16	r3, r3
200279cc:	b29b      	uxth	r3, r3
200279ce:	6013      	str	r3, [r2, #0]
200279d0:	6803      	ldr	r3, [r0, #0]
200279d2:	3303      	adds	r3, #3
200279d4:	e7f3      	b.n	200279be <mbedtls_asn1_get_len+0x4e>
200279d6:	2d03      	cmp	r5, #3
200279d8:	ddcf      	ble.n	2002797a <mbedtls_asn1_get_len+0xa>
200279da:	789c      	ldrb	r4, [r3, #2]
200279dc:	785d      	ldrb	r5, [r3, #1]
200279de:	0224      	lsls	r4, r4, #8
200279e0:	78db      	ldrb	r3, [r3, #3]
200279e2:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
200279e6:	4323      	orrs	r3, r4
200279e8:	6013      	str	r3, [r2, #0]
200279ea:	6803      	ldr	r3, [r0, #0]
200279ec:	3304      	adds	r3, #4
200279ee:	e7e6      	b.n	200279be <mbedtls_asn1_get_len+0x4e>
200279f0:	2d04      	cmp	r5, #4
200279f2:	ddc2      	ble.n	2002797a <mbedtls_asn1_get_len+0xa>
200279f4:	f8d3 3001 	ldr.w	r3, [r3, #1]
200279f8:	ba1b      	rev	r3, r3
200279fa:	6013      	str	r3, [r2, #0]
200279fc:	6803      	ldr	r3, [r0, #0]
200279fe:	3305      	adds	r3, #5
20027a00:	e7dd      	b.n	200279be <mbedtls_asn1_get_len+0x4e>
20027a02:	f06f 0063 	mvn.w	r0, #99	@ 0x63
20027a06:	e7ba      	b.n	2002797e <mbedtls_asn1_get_len+0xe>

20027a08 <mbedtls_asn1_get_tag>:
20027a08:	b470      	push	{r4, r5, r6}
20027a0a:	6804      	ldr	r4, [r0, #0]
20027a0c:	1b0e      	subs	r6, r1, r4
20027a0e:	2e00      	cmp	r6, #0
20027a10:	dd07      	ble.n	20027a22 <mbedtls_asn1_get_tag+0x1a>
20027a12:	7826      	ldrb	r6, [r4, #0]
20027a14:	429e      	cmp	r6, r3
20027a16:	d108      	bne.n	20027a2a <mbedtls_asn1_get_tag+0x22>
20027a18:	3401      	adds	r4, #1
20027a1a:	6004      	str	r4, [r0, #0]
20027a1c:	bc70      	pop	{r4, r5, r6}
20027a1e:	f7ff bfa7 	b.w	20027970 <mbedtls_asn1_get_len>
20027a22:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
20027a26:	bc70      	pop	{r4, r5, r6}
20027a28:	4770      	bx	lr
20027a2a:	f06f 0061 	mvn.w	r0, #97	@ 0x61
20027a2e:	e7fa      	b.n	20027a26 <mbedtls_asn1_get_tag+0x1e>

20027a30 <mbedtls_asn1_get_mpi>:
20027a30:	b573      	push	{r0, r1, r4, r5, r6, lr}
20027a32:	2302      	movs	r3, #2
20027a34:	4615      	mov	r5, r2
20027a36:	aa01      	add	r2, sp, #4
20027a38:	4604      	mov	r4, r0
20027a3a:	f7ff ffe5 	bl	20027a08 <mbedtls_asn1_get_tag>
20027a3e:	b940      	cbnz	r0, 20027a52 <mbedtls_asn1_get_mpi+0x22>
20027a40:	9e01      	ldr	r6, [sp, #4]
20027a42:	4628      	mov	r0, r5
20027a44:	4632      	mov	r2, r6
20027a46:	6821      	ldr	r1, [r4, #0]
20027a48:	f000 fad4 	bl	20027ff4 <mbedtls_mpi_read_binary>
20027a4c:	6823      	ldr	r3, [r4, #0]
20027a4e:	4433      	add	r3, r6
20027a50:	6023      	str	r3, [r4, #0]
20027a52:	b002      	add	sp, #8
20027a54:	bd70      	pop	{r4, r5, r6, pc}

20027a56 <mbedtls_asn1_get_bitstring_null>:
20027a56:	b538      	push	{r3, r4, r5, lr}
20027a58:	2303      	movs	r3, #3
20027a5a:	4604      	mov	r4, r0
20027a5c:	4615      	mov	r5, r2
20027a5e:	f7ff ffd3 	bl	20027a08 <mbedtls_asn1_get_tag>
20027a62:	b958      	cbnz	r0, 20027a7c <mbedtls_asn1_get_bitstring_null+0x26>
20027a64:	6813      	ldr	r3, [r2, #0]
20027a66:	1e5a      	subs	r2, r3, #1
20027a68:	2b01      	cmp	r3, #1
20027a6a:	602a      	str	r2, [r5, #0]
20027a6c:	d904      	bls.n	20027a78 <mbedtls_asn1_get_bitstring_null+0x22>
20027a6e:	6823      	ldr	r3, [r4, #0]
20027a70:	1c5a      	adds	r2, r3, #1
20027a72:	6022      	str	r2, [r4, #0]
20027a74:	781b      	ldrb	r3, [r3, #0]
20027a76:	b10b      	cbz	r3, 20027a7c <mbedtls_asn1_get_bitstring_null+0x26>
20027a78:	f06f 0067 	mvn.w	r0, #103	@ 0x67
20027a7c:	bd38      	pop	{r3, r4, r5, pc}

20027a7e <mbedtls_asn1_get_alg>:
20027a7e:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20027a82:	4690      	mov	r8, r2
20027a84:	461e      	mov	r6, r3
20027a86:	aa01      	add	r2, sp, #4
20027a88:	2330      	movs	r3, #48	@ 0x30
20027a8a:	4605      	mov	r5, r0
20027a8c:	460f      	mov	r7, r1
20027a8e:	f7ff ffbb 	bl	20027a08 <mbedtls_asn1_get_tag>
20027a92:	4604      	mov	r4, r0
20027a94:	bb10      	cbnz	r0, 20027adc <mbedtls_asn1_get_alg+0x5e>
20027a96:	682b      	ldr	r3, [r5, #0]
20027a98:	1aff      	subs	r7, r7, r3
20027a9a:	2f00      	cmp	r7, #0
20027a9c:	dd38      	ble.n	20027b10 <mbedtls_asn1_get_alg+0x92>
20027a9e:	4642      	mov	r2, r8
20027aa0:	781b      	ldrb	r3, [r3, #0]
20027aa2:	4628      	mov	r0, r5
20027aa4:	f842 3b04 	str.w	r3, [r2], #4
20027aa8:	682f      	ldr	r7, [r5, #0]
20027aaa:	9b01      	ldr	r3, [sp, #4]
20027aac:	441f      	add	r7, r3
20027aae:	4639      	mov	r1, r7
20027ab0:	2306      	movs	r3, #6
20027ab2:	f7ff ffa9 	bl	20027a08 <mbedtls_asn1_get_tag>
20027ab6:	4604      	mov	r4, r0
20027ab8:	b980      	cbnz	r0, 20027adc <mbedtls_asn1_get_alg+0x5e>
20027aba:	682b      	ldr	r3, [r5, #0]
20027abc:	f8d8 2004 	ldr.w	r2, [r8, #4]
20027ac0:	f8c8 3008 	str.w	r3, [r8, #8]
20027ac4:	1899      	adds	r1, r3, r2
20027ac6:	42b9      	cmp	r1, r7
20027ac8:	6029      	str	r1, [r5, #0]
20027aca:	d10b      	bne.n	20027ae4 <mbedtls_asn1_get_alg+0x66>
20027acc:	4601      	mov	r1, r0
20027ace:	f106 030c 	add.w	r3, r6, #12
20027ad2:	4632      	mov	r2, r6
20027ad4:	3601      	adds	r6, #1
20027ad6:	42b3      	cmp	r3, r6
20027ad8:	7011      	strb	r1, [r2, #0]
20027ada:	d1fa      	bne.n	20027ad2 <mbedtls_asn1_get_alg+0x54>
20027adc:	4620      	mov	r0, r4
20027ade:	b002      	add	sp, #8
20027ae0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027ae4:	5c9b      	ldrb	r3, [r3, r2]
20027ae6:	4632      	mov	r2, r6
20027ae8:	f842 3b04 	str.w	r3, [r2], #4
20027aec:	682b      	ldr	r3, [r5, #0]
20027aee:	4639      	mov	r1, r7
20027af0:	3301      	adds	r3, #1
20027af2:	4628      	mov	r0, r5
20027af4:	602b      	str	r3, [r5, #0]
20027af6:	f7ff ff3b 	bl	20027970 <mbedtls_asn1_get_len>
20027afa:	b960      	cbnz	r0, 20027b16 <mbedtls_asn1_get_alg+0x98>
20027afc:	682b      	ldr	r3, [r5, #0]
20027afe:	6872      	ldr	r2, [r6, #4]
20027b00:	60b3      	str	r3, [r6, #8]
20027b02:	4413      	add	r3, r2
20027b04:	42bb      	cmp	r3, r7
20027b06:	bf18      	it	ne
20027b08:	f06f 0465 	mvnne.w	r4, #101	@ 0x65
20027b0c:	602b      	str	r3, [r5, #0]
20027b0e:	e7e5      	b.n	20027adc <mbedtls_asn1_get_alg+0x5e>
20027b10:	f06f 045f 	mvn.w	r4, #95	@ 0x5f
20027b14:	e7e2      	b.n	20027adc <mbedtls_asn1_get_alg+0x5e>
20027b16:	4604      	mov	r4, r0
20027b18:	e7e0      	b.n	20027adc <mbedtls_asn1_get_alg+0x5e>

20027b1a <mpi_sub_hlp>:
20027b1a:	2300      	movs	r3, #0
20027b1c:	b5f0      	push	{r4, r5, r6, r7, lr}
20027b1e:	461c      	mov	r4, r3
20027b20:	1f16      	subs	r6, r2, #4
20027b22:	4284      	cmp	r4, r0
20027b24:	d103      	bne.n	20027b2e <mpi_sub_hlp+0x14>
20027b26:	eb02 0284 	add.w	r2, r2, r4, lsl #2
20027b2a:	b9b3      	cbnz	r3, 20027b5a <mpi_sub_hlp+0x40>
20027b2c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20027b2e:	f856 cf04 	ldr.w	ip, [r6, #4]!
20027b32:	ebac 0503 	sub.w	r5, ip, r3
20027b36:	6035      	str	r5, [r6, #0]
20027b38:	f851 7024 	ldr.w	r7, [r1, r4, lsl #2]
20027b3c:	3401      	adds	r4, #1
20027b3e:	42bd      	cmp	r5, r7
20027b40:	bf2c      	ite	cs
20027b42:	f04f 0e00 	movcs.w	lr, #0
20027b46:	f04f 0e01 	movcc.w	lr, #1
20027b4a:	1bed      	subs	r5, r5, r7
20027b4c:	459c      	cmp	ip, r3
20027b4e:	bf2c      	ite	cs
20027b50:	4673      	movcs	r3, lr
20027b52:	f10e 0301 	addcc.w	r3, lr, #1
20027b56:	6035      	str	r5, [r6, #0]
20027b58:	e7e3      	b.n	20027b22 <mpi_sub_hlp+0x8>
20027b5a:	6811      	ldr	r1, [r2, #0]
20027b5c:	1ac8      	subs	r0, r1, r3
20027b5e:	4299      	cmp	r1, r3
20027b60:	bf2c      	ite	cs
20027b62:	2300      	movcs	r3, #0
20027b64:	2301      	movcc	r3, #1
20027b66:	f842 0b04 	str.w	r0, [r2], #4
20027b6a:	e7de      	b.n	20027b2a <mpi_sub_hlp+0x10>

20027b6c <mpi_mul_hlp>:
20027b6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027b70:	4694      	mov	ip, r2
20027b72:	460e      	mov	r6, r1
20027b74:	4686      	mov	lr, r0
20027b76:	2500      	movs	r5, #0
20027b78:	f102 0440 	add.w	r4, r2, #64	@ 0x40
20027b7c:	f1be 0f0f 	cmp.w	lr, #15
20027b80:	f854 7c40 	ldr.w	r7, [r4, #-64]
20027b84:	f106 0640 	add.w	r6, r6, #64	@ 0x40
20027b88:	f104 0440 	add.w	r4, r4, #64	@ 0x40
20027b8c:	d87c      	bhi.n	20027c88 <mpi_mul_hlp+0x11c>
20027b8e:	f06f 080f 	mvn.w	r8, #15
20027b92:	0902      	lsrs	r2, r0, #4
20027b94:	fb08 0002 	mla	r0, r8, r2, r0
20027b98:	2807      	cmp	r0, #7
20027b9a:	ea4f 1e82 	mov.w	lr, r2, lsl #6
20027b9e:	eb0c 1482 	add.w	r4, ip, r2, lsl #6
20027ba2:	eb01 1682 	add.w	r6, r1, r2, lsl #6
20027ba6:	d95b      	bls.n	20027c60 <mpi_mul_hlp+0xf4>
20027ba8:	f851 100e 	ldr.w	r1, [r1, lr]
20027bac:	3808      	subs	r0, #8
20027bae:	fba1 1203 	umull	r1, r2, r1, r3
20027bb2:	1869      	adds	r1, r5, r1
20027bb4:	f142 0200 	adc.w	r2, r2, #0
20027bb8:	187f      	adds	r7, r7, r1
20027bba:	f84c 700e 	str.w	r7, [ip, lr]
20027bbe:	6871      	ldr	r1, [r6, #4]
20027bc0:	f142 0200 	adc.w	r2, r2, #0
20027bc4:	fba1 5103 	umull	r5, r1, r1, r3
20027bc8:	1952      	adds	r2, r2, r5
20027bca:	6865      	ldr	r5, [r4, #4]
20027bcc:	f141 0100 	adc.w	r1, r1, #0
20027bd0:	1952      	adds	r2, r2, r5
20027bd2:	6062      	str	r2, [r4, #4]
20027bd4:	68b2      	ldr	r2, [r6, #8]
20027bd6:	f141 0100 	adc.w	r1, r1, #0
20027bda:	fba2 5203 	umull	r5, r2, r2, r3
20027bde:	1949      	adds	r1, r1, r5
20027be0:	68a5      	ldr	r5, [r4, #8]
20027be2:	f142 0200 	adc.w	r2, r2, #0
20027be6:	1949      	adds	r1, r1, r5
20027be8:	60a1      	str	r1, [r4, #8]
20027bea:	68f1      	ldr	r1, [r6, #12]
20027bec:	f142 0200 	adc.w	r2, r2, #0
20027bf0:	fba1 5103 	umull	r5, r1, r1, r3
20027bf4:	1952      	adds	r2, r2, r5
20027bf6:	68e5      	ldr	r5, [r4, #12]
20027bf8:	f141 0100 	adc.w	r1, r1, #0
20027bfc:	1952      	adds	r2, r2, r5
20027bfe:	60e2      	str	r2, [r4, #12]
20027c00:	6932      	ldr	r2, [r6, #16]
20027c02:	f141 0100 	adc.w	r1, r1, #0
20027c06:	fba2 5203 	umull	r5, r2, r2, r3
20027c0a:	1949      	adds	r1, r1, r5
20027c0c:	6925      	ldr	r5, [r4, #16]
20027c0e:	f142 0200 	adc.w	r2, r2, #0
20027c12:	1949      	adds	r1, r1, r5
20027c14:	6121      	str	r1, [r4, #16]
20027c16:	6971      	ldr	r1, [r6, #20]
20027c18:	f142 0200 	adc.w	r2, r2, #0
20027c1c:	fba1 5103 	umull	r5, r1, r1, r3
20027c20:	1952      	adds	r2, r2, r5
20027c22:	6965      	ldr	r5, [r4, #20]
20027c24:	f141 0100 	adc.w	r1, r1, #0
20027c28:	1952      	adds	r2, r2, r5
20027c2a:	6162      	str	r2, [r4, #20]
20027c2c:	69b2      	ldr	r2, [r6, #24]
20027c2e:	f141 0100 	adc.w	r1, r1, #0
20027c32:	fba2 5203 	umull	r5, r2, r2, r3
20027c36:	1949      	adds	r1, r1, r5
20027c38:	69a5      	ldr	r5, [r4, #24]
20027c3a:	f142 0200 	adc.w	r2, r2, #0
20027c3e:	1949      	adds	r1, r1, r5
20027c40:	61a1      	str	r1, [r4, #24]
20027c42:	69f1      	ldr	r1, [r6, #28]
20027c44:	f142 0200 	adc.w	r2, r2, #0
20027c48:	fba1 1503 	umull	r1, r5, r1, r3
20027c4c:	1852      	adds	r2, r2, r1
20027c4e:	69e1      	ldr	r1, [r4, #28]
20027c50:	f145 0500 	adc.w	r5, r5, #0
20027c54:	1852      	adds	r2, r2, r1
20027c56:	61e2      	str	r2, [r4, #28]
20027c58:	f145 0500 	adc.w	r5, r5, #0
20027c5c:	3420      	adds	r4, #32
20027c5e:	3620      	adds	r6, #32
20027c60:	4627      	mov	r7, r4
20027c62:	ea4f 0c80 	mov.w	ip, r0, lsl #2
20027c66:	eb06 0080 	add.w	r0, r6, r0, lsl #2
20027c6a:	42b0      	cmp	r0, r6
20027c6c:	f857 1b04 	ldr.w	r1, [r7], #4
20027c70:	f040 80eb 	bne.w	20027e4a <mpi_mul_hlp+0x2de>
20027c74:	4464      	add	r4, ip
20027c76:	6823      	ldr	r3, [r4, #0]
20027c78:	195b      	adds	r3, r3, r5
20027c7a:	f844 3b04 	str.w	r3, [r4], #4
20027c7e:	f04f 0501 	mov.w	r5, #1
20027c82:	d2f8      	bcs.n	20027c76 <mpi_mul_hlp+0x10a>
20027c84:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027c88:	f856 2c40 	ldr.w	r2, [r6, #-64]
20027c8c:	f1ae 0e10 	sub.w	lr, lr, #16
20027c90:	fba2 2803 	umull	r2, r8, r2, r3
20027c94:	18aa      	adds	r2, r5, r2
20027c96:	f148 0500 	adc.w	r5, r8, #0
20027c9a:	18ba      	adds	r2, r7, r2
20027c9c:	f844 2c80 	str.w	r2, [r4, #-128]
20027ca0:	f856 2c3c 	ldr.w	r2, [r6, #-60]
20027ca4:	f145 0500 	adc.w	r5, r5, #0
20027ca8:	fba2 7203 	umull	r7, r2, r2, r3
20027cac:	19ef      	adds	r7, r5, r7
20027cae:	f854 5c7c 	ldr.w	r5, [r4, #-124]
20027cb2:	f142 0200 	adc.w	r2, r2, #0
20027cb6:	19ed      	adds	r5, r5, r7
20027cb8:	f844 5c7c 	str.w	r5, [r4, #-124]
20027cbc:	f856 5c38 	ldr.w	r5, [r6, #-56]
20027cc0:	f142 0200 	adc.w	r2, r2, #0
20027cc4:	fba5 7503 	umull	r7, r5, r5, r3
20027cc8:	19d7      	adds	r7, r2, r7
20027cca:	f854 2c78 	ldr.w	r2, [r4, #-120]
20027cce:	f145 0500 	adc.w	r5, r5, #0
20027cd2:	19d2      	adds	r2, r2, r7
20027cd4:	f844 2c78 	str.w	r2, [r4, #-120]
20027cd8:	f856 2c34 	ldr.w	r2, [r6, #-52]
20027cdc:	f145 0500 	adc.w	r5, r5, #0
20027ce0:	fba2 7203 	umull	r7, r2, r2, r3
20027ce4:	19ef      	adds	r7, r5, r7
20027ce6:	f854 5c74 	ldr.w	r5, [r4, #-116]
20027cea:	f142 0200 	adc.w	r2, r2, #0
20027cee:	19ed      	adds	r5, r5, r7
20027cf0:	f844 5c74 	str.w	r5, [r4, #-116]
20027cf4:	f856 5c30 	ldr.w	r5, [r6, #-48]
20027cf8:	f142 0200 	adc.w	r2, r2, #0
20027cfc:	fba5 7503 	umull	r7, r5, r5, r3
20027d00:	19d7      	adds	r7, r2, r7
20027d02:	f854 2c70 	ldr.w	r2, [r4, #-112]
20027d06:	f145 0500 	adc.w	r5, r5, #0
20027d0a:	19d2      	adds	r2, r2, r7
20027d0c:	f844 2c70 	str.w	r2, [r4, #-112]
20027d10:	f856 2c2c 	ldr.w	r2, [r6, #-44]
20027d14:	f145 0500 	adc.w	r5, r5, #0
20027d18:	fba2 7203 	umull	r7, r2, r2, r3
20027d1c:	19ef      	adds	r7, r5, r7
20027d1e:	f854 5c6c 	ldr.w	r5, [r4, #-108]
20027d22:	f142 0200 	adc.w	r2, r2, #0
20027d26:	19ed      	adds	r5, r5, r7
20027d28:	f844 5c6c 	str.w	r5, [r4, #-108]
20027d2c:	f856 5c28 	ldr.w	r5, [r6, #-40]
20027d30:	f142 0200 	adc.w	r2, r2, #0
20027d34:	fba5 7503 	umull	r7, r5, r5, r3
20027d38:	19d7      	adds	r7, r2, r7
20027d3a:	f854 2c68 	ldr.w	r2, [r4, #-104]
20027d3e:	f145 0500 	adc.w	r5, r5, #0
20027d42:	19d2      	adds	r2, r2, r7
20027d44:	f844 2c68 	str.w	r2, [r4, #-104]
20027d48:	f856 2c24 	ldr.w	r2, [r6, #-36]
20027d4c:	f145 0500 	adc.w	r5, r5, #0
20027d50:	fba2 7203 	umull	r7, r2, r2, r3
20027d54:	19ef      	adds	r7, r5, r7
20027d56:	f854 5c64 	ldr.w	r5, [r4, #-100]
20027d5a:	f142 0200 	adc.w	r2, r2, #0
20027d5e:	19ed      	adds	r5, r5, r7
20027d60:	f844 5c64 	str.w	r5, [r4, #-100]
20027d64:	f856 5c20 	ldr.w	r5, [r6, #-32]
20027d68:	f142 0200 	adc.w	r2, r2, #0
20027d6c:	fba5 7503 	umull	r7, r5, r5, r3
20027d70:	19d7      	adds	r7, r2, r7
20027d72:	f854 2c60 	ldr.w	r2, [r4, #-96]
20027d76:	f145 0500 	adc.w	r5, r5, #0
20027d7a:	19d2      	adds	r2, r2, r7
20027d7c:	f844 2c60 	str.w	r2, [r4, #-96]
20027d80:	f856 2c1c 	ldr.w	r2, [r6, #-28]
20027d84:	f145 0500 	adc.w	r5, r5, #0
20027d88:	fba2 7203 	umull	r7, r2, r2, r3
20027d8c:	19ef      	adds	r7, r5, r7
20027d8e:	f854 5c5c 	ldr.w	r5, [r4, #-92]
20027d92:	f142 0200 	adc.w	r2, r2, #0
20027d96:	19ed      	adds	r5, r5, r7
20027d98:	f844 5c5c 	str.w	r5, [r4, #-92]
20027d9c:	f856 5c18 	ldr.w	r5, [r6, #-24]
20027da0:	f142 0200 	adc.w	r2, r2, #0
20027da4:	fba5 7503 	umull	r7, r5, r5, r3
20027da8:	19d7      	adds	r7, r2, r7
20027daa:	f854 2c58 	ldr.w	r2, [r4, #-88]
20027dae:	f145 0500 	adc.w	r5, r5, #0
20027db2:	19d2      	adds	r2, r2, r7
20027db4:	f844 2c58 	str.w	r2, [r4, #-88]
20027db8:	f856 2c14 	ldr.w	r2, [r6, #-20]
20027dbc:	f145 0500 	adc.w	r5, r5, #0
20027dc0:	fba2 7203 	umull	r7, r2, r2, r3
20027dc4:	19ef      	adds	r7, r5, r7
20027dc6:	f854 5c54 	ldr.w	r5, [r4, #-84]
20027dca:	f142 0200 	adc.w	r2, r2, #0
20027dce:	19ed      	adds	r5, r5, r7
20027dd0:	f844 5c54 	str.w	r5, [r4, #-84]
20027dd4:	f856 5c10 	ldr.w	r5, [r6, #-16]
20027dd8:	f142 0200 	adc.w	r2, r2, #0
20027ddc:	fba5 7503 	umull	r7, r5, r5, r3
20027de0:	19d7      	adds	r7, r2, r7
20027de2:	f854 2c50 	ldr.w	r2, [r4, #-80]
20027de6:	f145 0500 	adc.w	r5, r5, #0
20027dea:	19d2      	adds	r2, r2, r7
20027dec:	f844 2c50 	str.w	r2, [r4, #-80]
20027df0:	f856 2c0c 	ldr.w	r2, [r6, #-12]
20027df4:	f145 0500 	adc.w	r5, r5, #0
20027df8:	fba2 7203 	umull	r7, r2, r2, r3
20027dfc:	19ef      	adds	r7, r5, r7
20027dfe:	f854 5c4c 	ldr.w	r5, [r4, #-76]
20027e02:	f142 0200 	adc.w	r2, r2, #0
20027e06:	19ed      	adds	r5, r5, r7
20027e08:	f844 5c4c 	str.w	r5, [r4, #-76]
20027e0c:	f856 5c08 	ldr.w	r5, [r6, #-8]
20027e10:	f142 0200 	adc.w	r2, r2, #0
20027e14:	fba5 5703 	umull	r5, r7, r5, r3
20027e18:	1955      	adds	r5, r2, r5
20027e1a:	f854 2c48 	ldr.w	r2, [r4, #-72]
20027e1e:	f147 0700 	adc.w	r7, r7, #0
20027e22:	1952      	adds	r2, r2, r5
20027e24:	f844 2c48 	str.w	r2, [r4, #-72]
20027e28:	f856 2c04 	ldr.w	r2, [r6, #-4]
20027e2c:	f147 0700 	adc.w	r7, r7, #0
20027e30:	fba2 2503 	umull	r2, r5, r2, r3
20027e34:	18bf      	adds	r7, r7, r2
20027e36:	f854 2c44 	ldr.w	r2, [r4, #-68]
20027e3a:	f145 0500 	adc.w	r5, r5, #0
20027e3e:	19d2      	adds	r2, r2, r7
20027e40:	f145 0500 	adc.w	r5, r5, #0
20027e44:	f844 2c44 	str.w	r2, [r4, #-68]
20027e48:	e698      	b.n	20027b7c <mpi_mul_hlp+0x10>
20027e4a:	f856 2b04 	ldr.w	r2, [r6], #4
20027e4e:	fba2 2e03 	umull	r2, lr, r2, r3
20027e52:	18aa      	adds	r2, r5, r2
20027e54:	f14e 0500 	adc.w	r5, lr, #0
20027e58:	1889      	adds	r1, r1, r2
20027e5a:	f145 0500 	adc.w	r5, r5, #0
20027e5e:	f847 1c04 	str.w	r1, [r7, #-4]
20027e62:	e702      	b.n	20027c6a <mpi_mul_hlp+0xfe>

20027e64 <mbedtls_mpi_init>:
20027e64:	b120      	cbz	r0, 20027e70 <mbedtls_mpi_init+0xc>
20027e66:	2300      	movs	r3, #0
20027e68:	2201      	movs	r2, #1
20027e6a:	e9c0 2300 	strd	r2, r3, [r0]
20027e6e:	6083      	str	r3, [r0, #8]
20027e70:	4770      	bx	lr

20027e72 <mbedtls_mpi_free>:
20027e72:	b510      	push	{r4, lr}
20027e74:	4604      	mov	r4, r0
20027e76:	b168      	cbz	r0, 20027e94 <mbedtls_mpi_free+0x22>
20027e78:	6883      	ldr	r3, [r0, #8]
20027e7a:	b133      	cbz	r3, 20027e8a <mbedtls_mpi_free+0x18>
20027e7c:	2100      	movs	r1, #0
20027e7e:	6842      	ldr	r2, [r0, #4]
20027e80:	3a01      	subs	r2, #1
20027e82:	d208      	bcs.n	20027e96 <mbedtls_mpi_free+0x24>
20027e84:	68a0      	ldr	r0, [r4, #8]
20027e86:	f002 fcbf 	bl	2002a808 <free>
20027e8a:	2300      	movs	r3, #0
20027e8c:	2201      	movs	r2, #1
20027e8e:	e9c4 2300 	strd	r2, r3, [r4]
20027e92:	60a3      	str	r3, [r4, #8]
20027e94:	bd10      	pop	{r4, pc}
20027e96:	f843 1b04 	str.w	r1, [r3], #4
20027e9a:	e7f1      	b.n	20027e80 <mbedtls_mpi_free+0xe>

20027e9c <mbedtls_mpi_grow>:
20027e9c:	f242 7310 	movw	r3, #10000	@ 0x2710
20027ea0:	4299      	cmp	r1, r3
20027ea2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027ea6:	4605      	mov	r5, r0
20027ea8:	460f      	mov	r7, r1
20027eaa:	d903      	bls.n	20027eb4 <mbedtls_mpi_grow+0x18>
20027eac:	f06f 000f 	mvn.w	r0, #15
20027eb0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027eb4:	6846      	ldr	r6, [r0, #4]
20027eb6:	428e      	cmp	r6, r1
20027eb8:	d301      	bcc.n	20027ebe <mbedtls_mpi_grow+0x22>
20027eba:	2000      	movs	r0, #0
20027ebc:	e7f8      	b.n	20027eb0 <mbedtls_mpi_grow+0x14>
20027ebe:	2104      	movs	r1, #4
20027ec0:	4638      	mov	r0, r7
20027ec2:	f002 fc85 	bl	2002a7d0 <calloc>
20027ec6:	4680      	mov	r8, r0
20027ec8:	2800      	cmp	r0, #0
20027eca:	d0ef      	beq.n	20027eac <mbedtls_mpi_grow+0x10>
20027ecc:	68ac      	ldr	r4, [r5, #8]
20027ece:	b15c      	cbz	r4, 20027ee8 <mbedtls_mpi_grow+0x4c>
20027ed0:	00b6      	lsls	r6, r6, #2
20027ed2:	4632      	mov	r2, r6
20027ed4:	4621      	mov	r1, r4
20027ed6:	f002 fd77 	bl	2002a9c8 <memcpy>
20027eda:	2300      	movs	r3, #0
20027edc:	4426      	add	r6, r4
20027ede:	42b4      	cmp	r4, r6
20027ee0:	d105      	bne.n	20027eee <mbedtls_mpi_grow+0x52>
20027ee2:	68a8      	ldr	r0, [r5, #8]
20027ee4:	f002 fc90 	bl	2002a808 <free>
20027ee8:	e9c5 7801 	strd	r7, r8, [r5, #4]
20027eec:	e7e5      	b.n	20027eba <mbedtls_mpi_grow+0x1e>
20027eee:	f844 3b04 	str.w	r3, [r4], #4
20027ef2:	e7f4      	b.n	20027ede <mbedtls_mpi_grow+0x42>

20027ef4 <mbedtls_mpi_copy>:
20027ef4:	4288      	cmp	r0, r1
20027ef6:	b570      	push	{r4, r5, r6, lr}
20027ef8:	4605      	mov	r5, r0
20027efa:	460e      	mov	r6, r1
20027efc:	d003      	beq.n	20027f06 <mbedtls_mpi_copy+0x12>
20027efe:	688b      	ldr	r3, [r1, #8]
20027f00:	b91b      	cbnz	r3, 20027f0a <mbedtls_mpi_copy+0x16>
20027f02:	f7ff ffb6 	bl	20027e72 <mbedtls_mpi_free>
20027f06:	2000      	movs	r0, #0
20027f08:	bd70      	pop	{r4, r5, r6, pc}
20027f0a:	684a      	ldr	r2, [r1, #4]
20027f0c:	3a01      	subs	r2, #1
20027f0e:	b11a      	cbz	r2, 20027f18 <mbedtls_mpi_copy+0x24>
20027f10:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20027f14:	2900      	cmp	r1, #0
20027f16:	d0f9      	beq.n	20027f0c <mbedtls_mpi_copy+0x18>
20027f18:	6833      	ldr	r3, [r6, #0]
20027f1a:	1c54      	adds	r4, r2, #1
20027f1c:	4621      	mov	r1, r4
20027f1e:	4628      	mov	r0, r5
20027f20:	602b      	str	r3, [r5, #0]
20027f22:	f7ff ffbb 	bl	20027e9c <mbedtls_mpi_grow>
20027f26:	4601      	mov	r1, r0
20027f28:	b950      	cbnz	r0, 20027f40 <mbedtls_mpi_copy+0x4c>
20027f2a:	686a      	ldr	r2, [r5, #4]
20027f2c:	68a8      	ldr	r0, [r5, #8]
20027f2e:	0092      	lsls	r2, r2, #2
20027f30:	f002 fd30 	bl	2002a994 <memset>
20027f34:	68b1      	ldr	r1, [r6, #8]
20027f36:	68a8      	ldr	r0, [r5, #8]
20027f38:	00a2      	lsls	r2, r4, #2
20027f3a:	f002 fd45 	bl	2002a9c8 <memcpy>
20027f3e:	e7e2      	b.n	20027f06 <mbedtls_mpi_copy+0x12>
20027f40:	f06f 000f 	mvn.w	r0, #15
20027f44:	e7e0      	b.n	20027f08 <mbedtls_mpi_copy+0x14>

20027f46 <mbedtls_mpi_lset>:
20027f46:	b570      	push	{r4, r5, r6, lr}
20027f48:	460e      	mov	r6, r1
20027f4a:	2101      	movs	r1, #1
20027f4c:	4604      	mov	r4, r0
20027f4e:	f7ff ffa5 	bl	20027e9c <mbedtls_mpi_grow>
20027f52:	4605      	mov	r5, r0
20027f54:	b988      	cbnz	r0, 20027f7a <mbedtls_mpi_lset+0x34>
20027f56:	6862      	ldr	r2, [r4, #4]
20027f58:	4601      	mov	r1, r0
20027f5a:	0092      	lsls	r2, r2, #2
20027f5c:	68a0      	ldr	r0, [r4, #8]
20027f5e:	f002 fd19 	bl	2002a994 <memset>
20027f62:	68a3      	ldr	r3, [r4, #8]
20027f64:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20027f68:	2e00      	cmp	r6, #0
20027f6a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20027f6e:	601a      	str	r2, [r3, #0]
20027f70:	bfac      	ite	ge
20027f72:	2301      	movge	r3, #1
20027f74:	f04f 33ff 	movlt.w	r3, #4294967295
20027f78:	6023      	str	r3, [r4, #0]
20027f7a:	4628      	mov	r0, r5
20027f7c:	bd70      	pop	{r4, r5, r6, pc}

20027f7e <mbedtls_mpi_lsb>:
20027f7e:	2300      	movs	r3, #0
20027f80:	4619      	mov	r1, r3
20027f82:	b570      	push	{r4, r5, r6, lr}
20027f84:	6844      	ldr	r4, [r0, #4]
20027f86:	428c      	cmp	r4, r1
20027f88:	d101      	bne.n	20027f8e <mbedtls_mpi_lsb+0x10>
20027f8a:	2000      	movs	r0, #0
20027f8c:	e008      	b.n	20027fa0 <mbedtls_mpi_lsb+0x22>
20027f8e:	6882      	ldr	r2, [r0, #8]
20027f90:	f852 5021 	ldr.w	r5, [r2, r1, lsl #2]
20027f94:	2200      	movs	r2, #0
20027f96:	fa25 f602 	lsr.w	r6, r5, r2
20027f9a:	07f6      	lsls	r6, r6, #31
20027f9c:	d501      	bpl.n	20027fa2 <mbedtls_mpi_lsb+0x24>
20027f9e:	1898      	adds	r0, r3, r2
20027fa0:	bd70      	pop	{r4, r5, r6, pc}
20027fa2:	3201      	adds	r2, #1
20027fa4:	2a20      	cmp	r2, #32
20027fa6:	d1f6      	bne.n	20027f96 <mbedtls_mpi_lsb+0x18>
20027fa8:	3320      	adds	r3, #32
20027faa:	3101      	adds	r1, #1
20027fac:	e7eb      	b.n	20027f86 <mbedtls_mpi_lsb+0x8>

20027fae <mbedtls_mpi_bitlen>:
20027fae:	4602      	mov	r2, r0
20027fb0:	6840      	ldr	r0, [r0, #4]
20027fb2:	b188      	cbz	r0, 20027fd8 <mbedtls_mpi_bitlen+0x2a>
20027fb4:	6891      	ldr	r1, [r2, #8]
20027fb6:	1e43      	subs	r3, r0, #1
20027fb8:	b97b      	cbnz	r3, 20027fda <mbedtls_mpi_bitlen+0x2c>
20027fba:	461a      	mov	r2, r3
20027fbc:	5889      	ldr	r1, [r1, r2]
20027fbe:	2000      	movs	r0, #0
20027fc0:	f04f 4200 	mov.w	r2, #2147483648	@ 0x80000000
20027fc4:	4211      	tst	r1, r2
20027fc6:	d104      	bne.n	20027fd2 <mbedtls_mpi_bitlen+0x24>
20027fc8:	3001      	adds	r0, #1
20027fca:	2820      	cmp	r0, #32
20027fcc:	ea4f 0252 	mov.w	r2, r2, lsr #1
20027fd0:	d1f8      	bne.n	20027fc4 <mbedtls_mpi_bitlen+0x16>
20027fd2:	3301      	adds	r3, #1
20027fd4:	ebc0 1043 	rsb	r0, r0, r3, lsl #5
20027fd8:	4770      	bx	lr
20027fda:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
20027fde:	009a      	lsls	r2, r3, #2
20027fe0:	2800      	cmp	r0, #0
20027fe2:	d1eb      	bne.n	20027fbc <mbedtls_mpi_bitlen+0xe>
20027fe4:	3b01      	subs	r3, #1
20027fe6:	e7e7      	b.n	20027fb8 <mbedtls_mpi_bitlen+0xa>

20027fe8 <mbedtls_mpi_size>:
20027fe8:	b508      	push	{r3, lr}
20027fea:	f7ff ffe0 	bl	20027fae <mbedtls_mpi_bitlen>
20027fee:	3007      	adds	r0, #7
20027ff0:	08c0      	lsrs	r0, r0, #3
20027ff2:	bd08      	pop	{r3, pc}

20027ff4 <mbedtls_mpi_read_binary>:
20027ff4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027ff6:	4607      	mov	r7, r0
20027ff8:	460c      	mov	r4, r1
20027ffa:	4616      	mov	r6, r2
20027ffc:	2500      	movs	r5, #0
20027ffe:	42b5      	cmp	r5, r6
20028000:	d001      	beq.n	20028006 <mbedtls_mpi_read_binary+0x12>
20028002:	5d63      	ldrb	r3, [r4, r5]
20028004:	b173      	cbz	r3, 20028024 <mbedtls_mpi_read_binary+0x30>
20028006:	1b71      	subs	r1, r6, r5
20028008:	f011 0303 	ands.w	r3, r1, #3
2002800c:	bf18      	it	ne
2002800e:	2301      	movne	r3, #1
20028010:	4638      	mov	r0, r7
20028012:	eb03 0191 	add.w	r1, r3, r1, lsr #2
20028016:	f7ff ff41 	bl	20027e9c <mbedtls_mpi_grow>
2002801a:	4601      	mov	r1, r0
2002801c:	b120      	cbz	r0, 20028028 <mbedtls_mpi_read_binary+0x34>
2002801e:	f06f 000f 	mvn.w	r0, #15
20028022:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028024:	3501      	adds	r5, #1
20028026:	e7ea      	b.n	20027ffe <mbedtls_mpi_read_binary+0xa>
20028028:	4638      	mov	r0, r7
2002802a:	f7ff ff8c 	bl	20027f46 <mbedtls_mpi_lset>
2002802e:	2800      	cmp	r0, #0
20028030:	d1f5      	bne.n	2002801e <mbedtls_mpi_read_binary+0x2a>
20028032:	4603      	mov	r3, r0
20028034:	4434      	add	r4, r6
20028036:	1af2      	subs	r2, r6, r3
20028038:	4295      	cmp	r5, r2
2002803a:	d2f2      	bcs.n	20028022 <mbedtls_mpi_read_binary+0x2e>
2002803c:	f8d7 e008 	ldr.w	lr, [r7, #8]
20028040:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
20028044:	00da      	lsls	r2, r3, #3
20028046:	f023 0c03 	bic.w	ip, r3, #3
2002804a:	f002 0218 	and.w	r2, r2, #24
2002804e:	4091      	lsls	r1, r2
20028050:	f85e 200c 	ldr.w	r2, [lr, ip]
20028054:	3301      	adds	r3, #1
20028056:	430a      	orrs	r2, r1
20028058:	f84e 200c 	str.w	r2, [lr, ip]
2002805c:	e7eb      	b.n	20028036 <mbedtls_mpi_read_binary+0x42>

2002805e <mbedtls_mpi_write_binary>:
2002805e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20028060:	4615      	mov	r5, r2
20028062:	4607      	mov	r7, r0
20028064:	460c      	mov	r4, r1
20028066:	f7ff ffbf 	bl	20027fe8 <mbedtls_mpi_size>
2002806a:	42a8      	cmp	r0, r5
2002806c:	4606      	mov	r6, r0
2002806e:	d816      	bhi.n	2002809e <mbedtls_mpi_write_binary+0x40>
20028070:	4620      	mov	r0, r4
20028072:	462a      	mov	r2, r5
20028074:	2100      	movs	r1, #0
20028076:	f002 fc8d 	bl	2002a994 <memset>
2002807a:	2300      	movs	r3, #0
2002807c:	442c      	add	r4, r5
2002807e:	42b3      	cmp	r3, r6
20028080:	d101      	bne.n	20028086 <mbedtls_mpi_write_binary+0x28>
20028082:	2000      	movs	r0, #0
20028084:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028086:	68b8      	ldr	r0, [r7, #8]
20028088:	f023 0203 	bic.w	r2, r3, #3
2002808c:	5882      	ldr	r2, [r0, r2]
2002808e:	00d9      	lsls	r1, r3, #3
20028090:	f001 0118 	and.w	r1, r1, #24
20028094:	40ca      	lsrs	r2, r1
20028096:	f804 2d01 	strb.w	r2, [r4, #-1]!
2002809a:	3301      	adds	r3, #1
2002809c:	e7ef      	b.n	2002807e <mbedtls_mpi_write_binary+0x20>
2002809e:	f06f 0007 	mvn.w	r0, #7
200280a2:	e7ef      	b.n	20028084 <mbedtls_mpi_write_binary+0x26>

200280a4 <mbedtls_mpi_shift_l>:
200280a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200280a6:	4605      	mov	r5, r0
200280a8:	460e      	mov	r6, r1
200280aa:	094c      	lsrs	r4, r1, #5
200280ac:	f001 071f 	and.w	r7, r1, #31
200280b0:	f7ff ff7d 	bl	20027fae <mbedtls_mpi_bitlen>
200280b4:	686b      	ldr	r3, [r5, #4]
200280b6:	4430      	add	r0, r6
200280b8:	ebb0 1f43 	cmp.w	r0, r3, lsl #5
200280bc:	d805      	bhi.n	200280ca <mbedtls_mpi_shift_l+0x26>
200280be:	2e1f      	cmp	r6, #31
200280c0:	d811      	bhi.n	200280e6 <mbedtls_mpi_shift_l+0x42>
200280c2:	2f00      	cmp	r7, #0
200280c4:	d143      	bne.n	2002814e <mbedtls_mpi_shift_l+0xaa>
200280c6:	2000      	movs	r0, #0
200280c8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200280ca:	f010 011f 	ands.w	r1, r0, #31
200280ce:	bf18      	it	ne
200280d0:	2101      	movne	r1, #1
200280d2:	eb01 1150 	add.w	r1, r1, r0, lsr #5
200280d6:	4628      	mov	r0, r5
200280d8:	f7ff fee0 	bl	20027e9c <mbedtls_mpi_grow>
200280dc:	2800      	cmp	r0, #0
200280de:	d0ee      	beq.n	200280be <mbedtls_mpi_shift_l+0x1a>
200280e0:	f06f 000f 	mvn.w	r0, #15
200280e4:	e7f0      	b.n	200280c8 <mbedtls_mpi_shift_l+0x24>
200280e6:	f06f 0003 	mvn.w	r0, #3
200280ea:	686a      	ldr	r2, [r5, #4]
200280ec:	4360      	muls	r0, r4
200280ee:	4611      	mov	r1, r2
200280f0:	0093      	lsls	r3, r2, #2
200280f2:	42a1      	cmp	r1, r4
200280f4:	f1a3 0304 	sub.w	r3, r3, #4
200280f8:	d80c      	bhi.n	20028114 <mbedtls_mpi_shift_l+0x70>
200280fa:	1aa3      	subs	r3, r4, r2
200280fc:	4294      	cmp	r4, r2
200280fe:	bf88      	it	hi
20028100:	2300      	movhi	r3, #0
20028102:	4413      	add	r3, r2
20028104:	2200      	movs	r2, #0
20028106:	009b      	lsls	r3, r3, #2
20028108:	3b04      	subs	r3, #4
2002810a:	1d19      	adds	r1, r3, #4
2002810c:	d0d9      	beq.n	200280c2 <mbedtls_mpi_shift_l+0x1e>
2002810e:	68a9      	ldr	r1, [r5, #8]
20028110:	50ca      	str	r2, [r1, r3]
20028112:	e7f9      	b.n	20028108 <mbedtls_mpi_shift_l+0x64>
20028114:	68ae      	ldr	r6, [r5, #8]
20028116:	3901      	subs	r1, #1
20028118:	eb06 0c03 	add.w	ip, r6, r3
2002811c:	f85c c000 	ldr.w	ip, [ip, r0]
20028120:	f846 c003 	str.w	ip, [r6, r3]
20028124:	e7e5      	b.n	200280f2 <mbedtls_mpi_shift_l+0x4e>
20028126:	68ab      	ldr	r3, [r5, #8]
20028128:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
2002812c:	fa01 f007 	lsl.w	r0, r1, r7
20028130:	f843 0024 	str.w	r0, [r3, r4, lsl #2]
20028134:	68a8      	ldr	r0, [r5, #8]
20028136:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
2002813a:	4313      	orrs	r3, r2
2002813c:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
20028140:	fa21 f206 	lsr.w	r2, r1, r6
20028144:	3401      	adds	r4, #1
20028146:	686b      	ldr	r3, [r5, #4]
20028148:	42a3      	cmp	r3, r4
2002814a:	d8ec      	bhi.n	20028126 <mbedtls_mpi_shift_l+0x82>
2002814c:	e7bb      	b.n	200280c6 <mbedtls_mpi_shift_l+0x22>
2002814e:	2200      	movs	r2, #0
20028150:	f1c7 0620 	rsb	r6, r7, #32
20028154:	e7f7      	b.n	20028146 <mbedtls_mpi_shift_l+0xa2>

20028156 <mbedtls_mpi_shift_r>:
20028156:	b4f0      	push	{r4, r5, r6, r7}
20028158:	6843      	ldr	r3, [r0, #4]
2002815a:	094c      	lsrs	r4, r1, #5
2002815c:	42a3      	cmp	r3, r4
2002815e:	f001 021f 	and.w	r2, r1, #31
20028162:	d301      	bcc.n	20028168 <mbedtls_mpi_shift_r+0x12>
20028164:	d104      	bne.n	20028170 <mbedtls_mpi_shift_r+0x1a>
20028166:	b392      	cbz	r2, 200281ce <mbedtls_mpi_shift_r+0x78>
20028168:	bcf0      	pop	{r4, r5, r6, r7}
2002816a:	2100      	movs	r1, #0
2002816c:	f7ff beeb 	b.w	20027f46 <mbedtls_mpi_lset>
20028170:	291f      	cmp	r1, #31
20028172:	d82e      	bhi.n	200281d2 <mbedtls_mpi_shift_r+0x7c>
20028174:	b9aa      	cbnz	r2, 200281a2 <mbedtls_mpi_shift_r+0x4c>
20028176:	bcf0      	pop	{r4, r5, r6, r7}
20028178:	2000      	movs	r0, #0
2002817a:	4770      	bx	lr
2002817c:	6885      	ldr	r5, [r0, #8]
2002817e:	586e      	ldr	r6, [r5, r1]
20028180:	3104      	adds	r1, #4
20028182:	f845 6023 	str.w	r6, [r5, r3, lsl #2]
20028186:	3301      	adds	r3, #1
20028188:	6845      	ldr	r5, [r0, #4]
2002818a:	1b2d      	subs	r5, r5, r4
2002818c:	429d      	cmp	r5, r3
2002818e:	d8f5      	bhi.n	2002817c <mbedtls_mpi_shift_r+0x26>
20028190:	2400      	movs	r4, #0
20028192:	6841      	ldr	r1, [r0, #4]
20028194:	4299      	cmp	r1, r3
20028196:	d9ed      	bls.n	20028174 <mbedtls_mpi_shift_r+0x1e>
20028198:	6881      	ldr	r1, [r0, #8]
2002819a:	f841 4023 	str.w	r4, [r1, r3, lsl #2]
2002819e:	3301      	adds	r3, #1
200281a0:	e7f7      	b.n	20028192 <mbedtls_mpi_shift_r+0x3c>
200281a2:	2400      	movs	r4, #0
200281a4:	6843      	ldr	r3, [r0, #4]
200281a6:	f1c2 0720 	rsb	r7, r2, #32
200281aa:	3b01      	subs	r3, #1
200281ac:	d3e3      	bcc.n	20028176 <mbedtls_mpi_shift_r+0x20>
200281ae:	6881      	ldr	r1, [r0, #8]
200281b0:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
200281b4:	fa25 f602 	lsr.w	r6, r5, r2
200281b8:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
200281bc:	6886      	ldr	r6, [r0, #8]
200281be:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
200281c2:	4321      	orrs	r1, r4
200281c4:	f846 1023 	str.w	r1, [r6, r3, lsl #2]
200281c8:	fa05 f407 	lsl.w	r4, r5, r7
200281cc:	e7ed      	b.n	200281aa <mbedtls_mpi_shift_r+0x54>
200281ce:	291f      	cmp	r1, #31
200281d0:	d9d1      	bls.n	20028176 <mbedtls_mpi_shift_r+0x20>
200281d2:	2300      	movs	r3, #0
200281d4:	00a1      	lsls	r1, r4, #2
200281d6:	e7d7      	b.n	20028188 <mbedtls_mpi_shift_r+0x32>

200281d8 <mbedtls_mpi_cmp_abs>:
200281d8:	b530      	push	{r4, r5, lr}
200281da:	6842      	ldr	r2, [r0, #4]
200281dc:	b922      	cbnz	r2, 200281e8 <mbedtls_mpi_cmp_abs+0x10>
200281de:	684b      	ldr	r3, [r1, #4]
200281e0:	b95b      	cbnz	r3, 200281fa <mbedtls_mpi_cmp_abs+0x22>
200281e2:	b19a      	cbz	r2, 2002820c <mbedtls_mpi_cmp_abs+0x34>
200281e4:	2001      	movs	r0, #1
200281e6:	e015      	b.n	20028214 <mbedtls_mpi_cmp_abs+0x3c>
200281e8:	6883      	ldr	r3, [r0, #8]
200281ea:	eb03 0382 	add.w	r3, r3, r2, lsl #2
200281ee:	f853 3c04 	ldr.w	r3, [r3, #-4]
200281f2:	2b00      	cmp	r3, #0
200281f4:	d1f3      	bne.n	200281de <mbedtls_mpi_cmp_abs+0x6>
200281f6:	3a01      	subs	r2, #1
200281f8:	e7f0      	b.n	200281dc <mbedtls_mpi_cmp_abs+0x4>
200281fa:	688c      	ldr	r4, [r1, #8]
200281fc:	eb04 0583 	add.w	r5, r4, r3, lsl #2
20028200:	f855 5c04 	ldr.w	r5, [r5, #-4]
20028204:	b90d      	cbnz	r5, 2002820a <mbedtls_mpi_cmp_abs+0x32>
20028206:	3b01      	subs	r3, #1
20028208:	e7ea      	b.n	200281e0 <mbedtls_mpi_cmp_abs+0x8>
2002820a:	b922      	cbnz	r2, 20028216 <mbedtls_mpi_cmp_abs+0x3e>
2002820c:	1e18      	subs	r0, r3, #0
2002820e:	bf18      	it	ne
20028210:	2001      	movne	r0, #1
20028212:	4240      	negs	r0, r0
20028214:	bd30      	pop	{r4, r5, pc}
20028216:	4293      	cmp	r3, r2
20028218:	d3e4      	bcc.n	200281e4 <mbedtls_mpi_cmp_abs+0xc>
2002821a:	d80e      	bhi.n	2002823a <mbedtls_mpi_cmp_abs+0x62>
2002821c:	3a01      	subs	r2, #1
2002821e:	6883      	ldr	r3, [r0, #8]
20028220:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20028224:	f854 3022 	ldr.w	r3, [r4, r2, lsl #2]
20028228:	4299      	cmp	r1, r3
2002822a:	d8db      	bhi.n	200281e4 <mbedtls_mpi_cmp_abs+0xc>
2002822c:	f102 32ff 	add.w	r2, r2, #4294967295
20028230:	d303      	bcc.n	2002823a <mbedtls_mpi_cmp_abs+0x62>
20028232:	1c53      	adds	r3, r2, #1
20028234:	d1f3      	bne.n	2002821e <mbedtls_mpi_cmp_abs+0x46>
20028236:	2000      	movs	r0, #0
20028238:	e7ec      	b.n	20028214 <mbedtls_mpi_cmp_abs+0x3c>
2002823a:	f04f 30ff 	mov.w	r0, #4294967295
2002823e:	e7e9      	b.n	20028214 <mbedtls_mpi_cmp_abs+0x3c>

20028240 <mpi_montmul>:
20028240:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028244:	4615      	mov	r5, r2
20028246:	b087      	sub	sp, #28
20028248:	9305      	str	r3, [sp, #20]
2002824a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
2002824c:	4606      	mov	r6, r0
2002824e:	685a      	ldr	r2, [r3, #4]
20028250:	686b      	ldr	r3, [r5, #4]
20028252:	4689      	mov	r9, r1
20028254:	3301      	adds	r3, #1
20028256:	429a      	cmp	r2, r3
20028258:	d359      	bcc.n	2002830e <mpi_montmul+0xce>
2002825a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
2002825c:	6898      	ldr	r0, [r3, #8]
2002825e:	2800      	cmp	r0, #0
20028260:	d055      	beq.n	2002830e <mpi_montmul+0xce>
20028262:	0092      	lsls	r2, r2, #2
20028264:	2100      	movs	r1, #0
20028266:	f002 fb95 	bl	2002a994 <memset>
2002826a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
2002826c:	f8d5 8004 	ldr.w	r8, [r5, #4]
20028270:	f8d3 a008 	ldr.w	sl, [r3, #8]
20028274:	f8d9 3004 	ldr.w	r3, [r9, #4]
20028278:	46d3      	mov	fp, sl
2002827a:	4543      	cmp	r3, r8
2002827c:	bf28      	it	cs
2002827e:	4643      	movcs	r3, r8
20028280:	2400      	movs	r4, #0
20028282:	9304      	str	r3, [sp, #16]
20028284:	f108 0301 	add.w	r3, r8, #1
20028288:	009a      	lsls	r2, r3, #2
2002828a:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
2002828e:	9202      	str	r2, [sp, #8]
20028290:	9303      	str	r3, [sp, #12]
20028292:	4544      	cmp	r4, r8
20028294:	68b0      	ldr	r0, [r6, #8]
20028296:	d118      	bne.n	200282ca <mpi_montmul+0x8a>
20028298:	9b02      	ldr	r3, [sp, #8]
2002829a:	1f19      	subs	r1, r3, #4
2002829c:	461a      	mov	r2, r3
2002829e:	4451      	add	r1, sl
200282a0:	f002 fb92 	bl	2002a9c8 <memcpy>
200282a4:	4629      	mov	r1, r5
200282a6:	4630      	mov	r0, r6
200282a8:	f7ff ff96 	bl	200281d8 <mbedtls_mpi_cmp_abs>
200282ac:	3001      	adds	r0, #1
200282ae:	68b1      	ldr	r1, [r6, #8]
200282b0:	bf0c      	ite	eq
200282b2:	9b10      	ldreq	r3, [sp, #64]	@ 0x40
200282b4:	460a      	movne	r2, r1
200282b6:	4620      	mov	r0, r4
200282b8:	bf14      	ite	ne
200282ba:	68a9      	ldrne	r1, [r5, #8]
200282bc:	689a      	ldreq	r2, [r3, #8]
200282be:	f7ff fc2c 	bl	20027b1a <mpi_sub_hlp>
200282c2:	2000      	movs	r0, #0
200282c4:	b007      	add	sp, #28
200282c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200282ca:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
200282ce:	f8d9 1008 	ldr.w	r1, [r9, #8]
200282d2:	9301      	str	r3, [sp, #4]
200282d4:	9a01      	ldr	r2, [sp, #4]
200282d6:	680b      	ldr	r3, [r1, #0]
200282d8:	f8db 7000 	ldr.w	r7, [fp]
200282dc:	9804      	ldr	r0, [sp, #16]
200282de:	fb03 7702 	mla	r7, r3, r2, r7
200282e2:	9b05      	ldr	r3, [sp, #20]
200282e4:	3401      	adds	r4, #1
200282e6:	435f      	muls	r7, r3
200282e8:	4613      	mov	r3, r2
200282ea:	465a      	mov	r2, fp
200282ec:	f7ff fc3e 	bl	20027b6c <mpi_mul_hlp>
200282f0:	465a      	mov	r2, fp
200282f2:	463b      	mov	r3, r7
200282f4:	4640      	mov	r0, r8
200282f6:	68a9      	ldr	r1, [r5, #8]
200282f8:	f7ff fc38 	bl	20027b6c <mpi_mul_hlp>
200282fc:	2200      	movs	r2, #0
200282fe:	9b01      	ldr	r3, [sp, #4]
20028300:	f84b 3b04 	str.w	r3, [fp], #4
20028304:	9b03      	ldr	r3, [sp, #12]
20028306:	f843 2f04 	str.w	r2, [r3, #4]!
2002830a:	9303      	str	r3, [sp, #12]
2002830c:	e7c1      	b.n	20028292 <mpi_montmul+0x52>
2002830e:	f06f 0003 	mvn.w	r0, #3
20028312:	e7d7      	b.n	200282c4 <mpi_montmul+0x84>

20028314 <mbedtls_mpi_cmp_mpi>:
20028314:	4602      	mov	r2, r0
20028316:	b530      	push	{r4, r5, lr}
20028318:	6843      	ldr	r3, [r0, #4]
2002831a:	b923      	cbnz	r3, 20028326 <mbedtls_mpi_cmp_mpi+0x12>
2002831c:	6848      	ldr	r0, [r1, #4]
2002831e:	b958      	cbnz	r0, 20028338 <mbedtls_mpi_cmp_mpi+0x24>
20028320:	2b00      	cmp	r3, #0
20028322:	d136      	bne.n	20028392 <mbedtls_mpi_cmp_mpi+0x7e>
20028324:	e02f      	b.n	20028386 <mbedtls_mpi_cmp_mpi+0x72>
20028326:	6890      	ldr	r0, [r2, #8]
20028328:	eb00 0083 	add.w	r0, r0, r3, lsl #2
2002832c:	f850 0c04 	ldr.w	r0, [r0, #-4]
20028330:	2800      	cmp	r0, #0
20028332:	d1f3      	bne.n	2002831c <mbedtls_mpi_cmp_mpi+0x8>
20028334:	3b01      	subs	r3, #1
20028336:	e7f0      	b.n	2002831a <mbedtls_mpi_cmp_mpi+0x6>
20028338:	688c      	ldr	r4, [r1, #8]
2002833a:	eb04 0580 	add.w	r5, r4, r0, lsl #2
2002833e:	f855 5c04 	ldr.w	r5, [r5, #-4]
20028342:	bb15      	cbnz	r5, 2002838a <mbedtls_mpi_cmp_mpi+0x76>
20028344:	3801      	subs	r0, #1
20028346:	e7ea      	b.n	2002831e <mbedtls_mpi_cmp_mpi+0xa>
20028348:	680d      	ldr	r5, [r1, #0]
2002834a:	d202      	bcs.n	20028352 <mbedtls_mpi_cmp_mpi+0x3e>
2002834c:	6808      	ldr	r0, [r1, #0]
2002834e:	4240      	negs	r0, r0
20028350:	e020      	b.n	20028394 <mbedtls_mpi_cmp_mpi+0x80>
20028352:	6810      	ldr	r0, [r2, #0]
20028354:	2800      	cmp	r0, #0
20028356:	dd03      	ble.n	20028360 <mbedtls_mpi_cmp_mpi+0x4c>
20028358:	2d00      	cmp	r5, #0
2002835a:	da07      	bge.n	2002836c <mbedtls_mpi_cmp_mpi+0x58>
2002835c:	2001      	movs	r0, #1
2002835e:	e019      	b.n	20028394 <mbedtls_mpi_cmp_mpi+0x80>
20028360:	2d00      	cmp	r5, #0
20028362:	dd03      	ble.n	2002836c <mbedtls_mpi_cmp_mpi+0x58>
20028364:	b110      	cbz	r0, 2002836c <mbedtls_mpi_cmp_mpi+0x58>
20028366:	f04f 30ff 	mov.w	r0, #4294967295
2002836a:	e013      	b.n	20028394 <mbedtls_mpi_cmp_mpi+0x80>
2002836c:	3b01      	subs	r3, #1
2002836e:	6891      	ldr	r1, [r2, #8]
20028370:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
20028374:	f854 1023 	ldr.w	r1, [r4, r3, lsl #2]
20028378:	428d      	cmp	r5, r1
2002837a:	d80b      	bhi.n	20028394 <mbedtls_mpi_cmp_mpi+0x80>
2002837c:	f103 33ff 	add.w	r3, r3, #4294967295
20028380:	d3e5      	bcc.n	2002834e <mbedtls_mpi_cmp_mpi+0x3a>
20028382:	1c59      	adds	r1, r3, #1
20028384:	d1f3      	bne.n	2002836e <mbedtls_mpi_cmp_mpi+0x5a>
20028386:	2000      	movs	r0, #0
20028388:	e004      	b.n	20028394 <mbedtls_mpi_cmp_mpi+0x80>
2002838a:	2b00      	cmp	r3, #0
2002838c:	d0de      	beq.n	2002834c <mbedtls_mpi_cmp_mpi+0x38>
2002838e:	4283      	cmp	r3, r0
20028390:	d9da      	bls.n	20028348 <mbedtls_mpi_cmp_mpi+0x34>
20028392:	6810      	ldr	r0, [r2, #0]
20028394:	bd30      	pop	{r4, r5, pc}

20028396 <mbedtls_mpi_cmp_int>:
20028396:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028398:	ea81 73e1 	eor.w	r3, r1, r1, asr #31
2002839c:	eba3 73e1 	sub.w	r3, r3, r1, asr #31
200283a0:	2900      	cmp	r1, #0
200283a2:	9300      	str	r3, [sp, #0]
200283a4:	bfac      	ite	ge
200283a6:	2301      	movge	r3, #1
200283a8:	f04f 33ff 	movlt.w	r3, #4294967295
200283ac:	9301      	str	r3, [sp, #4]
200283ae:	2301      	movs	r3, #1
200283b0:	a901      	add	r1, sp, #4
200283b2:	9302      	str	r3, [sp, #8]
200283b4:	f8cd d00c 	str.w	sp, [sp, #12]
200283b8:	f7ff ffac 	bl	20028314 <mbedtls_mpi_cmp_mpi>
200283bc:	b005      	add	sp, #20
200283be:	f85d fb04 	ldr.w	pc, [sp], #4

200283c2 <mbedtls_mpi_add_abs>:
200283c2:	4290      	cmp	r0, r2
200283c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200283c8:	4606      	mov	r6, r0
200283ca:	460c      	mov	r4, r1
200283cc:	4615      	mov	r5, r2
200283ce:	d002      	beq.n	200283d6 <mbedtls_mpi_add_abs+0x14>
200283d0:	4288      	cmp	r0, r1
200283d2:	d12c      	bne.n	2002842e <mbedtls_mpi_add_abs+0x6c>
200283d4:	462c      	mov	r4, r5
200283d6:	2301      	movs	r3, #1
200283d8:	6033      	str	r3, [r6, #0]
200283da:	6865      	ldr	r5, [r4, #4]
200283dc:	bb85      	cbnz	r5, 20028440 <mbedtls_mpi_add_abs+0x7e>
200283de:	4629      	mov	r1, r5
200283e0:	4630      	mov	r0, r6
200283e2:	f7ff fd5b 	bl	20027e9c <mbedtls_mpi_grow>
200283e6:	4607      	mov	r7, r0
200283e8:	bb28      	cbnz	r0, 20028436 <mbedtls_mpi_add_abs+0x74>
200283ea:	68b3      	ldr	r3, [r6, #8]
200283ec:	68a1      	ldr	r1, [r4, #8]
200283ee:	469c      	mov	ip, r3
200283f0:	4604      	mov	r4, r0
200283f2:	42a8      	cmp	r0, r5
200283f4:	d12d      	bne.n	20028452 <mbedtls_mpi_add_abs+0x90>
200283f6:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200283fa:	b1f4      	cbz	r4, 2002843a <mbedtls_mpi_add_abs+0x78>
200283fc:	6872      	ldr	r2, [r6, #4]
200283fe:	f105 0801 	add.w	r8, r5, #1
20028402:	42aa      	cmp	r2, r5
20028404:	d807      	bhi.n	20028416 <mbedtls_mpi_add_abs+0x54>
20028406:	4641      	mov	r1, r8
20028408:	4630      	mov	r0, r6
2002840a:	f7ff fd47 	bl	20027e9c <mbedtls_mpi_grow>
2002840e:	b990      	cbnz	r0, 20028436 <mbedtls_mpi_add_abs+0x74>
20028410:	68b3      	ldr	r3, [r6, #8]
20028412:	eb03 0385 	add.w	r3, r3, r5, lsl #2
20028416:	681a      	ldr	r2, [r3, #0]
20028418:	4645      	mov	r5, r8
2002841a:	1912      	adds	r2, r2, r4
2002841c:	bf2c      	ite	cs
2002841e:	2401      	movcs	r4, #1
20028420:	2400      	movcc	r4, #0
20028422:	3c00      	subs	r4, #0
20028424:	bf18      	it	ne
20028426:	2401      	movne	r4, #1
20028428:	f843 2b04 	str.w	r2, [r3], #4
2002842c:	e7e5      	b.n	200283fa <mbedtls_mpi_add_abs+0x38>
2002842e:	f7ff fd61 	bl	20027ef4 <mbedtls_mpi_copy>
20028432:	2800      	cmp	r0, #0
20028434:	d0ce      	beq.n	200283d4 <mbedtls_mpi_add_abs+0x12>
20028436:	f06f 070f 	mvn.w	r7, #15
2002843a:	4638      	mov	r0, r7
2002843c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20028440:	68a3      	ldr	r3, [r4, #8]
20028442:	eb03 0385 	add.w	r3, r3, r5, lsl #2
20028446:	f853 3c04 	ldr.w	r3, [r3, #-4]
2002844a:	2b00      	cmp	r3, #0
2002844c:	d1c7      	bne.n	200283de <mbedtls_mpi_add_abs+0x1c>
2002844e:	3d01      	subs	r5, #1
20028450:	e7c4      	b.n	200283dc <mbedtls_mpi_add_abs+0x1a>
20028452:	f8dc 2000 	ldr.w	r2, [ip]
20028456:	1912      	adds	r2, r2, r4
20028458:	bf2c      	ite	cs
2002845a:	f04f 0e01 	movcs.w	lr, #1
2002845e:	f04f 0e00 	movcc.w	lr, #0
20028462:	f851 4020 	ldr.w	r4, [r1, r0, lsl #2]
20028466:	3001      	adds	r0, #1
20028468:	1912      	adds	r2, r2, r4
2002846a:	f84c 2b04 	str.w	r2, [ip], #4
2002846e:	f14e 0400 	adc.w	r4, lr, #0
20028472:	e7be      	b.n	200283f2 <mbedtls_mpi_add_abs+0x30>

20028474 <mbedtls_mpi_sub_abs>:
20028474:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20028476:	460e      	mov	r6, r1
20028478:	4605      	mov	r5, r0
2002847a:	4611      	mov	r1, r2
2002847c:	4630      	mov	r0, r6
2002847e:	4614      	mov	r4, r2
20028480:	f7ff feaa 	bl	200281d8 <mbedtls_mpi_cmp_abs>
20028484:	3001      	adds	r0, #1
20028486:	d02f      	beq.n	200284e8 <mbedtls_mpi_sub_abs+0x74>
20028488:	2300      	movs	r3, #0
2002848a:	2201      	movs	r2, #1
2002848c:	42ac      	cmp	r4, r5
2002848e:	e9cd 2301 	strd	r2, r3, [sp, #4]
20028492:	9303      	str	r3, [sp, #12]
20028494:	d10d      	bne.n	200284b2 <mbedtls_mpi_sub_abs+0x3e>
20028496:	4621      	mov	r1, r4
20028498:	a801      	add	r0, sp, #4
2002849a:	f7ff fd2b 	bl	20027ef4 <mbedtls_mpi_copy>
2002849e:	b138      	cbz	r0, 200284b0 <mbedtls_mpi_sub_abs+0x3c>
200284a0:	f06f 040f 	mvn.w	r4, #15
200284a4:	a801      	add	r0, sp, #4
200284a6:	f7ff fce4 	bl	20027e72 <mbedtls_mpi_free>
200284aa:	4620      	mov	r0, r4
200284ac:	b004      	add	sp, #16
200284ae:	bd70      	pop	{r4, r5, r6, pc}
200284b0:	ac01      	add	r4, sp, #4
200284b2:	42ae      	cmp	r6, r5
200284b4:	d109      	bne.n	200284ca <mbedtls_mpi_sub_abs+0x56>
200284b6:	2301      	movs	r3, #1
200284b8:	602b      	str	r3, [r5, #0]
200284ba:	e9d4 0101 	ldrd	r0, r1, [r4, #4]
200284be:	b958      	cbnz	r0, 200284d8 <mbedtls_mpi_sub_abs+0x64>
200284c0:	68aa      	ldr	r2, [r5, #8]
200284c2:	f7ff fb2a 	bl	20027b1a <mpi_sub_hlp>
200284c6:	2400      	movs	r4, #0
200284c8:	e7ec      	b.n	200284a4 <mbedtls_mpi_sub_abs+0x30>
200284ca:	4631      	mov	r1, r6
200284cc:	4628      	mov	r0, r5
200284ce:	f7ff fd11 	bl	20027ef4 <mbedtls_mpi_copy>
200284d2:	2800      	cmp	r0, #0
200284d4:	d0ef      	beq.n	200284b6 <mbedtls_mpi_sub_abs+0x42>
200284d6:	e7e3      	b.n	200284a0 <mbedtls_mpi_sub_abs+0x2c>
200284d8:	eb01 0380 	add.w	r3, r1, r0, lsl #2
200284dc:	f853 3c04 	ldr.w	r3, [r3, #-4]
200284e0:	2b00      	cmp	r3, #0
200284e2:	d1ed      	bne.n	200284c0 <mbedtls_mpi_sub_abs+0x4c>
200284e4:	3801      	subs	r0, #1
200284e6:	e7ea      	b.n	200284be <mbedtls_mpi_sub_abs+0x4a>
200284e8:	f06f 0409 	mvn.w	r4, #9
200284ec:	e7dd      	b.n	200284aa <mbedtls_mpi_sub_abs+0x36>

200284ee <mbedtls_mpi_add_mpi>:
200284ee:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200284f0:	680d      	ldr	r5, [r1, #0]
200284f2:	6813      	ldr	r3, [r2, #0]
200284f4:	4604      	mov	r4, r0
200284f6:	436b      	muls	r3, r5
200284f8:	460f      	mov	r7, r1
200284fa:	4616      	mov	r6, r2
200284fc:	d516      	bpl.n	2002852c <mbedtls_mpi_add_mpi+0x3e>
200284fe:	4611      	mov	r1, r2
20028500:	4638      	mov	r0, r7
20028502:	f7ff fe69 	bl	200281d8 <mbedtls_mpi_cmp_abs>
20028506:	3001      	adds	r0, #1
20028508:	d007      	beq.n	2002851a <mbedtls_mpi_add_mpi+0x2c>
2002850a:	4632      	mov	r2, r6
2002850c:	4639      	mov	r1, r7
2002850e:	4620      	mov	r0, r4
20028510:	f7ff ffb0 	bl	20028474 <mbedtls_mpi_sub_abs>
20028514:	b900      	cbnz	r0, 20028518 <mbedtls_mpi_add_mpi+0x2a>
20028516:	6025      	str	r5, [r4, #0]
20028518:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002851a:	463a      	mov	r2, r7
2002851c:	4631      	mov	r1, r6
2002851e:	4620      	mov	r0, r4
20028520:	f7ff ffa8 	bl	20028474 <mbedtls_mpi_sub_abs>
20028524:	2800      	cmp	r0, #0
20028526:	d1f7      	bne.n	20028518 <mbedtls_mpi_add_mpi+0x2a>
20028528:	426d      	negs	r5, r5
2002852a:	e7f4      	b.n	20028516 <mbedtls_mpi_add_mpi+0x28>
2002852c:	f7ff ff49 	bl	200283c2 <mbedtls_mpi_add_abs>
20028530:	2800      	cmp	r0, #0
20028532:	d0f0      	beq.n	20028516 <mbedtls_mpi_add_mpi+0x28>
20028534:	f06f 000f 	mvn.w	r0, #15
20028538:	e7ee      	b.n	20028518 <mbedtls_mpi_add_mpi+0x2a>

2002853a <mbedtls_mpi_sub_mpi>:
2002853a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002853c:	680d      	ldr	r5, [r1, #0]
2002853e:	6813      	ldr	r3, [r2, #0]
20028540:	4604      	mov	r4, r0
20028542:	436b      	muls	r3, r5
20028544:	2b00      	cmp	r3, #0
20028546:	460f      	mov	r7, r1
20028548:	4616      	mov	r6, r2
2002854a:	dd16      	ble.n	2002857a <mbedtls_mpi_sub_mpi+0x40>
2002854c:	4611      	mov	r1, r2
2002854e:	4638      	mov	r0, r7
20028550:	f7ff fe42 	bl	200281d8 <mbedtls_mpi_cmp_abs>
20028554:	3001      	adds	r0, #1
20028556:	d007      	beq.n	20028568 <mbedtls_mpi_sub_mpi+0x2e>
20028558:	4632      	mov	r2, r6
2002855a:	4639      	mov	r1, r7
2002855c:	4620      	mov	r0, r4
2002855e:	f7ff ff89 	bl	20028474 <mbedtls_mpi_sub_abs>
20028562:	b900      	cbnz	r0, 20028566 <mbedtls_mpi_sub_mpi+0x2c>
20028564:	6025      	str	r5, [r4, #0]
20028566:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028568:	463a      	mov	r2, r7
2002856a:	4631      	mov	r1, r6
2002856c:	4620      	mov	r0, r4
2002856e:	f7ff ff81 	bl	20028474 <mbedtls_mpi_sub_abs>
20028572:	2800      	cmp	r0, #0
20028574:	d1f7      	bne.n	20028566 <mbedtls_mpi_sub_mpi+0x2c>
20028576:	426d      	negs	r5, r5
20028578:	e7f4      	b.n	20028564 <mbedtls_mpi_sub_mpi+0x2a>
2002857a:	f7ff ff22 	bl	200283c2 <mbedtls_mpi_add_abs>
2002857e:	2800      	cmp	r0, #0
20028580:	d0f0      	beq.n	20028564 <mbedtls_mpi_sub_mpi+0x2a>
20028582:	f06f 000f 	mvn.w	r0, #15
20028586:	e7ee      	b.n	20028566 <mbedtls_mpi_sub_mpi+0x2c>

20028588 <mbedtls_mpi_sub_int>:
20028588:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002858a:	ea82 73e2 	eor.w	r3, r2, r2, asr #31
2002858e:	eba3 73e2 	sub.w	r3, r3, r2, asr #31
20028592:	2a00      	cmp	r2, #0
20028594:	9300      	str	r3, [sp, #0]
20028596:	bfac      	ite	ge
20028598:	2301      	movge	r3, #1
2002859a:	f04f 33ff 	movlt.w	r3, #4294967295
2002859e:	9301      	str	r3, [sp, #4]
200285a0:	2301      	movs	r3, #1
200285a2:	aa01      	add	r2, sp, #4
200285a4:	9302      	str	r3, [sp, #8]
200285a6:	f8cd d00c 	str.w	sp, [sp, #12]
200285aa:	f7ff ffc6 	bl	2002853a <mbedtls_mpi_sub_mpi>
200285ae:	b005      	add	sp, #20
200285b0:	f85d fb04 	ldr.w	pc, [sp], #4

200285b4 <mbedtls_mpi_mul_mpi>:
200285b4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200285b8:	2300      	movs	r3, #0
200285ba:	4615      	mov	r5, r2
200285bc:	2201      	movs	r2, #1
200285be:	b087      	sub	sp, #28
200285c0:	4288      	cmp	r0, r1
200285c2:	4607      	mov	r7, r0
200285c4:	460e      	mov	r6, r1
200285c6:	e9cd 2300 	strd	r2, r3, [sp]
200285ca:	e9cd 3202 	strd	r3, r2, [sp, #8]
200285ce:	e9cd 3304 	strd	r3, r3, [sp, #16]
200285d2:	d110      	bne.n	200285f6 <mbedtls_mpi_mul_mpi+0x42>
200285d4:	4668      	mov	r0, sp
200285d6:	f7ff fc8d 	bl	20027ef4 <mbedtls_mpi_copy>
200285da:	b158      	cbz	r0, 200285f4 <mbedtls_mpi_mul_mpi+0x40>
200285dc:	f06f 090f 	mvn.w	r9, #15
200285e0:	a803      	add	r0, sp, #12
200285e2:	f7ff fc46 	bl	20027e72 <mbedtls_mpi_free>
200285e6:	4668      	mov	r0, sp
200285e8:	f7ff fc43 	bl	20027e72 <mbedtls_mpi_free>
200285ec:	4648      	mov	r0, r9
200285ee:	b007      	add	sp, #28
200285f0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200285f4:	466e      	mov	r6, sp
200285f6:	42af      	cmp	r7, r5
200285f8:	d106      	bne.n	20028608 <mbedtls_mpi_mul_mpi+0x54>
200285fa:	4639      	mov	r1, r7
200285fc:	a803      	add	r0, sp, #12
200285fe:	f7ff fc79 	bl	20027ef4 <mbedtls_mpi_copy>
20028602:	2800      	cmp	r0, #0
20028604:	d1ea      	bne.n	200285dc <mbedtls_mpi_mul_mpi+0x28>
20028606:	ad03      	add	r5, sp, #12
20028608:	f8d6 8004 	ldr.w	r8, [r6, #4]
2002860c:	f1b8 0f00 	cmp.w	r8, #0
20028610:	d116      	bne.n	20028640 <mbedtls_mpi_mul_mpi+0x8c>
20028612:	686c      	ldr	r4, [r5, #4]
20028614:	b9f4      	cbnz	r4, 20028654 <mbedtls_mpi_mul_mpi+0xa0>
20028616:	eb08 0104 	add.w	r1, r8, r4
2002861a:	4638      	mov	r0, r7
2002861c:	f7ff fc3e 	bl	20027e9c <mbedtls_mpi_grow>
20028620:	4601      	mov	r1, r0
20028622:	2800      	cmp	r0, #0
20028624:	d1da      	bne.n	200285dc <mbedtls_mpi_mul_mpi+0x28>
20028626:	4638      	mov	r0, r7
20028628:	f7ff fc8d 	bl	20027f46 <mbedtls_mpi_lset>
2002862c:	4681      	mov	r9, r0
2002862e:	2800      	cmp	r0, #0
20028630:	d1d4      	bne.n	200285dc <mbedtls_mpi_mul_mpi+0x28>
20028632:	3c01      	subs	r4, #1
20028634:	d217      	bcs.n	20028666 <mbedtls_mpi_mul_mpi+0xb2>
20028636:	6833      	ldr	r3, [r6, #0]
20028638:	682a      	ldr	r2, [r5, #0]
2002863a:	4353      	muls	r3, r2
2002863c:	603b      	str	r3, [r7, #0]
2002863e:	e7cf      	b.n	200285e0 <mbedtls_mpi_mul_mpi+0x2c>
20028640:	68b3      	ldr	r3, [r6, #8]
20028642:	eb03 0388 	add.w	r3, r3, r8, lsl #2
20028646:	f853 3c04 	ldr.w	r3, [r3, #-4]
2002864a:	2b00      	cmp	r3, #0
2002864c:	d1e1      	bne.n	20028612 <mbedtls_mpi_mul_mpi+0x5e>
2002864e:	f108 38ff 	add.w	r8, r8, #4294967295
20028652:	e7db      	b.n	2002860c <mbedtls_mpi_mul_mpi+0x58>
20028654:	68ab      	ldr	r3, [r5, #8]
20028656:	eb03 0384 	add.w	r3, r3, r4, lsl #2
2002865a:	f853 3c04 	ldr.w	r3, [r3, #-4]
2002865e:	2b00      	cmp	r3, #0
20028660:	d1d9      	bne.n	20028616 <mbedtls_mpi_mul_mpi+0x62>
20028662:	3c01      	subs	r4, #1
20028664:	e7d6      	b.n	20028614 <mbedtls_mpi_mul_mpi+0x60>
20028666:	68ab      	ldr	r3, [r5, #8]
20028668:	68ba      	ldr	r2, [r7, #8]
2002866a:	4640      	mov	r0, r8
2002866c:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
20028670:	68b1      	ldr	r1, [r6, #8]
20028672:	eb02 0284 	add.w	r2, r2, r4, lsl #2
20028676:	f7ff fa79 	bl	20027b6c <mpi_mul_hlp>
2002867a:	e7da      	b.n	20028632 <mbedtls_mpi_mul_mpi+0x7e>

2002867c <mbedtls_mpi_mul_int>:
2002867c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002867e:	2301      	movs	r3, #1
20028680:	9200      	str	r2, [sp, #0]
20028682:	aa01      	add	r2, sp, #4
20028684:	e9cd 3301 	strd	r3, r3, [sp, #4]
20028688:	f8cd d00c 	str.w	sp, [sp, #12]
2002868c:	f7ff ff92 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20028690:	b005      	add	sp, #20
20028692:	f85d fb04 	ldr.w	pc, [sp], #4

20028696 <mbedtls_mpi_div_mpi>:
20028696:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002869a:	b09f      	sub	sp, #124	@ 0x7c
2002869c:	e9cd 1203 	strd	r1, r2, [sp, #12]
200286a0:	9005      	str	r0, [sp, #20]
200286a2:	2100      	movs	r1, #0
200286a4:	4618      	mov	r0, r3
200286a6:	9309      	str	r3, [sp, #36]	@ 0x24
200286a8:	f7ff fe75 	bl	20028396 <mbedtls_mpi_cmp_int>
200286ac:	2800      	cmp	r0, #0
200286ae:	f000 81f3 	beq.w	20028a98 <mbedtls_mpi_div_mpi+0x402>
200286b2:	2501      	movs	r5, #1
200286b4:	2400      	movs	r4, #0
200286b6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200286b8:	9804      	ldr	r0, [sp, #16]
200286ba:	e9cd 5418 	strd	r5, r4, [sp, #96]	@ 0x60
200286be:	e9cd 541b 	strd	r5, r4, [sp, #108]	@ 0x6c
200286c2:	950f      	str	r5, [sp, #60]	@ 0x3c
200286c4:	9512      	str	r5, [sp, #72]	@ 0x48
200286c6:	9515      	str	r5, [sp, #84]	@ 0x54
200286c8:	9416      	str	r4, [sp, #88]	@ 0x58
200286ca:	f7ff fd85 	bl	200281d8 <mbedtls_mpi_cmp_abs>
200286ce:	3001      	adds	r0, #1
200286d0:	d11f      	bne.n	20028712 <mbedtls_mpi_div_mpi+0x7c>
200286d2:	9b05      	ldr	r3, [sp, #20]
200286d4:	b933      	cbnz	r3, 200286e4 <mbedtls_mpi_div_mpi+0x4e>
200286d6:	9b03      	ldr	r3, [sp, #12]
200286d8:	b9a3      	cbnz	r3, 20028704 <mbedtls_mpi_div_mpi+0x6e>
200286da:	2100      	movs	r1, #0
200286dc:	4608      	mov	r0, r1
200286de:	b01f      	add	sp, #124	@ 0x7c
200286e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200286e4:	4621      	mov	r1, r4
200286e6:	9805      	ldr	r0, [sp, #20]
200286e8:	f7ff fc2d 	bl	20027f46 <mbedtls_mpi_lset>
200286ec:	2800      	cmp	r0, #0
200286ee:	d0f2      	beq.n	200286d6 <mbedtls_mpi_div_mpi+0x40>
200286f0:	2400      	movs	r4, #0
200286f2:	4625      	mov	r5, r4
200286f4:	46a1      	mov	r9, r4
200286f6:	46a0      	mov	r8, r4
200286f8:	4626      	mov	r6, r4
200286fa:	4627      	mov	r7, r4
200286fc:	9402      	str	r4, [sp, #8]
200286fe:	f06f 010f 	mvn.w	r1, #15
20028702:	e0ef      	b.n	200288e4 <mbedtls_mpi_div_mpi+0x24e>
20028704:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
20028708:	f7ff fbf4 	bl	20027ef4 <mbedtls_mpi_copy>
2002870c:	2800      	cmp	r0, #0
2002870e:	d1ef      	bne.n	200286f0 <mbedtls_mpi_div_mpi+0x5a>
20028710:	e7e3      	b.n	200286da <mbedtls_mpi_div_mpi+0x44>
20028712:	9904      	ldr	r1, [sp, #16]
20028714:	a80f      	add	r0, sp, #60	@ 0x3c
20028716:	e9cd 4410 	strd	r4, r4, [sp, #64]	@ 0x40
2002871a:	f7ff fbeb 	bl	20027ef4 <mbedtls_mpi_copy>
2002871e:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028722:	4682      	mov	sl, r0
20028724:	2800      	cmp	r0, #0
20028726:	f040 81a9 	bne.w	20028a7c <mbedtls_mpi_div_mpi+0x3e6>
2002872a:	e9cd 0013 	strd	r0, r0, [sp, #76]	@ 0x4c
2002872e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028730:	a812      	add	r0, sp, #72	@ 0x48
20028732:	f7ff fbdf 	bl	20027ef4 <mbedtls_mpi_copy>
20028736:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
2002873a:	4604      	mov	r4, r0
2002873c:	2800      	cmp	r0, #0
2002873e:	f040 81a2 	bne.w	20028a86 <mbedtls_mpi_div_mpi+0x3f0>
20028742:	9b04      	ldr	r3, [sp, #16]
20028744:	9017      	str	r0, [sp, #92]	@ 0x5c
20028746:	6859      	ldr	r1, [r3, #4]
20028748:	a815      	add	r0, sp, #84	@ 0x54
2002874a:	3102      	adds	r1, #2
2002874c:	9512      	str	r5, [sp, #72]	@ 0x48
2002874e:	950f      	str	r5, [sp, #60]	@ 0x3c
20028750:	f7ff fba4 	bl	20027e9c <mbedtls_mpi_grow>
20028754:	4605      	mov	r5, r0
20028756:	b118      	cbz	r0, 20028760 <mbedtls_mpi_div_mpi+0xca>
20028758:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
2002875a:	9302      	str	r3, [sp, #8]
2002875c:	4625      	mov	r5, r4
2002875e:	e7ce      	b.n	200286fe <mbedtls_mpi_div_mpi+0x68>
20028760:	4601      	mov	r1, r0
20028762:	a815      	add	r0, sp, #84	@ 0x54
20028764:	f7ff fbef 	bl	20027f46 <mbedtls_mpi_lset>
20028768:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
2002876a:	4604      	mov	r4, r0
2002876c:	9302      	str	r3, [sp, #8]
2002876e:	2800      	cmp	r0, #0
20028770:	f040 818e 	bne.w	20028a90 <mbedtls_mpi_div_mpi+0x3fa>
20028774:	901a      	str	r0, [sp, #104]	@ 0x68
20028776:	2102      	movs	r1, #2
20028778:	a818      	add	r0, sp, #96	@ 0x60
2002877a:	f7ff fb8f 	bl	20027e9c <mbedtls_mpi_grow>
2002877e:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028780:	2800      	cmp	r0, #0
20028782:	d1bc      	bne.n	200286fe <mbedtls_mpi_div_mpi+0x68>
20028784:	901d      	str	r0, [sp, #116]	@ 0x74
20028786:	2103      	movs	r1, #3
20028788:	a81b      	add	r0, sp, #108	@ 0x6c
2002878a:	f7ff fb87 	bl	20027e9c <mbedtls_mpi_grow>
2002878e:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028790:	4683      	mov	fp, r0
20028792:	2800      	cmp	r0, #0
20028794:	d1b3      	bne.n	200286fe <mbedtls_mpi_div_mpi+0x68>
20028796:	a812      	add	r0, sp, #72	@ 0x48
20028798:	f7ff fc09 	bl	20027fae <mbedtls_mpi_bitlen>
2002879c:	f000 001f 	and.w	r0, r0, #31
200287a0:	281f      	cmp	r0, #31
200287a2:	f000 808a 	beq.w	200288ba <mbedtls_mpi_div_mpi+0x224>
200287a6:	f1c0 031f 	rsb	r3, r0, #31
200287aa:	4619      	mov	r1, r3
200287ac:	a80f      	add	r0, sp, #60	@ 0x3c
200287ae:	9306      	str	r3, [sp, #24]
200287b0:	f7ff fc78 	bl	200280a4 <mbedtls_mpi_shift_l>
200287b4:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200287b8:	2800      	cmp	r0, #0
200287ba:	d1a0      	bne.n	200286fe <mbedtls_mpi_div_mpi+0x68>
200287bc:	9906      	ldr	r1, [sp, #24]
200287be:	a812      	add	r0, sp, #72	@ 0x48
200287c0:	f7ff fc70 	bl	200280a4 <mbedtls_mpi_shift_l>
200287c4:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200287c8:	2800      	cmp	r0, #0
200287ca:	d198      	bne.n	200286fe <mbedtls_mpi_div_mpi+0x68>
200287cc:	46ba      	mov	sl, r7
200287ce:	f8cd 8020 	str.w	r8, [sp, #32]
200287d2:	eba7 0b08 	sub.w	fp, r7, r8
200287d6:	ea4f 134b 	mov.w	r3, fp, lsl #5
200287da:	4619      	mov	r1, r3
200287dc:	a812      	add	r0, sp, #72	@ 0x48
200287de:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200287e2:	9301      	str	r3, [sp, #4]
200287e4:	f7ff fc5e 	bl	200280a4 <mbedtls_mpi_shift_l>
200287e8:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200287ec:	2800      	cmp	r0, #0
200287ee:	d186      	bne.n	200286fe <mbedtls_mpi_div_mpi+0x68>
200287f0:	ea4f 038b 	mov.w	r3, fp, lsl #2
200287f4:	930b      	str	r3, [sp, #44]	@ 0x2c
200287f6:	9b02      	ldr	r3, [sp, #8]
200287f8:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
200287fc:	a912      	add	r1, sp, #72	@ 0x48
200287fe:	a80f      	add	r0, sp, #60	@ 0x3c
20028800:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028804:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
20028808:	f7ff fd84 	bl	20028314 <mbedtls_mpi_cmp_mpi>
2002880c:	2800      	cmp	r0, #0
2002880e:	da5a      	bge.n	200288c6 <mbedtls_mpi_div_mpi+0x230>
20028810:	9901      	ldr	r1, [sp, #4]
20028812:	a812      	add	r0, sp, #72	@ 0x48
20028814:	f7ff fc9f 	bl	20028156 <mbedtls_mpi_shift_r>
20028818:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
2002881c:	2800      	cmp	r0, #0
2002881e:	f47f af6e 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
20028822:	f10a 33ff 	add.w	r3, sl, #4294967295
20028826:	9301      	str	r3, [sp, #4]
20028828:	9b08      	ldr	r3, [sp, #32]
2002882a:	9a02      	ldr	r2, [sp, #8]
2002882c:	3b01      	subs	r3, #1
2002882e:	9307      	str	r3, [sp, #28]
20028830:	eb09 0383 	add.w	r3, r9, r3, lsl #2
20028834:	930a      	str	r3, [sp, #40]	@ 0x28
20028836:	9b08      	ldr	r3, [sp, #32]
20028838:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
2002883c:	3b02      	subs	r3, #2
2002883e:	eb09 0383 	add.w	r3, r9, r3, lsl #2
20028842:	930c      	str	r3, [sp, #48]	@ 0x30
20028844:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20028846:	4413      	add	r3, r2
20028848:	469a      	mov	sl, r3
2002884a:	9b01      	ldr	r3, [sp, #4]
2002884c:	9a07      	ldr	r2, [sp, #28]
2002884e:	4293      	cmp	r3, r2
20028850:	d862      	bhi.n	20028918 <mbedtls_mpi_div_mpi+0x282>
20028852:	9b05      	ldr	r3, [sp, #20]
20028854:	b16b      	cbz	r3, 20028872 <mbedtls_mpi_div_mpi+0x1dc>
20028856:	4618      	mov	r0, r3
20028858:	a915      	add	r1, sp, #84	@ 0x54
2002885a:	f7ff fb4b 	bl	20027ef4 <mbedtls_mpi_copy>
2002885e:	2800      	cmp	r0, #0
20028860:	f47f af4d 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
20028864:	9b04      	ldr	r3, [sp, #16]
20028866:	9a09      	ldr	r2, [sp, #36]	@ 0x24
20028868:	681b      	ldr	r3, [r3, #0]
2002886a:	6812      	ldr	r2, [r2, #0]
2002886c:	4353      	muls	r3, r2
2002886e:	9a05      	ldr	r2, [sp, #20]
20028870:	6013      	str	r3, [r2, #0]
20028872:	9b03      	ldr	r3, [sp, #12]
20028874:	2b00      	cmp	r3, #0
20028876:	f000 810d 	beq.w	20028a94 <mbedtls_mpi_div_mpi+0x3fe>
2002887a:	9906      	ldr	r1, [sp, #24]
2002887c:	a80f      	add	r0, sp, #60	@ 0x3c
2002887e:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028882:	f7ff fc68 	bl	20028156 <mbedtls_mpi_shift_r>
20028886:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
2002888a:	2800      	cmp	r0, #0
2002888c:	f47f af37 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
20028890:	9b04      	ldr	r3, [sp, #16]
20028892:	a90f      	add	r1, sp, #60	@ 0x3c
20028894:	681b      	ldr	r3, [r3, #0]
20028896:	9803      	ldr	r0, [sp, #12]
20028898:	930f      	str	r3, [sp, #60]	@ 0x3c
2002889a:	f7ff fb2b 	bl	20027ef4 <mbedtls_mpi_copy>
2002889e:	4601      	mov	r1, r0
200288a0:	2800      	cmp	r0, #0
200288a2:	f47f af2c 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
200288a6:	9001      	str	r0, [sp, #4]
200288a8:	9803      	ldr	r0, [sp, #12]
200288aa:	f7ff fd74 	bl	20028396 <mbedtls_mpi_cmp_int>
200288ae:	9901      	ldr	r1, [sp, #4]
200288b0:	b9c0      	cbnz	r0, 200288e4 <mbedtls_mpi_div_mpi+0x24e>
200288b2:	2301      	movs	r3, #1
200288b4:	9a03      	ldr	r2, [sp, #12]
200288b6:	6013      	str	r3, [r2, #0]
200288b8:	e014      	b.n	200288e4 <mbedtls_mpi_div_mpi+0x24e>
200288ba:	46ba      	mov	sl, r7
200288bc:	f8cd 8020 	str.w	r8, [sp, #32]
200288c0:	f8cd b018 	str.w	fp, [sp, #24]
200288c4:	e785      	b.n	200287d2 <mbedtls_mpi_div_mpi+0x13c>
200288c6:	f8db 2000 	ldr.w	r2, [fp]
200288ca:	a90f      	add	r1, sp, #60	@ 0x3c
200288cc:	3201      	adds	r2, #1
200288ce:	4608      	mov	r0, r1
200288d0:	f8cb 2000 	str.w	r2, [fp]
200288d4:	aa12      	add	r2, sp, #72	@ 0x48
200288d6:	f7ff fe30 	bl	2002853a <mbedtls_mpi_sub_mpi>
200288da:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200288de:	4601      	mov	r1, r0
200288e0:	2800      	cmp	r0, #0
200288e2:	d08b      	beq.n	200287fc <mbedtls_mpi_div_mpi+0x166>
200288e4:	a80f      	add	r0, sp, #60	@ 0x3c
200288e6:	9101      	str	r1, [sp, #4]
200288e8:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200288ec:	f7ff fac1 	bl	20027e72 <mbedtls_mpi_free>
200288f0:	a812      	add	r0, sp, #72	@ 0x48
200288f2:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200288f6:	f7ff fabc 	bl	20027e72 <mbedtls_mpi_free>
200288fa:	9b02      	ldr	r3, [sp, #8]
200288fc:	a815      	add	r0, sp, #84	@ 0x54
200288fe:	9317      	str	r3, [sp, #92]	@ 0x5c
20028900:	f7ff fab7 	bl	20027e72 <mbedtls_mpi_free>
20028904:	a818      	add	r0, sp, #96	@ 0x60
20028906:	951a      	str	r5, [sp, #104]	@ 0x68
20028908:	f7ff fab3 	bl	20027e72 <mbedtls_mpi_free>
2002890c:	a81b      	add	r0, sp, #108	@ 0x6c
2002890e:	941d      	str	r4, [sp, #116]	@ 0x74
20028910:	f7ff faaf 	bl	20027e72 <mbedtls_mpi_free>
20028914:	9901      	ldr	r1, [sp, #4]
20028916:	e6e1      	b.n	200286dc <mbedtls_mpi_div_mpi+0x46>
20028918:	9b01      	ldr	r3, [sp, #4]
2002891a:	ea4f 0b83 	mov.w	fp, r3, lsl #2
2002891e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
20028922:	930b      	str	r3, [sp, #44]	@ 0x2c
20028924:	9b01      	ldr	r3, [sp, #4]
20028926:	f1ab 0004 	sub.w	r0, fp, #4
2002892a:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
2002892e:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20028930:	681a      	ldr	r2, [r3, #0]
20028932:	1833      	adds	r3, r6, r0
20028934:	4291      	cmp	r1, r2
20028936:	930d      	str	r3, [sp, #52]	@ 0x34
20028938:	d255      	bcs.n	200289e6 <mbedtls_mpi_div_mpi+0x350>
2002893a:	2300      	movs	r3, #0
2002893c:	5830      	ldr	r0, [r6, r0]
2002893e:	f001 fd87 	bl	2002a450 <__aeabi_uldivmod>
20028942:	2900      	cmp	r1, #0
20028944:	bf14      	ite	ne
20028946:	f04f 33ff 	movne.w	r3, #4294967295
2002894a:	4603      	moveq	r3, r0
2002894c:	3301      	adds	r3, #1
2002894e:	f1ab 0b08 	sub.w	fp, fp, #8
20028952:	f84a 3c04 	str.w	r3, [sl, #-4]
20028956:	44b3      	add	fp, r6
20028958:	f85a 3c04 	ldr.w	r3, [sl, #-4]
2002895c:	2100      	movs	r1, #0
2002895e:	3b01      	subs	r3, #1
20028960:	f84a 3c04 	str.w	r3, [sl, #-4]
20028964:	a818      	add	r0, sp, #96	@ 0x60
20028966:	951a      	str	r5, [sp, #104]	@ 0x68
20028968:	f7ff faed 	bl	20027f46 <mbedtls_mpi_lset>
2002896c:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002896e:	2800      	cmp	r0, #0
20028970:	f47f aec5 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
20028974:	9b07      	ldr	r3, [sp, #28]
20028976:	2b00      	cmp	r3, #0
20028978:	d038      	beq.n	200289ec <mbedtls_mpi_div_mpi+0x356>
2002897a:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
2002897c:	681b      	ldr	r3, [r3, #0]
2002897e:	602b      	str	r3, [r5, #0]
20028980:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20028982:	a918      	add	r1, sp, #96	@ 0x60
20028984:	681b      	ldr	r3, [r3, #0]
20028986:	4608      	mov	r0, r1
20028988:	606b      	str	r3, [r5, #4]
2002898a:	f85a 2c04 	ldr.w	r2, [sl, #-4]
2002898e:	f7ff fe75 	bl	2002867c <mbedtls_mpi_mul_int>
20028992:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028994:	4601      	mov	r1, r0
20028996:	2800      	cmp	r0, #0
20028998:	f47f aeb1 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
2002899c:	a81b      	add	r0, sp, #108	@ 0x6c
2002899e:	941d      	str	r4, [sp, #116]	@ 0x74
200289a0:	f7ff fad1 	bl	20027f46 <mbedtls_mpi_lset>
200289a4:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
200289a6:	2800      	cmp	r0, #0
200289a8:	f47f aea9 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
200289ac:	9b01      	ldr	r3, [sp, #4]
200289ae:	a91b      	add	r1, sp, #108	@ 0x6c
200289b0:	2b01      	cmp	r3, #1
200289b2:	bf18      	it	ne
200289b4:	f8db 0000 	ldrne.w	r0, [fp]
200289b8:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
200289ba:	6020      	str	r0, [r4, #0]
200289bc:	681b      	ldr	r3, [r3, #0]
200289be:	a818      	add	r0, sp, #96	@ 0x60
200289c0:	6063      	str	r3, [r4, #4]
200289c2:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200289c4:	681b      	ldr	r3, [r3, #0]
200289c6:	60a3      	str	r3, [r4, #8]
200289c8:	f7ff fca4 	bl	20028314 <mbedtls_mpi_cmp_mpi>
200289cc:	2800      	cmp	r0, #0
200289ce:	dcc3      	bgt.n	20028958 <mbedtls_mpi_div_mpi+0x2c2>
200289d0:	f85a 2c04 	ldr.w	r2, [sl, #-4]
200289d4:	a912      	add	r1, sp, #72	@ 0x48
200289d6:	a818      	add	r0, sp, #96	@ 0x60
200289d8:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200289dc:	f7ff fe4e 	bl	2002867c <mbedtls_mpi_mul_int>
200289e0:	b130      	cbz	r0, 200289f0 <mbedtls_mpi_div_mpi+0x35a>
200289e2:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200289e4:	e68b      	b.n	200286fe <mbedtls_mpi_div_mpi+0x68>
200289e6:	f04f 33ff 	mov.w	r3, #4294967295
200289ea:	e7af      	b.n	2002894c <mbedtls_mpi_div_mpi+0x2b6>
200289ec:	9b07      	ldr	r3, [sp, #28]
200289ee:	e7c6      	b.n	2002897e <mbedtls_mpi_div_mpi+0x2e8>
200289f0:	f06f 0b1f 	mvn.w	fp, #31
200289f4:	9b08      	ldr	r3, [sp, #32]
200289f6:	a818      	add	r0, sp, #96	@ 0x60
200289f8:	fb0b fb03 	mul.w	fp, fp, r3
200289fc:	9b01      	ldr	r3, [sp, #4]
200289fe:	eb0b 1b43 	add.w	fp, fp, r3, lsl #5
20028a02:	4659      	mov	r1, fp
20028a04:	f7ff fb4e 	bl	200280a4 <mbedtls_mpi_shift_l>
20028a08:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028a0a:	2800      	cmp	r0, #0
20028a0c:	f47f ae77 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
20028a10:	a90f      	add	r1, sp, #60	@ 0x3c
20028a12:	4608      	mov	r0, r1
20028a14:	aa18      	add	r2, sp, #96	@ 0x60
20028a16:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028a1a:	f7ff fd8e 	bl	2002853a <mbedtls_mpi_sub_mpi>
20028a1e:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028a22:	4601      	mov	r1, r0
20028a24:	2800      	cmp	r0, #0
20028a26:	f47f af5d 	bne.w	200288e4 <mbedtls_mpi_div_mpi+0x24e>
20028a2a:	a80f      	add	r0, sp, #60	@ 0x3c
20028a2c:	f7ff fcb3 	bl	20028396 <mbedtls_mpi_cmp_int>
20028a30:	2800      	cmp	r0, #0
20028a32:	da1d      	bge.n	20028a70 <mbedtls_mpi_div_mpi+0x3da>
20028a34:	a912      	add	r1, sp, #72	@ 0x48
20028a36:	a818      	add	r0, sp, #96	@ 0x60
20028a38:	f7ff fa5c 	bl	20027ef4 <mbedtls_mpi_copy>
20028a3c:	2800      	cmp	r0, #0
20028a3e:	d1d0      	bne.n	200289e2 <mbedtls_mpi_div_mpi+0x34c>
20028a40:	4659      	mov	r1, fp
20028a42:	a818      	add	r0, sp, #96	@ 0x60
20028a44:	f7ff fb2e 	bl	200280a4 <mbedtls_mpi_shift_l>
20028a48:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028a4a:	2800      	cmp	r0, #0
20028a4c:	f47f ae57 	bne.w	200286fe <mbedtls_mpi_div_mpi+0x68>
20028a50:	a90f      	add	r1, sp, #60	@ 0x3c
20028a52:	4608      	mov	r0, r1
20028a54:	aa18      	add	r2, sp, #96	@ 0x60
20028a56:	f7ff fd4a 	bl	200284ee <mbedtls_mpi_add_mpi>
20028a5a:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028a5e:	4601      	mov	r1, r0
20028a60:	2800      	cmp	r0, #0
20028a62:	f47f af3f 	bne.w	200288e4 <mbedtls_mpi_div_mpi+0x24e>
20028a66:	f85a 3c04 	ldr.w	r3, [sl, #-4]
20028a6a:	3b01      	subs	r3, #1
20028a6c:	f84a 3c04 	str.w	r3, [sl, #-4]
20028a70:	9b01      	ldr	r3, [sp, #4]
20028a72:	f1aa 0a04 	sub.w	sl, sl, #4
20028a76:	3b01      	subs	r3, #1
20028a78:	9301      	str	r3, [sp, #4]
20028a7a:	e6e6      	b.n	2002884a <mbedtls_mpi_div_mpi+0x1b4>
20028a7c:	4625      	mov	r5, r4
20028a7e:	46a1      	mov	r9, r4
20028a80:	46a0      	mov	r8, r4
20028a82:	9402      	str	r4, [sp, #8]
20028a84:	e63b      	b.n	200286fe <mbedtls_mpi_div_mpi+0x68>
20028a86:	4654      	mov	r4, sl
20028a88:	4655      	mov	r5, sl
20028a8a:	f8cd a008 	str.w	sl, [sp, #8]
20028a8e:	e636      	b.n	200286fe <mbedtls_mpi_div_mpi+0x68>
20028a90:	462c      	mov	r4, r5
20028a92:	e663      	b.n	2002875c <mbedtls_mpi_div_mpi+0xc6>
20028a94:	9903      	ldr	r1, [sp, #12]
20028a96:	e725      	b.n	200288e4 <mbedtls_mpi_div_mpi+0x24e>
20028a98:	f06f 010b 	mvn.w	r1, #11
20028a9c:	e61e      	b.n	200286dc <mbedtls_mpi_div_mpi+0x46>

20028a9e <mbedtls_mpi_mod_mpi>:
20028a9e:	b570      	push	{r4, r5, r6, lr}
20028aa0:	4604      	mov	r4, r0
20028aa2:	460d      	mov	r5, r1
20028aa4:	4610      	mov	r0, r2
20028aa6:	2100      	movs	r1, #0
20028aa8:	4616      	mov	r6, r2
20028aaa:	f7ff fc74 	bl	20028396 <mbedtls_mpi_cmp_int>
20028aae:	2800      	cmp	r0, #0
20028ab0:	db24      	blt.n	20028afc <mbedtls_mpi_mod_mpi+0x5e>
20028ab2:	462a      	mov	r2, r5
20028ab4:	4633      	mov	r3, r6
20028ab6:	4621      	mov	r1, r4
20028ab8:	2000      	movs	r0, #0
20028aba:	f7ff fdec 	bl	20028696 <mbedtls_mpi_div_mpi>
20028abe:	4605      	mov	r5, r0
20028ac0:	b138      	cbz	r0, 20028ad2 <mbedtls_mpi_mod_mpi+0x34>
20028ac2:	4628      	mov	r0, r5
20028ac4:	bd70      	pop	{r4, r5, r6, pc}
20028ac6:	4632      	mov	r2, r6
20028ac8:	4621      	mov	r1, r4
20028aca:	4620      	mov	r0, r4
20028acc:	f7ff fd0f 	bl	200284ee <mbedtls_mpi_add_mpi>
20028ad0:	b990      	cbnz	r0, 20028af8 <mbedtls_mpi_mod_mpi+0x5a>
20028ad2:	2100      	movs	r1, #0
20028ad4:	4620      	mov	r0, r4
20028ad6:	f7ff fc5e 	bl	20028396 <mbedtls_mpi_cmp_int>
20028ada:	2800      	cmp	r0, #0
20028adc:	dbf3      	blt.n	20028ac6 <mbedtls_mpi_mod_mpi+0x28>
20028ade:	4631      	mov	r1, r6
20028ae0:	4620      	mov	r0, r4
20028ae2:	f7ff fc17 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20028ae6:	2800      	cmp	r0, #0
20028ae8:	dbeb      	blt.n	20028ac2 <mbedtls_mpi_mod_mpi+0x24>
20028aea:	4632      	mov	r2, r6
20028aec:	4621      	mov	r1, r4
20028aee:	4620      	mov	r0, r4
20028af0:	f7ff fd23 	bl	2002853a <mbedtls_mpi_sub_mpi>
20028af4:	2800      	cmp	r0, #0
20028af6:	d0f2      	beq.n	20028ade <mbedtls_mpi_mod_mpi+0x40>
20028af8:	4605      	mov	r5, r0
20028afa:	e7e2      	b.n	20028ac2 <mbedtls_mpi_mod_mpi+0x24>
20028afc:	f06f 0509 	mvn.w	r5, #9
20028b00:	e7df      	b.n	20028ac2 <mbedtls_mpi_mod_mpi+0x24>

20028b02 <mbedtls_mpi_exp_mod>:
20028b02:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028b06:	4605      	mov	r5, r0
20028b08:	f2ad 6d54 	subw	sp, sp, #1620	@ 0x654
20028b0c:	4688      	mov	r8, r1
20028b0e:	4618      	mov	r0, r3
20028b10:	2100      	movs	r1, #0
20028b12:	461c      	mov	r4, r3
20028b14:	9203      	str	r2, [sp, #12]
20028b16:	f7ff fc3e 	bl	20028396 <mbedtls_mpi_cmp_int>
20028b1a:	2800      	cmp	r0, #0
20028b1c:	f2c0 8202 	blt.w	20028f24 <mbedtls_mpi_exp_mod+0x422>
20028b20:	68a3      	ldr	r3, [r4, #8]
20028b22:	681f      	ldr	r7, [r3, #0]
20028b24:	f017 0301 	ands.w	r3, r7, #1
20028b28:	9305      	str	r3, [sp, #20]
20028b2a:	f000 81fb 	beq.w	20028f24 <mbedtls_mpi_exp_mod+0x422>
20028b2e:	2100      	movs	r1, #0
20028b30:	9803      	ldr	r0, [sp, #12]
20028b32:	f7ff fc30 	bl	20028396 <mbedtls_mpi_cmp_int>
20028b36:	2800      	cmp	r0, #0
20028b38:	f2c0 81f4 	blt.w	20028f24 <mbedtls_mpi_exp_mod+0x422>
20028b3c:	2100      	movs	r1, #0
20028b3e:	2301      	movs	r3, #1
20028b40:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
20028b44:	a814      	add	r0, sp, #80	@ 0x50
20028b46:	e9cd 3108 	strd	r3, r1, [sp, #32]
20028b4a:	e9cd 130a 	strd	r1, r3, [sp, #40]	@ 0x28
20028b4e:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
20028b52:	e9cd 310e 	strd	r3, r1, [sp, #56]	@ 0x38
20028b56:	9110      	str	r1, [sp, #64]	@ 0x40
20028b58:	f001 ff1c 	bl	2002a994 <memset>
20028b5c:	9803      	ldr	r0, [sp, #12]
20028b5e:	f7ff fa26 	bl	20027fae <mbedtls_mpi_bitlen>
20028b62:	f5b0 7f28 	cmp.w	r0, #672	@ 0x2a0
20028b66:	d233      	bcs.n	20028bd0 <mbedtls_mpi_exp_mod+0xce>
20028b68:	28ef      	cmp	r0, #239	@ 0xef
20028b6a:	d833      	bhi.n	20028bd4 <mbedtls_mpi_exp_mod+0xd2>
20028b6c:	284f      	cmp	r0, #79	@ 0x4f
20028b6e:	d833      	bhi.n	20028bd8 <mbedtls_mpi_exp_mod+0xd6>
20028b70:	9b05      	ldr	r3, [sp, #20]
20028b72:	2818      	cmp	r0, #24
20028b74:	bf34      	ite	cc
20028b76:	461e      	movcc	r6, r3
20028b78:	2603      	movcs	r6, #3
20028b7a:	6863      	ldr	r3, [r4, #4]
20028b7c:	4628      	mov	r0, r5
20028b7e:	f103 0901 	add.w	r9, r3, #1
20028b82:	4649      	mov	r1, r9
20028b84:	f7ff f98a 	bl	20027e9c <mbedtls_mpi_grow>
20028b88:	b340      	cbz	r0, 20028bdc <mbedtls_mpi_exp_mod+0xda>
20028b8a:	f06f 090f 	mvn.w	r9, #15
20028b8e:	2301      	movs	r3, #1
20028b90:	1e74      	subs	r4, r6, #1
20028b92:	fa03 f506 	lsl.w	r5, r3, r6
20028b96:	260c      	movs	r6, #12
20028b98:	fa03 f404 	lsl.w	r4, r3, r4
20028b9c:	af14      	add	r7, sp, #80	@ 0x50
20028b9e:	42a5      	cmp	r5, r4
20028ba0:	f200 81ba 	bhi.w	20028f18 <mbedtls_mpi_exp_mod+0x416>
20028ba4:	a817      	add	r0, sp, #92	@ 0x5c
20028ba6:	f7ff f964 	bl	20027e72 <mbedtls_mpi_free>
20028baa:	a80b      	add	r0, sp, #44	@ 0x2c
20028bac:	f7ff f961 	bl	20027e72 <mbedtls_mpi_free>
20028bb0:	a80e      	add	r0, sp, #56	@ 0x38
20028bb2:	f7ff f95e 	bl	20027e72 <mbedtls_mpi_free>
20028bb6:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028bba:	b10b      	cbz	r3, 20028bc0 <mbedtls_mpi_exp_mod+0xbe>
20028bbc:	689b      	ldr	r3, [r3, #8]
20028bbe:	b913      	cbnz	r3, 20028bc6 <mbedtls_mpi_exp_mod+0xc4>
20028bc0:	a808      	add	r0, sp, #32
20028bc2:	f7ff f956 	bl	20027e72 <mbedtls_mpi_free>
20028bc6:	4648      	mov	r0, r9
20028bc8:	f20d 6d54 	addw	sp, sp, #1620	@ 0x654
20028bcc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20028bd0:	2606      	movs	r6, #6
20028bd2:	e7d2      	b.n	20028b7a <mbedtls_mpi_exp_mod+0x78>
20028bd4:	2605      	movs	r6, #5
20028bd6:	e7d0      	b.n	20028b7a <mbedtls_mpi_exp_mod+0x78>
20028bd8:	2604      	movs	r6, #4
20028bda:	e7ce      	b.n	20028b7a <mbedtls_mpi_exp_mod+0x78>
20028bdc:	4649      	mov	r1, r9
20028bde:	a817      	add	r0, sp, #92	@ 0x5c
20028be0:	f7ff f95c 	bl	20027e9c <mbedtls_mpi_grow>
20028be4:	2800      	cmp	r0, #0
20028be6:	d1d0      	bne.n	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028be8:	ea4f 0149 	mov.w	r1, r9, lsl #1
20028bec:	a80b      	add	r0, sp, #44	@ 0x2c
20028bee:	f7ff f955 	bl	20027e9c <mbedtls_mpi_grow>
20028bf2:	2800      	cmp	r0, #0
20028bf4:	d1c9      	bne.n	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028bf6:	f8d8 3000 	ldr.w	r3, [r8]
20028bfa:	9304      	str	r3, [sp, #16]
20028bfc:	3301      	adds	r3, #1
20028bfe:	d109      	bne.n	20028c14 <mbedtls_mpi_exp_mod+0x112>
20028c00:	4641      	mov	r1, r8
20028c02:	a80e      	add	r0, sp, #56	@ 0x38
20028c04:	f7ff f976 	bl	20027ef4 <mbedtls_mpi_copy>
20028c08:	2800      	cmp	r0, #0
20028c0a:	d1be      	bne.n	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028c0c:	2301      	movs	r3, #1
20028c0e:	f10d 0838 	add.w	r8, sp, #56	@ 0x38
20028c12:	930e      	str	r3, [sp, #56]	@ 0x38
20028c14:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028c18:	b11b      	cbz	r3, 20028c22 <mbedtls_mpi_exp_mod+0x120>
20028c1a:	689b      	ldr	r3, [r3, #8]
20028c1c:	2b00      	cmp	r3, #0
20028c1e:	f040 80ab 	bne.w	20028d78 <mbedtls_mpi_exp_mod+0x276>
20028c22:	2101      	movs	r1, #1
20028c24:	a808      	add	r0, sp, #32
20028c26:	f7ff f98e 	bl	20027f46 <mbedtls_mpi_lset>
20028c2a:	2800      	cmp	r0, #0
20028c2c:	d1ad      	bne.n	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028c2e:	6861      	ldr	r1, [r4, #4]
20028c30:	a808      	add	r0, sp, #32
20028c32:	0189      	lsls	r1, r1, #6
20028c34:	f7ff fa36 	bl	200280a4 <mbedtls_mpi_shift_l>
20028c38:	2800      	cmp	r0, #0
20028c3a:	d1a6      	bne.n	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028c3c:	a908      	add	r1, sp, #32
20028c3e:	4622      	mov	r2, r4
20028c40:	4608      	mov	r0, r1
20028c42:	f7ff ff2c 	bl	20028a9e <mbedtls_mpi_mod_mpi>
20028c46:	4681      	mov	r9, r0
20028c48:	2800      	cmp	r0, #0
20028c4a:	d1a0      	bne.n	20028b8e <mbedtls_mpi_exp_mod+0x8c>
20028c4c:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028c50:	b13b      	cbz	r3, 20028c62 <mbedtls_mpi_exp_mod+0x160>
20028c52:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028c56:	ab08      	add	r3, sp, #32
20028c58:	cb03      	ldmia	r3!, {r0, r1}
20028c5a:	6010      	str	r0, [r2, #0]
20028c5c:	6818      	ldr	r0, [r3, #0]
20028c5e:	6051      	str	r1, [r2, #4]
20028c60:	6090      	str	r0, [r2, #8]
20028c62:	4621      	mov	r1, r4
20028c64:	4640      	mov	r0, r8
20028c66:	f7ff fb55 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20028c6a:	2800      	cmp	r0, #0
20028c6c:	f2c0 808d 	blt.w	20028d8a <mbedtls_mpi_exp_mod+0x288>
20028c70:	4622      	mov	r2, r4
20028c72:	4641      	mov	r1, r8
20028c74:	a817      	add	r0, sp, #92	@ 0x5c
20028c76:	f7ff ff12 	bl	20028a9e <mbedtls_mpi_mod_mpi>
20028c7a:	4681      	mov	r9, r0
20028c7c:	2800      	cmp	r0, #0
20028c7e:	d186      	bne.n	20028b8e <mbedtls_mpi_exp_mod+0x8c>
20028c80:	1cba      	adds	r2, r7, #2
20028c82:	0052      	lsls	r2, r2, #1
20028c84:	f002 0208 	and.w	r2, r2, #8
20028c88:	443a      	add	r2, r7
20028c8a:	fb02 f307 	mul.w	r3, r2, r7
20028c8e:	f1c3 0302 	rsb	r3, r3, #2
20028c92:	4353      	muls	r3, r2
20028c94:	fb03 f207 	mul.w	r2, r3, r7
20028c98:	f1c2 0202 	rsb	r2, r2, #2
20028c9c:	4353      	muls	r3, r2
20028c9e:	435f      	muls	r7, r3
20028ca0:	3f02      	subs	r7, #2
20028ca2:	437b      	muls	r3, r7
20028ca4:	f10d 0b2c 	add.w	fp, sp, #44	@ 0x2c
20028ca8:	4622      	mov	r2, r4
20028caa:	f8cd b000 	str.w	fp, [sp]
20028cae:	a908      	add	r1, sp, #32
20028cb0:	a817      	add	r0, sp, #92	@ 0x5c
20028cb2:	9302      	str	r3, [sp, #8]
20028cb4:	f7ff fac4 	bl	20028240 <mpi_montmul>
20028cb8:	2800      	cmp	r0, #0
20028cba:	f040 80e4 	bne.w	20028e86 <mbedtls_mpi_exp_mod+0x384>
20028cbe:	4628      	mov	r0, r5
20028cc0:	a908      	add	r1, sp, #32
20028cc2:	f7ff f917 	bl	20027ef4 <mbedtls_mpi_copy>
20028cc6:	2800      	cmp	r0, #0
20028cc8:	f47f af5f 	bne.w	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028ccc:	2301      	movs	r3, #1
20028cce:	aa07      	add	r2, sp, #28
20028cd0:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028cd4:	9307      	str	r3, [sp, #28]
20028cd6:	9213      	str	r2, [sp, #76]	@ 0x4c
20028cd8:	4628      	mov	r0, r5
20028cda:	4622      	mov	r2, r4
20028cdc:	9b02      	ldr	r3, [sp, #8]
20028cde:	f8cd b000 	str.w	fp, [sp]
20028ce2:	a911      	add	r1, sp, #68	@ 0x44
20028ce4:	f7ff faac 	bl	20028240 <mpi_montmul>
20028ce8:	2800      	cmp	r0, #0
20028cea:	f040 80cc 	bne.w	20028e86 <mbedtls_mpi_exp_mod+0x384>
20028cee:	2e01      	cmp	r6, #1
20028cf0:	d153      	bne.n	20028d9a <mbedtls_mpi_exp_mod+0x298>
20028cf2:	f04f 0900 	mov.w	r9, #0
20028cf6:	464f      	mov	r7, r9
20028cf8:	46ca      	mov	sl, r9
20028cfa:	46c8      	mov	r8, r9
20028cfc:	9b03      	ldr	r3, [sp, #12]
20028cfe:	f8d3 b004 	ldr.w	fp, [r3, #4]
20028d02:	f1ba 0f00 	cmp.w	sl, #0
20028d06:	f040 80a1 	bne.w	20028e4c <mbedtls_mpi_exp_mod+0x34a>
20028d0a:	f1bb 0f00 	cmp.w	fp, #0
20028d0e:	f040 8099 	bne.w	20028e44 <mbedtls_mpi_exp_mod+0x342>
20028d12:	f04f 0a01 	mov.w	sl, #1
20028d16:	f10d 092c 	add.w	r9, sp, #44	@ 0x2c
20028d1a:	fa0a fa06 	lsl.w	sl, sl, r6
20028d1e:	45bb      	cmp	fp, r7
20028d20:	f040 80dd 	bne.w	20028ede <mbedtls_mpi_exp_mod+0x3dc>
20028d24:	2301      	movs	r3, #1
20028d26:	aa07      	add	r2, sp, #28
20028d28:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028d2c:	9307      	str	r3, [sp, #28]
20028d2e:	9213      	str	r2, [sp, #76]	@ 0x4c
20028d30:	f8cd 9000 	str.w	r9, [sp]
20028d34:	4622      	mov	r2, r4
20028d36:	4628      	mov	r0, r5
20028d38:	9b02      	ldr	r3, [sp, #8]
20028d3a:	a911      	add	r1, sp, #68	@ 0x44
20028d3c:	f7ff fa80 	bl	20028240 <mpi_montmul>
20028d40:	4681      	mov	r9, r0
20028d42:	2800      	cmp	r0, #0
20028d44:	f040 809f 	bne.w	20028e86 <mbedtls_mpi_exp_mod+0x384>
20028d48:	9b04      	ldr	r3, [sp, #16]
20028d4a:	3301      	adds	r3, #1
20028d4c:	f47f af1f 	bne.w	20028b8e <mbedtls_mpi_exp_mod+0x8c>
20028d50:	9b03      	ldr	r3, [sp, #12]
20028d52:	685b      	ldr	r3, [r3, #4]
20028d54:	2b00      	cmp	r3, #0
20028d56:	f43f af1a 	beq.w	20028b8e <mbedtls_mpi_exp_mod+0x8c>
20028d5a:	9b03      	ldr	r3, [sp, #12]
20028d5c:	689b      	ldr	r3, [r3, #8]
20028d5e:	681b      	ldr	r3, [r3, #0]
20028d60:	07db      	lsls	r3, r3, #31
20028d62:	f57f af14 	bpl.w	20028b8e <mbedtls_mpi_exp_mod+0x8c>
20028d66:	9b04      	ldr	r3, [sp, #16]
20028d68:	462a      	mov	r2, r5
20028d6a:	4621      	mov	r1, r4
20028d6c:	4628      	mov	r0, r5
20028d6e:	602b      	str	r3, [r5, #0]
20028d70:	f7ff fbbd 	bl	200284ee <mbedtls_mpi_add_mpi>
20028d74:	4681      	mov	r9, r0
20028d76:	e70a      	b.n	20028b8e <mbedtls_mpi_exp_mod+0x8c>
20028d78:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028d7c:	ab08      	add	r3, sp, #32
20028d7e:	6810      	ldr	r0, [r2, #0]
20028d80:	6851      	ldr	r1, [r2, #4]
20028d82:	c303      	stmia	r3!, {r0, r1}
20028d84:	6890      	ldr	r0, [r2, #8]
20028d86:	6018      	str	r0, [r3, #0]
20028d88:	e76b      	b.n	20028c62 <mbedtls_mpi_exp_mod+0x160>
20028d8a:	4641      	mov	r1, r8
20028d8c:	a817      	add	r0, sp, #92	@ 0x5c
20028d8e:	f7ff f8b1 	bl	20027ef4 <mbedtls_mpi_copy>
20028d92:	2800      	cmp	r0, #0
20028d94:	f43f af74 	beq.w	20028c80 <mbedtls_mpi_exp_mod+0x17e>
20028d98:	e6f7      	b.n	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028d9a:	f04f 0a0c 	mov.w	sl, #12
20028d9e:	1e77      	subs	r7, r6, #1
20028da0:	6861      	ldr	r1, [r4, #4]
20028da2:	fa0a fa07 	lsl.w	sl, sl, r7
20028da6:	f10d 0950 	add.w	r9, sp, #80	@ 0x50
20028daa:	44d1      	add	r9, sl
20028dac:	4648      	mov	r0, r9
20028dae:	3101      	adds	r1, #1
20028db0:	f7ff f874 	bl	20027e9c <mbedtls_mpi_grow>
20028db4:	2800      	cmp	r0, #0
20028db6:	f47f aee8 	bne.w	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028dba:	4648      	mov	r0, r9
20028dbc:	a917      	add	r1, sp, #92	@ 0x5c
20028dbe:	f7ff f899 	bl	20027ef4 <mbedtls_mpi_copy>
20028dc2:	2800      	cmp	r0, #0
20028dc4:	f47f aee1 	bne.w	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028dc8:	4680      	mov	r8, r0
20028dca:	4622      	mov	r2, r4
20028dcc:	4649      	mov	r1, r9
20028dce:	4648      	mov	r0, r9
20028dd0:	9b02      	ldr	r3, [sp, #8]
20028dd2:	f8cd b000 	str.w	fp, [sp]
20028dd6:	f7ff fa33 	bl	20028240 <mpi_montmul>
20028dda:	2800      	cmp	r0, #0
20028ddc:	d153      	bne.n	20028e86 <mbedtls_mpi_exp_mod+0x384>
20028dde:	f108 0801 	add.w	r8, r8, #1
20028de2:	45b8      	cmp	r8, r7
20028de4:	d3f1      	bcc.n	20028dca <mbedtls_mpi_exp_mod+0x2c8>
20028de6:	f04f 0801 	mov.w	r8, #1
20028dea:	f10d 0b50 	add.w	fp, sp, #80	@ 0x50
20028dee:	fa08 f707 	lsl.w	r7, r8, r7
20028df2:	4447      	add	r7, r8
20028df4:	44d3      	add	fp, sl
20028df6:	fa08 f806 	lsl.w	r8, r8, r6
20028dfa:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
20028dfe:	45b8      	cmp	r8, r7
20028e00:	f67f af77 	bls.w	20028cf2 <mbedtls_mpi_exp_mod+0x1f0>
20028e04:	6861      	ldr	r1, [r4, #4]
20028e06:	f10b 090c 	add.w	r9, fp, #12
20028e0a:	4648      	mov	r0, r9
20028e0c:	3101      	adds	r1, #1
20028e0e:	f7ff f845 	bl	20027e9c <mbedtls_mpi_grow>
20028e12:	2800      	cmp	r0, #0
20028e14:	f47f aeb9 	bne.w	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028e18:	4659      	mov	r1, fp
20028e1a:	4648      	mov	r0, r9
20028e1c:	f7ff f86a 	bl	20027ef4 <mbedtls_mpi_copy>
20028e20:	2800      	cmp	r0, #0
20028e22:	f47f aeb2 	bne.w	20028b8a <mbedtls_mpi_exp_mod+0x88>
20028e26:	4622      	mov	r2, r4
20028e28:	4648      	mov	r0, r9
20028e2a:	9b02      	ldr	r3, [sp, #8]
20028e2c:	f8cd a000 	str.w	sl, [sp]
20028e30:	a917      	add	r1, sp, #92	@ 0x5c
20028e32:	f7ff fa05 	bl	20028240 <mpi_montmul>
20028e36:	bb30      	cbnz	r0, 20028e86 <mbedtls_mpi_exp_mod+0x384>
20028e38:	46cb      	mov	fp, r9
20028e3a:	3701      	adds	r7, #1
20028e3c:	e7df      	b.n	20028dfe <mbedtls_mpi_exp_mod+0x2fc>
20028e3e:	f04f 0902 	mov.w	r9, #2
20028e42:	e75e      	b.n	20028d02 <mbedtls_mpi_exp_mod+0x200>
20028e44:	f04f 0a20 	mov.w	sl, #32
20028e48:	f10b 3bff 	add.w	fp, fp, #4294967295
20028e4c:	9b03      	ldr	r3, [sp, #12]
20028e4e:	f10a 3aff 	add.w	sl, sl, #4294967295
20028e52:	689b      	ldr	r3, [r3, #8]
20028e54:	f853 302b 	ldr.w	r3, [r3, fp, lsl #2]
20028e58:	fa23 f30a 	lsr.w	r3, r3, sl
20028e5c:	f013 0301 	ands.w	r3, r3, #1
20028e60:	d114      	bne.n	20028e8c <mbedtls_mpi_exp_mod+0x38a>
20028e62:	f1b9 0f00 	cmp.w	r9, #0
20028e66:	f43f af4c 	beq.w	20028d02 <mbedtls_mpi_exp_mod+0x200>
20028e6a:	f1b9 0f01 	cmp.w	r9, #1
20028e6e:	d10d      	bne.n	20028e8c <mbedtls_mpi_exp_mod+0x38a>
20028e70:	ab0b      	add	r3, sp, #44	@ 0x2c
20028e72:	9300      	str	r3, [sp, #0]
20028e74:	4622      	mov	r2, r4
20028e76:	4629      	mov	r1, r5
20028e78:	4628      	mov	r0, r5
20028e7a:	9b02      	ldr	r3, [sp, #8]
20028e7c:	f7ff f9e0 	bl	20028240 <mpi_montmul>
20028e80:	2800      	cmp	r0, #0
20028e82:	f43f af3e 	beq.w	20028d02 <mbedtls_mpi_exp_mod+0x200>
20028e86:	f06f 0903 	mvn.w	r9, #3
20028e8a:	e680      	b.n	20028b8e <mbedtls_mpi_exp_mod+0x8c>
20028e8c:	3701      	adds	r7, #1
20028e8e:	1bf2      	subs	r2, r6, r7
20028e90:	4093      	lsls	r3, r2
20028e92:	42be      	cmp	r6, r7
20028e94:	ea48 0803 	orr.w	r8, r8, r3
20028e98:	d1d1      	bne.n	20028e3e <mbedtls_mpi_exp_mod+0x33c>
20028e9a:	f04f 0900 	mov.w	r9, #0
20028e9e:	ab0b      	add	r3, sp, #44	@ 0x2c
20028ea0:	9300      	str	r3, [sp, #0]
20028ea2:	4622      	mov	r2, r4
20028ea4:	4629      	mov	r1, r5
20028ea6:	4628      	mov	r0, r5
20028ea8:	9b02      	ldr	r3, [sp, #8]
20028eaa:	f7ff f9c9 	bl	20028240 <mpi_montmul>
20028eae:	2800      	cmp	r0, #0
20028eb0:	d1e9      	bne.n	20028e86 <mbedtls_mpi_exp_mod+0x384>
20028eb2:	f109 0901 	add.w	r9, r9, #1
20028eb6:	454f      	cmp	r7, r9
20028eb8:	d8f1      	bhi.n	20028e9e <mbedtls_mpi_exp_mod+0x39c>
20028eba:	200c      	movs	r0, #12
20028ebc:	ab0b      	add	r3, sp, #44	@ 0x2c
20028ebe:	a914      	add	r1, sp, #80	@ 0x50
20028ec0:	fb00 1108 	mla	r1, r0, r8, r1
20028ec4:	9300      	str	r3, [sp, #0]
20028ec6:	4622      	mov	r2, r4
20028ec8:	4628      	mov	r0, r5
20028eca:	9b02      	ldr	r3, [sp, #8]
20028ecc:	f7ff f9b8 	bl	20028240 <mpi_montmul>
20028ed0:	4607      	mov	r7, r0
20028ed2:	2800      	cmp	r0, #0
20028ed4:	d1d7      	bne.n	20028e86 <mbedtls_mpi_exp_mod+0x384>
20028ed6:	4680      	mov	r8, r0
20028ed8:	f8dd 9014 	ldr.w	r9, [sp, #20]
20028edc:	e711      	b.n	20028d02 <mbedtls_mpi_exp_mod+0x200>
20028ede:	4622      	mov	r2, r4
20028ee0:	4629      	mov	r1, r5
20028ee2:	4628      	mov	r0, r5
20028ee4:	9b02      	ldr	r3, [sp, #8]
20028ee6:	f8cd 9000 	str.w	r9, [sp]
20028eea:	f7ff f9a9 	bl	20028240 <mpi_montmul>
20028eee:	2800      	cmp	r0, #0
20028ef0:	d1c9      	bne.n	20028e86 <mbedtls_mpi_exp_mod+0x384>
20028ef2:	ea4f 0848 	mov.w	r8, r8, lsl #1
20028ef6:	ea18 0f0a 	tst.w	r8, sl
20028efa:	d102      	bne.n	20028f02 <mbedtls_mpi_exp_mod+0x400>
20028efc:	f10b 0b01 	add.w	fp, fp, #1
20028f00:	e70d      	b.n	20028d1e <mbedtls_mpi_exp_mod+0x21c>
20028f02:	4622      	mov	r2, r4
20028f04:	4628      	mov	r0, r5
20028f06:	9b02      	ldr	r3, [sp, #8]
20028f08:	f8cd 9000 	str.w	r9, [sp]
20028f0c:	a917      	add	r1, sp, #92	@ 0x5c
20028f0e:	f7ff f997 	bl	20028240 <mpi_montmul>
20028f12:	2800      	cmp	r0, #0
20028f14:	d0f2      	beq.n	20028efc <mbedtls_mpi_exp_mod+0x3fa>
20028f16:	e7b6      	b.n	20028e86 <mbedtls_mpi_exp_mod+0x384>
20028f18:	fb06 7004 	mla	r0, r6, r4, r7
20028f1c:	f7fe ffa9 	bl	20027e72 <mbedtls_mpi_free>
20028f20:	3401      	adds	r4, #1
20028f22:	e63c      	b.n	20028b9e <mbedtls_mpi_exp_mod+0x9c>
20028f24:	f06f 0903 	mvn.w	r9, #3
20028f28:	e64d      	b.n	20028bc6 <mbedtls_mpi_exp_mod+0xc4>

20028f2a <mbedtls_mpi_gcd>:
20028f2a:	b570      	push	{r4, r5, r6, lr}
20028f2c:	2300      	movs	r3, #0
20028f2e:	2401      	movs	r4, #1
20028f30:	b086      	sub	sp, #24
20028f32:	4606      	mov	r6, r0
20028f34:	4668      	mov	r0, sp
20028f36:	4615      	mov	r5, r2
20028f38:	e9cd 4300 	strd	r4, r3, [sp]
20028f3c:	e9cd 3402 	strd	r3, r4, [sp, #8]
20028f40:	e9cd 3304 	strd	r3, r3, [sp, #16]
20028f44:	f7fe ffd6 	bl	20027ef4 <mbedtls_mpi_copy>
20028f48:	b150      	cbz	r0, 20028f60 <mbedtls_mpi_gcd+0x36>
20028f4a:	f06f 040f 	mvn.w	r4, #15
20028f4e:	4668      	mov	r0, sp
20028f50:	f7fe ff8f 	bl	20027e72 <mbedtls_mpi_free>
20028f54:	a803      	add	r0, sp, #12
20028f56:	f7fe ff8c 	bl	20027e72 <mbedtls_mpi_free>
20028f5a:	4620      	mov	r0, r4
20028f5c:	b006      	add	sp, #24
20028f5e:	bd70      	pop	{r4, r5, r6, pc}
20028f60:	4629      	mov	r1, r5
20028f62:	a803      	add	r0, sp, #12
20028f64:	f7fe ffc6 	bl	20027ef4 <mbedtls_mpi_copy>
20028f68:	2800      	cmp	r0, #0
20028f6a:	d1ee      	bne.n	20028f4a <mbedtls_mpi_gcd+0x20>
20028f6c:	4668      	mov	r0, sp
20028f6e:	f7ff f806 	bl	20027f7e <mbedtls_mpi_lsb>
20028f72:	4605      	mov	r5, r0
20028f74:	a803      	add	r0, sp, #12
20028f76:	f7ff f802 	bl	20027f7e <mbedtls_mpi_lsb>
20028f7a:	4285      	cmp	r5, r0
20028f7c:	bf28      	it	cs
20028f7e:	4605      	movcs	r5, r0
20028f80:	4668      	mov	r0, sp
20028f82:	4629      	mov	r1, r5
20028f84:	f7ff f8e7 	bl	20028156 <mbedtls_mpi_shift_r>
20028f88:	2800      	cmp	r0, #0
20028f8a:	d1de      	bne.n	20028f4a <mbedtls_mpi_gcd+0x20>
20028f8c:	4629      	mov	r1, r5
20028f8e:	a803      	add	r0, sp, #12
20028f90:	f7ff f8e1 	bl	20028156 <mbedtls_mpi_shift_r>
20028f94:	2800      	cmp	r0, #0
20028f96:	d1d8      	bne.n	20028f4a <mbedtls_mpi_gcd+0x20>
20028f98:	9403      	str	r4, [sp, #12]
20028f9a:	9400      	str	r4, [sp, #0]
20028f9c:	2100      	movs	r1, #0
20028f9e:	4668      	mov	r0, sp
20028fa0:	f7ff f9f9 	bl	20028396 <mbedtls_mpi_cmp_int>
20028fa4:	b968      	cbnz	r0, 20028fc2 <mbedtls_mpi_gcd+0x98>
20028fa6:	4629      	mov	r1, r5
20028fa8:	a803      	add	r0, sp, #12
20028faa:	f7ff f87b 	bl	200280a4 <mbedtls_mpi_shift_l>
20028fae:	2800      	cmp	r0, #0
20028fb0:	d1cb      	bne.n	20028f4a <mbedtls_mpi_gcd+0x20>
20028fb2:	4630      	mov	r0, r6
20028fb4:	a903      	add	r1, sp, #12
20028fb6:	f7fe ff9d 	bl	20027ef4 <mbedtls_mpi_copy>
20028fba:	4604      	mov	r4, r0
20028fbc:	2800      	cmp	r0, #0
20028fbe:	d0c6      	beq.n	20028f4e <mbedtls_mpi_gcd+0x24>
20028fc0:	e7c3      	b.n	20028f4a <mbedtls_mpi_gcd+0x20>
20028fc2:	4668      	mov	r0, sp
20028fc4:	f7fe ffdb 	bl	20027f7e <mbedtls_mpi_lsb>
20028fc8:	4601      	mov	r1, r0
20028fca:	4668      	mov	r0, sp
20028fcc:	f7ff f8c3 	bl	20028156 <mbedtls_mpi_shift_r>
20028fd0:	2800      	cmp	r0, #0
20028fd2:	d1ba      	bne.n	20028f4a <mbedtls_mpi_gcd+0x20>
20028fd4:	a803      	add	r0, sp, #12
20028fd6:	f7fe ffd2 	bl	20027f7e <mbedtls_mpi_lsb>
20028fda:	4601      	mov	r1, r0
20028fdc:	a803      	add	r0, sp, #12
20028fde:	f7ff f8ba 	bl	20028156 <mbedtls_mpi_shift_r>
20028fe2:	2800      	cmp	r0, #0
20028fe4:	d1b1      	bne.n	20028f4a <mbedtls_mpi_gcd+0x20>
20028fe6:	4668      	mov	r0, sp
20028fe8:	a903      	add	r1, sp, #12
20028fea:	f7ff f993 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20028fee:	2800      	cmp	r0, #0
20028ff0:	db0e      	blt.n	20029010 <mbedtls_mpi_gcd+0xe6>
20028ff2:	4669      	mov	r1, sp
20028ff4:	4668      	mov	r0, sp
20028ff6:	aa03      	add	r2, sp, #12
20028ff8:	f7ff fa3c 	bl	20028474 <mbedtls_mpi_sub_abs>
20028ffc:	4604      	mov	r4, r0
20028ffe:	2800      	cmp	r0, #0
20029000:	d1a5      	bne.n	20028f4e <mbedtls_mpi_gcd+0x24>
20029002:	2101      	movs	r1, #1
20029004:	4668      	mov	r0, sp
20029006:	f7ff f8a6 	bl	20028156 <mbedtls_mpi_shift_r>
2002900a:	2800      	cmp	r0, #0
2002900c:	d0c6      	beq.n	20028f9c <mbedtls_mpi_gcd+0x72>
2002900e:	e79c      	b.n	20028f4a <mbedtls_mpi_gcd+0x20>
20029010:	a903      	add	r1, sp, #12
20029012:	466a      	mov	r2, sp
20029014:	4608      	mov	r0, r1
20029016:	f7ff fa2d 	bl	20028474 <mbedtls_mpi_sub_abs>
2002901a:	4604      	mov	r4, r0
2002901c:	2800      	cmp	r0, #0
2002901e:	d196      	bne.n	20028f4e <mbedtls_mpi_gcd+0x24>
20029020:	2101      	movs	r1, #1
20029022:	a803      	add	r0, sp, #12
20029024:	e7ef      	b.n	20029006 <mbedtls_mpi_gcd+0xdc>

20029026 <mbedtls_mpi_fill_random>:
20029026:	b570      	push	{r4, r5, r6, lr}
20029028:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
2002902c:	4605      	mov	r5, r0
2002902e:	460c      	mov	r4, r1
20029030:	4616      	mov	r6, r2
20029032:	4618      	mov	r0, r3
20029034:	f5ad 6d80 	sub.w	sp, sp, #1024	@ 0x400
20029038:	d80f      	bhi.n	2002905a <mbedtls_mpi_fill_random+0x34>
2002903a:	460a      	mov	r2, r1
2002903c:	4669      	mov	r1, sp
2002903e:	47b0      	blx	r6
20029040:	b940      	cbnz	r0, 20029054 <mbedtls_mpi_fill_random+0x2e>
20029042:	4622      	mov	r2, r4
20029044:	4669      	mov	r1, sp
20029046:	4628      	mov	r0, r5
20029048:	f7fe ffd4 	bl	20027ff4 <mbedtls_mpi_read_binary>
2002904c:	2800      	cmp	r0, #0
2002904e:	bf18      	it	ne
20029050:	f06f 000f 	mvnne.w	r0, #15
20029054:	f50d 6d80 	add.w	sp, sp, #1024	@ 0x400
20029058:	bd70      	pop	{r4, r5, r6, pc}
2002905a:	f06f 0003 	mvn.w	r0, #3
2002905e:	e7f9      	b.n	20029054 <mbedtls_mpi_fill_random+0x2e>

20029060 <mbedtls_mpi_inv_mod>:
20029060:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029064:	b09f      	sub	sp, #124	@ 0x7c
20029066:	9001      	str	r0, [sp, #4]
20029068:	460f      	mov	r7, r1
2002906a:	4610      	mov	r0, r2
2002906c:	2101      	movs	r1, #1
2002906e:	4692      	mov	sl, r2
20029070:	f7ff f991 	bl	20028396 <mbedtls_mpi_cmp_int>
20029074:	2800      	cmp	r0, #0
20029076:	f340 81b5 	ble.w	200293e4 <mbedtls_mpi_inv_mod+0x384>
2002907a:	2500      	movs	r5, #0
2002907c:	2601      	movs	r6, #1
2002907e:	4652      	mov	r2, sl
20029080:	4639      	mov	r1, r7
20029082:	a803      	add	r0, sp, #12
20029084:	e9cd 6506 	strd	r6, r5, [sp, #24]
20029088:	e9cd 5608 	strd	r5, r6, [sp, #32]
2002908c:	e9cd 650c 	strd	r6, r5, [sp, #48]	@ 0x30
20029090:	e9cd 650f 	strd	r6, r5, [sp, #60]	@ 0x3c
20029094:	e9cd 6503 	strd	r6, r5, [sp, #12]
20029098:	e9cd 6512 	strd	r6, r5, [sp, #72]	@ 0x48
2002909c:	e9cd 5614 	strd	r5, r6, [sp, #80]	@ 0x50
200290a0:	e9cd 6518 	strd	r6, r5, [sp, #96]	@ 0x60
200290a4:	e9cd 651b 	strd	r6, r5, [sp, #108]	@ 0x6c
200290a8:	950a      	str	r5, [sp, #40]	@ 0x28
200290aa:	9505      	str	r5, [sp, #20]
200290ac:	9516      	str	r5, [sp, #88]	@ 0x58
200290ae:	f7ff ff3c 	bl	20028f2a <mbedtls_mpi_gcd>
200290b2:	4604      	mov	r4, r0
200290b4:	2800      	cmp	r0, #0
200290b6:	f040 8182 	bne.w	200293be <mbedtls_mpi_inv_mod+0x35e>
200290ba:	4631      	mov	r1, r6
200290bc:	a803      	add	r0, sp, #12
200290be:	f7ff f96a 	bl	20028396 <mbedtls_mpi_cmp_int>
200290c2:	4605      	mov	r5, r0
200290c4:	2800      	cmp	r0, #0
200290c6:	f040 8171 	bne.w	200293ac <mbedtls_mpi_inv_mod+0x34c>
200290ca:	4652      	mov	r2, sl
200290cc:	4639      	mov	r1, r7
200290ce:	a806      	add	r0, sp, #24
200290d0:	f7ff fce5 	bl	20028a9e <mbedtls_mpi_mod_mpi>
200290d4:	4604      	mov	r4, r0
200290d6:	2800      	cmp	r0, #0
200290d8:	f040 8171 	bne.w	200293be <mbedtls_mpi_inv_mod+0x35e>
200290dc:	900b      	str	r0, [sp, #44]	@ 0x2c
200290de:	a906      	add	r1, sp, #24
200290e0:	a809      	add	r0, sp, #36	@ 0x24
200290e2:	f7fe ff07 	bl	20027ef4 <mbedtls_mpi_copy>
200290e6:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
200290ea:	b920      	cbnz	r0, 200290f6 <mbedtls_mpi_inv_mod+0x96>
200290ec:	4651      	mov	r1, sl
200290ee:	a812      	add	r0, sp, #72	@ 0x48
200290f0:	f7fe ff00 	bl	20027ef4 <mbedtls_mpi_copy>
200290f4:	b130      	cbz	r0, 20029104 <mbedtls_mpi_inv_mod+0xa4>
200290f6:	f04f 0b00 	mov.w	fp, #0
200290fa:	465d      	mov	r5, fp
200290fc:	46d8      	mov	r8, fp
200290fe:	465e      	mov	r6, fp
20029100:	465f      	mov	r7, fp
20029102:	e0f5      	b.n	200292f0 <mbedtls_mpi_inv_mod+0x290>
20029104:	9017      	str	r0, [sp, #92]	@ 0x5c
20029106:	4651      	mov	r1, sl
20029108:	a815      	add	r0, sp, #84	@ 0x54
2002910a:	f7fe fef3 	bl	20027ef4 <mbedtls_mpi_copy>
2002910e:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20029112:	2800      	cmp	r0, #0
20029114:	f040 8159 	bne.w	200293ca <mbedtls_mpi_inv_mod+0x36a>
20029118:	4631      	mov	r1, r6
2002911a:	900e      	str	r0, [sp, #56]	@ 0x38
2002911c:	a80c      	add	r0, sp, #48	@ 0x30
2002911e:	f7fe ff12 	bl	20027f46 <mbedtls_mpi_lset>
20029122:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20029124:	4601      	mov	r1, r0
20029126:	2800      	cmp	r0, #0
20029128:	f040 8152 	bne.w	200293d0 <mbedtls_mpi_inv_mod+0x370>
2002912c:	9011      	str	r0, [sp, #68]	@ 0x44
2002912e:	a80f      	add	r0, sp, #60	@ 0x3c
20029130:	f7fe ff09 	bl	20027f46 <mbedtls_mpi_lset>
20029134:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20029136:	4683      	mov	fp, r0
20029138:	2800      	cmp	r0, #0
2002913a:	f040 814d 	bne.w	200293d8 <mbedtls_mpi_inv_mod+0x378>
2002913e:	4601      	mov	r1, r0
20029140:	901a      	str	r0, [sp, #104]	@ 0x68
20029142:	a818      	add	r0, sp, #96	@ 0x60
20029144:	f7fe feff 	bl	20027f46 <mbedtls_mpi_lset>
20029148:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002914a:	2800      	cmp	r0, #0
2002914c:	f040 8147 	bne.w	200293de <mbedtls_mpi_inv_mod+0x37e>
20029150:	2101      	movs	r1, #1
20029152:	a81b      	add	r0, sp, #108	@ 0x6c
20029154:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029158:	f7fe fef5 	bl	20027f46 <mbedtls_mpi_lset>
2002915c:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029160:	2800      	cmp	r0, #0
20029162:	f040 80c5 	bne.w	200292f0 <mbedtls_mpi_inv_mod+0x290>
20029166:	f8d9 2000 	ldr.w	r2, [r9]
2002916a:	07d0      	lsls	r0, r2, #31
2002916c:	d554      	bpl.n	20029218 <mbedtls_mpi_inv_mod+0x1b8>
2002916e:	f8d8 2000 	ldr.w	r2, [r8]
20029172:	07d3      	lsls	r3, r2, #31
20029174:	f140 8083 	bpl.w	2002927e <mbedtls_mpi_inv_mod+0x21e>
20029178:	a915      	add	r1, sp, #84	@ 0x54
2002917a:	a809      	add	r0, sp, #36	@ 0x24
2002917c:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029180:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20029184:	f7ff f8c6 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029188:	2800      	cmp	r0, #0
2002918a:	f2c0 80b4 	blt.w	200292f6 <mbedtls_mpi_inv_mod+0x296>
2002918e:	a909      	add	r1, sp, #36	@ 0x24
20029190:	4608      	mov	r0, r1
20029192:	aa15      	add	r2, sp, #84	@ 0x54
20029194:	f7ff f9d1 	bl	2002853a <mbedtls_mpi_sub_mpi>
20029198:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
2002919c:	4604      	mov	r4, r0
2002919e:	2800      	cmp	r0, #0
200291a0:	f040 80d1 	bne.w	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200291a4:	a90c      	add	r1, sp, #48	@ 0x30
200291a6:	4608      	mov	r0, r1
200291a8:	aa18      	add	r2, sp, #96	@ 0x60
200291aa:	970e      	str	r7, [sp, #56]	@ 0x38
200291ac:	951a      	str	r5, [sp, #104]	@ 0x68
200291ae:	f7ff f9c4 	bl	2002853a <mbedtls_mpi_sub_mpi>
200291b2:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
200291b4:	4604      	mov	r4, r0
200291b6:	2800      	cmp	r0, #0
200291b8:	f040 80c5 	bne.w	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200291bc:	a90f      	add	r1, sp, #60	@ 0x3c
200291be:	4608      	mov	r0, r1
200291c0:	aa1b      	add	r2, sp, #108	@ 0x6c
200291c2:	9611      	str	r6, [sp, #68]	@ 0x44
200291c4:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200291c8:	f7ff f9b7 	bl	2002853a <mbedtls_mpi_sub_mpi>
200291cc:	9e11      	ldr	r6, [sp, #68]	@ 0x44
200291ce:	4604      	mov	r4, r0
200291d0:	2800      	cmp	r0, #0
200291d2:	f040 80b8 	bne.w	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200291d6:	2100      	movs	r1, #0
200291d8:	a809      	add	r0, sp, #36	@ 0x24
200291da:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
200291de:	f7ff f8da 	bl	20028396 <mbedtls_mpi_cmp_int>
200291e2:	2800      	cmp	r0, #0
200291e4:	d1bf      	bne.n	20029166 <mbedtls_mpi_inv_mod+0x106>
200291e6:	2100      	movs	r1, #0
200291e8:	a818      	add	r0, sp, #96	@ 0x60
200291ea:	951a      	str	r5, [sp, #104]	@ 0x68
200291ec:	f7ff f8d3 	bl	20028396 <mbedtls_mpi_cmp_int>
200291f0:	2800      	cmp	r0, #0
200291f2:	f2c0 809e 	blt.w	20029332 <mbedtls_mpi_inv_mod+0x2d2>
200291f6:	4651      	mov	r1, sl
200291f8:	a818      	add	r0, sp, #96	@ 0x60
200291fa:	951a      	str	r5, [sp, #104]	@ 0x68
200291fc:	f7ff f88a 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029200:	2800      	cmp	r0, #0
20029202:	f280 80c8 	bge.w	20029396 <mbedtls_mpi_inv_mod+0x336>
20029206:	9801      	ldr	r0, [sp, #4]
20029208:	a918      	add	r1, sp, #96	@ 0x60
2002920a:	f7fe fe73 	bl	20027ef4 <mbedtls_mpi_copy>
2002920e:	1e04      	subs	r4, r0, #0
20029210:	bf18      	it	ne
20029212:	f06f 040f 	mvnne.w	r4, #15
20029216:	e096      	b.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
20029218:	2101      	movs	r1, #1
2002921a:	a809      	add	r0, sp, #36	@ 0x24
2002921c:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029220:	f7fe ff99 	bl	20028156 <mbedtls_mpi_shift_r>
20029224:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20029228:	2800      	cmp	r0, #0
2002922a:	d161      	bne.n	200292f0 <mbedtls_mpi_inv_mod+0x290>
2002922c:	683a      	ldr	r2, [r7, #0]
2002922e:	07d3      	lsls	r3, r2, #31
20029230:	d402      	bmi.n	20029238 <mbedtls_mpi_inv_mod+0x1d8>
20029232:	6832      	ldr	r2, [r6, #0]
20029234:	07d4      	lsls	r4, r2, #31
20029236:	d513      	bpl.n	20029260 <mbedtls_mpi_inv_mod+0x200>
20029238:	a90c      	add	r1, sp, #48	@ 0x30
2002923a:	4608      	mov	r0, r1
2002923c:	aa12      	add	r2, sp, #72	@ 0x48
2002923e:	970e      	str	r7, [sp, #56]	@ 0x38
20029240:	f7ff f955 	bl	200284ee <mbedtls_mpi_add_mpi>
20029244:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20029246:	4604      	mov	r4, r0
20029248:	2800      	cmp	r0, #0
2002924a:	d17c      	bne.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
2002924c:	a90f      	add	r1, sp, #60	@ 0x3c
2002924e:	4608      	mov	r0, r1
20029250:	aa06      	add	r2, sp, #24
20029252:	9611      	str	r6, [sp, #68]	@ 0x44
20029254:	f7ff f971 	bl	2002853a <mbedtls_mpi_sub_mpi>
20029258:	9e11      	ldr	r6, [sp, #68]	@ 0x44
2002925a:	4604      	mov	r4, r0
2002925c:	2800      	cmp	r0, #0
2002925e:	d172      	bne.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
20029260:	2101      	movs	r1, #1
20029262:	a80c      	add	r0, sp, #48	@ 0x30
20029264:	970e      	str	r7, [sp, #56]	@ 0x38
20029266:	f7fe ff76 	bl	20028156 <mbedtls_mpi_shift_r>
2002926a:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
2002926c:	2800      	cmp	r0, #0
2002926e:	d13f      	bne.n	200292f0 <mbedtls_mpi_inv_mod+0x290>
20029270:	2101      	movs	r1, #1
20029272:	a80f      	add	r0, sp, #60	@ 0x3c
20029274:	9611      	str	r6, [sp, #68]	@ 0x44
20029276:	f7fe ff6e 	bl	20028156 <mbedtls_mpi_shift_r>
2002927a:	9e11      	ldr	r6, [sp, #68]	@ 0x44
2002927c:	e770      	b.n	20029160 <mbedtls_mpi_inv_mod+0x100>
2002927e:	2101      	movs	r1, #1
20029280:	a815      	add	r0, sp, #84	@ 0x54
20029282:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20029286:	f7fe ff66 	bl	20028156 <mbedtls_mpi_shift_r>
2002928a:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
2002928e:	2800      	cmp	r0, #0
20029290:	d12e      	bne.n	200292f0 <mbedtls_mpi_inv_mod+0x290>
20029292:	682a      	ldr	r2, [r5, #0]
20029294:	07d1      	lsls	r1, r2, #31
20029296:	d403      	bmi.n	200292a0 <mbedtls_mpi_inv_mod+0x240>
20029298:	f8db 2000 	ldr.w	r2, [fp]
2002929c:	07d2      	lsls	r2, r2, #31
2002929e:	d515      	bpl.n	200292cc <mbedtls_mpi_inv_mod+0x26c>
200292a0:	a918      	add	r1, sp, #96	@ 0x60
200292a2:	4608      	mov	r0, r1
200292a4:	aa12      	add	r2, sp, #72	@ 0x48
200292a6:	951a      	str	r5, [sp, #104]	@ 0x68
200292a8:	f7ff f921 	bl	200284ee <mbedtls_mpi_add_mpi>
200292ac:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200292ae:	4604      	mov	r4, r0
200292b0:	2800      	cmp	r0, #0
200292b2:	d148      	bne.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200292b4:	a91b      	add	r1, sp, #108	@ 0x6c
200292b6:	4608      	mov	r0, r1
200292b8:	aa06      	add	r2, sp, #24
200292ba:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200292be:	f7ff f93c 	bl	2002853a <mbedtls_mpi_sub_mpi>
200292c2:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200292c6:	4604      	mov	r4, r0
200292c8:	2800      	cmp	r0, #0
200292ca:	d13c      	bne.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200292cc:	2101      	movs	r1, #1
200292ce:	a818      	add	r0, sp, #96	@ 0x60
200292d0:	951a      	str	r5, [sp, #104]	@ 0x68
200292d2:	f7fe ff40 	bl	20028156 <mbedtls_mpi_shift_r>
200292d6:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200292d8:	b950      	cbnz	r0, 200292f0 <mbedtls_mpi_inv_mod+0x290>
200292da:	2101      	movs	r1, #1
200292dc:	a81b      	add	r0, sp, #108	@ 0x6c
200292de:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200292e2:	f7fe ff38 	bl	20028156 <mbedtls_mpi_shift_r>
200292e6:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200292ea:	2800      	cmp	r0, #0
200292ec:	f43f af3f 	beq.w	2002916e <mbedtls_mpi_inv_mod+0x10e>
200292f0:	f06f 040f 	mvn.w	r4, #15
200292f4:	e027      	b.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200292f6:	a915      	add	r1, sp, #84	@ 0x54
200292f8:	4608      	mov	r0, r1
200292fa:	aa09      	add	r2, sp, #36	@ 0x24
200292fc:	f7ff f91d 	bl	2002853a <mbedtls_mpi_sub_mpi>
20029300:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20029304:	4604      	mov	r4, r0
20029306:	b9f0      	cbnz	r0, 20029346 <mbedtls_mpi_inv_mod+0x2e6>
20029308:	a918      	add	r1, sp, #96	@ 0x60
2002930a:	4608      	mov	r0, r1
2002930c:	aa0c      	add	r2, sp, #48	@ 0x30
2002930e:	951a      	str	r5, [sp, #104]	@ 0x68
20029310:	970e      	str	r7, [sp, #56]	@ 0x38
20029312:	f7ff f912 	bl	2002853a <mbedtls_mpi_sub_mpi>
20029316:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029318:	4604      	mov	r4, r0
2002931a:	b9a0      	cbnz	r0, 20029346 <mbedtls_mpi_inv_mod+0x2e6>
2002931c:	a91b      	add	r1, sp, #108	@ 0x6c
2002931e:	4608      	mov	r0, r1
20029320:	aa0f      	add	r2, sp, #60	@ 0x3c
20029322:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029326:	9611      	str	r6, [sp, #68]	@ 0x44
20029328:	f7ff f907 	bl	2002853a <mbedtls_mpi_sub_mpi>
2002932c:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029330:	e74d      	b.n	200291ce <mbedtls_mpi_inv_mod+0x16e>
20029332:	a918      	add	r1, sp, #96	@ 0x60
20029334:	4652      	mov	r2, sl
20029336:	4608      	mov	r0, r1
20029338:	f7ff f8d9 	bl	200284ee <mbedtls_mpi_add_mpi>
2002933c:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002933e:	4604      	mov	r4, r0
20029340:	2800      	cmp	r0, #0
20029342:	f43f af50 	beq.w	200291e6 <mbedtls_mpi_inv_mod+0x186>
20029346:	a806      	add	r0, sp, #24
20029348:	f7fe fd93 	bl	20027e72 <mbedtls_mpi_free>
2002934c:	a809      	add	r0, sp, #36	@ 0x24
2002934e:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029352:	f7fe fd8e 	bl	20027e72 <mbedtls_mpi_free>
20029356:	a80c      	add	r0, sp, #48	@ 0x30
20029358:	970e      	str	r7, [sp, #56]	@ 0x38
2002935a:	f7fe fd8a 	bl	20027e72 <mbedtls_mpi_free>
2002935e:	a80f      	add	r0, sp, #60	@ 0x3c
20029360:	9611      	str	r6, [sp, #68]	@ 0x44
20029362:	f7fe fd86 	bl	20027e72 <mbedtls_mpi_free>
20029366:	a803      	add	r0, sp, #12
20029368:	f7fe fd83 	bl	20027e72 <mbedtls_mpi_free>
2002936c:	a812      	add	r0, sp, #72	@ 0x48
2002936e:	f7fe fd80 	bl	20027e72 <mbedtls_mpi_free>
20029372:	a815      	add	r0, sp, #84	@ 0x54
20029374:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20029378:	f7fe fd7b 	bl	20027e72 <mbedtls_mpi_free>
2002937c:	a818      	add	r0, sp, #96	@ 0x60
2002937e:	951a      	str	r5, [sp, #104]	@ 0x68
20029380:	f7fe fd77 	bl	20027e72 <mbedtls_mpi_free>
20029384:	a81b      	add	r0, sp, #108	@ 0x6c
20029386:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
2002938a:	f7fe fd72 	bl	20027e72 <mbedtls_mpi_free>
2002938e:	4620      	mov	r0, r4
20029390:	b01f      	add	sp, #124	@ 0x7c
20029392:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029396:	a918      	add	r1, sp, #96	@ 0x60
20029398:	4652      	mov	r2, sl
2002939a:	4608      	mov	r0, r1
2002939c:	f7ff f8cd 	bl	2002853a <mbedtls_mpi_sub_mpi>
200293a0:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200293a2:	4604      	mov	r4, r0
200293a4:	2800      	cmp	r0, #0
200293a6:	f43f af26 	beq.w	200291f6 <mbedtls_mpi_inv_mod+0x196>
200293aa:	e7cc      	b.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200293ac:	46a3      	mov	fp, r4
200293ae:	4625      	mov	r5, r4
200293b0:	46a0      	mov	r8, r4
200293b2:	4626      	mov	r6, r4
200293b4:	4627      	mov	r7, r4
200293b6:	46a1      	mov	r9, r4
200293b8:	f06f 040d 	mvn.w	r4, #13
200293bc:	e7c3      	b.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200293be:	46ab      	mov	fp, r5
200293c0:	46a8      	mov	r8, r5
200293c2:	462e      	mov	r6, r5
200293c4:	462f      	mov	r7, r5
200293c6:	46a9      	mov	r9, r5
200293c8:	e7bd      	b.n	20029346 <mbedtls_mpi_inv_mod+0x2e6>
200293ca:	46a3      	mov	fp, r4
200293cc:	4625      	mov	r5, r4
200293ce:	e696      	b.n	200290fe <mbedtls_mpi_inv_mod+0x9e>
200293d0:	46a3      	mov	fp, r4
200293d2:	4625      	mov	r5, r4
200293d4:	4626      	mov	r6, r4
200293d6:	e78b      	b.n	200292f0 <mbedtls_mpi_inv_mod+0x290>
200293d8:	46a3      	mov	fp, r4
200293da:	4625      	mov	r5, r4
200293dc:	e788      	b.n	200292f0 <mbedtls_mpi_inv_mod+0x290>
200293de:	f04f 0b00 	mov.w	fp, #0
200293e2:	e785      	b.n	200292f0 <mbedtls_mpi_inv_mod+0x290>
200293e4:	f06f 0403 	mvn.w	r4, #3
200293e8:	e7d1      	b.n	2002938e <mbedtls_mpi_inv_mod+0x32e>
	...

200293ec <mbedtls_oid_get_pk_alg>:
200293ec:	b570      	push	{r4, r5, r6, lr}
200293ee:	460e      	mov	r6, r1
200293f0:	4605      	mov	r5, r0
200293f2:	b110      	cbz	r0, 200293fa <mbedtls_oid_get_pk_alg+0xe>
200293f4:	4c09      	ldr	r4, [pc, #36]	@ (2002941c <mbedtls_oid_get_pk_alg+0x30>)
200293f6:	6820      	ldr	r0, [r4, #0]
200293f8:	b910      	cbnz	r0, 20029400 <mbedtls_oid_get_pk_alg+0x14>
200293fa:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200293fe:	bd70      	pop	{r4, r5, r6, pc}
20029400:	686b      	ldr	r3, [r5, #4]
20029402:	6862      	ldr	r2, [r4, #4]
20029404:	429a      	cmp	r2, r3
20029406:	d103      	bne.n	20029410 <mbedtls_oid_get_pk_alg+0x24>
20029408:	68a9      	ldr	r1, [r5, #8]
2002940a:	f001 fab3 	bl	2002a974 <memcmp>
2002940e:	b108      	cbz	r0, 20029414 <mbedtls_oid_get_pk_alg+0x28>
20029410:	3414      	adds	r4, #20
20029412:	e7f0      	b.n	200293f6 <mbedtls_oid_get_pk_alg+0xa>
20029414:	7c23      	ldrb	r3, [r4, #16]
20029416:	7033      	strb	r3, [r6, #0]
20029418:	e7f1      	b.n	200293fe <mbedtls_oid_get_pk_alg+0x12>
2002941a:	bf00      	nop
2002941c:	2002c384 	.word	0x2002c384

20029420 <mbedtls_oid_get_md_alg>:
20029420:	b570      	push	{r4, r5, r6, lr}
20029422:	460e      	mov	r6, r1
20029424:	4605      	mov	r5, r0
20029426:	b110      	cbz	r0, 2002942e <mbedtls_oid_get_md_alg+0xe>
20029428:	4c09      	ldr	r4, [pc, #36]	@ (20029450 <mbedtls_oid_get_md_alg+0x30>)
2002942a:	6820      	ldr	r0, [r4, #0]
2002942c:	b910      	cbnz	r0, 20029434 <mbedtls_oid_get_md_alg+0x14>
2002942e:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
20029432:	bd70      	pop	{r4, r5, r6, pc}
20029434:	686b      	ldr	r3, [r5, #4]
20029436:	6862      	ldr	r2, [r4, #4]
20029438:	429a      	cmp	r2, r3
2002943a:	d103      	bne.n	20029444 <mbedtls_oid_get_md_alg+0x24>
2002943c:	68a9      	ldr	r1, [r5, #8]
2002943e:	f001 fa99 	bl	2002a974 <memcmp>
20029442:	b108      	cbz	r0, 20029448 <mbedtls_oid_get_md_alg+0x28>
20029444:	3414      	adds	r4, #20
20029446:	e7f0      	b.n	2002942a <mbedtls_oid_get_md_alg+0xa>
20029448:	7c23      	ldrb	r3, [r4, #16]
2002944a:	7033      	strb	r3, [r6, #0]
2002944c:	e7f1      	b.n	20029432 <mbedtls_oid_get_md_alg+0x12>
2002944e:	bf00      	nop
20029450:	2002c320 	.word	0x2002c320

20029454 <mbedtls_oid_get_oid_by_md>:
20029454:	b530      	push	{r4, r5, lr}
20029456:	4b08      	ldr	r3, [pc, #32]	@ (20029478 <mbedtls_oid_get_oid_by_md+0x24>)
20029458:	681c      	ldr	r4, [r3, #0]
2002945a:	b914      	cbnz	r4, 20029462 <mbedtls_oid_get_oid_by_md+0xe>
2002945c:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
20029460:	e006      	b.n	20029470 <mbedtls_oid_get_oid_by_md+0x1c>
20029462:	7c1d      	ldrb	r5, [r3, #16]
20029464:	4285      	cmp	r5, r0
20029466:	d104      	bne.n	20029472 <mbedtls_oid_get_oid_by_md+0x1e>
20029468:	2000      	movs	r0, #0
2002946a:	600c      	str	r4, [r1, #0]
2002946c:	685b      	ldr	r3, [r3, #4]
2002946e:	6013      	str	r3, [r2, #0]
20029470:	bd30      	pop	{r4, r5, pc}
20029472:	3314      	adds	r3, #20
20029474:	e7f0      	b.n	20029458 <mbedtls_oid_get_oid_by_md+0x4>
20029476:	bf00      	nop
20029478:	2002c320 	.word	0x2002c320

2002947c <mbedtls_pk_init>:
2002947c:	b110      	cbz	r0, 20029484 <mbedtls_pk_init+0x8>
2002947e:	2300      	movs	r3, #0
20029480:	e9c0 3300 	strd	r3, r3, [r0]
20029484:	4770      	bx	lr

20029486 <mbedtls_pk_free>:
20029486:	b510      	push	{r4, lr}
20029488:	4604      	mov	r4, r0
2002948a:	b160      	cbz	r0, 200294a6 <mbedtls_pk_free+0x20>
2002948c:	6803      	ldr	r3, [r0, #0]
2002948e:	b153      	cbz	r3, 200294a6 <mbedtls_pk_free+0x20>
20029490:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
20029492:	6840      	ldr	r0, [r0, #4]
20029494:	4798      	blx	r3
20029496:	2100      	movs	r1, #0
20029498:	f104 0308 	add.w	r3, r4, #8
2002949c:	4622      	mov	r2, r4
2002949e:	3401      	adds	r4, #1
200294a0:	429c      	cmp	r4, r3
200294a2:	7011      	strb	r1, [r2, #0]
200294a4:	d1fa      	bne.n	2002949c <mbedtls_pk_free+0x16>
200294a6:	bd10      	pop	{r4, pc}

200294a8 <mbedtls_pk_info_from_type>:
200294a8:	2801      	cmp	r0, #1
200294aa:	4802      	ldr	r0, [pc, #8]	@ (200294b4 <mbedtls_pk_info_from_type+0xc>)
200294ac:	bf18      	it	ne
200294ae:	2000      	movne	r0, #0
200294b0:	4770      	bx	lr
200294b2:	bf00      	nop
200294b4:	2002c3d4 	.word	0x2002c3d4

200294b8 <mbedtls_pk_setup>:
200294b8:	b570      	push	{r4, r5, r6, lr}
200294ba:	460e      	mov	r6, r1
200294bc:	4605      	mov	r5, r0
200294be:	b148      	cbz	r0, 200294d4 <mbedtls_pk_setup+0x1c>
200294c0:	b141      	cbz	r1, 200294d4 <mbedtls_pk_setup+0x1c>
200294c2:	6804      	ldr	r4, [r0, #0]
200294c4:	b934      	cbnz	r4, 200294d4 <mbedtls_pk_setup+0x1c>
200294c6:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
200294c8:	4798      	blx	r3
200294ca:	6068      	str	r0, [r5, #4]
200294cc:	b120      	cbz	r0, 200294d8 <mbedtls_pk_setup+0x20>
200294ce:	4620      	mov	r0, r4
200294d0:	602e      	str	r6, [r5, #0]
200294d2:	bd70      	pop	{r4, r5, r6, pc}
200294d4:	4801      	ldr	r0, [pc, #4]	@ (200294dc <mbedtls_pk_setup+0x24>)
200294d6:	e7fc      	b.n	200294d2 <mbedtls_pk_setup+0x1a>
200294d8:	4801      	ldr	r0, [pc, #4]	@ (200294e0 <mbedtls_pk_setup+0x28>)
200294da:	e7fa      	b.n	200294d2 <mbedtls_pk_setup+0x1a>
200294dc:	ffffc180 	.word	0xffffc180
200294e0:	ffffc080 	.word	0xffffc080

200294e4 <mbedtls_pk_verify>:
200294e4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200294e8:	460d      	mov	r5, r1
200294ea:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
200294ee:	4616      	mov	r6, r2
200294f0:	4604      	mov	r4, r0
200294f2:	b910      	cbnz	r0, 200294fa <mbedtls_pk_verify+0x16>
200294f4:	480e      	ldr	r0, [pc, #56]	@ (20029530 <mbedtls_pk_verify+0x4c>)
200294f6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200294fa:	6802      	ldr	r2, [r0, #0]
200294fc:	2a00      	cmp	r2, #0
200294fe:	d0f9      	beq.n	200294f4 <mbedtls_pk_verify+0x10>
20029500:	b93b      	cbnz	r3, 20029512 <mbedtls_pk_verify+0x2e>
20029502:	4608      	mov	r0, r1
20029504:	f7fc fd42 	bl	20025f8c <mbedtls_md_info_from_type>
20029508:	2800      	cmp	r0, #0
2002950a:	d0f3      	beq.n	200294f4 <mbedtls_pk_verify+0x10>
2002950c:	f7fc fd4a 	bl	20025fa4 <mbedtls_md_get_size>
20029510:	4603      	mov	r3, r0
20029512:	6822      	ldr	r2, [r4, #0]
20029514:	6917      	ldr	r7, [r2, #16]
20029516:	b147      	cbz	r7, 2002952a <mbedtls_pk_verify+0x46>
20029518:	e9cd 8908 	strd	r8, r9, [sp, #32]
2002951c:	4632      	mov	r2, r6
2002951e:	4629      	mov	r1, r5
20029520:	46bc      	mov	ip, r7
20029522:	6860      	ldr	r0, [r4, #4]
20029524:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20029528:	4760      	bx	ip
2002952a:	4802      	ldr	r0, [pc, #8]	@ (20029534 <mbedtls_pk_verify+0x50>)
2002952c:	e7e3      	b.n	200294f6 <mbedtls_pk_verify+0x12>
2002952e:	bf00      	nop
20029530:	ffffc180 	.word	0xffffc180
20029534:	ffffc100 	.word	0xffffc100

20029538 <pk_get_pk_alg>:
20029538:	b530      	push	{r4, r5, lr}
2002953a:	4615      	mov	r5, r2
2002953c:	2200      	movs	r2, #0
2002953e:	b085      	sub	sp, #20
20029540:	e9c3 2200 	strd	r2, r2, [r3]
20029544:	609a      	str	r2, [r3, #8]
20029546:	aa01      	add	r2, sp, #4
20029548:	461c      	mov	r4, r3
2002954a:	f7fe fa98 	bl	20027a7e <mbedtls_asn1_get_alg>
2002954e:	b118      	cbz	r0, 20029558 <pk_get_pk_alg+0x20>
20029550:	f5a0 506a 	sub.w	r0, r0, #14976	@ 0x3a80
20029554:	b005      	add	sp, #20
20029556:	bd30      	pop	{r4, r5, pc}
20029558:	4629      	mov	r1, r5
2002955a:	a801      	add	r0, sp, #4
2002955c:	f7ff ff46 	bl	200293ec <mbedtls_oid_get_pk_alg>
20029560:	b960      	cbnz	r0, 2002957c <pk_get_pk_alg+0x44>
20029562:	782b      	ldrb	r3, [r5, #0]
20029564:	2b01      	cmp	r3, #1
20029566:	d1f5      	bne.n	20029554 <pk_get_pk_alg+0x1c>
20029568:	6823      	ldr	r3, [r4, #0]
2002956a:	2b05      	cmp	r3, #5
2002956c:	d000      	beq.n	20029570 <pk_get_pk_alg+0x38>
2002956e:	b93b      	cbnz	r3, 20029580 <pk_get_pk_alg+0x48>
20029570:	6862      	ldr	r2, [r4, #4]
20029572:	4b04      	ldr	r3, [pc, #16]	@ (20029584 <pk_get_pk_alg+0x4c>)
20029574:	2a00      	cmp	r2, #0
20029576:	bf18      	it	ne
20029578:	4618      	movne	r0, r3
2002957a:	e7eb      	b.n	20029554 <pk_get_pk_alg+0x1c>
2002957c:	4802      	ldr	r0, [pc, #8]	@ (20029588 <pk_get_pk_alg+0x50>)
2002957e:	e7e9      	b.n	20029554 <pk_get_pk_alg+0x1c>
20029580:	4800      	ldr	r0, [pc, #0]	@ (20029584 <pk_get_pk_alg+0x4c>)
20029582:	e7e7      	b.n	20029554 <pk_get_pk_alg+0x1c>
20029584:	ffffc580 	.word	0xffffc580
20029588:	ffffc380 	.word	0xffffc380

2002958c <mbedtls_pk_parse_subpubkey>:
2002958c:	2300      	movs	r3, #0
2002958e:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
20029592:	b087      	sub	sp, #28
20029594:	4690      	mov	r8, r2
20029596:	f88d 3003 	strb.w	r3, [sp, #3]
2002959a:	aa01      	add	r2, sp, #4
2002959c:	2330      	movs	r3, #48	@ 0x30
2002959e:	4606      	mov	r6, r0
200295a0:	f7fe fa32 	bl	20027a08 <mbedtls_asn1_get_tag>
200295a4:	b128      	cbz	r0, 200295b2 <mbedtls_pk_parse_subpubkey+0x26>
200295a6:	f5a0 5474 	sub.w	r4, r0, #15616	@ 0x3d00
200295aa:	4620      	mov	r0, r4
200295ac:	b007      	add	sp, #28
200295ae:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
200295b2:	9b01      	ldr	r3, [sp, #4]
200295b4:	6837      	ldr	r7, [r6, #0]
200295b6:	4630      	mov	r0, r6
200295b8:	441f      	add	r7, r3
200295ba:	4639      	mov	r1, r7
200295bc:	ab03      	add	r3, sp, #12
200295be:	f10d 0203 	add.w	r2, sp, #3
200295c2:	f7ff ffb9 	bl	20029538 <pk_get_pk_alg>
200295c6:	4604      	mov	r4, r0
200295c8:	2800      	cmp	r0, #0
200295ca:	d1ee      	bne.n	200295aa <mbedtls_pk_parse_subpubkey+0x1e>
200295cc:	4639      	mov	r1, r7
200295ce:	4630      	mov	r0, r6
200295d0:	aa01      	add	r2, sp, #4
200295d2:	f7fe fa40 	bl	20027a56 <mbedtls_asn1_get_bitstring_null>
200295d6:	b110      	cbz	r0, 200295de <mbedtls_pk_parse_subpubkey+0x52>
200295d8:	f5a0 546c 	sub.w	r4, r0, #15104	@ 0x3b00
200295dc:	e7e5      	b.n	200295aa <mbedtls_pk_parse_subpubkey+0x1e>
200295de:	6833      	ldr	r3, [r6, #0]
200295e0:	9a01      	ldr	r2, [sp, #4]
200295e2:	4413      	add	r3, r2
200295e4:	429f      	cmp	r7, r3
200295e6:	d14b      	bne.n	20029680 <mbedtls_pk_parse_subpubkey+0xf4>
200295e8:	f89d 0003 	ldrb.w	r0, [sp, #3]
200295ec:	f7ff ff5c 	bl	200294a8 <mbedtls_pk_info_from_type>
200295f0:	4601      	mov	r1, r0
200295f2:	2800      	cmp	r0, #0
200295f4:	d046      	beq.n	20029684 <mbedtls_pk_parse_subpubkey+0xf8>
200295f6:	4640      	mov	r0, r8
200295f8:	f7ff ff5e 	bl	200294b8 <mbedtls_pk_setup>
200295fc:	4604      	mov	r4, r0
200295fe:	2800      	cmp	r0, #0
20029600:	d1d3      	bne.n	200295aa <mbedtls_pk_parse_subpubkey+0x1e>
20029602:	f89d 3003 	ldrb.w	r3, [sp, #3]
20029606:	2b01      	cmp	r3, #1
20029608:	d138      	bne.n	2002967c <mbedtls_pk_parse_subpubkey+0xf0>
2002960a:	2330      	movs	r3, #48	@ 0x30
2002960c:	4639      	mov	r1, r7
2002960e:	4630      	mov	r0, r6
20029610:	aa02      	add	r2, sp, #8
20029612:	f8d8 5004 	ldr.w	r5, [r8, #4]
20029616:	f7fe f9f7 	bl	20027a08 <mbedtls_asn1_get_tag>
2002961a:	b138      	cbz	r0, 2002962c <mbedtls_pk_parse_subpubkey+0xa0>
2002961c:	f5a0 556c 	sub.w	r5, r0, #15104	@ 0x3b00
20029620:	bb3d      	cbnz	r5, 20029672 <mbedtls_pk_parse_subpubkey+0xe6>
20029622:	6833      	ldr	r3, [r6, #0]
20029624:	42bb      	cmp	r3, r7
20029626:	d0c0      	beq.n	200295aa <mbedtls_pk_parse_subpubkey+0x1e>
20029628:	4d17      	ldr	r5, [pc, #92]	@ (20029688 <mbedtls_pk_parse_subpubkey+0xfc>)
2002962a:	e022      	b.n	20029672 <mbedtls_pk_parse_subpubkey+0xe6>
2002962c:	6833      	ldr	r3, [r6, #0]
2002962e:	9a02      	ldr	r2, [sp, #8]
20029630:	4413      	add	r3, r2
20029632:	429f      	cmp	r7, r3
20029634:	d1f8      	bne.n	20029628 <mbedtls_pk_parse_subpubkey+0x9c>
20029636:	f105 0a08 	add.w	sl, r5, #8
2002963a:	4652      	mov	r2, sl
2002963c:	4639      	mov	r1, r7
2002963e:	4630      	mov	r0, r6
20029640:	f7fe f9f6 	bl	20027a30 <mbedtls_asn1_get_mpi>
20029644:	2800      	cmp	r0, #0
20029646:	d1e9      	bne.n	2002961c <mbedtls_pk_parse_subpubkey+0x90>
20029648:	4639      	mov	r1, r7
2002964a:	4630      	mov	r0, r6
2002964c:	f105 0214 	add.w	r2, r5, #20
20029650:	f7fe f9ee 	bl	20027a30 <mbedtls_asn1_get_mpi>
20029654:	2800      	cmp	r0, #0
20029656:	d1e1      	bne.n	2002961c <mbedtls_pk_parse_subpubkey+0x90>
20029658:	6833      	ldr	r3, [r6, #0]
2002965a:	429f      	cmp	r7, r3
2002965c:	d1e4      	bne.n	20029628 <mbedtls_pk_parse_subpubkey+0x9c>
2002965e:	4628      	mov	r0, r5
20029660:	f000 f8c2 	bl	200297e8 <mbedtls_rsa_check_pubkey>
20029664:	b920      	cbnz	r0, 20029670 <mbedtls_pk_parse_subpubkey+0xe4>
20029666:	4650      	mov	r0, sl
20029668:	f7fe fcbe 	bl	20027fe8 <mbedtls_mpi_size>
2002966c:	6068      	str	r0, [r5, #4]
2002966e:	e7d8      	b.n	20029622 <mbedtls_pk_parse_subpubkey+0x96>
20029670:	4d06      	ldr	r5, [pc, #24]	@ (2002968c <mbedtls_pk_parse_subpubkey+0x100>)
20029672:	4640      	mov	r0, r8
20029674:	f7ff ff07 	bl	20029486 <mbedtls_pk_free>
20029678:	462c      	mov	r4, r5
2002967a:	e796      	b.n	200295aa <mbedtls_pk_parse_subpubkey+0x1e>
2002967c:	4d04      	ldr	r5, [pc, #16]	@ (20029690 <mbedtls_pk_parse_subpubkey+0x104>)
2002967e:	e7f8      	b.n	20029672 <mbedtls_pk_parse_subpubkey+0xe6>
20029680:	4c01      	ldr	r4, [pc, #4]	@ (20029688 <mbedtls_pk_parse_subpubkey+0xfc>)
20029682:	e792      	b.n	200295aa <mbedtls_pk_parse_subpubkey+0x1e>
20029684:	4c02      	ldr	r4, [pc, #8]	@ (20029690 <mbedtls_pk_parse_subpubkey+0x104>)
20029686:	e790      	b.n	200295aa <mbedtls_pk_parse_subpubkey+0x1e>
20029688:	ffffc49a 	.word	0xffffc49a
2002968c:	ffffc500 	.word	0xffffc500
20029690:	ffffc380 	.word	0xffffc380

20029694 <mbedtls_pk_parse_public_key>:
20029694:	4613      	mov	r3, r2
20029696:	b507      	push	{r0, r1, r2, lr}
20029698:	4602      	mov	r2, r0
2002969a:	9101      	str	r1, [sp, #4]
2002969c:	a801      	add	r0, sp, #4
2002969e:	4419      	add	r1, r3
200296a0:	f7ff ff74 	bl	2002958c <mbedtls_pk_parse_subpubkey>
200296a4:	b003      	add	sp, #12
200296a6:	f85d fb04 	ldr.w	pc, [sp], #4

200296aa <rsa_can_do>:
200296aa:	2801      	cmp	r0, #1
200296ac:	d002      	beq.n	200296b4 <rsa_can_do+0xa>
200296ae:	1f83      	subs	r3, r0, #6
200296b0:	4258      	negs	r0, r3
200296b2:	4158      	adcs	r0, r3
200296b4:	4770      	bx	lr

200296b6 <rsa_get_bitlen>:
200296b6:	6840      	ldr	r0, [r0, #4]
200296b8:	00c0      	lsls	r0, r0, #3
200296ba:	4770      	bx	lr

200296bc <rsa_debug>:
200296bc:	2301      	movs	r3, #1
200296be:	4a06      	ldr	r2, [pc, #24]	@ (200296d8 <rsa_debug+0x1c>)
200296c0:	700b      	strb	r3, [r1, #0]
200296c2:	730b      	strb	r3, [r1, #12]
200296c4:	4b05      	ldr	r3, [pc, #20]	@ (200296dc <rsa_debug+0x20>)
200296c6:	604a      	str	r2, [r1, #4]
200296c8:	f100 0208 	add.w	r2, r0, #8
200296cc:	3014      	adds	r0, #20
200296ce:	608a      	str	r2, [r1, #8]
200296d0:	610b      	str	r3, [r1, #16]
200296d2:	6148      	str	r0, [r1, #20]
200296d4:	4770      	bx	lr
200296d6:	bf00      	nop
200296d8:	2002b1b0 	.word	0x2002b1b0
200296dc:	2002b1b6 	.word	0x2002b1b6

200296e0 <rsa_free_wrap>:
200296e0:	b510      	push	{r4, lr}
200296e2:	4604      	mov	r4, r0
200296e4:	f000 fe7c 	bl	2002a3e0 <mbedtls_rsa_free>
200296e8:	4620      	mov	r0, r4
200296ea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200296ee:	f001 b88b 	b.w	2002a808 <free>

200296f2 <rsa_alloc_wrap>:
200296f2:	b510      	push	{r4, lr}
200296f4:	21ac      	movs	r1, #172	@ 0xac
200296f6:	2001      	movs	r0, #1
200296f8:	f001 f86a 	bl	2002a7d0 <calloc>
200296fc:	4604      	mov	r4, r0
200296fe:	b118      	cbz	r0, 20029708 <rsa_alloc_wrap+0x16>
20029700:	2200      	movs	r2, #0
20029702:	4611      	mov	r1, r2
20029704:	f000 f862 	bl	200297cc <mbedtls_rsa_init>
20029708:	4620      	mov	r0, r4
2002970a:	bd10      	pop	{r4, pc}

2002970c <rsa_check_pair_wrap>:
2002970c:	f000 b99c 	b.w	20029a48 <mbedtls_rsa_check_pub_priv>

20029710 <rsa_encrypt_wrap>:
20029710:	b4f0      	push	{r4, r5, r6, r7}
20029712:	9f04      	ldr	r7, [sp, #16]
20029714:	6846      	ldr	r6, [r0, #4]
20029716:	460d      	mov	r5, r1
20029718:	603e      	str	r6, [r7, #0]
2002971a:	9f05      	ldr	r7, [sp, #20]
2002971c:	4614      	mov	r4, r2
2002971e:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
20029722:	42be      	cmp	r6, r7
20029724:	d806      	bhi.n	20029734 <rsa_encrypt_wrap+0x24>
20029726:	e9cd 5305 	strd	r5, r3, [sp, #20]
2002972a:	9404      	str	r4, [sp, #16]
2002972c:	2300      	movs	r3, #0
2002972e:	bcf0      	pop	{r4, r5, r6, r7}
20029730:	f000 bbe2 	b.w	20029ef8 <mbedtls_rsa_pkcs1_encrypt>
20029734:	4801      	ldr	r0, [pc, #4]	@ (2002973c <rsa_encrypt_wrap+0x2c>)
20029736:	bcf0      	pop	{r4, r5, r6, r7}
20029738:	4770      	bx	lr
2002973a:	bf00      	nop
2002973c:	ffffbc00 	.word	0xffffbc00

20029740 <rsa_decrypt_wrap>:
20029740:	b4f0      	push	{r4, r5, r6, r7}
20029742:	4616      	mov	r6, r2
20029744:	6847      	ldr	r7, [r0, #4]
20029746:	460c      	mov	r4, r1
20029748:	e9dd 5105 	ldrd	r5, r1, [sp, #20]
2002974c:	42b7      	cmp	r7, r6
2002974e:	9a07      	ldr	r2, [sp, #28]
20029750:	d106      	bne.n	20029760 <rsa_decrypt_wrap+0x20>
20029752:	e9cd 3506 	strd	r3, r5, [sp, #24]
20029756:	9405      	str	r4, [sp, #20]
20029758:	2301      	movs	r3, #1
2002975a:	bcf0      	pop	{r4, r5, r6, r7}
2002975c:	f000 bc6e 	b.w	2002a03c <mbedtls_rsa_pkcs1_decrypt>
20029760:	4801      	ldr	r0, [pc, #4]	@ (20029768 <rsa_decrypt_wrap+0x28>)
20029762:	bcf0      	pop	{r4, r5, r6, r7}
20029764:	4770      	bx	lr
20029766:	bf00      	nop
20029768:	ffffbf80 	.word	0xffffbf80

2002976c <rsa_sign_wrap>:
2002976c:	b4f0      	push	{r4, r5, r6, r7}
2002976e:	460c      	mov	r4, r1
20029770:	4615      	mov	r5, r2
20029772:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
20029776:	6847      	ldr	r7, [r0, #4]
20029778:	9e05      	ldr	r6, [sp, #20]
2002977a:	6037      	str	r7, [r6, #0]
2002977c:	9e04      	ldr	r6, [sp, #16]
2002977e:	e9cd 4304 	strd	r4, r3, [sp, #16]
20029782:	e9cd 5606 	strd	r5, r6, [sp, #24]
20029786:	bcf0      	pop	{r4, r5, r6, r7}
20029788:	2301      	movs	r3, #1
2002978a:	f000 bd31 	b.w	2002a1f0 <mbedtls_rsa_pkcs1_sign>
	...

20029790 <rsa_verify_wrap>:
20029790:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20029792:	9d09      	ldr	r5, [sp, #36]	@ 0x24
20029794:	6846      	ldr	r6, [r0, #4]
20029796:	4604      	mov	r4, r0
20029798:	42ae      	cmp	r6, r5
2002979a:	d811      	bhi.n	200297c0 <rsa_verify_wrap+0x30>
2002979c:	e9cd 1300 	strd	r1, r3, [sp]
200297a0:	2300      	movs	r3, #0
200297a2:	9e08      	ldr	r6, [sp, #32]
200297a4:	4619      	mov	r1, r3
200297a6:	e9cd 2602 	strd	r2, r6, [sp, #8]
200297aa:	461a      	mov	r2, r3
200297ac:	f000 fe08 	bl	2002a3c0 <mbedtls_rsa_pkcs1_verify>
200297b0:	b920      	cbnz	r0, 200297bc <rsa_verify_wrap+0x2c>
200297b2:	6862      	ldr	r2, [r4, #4]
200297b4:	4b03      	ldr	r3, [pc, #12]	@ (200297c4 <rsa_verify_wrap+0x34>)
200297b6:	42aa      	cmp	r2, r5
200297b8:	bf38      	it	cc
200297ba:	4618      	movcc	r0, r3
200297bc:	b004      	add	sp, #16
200297be:	bd70      	pop	{r4, r5, r6, pc}
200297c0:	4801      	ldr	r0, [pc, #4]	@ (200297c8 <rsa_verify_wrap+0x38>)
200297c2:	e7fb      	b.n	200297bc <rsa_verify_wrap+0x2c>
200297c4:	ffffc700 	.word	0xffffc700
200297c8:	ffffbc80 	.word	0xffffbc80

200297cc <mbedtls_rsa_init>:
200297cc:	b570      	push	{r4, r5, r6, lr}
200297ce:	4604      	mov	r4, r0
200297d0:	460e      	mov	r6, r1
200297d2:	4615      	mov	r5, r2
200297d4:	2100      	movs	r1, #0
200297d6:	22ac      	movs	r2, #172	@ 0xac
200297d8:	f001 f8dc 	bl	2002a994 <memset>
200297dc:	e9c4 6529 	strd	r6, r5, [r4, #164]	@ 0xa4
200297e0:	bd70      	pop	{r4, r5, r6, pc}

200297e2 <mbedtls_rsa_set_padding>:
200297e2:	e9c0 1229 	strd	r1, r2, [r0, #164]	@ 0xa4
200297e6:	4770      	bx	lr

200297e8 <mbedtls_rsa_check_pubkey>:
200297e8:	b538      	push	{r3, r4, r5, lr}
200297ea:	6902      	ldr	r2, [r0, #16]
200297ec:	4604      	mov	r4, r0
200297ee:	b10a      	cbz	r2, 200297f4 <mbedtls_rsa_check_pubkey+0xc>
200297f0:	69c3      	ldr	r3, [r0, #28]
200297f2:	b90b      	cbnz	r3, 200297f8 <mbedtls_rsa_check_pubkey+0x10>
200297f4:	4811      	ldr	r0, [pc, #68]	@ (2002983c <mbedtls_rsa_check_pubkey+0x54>)
200297f6:	bd38      	pop	{r3, r4, r5, pc}
200297f8:	6812      	ldr	r2, [r2, #0]
200297fa:	07d2      	lsls	r2, r2, #31
200297fc:	d5fa      	bpl.n	200297f4 <mbedtls_rsa_check_pubkey+0xc>
200297fe:	681b      	ldr	r3, [r3, #0]
20029800:	07db      	lsls	r3, r3, #31
20029802:	d5f7      	bpl.n	200297f4 <mbedtls_rsa_check_pubkey+0xc>
20029804:	f100 0508 	add.w	r5, r0, #8
20029808:	4628      	mov	r0, r5
2002980a:	f7fe fbd0 	bl	20027fae <mbedtls_mpi_bitlen>
2002980e:	287f      	cmp	r0, #127	@ 0x7f
20029810:	d9f0      	bls.n	200297f4 <mbedtls_rsa_check_pubkey+0xc>
20029812:	4628      	mov	r0, r5
20029814:	f7fe fbcb 	bl	20027fae <mbedtls_mpi_bitlen>
20029818:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
2002981c:	d8ea      	bhi.n	200297f4 <mbedtls_rsa_check_pubkey+0xc>
2002981e:	3414      	adds	r4, #20
20029820:	4620      	mov	r0, r4
20029822:	f7fe fbc4 	bl	20027fae <mbedtls_mpi_bitlen>
20029826:	2801      	cmp	r0, #1
20029828:	d9e4      	bls.n	200297f4 <mbedtls_rsa_check_pubkey+0xc>
2002982a:	4629      	mov	r1, r5
2002982c:	4620      	mov	r0, r4
2002982e:	f7fe fd71 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029832:	2800      	cmp	r0, #0
20029834:	dade      	bge.n	200297f4 <mbedtls_rsa_check_pubkey+0xc>
20029836:	2000      	movs	r0, #0
20029838:	e7dd      	b.n	200297f6 <mbedtls_rsa_check_pubkey+0xe>
2002983a:	bf00      	nop
2002983c:	ffffbe00 	.word	0xffffbe00

20029840 <mbedtls_rsa_check_privkey>:
20029840:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20029844:	b0a9      	sub	sp, #164	@ 0xa4
20029846:	4605      	mov	r5, r0
20029848:	f7ff ffce 	bl	200297e8 <mbedtls_rsa_check_pubkey>
2002984c:	b120      	cbz	r0, 20029858 <mbedtls_rsa_check_privkey+0x18>
2002984e:	4c7d      	ldr	r4, [pc, #500]	@ (20029a44 <mbedtls_rsa_check_privkey+0x204>)
20029850:	4620      	mov	r0, r4
20029852:	b029      	add	sp, #164	@ 0xa4
20029854:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20029858:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
2002985a:	2b00      	cmp	r3, #0
2002985c:	d0f7      	beq.n	2002984e <mbedtls_rsa_check_privkey+0xe>
2002985e:	6c2b      	ldr	r3, [r5, #64]	@ 0x40
20029860:	2b00      	cmp	r3, #0
20029862:	d0f4      	beq.n	2002984e <mbedtls_rsa_check_privkey+0xe>
20029864:	6aab      	ldr	r3, [r5, #40]	@ 0x28
20029866:	2b00      	cmp	r3, #0
20029868:	d0f1      	beq.n	2002984e <mbedtls_rsa_check_privkey+0xe>
2002986a:	a801      	add	r0, sp, #4
2002986c:	f7fe fafa 	bl	20027e64 <mbedtls_mpi_init>
20029870:	a804      	add	r0, sp, #16
20029872:	f7fe faf7 	bl	20027e64 <mbedtls_mpi_init>
20029876:	a807      	add	r0, sp, #28
20029878:	f7fe faf4 	bl	20027e64 <mbedtls_mpi_init>
2002987c:	a80a      	add	r0, sp, #40	@ 0x28
2002987e:	f7fe faf1 	bl	20027e64 <mbedtls_mpi_init>
20029882:	a80d      	add	r0, sp, #52	@ 0x34
20029884:	f7fe faee 	bl	20027e64 <mbedtls_mpi_init>
20029888:	a810      	add	r0, sp, #64	@ 0x40
2002988a:	f7fe faeb 	bl	20027e64 <mbedtls_mpi_init>
2002988e:	a813      	add	r0, sp, #76	@ 0x4c
20029890:	f7fe fae8 	bl	20027e64 <mbedtls_mpi_init>
20029894:	a816      	add	r0, sp, #88	@ 0x58
20029896:	f7fe fae5 	bl	20027e64 <mbedtls_mpi_init>
2002989a:	a819      	add	r0, sp, #100	@ 0x64
2002989c:	f7fe fae2 	bl	20027e64 <mbedtls_mpi_init>
200298a0:	a81c      	add	r0, sp, #112	@ 0x70
200298a2:	f7fe fadf 	bl	20027e64 <mbedtls_mpi_init>
200298a6:	a81f      	add	r0, sp, #124	@ 0x7c
200298a8:	f7fe fadc 	bl	20027e64 <mbedtls_mpi_init>
200298ac:	a822      	add	r0, sp, #136	@ 0x88
200298ae:	f7fe fad9 	bl	20027e64 <mbedtls_mpi_init>
200298b2:	f105 072c 	add.w	r7, r5, #44	@ 0x2c
200298b6:	a825      	add	r0, sp, #148	@ 0x94
200298b8:	f105 0638 	add.w	r6, r5, #56	@ 0x38
200298bc:	f7fe fad2 	bl	20027e64 <mbedtls_mpi_init>
200298c0:	4632      	mov	r2, r6
200298c2:	4639      	mov	r1, r7
200298c4:	a801      	add	r0, sp, #4
200298c6:	f7fe fe75 	bl	200285b4 <mbedtls_mpi_mul_mpi>
200298ca:	4604      	mov	r4, r0
200298cc:	2800      	cmp	r0, #0
200298ce:	d15e      	bne.n	2002998e <mbedtls_rsa_check_privkey+0x14e>
200298d0:	f105 0820 	add.w	r8, r5, #32
200298d4:	f105 0914 	add.w	r9, r5, #20
200298d8:	464a      	mov	r2, r9
200298da:	4641      	mov	r1, r8
200298dc:	a804      	add	r0, sp, #16
200298de:	f7fe fe69 	bl	200285b4 <mbedtls_mpi_mul_mpi>
200298e2:	4604      	mov	r4, r0
200298e4:	2800      	cmp	r0, #0
200298e6:	d152      	bne.n	2002998e <mbedtls_rsa_check_privkey+0x14e>
200298e8:	2201      	movs	r2, #1
200298ea:	4639      	mov	r1, r7
200298ec:	a807      	add	r0, sp, #28
200298ee:	f7fe fe4b 	bl	20028588 <mbedtls_mpi_sub_int>
200298f2:	4604      	mov	r4, r0
200298f4:	2800      	cmp	r0, #0
200298f6:	d14a      	bne.n	2002998e <mbedtls_rsa_check_privkey+0x14e>
200298f8:	2201      	movs	r2, #1
200298fa:	4631      	mov	r1, r6
200298fc:	a80a      	add	r0, sp, #40	@ 0x28
200298fe:	f7fe fe43 	bl	20028588 <mbedtls_mpi_sub_int>
20029902:	4604      	mov	r4, r0
20029904:	2800      	cmp	r0, #0
20029906:	d142      	bne.n	2002998e <mbedtls_rsa_check_privkey+0x14e>
20029908:	aa0a      	add	r2, sp, #40	@ 0x28
2002990a:	a907      	add	r1, sp, #28
2002990c:	a80d      	add	r0, sp, #52	@ 0x34
2002990e:	f7fe fe51 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029912:	4604      	mov	r4, r0
20029914:	2800      	cmp	r0, #0
20029916:	d13a      	bne.n	2002998e <mbedtls_rsa_check_privkey+0x14e>
20029918:	4649      	mov	r1, r9
2002991a:	aa0d      	add	r2, sp, #52	@ 0x34
2002991c:	a813      	add	r0, sp, #76	@ 0x4c
2002991e:	f7ff fb04 	bl	20028f2a <mbedtls_mpi_gcd>
20029922:	4604      	mov	r4, r0
20029924:	2800      	cmp	r0, #0
20029926:	d132      	bne.n	2002998e <mbedtls_rsa_check_privkey+0x14e>
20029928:	aa0a      	add	r2, sp, #40	@ 0x28
2002992a:	a907      	add	r1, sp, #28
2002992c:	a816      	add	r0, sp, #88	@ 0x58
2002992e:	f7ff fafc 	bl	20028f2a <mbedtls_mpi_gcd>
20029932:	4604      	mov	r4, r0
20029934:	bb58      	cbnz	r0, 2002998e <mbedtls_rsa_check_privkey+0x14e>
20029936:	ab16      	add	r3, sp, #88	@ 0x58
20029938:	aa0d      	add	r2, sp, #52	@ 0x34
2002993a:	a91c      	add	r1, sp, #112	@ 0x70
2002993c:	a819      	add	r0, sp, #100	@ 0x64
2002993e:	f7fe feaa 	bl	20028696 <mbedtls_mpi_div_mpi>
20029942:	4604      	mov	r4, r0
20029944:	bb18      	cbnz	r0, 2002998e <mbedtls_rsa_check_privkey+0x14e>
20029946:	aa19      	add	r2, sp, #100	@ 0x64
20029948:	a904      	add	r1, sp, #16
2002994a:	a810      	add	r0, sp, #64	@ 0x40
2002994c:	f7ff f8a7 	bl	20028a9e <mbedtls_mpi_mod_mpi>
20029950:	4604      	mov	r4, r0
20029952:	b9e0      	cbnz	r0, 2002998e <mbedtls_rsa_check_privkey+0x14e>
20029954:	4641      	mov	r1, r8
20029956:	aa07      	add	r2, sp, #28
20029958:	a81f      	add	r0, sp, #124	@ 0x7c
2002995a:	f7ff f8a0 	bl	20028a9e <mbedtls_mpi_mod_mpi>
2002995e:	4604      	mov	r4, r0
20029960:	b9a8      	cbnz	r0, 2002998e <mbedtls_rsa_check_privkey+0x14e>
20029962:	4641      	mov	r1, r8
20029964:	aa0a      	add	r2, sp, #40	@ 0x28
20029966:	a822      	add	r0, sp, #136	@ 0x88
20029968:	f7ff f899 	bl	20028a9e <mbedtls_mpi_mod_mpi>
2002996c:	4604      	mov	r4, r0
2002996e:	b970      	cbnz	r0, 2002998e <mbedtls_rsa_check_privkey+0x14e>
20029970:	463a      	mov	r2, r7
20029972:	4631      	mov	r1, r6
20029974:	a825      	add	r0, sp, #148	@ 0x94
20029976:	f7ff fb73 	bl	20029060 <mbedtls_mpi_inv_mod>
2002997a:	4604      	mov	r4, r0
2002997c:	b938      	cbnz	r0, 2002998e <mbedtls_rsa_check_privkey+0x14e>
2002997e:	f105 0108 	add.w	r1, r5, #8
20029982:	a801      	add	r0, sp, #4
20029984:	f7fe fcc6 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029988:	2800      	cmp	r0, #0
2002998a:	d031      	beq.n	200299f0 <mbedtls_rsa_check_privkey+0x1b0>
2002998c:	4c2d      	ldr	r4, [pc, #180]	@ (20029a44 <mbedtls_rsa_check_privkey+0x204>)
2002998e:	a801      	add	r0, sp, #4
20029990:	f7fe fa6f 	bl	20027e72 <mbedtls_mpi_free>
20029994:	a804      	add	r0, sp, #16
20029996:	f7fe fa6c 	bl	20027e72 <mbedtls_mpi_free>
2002999a:	a807      	add	r0, sp, #28
2002999c:	f7fe fa69 	bl	20027e72 <mbedtls_mpi_free>
200299a0:	a80a      	add	r0, sp, #40	@ 0x28
200299a2:	f7fe fa66 	bl	20027e72 <mbedtls_mpi_free>
200299a6:	a80d      	add	r0, sp, #52	@ 0x34
200299a8:	f7fe fa63 	bl	20027e72 <mbedtls_mpi_free>
200299ac:	a810      	add	r0, sp, #64	@ 0x40
200299ae:	f7fe fa60 	bl	20027e72 <mbedtls_mpi_free>
200299b2:	a813      	add	r0, sp, #76	@ 0x4c
200299b4:	f7fe fa5d 	bl	20027e72 <mbedtls_mpi_free>
200299b8:	a816      	add	r0, sp, #88	@ 0x58
200299ba:	f7fe fa5a 	bl	20027e72 <mbedtls_mpi_free>
200299be:	a819      	add	r0, sp, #100	@ 0x64
200299c0:	f7fe fa57 	bl	20027e72 <mbedtls_mpi_free>
200299c4:	a81c      	add	r0, sp, #112	@ 0x70
200299c6:	f7fe fa54 	bl	20027e72 <mbedtls_mpi_free>
200299ca:	a81f      	add	r0, sp, #124	@ 0x7c
200299cc:	f7fe fa51 	bl	20027e72 <mbedtls_mpi_free>
200299d0:	a822      	add	r0, sp, #136	@ 0x88
200299d2:	f7fe fa4e 	bl	20027e72 <mbedtls_mpi_free>
200299d6:	a825      	add	r0, sp, #148	@ 0x94
200299d8:	f7fe fa4b 	bl	20027e72 <mbedtls_mpi_free>
200299dc:	f514 4f84 	cmn.w	r4, #16896	@ 0x4200
200299e0:	f43f af35 	beq.w	2002984e <mbedtls_rsa_check_privkey+0xe>
200299e4:	2c00      	cmp	r4, #0
200299e6:	f43f af33 	beq.w	20029850 <mbedtls_rsa_check_privkey+0x10>
200299ea:	f5a4 4484 	sub.w	r4, r4, #16896	@ 0x4200
200299ee:	e72f      	b.n	20029850 <mbedtls_rsa_check_privkey+0x10>
200299f0:	f105 0144 	add.w	r1, r5, #68	@ 0x44
200299f4:	a81f      	add	r0, sp, #124	@ 0x7c
200299f6:	f7fe fc8d 	bl	20028314 <mbedtls_mpi_cmp_mpi>
200299fa:	2800      	cmp	r0, #0
200299fc:	d1c6      	bne.n	2002998c <mbedtls_rsa_check_privkey+0x14c>
200299fe:	f105 0150 	add.w	r1, r5, #80	@ 0x50
20029a02:	a822      	add	r0, sp, #136	@ 0x88
20029a04:	f7fe fc86 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029a08:	2800      	cmp	r0, #0
20029a0a:	d1bf      	bne.n	2002998c <mbedtls_rsa_check_privkey+0x14c>
20029a0c:	f105 015c 	add.w	r1, r5, #92	@ 0x5c
20029a10:	a825      	add	r0, sp, #148	@ 0x94
20029a12:	f7fe fc7f 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029a16:	2800      	cmp	r0, #0
20029a18:	d1b8      	bne.n	2002998c <mbedtls_rsa_check_privkey+0x14c>
20029a1a:	2100      	movs	r1, #0
20029a1c:	a81c      	add	r0, sp, #112	@ 0x70
20029a1e:	f7fe fcba 	bl	20028396 <mbedtls_mpi_cmp_int>
20029a22:	2800      	cmp	r0, #0
20029a24:	d1b2      	bne.n	2002998c <mbedtls_rsa_check_privkey+0x14c>
20029a26:	2101      	movs	r1, #1
20029a28:	a810      	add	r0, sp, #64	@ 0x40
20029a2a:	f7fe fcb4 	bl	20028396 <mbedtls_mpi_cmp_int>
20029a2e:	2800      	cmp	r0, #0
20029a30:	d1ac      	bne.n	2002998c <mbedtls_rsa_check_privkey+0x14c>
20029a32:	2101      	movs	r1, #1
20029a34:	a813      	add	r0, sp, #76	@ 0x4c
20029a36:	f7fe fcae 	bl	20028396 <mbedtls_mpi_cmp_int>
20029a3a:	4604      	mov	r4, r0
20029a3c:	2800      	cmp	r0, #0
20029a3e:	d1a5      	bne.n	2002998c <mbedtls_rsa_check_privkey+0x14c>
20029a40:	e7a5      	b.n	2002998e <mbedtls_rsa_check_privkey+0x14e>
20029a42:	bf00      	nop
20029a44:	ffffbe00 	.word	0xffffbe00

20029a48 <mbedtls_rsa_check_pub_priv>:
20029a48:	b538      	push	{r3, r4, r5, lr}
20029a4a:	4605      	mov	r5, r0
20029a4c:	460c      	mov	r4, r1
20029a4e:	f7ff fecb 	bl	200297e8 <mbedtls_rsa_check_pubkey>
20029a52:	b918      	cbnz	r0, 20029a5c <mbedtls_rsa_check_pub_priv+0x14>
20029a54:	4620      	mov	r0, r4
20029a56:	f7ff fef3 	bl	20029840 <mbedtls_rsa_check_privkey>
20029a5a:	b108      	cbz	r0, 20029a60 <mbedtls_rsa_check_pub_priv+0x18>
20029a5c:	4809      	ldr	r0, [pc, #36]	@ (20029a84 <mbedtls_rsa_check_pub_priv+0x3c>)
20029a5e:	bd38      	pop	{r3, r4, r5, pc}
20029a60:	f104 0108 	add.w	r1, r4, #8
20029a64:	f105 0008 	add.w	r0, r5, #8
20029a68:	f7fe fc54 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029a6c:	2800      	cmp	r0, #0
20029a6e:	d1f5      	bne.n	20029a5c <mbedtls_rsa_check_pub_priv+0x14>
20029a70:	f104 0114 	add.w	r1, r4, #20
20029a74:	f105 0014 	add.w	r0, r5, #20
20029a78:	f7fe fc4c 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029a7c:	2800      	cmp	r0, #0
20029a7e:	d0ee      	beq.n	20029a5e <mbedtls_rsa_check_pub_priv+0x16>
20029a80:	e7ec      	b.n	20029a5c <mbedtls_rsa_check_pub_priv+0x14>
20029a82:	bf00      	nop
20029a84:	ffffbe00 	.word	0xffffbe00

20029a88 <mbedtls_rsa_public>:
20029a88:	b5f0      	push	{r4, r5, r6, r7, lr}
20029a8a:	460c      	mov	r4, r1
20029a8c:	4605      	mov	r5, r0
20029a8e:	b087      	sub	sp, #28
20029a90:	a803      	add	r0, sp, #12
20029a92:	4616      	mov	r6, r2
20029a94:	f7fe f9e6 	bl	20027e64 <mbedtls_mpi_init>
20029a98:	4621      	mov	r1, r4
20029a9a:	686a      	ldr	r2, [r5, #4]
20029a9c:	a803      	add	r0, sp, #12
20029a9e:	f7fe faa9 	bl	20027ff4 <mbedtls_mpi_read_binary>
20029aa2:	4604      	mov	r4, r0
20029aa4:	b9d0      	cbnz	r0, 20029adc <mbedtls_rsa_public+0x54>
20029aa6:	f105 0408 	add.w	r4, r5, #8
20029aaa:	4621      	mov	r1, r4
20029aac:	a803      	add	r0, sp, #12
20029aae:	f7fe fc31 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029ab2:	2800      	cmp	r0, #0
20029ab4:	da1b      	bge.n	20029aee <mbedtls_rsa_public+0x66>
20029ab6:	f105 0368 	add.w	r3, r5, #104	@ 0x68
20029aba:	a903      	add	r1, sp, #12
20029abc:	686f      	ldr	r7, [r5, #4]
20029abe:	4608      	mov	r0, r1
20029ac0:	9300      	str	r3, [sp, #0]
20029ac2:	f105 0214 	add.w	r2, r5, #20
20029ac6:	4623      	mov	r3, r4
20029ac8:	f7ff f81b 	bl	20028b02 <mbedtls_mpi_exp_mod>
20029acc:	4604      	mov	r4, r0
20029ace:	b928      	cbnz	r0, 20029adc <mbedtls_rsa_public+0x54>
20029ad0:	463a      	mov	r2, r7
20029ad2:	4631      	mov	r1, r6
20029ad4:	a803      	add	r0, sp, #12
20029ad6:	f7fe fac2 	bl	2002805e <mbedtls_mpi_write_binary>
20029ada:	4604      	mov	r4, r0
20029adc:	a803      	add	r0, sp, #12
20029ade:	f7fe f9c8 	bl	20027e72 <mbedtls_mpi_free>
20029ae2:	b10c      	cbz	r4, 20029ae8 <mbedtls_rsa_public+0x60>
20029ae4:	f5a4 4485 	sub.w	r4, r4, #17024	@ 0x4280
20029ae8:	4620      	mov	r0, r4
20029aea:	b007      	add	sp, #28
20029aec:	bdf0      	pop	{r4, r5, r6, r7, pc}
20029aee:	f06f 0403 	mvn.w	r4, #3
20029af2:	e7f3      	b.n	20029adc <mbedtls_rsa_public+0x54>

20029af4 <mbedtls_rsa_private>:
20029af4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029af8:	461e      	mov	r6, r3
20029afa:	6b43      	ldr	r3, [r0, #52]	@ 0x34
20029afc:	4604      	mov	r4, r0
20029afe:	460d      	mov	r5, r1
20029b00:	4617      	mov	r7, r2
20029b02:	b09d      	sub	sp, #116	@ 0x74
20029b04:	2b00      	cmp	r3, #0
20029b06:	f000 8179 	beq.w	20029dfc <mbedtls_rsa_private+0x308>
20029b0a:	6c03      	ldr	r3, [r0, #64]	@ 0x40
20029b0c:	2b00      	cmp	r3, #0
20029b0e:	f000 8175 	beq.w	20029dfc <mbedtls_rsa_private+0x308>
20029b12:	6a83      	ldr	r3, [r0, #40]	@ 0x28
20029b14:	2b00      	cmp	r3, #0
20029b16:	f000 8171 	beq.w	20029dfc <mbedtls_rsa_private+0x308>
20029b1a:	a804      	add	r0, sp, #16
20029b1c:	f7fe f9a2 	bl	20027e64 <mbedtls_mpi_init>
20029b20:	a807      	add	r0, sp, #28
20029b22:	f7fe f99f 	bl	20027e64 <mbedtls_mpi_init>
20029b26:	a80a      	add	r0, sp, #40	@ 0x28
20029b28:	f7fe f99c 	bl	20027e64 <mbedtls_mpi_init>
20029b2c:	a80d      	add	r0, sp, #52	@ 0x34
20029b2e:	f7fe f999 	bl	20027e64 <mbedtls_mpi_init>
20029b32:	a810      	add	r0, sp, #64	@ 0x40
20029b34:	f7fe f996 	bl	20027e64 <mbedtls_mpi_init>
20029b38:	a813      	add	r0, sp, #76	@ 0x4c
20029b3a:	f7fe f993 	bl	20027e64 <mbedtls_mpi_init>
20029b3e:	b12d      	cbz	r5, 20029b4c <mbedtls_rsa_private+0x58>
20029b40:	a816      	add	r0, sp, #88	@ 0x58
20029b42:	f7fe f98f 	bl	20027e64 <mbedtls_mpi_init>
20029b46:	a819      	add	r0, sp, #100	@ 0x64
20029b48:	f7fe f98c 	bl	20027e64 <mbedtls_mpi_init>
20029b4c:	4631      	mov	r1, r6
20029b4e:	6862      	ldr	r2, [r4, #4]
20029b50:	a804      	add	r0, sp, #16
20029b52:	f7fe fa4f 	bl	20027ff4 <mbedtls_mpi_read_binary>
20029b56:	4603      	mov	r3, r0
20029b58:	2800      	cmp	r0, #0
20029b5a:	f040 80e0 	bne.w	20029d1e <mbedtls_rsa_private+0x22a>
20029b5e:	f104 0608 	add.w	r6, r4, #8
20029b62:	4631      	mov	r1, r6
20029b64:	a804      	add	r0, sp, #16
20029b66:	f7fe fbd5 	bl	20028314 <mbedtls_mpi_cmp_mpi>
20029b6a:	2800      	cmp	r0, #0
20029b6c:	f280 8143 	bge.w	20029df6 <mbedtls_rsa_private+0x302>
20029b70:	f104 0a44 	add.w	sl, r4, #68	@ 0x44
20029b74:	f104 0950 	add.w	r9, r4, #80	@ 0x50
20029b78:	2d00      	cmp	r5, #0
20029b7a:	f000 8089 	beq.w	20029c90 <mbedtls_rsa_private+0x19c>
20029b7e:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
20029b82:	2b00      	cmp	r3, #0
20029b84:	f000 80f4 	beq.w	20029d70 <mbedtls_rsa_private+0x27c>
20029b88:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029b8c:	4642      	mov	r2, r8
20029b8e:	4641      	mov	r1, r8
20029b90:	4640      	mov	r0, r8
20029b92:	f7fe fd0f 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029b96:	4603      	mov	r3, r0
20029b98:	2800      	cmp	r0, #0
20029b9a:	f040 80c0 	bne.w	20029d1e <mbedtls_rsa_private+0x22a>
20029b9e:	4632      	mov	r2, r6
20029ba0:	4641      	mov	r1, r8
20029ba2:	4640      	mov	r0, r8
20029ba4:	f7fe ff7b 	bl	20028a9e <mbedtls_mpi_mod_mpi>
20029ba8:	4603      	mov	r3, r0
20029baa:	2800      	cmp	r0, #0
20029bac:	f040 80b7 	bne.w	20029d1e <mbedtls_rsa_private+0x22a>
20029bb0:	f104 0898 	add.w	r8, r4, #152	@ 0x98
20029bb4:	4642      	mov	r2, r8
20029bb6:	4641      	mov	r1, r8
20029bb8:	4640      	mov	r0, r8
20029bba:	f7fe fcfb 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029bbe:	4603      	mov	r3, r0
20029bc0:	2800      	cmp	r0, #0
20029bc2:	f040 80ac 	bne.w	20029d1e <mbedtls_rsa_private+0x22a>
20029bc6:	4632      	mov	r2, r6
20029bc8:	4641      	mov	r1, r8
20029bca:	4640      	mov	r0, r8
20029bcc:	f7fe ff67 	bl	20028a9e <mbedtls_mpi_mod_mpi>
20029bd0:	4603      	mov	r3, r0
20029bd2:	2800      	cmp	r0, #0
20029bd4:	f040 80a3 	bne.w	20029d1e <mbedtls_rsa_private+0x22a>
20029bd8:	a904      	add	r1, sp, #16
20029bda:	4608      	mov	r0, r1
20029bdc:	f104 028c 	add.w	r2, r4, #140	@ 0x8c
20029be0:	f7fe fce8 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029be4:	4603      	mov	r3, r0
20029be6:	2800      	cmp	r0, #0
20029be8:	f040 8099 	bne.w	20029d1e <mbedtls_rsa_private+0x22a>
20029bec:	a904      	add	r1, sp, #16
20029bee:	4632      	mov	r2, r6
20029bf0:	4608      	mov	r0, r1
20029bf2:	f7fe ff54 	bl	20028a9e <mbedtls_mpi_mod_mpi>
20029bf6:	4603      	mov	r3, r0
20029bf8:	2800      	cmp	r0, #0
20029bfa:	f040 8090 	bne.w	20029d1e <mbedtls_rsa_private+0x22a>
20029bfe:	2201      	movs	r2, #1
20029c00:	f104 012c 	add.w	r1, r4, #44	@ 0x2c
20029c04:	a80d      	add	r0, sp, #52	@ 0x34
20029c06:	f7fe fcbf 	bl	20028588 <mbedtls_mpi_sub_int>
20029c0a:	4603      	mov	r3, r0
20029c0c:	2800      	cmp	r0, #0
20029c0e:	f040 8086 	bne.w	20029d1e <mbedtls_rsa_private+0x22a>
20029c12:	2201      	movs	r2, #1
20029c14:	f104 0138 	add.w	r1, r4, #56	@ 0x38
20029c18:	a810      	add	r0, sp, #64	@ 0x40
20029c1a:	f7fe fcb5 	bl	20028588 <mbedtls_mpi_sub_int>
20029c1e:	4603      	mov	r3, r0
20029c20:	2800      	cmp	r0, #0
20029c22:	d17c      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029c24:	463b      	mov	r3, r7
20029c26:	462a      	mov	r2, r5
20029c28:	211c      	movs	r1, #28
20029c2a:	a813      	add	r0, sp, #76	@ 0x4c
20029c2c:	f7ff f9fb 	bl	20029026 <mbedtls_mpi_fill_random>
20029c30:	4603      	mov	r3, r0
20029c32:	2800      	cmp	r0, #0
20029c34:	d173      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029c36:	aa13      	add	r2, sp, #76	@ 0x4c
20029c38:	a90d      	add	r1, sp, #52	@ 0x34
20029c3a:	a816      	add	r0, sp, #88	@ 0x58
20029c3c:	f7fe fcba 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029c40:	4603      	mov	r3, r0
20029c42:	2800      	cmp	r0, #0
20029c44:	d16b      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029c46:	a916      	add	r1, sp, #88	@ 0x58
20029c48:	4652      	mov	r2, sl
20029c4a:	4608      	mov	r0, r1
20029c4c:	f7fe fc4f 	bl	200284ee <mbedtls_mpi_add_mpi>
20029c50:	4603      	mov	r3, r0
20029c52:	2800      	cmp	r0, #0
20029c54:	d163      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029c56:	463b      	mov	r3, r7
20029c58:	462a      	mov	r2, r5
20029c5a:	211c      	movs	r1, #28
20029c5c:	a813      	add	r0, sp, #76	@ 0x4c
20029c5e:	f7ff f9e2 	bl	20029026 <mbedtls_mpi_fill_random>
20029c62:	4603      	mov	r3, r0
20029c64:	2800      	cmp	r0, #0
20029c66:	d15a      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029c68:	aa13      	add	r2, sp, #76	@ 0x4c
20029c6a:	a910      	add	r1, sp, #64	@ 0x40
20029c6c:	a819      	add	r0, sp, #100	@ 0x64
20029c6e:	f7fe fca1 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029c72:	4603      	mov	r3, r0
20029c74:	2800      	cmp	r0, #0
20029c76:	d152      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029c78:	a919      	add	r1, sp, #100	@ 0x64
20029c7a:	464a      	mov	r2, r9
20029c7c:	4608      	mov	r0, r1
20029c7e:	f7fe fc36 	bl	200284ee <mbedtls_mpi_add_mpi>
20029c82:	4603      	mov	r3, r0
20029c84:	2800      	cmp	r0, #0
20029c86:	d14a      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029c88:	f10d 0964 	add.w	r9, sp, #100	@ 0x64
20029c8c:	f10d 0a58 	add.w	sl, sp, #88	@ 0x58
20029c90:	f104 0374 	add.w	r3, r4, #116	@ 0x74
20029c94:	f104 082c 	add.w	r8, r4, #44	@ 0x2c
20029c98:	9300      	str	r3, [sp, #0]
20029c9a:	4652      	mov	r2, sl
20029c9c:	4643      	mov	r3, r8
20029c9e:	a904      	add	r1, sp, #16
20029ca0:	a807      	add	r0, sp, #28
20029ca2:	f7fe ff2e 	bl	20028b02 <mbedtls_mpi_exp_mod>
20029ca6:	4603      	mov	r3, r0
20029ca8:	2800      	cmp	r0, #0
20029caa:	d138      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029cac:	f104 0380 	add.w	r3, r4, #128	@ 0x80
20029cb0:	f104 0738 	add.w	r7, r4, #56	@ 0x38
20029cb4:	9300      	str	r3, [sp, #0]
20029cb6:	464a      	mov	r2, r9
20029cb8:	463b      	mov	r3, r7
20029cba:	a904      	add	r1, sp, #16
20029cbc:	a80a      	add	r0, sp, #40	@ 0x28
20029cbe:	f7fe ff20 	bl	20028b02 <mbedtls_mpi_exp_mod>
20029cc2:	4603      	mov	r3, r0
20029cc4:	bb58      	cbnz	r0, 20029d1e <mbedtls_rsa_private+0x22a>
20029cc6:	aa0a      	add	r2, sp, #40	@ 0x28
20029cc8:	a907      	add	r1, sp, #28
20029cca:	a804      	add	r0, sp, #16
20029ccc:	f7fe fc35 	bl	2002853a <mbedtls_mpi_sub_mpi>
20029cd0:	4603      	mov	r3, r0
20029cd2:	bb20      	cbnz	r0, 20029d1e <mbedtls_rsa_private+0x22a>
20029cd4:	f104 025c 	add.w	r2, r4, #92	@ 0x5c
20029cd8:	a904      	add	r1, sp, #16
20029cda:	a807      	add	r0, sp, #28
20029cdc:	f7fe fc6a 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029ce0:	4603      	mov	r3, r0
20029ce2:	b9e0      	cbnz	r0, 20029d1e <mbedtls_rsa_private+0x22a>
20029ce4:	4642      	mov	r2, r8
20029ce6:	a907      	add	r1, sp, #28
20029ce8:	a804      	add	r0, sp, #16
20029cea:	f7fe fed8 	bl	20028a9e <mbedtls_mpi_mod_mpi>
20029cee:	4603      	mov	r3, r0
20029cf0:	b9a8      	cbnz	r0, 20029d1e <mbedtls_rsa_private+0x22a>
20029cf2:	463a      	mov	r2, r7
20029cf4:	a904      	add	r1, sp, #16
20029cf6:	a807      	add	r0, sp, #28
20029cf8:	f7fe fc5c 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029cfc:	4603      	mov	r3, r0
20029cfe:	b970      	cbnz	r0, 20029d1e <mbedtls_rsa_private+0x22a>
20029d00:	aa07      	add	r2, sp, #28
20029d02:	a90a      	add	r1, sp, #40	@ 0x28
20029d04:	a804      	add	r0, sp, #16
20029d06:	f7fe fbf2 	bl	200284ee <mbedtls_mpi_add_mpi>
20029d0a:	4603      	mov	r3, r0
20029d0c:	b938      	cbnz	r0, 20029d1e <mbedtls_rsa_private+0x22a>
20029d0e:	2d00      	cmp	r5, #0
20029d10:	d15f      	bne.n	20029dd2 <mbedtls_rsa_private+0x2de>
20029d12:	6862      	ldr	r2, [r4, #4]
20029d14:	9926      	ldr	r1, [sp, #152]	@ 0x98
20029d16:	a804      	add	r0, sp, #16
20029d18:	f7fe f9a1 	bl	2002805e <mbedtls_mpi_write_binary>
20029d1c:	4603      	mov	r3, r0
20029d1e:	a804      	add	r0, sp, #16
20029d20:	9303      	str	r3, [sp, #12]
20029d22:	f7fe f8a6 	bl	20027e72 <mbedtls_mpi_free>
20029d26:	a807      	add	r0, sp, #28
20029d28:	f7fe f8a3 	bl	20027e72 <mbedtls_mpi_free>
20029d2c:	a80a      	add	r0, sp, #40	@ 0x28
20029d2e:	f7fe f8a0 	bl	20027e72 <mbedtls_mpi_free>
20029d32:	a80d      	add	r0, sp, #52	@ 0x34
20029d34:	f7fe f89d 	bl	20027e72 <mbedtls_mpi_free>
20029d38:	a810      	add	r0, sp, #64	@ 0x40
20029d3a:	f7fe f89a 	bl	20027e72 <mbedtls_mpi_free>
20029d3e:	a813      	add	r0, sp, #76	@ 0x4c
20029d40:	f7fe f897 	bl	20027e72 <mbedtls_mpi_free>
20029d44:	9b03      	ldr	r3, [sp, #12]
20029d46:	b135      	cbz	r5, 20029d56 <mbedtls_rsa_private+0x262>
20029d48:	a816      	add	r0, sp, #88	@ 0x58
20029d4a:	f7fe f892 	bl	20027e72 <mbedtls_mpi_free>
20029d4e:	a819      	add	r0, sp, #100	@ 0x64
20029d50:	f7fe f88f 	bl	20027e72 <mbedtls_mpi_free>
20029d54:	9b03      	ldr	r3, [sp, #12]
20029d56:	b10b      	cbz	r3, 20029d5c <mbedtls_rsa_private+0x268>
20029d58:	f5a3 4386 	sub.w	r3, r3, #17152	@ 0x4300
20029d5c:	4618      	mov	r0, r3
20029d5e:	b01d      	add	sp, #116	@ 0x74
20029d60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029d64:	9b03      	ldr	r3, [sp, #12]
20029d66:	3b01      	subs	r3, #1
20029d68:	9303      	str	r3, [sp, #12]
20029d6a:	d107      	bne.n	20029d7c <mbedtls_rsa_private+0x288>
20029d6c:	4b24      	ldr	r3, [pc, #144]	@ (20029e00 <mbedtls_rsa_private+0x30c>)
20029d6e:	e7d6      	b.n	20029d1e <mbedtls_rsa_private+0x22a>
20029d70:	230b      	movs	r3, #11
20029d72:	f104 0b98 	add.w	fp, r4, #152	@ 0x98
20029d76:	9303      	str	r3, [sp, #12]
20029d78:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029d7c:	6861      	ldr	r1, [r4, #4]
20029d7e:	463b      	mov	r3, r7
20029d80:	462a      	mov	r2, r5
20029d82:	4658      	mov	r0, fp
20029d84:	3901      	subs	r1, #1
20029d86:	f7ff f94e 	bl	20029026 <mbedtls_mpi_fill_random>
20029d8a:	4603      	mov	r3, r0
20029d8c:	2800      	cmp	r0, #0
20029d8e:	d1c6      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029d90:	4632      	mov	r2, r6
20029d92:	4659      	mov	r1, fp
20029d94:	4640      	mov	r0, r8
20029d96:	f7ff f8c8 	bl	20028f2a <mbedtls_mpi_gcd>
20029d9a:	4603      	mov	r3, r0
20029d9c:	2800      	cmp	r0, #0
20029d9e:	d1be      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029da0:	2101      	movs	r1, #1
20029da2:	4640      	mov	r0, r8
20029da4:	f7fe faf7 	bl	20028396 <mbedtls_mpi_cmp_int>
20029da8:	2800      	cmp	r0, #0
20029daa:	d1db      	bne.n	20029d64 <mbedtls_rsa_private+0x270>
20029dac:	4632      	mov	r2, r6
20029dae:	4659      	mov	r1, fp
20029db0:	4640      	mov	r0, r8
20029db2:	f7ff f955 	bl	20029060 <mbedtls_mpi_inv_mod>
20029db6:	4603      	mov	r3, r0
20029db8:	2800      	cmp	r0, #0
20029dba:	d1b0      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029dbc:	f104 0368 	add.w	r3, r4, #104	@ 0x68
20029dc0:	9300      	str	r3, [sp, #0]
20029dc2:	4641      	mov	r1, r8
20029dc4:	4633      	mov	r3, r6
20029dc6:	4640      	mov	r0, r8
20029dc8:	f104 0214 	add.w	r2, r4, #20
20029dcc:	f7fe fe99 	bl	20028b02 <mbedtls_mpi_exp_mod>
20029dd0:	e6fe      	b.n	20029bd0 <mbedtls_rsa_private+0xdc>
20029dd2:	a904      	add	r1, sp, #16
20029dd4:	4608      	mov	r0, r1
20029dd6:	f104 0298 	add.w	r2, r4, #152	@ 0x98
20029dda:	f7fe fbeb 	bl	200285b4 <mbedtls_mpi_mul_mpi>
20029dde:	4603      	mov	r3, r0
20029de0:	2800      	cmp	r0, #0
20029de2:	d19c      	bne.n	20029d1e <mbedtls_rsa_private+0x22a>
20029de4:	a904      	add	r1, sp, #16
20029de6:	4632      	mov	r2, r6
20029de8:	4608      	mov	r0, r1
20029dea:	f7fe fe58 	bl	20028a9e <mbedtls_mpi_mod_mpi>
20029dee:	4603      	mov	r3, r0
20029df0:	2800      	cmp	r0, #0
20029df2:	d08e      	beq.n	20029d12 <mbedtls_rsa_private+0x21e>
20029df4:	e793      	b.n	20029d1e <mbedtls_rsa_private+0x22a>
20029df6:	f06f 0303 	mvn.w	r3, #3
20029dfa:	e790      	b.n	20029d1e <mbedtls_rsa_private+0x22a>
20029dfc:	4b01      	ldr	r3, [pc, #4]	@ (20029e04 <mbedtls_rsa_private+0x310>)
20029dfe:	e7ad      	b.n	20029d5c <mbedtls_rsa_private+0x268>
20029e00:	ffffbb80 	.word	0xffffbb80
20029e04:	ffffbf80 	.word	0xffffbf80

20029e08 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>:
20029e08:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029e0c:	4698      	mov	r8, r3
20029e0e:	e9dd a30c 	ldrd	sl, r3, [sp, #48]	@ 0x30
20029e12:	f1b8 0f01 	cmp.w	r8, #1
20029e16:	4606      	mov	r6, r0
20029e18:	460f      	mov	r7, r1
20029e1a:	4691      	mov	r9, r2
20029e1c:	9d0e      	ldr	r5, [sp, #56]	@ 0x38
20029e1e:	d103      	bne.n	20029e28 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x20>
20029e20:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029e24:	2a00      	cmp	r2, #0
20029e26:	d162      	bne.n	20029eee <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029e28:	2f00      	cmp	r7, #0
20029e2a:	d060      	beq.n	20029eee <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029e2c:	2b00      	cmp	r3, #0
20029e2e:	d05e      	beq.n	20029eee <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029e30:	2d00      	cmp	r5, #0
20029e32:	d05c      	beq.n	20029eee <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029e34:	f11a 0f0c 	cmn.w	sl, #12
20029e38:	6874      	ldr	r4, [r6, #4]
20029e3a:	d858      	bhi.n	20029eee <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029e3c:	f10a 020b 	add.w	r2, sl, #11
20029e40:	42a2      	cmp	r2, r4
20029e42:	d854      	bhi.n	20029eee <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029e44:	4629      	mov	r1, r5
20029e46:	2200      	movs	r2, #0
20029e48:	eba4 040a 	sub.w	r4, r4, sl
20029e4c:	3c03      	subs	r4, #3
20029e4e:	f801 2b02 	strb.w	r2, [r1], #2
20029e52:	f1b8 0f00 	cmp.w	r8, #0
20029e56:	d131      	bne.n	20029ebc <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xb4>
20029e58:	2202      	movs	r2, #2
20029e5a:	4414      	add	r4, r2
20029e5c:	706a      	strb	r2, [r5, #1]
20029e5e:	442c      	add	r4, r5
20029e60:	42a1      	cmp	r1, r4
20029e62:	d112      	bne.n	20029e8a <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x82>
20029e64:	2200      	movs	r2, #0
20029e66:	4620      	mov	r0, r4
20029e68:	4619      	mov	r1, r3
20029e6a:	f800 2b01 	strb.w	r2, [r0], #1
20029e6e:	4652      	mov	r2, sl
20029e70:	f000 fdaa 	bl	2002a9c8 <memcpy>
20029e74:	f1b8 0f00 	cmp.w	r8, #0
20029e78:	d12f      	bne.n	20029eda <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xd2>
20029e7a:	462a      	mov	r2, r5
20029e7c:	4629      	mov	r1, r5
20029e7e:	4630      	mov	r0, r6
20029e80:	b003      	add	sp, #12
20029e82:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029e86:	f7ff bdff 	b.w	20029a88 <mbedtls_rsa_public>
20029e8a:	f04f 0b64 	mov.w	fp, #100	@ 0x64
20029e8e:	2201      	movs	r2, #1
20029e90:	4648      	mov	r0, r9
20029e92:	9301      	str	r3, [sp, #4]
20029e94:	9100      	str	r1, [sp, #0]
20029e96:	47b8      	blx	r7
20029e98:	9900      	ldr	r1, [sp, #0]
20029e9a:	9b01      	ldr	r3, [sp, #4]
20029e9c:	780a      	ldrb	r2, [r1, #0]
20029e9e:	b94a      	cbnz	r2, 20029eb4 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xac>
20029ea0:	f1bb 0b01 	subs.w	fp, fp, #1
20029ea4:	d001      	beq.n	20029eaa <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029ea6:	2800      	cmp	r0, #0
20029ea8:	d0f1      	beq.n	20029e8e <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x86>
20029eaa:	f5a0 4089 	sub.w	r0, r0, #17536	@ 0x4480
20029eae:	b003      	add	sp, #12
20029eb0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029eb4:	2800      	cmp	r0, #0
20029eb6:	d1f8      	bne.n	20029eaa <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029eb8:	3101      	adds	r1, #1
20029eba:	e7d1      	b.n	20029e60 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x58>
20029ebc:	2001      	movs	r0, #1
20029ebe:	462a      	mov	r2, r5
20029ec0:	f04f 0cff 	mov.w	ip, #255	@ 0xff
20029ec4:	f802 0f01 	strb.w	r0, [r2, #1]!
20029ec8:	1820      	adds	r0, r4, r0
20029eca:	4428      	add	r0, r5
20029ecc:	4282      	cmp	r2, r0
20029ece:	d101      	bne.n	20029ed4 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xcc>
20029ed0:	440c      	add	r4, r1
20029ed2:	e7c7      	b.n	20029e64 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x5c>
20029ed4:	f802 cf01 	strb.w	ip, [r2, #1]!
20029ed8:	e7f8      	b.n	20029ecc <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xc4>
20029eda:	462b      	mov	r3, r5
20029edc:	464a      	mov	r2, r9
20029ede:	4639      	mov	r1, r7
20029ee0:	4630      	mov	r0, r6
20029ee2:	950c      	str	r5, [sp, #48]	@ 0x30
20029ee4:	b003      	add	sp, #12
20029ee6:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029eea:	f7ff be03 	b.w	20029af4 <mbedtls_rsa_private>
20029eee:	4801      	ldr	r0, [pc, #4]	@ (20029ef4 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xec>)
20029ef0:	e7dd      	b.n	20029eae <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa6>
20029ef2:	bf00      	nop
20029ef4:	ffffbf80 	.word	0xffffbf80

20029ef8 <mbedtls_rsa_pkcs1_encrypt>:
20029ef8:	b410      	push	{r4}
20029efa:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029efe:	b91c      	cbnz	r4, 20029f08 <mbedtls_rsa_pkcs1_encrypt+0x10>
20029f00:	f85d 4b04 	ldr.w	r4, [sp], #4
20029f04:	f7ff bf80 	b.w	20029e08 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>
20029f08:	4801      	ldr	r0, [pc, #4]	@ (20029f10 <mbedtls_rsa_pkcs1_encrypt+0x18>)
20029f0a:	f85d 4b04 	ldr.w	r4, [sp], #4
20029f0e:	4770      	bx	lr
20029f10:	ffffbf00 	.word	0xffffbf00

20029f14 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>:
20029f14:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20029f18:	4698      	mov	r8, r3
20029f1a:	f5ad 6d81 	sub.w	sp, sp, #1032	@ 0x408
20029f1e:	f1b8 0f01 	cmp.w	r8, #1
20029f22:	f8dd 3424 	ldr.w	r3, [sp, #1060]	@ 0x424
20029f26:	d103      	bne.n	20029f30 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x1c>
20029f28:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029f2c:	2c00      	cmp	r4, #0
20029f2e:	d17c      	bne.n	2002a02a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029f30:	6845      	ldr	r5, [r0, #4]
20029f32:	f1a5 0410 	sub.w	r4, r5, #16
20029f36:	f5b4 7f7c 	cmp.w	r4, #1008	@ 0x3f0
20029f3a:	d876      	bhi.n	2002a02a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029f3c:	ae02      	add	r6, sp, #8
20029f3e:	f1b8 0f00 	cmp.w	r8, #0
20029f42:	d153      	bne.n	20029fec <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xd8>
20029f44:	4632      	mov	r2, r6
20029f46:	4619      	mov	r1, r3
20029f48:	f7ff fd9e 	bl	20029a88 <mbedtls_rsa_public>
20029f4c:	4604      	mov	r4, r0
20029f4e:	2800      	cmp	r0, #0
20029f50:	d140      	bne.n	20029fd4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029f52:	f1b8 0f01 	cmp.w	r8, #1
20029f56:	7831      	ldrb	r1, [r6, #0]
20029f58:	7872      	ldrb	r2, [r6, #1]
20029f5a:	f1a5 0703 	sub.w	r7, r5, #3
20029f5e:	d149      	bne.n	20029ff4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xe0>
20029f60:	f082 0202 	eor.w	r2, r2, #2
20029f64:	ea41 0302 	orr.w	r3, r1, r2
20029f68:	4684      	mov	ip, r0
20029f6a:	4686      	mov	lr, r0
20029f6c:	4602      	mov	r2, r0
20029f6e:	f10d 0109 	add.w	r1, sp, #9
20029f72:	f811 0f01 	ldrb.w	r0, [r1, #1]!
20029f76:	f10e 0e01 	add.w	lr, lr, #1
20029f7a:	f1c0 0800 	rsb	r8, r0, #0
20029f7e:	ea40 0008 	orr.w	r0, r0, r8
20029f82:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029f86:	f080 0001 	eor.w	r0, r0, #1
20029f8a:	ea4c 0c00 	orr.w	ip, ip, r0
20029f8e:	f1cc 0000 	rsb	r0, ip, #0
20029f92:	ea4c 0000 	orr.w	r0, ip, r0
20029f96:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029f9a:	f080 0001 	eor.w	r0, r0, #1
20029f9e:	45be      	cmp	lr, r7
20029fa0:	4402      	add	r2, r0
20029fa2:	d3e6      	bcc.n	20029f72 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x5e>
20029fa4:	f10d 000a 	add.w	r0, sp, #10
20029fa8:	1881      	adds	r1, r0, r2
20029faa:	5c80      	ldrb	r0, [r0, r2]
20029fac:	3101      	adds	r1, #1
20029fae:	4303      	orrs	r3, r0
20029fb0:	2a07      	cmp	r2, #7
20029fb2:	bf98      	it	ls
20029fb4:	f043 0301 	orrls.w	r3, r3, #1
20029fb8:	bb9b      	cbnz	r3, 2002a022 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x10e>
20029fba:	1b8b      	subs	r3, r1, r6
20029fbc:	1aea      	subs	r2, r5, r3
20029fbe:	f8dd 342c 	ldr.w	r3, [sp, #1068]	@ 0x42c
20029fc2:	429a      	cmp	r2, r3
20029fc4:	d82f      	bhi.n	2002a026 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x112>
20029fc6:	f8dd 3420 	ldr.w	r3, [sp, #1056]	@ 0x420
20029fca:	f8dd 0428 	ldr.w	r0, [sp, #1064]	@ 0x428
20029fce:	601a      	str	r2, [r3, #0]
20029fd0:	f000 fcfa 	bl	2002a9c8 <memcpy>
20029fd4:	2300      	movs	r3, #0
20029fd6:	461a      	mov	r2, r3
20029fd8:	54f2      	strb	r2, [r6, r3]
20029fda:	3301      	adds	r3, #1
20029fdc:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
20029fe0:	d1fa      	bne.n	20029fd8 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc4>
20029fe2:	4620      	mov	r0, r4
20029fe4:	f50d 6d81 	add.w	sp, sp, #1032	@ 0x408
20029fe8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20029fec:	9600      	str	r6, [sp, #0]
20029fee:	f7ff fd81 	bl	20029af4 <mbedtls_rsa_private>
20029ff2:	e7ab      	b.n	20029f4c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x38>
20029ff4:	f082 0201 	eor.w	r2, r2, #1
20029ff8:	ea41 0302 	orr.w	r3, r1, r2
20029ffc:	4684      	mov	ip, r0
20029ffe:	4602      	mov	r2, r0
2002a000:	f10d 0109 	add.w	r1, sp, #9
2002a004:	f811 ef01 	ldrb.w	lr, [r1, #1]!
2002a008:	3001      	adds	r0, #1
2002a00a:	f1be 0fff 	cmp.w	lr, #255	@ 0xff
2002a00e:	bf18      	it	ne
2002a010:	f04c 0c01 	orrne.w	ip, ip, #1
2002a014:	42b8      	cmp	r0, r7
2002a016:	f08c 0e01 	eor.w	lr, ip, #1
2002a01a:	fa52 f28e 	uxtab	r2, r2, lr
2002a01e:	d3f1      	bcc.n	2002a004 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xf0>
2002a020:	e7c0      	b.n	20029fa4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x90>
2002a022:	4c03      	ldr	r4, [pc, #12]	@ (2002a030 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x11c>)
2002a024:	e7d6      	b.n	20029fd4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
2002a026:	4c03      	ldr	r4, [pc, #12]	@ (2002a034 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x120>)
2002a028:	e7d4      	b.n	20029fd4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
2002a02a:	4c03      	ldr	r4, [pc, #12]	@ (2002a038 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x124>)
2002a02c:	e7d9      	b.n	20029fe2 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xce>
2002a02e:	bf00      	nop
2002a030:	ffffbf00 	.word	0xffffbf00
2002a034:	ffffbc00 	.word	0xffffbc00
2002a038:	ffffbf80 	.word	0xffffbf80

2002a03c <mbedtls_rsa_pkcs1_decrypt>:
2002a03c:	b410      	push	{r4}
2002a03e:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
2002a042:	b91c      	cbnz	r4, 2002a04c <mbedtls_rsa_pkcs1_decrypt+0x10>
2002a044:	f85d 4b04 	ldr.w	r4, [sp], #4
2002a048:	f7ff bf64 	b.w	20029f14 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>
2002a04c:	4801      	ldr	r0, [pc, #4]	@ (2002a054 <mbedtls_rsa_pkcs1_decrypt+0x18>)
2002a04e:	f85d 4b04 	ldr.w	r4, [sp], #4
2002a052:	4770      	bx	lr
2002a054:	ffffbf00 	.word	0xffffbf00

2002a058 <mbedtls_rsa_rsassa_pkcs1_v15_sign>:
2002a058:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a05c:	4692      	mov	sl, r2
2002a05e:	2200      	movs	r2, #0
2002a060:	b089      	sub	sp, #36	@ 0x24
2002a062:	2b01      	cmp	r3, #1
2002a064:	4604      	mov	r4, r0
2002a066:	461f      	mov	r7, r3
2002a068:	e9cd 2206 	strd	r2, r2, [sp, #24]
2002a06c:	f89d 8048 	ldrb.w	r8, [sp, #72]	@ 0x48
2002a070:	f8dd 904c 	ldr.w	r9, [sp, #76]	@ 0x4c
2002a074:	9e15      	ldr	r6, [sp, #84]	@ 0x54
2002a076:	9102      	str	r1, [sp, #8]
2002a078:	d107      	bne.n	2002a08a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
2002a07a:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
2002a07e:	b122      	cbz	r2, 2002a08a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
2002a080:	4d59      	ldr	r5, [pc, #356]	@ (2002a1e8 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x190>)
2002a082:	4628      	mov	r0, r5
2002a084:	b009      	add	sp, #36	@ 0x24
2002a086:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a08a:	f8d4 b004 	ldr.w	fp, [r4, #4]
2002a08e:	f1ab 0503 	sub.w	r5, fp, #3
2002a092:	f1b8 0f00 	cmp.w	r8, #0
2002a096:	d014      	beq.n	2002a0c2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x6a>
2002a098:	4640      	mov	r0, r8
2002a09a:	f7fb ff77 	bl	20025f8c <mbedtls_md_info_from_type>
2002a09e:	4681      	mov	r9, r0
2002a0a0:	2800      	cmp	r0, #0
2002a0a2:	d0ed      	beq.n	2002a080 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
2002a0a4:	4640      	mov	r0, r8
2002a0a6:	aa06      	add	r2, sp, #24
2002a0a8:	a907      	add	r1, sp, #28
2002a0aa:	f7ff f9d3 	bl	20029454 <mbedtls_oid_get_oid_by_md>
2002a0ae:	2800      	cmp	r0, #0
2002a0b0:	d1e6      	bne.n	2002a080 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
2002a0b2:	9a06      	ldr	r2, [sp, #24]
2002a0b4:	4648      	mov	r0, r9
2002a0b6:	1aaa      	subs	r2, r5, r2
2002a0b8:	f1a2 050a 	sub.w	r5, r2, #10
2002a0bc:	f7fb ff72 	bl	20025fa4 <mbedtls_md_get_size>
2002a0c0:	4681      	mov	r9, r0
2002a0c2:	eba5 0209 	sub.w	r2, r5, r9
2002a0c6:	2a07      	cmp	r2, #7
2002a0c8:	d9da      	bls.n	2002a080 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
2002a0ca:	4593      	cmp	fp, r2
2002a0cc:	d3d8      	bcc.n	2002a080 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
2002a0ce:	46b3      	mov	fp, r6
2002a0d0:	2500      	movs	r5, #0
2002a0d2:	2101      	movs	r1, #1
2002a0d4:	f80b 5b02 	strb.w	r5, [fp], #2
2002a0d8:	4658      	mov	r0, fp
2002a0da:	7071      	strb	r1, [r6, #1]
2002a0dc:	21ff      	movs	r1, #255	@ 0xff
2002a0de:	9203      	str	r2, [sp, #12]
2002a0e0:	f000 fc58 	bl	2002a994 <memset>
2002a0e4:	9a03      	ldr	r2, [sp, #12]
2002a0e6:	eb0b 0002 	add.w	r0, fp, r2
2002a0ea:	f80b 5002 	strb.w	r5, [fp, r2]
2002a0ee:	f1b8 0f00 	cmp.w	r8, #0
2002a0f2:	d10c      	bne.n	2002a10e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xb6>
2002a0f4:	464a      	mov	r2, r9
2002a0f6:	9914      	ldr	r1, [sp, #80]	@ 0x50
2002a0f8:	3001      	adds	r0, #1
2002a0fa:	f000 fc65 	bl	2002a9c8 <memcpy>
2002a0fe:	bb8f      	cbnz	r7, 2002a164 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x10c>
2002a100:	4632      	mov	r2, r6
2002a102:	4631      	mov	r1, r6
2002a104:	4620      	mov	r0, r4
2002a106:	f7ff fcbf 	bl	20029a88 <mbedtls_rsa_public>
2002a10a:	4605      	mov	r5, r0
2002a10c:	e7b9      	b.n	2002a082 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a10e:	2130      	movs	r1, #48	@ 0x30
2002a110:	7041      	strb	r1, [r0, #1]
2002a112:	9a06      	ldr	r2, [sp, #24]
2002a114:	70c1      	strb	r1, [r0, #3]
2002a116:	3208      	adds	r2, #8
2002a118:	fa52 f289 	uxtab	r2, r2, r9
2002a11c:	7082      	strb	r2, [r0, #2]
2002a11e:	9a06      	ldr	r2, [sp, #24]
2002a120:	f100 0807 	add.w	r8, r0, #7
2002a124:	b2d1      	uxtb	r1, r2
2002a126:	f101 0c04 	add.w	ip, r1, #4
2002a12a:	f880 c004 	strb.w	ip, [r0, #4]
2002a12e:	f04f 0c06 	mov.w	ip, #6
2002a132:	7181      	strb	r1, [r0, #6]
2002a134:	f880 c005 	strb.w	ip, [r0, #5]
2002a138:	9907      	ldr	r1, [sp, #28]
2002a13a:	4640      	mov	r0, r8
2002a13c:	9203      	str	r2, [sp, #12]
2002a13e:	f000 fc43 	bl	2002a9c8 <memcpy>
2002a142:	2105      	movs	r1, #5
2002a144:	9a03      	ldr	r2, [sp, #12]
2002a146:	fa5f fb89 	uxtb.w	fp, r9
2002a14a:	eb08 0002 	add.w	r0, r8, r2
2002a14e:	f808 1002 	strb.w	r1, [r8, r2]
2002a152:	2204      	movs	r2, #4
2002a154:	7045      	strb	r5, [r0, #1]
2002a156:	7082      	strb	r2, [r0, #2]
2002a158:	f880 b003 	strb.w	fp, [r0, #3]
2002a15c:	464a      	mov	r2, r9
2002a15e:	9914      	ldr	r1, [sp, #80]	@ 0x50
2002a160:	3004      	adds	r0, #4
2002a162:	e7ca      	b.n	2002a0fa <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xa2>
2002a164:	6865      	ldr	r5, [r4, #4]
2002a166:	2001      	movs	r0, #1
2002a168:	4629      	mov	r1, r5
2002a16a:	f000 fb31 	bl	2002a7d0 <calloc>
2002a16e:	4607      	mov	r7, r0
2002a170:	b140      	cbz	r0, 2002a184 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x12c>
2002a172:	4629      	mov	r1, r5
2002a174:	2001      	movs	r0, #1
2002a176:	f000 fb2b 	bl	2002a7d0 <calloc>
2002a17a:	4680      	mov	r8, r0
2002a17c:	b928      	cbnz	r0, 2002a18a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x132>
2002a17e:	4638      	mov	r0, r7
2002a180:	f000 fb42 	bl	2002a808 <free>
2002a184:	f06f 050f 	mvn.w	r5, #15
2002a188:	e77b      	b.n	2002a082 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a18a:	4633      	mov	r3, r6
2002a18c:	4652      	mov	r2, sl
2002a18e:	4620      	mov	r0, r4
2002a190:	9902      	ldr	r1, [sp, #8]
2002a192:	9700      	str	r7, [sp, #0]
2002a194:	f7ff fcae 	bl	20029af4 <mbedtls_rsa_private>
2002a198:	4605      	mov	r5, r0
2002a19a:	b9a0      	cbnz	r0, 2002a1c6 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a19c:	4642      	mov	r2, r8
2002a19e:	4639      	mov	r1, r7
2002a1a0:	4620      	mov	r0, r4
2002a1a2:	f7ff fc71 	bl	20029a88 <mbedtls_rsa_public>
2002a1a6:	4605      	mov	r5, r0
2002a1a8:	b968      	cbnz	r0, 2002a1c6 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a1aa:	4601      	mov	r1, r0
2002a1ac:	4603      	mov	r3, r0
2002a1ae:	6862      	ldr	r2, [r4, #4]
2002a1b0:	429a      	cmp	r2, r3
2002a1b2:	d10f      	bne.n	2002a1d4 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x17c>
2002a1b4:	f88d 1017 	strb.w	r1, [sp, #23]
2002a1b8:	f89d 3017 	ldrb.w	r3, [sp, #23]
2002a1bc:	b98b      	cbnz	r3, 2002a1e2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x18a>
2002a1be:	4639      	mov	r1, r7
2002a1c0:	4630      	mov	r0, r6
2002a1c2:	f000 fc01 	bl	2002a9c8 <memcpy>
2002a1c6:	4638      	mov	r0, r7
2002a1c8:	f000 fb1e 	bl	2002a808 <free>
2002a1cc:	4640      	mov	r0, r8
2002a1ce:	f000 fb1b 	bl	2002a808 <free>
2002a1d2:	e756      	b.n	2002a082 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a1d4:	f818 0003 	ldrb.w	r0, [r8, r3]
2002a1d8:	5cf4      	ldrb	r4, [r6, r3]
2002a1da:	3301      	adds	r3, #1
2002a1dc:	4060      	eors	r0, r4
2002a1de:	4301      	orrs	r1, r0
2002a1e0:	e7e6      	b.n	2002a1b0 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x158>
2002a1e2:	4d02      	ldr	r5, [pc, #8]	@ (2002a1ec <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x194>)
2002a1e4:	e7ef      	b.n	2002a1c6 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a1e6:	bf00      	nop
2002a1e8:	ffffbf80 	.word	0xffffbf80
2002a1ec:	ffffbd00 	.word	0xffffbd00

2002a1f0 <mbedtls_rsa_pkcs1_sign>:
2002a1f0:	b430      	push	{r4, r5}
2002a1f2:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a1f6:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a1fa:	b91d      	cbnz	r5, 2002a204 <mbedtls_rsa_pkcs1_sign+0x14>
2002a1fc:	9402      	str	r4, [sp, #8]
2002a1fe:	bc30      	pop	{r4, r5}
2002a200:	f7ff bf2a 	b.w	2002a058 <mbedtls_rsa_rsassa_pkcs1_v15_sign>
2002a204:	4801      	ldr	r0, [pc, #4]	@ (2002a20c <mbedtls_rsa_pkcs1_sign+0x1c>)
2002a206:	bc30      	pop	{r4, r5}
2002a208:	4770      	bx	lr
2002a20a:	bf00      	nop
2002a20c:	ffffbf00 	.word	0xffffbf00

2002a210 <mbedtls_rsa_rsassa_pkcs1_v15_verify>:
2002a210:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a214:	461c      	mov	r4, r3
2002a216:	f2ad 4d2c 	subw	sp, sp, #1068	@ 0x42c
2002a21a:	f89d 3450 	ldrb.w	r3, [sp, #1104]	@ 0x450
2002a21e:	2c01      	cmp	r4, #1
2002a220:	9303      	str	r3, [sp, #12]
2002a222:	f8dd 8454 	ldr.w	r8, [sp, #1108]	@ 0x454
2002a226:	f8dd 345c 	ldr.w	r3, [sp, #1116]	@ 0x45c
2002a22a:	d108      	bne.n	2002a23e <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a22c:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a230:	b12d      	cbz	r5, 2002a23e <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a232:	4d60      	ldr	r5, [pc, #384]	@ (2002a3b4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a4>)
2002a234:	4628      	mov	r0, r5
2002a236:	f20d 4d2c 	addw	sp, sp, #1068	@ 0x42c
2002a23a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a23e:	6846      	ldr	r6, [r0, #4]
2002a240:	f1a6 0510 	sub.w	r5, r6, #16
2002a244:	f5b5 7f7c 	cmp.w	r5, #1008	@ 0x3f0
2002a248:	d8f3      	bhi.n	2002a232 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a24a:	af0a      	add	r7, sp, #40	@ 0x28
2002a24c:	b954      	cbnz	r4, 2002a264 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x54>
2002a24e:	463a      	mov	r2, r7
2002a250:	4619      	mov	r1, r3
2002a252:	f7ff fc19 	bl	20029a88 <mbedtls_rsa_public>
2002a256:	4605      	mov	r5, r0
2002a258:	2800      	cmp	r0, #0
2002a25a:	d1eb      	bne.n	2002a234 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a25c:	783b      	ldrb	r3, [r7, #0]
2002a25e:	b12b      	cbz	r3, 2002a26c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x5c>
2002a260:	4d55      	ldr	r5, [pc, #340]	@ (2002a3b8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a8>)
2002a262:	e7e7      	b.n	2002a234 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a264:	9700      	str	r7, [sp, #0]
2002a266:	f7ff fc45 	bl	20029af4 <mbedtls_rsa_private>
2002a26a:	e7f4      	b.n	2002a256 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x46>
2002a26c:	787b      	ldrb	r3, [r7, #1]
2002a26e:	ac06      	add	r4, sp, #24
2002a270:	f10d 002a 	add.w	r0, sp, #42	@ 0x2a
2002a274:	2b01      	cmp	r3, #1
2002a276:	6020      	str	r0, [r4, #0]
2002a278:	d1f2      	bne.n	2002a260 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a27a:	1e73      	subs	r3, r6, #1
2002a27c:	443b      	add	r3, r7
2002a27e:	7802      	ldrb	r2, [r0, #0]
2002a280:	b992      	cbnz	r2, 2002a2a8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x98>
2002a282:	3001      	adds	r0, #1
2002a284:	1bc7      	subs	r7, r0, r7
2002a286:	2f0a      	cmp	r7, #10
2002a288:	6020      	str	r0, [r4, #0]
2002a28a:	dde9      	ble.n	2002a260 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a28c:	1bf6      	subs	r6, r6, r7
2002a28e:	4546      	cmp	r6, r8
2002a290:	d112      	bne.n	2002a2b8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a292:	9b03      	ldr	r3, [sp, #12]
2002a294:	b983      	cbnz	r3, 2002a2b8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a296:	4642      	mov	r2, r8
2002a298:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a29c:	f000 fb6a 	bl	2002a974 <memcmp>
2002a2a0:	2800      	cmp	r0, #0
2002a2a2:	d0c7      	beq.n	2002a234 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a2a4:	4d45      	ldr	r5, [pc, #276]	@ (2002a3bc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1ac>)
2002a2a6:	e7c5      	b.n	2002a234 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a2a8:	4298      	cmp	r0, r3
2002a2aa:	d2d9      	bcs.n	2002a260 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a2ac:	2aff      	cmp	r2, #255	@ 0xff
2002a2ae:	f100 0001 	add.w	r0, r0, #1
2002a2b2:	d1d5      	bne.n	2002a260 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a2b4:	6020      	str	r0, [r4, #0]
2002a2b6:	e7e2      	b.n	2002a27e <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x6e>
2002a2b8:	9803      	ldr	r0, [sp, #12]
2002a2ba:	f7fb fe67 	bl	20025f8c <mbedtls_md_info_from_type>
2002a2be:	2800      	cmp	r0, #0
2002a2c0:	d0b7      	beq.n	2002a232 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a2c2:	f7fb fe6f 	bl	20025fa4 <mbedtls_md_get_size>
2002a2c6:	f8d4 a000 	ldr.w	sl, [r4]
2002a2ca:	af05      	add	r7, sp, #20
2002a2cc:	eb0a 0806 	add.w	r8, sl, r6
2002a2d0:	4681      	mov	r9, r0
2002a2d2:	2330      	movs	r3, #48	@ 0x30
2002a2d4:	463a      	mov	r2, r7
2002a2d6:	4641      	mov	r1, r8
2002a2d8:	4620      	mov	r0, r4
2002a2da:	f7fd fb95 	bl	20027a08 <mbedtls_asn1_get_tag>
2002a2de:	2800      	cmp	r0, #0
2002a2e0:	d1e0      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a2e2:	f8d4 b000 	ldr.w	fp, [r4]
2002a2e6:	f10a 0a02 	add.w	sl, sl, #2
2002a2ea:	45d3      	cmp	fp, sl
2002a2ec:	d1da      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a2ee:	683b      	ldr	r3, [r7, #0]
2002a2f0:	3302      	adds	r3, #2
2002a2f2:	42b3      	cmp	r3, r6
2002a2f4:	d1d6      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a2f6:	2330      	movs	r3, #48	@ 0x30
2002a2f8:	463a      	mov	r2, r7
2002a2fa:	4641      	mov	r1, r8
2002a2fc:	4620      	mov	r0, r4
2002a2fe:	f7fd fb83 	bl	20027a08 <mbedtls_asn1_get_tag>
2002a302:	2800      	cmp	r0, #0
2002a304:	d1ce      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a306:	f8d4 a000 	ldr.w	sl, [r4]
2002a30a:	f10b 0b02 	add.w	fp, fp, #2
2002a30e:	45da      	cmp	sl, fp
2002a310:	d1c8      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a312:	683b      	ldr	r3, [r7, #0]
2002a314:	3306      	adds	r3, #6
2002a316:	444b      	add	r3, r9
2002a318:	42b3      	cmp	r3, r6
2002a31a:	d1c3      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a31c:	2306      	movs	r3, #6
2002a31e:	4641      	mov	r1, r8
2002a320:	4620      	mov	r0, r4
2002a322:	aa08      	add	r2, sp, #32
2002a324:	ae07      	add	r6, sp, #28
2002a326:	f7fd fb6f 	bl	20027a08 <mbedtls_asn1_get_tag>
2002a32a:	2800      	cmp	r0, #0
2002a32c:	d1ba      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a32e:	6823      	ldr	r3, [r4, #0]
2002a330:	f10a 0a02 	add.w	sl, sl, #2
2002a334:	4553      	cmp	r3, sl
2002a336:	d1b5      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a338:	9a08      	ldr	r2, [sp, #32]
2002a33a:	f10d 0a13 	add.w	sl, sp, #19
2002a33e:	9309      	str	r3, [sp, #36]	@ 0x24
2002a340:	4651      	mov	r1, sl
2002a342:	4413      	add	r3, r2
2002a344:	4630      	mov	r0, r6
2002a346:	6023      	str	r3, [r4, #0]
2002a348:	f7ff f86a 	bl	20029420 <mbedtls_oid_get_md_alg>
2002a34c:	2800      	cmp	r0, #0
2002a34e:	d1a9      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a350:	f89d 3013 	ldrb.w	r3, [sp, #19]
2002a354:	9a03      	ldr	r2, [sp, #12]
2002a356:	4293      	cmp	r3, r2
2002a358:	d1a4      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a35a:	2305      	movs	r3, #5
2002a35c:	463a      	mov	r2, r7
2002a35e:	4641      	mov	r1, r8
2002a360:	4620      	mov	r0, r4
2002a362:	f8d4 a000 	ldr.w	sl, [r4]
2002a366:	f7fd fb4f 	bl	20027a08 <mbedtls_asn1_get_tag>
2002a36a:	2800      	cmp	r0, #0
2002a36c:	d19a      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a36e:	6826      	ldr	r6, [r4, #0]
2002a370:	f10a 0a02 	add.w	sl, sl, #2
2002a374:	4556      	cmp	r6, sl
2002a376:	d195      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a378:	2304      	movs	r3, #4
2002a37a:	463a      	mov	r2, r7
2002a37c:	4641      	mov	r1, r8
2002a37e:	4620      	mov	r0, r4
2002a380:	f7fd fb42 	bl	20027a08 <mbedtls_asn1_get_tag>
2002a384:	2800      	cmp	r0, #0
2002a386:	d18d      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a388:	6824      	ldr	r4, [r4, #0]
2002a38a:	3602      	adds	r6, #2
2002a38c:	42b4      	cmp	r4, r6
2002a38e:	d189      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a390:	683b      	ldr	r3, [r7, #0]
2002a392:	454b      	cmp	r3, r9
2002a394:	d186      	bne.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a396:	464a      	mov	r2, r9
2002a398:	4620      	mov	r0, r4
2002a39a:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a39e:	f000 fae9 	bl	2002a974 <memcmp>
2002a3a2:	2800      	cmp	r0, #0
2002a3a4:	f47f af7e 	bne.w	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a3a8:	444c      	add	r4, r9
2002a3aa:	45a0      	cmp	r8, r4
2002a3ac:	f43f af42 	beq.w	2002a234 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a3b0:	e778      	b.n	2002a2a4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a3b2:	bf00      	nop
2002a3b4:	ffffbf80 	.word	0xffffbf80
2002a3b8:	ffffbf00 	.word	0xffffbf00
2002a3bc:	ffffbc80 	.word	0xffffbc80

2002a3c0 <mbedtls_rsa_pkcs1_verify>:
2002a3c0:	b430      	push	{r4, r5}
2002a3c2:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a3c6:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a3ca:	b91d      	cbnz	r5, 2002a3d4 <mbedtls_rsa_pkcs1_verify+0x14>
2002a3cc:	9402      	str	r4, [sp, #8]
2002a3ce:	bc30      	pop	{r4, r5}
2002a3d0:	f7ff bf1e 	b.w	2002a210 <mbedtls_rsa_rsassa_pkcs1_v15_verify>
2002a3d4:	4801      	ldr	r0, [pc, #4]	@ (2002a3dc <mbedtls_rsa_pkcs1_verify+0x1c>)
2002a3d6:	bc30      	pop	{r4, r5}
2002a3d8:	4770      	bx	lr
2002a3da:	bf00      	nop
2002a3dc:	ffffbf00 	.word	0xffffbf00

2002a3e0 <mbedtls_rsa_free>:
2002a3e0:	b510      	push	{r4, lr}
2002a3e2:	4604      	mov	r4, r0
2002a3e4:	308c      	adds	r0, #140	@ 0x8c
2002a3e6:	f7fd fd44 	bl	20027e72 <mbedtls_mpi_free>
2002a3ea:	f104 0098 	add.w	r0, r4, #152	@ 0x98
2002a3ee:	f7fd fd40 	bl	20027e72 <mbedtls_mpi_free>
2002a3f2:	f104 0080 	add.w	r0, r4, #128	@ 0x80
2002a3f6:	f7fd fd3c 	bl	20027e72 <mbedtls_mpi_free>
2002a3fa:	f104 0074 	add.w	r0, r4, #116	@ 0x74
2002a3fe:	f7fd fd38 	bl	20027e72 <mbedtls_mpi_free>
2002a402:	f104 0068 	add.w	r0, r4, #104	@ 0x68
2002a406:	f7fd fd34 	bl	20027e72 <mbedtls_mpi_free>
2002a40a:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
2002a40e:	f7fd fd30 	bl	20027e72 <mbedtls_mpi_free>
2002a412:	f104 0050 	add.w	r0, r4, #80	@ 0x50
2002a416:	f7fd fd2c 	bl	20027e72 <mbedtls_mpi_free>
2002a41a:	f104 0044 	add.w	r0, r4, #68	@ 0x44
2002a41e:	f7fd fd28 	bl	20027e72 <mbedtls_mpi_free>
2002a422:	f104 0038 	add.w	r0, r4, #56	@ 0x38
2002a426:	f7fd fd24 	bl	20027e72 <mbedtls_mpi_free>
2002a42a:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
2002a42e:	f7fd fd20 	bl	20027e72 <mbedtls_mpi_free>
2002a432:	f104 0020 	add.w	r0, r4, #32
2002a436:	f7fd fd1c 	bl	20027e72 <mbedtls_mpi_free>
2002a43a:	f104 0014 	add.w	r0, r4, #20
2002a43e:	f7fd fd18 	bl	20027e72 <mbedtls_mpi_free>
2002a442:	f104 0008 	add.w	r0, r4, #8
2002a446:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002a44a:	f7fd bd12 	b.w	20027e72 <mbedtls_mpi_free>
	...

2002a450 <__aeabi_uldivmod>:
2002a450:	b953      	cbnz	r3, 2002a468 <__aeabi_uldivmod+0x18>
2002a452:	b94a      	cbnz	r2, 2002a468 <__aeabi_uldivmod+0x18>
2002a454:	2900      	cmp	r1, #0
2002a456:	bf08      	it	eq
2002a458:	2800      	cmpeq	r0, #0
2002a45a:	bf1c      	itt	ne
2002a45c:	f04f 31ff 	movne.w	r1, #4294967295
2002a460:	f04f 30ff 	movne.w	r0, #4294967295
2002a464:	f000 b9b2 	b.w	2002a7cc <__aeabi_idiv0>
2002a468:	f1ad 0c08 	sub.w	ip, sp, #8
2002a46c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
2002a470:	f000 f806 	bl	2002a480 <__udivmoddi4>
2002a474:	f8dd e004 	ldr.w	lr, [sp, #4]
2002a478:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
2002a47c:	b004      	add	sp, #16
2002a47e:	4770      	bx	lr

2002a480 <__udivmoddi4>:
2002a480:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a484:	468c      	mov	ip, r1
2002a486:	9e09      	ldr	r6, [sp, #36]	@ 0x24
2002a488:	4604      	mov	r4, r0
2002a48a:	460f      	mov	r7, r1
2002a48c:	2b00      	cmp	r3, #0
2002a48e:	d148      	bne.n	2002a522 <__udivmoddi4+0xa2>
2002a490:	428a      	cmp	r2, r1
2002a492:	4615      	mov	r5, r2
2002a494:	d95e      	bls.n	2002a554 <__udivmoddi4+0xd4>
2002a496:	fab2 f382 	clz	r3, r2
2002a49a:	b13b      	cbz	r3, 2002a4ac <__udivmoddi4+0x2c>
2002a49c:	f1c3 0220 	rsb	r2, r3, #32
2002a4a0:	409f      	lsls	r7, r3
2002a4a2:	409d      	lsls	r5, r3
2002a4a4:	409c      	lsls	r4, r3
2002a4a6:	fa20 f202 	lsr.w	r2, r0, r2
2002a4aa:	4317      	orrs	r7, r2
2002a4ac:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a4b0:	fa1f fc85 	uxth.w	ip, r5
2002a4b4:	0c22      	lsrs	r2, r4, #16
2002a4b6:	fbb7 f1fe 	udiv	r1, r7, lr
2002a4ba:	fb0e 7711 	mls	r7, lr, r1, r7
2002a4be:	fb01 f00c 	mul.w	r0, r1, ip
2002a4c2:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
2002a4c6:	4290      	cmp	r0, r2
2002a4c8:	d907      	bls.n	2002a4da <__udivmoddi4+0x5a>
2002a4ca:	18aa      	adds	r2, r5, r2
2002a4cc:	f101 37ff 	add.w	r7, r1, #4294967295
2002a4d0:	d202      	bcs.n	2002a4d8 <__udivmoddi4+0x58>
2002a4d2:	4290      	cmp	r0, r2
2002a4d4:	f200 8158 	bhi.w	2002a788 <__udivmoddi4+0x308>
2002a4d8:	4639      	mov	r1, r7
2002a4da:	1a12      	subs	r2, r2, r0
2002a4dc:	b2a4      	uxth	r4, r4
2002a4de:	fbb2 f0fe 	udiv	r0, r2, lr
2002a4e2:	fb0e 2210 	mls	r2, lr, r0, r2
2002a4e6:	fb00 fc0c 	mul.w	ip, r0, ip
2002a4ea:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a4ee:	45a4      	cmp	ip, r4
2002a4f0:	d90b      	bls.n	2002a50a <__udivmoddi4+0x8a>
2002a4f2:	192c      	adds	r4, r5, r4
2002a4f4:	f100 32ff 	add.w	r2, r0, #4294967295
2002a4f8:	bf2c      	ite	cs
2002a4fa:	2701      	movcs	r7, #1
2002a4fc:	2700      	movcc	r7, #0
2002a4fe:	45a4      	cmp	ip, r4
2002a500:	d902      	bls.n	2002a508 <__udivmoddi4+0x88>
2002a502:	2f00      	cmp	r7, #0
2002a504:	f000 8143 	beq.w	2002a78e <__udivmoddi4+0x30e>
2002a508:	4610      	mov	r0, r2
2002a50a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
2002a50e:	eba4 040c 	sub.w	r4, r4, ip
2002a512:	2100      	movs	r1, #0
2002a514:	b11e      	cbz	r6, 2002a51e <__udivmoddi4+0x9e>
2002a516:	40dc      	lsrs	r4, r3
2002a518:	2300      	movs	r3, #0
2002a51a:	e9c6 4300 	strd	r4, r3, [r6]
2002a51e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a522:	428b      	cmp	r3, r1
2002a524:	d906      	bls.n	2002a534 <__udivmoddi4+0xb4>
2002a526:	b10e      	cbz	r6, 2002a52c <__udivmoddi4+0xac>
2002a528:	e9c6 0100 	strd	r0, r1, [r6]
2002a52c:	2100      	movs	r1, #0
2002a52e:	4608      	mov	r0, r1
2002a530:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a534:	fab3 f183 	clz	r1, r3
2002a538:	2900      	cmp	r1, #0
2002a53a:	d151      	bne.n	2002a5e0 <__udivmoddi4+0x160>
2002a53c:	4563      	cmp	r3, ip
2002a53e:	f0c0 8116 	bcc.w	2002a76e <__udivmoddi4+0x2ee>
2002a542:	4282      	cmp	r2, r0
2002a544:	f240 8113 	bls.w	2002a76e <__udivmoddi4+0x2ee>
2002a548:	4608      	mov	r0, r1
2002a54a:	2e00      	cmp	r6, #0
2002a54c:	d0e7      	beq.n	2002a51e <__udivmoddi4+0x9e>
2002a54e:	e9c6 4700 	strd	r4, r7, [r6]
2002a552:	e7e4      	b.n	2002a51e <__udivmoddi4+0x9e>
2002a554:	2a00      	cmp	r2, #0
2002a556:	f000 80af 	beq.w	2002a6b8 <__udivmoddi4+0x238>
2002a55a:	fab2 f382 	clz	r3, r2
2002a55e:	2b00      	cmp	r3, #0
2002a560:	f040 80c2 	bne.w	2002a6e8 <__udivmoddi4+0x268>
2002a564:	1a8a      	subs	r2, r1, r2
2002a566:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a56a:	b2af      	uxth	r7, r5
2002a56c:	2101      	movs	r1, #1
2002a56e:	0c20      	lsrs	r0, r4, #16
2002a570:	fbb2 fcfe 	udiv	ip, r2, lr
2002a574:	fb0e 221c 	mls	r2, lr, ip, r2
2002a578:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
2002a57c:	fb07 f00c 	mul.w	r0, r7, ip
2002a580:	4290      	cmp	r0, r2
2002a582:	d90e      	bls.n	2002a5a2 <__udivmoddi4+0x122>
2002a584:	18aa      	adds	r2, r5, r2
2002a586:	f10c 38ff 	add.w	r8, ip, #4294967295
2002a58a:	bf2c      	ite	cs
2002a58c:	f04f 0901 	movcs.w	r9, #1
2002a590:	f04f 0900 	movcc.w	r9, #0
2002a594:	4290      	cmp	r0, r2
2002a596:	d903      	bls.n	2002a5a0 <__udivmoddi4+0x120>
2002a598:	f1b9 0f00 	cmp.w	r9, #0
2002a59c:	f000 80f0 	beq.w	2002a780 <__udivmoddi4+0x300>
2002a5a0:	46c4      	mov	ip, r8
2002a5a2:	1a12      	subs	r2, r2, r0
2002a5a4:	b2a4      	uxth	r4, r4
2002a5a6:	fbb2 f0fe 	udiv	r0, r2, lr
2002a5aa:	fb0e 2210 	mls	r2, lr, r0, r2
2002a5ae:	fb00 f707 	mul.w	r7, r0, r7
2002a5b2:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a5b6:	42a7      	cmp	r7, r4
2002a5b8:	d90e      	bls.n	2002a5d8 <__udivmoddi4+0x158>
2002a5ba:	192c      	adds	r4, r5, r4
2002a5bc:	f100 32ff 	add.w	r2, r0, #4294967295
2002a5c0:	bf2c      	ite	cs
2002a5c2:	f04f 0e01 	movcs.w	lr, #1
2002a5c6:	f04f 0e00 	movcc.w	lr, #0
2002a5ca:	42a7      	cmp	r7, r4
2002a5cc:	d903      	bls.n	2002a5d6 <__udivmoddi4+0x156>
2002a5ce:	f1be 0f00 	cmp.w	lr, #0
2002a5d2:	f000 80d2 	beq.w	2002a77a <__udivmoddi4+0x2fa>
2002a5d6:	4610      	mov	r0, r2
2002a5d8:	1be4      	subs	r4, r4, r7
2002a5da:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
2002a5de:	e799      	b.n	2002a514 <__udivmoddi4+0x94>
2002a5e0:	f1c1 0520 	rsb	r5, r1, #32
2002a5e4:	408b      	lsls	r3, r1
2002a5e6:	fa0c f401 	lsl.w	r4, ip, r1
2002a5ea:	fa00 f901 	lsl.w	r9, r0, r1
2002a5ee:	fa22 f705 	lsr.w	r7, r2, r5
2002a5f2:	fa2c fc05 	lsr.w	ip, ip, r5
2002a5f6:	408a      	lsls	r2, r1
2002a5f8:	431f      	orrs	r7, r3
2002a5fa:	fa20 f305 	lsr.w	r3, r0, r5
2002a5fe:	0c38      	lsrs	r0, r7, #16
2002a600:	4323      	orrs	r3, r4
2002a602:	fa1f fe87 	uxth.w	lr, r7
2002a606:	0c1c      	lsrs	r4, r3, #16
2002a608:	fbbc f8f0 	udiv	r8, ip, r0
2002a60c:	fb00 cc18 	mls	ip, r0, r8, ip
2002a610:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
2002a614:	fb08 fc0e 	mul.w	ip, r8, lr
2002a618:	45a4      	cmp	ip, r4
2002a61a:	d90e      	bls.n	2002a63a <__udivmoddi4+0x1ba>
2002a61c:	193c      	adds	r4, r7, r4
2002a61e:	f108 3aff 	add.w	sl, r8, #4294967295
2002a622:	bf2c      	ite	cs
2002a624:	f04f 0b01 	movcs.w	fp, #1
2002a628:	f04f 0b00 	movcc.w	fp, #0
2002a62c:	45a4      	cmp	ip, r4
2002a62e:	d903      	bls.n	2002a638 <__udivmoddi4+0x1b8>
2002a630:	f1bb 0f00 	cmp.w	fp, #0
2002a634:	f000 80b8 	beq.w	2002a7a8 <__udivmoddi4+0x328>
2002a638:	46d0      	mov	r8, sl
2002a63a:	eba4 040c 	sub.w	r4, r4, ip
2002a63e:	fa1f fc83 	uxth.w	ip, r3
2002a642:	fbb4 f3f0 	udiv	r3, r4, r0
2002a646:	fb00 4413 	mls	r4, r0, r3, r4
2002a64a:	fb03 fe0e 	mul.w	lr, r3, lr
2002a64e:	ea4c 4404 	orr.w	r4, ip, r4, lsl #16
2002a652:	45a6      	cmp	lr, r4
2002a654:	d90e      	bls.n	2002a674 <__udivmoddi4+0x1f4>
2002a656:	193c      	adds	r4, r7, r4
2002a658:	f103 30ff 	add.w	r0, r3, #4294967295
2002a65c:	bf2c      	ite	cs
2002a65e:	f04f 0c01 	movcs.w	ip, #1
2002a662:	f04f 0c00 	movcc.w	ip, #0
2002a666:	45a6      	cmp	lr, r4
2002a668:	d903      	bls.n	2002a672 <__udivmoddi4+0x1f2>
2002a66a:	f1bc 0f00 	cmp.w	ip, #0
2002a66e:	f000 809f 	beq.w	2002a7b0 <__udivmoddi4+0x330>
2002a672:	4603      	mov	r3, r0
2002a674:	ea43 4008 	orr.w	r0, r3, r8, lsl #16
2002a678:	eba4 040e 	sub.w	r4, r4, lr
2002a67c:	fba0 ec02 	umull	lr, ip, r0, r2
2002a680:	4564      	cmp	r4, ip
2002a682:	4673      	mov	r3, lr
2002a684:	46e0      	mov	r8, ip
2002a686:	d302      	bcc.n	2002a68e <__udivmoddi4+0x20e>
2002a688:	d107      	bne.n	2002a69a <__udivmoddi4+0x21a>
2002a68a:	45f1      	cmp	r9, lr
2002a68c:	d205      	bcs.n	2002a69a <__udivmoddi4+0x21a>
2002a68e:	ebbe 0302 	subs.w	r3, lr, r2
2002a692:	eb6c 0c07 	sbc.w	ip, ip, r7
2002a696:	3801      	subs	r0, #1
2002a698:	46e0      	mov	r8, ip
2002a69a:	b15e      	cbz	r6, 2002a6b4 <__udivmoddi4+0x234>
2002a69c:	ebb9 0203 	subs.w	r2, r9, r3
2002a6a0:	eb64 0408 	sbc.w	r4, r4, r8
2002a6a4:	fa04 f505 	lsl.w	r5, r4, r5
2002a6a8:	fa22 f301 	lsr.w	r3, r2, r1
2002a6ac:	40cc      	lsrs	r4, r1
2002a6ae:	431d      	orrs	r5, r3
2002a6b0:	e9c6 5400 	strd	r5, r4, [r6]
2002a6b4:	2100      	movs	r1, #0
2002a6b6:	e732      	b.n	2002a51e <__udivmoddi4+0x9e>
2002a6b8:	0842      	lsrs	r2, r0, #1
2002a6ba:	462f      	mov	r7, r5
2002a6bc:	084b      	lsrs	r3, r1, #1
2002a6be:	46ac      	mov	ip, r5
2002a6c0:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
2002a6c4:	46ae      	mov	lr, r5
2002a6c6:	07c4      	lsls	r4, r0, #31
2002a6c8:	0c11      	lsrs	r1, r2, #16
2002a6ca:	b292      	uxth	r2, r2
2002a6cc:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
2002a6d0:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a6d4:	fbb1 f1f5 	udiv	r1, r1, r5
2002a6d8:	fbb3 f0f5 	udiv	r0, r3, r5
2002a6dc:	231f      	movs	r3, #31
2002a6de:	eba2 020c 	sub.w	r2, r2, ip
2002a6e2:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
2002a6e6:	e742      	b.n	2002a56e <__udivmoddi4+0xee>
2002a6e8:	409d      	lsls	r5, r3
2002a6ea:	f1c3 0220 	rsb	r2, r3, #32
2002a6ee:	4099      	lsls	r1, r3
2002a6f0:	409c      	lsls	r4, r3
2002a6f2:	fa2c fc02 	lsr.w	ip, ip, r2
2002a6f6:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a6fa:	fa20 f202 	lsr.w	r2, r0, r2
2002a6fe:	b2af      	uxth	r7, r5
2002a700:	fbbc f8fe 	udiv	r8, ip, lr
2002a704:	430a      	orrs	r2, r1
2002a706:	fb0e cc18 	mls	ip, lr, r8, ip
2002a70a:	0c11      	lsrs	r1, r2, #16
2002a70c:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
2002a710:	fb08 fc07 	mul.w	ip, r8, r7
2002a714:	458c      	cmp	ip, r1
2002a716:	d950      	bls.n	2002a7ba <__udivmoddi4+0x33a>
2002a718:	1869      	adds	r1, r5, r1
2002a71a:	f108 30ff 	add.w	r0, r8, #4294967295
2002a71e:	bf2c      	ite	cs
2002a720:	f04f 0901 	movcs.w	r9, #1
2002a724:	f04f 0900 	movcc.w	r9, #0
2002a728:	458c      	cmp	ip, r1
2002a72a:	d902      	bls.n	2002a732 <__udivmoddi4+0x2b2>
2002a72c:	f1b9 0f00 	cmp.w	r9, #0
2002a730:	d030      	beq.n	2002a794 <__udivmoddi4+0x314>
2002a732:	eba1 010c 	sub.w	r1, r1, ip
2002a736:	fbb1 f8fe 	udiv	r8, r1, lr
2002a73a:	fb08 fc07 	mul.w	ip, r8, r7
2002a73e:	fb0e 1118 	mls	r1, lr, r8, r1
2002a742:	b292      	uxth	r2, r2
2002a744:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a748:	4562      	cmp	r2, ip
2002a74a:	d234      	bcs.n	2002a7b6 <__udivmoddi4+0x336>
2002a74c:	18aa      	adds	r2, r5, r2
2002a74e:	f108 31ff 	add.w	r1, r8, #4294967295
2002a752:	bf2c      	ite	cs
2002a754:	f04f 0901 	movcs.w	r9, #1
2002a758:	f04f 0900 	movcc.w	r9, #0
2002a75c:	4562      	cmp	r2, ip
2002a75e:	d2be      	bcs.n	2002a6de <__udivmoddi4+0x25e>
2002a760:	f1b9 0f00 	cmp.w	r9, #0
2002a764:	d1bb      	bne.n	2002a6de <__udivmoddi4+0x25e>
2002a766:	f1a8 0102 	sub.w	r1, r8, #2
2002a76a:	442a      	add	r2, r5
2002a76c:	e7b7      	b.n	2002a6de <__udivmoddi4+0x25e>
2002a76e:	1a84      	subs	r4, r0, r2
2002a770:	eb6c 0203 	sbc.w	r2, ip, r3
2002a774:	2001      	movs	r0, #1
2002a776:	4617      	mov	r7, r2
2002a778:	e6e7      	b.n	2002a54a <__udivmoddi4+0xca>
2002a77a:	442c      	add	r4, r5
2002a77c:	3802      	subs	r0, #2
2002a77e:	e72b      	b.n	2002a5d8 <__udivmoddi4+0x158>
2002a780:	f1ac 0c02 	sub.w	ip, ip, #2
2002a784:	442a      	add	r2, r5
2002a786:	e70c      	b.n	2002a5a2 <__udivmoddi4+0x122>
2002a788:	3902      	subs	r1, #2
2002a78a:	442a      	add	r2, r5
2002a78c:	e6a5      	b.n	2002a4da <__udivmoddi4+0x5a>
2002a78e:	442c      	add	r4, r5
2002a790:	3802      	subs	r0, #2
2002a792:	e6ba      	b.n	2002a50a <__udivmoddi4+0x8a>
2002a794:	eba5 0c0c 	sub.w	ip, r5, ip
2002a798:	f1a8 0002 	sub.w	r0, r8, #2
2002a79c:	4461      	add	r1, ip
2002a79e:	fbb1 f8fe 	udiv	r8, r1, lr
2002a7a2:	fb08 fc07 	mul.w	ip, r8, r7
2002a7a6:	e7ca      	b.n	2002a73e <__udivmoddi4+0x2be>
2002a7a8:	f1a8 0802 	sub.w	r8, r8, #2
2002a7ac:	443c      	add	r4, r7
2002a7ae:	e744      	b.n	2002a63a <__udivmoddi4+0x1ba>
2002a7b0:	3b02      	subs	r3, #2
2002a7b2:	443c      	add	r4, r7
2002a7b4:	e75e      	b.n	2002a674 <__udivmoddi4+0x1f4>
2002a7b6:	4641      	mov	r1, r8
2002a7b8:	e791      	b.n	2002a6de <__udivmoddi4+0x25e>
2002a7ba:	eba1 010c 	sub.w	r1, r1, ip
2002a7be:	4640      	mov	r0, r8
2002a7c0:	fbb1 f8fe 	udiv	r8, r1, lr
2002a7c4:	fb08 fc07 	mul.w	ip, r8, r7
2002a7c8:	e7b9      	b.n	2002a73e <__udivmoddi4+0x2be>
2002a7ca:	bf00      	nop

2002a7cc <__aeabi_idiv0>:
2002a7cc:	4770      	bx	lr
2002a7ce:	bf00      	nop

2002a7d0 <calloc>:
2002a7d0:	4b02      	ldr	r3, [pc, #8]	@ (2002a7dc <calloc+0xc>)
2002a7d2:	460a      	mov	r2, r1
2002a7d4:	4601      	mov	r1, r0
2002a7d6:	6818      	ldr	r0, [r3, #0]
2002a7d8:	f000 b802 	b.w	2002a7e0 <_calloc_r>
2002a7dc:	20044908 	.word	0x20044908

2002a7e0 <_calloc_r>:
2002a7e0:	b570      	push	{r4, r5, r6, lr}
2002a7e2:	fba1 5402 	umull	r5, r4, r1, r2
2002a7e6:	b934      	cbnz	r4, 2002a7f6 <_calloc_r+0x16>
2002a7e8:	4629      	mov	r1, r5
2002a7ea:	f000 f837 	bl	2002a85c <_malloc_r>
2002a7ee:	4606      	mov	r6, r0
2002a7f0:	b928      	cbnz	r0, 2002a7fe <_calloc_r+0x1e>
2002a7f2:	4630      	mov	r0, r6
2002a7f4:	bd70      	pop	{r4, r5, r6, pc}
2002a7f6:	220c      	movs	r2, #12
2002a7f8:	2600      	movs	r6, #0
2002a7fa:	6002      	str	r2, [r0, #0]
2002a7fc:	e7f9      	b.n	2002a7f2 <_calloc_r+0x12>
2002a7fe:	462a      	mov	r2, r5
2002a800:	4621      	mov	r1, r4
2002a802:	f000 f8c7 	bl	2002a994 <memset>
2002a806:	e7f4      	b.n	2002a7f2 <_calloc_r+0x12>

2002a808 <free>:
2002a808:	4b02      	ldr	r3, [pc, #8]	@ (2002a814 <free+0xc>)
2002a80a:	4601      	mov	r1, r0
2002a80c:	6818      	ldr	r0, [r3, #0]
2002a80e:	f000 b8e9 	b.w	2002a9e4 <_free_r>
2002a812:	bf00      	nop
2002a814:	20044908 	.word	0x20044908

2002a818 <sbrk_aligned>:
2002a818:	b570      	push	{r4, r5, r6, lr}
2002a81a:	4e0f      	ldr	r6, [pc, #60]	@ (2002a858 <sbrk_aligned+0x40>)
2002a81c:	460c      	mov	r4, r1
2002a81e:	4605      	mov	r5, r0
2002a820:	6831      	ldr	r1, [r6, #0]
2002a822:	b911      	cbnz	r1, 2002a82a <sbrk_aligned+0x12>
2002a824:	f000 f8be 	bl	2002a9a4 <_sbrk_r>
2002a828:	6030      	str	r0, [r6, #0]
2002a82a:	4621      	mov	r1, r4
2002a82c:	4628      	mov	r0, r5
2002a82e:	f000 f8b9 	bl	2002a9a4 <_sbrk_r>
2002a832:	1c43      	adds	r3, r0, #1
2002a834:	d103      	bne.n	2002a83e <sbrk_aligned+0x26>
2002a836:	f04f 34ff 	mov.w	r4, #4294967295
2002a83a:	4620      	mov	r0, r4
2002a83c:	bd70      	pop	{r4, r5, r6, pc}
2002a83e:	1cc4      	adds	r4, r0, #3
2002a840:	f024 0403 	bic.w	r4, r4, #3
2002a844:	42a0      	cmp	r0, r4
2002a846:	d0f8      	beq.n	2002a83a <sbrk_aligned+0x22>
2002a848:	1a21      	subs	r1, r4, r0
2002a84a:	4628      	mov	r0, r5
2002a84c:	f000 f8aa 	bl	2002a9a4 <_sbrk_r>
2002a850:	3001      	adds	r0, #1
2002a852:	d1f2      	bne.n	2002a83a <sbrk_aligned+0x22>
2002a854:	e7ef      	b.n	2002a836 <sbrk_aligned+0x1e>
2002a856:	bf00      	nop
2002a858:	2004a3b4 	.word	0x2004a3b4

2002a85c <_malloc_r>:
2002a85c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002a860:	1ccd      	adds	r5, r1, #3
2002a862:	4606      	mov	r6, r0
2002a864:	f025 0503 	bic.w	r5, r5, #3
2002a868:	3508      	adds	r5, #8
2002a86a:	2d0c      	cmp	r5, #12
2002a86c:	bf38      	it	cc
2002a86e:	250c      	movcc	r5, #12
2002a870:	2d00      	cmp	r5, #0
2002a872:	db01      	blt.n	2002a878 <_malloc_r+0x1c>
2002a874:	42a9      	cmp	r1, r5
2002a876:	d904      	bls.n	2002a882 <_malloc_r+0x26>
2002a878:	230c      	movs	r3, #12
2002a87a:	6033      	str	r3, [r6, #0]
2002a87c:	2000      	movs	r0, #0
2002a87e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002a882:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 2002a958 <_malloc_r+0xfc>
2002a886:	f000 f869 	bl	2002a95c <__malloc_lock>
2002a88a:	f8d8 3000 	ldr.w	r3, [r8]
2002a88e:	461c      	mov	r4, r3
2002a890:	bb44      	cbnz	r4, 2002a8e4 <_malloc_r+0x88>
2002a892:	4629      	mov	r1, r5
2002a894:	4630      	mov	r0, r6
2002a896:	f7ff ffbf 	bl	2002a818 <sbrk_aligned>
2002a89a:	1c43      	adds	r3, r0, #1
2002a89c:	4604      	mov	r4, r0
2002a89e:	d158      	bne.n	2002a952 <_malloc_r+0xf6>
2002a8a0:	f8d8 4000 	ldr.w	r4, [r8]
2002a8a4:	4627      	mov	r7, r4
2002a8a6:	2f00      	cmp	r7, #0
2002a8a8:	d143      	bne.n	2002a932 <_malloc_r+0xd6>
2002a8aa:	2c00      	cmp	r4, #0
2002a8ac:	d04b      	beq.n	2002a946 <_malloc_r+0xea>
2002a8ae:	6823      	ldr	r3, [r4, #0]
2002a8b0:	4639      	mov	r1, r7
2002a8b2:	4630      	mov	r0, r6
2002a8b4:	eb04 0903 	add.w	r9, r4, r3
2002a8b8:	f000 f874 	bl	2002a9a4 <_sbrk_r>
2002a8bc:	4581      	cmp	r9, r0
2002a8be:	d142      	bne.n	2002a946 <_malloc_r+0xea>
2002a8c0:	6821      	ldr	r1, [r4, #0]
2002a8c2:	4630      	mov	r0, r6
2002a8c4:	1a6d      	subs	r5, r5, r1
2002a8c6:	4629      	mov	r1, r5
2002a8c8:	f7ff ffa6 	bl	2002a818 <sbrk_aligned>
2002a8cc:	3001      	adds	r0, #1
2002a8ce:	d03a      	beq.n	2002a946 <_malloc_r+0xea>
2002a8d0:	6823      	ldr	r3, [r4, #0]
2002a8d2:	442b      	add	r3, r5
2002a8d4:	6023      	str	r3, [r4, #0]
2002a8d6:	f8d8 3000 	ldr.w	r3, [r8]
2002a8da:	685a      	ldr	r2, [r3, #4]
2002a8dc:	bb62      	cbnz	r2, 2002a938 <_malloc_r+0xdc>
2002a8de:	f8c8 7000 	str.w	r7, [r8]
2002a8e2:	e00f      	b.n	2002a904 <_malloc_r+0xa8>
2002a8e4:	6822      	ldr	r2, [r4, #0]
2002a8e6:	1b52      	subs	r2, r2, r5
2002a8e8:	d420      	bmi.n	2002a92c <_malloc_r+0xd0>
2002a8ea:	2a0b      	cmp	r2, #11
2002a8ec:	d917      	bls.n	2002a91e <_malloc_r+0xc2>
2002a8ee:	1961      	adds	r1, r4, r5
2002a8f0:	42a3      	cmp	r3, r4
2002a8f2:	6025      	str	r5, [r4, #0]
2002a8f4:	bf18      	it	ne
2002a8f6:	6059      	strne	r1, [r3, #4]
2002a8f8:	6863      	ldr	r3, [r4, #4]
2002a8fa:	bf08      	it	eq
2002a8fc:	f8c8 1000 	streq.w	r1, [r8]
2002a900:	5162      	str	r2, [r4, r5]
2002a902:	604b      	str	r3, [r1, #4]
2002a904:	4630      	mov	r0, r6
2002a906:	f000 f82f 	bl	2002a968 <__malloc_unlock>
2002a90a:	f104 000b 	add.w	r0, r4, #11
2002a90e:	1d23      	adds	r3, r4, #4
2002a910:	f020 0007 	bic.w	r0, r0, #7
2002a914:	1ac2      	subs	r2, r0, r3
2002a916:	bf1c      	itt	ne
2002a918:	1a1b      	subne	r3, r3, r0
2002a91a:	50a3      	strne	r3, [r4, r2]
2002a91c:	e7af      	b.n	2002a87e <_malloc_r+0x22>
2002a91e:	6862      	ldr	r2, [r4, #4]
2002a920:	42a3      	cmp	r3, r4
2002a922:	bf0c      	ite	eq
2002a924:	f8c8 2000 	streq.w	r2, [r8]
2002a928:	605a      	strne	r2, [r3, #4]
2002a92a:	e7eb      	b.n	2002a904 <_malloc_r+0xa8>
2002a92c:	4623      	mov	r3, r4
2002a92e:	6864      	ldr	r4, [r4, #4]
2002a930:	e7ae      	b.n	2002a890 <_malloc_r+0x34>
2002a932:	463c      	mov	r4, r7
2002a934:	687f      	ldr	r7, [r7, #4]
2002a936:	e7b6      	b.n	2002a8a6 <_malloc_r+0x4a>
2002a938:	461a      	mov	r2, r3
2002a93a:	685b      	ldr	r3, [r3, #4]
2002a93c:	42a3      	cmp	r3, r4
2002a93e:	d1fb      	bne.n	2002a938 <_malloc_r+0xdc>
2002a940:	2300      	movs	r3, #0
2002a942:	6053      	str	r3, [r2, #4]
2002a944:	e7de      	b.n	2002a904 <_malloc_r+0xa8>
2002a946:	230c      	movs	r3, #12
2002a948:	4630      	mov	r0, r6
2002a94a:	6033      	str	r3, [r6, #0]
2002a94c:	f000 f80c 	bl	2002a968 <__malloc_unlock>
2002a950:	e794      	b.n	2002a87c <_malloc_r+0x20>
2002a952:	6005      	str	r5, [r0, #0]
2002a954:	e7d6      	b.n	2002a904 <_malloc_r+0xa8>
2002a956:	bf00      	nop
2002a958:	2004a3b8 	.word	0x2004a3b8

2002a95c <__malloc_lock>:
2002a95c:	4801      	ldr	r0, [pc, #4]	@ (2002a964 <__malloc_lock+0x8>)
2002a95e:	f000 b831 	b.w	2002a9c4 <__retarget_lock_acquire_recursive>
2002a962:	bf00      	nop
2002a964:	2004a4f8 	.word	0x2004a4f8

2002a968 <__malloc_unlock>:
2002a968:	4801      	ldr	r0, [pc, #4]	@ (2002a970 <__malloc_unlock+0x8>)
2002a96a:	f000 b82c 	b.w	2002a9c6 <__retarget_lock_release_recursive>
2002a96e:	bf00      	nop
2002a970:	2004a4f8 	.word	0x2004a4f8

2002a974 <memcmp>:
2002a974:	3901      	subs	r1, #1
2002a976:	4402      	add	r2, r0
2002a978:	b510      	push	{r4, lr}
2002a97a:	4290      	cmp	r0, r2
2002a97c:	d101      	bne.n	2002a982 <memcmp+0xe>
2002a97e:	2000      	movs	r0, #0
2002a980:	e005      	b.n	2002a98e <memcmp+0x1a>
2002a982:	7803      	ldrb	r3, [r0, #0]
2002a984:	f811 4f01 	ldrb.w	r4, [r1, #1]!
2002a988:	42a3      	cmp	r3, r4
2002a98a:	d001      	beq.n	2002a990 <memcmp+0x1c>
2002a98c:	1b18      	subs	r0, r3, r4
2002a98e:	bd10      	pop	{r4, pc}
2002a990:	3001      	adds	r0, #1
2002a992:	e7f2      	b.n	2002a97a <memcmp+0x6>

2002a994 <memset>:
2002a994:	4402      	add	r2, r0
2002a996:	4603      	mov	r3, r0
2002a998:	4293      	cmp	r3, r2
2002a99a:	d100      	bne.n	2002a99e <memset+0xa>
2002a99c:	4770      	bx	lr
2002a99e:	f803 1b01 	strb.w	r1, [r3], #1
2002a9a2:	e7f9      	b.n	2002a998 <memset+0x4>

2002a9a4 <_sbrk_r>:
2002a9a4:	b538      	push	{r3, r4, r5, lr}
2002a9a6:	2300      	movs	r3, #0
2002a9a8:	4d05      	ldr	r5, [pc, #20]	@ (2002a9c0 <_sbrk_r+0x1c>)
2002a9aa:	4604      	mov	r4, r0
2002a9ac:	4608      	mov	r0, r1
2002a9ae:	602b      	str	r3, [r5, #0]
2002a9b0:	f000 f862 	bl	2002aa78 <_sbrk>
2002a9b4:	1c43      	adds	r3, r0, #1
2002a9b6:	d102      	bne.n	2002a9be <_sbrk_r+0x1a>
2002a9b8:	682b      	ldr	r3, [r5, #0]
2002a9ba:	b103      	cbz	r3, 2002a9be <_sbrk_r+0x1a>
2002a9bc:	6023      	str	r3, [r4, #0]
2002a9be:	bd38      	pop	{r3, r4, r5, pc}
2002a9c0:	2004a4f4 	.word	0x2004a4f4

2002a9c4 <__retarget_lock_acquire_recursive>:
2002a9c4:	4770      	bx	lr

2002a9c6 <__retarget_lock_release_recursive>:
2002a9c6:	4770      	bx	lr

2002a9c8 <memcpy>:
2002a9c8:	440a      	add	r2, r1
2002a9ca:	1e43      	subs	r3, r0, #1
2002a9cc:	4291      	cmp	r1, r2
2002a9ce:	d100      	bne.n	2002a9d2 <memcpy+0xa>
2002a9d0:	4770      	bx	lr
2002a9d2:	b510      	push	{r4, lr}
2002a9d4:	f811 4b01 	ldrb.w	r4, [r1], #1
2002a9d8:	4291      	cmp	r1, r2
2002a9da:	f803 4f01 	strb.w	r4, [r3, #1]!
2002a9de:	d1f9      	bne.n	2002a9d4 <memcpy+0xc>
2002a9e0:	bd10      	pop	{r4, pc}
	...

2002a9e4 <_free_r>:
2002a9e4:	b538      	push	{r3, r4, r5, lr}
2002a9e6:	4605      	mov	r5, r0
2002a9e8:	2900      	cmp	r1, #0
2002a9ea:	d041      	beq.n	2002aa70 <_free_r+0x8c>
2002a9ec:	f851 3c04 	ldr.w	r3, [r1, #-4]
2002a9f0:	1f0c      	subs	r4, r1, #4
2002a9f2:	2b00      	cmp	r3, #0
2002a9f4:	bfb8      	it	lt
2002a9f6:	18e4      	addlt	r4, r4, r3
2002a9f8:	f7ff ffb0 	bl	2002a95c <__malloc_lock>
2002a9fc:	4a1d      	ldr	r2, [pc, #116]	@ (2002aa74 <_free_r+0x90>)
2002a9fe:	6813      	ldr	r3, [r2, #0]
2002aa00:	b933      	cbnz	r3, 2002aa10 <_free_r+0x2c>
2002aa02:	6063      	str	r3, [r4, #4]
2002aa04:	6014      	str	r4, [r2, #0]
2002aa06:	4628      	mov	r0, r5
2002aa08:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002aa0c:	f7ff bfac 	b.w	2002a968 <__malloc_unlock>
2002aa10:	42a3      	cmp	r3, r4
2002aa12:	d908      	bls.n	2002aa26 <_free_r+0x42>
2002aa14:	6820      	ldr	r0, [r4, #0]
2002aa16:	1821      	adds	r1, r4, r0
2002aa18:	428b      	cmp	r3, r1
2002aa1a:	bf01      	itttt	eq
2002aa1c:	6819      	ldreq	r1, [r3, #0]
2002aa1e:	685b      	ldreq	r3, [r3, #4]
2002aa20:	1809      	addeq	r1, r1, r0
2002aa22:	6021      	streq	r1, [r4, #0]
2002aa24:	e7ed      	b.n	2002aa02 <_free_r+0x1e>
2002aa26:	461a      	mov	r2, r3
2002aa28:	685b      	ldr	r3, [r3, #4]
2002aa2a:	b10b      	cbz	r3, 2002aa30 <_free_r+0x4c>
2002aa2c:	42a3      	cmp	r3, r4
2002aa2e:	d9fa      	bls.n	2002aa26 <_free_r+0x42>
2002aa30:	6811      	ldr	r1, [r2, #0]
2002aa32:	1850      	adds	r0, r2, r1
2002aa34:	42a0      	cmp	r0, r4
2002aa36:	d10b      	bne.n	2002aa50 <_free_r+0x6c>
2002aa38:	6820      	ldr	r0, [r4, #0]
2002aa3a:	4401      	add	r1, r0
2002aa3c:	1850      	adds	r0, r2, r1
2002aa3e:	6011      	str	r1, [r2, #0]
2002aa40:	4283      	cmp	r3, r0
2002aa42:	d1e0      	bne.n	2002aa06 <_free_r+0x22>
2002aa44:	6818      	ldr	r0, [r3, #0]
2002aa46:	685b      	ldr	r3, [r3, #4]
2002aa48:	4408      	add	r0, r1
2002aa4a:	6053      	str	r3, [r2, #4]
2002aa4c:	6010      	str	r0, [r2, #0]
2002aa4e:	e7da      	b.n	2002aa06 <_free_r+0x22>
2002aa50:	d902      	bls.n	2002aa58 <_free_r+0x74>
2002aa52:	230c      	movs	r3, #12
2002aa54:	602b      	str	r3, [r5, #0]
2002aa56:	e7d6      	b.n	2002aa06 <_free_r+0x22>
2002aa58:	6820      	ldr	r0, [r4, #0]
2002aa5a:	1821      	adds	r1, r4, r0
2002aa5c:	428b      	cmp	r3, r1
2002aa5e:	bf02      	ittt	eq
2002aa60:	6819      	ldreq	r1, [r3, #0]
2002aa62:	685b      	ldreq	r3, [r3, #4]
2002aa64:	1809      	addeq	r1, r1, r0
2002aa66:	6063      	str	r3, [r4, #4]
2002aa68:	bf08      	it	eq
2002aa6a:	6021      	streq	r1, [r4, #0]
2002aa6c:	6054      	str	r4, [r2, #4]
2002aa6e:	e7ca      	b.n	2002aa06 <_free_r+0x22>
2002aa70:	bd38      	pop	{r3, r4, r5, pc}
2002aa72:	bf00      	nop
2002aa74:	2004a3b8 	.word	0x2004a3b8

2002aa78 <_sbrk>:
2002aa78:	4a05      	ldr	r2, [pc, #20]	@ (2002aa90 <_sbrk+0x18>)
2002aa7a:	4603      	mov	r3, r0
2002aa7c:	6810      	ldr	r0, [r2, #0]
2002aa7e:	b110      	cbz	r0, 2002aa86 <_sbrk+0xe>
2002aa80:	4403      	add	r3, r0
2002aa82:	6013      	str	r3, [r2, #0]
2002aa84:	4770      	bx	lr
2002aa86:	4803      	ldr	r0, [pc, #12]	@ (2002aa94 <_sbrk+0x1c>)
2002aa88:	4403      	add	r3, r0
2002aa8a:	6013      	str	r3, [r2, #0]
2002aa8c:	4770      	bx	lr
2002aa8e:	bf00      	nop
2002aa90:	2004a4fc 	.word	0x2004a4fc
2002aa94:	20042000 	.word	0x20042000
2002aa98:	50041000 	.word	0x50041000
2002aa9c:	00000002 	.word	0x00000002
2002aaa0:	10000000 	.word	0x10000000
2002aaa4:	00000004 	.word	0x00000004
2002aaa8:	00000000 	.word	0x00000000
2002aaac:	50081008 	.word	0x50081008
2002aab0:	00000000 	.word	0x00000000
2002aab4:	00000032 	.word	0x00000032
2002aab8:	00000000 	.word	0x00000000
2002aabc:	50042000 	.word	0x50042000
2002aac0:	00000002 	.word	0x00000002
2002aac4:	12000000 	.word	0x12000000
2002aac8:	00000004 	.word	0x00000004
2002aacc:	00000000 	.word	0x00000000
2002aad0:	5008101c 	.word	0x5008101c
2002aad4:	00000000 	.word	0x00000000
2002aad8:	00000033 	.word	0x00000033
2002aadc:	00000001 	.word	0x00000001
2002aae0:	62636573 	.word	0x62636573
2002aae4:	20746f6f 	.word	0x20746f6f
2002aae8:	6b676973 	.word	0x6b676973
2002aaec:	70207965 	.word	0x70207965
2002aaf0:	65206275 	.word	0x65206275
2002aaf4:	00217272 	.word	0x00217272
2002aaf8:	62636573 	.word	0x62636573
2002aafc:	20746f6f 	.word	0x20746f6f
2002ab00:	20676d69 	.word	0x20676d69
2002ab04:	68736168 	.word	0x68736168
2002ab08:	67697320 	.word	0x67697320
2002ab0c:	72726520 	.word	0x72726520
2002ab10:	65730021 	.word	0x65730021
2002ab14:	6f6f6263 	.word	0x6f6f6263
2002ab18:	78652074 	.word	0x78652074
2002ab1c:	20747063 	.word	0x20747063
2002ab20:	6c6c756e 	.word	0x6c6c756e
2002ab24:	41480021 	.word	0x41480021
2002ab28:	535f4853 	.word	0x535f4853
2002ab2c:	49545445 	.word	0x49545445
2002ab30:	253d474e 	.word	0x253d474e
2002ab34:	0a583830 	.word	0x0a583830
2002ab38:	616f4c00 	.word	0x616f4c00
2002ab3c:	56492064 	.word	0x56492064
2002ab40:	646e6120 	.word	0x646e6120
2002ab44:	6e656c20 	.word	0x6e656c20
2002ab48:	20687467 	.word	0x20687467
2002ab4c:	48534148 	.word	0x48534148
2002ab50:	5445535f 	.word	0x5445535f
2002ab54:	474e4954 	.word	0x474e4954
2002ab58:	3830253d 	.word	0x3830253d
2002ab5c:	69202c58 	.word	0x69202c58
2002ab60:	656c2076 	.word	0x656c2076
2002ab64:	6874676e 	.word	0x6874676e
2002ab68:	0a64253d 	.word	0x0a64253d
2002ab6c:	73655200 	.word	0x73655200
2002ab70:	20746c75 	.word	0x20746c75
2002ab74:	3d6e656c 	.word	0x3d6e656c
2002ab78:	000a6425 	.word	0x000a6425
2002ab7c:	2070614d 	.word	0x2070614d
2002ab80:	6f727265 	.word	0x6f727265
2002ab84:	6c203a72 	.word	0x6c203a72
2002ab88:	6369676f 	.word	0x6369676f
2002ab8c:	2c642520 	.word	0x2c642520
2002ab90:	79687020 	.word	0x79687020
2002ab94:	0a642520 	.word	0x0a642520
2002ab98:	52524500 	.word	0x52524500
2002ab9c:	2032203a 	.word	0x2032203a
2002aba0:	69676f6c 	.word	0x69676f6c
2002aba4:	6c622063 	.word	0x6c622063
2002aba8:	736b636f 	.word	0x736b636f
2002abac:	70616d20 	.word	0x70616d20
2002abb0:	206f7420 	.word	0x206f7420
2002abb4:	656d6173 	.word	0x656d6173
2002abb8:	6b6c6220 	.word	0x6b6c6220
2002abbc:	6f6c203a 	.word	0x6f6c203a
2002abc0:	30636967 	.word	0x30636967
2002abc4:	2c642520 	.word	0x2c642520
2002abc8:	79687020 	.word	0x79687020
2002abcc:	64252030 	.word	0x64252030
2002abd0:	6f6c202c 	.word	0x6f6c202c
2002abd4:	31636967 	.word	0x31636967
2002abd8:	2c642520 	.word	0x2c642520
2002abdc:	79687020 	.word	0x79687020
2002abe0:	64252031 	.word	0x64252031
2002abe4:	614d000a 	.word	0x614d000a
2002abe8:	72652070 	.word	0x72652070
2002abec:	30726f72 	.word	0x30726f72
2002abf0:	6f6c203a 	.word	0x6f6c203a
2002abf4:	20636967 	.word	0x20636967
2002abf8:	202c6425 	.word	0x202c6425
2002abfc:	20796870 	.word	0x20796870
2002ac00:	000a6425 	.word	0x000a6425
2002ac04:	20746547 	.word	0x20746547
2002ac08:	2070616d 	.word	0x2070616d
2002ac0c:	636f6c62 	.word	0x636f6c62
2002ac10:	7265206b 	.word	0x7265206b
2002ac14:	20726f72 	.word	0x20726f72
2002ac18:	2d206425 	.word	0x2d206425
2002ac1c:	25203e2d 	.word	0x25203e2d
2002ac20:	42000a64 	.word	0x42000a64
2002ac24:	76204d42 	.word	0x76204d42
2002ac28:	69737265 	.word	0x69737265
2002ac2c:	6e206e6f 	.word	0x6e206e6f
2002ac30:	6920746f 	.word	0x6920746f
2002ac34:	6572636e 	.word	0x6572636e
2002ac38:	64657361 	.word	0x64657361
2002ac3c:	7270203a 	.word	0x7270203a
2002ac40:	25207665 	.word	0x25207665
2002ac44:	63202c64 	.word	0x63202c64
2002ac48:	20727275 	.word	0x20727275
2002ac4c:	000a6425 	.word	0x000a6425
2002ac50:	41544144 	.word	0x41544144
2002ac54:	746f6e20 	.word	0x746f6e20
2002ac58:	61657220 	.word	0x61657220
2002ac5c:	616e6f73 	.word	0x616e6f73
2002ac60:	20656c62 	.word	0x20656c62
2002ac64:	42206e69 	.word	0x42206e69
2002ac68:	62204d42 	.word	0x62204d42
2002ac6c:	25206b6c 	.word	0x25206b6c
2002ac70:	61702064 	.word	0x61702064
2002ac74:	25206567 	.word	0x25206567
2002ac78:	30203a64 	.word	0x30203a64
2002ac7c:	0a782578 	.word	0x0a782578
2002ac80:	61655200 	.word	0x61655200
2002ac84:	62622064 	.word	0x62622064
2002ac88:	6c62206d 	.word	0x6c62206d
2002ac8c:	6425206b 	.word	0x6425206b
2002ac90:	67617020 	.word	0x67617020
2002ac94:	64252065 	.word	0x64252065
2002ac98:	69616620 	.word	0x69616620
2002ac9c:	49000a6c 	.word	0x49000a6c
2002aca0:	6c61766e 	.word	0x6c61766e
2002aca4:	42206469 	.word	0x42206469
2002aca8:	49204d42 	.word	0x49204d42
2002acac:	25205844 	.word	0x25205844
2002acb0:	56000a64 	.word	0x56000a64
2002acb4:	64252031 	.word	0x64252031
2002acb8:	206e6920 	.word	0x206e6920
2002acbc:	636f6c62 	.word	0x636f6c62
2002acc0:	6425206b 	.word	0x6425206b
2002acc4:	3256202c 	.word	0x3256202c
2002acc8:	20642520 	.word	0x20642520
2002accc:	62206e69 	.word	0x62206e69
2002acd0:	6b636f6c 	.word	0x6b636f6c
2002acd4:	0a642520 	.word	0x0a642520
2002acd8:	6d615300 	.word	0x6d615300
2002acdc:	69687465 	.word	0x69687465
2002ace0:	6d20676e 	.word	0x6d20676e
2002ace4:	20747375 	.word	0x20747375
2002ace8:	77206562 	.word	0x77206562
2002acec:	676e6f72 	.word	0x676e6f72
2002acf0:	6567202c 	.word	0x6567202c
2002acf4:	656e2074 	.word	0x656e2074
2002acf8:	65762077 	.word	0x65762077
2002acfc:	6f697372 	.word	0x6f697372
2002ad00:	6425206e 	.word	0x6425206e
2002ad04:	206f6420 	.word	0x206f6420
2002ad08:	20746f6e 	.word	0x20746f6e
2002ad0c:	656d6173 	.word	0x656d6173
2002ad10:	206f7420 	.word	0x206f7420
2002ad14:	76657270 	.word	0x76657270
2002ad18:	65686320 	.word	0x65686320
2002ad1c:	25206b63 	.word	0x25206b63
2002ad20:	43000a64 	.word	0x43000a64
2002ad24:	63204352 	.word	0x63204352
2002ad28:	6b636568 	.word	0x6b636568
2002ad2c:	72726520 	.word	0x72726520
2002ad30:	0a20726f 	.word	0x0a20726f
2002ad34:	61655200 	.word	0x61655200
2002ad38:	62622064 	.word	0x62622064
2002ad3c:	6c62206d 	.word	0x6c62206d
2002ad40:	6425206b 	.word	0x6425206b
2002ad44:	67617020 	.word	0x67617020
2002ad48:	64252065 	.word	0x64252065
2002ad4c:	74616420 	.word	0x74616420
2002ad50:	6f6e2061 	.word	0x6f6e2061
2002ad54:	72772074 	.word	0x72772074
2002ad58:	20657469 	.word	0x20657469
2002ad5c:	20726f66 	.word	0x20726f66
2002ad60:	20646e32 	.word	0x20646e32
2002ad64:	656d6974 	.word	0x656d6974
2002ad68:	6552000a 	.word	0x6552000a
2002ad6c:	62206461 	.word	0x62206461
2002ad70:	62206d62 	.word	0x62206d62
2002ad74:	25206b6c 	.word	0x25206b6c
2002ad78:	61702064 	.word	0x61702064
2002ad7c:	25206567 	.word	0x25206567
2002ad80:	61662064 	.word	0x61662064
2002ad84:	66206c69 	.word	0x66206c69
2002ad88:	3220726f 	.word	0x3220726f
2002ad8c:	7420646e 	.word	0x7420646e
2002ad90:	3f656d69 	.word	0x3f656d69
2002ad94:	614c000a 	.word	0x614c000a
2002ad98:	74736574 	.word	0x74736574
2002ad9c:	72657620 	.word	0x72657620
2002ada0:	6e6f6973 	.word	0x6e6f6973
2002ada4:	0a642520 	.word	0x0a642520
2002ada8:	74654700 	.word	0x74654700
2002adac:	79687020 	.word	0x79687020
2002adb0:	6b6c6220 	.word	0x6b6c6220
2002adb4:	726f6620 	.word	0x726f6620
2002adb8:	20642520 	.word	0x20642520
2002adbc:	6c696166 	.word	0x6c696166
2002adc0:	65687720 	.word	0x65687720
2002adc4:	6572206e 	.word	0x6572206e
2002adc8:	000a6461 	.word	0x000a6461
2002adcc:	636f6c42 	.word	0x636f6c42
2002add0:	6425206b 	.word	0x6425206b
2002add4:	61726520 	.word	0x61726520
2002add8:	66206573 	.word	0x66206573
2002addc:	2c6c6961 	.word	0x2c6c6961
2002ade0:	72616d20 	.word	0x72616d20
2002ade4:	7361206b 	.word	0x7361206b
2002ade8:	64616220 	.word	0x64616220
2002adec:	6c42000a 	.word	0x6c42000a
2002adf0:	206b636f 	.word	0x206b636f
2002adf4:	63206425 	.word	0x63206425
2002adf8:	6b636568 	.word	0x6b636568
2002adfc:	20736120 	.word	0x20736120
2002ae00:	20646162 	.word	0x20646162
2002ae04:	636f6c62 	.word	0x636f6c62
2002ae08:	42000a6b 	.word	0x42000a6b
2002ae0c:	6b636f6c 	.word	0x6b636f6c
2002ae10:	20642520 	.word	0x20642520
2002ae14:	62207369 	.word	0x62207369
2002ae18:	69206461 	.word	0x69206461
2002ae1c:	7375206e 	.word	0x7375206e
2002ae20:	62207265 	.word	0x62207265
2002ae24:	6b636f6c 	.word	0x6b636f6c
2002ae28:	6162000a 	.word	0x6162000a
2002ae2c:	64252064 	.word	0x64252064
2002ae30:	6572202c 	.word	0x6572202c
2002ae34:	63616c70 	.word	0x63616c70
2002ae38:	64252065 	.word	0x64252065
2002ae3c:	6f4e000a 	.word	0x6f4e000a
2002ae40:	63616220 	.word	0x63616220
2002ae44:	2070756b 	.word	0x2070756b
2002ae48:	636f6c62 	.word	0x636f6c62
2002ae4c:	6e61206b 	.word	0x6e61206b
2002ae50:	6f6d2079 	.word	0x6f6d2079
2002ae54:	000a6572 	.word	0x000a6572
2002ae58:	74706d65 	.word	0x74706d65
2002ae5c:	61742079 	.word	0x61742079
2002ae60:	20656c62 	.word	0x20656c62
2002ae64:	6e206425 	.word	0x6e206425
2002ae68:	6520746f 	.word	0x6520746f
2002ae6c:	67756f6e 	.word	0x67756f6e
2002ae70:	6f662068 	.word	0x6f662068
2002ae74:	6e692072 	.word	0x6e692072
2002ae78:	61697469 	.word	0x61697469
2002ae7c:	55000a6c 	.word	0x55000a6c
2002ae80:	74616470 	.word	0x74616470
2002ae84:	61742065 	.word	0x61742065
2002ae88:	20656c62 	.word	0x20656c62
2002ae8c:	66206f74 	.word	0x66206f74
2002ae90:	6873616c 	.word	0x6873616c
2002ae94:	6e6f6420 	.word	0x6e6f6420
2002ae98:	49000a65 	.word	0x49000a65
2002ae9c:	6974696e 	.word	0x6974696e
2002aea0:	74206c61 	.word	0x74206c61
2002aea4:	656c6261 	.word	0x656c6261
2002aea8:	69616620 	.word	0x69616620
2002aeac:	42000a6c 	.word	0x42000a6c
2002aeb0:	69204d42 	.word	0x69204d42
2002aeb4:	6974696e 	.word	0x6974696e
2002aeb8:	7a696c61 	.word	0x7a696c61
2002aebc:	62206465 	.word	0x62206465
2002aec0:	726f6665 	.word	0x726f6665
2002aec4:	64202c65 	.word	0x64202c65
2002aec8:	6f6e206f 	.word	0x6f6e206f
2002aecc:	6e692074 	.word	0x6e692074
2002aed0:	61207469 	.word	0x61207469
2002aed4:	6d20796e 	.word	0x6d20796e
2002aed8:	0a65726f 	.word	0x0a65726f
2002aedc:	54454400 	.word	0x54454400
2002aee0:	20642520 	.word	0x20642520
2002aee4:	0a646162 	.word	0x0a646162
2002aee8:	4b4c4200 	.word	0x4b4c4200
2002aeec:	20642520 	.word	0x20642520
2002aef0:	64616572 	.word	0x64616572
2002aef4:	69616620 	.word	0x69616620
2002aef8:	6d202c6c 	.word	0x6d202c6c
2002aefc:	206b7261 	.word	0x206b7261
2002af00:	62207361 	.word	0x62207361
2002af04:	000a6461 	.word	0x000a6461
2002af08:	20746564 	.word	0x20746564
2002af0c:	206d6262 	.word	0x206d6262
2002af10:	6c626174 	.word	0x6c626174
2002af14:	69772065 	.word	0x69772065
2002af18:	25206874 	.word	0x25206874
2002af1c:	25202c64 	.word	0x25202c64
2002af20:	25202c64 	.word	0x25202c64
2002af24:	64000a64 	.word	0x64000a64
2002af28:	63657465 	.word	0x63657465
2002af2c:	65722074 	.word	0x65722074
2002af30:	746c7573 	.word	0x746c7573
2002af34:	0a642520 	.word	0x0a642520
2002af38:	20317600 	.word	0x20317600
2002af3c:	69206425 	.word	0x69206425
2002af40:	6c62206e 	.word	0x6c62206e
2002af44:	6425206b 	.word	0x6425206b
2002af48:	3276202c 	.word	0x3276202c
2002af4c:	20642520 	.word	0x20642520
2002af50:	62206e69 	.word	0x62206e69
2002af54:	6b636f6c 	.word	0x6b636f6c
2002af58:	0a642520 	.word	0x0a642520
2002af5c:	65684300 	.word	0x65684300
2002af60:	62206b63 	.word	0x62206b63
2002af64:	74206d62 	.word	0x74206d62
2002af68:	656c6261 	.word	0x656c6261
2002af6c:	69616620 	.word	0x69616620
2002af70:	64000a6c 	.word	0x64000a6c
2002af74:	63657465 	.word	0x63657465
2002af78:	65722074 	.word	0x65722074
2002af7c:	746c7573 	.word	0x746c7573
2002af80:	20642520 	.word	0x20642520
2002af84:	20746f6e 	.word	0x20746f6e
2002af88:	73616572 	.word	0x73616572
2002af8c:	62616e6f 	.word	0x62616e6f
2002af90:	000a656c 	.word	0x000a656c
2002af94:	204d4242 	.word	0x204d4242
2002af98:	3a4d454d 	.word	0x3a4d454d
2002af9c:	78746320 	.word	0x78746320
2002afa0:	2c702520 	.word	0x2c702520
2002afa4:	70616d20 	.word	0x70616d20
2002afa8:	70252031 	.word	0x70252031
2002afac:	616d202c 	.word	0x616d202c
2002afb0:	25203270 	.word	0x25203270
2002afb4:	000a2070 	.word	0x000a2070
2002afb8:	5f666973 	.word	0x5f666973
2002afbc:	5f6d6262 	.word	0x5f6d6262
2002afc0:	74696e69 	.word	0x74696e69
2002afc4:	6e6f6420 	.word	0x6e6f6420
2002afc8:	53000a65 	.word	0x53000a65
2002afcc:	31354148 	.word	0x31354148
2002afd0:	48530032 	.word	0x48530032
2002afd4:	34383341 	.word	0x34383341
2002afd8:	41485300 	.word	0x41485300
2002afdc:	00363532 	.word	0x00363532
2002afe0:	32414853 	.word	0x32414853
2002afe4:	60003432 	.word	0x60003432
2002afe8:	65014886 	.word	0x65014886
2002afec:	04020403 	.word	0x04020403
2002aff0:	2d646900 	.word	0x2d646900
2002aff4:	32616873 	.word	0x32616873
2002aff8:	60003432 	.word	0x60003432
2002affc:	65014886 	.word	0x65014886
2002b000:	01020403 	.word	0x01020403
2002b004:	2d646900 	.word	0x2d646900
2002b008:	32616873 	.word	0x32616873
2002b00c:	60003635 	.word	0x60003635
2002b010:	65014886 	.word	0x65014886
2002b014:	02020403 	.word	0x02020403
2002b018:	2d646900 	.word	0x2d646900
2002b01c:	33616873 	.word	0x33616873
2002b020:	60003438 	.word	0x60003438
2002b024:	65014886 	.word	0x65014886
2002b028:	03020403 	.word	0x03020403
2002b02c:	2d646900 	.word	0x2d646900
2002b030:	35616873 	.word	0x35616873
2002b034:	2b003231 	.word	0x2b003231
2002b038:	0702030e 	.word	0x0702030e
2002b03c:	73656400 	.word	0x73656400
2002b040:	00434243 	.word	0x00434243
2002b044:	2d534544 	.word	0x2d534544
2002b048:	00434243 	.word	0x00434243
2002b04c:	8648862a 	.word	0x8648862a
2002b050:	07030df7 	.word	0x07030df7
2002b054:	73656400 	.word	0x73656400
2002b058:	6564652d 	.word	0x6564652d
2002b05c:	62632d33 	.word	0x62632d33
2002b060:	45440063 	.word	0x45440063
2002b064:	44452d53 	.word	0x44452d53
2002b068:	432d3345 	.word	0x432d3345
2002b06c:	2a004342 	.word	0x2a004342
2002b070:	f7864886 	.word	0xf7864886
2002b074:	0101010d 	.word	0x0101010d
2002b078:	61737200 	.word	0x61737200
2002b07c:	72636e45 	.word	0x72636e45
2002b080:	69747079 	.word	0x69747079
2002b084:	52006e6f 	.word	0x52006e6f
2002b088:	2a004153 	.word	0x2a004153
2002b08c:	3dce4886 	.word	0x3dce4886
2002b090:	69000102 	.word	0x69000102
2002b094:	63652d64 	.word	0x63652d64
2002b098:	6c627550 	.word	0x6c627550
2002b09c:	654b6369 	.word	0x654b6369
2002b0a0:	65470079 	.word	0x65470079
2002b0a4:	6972656e 	.word	0x6972656e
2002b0a8:	43452063 	.word	0x43452063
2002b0ac:	79656b20 	.word	0x79656b20
2002b0b0:	04812b00 	.word	0x04812b00
2002b0b4:	69000c01 	.word	0x69000c01
2002b0b8:	63652d64 	.word	0x63652d64
2002b0bc:	45004844 	.word	0x45004844
2002b0c0:	656b2043 	.word	0x656b2043
2002b0c4:	6f662079 	.word	0x6f662079
2002b0c8:	43452072 	.word	0x43452072
2002b0cc:	2a004844 	.word	0x2a004844
2002b0d0:	f7864886 	.word	0xf7864886
2002b0d4:	0e01010d 	.word	0x0e01010d
2002b0d8:	61687300 	.word	0x61687300
2002b0dc:	57343232 	.word	0x57343232
2002b0e0:	52687469 	.word	0x52687469
2002b0e4:	6e454153 	.word	0x6e454153
2002b0e8:	70797263 	.word	0x70797263
2002b0ec:	6e6f6974 	.word	0x6e6f6974
2002b0f0:	41535200 	.word	0x41535200
2002b0f4:	74697720 	.word	0x74697720
2002b0f8:	48532068 	.word	0x48532068
2002b0fc:	32322d41 	.word	0x32322d41
2002b100:	862a0034 	.word	0x862a0034
2002b104:	0df78648 	.word	0x0df78648
2002b108:	000b0101 	.word	0x000b0101
2002b10c:	32616873 	.word	0x32616873
2002b110:	69573635 	.word	0x69573635
2002b114:	53526874 	.word	0x53526874
2002b118:	636e4541 	.word	0x636e4541
2002b11c:	74707972 	.word	0x74707972
2002b120:	006e6f69 	.word	0x006e6f69
2002b124:	20415352 	.word	0x20415352
2002b128:	68746977 	.word	0x68746977
2002b12c:	41485320 	.word	0x41485320
2002b130:	3635322d 	.word	0x3635322d
2002b134:	48862a00 	.word	0x48862a00
2002b138:	010df786 	.word	0x010df786
2002b13c:	73000c01 	.word	0x73000c01
2002b140:	38336168 	.word	0x38336168
2002b144:	74695734 	.word	0x74695734
2002b148:	41535268 	.word	0x41535268
2002b14c:	72636e45 	.word	0x72636e45
2002b150:	69747079 	.word	0x69747079
2002b154:	52006e6f 	.word	0x52006e6f
2002b158:	77204153 	.word	0x77204153
2002b15c:	20687469 	.word	0x20687469
2002b160:	2d414853 	.word	0x2d414853
2002b164:	00343833 	.word	0x00343833
2002b168:	8648862a 	.word	0x8648862a
2002b16c:	01010df7 	.word	0x01010df7
2002b170:	6873000d 	.word	0x6873000d
2002b174:	32313561 	.word	0x32313561
2002b178:	68746957 	.word	0x68746957
2002b17c:	45415352 	.word	0x45415352
2002b180:	7972636e 	.word	0x7972636e
2002b184:	6f697470 	.word	0x6f697470
2002b188:	5352006e 	.word	0x5352006e
2002b18c:	69772041 	.word	0x69772041
2002b190:	53206874 	.word	0x53206874
2002b194:	352d4148 	.word	0x352d4148
2002b198:	2a003231 	.word	0x2a003231
2002b19c:	f7864886 	.word	0xf7864886
2002b1a0:	0a01010d 	.word	0x0a01010d
2002b1a4:	41535200 	.word	0x41535200
2002b1a8:	2d415353 	.word	0x2d415353
2002b1ac:	00535350 	.word	0x00535350
2002b1b0:	2e617372 	.word	0x2e617372
2002b1b4:	7372004e 	.word	0x7372004e
2002b1b8:	00452e61 	.word	0x00452e61

2002b1bc <pin_pad_func_lcpu>:
	...
2002b1dc:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
2002b1ec:	00000237 00000000 00000000 00000000     7...............
2002b1fc:	032200b3 00000302 00000000 024b023c     ..".........<.K.
2002b20c:	00000238 00000000 00000000 00000000     8...............
2002b21c:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
2002b22c:	0000023a 00000000 00000000 00000000     :...............
2002b23c:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
2002b24c:	00000239 00000000 00000000 00000000     9...............

2002b25c <pin_pad_func_hcpu>:
	...
2002b27c:	000400f2 00000000 000b0000 00000000     ................
	...
2002b29c:	000900f3 00000000 00030000 00000000     ................
	...
2002b2bc:	000a00f4 00000000 000a0000 00000000     ................
	...
2002b2dc:	000b00f5 00000000 000b0000 00000000     ................
	...
2002b2fc:	000c00f6 00000000 00030000 00000000     ................
	...
2002b31c:	000300f7 000d0000 00000009 00000000     ................
	...
2002b33c:	000200f8 000e0000 0000000b 00000000     ................
	...
2002b35c:	000100f9 000f0000 0009000a 00000000     ................
	...
2002b37c:	000d00fa 00100000 000c0003 00000000     ................
	...
2002b39c:	000e00fb 00060000 00010001 00000000     ................
	...
2002b3bc:	000f00fc 00010000 000c000c 00000000     ................
	...
2002b3dc:	001000fd 00030000 00090000 00000000     ................
	...
2002b3fc:	000500fe 00000006 00000000 00000000     ................
	...
2002b41c:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
2002b43c:	00000053 00000000 026402b3 00000000     S.........d.....
	...
2002b45c:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
2002b46c:	023b0000 02270000 00000000 00000000     ..;...'.........
2002b47c:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
2002b48c:	023c0000 02280000 00000000 00000000     ..<...(.........
2002b49c:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
2002b4ac:	023d0000 02290000 00000000 00000000     ..=...).........
2002b4bc:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
2002b4cc:	023e0000 022a0000 00000000 00000000     ..>...*.........
2002b4dc:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
2002b4ec:	023f0000 022b0000 00000000 00000000     ..?...+.........
2002b4fc:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
2002b50c:	02400000 022c0000 00000000 00000000     ..@...,.........
2002b51c:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
2002b52c:	02410000 0000023a 00000000 00000000     ..A.:...........
2002b53c:	0000005b 00000000 026c02bb 00000000     [.........l.....
2002b54c:	02420000 00000239 00000000 00000000     ..B.9...........
2002b55c:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
2002b57c:	0000005d 00000000 026e02bd 00000000     ].........n.....
2002b58c:	01d30000 02210237 00000000 00000000     ....7.!.........
2002b59c:	001b005e 000001b7 026f02be 00000000     ^.........o.....
2002b5ac:	00000000 02220238 00000000 00000000     ....8.".........
2002b5bc:	0022005f 000001b8 027002bf 00000000     _.".......p.....
2002b5cc:	00000000 02230000 00000000 00000000     ......#.........
2002b5dc:	00230060 000001b2 027102c0 00000000     `.#.......q.....
2002b5ec:	00000000 02240000 00000000 00000000     ......$.........
2002b5fc:	00210061 000001b4 027202c1 00000000     a.!.......r.....
2002b60c:	00000000 02250000 00000000 00000000     ......%.........
2002b61c:	00190062 000001b5 027302c2 00000000     b.........s.....
2002b62c:	00000000 02260000 00000000 00000000     ......&.........
2002b63c:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
2002b65c:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
2002b67c:	00000065 00000219 027602c5 00000000     e.........v.....
	...
2002b69c:	00000066 00000000 027702c6 00000000     f.........w.....
2002b6ac:	024b0000 00000000 00000000 00000000     ..K.............
2002b6bc:	00000067 00000000 027802c7 00000000     g.........x.....
	...
2002b6dc:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
2002b6fc:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
2002b71c:	0000006a 01c60149 027b02ca 00000000     j...I.....{.....
	...
2002b73c:	0000006b 01c80148 027c02cb 00000000     k...H.....|.....
	...
2002b75c:	0000006c 00000000 027d02cc 00000000     l.........}.....
	...
2002b77c:	0000006d 00000000 027e02cd 00000000     m.........~.....
	...
2002b79c:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
2002b7bc:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
2002b7dc:	00000070 01c50000 028102d0 00000000     p...............
	...
2002b7fc:	00000071 00000000 028202d1 00000000     q...............
2002b80c:	02430000 00000000 00000000 00000000     ..C.............
2002b81c:	00000072 00000000 028302d2 00000000     r...............
	...
2002b83c:	00000073 00000000 028402d3 00000000     s...............
	...
2002b85c:	00000074 00000000 028502d4 00000000     t...............
	...
2002b87c:	00000075 00000000 028602d5 00000000     u...............
	...
2002b89c:	00000076 00000000 028702d6 00000000     v...............
	...
2002b8bc:	00000077 0000014d 028802d7 01620000     w...M.........b.
2002b8cc:	02440000 00000000 00000000 00000000     ..D.............
2002b8dc:	00000078 0000014c 028902d8 00000000     x...L...........
	...
2002b8fc:	00000079 0000014a 028a02d9 01630190     y...J.........c.
2002b90c:	02450000 022f0000 00000000 00000000     ..E.../.........
2002b91c:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
2002b92c:	02460000 02300000 00000000 00000000     ..F...0.........
2002b93c:	0000007b 00000000 028c02db 01650193     {.............e.
2002b94c:	02470000 02310000 00000000 00000000     ..G...1.........
2002b95c:	0000007c 00000000 028d02dc 01660196     |.............f.
2002b96c:	02480000 02320000 00000000 00000000     ..H...2.........
2002b97c:	0000007d 00000000 028e02dd 01670198     }.............g.
2002b98c:	02490000 02330000 00000000 00000000     ..I...3.........
2002b99c:	0000007e 00000000 028f02de 00000000     ~...............
2002b9ac:	024a0000 02340000 00000000 00000000     ..J...4.........

2002b9bc <HASH_SIZE>:
2002b9bc:	20202014 00000000 04030201 00000000     .   ............
2002b9cc:	01060204                                ....

2002b9d0 <CSWTCH.47>:
2002b9d0:	0000003f 00003f00 003f0000              ?....?....?.

2002b9dc <hpsys_dll2_limit>:
	...
2002b9e4:	112a8800 112a8800                       ..*...*.

2002b9ec <hpsys_dvfs_config>:
2002b9ec:	000906fb 00100330 000a08fd 00110331     ....0.......1...
2002b9fc:	000d0b00 00130213 000f0d02 00130213     ................

2002ba0c <crc32tab>:
2002ba0c:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
2002ba1c:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
2002ba2c:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
2002ba3c:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
2002ba4c:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
2002ba5c:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
2002ba6c:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
2002ba7c:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
2002ba8c:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
2002ba9c:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
2002baac:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
2002babc:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
2002bacc:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
2002badc:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
2002baec:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
2002bafc:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
2002bb0c:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
2002bb1c:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
2002bb2c:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
2002bb3c:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
2002bb4c:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
2002bb5c:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
2002bb6c:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
2002bb7c:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
2002bb8c:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
2002bb9c:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
2002bbac:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
2002bbbc:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
2002bbcc:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
2002bbdc:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
2002bbec:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
2002bbfc:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
2002bc0c:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
2002bc1c:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
2002bc2c:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
2002bc3c:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
2002bc4c:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
2002bc5c:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
2002bc6c:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
2002bc7c:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
2002bc8c:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
2002bc9c:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
2002bcac:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
2002bcbc:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
2002bccc:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
2002bcdc:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
2002bcec:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
2002bcfc:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
2002bd0c:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
2002bd1c:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
2002bd2c:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
2002bd3c:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
2002bd4c:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
2002bd5c:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
2002bd6c:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
2002bd7c:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
2002bd8c:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
2002bd9c:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
2002bdac:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
2002bdbc:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
2002bdcc:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
2002bddc:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
2002bdec:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
2002bdfc:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

2002be0c <CSWTCH.5>:
2002be0c:	2002beac 2002be7c 2002be4c 2002be1c     ... |.. L.. ... 

2002be1c <mbedtls_sha512_info>:
2002be1c:	00000008 2002afcb 00000040 00000080     ....... @.......
2002be2c:	20026045 2002603b 20026037 20026031     E`. ;`. 7`. 1`. 
2002be3c:	20026015 20026003 20025fff 20025ffb     .`. .`. ._. ._. 

2002be4c <mbedtls_sha384_info>:
2002be4c:	00000007 2002afd2 00000030 00000080     ....... 0.......
2002be5c:	2002603f 2002603b 20026037 2002602b     ?`. ;`. 7`. +`. 
2002be6c:	20026015 20026003 20025fff 20025ffb     .`. .`. ._. ._. 

2002be7c <mbedtls_sha256_info>:
2002be7c:	00000006 2002afd9 00000020 00000040     .......  ...@...
2002be8c:	20025ff5 20025feb 20025fe7 20025fe1     ._. ._. ._. ._. 
2002be9c:	20025fc5 20025fb3 20025faf 20025fab     ._. ._. ._. ._. 

2002beac <mbedtls_sha224_info>:
2002beac:	00000005 2002afe0 0000001c 00000040     ....... ....@...
2002bebc:	20025fef 20025feb 20025fe7 20025fdb     ._. ._. ._. ._. 
2002becc:	20025fc5 20025fb3 20025faf 20025fab     ._. ._. ._. ._. 

2002bedc <sha256_padding>:
2002bedc:	00000080 00000000 00000000 00000000     ................
	...

2002bf1c <K>:
2002bf1c:	428a2f98 71374491 b5c0fbcf e9b5dba5     ./.B.D7q........
2002bf2c:	3956c25b 59f111f1 923f82a4 ab1c5ed5     [.V9...Y..?..^..
2002bf3c:	d807aa98 12835b01 243185be 550c7dc3     .....[....1$.}.U
2002bf4c:	72be5d74 80deb1fe 9bdc06a7 c19bf174     t].r........t...
2002bf5c:	e49b69c1 efbe4786 0fc19dc6 240ca1cc     .i...G.........$
2002bf6c:	2de92c6f 4a7484aa 5cb0a9dc 76f988da     o,.-..tJ...\...v
2002bf7c:	983e5152 a831c66d b00327c8 bf597fc7     RQ>.m.1..'....Y.
2002bf8c:	c6e00bf3 d5a79147 06ca6351 14292967     ....G...Qc..g)).
2002bf9c:	27b70a85 2e1b2138 4d2c6dfc 53380d13     ...'8!...m,M..8S
2002bfac:	650a7354 766a0abb 81c2c92e 92722c85     Ts.e..jv.....,r.
2002bfbc:	a2bfe8a1 a81a664b c24b8b70 c76c51a3     ....Kf..p.K..Ql.
2002bfcc:	d192e819 d6990624 f40e3585 106aa070     ....$....5..p.j.
2002bfdc:	19a4c116 1e376c08 2748774c 34b0bcb5     .....l7.LwH'...4
2002bfec:	391c0cb3 4ed8aa4a 5b9cca4f 682e6ff3     ...9J..NO..[.o.h
2002bffc:	748f82ee 78a5636f 84c87814 8cc70208     ...toc.x.x......
2002c00c:	90befffa a4506ceb bef9a3f7 c67178f2     .....lP......xq.

2002c01c <sha512_padding>:
2002c01c:	00000080 00000000 00000000 00000000     ................
	...

2002c0a0 <K>:
2002c0a0:	d728ae22 428a2f98 23ef65cd 71374491     ".(../.B.e.#.D7q
2002c0b0:	ec4d3b2f b5c0fbcf 8189dbbc e9b5dba5     /;M.............
2002c0c0:	f348b538 3956c25b b605d019 59f111f1     8.H.[.V9.......Y
2002c0d0:	af194f9b 923f82a4 da6d8118 ab1c5ed5     .O....?...m..^..
2002c0e0:	a3030242 d807aa98 45706fbe 12835b01     B........opE.[..
2002c0f0:	4ee4b28c 243185be d5ffb4e2 550c7dc3     ...N..1$.....}.U
2002c100:	f27b896f 72be5d74 3b1696b1 80deb1fe     o.{.t].r...;....
2002c110:	25c71235 9bdc06a7 cf692694 c19bf174     5..%.....&i.t...
2002c120:	9ef14ad2 e49b69c1 384f25e3 efbe4786     .J...i...%O8.G..
2002c130:	8b8cd5b5 0fc19dc6 77ac9c65 240ca1cc     ........e..w...$
2002c140:	592b0275 2de92c6f 6ea6e483 4a7484aa     u.+Yo,.-...n..tJ
2002c150:	bd41fbd4 5cb0a9dc 831153b5 76f988da     ..A....\.S.....v
2002c160:	ee66dfab 983e5152 2db43210 a831c66d     ..f.RQ>..2.-m.1.
2002c170:	98fb213f b00327c8 beef0ee4 bf597fc7     ?!...'........Y.
2002c180:	3da88fc2 c6e00bf3 930aa725 d5a79147     ...=....%...G...
2002c190:	e003826f 06ca6351 0a0e6e70 14292967     o...Qc..pn..g)).
2002c1a0:	46d22ffc 27b70a85 5c26c926 2e1b2138     ./.F...'&.&\8!..
2002c1b0:	5ac42aed 4d2c6dfc 9d95b3df 53380d13     .*.Z.m,M......8S
2002c1c0:	8baf63de 650a7354 3c77b2a8 766a0abb     .c..Ts.e..w<..jv
2002c1d0:	47edaee6 81c2c92e 1482353b 92722c85     ...G....;5...,r.
2002c1e0:	4cf10364 a2bfe8a1 bc423001 a81a664b     d..L.....0B.Kf..
2002c1f0:	d0f89791 c24b8b70 0654be30 c76c51a3     ....p.K.0.T..Ql.
2002c200:	d6ef5218 d192e819 5565a910 d6990624     .R........eU$...
2002c210:	5771202a f40e3585 32bbd1b8 106aa070     * qW.5.....2p.j.
2002c220:	b8d2d0c8 19a4c116 5141ab53 1e376c08     ........S.AQ.l7.
2002c230:	df8eeb99 2748774c e19b48a8 34b0bcb5     ....LwH'.H.....4
2002c240:	c5c95a63 391c0cb3 e3418acb 4ed8aa4a     cZ.....9..A.J..N
2002c250:	7763e373 5b9cca4f d6b2b8a3 682e6ff3     s.cwO..[.....o.h
2002c260:	5defb2fc 748f82ee 43172f60 78a5636f     ...]...t`/.Coc.x
2002c270:	a1f0ab72 84c87814 1a6439ec 8cc70208     r....x...9d.....
2002c280:	23631e28 90befffa de82bde9 a4506ceb     (.c#.........lP.
2002c290:	b2c67915 bef9a3f7 e372532b c67178f2     .y......+Sr..xq.
2002c2a0:	ea26619c ca273ece 21c0c207 d186b8c7     .a&..>'....!....
2002c2b0:	cde0eb1e eada7dd6 ee6ed178 f57d4f7f     .....}..x.n..O}.
2002c2c0:	72176fba 06f067aa a2c898a6 0a637dc5     .o.r.g.......}c.
2002c2d0:	bef90dae 113f9804 131c471b 1b710b35     ......?..G..5.q.
2002c2e0:	23047d84 28db77f5 40c72493 32caab7b     .}.#.w.(.$.@{..2
2002c2f0:	15c9bebc 3c9ebe0a 9c100d4c 431d67c4     .......<L....g.C
2002c300:	cb3e42b6 4cc5d4be fc657e2a 597f299c     .B>....L*~e..).Y
2002c310:	3ad6faec 5fcb6fab 4a475817 6c44198c     ...:.o._.XGJ..Dl

2002c320 <oid_md_alg>:
2002c320:	2002afe7 00000009 2002aff1 2002b0fa     ... ....... ... 
2002c330:	00000005 2002affb 00000009 2002b005     ....... ....... 
2002c340:	2002b12d 00000006 2002b00f 00000009     -.. ....... ....
2002c350:	2002b019 2002b160 00000007 2002b023     ... `.. ....#.. 
2002c360:	00000009 2002b02d 2002b193 00000008     ....-.. ... ....
	...

2002c384 <oid_pk_alg>:
2002c384:	2002b06f 00000009 2002b079 2002b087     o.. ....y.. ... 
2002c394:	00000001 2002b08b 00000007 2002b093     ....... ....... 
2002c3a4:	2002b0a2 00000002 2002b0b1 00000005     ... ....... ....
2002c3b4:	2002b0b7 2002b0bf 00000003 00000000     ... ... ........
	...

2002c3d4 <mbedtls_rsa_info>:
2002c3d4:	00000001 2002b087 200296b7 200296ab     ....... ... ... 
2002c3e4:	20029791 2002976d 20029741 20029711     ... m.. A.. ... 
2002c3f4:	2002970d 200296f3 200296e1 200296bd     ... ... ... ... 

2002c404 <_init>:
2002c404:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c406:	bf00      	nop
2002c408:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c40a:	bc08      	pop	{r3}
2002c40c:	469e      	mov	lr, r3
2002c40e:	4770      	bx	lr

2002c410 <_fini>:
2002c410:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c412:	bf00      	nop
2002c414:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c416:	bc08      	pop	{r3}
2002c418:	469e      	mov	lr, r3
2002c41a:	4770      	bx	lr

2002c41c <__EH_FRAME_BEGIN__>:
2002c41c:	0000 0000                                   ....

Disassembly of section .l1_ret_text_HAL_PMU_ConfigPeriLdo:

2002c420 <HAL_PMU_ConfigPeriLdo>:
2002c420:	b538      	push	{r3, r4, r5, lr}
2002c422:	b150      	cbz	r0, 2002c43a <HAL_PMU_ConfigPeriLdo+0x1a>
2002c424:	4c18      	ldr	r4, [pc, #96]	@ (2002c488 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c426:	6863      	ldr	r3, [r4, #4]
2002c428:	b2db      	uxtb	r3, r3
2002c42a:	2b07      	cmp	r3, #7
2002c42c:	d101      	bne.n	2002c432 <HAL_PMU_ConfigPeriLdo+0x12>
2002c42e:	2000      	movs	r0, #0
2002c430:	bd38      	pop	{r3, r4, r5, pc}
2002c432:	6863      	ldr	r3, [r4, #4]
2002c434:	b2db      	uxtb	r3, r3
2002c436:	2b0f      	cmp	r3, #15
2002c438:	d0f9      	beq.n	2002c42e <HAL_PMU_ConfigPeriLdo+0xe>
2002c43a:	4c13      	ldr	r4, [pc, #76]	@ (2002c488 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c43c:	6863      	ldr	r3, [r4, #4]
2002c43e:	b2db      	uxtb	r3, r3
2002c440:	2b07      	cmp	r3, #7
2002c442:	d0f4      	beq.n	2002c42e <HAL_PMU_ConfigPeriLdo+0xe>
2002c444:	6863      	ldr	r3, [r4, #4]
2002c446:	b2db      	uxtb	r3, r3
2002c448:	2b0f      	cmp	r3, #15
2002c44a:	d0f0      	beq.n	2002c42e <HAL_PMU_ConfigPeriLdo+0xe>
2002c44c:	2810      	cmp	r0, #16
2002c44e:	d818      	bhi.n	2002c482 <HAL_PMU_ConfigPeriLdo+0x62>
2002c450:	4b0e      	ldr	r3, [pc, #56]	@ (2002c48c <HAL_PMU_ConfigPeriLdo+0x6c>)
2002c452:	40c3      	lsrs	r3, r0
2002c454:	07db      	lsls	r3, r3, #31
2002c456:	d514      	bpl.n	2002c482 <HAL_PMU_ConfigPeriLdo+0x62>
2002c458:	2900      	cmp	r1, #0
2002c45a:	f04f 0421 	mov.w	r4, #33	@ 0x21
2002c45e:	bf0c      	ite	eq
2002c460:	2120      	moveq	r1, #32
2002c462:	2101      	movne	r1, #1
2002c464:	4d0a      	ldr	r5, [pc, #40]	@ (2002c490 <HAL_PMU_ConfigPeriLdo+0x70>)
2002c466:	4084      	lsls	r4, r0
2002c468:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
2002c46a:	4081      	lsls	r1, r0
2002c46c:	ea23 0304 	bic.w	r3, r3, r4
2002c470:	430b      	orrs	r3, r1
2002c472:	65eb      	str	r3, [r5, #92]	@ 0x5c
2002c474:	2a00      	cmp	r2, #0
2002c476:	d0da      	beq.n	2002c42e <HAL_PMU_ConfigPeriLdo+0xe>
2002c478:	f241 3088 	movw	r0, #5000	@ 0x1388
2002c47c:	f7f5 fdcf 	bl	2002201e <HAL_Delay_us>
2002c480:	e7d5      	b.n	2002c42e <HAL_PMU_ConfigPeriLdo+0xe>
2002c482:	2001      	movs	r0, #1
2002c484:	e7d4      	b.n	2002c430 <HAL_PMU_ConfigPeriLdo+0x10>
2002c486:	bf00      	nop
2002c488:	5000b000 	.word	0x5000b000
2002c48c:	00010101 	.word	0x00010101
2002c490:	500ca000 	.word	0x500ca000

Disassembly of section .l1_ret_text_HAL_PMU_Reboot:

2002c494 <HAL_PMU_Reboot>:
2002c494:	b508      	push	{r3, lr}
2002c496:	f3ef 8310 	mrs	r3, PRIMASK
2002c49a:	2501      	movs	r5, #1
2002c49c:	f385 8810 	msr	PRIMASK, r5
2002c4a0:	2002      	movs	r0, #2
2002c4a2:	f7f6 fbb5 	bl	20022c10 <HAL_HPAON_WakeCore>
2002c4a6:	4628      	mov	r0, r5
2002c4a8:	f7f8 ff9e 	bl	200253e8 <HAL_RCC_Reset_and_Halt_LCPU>
2002c4ac:	462a      	mov	r2, r5
2002c4ae:	2100      	movs	r1, #0
2002c4b0:	2008      	movs	r0, #8
2002c4b2:	f7ff ffb5 	bl	2002c420 <HAL_PMU_ConfigPeriLdo>
2002c4b6:	f44f 50fa 	mov.w	r0, #8000	@ 0x1f40
2002c4ba:	f7f5 fd51 	bl	20021f60 <HAL_Delay_us_>
2002c4be:	2000      	movs	r0, #0
2002c4c0:	f7f8 fd92 	bl	20024fe8 <HAL_RCC_HCPU_GetClockSrc>
2002c4c4:	4604      	mov	r4, r0
2002c4c6:	b928      	cbnz	r0, 2002c4d4 <HAL_PMU_Reboot+0x40>
2002c4c8:	f7f6 fbcc 	bl	20022c64 <HAL_HPAON_EnableXT48>
2002c4cc:	4629      	mov	r1, r5
2002c4ce:	4620      	mov	r0, r4
2002c4d0:	f7f8 fe52 	bl	20025178 <HAL_RCC_HCPU_ClockSelect>
2002c4d4:	f245 0250 	movw	r2, #20560	@ 0x5050
2002c4d8:	4c09      	ldr	r4, [pc, #36]	@ (2002c500 <HAL_PMU_Reboot+0x6c>)
2002c4da:	4b0a      	ldr	r3, [pc, #40]	@ (2002c504 <HAL_PMU_Reboot+0x70>)
2002c4dc:	6763      	str	r3, [r4, #116]	@ 0x74
2002c4de:	4b0a      	ldr	r3, [pc, #40]	@ (2002c508 <HAL_PMU_Reboot+0x74>)
2002c4e0:	631a      	str	r2, [r3, #48]	@ 0x30
2002c4e2:	6823      	ldr	r3, [r4, #0]
2002c4e4:	075b      	lsls	r3, r3, #29
2002c4e6:	d506      	bpl.n	2002c4f6 <HAL_PMU_Reboot+0x62>
2002c4e8:	6823      	ldr	r3, [r4, #0]
2002c4ea:	4808      	ldr	r0, [pc, #32]	@ (2002c50c <HAL_PMU_Reboot+0x78>)
2002c4ec:	f023 0304 	bic.w	r3, r3, #4
2002c4f0:	6023      	str	r3, [r4, #0]
2002c4f2:	f7f5 fd94 	bl	2002201e <HAL_Delay_us>
2002c4f6:	6823      	ldr	r3, [r4, #0]
2002c4f8:	f043 0304 	orr.w	r3, r3, #4
2002c4fc:	6023      	str	r3, [r4, #0]
2002c4fe:	e7fe      	b.n	2002c4fe <HAL_PMU_Reboot+0x6a>
2002c500:	500ca000 	.word	0x500ca000
2002c504:	0a50c015 	.word	0x0a50c015
2002c508:	500cb000 	.word	0x500cb000
2002c50c:	000186a0 	.word	0x000186a0

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef:

2002c510 <HAL_PMU_GetHpsysVoutRef>:
2002c510:	4b04      	ldr	r3, [pc, #16]	@ (2002c524 <HAL_PMU_GetHpsysVoutRef+0x14>)
2002c512:	781a      	ldrb	r2, [r3, #0]
2002c514:	b122      	cbz	r2, 2002c520 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c516:	b118      	cbz	r0, 2002c520 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c518:	78db      	ldrb	r3, [r3, #3]
2002c51a:	7003      	strb	r3, [r0, #0]
2002c51c:	2000      	movs	r0, #0
2002c51e:	4770      	bx	lr
2002c520:	2001      	movs	r0, #1
2002c522:	4770      	bx	lr
2002c524:	20049f64 	.word	0x20049f64

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef2:

2002c528 <HAL_PMU_GetHpsysVoutRef2>:
2002c528:	4b04      	ldr	r3, [pc, #16]	@ (2002c53c <HAL_PMU_GetHpsysVoutRef2+0x14>)
2002c52a:	781a      	ldrb	r2, [r3, #0]
2002c52c:	b122      	cbz	r2, 2002c538 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c52e:	b118      	cbz	r0, 2002c538 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c530:	7b5b      	ldrb	r3, [r3, #13]
2002c532:	7003      	strb	r3, [r0, #0]
2002c534:	2000      	movs	r0, #0
2002c536:	4770      	bx	lr
2002c538:	2001      	movs	r0, #1
2002c53a:	4770      	bx	lr
2002c53c:	20049f64 	.word	0x20049f64
