; =========================================================
; Game Engine Function: alEnable
; Address            : 0x25CE78 - 0x25CEDE
; =========================================================

25CE78:  PUSH            {R4,R5,R7,LR}
25CE7A:  ADD             R7, SP, #8
25CE7C:  MOV             R5, R0
25CE7E:  BLX             j_GetContextRef
25CE82:  MOV             R4, R0
25CE84:  CMP             R4, #0
25CE86:  IT EQ
25CE88:  POPEQ           {R4,R5,R7,PC}
25CE8A:  CMP.W           R5, #0x200
25CE8E:  BNE             loc_25CE9A
25CE90:  MOVS            R0, #1
25CE92:  STRB.W          R0, [R4,#0x5C]
25CE96:  STR             R0, [R4,#0x54]
25CE98:  B               loc_25CED4
25CE9A:  LDR             R0, =(TrapALError_ptr - 0x25CEA0)
25CE9C:  ADD             R0, PC; TrapALError_ptr
25CE9E:  LDR             R0, [R0]; TrapALError
25CEA0:  LDRB            R0, [R0]
25CEA2:  CMP             R0, #0
25CEA4:  ITT NE
25CEA6:  MOVNE           R0, #5; sig
25CEA8:  BLXNE           raise
25CEAC:  LDREX.W         R0, [R4,#0x50]
25CEB0:  CBNZ            R0, loc_25CECC
25CEB2:  ADD.W           R0, R4, #0x50 ; 'P'
25CEB6:  MOVW            R1, #0xA002
25CEBA:  DMB.W           ISH
25CEBE:  STREX.W         R2, R1, [R0]
25CEC2:  CBZ             R2, loc_25CED0
25CEC4:  LDREX.W         R2, [R0]
25CEC8:  CMP             R2, #0
25CECA:  BEQ             loc_25CEBE
25CECC:  CLREX.W
25CED0:  DMB.W           ISH
25CED4:  MOV             R0, R4
25CED6:  POP.W           {R4,R5,R7,LR}
25CEDA:  B.W             ALCcontext_DecRef
