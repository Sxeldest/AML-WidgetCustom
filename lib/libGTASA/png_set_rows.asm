; =========================================================
; Game Engine Function: png_set_rows
; Address            : 0x202F3E - 0x202F76
; =========================================================

202F3E:  PUSH            {R4,R5,R7,LR}
202F40:  ADD             R7, SP, #8
202F42:  CMP             R0, #0
202F44:  MOV             R4, R1
202F46:  MOV             R5, R2
202F48:  IT NE
202F4A:  CMPNE           R4, #0
202F4C:  BEQ             locret_202F74
202F4E:  LDR.W           R1, [R4,#0x114]
202F52:  CMP             R1, #0
202F54:  IT NE
202F56:  CMPNE           R1, R5
202F58:  BEQ             loc_202F64
202F5A:  MOV             R1, R4
202F5C:  MOVS            R2, #0x40 ; '@'
202F5E:  MOVS            R3, #0
202F60:  BLX             j_png_free_data
202F64:  STR.W           R5, [R4,#0x114]
202F68:  CMP             R5, #0
202F6A:  ITTT NE
202F6C:  LDRNE           R0, [R4,#8]
202F6E:  ORRNE.W         R0, R0, #0x8000
202F72:  STRNE           R0, [R4,#8]
202F74:  POP             {R4,R5,R7,PC}
