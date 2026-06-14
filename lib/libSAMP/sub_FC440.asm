; =========================================================
; Game Engine Function: sub_FC440
; Address            : 0xFC440 - 0xFC4C8
; =========================================================

FC440:  PUSH            {R4-R7,LR}
FC442:  ADD             R7, SP, #0xC
FC444:  PUSH.W          {R8,R9,R11}
FC448:  SUB             SP, SP, #0x10
FC44A:  MOV             R4, R0
FC44C:  LDR             R0, =(off_234A9C - 0xFC452)
FC44E:  ADD             R0, PC; off_234A9C
FC450:  LDR.W           R9, [R0]; dword_25DAE4
FC454:  LDR.W           R0, [R9]
FC458:  CBZ             R0, loc_FC4BA
FC45A:  VMOV            S0, R3
FC45E:  CMP             R0, #1
FC460:  VMOV            S2, R2
FC464:  VMOV            S4, R1
FC468:  VSTR            S0, [SP,#0x28+var_1C]
FC46C:  VSTR            S2, [SP,#0x28+var_20]
FC470:  VSTR            S4, [SP,#0x28+var_24]
FC474:  BLT             loc_FC4BA
FC476:  LDR             R1, =(off_234AA0 - 0xFC482)
FC478:  ADD.W           R8, SP, #0x28+var_24
FC47C:  MOVS            R6, #0
FC47E:  ADD             R1, PC; off_234AA0
FC480:  LDR             R1, [R1]; dword_25DAE8
FC482:  ADD.W           R5, R1, #0x10
FC486:  LDR.W           R1, [R5,#-0x10]
FC48A:  ADDS            R2, R1, #1
FC48C:  IT NE
FC48E:  CMPNE           R1, R4
FC490:  BNE             loc_FC4B2
FC492:  SUB.W           R1, R5, #0xC
FC496:  MOV             R0, R8
FC498:  BL              sub_108938
FC49C:  VMOV            S0, R0
FC4A0:  VLDR            S2, [R5]
FC4A4:  VCMP.F32        S0, S2
FC4A8:  VMRS            APSR_nzcv, FPSCR
FC4AC:  BLE             loc_FC4C4
FC4AE:  LDR.W           R0, [R9]
FC4B2:  ADDS            R6, #1
FC4B4:  ADDS            R5, #0x14
FC4B6:  CMP             R6, R0
FC4B8:  BLT             loc_FC486
FC4BA:  MOVS            R0, #0
FC4BC:  ADD             SP, SP, #0x10
FC4BE:  POP.W           {R8,R9,R11}
FC4C2:  POP             {R4-R7,PC}
FC4C4:  MOVS            R0, #1
FC4C6:  B               loc_FC4BC
