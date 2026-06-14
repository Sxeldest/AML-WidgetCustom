; =========================================================
; Game Engine Function: sub_10BD04
; Address            : 0x10BD04 - 0x10BD36
; =========================================================

10BD04:  PUSH            {R4,R5,R7,LR}
10BD06:  ADD             R7, SP, #8
10BD08:  SUB             SP, SP, #0x10
10BD0A:  MOV             R12, R0
10BD0C:  LDR             R0, =(off_234A38 - 0x10BD12)
10BD0E:  ADD             R0, PC; off_234A38
10BD10:  LDR             R0, [R0]; dword_23DEF8
10BD12:  LDR             R0, [R0]
10BD14:  CBZ             R0, loc_10BD32
10BD16:  LDR.W           LR, [R7,#arg_0]
10BD1A:  ADD.W           R12, R12, LR,LSL#4
10BD1E:  LDRD.W          LR, R4, [R12,#8]
10BD22:  LDRD.W          R5, R12, [R12,#0x10]
10BD26:  STRD.W          LR, R4, [SP,#0x18+var_18]
10BD2A:  STRD.W          R5, R12, [SP,#0x18+var_10]
10BD2E:  BL              sub_F15E0
10BD32:  ADD             SP, SP, #0x10
10BD34:  POP             {R4,R5,R7,PC}
