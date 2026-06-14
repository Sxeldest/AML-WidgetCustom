; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x3998A4 - 0x3999E6
; =========================================================

3998A4:  PUSH            {R4,R6,R7,LR}
3998A6:  ADD             R7, SP, #8
3998A8:  MOV             R4, R0
3998AA:  MOV.W           R0, #0xFFFFFFFF
3998AE:  LDR.W           R3, [R4,#0xA0]
3998B2:  CMP             R3, R1
3998B4:  BEQ             loc_3998E2
3998B6:  LDR.W           R3, [R4,#0x9C]
3998BA:  CMP             R3, R1
3998BC:  BEQ             loc_3998F0
3998BE:  LDR.W           R3, [R4,#0xA4]
3998C2:  CMP             R3, R1
3998C4:  BEQ             loc_3998FE
3998C6:  LDR.W           R3, [R4,#0x150]
3998CA:  CMP             R3, R1
3998CC:  BEQ             loc_39992E
3998CE:  CMP             R2, R0
3998D0:  BLE             locret_399962
3998D2:  LDR             R0, [R1,#0xC]
3998D4:  SUB.W           R2, R0, #0x3C ; '<'
3998D8:  CMP             R2, #9
3998DA:  BCS             loc_39993C
3998DC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3998E2)
3998DE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3998E0:  B               loc_399948
3998E2:  CMP             R2, R0
3998E4:  ITTT EQ
3998E6:  MOVEQ           R0, #0
3998E8:  STREQ.W         R0, [R4,#0xA0]
3998EC:  POPEQ           {R4,R6,R7,PC}
3998EE:  B               loc_39990A
3998F0:  CMP             R2, R0
3998F2:  ITTT EQ
3998F4:  MOVEQ           R0, #0
3998F6:  STREQ.W         R0, [R4,#0x9C]
3998FA:  POPEQ           {R4,R6,R7,PC}
3998FC:  B               loc_39990A
3998FE:  CMP             R2, R0
399900:  ITTT EQ
399902:  MOVEQ           R0, #0
399904:  STREQ.W         R0, [R4,#0xA4]
399908:  POPEQ           {R4,R6,R7,PC}
39990A:  LDR.W           R0, [R4,#0x94]
39990E:  CBZ             R0, locret_399962
399910:  LDR             R2, [R0,#0x14]
399912:  ADD.W           R3, R2, #0x30 ; '0'
399916:  CMP             R2, #0
399918:  IT EQ
39991A:  ADDEQ           R3, R0, #4
39991C:  MOV             R0, R1
39991E:  LDR             R4, [R3]
399920:  LDR             R2, [R3,#4]
399922:  LDR             R3, [R3,#8]
399924:  MOV             R1, R4
399926:  POP.W           {R4,R6,R7,LR}
39992A:  B.W             j_j__ZN8CAESound11SetPositionE7CVector; j_CAESound::SetPosition(CVector)
39992E:  CMP             R2, R0
399930:  ITTT EQ
399932:  MOVEQ           R0, #0
399934:  STREQ.W         R0, [R4,#0x150]
399938:  POPEQ           {R4,R6,R7,PC}
39993A:  POP             {R4,R6,R7,PC}
39993C:  SUB.W           R2, R0, #0x45 ; 'E'
399940:  CMP             R2, #5
399942:  BCS             loc_399964
399944:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39994A)
399946:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
399948:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
39994A:  VLDR            S0, [R1,#0x10]
39994E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
399950:  VCVT.U32.F32    S0, S0
399954:  VMOV            R2, S0
399958:  CMP             R0, R2
39995A:  ITT CS
39995C:  MOVCS.W         R0, #0x3F800000
399960:  STRCS           R0, [R1,#0x1C]
399962:  POP             {R4,R6,R7,PC}
399964:  CMP             R0, #0x4C ; 'L'
399966:  BNE             locret_399962
399968:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x399970)
39996A:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x399972)
39996C:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
39996E:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
399970:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
399972:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
399974:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
399976:  LDRSB.W         R0, [R0,#0x4C]
39997A:  VMOV            S0, R0
39997E:  VCVT.F32.S32    S0, S0
399982:  LDR.W           R0, [R4,#0x80]
399986:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
399988:  ADDS            R0, #0x64 ; 'd'
39998A:  CMP             R2, R0
39998C:  BLS             loc_3999B6
39998E:  VMOV.F32        S2, #-20.0
399992:  VADD.F32        S0, S0, S2
399996:  VLDR            S2, [R1,#0x14]
39999A:  VCMPE.F32       S2, S0
39999E:  VMRS            APSR_nzcv, FPSCR
3999A2:  BLE             loc_3999D8
3999A4:  VLDR            S4, =-0.6
3999A8:  VADD.F32        S2, S2, S4
3999AC:  VMAX.F32        D0, D1, D0
3999B0:  VSTR            S0, [R1,#0x14]
3999B4:  POP             {R4,R6,R7,PC}
3999B6:  VLDR            S2, [R1,#0x14]
3999BA:  VCMPE.F32       S2, S0
3999BE:  VMRS            APSR_nzcv, FPSCR
3999C2:  IT GE
3999C4:  POPGE           {R4,R6,R7,PC}
3999C6:  VLDR            S4, =0.6
3999CA:  VADD.F32        S2, S2, S4
3999CE:  VMIN.F32        D0, D1, D0
3999D2:  VSTR            S0, [R1,#0x14]
3999D6:  POP             {R4,R6,R7,PC}
3999D8:  MOV             R0, R1; this
3999DA:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
3999DE:  MOVS            R0, #0
3999E0:  STR.W           R0, [R4,#0x80]
3999E4:  POP             {R4,R6,R7,PC}
