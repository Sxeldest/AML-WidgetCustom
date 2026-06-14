; =========================================================
; Game Engine Function: mpg123_seek_frame
; Address            : 0x231CA8 - 0x231D9A
; =========================================================

231CA8:  PUSH            {R4-R7,LR}
231CAA:  ADD             R7, SP, #0xC
231CAC:  PUSH.W          {R8}
231CB0:  MOV             R4, R0
231CB2:  MOV             R6, R2
231CB4:  MOV             R5, R1
231CB6:  CMP             R4, #0
231CB8:  BEQ             loc_231D90
231CBA:  MOVW            R8, #0xB2C8
231CBE:  LDR.W           R0, [R4,R8]
231CC2:  CBZ             R0, loc_231CF2
231CC4:  CMP             R6, #0
231CC6:  BEQ             loc_231CD8
231CC8:  CMP             R6, #2
231CCA:  BEQ             loc_231D04
231CCC:  CMP             R6, #1
231CCE:  BNE             loc_231D80
231CD0:  MOVW            R0, #0x9314
231CD4:  LDR             R0, [R4,R0]
231CD6:  ADD             R5, R0
231CD8:  CMP             R5, #0
231CDA:  BLT             loc_231D14
231CDC:  MOVW            R0, #0x9368
231CE0:  LDR             R1, [R4,R0]
231CE2:  CMP             R5, R1
231CE4:  MOV             R0, R1
231CE6:  IT LT
231CE8:  MOVLT           R0, R5
231CEA:  CMP             R1, #1
231CEC:  IT LT
231CEE:  MOVLT           R0, R5
231CF0:  B               loc_231D16
231CF2:  LDR             R0, [R4]
231CF4:  CMP             R0, #0
231CF6:  BEQ             loc_231CC4
231CF8:  MOV             R0, R4
231CFA:  BL              sub_2309D2
231CFE:  CMP             R0, #0
231D00:  BGE             loc_231CC4
231D02:  B               loc_231D7A
231D04:  MOVW            R0, #0x9368
231D08:  LDR             R0, [R4,R0]
231D0A:  CMP             R0, #1
231D0C:  BLT             loc_231D88
231D0E:  SUBS            R5, R0, R5
231D10:  CMP             R5, #0
231D12:  BGE             loc_231CDC
231D14:  MOVS            R0, #0
231D16:  MOVW            R2, #0xB460
231D1A:  MOVW            R1, #0x92D8
231D1E:  LDR             R2, [R4,R2]
231D20:  MOVW            R5, #0xB2D0
231D24:  LDR             R1, [R4,R1]
231D26:  STR             R0, [R4,R5]
231D28:  CMP             R1, #3
231D2A:  MOV             R3, R2
231D2C:  IT EQ
231D2E:  MOVEQ           R3, #1
231D30:  CMP             R2, #1
231D32:  IT GE
231D34:  MOVGE           R3, R2
231D36:  CMP             R3, #2
231D38:  MOV             R2, R3
231D3A:  IT GT
231D3C:  MOVGT           R2, #2
231D3E:  CMP             R1, #3
231D40:  IT EQ
231D42:  MOVEQ           R2, R3
231D44:  MOVW            R1, #0xB2D8
231D48:  SUBS            R0, R0, R2
231D4A:  STR             R0, [R4,R1]
231D4C:  MOV             R0, R4
231D4E:  BL              sub_231732
231D52:  CMP             R0, #0
231D54:  BLT             loc_231D7A
231D56:  ADDS            R0, R4, R5
231D58:  MOVW            R1, #0x9314
231D5C:  LDR             R1, [R4,R1]
231D5E:  LDR             R0, [R0]
231D60:  CMP             R1, R0
231D62:  BLT             loc_231D7A
231D64:  ADD.W           R0, R4, R8
231D68:  LDR             R0, [R0]
231D6A:  CBNZ            R0, loc_231D78
231D6C:  MOVW            R0, #0xB2A8
231D70:  LDR             R0, [R4,R0]
231D72:  CMP             R0, #0
231D74:  IT EQ
231D76:  ADDEQ           R1, #1
231D78:  MOV             R0, R1
231D7A:  POP.W           {R8}
231D7E:  POP             {R4-R7,PC}
231D80:  MOVW            R0, #0xB468
231D84:  MOVS            R1, #0x14
231D86:  B               loc_231D8E
231D88:  MOVW            R0, #0xB468
231D8C:  MOVS            R1, #0x13
231D8E:  STR             R1, [R4,R0]
231D90:  MOV.W           R0, #0xFFFFFFFF
231D94:  POP.W           {R8}
231D98:  POP             {R4-R7,PC}
