; =========================================================
; Game Engine Function: sub_20E9FC
; Address            : 0x20E9FC - 0x20EA16
; =========================================================

20E9FC:  PUSH            {R4,R5,R7,LR}
20E9FE:  ADD             R7, SP, #8
20EA00:  MOV             R3, R2
20EA02:  CMP             R0, R1
20EA04:  BEQ             loc_20EA12
20EA06:  LDR             R4, [R0]
20EA08:  ADDS            R2, #4
20EA0A:  LDR             R5, [R3]
20EA0C:  STM             R0!, {R5}
20EA0E:  STM             R3!, {R4}
20EA10:  B               loc_20EA02
20EA12:  MOV             R0, R2
20EA14:  POP             {R4,R5,R7,PC}
