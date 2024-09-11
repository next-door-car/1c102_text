
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438008f 	lu12i.w	$r15,114692(0x1c004)
1c00000c:	03a4b1ef 	ori	$r15,$r15,0x92c
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038051ef 	ori	$r15,$r15,0x14
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038011ad 	ori	$r13,$r13,0x4
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	542ae000 	bl	10976(0x2ae0) # 1c003b70 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	542b3400 	bl	11060(0x2b34) # 1c003bcc <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	542bc000 	bl	11200(0x2bc0) # 1c003c60 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	542bf400 	bl	11252(0x2bf4) # 1c003c9c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	542a0800 	bl	10760(0x2a08) # 1c003ab8 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	542dbc00 	bl	11708(0x2dbc) # 1c003e74 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	542cac00 	bl	11436(0x2cac) # 1c003d74 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b60084 	ld.w	$r4,$r4,-640(0xd80)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	54146800 	bl	5224(0x1468) # 1c00283c <DisableInt>
1c0013d8:	5413c800 	bl	5064(0x13c8) # 1c0027a0 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54188c00 	bl	6284(0x188c) # 1c002c6c <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	5417cc00 	bl	6092(0x17cc) # 1c002bb4 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	540dec00 	bl	3564(0xdec) # 1c0021e0 <Uart1_init>
1c0013f8:	54163800 	bl	5688(0x1638) # 1c002a30 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	54144400 	bl	5188(0x1444) # 1c002860 <EnableInt>
1c001420:	5416ac00 	bl	5804(0x16ac) # 1c002acc <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	5414a000 	bl	5280(0x14a0) # 1c0028c8 <Wake_Set>
1c00142c:	54181400 	bl	6164(0x1814) # 1c002c40 <WDG_DogFeed>
1c001430:	54154400 	bl	5444(0x1544) # 1c002974 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c000064 	pcaddu12i	$r4,3(0x3)
1c001444:	02aaf084 	addi.w	$r4,$r4,-1348(0xabc)
1c001448:	54055c00 	bl	1372(0x55c) # 1c0019a4 <myprintf>
1c00144c:	54159400 	bl	5524(0x1594) # 1c0029e0 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00145c:	02aad084 	addi.w	$r4,$r4,-1356(0xab4)
1c001460:	54054400 	bl	1348(0x544) # 1c0019a4 <myprintf>
1c001464:	542a4800 	bl	10824(0x2a48) # 1c003eac <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00147c:	02aa8084 	addi.w	$r4,$r4,-1376(0xaa0)
1c001480:	54052400 	bl	1316(0x524) # 1c0019a4 <myprintf>
1c001484:	542a2800 	bl	10792(0x2a28) # 1c003eac <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00149c:	02aa4084 	addi.w	$r4,$r4,-1392(0xa90)
1c0014a0:	54050400 	bl	1284(0x504) # 1c0019a4 <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <gpio_pin_remap>:
gpio_pin_remap():
1c00158c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001590:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001594:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	001500ad 	move	$r13,$r5
1c0015a0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0015a4:	001501ac 	move	$r12,$r13
1c0015a8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0015ac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0015b0:	0044918c 	srli.w	$r12,$r12,0x4
1c0015b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0015bc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0015c0:	03403d8c 	andi	$r12,$r12,0xf
1c0015c4:	0040858c 	slli.w	$r12,$r12,0x1
1c0015c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0015cc:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0015d0:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c0015d4:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001788 <gpio_pin_remap+0x1fc>
1c0015d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0015dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0015e0:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001668 <gpio_pin_remap+0xdc>
1c0015e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015e8:	40002180 	beqz	$r12,32(0x20) # 1c001608 <gpio_pin_remap+0x7c>
1c0015ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0015f0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0015f4:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c0016c8 <gpio_pin_remap+0x13c>
1c0015f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0015fc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001600:	580129ac 	beq	$r13,$r12,296(0x128) # 1c001728 <gpio_pin_remap+0x19c>
1c001604:	50018800 	b	392(0x188) # 1c00178c <gpio_pin_remap+0x200>
1c001608:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00160c:	0380418c 	ori	$r12,$r12,0x10
1c001610:	2880018d 	ld.w	$r13,$r12,0
1c001614:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001618:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00161c:	001731cc 	sll.w	$r12,$r14,$r12
1c001620:	0014300c 	nor	$r12,$r0,$r12
1c001624:	0015018e 	move	$r14,$r12
1c001628:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00162c:	0380418c 	ori	$r12,$r12,0x10
1c001630:	0014b9ad 	and	$r13,$r13,$r14
1c001634:	2980018d 	st.w	$r13,$r12,0
1c001638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00163c:	0380418c 	ori	$r12,$r12,0x10
1c001640:	2880018d 	ld.w	$r13,$r12,0
1c001644:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001648:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00164c:	001731cc 	sll.w	$r12,$r14,$r12
1c001650:	0015018e 	move	$r14,$r12
1c001654:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001658:	0380418c 	ori	$r12,$r12,0x10
1c00165c:	001539ad 	or	$r13,$r13,$r14
1c001660:	2980018d 	st.w	$r13,$r12,0
1c001664:	50012800 	b	296(0x128) # 1c00178c <gpio_pin_remap+0x200>
1c001668:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00166c:	0380518c 	ori	$r12,$r12,0x14
1c001670:	2880018d 	ld.w	$r13,$r12,0
1c001674:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001678:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00167c:	001731cc 	sll.w	$r12,$r14,$r12
1c001680:	0014300c 	nor	$r12,$r0,$r12
1c001684:	0015018e 	move	$r14,$r12
1c001688:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00168c:	0380518c 	ori	$r12,$r12,0x14
1c001690:	0014b9ad 	and	$r13,$r13,$r14
1c001694:	2980018d 	st.w	$r13,$r12,0
1c001698:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00169c:	0380518c 	ori	$r12,$r12,0x14
1c0016a0:	2880018d 	ld.w	$r13,$r12,0
1c0016a4:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0016a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016ac:	001731cc 	sll.w	$r12,$r14,$r12
1c0016b0:	0015018e 	move	$r14,$r12
1c0016b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016b8:	0380518c 	ori	$r12,$r12,0x14
1c0016bc:	001539ad 	or	$r13,$r13,$r14
1c0016c0:	2980018d 	st.w	$r13,$r12,0
1c0016c4:	5000c800 	b	200(0xc8) # 1c00178c <gpio_pin_remap+0x200>
1c0016c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016cc:	0380618c 	ori	$r12,$r12,0x18
1c0016d0:	2880018d 	ld.w	$r13,$r12,0
1c0016d4:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016dc:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e0:	0014300c 	nor	$r12,$r0,$r12
1c0016e4:	0015018e 	move	$r14,$r12
1c0016e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016ec:	0380618c 	ori	$r12,$r12,0x18
1c0016f0:	0014b9ad 	and	$r13,$r13,$r14
1c0016f4:	2980018d 	st.w	$r13,$r12,0
1c0016f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016fc:	0380618c 	ori	$r12,$r12,0x18
1c001700:	2880018d 	ld.w	$r13,$r12,0
1c001704:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001708:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00170c:	001731cc 	sll.w	$r12,$r14,$r12
1c001710:	0015018e 	move	$r14,$r12
1c001714:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001718:	0380618c 	ori	$r12,$r12,0x18
1c00171c:	001539ad 	or	$r13,$r13,$r14
1c001720:	2980018d 	st.w	$r13,$r12,0
1c001724:	50006800 	b	104(0x68) # 1c00178c <gpio_pin_remap+0x200>
1c001728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00172c:	0380718c 	ori	$r12,$r12,0x1c
1c001730:	2880018d 	ld.w	$r13,$r12,0
1c001734:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001738:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00173c:	001731cc 	sll.w	$r12,$r14,$r12
1c001740:	0014300c 	nor	$r12,$r0,$r12
1c001744:	0015018e 	move	$r14,$r12
1c001748:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00174c:	0380718c 	ori	$r12,$r12,0x1c
1c001750:	0014b9ad 	and	$r13,$r13,$r14
1c001754:	2980018d 	st.w	$r13,$r12,0
1c001758:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00175c:	0380718c 	ori	$r12,$r12,0x1c
1c001760:	2880018d 	ld.w	$r13,$r12,0
1c001764:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001768:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00176c:	001731cc 	sll.w	$r12,$r14,$r12
1c001770:	0015018e 	move	$r14,$r12
1c001774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001778:	0380718c 	ori	$r12,$r12,0x1c
1c00177c:	001539ad 	or	$r13,$r13,$r14
1c001780:	2980018d 	st.w	$r13,$r12,0
1c001784:	50000800 	b	8(0x8) # 1c00178c <gpio_pin_remap+0x200>
1c001788:	03400000 	andi	$r0,$r0,0x0
1c00178c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001790:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001794:	4c000020 	jirl	$r0,$r1,0

1c001798 <myputchar>:
myputchar():
1c001798:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00179c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0017a0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0017a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0017a8:	0015008c 	move	$r12,$r4
1c0017ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0017b0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0017b4:	00150185 	move	$r5,$r12
1c0017b8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0017bc:	54098c00 	bl	2444(0x98c) # 1c002148 <UART_SendData>
1c0017c0:	03400000 	andi	$r0,$r0,0x0
1c0017c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0017c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0017cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0017d0:	4c000020 	jirl	$r0,$r1,0

1c0017d4 <printbase>:
printbase():
1c0017d4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0017d8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0017dc:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0017e0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0017e4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0017e8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0017ec:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0017f0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0017f4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0017f8:	40002580 	beqz	$r12,36(0x24) # 1c00181c <printbase+0x48>
1c0017fc:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001800:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c00181c <printbase+0x48>
1c001804:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001808:	0011300c 	sub.w	$r12,$r0,$r12
1c00180c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001810:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001814:	57ff87ff 	bl	-124(0xfffff84) # 1c001798 <myputchar>
1c001818:	50000c00 	b	12(0xc) # 1c001824 <printbase+0x50>
1c00181c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001820:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001824:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001828:	50005000 	b	80(0x50) # 1c001878 <printbase+0xa4>
1c00182c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001830:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001834:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001838:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001840 <printbase+0x6c>
1c00183c:	002a0007 	break	0x7
1c001840:	00005dcc 	ext.w.b	$r12,$r14
1c001844:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001848:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00184c:	001035cd 	add.w	$r13,$r14,$r13
1c001850:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001854:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001858:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c00185c:	002135cc 	div.wu	$r12,$r14,$r13
1c001860:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001868 <printbase+0x94>
1c001864:	002a0007 	break	0x7
1c001868:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00186c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001870:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001874:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001878:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00187c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c00182c <printbase+0x58>
1c001880:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001884:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001888:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c00188c:	001231ad 	slt	$r13,$r13,$r12
1c001890:	0013b5ce 	masknez	$r14,$r14,$r13
1c001894:	0013358c 	maskeqz	$r12,$r12,$r13
1c001898:	001531cc 	or	$r12,$r14,$r12
1c00189c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0018a0:	50007400 	b	116(0x74) # 1c001914 <printbase+0x140>
1c0018a4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0018a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018ac:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0018c8 <printbase+0xf4>
1c0018b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0018b4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0018b8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0018bc:	001031ac 	add.w	$r12,$r13,$r12
1c0018c0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0018c4:	50000800 	b	8(0x8) # 1c0018cc <printbase+0xf8>
1c0018c8:	0015000c 	move	$r12,$r0
1c0018cc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0018d0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0018d4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0018d8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0018f0 <printbase+0x11c>
1c0018dc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0018e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0018e4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0018e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0018ec:	50001400 	b	20(0x14) # 1c001900 <printbase+0x12c>
1c0018f0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0018f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0018f8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c0018fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001900:	00150184 	move	$r4,$r12
1c001904:	57fe97ff 	bl	-364(0xffffe94) # 1c001798 <myputchar>
1c001908:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00190c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001910:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001914:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001918:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0018a4 <printbase+0xd0>
1c00191c:	0015000c 	move	$r12,$r0
1c001920:	00150184 	move	$r4,$r12
1c001924:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001928:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c00192c:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001930:	4c000020 	jirl	$r0,$r1,0

1c001934 <puts>:
puts():
1c001934:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001938:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00193c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001940:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001944:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001948:	50003000 	b	48(0x30) # 1c001978 <puts+0x44>
1c00194c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001950:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001954:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001960 <puts+0x2c>
1c001958:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00195c:	57fe3fff 	bl	-452(0xffffe3c) # 1c001798 <myputchar>
1c001960:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001964:	00150184 	move	$r4,$r12
1c001968:	57fe33ff 	bl	-464(0xffffe30) # 1c001798 <myputchar>
1c00196c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001970:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001974:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001978:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00197c:	2a00018c 	ld.bu	$r12,$r12,0
1c001980:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001984:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001988:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c00194c <puts+0x18>
1c00198c:	0015000c 	move	$r12,$r0
1c001990:	00150184 	move	$r4,$r12
1c001994:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001998:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00199c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0019a0:	4c000020 	jirl	$r0,$r1,0

1c0019a4 <myprintf>:
myprintf():
1c0019a4:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c0019a8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0019ac:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0019b0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0019b4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0019b8:	298012c5 	st.w	$r5,$r22,4(0x4)
1c0019bc:	298022c6 	st.w	$r6,$r22,8(0x8)
1c0019c0:	298032c7 	st.w	$r7,$r22,12(0xc)
1c0019c4:	298042c8 	st.w	$r8,$r22,16(0x10)
1c0019c8:	298052c9 	st.w	$r9,$r22,20(0x14)
1c0019cc:	298062ca 	st.w	$r10,$r22,24(0x18)
1c0019d0:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c0019d4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c0019d8:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c0019dc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0019e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0019e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0019e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0019ec:	50033000 	b	816(0x330) # 1c001d1c <myprintf+0x378>
1c0019f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019f4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0019f8:	001031ac 	add.w	$r12,$r13,$r12
1c0019fc:	2a00018c 	ld.bu	$r12,$r12,0
1c001a00:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001a04:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001a08:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001a0c:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001cf0 <myprintf+0x34c>
1c001a10:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001a14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001a24:	001031ac 	add.w	$r12,$r13,$r12
1c001a28:	2800018c 	ld.b	$r12,$r12,0
1c001a2c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001a30:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001a34:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001ce0 <myprintf+0x33c>
1c001a38:	0040898d 	slli.w	$r13,$r12,0x2
1c001a3c:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c001a40:	0293e18c 	addi.w	$r12,$r12,1272(0x4f8)
1c001a44:	001031ac 	add.w	$r12,$r13,$r12
1c001a48:	2880018c 	ld.w	$r12,$r12,0
1c001a4c:	4c000180 	jirl	$r0,$r12,0
1c001a50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a54:	2880018c 	ld.w	$r12,$r12,0
1c001a58:	00150184 	move	$r4,$r12
1c001a5c:	57fedbff 	bl	-296(0xffffed8) # 1c001934 <puts>
1c001a60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001a68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a78:	50029800 	b	664(0x298) # 1c001d10 <myprintf+0x36c>
1c001a7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a80:	2880018c 	ld.w	$r12,$r12,0
1c001a84:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a88:	00150184 	move	$r4,$r12
1c001a8c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001798 <myputchar>
1c001a90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a94:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001a98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001aa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001aa4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001aa8:	50026800 	b	616(0x268) # 1c001d10 <myprintf+0x36c>
1c001aac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ab0:	2880018c 	ld.w	$r12,$r12,0
1c001ab4:	00150007 	move	$r7,$r0
1c001ab8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001abc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ac0:	00150184 	move	$r4,$r12
1c001ac4:	57fd13ff 	bl	-752(0xffffd10) # 1c0017d4 <printbase>
1c001ac8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001acc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ad0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ad4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ad8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001adc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ae0:	50023000 	b	560(0x230) # 1c001d10 <myprintf+0x36c>
1c001ae4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ae8:	2880018c 	ld.w	$r12,$r12,0
1c001aec:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001af0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001af4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001af8:	00150184 	move	$r4,$r12
1c001afc:	57fcdbff 	bl	-808(0xffffcd8) # 1c0017d4 <printbase>
1c001b00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001b08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b18:	5001f800 	b	504(0x1f8) # 1c001d10 <myprintf+0x36c>
1c001b1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b20:	2880018c 	ld.w	$r12,$r12,0
1c001b24:	00150007 	move	$r7,$r0
1c001b28:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001b2c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001b30:	00150184 	move	$r4,$r12
1c001b34:	57fca3ff 	bl	-864(0xffffca0) # 1c0017d4 <printbase>
1c001b38:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b3c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001b40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b50:	5001c000 	b	448(0x1c0) # 1c001d10 <myprintf+0x36c>
1c001b54:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b58:	2880018c 	ld.w	$r12,$r12,0
1c001b5c:	00150007 	move	$r7,$r0
1c001b60:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001b64:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001b68:	00150184 	move	$r4,$r12
1c001b6c:	57fc6bff 	bl	-920(0xffffc68) # 1c0017d4 <printbase>
1c001b70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b74:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001b78:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b88:	50018800 	b	392(0x188) # 1c001d10 <myprintf+0x36c>
1c001b8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b90:	2880018c 	ld.w	$r12,$r12,0
1c001b94:	00150007 	move	$r7,$r0
1c001b98:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001b9c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ba0:	00150184 	move	$r4,$r12
1c001ba4:	57fc33ff 	bl	-976(0xffffc30) # 1c0017d4 <printbase>
1c001ba8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001bac:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001bb0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bb8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bbc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001bc0:	50015000 	b	336(0x150) # 1c001d10 <myprintf+0x36c>
1c001bc4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001bc8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001798 <myputchar>
1c001bcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001bd8:	50013800 	b	312(0x138) # 1c001d10 <myprintf+0x36c>
1c001bdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001be4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001be8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001bec:	50003c00 	b	60(0x3c) # 1c001c28 <myprintf+0x284>
1c001bf0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001bf4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001bf8:	001c31ad 	mul.w	$r13,$r13,$r12
1c001bfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c04:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001c08:	001031cc 	add.w	$r12,$r14,$r12
1c001c0c:	2800018c 	ld.b	$r12,$r12,0
1c001c10:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001c14:	001031ac 	add.w	$r12,$r13,$r12
1c001c18:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c30:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c34:	001031ac 	add.w	$r12,$r13,$r12
1c001c38:	2800018d 	ld.b	$r13,$r12,0
1c001c3c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001c40:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001a18 <myprintf+0x74>
1c001c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c4c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c50:	001031ac 	add.w	$r12,$r13,$r12
1c001c54:	2800018d 	ld.b	$r13,$r12,0
1c001c58:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001c5c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001bf0 <myprintf+0x24c>
1c001c60:	53fdbbff 	b	-584(0xffffdb8) # 1c001a18 <myprintf+0x74>
1c001c64:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001c68:	50003c00 	b	60(0x3c) # 1c001ca4 <myprintf+0x300>
1c001c6c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001c70:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001c74:	001c31ad 	mul.w	$r13,$r13,$r12
1c001c78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c80:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001c84:	001031cc 	add.w	$r12,$r14,$r12
1c001c88:	2800018c 	ld.b	$r12,$r12,0
1c001c8c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001c90:	001031ac 	add.w	$r12,$r13,$r12
1c001c94:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ca0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ca4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ca8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cac:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001cb0:	001031ac 	add.w	$r12,$r13,$r12
1c001cb4:	2800018d 	ld.b	$r13,$r12,0
1c001cb8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001cbc:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001a18 <myprintf+0x74>
1c001cc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cc8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ccc:	001031ac 	add.w	$r12,$r13,$r12
1c001cd0:	2800018d 	ld.b	$r13,$r12,0
1c001cd4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001cd8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001c6c <myprintf+0x2c8>
1c001cdc:	53fd3fff 	b	-708(0xffffd3c) # 1c001a18 <myprintf+0x74>
1c001ce0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ce4:	57fab7ff 	bl	-1356(0xffffab4) # 1c001798 <myputchar>
1c001ce8:	03400000 	andi	$r0,$r0,0x0
1c001cec:	50002400 	b	36(0x24) # 1c001d10 <myprintf+0x36c>
1c001cf0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001cf4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001cf8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001d04 <myprintf+0x360>
1c001cfc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001d00:	57fa9bff 	bl	-1384(0xffffa98) # 1c001798 <myputchar>
1c001d04:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001d08:	00150184 	move	$r4,$r12
1c001d0c:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001798 <myputchar>
1c001d10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d24:	001031ac 	add.w	$r12,$r13,$r12
1c001d28:	2800018c 	ld.b	$r12,$r12,0
1c001d2c:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c0019f0 <myprintf+0x4c>
1c001d30:	0015000c 	move	$r12,$r0
1c001d34:	00150184 	move	$r4,$r12
1c001d38:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001d3c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001d40:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001d44:	4c000020 	jirl	$r0,$r1,0

1c001d48 <UART_Init>:
UART_Init():
1c001d48:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001d4c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001d50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001d54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001d58:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001d5c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001d60:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001d64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001d68:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d70:	03403d8c 	andi	$r12,$r12,0xf
1c001d74:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001d7c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d84:	0044918c 	srli.w	$r12,$r12,0x4
1c001d88:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001d8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d90:	40000d80 	beqz	$r12,12(0xc) # 1c001d9c <UART_Init+0x54>
1c001d94:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001d98:	44001980 	bnez	$r12,24(0x18) # 1c001db0 <UART_Init+0x68>
1c001d9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001da0:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c001da4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001da8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c001dac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001db0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001db4:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c001db8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001dd0 <UART_Init+0x88>
1c001dbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001dc0:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c001dc4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001dc8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001dcc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001dd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001dd4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001dd8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001ddc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001de0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001de4:	580011ac 	beq	$r13,$r12,16(0x10) # 1c001df4 <UART_Init+0xac>
1c001de8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001dec:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c001df0:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c001e50 <UART_Init+0x108>
1c001df4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001df8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001dfc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001e00:	2880018c 	ld.w	$r12,$r12,0
1c001e04:	002131ae 	div.wu	$r14,$r13,$r12
1c001e08:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001e10 <UART_Init+0xc8>
1c001e0c:	002a0007 	break	0x7
1c001e10:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001e14:	002135cc 	div.wu	$r12,$r14,$r13
1c001e18:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001e20 <UART_Init+0xd8>
1c001e1c:	002a0007 	break	0x7
1c001e20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e24:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001e28:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001e2c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001e30:	2880018e 	ld.w	$r14,$r12,0
1c001e34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e38:	001c31ce 	mul.w	$r14,$r14,$r12
1c001e3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e40:	001c31cc 	mul.w	$r12,$r14,$r12
1c001e44:	001131ac 	sub.w	$r12,$r13,$r12
1c001e48:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e4c:	50005400 	b	84(0x54) # 1c001ea0 <UART_Init+0x158>
1c001e50:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001e54:	2880018c 	ld.w	$r12,$r12,0
1c001e58:	1400010d 	lu12i.w	$r13,8(0x8)
1c001e5c:	002131ae 	div.wu	$r14,$r13,$r12
1c001e60:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001e68 <UART_Init+0x120>
1c001e64:	002a0007 	break	0x7
1c001e68:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001e6c:	002135cc 	div.wu	$r12,$r14,$r13
1c001e70:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001e78 <UART_Init+0x130>
1c001e74:	002a0007 	break	0x7
1c001e78:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e7c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001e80:	2880018d 	ld.w	$r13,$r12,0
1c001e84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e88:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e90:	001c31ac 	mul.w	$r12,$r13,$r12
1c001e94:	1400010d 	lu12i.w	$r13,8(0x8)
1c001e98:	001131ac 	sub.w	$r12,$r13,$r12
1c001e9c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ea0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001ea4:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c001ea8:	001c31ad 	mul.w	$r13,$r13,$r12
1c001eac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001eb0:	2880018c 	ld.w	$r12,$r12,0
1c001eb4:	002131ae 	div.wu	$r14,$r13,$r12
1c001eb8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ec0 <UART_Init+0x178>
1c001ebc:	002a0007 	break	0x7
1c001ec0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001ec4:	002135cc 	div.wu	$r12,$r14,$r13
1c001ec8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001ed0 <UART_Init+0x188>
1c001ecc:	002a0007 	break	0x7
1c001ed0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ed4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ed8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001edc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001ee0:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c001ee4:	001531ac 	or	$r12,$r13,$r12
1c001ee8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001eec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ef0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001ef4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ef8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001efc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f00:	2900018d 	st.b	$r13,$r12,0
1c001f04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f08:	0044a18c 	srli.w	$r12,$r12,0x8
1c001f0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f14:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f1c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001f20:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001f24:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f28:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f2c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001f30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f34:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001f38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001f3c:	0341fd8c 	andi	$r12,$r12,0x7f
1c001f40:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f44:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f48:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001f4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f50:	29000580 	st.b	$r0,$r12,1(0x1)
1c001f54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f58:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001f5c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f60:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001f64:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c001f68:	001531ac 	or	$r12,$r13,$r12
1c001f6c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f74:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001f78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f7c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001f80:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f84:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001f88:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c001f8c:	001531ac 	or	$r12,$r13,$r12
1c001f90:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f98:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001f9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fa0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001fa4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fa8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001fac:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c001fb0:	001531ac 	or	$r12,$r13,$r12
1c001fb4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fbc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001fc0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fc4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001fc8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fcc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001fd0:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c001fd4:	001531ac 	or	$r12,$r13,$r12
1c001fd8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fe0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001fe4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fe8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001fec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001ff0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ff4:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c001ff8:	001531ac 	or	$r12,$r13,$r12
1c001ffc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002000:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002004:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002008:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00200c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002010:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002014:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002018:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c00201c:	001531ac 	or	$r12,$r13,$r12
1c002020:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002024:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002028:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00202c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002030:	2a00018c 	ld.bu	$r12,$r12,0
1c002034:	03400000 	andi	$r0,$r0,0x0
1c002038:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00203c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002040:	4c000020 	jirl	$r0,$r1,0

1c002044 <UART_StructInit>:
UART_StructInit():
1c002044:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002048:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00204c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002050:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002054:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002058:	1400038d 	lu12i.w	$r13,28(0x1c)
1c00205c:	038801ad 	ori	$r13,$r13,0x200
1c002060:	2980018d 	st.w	$r13,$r12,0
1c002064:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002068:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00206c:	038801ad 	ori	$r13,$r13,0x200
1c002070:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002078:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00207c:	2900298d 	st.b	$r13,$r12,10(0xa)
1c002080:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002084:	29002d80 	st.b	$r0,$r12,11(0xb)
1c002088:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00208c:	29003580 	st.b	$r0,$r12,13(0xd)
1c002090:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002094:	29003180 	st.b	$r0,$r12,12(0xc)
1c002098:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00209c:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0020a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020a4:	29003980 	st.b	$r0,$r12,14(0xe)
1c0020a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020ac:	29402180 	st.h	$r0,$r12,8(0x8)
1c0020b0:	03400000 	andi	$r0,$r0,0x0
1c0020b4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0020b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0020bc:	4c000020 	jirl	$r0,$r1,0

1c0020c0 <UART_ITConfig>:
UART_ITConfig():
1c0020c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0020c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0020c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0020cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0020d0:	001500ac 	move	$r12,$r5
1c0020d4:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0020d8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0020dc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0020e0:	40002980 	beqz	$r12,40(0x28) # 1c002108 <UART_ITConfig+0x48>
1c0020e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020e8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0020ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020f0:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0020f4:	001531ac 	or	$r12,$r13,$r12
1c0020f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002100:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002104:	50003400 	b	52(0x34) # 1c002138 <UART_ITConfig+0x78>
1c002108:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00210c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002110:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002114:	00005d8d 	ext.w.b	$r13,$r12
1c002118:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c00211c:	0014300c 	nor	$r12,$r0,$r12
1c002120:	00005d8c 	ext.w.b	$r12,$r12
1c002124:	0014b1ac 	and	$r12,$r13,$r12
1c002128:	00005d8c 	ext.w.b	$r12,$r12
1c00212c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002130:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002134:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002138:	03400000 	andi	$r0,$r0,0x0
1c00213c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002140:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002144:	4c000020 	jirl	$r0,$r1,0

1c002148 <UART_SendData>:
UART_SendData():
1c002148:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00214c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002150:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002154:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002158:	001500ac 	move	$r12,$r5
1c00215c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002160:	03400000 	andi	$r0,$r0,0x0
1c002164:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002168:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00216c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002170:	0340818c 	andi	$r12,$r12,0x20
1c002174:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002164 <UART_SendData+0x1c>
1c002178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00217c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c002180:	2900018d 	st.b	$r13,$r12,0
1c002184:	03400000 	andi	$r0,$r0,0x0
1c002188:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00218c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002190:	4c000020 	jirl	$r0,$r1,0

1c002194 <UART_ReceiveData>:
UART_ReceiveData():
1c002194:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002198:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00219c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0021a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021a4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0021a8:	03400000 	andi	$r0,$r0,0x0
1c0021ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021b0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0021b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021b8:	0340058c 	andi	$r12,$r12,0x1
1c0021bc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0021ac <UART_ReceiveData+0x18>
1c0021c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0021c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0021cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0021d0:	00150184 	move	$r4,$r12
1c0021d4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0021d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0021dc:	4c000020 	jirl	$r0,$r1,0

1c0021e0 <Uart1_init>:
Uart1_init():
1c0021e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0021e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0021e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0021ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0021f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021f4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0021f8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0021fc:	57f393ff 	bl	-3184(0xffff390) # 1c00158c <gpio_pin_remap>
1c002200:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002204:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002208:	57f387ff 	bl	-3196(0xffff384) # 1c00158c <gpio_pin_remap>
1c00220c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002210:	00150184 	move	$r4,$r12
1c002214:	57fe33ff 	bl	-464(0xffffe30) # 1c002044 <UART_StructInit>
1c002218:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00221c:	28b7c18c 	ld.w	$r12,$r12,-528(0xdf0)
1c002220:	2880018c 	ld.w	$r12,$r12,0
1c002224:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002228:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00222c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002230:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002234:	00150185 	move	$r5,$r12
1c002238:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c00223c:	57fb0fff 	bl	-1268(0xffffb0c) # 1c001d48 <UART_Init>
1c002240:	00150006 	move	$r6,$r0
1c002244:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002248:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c00224c:	57fe77ff 	bl	-396(0xffffe74) # 1c0020c0 <UART_ITConfig>
1c002250:	03400000 	andi	$r0,$r0,0x0
1c002254:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002258:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00225c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002260:	4c000020 	jirl	$r0,$r1,0

1c002264 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002264:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002268:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00226c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002270:	1400006c 	lu12i.w	$r12,3(0x3)
1c002274:	03ba018c 	ori	$r12,$r12,0xe80
1c002278:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00227c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002280:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002284:	2880018d 	ld.w	$r13,$r12,0
1c002288:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00228c:	038101ad 	ori	$r13,$r13,0x40
1c002290:	2980018d 	st.w	$r13,$r12,0
1c002294:	03400000 	andi	$r0,$r0,0x0
1c002298:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00229c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0022a0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0022a4:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002298 <CLOCK_WaitForHSEStartUp+0x34>
1c0022a8:	50001c00 	b	28(0x1c) # 1c0022c4 <CLOCK_WaitForHSEStartUp+0x60>
1c0022ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022b0:	2880018e 	ld.w	$r14,$r12,0
1c0022b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022b8:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c0022bc:	0014b5cd 	and	$r13,$r14,$r13
1c0022c0:	2980018d 	st.w	$r13,$r12,0
1c0022c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022c8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0022cc:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c0022ac <CLOCK_WaitForHSEStartUp+0x48>
1c0022d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022d4:	2880018d 	ld.w	$r13,$r12,0
1c0022d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022dc:	038201ad 	ori	$r13,$r13,0x80
1c0022e0:	2980018d 	st.w	$r13,$r12,0
1c0022e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0022e8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0022ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022f0:	00150184 	move	$r4,$r12
1c0022f4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0022f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022fc:	4c000020 	jirl	$r0,$r1,0

1c002300 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002300:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002304:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002308:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00230c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002310:	50008800 	b	136(0x88) # 1c002398 <CLOCK_WaitForLSEStartUp+0x98>
1c002314:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002318:	2880018e 	ld.w	$r14,$r12,0
1c00231c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002320:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002324:	0014b5cd 	and	$r13,$r14,$r13
1c002328:	2980018d 	st.w	$r13,$r12,0
1c00232c:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002330:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002334:	50001400 	b	20(0x14) # 1c002348 <CLOCK_WaitForLSEStartUp+0x48>
1c002338:	03400000 	andi	$r0,$r0,0x0
1c00233c:	03400000 	andi	$r0,$r0,0x0
1c002340:	03400000 	andi	$r0,$r0,0x0
1c002344:	03400000 	andi	$r0,$r0,0x0
1c002348:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00234c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002350:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002354:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002338 <CLOCK_WaitForLSEStartUp+0x38>
1c002358:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00235c:	2880018d 	ld.w	$r13,$r12,0
1c002360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002364:	038081ad 	ori	$r13,$r13,0x20
1c002368:	2980018d 	st.w	$r13,$r12,0
1c00236c:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002370:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002374:	50001400 	b	20(0x14) # 1c002388 <CLOCK_WaitForLSEStartUp+0x88>
1c002378:	03400000 	andi	$r0,$r0,0x0
1c00237c:	03400000 	andi	$r0,$r0,0x0
1c002380:	03400000 	andi	$r0,$r0,0x0
1c002384:	03400000 	andi	$r0,$r0,0x0
1c002388:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00238c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002390:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002394:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002378 <CLOCK_WaitForLSEStartUp+0x78>
1c002398:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00239c:	0380118c 	ori	$r12,$r12,0x4
1c0023a0:	2880018d 	ld.w	$r13,$r12,0
1c0023a4:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c0023a8:	0014b1ac 	and	$r12,$r13,$r12
1c0023ac:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002314 <CLOCK_WaitForLSEStartUp+0x14>
1c0023b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0023b4:	0380118c 	ori	$r12,$r12,0x4
1c0023b8:	2880018d 	ld.w	$r13,$r12,0
1c0023bc:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c0023c0:	0014b1ac 	and	$r12,$r13,$r12
1c0023c4:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002314 <CLOCK_WaitForLSEStartUp+0x14>
1c0023c8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0023cc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0023d0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023d4:	00150184 	move	$r4,$r12
1c0023d8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0023dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0023e0:	4c000020 	jirl	$r0,$r1,0

1c0023e4 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c0023e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0023e8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0023ec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0023f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0023f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0023f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0023fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002400:	2880018e 	ld.w	$r14,$r12,0
1c002404:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002408:	0014300d 	nor	$r13,$r0,$r12
1c00240c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002410:	0014b5cd 	and	$r13,$r14,$r13
1c002414:	2980018d 	st.w	$r13,$r12,0
1c002418:	1400002c 	lu12i.w	$r12,1(0x1)
1c00241c:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002420:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002424:	50001400 	b	20(0x14) # 1c002438 <CLOCK_HSEConfig+0x54>
1c002428:	03400000 	andi	$r0,$r0,0x0
1c00242c:	03400000 	andi	$r0,$r0,0x0
1c002430:	03400000 	andi	$r0,$r0,0x0
1c002434:	03400000 	andi	$r0,$r0,0x0
1c002438:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00243c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002440:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002444:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002428 <CLOCK_HSEConfig+0x44>
1c002448:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00244c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002450:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002460 <CLOCK_HSEConfig+0x7c>
1c002454:	57fe13ff 	bl	-496(0xffffe10) # 1c002264 <CLOCK_WaitForHSEStartUp>
1c002458:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00245c:	50002400 	b	36(0x24) # 1c002480 <CLOCK_HSEConfig+0x9c>
1c002460:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002464:	2880018e 	ld.w	$r14,$r12,0
1c002468:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00246c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002470:	0014b5cd 	and	$r13,$r14,$r13
1c002474:	2980018d 	st.w	$r13,$r12,0
1c002478:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00247c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002480:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002484:	00150184 	move	$r4,$r12
1c002488:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00248c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002490:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002494:	4c000020 	jirl	$r0,$r1,0

1c002498 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002498:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00249c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0024a0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0024a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0024a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024ac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0024b0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024b4:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0024b8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0024c8 <CLOCK_LSEConfig+0x30>
1c0024bc:	57fe47ff 	bl	-444(0xffffe44) # 1c002300 <CLOCK_WaitForLSEStartUp>
1c0024c0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0024c4:	50002400 	b	36(0x24) # 1c0024e8 <CLOCK_LSEConfig+0x50>
1c0024c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024cc:	2880018e 	ld.w	$r14,$r12,0
1c0024d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024d4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c0024d8:	0014b5cd 	and	$r13,$r14,$r13
1c0024dc:	2980018d 	st.w	$r13,$r12,0
1c0024e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0024e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024ec:	00150184 	move	$r4,$r12
1c0024f0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0024f4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0024f8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0024fc:	4c000020 	jirl	$r0,$r1,0

1c002500 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002500:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002504:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002508:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00250c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002510:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002514:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002518:	2980018d 	st.w	$r13,$r12,0
1c00251c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002520:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002524:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002528:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00252c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002530:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002534:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002538:	29803180 	st.w	$r0,$r12,12(0xc)
1c00253c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002540:	29804180 	st.w	$r0,$r12,16(0x10)
1c002544:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002548:	29805180 	st.w	$r0,$r12,20(0x14)
1c00254c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002550:	29806180 	st.w	$r0,$r12,24(0x18)
1c002554:	03400000 	andi	$r0,$r0,0x0
1c002558:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00255c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002560:	4c000020 	jirl	$r0,$r1,0

1c002564 <CLOCK_Init>:
CLOCK_Init():
1c002564:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002568:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00256c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002570:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002574:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002578:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00257c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002580:	2880018e 	ld.w	$r14,$r12,0
1c002584:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002588:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c00258c:	0014b5cd 	and	$r13,$r14,$r13
1c002590:	2980018d 	st.w	$r13,$r12,0
1c002594:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002598:	2880018e 	ld.w	$r14,$r12,0
1c00259c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025a0:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0025a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025a8:	001535cd 	or	$r13,$r14,$r13
1c0025ac:	2980018d 	st.w	$r13,$r12,0
1c0025b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025b4:	2880018e 	ld.w	$r14,$r12,0
1c0025b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025bc:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c0025c0:	0014b5cd 	and	$r13,$r14,$r13
1c0025c4:	2980018d 	st.w	$r13,$r12,0
1c0025c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025cc:	2880018e 	ld.w	$r14,$r12,0
1c0025d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025d4:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0025d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025dc:	001535cd 	or	$r13,$r14,$r13
1c0025e0:	2980018d 	st.w	$r13,$r12,0
1c0025e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025e8:	2880018e 	ld.w	$r14,$r12,0
1c0025ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025f0:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c0025f4:	039ffdad 	ori	$r13,$r13,0x7ff
1c0025f8:	0014b5cd 	and	$r13,$r14,$r13
1c0025fc:	2980018d 	st.w	$r13,$r12,0
1c002600:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002604:	2880018e 	ld.w	$r14,$r12,0
1c002608:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00260c:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002610:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002614:	001535cd 	or	$r13,$r14,$r13
1c002618:	2980018d 	st.w	$r13,$r12,0
1c00261c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002620:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002624:	00150184 	move	$r4,$r12
1c002628:	57fdbfff 	bl	-580(0xffffdbc) # 1c0023e4 <CLOCK_HSEConfig>
1c00262c:	0015008d 	move	$r13,$r4
1c002630:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002634:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002640 <CLOCK_Init+0xdc>
1c002638:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00263c:	50015000 	b	336(0x150) # 1c00278c <CLOCK_Init+0x228>
1c002640:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002644:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002648:	00150184 	move	$r4,$r12
1c00264c:	57fe4fff 	bl	-436(0xffffe4c) # 1c002498 <CLOCK_LSEConfig>
1c002650:	0015008d 	move	$r13,$r4
1c002654:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002658:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002664 <CLOCK_Init+0x100>
1c00265c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002660:	50012c00 	b	300(0x12c) # 1c00278c <CLOCK_Init+0x228>
1c002664:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002668:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00266c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002670:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c00276c <CLOCK_Init+0x208>
1c002674:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002678:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c00267c:	4000a180 	beqz	$r12,160(0xa0) # 1c00271c <CLOCK_Init+0x1b8>
1c002680:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002684:	2880018e 	ld.w	$r14,$r12,0
1c002688:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00268c:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002690:	03bffdad 	ori	$r13,$r13,0xfff
1c002694:	0014b5cd 	and	$r13,$r14,$r13
1c002698:	2980018d 	st.w	$r13,$r12,0
1c00269c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026a0:	2880018e 	ld.w	$r14,$r12,0
1c0026a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026a8:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c0026ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026b0:	001535cd 	or	$r13,$r14,$r13
1c0026b4:	2980018d 	st.w	$r13,$r12,0
1c0026b8:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0026bc:	0386c18c 	ori	$r12,$r12,0x1b0
1c0026c0:	2880018c 	ld.w	$r12,$r12,0
1c0026c4:	40004180 	beqz	$r12,64(0x40) # 1c002704 <CLOCK_Init+0x1a0>
1c0026c8:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0026cc:	0386c18c 	ori	$r12,$r12,0x1b0
1c0026d0:	2880018c 	ld.w	$r12,$r12,0
1c0026d4:	0040898e 	slli.w	$r14,$r12,0x2
1c0026d8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0026dc:	002031cd 	div.w	$r13,$r14,$r12
1c0026e0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026e8 <CLOCK_Init+0x184>
1c0026e4:	002a0007 	break	0x7
1c0026e8:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0026ec:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026f0:	0015018d 	move	$r13,$r12
1c0026f4:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0026f8:	02a4718c 	addi.w	$r12,$r12,-1764(0x91c)
1c0026fc:	2980018d 	st.w	$r13,$r12,0
1c002700:	50008000 	b	128(0x80) # 1c002780 <CLOCK_Init+0x21c>
1c002704:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002708:	02a4318c 	addi.w	$r12,$r12,-1780(0x90c)
1c00270c:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002710:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002714:	2980018d 	st.w	$r13,$r12,0
1c002718:	50006800 	b	104(0x68) # 1c002780 <CLOCK_Init+0x21c>
1c00271c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002720:	0386c18c 	ori	$r12,$r12,0x1b0
1c002724:	2880018c 	ld.w	$r12,$r12,0
1c002728:	40002d80 	beqz	$r12,44(0x2c) # 1c002754 <CLOCK_Init+0x1f0>
1c00272c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002730:	0386c18c 	ori	$r12,$r12,0x1b0
1c002734:	2880018d 	ld.w	$r13,$r12,0
1c002738:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c00273c:	001c31ac 	mul.w	$r12,$r13,$r12
1c002740:	0015018d 	move	$r13,$r12
1c002744:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002748:	02a3318c 	addi.w	$r12,$r12,-1844(0x8cc)
1c00274c:	2980018d 	st.w	$r13,$r12,0
1c002750:	50003000 	b	48(0x30) # 1c002780 <CLOCK_Init+0x21c>
1c002754:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002758:	02a2f18c 	addi.w	$r12,$r12,-1860(0x8bc)
1c00275c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002760:	038801ad 	ori	$r13,$r13,0x200
1c002764:	2980018d 	st.w	$r13,$r12,0
1c002768:	50001800 	b	24(0x18) # 1c002780 <CLOCK_Init+0x21c>
1c00276c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002770:	02a2918c 	addi.w	$r12,$r12,-1884(0x8a4)
1c002774:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002778:	038801ad 	ori	$r13,$r13,0x200
1c00277c:	2980018d 	st.w	$r13,$r12,0
1c002780:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002784:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002788:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00278c:	00150184 	move	$r4,$r12
1c002790:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002794:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002798:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00279c:	4c000020 	jirl	$r0,$r1,0

1c0027a0 <SystemClockInit>:
SystemClockInit():
1c0027a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0027a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0027a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0027ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0027b0:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c0027b4:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0027b8:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0027bc:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0027c0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0027c4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0027c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0027cc:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0027d0:	00150184 	move	$r4,$r12
1c0027d4:	57fd2fff 	bl	-724(0xffffd2c) # 1c002500 <CLOCK_StructInit>
1c0027d8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0027dc:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0027e0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0027e4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0027e8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0027ec:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0027f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0027f4:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c0027f8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0027fc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002800:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002804:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002808:	00150184 	move	$r4,$r12
1c00280c:	57fd5bff 	bl	-680(0xffffd58) # 1c002564 <CLOCK_Init>
1c002810:	0015008d 	move	$r13,$r4
1c002814:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002818:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002824 <SystemClockInit+0x84>
1c00281c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002820:	50000800 	b	8(0x8) # 1c002828 <SystemClockInit+0x88>
1c002824:	0015000c 	move	$r12,$r0
1c002828:	00150184 	move	$r4,$r12
1c00282c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002830:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002834:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002838:	4c000020 	jirl	$r0,$r1,0

1c00283c <DisableInt>:
DisableInt():
1c00283c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002840:	29803076 	st.w	$r22,$r3,12(0xc)
1c002844:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002848:	0380100c 	ori	$r12,$r0,0x4
1c00284c:	04000180 	csrxchg	$r0,$r12,0x0
1c002850:	03400000 	andi	$r0,$r0,0x0
1c002854:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002858:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00285c:	4c000020 	jirl	$r0,$r1,0

1c002860 <EnableInt>:
EnableInt():
1c002860:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002864:	29803076 	st.w	$r22,$r3,12(0xc)
1c002868:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00286c:	0380100c 	ori	$r12,$r0,0x4
1c002870:	0400018c 	csrxchg	$r12,$r12,0x0
1c002874:	03400000 	andi	$r0,$r0,0x0
1c002878:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00287c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002880:	4c000020 	jirl	$r0,$r1,0

1c002884 <Set_Timer_stop>:
Set_Timer_stop():
1c002884:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002888:	29803076 	st.w	$r22,$r3,12(0xc)
1c00288c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002890:	04010420 	csrwr	$r0,0x41
1c002894:	03400000 	andi	$r0,$r0,0x0
1c002898:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00289c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0028a0:	4c000020 	jirl	$r0,$r1,0

1c0028a4 <Set_Timer_clear>:
Set_Timer_clear():
1c0028a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0028a8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0028ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0028b0:	0380040c 	ori	$r12,$r0,0x1
1c0028b4:	0401102c 	csrwr	$r12,0x44
1c0028b8:	03400000 	andi	$r0,$r0,0x0
1c0028bc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0028c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0028c4:	4c000020 	jirl	$r0,$r1,0

1c0028c8 <Wake_Set>:
Wake_Set():
1c0028c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028cc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0028d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028dc:	40006980 	beqz	$r12,104(0x68) # 1c002944 <Wake_Set+0x7c>
1c0028e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028e4:	0040a18c 	slli.w	$r12,$r12,0x8
1c0028e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0028ec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0028f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028f4:	0380218c 	ori	$r12,$r12,0x8
1c0028f8:	2880018d 	ld.w	$r13,$r12,0
1c0028fc:	14001fec 	lu12i.w	$r12,255(0xff)
1c002900:	03bffd8c 	ori	$r12,$r12,0xfff
1c002904:	0014b1ac 	and	$r12,$r13,$r12
1c002908:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00290c:	001031ac 	add.w	$r12,$r13,$r12
1c002910:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002914:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002918:	0380318c 	ori	$r12,$r12,0xc
1c00291c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002920:	2980018d 	st.w	$r13,$r12,0
1c002924:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002928:	0380118c 	ori	$r12,$r12,0x4
1c00292c:	2880018d 	ld.w	$r13,$r12,0
1c002930:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002934:	0380118c 	ori	$r12,$r12,0x4
1c002938:	038601ad 	ori	$r13,$r13,0x180
1c00293c:	2980018d 	st.w	$r13,$r12,0
1c002940:	50002400 	b	36(0x24) # 1c002964 <Wake_Set+0x9c>
1c002944:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002948:	0380118c 	ori	$r12,$r12,0x4
1c00294c:	2880018e 	ld.w	$r14,$r12,0
1c002950:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002954:	0380118c 	ori	$r12,$r12,0x4
1c002958:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c00295c:	0014b5cd 	and	$r13,$r14,$r13
1c002960:	2980018d 	st.w	$r13,$r12,0
1c002964:	03400000 	andi	$r0,$r0,0x0
1c002968:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00296c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002970:	4c000020 	jirl	$r0,$r1,0

1c002974 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c002974:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002978:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00297c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002980:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002984:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002988:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00298c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002990:	0014b1ac 	and	$r12,$r13,$r12
1c002994:	44000d80 	bnez	$r12,12(0xc) # 1c0029a0 <PMU_GetRstRrc+0x2c>
1c002998:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00299c:	50003000 	b	48(0x30) # 1c0029cc <PMU_GetRstRrc+0x58>
1c0029a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029a4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0029a8:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0029ac:	0014b1ad 	and	$r13,$r13,$r12
1c0029b0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0029b4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0029c4 <PMU_GetRstRrc+0x50>
1c0029b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0029bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0029c0:	50000c00 	b	12(0xc) # 1c0029cc <PMU_GetRstRrc+0x58>
1c0029c4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0029c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0029cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029d0:	00150184 	move	$r4,$r12
1c0029d4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029dc:	4c000020 	jirl	$r0,$r1,0

1c0029e0 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0029e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029e4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0029f0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0029f4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0029f8:	0380198c 	ori	$r12,$r12,0x6
1c0029fc:	2a00018c 	ld.bu	$r12,$r12,0
1c002a00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a0c:	0340058c 	andi	$r12,$r12,0x1
1c002a10:	40000d80 	beqz	$r12,12(0xc) # 1c002a1c <PMU_GetBootSpiStatus+0x3c>
1c002a14:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002a18:	50000800 	b	8(0x8) # 1c002a20 <PMU_GetBootSpiStatus+0x40>
1c002a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a20:	00150184 	move	$r4,$r12
1c002a24:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002a28:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a2c:	4c000020 	jirl	$r0,$r1,0

1c002a30 <ls1x_logo>:
ls1x_logo():
1c002a30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002a34:	29803061 	st.w	$r1,$r3,12(0xc)
1c002a38:	29802076 	st.w	$r22,$r3,8(0x8)
1c002a3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002a40:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002a44:	02991084 	addi.w	$r4,$r4,1604(0x644)
1c002a48:	57ef5fff 	bl	-4260(0xfffef5c) # 1c0019a4 <myprintf>
1c002a4c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002a50:	0298f084 	addi.w	$r4,$r4,1596(0x63c)
1c002a54:	57ef53ff 	bl	-4272(0xfffef50) # 1c0019a4 <myprintf>
1c002a58:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002a5c:	029a5084 	addi.w	$r4,$r4,1684(0x694)
1c002a60:	57ef47ff 	bl	-4284(0xfffef44) # 1c0019a4 <myprintf>
1c002a64:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002a68:	029bb084 	addi.w	$r4,$r4,1772(0x6ec)
1c002a6c:	57ef3bff 	bl	-4296(0xfffef38) # 1c0019a4 <myprintf>
1c002a70:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002a74:	029d1084 	addi.w	$r4,$r4,1860(0x744)
1c002a78:	57ef2fff 	bl	-4308(0xfffef2c) # 1c0019a4 <myprintf>
1c002a7c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002a80:	029e7084 	addi.w	$r4,$r4,1948(0x79c)
1c002a84:	57ef23ff 	bl	-4320(0xfffef20) # 1c0019a4 <myprintf>
1c002a88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002a8c:	029fd084 	addi.w	$r4,$r4,2036(0x7f4)
1c002a90:	57ef17ff 	bl	-4332(0xfffef14) # 1c0019a4 <myprintf>
1c002a94:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002a98:	02a13084 	addi.w	$r4,$r4,-1972(0x84c)
1c002a9c:	57ef0bff 	bl	-4344(0xfffef08) # 1c0019a4 <myprintf>
1c002aa0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002aa4:	02a29084 	addi.w	$r4,$r4,-1884(0x8a4)
1c002aa8:	57eeffff 	bl	-4356(0xfffeefc) # 1c0019a4 <myprintf>
1c002aac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002ab0:	02a3f084 	addi.w	$r4,$r4,-1796(0x8fc)
1c002ab4:	57eef3ff 	bl	-4368(0xfffeef0) # 1c0019a4 <myprintf>
1c002ab8:	03400000 	andi	$r0,$r0,0x0
1c002abc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002ac0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002ac4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002ac8:	4c000020 	jirl	$r0,$r1,0

1c002acc <open_count>:
open_count():
1c002acc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002ad0:	29803076 	st.w	$r22,$r3,12(0xc)
1c002ad4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002ad8:	0380400c 	ori	$r12,$r0,0x10
1c002adc:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c002ae0:	03400000 	andi	$r0,$r0,0x0
1c002ae4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002ae8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002aec:	4c000020 	jirl	$r0,$r1,0

1c002af0 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c002af0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002af4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002af8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002afc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002b00:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c002b04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b08:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002b0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b10:	001531ad 	or	$r13,$r13,$r12
1c002b14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b18:	2980318d 	st.w	$r13,$r12,12(0xc)
1c002b1c:	03400000 	andi	$r0,$r0,0x0
1c002b20:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002b24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b28:	4c000020 	jirl	$r0,$r1,0

1c002b2c <WDG_getOddValue>:
WDG_getOddValue():
1c002b2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b30:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002b34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002b40:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b44:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002b48:	50003800 	b	56(0x38) # 1c002b80 <WDG_getOddValue+0x54>
1c002b4c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002b50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b54:	001731ac 	sll.w	$r12,$r13,$r12
1c002b58:	0015018d 	move	$r13,$r12
1c002b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b60:	0014b1ac 	and	$r12,$r13,$r12
1c002b64:	40001180 	beqz	$r12,16(0x10) # 1c002b74 <WDG_getOddValue+0x48>
1c002b68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b70:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002b84:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c002b88:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c002b4c <WDG_getOddValue+0x20>
1c002b8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b90:	0340058c 	andi	$r12,$r12,0x1
1c002b94:	44000d80 	bnez	$r12,12(0xc) # 1c002ba0 <WDG_getOddValue+0x74>
1c002b98:	1400010c 	lu12i.w	$r12,8(0x8)
1c002b9c:	50000800 	b	8(0x8) # 1c002ba4 <WDG_getOddValue+0x78>
1c002ba0:	0015000c 	move	$r12,$r0
1c002ba4:	00150184 	move	$r4,$r12
1c002ba8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002bac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bb0:	4c000020 	jirl	$r0,$r1,0

1c002bb4 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c002bb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bb8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002bbc:	29806076 	st.w	$r22,$r3,24(0x18)
1c002bc0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bc4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002bc8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002bcc:	140000ec 	lu12i.w	$r12,7(0x7)
1c002bd0:	03bffd8c 	ori	$r12,$r12,0xfff
1c002bd4:	0014b1ac 	and	$r12,$r13,$r12
1c002bd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002bdc:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c002be0:	57ff4fff 	bl	-180(0xfffff4c) # 1c002b2c <WDG_getOddValue>
1c002be4:	0015008c 	move	$r12,$r4
1c002be8:	0015018d 	move	$r13,$r12
1c002bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bf0:	0015358c 	or	$r12,$r12,$r13
1c002bf4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002bf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bfc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c002c00:	0396a9ad 	ori	$r13,$r13,0x5aa
1c002c04:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c002c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c0c:	0014300c 	nor	$r12,$r0,$r12
1c002c10:	0040c18c 	slli.w	$r12,$r12,0x10
1c002c14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002c18:	001531ac 	or	$r12,$r13,$r12
1c002c1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c24:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002c28:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c002c2c:	03400000 	andi	$r0,$r0,0x0
1c002c30:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002c34:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002c38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c3c:	4c000020 	jirl	$r0,$r1,0

1c002c40 <WDG_DogFeed>:
WDG_DogFeed():
1c002c40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002c44:	29803076 	st.w	$r22,$r3,12(0xc)
1c002c48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002c4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c50:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c002c54:	0396a9ad 	ori	$r13,$r13,0x5aa
1c002c58:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c002c5c:	03400000 	andi	$r0,$r0,0x0
1c002c60:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002c64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002c68:	4c000020 	jirl	$r0,$r1,0

1c002c6c <WdgInit>:
WdgInit():
1c002c6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002c70:	29803061 	st.w	$r1,$r3,12(0xc)
1c002c74:	29802076 	st.w	$r22,$r3,8(0x8)
1c002c78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002c7c:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c002c80:	03bffd84 	ori	$r4,$r12,0xfff
1c002c84:	57ff33ff 	bl	-208(0xfffff30) # 1c002bb4 <WDG_SetWatchDog>
1c002c88:	03400000 	andi	$r0,$r0,0x0
1c002c8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002c90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002c94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002c98:	4c000020 	jirl	$r0,$r1,0

1c002c9c <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c002c9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ca0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002ca4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ca8:	0015008c 	move	$r12,$r4
1c002cac:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c002cb0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c002cb4:	0040898c 	slli.w	$r12,$r12,0x2
1c002cb8:	0015018d 	move	$r13,$r12
1c002cbc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002cc0:	0381018c 	ori	$r12,$r12,0x40
1c002cc4:	001031ac 	add.w	$r12,$r13,$r12
1c002cc8:	2880018c 	ld.w	$r12,$r12,0
1c002ccc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002cd0:	037ffd8c 	andi	$r12,$r12,0xfff
1c002cd4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002cd8:	00150184 	move	$r4,$r12
1c002cdc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ce0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ce4:	4c000020 	jirl	$r0,$r1,0

1c002ce8 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c002ce8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002cec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002cf0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002cf4:	0015008c 	move	$r12,$r4
1c002cf8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c002cfc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c002d00:	0040898c 	slli.w	$r12,$r12,0x2
1c002d04:	0015018d 	move	$r13,$r12
1c002d08:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002d0c:	0382018c 	ori	$r12,$r12,0x80
1c002d10:	001031ac 	add.w	$r12,$r13,$r12
1c002d14:	2880018c 	ld.w	$r12,$r12,0
1c002d18:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002d1c:	037ffd8c 	andi	$r12,$r12,0xfff
1c002d20:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002d24:	00150184 	move	$r4,$r12
1c002d28:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d30:	4c000020 	jirl	$r0,$r1,0

1c002d34 <Printf_KeyChannel>:
Printf_KeyChannel():
1c002d34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d44:	0015008c 	move	$r12,$r4
1c002d48:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c002d4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d50:	50003400 	b	52(0x34) # 1c002d84 <Printf_KeyChannel+0x50>
1c002d54:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c002d58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d5c:	001831ac 	sra.w	$r12,$r13,$r12
1c002d60:	0340058c 	andi	$r12,$r12,0x1
1c002d64:	40001580 	beqz	$r12,20(0x14) # 1c002d78 <Printf_KeyChannel+0x44>
1c002d68:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c002d6c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002d70:	029a8084 	addi.w	$r4,$r4,1696(0x6a0)
1c002d74:	57ec33ff 	bl	-5072(0xfffec30) # 1c0019a4 <myprintf>
1c002d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002d88:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c002d8c:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c002d54 <Printf_KeyChannel+0x20>
1c002d90:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002d94:	029a0084 	addi.w	$r4,$r4,1664(0x680)
1c002d98:	57ec0fff 	bl	-5108(0xfffec0c) # 1c0019a4 <myprintf>
1c002d9c:	03400000 	andi	$r0,$r0,0x0
1c002da0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002da4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002da8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002dac:	4c000020 	jirl	$r0,$r1,0

1c002db0 <Printf_KeyType>:
Printf_KeyType():
1c002db0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002db4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002db8:	29806076 	st.w	$r22,$r3,24(0x18)
1c002dbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002dc0:	0015008c 	move	$r12,$r4
1c002dc4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002dc8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002dcc:	0340058c 	andi	$r12,$r12,0x1
1c002dd0:	40001180 	beqz	$r12,16(0x10) # 1c002de0 <Printf_KeyType+0x30>
1c002dd4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002dd8:	02990084 	addi.w	$r4,$r4,1600(0x640)
1c002ddc:	57ebcbff 	bl	-5176(0xfffebc8) # 1c0019a4 <myprintf>
1c002de0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002de4:	0340098c 	andi	$r12,$r12,0x2
1c002de8:	40001180 	beqz	$r12,16(0x10) # 1c002df8 <Printf_KeyType+0x48>
1c002dec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002df0:	0298c084 	addi.w	$r4,$r4,1584(0x630)
1c002df4:	57ebb3ff 	bl	-5200(0xfffebb0) # 1c0019a4 <myprintf>
1c002df8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002dfc:	0340118c 	andi	$r12,$r12,0x4
1c002e00:	40001180 	beqz	$r12,16(0x10) # 1c002e10 <Printf_KeyType+0x60>
1c002e04:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002e08:	02988084 	addi.w	$r4,$r4,1568(0x620)
1c002e0c:	57eb9bff 	bl	-5224(0xfffeb98) # 1c0019a4 <myprintf>
1c002e10:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002e14:	0340218c 	andi	$r12,$r12,0x8
1c002e18:	40001180 	beqz	$r12,16(0x10) # 1c002e28 <Printf_KeyType+0x78>
1c002e1c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002e20:	02985084 	addi.w	$r4,$r4,1556(0x614)
1c002e24:	57eb83ff 	bl	-5248(0xfffeb80) # 1c0019a4 <myprintf>
1c002e28:	03400000 	andi	$r0,$r0,0x0
1c002e2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002e30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002e34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e38:	4c000020 	jirl	$r0,$r1,0

1c002e3c <Printf_KeyVal>:
Printf_KeyVal():
1c002e3c:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c002e40:	2982b061 	st.w	$r1,$r3,172(0xac)
1c002e44:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c002e48:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c002e4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e50:	5000d800 	b	216(0xd8) # 1c002f28 <Printf_KeyVal+0xec>
1c002e54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e58:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002e5c:	00150184 	move	$r4,$r12
1c002e60:	57fe8bff 	bl	-376(0xffffe88) # 1c002ce8 <TOUCH_GetCountValue>
1c002e64:	0015008c 	move	$r12,$r4
1c002e68:	0015018d 	move	$r13,$r12
1c002e6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e70:	0040898c 	slli.w	$r12,$r12,0x2
1c002e74:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002e78:	001031cc 	add.w	$r12,$r14,$r12
1c002e7c:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c002e80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e84:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002e88:	00150184 	move	$r4,$r12
1c002e8c:	57fe13ff 	bl	-496(0xffffe10) # 1c002c9c <TOUCH_GetBaseVal>
1c002e90:	0015008c 	move	$r12,$r4
1c002e94:	0015018d 	move	$r13,$r12
1c002e98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e9c:	0040898c 	slli.w	$r12,$r12,0x2
1c002ea0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002ea4:	001031cc 	add.w	$r12,$r14,$r12
1c002ea8:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c002eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb0:	0040898c 	slli.w	$r12,$r12,0x2
1c002eb4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002eb8:	001031ac 	add.w	$r12,$r13,$r12
1c002ebc:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c002ec0:	40004980 	beqz	$r12,72(0x48) # 1c002f08 <Printf_KeyVal+0xcc>
1c002ec4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ec8:	0040898c 	slli.w	$r12,$r12,0x2
1c002ecc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002ed0:	001031ac 	add.w	$r12,$r13,$r12
1c002ed4:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c002ed8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002edc:	0040898c 	slli.w	$r12,$r12,0x2
1c002ee0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002ee4:	001031cc 	add.w	$r12,$r14,$r12
1c002ee8:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c002eec:	001131ad 	sub.w	$r13,$r13,$r12
1c002ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ef4:	0040898c 	slli.w	$r12,$r12,0x2
1c002ef8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002efc:	001031cc 	add.w	$r12,$r14,$r12
1c002f00:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c002f04:	50001800 	b	24(0x18) # 1c002f1c <Printf_KeyVal+0xe0>
1c002f08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f0c:	0040898c 	slli.w	$r12,$r12,0x2
1c002f10:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002f14:	001031ac 	add.w	$r12,$r13,$r12
1c002f18:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c002f1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f28:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f2c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c002f30:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c002e54 <Printf_KeyVal+0x18>
1c002f34:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002f38:	02942084 	addi.w	$r4,$r4,1288(0x508)
1c002f3c:	57ea6bff 	bl	-5528(0xfffea68) # 1c0019a4 <myprintf>
1c002f40:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002f44:	02949084 	addi.w	$r4,$r4,1316(0x524)
1c002f48:	57ea5fff 	bl	-5540(0xfffea5c) # 1c0019a4 <myprintf>
1c002f4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f50:	50003400 	b	52(0x34) # 1c002f84 <Printf_KeyVal+0x148>
1c002f54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f58:	0040898c 	slli.w	$r12,$r12,0x2
1c002f5c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002f60:	001031ac 	add.w	$r12,$r13,$r12
1c002f64:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c002f68:	00150185 	move	$r5,$r12
1c002f6c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002f70:	02940084 	addi.w	$r4,$r4,1280(0x500)
1c002f74:	57ea33ff 	bl	-5584(0xfffea30) # 1c0019a4 <myprintf>
1c002f78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f88:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c002f8c:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c002f54 <Printf_KeyVal+0x118>
1c002f90:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002f94:	02939084 	addi.w	$r4,$r4,1252(0x4e4)
1c002f98:	57ea0fff 	bl	-5620(0xfffea0c) # 1c0019a4 <myprintf>
1c002f9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002fa0:	50003400 	b	52(0x34) # 1c002fd4 <Printf_KeyVal+0x198>
1c002fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fa8:	0040898c 	slli.w	$r12,$r12,0x2
1c002fac:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002fb0:	001031ac 	add.w	$r12,$r13,$r12
1c002fb4:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c002fb8:	00150185 	move	$r5,$r12
1c002fbc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002fc0:	0292c084 	addi.w	$r4,$r4,1200(0x4b0)
1c002fc4:	57e9e3ff 	bl	-5664(0xfffe9e0) # 1c0019a4 <myprintf>
1c002fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002fd0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002fd4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002fd8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c002fdc:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c002fa4 <Printf_KeyVal+0x168>
1c002fe0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002fe4:	02928084 	addi.w	$r4,$r4,1184(0x4a0)
1c002fe8:	57e9bfff 	bl	-5700(0xfffe9bc) # 1c0019a4 <myprintf>
1c002fec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ff0:	50007400 	b	116(0x74) # 1c003064 <Printf_KeyVal+0x228>
1c002ff4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ff8:	0040898c 	slli.w	$r12,$r12,0x2
1c002ffc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003000:	001031ac 	add.w	$r12,$r13,$r12
1c003004:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003008:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003034 <Printf_KeyVal+0x1f8>
1c00300c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003010:	0040898c 	slli.w	$r12,$r12,0x2
1c003014:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003018:	001031ac 	add.w	$r12,$r13,$r12
1c00301c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003020:	00150185 	move	$r5,$r12
1c003024:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003028:	0291a084 	addi.w	$r4,$r4,1128(0x468)
1c00302c:	57e97bff 	bl	-5768(0xfffe978) # 1c0019a4 <myprintf>
1c003030:	50002800 	b	40(0x28) # 1c003058 <Printf_KeyVal+0x21c>
1c003034:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003038:	0040898c 	slli.w	$r12,$r12,0x2
1c00303c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003040:	001031ac 	add.w	$r12,$r13,$r12
1c003044:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003048:	00150185 	move	$r5,$r12
1c00304c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003050:	02912084 	addi.w	$r4,$r4,1096(0x448)
1c003054:	57e953ff 	bl	-5808(0xfffe950) # 1c0019a4 <myprintf>
1c003058:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00305c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003060:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003064:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003068:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00306c:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c002ff4 <Printf_KeyVal+0x1b8>
1c003070:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003074:	028e8084 	addi.w	$r4,$r4,928(0x3a0)
1c003078:	57e92fff 	bl	-5844(0xfffe92c) # 1c0019a4 <myprintf>
1c00307c:	03400000 	andi	$r0,$r0,0x0
1c003080:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003084:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003088:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c00308c:	4c000020 	jirl	$r0,$r1,0

1c003090 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003090:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003094:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003098:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00309c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0030a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030a4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0030a8:	2880018d 	ld.w	$r13,$r12,0
1c0030ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030b0:	0014b1ac 	and	$r12,$r13,$r12
1c0030b4:	40001180 	beqz	$r12,16(0x10) # 1c0030c4 <TIM_GetITStatus+0x34>
1c0030b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030c0:	50000800 	b	8(0x8) # 1c0030c8 <TIM_GetITStatus+0x38>
1c0030c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030cc:	00150184 	move	$r4,$r12
1c0030d0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0030d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0030d8:	4c000020 	jirl	$r0,$r1,0

1c0030dc <TIM_ClearIT>:
TIM_ClearIT():
1c0030dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0030e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0030e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0030e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0030ec:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0030f0:	2880018e 	ld.w	$r14,$r12,0
1c0030f4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0030f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0030fc:	001535cd 	or	$r13,$r14,$r13
1c003100:	2980018d 	st.w	$r13,$r12,0
1c003104:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003108:	03800d8c 	ori	$r12,$r12,0x3
1c00310c:	2a00018c 	ld.bu	$r12,$r12,0
1c003110:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003114:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003118:	03800d8c 	ori	$r12,$r12,0x3
1c00311c:	038005ad 	ori	$r13,$r13,0x1
1c003120:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003124:	2900018d 	st.b	$r13,$r12,0
1c003128:	03400000 	andi	$r0,$r0,0x0
1c00312c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003130:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003134:	4c000020 	jirl	$r0,$r1,0

1c003138 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003138:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00313c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003140:	29802076 	st.w	$r22,$r3,8(0x8)
1c003144:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003148:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00314c:	029390c6 	addi.w	$r6,$r6,1252(0x4e4)
1c003150:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c003154:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003158:	028d2084 	addi.w	$r4,$r4,840(0x348)
1c00315c:	57e84bff 	bl	-6072(0xfffe848) # 1c0019a4 <myprintf>
1c003160:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003164:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003168:	03808184 	ori	$r4,$r12,0x20
1c00316c:	57f987ff 	bl	-1660(0xffff984) # 1c002af0 <EXTI_ClearITPendingBit>
1c003170:	03400000 	andi	$r0,$r0,0x0
1c003174:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003178:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00317c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003180:	4c000020 	jirl	$r0,$r1,0

1c003184 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003184:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003188:	29803061 	st.w	$r1,$r3,12(0xc)
1c00318c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003190:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003194:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003198:	0292c0c6 	addi.w	$r6,$r6,1200(0x4b0)
1c00319c:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c0031a0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0031a4:	028bf084 	addi.w	$r4,$r4,764(0x2fc)
1c0031a8:	57e7ffff 	bl	-6148(0xfffe7fc) # 1c0019a4 <myprintf>
1c0031ac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0031b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031b4:	03808184 	ori	$r4,$r12,0x20
1c0031b8:	57f93bff 	bl	-1736(0xffff938) # 1c002af0 <EXTI_ClearITPendingBit>
1c0031bc:	03400000 	andi	$r0,$r0,0x0
1c0031c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0031c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0031c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031cc:	4c000020 	jirl	$r0,$r1,0

1c0031d0 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c0031d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0031d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0031dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031e0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0031e4:	0291f0c6 	addi.w	$r6,$r6,1148(0x47c)
1c0031e8:	02808405 	addi.w	$r5,$r0,33(0x21)
1c0031ec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0031f0:	028ac084 	addi.w	$r4,$r4,688(0x2b0)
1c0031f4:	57e7b3ff 	bl	-6224(0xfffe7b0) # 1c0019a4 <myprintf>
1c0031f8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0031fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003200:	03808184 	ori	$r4,$r12,0x20
1c003204:	57f8efff 	bl	-1812(0xffff8ec) # 1c002af0 <EXTI_ClearITPendingBit>
1c003208:	03400000 	andi	$r0,$r0,0x0
1c00320c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003210:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003214:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003218:	4c000020 	jirl	$r0,$r1,0

1c00321c <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c00321c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003220:	29803061 	st.w	$r1,$r3,12(0xc)
1c003224:	29802076 	st.w	$r22,$r3,8(0x8)
1c003228:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00322c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003230:	029120c6 	addi.w	$r6,$r6,1096(0x448)
1c003234:	02809805 	addi.w	$r5,$r0,38(0x26)
1c003238:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00323c:	02899084 	addi.w	$r4,$r4,612(0x264)
1c003240:	57e767ff 	bl	-6300(0xfffe764) # 1c0019a4 <myprintf>
1c003244:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003248:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00324c:	03808184 	ori	$r4,$r12,0x20
1c003250:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c002af0 <EXTI_ClearITPendingBit>
1c003254:	03400000 	andi	$r0,$r0,0x0
1c003258:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00325c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003260:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003264:	4c000020 	jirl	$r0,$r1,0

1c003268 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003268:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00326c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003270:	29802076 	st.w	$r22,$r3,8(0x8)
1c003274:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003278:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00327c:	029050c6 	addi.w	$r6,$r6,1044(0x414)
1c003280:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c003284:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003288:	02886084 	addi.w	$r4,$r4,536(0x218)
1c00328c:	57e71bff 	bl	-6376(0xfffe718) # 1c0019a4 <myprintf>
1c003290:	02804005 	addi.w	$r5,$r0,16(0x10)
1c003294:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003298:	03808184 	ori	$r4,$r12,0x20
1c00329c:	57f857ff 	bl	-1964(0xffff854) # 1c002af0 <EXTI_ClearITPendingBit>
1c0032a0:	03400000 	andi	$r0,$r0,0x0
1c0032a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0032a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0032ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032b0:	4c000020 	jirl	$r0,$r1,0

1c0032b4 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0032b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0032b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0032bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0032c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0032c4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0032c8:	028f80c6 	addi.w	$r6,$r6,992(0x3e0)
1c0032cc:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0032d0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0032d4:	02873084 	addi.w	$r4,$r4,460(0x1cc)
1c0032d8:	57e6cfff 	bl	-6452(0xfffe6cc) # 1c0019a4 <myprintf>
1c0032dc:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0032e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032e4:	03808184 	ori	$r4,$r12,0x20
1c0032e8:	57f80bff 	bl	-2040(0xffff808) # 1c002af0 <EXTI_ClearITPendingBit>
1c0032ec:	03400000 	andi	$r0,$r0,0x0
1c0032f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0032f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0032f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032fc:	4c000020 	jirl	$r0,$r1,0

1c003300 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003300:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003304:	29803061 	st.w	$r1,$r3,12(0xc)
1c003308:	29802076 	st.w	$r22,$r3,8(0x8)
1c00330c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003310:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003314:	028eb0c6 	addi.w	$r6,$r6,940(0x3ac)
1c003318:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c00331c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003320:	02860084 	addi.w	$r4,$r4,384(0x180)
1c003324:	57e683ff 	bl	-6528(0xfffe680) # 1c0019a4 <myprintf>
1c003328:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00332c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003330:	03808184 	ori	$r4,$r12,0x20
1c003334:	57f7bfff 	bl	-2116(0xffff7bc) # 1c002af0 <EXTI_ClearITPendingBit>
1c003338:	03400000 	andi	$r0,$r0,0x0
1c00333c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003340:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003344:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003348:	4c000020 	jirl	$r0,$r1,0

1c00334c <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c00334c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003350:	29803061 	st.w	$r1,$r3,12(0xc)
1c003354:	29802076 	st.w	$r22,$r3,8(0x8)
1c003358:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00335c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003360:	028de0c6 	addi.w	$r6,$r6,888(0x378)
1c003364:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c003368:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00336c:	0284d084 	addi.w	$r4,$r4,308(0x134)
1c003370:	57e637ff 	bl	-6604(0xfffe634) # 1c0019a4 <myprintf>
1c003374:	02820005 	addi.w	$r5,$r0,128(0x80)
1c003378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00337c:	03808184 	ori	$r4,$r12,0x20
1c003380:	57f773ff 	bl	-2192(0xffff770) # 1c002af0 <EXTI_ClearITPendingBit>
1c003384:	03400000 	andi	$r0,$r0,0x0
1c003388:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00338c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003390:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003394:	4c000020 	jirl	$r0,$r1,0

1c003398 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c003398:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00339c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033a8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0033ac:	028d10c6 	addi.w	$r6,$r6,836(0x344)
1c0033b0:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c0033b4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0033b8:	0283a084 	addi.w	$r4,$r4,232(0xe8)
1c0033bc:	57e5ebff 	bl	-6680(0xfffe5e8) # 1c0019a4 <myprintf>
1c0033c0:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0033c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0033c8:	03808184 	ori	$r4,$r12,0x20
1c0033cc:	57f727ff 	bl	-2268(0xffff724) # 1c002af0 <EXTI_ClearITPendingBit>
1c0033d0:	03400000 	andi	$r0,$r0,0x0
1c0033d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0033d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0033dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033e0:	4c000020 	jirl	$r0,$r1,0

1c0033e4 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0033e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033f4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0033f8:	028c40c6 	addi.w	$r6,$r6,784(0x310)
1c0033fc:	02811005 	addi.w	$r5,$r0,68(0x44)
1c003400:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003404:	02827084 	addi.w	$r4,$r4,156(0x9c)
1c003408:	57e59fff 	bl	-6756(0xfffe59c) # 1c0019a4 <myprintf>
1c00340c:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003410:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003414:	03808184 	ori	$r4,$r12,0x20
1c003418:	57f6dbff 	bl	-2344(0xffff6d8) # 1c002af0 <EXTI_ClearITPendingBit>
1c00341c:	03400000 	andi	$r0,$r0,0x0
1c003420:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003424:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003428:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00342c:	4c000020 	jirl	$r0,$r1,0

1c003430 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003430:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003434:	29803061 	st.w	$r1,$r3,12(0xc)
1c003438:	29802076 	st.w	$r22,$r3,8(0x8)
1c00343c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003440:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003444:	028b70c6 	addi.w	$r6,$r6,732(0x2dc)
1c003448:	02812405 	addi.w	$r5,$r0,73(0x49)
1c00344c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003450:	02814084 	addi.w	$r4,$r4,80(0x50)
1c003454:	57e553ff 	bl	-6832(0xfffe550) # 1c0019a4 <myprintf>
1c003458:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c00345c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003460:	03808184 	ori	$r4,$r12,0x20
1c003464:	57f68fff 	bl	-2420(0xffff68c) # 1c002af0 <EXTI_ClearITPendingBit>
1c003468:	03400000 	andi	$r0,$r0,0x0
1c00346c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003470:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003474:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003478:	4c000020 	jirl	$r0,$r1,0

1c00347c <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c00347c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003480:	29803061 	st.w	$r1,$r3,12(0xc)
1c003484:	29802076 	st.w	$r22,$r3,8(0x8)
1c003488:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00348c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003490:	028aa0c6 	addi.w	$r6,$r6,680(0x2a8)
1c003494:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c003498:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00349c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0034a0:	57e507ff 	bl	-6908(0xfffe504) # 1c0019a4 <myprintf>
1c0034a4:	03a00005 	ori	$r5,$r0,0x800
1c0034a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0034ac:	03808184 	ori	$r4,$r12,0x20
1c0034b0:	57f643ff 	bl	-2496(0xffff640) # 1c002af0 <EXTI_ClearITPendingBit>
1c0034b4:	03400000 	andi	$r0,$r0,0x0
1c0034b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0034bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0034c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034c4:	4c000020 	jirl	$r0,$r1,0

1c0034c8 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0034c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0034cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0034d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0034d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0034d8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0034dc:	0289d0c6 	addi.w	$r6,$r6,628(0x274)
1c0034e0:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c0034e4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0034e8:	02bee084 	addi.w	$r4,$r4,-72(0xfb8)
1c0034ec:	57e4bbff 	bl	-6984(0xfffe4b8) # 1c0019a4 <myprintf>
1c0034f0:	14000025 	lu12i.w	$r5,1(0x1)
1c0034f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0034f8:	03808184 	ori	$r4,$r12,0x20
1c0034fc:	57f5f7ff 	bl	-2572(0xffff5f4) # 1c002af0 <EXTI_ClearITPendingBit>
1c003500:	03400000 	andi	$r0,$r0,0x0
1c003504:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003508:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00350c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003510:	4c000020 	jirl	$r0,$r1,0

1c003514 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c003514:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003518:	29803061 	st.w	$r1,$r3,12(0xc)
1c00351c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003520:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003524:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003528:	028900c6 	addi.w	$r6,$r6,576(0x240)
1c00352c:	02816005 	addi.w	$r5,$r0,88(0x58)
1c003530:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003534:	02bdb084 	addi.w	$r4,$r4,-148(0xf6c)
1c003538:	57e46fff 	bl	-7060(0xfffe46c) # 1c0019a4 <myprintf>
1c00353c:	14000045 	lu12i.w	$r5,2(0x2)
1c003540:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003544:	03808184 	ori	$r4,$r12,0x20
1c003548:	57f5abff 	bl	-2648(0xffff5a8) # 1c002af0 <EXTI_ClearITPendingBit>
1c00354c:	03400000 	andi	$r0,$r0,0x0
1c003550:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003554:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003558:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00355c:	4c000020 	jirl	$r0,$r1,0

1c003560 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c003560:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003564:	29803061 	st.w	$r1,$r3,12(0xc)
1c003568:	29802076 	st.w	$r22,$r3,8(0x8)
1c00356c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003570:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003574:	028830c6 	addi.w	$r6,$r6,524(0x20c)
1c003578:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c00357c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003580:	02bc8084 	addi.w	$r4,$r4,-224(0xf20)
1c003584:	57e423ff 	bl	-7136(0xfffe420) # 1c0019a4 <myprintf>
1c003588:	14000085 	lu12i.w	$r5,4(0x4)
1c00358c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003590:	03808184 	ori	$r4,$r12,0x20
1c003594:	57f55fff 	bl	-2724(0xffff55c) # 1c002af0 <EXTI_ClearITPendingBit>
1c003598:	03400000 	andi	$r0,$r0,0x0
1c00359c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0035a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0035a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0035a8:	4c000020 	jirl	$r0,$r1,0

1c0035ac <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0035ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0035b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0035b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0035b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0035bc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0035c0:	028760c6 	addi.w	$r6,$r6,472(0x1d8)
1c0035c4:	02818805 	addi.w	$r5,$r0,98(0x62)
1c0035c8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0035cc:	02bb5084 	addi.w	$r4,$r4,-300(0xed4)
1c0035d0:	57e3d7ff 	bl	-7212(0xfffe3d4) # 1c0019a4 <myprintf>
1c0035d4:	14000105 	lu12i.w	$r5,8(0x8)
1c0035d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0035dc:	03808184 	ori	$r4,$r12,0x20
1c0035e0:	57f513ff 	bl	-2800(0xffff510) # 1c002af0 <EXTI_ClearITPendingBit>
1c0035e4:	03400000 	andi	$r0,$r0,0x0
1c0035e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0035ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0035f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0035f4:	4c000020 	jirl	$r0,$r1,0

1c0035f8 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0035f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0035fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003600:	29802076 	st.w	$r22,$r3,8(0x8)
1c003604:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003608:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00360c:	028690c6 	addi.w	$r6,$r6,420(0x1a4)
1c003610:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c003614:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003618:	02ba2084 	addi.w	$r4,$r4,-376(0xe88)
1c00361c:	57e38bff 	bl	-7288(0xfffe388) # 1c0019a4 <myprintf>
1c003620:	14000205 	lu12i.w	$r5,16(0x10)
1c003624:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003628:	03808184 	ori	$r4,$r12,0x20
1c00362c:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c002af0 <EXTI_ClearITPendingBit>
1c003630:	03400000 	andi	$r0,$r0,0x0
1c003634:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003638:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00363c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003640:	4c000020 	jirl	$r0,$r1,0

1c003644 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c003644:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003648:	29803061 	st.w	$r1,$r3,12(0xc)
1c00364c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003650:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003654:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003658:	0285c0c6 	addi.w	$r6,$r6,368(0x170)
1c00365c:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c003660:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003664:	02b8f084 	addi.w	$r4,$r4,-452(0xe3c)
1c003668:	57e33fff 	bl	-7364(0xfffe33c) # 1c0019a4 <myprintf>
1c00366c:	14000405 	lu12i.w	$r5,32(0x20)
1c003670:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003674:	03808184 	ori	$r4,$r12,0x20
1c003678:	57f47bff 	bl	-2952(0xffff478) # 1c002af0 <EXTI_ClearITPendingBit>
1c00367c:	03400000 	andi	$r0,$r0,0x0
1c003680:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003684:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003688:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00368c:	4c000020 	jirl	$r0,$r1,0

1c003690 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c003690:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003694:	29803061 	st.w	$r1,$r3,12(0xc)
1c003698:	29802076 	st.w	$r22,$r3,8(0x8)
1c00369c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036a0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0036a4:	0284f0c6 	addi.w	$r6,$r6,316(0x13c)
1c0036a8:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c0036ac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0036b0:	02b7c084 	addi.w	$r4,$r4,-528(0xdf0)
1c0036b4:	57e2f3ff 	bl	-7440(0xfffe2f0) # 1c0019a4 <myprintf>
1c0036b8:	14000805 	lu12i.w	$r5,64(0x40)
1c0036bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0036c0:	03808184 	ori	$r4,$r12,0x20
1c0036c4:	57f42fff 	bl	-3028(0xffff42c) # 1c002af0 <EXTI_ClearITPendingBit>
1c0036c8:	03400000 	andi	$r0,$r0,0x0
1c0036cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0036d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0036d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0036d8:	4c000020 	jirl	$r0,$r1,0

1c0036dc <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0036dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0036e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0036e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036ec:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0036f0:	028420c6 	addi.w	$r6,$r6,264(0x108)
1c0036f4:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c0036f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0036fc:	02b69084 	addi.w	$r4,$r4,-604(0xda4)
1c003700:	57e2a7ff 	bl	-7516(0xfffe2a4) # 1c0019a4 <myprintf>
1c003704:	14001005 	lu12i.w	$r5,128(0x80)
1c003708:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00370c:	03808184 	ori	$r4,$r12,0x20
1c003710:	57f3e3ff 	bl	-3104(0xffff3e0) # 1c002af0 <EXTI_ClearITPendingBit>
1c003714:	03400000 	andi	$r0,$r0,0x0
1c003718:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00371c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003720:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003724:	4c000020 	jirl	$r0,$r1,0

1c003728 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c003728:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00372c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003730:	29802076 	st.w	$r22,$r3,8(0x8)
1c003734:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003738:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00373c:	028350c6 	addi.w	$r6,$r6,212(0xd4)
1c003740:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c003744:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003748:	02b56084 	addi.w	$r4,$r4,-680(0xd58)
1c00374c:	57e25bff 	bl	-7592(0xfffe258) # 1c0019a4 <myprintf>
1c003750:	14002005 	lu12i.w	$r5,256(0x100)
1c003754:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003758:	03808184 	ori	$r4,$r12,0x20
1c00375c:	57f397ff 	bl	-3180(0xffff394) # 1c002af0 <EXTI_ClearITPendingBit>
1c003760:	03400000 	andi	$r0,$r0,0x0
1c003764:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003768:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00376c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003770:	4c000020 	jirl	$r0,$r1,0

1c003774 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c003774:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003778:	29803061 	st.w	$r1,$r3,12(0xc)
1c00377c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003780:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003784:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003788:	028280c6 	addi.w	$r6,$r6,160(0xa0)
1c00378c:	02820405 	addi.w	$r5,$r0,129(0x81)
1c003790:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003794:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c003798:	57e20fff 	bl	-7668(0xfffe20c) # 1c0019a4 <myprintf>
1c00379c:	14004005 	lu12i.w	$r5,512(0x200)
1c0037a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037a4:	03808184 	ori	$r4,$r12,0x20
1c0037a8:	57f34bff 	bl	-3256(0xffff348) # 1c002af0 <EXTI_ClearITPendingBit>
1c0037ac:	03400000 	andi	$r0,$r0,0x0
1c0037b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037bc:	4c000020 	jirl	$r0,$r1,0

1c0037c0 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0037c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0037c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0037cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037d0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0037d4:	0281b0c6 	addi.w	$r6,$r6,108(0x6c)
1c0037d8:	02821805 	addi.w	$r5,$r0,134(0x86)
1c0037dc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0037e0:	02b30084 	addi.w	$r4,$r4,-832(0xcc0)
1c0037e4:	57e1c3ff 	bl	-7744(0xfffe1c0) # 1c0019a4 <myprintf>
1c0037e8:	14008005 	lu12i.w	$r5,1024(0x400)
1c0037ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037f0:	03808184 	ori	$r4,$r12,0x20
1c0037f4:	57f2ffff 	bl	-3332(0xffff2fc) # 1c002af0 <EXTI_ClearITPendingBit>
1c0037f8:	03400000 	andi	$r0,$r0,0x0
1c0037fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003800:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003804:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003808:	4c000020 	jirl	$r0,$r1,0

1c00380c <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c00380c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003810:	29803061 	st.w	$r1,$r3,12(0xc)
1c003814:	29802076 	st.w	$r22,$r3,8(0x8)
1c003818:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00381c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003820:	0280e0c6 	addi.w	$r6,$r6,56(0x38)
1c003824:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c003828:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00382c:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c003830:	57e177ff 	bl	-7820(0xfffe174) # 1c0019a4 <myprintf>
1c003834:	14010005 	lu12i.w	$r5,2048(0x800)
1c003838:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00383c:	03808184 	ori	$r4,$r12,0x20
1c003840:	57f2b3ff 	bl	-3408(0xffff2b0) # 1c002af0 <EXTI_ClearITPendingBit>
1c003844:	03400000 	andi	$r0,$r0,0x0
1c003848:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00384c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003850:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003854:	4c000020 	jirl	$r0,$r1,0

1c003858 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c003858:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00385c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003860:	29802076 	st.w	$r22,$r3,8(0x8)
1c003864:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003868:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00386c:	028010c6 	addi.w	$r6,$r6,4(0x4)
1c003870:	02824005 	addi.w	$r5,$r0,144(0x90)
1c003874:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003878:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c00387c:	57e12bff 	bl	-7896(0xfffe128) # 1c0019a4 <myprintf>
1c003880:	14020005 	lu12i.w	$r5,4096(0x1000)
1c003884:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003888:	03808184 	ori	$r4,$r12,0x20
1c00388c:	57f267ff 	bl	-3484(0xffff264) # 1c002af0 <EXTI_ClearITPendingBit>
1c003890:	03400000 	andi	$r0,$r0,0x0
1c003894:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003898:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00389c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038a0:	4c000020 	jirl	$r0,$r1,0

1c0038a4 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0038a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038b4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0038b8:	02bf40c6 	addi.w	$r6,$r6,-48(0xfd0)
1c0038bc:	02825405 	addi.w	$r5,$r0,149(0x95)
1c0038c0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0038c4:	02af7084 	addi.w	$r4,$r4,-1060(0xbdc)
1c0038c8:	57e0dfff 	bl	-7972(0xfffe0dc) # 1c0019a4 <myprintf>
1c0038cc:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0038d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038d4:	03808184 	ori	$r4,$r12,0x20
1c0038d8:	57f21bff 	bl	-3560(0xffff218) # 1c002af0 <EXTI_ClearITPendingBit>
1c0038dc:	03400000 	andi	$r0,$r0,0x0
1c0038e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0038e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038ec:	4c000020 	jirl	$r0,$r1,0

1c0038f0 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0038f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003900:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003904:	02be70c6 	addi.w	$r6,$r6,-100(0xf9c)
1c003908:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c00390c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003910:	02ae4084 	addi.w	$r4,$r4,-1136(0xb90)
1c003914:	57e093ff 	bl	-8048(0xfffe090) # 1c0019a4 <myprintf>
1c003918:	14080005 	lu12i.w	$r5,16384(0x4000)
1c00391c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003920:	03808184 	ori	$r4,$r12,0x20
1c003924:	57f1cfff 	bl	-3636(0xffff1cc) # 1c002af0 <EXTI_ClearITPendingBit>
1c003928:	03400000 	andi	$r0,$r0,0x0
1c00392c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003930:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003934:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003938:	4c000020 	jirl	$r0,$r1,0

1c00393c <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c00393c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003940:	29803061 	st.w	$r1,$r3,12(0xc)
1c003944:	29802076 	st.w	$r22,$r3,8(0x8)
1c003948:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00394c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003950:	02bda0c6 	addi.w	$r6,$r6,-152(0xf68)
1c003954:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c003958:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00395c:	02ad1084 	addi.w	$r4,$r4,-1212(0xb44)
1c003960:	57e047ff 	bl	-8124(0xfffe044) # 1c0019a4 <myprintf>
1c003964:	14100005 	lu12i.w	$r5,32768(0x8000)
1c003968:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00396c:	03808184 	ori	$r4,$r12,0x20
1c003970:	57f183ff 	bl	-3712(0xffff180) # 1c002af0 <EXTI_ClearITPendingBit>
1c003974:	03400000 	andi	$r0,$r0,0x0
1c003978:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00397c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003980:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003984:	4c000020 	jirl	$r0,$r1,0

1c003988 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c003988:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00398c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003990:	29802076 	st.w	$r22,$r3,8(0x8)
1c003994:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003998:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00399c:	02bcd0c6 	addi.w	$r6,$r6,-204(0xf34)
1c0039a0:	02829005 	addi.w	$r5,$r0,164(0xa4)
1c0039a4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0039a8:	02abe084 	addi.w	$r4,$r4,-1288(0xaf8)
1c0039ac:	57dffbff 	bl	-8200(0xfffdff8) # 1c0019a4 <myprintf>
1c0039b0:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0039b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039b8:	03808184 	ori	$r4,$r12,0x20
1c0039bc:	57f137ff 	bl	-3788(0xffff134) # 1c002af0 <EXTI_ClearITPendingBit>
1c0039c0:	03400000 	andi	$r0,$r0,0x0
1c0039c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0039cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039d0:	4c000020 	jirl	$r0,$r1,0

1c0039d4 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0039d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0039d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0039dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0039e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039e4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0039e8:	02bc00c6 	addi.w	$r6,$r6,-256(0xf00)
1c0039ec:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c0039f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0039f4:	02aab084 	addi.w	$r4,$r4,-1364(0xaac)
1c0039f8:	57dfafff 	bl	-8276(0xfffdfac) # 1c0019a4 <myprintf>
1c0039fc:	14400005 	lu12i.w	$r5,131072(0x20000)
1c003a00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a04:	03808184 	ori	$r4,$r12,0x20
1c003a08:	57f0ebff 	bl	-3864(0xffff0e8) # 1c002af0 <EXTI_ClearITPendingBit>
1c003a0c:	03400000 	andi	$r0,$r0,0x0
1c003a10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a1c:	4c000020 	jirl	$r0,$r1,0

1c003a20 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c003a20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a24:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a28:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a30:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003a34:	02bb30c6 	addi.w	$r6,$r6,-308(0xecc)
1c003a38:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c003a3c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003a40:	02a98084 	addi.w	$r4,$r4,-1440(0xa60)
1c003a44:	57df63ff 	bl	-8352(0xfffdf60) # 1c0019a4 <myprintf>
1c003a48:	14800005 	lu12i.w	$r5,262144(0x40000)
1c003a4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a50:	03808184 	ori	$r4,$r12,0x20
1c003a54:	57f09fff 	bl	-3940(0xffff09c) # 1c002af0 <EXTI_ClearITPendingBit>
1c003a58:	03400000 	andi	$r0,$r0,0x0
1c003a5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a68:	4c000020 	jirl	$r0,$r1,0

1c003a6c <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c003a6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a70:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a74:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a7c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003a80:	02ba60c6 	addi.w	$r6,$r6,-360(0xe98)
1c003a84:	0282d005 	addi.w	$r5,$r0,180(0xb4)
1c003a88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003a8c:	02a85084 	addi.w	$r4,$r4,-1516(0xa14)
1c003a90:	57df17ff 	bl	-8428(0xfffdf14) # 1c0019a4 <myprintf>
1c003a94:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c003a98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a9c:	03808184 	ori	$r4,$r12,0x20
1c003aa0:	57f053ff 	bl	-4016(0xffff050) # 1c002af0 <EXTI_ClearITPendingBit>
1c003aa4:	03400000 	andi	$r0,$r0,0x0
1c003aa8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003aac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ab0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ab4:	4c000020 	jirl	$r0,$r1,0

1c003ab8 <ext_handler>:
ext_handler():
1c003ab8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003abc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003ac0:	29806076 	st.w	$r22,$r3,24(0x18)
1c003ac4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ac8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003acc:	0380f18c 	ori	$r12,$r12,0x3c
1c003ad0:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c003ad4:	2980018d 	st.w	$r13,$r12,0
1c003ad8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003adc:	0380818c 	ori	$r12,$r12,0x20
1c003ae0:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c003ae4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003ae8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003aec:	0380818c 	ori	$r12,$r12,0x20
1c003af0:	2880018c 	ld.w	$r12,$r12,0
1c003af4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003af8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003afc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003b00:	0014b1ac 	and	$r12,$r13,$r12
1c003b04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003b08:	03400000 	andi	$r0,$r0,0x0
1c003b0c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b10:	50004000 	b	64(0x40) # 1c003b50 <ext_handler+0x98>
1c003b14:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003b18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b1c:	0017b1ac 	srl.w	$r12,$r13,$r12
1c003b20:	0340058c 	andi	$r12,$r12,0x1
1c003b24:	40002180 	beqz	$r12,32(0x20) # 1c003b44 <ext_handler+0x8c>
1c003b28:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c003b2c:	02a901ad 	addi.w	$r13,$r13,-1472(0xa40)
1c003b30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b34:	0040898c 	slli.w	$r12,$r12,0x2
1c003b38:	001031ac 	add.w	$r12,$r13,$r12
1c003b3c:	2880018c 	ld.w	$r12,$r12,0
1c003b40:	4c000181 	jirl	$r1,$r12,0
1c003b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b54:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c003b58:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c003b14 <ext_handler+0x5c>
1c003b5c:	03400000 	andi	$r0,$r0,0x0
1c003b60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b6c:	4c000020 	jirl	$r0,$r1,0

1c003b70 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c003b70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b74:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b78:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b80:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003b84:	02a58084 	addi.w	$r4,$r4,-1696(0x960)
1c003b88:	57de1fff 	bl	-8676(0xfffde1c) # 1c0019a4 <myprintf>
1c003b8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b90:	0380f18c 	ori	$r12,$r12,0x3c
1c003b94:	1400020d 	lu12i.w	$r13,16(0x10)
1c003b98:	2980018d 	st.w	$r13,$r12,0
1c003b9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ba0:	0380118c 	ori	$r12,$r12,0x4
1c003ba4:	2880018c 	ld.w	$r12,$r12,0
1c003ba8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003bac:	57f097ff 	bl	-3948(0xffff094) # 1c002c40 <WDG_DogFeed>
1c003bb0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c003bb4:	57ed17ff 	bl	-4844(0xfffed14) # 1c0028c8 <Wake_Set>
1c003bb8:	03400000 	andi	$r0,$r0,0x0
1c003bbc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003bc0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003bc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bc8:	4c000020 	jirl	$r0,$r1,0

1c003bcc <TOUCH>:
TOUCH():
1c003bcc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bd0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003bd4:	29806076 	st.w	$r22,$r3,24(0x18)
1c003bd8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bdc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003be0:	0380118c 	ori	$r12,$r12,0x4
1c003be4:	2880018c 	ld.w	$r12,$r12,0
1c003be8:	0044c18c 	srli.w	$r12,$r12,0x10
1c003bec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bf0:	037ffd8c 	andi	$r12,$r12,0xfff
1c003bf4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003bf8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003bfc:	0380118c 	ori	$r12,$r12,0x4
1c003c00:	2880018c 	ld.w	$r12,$r12,0
1c003c04:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003c08:	03403d8c 	andi	$r12,$r12,0xf
1c003c0c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c003c10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c14:	0380f18c 	ori	$r12,$r12,0x3c
1c003c18:	1400040d 	lu12i.w	$r13,32(0x20)
1c003c1c:	2980018d 	st.w	$r13,$r12,0
1c003c20:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c24:	0380118c 	ori	$r12,$r12,0x4
1c003c28:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c003c2c:	2980018d 	st.w	$r13,$r12,0
1c003c30:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c003c34:	00150184 	move	$r4,$r12
1c003c38:	57f17bff 	bl	-3720(0xffff178) # 1c002db0 <Printf_KeyType>
1c003c3c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c40:	00150184 	move	$r4,$r12
1c003c44:	57f0f3ff 	bl	-3856(0xffff0f0) # 1c002d34 <Printf_KeyChannel>
1c003c48:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c002e3c <Printf_KeyVal>
1c003c4c:	03400000 	andi	$r0,$r0,0x0
1c003c50:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003c54:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003c58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c5c:	4c000020 	jirl	$r0,$r1,0

1c003c60 <UART2_INT>:
UART2_INT():
1c003c60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c64:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c70:	0380f18c 	ori	$r12,$r12,0x3c
1c003c74:	1400080d 	lu12i.w	$r13,64(0x40)
1c003c78:	2980018d 	st.w	$r13,$r12,0
1c003c7c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c003c80:	0380098c 	ori	$r12,$r12,0x2
1c003c84:	2a00018c 	ld.bu	$r12,$r12,0
1c003c88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003c8c:	03400000 	andi	$r0,$r0,0x0
1c003c90:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c98:	4c000020 	jirl	$r0,$r1,0

1c003c9c <BAT_FAIL>:
BAT_FAIL():
1c003c9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ca0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003ca4:	29806076 	st.w	$r22,$r3,24(0x18)
1c003ca8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cb0:	0380118c 	ori	$r12,$r12,0x4
1c003cb4:	2880018c 	ld.w	$r12,$r12,0
1c003cb8:	0044cd8c 	srli.w	$r12,$r12,0x13
1c003cbc:	03407d8c 	andi	$r12,$r12,0x1f
1c003cc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003cc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cc8:	0380118c 	ori	$r12,$r12,0x4
1c003ccc:	2880018e 	ld.w	$r14,$r12,0
1c003cd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cd4:	0380f18c 	ori	$r12,$r12,0x3c
1c003cd8:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c003cdc:	0014b5cd 	and	$r13,$r14,$r13
1c003ce0:	2980018d 	st.w	$r13,$r12,0
1c003ce4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ce8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003cec:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c003d5c <BAT_FAIL+0xc0>
1c003cf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cf4:	0040898d 	slli.w	$r13,$r12,0x2
1c003cf8:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c003cfc:	02a3c18c 	addi.w	$r12,$r12,-1808(0x8f0)
1c003d00:	001031ac 	add.w	$r12,$r13,$r12
1c003d04:	2880018c 	ld.w	$r12,$r12,0
1c003d08:	4c000180 	jirl	$r0,$r12,0
1c003d0c:	1c000004 	pcaddu12i	$r4,0
1c003d10:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c003d14:	57dc93ff 	bl	-9072(0xfffdc90) # 1c0019a4 <myprintf>
1c003d18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d1c:	0380118c 	ori	$r12,$r12,0x4
1c003d20:	29800180 	st.w	$r0,$r12,0
1c003d24:	50003c00 	b	60(0x3c) # 1c003d60 <BAT_FAIL+0xc4>
1c003d28:	1c000004 	pcaddu12i	$r4,0
1c003d2c:	029ff084 	addi.w	$r4,$r4,2044(0x7fc)
1c003d30:	57dc77ff 	bl	-9100(0xfffdc74) # 1c0019a4 <myprintf>
1c003d34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d38:	0380118c 	ori	$r12,$r12,0x4
1c003d3c:	2880018e 	ld.w	$r14,$r12,0
1c003d40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d44:	0380118c 	ori	$r12,$r12,0x4
1c003d48:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c003d4c:	03bffdad 	ori	$r13,$r13,0xfff
1c003d50:	0014b5cd 	and	$r13,$r14,$r13
1c003d54:	2980018d 	st.w	$r13,$r12,0
1c003d58:	50000800 	b	8(0x8) # 1c003d60 <BAT_FAIL+0xc4>
1c003d5c:	03400000 	andi	$r0,$r0,0x0
1c003d60:	03400000 	andi	$r0,$r0,0x0
1c003d64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003d68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003d6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d70:	4c000020 	jirl	$r0,$r1,0

1c003d74 <intc_handler>:
intc_handler():
1c003d74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003d7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003d80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d84:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003d88:	0380158c 	ori	$r12,$r12,0x5
1c003d8c:	2a00018c 	ld.bu	$r12,$r12,0
1c003d90:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003d94:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003d98:	0340058c 	andi	$r12,$r12,0x1
1c003d9c:	40001d80 	beqz	$r12,28(0x1c) # 1c003db8 <intc_handler+0x44>
1c003da0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c003da4:	57f2efff 	bl	-3348(0xffff2ec) # 1c003090 <TIM_GetITStatus>
1c003da8:	0015008c 	move	$r12,$r4
1c003dac:	40000d80 	beqz	$r12,12(0xc) # 1c003db8 <intc_handler+0x44>
1c003db0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c003db4:	57f32bff 	bl	-3288(0xffff328) # 1c0030dc <TIM_ClearIT>
1c003db8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003dbc:	0340118c 	andi	$r12,$r12,0x4
1c003dc0:	40006580 	beqz	$r12,100(0x64) # 1c003e24 <intc_handler+0xb0>
1c003dc4:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c003dc8:	0380098c 	ori	$r12,$r12,0x2
1c003dcc:	2a00018c 	ld.bu	$r12,$r12,0
1c003dd0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003dd4:	0340118c 	andi	$r12,$r12,0x4
1c003dd8:	40003d80 	beqz	$r12,60(0x3c) # 1c003e14 <intc_handler+0xa0>
1c003ddc:	50002000 	b	32(0x20) # 1c003dfc <intc_handler+0x88>
1c003de0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c003de4:	57e3b3ff 	bl	-7248(0xfffe3b0) # 1c002194 <UART_ReceiveData>
1c003de8:	0015008c 	move	$r12,$r4
1c003dec:	0015018d 	move	$r13,$r12
1c003df0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003df4:	0288418c 	addi.w	$r12,$r12,528(0x210)
1c003df8:	2900018d 	st.b	$r13,$r12,0
1c003dfc:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c003e00:	0380158c 	ori	$r12,$r12,0x5
1c003e04:	2a00018c 	ld.bu	$r12,$r12,0
1c003e08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003e0c:	0340058c 	andi	$r12,$r12,0x1
1c003e10:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c003de0 <intc_handler+0x6c>
1c003e14:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e18:	03800d8c 	ori	$r12,$r12,0x3
1c003e1c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003e20:	2900018d 	st.b	$r13,$r12,0
1c003e24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e28:	0340218c 	andi	$r12,$r12,0x8
1c003e2c:	40002580 	beqz	$r12,36(0x24) # 1c003e50 <intc_handler+0xdc>
1c003e30:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c003e34:	57e363ff 	bl	-7328(0xfffe360) # 1c002194 <UART_ReceiveData>
1c003e38:	0015008c 	move	$r12,$r4
1c003e3c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003e40:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e44:	03800d8c 	ori	$r12,$r12,0x3
1c003e48:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c003e4c:	2900018d 	st.b	$r13,$r12,0
1c003e50:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e54:	03800d8c 	ori	$r12,$r12,0x3
1c003e58:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c003e5c:	2900018d 	st.b	$r13,$r12,0
1c003e60:	03400000 	andi	$r0,$r0,0x0
1c003e64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e70:	4c000020 	jirl	$r0,$r1,0

1c003e74 <TIMER_HANDLER>:
TIMER_HANDLER():
1c003e74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e78:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e84:	57ea23ff 	bl	-5600(0xfffea20) # 1c0028a4 <Set_Timer_clear>
1c003e88:	1c000004 	pcaddu12i	$r4,0
1c003e8c:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c003e90:	57db17ff 	bl	-9452(0xfffdb14) # 1c0019a4 <myprintf>
1c003e94:	57e9f3ff 	bl	-5648(0xfffe9f0) # 1c002884 <Set_Timer_stop>
1c003e98:	03400000 	andi	$r0,$r0,0x0
1c003e9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ea0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ea4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ea8:	4c000020 	jirl	$r0,$r1,0

1c003eac <main>:
main():
1c003eac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003eb0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003eb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003eb8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003ebc:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003ec0:	50000000 	b	0 # 1c003ec0 <main+0x14>

Disassembly of section .rodata:

1c003ee0 <msg_wakeup>:
msg_wakeup():
1c003ee0:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01aa40 <_sidata+0x16114>
1c003ee4:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c003ee9 <hexdecarr>:
hexdecarr():
1c003ee9:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c003eed:	37363534 	0x37363534
1c003ef1:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfea029 <_start-0x15fd7>
1c003ef5:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfea459 <_start-0x15ba7>
1c003ef9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c003efd:	79654b0a 	0x79654b0a
1c003f01:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c003f05:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c003f09:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c003f0d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01af7d <_sidata+0x16651>
1c003f11:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffae71 <_start-0x518f>
1c003f15:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c003f19:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffae7d <_start-0x5183>
1c003f1d:	72616220 	0x72616220
1c003f21:	0a0d216b 	0x0a0d216b
1c003f25:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c003f29:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffa09d <_start-0x5f63>
1c003f2d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c003f31:	c4000a0d 	0xc4000a0d
1c003f35:	e01c001b 	0xe01c001b
1c003f39:	e01c001c 	0xe01c001c
1c003f3d:	e01c001c 	0xe01c001c
1c003f41:	e01c001c 	0xe01c001c
1c003f45:	e01c001c 	0xe01c001c
1c003f49:	e01c001c 	0xe01c001c
1c003f4d:	e01c001c 	0xe01c001c
1c003f51:	e01c001c 	0xe01c001c
1c003f55:	e01c001c 	0xe01c001c
1c003f59:	e01c001c 	0xe01c001c
1c003f5d:	dc1c001c 	0xdc1c001c
1c003f61:	641c001b 	bge	$r0,$r27,7168(0x1c00) # 1c005b61 <_sidata+0x1235>
1c003f65:	641c001c 	bge	$r0,$r28,7168(0x1c00) # 1c005b65 <_sidata+0x1239>
1c003f69:	641c001c 	bge	$r0,$r28,7168(0x1c00) # 1c005b69 <_sidata+0x123d>
1c003f6d:	641c001c 	bge	$r0,$r28,7168(0x1c00) # 1c005b6d <_sidata+0x1241>
1c003f71:	641c001c 	bge	$r0,$r28,7168(0x1c00) # 1c005b71 <_sidata+0x1245>
1c003f75:	641c001c 	bge	$r0,$r28,7168(0x1c00) # 1c005b75 <_sidata+0x1249>
1c003f79:	641c001c 	bge	$r0,$r28,7168(0x1c00) # 1c005b79 <_sidata+0x124d>
1c003f7d:	641c001c 	bge	$r0,$r28,7168(0x1c00) # 1c005b7d <_sidata+0x1251>
1c003f81:	641c001c 	bge	$r0,$r28,7168(0x1c00) # 1c005b81 <_sidata+0x1255>
1c003f85:	e01c001c 	0xe01c001c
1c003f89:	e01c001c 	0xe01c001c
1c003f8d:	e01c001c 	0xe01c001c
1c003f91:	e01c001c 	0xe01c001c
1c003f95:	e01c001c 	0xe01c001c
1c003f99:	e01c001c 	0xe01c001c
1c003f9d:	e01c001c 	0xe01c001c
1c003fa1:	e01c001c 	0xe01c001c
1c003fa5:	e01c001c 	0xe01c001c
1c003fa9:	e01c001c 	0xe01c001c
1c003fad:	e01c001c 	0xe01c001c
1c003fb1:	e01c001c 	0xe01c001c
1c003fb5:	e01c001c 	0xe01c001c
1c003fb9:	e01c001c 	0xe01c001c
1c003fbd:	e01c001c 	0xe01c001c
1c003fc1:	e01c001c 	0xe01c001c
1c003fc5:	e01c001c 	0xe01c001c
1c003fc9:	e01c001c 	0xe01c001c
1c003fcd:	e01c001c 	0xe01c001c
1c003fd1:	e01c001c 	0xe01c001c
1c003fd5:	e01c001c 	0xe01c001c
1c003fd9:	e01c001c 	0xe01c001c
1c003fdd:	e01c001c 	0xe01c001c
1c003fe1:	e01c001c 	0xe01c001c
1c003fe5:	e01c001c 	0xe01c001c
1c003fe9:	e01c001c 	0xe01c001c
1c003fed:	e01c001c 	0xe01c001c
1c003ff1:	e01c001c 	0xe01c001c
1c003ff5:	e01c001c 	0xe01c001c
1c003ff9:	e01c001c 	0xe01c001c
1c003ffd:	e01c001c 	0xe01c001c
1c004001:	e01c001c 	0xe01c001c
1c004005:	e01c001c 	0xe01c001c
1c004009:	e01c001c 	0xe01c001c
1c00400d:	e01c001c 	0xe01c001c
1c004011:	e01c001c 	0xe01c001c
1c004015:	e01c001c 	0xe01c001c
1c004019:	e01c001c 	0xe01c001c
1c00401d:	e01c001c 	0xe01c001c
1c004021:	e01c001c 	0xe01c001c
1c004025:	541c001c 	bl	7347200(0x701c00) # 1c705c25 <_sidata+0x7012f9>
1c004029:	7c1c001b 	0x7c1c001b
1c00402d:	e41c001a 	0xe41c001a
1c004031:	e01c001a 	0xe01c001a
1c004035:	e01c001c 	0xe01c001c
1c004039:	e01c001c 	0xe01c001c
1c00403d:	e01c001c 	0xe01c001c
1c004041:	e01c001c 	0xe01c001c
1c004045:	e01c001c 	0xe01c001c
1c004049:	e01c001c 	0xe01c001c
1c00404d:	e01c001c 	0xe01c001c
1c004051:	e01c001c 	0xe01c001c
1c004055:	e01c001c 	0xe01c001c
1c004059:	1c1c001c 	pcaddu12i	$r28,57344(0xe000)
1c00405d:	8c1c001b 	0x8c1c001b
1c004061:	e01c001b 	0xe01c001b
1c004065:	e01c001c 	0xe01c001c
1c004069:	501c001c 	b	7347200(0x701c00) # 1c705c69 <_sidata+0x70133d>
1c00406d:	e01c001a 	0xe01c001a
1c004071:	ac1c001c 	0xac1c001c
1c004075:	e01c001a 	0xe01c001a
1c004079:	e01c001c 	0xe01c001c
1c00407d:	8c1c001c 	0x8c1c001c
1c004081:	0a1c001b 	xvfmadd.s	$xr27,$xr0,$xr0,$xr24
1c004085:	7c000000 	0x7c000000
1c004089:	7c7c7c7c 	0x7c7c7c7c
1c00408d:	7c7c7c7c 	0x7c7c7c7c
1c004091:	7c7c7c7c 	0x7c7c7c7c
1c004095:	7c7c7c7c 	0x7c7c7c7c
1c004099:	7c7c7c7c 	0x7c7c7c7c
1c00409d:	7c7c7c7c 	0x7c7c7c7c
1c0040a1:	7c7c7c7c 	0x7c7c7c7c
1c0040a5:	7c7c7c7c 	0x7c7c7c7c
1c0040a9:	7c7c7c7c 	0x7c7c7c7c
1c0040ad:	7c7c7c7c 	0x7c7c7c7c
1c0040b1:	7c7c7c7c 	0x7c7c7c7c
1c0040b5:	7c7c7c7c 	0x7c7c7c7c
1c0040b9:	7c7c7c7c 	0x7c7c7c7c
1c0040bd:	7c7c7c7c 	0x7c7c7c7c
1c0040c1:	7c7c7c7c 	0x7c7c7c7c
1c0040c5:	7c7c7c7c 	0x7c7c7c7c
1c0040c9:	7c7c7c7c 	0x7c7c7c7c
1c0040cd:	7c7c7c7c 	0x7c7c7c7c
1c0040d1:	7c7c7c7c 	0x7c7c7c7c
1c0040d5:	7c7c7c7c 	0x7c7c7c7c
1c0040d9:	7c7c7c7c 	0x7c7c7c7c
1c0040dd:	7c7c7c7c 	0x7c7c7c7c
1c0040e1:	7c7c7c7c 	0x7c7c7c7c
1c0040e5:	7c7c7c7c 	0x7c7c7c7c
1c0040e9:	7c00000a 	0x7c00000a
1c0040ed:	7c20207c 	0x7c20207c
1c0040f1:	7c7c7c7c 	0x7c7c7c7c
1c0040f5:	7c7c7c7c 	0x7c7c7c7c
1c0040f9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0040fd:	7c202020 	0x7c202020
1c004101:	7c7c7c7c 	0x7c7c7c7c
1c004105:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c004109:	7c202020 	0x7c202020
1c00410d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004111:	7c7c2020 	0x7c7c2020
1c004115:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004119:	7c7c7c20 	0x7c7c7c20
1c00411d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c004121:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c004125:	7c7c7c7c 	0x7c7c7c7c
1c004129:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00412d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c004131:	7c7c7c7c 	0x7c7c7c7c
1c004135:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c004139:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00413d:	7c7c7c7c 	0x7c7c7c7c
1c004141:	7c202020 	0x7c202020
1c004145:	7c7c7c7c 	0x7c7c7c7c
1c004149:	7c7c2020 	0x7c7c2020
1c00414d:	7c00000a 	0x7c00000a
1c004151:	7c20207c 	0x7c20207c
1c004155:	7c7c7c7c 	0x7c7c7c7c
1c004159:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00415d:	7c7c2020 	0x7c7c2020
1c004161:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c004165:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004169:	7c7c2020 	0x7c7c2020
1c00416d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c004171:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004175:	7c202020 	0x7c202020
1c004179:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00417d:	7c7c7c20 	0x7c7c7c20
1c004181:	7c20207c 	0x7c20207c
1c004185:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004189:	7c7c7c20 	0x7c7c7c20
1c00418d:	7c202020 	0x7c202020
1c004191:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004195:	7c7c7c20 	0x7c7c7c20
1c004199:	7c202020 	0x7c202020
1c00419d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0041a1:	7c7c7c20 	0x7c7c7c20
1c0041a5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0041a9:	7c7c7c7c 	0x7c7c7c7c
1c0041ad:	7c7c2020 	0x7c7c2020
1c0041b1:	7c00000a 	0x7c00000a
1c0041b5:	7c20207c 	0x7c20207c
1c0041b9:	7c7c7c7c 	0x7c7c7c7c
1c0041bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0041c1:	7c7c7c20 	0x7c7c7c20
1c0041c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0041c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0041cd:	7c7c7c20 	0x7c7c7c20
1c0041d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0041d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0041d9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0041dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0041e1:	7c7c7c20 	0x7c7c7c20
1c0041e5:	7c7c2020 	0x7c7c2020
1c0041e9:	7c7c7c7c 	0x7c7c7c7c
1c0041ed:	7c7c7c7c 	0x7c7c7c7c
1c0041f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0041f5:	7c7c7c20 	0x7c7c7c20
1c0041f9:	7c7c7c7c 	0x7c7c7c7c
1c0041fd:	7c7c2020 	0x7c7c2020
1c004201:	7c7c7c7c 	0x7c7c7c7c
1c004205:	7c7c7c20 	0x7c7c7c20
1c004209:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00420d:	7c7c7c20 	0x7c7c7c20
1c004211:	7c7c2020 	0x7c7c2020
1c004215:	7c00000a 	0x7c00000a
1c004219:	7c20207c 	0x7c20207c
1c00421d:	7c7c7c7c 	0x7c7c7c7c
1c004221:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004225:	7c7c7c20 	0x7c7c7c20
1c004229:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00422d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004231:	7c7c7c20 	0x7c7c7c20
1c004235:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004239:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00423d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c004241:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c004245:	7c7c7c20 	0x7c7c7c20
1c004249:	7c7c2020 	0x7c7c2020
1c00424d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c004251:	7c7c7c20 	0x7c7c7c20
1c004255:	7c7c7c7c 	0x7c7c7c7c
1c004259:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00425d:	7c7c7c7c 	0x7c7c7c7c
1c004261:	7c7c2020 	0x7c7c2020
1c004265:	7c7c7c7c 	0x7c7c7c7c
1c004269:	7c7c7c20 	0x7c7c7c20
1c00426d:	7c7c2020 	0x7c7c2020
1c004271:	7c7c2020 	0x7c7c2020
1c004275:	7c7c2020 	0x7c7c2020
1c004279:	7c00000a 	0x7c00000a
1c00427d:	7c20207c 	0x7c20207c
1c004281:	7c7c7c7c 	0x7c7c7c7c
1c004285:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004289:	7c7c7c20 	0x7c7c7c20
1c00428d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004291:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004295:	7c7c7c20 	0x7c7c7c20
1c004299:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00429d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0042a1:	7c7c7c20 	0x7c7c7c20
1c0042a5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0042a9:	7c7c7c20 	0x7c7c7c20
1c0042ad:	7c7c2020 	0x7c7c2020
1c0042b1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0042b5:	7c7c7c20 	0x7c7c7c20
1c0042b9:	7c7c7c7c 	0x7c7c7c7c
1c0042bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0042c1:	7c7c7c20 	0x7c7c7c20
1c0042c5:	7c7c2020 	0x7c7c2020
1c0042c9:	7c7c7c7c 	0x7c7c7c7c
1c0042cd:	7c7c7c20 	0x7c7c7c20
1c0042d1:	7c7c2020 	0x7c7c2020
1c0042d5:	7c20207c 	0x7c20207c
1c0042d9:	7c7c2020 	0x7c7c2020
1c0042dd:	7c00000a 	0x7c00000a
1c0042e1:	7c20207c 	0x7c20207c
1c0042e5:	7c7c7c7c 	0x7c7c7c7c
1c0042e9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0042ed:	7c7c2020 	0x7c7c2020
1c0042f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0042f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0042f9:	7c7c2020 	0x7c7c2020
1c0042fd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c004301:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004305:	7c7c7c20 	0x7c7c7c20
1c004309:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00430d:	7c7c7c20 	0x7c7c7c20
1c004311:	7c202020 	0x7c202020
1c004315:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004319:	7c7c7c20 	0x7c7c7c20
1c00431d:	7c202020 	0x7c202020
1c004321:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c004325:	7c7c7c7c 	0x7c7c7c7c
1c004329:	7c202020 	0x7c202020
1c00432d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004331:	7c7c7c20 	0x7c7c7c20
1c004335:	7c7c2020 	0x7c7c2020
1c004339:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00433d:	7c7c2020 	0x7c7c2020
1c004341:	7c00000a 	0x7c00000a
1c004345:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c004349:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00434d:	7c7c7c7c 	0x7c7c7c7c
1c004351:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c004355:	7c202020 	0x7c202020
1c004359:	7c7c7c7c 	0x7c7c7c7c
1c00435d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c004361:	7c202020 	0x7c202020
1c004365:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c004369:	7c7c7c20 	0x7c7c7c20
1c00436d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c004371:	7c7c7c20 	0x7c7c7c20
1c004375:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c004379:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00437d:	7c7c7c7c 	0x7c7c7c7c
1c004381:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c004385:	7c202020 	0x7c202020
1c004389:	7c7c7c7c 	0x7c7c7c7c
1c00438d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c004391:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c004395:	7c7c7c7c 	0x7c7c7c7c
1c004399:	7c7c2020 	0x7c7c2020
1c00439d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0043a1:	7c7c2020 	0x7c7c2020
1c0043a5:	7c00000a 	0x7c00000a
1c0043a9:	7c7c7c7c 	0x7c7c7c7c
1c0043ad:	7c7c7c7c 	0x7c7c7c7c
1c0043b1:	7c7c7c7c 	0x7c7c7c7c
1c0043b5:	7c7c7c7c 	0x7c7c7c7c
1c0043b9:	7c7c7c7c 	0x7c7c7c7c
1c0043bd:	7c7c7c7c 	0x7c7c7c7c
1c0043c1:	7c7c7c7c 	0x7c7c7c7c
1c0043c5:	7c7c7c7c 	0x7c7c7c7c
1c0043c9:	7c7c7c7c 	0x7c7c7c7c
1c0043cd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0043d1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0043d5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0043d9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0043dd:	7c7c7c5d 	0x7c7c7c5d
1c0043e1:	7c7c7c7c 	0x7c7c7c7c
1c0043e5:	7c7c7c7c 	0x7c7c7c7c
1c0043e9:	7c7c7c7c 	0x7c7c7c7c
1c0043ed:	7c7c7c7c 	0x7c7c7c7c
1c0043f1:	7c7c7c7c 	0x7c7c7c7c
1c0043f5:	7c7c7c7c 	0x7c7c7c7c
1c0043f9:	7c7c7c7c 	0x7c7c7c7c
1c0043fd:	7c7c7c7c 	0x7c7c7c7c
1c004401:	7c7c7c7c 	0x7c7c7c7c
1c004405:	7c7c7c7c 	0x7c7c7c7c
1c004409:	0900000a 	0x0900000a
1c00440d:	0a006425 	0x0a006425
1c004411:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c004415:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c004419:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00441d:	0050550a 	0x0050550a
1c004421:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c004425:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00b971 <_sidata+0x7045>
1c004429:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00442d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c004431:	756f430a 	0x756f430a
1c004435:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c004439:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00443d:	3030090a 	0x3030090a
1c004441:	09313009 	0x09313009
1c004445:	30093230 	0x30093230
1c004449:	34300933 	0x34300933
1c00444d:	09353009 	0x09353009
1c004451:	30093630 	0x30093630
1c004455:	38300937 	fldx.s	$f23,$r9,$r2
1c004459:	09393009 	0x09393009
1c00445d:	31093031 	0x31093031
1c004461:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c004465:	746e630a 	0x746e630a
1c004469:	09000000 	0x09000000
1c00446d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c004471:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c004475:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c004479:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00a5cd <_sidata+0x5ca1>
1c00447d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c004481:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeb9d1 <_start-0x1462f>
1c004485:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c004489:	09000000 	0x09000000
1c00448d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c004491:	09000000 	0x09000000
1c004495:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c004499:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00449d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0044a1:	3a515249 	0x3a515249
1c0044a5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0044a9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffb31d <_start-0x4ce3>
1c0044ad:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0044b1:	0d3e2020 	0x0d3e2020
1c0044b5:	0a00000a 	0x0a00000a
1c0044b9:	2e2e2e2e 	0x2e2e2e2e
1c0044bd:	2e2e2e2e 	0x2e2e2e2e
1c0044c1:	2e2e2e2e 	0x2e2e2e2e
1c0044c5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3a9415 <_sidata+0x3a4ae9>
1c0044c9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0044cd:	2e2e2e54 	0x2e2e2e54
1c0044d1:	2e2e2e2e 	0x2e2e2e2e
1c0044d5:	2e2e2e2e 	0x2e2e2e2e
1c0044d9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0044dd:	5400000d 	bl	3407872(0x340000) # 1c3444dd <_sidata+0x33fbb1>
1c0044e1:	52454d49 	b	86394188(0x526454c) # 21268a2d <_sidata+0x5264101>
1c0044e5:	4b41575f 	0x4b41575f
1c0044e9:	4e495f45 	jirl	$r5,$r26,-112292(0x2495c)
1c0044ed:	65662054 	bge	$r2,$r20,91680(0x16620) # 1c01ab0d <_sidata+0x161e1>
1c0044f1:	57206465 	bl	26681444(0x1972064) # 1d976555 <_sidata+0x1971c29>
1c0044f5:	0a214744 	xvfmadd.d	$xr4,$xr26,$xr17,$xr2
1c0044f9:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0044fd:	2e2e2e0a 	0x2e2e2e0a
1c004501:	2e2e2e2e 	0x2e2e2e2e
1c004505:	2e2e2e2e 	0x2e2e2e2e
1c004509:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c398735 <_sidata+0x393e09>
1c00450d:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd18b69 <_start-0x2e7497>
1c004511:	2e2e4c49 	0x2e2e4c49
1c004515:	2e2e2e2e 	0x2e2e2e2e
1c004519:	2e2e2e2e 	0x2e2e2e2e
1c00451d:	2e2e2e2e 	0x2e2e2e2e
1c004521:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c004525:	2e2e2e0a 	0x2e2e2e0a
1c004529:	2e2e2e2e 	0x2e2e2e2e
1c00452d:	2e2e2e2e 	0x2e2e2e2e
1c004531:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38865d <_sidata+0x383d31>
1c004535:	2e2e2e43 	0x2e2e2e43
1c004539:	2e2e2e2e 	0x2e2e2e2e
1c00453d:	2e2e2e2e 	0x2e2e2e2e
1c004541:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c004545:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b4545 <_sidata+0x2afc19>
1c004549:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c00454d:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01b2b5 <_sidata+0x16989>
1c004551:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00a871 <_sidata+0x5f45>
1c004555:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c004559:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01b9c5 <_sidata+0x17099>
1c00455d:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c004561:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c004565:	 	ldx.b	$r10,$r0,$r0

1c004568 <Ext_IrqHandle>:
1c004568:	1c003138 	pcaddu12i	$r24,393(0x189)
1c00456c:	1c003184 	pcaddu12i	$r4,396(0x18c)
1c004570:	1c0031d0 	pcaddu12i	$r16,398(0x18e)
1c004574:	1c00321c 	pcaddu12i	$r28,400(0x190)
1c004578:	1c003268 	pcaddu12i	$r8,403(0x193)
1c00457c:	1c0032b4 	pcaddu12i	$r20,405(0x195)
1c004580:	1c003300 	pcaddu12i	$r0,408(0x198)
1c004584:	1c00334c 	pcaddu12i	$r12,410(0x19a)
1c004588:	1c003398 	pcaddu12i	$r24,412(0x19c)
1c00458c:	1c0033e4 	pcaddu12i	$r4,415(0x19f)
1c004590:	1c003430 	pcaddu12i	$r16,417(0x1a1)
1c004594:	1c00347c 	pcaddu12i	$r28,419(0x1a3)
1c004598:	1c0034c8 	pcaddu12i	$r8,422(0x1a6)
1c00459c:	1c003514 	pcaddu12i	$r20,424(0x1a8)
1c0045a0:	1c003560 	pcaddu12i	$r0,427(0x1ab)
1c0045a4:	1c0035ac 	pcaddu12i	$r12,429(0x1ad)
1c0045a8:	1c0035f8 	pcaddu12i	$r24,431(0x1af)
1c0045ac:	1c003644 	pcaddu12i	$r4,434(0x1b2)
1c0045b0:	1c003690 	pcaddu12i	$r16,436(0x1b4)
1c0045b4:	1c0036dc 	pcaddu12i	$r28,438(0x1b6)
1c0045b8:	1c003728 	pcaddu12i	$r8,441(0x1b9)
1c0045bc:	1c003774 	pcaddu12i	$r20,443(0x1bb)
1c0045c0:	1c0037c0 	pcaddu12i	$r0,446(0x1be)
1c0045c4:	1c00380c 	pcaddu12i	$r12,448(0x1c0)
1c0045c8:	1c003858 	pcaddu12i	$r24,450(0x1c2)
1c0045cc:	1c0038a4 	pcaddu12i	$r4,453(0x1c5)
1c0045d0:	1c0038f0 	pcaddu12i	$r16,455(0x1c7)
1c0045d4:	1c00393c 	pcaddu12i	$r28,457(0x1c9)
1c0045d8:	1c003988 	pcaddu12i	$r8,460(0x1cc)
1c0045dc:	1c0039d4 	pcaddu12i	$r20,462(0x1ce)
1c0045e0:	1c003a20 	pcaddu12i	$r0,465(0x1d1)
1c0045e4:	1c003a6c 	pcaddu12i	$r12,467(0x1d3)
1c0045e8:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c0045ec:	1c003d0c 	pcaddu12i	$r12,488(0x1e8)
1c0045f0:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c0045f4:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c0045f8:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c0045fc:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004600:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004604:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004608:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c00460c:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004610:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004614:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004618:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c00461c:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004620:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004624:	1c003d5c 	pcaddu12i	$r28,490(0x1ea)
1c004628:	1c003d28 	pcaddu12i	$r8,489(0x1e9)

1c00462c <__FUNCTION__.1624>:
1c00462c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01baa4 <_sidata+0x17178>
1c004630:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b694 <_sidata+0x16d68>
1c004634:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff7694 <_start-0x896c>
1c004638:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb7a8 <_start-0x4858>
1c00463c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b49c <_sidata+0x6b70>
1c004640:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004644 <__FUNCTION__.1628>:
1c004644:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01babc <_sidata+0x17190>
1c004648:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b6ac <_sidata+0x16d80>
1c00464c:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff77ac <_start-0x8854>
1c004650:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb7c0 <_start-0x4840>
1c004654:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b4b4 <_sidata+0x6b88>
1c004658:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00465c <__FUNCTION__.1632>:
1c00465c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bad4 <_sidata+0x171a8>
1c004660:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b6c4 <_sidata+0x16d98>
1c004664:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff78c4 <_start-0x873c>
1c004668:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb7d8 <_start-0x4828>
1c00466c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b4cc <_sidata+0x6ba0>
1c004670:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004674 <__FUNCTION__.1636>:
1c004674:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01baec <_sidata+0x171c0>
1c004678:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b6dc <_sidata+0x16db0>
1c00467c:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff79dc <_start-0x8624>
1c004680:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb7f0 <_start-0x4810>
1c004684:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b4e4 <_sidata+0x6bb8>
1c004688:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00468c <__FUNCTION__.1640>:
1c00468c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bb04 <_sidata+0x171d8>
1c004690:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b6f4 <_sidata+0x16dc8>
1c004694:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff7af4 <_start-0x850c>
1c004698:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb808 <_start-0x47f8>
1c00469c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b4fc <_sidata+0x6bd0>
1c0046a0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0046a4 <__FUNCTION__.1644>:
1c0046a4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bb1c <_sidata+0x171f0>
1c0046a8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b70c <_sidata+0x16de0>
1c0046ac:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff7c0c <_start-0x83f4>
1c0046b0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb820 <_start-0x47e0>
1c0046b4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b514 <_sidata+0x6be8>
1c0046b8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0046bc <__FUNCTION__.1648>:
1c0046bc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bb34 <_sidata+0x17208>
1c0046c0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b724 <_sidata+0x16df8>
1c0046c4:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff7d24 <_start-0x82dc>
1c0046c8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb838 <_start-0x47c8>
1c0046cc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b52c <_sidata+0x6c00>
1c0046d0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0046d4 <__FUNCTION__.1652>:
1c0046d4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bb4c <_sidata+0x17220>
1c0046d8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b73c <_sidata+0x16e10>
1c0046dc:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff7e3c <_start-0x81c4>
1c0046e0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb850 <_start-0x47b0>
1c0046e4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b544 <_sidata+0x6c18>
1c0046e8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0046ec <__FUNCTION__.1656>:
1c0046ec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bb64 <_sidata+0x17238>
1c0046f0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b754 <_sidata+0x16e28>
1c0046f4:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff7754 <_start-0x88ac>
1c0046f8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb868 <_start-0x4798>
1c0046fc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b55c <_sidata+0x6c30>
1c004700:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004704 <__FUNCTION__.1660>:
1c004704:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bb7c <_sidata+0x17250>
1c004708:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b76c <_sidata+0x16e40>
1c00470c:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff786c <_start-0x8794>
1c004710:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb880 <_start-0x4780>
1c004714:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b574 <_sidata+0x6c48>
1c004718:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00471c <__FUNCTION__.1664>:
1c00471c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bb94 <_sidata+0x17268>
1c004720:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b784 <_sidata+0x16e58>
1c004724:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff7984 <_start-0x867c>
1c004728:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb898 <_start-0x4768>
1c00472c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b58c <_sidata+0x6c60>
1c004730:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004734 <__FUNCTION__.1668>:
1c004734:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bbac <_sidata+0x17280>
1c004738:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b79c <_sidata+0x16e70>
1c00473c:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff7a9c <_start-0x8564>
1c004740:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb8b0 <_start-0x4750>
1c004744:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b5a4 <_sidata+0x6c78>
1c004748:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00474c <__FUNCTION__.1672>:
1c00474c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bbc4 <_sidata+0x17298>
1c004750:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b7b4 <_sidata+0x16e88>
1c004754:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff7bb4 <_start-0x844c>
1c004758:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb8c8 <_start-0x4738>
1c00475c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b5bc <_sidata+0x6c90>
1c004760:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004764 <__FUNCTION__.1676>:
1c004764:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bbdc <_sidata+0x172b0>
1c004768:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b7cc <_sidata+0x16ea0>
1c00476c:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff7ccc <_start-0x8334>
1c004770:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb8e0 <_start-0x4720>
1c004774:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b5d4 <_sidata+0x6ca8>
1c004778:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00477c <__FUNCTION__.1680>:
1c00477c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bbf4 <_sidata+0x172c8>
1c004780:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b7e4 <_sidata+0x16eb8>
1c004784:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff7de4 <_start-0x821c>
1c004788:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb8f8 <_start-0x4708>
1c00478c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b5ec <_sidata+0x6cc0>
1c004790:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004794 <__FUNCTION__.1684>:
1c004794:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bc0c <_sidata+0x172e0>
1c004798:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b7fc <_sidata+0x16ed0>
1c00479c:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff7efc <_start-0x8104>
1c0047a0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb910 <_start-0x46f0>
1c0047a4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b604 <_sidata+0x6cd8>
1c0047a8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0047ac <__FUNCTION__.1688>:
1c0047ac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bc24 <_sidata+0x172f8>
1c0047b0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b814 <_sidata+0x16ee8>
1c0047b4:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff7814 <_start-0x87ec>
1c0047b8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb928 <_start-0x46d8>
1c0047bc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b61c <_sidata+0x6cf0>
1c0047c0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0047c4 <__FUNCTION__.1692>:
1c0047c4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bc3c <_sidata+0x17310>
1c0047c8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b82c <_sidata+0x16f00>
1c0047cc:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff792c <_start-0x86d4>
1c0047d0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb940 <_start-0x46c0>
1c0047d4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b634 <_sidata+0x6d08>
1c0047d8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0047dc <__FUNCTION__.1696>:
1c0047dc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bc54 <_sidata+0x17328>
1c0047e0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b844 <_sidata+0x16f18>
1c0047e4:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff7a44 <_start-0x85bc>
1c0047e8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb958 <_start-0x46a8>
1c0047ec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b64c <_sidata+0x6d20>
1c0047f0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0047f4 <__FUNCTION__.1700>:
1c0047f4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bc6c <_sidata+0x17340>
1c0047f8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b85c <_sidata+0x16f30>
1c0047fc:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff7b5c <_start-0x84a4>
1c004800:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb970 <_start-0x4690>
1c004804:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b664 <_sidata+0x6d38>
1c004808:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00480c <__FUNCTION__.1704>:
1c00480c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bc84 <_sidata+0x17358>
1c004810:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b874 <_sidata+0x16f48>
1c004814:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff7c74 <_start-0x838c>
1c004818:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb988 <_start-0x4678>
1c00481c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b67c <_sidata+0x6d50>
1c004820:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004824 <__FUNCTION__.1708>:
1c004824:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bc9c <_sidata+0x17370>
1c004828:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b88c <_sidata+0x16f60>
1c00482c:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff7d8c <_start-0x8274>
1c004830:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb9a0 <_start-0x4660>
1c004834:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b694 <_sidata+0x6d68>
1c004838:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00483c <__FUNCTION__.1712>:
1c00483c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bcb4 <_sidata+0x17388>
1c004840:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b8a4 <_sidata+0x16f78>
1c004844:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff7ea4 <_start-0x815c>
1c004848:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb9b8 <_start-0x4648>
1c00484c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b6ac <_sidata+0x6d80>
1c004850:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004854 <__FUNCTION__.1716>:
1c004854:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bccc <_sidata+0x173a0>
1c004858:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b8bc <_sidata+0x16f90>
1c00485c:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff7fbc <_start-0x8044>
1c004860:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb9d0 <_start-0x4630>
1c004864:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b6c4 <_sidata+0x6d98>
1c004868:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00486c <__FUNCTION__.1720>:
1c00486c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bce4 <_sidata+0x173b8>
1c004870:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b8d4 <_sidata+0x16fa8>
1c004874:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff78d8 <_start-0x8728>
1c004878:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffb9e8 <_start-0x4618>
1c00487c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b6dc <_sidata+0x6db0>
1c004880:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004884 <__FUNCTION__.1724>:
1c004884:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bcfc <_sidata+0x173d0>
1c004888:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b8ec <_sidata+0x16fc0>
1c00488c:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff79f0 <_start-0x8610>
1c004890:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffba00 <_start-0x4600>
1c004894:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b6f4 <_sidata+0x6dc8>
1c004898:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00489c <__FUNCTION__.1728>:
1c00489c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bd14 <_sidata+0x173e8>
1c0048a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b904 <_sidata+0x16fd8>
1c0048a4:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff7b08 <_start-0x84f8>
1c0048a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffba18 <_start-0x45e8>
1c0048ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b70c <_sidata+0x6de0>
1c0048b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0048b4 <__FUNCTION__.1732>:
1c0048b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bd2c <_sidata+0x17400>
1c0048b8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b91c <_sidata+0x16ff0>
1c0048bc:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff7c20 <_start-0x83e0>
1c0048c0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffba30 <_start-0x45d0>
1c0048c4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b724 <_sidata+0x6df8>
1c0048c8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0048cc <__FUNCTION__.1736>:
1c0048cc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bd44 <_sidata+0x17418>
1c0048d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b934 <_sidata+0x17008>
1c0048d4:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff7d38 <_start-0x82c8>
1c0048d8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffba48 <_start-0x45b8>
1c0048dc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b73c <_sidata+0x6e10>
1c0048e0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0048e4 <__FUNCTION__.1740>:
1c0048e4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bd5c <_sidata+0x17430>
1c0048e8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b94c <_sidata+0x17020>
1c0048ec:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff7e50 <_start-0x81b0>
1c0048f0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffba60 <_start-0x45a0>
1c0048f4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b754 <_sidata+0x6e28>
1c0048f8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0048fc <__FUNCTION__.1744>:
1c0048fc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bd74 <_sidata+0x17448>
1c004900:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b964 <_sidata+0x17038>
1c004904:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff7f68 <_start-0x8098>
1c004908:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffba78 <_start-0x4588>
1c00490c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b76c <_sidata+0x6e40>
1c004910:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004914 <__FUNCTION__.1748>:
1c004914:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bd8c <_sidata+0x17460>
1c004918:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01b97c <_sidata+0x17050>
1c00491c:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff8080 <_start-0x7f80>
1c004920:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffba90 <_start-0x4570>
1c004924:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b784 <_sidata+0x6e58>
1c004928:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c003ee9 	pcaddu12i	$r9,503(0x1f7)
80001008:	80001010 	0x80001010
8000100c:	1c003ee0 	pcaddu12i	$r0,503(0x1f7)

80001010 <g_SystemFreq>:
80001010:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <_sbss>:
_sbss():
80000000:	00000000 	0x00000000

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
