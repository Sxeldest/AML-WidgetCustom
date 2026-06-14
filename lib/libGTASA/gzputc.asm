; =========================================================
; Game Engine Function: gzputc
; Address            : 0x20CE10 - 0x20CE34
; =========================================================

20CE10:  PUSH            {R7,LR}
20CE12:  MOV             R7, SP
20CE14:  SUB             SP, SP, #8
20CE16:  STRB.W          R1, [R7,#-1]
20CE1A:  SUBS            R1, R7, #1
20CE1C:  MOVS            R2, #1
20CE1E:  BLX             j_gzwrite
20CE22:  LDRB.W          R1, [R7,#-1]
20CE26:  CMP             R0, #1
20CE28:  IT NE
20CE2A:  MOVNE.W         R1, #0xFFFFFFFF
20CE2E:  MOV             R0, R1
20CE30:  ADD             SP, SP, #8
20CE32:  POP             {R7,PC}
