; =========================================================
; Game Engine Function: _ZN25CTaskComplexTreatAccident18CreateFirstSubTaskEP4CPed
; Address            : 0x510758 - 0x5107E6
; =========================================================

510758:  PUSH            {R4-R7,LR}
51075A:  ADD             R7, SP, #0xC
51075C:  PUSH.W          {R8,R9,R11}
510760:  SUB             SP, SP, #0x20
510762:  MOV             R5, R0
510764:  MOV             R4, R1
510766:  LDR             R0, [R5,#0xC]
510768:  LDR             R0, [R0]
51076A:  CBZ             R0, loc_5107D4
51076C:  LDRB.W          R1, [R0,#0x488]
510770:  LSLS            R1, R1, #0x1C
510772:  BMI             loc_5107D4
510774:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x510782)
510776:  MOVS            R6, #0
510778:  MOVS            R2, #0; unsigned int
51077A:  MOV.W           R3, #0x3F800000; float
51077E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
510780:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
510782:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
510784:  STR.W           R1, [R0,#0x758]
510788:  MOV             R0, R4; this
51078A:  MOVS            R1, #0xE8; unsigned __int16
51078C:  STRD.W          R6, R6, [SP,#0x38+var_38]; unsigned __int8
510790:  STR             R6, [SP,#0x38+var_30]; unsigned __int8
510792:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
510796:  LDR             R0, =(g_ikChainMan_ptr - 0x5107A6)
510798:  MOVW            R2, #0x1388
51079C:  LDR             R1, [R5,#0xC]
51079E:  MOV.W           R12, #3
5107A2:  ADD             R0, PC; g_ikChainMan_ptr
5107A4:  MOV.W           LR, #0x1F4
5107A8:  MOV.W           R8, #0x3E800000
5107AC:  MOV.W           R9, #1
5107B0:  LDR             R3, [R1]; int
5107B2:  MOVS            R1, #5
5107B4:  LDR             R0, [R0]; g_ikChainMan ; int
5107B6:  STRD.W          R2, R1, [SP,#0x38+var_38]; int
5107BA:  ADR             R1, aTasktreataccid; "TaskTreatAccident"
5107BC:  MOV             R2, R4; CPed *
5107BE:  STRD.W          R6, R9, [SP,#0x38+var_30]; int
5107C2:  STRD.W          R8, LR, [SP,#0x38+var_28]; float
5107C6:  STRD.W          R12, R6, [SP,#0x38+var_20]; int
5107CA:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
5107CE:  MOVW            R1, #0x386
5107D2:  B               loc_5107D6
5107D4:  MOVS            R1, #0xC8; int
5107D6:  MOV             R0, R5; this
5107D8:  MOV             R2, R4; CPed *
5107DA:  ADD             SP, SP, #0x20 ; ' '
5107DC:  POP.W           {R8,R9,R11}
5107E0:  POP.W           {R4-R7,LR}
5107E4:  B               _ZN25CTaskComplexTreatAccident13CreateSubTaskEiPK4CPed; CTaskComplexTreatAccident::CreateSubTask(int,CPed const*)
