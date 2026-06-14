; =========================================================
; Game Engine Function: sub_1DE578
; Address            : 0x1DE578 - 0x1DE5A0
; =========================================================

1DE578:  PUSH            {R4,R10,R11,LR}
1DE57C:  ADD             R11, SP, #8
1DE580:  MOV             R4, R0
1DE584:  CMP             R4, #0
1DE588:  POPEQ           {R4,R10,R11,PC}
1DE58C:  LDR             R0, [R4,#0x10]; ptr
1DE590:  BL              free
1DE594:  MOV             R0, R4; ptr
1DE598:  POP             {R4,R10,R11,LR}
1DE59C:  B               free
