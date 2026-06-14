; =========================================================
; Game Engine Function: sub_FAE20
; Address            : 0xFAE20 - 0xFAE3C
; =========================================================

FAE20:  PUSH            {R4,R5,R7,LR}
FAE22:  ADD             R7, SP, #8
FAE24:  MOV             R4, R0
FAE26:  LDR             R0, [R0,#4]
FAE28:  CBZ             R0, loc_FAE2C
FAE2A:  POP             {R4,R5,R7,PC}
FAE2C:  MOVS            R0, #0x14; unsigned int
FAE2E:  BLX             j__Znwj; operator new(uint)
FAE32:  MOV             R5, R0
FAE34:  BL              sub_FA524
FAE38:  STR             R5, [R4,#4]
FAE3A:  POP             {R4,R5,R7,PC}
