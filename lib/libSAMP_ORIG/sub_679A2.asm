; =========================================================
; Game Engine Function: sub_679A2
; Address            : 0x679A2 - 0x679BC
; =========================================================

679A2:  PUSH            {R4,R6,R7,LR}
679A4:  ADD             R7, SP, #8
679A6:  MOV             R4, R0
679A8:  LDR             R0, [R0]; this
679AA:  MOVS            R1, #0
679AC:  STR             R1, [R4]
679AE:  CBZ             R0, loc_679B8
679B0:  BLX             j__ZNSt6__ndk115__thread_structD2Ev_0; std::__thread_struct::~__thread_struct()
679B4:  BLX             j__ZdlPv; operator delete(void *)
679B8:  MOV             R0, R4
679BA:  POP             {R4,R6,R7,PC}
