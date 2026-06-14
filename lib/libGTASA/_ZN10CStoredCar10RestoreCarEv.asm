; =========================================================
; Game Engine Function: _ZN10CStoredCar10RestoreCarEv
; Address            : 0x313C10 - 0x3140CA
; =========================================================

313C10:  PUSH            {R4-R7,LR}
313C12:  ADD             R7, SP, #0xC
313C14:  PUSH.W          {R8}
313C18:  MOV             R8, R0
313C1A:  MOVS            R1, #8; int
313C1C:  LDRH.W          R0, [R8,#0x12]; this
313C20:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
313C24:  ADD.W           R6, R8, #0x14
313C28:  MOVS            R4, #0
313C2A:  MOVW            R5, #0xFFFF
313C2E:  LDRH.W          R0, [R6,R4,LSL#1]
313C32:  CMP             R0, R5
313C34:  BEQ             loc_313C3E
313C36:  SXTH            R0, R0; this
313C38:  MOVS            R1, #0; int
313C3A:  BLX             j__ZN10CStreaming21RequestVehicleUpgradeEii; CStreaming::RequestVehicleUpgrade(int,int)
313C3E:  ADDS            R4, #1
313C40:  CMP             R4, #0xF
313C42:  BNE             loc_313C2E
313C44:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x313C50)
313C48:  LDRH.W          R1, [R8,#0x12]
313C4C:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
313C4E:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
313C50:  ADD.W           R1, R1, R1,LSL#2; int
313C54:  ADD.W           R0, R0, R1,LSL#2
313C58:  LDRB            R0, [R0,#0x10]
313C5A:  CMP             R0, #1
313C5C:  BNE.W           loc_313DC4
313C60:  LDRH.W          R0, [R8,#0x14]
313C64:  CMP             R0, R5
313C66:  BEQ             loc_313C74
313C68:  SXTH            R0, R0; this
313C6A:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313C6E:  CMP             R0, #1
313C70:  BNE.W           loc_313DC4
313C74:  LDRH.W          R0, [R8,#0x16]
313C78:  CMP             R0, R5
313C7A:  BEQ             loc_313C88
313C7C:  SXTH            R0, R0; this
313C7E:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313C82:  CMP             R0, #1
313C84:  BNE.W           loc_313DC4
313C88:  LDRH.W          R0, [R8,#0x18]
313C8C:  CMP             R0, R5
313C8E:  BEQ             loc_313C9C
313C90:  SXTH            R0, R0; this
313C92:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313C96:  CMP             R0, #1
313C98:  BNE.W           loc_313DC4
313C9C:  LDRH.W          R0, [R8,#0x1A]
313CA0:  CMP             R0, R5
313CA2:  BEQ             loc_313CB0
313CA4:  SXTH            R0, R0; this
313CA6:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313CAA:  CMP             R0, #1
313CAC:  BNE.W           loc_313DC4
313CB0:  LDRH.W          R0, [R8,#0x1C]
313CB4:  CMP             R0, R5
313CB6:  BEQ             loc_313CC4
313CB8:  SXTH            R0, R0; this
313CBA:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313CBE:  CMP             R0, #1
313CC0:  BNE.W           loc_313DC4
313CC4:  LDRH.W          R0, [R8,#0x1E]
313CC8:  CMP             R0, R5
313CCA:  BEQ             loc_313CD8
313CCC:  SXTH            R0, R0; this
313CCE:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313CD2:  CMP             R0, #1
313CD4:  BNE.W           loc_313DC4
313CD8:  LDRH.W          R0, [R8,#0x20]
313CDC:  CMP             R0, R5
313CDE:  BEQ             loc_313CEC
313CE0:  SXTH            R0, R0; this
313CE2:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313CE6:  CMP             R0, #1
313CE8:  BNE.W           loc_313DC4
313CEC:  LDRH.W          R0, [R8,#0x22]
313CF0:  CMP             R0, R5
313CF2:  BEQ             loc_313CFE
313CF4:  SXTH            R0, R0; this
313CF6:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313CFA:  CMP             R0, #1
313CFC:  BNE             loc_313DC4
313CFE:  LDRH.W          R0, [R8,#0x24]
313D02:  CMP             R0, R5
313D04:  BEQ             loc_313D10
313D06:  SXTH            R0, R0; this
313D08:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313D0C:  CMP             R0, #1
313D0E:  BNE             loc_313DC4
313D10:  LDRH.W          R0, [R8,#0x26]
313D14:  CMP             R0, R5
313D16:  BEQ             loc_313D22
313D18:  SXTH            R0, R0; this
313D1A:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313D1E:  CMP             R0, #1
313D20:  BNE             loc_313DC4
313D22:  LDRH.W          R0, [R8,#0x28]
313D26:  CMP             R0, R5
313D28:  BEQ             loc_313D34
313D2A:  SXTH            R0, R0; this
313D2C:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313D30:  CMP             R0, #1
313D32:  BNE             loc_313DC4
313D34:  LDRH.W          R0, [R8,#0x2A]
313D38:  CMP             R0, R5
313D3A:  BEQ             loc_313D46
313D3C:  SXTH            R0, R0; this
313D3E:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313D42:  CMP             R0, #1
313D44:  BNE             loc_313DC4
313D46:  LDRH.W          R0, [R8,#0x2C]
313D4A:  CMP             R0, R5
313D4C:  BEQ             loc_313D58
313D4E:  SXTH            R0, R0; this
313D50:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313D54:  CMP             R0, #1
313D56:  BNE             loc_313DC4
313D58:  LDRH.W          R0, [R8,#0x2E]
313D5C:  CMP             R0, R5
313D5E:  BEQ             loc_313D6A
313D60:  SXTH            R0, R0; this
313D62:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313D66:  CMP             R0, #1
313D68:  BNE             loc_313DC4
313D6A:  LDRH.W          R0, [R8,#0x30]
313D6E:  CMP             R0, R5
313D70:  BEQ             loc_313D7C
313D72:  SXTH            R0, R0; this
313D74:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
313D78:  CMP             R0, #1
313D7A:  BNE             loc_313DC4
313D7C:  LDR             R0, =(_ZN17CVehicleModelInfo13ms_compsToUseE_ptr - 0x313D84)
313D7E:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x313D8A)
313D80:  ADD             R0, PC; _ZN17CVehicleModelInfo13ms_compsToUseE_ptr
313D82:  LDRH.W          R2, [R8,#0x37]
313D86:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
313D88:  LDR             R0, [R0]; CVehicleModelInfo::ms_compsToUse ...
313D8A:  LDR             R1, [R1]; unsigned int
313D8C:  STRH            R2, [R0]; CVehicleModelInfo::ms_compsToUse
313D8E:  LDRH.W          R0, [R8,#0x12]
313D92:  LDR.W           R0, [R1,R0,LSL#2]
313D96:  LDR             R0, [R0,#0x54]
313D98:  SUBS            R0, #1; switch 11 cases
313D9A:  CMP             R0, #0xA
313D9C:  BHI             def_313D9E; jumptable 00313D9E default case, cases 6-8
313D9E:  TBB.W           [PC,R0]; switch jump
313DA2:  DCB 6; jump table for switch statement
313DA3:  DCB 0x16
313DA4:  DCB 0x21
313DA5:  DCB 0x2C
313DA6:  DCB 0x37
313DA7:  DCB 0x42
313DA8:  DCB 0x42
313DA9:  DCB 0x42
313DAA:  DCB 0x4E
313DAB:  DCB 0x59
313DAC:  DCB 0x6A
313DAD:  ALIGN 2
313DAE:  MOV.W           R0, #(elf_hash_bucket+0x8B4); jumptable 00313D9E case 1
313DB2:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313DB6:  LDRH.W          R1, [R8,#0x12]; int
313DBA:  MOVS            R2, #1; unsigned __int8
313DBC:  MOV             R5, R0
313DBE:  BLX             j__ZN13CMonsterTruckC2Eih; CMonsterTruck::CMonsterTruck(int,uchar)
313DC2:  B               loc_313E8A
313DC4:  MOVS            R5, #0
313DC6:  MOV             R0, R5
313DC8:  POP.W           {R8}
313DCC:  POP             {R4-R7,PC}
313DCE:  MOV.W           R0, #(elf_hash_bucket+0x8D4); jumptable 00313D9E case 2
313DD2:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313DD6:  LDRH.W          R1, [R8,#0x12]; int
313DDA:  MOVS            R2, #1; unsigned __int8
313DDC:  MOV             R5, R0
313DDE:  BLX             j__ZN9CQuadBikeC2Eih; CQuadBike::CQuadBike(int,uchar)
313DE2:  B               loc_313E8A
313DE4:  MOVW            R0, #(elf_hash_bucket+0x930); jumptable 00313D9E case 3
313DE8:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313DEC:  LDRH.W          R1, [R8,#0x12]; int
313DF0:  MOVS            R2, #1; unsigned __int8
313DF2:  MOV             R5, R0
313DF4:  BLX             j__ZN5CHeliC2Eih; CHeli::CHeli(int,uchar)
313DF8:  B               loc_313E8A
313DFA:  MOVW            R0, #(elf_hash_bucket+0x91C); jumptable 00313D9E case 4
313DFE:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313E02:  LDRH.W          R1, [R8,#0x12]; int
313E06:  MOVS            R2, #1; unsigned __int8
313E08:  MOV             R5, R0
313E0A:  BLX             j__ZN6CPlaneC2Eih; CPlane::CPlane(int,uchar)
313E0E:  B               loc_313E8A
313E10:  MOVW            R0, #(elf_hash_bucket+0x700); jumptable 00313D9E case 5
313E14:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313E18:  LDRH.W          R1, [R8,#0x12]; int
313E1C:  MOVS            R2, #1; unsigned __int8
313E1E:  MOV             R5, R0
313E20:  BLX             j__ZN5CBoatC2Eih; CBoat::CBoat(int,uchar)
313E24:  B               loc_313E8A
313E26:  MOVW            R0, #(elf_hash_bucket+0x8A0); jumptable 00313D9E default case, cases 6-8
313E2A:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313E2E:  LDRH.W          R1, [R8,#0x12]; int
313E32:  MOVS            R2, #1; unsigned __int8
313E34:  MOVS            R3, #1; unsigned __int8
313E36:  MOV             R5, R0
313E38:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
313E3C:  B               loc_313E8A
313E3E:  MOVW            R0, #(elf_hash_bucket+0x72C); jumptable 00313D9E case 9
313E42:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313E46:  LDRH.W          R1, [R8,#0x12]; int
313E4A:  MOVS            R2, #1; unsigned __int8
313E4C:  MOV             R5, R0
313E4E:  BLX             j__ZN5CBikeC2Eih_0; CBike::CBike(int,uchar)
313E52:  B               loc_313E68
313E54:  MOVW            R0, #(elf_hash_bucket+0x750); jumptable 00313D9E case 10
313E58:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313E5C:  LDRH.W          R1, [R8,#0x12]; int
313E60:  MOVS            R2, #1; unsigned __int8
313E62:  MOV             R5, R0
313E64:  BLX             j__ZN4CBmxC2Eih; CBmx::CBmx(int,uchar)
313E68:  LDRB.W          R0, [R5,#0x628]
313E6C:  ORR.W           R0, R0, #0x10
313E70:  STRB.W          R0, [R5,#0x628]
313E74:  B               loc_313E8A
313E76:  MOVW            R0, #(elf_hash_bucket+0x90C); jumptable 00313D9E case 11
313E7A:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
313E7E:  LDRH.W          R1, [R8,#0x12]; int
313E82:  MOVS            R2, #1; unsigned __int8
313E84:  MOV             R5, R0
313E86:  BLX             j__ZN8CTrailerC2Eih; CTrailer::CTrailer(int,uchar)
313E8A:  LDRD.W          R2, R1, [R8]
313E8E:  LDR             R3, [R5,#0x14]
313E90:  LDR.W           R0, [R8,#8]
313E94:  CMP             R3, #0
313E96:  BEQ             loc_313EA4
313E98:  STR             R2, [R3,#0x30]
313E9A:  LDR             R2, [R5,#0x14]
313E9C:  STR             R1, [R2,#0x34]
313E9E:  LDR             R1, [R5,#0x14]
313EA0:  ADDS            R1, #0x38 ; '8'
313EA2:  B               loc_313EAC
313EA4:  STRD.W          R2, R1, [R5,#4]
313EA8:  ADD.W           R1, R5, #0xC
313EAC:  STR             R0, [R1]
313EAE:  MOVS            R3, #4
313EB0:  LDRSB.W         R0, [R8,#0x3C]
313EB4:  MOVW            R6, #0xFF7F
313EB8:  VLDR            S2, =100.0
313EBC:  MOVT            R6, #0xFFFD
313EC0:  VMOV            S0, R0
313EC4:  VCVT.F32.S32    S0, S0
313EC8:  LDRSB.W         R0, [R8,#0x3D]
313ECC:  LDRSB.W         R1, [R8,#0x3E]
313ED0:  VMOV            S4, R0
313ED4:  VMOV            S6, R1
313ED8:  MOVS            R1, #0
313EDA:  VCVT.F32.S32    S4, S4
313EDE:  VCVT.F32.S32    S6, S6
313EE2:  LDR             R0, [R5,#0x14]
313EE4:  VDIV.F32        S0, S0, S2
313EE8:  VDIV.F32        S4, S4, S2
313EEC:  VDIV.F32        S2, S6, S2
313EF0:  VSTR            S0, [R0,#0x10]
313EF4:  VNEG.F32        S0, S0
313EF8:  LDR             R0, [R5,#0x14]
313EFA:  VSTR            S4, [R0,#0x14]
313EFE:  LDR             R0, [R5,#0x14]
313F00:  VSTR            S2, [R0,#0x18]
313F04:  LDR             R0, [R5,#0x14]
313F06:  VSTR            S4, [R0]
313F0A:  LDR             R0, [R5,#0x14]
313F0C:  VSTR            S0, [R0,#4]
313F10:  LDR             R0, [R5,#0x14]
313F12:  STR             R1, [R0,#8]
313F14:  LDR             R0, [R5,#0x14]
313F16:  LDRB.W          R2, [R5,#0x3A]
313F1A:  BFI.W           R2, R3, #3, #0x1D
313F1E:  STRB.W          R2, [R5,#0x3A]
313F22:  STR             R1, [R0,#0x20]
313F24:  MOV.W           R2, #0x3F800000
313F28:  LDR             R0, [R5,#0x14]
313F2A:  STR             R1, [R0,#0x24]
313F2C:  LDR             R0, [R5,#0x14]
313F2E:  STR             R2, [R0,#0x28]
313F30:  STR.W           R1, [R5,#0x464]
313F34:  LDR.W           R2, [R5,#0x42C]
313F38:  LDRB.W          R0, [R8,#0x36]
313F3C:  LDR.W           R3, [R5,#0x5A0]
313F40:  ANDS            R2, R6
313F42:  LDR.W           R1, [R5,#0x430]
313F46:  ORR.W           R2, R2, #0x20000
313F4A:  STRB.W          R0, [R5,#0x1D6]
313F4E:  MOVS            R6, #1
313F50:  LDR.W           R0, [R8,#0xC]
313F54:  CMP             R3, #0
313F56:  STR.W           R0, [R5,#0x390]
313F5A:  STR.W           R2, [R5,#0x42C]
313F5E:  STR.W           R6, [R5,#0x508]
313F62:  BNE             loc_313F7A
313F64:  LDRB.W          R3, [R8,#0x39]
313F68:  LDRB.W          R6, [R5,#0x4B2]
313F6C:  AND.W           R3, R3, #7
313F70:  AND.W           R6, R6, #0xF8
313F74:  ORRS            R3, R6
313F76:  STRB.W          R3, [R5,#0x4B2]
313F7A:  LDRH.W          R3, [R8,#0x10]
313F7E:  TST.W           R3, #1
313F82:  ITTTT NE
313F84:  LDRNE           R3, [R5,#0x44]
313F86:  ORRNE.W         R3, R3, #0x40000
313F8A:  STRNE           R3, [R5,#0x44]
313F8C:  LDRHNE.W        R3, [R8,#0x10]
313F90:  LSLS            R6, R3, #0x1E
313F92:  ITTTT MI
313F94:  LDRMI           R3, [R5,#0x44]
313F96:  ORRMI.W         R3, R3, #0x80000
313F9A:  STRMI           R3, [R5,#0x44]
313F9C:  LDRHMI.W        R3, [R8,#0x10]
313FA0:  LSLS            R6, R3, #0x1D
313FA2:  ITTTT MI
313FA4:  LDRMI           R3, [R5,#0x44]
313FA6:  ORRMI.W         R3, R3, #0x800000
313FAA:  STRMI           R3, [R5,#0x44]
313FAC:  LDRHMI.W        R3, [R8,#0x10]
313FB0:  LSLS            R6, R3, #0x1C
313FB2:  ITTTT MI
313FB4:  LDRMI           R3, [R5,#0x44]
313FB6:  ORRMI.W         R3, R3, #0x100000
313FBA:  STRMI           R3, [R5,#0x44]
313FBC:  LDRHMI.W        R3, [R8,#0x10]
313FC0:  ADDW            R6, R5, #0x42C
313FC4:  LSLS            R4, R3, #0x1B
313FC6:  ITTTT MI
313FC8:  LDRMI           R3, [R5,#0x44]
313FCA:  ORRMI.W         R3, R3, #0x200000
313FCE:  STRMI           R3, [R5,#0x44]
313FD0:  LDRHMI.W        R3, [R8,#0x10]
313FD4:  LSLS            R4, R3, #0x1A
313FD6:  BPL             loc_313FEA
313FD8:  ORR.W           R1, R1, #0x100000
313FDC:  STRD.W          R2, R1, [R6]
313FE0:  MOVS            R1, #1
313FE2:  STRB.W          R1, [R5,#0x1C2]
313FE6:  LDRH.W          R3, [R8,#0x10]
313FEA:  LSLS            R1, R3, #0x19
313FEC:  ITTT MI
313FEE:  ORRMI.W         R0, R0, #0x20000
313FF2:  STRMI.W         R0, [R5,#0x390]
313FF6:  LDRHMI.W        R3, [R8,#0x10]
313FFA:  LSLS            R1, R3, #0x18
313FFC:  ITT MI
313FFE:  ORRMI.W         R0, R0, #0x80000
314002:  STRMI.W         R0, [R5,#0x390]
314006:  LDRH.W          R0, [R8,#0x14]
31400A:  STRH.W          R0, [R5,#0x43E]
31400E:  LDRH.W          R0, [R8,#0x16]
314012:  STRH.W          R0, [R5,#0x440]
314016:  LDRH.W          R0, [R8,#0x18]
31401A:  STRH.W          R0, [R5,#0x442]
31401E:  LDRH.W          R0, [R8,#0x1A]
314022:  STRH.W          R0, [R5,#0x444]
314026:  LDRH.W          R0, [R8,#0x1C]
31402A:  STRH.W          R0, [R5,#0x446]
31402E:  LDRH.W          R0, [R8,#0x1E]
314032:  STRH.W          R0, [R5,#0x448]
314036:  LDRH.W          R0, [R8,#0x20]
31403A:  STRH.W          R0, [R5,#0x44A]
31403E:  LDRH.W          R0, [R8,#0x22]
314042:  STRH.W          R0, [R5,#0x44C]
314046:  LDRH.W          R0, [R8,#0x24]
31404A:  STRH.W          R0, [R5,#0x44E]
31404E:  LDRH.W          R0, [R8,#0x26]
314052:  STRH.W          R0, [R5,#0x450]
314056:  LDRH.W          R0, [R8,#0x28]
31405A:  STRH.W          R0, [R5,#0x452]
31405E:  LDRH.W          R0, [R8,#0x2A]
314062:  STRH.W          R0, [R5,#0x454]
314066:  LDRH.W          R0, [R8,#0x2C]
31406A:  STRH.W          R0, [R5,#0x456]
31406E:  LDRH.W          R0, [R8,#0x2E]
314072:  STRH.W          R0, [R5,#0x458]
314076:  LDRH.W          R0, [R8,#0x30]
31407A:  STRH.W          R0, [R5,#0x45A]
31407E:  MOV             R0, R5; this
314080:  BLX             j__ZN8CVehicle22SetupUpgradesAfterLoadEv; CVehicle::SetupUpgradesAfterLoad(void)
314084:  LDRSB.W         R1, [R8,#0x3A]; int
314088:  MOV             R0, R5; this
31408A:  BLX             j__ZN8CVehicle8SetRemapEi; CVehicle::SetRemap(int)
31408E:  LDRD.W          R0, R1, [R6]
314092:  ORR.W           R1, R1, #0x4000000
314096:  BIC.W           R0, R0, #0x10
31409A:  STR             R0, [R6]
31409C:  LDRB.W          R2, [R8,#0x3B]
3140A0:  STRB.W          R2, [R5,#0x48E]
3140A4:  LDRB.W          R2, [R8,#0x32]
3140A8:  STRB.W          R2, [R5,#0x438]
3140AC:  LDRB.W          R2, [R8,#0x33]
3140B0:  STRB.W          R2, [R5,#0x439]
3140B4:  LDRB.W          R2, [R8,#0x34]
3140B8:  STRB.W          R2, [R5,#0x43A]
3140BC:  LDRB.W          R2, [R8,#0x35]
3140C0:  STRB.W          R2, [R5,#0x43B]
3140C4:  STRD.W          R0, R1, [R6]
3140C8:  B               loc_313DC6
