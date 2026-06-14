; =========================================================
; Game Engine Function: _ZNSt13runtime_erroraSERKS_
; Address            : 0xF8420 - 0xF8432
; =========================================================

F8420:  PUSH            {R4,R6,R7,LR}
F8422:  ADD             R7, SP, #8
F8424:  MOV             R4, R0
F8426:  ADDS            R0, #4
F8428:  ADDS            R1, #4
F842A:  BL              sub_F8342
F842E:  MOV             R0, R4
F8430:  POP             {R4,R6,R7,PC}
