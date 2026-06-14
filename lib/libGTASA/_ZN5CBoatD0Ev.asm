; =========================================================
; Game Engine Function: _ZN5CBoatD0Ev
; Address            : 0x56B134 - 0x56B18A
; =========================================================

56B134:  PUSH            {R4,R6,R7,LR}
56B136:  ADD             R7, SP, #8
56B138:  MOV             R4, R0
56B13A:  LDR             R0, =(_ZTV5CBoat_ptr - 0x56B140)
56B13C:  ADD             R0, PC; _ZTV5CBoat_ptr
56B13E:  LDR             R1, [R0]; `vtable for'CBoat ...
56B140:  LDR.W           R0, [R4,#0x58C]; this
56B144:  ADDS            R1, #8
56B146:  STR             R1, [R4]
56B148:  CBZ             R0, loc_56B154
56B14A:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
56B14E:  MOVS            R0, #0
56B150:  STR.W           R0, [R4,#0x58C]
56B154:  LDR.W           R0, [R4,#0x63C]; this
56B158:  CBZ             R0, loc_56B164
56B15A:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
56B15E:  MOVS            R0, #0
56B160:  STR.W           R0, [R4,#0x63C]
56B164:  LDR.W           R0, [R4,#0x640]; this
56B168:  CBZ             R0, loc_56B174
56B16A:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
56B16E:  MOVS            R0, #0
56B170:  STR.W           R0, [R4,#0x640]
56B174:  ADD.W           R0, R4, #0x13C; this
56B178:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
56B17C:  MOV             R0, R4; this
56B17E:  BLX             j__ZN8CVehicleD2Ev; CVehicle::~CVehicle()
56B182:  POP.W           {R4,R6,R7,LR}
56B186:  B.W             sub_199F80
