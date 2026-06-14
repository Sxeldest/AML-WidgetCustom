; =========================================================
; Game Engine Function: sub_161B14
; Address            : 0x161B14 - 0x161B30
; =========================================================

161B14:  PUSH            {R4,R5,R7,LR}
161B16:  ADD             R7, SP, #8
161B18:  MOV             R4, R0
161B1A:  LDR             R0, [R0,#4]
161B1C:  CBZ             R0, loc_161B20
161B1E:  POP             {R4,R5,R7,PC}
161B20:  MOVS            R0, #8; unsigned int
161B22:  BLX             j__Znwj; operator new(uint)
161B26:  MOV             R5, R0
161B28:  BL              sub_1619A4
161B2C:  STR             R5, [R4,#4]
161B2E:  POP             {R4,R5,R7,PC}
