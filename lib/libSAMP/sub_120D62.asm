; =========================================================
; Game Engine Function: sub_120D62
; Address            : 0x120D62 - 0x120D90
; =========================================================

120D62:  PUSH            {R4-R7,LR}
120D64:  ADD             R7, SP, #0xC
120D66:  PUSH.W          {R8}
120D6A:  ADD.W           R8, R7, #0x10
120D6E:  LDRD.W          R12, LR, [R7,#arg_0]
120D72:  ADDS            R0, #4
120D74:  LDM.W           R8, {R4-R6,R8}
120D78:  STRD.W          R12, LR, [R7,#arg_0]
120D7C:  ADD.W           R12, R7, #0x10
120D80:  STM.W           R12, {R4-R6,R8}
120D84:  POP.W           {R8}
120D88:  POP.W           {R4-R7,LR}
120D8C:  B.W             sub_120DB4
