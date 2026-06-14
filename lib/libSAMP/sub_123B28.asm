; =========================================================
; Game Engine Function: sub_123B28
; Address            : 0x123B28 - 0x123B44
; =========================================================

123B28:  PUSH            {R4,R5,R7,LR}
123B2A:  ADD             R7, SP, #8
123B2C:  MOV             R4, R0
123B2E:  LDR             R0, [R0,#4]
123B30:  CBZ             R0, loc_123B34
123B32:  POP             {R4,R5,R7,PC}
123B34:  MOVS            R0, #4; unsigned int
123B36:  BLX             j__Znwj; operator new(uint)
123B3A:  MOV             R5, R0
123B3C:  BL              sub_1238D0
123B40:  STR             R5, [R4,#4]
123B42:  POP             {R4,R5,R7,PC}
