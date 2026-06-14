; =========================================================
; Game Engine Function: _ZN13CCarEnterExit23CarHasPartiallyOpenDoorERK8CVehiclei
; Address            : 0x508758 - 0x508790
; =========================================================

508758:  PUSH            {R4,R5,R7,LR}
50875A:  ADD             R7, SP, #8
50875C:  MOV             R5, R0
50875E:  MOV             R4, R1
508760:  LDR             R0, [R5]
508762:  LDR.W           R2, [R0,#0x9C]
508766:  MOV             R0, R5
508768:  BLX             R2
50876A:  CBNZ            R0, loc_50877A
50876C:  LDR             R0, [R5]
50876E:  MOV             R1, R4
508770:  LDR.W           R2, [R0,#0x94]
508774:  MOV             R0, R5
508776:  BLX             R2
508778:  CBZ             R0, loc_50877E
50877A:  MOVS            R0, #0
50877C:  POP             {R4,R5,R7,PC}
50877E:  LDR             R0, [R5]
508780:  MOV             R1, R4
508782:  LDR.W           R2, [R0,#0x98]
508786:  MOV             R0, R5
508788:  BLX             R2
50878A:  EOR.W           R0, R0, #1
50878E:  POP             {R4,R5,R7,PC}
