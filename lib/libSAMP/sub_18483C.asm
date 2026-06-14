; =========================================================
; Game Engine Function: sub_18483C
; Address            : 0x18483C - 0x184888
; =========================================================

18483C:  PUSH            {R4-R7,LR}
18483E:  ADD             R7, SP, #0xC
184840:  PUSH.W          {R11}
184844:  SUB             SP, SP, #0x18
184846:  LDRB.W          R3, [R0,#0x80]
18484A:  CBZ             R3, loc_184880
18484C:  ADD.W           R12, R0, #0x114
184850:  ADD.W           R3, R0, #0xE4
184854:  ADD.W           LR, R0, #0x104
184858:  ADD.W           R4, R0, #0xD4
18485C:  STRD.W          LR, R12, [SP,#0x28+var_18]
184860:  ADD.W           R12, R0, #0x84
184864:  STRD.W          R4, R3, [SP,#0x28+var_20]
184868:  ADD.W           R5, R0, #0x124
18486C:  ADD.W           R3, R0, #0xC4
184870:  ADD.W           R6, R0, #0xF4
184874:  MOV             R0, R2
184876:  MOV             R2, R12
184878:  STRD.W          R6, R5, [SP,#0x28+var_28]
18487C:  BL              sub_186AF0
184880:  ADD             SP, SP, #0x18
184882:  POP.W           {R11}
184886:  POP             {R4-R7,PC}
