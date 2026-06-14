; =========================================================
; Game Engine Function: sub_F146C
; Address            : 0xF146C - 0xF152C
; =========================================================

F146C:  PUSH            {R4-R7,LR}
F146E:  ADD             R7, SP, #0xC
F1470:  PUSH.W          {R8}
F1474:  VPUSH           {D8-D9}
F1478:  SUB             SP, SP, #0x48
F147A:  MOV             R4, R0
F147C:  LDR             R0, =(off_23494C - 0xF148A)
F147E:  STRD.W          R1, R2, [SP,#0x68+var_2C]
F1482:  MOVW            R1, #0x5799
F1486:  ADD             R0, PC; off_23494C
F1488:  MOVT            R1, #0x5C ; '\'
F148C:  STR             R3, [SP,#0x68+var_24]
F148E:  MOVS            R5, #0
F1490:  LDR             R0, [R0]; dword_23DF24
F1492:  MOVS            R2, #0
F1494:  MOVS            R3, #0
F1496:  STRD.W          R5, R5, [SP,#0x68+var_68]
F149A:  LDR             R0, [R0]
F149C:  ADDS            R6, R0, R1
F149E:  ADD             R0, SP, #0x68+var_2C
F14A0:  ADD             R1, SP, #0x68+var_38
F14A2:  BLX             R6
F14A4:  VMOV.F32        S0, #1.0
F14A8:  VLDR            S2, [SP,#0x68+var_30]
F14AC:  VCMP.F32        S2, S0
F14B0:  VMRS            APSR_nzcv, FPSCR
F14B4:  BMI             loc_F1520
F14B6:  LDR             R0, =(off_234A24 - 0xF14C4)
F14B8:  VMOV.F32        S4, #0.5
F14BC:  VLDR            S0, =480.0
F14C0:  ADD             R0, PC; off_234A24
F14C2:  LDRD.W          R6, R8, [R7,#arg_0]
F14C6:  LDR             R0, [R0]; dword_23DEEC
F14C8:  LDR             R0, [R0]
F14CA:  VLDR            S2, [R0,#0x18]
F14CE:  VDIV.F32        S0, S2, S0
F14D2:  VMOV.F32        S2, #30.0
F14D6:  VMUL.F32        S16, S0, S2
F14DA:  VMUL.F32        S18, S16, S4
F14DE:  BL              sub_167F88
F14E2:  VLDR            S0, [SP,#0x68+var_38]
F14E6:  ADD             R3, SP, #0x68+var_48
F14E8:  VLDR            S2, [SP,#0x68+var_34]
F14EC:  VSUB.F32        S0, S0, S18
F14F0:  LDR             R1, [R4,#4]
F14F2:  VSUB.F32        S2, S2, S18
F14F6:  VSTR            S16, [SP,#0x68+var_44]
F14FA:  VSTR            S16, [SP,#0x68+var_48]
F14FE:  LDR             R2, [R1]
F1500:  MOV.W           R1, #0x3F800000
F1504:  STMEA.W         SP, {R3,R6,R8}
F1508:  ADD             R3, SP, #0x68+var_40
F150A:  STRD.W          R1, R1, [SP,#0x68+var_54]
F150E:  MOV             R1, R0
F1510:  VSTR            S0, [SP,#0x68+var_40]
F1514:  VSTR            S2, [SP,#0x68+var_3C]
F1518:  STRD.W          R5, R5, [SP,#0x68+var_5C]
F151C:  BL              sub_F1538
F1520:  ADD             SP, SP, #0x48 ; 'H'
F1522:  VPOP            {D8-D9}
F1526:  POP.W           {R8}
F152A:  POP             {R4-R7,PC}
