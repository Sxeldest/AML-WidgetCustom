; =========================================================
; Game Engine Function: _ZNK23CEventBuildingCollision17TakesPriorityOverERK6CEvent
; Address            : 0x37174C - 0x371770
; =========================================================

37174C:  PUSH            {R4,R5,R7,LR}
37174E:  ADD             R7, SP, #8
371750:  MOV             R4, R0
371752:  LDR             R0, [R1]
371754:  LDR             R2, [R0,#8]
371756:  MOV             R0, R1
371758:  BLX             R2
37175A:  MOV             R5, R0
37175C:  LDR             R0, [R4]
37175E:  LDR             R1, [R0,#8]
371760:  MOV             R0, R4
371762:  BLX             R1
371764:  MOVS            R1, #0
371766:  CMP             R5, R0
371768:  IT NE
37176A:  MOVNE           R1, #1
37176C:  MOV             R0, R1
37176E:  POP             {R4,R5,R7,PC}
