; =========================================================
; Game Engine Function: sub_F6866
; Address            : 0xF6866 - 0xF6878
; =========================================================

F6866:  PUSH            {R7,LR}
F6868:  MOV             R7, SP
F686A:  MOV             R2, R0
F686C:  LDR             R0, [R0]
F686E:  STR             R1, [R2]
F6870:  CBZ             R0, locret_F6876
F6872:  LDR             R1, [R2,#4]
F6874:  BLX             R1
F6876:  POP             {R7,PC}
