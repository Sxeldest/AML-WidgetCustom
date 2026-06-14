; =========================================================
; Game Engine Function: sub_EC0EC
; Address            : 0xEC0EC - 0xEC104
; =========================================================

EC0EC:  PUSH            {R4,R5,R7,LR}
EC0EE:  ADD             R7, SP, #8
EC0F0:  MOV             R5, R0
EC0F2:  MOVS            R0, #0xC; unsigned int
EC0F4:  BLX             j__Znwj; operator new(uint)
EC0F8:  MOV             R4, R0
EC0FA:  MOV             R1, R5
EC0FC:  BL              sub_EC10E
EC100:  MOV             R0, R4
EC102:  POP             {R4,R5,R7,PC}
