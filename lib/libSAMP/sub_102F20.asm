; =========================================================
; Game Engine Function: sub_102F20
; Address            : 0x102F20 - 0x102F5E
; =========================================================

102F20:  PUSH            {R7,LR}
102F22:  MOV             R7, SP
102F24:  LDR             R1, =(off_234A74 - 0x102F2A)
102F26:  ADD             R1, PC; off_234A74
102F28:  LDR             R1, [R1]; dword_2402E4
102F2A:  LDR             R1, [R1]
102F2C:  LDR             R1, [R1]
102F2E:  CBZ             R1, loc_102F46
102F30:  LDR             R0, =(unk_25B22C - 0x102F3A)
102F32:  RSB.W           R1, R1, R1,LSL#3
102F36:  ADD             R0, PC; unk_25B22C
102F38:  ADD.W           R0, R0, R1,LSL#2
102F3C:  LDRB            R0, [R0,#9]
102F3E:  CMP             R0, #0
102F40:  IT NE
102F42:  MOVNE           R0, #0xFF
102F44:  POP             {R7,PC}
102F46:  LDR             R1, =(off_25C974 - 0x102F4C)
102F48:  ADD             R1, PC; off_25C974
102F4A:  LDR             R1, [R1]
102F4C:  BLX             R1
102F4E:  LDR             R1, =(word_25B210 - 0x102F5C)
102F50:  MOV             R2, R0
102F52:  CMP             R0, #0
102F54:  IT NE
102F56:  MOVNE           R2, #1
102F58:  ADD             R1, PC; word_25B210
102F5A:  STRB            R2, [R1,#(byte_25B219 - 0x25B210)]
102F5C:  POP             {R7,PC}
