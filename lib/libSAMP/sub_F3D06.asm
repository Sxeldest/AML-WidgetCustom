; =========================================================
; Game Engine Function: sub_F3D06
; Address            : 0xF3D06 - 0xF3D22
; =========================================================

F3D06:  PUSH            {R4,R5,R7,LR}
F3D08:  ADD             R7, SP, #8
F3D0A:  MOV             R4, R0
F3D0C:  LDR             R0, [R0,#4]
F3D0E:  CBZ             R0, loc_F3D12
F3D10:  POP             {R4,R5,R7,PC}
F3D12:  MOVS            R0, #0x10; unsigned int
F3D14:  BLX             j__Znwj; operator new(uint)
F3D18:  MOV             R5, R0
F3D1A:  BL              sub_F3AA4
F3D1E:  STR             R5, [R4,#4]
F3D20:  POP             {R4,R5,R7,PC}
