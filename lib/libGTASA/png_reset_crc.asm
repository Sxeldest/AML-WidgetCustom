; =========================================================
; Game Engine Function: png_reset_crc
; Address            : 0x1EDA30 - 0x1EDA46
; =========================================================

1EDA30:  PUSH            {R4,R6,R7,LR}
1EDA32:  ADD             R7, SP, #8
1EDA34:  MOV             R4, R0
1EDA36:  MOVS            R0, #0
1EDA38:  MOVS            R1, #0
1EDA3A:  MOVS            R2, #0
1EDA3C:  BLX             j_crc32
1EDA40:  STR.W           R0, [R4,#0x1F8]
1EDA44:  POP             {R4,R6,R7,PC}
