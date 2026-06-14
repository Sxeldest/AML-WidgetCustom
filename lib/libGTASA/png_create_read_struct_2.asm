; =========================================================
; Game Engine Function: png_create_read_struct_2
; Address            : 0x1F5666 - 0x1F56A8
; =========================================================

1F5666:  PUSH            {R4,R6,R7,LR}
1F5668:  ADD             R7, SP, #8
1F566A:  SUB             SP, SP, #0x10
1F566C:  ADD.W           LR, R7, #8
1F5670:  LDM.W           LR, {R4,R12,LR}
1F5674:  STMEA.W         SP, {R4,R12,LR}
1F5678:  BLX             j_png_create_png_struct
1F567C:  MOV             R4, R0
1F567E:  CBZ             R4, loc_1F56A2
1F5680:  MOV.W           R0, #0x2000
1F5684:  MOV.W           R1, #0x8000
1F5688:  STR.W           R0, [R4,#0x364]
1F568C:  MOVS            R2, #0
1F568E:  LDR.W           R0, [R4,#0x138]
1F5692:  ORR.W           R0, R0, #0x300000
1F5696:  STRD.W          R1, R0, [R4,#0x134]
1F569A:  MOV             R0, R4
1F569C:  MOVS            R1, #0
1F569E:  BLX             j_png_set_read_fn
1F56A2:  MOV             R0, R4
1F56A4:  ADD             SP, SP, #0x10
1F56A6:  POP             {R4,R6,R7,PC}
