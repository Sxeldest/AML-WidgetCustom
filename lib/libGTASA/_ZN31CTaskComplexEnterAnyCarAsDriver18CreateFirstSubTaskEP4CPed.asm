; =========================================================
; Game Engine Function: _ZN31CTaskComplexEnterAnyCarAsDriver18CreateFirstSubTaskEP4CPed
; Address            : 0x4FC984 - 0x4FCB06
; =========================================================

4FC984:  PUSH            {R4-R7,LR}
4FC986:  ADD             R7, SP, #0xC
4FC988:  PUSH.W          {R8,R9,R11}
4FC98C:  VPUSH           {D8-D9}
4FC990:  MOV             R5, R1
4FC992:  LDR.W           R0, [R5,#0x440]
4FC996:  ADDS            R0, #0xD4; this
4FC998:  BLX             j__ZNK15CVehicleScanner24GetClosestVehicleInRangeEv; CVehicleScanner::GetClosestVehicleInRange(void)
4FC99C:  MOV             R4, R0
4FC99E:  CBZ             R4, loc_4FCA08
4FC9A0:  MOV             R0, R4; this
4FC9A2:  MOV             R1, R5; CVehicle *
4FC9A4:  BLX             j__ZN13CCarEnterExit18IsVehicleStealableERK8CVehicleRK4CPed; CCarEnterExit::IsVehicleStealable(CVehicle const&,CPed const&)
4FC9A8:  CMP             R0, #1
4FC9AA:  BNE             loc_4FCA08
4FC9AC:  MOVS            R0, #dword_50; this
4FC9AE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FC9B2:  MOV             R5, R0
4FC9B4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FC9B8:  VMOV.I32        Q8, #0
4FC9BC:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4FC9C6)
4FC9BE:  ADD.W           R1, R5, #0x14
4FC9C2:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4FC9C4:  VST1.32         {D16-D17}, [R1]
4FC9C8:  MOVS            R1, #6
4FC9CA:  STR             R1, [R5,#0x24]
4FC9CC:  MOVS            R1, #0
4FC9CE:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4FC9D0:  STRH            R1, [R5,#0x28]
4FC9D2:  STR             R1, [R5,#0x38]
4FC9D4:  ADDS            R0, #8
4FC9D6:  STRB.W          R1, [R5,#0x3C]
4FC9DA:  STR             R1, [R5,#0x40]
4FC9DC:  STRB.W          R1, [R5,#0x44]
4FC9E0:  MOVS            R1, #0
4FC9E2:  LDRB            R2, [R5,#0x10]
4FC9E4:  MOVT            R1, #0xBF80
4FC9E8:  STR             R1, [R5,#0x48]
4FC9EA:  MOV             R1, R5
4FC9EC:  STR             R0, [R5]
4FC9EE:  AND.W           R0, R2, #0xF0
4FC9F2:  ORR.W           R0, R0, #1
4FC9F6:  STRB            R0, [R5,#0x10]
4FC9F8:  STR.W           R4, [R1,#0xC]!; CEntity **
4FC9FC:  MOV             R0, R4; this
4FC9FE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FCA02:  LDR             R0, =(_ZTV28CTaskComplexEnterCarAsDriver_ptr - 0x4FCA08)
4FCA04:  ADD             R0, PC; _ZTV28CTaskComplexEnterCarAsDriver_ptr
4FCA06:  B               loc_4FCAF4
4FCA08:  LDR.W           R0, [R5,#0x440]
4FCA0C:  MOV.W           R8, #0
4FCA10:  VLDR            S16, =3.4028e38
4FCA14:  MOVS            R4, #0
4FCA16:  ADD.W           R9, R0, #0xE0
4FCA1A:  LDR.W           R6, [R9,R4,LSL#2]
4FCA1E:  CBZ             R6, loc_4FCA7C
4FCA20:  LDR             R0, [R6,#0x14]
4FCA22:  LDR             R1, [R5,#0x14]
4FCA24:  ADD.W           R2, R0, #0x30 ; '0'
4FCA28:  CMP             R0, #0
4FCA2A:  IT EQ
4FCA2C:  ADDEQ           R2, R6, #4; CPed *
4FCA2E:  ADD.W           R0, R1, #0x30 ; '0'
4FCA32:  CMP             R1, #0
4FCA34:  VLDR            S0, [R2]
4FCA38:  IT EQ
4FCA3A:  ADDEQ           R0, R5, #4
4FCA3C:  VLDR            D16, [R2,#4]
4FCA40:  VLDR            S2, [R0]
4FCA44:  VLDR            D17, [R0,#4]
4FCA48:  VSUB.F32        S0, S2, S0
4FCA4C:  VSUB.F32        D16, D17, D16
4FCA50:  VMUL.F32        D1, D16, D16
4FCA54:  VMUL.F32        S0, S0, S0
4FCA58:  VADD.F32        S0, S0, S2
4FCA5C:  VADD.F32        S18, S0, S3
4FCA60:  VCMPE.F32       S18, S16
4FCA64:  VMRS            APSR_nzcv, FPSCR
4FCA68:  BGE             loc_4FCA7C
4FCA6A:  MOV             R0, R6; this
4FCA6C:  MOV             R1, R5; CVehicle *
4FCA6E:  BLX             j__ZN13CCarEnterExit18IsVehicleStealableERK8CVehicleRK4CPed; CCarEnterExit::IsVehicleStealable(CVehicle const&,CPed const&)
4FCA72:  CMP             R0, #0
4FCA74:  ITT NE
4FCA76:  VMOVNE.F32      S16, S18
4FCA7A:  MOVNE           R8, R6
4FCA7C:  ADDS            R4, #1
4FCA7E:  CMP             R4, #0x10
4FCA80:  BNE             loc_4FCA1A
4FCA82:  CMP.W           R8, #0
4FCA86:  BEQ             loc_4FCAE4
4FCA88:  MOVS            R0, #dword_50; this
4FCA8A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCA8E:  MOV             R5, R0
4FCA90:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FCA94:  VMOV.I32        Q8, #0
4FCA98:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4FCAA2)
4FCA9A:  ADD.W           R1, R5, #0x14
4FCA9E:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4FCAA0:  VST1.32         {D16-D17}, [R1]
4FCAA4:  MOVS            R1, #6
4FCAA6:  STR             R1, [R5,#0x24]
4FCAA8:  MOVS            R1, #0
4FCAAA:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4FCAAC:  STRH            R1, [R5,#0x28]
4FCAAE:  STR             R1, [R5,#0x38]
4FCAB0:  ADDS            R0, #8
4FCAB2:  STRB.W          R1, [R5,#0x3C]
4FCAB6:  STR             R1, [R5,#0x40]
4FCAB8:  STRB.W          R1, [R5,#0x44]
4FCABC:  MOVS            R1, #0
4FCABE:  LDRB            R2, [R5,#0x10]
4FCAC0:  MOVT            R1, #0xBF80
4FCAC4:  STR             R1, [R5,#0x48]
4FCAC6:  MOV             R1, R5
4FCAC8:  STR             R0, [R5]
4FCACA:  AND.W           R0, R2, #0xF0
4FCACE:  ORR.W           R0, R0, #1
4FCAD2:  STRB            R0, [R5,#0x10]
4FCAD4:  STR.W           R8, [R1,#0xC]!; CEntity **
4FCAD8:  MOV             R0, R8; this
4FCADA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FCADE:  LDR             R0, =(_ZTV28CTaskComplexEnterCarAsDriver_ptr - 0x4FCAE4)
4FCAE0:  ADD             R0, PC; _ZTV28CTaskComplexEnterCarAsDriver_ptr
4FCAE2:  B               loc_4FCAF4
4FCAE4:  MOVS            R0, #byte_8; this
4FCAE6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCAEA:  MOV             R5, R0
4FCAEC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FCAF0:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4FCAF6)
4FCAF2:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4FCAF4:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone
4FCAF6:  ADDS            R0, #8
4FCAF8:  STR             R0, [R5]
4FCAFA:  MOV             R0, R5
4FCAFC:  VPOP            {D8-D9}
4FCB00:  POP.W           {R8,R9,R11}
4FCB04:  POP             {R4-R7,PC}
