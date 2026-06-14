; =========================================================
; Game Engine Function: _ZN7OSArrayIP7OALBaseED2Ev
; Address            : 0x27FF16 - 0x27FF30
; =========================================================

27FF16:  PUSH            {R4,R5,R7,LR}
27FF18:  ADD             R7, SP, #8
27FF1A:  MOV             R4, R0
27FF1C:  MOVS            R5, #0
27FF1E:  LDR             R0, [R4,#8]; p
27FF20:  STR             R5, [R4,#4]
27FF22:  CBZ             R0, loc_27FF2A
27FF24:  BLX             free
27FF28:  STR             R5, [R4,#8]
27FF2A:  MOV             R0, R4
27FF2C:  STR             R5, [R4]
27FF2E:  POP             {R4,R5,R7,PC}
