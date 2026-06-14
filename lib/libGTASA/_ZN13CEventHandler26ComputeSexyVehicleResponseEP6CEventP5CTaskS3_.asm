; =========================================================
; Game Engine Function: _ZN13CEventHandler26ComputeSexyVehicleResponseEP6CEventP5CTaskS3_
; Address            : 0x38076C - 0x3807EA
; =========================================================

38076C:  PUSH            {R4-R7,LR}
38076E:  ADD             R7, SP, #0xC
380770:  PUSH.W          {R8,R9,R11}
380774:  SUB             SP, SP, #0x20
380776:  LDR             R4, [R1,#0xC]
380778:  MOV             R5, R0
38077A:  CBZ             R4, loc_3807E2
38077C:  LDR             R0, =(g_InterestingEvents_ptr - 0x380786)
38077E:  MOVS            R1, #8
380780:  MOV             R2, R4
380782:  ADD             R0, PC; g_InterestingEvents_ptr
380784:  LDR             R0, [R0]; g_InterestingEvents
380786:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
38078A:  MOVS            R0, #dword_20; this
38078C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380790:  MOV.W           R1, #0x41000000
380794:  MOVS            R2, #0; bool
380796:  STR             R1, [SP,#0x38+var_38]; float
380798:  MOVW            R1, #0x1388; int
38079C:  MOVS            R3, #0; bool
38079E:  MOVW            R8, #0x1388
3807A2:  MOV.W           R9, #0
3807A6:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
3807AA:  LDR             R1, =(g_ikChainMan_ptr - 0x3807BA)
3807AC:  MOV.W           LR, #0x1F4
3807B0:  LDR             R2, [R5]; CPed *
3807B2:  MOV.W           R6, #0xFFFFFFFF
3807B6:  ADD             R1, PC; g_ikChainMan_ptr
3807B8:  STR             R0, [R5,#0x24]
3807BA:  MOV.W           R0, #0x3E800000
3807BE:  MOVS            R5, #1
3807C0:  LDR             R3, [R1]; g_ikChainMan
3807C2:  MOV.W           R12, #3
3807C6:  LDR             R1, =(aCompsexyvhclre - 0x3807D0); "CompSexyVhclResp"
3807C8:  STRD.W          R8, R6, [SP,#0x38+var_38]; int
3807CC:  ADD             R1, PC; "CompSexyVhclResp"
3807CE:  STRD.W          R9, R5, [SP,#0x38+var_30]; int
3807D2:  STRD.W          R0, LR, [SP,#0x38+var_28]; float
3807D6:  MOV             R0, R3; int
3807D8:  MOV             R3, R4; int
3807DA:  STRD.W          R12, R9, [SP,#0x38+var_20]; int
3807DE:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
3807E2:  ADD             SP, SP, #0x20 ; ' '
3807E4:  POP.W           {R8,R9,R11}
3807E8:  POP             {R4-R7,PC}
