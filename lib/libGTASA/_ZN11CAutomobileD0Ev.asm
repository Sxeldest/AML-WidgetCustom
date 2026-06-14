; =========================================================
; Game Engine Function: _ZN11CAutomobileD0Ev
; Address            : 0x54EADC - 0x54EB32
; =========================================================

54EADC:  PUSH            {R4,R6,R7,LR}
54EADE:  ADD             R7, SP, #8
54EAE0:  MOV             R4, R0
54EAE2:  LDR             R0, =(_ZTV11CAutomobile_ptr - 0x54EAE8)
54EAE4:  ADD             R0, PC; _ZTV11CAutomobile_ptr
54EAE6:  LDR             R1, [R0]; `vtable for'CAutomobile ...
54EAE8:  LDR.W           R0, [R4,#0x58C]; this
54EAEC:  ADDS            R1, #8
54EAEE:  STR             R1, [R4]
54EAF0:  CBZ             R0, loc_54EAFC
54EAF2:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
54EAF6:  MOVS            R0, #0
54EAF8:  STR.W           R0, [R4,#0x58C]
54EAFC:  LDR.W           R0, [R4,#0x98C]; this
54EB00:  CBZ             R0, loc_54EB0C
54EB02:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
54EB06:  MOVS            R0, #0
54EB08:  STR.W           R0, [R4,#0x98C]
54EB0C:  LDR.W           R0, [R4,#0x990]; this
54EB10:  CBZ             R0, loc_54EB1C
54EB12:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
54EB16:  MOVS            R0, #0
54EB18:  STR.W           R0, [R4,#0x990]
54EB1C:  ADD.W           R0, R4, #0x13C; this
54EB20:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
54EB24:  MOV             R0, R4; this
54EB26:  BLX             j__ZN8CVehicleD2Ev; CVehicle::~CVehicle()
54EB2A:  POP.W           {R4,R6,R7,LR}
54EB2E:  B.W             sub_199F80
