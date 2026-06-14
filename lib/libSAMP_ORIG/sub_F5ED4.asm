; =========================================================
; Game Engine Function: sub_F5ED4
; Address            : 0xF5ED4 - 0xF5EEA
; =========================================================

F5ED4:  PUSH            {R4,R6,R7,LR}
F5ED6:  ADD             R7, SP, #8
F5ED8:  MOV             R4, R0
F5EDA:  ADDS            R0, #0xC
F5EDC:  BL              sub_F7728
F5EE0:  MOV             R0, R4
F5EE2:  POP.W           {R4,R6,R7,LR}
F5EE6:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
