; =========================================================
; Game Engine Function: sub_F7474
; Address            : 0xF7474 - 0xF7486
; =========================================================

F7474:  PUSH            {R7,LR}
F7476:  MOV             R7, SP
F7478:  MOV             R2, R0
F747A:  LDR             R0, [R0]
F747C:  STR             R1, [R2]
F747E:  CBZ             R0, locret_F7484
F7480:  LDR             R1, [R2,#4]
F7482:  BLX             R1
F7484:  POP             {R7,PC}
