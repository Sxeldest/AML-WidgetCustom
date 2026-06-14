; =========================================================
; Game Engine Function: _ZN11CAutomobile15StopNitroEffectEv
; Address            : 0x54EAB0 - 0x54EADC
; =========================================================

54EAB0:  PUSH            {R4,R6,R7,LR}
54EAB2:  ADD             R7, SP, #8
54EAB4:  MOV             R4, R0
54EAB6:  LDR.W           R0, [R4,#0x98C]; this
54EABA:  CBZ             R0, loc_54EAC6
54EABC:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
54EAC0:  MOVS            R0, #0
54EAC2:  STR.W           R0, [R4,#0x98C]
54EAC6:  LDR.W           R0, [R4,#0x990]; this
54EACA:  CMP             R0, #0
54EACC:  IT EQ
54EACE:  POPEQ           {R4,R6,R7,PC}
54EAD0:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
54EAD4:  MOVS            R0, #0
54EAD6:  STR.W           R0, [R4,#0x990]
54EADA:  POP             {R4,R6,R7,PC}
