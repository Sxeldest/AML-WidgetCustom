; =========================================================
; Game Engine Function: sub_20DE82
; Address            : 0x20DE82 - 0x20DE98
; =========================================================

20DE82:  PUSH            {R4,R6,R7,LR}
20DE84:  ADD             R7, SP, #8
20DE86:  MOV             R4, R0
20DE88:  ADDS            R0, #8; this
20DE8A:  BLX             j__ZNSt6__ndk110__time_putD2Ev; std::__time_put::~__time_put()
20DE8E:  MOV             R0, R4
20DE90:  POP.W           {R4,R6,R7,LR}
20DE94:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
