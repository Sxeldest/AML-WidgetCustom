; =========================================================
; Game Engine Function: png_get_unknown_chunks
; Address            : 0x1F3EAA - 0x1F3EC4
; =========================================================

1F3EAA:  MOV             R3, R0
1F3EAC:  CMP             R3, #0
1F3EAE:  MOV.W           R0, #0
1F3EB2:  IT NE
1F3EB4:  CMPNE           R1, #0
1F3EB6:  BEQ             locret_1F3EC2
1F3EB8:  CMP             R2, #0
1F3EBA:  ITT NE
1F3EBC:  LDRDNE.W        R3, R0, [R1,#0xF8]
1F3EC0:  STRNE           R3, [R2]
1F3EC2:  BX              LR
