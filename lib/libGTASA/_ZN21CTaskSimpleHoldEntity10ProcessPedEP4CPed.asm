; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntity10ProcessPedEP4CPed
; Address            : 0x541844 - 0x541C4E
; =========================================================

541844:  PUSH            {R4-R7,LR}
541846:  ADD             R7, SP, #0xC
541848:  PUSH.W          {R8-R10}
54184C:  SUB             SP, SP, #0x18
54184E:  MOV             R4, R0
541850:  MOV             R10, R1
541852:  LDRB.W          R0, [R4,#0x35]
541856:  CMP             R0, #0
541858:  BEQ             loc_5418E8
54185A:  LDR             R0, [R4]
54185C:  MOVS            R1, #0
54185E:  STRB.W          R1, [R4,#0x35]
541862:  LDR             R1, [R0,#0x14]
541864:  MOV             R0, R4
541866:  BLX             R1
541868:  ADD.W           R6, R4, #8
54186C:  MOVW            R1, #0x135
541870:  CMP             R0, R1
541872:  BNE             loc_541886
541874:  LDR             R0, [R6]
541876:  CBNZ            R0, loc_54188A
541878:  LDR             R0, [R4,#0x30]
54187A:  CMP             R0, #0
54187C:  ITT EQ
54187E:  LDREQ           R0, [R4,#0x24]
541880:  CMPEQ           R0, #0
541882:  BEQ.W           loc_541BB4
541886:  LDR             R0, [R6]
541888:  CBZ             R0, loc_5418EE
54188A:  MOV             R5, R4
54188C:  LDRB.W          R1, [R5,#0x34]!
541890:  CBNZ            R1, loc_5418F2
541892:  LDR             R1, [R0,#0x1C]
541894:  BIC.W           R1, R1, #1
541898:  STR             R1, [R0,#0x1C]
54189A:  LDR             R0, [R6]
54189C:  LDRB.W          R1, [R0,#0x3A]
5418A0:  AND.W           R1, R1, #7
5418A4:  CMP             R1, #4
5418A6:  BNE             loc_5418D2
5418A8:  LDR             R1, [R0,#0x1C]
5418AA:  TST.W           R1, #0x40004
5418AE:  BEQ             loc_5418C0
5418B0:  LDR             R1, [R0]
5418B2:  LDR             R2, [R1,#0x14]
5418B4:  MOVS            R1, #0
5418B6:  BLX             R2
5418B8:  LDR             R0, [R6]; this
5418BA:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
5418BE:  LDR             R0, [R6]
5418C0:  LDR             R1, [R0,#0x44]
5418C2:  ORR.W           R1, R1, #0x2000000
5418C6:  STR             R1, [R0,#0x44]
5418C8:  LDR             R0, [R6]
5418CA:  MOVS            R1, #0
5418CC:  STRB.W          R1, [R0,#0xBC]
5418D0:  LDR             R0, [R6]
5418D2:  LDR             R1, [R0,#0x14]
5418D4:  CBZ             R1, loc_5418F8
5418D6:  LDRD.W          R0, R1, [R1,#0x10]; x
5418DA:  EOR.W           R0, R0, #0x80000000; y
5418DE:  BLX             atan2f
5418E2:  VMOV            S0, R0
5418E6:  B               loc_5418FC
5418E8:  ADD.W           R5, R4, #0x34 ; '4'
5418EC:  B               loc_54190C
5418EE:  ADD.W           R5, R4, #0x34 ; '4'
5418F2:  MOVS            R4, #1
5418F4:  STRB            R4, [R5]
5418F6:  B               loc_541BAA
5418F8:  VLDR            S0, [R0,#0x10]
5418FC:  ADDW            R0, R10, #0x55C
541900:  VLDR            S2, [R0]
541904:  VSUB.F32        S0, S0, S2
541908:  VSTR            S0, [R4,#0x1C]
54190C:  LDRB            R0, [R5]
54190E:  CBZ             R0, loc_541914
541910:  MOVS            R4, #1
541912:  B               loc_541BAA
541914:  LDR             R0, [R4,#0x20]
541916:  CMP             R0, #0xBF
541918:  ITT EQ
54191A:  LDREQ           R0, [R4,#0x30]
54191C:  CMPEQ           R0, #0
54191E:  BEQ             loc_54194C
541920:  LDR             R0, [R4,#0x38]
541922:  CBZ             R0, loc_541944
541924:  VLDR            S0, [R0,#0x1C]
541928:  VCMPE.F32       S0, #0.0
54192C:  VMRS            APSR_nzcv, FPSCR
541930:  BGE             loc_54194C
541932:  LDRB.W          R0, [R4,#0x36]
541936:  CBNZ            R0, loc_54194C
541938:  MOV             R0, R4; this
54193A:  MOV             R1, R10; CPed *
54193C:  MOVS            R2, #1; bool
54193E:  BLX             j__ZN21CTaskSimpleHoldEntity10DropEntityEP4CPedb; CTaskSimpleHoldEntity::DropEntity(CPed *,bool)
541942:  B               loc_54194C
541944:  MOV             R0, R4; this
541946:  MOV             R1, R10; CPed *
541948:  BLX             j__ZN21CTaskSimpleHoldEntity9StartAnimEP4CPed; CTaskSimpleHoldEntity::StartAnim(CPed *)
54194C:  LDR             R0, [R4,#8]
54194E:  CMP             R0, #0
541950:  BEQ.W           loc_541BA8
541954:  LDR             R0, [R4]
541956:  LDR             R1, [R0,#0x14]
541958:  MOV             R0, R4
54195A:  BLX             R1
54195C:  MOVW            R1, #0x133
541960:  CMP             R0, R1
541962:  BEQ.W           loc_541ACA
541966:  MOVW            R1, #0x135
54196A:  CMP             R0, R1
54196C:  BEQ.W           loc_541B64
541970:  CMP.W           R0, #0x134
541974:  BNE.W           loc_541BA8
541978:  LDR             R0, [R4,#0x38]
54197A:  CBZ             R0, loc_541990
54197C:  VLDR            S0, [R4,#0x3C]
541980:  VLDR            S2, [R0,#0x20]
541984:  VCMPE.F32       S2, S0
541988:  VMRS            APSR_nzcv, FPSCR
54198C:  BGE.W           loc_541BA8
541990:  VLDR            S0, [R4,#0x40]
541994:  ADD.W           R8, R4, #0x40 ; '@'
541998:  VCMP.F32        S0, #0.0
54199C:  VMRS            APSR_nzcv, FPSCR
5419A0:  BNE             loc_5419B2
5419A2:  VLDR            S0, [R8,#4]
5419A6:  VCMP.F32        S0, #0.0
5419AA:  VMRS            APSR_nzcv, FPSCR
5419AE:  BEQ.W           loc_541BA8
5419B2:  LDR             R6, [R4,#8]
5419B4:  LDR             R1, [R6,#0x14]
5419B6:  CBNZ            R1, loc_5419C8
5419B8:  MOV             R0, R6; this
5419BA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5419BE:  LDR             R1, [R6,#0x14]; CMatrix *
5419C0:  ADDS            R0, R6, #4; this
5419C2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5419C6:  LDR             R1, [R6,#0x14]
5419C8:  MOV             R0, SP
5419CA:  MOV             R2, R8
5419CC:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5419D0:  LDR.W           R1, [R10,#0x14]
5419D4:  VLDR            S0, [SP,#0x30+var_30]
5419D8:  ADD.W           R0, R1, #0x30 ; '0'
5419DC:  CMP             R1, #0
5419DE:  VLDR            S2, [SP,#0x30+var_2C]
5419E2:  VLDR            S4, [SP,#0x30+var_28]
5419E6:  IT EQ
5419E8:  ADDEQ.W         R0, R10, #4
5419EC:  VLDR            S6, [R0]
5419F0:  VLDR            S8, [R0,#4]
5419F4:  VLDR            S10, [R0,#8]
5419F8:  VSUB.F32        S0, S0, S6
5419FC:  VSUB.F32        S2, S2, S8
541A00:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x541A0A)
541A02:  VSUB.F32        S4, S4, S10
541A06:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
541A08:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
541A0A:  VSTR            S0, [SP,#0x30+var_30]
541A0E:  VSTR            S2, [SP,#0x30+var_2C]
541A12:  VSTR            S4, [SP,#0x30+var_28]
541A16:  VLDR            S6, [R1]
541A1A:  VLDR            S8, [R1,#4]
541A1E:  VMUL.F32        S6, S0, S6
541A22:  VLDR            S10, [R1,#8]
541A26:  VMUL.F32        S8, S2, S8
541A2A:  VMUL.F32        S10, S4, S10
541A2E:  VADD.F32        S6, S6, S8
541A32:  VLDR            S8, =0.1
541A36:  VADD.F32        S6, S6, S10
541A3A:  VLDR            S10, [R2]
541A3E:  ADDW            R2, R10, #0x4E4
541A42:  VLDR            S12, [R2]
541A46:  VMUL.F32        S6, S6, S8
541A4A:  VDIV.F32        S6, S6, S10
541A4E:  VADD.F32        S6, S12, S6
541A52:  VSTR            S6, [R2]
541A56:  VLDR            S6, [R1,#0x10]
541A5A:  VLDR            S12, [R1,#0x14]
541A5E:  VMUL.F32        S0, S0, S6
541A62:  VLDR            S14, [R1,#0x18]
541A66:  VMUL.F32        S2, S2, S12
541A6A:  ADD.W           R1, R10, #0x4E8
541A6E:  VMUL.F32        S4, S4, S14
541A72:  VADD.F32        S0, S0, S2
541A76:  VLDR            S2, [R1]
541A7A:  VADD.F32        S0, S0, S4
541A7E:  VMUL.F32        S0, S0, S8
541A82:  VDIV.F32        S0, S0, S10
541A86:  VADD.F32        S0, S2, S0
541A8A:  VSTR            S0, [R1]
541A8E:  LDR             R1, [R4,#8]
541A90:  VLDR            S0, [R0]
541A94:  VLDR            S2, [R0,#4]
541A98:  LDR             R2, [R1,#0x14]
541A9A:  ADD.W           R0, R2, #0x30 ; '0'
541A9E:  CMP             R2, #0
541AA0:  IT EQ
541AA2:  ADDEQ           R0, R1, #4
541AA4:  VLDR            S4, [R0]
541AA8:  VLDR            S6, [R0,#4]
541AAC:  VSUB.F32        S0, S4, S0
541AB0:  VSUB.F32        S2, S6, S2
541AB4:  VMOV            R0, S0
541AB8:  VMOV            R1, S2; x
541ABC:  EOR.W           R0, R0, #0x80000000; y
541AC0:  BLX             atan2f
541AC4:  STR.W           R0, [R10,#0x560]
541AC8:  B               loc_541BA8
541ACA:  LDR             R0, [R4,#0x24]
541ACC:  SUBS            R0, #0x51 ; 'Q'
541ACE:  CMP             R0, #2
541AD0:  BHI             loc_541BA8
541AD2:  MOV             R0, R10; this
541AD4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
541AD8:  CMP             R0, #1
541ADA:  BNE             loc_541BA8
541ADC:  MOV             R0, R10; this
541ADE:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
541AE2:  BLX             j__ZN4CPad16DropItemJustDownEv; CPad::DropItemJustDown(void)
541AE6:  MOVS            R4, #0
541AE8:  CMP             R0, #1
541AEA:  BNE             loc_541BAA
541AEC:  MOVS            R0, #dword_40; this
541AEE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
541AF2:  MOV             R6, R0
541AF4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
541AF8:  VMOV.I32        Q8, #0
541AFC:  LDR             R1, =(_ZTV24CTaskSimplePutDownEntity_ptr - 0x541B08)
541AFE:  ADD.W           R2, R6, #8
541B02:  LDR             R0, =(_ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr - 0x541B14)
541B04:  ADD             R1, PC; _ZTV24CTaskSimplePutDownEntity_ptr
541B06:  MOV             R8, SP
541B08:  VST1.32         {D16-D17}, [R2]
541B0C:  MOV.W           R2, #0x106
541B10:  ADD             R0, PC; _ZN21CTaskSimpleHoldEntity15m_nPutDownTimerE_ptr
541B12:  MOVS            R3, #0; bool
541B14:  STRH            R2, [R6,#0x18]
541B16:  MOVS            R2, #0xBF
541B18:  STRD.W          R2, R4, [R6,#0x20]
541B1C:  MOV.W           R2, #0x100
541B20:  LDR             R1, [R1]; `vtable for'CTaskSimplePutDownEntity ...
541B22:  STRD.W          R4, R4, [R6,#0x2C]
541B26:  STRH            R2, [R6,#0x34]
541B28:  MOVW            R2, #0x999A
541B2C:  LDR             R0, [R0]; CTaskSimpleHoldEntity::m_nPutDownTimer ...
541B2E:  MOVT            R2, #0x3F19
541B32:  ADDS            R1, #8
541B34:  STRB.W          R4, [R6,#0x36]
541B38:  STR             R4, [R6,#0x38]
541B3A:  STR             R2, [R6,#0x3C]
541B3C:  MOV             R2, R6; CTask *
541B3E:  STR             R1, [R6]
541B40:  MOV.W           R1, #0x7D0
541B44:  STR             R1, [R0]; CTaskSimpleHoldEntity::m_nPutDownTimer
541B46:  MOV             R0, R8; this
541B48:  MOVS            R1, #3; int
541B4A:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
541B4E:  LDR.W           R0, [R10,#0x440]
541B52:  MOV             R1, R8; CEvent *
541B54:  MOVS            R2, #0; bool
541B56:  ADDS            R0, #0x68 ; 'h'; this
541B58:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
541B5C:  MOV             R0, R8; this
541B5E:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
541B62:  B               loc_541BAA
541B64:  LDR.W           R0, [R10,#0x440]
541B68:  MOVS            R1, #4; int
541B6A:  ADDS            R0, #4; this
541B6C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
541B70:  CBZ             R0, loc_541BA8
541B72:  LDR.W           R0, [R10,#0x440]
541B76:  MOVS            R1, #4; int
541B78:  ADDS            R0, #4; this
541B7A:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
541B7E:  LDR             R1, [R0]
541B80:  LDR             R1, [R1,#0x14]
541B82:  BLX             R1
541B84:  MOVW            R1, #0x133
541B88:  CMP             R0, R1
541B8A:  BNE             loc_541BA8
541B8C:  LDR.W           R0, [R10,#0x440]
541B90:  MOVS            R1, #4; int
541B92:  ADDS            R0, #4; this
541B94:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
541B98:  LDR             R1, [R0]
541B9A:  MOVS            R2, #1
541B9C:  MOVS            R3, #0
541B9E:  MOVS            R4, #0
541BA0:  LDR             R6, [R1,#0x1C]
541BA2:  MOV             R1, R10
541BA4:  BLX             R6
541BA6:  B               loc_541BAA
541BA8:  MOVS            R4, #0
541BAA:  MOV             R0, R4
541BAC:  ADD             SP, SP, #0x18
541BAE:  POP.W           {R8-R10}
541BB2:  POP             {R4-R7,PC}
541BB4:  LDR.W           R0, [R10,#0x440]
541BB8:  MOVS            R1, #4; int
541BBA:  ADDS            R0, #4; this
541BBC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
541BC0:  CMP             R0, #0
541BC2:  BEQ             loc_541C46
541BC4:  LDR.W           R0, [R10,#0x440]
541BC8:  MOVS            R1, #4; int
541BCA:  ADDS            R0, #4; this
541BCC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
541BD0:  LDR             R1, [R0]
541BD2:  LDR             R1, [R1,#0x14]
541BD4:  BLX             R1
541BD6:  MOVW            R1, #0x133
541BDA:  CMP             R0, R1
541BDC:  BNE             loc_541C46
541BDE:  LDR.W           R0, [R10,#0x440]
541BE2:  MOVS            R1, #4; int
541BE4:  ADDS            R0, #4; this
541BE6:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
541BEA:  MOV             R9, R0
541BEC:  CMP.W           R9, #0
541BF0:  BEQ             loc_541C46
541BF2:  MOV             R8, R9
541BF4:  LDR.W           R0, [R8,#8]!; this
541BF8:  CMP             R0, #0
541BFA:  ITT NE
541BFC:  LDRNE.W         R1, [R9,#0x24]
541C00:  CMPNE           R1, #0
541C02:  BEQ             loc_541C46
541C04:  MOV             R1, R6; CEntity **
541C06:  STR             R0, [R4,#8]
541C08:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
541C0C:  VLDR            D16, [R9,#0xC]
541C10:  MOV             R1, R10; CPed *
541C12:  LDR.W           R0, [R9,#0x14]
541C16:  STR             R0, [R4,#0x14]
541C18:  MOVW            R0, #0x13F
541C1C:  STR             R0, [R4,#0x20]
541C1E:  VSTR            D16, [R4,#0xC]
541C22:  LDR.W           R0, [R9,#0x24]
541C26:  STR             R0, [R4,#0x24]
541C28:  MOV             R0, R4; this
541C2A:  BLX             j__ZN21CTaskSimpleHoldEntity19ChoosePutDownHeightEP4CPed; CTaskSimpleHoldEntity::ChoosePutDownHeight(CPed *)
541C2E:  LDR.W           R0, [R9,#8]; this
541C32:  CMP             R0, #0
541C34:  BEQ.W           loc_541886
541C38:  MOV             R1, R8; CEntity **
541C3A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
541C3E:  MOVS            R0, #0
541C40:  STR.W           R0, [R8]
541C44:  B               loc_541886
541C46:  MOVS            R0, #1
541C48:  STRB.W          R0, [R4,#0x34]
541C4C:  B               loc_541886
