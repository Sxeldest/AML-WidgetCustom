; =========================================================
; Game Engine Function: sub_145DA0
; Address            : 0x145DA0 - 0x145F06
; =========================================================

145DA0:  PUSH            {R4-R7,LR}
145DA2:  ADD             R7, SP, #0xC
145DA4:  PUSH.W          {R11}
145DA8:  SUB.W           SP, SP, #0x240
145DAC:  LDRD.W          R1, R0, [R0]; src
145DB0:  MOVS            R3, #0
145DB2:  ASRS            R2, R0, #0x1F
145DB4:  MOVS            R4, #0
145DB6:  ADD.W           R0, R0, R2,LSR#29
145DBA:  MOVS            R2, #1
145DBC:  ADD.W           R2, R2, R0,ASR#3; size
145DC0:  ADD             R0, SP, #0x250+var_124; int
145DC2:  BL              sub_17D4F2
145DC6:  ADD             R0, SP, #0x250+s; int
145DC8:  MOV.W           R1, #0x100; n
145DCC:  BLX             sub_22178C
145DD0:  LDR             R0, =(off_23496C - 0x145DD8)
145DD2:  LDR             R1, =(off_234C50 - 0x145DDA)
145DD4:  ADD             R0, PC; off_23496C
145DD6:  ADD             R1, PC; off_234C50
145DD8:  LDR             R5, [R0]; dword_23DEF4
145DDA:  LDR             R1, [R1]; dword_239034
145DDC:  LDR             R0, [R5]
145DDE:  STRB            R4, [R1,#(byte_23903A - 0x239034)]
145DE0:  LDR.W           R0, [R0,#0x218]
145DE4:  CMP             R0, #5
145DE6:  BNE.W           loc_145EF6
145DEA:  ADD             R0, SP, #0x250+var_124; int
145DEC:  ADD.W           R1, SP, #0x250+var_126; int
145DF0:  MOVS            R2, #0x10
145DF2:  MOVS            R3, #1
145DF4:  BL              sub_17D786
145DF8:  ADD             R0, SP, #0x250+var_124; int
145DFA:  ADDW            R1, SP, #0x250+var_127; int
145DFE:  MOVS            R2, #8
145E00:  MOVS            R3, #1
145E02:  BL              sub_17D786
145E06:  LDRB.W          R2, [SP,#0x250+var_127]
145E0A:  ADD             R4, SP, #0x250+s
145E0C:  ADD             R0, SP, #0x250+var_124; int
145E0E:  MOV             R1, R4; dest
145E10:  BL              sub_17D744
145E14:  LDRB.W          R0, [SP,#0x250+var_127]
145E18:  MOVS            R2, #0
145E1A:  LDR             R1, [R5]
145E1C:  STRB            R2, [R4,R0]
145E1E:  LDR.W           R0, [R1,#0x3B0]
145E22:  LDR             R6, [R0]
145E24:  MOV.W           R0, #0x13A0
145E28:  LDRH            R1, [R6,R0]
145E2A:  LDRH.W          R0, [SP,#0x250+var_126]
145E2E:  CMP             R0, R1
145E30:  BNE             loc_145ED6
145E32:  LDR             R0, =(off_234A24 - 0x145E38)
145E34:  ADD             R0, PC; off_234A24
145E36:  LDR             R0, [R0]; dword_23DEEC
145E38:  LDR             R0, [R0]
145E3A:  CMP             R0, #0
145E3C:  BEQ             loc_145EF6
145E3E:  ADD             R5, SP, #0x250+s
145E40:  LDR             R4, [R0,#0x60]
145E42:  MOV             R0, R5; s
145E44:  BLX             strlen
145E48:  MOV             R2, R0
145E4A:  ADD             R0, SP, #0x250+var_234
145E4C:  MOV             R1, R5
145E4E:  BL              sub_164D04
145E52:  MOVW            R0, #0x13A2
145E56:  ADDS            R1, R6, R0; s
145E58:  ADD             R0, SP, #0x250+var_240; int
145E5A:  BL              sub_DC6DC
145E5E:  ADD.W           R0, R6, #0x13A0
145E62:  LDR             R0, [R0,#0x1C]
145E64:  BL              sub_1413FC
145E68:  UBFX.W          R1, R0, #8, #8
145E6C:  UBFX.W          R2, R0, #0x10, #8
145E70:  LSRS            R0, R0, #0x18
145E72:  VLDR            S6, =0.0039216
145E76:  VMOV            S4, R0
145E7A:  MOV.W           R0, #0x3F800000
145E7E:  VMOV            S0, R1
145E82:  STR             R0, [SP,#0x250+var_244]
145E84:  VMOV            S2, R2
145E88:  VCVT.F32.S32    S0, S0
145E8C:  VCVT.F32.S32    S2, S2
145E90:  VCVT.F32.S32    S4, S4
145E94:  VMUL.F32        S0, S0, S6
145E98:  VMUL.F32        S2, S2, S6
145E9C:  VMUL.F32        S4, S4, S6
145EA0:  VSTR            S0, [SP,#0x250+var_248]
145EA4:  VSTR            S2, [SP,#0x250+var_24C]
145EA8:  VSTR            S4, [SP,#0x250+var_250]
145EAC:  ADD             R1, SP, #0x250+var_234
145EAE:  ADD             R2, SP, #0x250+var_240
145EB0:  MOV             R3, SP
145EB2:  MOV             R0, R4
145EB4:  BL              sub_12D258
145EB8:  LDRB.W          R0, [SP,#0x250+var_240]
145EBC:  LSLS            R0, R0, #0x1F
145EBE:  ITT NE
145EC0:  LDRNE           R0, [SP,#0x250+var_238]; void *
145EC2:  BLXNE           j__ZdlPv; operator delete(void *)
145EC6:  LDRB.W          R0, [SP,#0x250+var_234]
145ECA:  LSLS            R0, R0, #0x1F
145ECC:  BEQ             loc_145EF6
145ECE:  LDR             R0, [SP,#0x250+var_22C]; void *
145ED0:  BLX             j__ZdlPv; operator delete(void *)
145ED4:  B               loc_145EF6
145ED6:  CMP.W           R0, #0x3EC
145EDA:  BHI             loc_145EF6
145EDC:  ADDS            R1, R6, R0
145EDE:  LDRB.W          R1, [R1,#0xFB4]
145EE2:  CBZ             R1, loc_145EF6
145EE4:  ADD.W           R0, R6, R0,LSL#2
145EE8:  LDR             R0, [R0,#4]
145EEA:  CBZ             R0, loc_145EF6
145EEC:  LDR             R0, [R0]
145EEE:  CBZ             R0, loc_145EF6
145EF0:  ADD             R1, SP, #0x250+s
145EF2:  BL              sub_14A408
145EF6:  ADD             R0, SP, #0x250+var_124
145EF8:  BL              sub_17D542
145EFC:  ADD.W           SP, SP, #0x240
145F00:  POP.W           {R11}
145F04:  POP             {R4-R7,PC}
