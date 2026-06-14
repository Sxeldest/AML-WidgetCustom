; =========================================================
; Game Engine Function: _Z15jpeg_stdio_destP20jpeg_compress_structP7__sFILE
; Address            : 0x47BC3C - 0x47BC6C
; =========================================================

47BC3C:  PUSH            {R4,R5,R7,LR}
47BC3E:  ADD             R7, SP, #8
47BC40:  MOV             R5, R0
47BC42:  MOV             R4, R1
47BC44:  LDR             R0, [R5,#0x18]
47BC46:  CBNZ            R0, loc_47BC56
47BC48:  LDR             R0, [R5,#4]
47BC4A:  MOVS            R1, #0
47BC4C:  MOVS            R2, #0x1C
47BC4E:  LDR             R3, [R0]
47BC50:  MOV             R0, R5
47BC52:  BLX             R3
47BC54:  STR             R0, [R5,#0x18]
47BC56:  LDR             R3, =(sub_47BC96+1 - 0x47BC60)
47BC58:  LDR             R1, =(sub_47BC78+1 - 0x47BC62)
47BC5A:  LDR             R2, =(sub_47BCD6+1 - 0x47BC64)
47BC5C:  ADD             R3, PC; sub_47BC96
47BC5E:  ADD             R1, PC; sub_47BC78
47BC60:  ADD             R2, PC; sub_47BCD6
47BC62:  STRD.W          R1, R3, [R0,#8]
47BC66:  STRD.W          R2, R4, [R0,#0x10]
47BC6A:  POP             {R4,R5,R7,PC}
