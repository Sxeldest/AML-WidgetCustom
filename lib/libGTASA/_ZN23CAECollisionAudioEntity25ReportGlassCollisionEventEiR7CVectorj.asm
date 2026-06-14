; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity25ReportGlassCollisionEventEiR7CVectorj
; Address            : 0x39486C - 0x394952
; =========================================================

39486C:  PUSH            {R4-R7,LR}
39486E:  ADD             R7, SP, #0xC
394870:  PUSH.W          {R8,R9,R11}
394874:  VPUSH           {D8}
394878:  SUB             SP, SP, #0x30
39487A:  MOV             R9, R1
39487C:  SUB.W           R1, R9, #0x7B ; '{'; switch 6 cases
394880:  MOV             R8, R3
394882:  MOV             R6, R2
394884:  MOV             R4, R0
394886:  CMP             R1, #5
394888:  BHI             def_394890; jumptable 00394890 default case
39488A:  VMOV.F32        S16, #1.0
39488E:  MOVS            R0, #0x33 ; '3'
394890:  TBB.W           [PC,R1]; switch jump
394894:  DCB 0x1A; jump table for switch statement
394895:  DCB 3
394896:  DCB 0xB
394897:  DCB 0xD
394898:  DCB 0xF
394899:  DCB 0x14
39489A:  MOVS            R0, #0x44 ; 'D'; jumptable 00394890 case 124
39489C:  B               loc_3948C8; jumptable 00394890 case 123
39489E:  ADD             SP, SP, #0x30 ; '0'; jumptable 00394890 default case
3948A0:  VPOP            {D8}
3948A4:  POP.W           {R8,R9,R11}
3948A8:  POP             {R4-R7,PC}
3948AA:  VMOV.F32        S16, #0.75; jumptable 00394890 case 125
3948AE:  MOVS            R0, #0x38 ; '8'; jumptable 00394890 case 126
3948B0:  B               loc_3948C8; jumptable 00394890 case 123
3948B2:  MOVS            R0, #(byte_9+6); jumptable 00394890 case 127
3948B4:  MOVS            R1, #0x12; int
3948B6:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3948BA:  B               loc_3948C8; jumptable 00394890 case 123
3948BC:  MOVS            R0, #(byte_9+6); jumptable 00394890 case 128
3948BE:  MOVS            R1, #0x12; int
3948C0:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3948C4:  VLDR            S16, =0.56
3948C8:  LDR             R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3948D0); jumptable 00394890 case 123
3948CA:  MOVS            R5, #0
3948CC:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3948CE:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
3948D0:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes
3948D2:  LDM             R6, {R2,R3,R6}
3948D4:  LDRSB.W         R1, [R1,R9]
3948D8:  VMOV            S0, R1
3948DC:  MOV.W           R1, #0x3F800000
3948E0:  VCVT.F32.S32    S0, S0
3948E4:  STRD.W          R1, R5, [SP,#0x50+var_38]
3948E8:  MOV.W           R1, #0x3FC00000
3948EC:  STRD.W          R5, R5, [SP,#0x50+var_30]
3948F0:  STR             R5, [SP,#0x50+var_28]
3948F2:  VSTR            S16, [SP,#0x50+var_3C]
3948F6:  STR             R1, [SP,#0x50+var_40]
3948F8:  MOVS            R1, #2
3948FA:  STMEA.W         SP, {R2,R3,R6}
3948FE:  ADD.W           R6, R4, #8
394902:  SXTH            R2, R0
394904:  MOV             R0, R6
394906:  MOV             R3, R4
394908:  VSTR            S0, [SP,#0x50+var_44]
39490C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
394910:  CMP.W           R8, #0
394914:  BEQ             loc_394938
394916:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39491E)
394918:  STR             R5, [R4,#0x24]
39491A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39491C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
39491E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
394920:  ADD             R0, R8
394922:  VMOV            S0, R0
394926:  MOVS            R0, #4
394928:  VCVT.F32.U32    S0, S0
39492C:  STR.W           R9, [R4,#0x14]
394930:  STRH.W          R0, [R4,#0x5E]
394934:  VSTR            S0, [R4,#0x18]
394938:  LDR             R0, =(AESoundManager_ptr - 0x394940)
39493A:  MOV             R1, R6; CAESound *
39493C:  ADD             R0, PC; AESoundManager_ptr
39493E:  LDR             R0, [R0]; AESoundManager ; this
394940:  ADD             SP, SP, #0x30 ; '0'
394942:  VPOP            {D8}
394946:  POP.W           {R8,R9,R11}
39494A:  POP.W           {R4-R7,LR}
39494E:  B.W             sub_19F824
