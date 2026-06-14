; =========================================================
; Game Engine Function: _ZN10CPlayerPed18HandlePlayerBreathEbf
; Address            : 0x4C5684 - 0x4C5762
; =========================================================

4C5684:  PUSH            {R4,R5,R7,LR}
4C5686:  ADD             R7, SP, #8
4C5688:  VPUSH           {D8-D9}
4C568C:  SUB             SP, SP, #8
4C568E:  MOV             R4, R0
4C5690:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4C569A)
4C5692:  VMOV            S16, R2
4C5696:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4C5698:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
4C569A:  LDRB.W          R0, [R0,#(byte_79683A - 0x7967F4)]
4C569E:  CMP             R0, #0
4C56A0:  IT EQ
4C56A2:  CMPEQ           R1, #1
4C56A4:  BNE             loc_4C56F6
4C56A6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C56B0)
4C56A8:  ADDW            R5, R4, #0x444
4C56AC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C56AE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C56B0:  VLDR            S0, [R0]
4C56B4:  LDR.W           R0, [R4,#0x444]
4C56B8:  VMUL.F32        S0, S0, S16
4C56BC:  VLDR            S2, [R0,#0x44]
4C56C0:  VCMPE.F32       S2, #0.0
4C56C4:  VMRS            APSR_nzcv, FPSCR
4C56C8:  BLE             loc_4C56D2
4C56CA:  LDRB.W          R1, [R4,#0x48A]
4C56CE:  LSLS            R1, R1, #0x1B
4C56D0:  BMI             loc_4C5740
4C56D2:  VMOV.F32        S2, #3.0
4C56D6:  MOVS            R0, #0
4C56D8:  STR             R0, [SP,#0x20+var_1C]
4C56DA:  MOVS            R0, #3
4C56DC:  MOV             R1, R4
4C56DE:  MOVS            R2, #0x35 ; '5'
4C56E0:  VMUL.F32        S0, S0, S2
4C56E4:  VCVT.S32.F32    S0, S0
4C56E8:  STR             R0, [SP,#0x20+var_20]
4C56EA:  MOV             R0, R4
4C56EC:  VMOV            R3, S0
4C56F0:  BLX             j__ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi; CWeapon::GenerateDamageEvent(CPed *,CEntity *,eWeaponType,int,ePedPieceTypes,int)
4C56F4:  B               loc_4C5750
4C56F6:  MOV             R0, R4; this
4C56F8:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4C56FC:  ADDW            R5, R4, #0x444
4C5700:  CMP             R0, #1
4C5702:  BNE             loc_4C5750
4C5704:  LDR             R0, [R5]
4C5706:  VLDR            S18, [R0,#0x44]
4C570A:  MOVS            R0, #8
4C570C:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4C5710:  VMOV            S0, R0
4C5714:  VCMPE.F32       S18, S0
4C5718:  VMRS            APSR_nzcv, FPSCR
4C571C:  BGE             loc_4C5750
4C571E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C5728)
4C5720:  VADD.F32        S0, S16, S16
4C5724:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C5726:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C5728:  VLDR            S2, [R0]
4C572C:  LDR             R0, [R5]
4C572E:  VMUL.F32        S0, S0, S2
4C5732:  VLDR            S2, [R0,#0x44]
4C5736:  VADD.F32        S0, S0, S2
4C573A:  VSTR            S0, [R0,#0x44]
4C573E:  B               loc_4C5750
4C5740:  VSUB.F32        S0, S2, S0
4C5744:  VLDR            S4, =0.0
4C5748:  VMAX.F32        D0, D0, D2
4C574C:  VSTR            S0, [R0,#0x44]
4C5750:  LDR             R0, [R5]
4C5752:  LDRH            R1, [R0,#0x34]
4C5754:  BIC.W           R1, R1, #0x80
4C5758:  STRH            R1, [R0,#0x34]
4C575A:  ADD             SP, SP, #8
4C575C:  VPOP            {D8-D9}
4C5760:  POP             {R4,R5,R7,PC}
