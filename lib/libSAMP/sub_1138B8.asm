; =========================================================
; Game Engine Function: sub_1138B8
; Address            : 0x1138B8 - 0x1138D8
; =========================================================

1138B8:  PUSH            {R7,LR}
1138BA:  MOV             R7, SP
1138BC:  SUB             SP, SP, #0x10
1138BE:  LDRD.W          LR, R12, [R7,#8]
1138C2:  ADDS            R0, #4
1138C4:  STR.W           R12, [SP,#0x18+var_C]
1138C8:  ADD.W           R12, SP, #0x18+var_C
1138CC:  STRD.W          LR, R12, [SP,#0x18+var_18]
1138D0:  BL              sub_163176
1138D4:  ADD             SP, SP, #0x10
1138D6:  POP             {R7,PC}
