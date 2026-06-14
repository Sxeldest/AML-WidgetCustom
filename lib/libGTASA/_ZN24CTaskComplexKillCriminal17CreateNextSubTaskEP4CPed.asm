; =========================================================
; Game Engine Function: _ZN24CTaskComplexKillCriminal17CreateNextSubTaskEP4CPed
; Address            : 0x53E94C - 0x53EE0E
; =========================================================

53E94C:  PUSH            {R4-R7,LR}
53E94E:  ADD             R7, SP, #0xC
53E950:  PUSH.W          {R8}
53E954:  SUB             SP, SP, #0x10
53E956:  MOV             R5, R0
53E958:  MOV             R8, R1
53E95A:  LDR             R0, [R5,#8]
53E95C:  LDR             R1, [R5,#0x10]
53E95E:  LDR             R2, [R0]
53E960:  LDR.W           R4, [R1,#0x7B0]
53E964:  LDR             R1, [R2,#0x14]
53E966:  BLX             R1
53E968:  MOVS            R6, #0
53E96A:  CMP.W           R0, #0x2C0
53E96E:  BLT             loc_53E9A4
53E970:  BEQ             loc_53E9E2
53E972:  CMP.W           R0, #0x3E8
53E976:  BEQ             loc_53EA22
53E978:  MOVW            R1, #0x3FE
53E97C:  CMP             R0, R1
53E97E:  BNE.W           loc_53ED5E
53E982:  LDR             R0, [R5,#0x10]
53E984:  LDRB.W          R0, [R0,#0x7C8]
53E988:  CMP             R0, #0
53E98A:  BEQ.W           loc_53ED04
53E98E:  MOV             R0, R5; this
53E990:  MOV.W           R1, #0x2D4; int
53E994:  MOV             R2, R8; CPed *
53E996:  MOVS            R3, #0; bool
53E998:  ADD             SP, SP, #0x10
53E99A:  POP.W           {R8}
53E99E:  POP.W           {R4-R7,LR}
53E9A2:  B               _ZNK24CTaskComplexKillCriminal13CreateSubTaskEiP4CPedb; CTaskComplexKillCriminal::CreateSubTask(int,CPed *,bool)
53E9A4:  CMP.W           R0, #0x2BC
53E9A8:  BEQ             loc_53EA3C
53E9AA:  MOVW            R1, #0x2BD
53E9AE:  CMP             R0, R1
53E9B0:  BNE.W           loc_53ED5E
53E9B4:  LDR.W           R0, [R8,#0x484]
53E9B8:  TST.W           R0, #0x100
53E9BC:  BEQ             loc_53EA46
53E9BE:  CMP             R4, #0
53E9C0:  BEQ.W           loc_53EB92
53E9C4:  ADDW            R1, R4, #0x544
53E9C8:  VLDR            S0, [R1]
53E9CC:  VCMPE.F32       S0, #0.0
53E9D0:  VMRS            APSR_nzcv, FPSCR
53E9D4:  ITTE GT
53E9D6:  LDRBGT.W        R1, [R4,#0x485]
53E9DA:  ANDGT.W         R6, R1, #1
53E9DE:  MOVLE           R6, #1
53E9E0:  B               loc_53EB94
53E9E2:  LDR.W           R0, [R8,#0x590]
53E9E6:  CMP             R0, #0
53E9E8:  BEQ.W           loc_53EB44
53E9EC:  LDRB            R0, [R5,#0x1A]
53E9EE:  CMP             R0, #0
53E9F0:  BNE.W           loc_53EB44
53E9F4:  LDRB            R0, [R5,#0x19]
53E9F6:  CMP             R0, #0
53E9F8:  BEQ.W           loc_53ED68
53E9FC:  LDR             R0, [R5,#8]
53E9FE:  CBZ             R0, loc_53EA10
53EA00:  LDR             R1, [R0]
53EA02:  LDR             R1, [R1,#0x14]
53EA04:  BLX             R1
53EA06:  MOVW            R1, #0x2BD; unsigned int
53EA0A:  CMP             R0, R1
53EA0C:  BEQ.W           loc_53ED16
53EA10:  MOVS            R0, #dword_50; this
53EA12:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53EA16:  LDR.W           R1, [R8,#0x590]; CVehicle *
53EA1A:  MOV             R6, R0
53EA1C:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
53EA20:  B               loc_53ED5E
53EA22:  LDR             R0, [R5,#0xC]
53EA24:  CBZ             R0, loc_53EA72
53EA26:  ADDW            R1, R0, #0x544
53EA2A:  VLDR            S0, [R1]
53EA2E:  VCMPE.F32       S0, #0.0
53EA32:  VMRS            APSR_nzcv, FPSCR
53EA36:  BLE             loc_53EA72
53EA38:  MOV             R1, R0
53EA3A:  B               loc_53EB12
53EA3C:  LDRB.W          R0, [R8,#0x485]
53EA40:  LSLS            R0, R0, #0x1F
53EA42:  BNE.W           loc_53ED04
53EA46:  LDRB            R0, [R5,#0x19]
53EA48:  MOVS            R1, #1
53EA4A:  STRB            R1, [R5,#0x1A]
53EA4C:  CMP             R0, #0
53EA4E:  BEQ             loc_53EB28
53EA50:  LDR             R0, [R5,#8]
53EA52:  CBZ             R0, loc_53EA64
53EA54:  LDR             R1, [R0]
53EA56:  LDR             R1, [R1,#0x14]
53EA58:  BLX             R1
53EA5A:  MOVW            R1, #0x516
53EA5E:  CMP             R0, R1
53EA60:  BEQ.W           loc_53ED16
53EA64:  LDR             R0, [R5,#0xC]; this
53EA66:  CMP             R0, #0
53EA68:  BEQ             loc_53EB5A
53EA6A:  BLX             j__ZN4CPed26SetPedDefaultDecisionMakerEv; CPed::SetPedDefaultDecisionMaker(void)
53EA6E:  MOVS            R6, #0
53EA70:  B               loc_53ED5E
53EA72:  LDR             R1, [R5,#0x10]
53EA74:  LDR.W           R2, [R1,#0x7B4]
53EA78:  CBZ             R2, loc_53EA94
53EA7A:  ADDW            R3, R2, #0x544
53EA7E:  VLDR            S0, [R3]
53EA82:  VCMPE.F32       S0, #0.0
53EA86:  VMRS            APSR_nzcv, FPSCR
53EA8A:  BLE             loc_53EA94
53EA8C:  CMP             R2, R0
53EA8E:  IT EQ
53EA90:  MOVEQ           R2, #0
53EA92:  B               loc_53EA96
53EA94:  MOVS            R2, #0
53EA96:  LDR.W           R3, [R1,#0x7B8]
53EA9A:  CBZ             R3, loc_53EAB4
53EA9C:  ADDW            R6, R3, #0x544
53EAA0:  VLDR            S0, [R6]
53EAA4:  VCMPE.F32       S0, #0.0
53EAA8:  VMRS            APSR_nzcv, FPSCR
53EAAC:  BLE             loc_53EAB4
53EAAE:  CMP             R3, R0
53EAB0:  IT NE
53EAB2:  MOVNE           R2, R3
53EAB4:  LDR.W           R3, [R1,#0x7BC]
53EAB8:  CBZ             R3, loc_53EAD2
53EABA:  ADDW            R6, R3, #0x544
53EABE:  VLDR            S0, [R6]
53EAC2:  VCMPE.F32       S0, #0.0
53EAC6:  VMRS            APSR_nzcv, FPSCR
53EACA:  BLE             loc_53EAD2
53EACC:  CMP             R3, R0
53EACE:  IT NE
53EAD0:  MOVNE           R2, R3
53EAD2:  LDR.W           R3, [R1,#0x7C0]
53EAD6:  CBZ             R3, loc_53EAF0
53EAD8:  ADDW            R6, R3, #0x544
53EADC:  VLDR            S0, [R6]
53EAE0:  VCMPE.F32       S0, #0.0
53EAE4:  VMRS            APSR_nzcv, FPSCR
53EAE8:  BLE             loc_53EAF0
53EAEA:  CMP             R3, R0
53EAEC:  IT NE
53EAEE:  MOVNE           R2, R3
53EAF0:  LDR.W           R1, [R1,#0x7C4]
53EAF4:  CBZ             R1, loc_53EB0C
53EAF6:  ADDW            R3, R1, #0x544
53EAFA:  VLDR            S0, [R3]
53EAFE:  VCMPE.F32       S0, #0.0
53EB02:  VMRS            APSR_nzcv, FPSCR
53EB06:  BLE             loc_53EB0C
53EB08:  CMP             R1, R0
53EB0A:  BNE             loc_53EB12
53EB0C:  CMP             R2, #0
53EB0E:  MOV             R1, R2; CPed *
53EB10:  BEQ             loc_53EB1E
53EB12:  MOV             R0, R5; this
53EB14:  BLX             j__ZN24CTaskComplexKillCriminal12ChangeTargetEP4CPed; CTaskComplexKillCriminal::ChangeTarget(CPed *)
53EB18:  CMP             R0, #1
53EB1A:  BEQ.W           loc_53EC4E
53EB1E:  LDRB            R0, [R5,#0x1A]
53EB20:  CBZ             R0, loc_53EB5E
53EB22:  MOVW            R1, #0x516
53EB26:  B               loc_53EDFE
53EB28:  LDR             R0, [R5,#0xC]
53EB2A:  CMP             R0, #0
53EB2C:  BEQ.W           loc_53EA50
53EB30:  ADDW            R0, R0, #0x544
53EB34:  VLDR            S0, [R0]
53EB38:  VCMPE.F32       S0, #0.0
53EB3C:  VMRS            APSR_nzcv, FPSCR
53EB40:  BLE.W           loc_53EA50
53EB44:  LDR             R0, [R5,#8]
53EB46:  CMP             R0, #0
53EB48:  BEQ.W           loc_53EC4E
53EB4C:  LDR             R1, [R0]
53EB4E:  LDR             R1, [R1,#0x14]
53EB50:  BLX             R1
53EB52:  CMP.W           R0, #0x3E8
53EB56:  BNE             loc_53EC4E
53EB58:  B               loc_53ED16
53EB5A:  MOVS            R6, #0
53EB5C:  B               loc_53ED5E
53EB5E:  LDR.W           R0, [R8,#0x590]
53EB62:  CMP             R0, #0
53EB64:  BEQ             loc_53EB22
53EB66:  LDR             R0, [R5,#0x10]
53EB68:  LDRB.W          R1, [R0,#0x7C8]
53EB6C:  CMP             R1, #0
53EB6E:  BNE.W           loc_53EDFA
53EB72:  CMP             R4, #0
53EB74:  BEQ.W           loc_53EDEC
53EB78:  ADDW            R1, R4, #0x544
53EB7C:  VLDR            S0, [R1]
53EB80:  VCMPE.F32       S0, #0.0
53EB84:  VMRS            APSR_nzcv, FPSCR
53EB88:  BLE.W           loc_53EDEC
53EB8C:  MOV.W           R1, #0x2BC
53EB90:  B               loc_53EDFE
53EB92:  MOVS            R6, #1
53EB94:  LDRB            R1, [R5,#0x19]
53EB96:  CMP             R1, #0
53EB98:  BEQ             loc_53EC78
53EB9A:  LDR             R1, [R5,#0x10]
53EB9C:  LDR.W           R2, [R1,#0x7B4]
53EBA0:  CBZ             R2, loc_53EBBE
53EBA2:  ADDW            R3, R2, #0x544
53EBA6:  VLDR            S0, [R3]
53EBAA:  VCMPE.F32       S0, #0.0
53EBAE:  VMRS            APSR_nzcv, FPSCR
53EBB2:  BLE             loc_53EBBE
53EBB4:  LDR             R3, [R5,#0xC]
53EBB6:  CMP             R2, R3
53EBB8:  IT EQ
53EBBA:  MOVEQ           R2, #0
53EBBC:  B               loc_53EBC0
53EBBE:  MOVS            R2, #0
53EBC0:  LDR.W           R3, [R1,#0x7B8]
53EBC4:  CBZ             R3, loc_53EBE0
53EBC6:  ADDW            R4, R3, #0x544
53EBCA:  VLDR            S0, [R4]
53EBCE:  VCMPE.F32       S0, #0.0
53EBD2:  VMRS            APSR_nzcv, FPSCR
53EBD6:  BLE             loc_53EBE0
53EBD8:  LDR             R4, [R5,#0xC]
53EBDA:  CMP             R3, R4
53EBDC:  IT NE
53EBDE:  MOVNE           R2, R3
53EBE0:  LDR.W           R3, [R1,#0x7BC]
53EBE4:  CBZ             R3, loc_53EC00
53EBE6:  ADDW            R4, R3, #0x544
53EBEA:  VLDR            S0, [R4]
53EBEE:  VCMPE.F32       S0, #0.0
53EBF2:  VMRS            APSR_nzcv, FPSCR
53EBF6:  BLE             loc_53EC00
53EBF8:  LDR             R4, [R5,#0xC]
53EBFA:  CMP             R3, R4
53EBFC:  IT NE
53EBFE:  MOVNE           R2, R3
53EC00:  LDR.W           R3, [R1,#0x7C0]
53EC04:  CBZ             R3, loc_53EC20
53EC06:  ADDW            R4, R3, #0x544
53EC0A:  VLDR            S0, [R4]
53EC0E:  VCMPE.F32       S0, #0.0
53EC12:  VMRS            APSR_nzcv, FPSCR
53EC16:  BLE             loc_53EC20
53EC18:  LDR             R4, [R5,#0xC]
53EC1A:  CMP             R3, R4
53EC1C:  IT NE
53EC1E:  MOVNE           R2, R3
53EC20:  LDR.W           R1, [R1,#0x7C4]
53EC24:  CBZ             R1, loc_53EC3E
53EC26:  ADDW            R3, R1, #0x544
53EC2A:  VLDR            S0, [R3]
53EC2E:  VCMPE.F32       S0, #0.0
53EC32:  VMRS            APSR_nzcv, FPSCR
53EC36:  BLE             loc_53EC3E
53EC38:  LDR             R3, [R5,#0xC]
53EC3A:  CMP             R1, R3
53EC3C:  BNE             loc_53EC44
53EC3E:  CMP             R2, #0
53EC40:  MOV             R1, R2; CPed *
53EC42:  BEQ             loc_53ED20
53EC44:  MOV             R0, R5; this
53EC46:  BLX             j__ZN24CTaskComplexKillCriminal12ChangeTargetEP4CPed; CTaskComplexKillCriminal::ChangeTarget(CPed *)
53EC4A:  CMP             R0, #0
53EC4C:  BEQ             loc_53ED1A
53EC4E:  MOVS            R0, #dword_38; this
53EC50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53EC54:  LDR             R1, [R5,#0xC]; CPed *
53EC56:  MOV             R6, R0
53EC58:  MOVS            R2, #0
53EC5A:  MOVS            R0, #1
53EC5C:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned int
53EC60:  MOV.W           R2, #0xFFFFFFFF; int
53EC64:  STR             R0, [SP,#0x20+var_18]; int
53EC66:  MOV             R0, R6; this
53EC68:  MOVS            R3, #0; unsigned int
53EC6A:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
53EC6E:  MOV             R0, R8
53EC70:  MOVS            R1, #0x16
53EC72:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53EC76:  B               loc_53ED5E
53EC78:  LDR             R1, [R5,#0xC]
53EC7A:  CMP             R1, #0
53EC7C:  BEQ.W           loc_53EB9A
53EC80:  ADDW            R2, R1, #0x544
53EC84:  VLDR            S0, [R2]
53EC88:  VCMPE.F32       S0, #0.0
53EC8C:  VMRS            APSR_nzcv, FPSCR
53EC90:  BLE.W           loc_53EB9A
53EC94:  LDRB.W          R0, [R1,#0x485]
53EC98:  LSLS            R0, R0, #0x1F
53EC9A:  ITT NE
53EC9C:  LDRNE.W         R0, [R1,#0x590]
53ECA0:  CMPNE           R0, #0
53ECA2:  BNE             loc_53ECFE
53ECA4:  LDR.W           R0, [R8,#0x590]
53ECA8:  CMP             R0, #0
53ECAA:  BEQ.W           loc_53EB44
53ECAE:  LDR             R2, [R1,#0x14]
53ECB0:  LDR             R3, [R0,#0x14]
53ECB2:  ADD.W           R4, R2, #0x30 ; '0'
53ECB6:  CMP             R2, #0
53ECB8:  IT EQ
53ECBA:  ADDEQ           R4, R1, #4
53ECBC:  ADD.W           R1, R3, #0x30 ; '0'
53ECC0:  CMP             R3, #0
53ECC2:  VLDR            S0, [R4]
53ECC6:  IT EQ
53ECC8:  ADDEQ           R1, R0, #4
53ECCA:  VLDR            D16, [R4,#4]
53ECCE:  VLDR            S2, [R1]
53ECD2:  VLDR            D17, [R1,#4]
53ECD6:  VSUB.F32        S0, S2, S0
53ECDA:  VSUB.F32        D16, D17, D16
53ECDE:  VMUL.F32        D1, D16, D16
53ECE2:  VMUL.F32        S0, S0, S0
53ECE6:  VADD.F32        S0, S0, S2
53ECEA:  VADD.F32        S0, S0, S3
53ECEE:  VLDR            S2, =625.0
53ECF2:  VCMPE.F32       S0, S2
53ECF6:  VMRS            APSR_nzcv, FPSCR
53ECFA:  BLE.W           loc_53EB44
53ECFE:  CMP             R6, #1
53ED00:  BEQ.W           loc_53E98E
53ED04:  LDR             R0, [R5,#8]
53ED06:  CBZ             R0, loc_53ED4A
53ED08:  LDR             R1, [R0]
53ED0A:  LDR             R1, [R1,#0x14]
53ED0C:  BLX             R1
53ED0E:  MOVW            R1, #0x2C5
53ED12:  CMP             R0, R1
53ED14:  BNE             loc_53ED4A
53ED16:  LDR             R6, [R5,#8]
53ED18:  B               loc_53ED5E
53ED1A:  ADDW            R0, R8, #0x484
53ED1E:  LDR             R0, [R0]
53ED20:  LSLS            R0, R0, #0x17
53ED22:  BPL             loc_53ED38
53ED24:  LDR.W           R0, [R8,#0x590]
53ED28:  CMP             R0, #0
53ED2A:  ITTT NE
53ED2C:  LDRNE.W         R1, [R0,#0x430]
53ED30:  BICNE.W         R1, R1, #0x8000; unsigned int
53ED34:  STRNE.W         R1, [R0,#0x430]
53ED38:  LDR             R0, [R5,#8]
53ED3A:  CMP             R6, #1
53ED3C:  BNE             loc_53ED46
53ED3E:  CMP             R0, #0
53ED40:  BNE.W           loc_53EA54
53ED44:  B               loc_53EA64
53ED46:  CMP             R0, #0
53ED48:  BNE             loc_53ED08
53ED4A:  MOVS            R0, #dword_60; this
53ED4C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53ED50:  LDR.W           R1, [R8,#0x590]; CVehicle *
53ED54:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
53ED56:  MOVS            R3, #0; bool
53ED58:  MOV             R6, R0
53ED5A:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
53ED5E:  MOV             R0, R6
53ED60:  ADD             SP, SP, #0x10
53ED62:  POP.W           {R8}
53ED66:  POP             {R4-R7,PC}
53ED68:  LDR             R0, [R5,#0xC]
53ED6A:  CMP             R0, #0
53ED6C:  BEQ.W           loc_53E9FC
53ED70:  ADDW            R1, R0, #0x544
53ED74:  VLDR            S0, [R1]
53ED78:  VCMPE.F32       S0, #0.0
53ED7C:  VMRS            APSR_nzcv, FPSCR
53ED80:  BLE.W           loc_53E9FC
53ED84:  LDRB.W          R1, [R0,#0x485]
53ED88:  LSLS            R1, R1, #0x1F
53ED8A:  ITT NE
53ED8C:  LDRNE.W         R1, [R0,#0x590]
53ED90:  CMPNE           R1, #0
53ED92:  BNE.W           loc_53E9FC
53ED96:  LDR             R1, [R0,#0x14]
53ED98:  LDR.W           R2, [R8,#0x14]
53ED9C:  ADD.W           R3, R1, #0x30 ; '0'
53EDA0:  CMP             R1, #0
53EDA2:  IT EQ
53EDA4:  ADDEQ           R3, R0, #4
53EDA6:  ADD.W           R0, R2, #0x30 ; '0'
53EDAA:  CMP             R2, #0
53EDAC:  VLDR            S0, [R3]
53EDB0:  IT EQ
53EDB2:  ADDEQ.W         R0, R8, #4
53EDB6:  VLDR            D16, [R3,#4]
53EDBA:  VLDR            S2, [R0]
53EDBE:  VLDR            D17, [R0,#4]
53EDC2:  VSUB.F32        S0, S2, S0
53EDC6:  VSUB.F32        D16, D17, D16
53EDCA:  VMUL.F32        D1, D16, D16
53EDCE:  VMUL.F32        S0, S0, S0
53EDD2:  VADD.F32        S0, S0, S2
53EDD6:  VADD.F32        S0, S0, S3
53EDDA:  VLDR            S2, =625.0
53EDDE:  VCMPE.F32       S0, S2
53EDE2:  VMRS            APSR_nzcv, FPSCR
53EDE6:  BGT.W           loc_53E9FC
53EDEA:  B               loc_53EB44
53EDEC:  MOVS            R1, #1
53EDEE:  STRB.W          R1, [R0,#0x7C8]
53EDF2:  MOVS            R1, #0; CCopPed *
53EDF4:  LDR             R0, [R5,#0x10]; this
53EDF6:  BLX             j__ZN7CCopPed10SetPartnerEPS_; CCopPed::SetPartner(CCopPed*)
53EDFA:  MOVW            R1, #0x2BD; int
53EDFE:  MOV             R0, R5; this
53EE00:  MOV             R2, R8; CPed *
53EE02:  MOVS            R3, #0; bool
53EE04:  BLX             j__ZNK24CTaskComplexKillCriminal13CreateSubTaskEiP4CPedb; CTaskComplexKillCriminal::CreateSubTask(int,CPed *,bool)
53EE08:  MOVS            R1, #1
53EE0A:  STRB            R1, [R5,#0x19]
53EE0C:  B               loc_53ED60
