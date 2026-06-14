; =========================================================
; Game Engine Function: _ZN7OSArrayIP9OALSourceED2Ev
; Address            : 0x27FF30 - 0x27FF4A
; =========================================================

27FF30:  PUSH            {R4,R5,R7,LR}
27FF32:  ADD             R7, SP, #8
27FF34:  MOV             R4, R0
27FF36:  MOVS            R5, #0
27FF38:  LDR             R0, [R4,#8]; p
27FF3A:  STR             R5, [R4,#4]
27FF3C:  CBZ             R0, loc_27FF44
27FF3E:  BLX             free
27FF42:  STR             R5, [R4,#8]
27FF44:  MOV             R0, R4
27FF46:  STR             R5, [R4]
27FF48:  POP             {R4,R5,R7,PC}
