; =========================================================
; Game Engine Function: _ZN7OSArrayIP18LeaderboardQueryStED2Ev
; Address            : 0x27CB06 - 0x27CB20
; =========================================================

27CB06:  PUSH            {R4,R5,R7,LR}
27CB08:  ADD             R7, SP, #8
27CB0A:  MOV             R4, R0
27CB0C:  MOVS            R5, #0
27CB0E:  LDR             R0, [R4,#8]; p
27CB10:  STR             R5, [R4,#4]
27CB12:  CBZ             R0, loc_27CB1A
27CB14:  BLX             free
27CB18:  STR             R5, [R4,#8]
27CB1A:  MOV             R0, R4
27CB1C:  STR             R5, [R4]
27CB1E:  POP             {R4,R5,R7,PC}
