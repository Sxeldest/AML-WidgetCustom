; =========================================================
; Game Engine Function: _Z19jpeg_input_completeP22jpeg_decompress_struct
; Address            : 0x47B9A4 - 0x47B9CE
; =========================================================

47B9A4:  PUSH            {R4,R6,R7,LR}
47B9A6:  ADD             R7, SP, #8
47B9A8:  MOV             R4, R0
47B9AA:  LDR             R0, [R4,#0x14]
47B9AC:  SUBS            R0, #0xC8
47B9AE:  CMP             R0, #0xB
47B9B0:  BCC             loc_47B9C6
47B9B2:  LDR             R0, [R4]
47B9B4:  MOVS            R1, #0x14
47B9B6:  STR             R1, [R0,#0x14]
47B9B8:  LDR             R0, [R4]
47B9BA:  LDR             R1, [R4,#0x14]
47B9BC:  STR             R1, [R0,#0x18]
47B9BE:  LDR             R0, [R4]
47B9C0:  LDR             R1, [R0]
47B9C2:  MOV             R0, R4
47B9C4:  BLX             R1
47B9C6:  LDR.W           R0, [R4,#0x190]
47B9CA:  LDRB            R0, [R0,#0x11]
47B9CC:  POP             {R4,R6,R7,PC}
