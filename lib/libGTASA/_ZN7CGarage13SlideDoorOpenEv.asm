; =========================================================
; Game Engine Function: _ZN7CGarage13SlideDoorOpenEv
; Address            : 0x311594 - 0x31165E
; =========================================================

311594:  PUSH            {R4,R5,R7,LR}
311596:  ADD             R7, SP, #8
311598:  SUB             SP, SP, #0x10
31159A:  MOV             R4, R0
31159C:  LDRB.W          R0, [R4,#0x4C]
3115A0:  CMP             R0, #0x2C ; ','
3115A2:  BNE             loc_3115B8
3115A4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3115AE)
3115A6:  VLDR            S0, =0.0011
3115AA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3115AC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3115AE:  VLDR            S2, [R0]
3115B2:  VMUL.F32        S0, S2, S0
3115B6:  B               loc_3115D2
3115B8:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3115C2)
3115BA:  ADR             R2, dword_311664
3115BC:  CMP             R0, #0x2D ; '-'
3115BE:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3115C0:  IT EQ
3115C2:  ADDEQ           R2, #4
3115C4:  VLDR            S0, [R2]
3115C8:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3115CA:  VLDR            S2, [R1]
3115CE:  VMUL.F32        S0, S0, S2
3115D2:  VLDR            S2, [R4,#0x38]
3115D6:  VADD.F32        S0, S0, S2
3115DA:  VMOV.F32        S2, #1.0
3115DE:  VSTR            S0, [R4,#0x38]
3115E2:  VCMPE.F32       S0, S2
3115E6:  VMRS            APSR_nzcv, FPSCR
3115EA:  BGE             loc_311624
3115EC:  MOVS            R0, #0
3115EE:  ADD             R1, SP, #0x18+var_C; CObject **
3115F0:  ADD             R2, SP, #0x18+var_10; CObject **
3115F2:  STRD.W          R0, R0, [SP,#0x18+var_10]
3115F6:  MOV             R0, R4; this
3115F8:  BLX             j__ZN7CGarage19FindDoorsWithGarageEPP7CObjectS2_; CGarage::FindDoorsWithGarage(CObject **,CObject **)
3115FC:  LDR             R0, [SP,#0x18+var_C]
3115FE:  CBZ             R0, loc_31161E
311600:  LDR             R1, [R0,#0x14]
311602:  MOV.W           R2, #0x3F800000
311606:  STR             R2, [SP,#0x18+var_18]; float
311608:  MOVS            R3, #0; float
31160A:  ADD.W           R2, R1, #0x30 ; '0'
31160E:  CMP             R1, #0
311610:  IT EQ
311612:  ADDEQ           R2, R0, #4; CVector *
311614:  ADD.W           R0, R4, #0x50 ; 'P'; this
311618:  MOVS            R1, #0x9F; int
31161A:  BLX             j__ZN18CAEDoorAudioEntity13AddAudioEventEiR7CVectorff; CAEDoorAudioEntity::AddAudioEvent(int,CVector &,float,float)
31161E:  MOVS            R0, #0
311620:  ADD             SP, SP, #0x10
311622:  POP             {R4,R5,R7,PC}
311624:  MOV.W           R5, #0x3F800000
311628:  MOVS            R0, #0
31162A:  ADD             R1, SP, #0x18+var_C; CObject **
31162C:  ADD             R2, SP, #0x18+var_10; CObject **
31162E:  STR             R5, [R4,#0x38]
311630:  STRD.W          R0, R0, [SP,#0x18+var_10]
311634:  MOV             R0, R4; this
311636:  BLX             j__ZN7CGarage19FindDoorsWithGarageEPP7CObjectS2_; CGarage::FindDoorsWithGarage(CObject **,CObject **)
31163A:  LDR             R0, [SP,#0x18+var_C]
31163C:  CBZ             R0, loc_311658
31163E:  LDR             R1, [R0,#0x14]
311640:  MOVS            R3, #0; float
311642:  STR             R5, [SP,#0x18+var_18]; float
311644:  ADD.W           R2, R1, #0x30 ; '0'
311648:  CMP             R1, #0
31164A:  IT EQ
31164C:  ADDEQ           R2, R0, #4; CVector *
31164E:  ADD.W           R0, R4, #0x50 ; 'P'; this
311652:  MOVS            R1, #0xA0; int
311654:  BLX             j__ZN18CAEDoorAudioEntity13AddAudioEventEiR7CVectorff; CAEDoorAudioEntity::AddAudioEvent(int,CVector &,float,float)
311658:  MOVS            R0, #1
31165A:  ADD             SP, SP, #0x10
31165C:  POP             {R4,R5,R7,PC}
