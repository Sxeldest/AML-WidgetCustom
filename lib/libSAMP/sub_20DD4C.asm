; =========================================================
; Game Engine Function: sub_20DD4C
; Address            : 0x20DD4C - 0x20DD62
; =========================================================

20DD4C:  PUSH            {R4,R6,R7,LR}
20DD4E:  ADD             R7, SP, #8
20DD50:  MOV             R4, R0
20DD52:  ADDS            R0, #0xC
20DD54:  BL              sub_20F514
20DD58:  MOV             R0, R4
20DD5A:  POP.W           {R4,R6,R7,LR}
20DD5E:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
