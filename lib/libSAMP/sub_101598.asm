; =========================================================
; Game Engine Function: sub_101598
; Address            : 0x101598 - 0x101740
; =========================================================

101598:  PUSH            {R4-R7,LR}
10159A:  ADD             R7, SP, #0xC
10159C:  PUSH.W          {R8-R11}
1015A0:  SUB             SP, SP, #0x4C
1015A2:  MOV             R4, R3
1015A4:  MOV             R6, R2
1015A6:  ADD             R2, SP, #0x68+var_20
1015A8:  ADD             R3, SP, #0x68+var_24
1015AA:  MOV             R5, R1
1015AC:  MOV             R1, R6
1015AE:  MOV             R9, R0
1015B0:  BL              sub_101754
1015B4:  CMP             R0, #0
1015B6:  BEQ.W           loc_101734
1015BA:  STR             R5, [SP,#0x68+var_50]
1015BC:  MOVS            R2, #0x20 ; ' '
1015BE:  LDR             R0, =(off_234AE8 - 0x1015CC)
1015C0:  MOVW            R3, #0x505
1015C4:  LDRD.W          R11, R10, [SP,#0x68+var_24]
1015C8:  ADD             R0, PC; off_234AE8
1015CA:  LDR             R0, [R0]; off_2636C4
1015CC:  MOV             R1, R11
1015CE:  LDR             R6, [R0]
1015D0:  MOV             R0, R10
1015D2:  BLX             R6
1015D4:  MOV             R6, R0
1015D6:  LDR             R0, =(off_23494C - 0x1015E0)
1015D8:  MOVW            R1, #:lower16:(loc_1DB83C+1)
1015DC:  ADD             R0, PC; off_23494C
1015DE:  MOVT            R1, #:upper16:(loc_1DB83C+1)
1015E2:  LDR.W           R8, [R0]; dword_23DF24
1015E6:  LDR.W           R0, [R8]
1015EA:  ADD             R1, R0
1015EC:  MOV             R0, R6
1015EE:  BLX             R1
1015F0:  MOV             R5, R0
1015F2:  CMP             R6, #0
1015F4:  BEQ.W           loc_101736
1015F8:  CMP             R5, #0
1015FA:  BEQ.W           loc_101736
1015FE:  LDR.W           R0, [R9]
101602:  MOV             R2, #0x5D61F9
10160A:  STR             R4, [SP,#0x68+var_54]
10160C:  LDR             R4, [R7,#arg_4]
10160E:  STR             R6, [R0,#0x60]
101610:  LDR.W           R1, [R8]
101614:  LDR.W           R0, [R9]
101618:  ADD             R1, R2
10161A:  BLX             R1
10161C:  LDR.W           R1, [R8]
101620:  MOVW            R2, #:lower16:(off_1D5D70+1)
101624:  LDR.W           R0, [R9]
101628:  MOVT            R2, #:upper16:(off_1D5D70+1)
10162C:  ADDS            R3, R1, R2
10162E:  ADD.W           R1, R7, #0x10
101632:  MOVS            R2, #3
101634:  BLX             R3
101636:  LDR             R0, =(off_234A88 - 0x10163C)
101638:  ADD             R0, PC; off_234A88
10163A:  LDR             R1, [R0]; off_2636B8
10163C:  LDR.W           R0, [R9]
101640:  LDR             R1, [R1]
101642:  BLX             R1
101644:  LDR.W           R0, [R8]
101648:  MOV             R1, #0x5D0C65
101650:  ADD             R0, R1
101652:  BLX             R0
101654:  UXTB            R0, R4
101656:  UBFX.W          R1, R4, #0x10, #8
10165A:  VMOV            S2, R0
10165E:  LSRS            R0, R4, #0x18
101660:  VMOV            S4, R0
101664:  UBFX.W          R0, R4, #8, #8
101668:  VMOV            S8, R1
10166C:  VLDR            S0, =0.0039216
101670:  VMOV            S12, R0
101674:  LDR             R0, [R7,#arg_8]
101676:  VCVT.F32.S32    S4, S4
10167A:  VMOV            S6, R11
10167E:  LSRS            R2, R0, #0x18
101680:  UXTB            R1, R0
101682:  VMOV            S14, R2
101686:  UBFX.W          R2, R0, #8, #8
10168A:  UBFX.W          R0, R0, #0x10, #8
10168E:  VMOV            S1, R1
101692:  VMOV            S3, R2
101696:  ADD             R1, SP, #0x68+var_3C
101698:  VMOV            S5, R0
10169C:  ADD             R0, SP, #0x68+var_4C
10169E:  VMOV            S10, R10
1016A2:  MOVS            R2, #0
1016A4:  VCVT.F32.S32    S2, S2
1016A8:  STRD.W          R2, R1, [SP,#0x68+var_68]
1016AC:  VCVT.F32.S32    S8, S8
1016B0:  STR             R0, [SP,#0x68+var_60]
1016B2:  VCVT.F32.S32    S12, S12
1016B6:  LDR             R0, [R7,#arg_C]
1016B8:  VCVT.F32.S32    S6, S6
1016BC:  LDRD.W          R3, R1, [SP,#0x68+var_54]
1016C0:  VCVT.F32.S32    S10, S10
1016C4:  ADD             R2, SP, #0x68+var_2C
1016C6:  VMUL.F32        S4, S4, S0
1016CA:  STR             R0, [SP,#0x68+var_5C]
1016CC:  VCVT.F32.S32    S14, S14
1016D0:  VCVT.F32.S32    S1, S1
1016D4:  VCVT.F32.S32    S3, S3
1016D8:  VCVT.F32.S32    S5, S5
1016DC:  VMUL.F32        S2, S2, S0
1016E0:  VSTR            S6, [SP,#0x68+var_28]
1016E4:  VMUL.F32        S12, S12, S0
1016E8:  VSTR            S10, [SP,#0x68+var_2C]
1016EC:  VMUL.F32        S8, S8, S0
1016F0:  VSTR            S4, [SP,#0x68+var_30]
1016F4:  VMUL.F32        S6, S14, S0
1016F8:  VMUL.F32        S10, S1, S0
1016FC:  VMUL.F32        S4, S3, S0
101700:  VMUL.F32        S0, S5, S0
101704:  VSTR            S2, [SP,#0x68+var_34]
101708:  VSTR            S12, [SP,#0x68+var_38]
10170C:  VSTR            S8, [SP,#0x68+var_3C]
101710:  VSTR            S6, [SP,#0x68+var_40]
101714:  VSTR            S10, [SP,#0x68+var_44]
101718:  VSTR            S4, [SP,#0x68+var_48]
10171C:  VSTR            S0, [SP,#0x68+var_4C]
101720:  BL              sub_101450
101724:  LDR             R0, =(off_234A90 - 0x10172A)
101726:  ADD             R0, PC; off_234A90
101728:  LDR             R0, [R0]; off_2636BC
10172A:  LDR             R1, [R0]
10172C:  LDR.W           R0, [R9]
101730:  BLX             R1
101732:  B               loc_101736
101734:  MOVS            R5, #0
101736:  MOV             R0, R5
101738:  ADD             SP, SP, #0x4C ; 'L'
10173A:  POP.W           {R8-R11}
10173E:  POP             {R4-R7,PC}
