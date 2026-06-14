; =========================================================
; Game Engine Function: sub_164E4C
; Address            : 0x164E4C - 0x164EFA
; =========================================================

164E4C:  PUSH            {R4-R7,LR}
164E4E:  ADD             R7, SP, #0xC
164E50:  PUSH.W          {R8,R9,R11}
164E54:  MOV.W           R12, #0
164E58:  CMP             R2, #1
164E5A:  BLT             loc_164EE6
164E5C:  MOV.W           R9, #0
164E60:  MOVW            R8, #0x402
164E64:  MOV.W           LR, #0
164E68:  LDRB.W          R5, [R0,R9]
164E6C:  CBZ             R5, loc_164EEA
164E6E:  LSLS            R4, R5, #0x18
164E70:  BPL             loc_164ED4
164E72:  LSLS            R4, R5, #0x1A
164E74:  BMI             loc_164EF2
164E76:  ADD.W           R9, R9, #1
164E7A:  LDRB.W          R4, [R0,R9]
164E7E:  AND.W           R4, R4, #0x3F ; '?'
164E82:  BFI.W           R4, R5, #6, #5
164E86:  CMP             R4, #0xEB
164E88:  MOV             R5, R4
164E8A:  IT EQ
164E8C:  MOVWEQ          R5, #0x451
164E90:  CMP             R4, #0xCB
164E92:  IT EQ
164E94:  MOVWEQ          R5, #0x401
164E98:  SUB.W           R4, R5, #0x410
164E9C:  CMP             R4, #0x3F ; '?'
164E9E:  BHI             loc_164EA4
164EA0:  SUBS            R5, #0x50 ; 'P'
164EA2:  B               loc_164ED4
164EA4:  BIC.W           R4, R5, #0x7F
164EA8:  CMP             R4, #0x80
164EAA:  BEQ             loc_164ED4
164EAC:  BIC.W           R4, R5, #1
164EB0:  CMP             R4, R8
164EB2:  BNE             loc_164EB8
164EB4:  ADDS            R5, #0x7E ; '~'
164EB6:  B               loc_164ED4
164EB8:  MOVS            R6, #0
164EBA:  LDR             R4, =(unk_BAB70 - 0x164EC0)
164EBC:  ADD             R4, PC; unk_BAB70
164EBE:  ADD.W           R3, R4, R6,LSL#3
164EC2:  LDR             R3, [R3,#4]
164EC4:  CMP             R5, R3
164EC6:  BEQ             loc_164ED0
164EC8:  ADDS            R6, #1
164ECA:  CMP             R6, #0x3D ; '='
164ECC:  BNE             loc_164EBA
164ECE:  B               loc_164EF2
164ED0:  LDRB.W          R5, [R4,R6,LSL#3]
164ED4:  STRB.W          R5, [R1,LR]
164ED8:  ADD.W           R9, R9, #1
164EDC:  ADD.W           LR, LR, #1
164EE0:  CMP             R9, R2
164EE2:  BLT             loc_164E68
164EE4:  B               loc_164EEA
164EE6:  MOV.W           LR, #0
164EEA:  MOVS            R0, #1
164EEC:  STRB.W          R12, [R1,LR]
164EF0:  B               loc_164EF4
164EF2:  MOVS            R0, #0
164EF4:  POP.W           {R8,R9,R11}
164EF8:  POP             {R4-R7,PC}
