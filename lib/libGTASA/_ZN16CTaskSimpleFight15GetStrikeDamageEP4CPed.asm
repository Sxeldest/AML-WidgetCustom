; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight15GetStrikeDamageEP4CPed
; Address            : 0x4DA35C - 0x4DA3EA
; =========================================================

4DA35C:  PUSH            {R4,R6,R7,LR}
4DA35E:  ADD             R7, SP, #8
4DA360:  VPUSH           {D8}
4DA364:  MOV             R4, R1
4DA366:  LDR             R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA370)
4DA368:  LDRSB.W         R2, [R0,#0x24]
4DA36C:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA36E:  LDRSB.W         R0, [R0,#0x25]
4DA372:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DA374:  ADD.W           R2, R2, R2,LSL#4
4DA378:  ADD.W           R1, R1, R2,LSL#3
4DA37C:  ADD             R0, R1
4DA37E:  MOV             R1, #0xFFFFFE35
4DA382:  LDRB            R0, [R0,R1]
4DA384:  VMOV            S0, R0
4DA388:  MOV             R0, R4; this
4DA38A:  VCVT.F32.U32    S16, S0
4DA38E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DA392:  CMP             R0, #1
4DA394:  BNE             loc_4DA3AE
4DA396:  LDR.W           R0, [R4,#0x444]
4DA39A:  LDRB.W          R0, [R0,#0x34]
4DA39E:  LSLS            R0, R0, #0x1E
4DA3A0:  BMI             loc_4DA3CE
4DA3A2:  MOVS            R0, #4
4DA3A4:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4DA3A8:  VMOV            S0, R0
4DA3AC:  B               loc_4DA3DC
4DA3AE:  LDRSB.W         R0, [R4,#0x71C]
4DA3B2:  RSB.W           R0, R0, R0,LSL#3
4DA3B6:  ADD.W           R0, R4, R0,LSL#2
4DA3BA:  LDR.W           R0, [R0,#0x5A4]
4DA3BE:  CBZ             R0, loc_4DA3D4
4DA3C0:  CMP             R0, #1
4DA3C2:  ITT EQ
4DA3C4:  VMOVEQ.F32      S0, #1.5
4DA3C8:  VMULEQ.F32      S16, S16, S0
4DA3CC:  B               loc_4DA3E0
4DA3CE:  VLDR            S16, =50.0
4DA3D2:  B               loc_4DA3E0
4DA3D4:  LDR.W           R0, [R4,#0x5A0]
4DA3D8:  VLDR            S0, [R0,#0x28]
4DA3DC:  VMUL.F32        S16, S0, S16
4DA3E0:  VMOV            R0, S16
4DA3E4:  VPOP            {D8}
4DA3E8:  POP             {R4,R6,R7,PC}
