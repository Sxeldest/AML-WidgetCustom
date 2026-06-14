; =========================================================
; Game Engine Function: _ZN30CTaskComplexInvestigateDeadPed17CreateNextSubTaskEP4CPed
; Address            : 0x546890 - 0x546978
; =========================================================

546890:  PUSH            {R4-R7,LR}
546892:  ADD             R7, SP, #0xC
546894:  PUSH.W          {R8,R9,R11}
546898:  SUB             SP, SP, #0x20; float
54689A:  MOV             R5, R0
54689C:  MOV             R4, R1
54689E:  LDR             R0, [R5,#8]
5468A0:  LDR             R1, [R0]
5468A2:  LDR             R1, [R1,#0x14]
5468A4:  BLX             R1
5468A6:  MOVW            R1, #0x385
5468AA:  CMP             R0, R1
5468AC:  BGT             loc_5468C4
5468AE:  CMP             R0, #0xCB
5468B0:  BEQ             loc_5468E2
5468B2:  CMP.W           R0, #0x190
5468B6:  BEQ             loc_5468E8
5468B8:  CMP.W           R0, #0x384
5468BC:  BNE             loc_54696E
5468BE:  MOVW            R1, #0x516
5468C2:  B               loc_54695E
5468C4:  MOVW            R1, #0x386
5468C8:  CMP             R0, R1
5468CA:  BEQ             loc_5468EE
5468CC:  MOVW            R1, #0x387
5468D0:  CMP             R0, R1
5468D2:  BEQ             loc_54692C
5468D4:  MOVW            R1, #0x4BA
5468D8:  CMP             R0, R1
5468DA:  BNE             loc_54696E
5468DC:  MOV.W           R1, #0x190
5468E0:  B               loc_54695E
5468E2:  MOVW            R1, #0x387
5468E6:  B               loc_54695E
5468E8:  MOV.W           R1, #0x384
5468EC:  B               loc_54695E
5468EE:  LDR.W           R12, =(g_ikChainMan_ptr - 0x5468FC)
5468F2:  MOVS            R6, #5
5468F4:  LDR             R1, =(aTaskinvdeadped - 0x546902); "TaskInvDeadPed"
5468F6:  MOVS            R2, #0
5468F8:  ADD             R12, PC; g_ikChainMan_ptr
5468FA:  LDR             R0, [R5,#0x38]
5468FC:  LDR             R3, [R5,#0xC]; int
5468FE:  ADD             R1, PC; "TaskInvDeadPed"
546900:  STRD.W          R0, R6, [SP,#0x38+var_38]; int
546904:  MOV.W           LR, #3
546908:  LDR.W           R0, [R12]; g_ikChainMan ; int
54690C:  MOV.W           R8, #0x1F4
546910:  MOV.W           R9, #0x3E800000
546914:  STRD.W          R2, R2, [SP,#0x38+var_30]; int
546918:  STRD.W          R9, R8, [SP,#0x38+var_28]; float
54691C:  STRD.W          LR, R2, [SP,#0x38+var_20]; int
546920:  MOV             R2, R4; CPed *
546922:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
546926:  MOVW            R1, #0x4BA
54692A:  B               loc_54695E
54692C:  LDR.W           R12, [R5,#0xC]
546930:  LDR             R1, [R4,#0x14]
546932:  LDR.W           R0, [R12,#0x14]
546936:  ADD.W           R3, R1, #0x30 ; '0'
54693A:  CMP             R1, #0
54693C:  IT EQ
54693E:  ADDEQ           R3, R4, #4
546940:  ADD.W           R1, R0, #0x30 ; '0'
546944:  CMP             R0, #0
546946:  LDRD.W          R2, R3, [R3]; float
54694A:  IT EQ
54694C:  ADDEQ.W         R1, R12, #4
546950:  LDRD.W          R0, R1, [R1]; float
546954:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
546958:  STR             R0, [R5,#0x28]
54695A:  MOVW            R1, #0x386; int
54695E:  MOV             R0, R5; this
546960:  MOV             R2, R4; CPed *
546962:  ADD             SP, SP, #0x20 ; ' '
546964:  POP.W           {R8,R9,R11}
546968:  POP.W           {R4-R7,LR}
54696C:  B               _ZN30CTaskComplexInvestigateDeadPed13CreateSubTaskEiP4CPed; CTaskComplexInvestigateDeadPed::CreateSubTask(int,CPed *)
54696E:  MOVS            R0, #0
546970:  ADD             SP, SP, #0x20 ; ' '
546972:  POP.W           {R8,R9,R11}
546976:  POP             {R4-R7,PC}
