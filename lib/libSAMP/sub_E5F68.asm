; =========================================================
; Game Engine Function: sub_E5F68
; Address            : 0xE5F68 - 0xE5F80
; =========================================================

E5F68:  PUSH            {R4,R5,R7,LR}
E5F6A:  ADD             R7, SP, #8
E5F6C:  MOV             R5, R0
E5F6E:  MOVS            R0, #0xC; unsigned int
E5F70:  BLX             j__Znwj; operator new(uint)
E5F74:  MOV             R4, R0
E5F76:  MOV             R1, R5; s
E5F78:  BL              sub_DC6DC
E5F7C:  MOV             R0, R4
E5F7E:  POP             {R4,R5,R7,PC}
