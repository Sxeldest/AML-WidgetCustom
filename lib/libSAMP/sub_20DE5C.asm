; =========================================================
; Game Engine Function: sub_20DE5C
; Address            : 0x20DE5C - 0x20DE72
; =========================================================

20DE5C:  PUSH            {R4,R6,R7,LR}
20DE5E:  ADD             R7, SP, #8
20DE60:  MOV             R4, R0
20DE62:  ADDS            R0, #8; this
20DE64:  BLX             j__ZNSt6__ndk110__time_putD2Ev; std::__time_put::~__time_put()
20DE68:  MOV             R0, R4
20DE6A:  POP.W           {R4,R6,R7,LR}
20DE6E:  B.W             _ZNSt6__ndk17collateIcED2Ev_0; std::collate<char>::~collate()
