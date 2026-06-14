; =========================================================
; Game Engine Function: sub_F650E
; Address            : 0xF650E - 0xF652A
; =========================================================

F650E:  PUSH            {R4,R5,R7,LR}
F6510:  ADD             R7, SP, #8
F6512:  SUBS            R5, R2, R1
F6514:  CMP             R5, #1
F6516:  BLT             locret_F6528
F6518:  LDR             R0, [R3]; dest
F651A:  MOV             R2, R5; n
F651C:  MOV             R4, R3
F651E:  BLX             j_memcpy
F6522:  LDR             R0, [R4]
F6524:  ADD             R0, R5
F6526:  STR             R0, [R4]
F6528:  POP             {R4,R5,R7,PC}
