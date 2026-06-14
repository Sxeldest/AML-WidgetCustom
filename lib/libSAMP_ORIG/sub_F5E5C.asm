; =========================================================
; Game Engine Function: sub_F5E5C
; Address            : 0xF5E5C - 0xF5E72
; =========================================================

F5E5C:  PUSH            {R4,R6,R7,LR}
F5E5E:  ADD             R7, SP, #8
F5E60:  MOV             R4, R0
F5E62:  ADDS            R0, #0xC
F5E64:  BL              sub_F76C4
F5E68:  MOV             R0, R4
F5E6A:  POP.W           {R4,R6,R7,LR}
F5E6E:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
