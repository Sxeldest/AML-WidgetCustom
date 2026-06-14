; =========================================================
; Game Engine Function: _ZN7OSArrayIP8LoadTaskED2Ev
; Address            : 0x27E6EE - 0x27E708
; =========================================================

27E6EE:  PUSH            {R4,R5,R7,LR}
27E6F0:  ADD             R7, SP, #8
27E6F2:  MOV             R4, R0
27E6F4:  MOVS            R5, #0
27E6F6:  LDR             R0, [R4,#8]; p
27E6F8:  STR             R5, [R4,#4]
27E6FA:  CBZ             R0, loc_27E702
27E6FC:  BLX             free
27E700:  STR             R5, [R4,#8]
27E702:  MOV             R0, R4
27E704:  STR             R5, [R4]
27E706:  POP             {R4,R5,R7,PC}
