; =========================================================
; Game Engine Function: _ZN5CBoatD2Ev
; Address            : 0x56B0DC - 0x56B12E
; =========================================================

56B0DC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CBoat::~CBoat()'
56B0DE:  ADD             R7, SP, #8
56B0E0:  MOV             R4, R0
56B0E2:  LDR             R0, =(_ZTV5CBoat_ptr - 0x56B0E8)
56B0E4:  ADD             R0, PC; _ZTV5CBoat_ptr
56B0E6:  LDR             R1, [R0]; `vtable for'CBoat ...
56B0E8:  LDR.W           R0, [R4,#0x58C]; this
56B0EC:  ADDS            R1, #8
56B0EE:  STR             R1, [R4]
56B0F0:  CBZ             R0, loc_56B0FC
56B0F2:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
56B0F6:  MOVS            R0, #0
56B0F8:  STR.W           R0, [R4,#0x58C]
56B0FC:  LDR.W           R0, [R4,#0x63C]; this
56B100:  CBZ             R0, loc_56B10C
56B102:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
56B106:  MOVS            R0, #0
56B108:  STR.W           R0, [R4,#0x63C]
56B10C:  LDR.W           R0, [R4,#0x640]; this
56B110:  CBZ             R0, loc_56B11C
56B112:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
56B116:  MOVS            R0, #0
56B118:  STR.W           R0, [R4,#0x640]
56B11C:  ADD.W           R0, R4, #0x13C; this
56B120:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
56B124:  MOV             R0, R4; this
56B126:  POP.W           {R4,R6,R7,LR}
56B12A:  B.W             sub_195C7C
