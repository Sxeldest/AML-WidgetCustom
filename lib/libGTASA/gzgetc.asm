; =========================================================
; Game Engine Function: gzgetc
; Address            : 0x20CC9C - 0x20CCBC
; =========================================================

20CC9C:  PUSH            {R7,LR}
20CC9E:  MOV             R7, SP
20CCA0:  SUB             SP, SP, #8
20CCA2:  SUBS            R1, R7, #1; ptr
20CCA4:  MOVS            R2, #1; size_t
20CCA6:  BLX             j_gzread
20CCAA:  LDRB.W          R1, [R7,#-1]
20CCAE:  CMP             R0, #1
20CCB0:  IT NE
20CCB2:  MOVNE.W         R1, #0xFFFFFFFF
20CCB6:  MOV             R0, R1
20CCB8:  ADD             SP, SP, #8
20CCBA:  POP             {R7,PC}
