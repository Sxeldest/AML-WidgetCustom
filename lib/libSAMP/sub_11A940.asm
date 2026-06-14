; =========================================================
; Game Engine Function: sub_11A940
; Address            : 0x11A940 - 0x11A96C
; =========================================================

11A940:  PUSH            {R4,R6,R7,LR}
11A942:  ADD             R7, SP, #8
11A944:  MOV             R4, R0
11A946:  LDR             R0, [R1,#0x10]
11A948:  CBZ             R0, loc_11A956
11A94A:  CMP             R1, R0
11A94C:  BEQ             loc_11A95C
11A94E:  LDR             R1, [R0]
11A950:  LDR             R1, [R1,#8]
11A952:  BLX             R1
11A954:  B               loc_11A958
11A956:  MOVS            R0, #0
11A958:  STR             R0, [R4,#0x10]
11A95A:  B               loc_11A968
11A95C:  STR             R4, [R4,#0x10]
11A95E:  LDR             R0, [R1,#0x10]
11A960:  LDR             R1, [R0]
11A962:  LDR             R2, [R1,#0xC]
11A964:  MOV             R1, R4
11A966:  BLX             R2
11A968:  MOV             R0, R4
11A96A:  POP             {R4,R6,R7,PC}
