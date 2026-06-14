; =========================================================
; Game Engine Function: sub_EBE7C
; Address            : 0xEBE7C - 0xEBE94
; =========================================================

EBE7C:  PUSH            {R4,R5,R7,LR}
EBE7E:  ADD             R7, SP, #8
EBE80:  MOV             R5, R0
EBE82:  MOVS            R0, #0xC; unsigned int
EBE84:  BLX             j__Znwj; operator new(uint)
EBE88:  MOV             R4, R0
EBE8A:  MOV             R1, R5
EBE8C:  BL              sub_EBE9E
EBE90:  MOV             R0, R4
EBE92:  POP             {R4,R5,R7,PC}
