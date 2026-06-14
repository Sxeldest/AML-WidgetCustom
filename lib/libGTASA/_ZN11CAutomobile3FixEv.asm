; =========================================================
; Game Engine Function: _ZN11CAutomobile3FixEv
; Address            : 0x55D550 - 0x55D62A
; =========================================================

55D550:  PUSH            {R4-R7,LR}
55D552:  ADD             R7, SP, #0xC
55D554:  PUSH.W          {R8,R9,R11}
55D558:  SUB             SP, SP, #0x48
55D55A:  MOV             R9, R0
55D55C:  ADDW            R8, R9, #0x5B4
55D560:  MOV             R0, R8; this
55D562:  BLX             j__ZN14CDamageManager17ResetDamageStatusEv; CDamageManager::ResetDamageStatus(void)
55D566:  LDR.W           R0, [R9,#0x388]
55D56A:  LDRB.W          R0, [R0,#0xCD]
55D56E:  LSLS            R0, R0, #0x1F
55D570:  BEQ             loc_55D59A
55D572:  MOV             R0, R8
55D574:  MOVS            R1, #2
55D576:  MOVS            R2, #4
55D578:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
55D57C:  MOV             R0, R8
55D57E:  MOVS            R1, #3
55D580:  MOVS            R2, #4
55D582:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
55D586:  MOV             R0, R8
55D588:  MOVS            R1, #4
55D58A:  MOVS            R2, #4
55D58C:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
55D590:  MOV             R0, R8
55D592:  MOVS            R1, #5
55D594:  MOVS            R2, #4
55D596:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
55D59A:  LDR             R1, =(_ZN17CVehicleModelInfo25HideAllComponentsAtomicCBEP8RpAtomicPv_ptr - 0x55D5A4)
55D59C:  LDR.W           R2, [R9,#0x42C]
55D5A0:  ADD             R1, PC; _ZN17CVehicleModelInfo25HideAllComponentsAtomicCBEP8RpAtomicPv_ptr
55D5A2:  LDR.W           R0, [R9,#0x18]
55D5A6:  BIC.W           R2, R2, #0x10000
55D5AA:  STR.W           R2, [R9,#0x42C]
55D5AE:  LDR             R1, [R1]; CVehicleModelInfo::HideAllComponentsAtomicCB(RpAtomic *,void *)
55D5B0:  MOVS            R2, #2
55D5B2:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
55D5B6:  ADDW            R5, R9, #0x67C
55D5BA:  MOVS            R4, #0
55D5BC:  MOV             R6, SP
55D5BE:  LDR.W           R0, [R5,R4,LSL#2]
55D5C2:  CBZ             R0, loc_55D5E4
55D5C4:  ADD.W           R1, R0, #0x10
55D5C8:  MOV             R0, R6
55D5CA:  MOVS            R2, #0
55D5CC:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
55D5D0:  ADD             R3, SP, #0x60+var_30
55D5D2:  LDM             R3, {R1-R3}; float
55D5D4:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
55D5D8:  MOV             R0, R6; this
55D5DA:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55D5DE:  MOV             R0, R6; this
55D5E0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55D5E4:  ADDS            R4, #1
55D5E6:  CMP             R4, #0x11
55D5E8:  BNE             loc_55D5BE
55D5EA:  MOV             R0, R8; this
55D5EC:  MOVS            R1, #0; int
55D5EE:  MOVS            R2, #0; unsigned int
55D5F0:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
55D5F4:  MOV             R0, R8; this
55D5F6:  MOVS            R1, #1; int
55D5F8:  MOVS            R2, #0; unsigned int
55D5FA:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
55D5FE:  MOV             R0, R8; this
55D600:  MOVS            R1, #2; int
55D602:  MOVS            R2, #0; unsigned int
55D604:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
55D608:  MOV             R0, R8; this
55D60A:  MOVS            R1, #3; int
55D60C:  MOVS            R2, #0; unsigned int
55D60E:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
55D612:  MOVW            R0, #0xFFFF
55D616:  STRH.W          R0, [R9,#0x700]
55D61A:  STRH.W          R0, [R9,#0x6E0]
55D61E:  STRH.W          R0, [R9,#0x6C0]
55D622:  ADD             SP, SP, #0x48 ; 'H'
55D624:  POP.W           {R8,R9,R11}
55D628:  POP             {R4-R7,PC}
