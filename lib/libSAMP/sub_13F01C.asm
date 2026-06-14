; =========================================================
; Game Engine Function: sub_13F01C
; Address            : 0x13F01C - 0x13F044
; =========================================================

13F01C:  PUSH            {R4,R5,R7,LR}
13F01E:  ADD             R7, SP, #8
13F020:  MOV             R4, R0
13F022:  LDRB.W          R0, [R0,#0x1B0]
13F026:  MOV             R5, R1
13F028:  CBZ             R0, loc_13F032
13F02A:  CBNZ            R5, loc_13F032
13F02C:  MOV             R0, R4
13F02E:  BL              sub_140610
13F032:  MOVS            R0, #0
13F034:  STRB.W          R5, [R4,#0x1B0]
13F038:  STRB            R0, [R4,#0x11]
13F03A:  STRB            R0, [R4,#8]
13F03C:  MOV.W           R0, #0xFFFFFFFF
13F040:  STR             R0, [R4,#4]
13F042:  POP             {R4,R5,R7,PC}
