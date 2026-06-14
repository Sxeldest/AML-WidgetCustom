; =========================================================
; Game Engine Function: opus_decoder_get_nb_samples
; Address            : 0xB1F0C - 0xB1F5C
; =========================================================

B1F0C:  PUSH            {R4,R5,R7,LR}
B1F0E:  ADD             R7, SP, #8
B1F10:  CMP             R2, #1
B1F12:  BLT             loc_B1F34
B1F14:  LDR             R4, [R0,#0xC]
B1F16:  LDRB            R0, [R1]
B1F18:  ANDS.W          R0, R0, #3
B1F1C:  BEQ             loc_B1F3A
B1F1E:  CMP             R0, #3
B1F20:  BNE             loc_B1F3E
B1F22:  CMP             R2, #2
B1F24:  ITT LT
B1F26:  MOVLT           R0, #0xFFFFFFFC
B1F2A:  POPLT           {R4,R5,R7,PC}
B1F2C:  LDRB            R0, [R1,#1]
B1F2E:  AND.W           R5, R0, #0x3F ; '?'
B1F32:  B               loc_B1F40
B1F34:  MOV.W           R0, #0xFFFFFFFF
B1F38:  POP             {R4,R5,R7,PC}
B1F3A:  MOVS            R5, #1
B1F3C:  B               loc_B1F40
B1F3E:  MOVS            R5, #2
B1F40:  MOV             R0, R1
B1F42:  MOV             R1, R4
B1F44:  BLX             j_opus_packet_get_samples_per_frame
B1F48:  MULS            R0, R5
B1F4A:  MOVS            R1, #0x19
B1F4C:  ADD.W           R2, R4, R4,LSL#1
B1F50:  MULS            R1, R0
B1F52:  CMP             R1, R2
B1F54:  IT GT
B1F56:  MOVGT           R0, #0xFFFFFFFC
B1F5A:  POP             {R4,R5,R7,PC}
