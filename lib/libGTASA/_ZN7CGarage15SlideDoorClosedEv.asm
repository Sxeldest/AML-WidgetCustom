; =========================================================
; Game Engine Function: _ZN7CGarage15SlideDoorClosedEv
; Address            : 0x3117C0 - 0x311884
; =========================================================

3117C0:  PUSH            {R4,R6,R7,LR}
3117C2:  ADD             R7, SP, #8
3117C4:  SUB             SP, SP, #0x10
3117C6:  MOV             R4, R0
3117C8:  LDRB.W          R0, [R4,#0x4C]
3117CC:  CMP             R0, #0x2C ; ','
3117CE:  BNE             loc_3117E4
3117D0:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3117DA)
3117D2:  VLDR            S0, =0.0013
3117D6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3117D8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3117DA:  VLDR            S2, [R0]
3117DE:  VMUL.F32        S0, S2, S0
3117E2:  B               loc_3117FE
3117E4:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3117EE)
3117E6:  ADR             R2, dword_311888
3117E8:  CMP             R0, #0x2D ; '-'
3117EA:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3117EC:  IT EQ
3117EE:  ADDEQ           R2, #4
3117F0:  VLDR            S0, [R2]
3117F4:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3117F6:  VLDR            S2, [R1]
3117FA:  VMUL.F32        S0, S0, S2
3117FE:  VLDR            S2, [R4,#0x38]
311802:  MOVS            R0, #0
311804:  VSUB.F32        S0, S2, S0
311808:  VCMPE.F32       S0, #0.0
31180C:  VSTR            S0, [R4,#0x38]
311810:  VMRS            APSR_nzcv, FPSCR
311814:  BLE             loc_31184C
311816:  ADD             R1, SP, #0x18+var_C; CObject **
311818:  ADD             R2, SP, #0x18+var_10; CObject **
31181A:  STRD.W          R0, R0, [SP,#0x18+var_10]
31181E:  MOV             R0, R4; this
311820:  BLX             j__ZN7CGarage19FindDoorsWithGarageEPP7CObjectS2_; CGarage::FindDoorsWithGarage(CObject **,CObject **)
311824:  LDR             R0, [SP,#0x18+var_C]
311826:  CBZ             R0, loc_311846
311828:  LDR             R1, [R0,#0x14]
31182A:  MOV.W           R2, #0x3F800000
31182E:  STR             R2, [SP,#0x18+var_18]; float
311830:  MOVS            R3, #0; float
311832:  ADD.W           R2, R1, #0x30 ; '0'
311836:  CMP             R1, #0
311838:  IT EQ
31183A:  ADDEQ           R2, R0, #4; CVector *
31183C:  ADD.W           R0, R4, #0x50 ; 'P'; this
311840:  MOVS            R1, #0xA1; int
311842:  BLX             j__ZN18CAEDoorAudioEntity13AddAudioEventEiR7CVectorff; CAEDoorAudioEntity::AddAudioEvent(int,CVector &,float,float)
311846:  MOVS            R0, #0
311848:  ADD             SP, SP, #0x10
31184A:  POP             {R4,R6,R7,PC}
31184C:  ADD             R1, SP, #0x18+var_C; CObject **
31184E:  ADD             R2, SP, #0x18+var_10; CObject **
311850:  STR             R0, [R4,#0x38]
311852:  STRD.W          R0, R0, [SP,#0x18+var_10]
311856:  MOV             R0, R4; this
311858:  BLX             j__ZN7CGarage19FindDoorsWithGarageEPP7CObjectS2_; CGarage::FindDoorsWithGarage(CObject **,CObject **)
31185C:  LDR             R0, [SP,#0x18+var_C]
31185E:  CBZ             R0, loc_31187E
311860:  LDR             R1, [R0,#0x14]
311862:  MOV.W           R2, #0x3F800000
311866:  STR             R2, [SP,#0x18+var_18]; float
311868:  MOVS            R3, #0; float
31186A:  ADD.W           R2, R1, #0x30 ; '0'
31186E:  CMP             R1, #0
311870:  IT EQ
311872:  ADDEQ           R2, R0, #4; CVector *
311874:  ADD.W           R0, R4, #0x50 ; 'P'; this
311878:  MOVS            R1, #0xA2; int
31187A:  BLX             j__ZN18CAEDoorAudioEntity13AddAudioEventEiR7CVectorff; CAEDoorAudioEntity::AddAudioEvent(int,CVector &,float,float)
31187E:  MOVS            R0, #1
311880:  ADD             SP, SP, #0x10
311882:  POP             {R4,R6,R7,PC}
