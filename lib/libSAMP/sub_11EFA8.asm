; =========================================================
; Game Engine Function: sub_11EFA8
; Address            : 0x11EFA8 - 0x11EFC4
; =========================================================

11EFA8:  PUSH            {R4,R5,R7,LR}
11EFAA:  ADD             R7, SP, #8
11EFAC:  MOV             R4, R0
11EFAE:  LDR             R0, [R0,#4]
11EFB0:  CBZ             R0, loc_11EFB4
11EFB2:  POP             {R4,R5,R7,PC}
11EFB4:  MOVS            R0, #0xC; unsigned int
11EFB6:  BLX             j__Znwj; operator new(uint)
11EFBA:  MOV             R5, R0
11EFBC:  BL              sub_11E8B4
11EFC0:  STR             R5, [R4,#4]
11EFC2:  POP             {R4,R5,R7,PC}
