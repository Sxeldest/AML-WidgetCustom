; =========================================================
; Game Engine Function: sub_1F3068
; Address            : 0x1F3068 - 0x1F307E
; =========================================================

1F3068:  PUSH            {R4,R6,R7,LR}
1F306A:  ADD             R7, SP, #8
1F306C:  MOV             R3, R2
1F306E:  MOV             R2, R1
1F3070:  LDRD.W          R4, R1, [R0]
1F3074:  MOV             R0, R4
1F3076:  POP.W           {R4,R6,R7,LR}
1F307A:  B.W             sub_1F307E
