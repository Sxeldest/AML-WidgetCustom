; =========================================================
; Game Engine Function: sub_1874FE
; Address            : 0x1874FE - 0x18751A
; =========================================================

1874FE:  PUSH            {R4,R6,R7,LR}
187500:  ADD             R7, SP, #8
187502:  MOVS            R1, #0
187504:  MOV             R4, R0
187506:  BL              sub_18A274
18750A:  LDR             R0, [R4,#8]
18750C:  CBZ             R0, loc_187516
18750E:  LDR             R0, [R4]; void *
187510:  CBZ             R0, loc_187516
187512:  BLX             j__ZdaPv; operator delete[](void *)
187516:  MOV             R0, R4
187518:  POP             {R4,R6,R7,PC}
