; =========================================================
; Game Engine Function: sub_12337C
; Address            : 0x12337C - 0x12339A
; =========================================================

12337C:  PUSH            {R4,R5,R7,LR}
12337E:  ADD             R7, SP, #8
123380:  MOV             R4, R0
123382:  LDR             R0, [R0,#4]
123384:  CBZ             R0, loc_123388
123386:  POP             {R4,R5,R7,PC}
123388:  MOVW            R0, #0x4004; unsigned int
12338C:  BLX             j__Znwj; operator new(uint)
123390:  MOV             R5, R0
123392:  BL              sub_121BA8
123396:  STR             R5, [R4,#4]
123398:  POP             {R4,R5,R7,PC}
