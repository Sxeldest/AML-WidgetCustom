; =========================================================
; Game Engine Function: sub_102C10
; Address            : 0x102C10 - 0x102C4C
; =========================================================

102C10:  PUSH            {R7,LR}
102C12:  MOV             R7, SP
102C14:  LDR             R1, =(off_234A74 - 0x102C1A)
102C16:  ADD             R1, PC; off_234A74
102C18:  LDR             R1, [R1]; dword_2402E4
102C1A:  LDR             R1, [R1]
102C1C:  LDR             R1, [R1]
102C1E:  CBZ             R1, loc_102C36
102C20:  LDR             R0, =(unk_25B22C - 0x102C2A)
102C22:  RSB.W           R1, R1, R1,LSL#3
102C26:  ADD             R0, PC; unk_25B22C
102C28:  ADD.W           R0, R0, R1,LSL#2
102C2C:  LDRB            R0, [R0,#8]
102C2E:  CMP             R0, #0
102C30:  IT NE
102C32:  MOVNE           R0, #1
102C34:  POP             {R7,PC}
102C36:  LDR             R1, =(off_25C944 - 0x102C3C)
102C38:  ADD             R1, PC; off_25C944
102C3A:  LDR             R1, [R1]
102C3C:  BLX             R1
102C3E:  LDR             R1, =(word_25B210 - 0x102C4A)
102C40:  CMP             R0, #0
102C42:  IT NE
102C44:  MOVNE           R0, #1
102C46:  ADD             R1, PC; word_25B210
102C48:  STRB            R0, [R1,#(byte_25B218 - 0x25B210)]
102C4A:  POP             {R7,PC}
