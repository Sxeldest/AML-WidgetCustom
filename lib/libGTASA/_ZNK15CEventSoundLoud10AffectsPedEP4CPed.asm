; =========================================================
; Game Engine Function: _ZNK15CEventSoundLoud10AffectsPedEP4CPed
; Address            : 0x3778C0 - 0x37791E
; =========================================================

3778C0:  PUSH            {R4-R7,LR}
3778C2:  ADD             R7, SP, #0xC
3778C4:  PUSH.W          {R11}
3778C8:  MOV             R6, R1
3778CA:  MOV             R5, R0
3778CC:  MOV             R0, R6; this
3778CE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3778D2:  CBNZ            R0, loc_377914
3778D4:  MOV             R0, R6; this
3778D6:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3778DA:  CMP             R0, #1
3778DC:  BNE             loc_377914
3778DE:  LDR             R0, [R5]
3778E0:  LDR             R1, [R0,#0x2C]
3778E2:  MOV             R0, R5
3778E4:  BLX             R1
3778E6:  MOVS            R4, #0
3778E8:  CBZ             R0, loc_377916
3778EA:  LDR             R0, [R6,#0x14]
3778EC:  MOVS            R1, #0; CEntity *
3778EE:  ADD.W           R2, R0, #0x30 ; '0'
3778F2:  CMP             R0, #0
3778F4:  IT EQ
3778F6:  ADDEQ           R2, R6, #4; CVector *
3778F8:  MOV             R0, R5; this
3778FA:  BLX             j__ZNK6CEvent13GetSoundLevelEPK7CEntityRK7CVector; CEvent::GetSoundLevel(CEntity const*,CVector const&)
3778FE:  VLDR            S0, =70.0
377902:  VMOV            S2, R0
377906:  VCMPE.F32       S2, S0
37790A:  VMRS            APSR_nzcv, FPSCR
37790E:  IT GE
377910:  MOVGE           R4, #1
377912:  B               loc_377916
377914:  MOVS            R4, #0
377916:  MOV             R0, R4
377918:  POP.W           {R11}
37791C:  POP             {R4-R7,PC}
