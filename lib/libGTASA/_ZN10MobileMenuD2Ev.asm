; =========================================================
; Game Engine Function: _ZN10MobileMenuD2Ev
; Address            : 0x29B6DC - 0x29B6F6
; =========================================================

29B6DC:  PUSH            {R4,R5,R7,LR}
29B6DE:  ADD             R7, SP, #8
29B6E0:  MOV             R4, R0
29B6E2:  MOVS            R5, #0
29B6E4:  LDR             R0, [R4,#0x28]; p
29B6E6:  STR             R5, [R4,#0x24]
29B6E8:  CBZ             R0, loc_29B6F0
29B6EA:  BLX             free
29B6EE:  STR             R5, [R4,#0x28]
29B6F0:  MOV             R0, R4
29B6F2:  STR             R5, [R4,#0x20]
29B6F4:  POP             {R4,R5,R7,PC}
