; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeans14ControlSubTaskEP4CPed
; Address            : 0x524B60 - 0x524C90
; =========================================================

524B60:  PUSH            {R4-R7,LR}
524B62:  ADD             R7, SP, #0xC
524B64:  PUSH.W          {R8}
524B68:  MOV             R5, R0
524B6A:  MOV             R6, R1
524B6C:  LDR             R4, [R5,#8]
524B6E:  LDR             R0, [R4]
524B70:  LDR             R1, [R0,#0x14]
524B72:  MOV             R0, R4
524B74:  BLX             R1
524B76:  MOVW            R1, #0x38A
524B7A:  CMP             R0, R1
524B7C:  BNE.W           loc_524C88
524B80:  LDR             R1, [R5,#0x24]
524B82:  LDRB.W          R0, [R5,#0x30]
524B86:  ADDS            R1, #1
524B88:  BEQ             loc_524BA4
524B8A:  CBNZ            R0, loc_524BA6
524B8C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x524B96)
524B8E:  MOVW            R1, #0xBB8
524B92:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
524B94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
524B96:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
524B98:  STRD.W          R0, R1, [R5,#0x28]
524B9C:  MOVS            R0, #1
524B9E:  STRB.W          R0, [R5,#0x30]
524BA2:  B               loc_524BA6
524BA4:  CBZ             R0, loc_524BD2
524BA6:  LDRB.W          R0, [R5,#0x31]
524BAA:  CBZ             R0, loc_524BC0
524BAC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x524BB4)
524BAE:  MOVS            R1, #0
524BB0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
524BB2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
524BB4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
524BB6:  STRB.W          R1, [R5,#0x31]
524BBA:  STR             R0, [R5,#0x28]
524BBC:  MOV             R1, R0
524BBE:  B               loc_524BCA
524BC0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x524BC8)
524BC2:  LDR             R1, [R5,#0x28]
524BC4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
524BC6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
524BC8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
524BCA:  LDR             R2, [R5,#0x2C]
524BCC:  ADD             R1, R2; unsigned int
524BCE:  CMP             R1, R0
524BD0:  BLS             loc_524C56
524BD2:  LDR             R0, [R6,#0x14]
524BD4:  VLDR            S0, [R5,#0xC]
524BD8:  ADD.W           R1, R0, #0x30 ; '0'
524BDC:  CMP             R0, #0
524BDE:  IT EQ
524BE0:  ADDEQ           R1, R6, #4
524BE2:  VLDR            D16, [R5,#0x10]
524BE6:  VLDR            S2, [R1]
524BEA:  VLDR            D17, [R1,#4]
524BEE:  VSUB.F32        S0, S2, S0
524BF2:  VSUB.F32        D16, D17, D16
524BF6:  VMUL.F32        D1, D16, D16
524BFA:  VMUL.F32        S0, S0, S0
524BFE:  VADD.F32        S0, S0, S2
524C02:  VADD.F32        S0, S0, S3
524C06:  VLDR            S2, =2500.0
524C0A:  VCMPE.F32       S0, S2
524C0E:  VMRS            APSR_nzcv, FPSCR
524C12:  BLE             loc_524C88
524C14:  LDR.W           R0, [R6,#0x440]
524C18:  ADDS            R0, #0xD4; this
524C1A:  BLX             j__ZNK15CVehicleScanner24GetClosestVehicleInRangeEv; CVehicleScanner::GetClosestVehicleInRange(void)
524C1E:  MOV             R8, R0
524C20:  CMP.W           R8, #0
524C24:  ITT NE
524C26:  LDRNE.W         R0, [R5,#0x20]!
524C2A:  CMPNE           R8, R0
524C2C:  BEQ             loc_524C88
524C2E:  MOV             R0, R8; this
524C30:  MOV             R1, R6; CVehicle *
524C32:  BLX             j__ZN13CCarEnterExit18IsVehicleStealableERK8CVehicleRK4CPed; CCarEnterExit::IsVehicleStealable(CVehicle const&,CPed const&)
524C36:  CMP             R0, #1
524C38:  BNE             loc_524C88
524C3A:  MOVS            R0, #dword_50; this
524C3C:  STR.W           R8, [R5]
524C40:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524C44:  LDR             R1, [R5]; CVehicle *
524C46:  MOV             R4, R0
524C48:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
524C4C:  LDR             R0, [R5]; this
524C4E:  MOV             R1, R5; CEntity **
524C50:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
524C54:  B               loc_524C88
524C56:  MOVS            R0, #dword_34; this
524C58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524C5C:  MOV             R4, R0
524C5E:  LDR             R0, [R6,#0x14]
524C60:  LDR             R2, [R5,#0x24]; int
524C62:  ADD.W           R1, R0, #0x30 ; '0'
524C66:  CMP             R0, #0
524C68:  IT EQ
524C6A:  ADDEQ           R1, R6, #4; CVector *
524C6C:  MOV             R0, R4; this
524C6E:  BLX             j__ZN28CTaskSimpleCreateCarAndGetInC2ERK7CVectori; CTaskSimpleCreateCarAndGetIn::CTaskSimpleCreateCarAndGetIn(CVector const&,int)
524C72:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x524C7C)
524C74:  MOVW            R1, #0xBB8
524C78:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
524C7A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
524C7C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
524C7E:  STRD.W          R0, R1, [R5,#0x28]
524C82:  MOVS            R0, #1
524C84:  STRB.W          R0, [R5,#0x30]
524C88:  MOV             R0, R4
524C8A:  POP.W           {R8}
524C8E:  POP             {R4-R7,PC}
