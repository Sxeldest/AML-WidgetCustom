; =========================================================
; Game Engine Function: INT123_dct64
; Address            : 0x2231FC - 0x223D8E
; =========================================================

2231FC:  PUSH            {R7,LR}
2231FE:  MOV             R7, SP
223200:  SUB.W           SP, SP, #0x200
223204:  VLDR            D16, [R2]
223208:  ADD.W           LR, R2, #0x40 ; '@'
22320C:  VLDR            D17, [R2,#0xF8]
223210:  LDR.W           R3, =(INT123_pnts_ptr - 0x22321C)
223214:  VADD.F64        D16, D16, D17
223218:  ADD             R3, PC; INT123_pnts_ptr
22321A:  LDR.W           R12, [R3]; INT123_pnts
22321E:  LDR.W           R3, [R12]; unk_6D6160
223222:  VSTR            D16, [SP,#0x208+var_208]
223226:  VLDR            D16, [R2,#8]
22322A:  VLDR            D17, [R2,#0xF0]
22322E:  VADD.F64        D16, D16, D17
223232:  VSTR            D16, [SP,#0x208+var_200]
223236:  VLDR            D16, [R2,#0x10]
22323A:  VLDR            D17, [R2,#0xE8]
22323E:  VADD.F64        D16, D16, D17
223242:  VSTR            D16, [SP,#0x208+var_1F8]
223246:  VLDR            D16, [R2,#0x18]
22324A:  VLDR            D17, [R2,#0xE0]
22324E:  VADD.F64        D16, D16, D17
223252:  VSTR            D16, [SP,#0x208+var_1F0]
223256:  VLDR            D16, [R2,#0x20]
22325A:  VLDR            D17, [R2,#0xD8]
22325E:  VADD.F64        D16, D16, D17
223262:  VSTR            D16, [SP,#0x208+var_1E8]
223266:  VLDR            D16, [R2,#0x28]
22326A:  VLDR            D17, [R2,#0xD0]
22326E:  VADD.F64        D16, D16, D17
223272:  VSTR            D16, [SP,#0x208+var_1E0]
223276:  VLDR            D16, [R2,#0x30]
22327A:  VLDR            D17, [R2,#0xC8]
22327E:  VADD.F64        D16, D16, D17
223282:  VSTR            D16, [SP,#0x208+var_1D8]
223286:  VLDR            D16, [R2,#0x38]
22328A:  VLDR            D17, [R2,#0xC0]
22328E:  VADD.F64        D16, D16, D17
223292:  VSTR            D16, [SP,#0x208+var_1D0]
223296:  VLDM            LR, {D16-D31}
22329A:  LDR.W           LR, [R12,#(off_683D04 - 0x683CFC)]; dword_6D6220
22329E:  VADD.F64        D16, D16, D31
2232A2:  VSTR            D16, [SP,#0x208+var_1C8]
2232A6:  VADD.F64        D16, D17, D30
2232AA:  VSTR            D16, [SP,#0x208+var_1C0]
2232AE:  VADD.F64        D16, D18, D29
2232B2:  VSTR            D16, [SP,#0x208+var_1B8]
2232B6:  VADD.F64        D16, D19, D28
2232BA:  VSTR            D16, [SP,#0x208+var_1B0]
2232BE:  VADD.F64        D16, D20, D27
2232C2:  VSTR            D16, [SP,#0x208+var_1A8]
2232C6:  VADD.F64        D16, D21, D26
2232CA:  VSTR            D16, [SP,#0x208+var_1A0]
2232CE:  VADD.F64        D16, D22, D25
2232D2:  VSTR            D16, [SP,#0x208+var_198]
2232D6:  VADD.F64        D16, D23, D24
2232DA:  VSTR            D16, [SP,#0x208+var_190]
2232DE:  VLDR            D16, [R2,#0x78]
2232E2:  VLDR            D17, [R2,#0x80]
2232E6:  VSUB.F64        D16, D16, D17
2232EA:  VLDR            D17, [R3,#0x78]
2232EE:  VMUL.F64        D16, D16, D17
2232F2:  VSTR            D16, [SP,#0x208+var_188]
2232F6:  VLDR            D16, [R2,#0x70]
2232FA:  VLDR            D17, [R2,#0x88]
2232FE:  VSUB.F64        D16, D16, D17
223302:  VLDR            D17, [R3,#0x70]
223306:  VMUL.F64        D16, D16, D17
22330A:  VSTR            D16, [SP,#0x208+var_180]
22330E:  VLDR            D16, [R2,#0x68]
223312:  VLDR            D17, [R2,#0x90]
223316:  VSUB.F64        D16, D16, D17
22331A:  VLDR            D17, [R3,#0x68]
22331E:  VMUL.F64        D16, D16, D17
223322:  VSTR            D16, [SP,#0x208+var_178]
223326:  VLDR            D16, [R2,#0x60]
22332A:  VLDR            D17, [R2,#0x98]
22332E:  VSUB.F64        D16, D16, D17
223332:  VLDR            D17, [R3,#0x60]
223336:  VMUL.F64        D16, D16, D17
22333A:  VSTR            D16, [SP,#0x208+var_170]
22333E:  VLDR            D16, [R2,#0x58]
223342:  VLDR            D17, [R2,#0xA0]
223346:  VSUB.F64        D16, D16, D17
22334A:  VLDR            D17, [R3,#0x58]
22334E:  VMUL.F64        D16, D16, D17
223352:  VSTR            D16, [SP,#0x208+var_168]
223356:  VLDR            D16, [R2,#0x50]
22335A:  VLDR            D17, [R2,#0xA8]
22335E:  VSUB.F64        D16, D16, D17
223362:  VLDR            D17, [R3,#0x50]
223366:  VMUL.F64        D16, D16, D17
22336A:  VSTR            D16, [SP,#0x208+var_160]
22336E:  VLDR            D16, [R2,#0x48]
223372:  VLDR            D17, [R2,#0xB0]
223376:  VSUB.F64        D16, D16, D17
22337A:  VLDR            D17, [R3,#0x48]
22337E:  VMUL.F64        D16, D16, D17
223382:  VSTR            D16, [SP,#0x208+var_158]
223386:  VLDR            D16, [R2,#0x40]
22338A:  VLDR            D17, [R2,#0xB8]
22338E:  VSUB.F64        D16, D16, D17
223392:  VLDR            D17, [R3,#0x40]
223396:  VMUL.F64        D16, D16, D17
22339A:  VSTR            D16, [SP,#0x208+var_150]
22339E:  VLDR            D16, [R2,#0x38]
2233A2:  VLDR            D17, [R2,#0xC0]
2233A6:  VSUB.F64        D16, D16, D17
2233AA:  VLDR            D17, [R3,#0x38]
2233AE:  VMUL.F64        D16, D16, D17
2233B2:  VSTR            D16, [SP,#0x208+var_148]
2233B6:  VLDR            D16, [R2,#0x30]
2233BA:  VLDR            D17, [R2,#0xC8]
2233BE:  VSUB.F64        D16, D16, D17
2233C2:  VLDR            D17, [R3,#0x30]
2233C6:  VMUL.F64        D16, D16, D17
2233CA:  VSTR            D16, [SP,#0x208+var_140]
2233CE:  VLDR            D16, [R2,#0x28]
2233D2:  VLDR            D17, [R2,#0xD0]
2233D6:  VSUB.F64        D16, D16, D17
2233DA:  VLDR            D17, [R3,#0x28]
2233DE:  VMUL.F64        D16, D16, D17
2233E2:  VSTR            D16, [SP,#0x208+var_138]
2233E6:  VLDR            D16, [R2,#0x20]
2233EA:  VLDR            D17, [R2,#0xD8]
2233EE:  VSUB.F64        D16, D16, D17
2233F2:  VLDR            D17, [R3,#0x20]
2233F6:  VMUL.F64        D16, D16, D17
2233FA:  VSTR            D16, [SP,#0x208+var_130]
2233FE:  VLDR            D16, [R2,#0x18]
223402:  VLDR            D17, [R2,#0xE0]
223406:  VSUB.F64        D16, D16, D17
22340A:  VLDR            D17, [R3,#0x18]
22340E:  VMUL.F64        D16, D16, D17
223412:  VSTR            D16, [SP,#0x208+var_128]
223416:  VLDR            D16, [R2,#0x10]
22341A:  VLDR            D17, [R2,#0xE8]
22341E:  VSUB.F64        D16, D16, D17
223422:  VLDR            D17, [R3,#0x10]
223426:  VMUL.F64        D16, D16, D17
22342A:  VSTR            D16, [SP,#0x208+var_120]
22342E:  VLDR            D16, [R2,#8]
223432:  VLDR            D17, [R2,#0xF0]
223436:  VSUB.F64        D16, D16, D17
22343A:  VLDR            D17, [R3,#8]
22343E:  VMUL.F64        D16, D16, D17
223442:  VSTR            D16, [SP,#0x208+var_118]
223446:  VLDR            D16, [R2]
22344A:  VLDR            D17, [R2,#0xF8]
22344E:  LDR.W           R2, [R12,#(off_683D00 - 0x683CFC)]; dword_6D61E0
223452:  MOV             R12, SP
223454:  VSUB.F64        D16, D16, D17
223458:  VLDR            D17, [R3]
22345C:  VMUL.F64        D16, D16, D17
223460:  VSTR            D16, [SP,#0x208+var_110]
223464:  VLDR            D16, [SP,#0x208+var_208]
223468:  VLDR            D17, [SP,#0x208+var_190]
22346C:  VADD.F64        D16, D16, D17
223470:  VSTR            D16, [SP,#0x208+var_108]
223474:  VLDR            D16, [SP,#0x208+var_200]
223478:  VLDR            D17, [SP,#0x208+var_198]
22347C:  VADD.F64        D16, D16, D17
223480:  VSTR            D16, [SP,#0x208+var_100]
223484:  VLDR            D16, [SP,#0x208+var_1F8]
223488:  VLDR            D17, [SP,#0x208+var_1A0]
22348C:  VADD.F64        D16, D16, D17
223490:  VSTR            D16, [SP,#0x208+var_F8]
223494:  VLDR            D16, [SP,#0x208+var_1F0]
223498:  VLDR            D17, [SP,#0x208+var_1A8]
22349C:  VADD.F64        D16, D16, D17
2234A0:  VSTR            D16, [SP,#0x208+var_F0]
2234A4:  VLDR            D16, [SP,#0x208+var_1E8]
2234A8:  VLDR            D17, [SP,#0x208+var_1B0]
2234AC:  VADD.F64        D16, D16, D17
2234B0:  VSTR            D16, [SP,#0x208+var_E8]
2234B4:  VLDR            D16, [SP,#0x208+var_1E0]
2234B8:  VLDR            D17, [SP,#0x208+var_1B8]
2234BC:  VADD.F64        D16, D16, D17
2234C0:  VSTR            D16, [SP,#0x208+var_E0]
2234C4:  VLDR            D16, [SP,#0x208+var_1D8]
2234C8:  VLDR            D17, [SP,#0x208+var_1C0]
2234CC:  VADD.F64        D16, D16, D17
2234D0:  VSTR            D16, [SP,#0x208+var_D8]
2234D4:  VLDR            D16, [SP,#0x208+var_1D0]
2234D8:  VLDR            D17, [SP,#0x208+var_1C8]
2234DC:  VADD.F64        D16, D16, D17
2234E0:  VSTR            D16, [SP,#0x208+var_D0]
2234E4:  VLDR            D16, [SP,#0x208+var_1D0]
2234E8:  VLDR            D17, [SP,#0x208+var_1C8]
2234EC:  VSUB.F64        D16, D16, D17
2234F0:  VLDR            D17, [R2,#0x38]
2234F4:  VMUL.F64        D16, D16, D17
2234F8:  VSTR            D16, [SP,#0x208+var_C8]
2234FC:  VLDR            D16, [SP,#0x208+var_1D8]
223500:  VLDR            D17, [SP,#0x208+var_1C0]
223504:  VSUB.F64        D16, D16, D17
223508:  VLDR            D17, [R2,#0x30]
22350C:  VMUL.F64        D16, D16, D17
223510:  VSTR            D16, [SP,#0x208+var_C0]
223514:  VLDR            D16, [SP,#0x208+var_1E0]
223518:  VLDR            D17, [SP,#0x208+var_1B8]
22351C:  VSUB.F64        D16, D16, D17
223520:  VLDR            D17, [R2,#0x28]
223524:  VMUL.F64        D16, D16, D17
223528:  VSTR            D16, [SP,#0x208+var_B8]
22352C:  VLDR            D16, [SP,#0x208+var_1E8]
223530:  VLDR            D17, [SP,#0x208+var_1B0]
223534:  VSUB.F64        D16, D16, D17
223538:  VLDR            D17, [R2,#0x20]
22353C:  VMUL.F64        D16, D16, D17
223540:  VSTR            D16, [SP,#0x208+var_B0]
223544:  VLDR            D16, [SP,#0x208+var_1F0]
223548:  VLDR            D17, [SP,#0x208+var_1A8]
22354C:  VSUB.F64        D16, D16, D17
223550:  VLDR            D17, [R2,#0x18]
223554:  VMUL.F64        D16, D16, D17
223558:  VSTR            D16, [SP,#0x208+var_A8]
22355C:  VLDR            D16, [SP,#0x208+var_1F8]
223560:  VLDR            D17, [SP,#0x208+var_1A0]
223564:  VSUB.F64        D16, D16, D17
223568:  VLDR            D17, [R2,#0x10]
22356C:  VMUL.F64        D16, D16, D17
223570:  VSTR            D16, [SP,#0x208+var_A0]
223574:  VLDR            D16, [SP,#0x208+var_200]
223578:  VLDR            D17, [SP,#0x208+var_198]
22357C:  VSUB.F64        D16, D16, D17
223580:  VLDR            D17, [R2,#8]
223584:  VMUL.F64        D16, D16, D17
223588:  VSTR            D16, [SP,#0x208+var_98]
22358C:  VLDR            D16, [SP,#0x208+var_208]
223590:  VLDR            D17, [SP,#0x208+var_190]
223594:  VSUB.F64        D16, D16, D17
223598:  VLDR            D17, [R2]
22359C:  VMUL.F64        D16, D16, D17
2235A0:  VSTR            D16, [SP,#0x208+var_90]
2235A4:  VLDR            D16, [SP,#0x208+var_188]
2235A8:  VLDR            D17, [SP,#0x208+var_110]
2235AC:  VADD.F64        D16, D16, D17
2235B0:  VSTR            D16, [SP,#0x208+var_88]
2235B4:  VLDR            D16, [SP,#0x208+var_180]
2235B8:  VLDR            D17, [SP,#0x208+var_118]
2235BC:  VADD.F64        D16, D16, D17
2235C0:  VSTR            D16, [SP,#0x208+var_80]
2235C4:  VLDR            D16, [SP,#0x208+var_178]
2235C8:  VLDR            D17, [SP,#0x208+var_120]
2235CC:  VADD.F64        D16, D16, D17
2235D0:  VSTR            D16, [SP,#0x208+var_78]
2235D4:  VLDR            D16, [SP,#0x208+var_170]
2235D8:  VLDR            D17, [SP,#0x208+var_128]
2235DC:  VADD.F64        D16, D16, D17
2235E0:  VSTR            D16, [SP,#0x208+var_70]
2235E4:  VLDR            D16, [SP,#0x208+var_168]
2235E8:  VLDR            D17, [SP,#0x208+var_130]
2235EC:  VADD.F64        D16, D16, D17
2235F0:  VSTR            D16, [SP,#0x208+var_68]
2235F4:  VLDR            D16, [SP,#0x208+var_160]
2235F8:  VLDR            D17, [SP,#0x208+var_138]
2235FC:  VADD.F64        D16, D16, D17
223600:  VSTR            D16, [SP,#0x208+var_60]
223604:  VLDR            D16, [SP,#0x208+var_158]
223608:  VLDR            D17, [SP,#0x208+var_140]
22360C:  VADD.F64        D16, D16, D17
223610:  VSTR            D16, [SP,#0x208+var_58]
223614:  VLDR            D16, [SP,#0x208+var_150]
223618:  VLDR            D17, [SP,#0x208+var_148]
22361C:  VADD.F64        D16, D16, D17
223620:  VSTR            D16, [SP,#0x208+var_50]
223624:  VLDR            D16, [SP,#0x208+var_150]
223628:  VSUB.F64        D16, D17, D16
22362C:  VLDR            D17, [R2,#0x38]
223630:  VMUL.F64        D16, D16, D17
223634:  VSTR            D16, [SP,#0x208+var_48]
223638:  VLDR            D16, [SP,#0x208+var_158]
22363C:  VLDR            D17, [SP,#0x208+var_140]
223640:  VSUB.F64        D16, D17, D16
223644:  VLDR            D17, [R2,#0x30]
223648:  VMUL.F64        D16, D16, D17
22364C:  VSTR            D16, [SP,#0x208+var_40]
223650:  VLDR            D16, [SP,#0x208+var_160]
223654:  VLDR            D17, [SP,#0x208+var_138]
223658:  VSUB.F64        D16, D17, D16
22365C:  VLDR            D17, [R2,#0x28]
223660:  VMUL.F64        D16, D16, D17
223664:  VSTR            D16, [SP,#0x208+var_38]
223668:  VLDR            D16, [SP,#0x208+var_168]
22366C:  VLDR            D17, [SP,#0x208+var_130]
223670:  VSUB.F64        D16, D17, D16
223674:  VLDR            D17, [R2,#0x20]
223678:  VMUL.F64        D16, D16, D17
22367C:  VSTR            D16, [SP,#0x208+var_30]
223680:  VLDR            D16, [SP,#0x208+var_170]
223684:  VLDR            D17, [SP,#0x208+var_128]
223688:  VSUB.F64        D16, D17, D16
22368C:  VLDR            D17, [R2,#0x18]
223690:  VMUL.F64        D16, D16, D17
223694:  VSTR            D16, [SP,#0x208+var_28]
223698:  VLDR            D16, [SP,#0x208+var_178]
22369C:  VLDR            D17, [SP,#0x208+var_120]
2236A0:  VSUB.F64        D16, D17, D16
2236A4:  VLDR            D17, [R2,#0x10]
2236A8:  VMUL.F64        D16, D16, D17
2236AC:  VSTR            D16, [SP,#0x208+var_20]
2236B0:  VLDR            D16, [SP,#0x208+var_180]
2236B4:  VLDR            D17, [SP,#0x208+var_118]
2236B8:  VSUB.F64        D16, D17, D16
2236BC:  VLDR            D17, [R2,#8]
2236C0:  VMUL.F64        D16, D16, D17
2236C4:  VSTR            D16, [SP,#0x208+var_18]
2236C8:  VLDR            D16, [SP,#0x208+var_188]
2236CC:  VLDR            D17, [SP,#0x208+var_110]
2236D0:  VSUB.F64        D16, D17, D16
2236D4:  VLDR            D17, [R2]
2236D8:  MOVS            R2, #0
2236DA:  VMUL.F64        D16, D16, D17
2236DE:  VSTR            D16, [SP,#0x208+var_10]
2236E2:  ADD.W           R3, R12, R2
2236E6:  ADDS            R2, #0x80
2236E8:  CMP.W           R2, #0x100
2236EC:  VLDR            D16, [R3,#0x100]
2236F0:  VLDR            D23, [R3,#0x138]
2236F4:  VLDR            D17, [R3,#0x108]
2236F8:  VLDR            D22, [R3,#0x130]
2236FC:  VLDR            D18, [R3,#0x110]
223700:  VLDR            D19, [R3,#0x118]
223704:  VLDR            D20, [R3,#0x120]
223708:  VLDR            D21, [R3,#0x128]
22370C:  VADD.F64        D16, D16, D23
223710:  VADD.F64        D17, D17, D22
223714:  VADD.F64        D23, D19, D20
223718:  VADD.F64        D22, D18, D21
22371C:  VSUB.F64        D19, D19, D20
223720:  VSTM            R3, {D16-D17}
223724:  VSTR            D22, [R3,#0x10]
223728:  VSTR            D23, [R3,#0x18]
22372C:  VLDR            D16, [LR,#0x18]
223730:  VSUB.F64        D17, D18, D21
223734:  VMUL.F64        D16, D19, D16
223738:  VSTR            D16, [R3,#0x20]
22373C:  VLDR            D16, [LR,#0x10]
223740:  VMUL.F64        D16, D17, D16
223744:  VSTR            D16, [R3,#0x28]
223748:  VLDR            D17, [R3,#0x108]
22374C:  VLDR            D18, [R3,#0x130]
223750:  VLDR            D16, [R3,#0x100]
223754:  VSUB.F64        D17, D17, D18
223758:  VLDR            D18, [LR,#8]
22375C:  VLDR            D19, [R3,#0x138]
223760:  VMUL.F64        D17, D17, D18
223764:  VSUB.F64        D16, D16, D19
223768:  VLDR            D20, [R3,#0x140]
22376C:  VLDR            D21, [R3,#0x148]
223770:  VLDR            D22, [R3,#0x150]
223774:  VLDR            D23, [R3,#0x158]
223778:  VLDR            D24, [R3,#0x160]
22377C:  VLDR            D25, [R3,#0x168]
223780:  VSTR            D17, [R3,#0x30]
223784:  VLDR            D17, [LR]
223788:  VMUL.F64        D16, D16, D17
22378C:  VSTR            D16, [R3,#0x38]
223790:  VLDR            D16, [R3,#0x170]
223794:  VLDR            D17, [R3,#0x178]
223798:  VADD.F64        D16, D21, D16
22379C:  VADD.F64        D17, D20, D17
2237A0:  VSTR            D17, [R3,#0x40]
2237A4:  VSTR            D16, [R3,#0x48]
2237A8:  VADD.F64        D16, D22, D25
2237AC:  VSTR            D16, [R3,#0x50]
2237B0:  VADD.F64        D16, D23, D24
2237B4:  VSTR            D16, [R3,#0x58]
2237B8:  VLDR            D19, [R3,#0x158]
2237BC:  VLDR            D20, [R3,#0x160]
2237C0:  VLDR            D18, [R3,#0x150]
2237C4:  VSUB.F64        D19, D20, D19
2237C8:  VLDR            D20, [LR,#0x18]
2237CC:  VLDR            D21, [R3,#0x168]
2237D0:  VMUL.F64        D19, D19, D20
2237D4:  VSUB.F64        D18, D21, D18
2237D8:  VLDR            D16, [R3,#0x140]
2237DC:  VLDR            D23, [R3,#0x178]
2237E0:  VLDR            D17, [R3,#0x148]
2237E4:  VLDR            D22, [R3,#0x170]
2237E8:  VSTR            D19, [R3,#0x60]
2237EC:  VLDR            D19, [LR,#0x10]
2237F0:  VSUB.F64        D17, D22, D17
2237F4:  VMUL.F64        D18, D18, D19
2237F8:  VSTR            D18, [R3,#0x68]
2237FC:  VLDR            D18, [LR,#8]
223800:  VSUB.F64        D16, D23, D16
223804:  VMUL.F64        D17, D17, D18
223808:  VSTR            D17, [R3,#0x70]
22380C:  VLDR            D17, [LR]
223810:  VMUL.F64        D16, D16, D17
223814:  VSTR            D16, [R3,#0x78]
223818:  BNE.W           loc_2236E2
22381C:  LDR.W           R2, =(INT123_pnts_ptr - 0x223826)
223820:  MOVS            R3, #0
223822:  ADD             R2, PC; INT123_pnts_ptr
223824:  LDR             R2, [R2]; INT123_pnts
223826:  LDR.W           LR, [R2,#(off_683D08 - 0x683CFC)]; dword_6D6240
22382A:  ADD.W           R2, R12, R3
22382E:  ADDS            R3, #0x40 ; '@'
223830:  CMP.W           R3, #0x100
223834:  VLDM            R2, {D16-D23}
223838:  VADD.F64        D24, D16, D19
22383C:  VADD.F64        D25, D17, D18
223840:  VSUB.F64        D17, D17, D18
223844:  VSTR            D24, [R2,#0x100]
223848:  VSTR            D25, [R2,#0x108]
22384C:  VLDR            D18, [LR,#8]
223850:  VSUB.F64        D16, D16, D19
223854:  VMUL.F64        D17, D17, D18
223858:  VSTR            D17, [R2,#0x110]
22385C:  VLDR            D17, [LR]
223860:  VMUL.F64        D16, D16, D17
223864:  VADD.F64        D17, D20, D23
223868:  VSTR            D17, [R2,#0x120]
22386C:  VSTR            D16, [R2,#0x118]
223870:  VADD.F64        D16, D21, D22
223874:  VSTR            D16, [R2,#0x128]
223878:  VLDR            D17, [R2,#0x28]
22387C:  VLDR            D18, [R2,#0x30]
223880:  VLDR            D16, [R2,#0x20]
223884:  VSUB.F64        D17, D18, D17
223888:  VLDR            D18, [LR,#8]
22388C:  VLDR            D19, [R2,#0x38]
223890:  VMUL.F64        D17, D17, D18
223894:  VSUB.F64        D16, D19, D16
223898:  VSTR            D17, [R2,#0x130]
22389C:  VLDR            D17, [LR]
2238A0:  VMUL.F64        D16, D16, D17
2238A4:  VSTR            D16, [R2,#0x138]
2238A8:  BNE             loc_22382A
2238AA:  ADD             R2, SP, #0x208+var_108
2238AC:  VLDM            R2, {D16-D19}
2238B0:  VADD.F64        D20, D16, D17
2238B4:  LDR.W           R2, =(INT123_pnts_ptr - 0x2238BC)
2238B8:  ADD             R2, PC; INT123_pnts_ptr
2238BA:  LDR             R2, [R2]; INT123_pnts
2238BC:  LDR             R2, [R2,#(off_683D0C - 0x683CFC)]; dword_6D6250
2238BE:  VSUB.F64        D16, D16, D17
2238C2:  VSTR            D20, [SP,#0x208+var_208]
2238C6:  VLDR            D17, [R2]
2238CA:  VMUL.F64        D16, D16, D17
2238CE:  VADD.F64        D17, D18, D19
2238D2:  VSUB.F64        D18, D19, D18
2238D6:  VSTR            D17, [SP,#0x208+var_1F8]
2238DA:  VSTR            D16, [SP,#0x208+var_200]
2238DE:  VLDR            D16, [R2]
2238E2:  VLDR            D17, [SP,#0x208+var_E0]
2238E6:  VLDR            D19, [SP,#0x208+var_E8]
2238EA:  VMUL.F64        D16, D18, D16
2238EE:  VADD.F64        D18, D19, D17
2238F2:  VSUB.F64        D17, D19, D17
2238F6:  VSTR            D18, [SP,#0x208+var_1E8]
2238FA:  VSTR            D16, [SP,#0x208+var_1F0]
2238FE:  VLDR            D16, [R2]
223902:  VMUL.F64        D16, D17, D16
223906:  VSTR            D16, [SP,#0x208+var_1E0]
22390A:  VLDR            D16, [SP,#0x208+var_D8]
22390E:  VLDR            D17, [SP,#0x208+var_D0]
223912:  VADD.F64        D18, D16, D17
223916:  VSUB.F64        D16, D17, D16
22391A:  VSTR            D18, [SP,#0x208+var_1D8]
22391E:  VLDR            D17, [R2]
223922:  VMUL.F64        D16, D16, D17
223926:  VSTR            D16, [SP,#0x208+var_1D0]
22392A:  VLDR            D16, [SP,#0x208+var_C8]
22392E:  VLDR            D17, [SP,#0x208+var_C0]
223932:  VADD.F64        D18, D16, D17
223936:  VSUB.F64        D16, D16, D17
22393A:  VSTR            D18, [SP,#0x208+var_1C8]
22393E:  VLDR            D17, [R2]
223942:  VMUL.F64        D16, D16, D17
223946:  VSTR            D16, [SP,#0x208+var_1C0]
22394A:  VLDR            D16, [SP,#0x208+var_B8]
22394E:  VLDR            D17, [SP,#0x208+var_B0]
223952:  VADD.F64        D18, D16, D17
223956:  VSUB.F64        D16, D17, D16
22395A:  VSTR            D18, [SP,#0x208+var_1B8]
22395E:  VLDR            D17, [R2]
223962:  VMUL.F64        D16, D16, D17
223966:  VSTR            D16, [SP,#0x208+var_1B0]
22396A:  VLDR            D16, [SP,#0x208+var_A8]
22396E:  VLDR            D17, [SP,#0x208+var_A0]
223972:  VADD.F64        D18, D16, D17
223976:  VSUB.F64        D16, D16, D17
22397A:  VSTR            D18, [SP,#0x208+var_1A8]
22397E:  VLDR            D17, [R2]
223982:  VMUL.F64        D16, D16, D17
223986:  VSTR            D16, [SP,#0x208+var_1A0]
22398A:  VLDR            D16, [SP,#0x208+var_98]
22398E:  VLDR            D17, [SP,#0x208+var_90]
223992:  VADD.F64        D18, D16, D17
223996:  VSUB.F64        D16, D17, D16
22399A:  VSTR            D18, [SP,#0x208+var_198]
22399E:  VLDR            D17, [R2]
2239A2:  VMUL.F64        D16, D16, D17
2239A6:  VSTR            D16, [SP,#0x208+var_190]
2239AA:  VLDR            D16, [SP,#0x208+var_88]
2239AE:  VLDR            D17, [SP,#0x208+var_80]
2239B2:  VADD.F64        D18, D16, D17
2239B6:  VSUB.F64        D16, D16, D17
2239BA:  VSTR            D18, [SP,#0x208+var_188]
2239BE:  VLDR            D17, [R2]
2239C2:  VMUL.F64        D16, D16, D17
2239C6:  VSTR            D16, [SP,#0x208+var_180]
2239CA:  VLDR            D16, [SP,#0x208+var_78]
2239CE:  VLDR            D17, [SP,#0x208+var_70]
2239D2:  VADD.F64        D18, D16, D17
2239D6:  VSUB.F64        D16, D17, D16
2239DA:  VSTR            D18, [SP,#0x208+var_178]
2239DE:  VLDR            D17, [R2]
2239E2:  VMUL.F64        D16, D16, D17
2239E6:  VSTR            D16, [SP,#0x208+var_170]
2239EA:  VLDR            D16, [SP,#0x208+var_68]
2239EE:  VLDR            D17, [SP,#0x208+var_60]
2239F2:  VADD.F64        D18, D16, D17
2239F6:  VSUB.F64        D16, D16, D17
2239FA:  VSTR            D18, [SP,#0x208+var_168]
2239FE:  VLDR            D17, [R2]
223A02:  VMUL.F64        D16, D16, D17
223A06:  VSTR            D16, [SP,#0x208+var_160]
223A0A:  VLDR            D16, [SP,#0x208+var_58]
223A0E:  VLDR            D17, [SP,#0x208+var_50]
223A12:  VADD.F64        D18, D16, D17
223A16:  VSUB.F64        D16, D17, D16
223A1A:  VSTR            D18, [SP,#0x208+var_158]
223A1E:  VLDR            D17, [R2]
223A22:  VMUL.F64        D16, D16, D17
223A26:  VSTR            D16, [SP,#0x208+var_150]
223A2A:  VLDR            D16, [SP,#0x208+var_48]
223A2E:  VLDR            D17, [SP,#0x208+var_40]
223A32:  VADD.F64        D18, D16, D17
223A36:  VSUB.F64        D16, D16, D17
223A3A:  VSTR            D18, [SP,#0x208+var_148]
223A3E:  VLDR            D17, [R2]
223A42:  VMUL.F64        D16, D16, D17
223A46:  VSTR            D16, [SP,#0x208+var_140]
223A4A:  VLDR            D16, [SP,#0x208+var_38]
223A4E:  VLDR            D17, [SP,#0x208+var_30]
223A52:  VADD.F64        D18, D16, D17
223A56:  VSUB.F64        D16, D17, D16
223A5A:  VSTR            D18, [SP,#0x208+var_138]
223A5E:  VLDR            D17, [R2]
223A62:  VMUL.F64        D16, D16, D17
223A66:  VSTR            D16, [SP,#0x208+var_130]
223A6A:  VLDR            D16, [SP,#0x208+var_28]
223A6E:  VLDR            D17, [SP,#0x208+var_20]
223A72:  VADD.F64        D18, D16, D17
223A76:  VSUB.F64        D16, D16, D17
223A7A:  VSTR            D18, [SP,#0x208+var_128]
223A7E:  VLDR            D17, [R2]
223A82:  VMUL.F64        D16, D16, D17
223A86:  VSTR            D16, [SP,#0x208+var_120]
223A8A:  VLDR            D16, [SP,#0x208+var_18]
223A8E:  VLDR            D17, [SP,#0x208+var_10]
223A92:  VADD.F64        D18, D16, D17
223A96:  VSUB.F64        D16, D17, D16
223A9A:  VSTR            D18, [SP,#0x208+var_118]
223A9E:  VLDR            D17, [R2]
223AA2:  ADD             R2, SP, #0x208+var_1A0
223AA4:  VMUL.F64        D16, D16, D17
223AA8:  VSTR            D16, [SP,#0x208+var_110]
223AAC:  VLDR            D16, [SP,#0x208+var_1F8]
223AB0:  VLDR            D17, [SP,#0x208+var_1F0]
223AB4:  VADD.F64        D16, D17, D16
223AB8:  VSTR            D16, [SP,#0x208+var_1F8]
223ABC:  VLDR            D16, [SP,#0x208+var_1D8]
223AC0:  VLDR            D17, [SP,#0x208+var_1D0]
223AC4:  VADD.F64        D16, D17, D16
223AC8:  VSTR            D16, [SP,#0x208+var_1D8]
223ACC:  VLDR            D16, [SP,#0x208+var_1B8]
223AD0:  VLDR            D17, [SP,#0x208+var_1B0]
223AD4:  VADD.F64        D16, D17, D16
223AD8:  VSTR            D16, [SP,#0x208+var_1B8]
223ADC:  VLDR            D16, [SP,#0x208+var_198]
223AE0:  VLDR            D17, [SP,#0x208+var_190]
223AE4:  VADD.F64        D16, D17, D16
223AE8:  VSTR            D16, [SP,#0x208+var_198]
223AEC:  VLDR            D16, [SP,#0x208+var_178]
223AF0:  VLDR            D17, [SP,#0x208+var_170]
223AF4:  VADD.F64        D16, D17, D16
223AF8:  VSTR            D16, [SP,#0x208+var_178]
223AFC:  VLDR            D16, [SP,#0x208+var_158]
223B00:  VLDR            D17, [SP,#0x208+var_150]
223B04:  VADD.F64        D16, D17, D16
223B08:  VSTR            D16, [SP,#0x208+var_158]
223B0C:  VLDR            D17, [SP,#0x208+var_138]
223B10:  VLDR            D18, [SP,#0x208+var_130]
223B14:  VADD.F64        D17, D18, D17
223B18:  VSTR            D17, [SP,#0x208+var_138]
223B1C:  VLDR            D17, [SP,#0x208+var_1E8]
223B20:  VLDR            D18, [SP,#0x208+var_1D8]
223B24:  VLDR            D19, [SP,#0x208+var_118]
223B28:  VADD.F64        D17, D18, D17
223B2C:  VLDR            D20, [SP,#0x208+var_110]
223B30:  VSTR            D17, [SP,#0x208+var_1E8]
223B34:  VLDR            D17, [SP,#0x208+var_1E0]
223B38:  VADD.F64        D19, D20, D19
223B3C:  VADD.F64        D18, D17, D18
223B40:  VSTR            D18, [SP,#0x208+var_1D8]
223B44:  VLDR            D18, [SP,#0x208+var_1D0]
223B48:  VADD.F64        D17, D17, D18
223B4C:  VSTR            D17, [SP,#0x208+var_1E0]
223B50:  VLDR            D17, [SP,#0x208+var_168]
223B54:  VLDR            D18, [SP,#0x208+var_1A8]
223B58:  VADD.F64        D17, D16, D17
223B5C:  VLDM            R2, {D21-D23}
223B60:  ADD.W           R2, R0, #0x800
223B64:  VSTR            D17, [SP,#0x208+var_168]
223B68:  VLDR            D24, [SP,#0x208+var_160]
223B6C:  VADD.F64        D18, D22, D18
223B70:  VADD.F64        D16, D24, D16
223B74:  VSTR            D16, [SP,#0x208+var_158]
223B78:  VLDR            D16, [SP,#0x208+var_150]
223B7C:  VADD.F64        D16, D24, D16
223B80:  VSTR            D16, [SP,#0x208+var_160]
223B84:  VLDR            D16, [SP,#0x208+var_1C8]
223B88:  VLDR            D24, [SP,#0x208+var_128]
223B8C:  VADD.F64        D27, D18, D16
223B90:  VADD.F64        D16, D21, D22
223B94:  VLDR            D25, [SP,#0x208+var_120]
223B98:  VLDR            D26, [SP,#0x208+var_110]
223B9C:  VSTR            D27, [SP,#0x208+var_1C8]
223BA0:  VLDR            D22, [SP,#0x208+var_1B8]
223BA4:  VADD.F64        D21, D21, D23
223BA8:  VADD.F64        D28, D22, D16
223BAC:  VADD.F64        D18, D22, D18
223BB0:  VSTR            D28, [SP,#0x208+var_1B8]
223BB4:  VSTR            D18, [SP,#0x208+var_1A8]
223BB8:  VLDR            D22, [SP,#0x208+var_1C0]
223BBC:  VADD.F64        D29, D22, D21
223BC0:  VADD.F64        D16, D16, D22
223BC4:  VSTR            D29, [SP,#0x208+var_1C0]
223BC8:  VSTR            D16, [SP,#0x208+var_198]
223BCC:  VLDR            D22, [SP,#0x208+var_1B0]
223BD0:  VADD.F64        D20, D22, D23
223BD4:  VADD.F64        D21, D21, D22
223BD8:  VADD.F64        D22, D19, D24
223BDC:  VSTR            D20, [SP,#0x208+var_1B0]
223BE0:  VSTR            D21, [SP,#0x208+var_1A0]
223BE4:  VLDR            D20, [SP,#0x208+var_148]
223BE8:  VADD.F64        D19, D25, D19
223BEC:  VADD.F64        D20, D22, D20
223BF0:  VSTR            D20, [SP,#0x208+var_148]
223BF4:  VLDR            D21, [SP,#0x208+var_138]
223BF8:  VADD.F64        D23, D21, D19
223BFC:  VADD.F64        D21, D21, D22
223C00:  VADD.F64        D22, D25, D26
223C04:  VSTR            D23, [SP,#0x208+var_138]
223C08:  VSTR            D21, [SP,#0x208+var_128]
223C0C:  VLDR            D24, [SP,#0x208+var_140]
223C10:  VADD.F64        D25, D24, D22
223C14:  VADD.F64        D19, D19, D24
223C18:  VSTR            D25, [SP,#0x208+var_140]
223C1C:  VSTR            D19, [SP,#0x208+var_118]
223C20:  VLDR            D24, [SP,#0x208+var_130]
223C24:  VADD.F64        D26, D24, D26
223C28:  VADD.F64        D22, D22, D24
223C2C:  VSTR            D26, [SP,#0x208+var_130]
223C30:  VSTR            D22, [SP,#0x208+var_120]
223C34:  VLDR            D24, [SP,#0x208+var_208]
223C38:  VADD.F64        D26, D20, D17
223C3C:  VSTR            D24, [R2]
223C40:  ADD.W           R2, R0, #0x700
223C44:  VLDR            D24, [SP,#0x208+var_188]
223C48:  VADD.F64        D17, D17, D21
223C4C:  VADD.F64        D20, D24, D20
223C50:  VSTR            D27, [R2]
223C54:  ADD.W           R2, R0, #0x680
223C58:  VSTR            D26, [R2]
223C5C:  ADD.W           R2, R0, #0x780
223C60:  VSTR            D20, [R2]
223C64:  ADD.W           R2, R0, #0x580
223C68:  VLDR            D20, [SP,#0x208+var_1E8]
223C6C:  VSTR            D17, [R2]
223C70:  ADD.W           R2, R0, #0x500
223C74:  VSTR            D18, [R2]
223C78:  ADD.W           R2, R0, #0x600
223C7C:  VSTR            D20, [R2]
223C80:  ADD.W           R2, R0, #0x480
223C84:  VLDR            D17, [SP,#0x208+var_178]
223C88:  VADD.F64        D18, D21, D17
223C8C:  VADD.F64        D17, D17, D23
223C90:  VSTR            D18, [R2]
223C94:  ADD.W           R2, R0, #0x400
223C98:  VLDR            D18, [SP,#0x208+var_1F8]
223C9C:  VSTR            D17, [R0,#0x380]
223CA0:  VSTR            D28, [R0,#0x300]
223CA4:  VSTR            D18, [R2]
223CA8:  VLDR            D17, [SP,#0x208+var_158]
223CAC:  VADD.F64        D18, D23, D17
223CB0:  VADD.F64        D17, D17, D19
223CB4:  VSTR            D18, [R0,#0x280]
223CB8:  VLDR            D18, [SP,#0x208+var_1D8]
223CBC:  VSTR            D17, [R0,#0x180]
223CC0:  VSTR            D16, [R0,#0x100]
223CC4:  VSTR            D18, [R0,#0x200]
223CC8:  VLDR            D16, [SP,#0x208+var_180]
223CCC:  VADD.F64        D17, D19, D16
223CD0:  VADD.F64        D16, D16, D25
223CD4:  VSTR            D17, [R0,#0x80]
223CD8:  VLDR            D17, [SP,#0x208+var_200]
223CDC:  VSTR            D17, [R0]
223CE0:  ADD.W           R0, R1, #0x400
223CE4:  VSTR            D16, [R1,#0x80]
223CE8:  VSTR            D17, [R1]
223CEC:  VLDR            D16, [SP,#0x208+var_1C0]
223CF0:  VSTR            D16, [R1,#0x100]
223CF4:  VLDR            D16, [SP,#0x208+var_160]
223CF8:  VADD.F64        D17, D25, D16
223CFC:  VADD.F64        D16, D16, D22
223D00:  VSTR            D17, [R1,#0x180]
223D04:  VLDR            D17, [SP,#0x208+var_1E0]
223D08:  VSTR            D16, [R1,#0x280]
223D0C:  VSTR            D17, [R1,#0x200]
223D10:  VLDR            D16, [SP,#0x208+var_1A0]
223D14:  VSTR            D16, [R1,#0x300]
223D18:  VLDR            D16, [SP,#0x208+var_170]
223D1C:  VADD.F64        D17, D22, D16
223D20:  VSTR            D17, [R1,#0x380]
223D24:  VLDR            D17, [SP,#0x208+var_1F0]
223D28:  VSTR            D17, [R0]
223D2C:  ADD.W           R0, R1, #0x480
223D30:  VLDR            D17, [SP,#0x208+var_130]
223D34:  VADD.F64        D16, D16, D17
223D38:  VSTR            D16, [R0]
223D3C:  ADD.W           R0, R1, #0x500
223D40:  VLDR            D16, [SP,#0x208+var_1B0]
223D44:  VSTR            D16, [R0]
223D48:  ADD.W           R0, R1, #0x580
223D4C:  VLDR            D16, [SP,#0x208+var_150]
223D50:  VADD.F64        D17, D17, D16
223D54:  VSTR            D17, [R0]
223D58:  ADD.W           R0, R1, #0x600
223D5C:  VLDR            D17, [SP,#0x208+var_1D0]
223D60:  VSTR            D17, [R0]
223D64:  ADD.W           R0, R1, #0x680
223D68:  VLDR            D17, [SP,#0x208+var_110]
223D6C:  VADD.F64        D16, D16, D17
223D70:  VSTR            D16, [R0]
223D74:  ADD.W           R0, R1, #0x780
223D78:  VLDR            D16, [SP,#0x208+var_190]
223D7C:  VSTR            D17, [R0]
223D80:  ADD.W           R0, R1, #0x700
223D84:  VSTR            D16, [R0]
223D88:  ADD.W           SP, SP, #0x200
223D8C:  POP             {R7,PC}
