; =========================================================
; Game Engine Function: sub_11D81E
; Address            : 0x11D81E - 0x11D84A
; =========================================================

11D81E:  PUSH            {R4-R7,LR}
11D820:  ADD             R7, SP, #0xC
11D822:  PUSH.W          {R11}
11D826:  ADD.W           R6, R7, #0x10
11D82A:  LDRD.W          R12, LR, [R7,#arg_0]
11D82E:  ADDS            R0, #4
11D830:  LDM             R6, {R4-R6}
11D832:  STRD.W          R12, LR, [R7,#arg_0]
11D836:  ADD.W           R12, R7, #0x10
11D83A:  STM.W           R12, {R4-R6}
11D83E:  POP.W           {R11}
11D842:  POP.W           {R4-R7,LR}
11D846:  B.W             sub_11D870
