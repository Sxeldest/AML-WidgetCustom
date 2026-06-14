; =========================================================
; Game Engine Function: _Z19jpeg_read_scanlinesP22jpeg_decompress_structPPhj
; Address            : 0x47BB2A - 0x47BBAA
; =========================================================

47BB2A:  PUSH            {R4-R7,LR}
47BB2C:  ADD             R7, SP, #0xC
47BB2E:  PUSH.W          {R8}
47BB32:  SUB             SP, SP, #8
47BB34:  MOV             R4, R0
47BB36:  MOV             R8, R2
47BB38:  LDR             R0, [R4,#0x14]
47BB3A:  MOV             R6, R1
47BB3C:  CMP             R0, #0xCD
47BB3E:  BEQ             loc_47BB54
47BB40:  LDR             R0, [R4]
47BB42:  MOVS            R1, #0x14
47BB44:  STR             R1, [R0,#0x14]
47BB46:  LDR             R0, [R4]
47BB48:  LDR             R1, [R4,#0x14]
47BB4A:  STR             R1, [R0,#0x18]
47BB4C:  LDR             R0, [R4]
47BB4E:  LDR             R1, [R0]
47BB50:  MOV             R0, R4
47BB52:  BLX             R1
47BB54:  LDR             R1, [R4,#0x60]
47BB56:  LDR             R0, [R4,#0x78]
47BB58:  CMP             R0, R1
47BB5A:  BCS             loc_47BB8E
47BB5C:  LDR             R1, [R4,#8]
47BB5E:  CBZ             R1, loc_47BB70
47BB60:  STR             R0, [R1,#4]
47BB62:  LDR             R0, [R4,#8]
47BB64:  LDR             R1, [R4,#0x60]
47BB66:  STR             R1, [R0,#8]
47BB68:  LDR             R0, [R4,#8]
47BB6A:  LDR             R1, [R0]
47BB6C:  MOV             R0, R4
47BB6E:  BLX             R1
47BB70:  MOVS            R0, #0
47BB72:  ADD             R2, SP, #0x18+var_14
47BB74:  STR             R0, [SP,#0x18+var_14]
47BB76:  MOV             R1, R6
47BB78:  LDR.W           R0, [R4,#0x184]
47BB7C:  MOV             R3, R8
47BB7E:  LDR             R5, [R0,#4]
47BB80:  MOV             R0, R4
47BB82:  BLX             R5
47BB84:  LDR             R0, [SP,#0x18+var_14]
47BB86:  LDR             R1, [R4,#0x78]
47BB88:  ADD             R1, R0
47BB8A:  STR             R1, [R4,#0x78]
47BB8C:  B               loc_47BBA2
47BB8E:  LDR             R0, [R4]
47BB90:  MOVS            R1, #0x7B ; '{'
47BB92:  STR             R1, [R0,#0x14]
47BB94:  MOV.W           R1, #0xFFFFFFFF
47BB98:  LDR             R0, [R4]
47BB9A:  LDR             R2, [R0,#4]
47BB9C:  MOV             R0, R4
47BB9E:  BLX             R2
47BBA0:  MOVS            R0, #0
47BBA2:  ADD             SP, SP, #8
47BBA4:  POP.W           {R8}
47BBA8:  POP             {R4-R7,PC}
