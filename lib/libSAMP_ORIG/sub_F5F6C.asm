; =========================================================
; Game Engine Function: sub_F5F6C
; Address            : 0xF5F6C - 0xF5F82
; =========================================================

F5F6C:  PUSH            {R4,R6,R7,LR}
F5F6E:  ADD             R7, SP, #8
F5F70:  MOV             R4, R0
F5F72:  ADDS            R0, #8; this
F5F74:  BLX             j__ZNSt6__ndk110__time_putD2Ev; std::__time_put::~__time_put()
F5F78:  MOV             R0, R4
F5F7A:  POP.W           {R4,R6,R7,LR}
F5F7E:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
