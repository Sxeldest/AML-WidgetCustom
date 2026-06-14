; =========================================================
; Game Engine Function: _ZN13CEmergencyPedD0Ev
; Address            : 0x49EE40 - 0x49EE50
; =========================================================

49EE40:  PUSH            {R7,LR}
49EE42:  MOV             R7, SP
49EE44:  BLX             j__ZN4CPedD2Ev; CPed::~CPed()
49EE48:  POP.W           {R7,LR}
49EE4C:  B.W             sub_19B910
