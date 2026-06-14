; =========================================================
; Game Engine Function: png_crc_read
; Address            : 0x1FD8FC - 0x1FD92E
; =========================================================

1FD8FC:  PUSH            {R4-R7,LR}
1FD8FE:  ADD             R7, SP, #0xC
1FD900:  PUSH.W          {R11}
1FD904:  MOV             R6, R0
1FD906:  MOV             R4, R2
1FD908:  MOV             R5, R1
1FD90A:  CBZ             R6, loc_1FD928
1FD90C:  MOV             R0, R6
1FD90E:  MOV             R1, R5
1FD910:  MOV             R2, R4
1FD912:  BLX             j_png_read_data
1FD916:  MOV             R0, R6
1FD918:  MOV             R1, R5
1FD91A:  MOV             R2, R4
1FD91C:  POP.W           {R11}
1FD920:  POP.W           {R4-R7,LR}
1FD924:  B.W             sub_19AB3C
1FD928:  POP.W           {R11}
1FD92C:  POP             {R4-R7,PC}
