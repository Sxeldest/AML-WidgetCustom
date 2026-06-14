; =========================================================
; Game Engine Function: sub_23BA58
; Address            : 0x23BA58 - 0x23BAEC
; =========================================================

23BA58:  PUSH            {R4-R7,LR}
23BA5A:  ADD             R7, SP, #0xC
23BA5C:  PUSH.W          {R8,R9,R11}
23BA60:  MOV             R4, R0
23BA62:  MOVW            R1, #0xB2F4
23BA66:  LDR             R0, [R4,R1]
23BA68:  MOVW            R2, #0xB2EC
23BA6C:  ADDS            R5, R4, R2
23BA6E:  ADD.W           R8, R4, R1
23BA72:  TST.W           R0, #1
23BA76:  BEQ             loc_23BA82
23BA78:  LDR             R0, [R5]; fd
23BA7A:  BLX             close
23BA7E:  LDR.W           R0, [R8]
23BA82:  MOVS            R1, #0
23BA84:  STR             R1, [R5]
23BA86:  LSLS            R1, R0, #0x1C
23BA88:  BMI             loc_23BA94
23BA8A:  LSLS            R0, R0, #0x19
23BA8C:  BMI             loc_23BACE
23BA8E:  POP.W           {R8,R9,R11}
23BA92:  POP             {R4-R7,PC}
23BA94:  MOVW            R1, #0xB320
23BA98:  ADD.W           R9, R4, R1
23BA9C:  LDR             R5, [R4,R1]
23BA9E:  CBZ             R5, loc_23BAB8
23BAA0:  LDR             R0, [R5]; p
23BAA2:  LDR             R6, [R5,#0xC]
23BAA4:  BLX             free
23BAA8:  MOV             R0, R5; p
23BAAA:  BLX             free
23BAAE:  CMP             R6, #0
23BAB0:  MOV             R5, R6
23BAB2:  BNE             loc_23BAA0
23BAB4:  LDR.W           R0, [R8]
23BAB8:  VMOV.I32        Q8, #0
23BABC:  MOVS            R1, #0
23BABE:  STR.W           R1, [R9,#0x14]
23BAC2:  VST1.32         {D16-D17}, [R9]!
23BAC6:  STR.W           R1, [R9]
23BACA:  LSLS            R0, R0, #0x19
23BACC:  BPL             loc_23BA8E
23BACE:  MOVW            R0, #0xB310
23BAD2:  MOVW            R2, #0xB2F0
23BAD6:  LDR             R1, [R4,R0]
23BAD8:  ADD             R4, R2
23BADA:  CMP             R1, #0
23BADC:  ITT NE
23BADE:  LDRNE           R0, [R4]
23BAE0:  BLXNE           R1
23BAE2:  MOVS            R0, #0
23BAE4:  STR             R0, [R4]
23BAE6:  POP.W           {R8,R9,R11}
23BAEA:  POP             {R4-R7,PC}
