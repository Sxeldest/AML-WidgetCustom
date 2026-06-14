; =========================================================
; Game Engine Function: sub_178CC4
; Address            : 0x178CC4 - 0x178E32
; =========================================================

178CC4:  PUSH            {R4-R7,LR}
178CC6:  ADD             R7, SP, #0xC
178CC8:  PUSH.W          {R8-R11}
178CCC:  SUB             SP, SP, #4
178CCE:  VPUSH           {D8-D14}
178CD2:  SUB             SP, SP, #0x58
178CD4:  MOV             R11, R1
178CD6:  LDR             R1, [R7,#arg_0]
178CD8:  MOV             R4, R0
178CDA:  ADDS            R0, R1, #1
178CDC:  BEQ.W           loc_178E24
178CE0:  LDR             R0, [R4,#0x28]
178CE2:  ADD.W           R10, SP, #0xB0+var_90
178CE6:  VMOV.I32        Q8, #0
178CEA:  MOV             R8, R3
178CEC:  MOV             R6, R10
178CEE:  MOV             R9, R2
178CF0:  LDR             R0, [R0,#8]
178CF2:  ADD             R2, SP, #0xB0+var_68
178CF4:  VST1.64         {D16-D17}, [R6]!
178CF8:  ADD             R3, SP, #0xB0+var_70
178CFA:  LDR             R5, [R0,#0x38]
178CFC:  MOVS            R0, #0
178CFE:  STRD.W          R0, R0, [SP,#0xB0+var_68]
178D02:  STRD.W          R0, R0, [SP,#0xB0+var_70]
178D06:  MOV             R0, R5
178D08:  VST1.64         {D16-D17}, [R6]
178D0C:  STRD.W          R10, R6, [SP,#0xB0+var_B0]
178D10:  BL              sub_175894
178D14:  CMP             R0, #0
178D16:  BEQ.W           loc_178E24
178D1A:  VMOV            S0, R9
178D1E:  VLDR            S6, [SP,#0xB0+var_64]
178D22:  VMOV            S2, R11
178D26:  VLDR            S4, [SP,#0xB0+var_68]
178D2A:  VSUB.F32        S20, S0, S6
178D2E:  MOV             R0, R4
178D30:  VSUB.F32        S18, S2, S4
178D34:  VMOV            S16, R8
178D38:  LDR.W           R8, [R5,#8]
178D3C:  MOV             R1, R8
178D3E:  VSTR            S20, [SP,#0xB0+var_5C]
178D42:  VSTR            S18, [SP,#0xB0+var_60]
178D46:  BL              sub_172D4E
178D4A:  VMOV.F32        S22, S20
178D4E:  VLDR            S0, =0.0
178D52:  VLDR            S2, [SP,#0xB0+var_70]
178D56:  ADD.W           R5, R10, #0x18
178D5A:  VLDR            S4, [SP,#0xB0+var_6C]
178D5E:  ADD             R2, SP, #0xB0+var_98
178D60:  VMUL.F32        S26, S2, S16
178D64:  ADD             R3, SP, #0xB0+var_A0
178D66:  VMUL.F32        S24, S4, S16
178D6A:  MOV.W           R9, #0x30000000
178D6E:  MOV             R0, R4
178D70:  MOV             R1, R8
178D72:  VMLA.F32        S22, S16, S0
178D76:  STRD.W          R6, R5, [SP,#0xB0+var_B0]
178D7A:  VADD.F32        S0, S18, S16
178D7E:  STR.W           R9, [SP,#0xB0+var_A8]
178D82:  VADD.F32        S28, S22, S24
178D86:  VSTR            S22, [SP,#0xB0+var_94]
178D8A:  VADD.F32        S2, S0, S26
178D8E:  VSTR            S0, [SP,#0xB0+var_98]
178D92:  VSTR            S28, [SP,#0xB0+var_9C]
178D96:  VSTR            S2, [SP,#0xB0+var_A0]
178D9A:  BL              sub_174BE2
178D9E:  VADD.F32        S0, S16, S16
178DA2:  ADD             R2, SP, #0xB0+var_98
178DA4:  ADD             R3, SP, #0xB0+var_A0
178DA6:  MOV             R0, R4
178DA8:  MOV             R1, R8
178DAA:  VSTR            S22, [SP,#0xB0+var_94]
178DAE:  VSTR            S28, [SP,#0xB0+var_9C]
178DB2:  STRD.W          R6, R5, [SP,#0xB0+var_B0]
178DB6:  STR.W           R9, [SP,#0xB0+var_A8]
178DBA:  VADD.F32        S0, S0, S18
178DBE:  VADD.F32        S2, S0, S26
178DC2:  VSTR            S0, [SP,#0xB0+var_98]
178DC6:  VSTR            S2, [SP,#0xB0+var_A0]
178DCA:  BL              sub_174BE2
178DCE:  VADD.F32        S16, S20, S24
178DD2:  STRD.W          R6, R5, [SP,#0xB0+var_B0]
178DD6:  VADD.F32        S18, S18, S26
178DDA:  ADD             R6, SP, #0xB0+var_60
178DDC:  MOV.W           R0, #0xFF000000
178DE0:  ADD             R3, SP, #0xB0+var_98
178DE2:  STR             R0, [SP,#0xB0+var_A8]
178DE4:  MOV             R0, R4
178DE6:  MOV             R1, R8
178DE8:  MOV             R2, R6
178DEA:  VSTR            S16, [SP,#0xB0+var_94]
178DEE:  VSTR            S18, [SP,#0xB0+var_98]
178DF2:  BL              sub_174BE2
178DF6:  ADD.W           R1, R10, #8
178DFA:  MOV.W           R0, #0xFFFFFFFF
178DFE:  ADD             R3, SP, #0xB0+var_98
178E00:  STR             R0, [SP,#0xB0+var_A8]
178E02:  STRD.W          R10, R1, [SP,#0xB0+var_B0]
178E06:  MOV             R0, R4
178E08:  MOV             R1, R8
178E0A:  MOV             R2, R6
178E0C:  VSTR            S16, [SP,#0xB0+var_94]
178E10:  VSTR            S18, [SP,#0xB0+var_98]
178E14:  BL              sub_174BE2
178E18:  LDR             R0, [R4,#0x4C]
178E1A:  SUBS            R0, #1
178E1C:  STR             R0, [R4,#0x4C]
178E1E:  MOV             R0, R4
178E20:  BL              sub_172B7A
178E24:  ADD             SP, SP, #0x58 ; 'X'
178E26:  VPOP            {D8-D14}
178E2A:  ADD             SP, SP, #4
178E2C:  POP.W           {R8-R11}
178E30:  POP             {R4-R7,PC}
