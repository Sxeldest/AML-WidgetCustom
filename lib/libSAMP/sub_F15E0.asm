; =========================================================
; Game Engine Function: sub_F15E0
; Address            : 0xF15E0 - 0xF16B0
; =========================================================

F15E0:  PUSH            {R4-R7,LR}
F15E2:  ADD             R7, SP, #0xC
F15E4:  PUSH.W          {R8,R9,R11}
F15E8:  VPUSH           {D8-D9}
F15EC:  SUB             SP, SP, #0x48
F15EE:  MOV             R4, R0
F15F0:  LDR             R0, =(off_23494C - 0xF15FC)
F15F2:  STRD.W          R1, R2, [SP,#0x70+var_4C]
F15F6:  MOVS            R1, #0
F15F8:  ADD             R0, PC; off_23494C
F15FA:  STRD.W          R1, R1, [SP,#0x70+var_70]
F15FE:  MOVW            R1, #0x5799
F1602:  STR             R3, [SP,#0x70+var_44]
F1604:  LDR             R0, [R0]; dword_23DF24
F1606:  MOVT            R1, #0x5C ; '\'
F160A:  MOVS            R2, #0
F160C:  MOVS            R3, #0
F160E:  LDR             R0, [R0]
F1610:  ADDS            R6, R0, R1
F1612:  ADD             R0, SP, #0x70+var_4C
F1614:  ADD             R1, SP, #0x70+var_58
F1616:  BLX             R6
F1618:  VMOV.F32        S0, #1.0
F161C:  VLDR            S2, [SP,#0x70+var_50]
F1620:  VCMP.F32        S2, S0
F1624:  VMRS            APSR_nzcv, FPSCR
F1628:  BMI             loc_F16A4
F162A:  LDR             R0, =(off_234A24 - 0xF1638)
F162C:  VMOV.F32        S4, #20.0
F1630:  VLDR            S0, =0.0019531
F1634:  ADD             R0, PC; off_234A24
F1636:  LDRD.W          R8, R9, [R7,#arg_8]
F163A:  LDRD.W          R6, R5, [R7,#arg_0]
F163E:  LDR             R0, [R0]; dword_23DEEC
F1640:  LDR             R0, [R0]
F1642:  VLDR            S2, [R0,#0x18]
F1646:  VMUL.F32        S0, S2, S0
F164A:  VMOV.F32        S2, #0.5
F164E:  VMUL.F32        S16, S0, S4
F1652:  VMUL.F32        S18, S16, S2
F1656:  BL              sub_167F88
F165A:  VLDR            S0, [SP,#0x70+var_58]
F165E:  ADD             R3, SP, #0x70+var_38
F1660:  VLDR            S2, [SP,#0x70+var_54]
F1664:  MOV.W           R2, #0xFFFFFFFF
F1668:  VSUB.F32        S0, S0, S18
F166C:  LDR             R1, [R4,#8]
F166E:  VSUB.F32        S2, S2, S18
F1672:  LDR             R1, [R1]
F1674:  STRD.W          R6, R5, [SP,#0x70+var_30]
F1678:  ADD             R6, SP, #0x70+var_30
F167A:  STRD.W          R6, R3, [SP,#0x70+var_70]
F167E:  ADD             R3, SP, #0x70+var_40
F1680:  STR             R2, [SP,#0x70+var_68]
F1682:  ADD             R2, SP, #0x70+var_60
F1684:  VSTR            S0, [SP,#0x70+var_60]
F1688:  VADD.F32        S0, S16, S0
F168C:  VSTR            S2, [SP,#0x70+var_5C]
F1690:  VADD.F32        S2, S16, S2
F1694:  STRD.W          R8, R9, [SP,#0x70+var_38]
F1698:  VSTR            S0, [SP,#0x70+var_40]
F169C:  VSTR            S2, [SP,#0x70+var_3C]
F16A0:  BL              sub_174BE2
F16A4:  ADD             SP, SP, #0x48 ; 'H'
F16A6:  VPOP            {D8-D9}
F16AA:  POP.W           {R8,R9,R11}
F16AE:  POP             {R4-R7,PC}
