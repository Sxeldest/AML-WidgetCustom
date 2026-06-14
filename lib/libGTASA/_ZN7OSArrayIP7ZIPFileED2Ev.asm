; =========================================================
; Game Engine Function: _ZN7OSArrayIP7ZIPFileED2Ev
; Address            : 0x27CB20 - 0x27CB3A
; =========================================================

27CB20:  PUSH            {R4,R5,R7,LR}
27CB22:  ADD             R7, SP, #8
27CB24:  MOV             R4, R0
27CB26:  MOVS            R5, #0
27CB28:  LDR             R0, [R4,#8]; p
27CB2A:  STR             R5, [R4,#4]
27CB2C:  CBZ             R0, loc_27CB34
27CB2E:  BLX             free
27CB32:  STR             R5, [R4,#8]
27CB34:  MOV             R0, R4
27CB36:  STR             R5, [R4]
27CB38:  POP             {R4,R5,R7,PC}
