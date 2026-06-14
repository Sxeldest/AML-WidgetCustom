; =========================================================
; Game Engine Function: _ZN17CVehicleRecording17RestoreInfoForCarEP8CVehicleP22CVehicleStateEachFrameb
; Address            : 0x3235A0 - 0x323748
; =========================================================

3235A0:  PUSH            {R4-R7,LR}
3235A2:  ADD             R7, SP, #0xC
3235A4:  PUSH.W          {R8}
3235A8:  SUB             SP, SP, #0x10
3235AA:  MOV             R6, R1
3235AC:  MOV             R4, R0
3235AE:  LDRSB.W         R0, [R6,#0xA]
3235B2:  MOV             R8, R2
3235B4:  VLDR            S2, =127.0
3235B8:  VMOV            S0, R0
3235BC:  VCVT.F32.S32    S0, S0
3235C0:  LDR             R5, [R4,#0x14]
3235C2:  ADD.W           R2, R5, #0x10
3235C6:  MOV             R1, R5; CVector *
3235C8:  VDIV.F32        S0, S0, S2
3235CC:  VSTR            S0, [R5]
3235D0:  LDRSB.W         R0, [R6,#0xB]
3235D4:  VMOV            S0, R0
3235D8:  VCVT.F32.S32    S0, S0
3235DC:  VDIV.F32        S0, S0, S2
3235E0:  VSTR            S0, [R5,#4]
3235E4:  LDRSB.W         R0, [R6,#0xC]
3235E8:  VMOV            S0, R0
3235EC:  VCVT.F32.S32    S0, S0
3235F0:  VDIV.F32        S0, S0, S2
3235F4:  VSTR            S0, [R5,#8]
3235F8:  LDRSB.W         R0, [R6,#0xD]
3235FC:  VMOV            S0, R0
323600:  VCVT.F32.S32    S0, S0
323604:  VDIV.F32        S0, S0, S2
323608:  VSTR            S0, [R5,#0x10]
32360C:  LDRSB.W         R0, [R6,#0xE]
323610:  VMOV            S0, R0
323614:  VCVT.F32.S32    S0, S0
323618:  VDIV.F32        S0, S0, S2
32361C:  VSTR            S0, [R5,#0x14]
323620:  LDRSB.W         R0, [R6,#0xF]
323624:  VMOV            S0, R0
323628:  ADD             R0, SP, #0x20+var_1C; CVector *
32362A:  VCVT.F32.S32    S0, S0
32362E:  VDIV.F32        S0, S0, S2
323632:  VSTR            S0, [R5,#0x18]
323636:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
32363A:  ADD             R2, SP, #0x20+var_1C
32363C:  ADD.W           R3, R5, #0x20 ; ' '
323640:  VLDR            S2, =16384.0
323644:  MOV.W           R12, #0
323648:  LDM             R2, {R0-R2}
32364A:  STM             R3!, {R0-R2}
32364C:  LDR             R0, [R6,#0x14]
32364E:  STR             R0, [R5,#0x30]
323650:  LDR             R0, [R6,#0x18]
323652:  STR             R0, [R5,#0x34]
323654:  LDR             R0, [R6,#0x1C]
323656:  STR             R0, [R5,#0x38]
323658:  ADDW            R5, R4, #0x4A4
32365C:  LDRSH.W         R0, [R6,#4]
323660:  VMOV            S0, R0
323664:  VCVT.F32.S32    S0, S0
323668:  VDIV.F32        S0, S0, S2
32366C:  VSTR            S0, [R4,#0x48]
323670:  LDRSH.W         R0, [R6,#6]
323674:  VMOV            S0, R0
323678:  VCVT.F32.S32    S0, S0
32367C:  VDIV.F32        S0, S0, S2
323680:  VSTR            S0, [R4,#0x4C]
323684:  LDRSH.W         R0, [R6,#8]
323688:  VMOV            S0, R0
32368C:  VCVT.F32.S32    S0, S0
323690:  STRD.W          R12, R12, [R4,#0x54]
323694:  STR.W           R12, [R4,#0x5C]
323698:  VDIV.F32        S0, S0, S2
32369C:  VSTR            S0, [R4,#0x50]
3236A0:  VMOV.F32        S0, #20.0
3236A4:  LDRSB.W         R1, [R6,#0x10]
3236A8:  VMOV            S2, R1
3236AC:  ADD.W           R1, R4, #0x498
3236B0:  VCVT.F32.S32    S2, S2
3236B4:  VDIV.F32        S0, S2, S0
3236B8:  VSTR            S0, [R1]
3236BC:  LDRSB.W         R1, [R6,#0x11]
3236C0:  VLDR            S2, =100.0
3236C4:  VMOV            S0, R1
3236C8:  ADD.W           R1, R4, #0x4A0
3236CC:  VCVT.F32.S32    S0, S0
3236D0:  VDIV.F32        S0, S0, S2
3236D4:  VSTR            S0, [R1]
3236D8:  LDRSB.W         R2, [R6,#0x12]
3236DC:  VMOV            S0, R2
3236E0:  VCVT.F32.S32    S0, S0
3236E4:  LDR.W           R0, [R4,#0x42C]
3236E8:  LDR.W           R2, [R4,#0x430]
3236EC:  BIC.W           R3, R0, #0x20 ; ' '
3236F0:  VDIV.F32        S0, S0, S2
3236F4:  VSTR            S0, [R5]
3236F8:  LDRB            R6, [R6,#0x13]
3236FA:  CMP             R6, #0
3236FC:  IT NE
3236FE:  ORRNE.W         R3, R0, #0x20 ; ' '
323702:  CMP.W           R8, #0
323706:  STR.W           R3, [R4,#0x42C]
32370A:  STR.W           R2, [R4,#0x430]
32370E:  BEQ             loc_32372C
323710:  ADDW            R0, R4, #0x42C
323714:  STR.W           R12, [R1]
323718:  STR.W           R12, [R5]
32371C:  BIC.W           R1, R3, #0x20 ; ' '
323720:  STRD.W          R12, R12, [R4,#0x48]
323724:  STR.W           R12, [R4,#0x50]
323728:  STRD.W          R1, R2, [R0]
32372C:  LDR.W           R0, [R4,#0x5A0]
323730:  CMP             R0, #9
323732:  ITTT EQ
323734:  LDRBEQ.W        R0, [R4,#0x628]
323738:  ANDEQ.W         R0, R0, #0xE7
32373C:  STRBEQ.W        R0, [R4,#0x628]
323740:  ADD             SP, SP, #0x10
323742:  POP.W           {R8}
323746:  POP             {R4-R7,PC}
