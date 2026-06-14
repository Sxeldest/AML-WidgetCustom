; =========================================================
; Game Engine Function: sub_20524C
; Address            : 0x20524C - 0x205264
; =========================================================

20524C:  PUSH            {R4,R6,R7,LR}
20524E:  ADD             R7, SP, #8
205250:  MOV             R4, R0
205252:  CMP             R0, R1
205254:  ITTT NE
205256:  LDRDNE.W        R1, R2, [R1]; src
20525A:  MOVNE           R0, R4; int
20525C:  BLNE            sub_20E2C4
205260:  MOV             R0, R4
205262:  POP             {R4,R6,R7,PC}
