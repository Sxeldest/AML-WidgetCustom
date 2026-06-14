; =========================================================
; Game Engine Function: _ZN13CMonsterTruck9PreRenderEv
; Address            : 0x5754B0 - 0x5755F6
; =========================================================

5754B0:  PUSH            {R4-R7,LR}
5754B2:  ADD             R7, SP, #0xC
5754B4:  PUSH.W          {R8-R11}
5754B8:  SUB             SP, SP, #0x6C
5754BA:  MOV             R4, R0
5754BC:  ADDW            R0, R4, #0x88C
5754C0:  ADDW            R10, R4, #0x84C
5754C4:  ADDW            R11, R4, #0x854
5754C8:  VLDR            S0, [R0]
5754CC:  ADD.W           R0, R4, #0x890
5754D0:  VLDR            S2, [R10]
5754D4:  ADDW            R8, R4, #0x858
5754D8:  VCMPE.F32       S2, S0
5754DC:  VMRS            APSR_nzcv, FPSCR
5754E0:  IT GT
5754E2:  VSTRGT          S0, [R10]
5754E6:  VLDR            S0, [R0]
5754EA:  ADD.W           R0, R4, #0x850
5754EE:  VLDR            S2, [R0]
5754F2:  VCMPE.F32       S2, S0
5754F6:  VMRS            APSR_nzcv, FPSCR
5754FA:  IT GT
5754FC:  VSTRGT          S0, [R0]
575500:  STR             R0, [SP,#0x88+var_74]
575502:  ADDW            R0, R4, #0x894
575506:  VLDR            S2, [R11]
57550A:  VLDR            S0, [R0]
57550E:  ADDW            R0, R4, #0x898
575512:  VCMPE.F32       S2, S0
575516:  VMRS            APSR_nzcv, FPSCR
57551A:  IT GT
57551C:  VSTRGT          S0, [R11]
575520:  VLDR            S0, [R0]
575524:  MOV             R0, R4; this
575526:  VLDR            S2, [R8]
57552A:  VCMPE.F32       S2, S0
57552E:  VMRS            APSR_nzcv, FPSCR
575532:  IT GT
575534:  VSTRGT          S0, [R8]
575538:  BLX             j__ZN11CAutomobile9PreRenderEv; CAutomobile::PreRender(void)
57553C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57554A)
57553E:  ADD             R2, SP, #0x88+var_70; CVector *
575540:  LDRSH.W         R1, [R4,#0x26]
575544:  MOVS            R3, #0; bool
575546:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
575548:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
57554A:  LDR.W           R9, [R0,R1,LSL#2]
57554E:  MOVS            R0, #0
575550:  STRD.W          R0, R0, [SP,#0x88+var_24]
575554:  MOVS            R1, #0; int
575556:  MOV             R0, R9; this
575558:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
57555C:  LDR.W           R3, [R11]
575560:  MOV.W           R12, #1
575564:  LDR.W           R2, [R10]
575568:  LDRD.W          R0, R6, [SP,#0x88+var_70]
57556C:  LDR.W           R1, [R4,#0x6A8]
575570:  LDR             R5, [SP,#0x88+var_68]
575572:  STRD.W          R0, R6, [SP,#0x88+var_88]
575576:  MOV             R0, R4
575578:  STRD.W          R5, R12, [SP,#0x88+var_80]
57557C:  BLX             j__ZN8CVehicle23SetTransmissionRotationEP7RwFrameff7CVectorb; CVehicle::SetTransmissionRotation(RwFrame *,float,float,CVector,bool)
575580:  ADD             R2, SP, #0x88+var_70; CVector *
575582:  MOV             R0, R9; this
575584:  MOVS            R1, #1; int
575586:  MOVS            R3, #0; bool
575588:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
57558C:  LDRD.W          R0, R6, [SP,#0x88+var_70]
575590:  LDR             R1, [SP,#0x88+var_74]
575592:  LDR.W           R3, [R8]
575596:  LDR             R5, [SP,#0x88+var_68]
575598:  LDR             R2, [R1]
57559A:  LDR.W           R1, [R4,#0x6AC]
57559E:  STRD.W          R0, R6, [SP,#0x88+var_88]
5755A2:  MOVS            R0, #0
5755A4:  STR             R5, [SP,#0x88+var_80]
5755A6:  STR             R0, [SP,#0x88+var_7C]
5755A8:  MOV             R0, R4
5755AA:  BLX             j__ZN8CVehicle23SetTransmissionRotationEP7RwFrameff7CVectorb; CVehicle::SetTransmissionRotation(RwFrame *,float,float,CVector,bool)
5755AE:  LDRH            R0, [R4,#0x26]
5755B0:  CMP.W           R0, #0x196
5755B4:  BNE             loc_5755E8
5755B6:  LDR.W           R1, [R4,#0x6B4]
5755BA:  CMP             R1, #0
5755BC:  BEQ             loc_5755E8
5755BE:  LDRH.W          R2, [R4,#0x880]
5755C2:  LDR             R0, =(_ZN13CMonsterTruck20DUMPER_COL_ANGLEMULTE_ptr - 0x5755CC)
5755C4:  VMOV            S0, R2
5755C8:  ADD             R0, PC; _ZN13CMonsterTruck20DUMPER_COL_ANGLEMULTE_ptr
5755CA:  MOVS            R2, #0
5755CC:  VCVT.F32.U32    S0, S0
5755D0:  LDR             R0, [R0]; CMonsterTruck::DUMPER_COL_ANGLEMULT ...
5755D2:  VLDR            S2, [R0]
5755D6:  MOVS            R0, #1
5755D8:  STR             R0, [SP,#0x88+var_88]
5755DA:  MOV             R0, R4
5755DC:  VMUL.F32        S0, S2, S0
5755E0:  VMOV            R3, S0
5755E4:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
5755E8:  ADD             R0, SP, #0x88+var_64; this
5755EA:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5755EE:  ADD             SP, SP, #0x6C ; 'l'
5755F0:  POP.W           {R8-R11}
5755F4:  POP             {R4-R7,PC}
