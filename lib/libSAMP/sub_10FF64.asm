; =========================================================
; Game Engine Function: sub_10FF64
; Address            : 0x10FF64 - 0x10FF80
; =========================================================

10FF64:  PUSH            {R4,R5,R7,LR}
10FF66:  ADD             R7, SP, #8
10FF68:  MOV             R4, R0
10FF6A:  LDR             R0, [R0,#4]
10FF6C:  CBZ             R0, loc_10FF70
10FF6E:  POP             {R4,R5,R7,PC}
10FF70:  MOVS            R0, #8; unsigned int
10FF72:  BLX             j__Znwj; operator new(uint)
10FF76:  MOV             R5, R0
10FF78:  BL              sub_10FCDC
10FF7C:  STR             R5, [R4,#4]
10FF7E:  POP             {R4,R5,R7,PC}
