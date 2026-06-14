; =========================================================
; Game Engine Function: _ZN7CWeapon16StopWeaponEffectEv
; Address            : 0x5E22D4 - 0x5E22F2
; =========================================================

5E22D4:  PUSH            {R4,R6,R7,LR}
5E22D6:  ADD             R7, SP, #8
5E22D8:  MOV             R4, R0
5E22DA:  LDR             R0, [R4,#0x18]; this
5E22DC:  CMP             R0, #0
5E22DE:  ITT NE
5E22E0:  LDRNE           R1, [R4]
5E22E2:  CMPNE           R1, #0x12
5E22E4:  BNE             loc_5E22E8
5E22E6:  POP             {R4,R6,R7,PC}
5E22E8:  BLX.W           j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
5E22EC:  MOVS            R0, #0
5E22EE:  STR             R0, [R4,#0x18]
5E22F0:  POP             {R4,R6,R7,PC}
