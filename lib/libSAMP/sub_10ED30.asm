; =========================================================
; Game Engine Function: sub_10ED30
; Address            : 0x10ED30 - 0x10EDD8
; =========================================================

10ED30:  PUSH            {R4-R7,LR}
10ED32:  ADD             R7, SP, #0xC
10ED34:  PUSH.W          {R8-R11}
10ED38:  SUB             SP, SP, #4
10ED3A:  VPUSH           {D8}
10ED3E:  SUB             SP, SP, #0x18
10ED40:  MOV             R4, R0
10ED42:  LDR             R0, =(byte_2632A0 - 0x10ED4A)
10ED44:  MOV             R10, R1
10ED46:  ADD             R0, PC; byte_2632A0
10ED48:  LDRB            R0, [R0]
10ED4A:  DMB.W           ISH
10ED4E:  LSLS            R0, R0, #0x1F
10ED50:  BEQ             loc_10EDB4
10ED52:  LDR.W           R6, [R4,#8]!
10ED56:  STR             R4, [SP,#0x40+var_34]
10ED58:  LDR.W           R11, [R4,#4]
10ED5C:  CMP             R6, R11
10ED5E:  BEQ             loc_10EDA0
10ED60:  LDR             R0, =(off_234980 - 0x10ED70)
10ED62:  VMOV.F32        S16, #0.5
10ED66:  LDR             R4, =(unk_263290 - 0x10ED76)
10ED68:  ADD.W           R9, SP, #0x40+var_30
10ED6C:  ADD             R0, PC; off_234980
10ED6E:  MOV.W           R8, #1
10ED72:  ADD             R4, PC; unk_263290
10ED74:  LDR             R5, [R0]; dword_238EC0
10ED76:  VLDR            S0, [R5]
10ED7A:  MOV             R2, R4; int
10ED7C:  LDRD.W          R0, R1, [R6,#0xC]
10ED80:  MOV             R3, R6; int
10ED82:  VMUL.F32        S0, S0, S16
10ED86:  STRD.W          R0, R1, [SP,#0x40+var_30]
10ED8A:  MOV             R0, R10; int
10ED8C:  MOV             R1, R9; int
10ED8E:  STR.W           R8, [SP,#0x40+var_40]; int
10ED92:  VSTR            S0, [SP,#0x40+var_3C]
10ED96:  BL              sub_12AE34
10ED9A:  ADDS            R6, #0x14
10ED9C:  CMP             R6, R11
10ED9E:  BNE             loc_10ED76
10EDA0:  LDR             R0, [SP,#0x40+var_34]
10EDA2:  BL              sub_10F6C2
10EDA6:  ADD             SP, SP, #0x18
10EDA8:  VPOP            {D8}
10EDAC:  ADD             SP, SP, #4
10EDAE:  POP.W           {R8-R11}
10EDB2:  POP             {R4-R7,PC}
10EDB4:  LDR             R0, =(byte_2632A0 - 0x10EDBA)
10EDB6:  ADD             R0, PC; byte_2632A0 ; __guard *
10EDB8:  BLX             j___cxa_guard_acquire
10EDBC:  CMP             R0, #0
10EDBE:  BEQ             loc_10ED52
10EDC0:  ADR             R0, dword_10EDD8
10EDC2:  LDR             R1, =(unk_263290 - 0x10EDCC)
10EDC4:  VLD1.64         {D16-D17}, [R0]
10EDC8:  ADD             R1, PC; unk_263290
10EDCA:  LDR             R0, =(byte_2632A0 - 0x10EDD4)
10EDCC:  VST1.64         {D16-D17}, [R1@128]
10EDD0:  ADD             R0, PC; byte_2632A0 ; __guard *
10EDD2:  BLX             j___cxa_guard_release
10EDD6:  B               loc_10ED52
