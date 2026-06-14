; =========================================================
; Game Engine Function: alIsSource
; Address            : 0x2566EC - 0x25671C
; =========================================================

2566EC:  PUSH            {R4,R5,R7,LR}
2566EE:  ADD             R7, SP, #8
2566F0:  MOV             R4, R0
2566F2:  BLX             j_GetContextRef
2566F6:  MOV             R5, R0
2566F8:  CBZ             R5, loc_256716
2566FA:  ADD.W           R0, R5, #8
2566FE:  MOV             R1, R4
256700:  BLX             j_LookupUIntMapKey
256704:  MOV             R4, R0
256706:  MOV             R0, R5
256708:  BLX             j_ALCcontext_DecRef
25670C:  CMP             R4, #0
25670E:  IT NE
256710:  MOVNE           R4, #1
256712:  MOV             R0, R4
256714:  POP             {R4,R5,R7,PC}
256716:  MOVS            R4, #0
256718:  MOV             R0, R4
25671A:  POP             {R4,R5,R7,PC}
