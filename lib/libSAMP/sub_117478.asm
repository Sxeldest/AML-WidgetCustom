; =========================================================
; Game Engine Function: sub_117478
; Address            : 0x117478 - 0x11753A
; =========================================================

117478:  PUSH            {R4-R7,LR}
11747A:  ADD             R7, SP, #0xC
11747C:  PUSH.W          {R8-R11}
117480:  SUB             SP, SP, #4
117482:  VPUSH           {D8-D10}
117486:  SUB             SP, SP, #0x10
117488:  MOV             R4, R0
11748A:  VLDR            S16, [R0,#0x48]
11748E:  LDR             R0, [R0]
117490:  ADD.W           R8, SP, #0x48+var_40
117494:  MOV             R9, R1
117496:  MOV             R1, R4
117498:  LDR             R2, [R0,#0x5C]
11749A:  MOV             R0, R8
11749C:  BLX             R2
11749E:  LDR             R0, [R4]
1174A0:  MOV             R1, R4
1174A2:  VLDR            S18, [SP,#0x48+var_40]
1174A6:  LDR             R2, [R0,#0x5C]
1174A8:  ADD             R0, SP, #0x48+var_40
1174AA:  BLX             R2
1174AC:  VSUB.F32        S0, S16, S18
1174B0:  VLDR            S2, =0.95
1174B4:  VMOV.F32        S4, #0.125
1174B8:  VLDR            S8, =-1.2
1174BC:  VLDR            S10, [R4,#0x4C]
1174C0:  ADD.W           R10, R4, #0x2C ; ','
1174C4:  VMOV.F32        S6, #0.4375
1174C8:  VLDR            S18, [SP,#0x48+var_40]
1174CC:  MOVS            R6, #0
1174CE:  MOV.W           R11, #0x94000000
1174D2:  VMUL.F32        S0, S0, S2
1174D6:  VMOV.F32        S2, #0.25
1174DA:  VMUL.F32        S16, S0, S4
1174DE:  VMUL.F32        S0, S0, S2
1174E2:  VMOV.F32        S4, #-0.5
1174E6:  VMLA.F32        S10, S16, S8
1174EA:  VMOV            R4, S0
1174EE:  VMOV.F32        S20, S16
1174F2:  VMLA.F32        S18, S16, S4
1174F6:  VMOV            R5, S10
1174FA:  VMLA.F32        S20, S16, S6
1174FE:  VMOV            R1, S18
117502:  CMP             R6, R9
117504:  ITEE GE
117506:  STRGE.W         R11, [SP,#0x48+var_40]
11750A:  MOVLT.W         R0, #0xFFFFFFFF
11750E:  STRLT           R0, [SP,#0x48+var_40]
117510:  MOV             R2, R5
117512:  MOV             R0, R10
117514:  MOV             R3, R4
117516:  STR.W           R8, [SP,#0x48+var_44]
11751A:  VSTR            S16, [SP,#0x48+var_48]
11751E:  BL              sub_163176
117522:  VADD.F32        S18, S20, S18
117526:  ADDS            R6, #1
117528:  CMP             R6, #6
11752A:  BNE             loc_1174FE
11752C:  ADD             SP, SP, #0x10
11752E:  VPOP            {D8-D10}
117532:  ADD             SP, SP, #4
117534:  POP.W           {R8-R11}
117538:  POP             {R4-R7,PC}
