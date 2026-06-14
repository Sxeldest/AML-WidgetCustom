; =========================================================
; Game Engine Function: _ZN7OSArrayIPcED2Ev
; Address            : 0x27D27C - 0x27D296
; =========================================================

27D27C:  PUSH            {R4,R5,R7,LR}
27D27E:  ADD             R7, SP, #8
27D280:  MOV             R4, R0
27D282:  MOVS            R5, #0
27D284:  LDR             R0, [R4,#8]; p
27D286:  STR             R5, [R4,#4]
27D288:  CBZ             R0, loc_27D290
27D28A:  BLX             free
27D28E:  STR             R5, [R4,#8]
27D290:  MOV             R0, R4
27D292:  STR             R5, [R4]
27D294:  POP             {R4,R5,R7,PC}
