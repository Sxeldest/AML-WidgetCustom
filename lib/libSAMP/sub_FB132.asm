; =========================================================
; Game Engine Function: sub_FB132
; Address            : 0xFB132 - 0xFB16C
; =========================================================

FB132:  PUSH            {R4-R7,LR}
FB134:  ADD             R7, SP, #0xC
FB136:  PUSH.W          {R8-R11}
FB13A:  ADD.W           R10, R7, #0x18
FB13E:  LDRD.W          R12, LR, [R7,#arg_0]
FB142:  LDRD.W          R11, R5, [R7,#arg_8]
FB146:  ADDS            R0, #4
FB148:  LDM.W           R10, {R6,R8-R10}
FB14C:  STR.W           R12, [R7,#arg_0]
FB150:  ADD.W           R12, R7, #0x14
FB154:  LDR             R4, [R7,#arg_20]
FB156:  STRD.W          LR, R11, [R7,#arg_4]
FB15A:  STM.W           R12, {R5,R6,R8-R10}
FB15E:  STR             R4, [R7,#arg_20]
FB160:  POP.W           {R8-R11}
FB164:  POP.W           {R4-R7,LR}
FB168:  B.W             sub_FB190
