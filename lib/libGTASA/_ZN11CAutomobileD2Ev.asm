; =========================================================
; Game Engine Function: _ZN11CAutomobileD2Ev
; Address            : 0x54EA58 - 0x54EAAA
; =========================================================

54EA58:  PUSH            {R4,R6,R7,LR}
54EA5A:  ADD             R7, SP, #8
54EA5C:  MOV             R4, R0
54EA5E:  LDR             R0, =(_ZTV11CAutomobile_ptr - 0x54EA64)
54EA60:  ADD             R0, PC; _ZTV11CAutomobile_ptr
54EA62:  LDR             R1, [R0]; `vtable for'CAutomobile ...
54EA64:  LDR.W           R0, [R4,#0x58C]; this
54EA68:  ADDS            R1, #8
54EA6A:  STR             R1, [R4]
54EA6C:  CBZ             R0, loc_54EA78
54EA6E:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
54EA72:  MOVS            R0, #0
54EA74:  STR.W           R0, [R4,#0x58C]
54EA78:  LDR.W           R0, [R4,#0x98C]; this
54EA7C:  CBZ             R0, loc_54EA88
54EA7E:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
54EA82:  MOVS            R0, #0
54EA84:  STR.W           R0, [R4,#0x98C]
54EA88:  LDR.W           R0, [R4,#0x990]; this
54EA8C:  CBZ             R0, loc_54EA98
54EA8E:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
54EA92:  MOVS            R0, #0
54EA94:  STR.W           R0, [R4,#0x990]
54EA98:  ADD.W           R0, R4, #0x13C; this
54EA9C:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
54EAA0:  MOV             R0, R4; this
54EAA2:  POP.W           {R4,R6,R7,LR}
54EAA6:  B.W             sub_195C7C
