; =========================================================
; Game Engine Function: inflateEnd
; Address            : 0x20E854 - 0x20E886
; =========================================================

20E854:  PUSH            {R4,R6,R7,LR}
20E856:  ADD             R7, SP, #8
20E858:  MOV             R4, R0
20E85A:  CBZ             R4, loc_20E880
20E85C:  LDR             R1, [R4,#0x1C]
20E85E:  CMP             R1, #0
20E860:  ITT NE
20E862:  LDRNE           R2, [R4,#0x24]
20E864:  CMPNE           R2, #0
20E866:  BEQ             loc_20E880
20E868:  LDR             R0, [R1,#0x14]
20E86A:  CBZ             R0, loc_20E876
20E86C:  MOV             R1, R4
20E86E:  BLX             j_inflate_blocks_free
20E872:  LDR             R1, [R4,#0x1C]
20E874:  LDR             R2, [R4,#0x24]
20E876:  LDR             R0, [R4,#0x28]
20E878:  BLX             R2
20E87A:  MOVS            R0, #0
20E87C:  STR             R0, [R4,#0x1C]
20E87E:  POP             {R4,R6,R7,PC}
20E880:  MOV             R0, #0xFFFFFFFE
20E884:  POP             {R4,R6,R7,PC}
