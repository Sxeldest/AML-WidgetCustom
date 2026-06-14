; =========================================================
; Game Engine Function: _ZNK16CEventSoundQuiet10AffectsPedEP4CPed
; Address            : 0x3777A4 - 0x3778BE
; =========================================================

3777A4:  PUSH            {R4-R7,LR}
3777A6:  ADD             R7, SP, #0xC
3777A8:  PUSH.W          {R8,R9,R11}
3777AC:  VPUSH           {D8}
3777B0:  MOV             R4, R1
3777B2:  MOV             R5, R0
3777B4:  MOV             R0, R4; this
3777B6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3777BA:  CMP             R0, #0
3777BC:  BNE             loc_377880
3777BE:  MOV             R0, R4; this
3777C0:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3777C4:  CMP             R0, #1
3777C6:  BNE             loc_377880
3777C8:  LDR             R0, [R5]
3777CA:  LDR             R1, [R0,#0x2C]
3777CC:  MOV             R0, R5
3777CE:  BLX             R1
3777D0:  CMP             R0, #0
3777D2:  BEQ             loc_377880
3777D4:  LDR             R0, [R4,#0x14]
3777D6:  ADD.W           R8, R4, #4
3777DA:  MOVS            R1, #0; CEntity *
3777DC:  MOVS            R6, #0
3777DE:  CMP             R0, #0
3777E0:  MOV             R2, R8
3777E2:  IT NE
3777E4:  ADDNE.W         R2, R0, #0x30 ; '0'; CVector *
3777E8:  MOV             R0, R5; this
3777EA:  BLX             j__ZNK6CEvent13GetSoundLevelEPK7CEntityRK7CVector; CEvent::GetSoundLevel(CEntity const*,CVector const&)
3777EE:  VMOV.F32        S0, #30.0
3777F2:  VMOV            S16, R0
3777F6:  VCMPE.F32       S16, S0
3777FA:  VMRS            APSR_nzcv, FPSCR
3777FE:  BLT             loc_377882
377800:  LDR.W           R0, [R4,#0x440]
377804:  ADDS            R0, #0x38 ; '8'; this
377806:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
37780A:  MOV             R9, R0
37780C:  CMP.W           R9, #0
377810:  BEQ             loc_37787C
377812:  LDR.W           R0, [R9]
377816:  LDR             R1, [R0,#8]
377818:  MOV             R0, R9
37781A:  BLX             R1
37781C:  CMP             R0, #0x3E ; '>'
37781E:  BNE             loc_37787C
377820:  LDR.W           R0, [R9]
377824:  LDR             R1, [R0,#0x2C]
377826:  MOV             R0, R9
377828:  BLX             R1
37782A:  MOV             R6, R0
37782C:  LDR             R0, [R5]
37782E:  LDR             R1, [R0,#0x2C]
377830:  MOV             R0, R5
377832:  BLX             R1
377834:  CMP             R6, R0
377836:  BNE             loc_37787C
377838:  LDR.W           R0, [R9,#0x18]
37783C:  LDR             R1, [R5,#0x18]
37783E:  SUBS            R0, R1, R0
377840:  CMP.W           R0, #0x7D0
377844:  BLT             loc_37788E
377846:  VLDR            S0, [R9,#0x1C]
37784A:  VLDR            S2, [R5,#0x1C]
37784E:  VLDR            D16, [R9,#0x20]
377852:  VSUB.F32        S0, S2, S0
377856:  VLDR            D17, [R5,#0x20]
37785A:  VSUB.F32        D16, D17, D16
37785E:  VMUL.F32        D1, D16, D16
377862:  VMUL.F32        S0, S0, S0
377866:  VADD.F32        S0, S0, S2
37786A:  VADD.F32        S0, S0, S3
37786E:  VMOV.F32        S2, #1.0
377872:  VCMPE.F32       S0, S2
377876:  VMRS            APSR_nzcv, FPSCR
37787A:  BLT             loc_37788E
37787C:  MOVS            R6, #1
37787E:  B               loc_377882
377880:  MOVS            R6, #0
377882:  MOV             R0, R6
377884:  VPOP            {D8}
377888:  POP.W           {R8,R9,R11}
37788C:  POP             {R4-R7,PC}
37788E:  LDR             R0, [R4,#0x14]
377890:  MOVS            R1, #0; CEntity *
377892:  MOVS            R6, #0
377894:  CMP             R0, #0
377896:  IT NE
377898:  ADDNE.W         R8, R0, #0x30 ; '0'
37789C:  MOV             R0, R9; this
37789E:  MOV             R2, R8; CVector *
3778A0:  BLX             j__ZNK6CEvent13GetSoundLevelEPK7CEntityRK7CVector; CEvent::GetSoundLevel(CEntity const*,CVector const&)
3778A4:  VMOV            S0, R0
3778A8:  VMOV.F32        S2, #3.0
3778AC:  VSUB.F32        S0, S16, S0
3778B0:  VCMPE.F32       S0, S2
3778B4:  VMRS            APSR_nzcv, FPSCR
3778B8:  IT GE
3778BA:  MOVGE           R6, #1
3778BC:  B               loc_377882
