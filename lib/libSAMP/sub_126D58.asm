; =========================================================
; Game Engine Function: sub_126D58
; Address            : 0x126D58 - 0x126D86
; =========================================================

126D58:  PUSH            {R7,LR}
126D5A:  MOV             R7, SP
126D5C:  LDR             R0, [R0,#4]
126D5E:  CBZ             R0, loc_126D76
126D60:  LDR             R1, [R1]
126D62:  LDR             R2, [R0,#0x10]
126D64:  CMP             R1, R2
126D66:  BGE             loc_126D6C
126D68:  LDR             R0, [R0]
126D6A:  B               loc_126D72
126D6C:  CMP             R2, R1
126D6E:  BGE             loc_126D7E
126D70:  LDR             R0, [R0,#4]
126D72:  CMP             R0, #0
126D74:  BNE             loc_126D62
126D76:  LDR             R0, =(aMapAtKeyNotFou - 0x126D7C); "map::at:  key not found" ...
126D78:  ADD             R0, PC; "map::at:  key not found"
126D7A:  BL              sub_EE13C
126D7E:  CMP             R0, #0
126D80:  BEQ             loc_126D76
126D82:  ADDS            R0, #0x14
126D84:  POP             {R7,PC}
