; =========================================================
; Game Engine Function: sub_F5F92
; Address            : 0xF5F92 - 0xF5FA8
; =========================================================

F5F92:  PUSH            {R4,R6,R7,LR}
F5F94:  ADD             R7, SP, #8
F5F96:  MOV             R4, R0
F5F98:  ADDS            R0, #8; this
F5F9A:  BLX             j__ZNSt6__ndk110__time_putD2Ev; std::__time_put::~__time_put()
F5F9E:  MOV             R0, R4
F5FA0:  POP.W           {R4,R6,R7,LR}
F5FA4:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
