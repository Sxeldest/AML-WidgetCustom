; =========================================================
; Game Engine Function: sub_177D7C
; Address            : 0x177D7C - 0x177EE2
; =========================================================

177D7C:  PUSH            {R4-R7,LR}
177D7E:  ADD             R7, SP, #0xC
177D80:  PUSH.W          {R8-R11}
177D84:  SUB             SP, SP, #4
177D86:  VPUSH           {D8-D9}
177D8A:  SUB             SP, SP, #0x30
177D8C:  VMOV.F32        S16, S1
177D90:  MOV             R6, R0
177D92:  VMOV.F32        S18, S0
177D96:  LDR             R0, [R0,#0x3C]
177D98:  LDRD.W          R4, R9, [R7,#arg_0]
177D9C:  MOV             R10, R3
177D9E:  MOV             R11, R2
177DA0:  CBZ             R0, loc_177DE0
177DA2:  VMOV.I32        Q8, #0
177DA6:  MOV             R2, SP
177DA8:  ADD.W           R8, R2, #4
177DAC:  MOVS            R0, #1
177DAE:  STR             R0, [SP,#0x60+var_60]
177DB0:  ADD.W           R5, R2, #0x20 ; ' '
177DB4:  MOVS            R0, #4
177DB6:  VST1.32         {D16-D17}, [R8]!
177DBA:  VST1.32         {D16-D17}, [R5],R0
177DBE:  VST1.32         {D16-D17}, [R8],R0
177DC2:  MOV             R0, R6
177DC4:  BL              sub_1792C4
177DC8:  LDRD.W          R4, R6, [SP,#0x60+var_44]
177DCC:  CMP             R0, #0
177DCE:  LDR             R5, [R5]
177DD0:  LDR.W           R1, [R8]
177DD4:  ITTTT EQ
177DD6:  MOVEQ           R5, R0
177DD8:  MOVEQ           R1, R0
177DDA:  MOVEQ           R4, R0
177DDC:  MOVEQ           R6, R0
177DDE:  B               loc_177DFE
177DE0:  MOV             R0, R6
177DE2:  BL              sub_17926E
177DE6:  CMP             R0, #0
177DE8:  BMI             loc_177EBA
177DEA:  LDR             R1, [R6,#4]
177DEC:  ADD             R0, R1
177DEE:  LDRH            R1, [R0,#8]
177DF0:  LDRH            R2, [R0,#6]
177DF2:  LDRH            R3, [R0,#4]
177DF4:  REVSH           R5, R1
177DF6:  LDRH            R0, [R0,#2]
177DF8:  REVSH           R4, R2
177DFA:  REVSH           R6, R3
177DFC:  REVSH           R1, R0
177DFE:  CMP.W           R11, #0
177E02:  BEQ             loc_177E28
177E04:  VMOV            S0, R1
177E08:  VLDR            S2, =0.0
177E0C:  VCVT.F32.S32    S0, S0
177E10:  VMLA.F32        S2, S0, S18
177E14:  VMOV            R0, S2; x
177E18:  BLX             floorf
177E1C:  VMOV            S0, R0
177E20:  VCVT.S32.F32    S0, S0
177E24:  VSTR            S0, [R11]
177E28:  CMP.W           R10, #0
177E2C:  BEQ             loc_177E54
177E2E:  NEGS            R0, R5
177E30:  VLDR            S2, =0.0
177E34:  VMOV            S0, R0
177E38:  VCVT.F32.S32    S0, S0
177E3C:  VMLA.F32        S2, S0, S16
177E40:  VMOV            R0, S2; x
177E44:  BLX             floorf
177E48:  VMOV            S0, R0
177E4C:  VCVT.S32.F32    S0, S0
177E50:  VSTR            S0, [R10]
177E54:  LDR             R5, [R7,#arg_0]
177E56:  CBZ             R5, loc_177E7C
177E58:  VMOV            S0, R4
177E5C:  VLDR            S2, =0.0
177E60:  VCVT.F32.S32    S0, S0
177E64:  VMLA.F32        S2, S0, S18
177E68:  VMOV            R0, S2; x
177E6C:  BLX             ceilf
177E70:  VMOV            S0, R0
177E74:  VCVT.S32.F32    S0, S0
177E78:  VSTR            S0, [R5]
177E7C:  CMP.W           R9, #0
177E80:  BEQ             loc_177EAC
177E82:  NEGS            R0, R6
177E84:  VLDR            S2, =0.0
177E88:  VMOV            S0, R0
177E8C:  VCVT.F32.S32    S0, S0
177E90:  VMLA.F32        S2, S0, S16
177E94:  VMOV            R0, S2; x
177E98:  BLX             ceilf
177E9C:  VMOV            S0, R0
177EA0:  VCVT.S32.F32    S0, S0
177EA4:  VMOV            R0, S0
177EA8:  STR.W           R0, [R9]
177EAC:  ADD             SP, SP, #0x30 ; '0'
177EAE:  VPOP            {D8-D9}
177EB2:  ADD             SP, SP, #4
177EB4:  POP.W           {R8-R11}
177EB8:  POP             {R4-R7,PC}
177EBA:  CMP.W           R11, #0
177EBE:  ITT NE
177EC0:  MOVNE           R0, #0
177EC2:  STRNE.W         R0, [R11]
177EC6:  CMP.W           R10, #0
177ECA:  ITT NE
177ECC:  MOVNE           R0, #0
177ECE:  STRNE.W         R0, [R10]
177ED2:  CBZ             R4, loc_177ED8
177ED4:  MOVS            R0, #0
177ED6:  STR             R0, [R4]
177ED8:  CMP.W           R9, #0
177EDC:  BEQ             loc_177EAC
177EDE:  MOVS            R0, #0
177EE0:  B               loc_177EA8
