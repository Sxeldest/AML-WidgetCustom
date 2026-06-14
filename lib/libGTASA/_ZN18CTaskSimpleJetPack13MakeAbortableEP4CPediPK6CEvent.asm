; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x530C9C - 0x530D4A
; =========================================================

530C9C:  PUSH            {R4-R7,LR}
530C9E:  ADD             R7, SP, #0xC
530CA0:  PUSH.W          {R11}
530CA4:  MOV             R6, R3
530CA6:  MOV             R4, R1
530CA8:  MOV             R5, R0
530CAA:  CBZ             R6, loc_530D06
530CAC:  LDR             R0, [R6]
530CAE:  LDR             R1, [R0,#8]
530CB0:  MOV             R0, R6
530CB2:  BLX             R1
530CB4:  CMP             R0, #9
530CB6:  BNE             loc_530CDC
530CB8:  ADDW            R0, R4, #0x544
530CBC:  VLDR            S0, [R0]
530CC0:  VCMPE.F32       S0, #0.0
530CC4:  VMRS            APSR_nzcv, FPSCR
530CC8:  BGT             loc_530CFE
530CCA:  LDRB.W          R0, [R4,#0x484]
530CCE:  LSLS            R0, R0, #0x1F
530CD0:  ITT EQ
530CD2:  LDRBEQ.W        R0, [R4,#0x45]
530CD6:  MOVSEQ.W        R0, R0,LSL#31
530CDA:  BEQ             loc_530CFE
530CDC:  MOV             R0, R4; this
530CDE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
530CE2:  CMP             R0, #1
530CE4:  BNE             loc_530CF2
530CE6:  LDR             R0, [R6]
530CE8:  LDR             R1, [R0,#8]
530CEA:  MOV             R0, R6
530CEC:  BLX             R1
530CEE:  CMP             R0, #0x3A ; ':'
530CF0:  BEQ             loc_530D42
530CF2:  LDR             R0, [R6]
530CF4:  LDR             R1, [R0,#0xC]
530CF6:  MOV             R0, R6
530CF8:  BLX             R1
530CFA:  CMP             R0, #0x3F ; '?'
530CFC:  BGE             loc_530D06
530CFE:  MOVS            R0, #0
530D00:  POP.W           {R11}
530D04:  POP             {R4-R7,PC}
530D06:  LDRB            R0, [R5,#0xC]
530D08:  CBZ             R0, loc_530D1E
530D0A:  MOV             R0, R4; this
530D0C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
530D10:  CMP             R0, #1
530D12:  BNE             loc_530D1E
530D14:  MOV             R0, R4; this
530D16:  BLX             j__ZN4CPed31ReplaceWeaponWhenExitingVehicleEv; CPed::ReplaceWeaponWhenExitingVehicle(void)
530D1A:  MOVS            R0, #0
530D1C:  STRB            R0, [R5,#0xC]
530D1E:  LDR             R0, [R5,#0x64]; this
530D20:  MOVS            R1, #1
530D22:  STRB            R1, [R5,#8]
530D24:  CBZ             R0, loc_530D2E
530D26:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
530D2A:  MOVS            R0, #0
530D2C:  STR             R0, [R5,#0x64]
530D2E:  LDR             R0, [R5,#0x68]; this
530D30:  CBZ             R0, loc_530D3A
530D32:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
530D36:  MOVS            R0, #0
530D38:  STR             R0, [R5,#0x68]
530D3A:  ADD.W           R0, R4, #0x13C; this
530D3E:  BLX             j__ZN17CAEPedAudioEntity14TurnOffJetPackEv; CAEPedAudioEntity::TurnOffJetPack(void)
530D42:  MOVS            R0, #1
530D44:  POP.W           {R11}
530D48:  POP             {R4-R7,PC}
