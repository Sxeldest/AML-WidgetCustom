; =========================================================
; Game Engine Function: sub_20DDC4
; Address            : 0x20DDC4 - 0x20DDDA
; =========================================================

20DDC4:  PUSH            {R4,R6,R7,LR}
20DDC6:  ADD             R7, SP, #8
20DDC8:  MOV             R4, R0
20DDCA:  ADDS            R0, #0xC
20DDCC:  BL              sub_20F578
20DDD0:  MOV             R0, R4
20DDD2:  POP.W           {R4,R6,R7,LR}
20DDD6:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
