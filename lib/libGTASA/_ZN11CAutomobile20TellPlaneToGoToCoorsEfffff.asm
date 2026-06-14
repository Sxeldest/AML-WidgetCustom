; =========================================================
; Game Engine Function: _ZN11CAutomobile20TellPlaneToGoToCoorsEfffff
; Address            : 0x552456 - 0x5524CA
; =========================================================

552456:  PUSH            {R4,R5,R7,LR}
552458:  ADD             R7, SP, #8
55245A:  MOV             R4, R0
55245C:  MOVS            R0, #0x16
55245E:  STRB.W          R0, [R4,#0x3BE]
552462:  MOVS            R0, #0
552464:  VLDR            S2, [R7,#arg_4]
552468:  VMOV            S4, R3
55246C:  STRB.W          R0, [R4,#0x3D4]
552470:  ADD.W           R12, R4, #0x3F0
552474:  LDRB.W          R0, [R4,#0x3A]
552478:  VMAX.F32        D1, D1, D2
55247C:  STM.W           R12, {R1-R3}
552480:  MOVS            R1, #3
552482:  BFI.W           R0, R1, #3, #0x1D
552486:  STRB.W          R0, [R4,#0x3A]
55248A:  ADDW            R0, R4, #0x9BC
55248E:  ADDW            R5, R4, #0x8BC
552492:  VLDR            S0, [R7,#arg_0]
552496:  VSTR            S2, [R0]
55249A:  ADDW            R0, R4, #0x9C4
55249E:  VLDR            S2, [R5]
5524A2:  VSTR            S0, [R0]
5524A6:  VCMP.F32        S2, #0.0
5524AA:  VMRS            APSR_nzcv, FPSCR
5524AE:  BNE             loc_5524BC
5524B0:  LDR             R1, [R4,#0x14]
5524B2:  LDRD.W          R0, R1, [R1,#0x10]; float
5524B6:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
5524BA:  STR             R0, [R5]
5524BC:  LDR.W           R0, [R4,#0x42C]
5524C0:  ORR.W           R0, R0, #0x10
5524C4:  STR.W           R0, [R4,#0x42C]
5524C8:  POP             {R4,R5,R7,PC}
