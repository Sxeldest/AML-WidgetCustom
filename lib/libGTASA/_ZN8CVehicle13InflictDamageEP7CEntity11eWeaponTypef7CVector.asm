; =========================================================
; Game Engine Function: _ZN8CVehicle13InflictDamageEP7CEntity11eWeaponTypef7CVector
; Address            : 0x583C5C - 0x584244
; =========================================================

583C5C:  PUSH            {R4-R7,LR}
583C5E:  ADD             R7, SP, #0xC
583C60:  PUSH.W          {R8-R11}
583C64:  SUB             SP, SP, #4
583C66:  VPUSH           {D8-D9}
583C6A:  SUB             SP, SP, #0x38
583C6C:  MOV             R6, R3
583C6E:  MOV             R5, R0
583C70:  MOVS            R0, #0
583C72:  SUB.W           R3, R7, #-var_31
583C76:  STRB.W          R0, [R7,#var_31]
583C7A:  MOV             R0, R5
583C7C:  MOV             R8, R2
583C7E:  MOV             R11, R1
583C80:  BLX             j__ZN8CVehicle19CanVehicleBeDamagedEP7CEntity11eWeaponTypePh; CVehicle::CanVehicleBeDamaged(CEntity *,eWeaponType,uchar *)
583C84:  CMP             R0, #0
583C86:  BEQ.W           loc_584236
583C8A:  LDRB.W          R0, [R5,#0x3A]
583C8E:  VMOV            S16, R6
583C92:  CMP             R0, #7
583C94:  BHI             loc_583CE2
583C96:  LDR.W           R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x583C9E)
583C9A:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
583C9C:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
583C9E:  LDR             R0, [R0]; CTheScripts::pActiveScripts
583CA0:  CBZ             R0, loc_583CBE
583CA2:  LDR.W           R1, =(aStrap3_0 - 0x583CAC); "strap3"
583CA6:  ADDS            R0, #8; char *
583CA8:  ADD             R1, PC; "strap3"
583CAA:  BLX             strcmp
583CAE:  VMOV.F32        S0, #0.25
583CB2:  CMP             R0, #0
583CB4:  VMUL.F32        S0, S16, S0
583CB8:  IT EQ
583CBA:  VMOVEQ.F32      S16, S0
583CBE:  BLX             j__ZN6CStats21GetPercentageProgressEv; CStats::GetPercentageProgress(void)
583CC2:  VMOV            S2, R0
583CC6:  VLDR            S0, =100.0
583CCA:  ADR.W           R0, dword_58424C
583CCE:  VCMPE.F32       S2, S0
583CD2:  VMRS            APSR_nzcv, FPSCR
583CD6:  IT LT
583CD8:  ADDLT           R0, #4
583CDA:  VLDR            S0, [R0]
583CDE:  VMUL.F32        S16, S16, S0
583CE2:  VMOV.F32        S0, #10.0
583CE6:  VCMPE.F32       S16, S0
583CEA:  VMRS            APSR_nzcv, FPSCR
583CEE:  BLE             loc_583D7C
583CF0:  MOV.W           R0, #0xFFFFFFFF; int
583CF4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
583CF8:  CMP             R0, R11
583CFA:  BEQ             loc_583D0A
583CFC:  MOV.W           R0, #0xFFFFFFFF; int
583D00:  MOVS            R1, #0; bool
583D02:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
583D06:  CMP             R0, R11
583D08:  BNE             loc_583D7C
583D0A:  LDRB.W          R0, [R5,#0x3A]
583D0E:  AND.W           R0, R0, #0xF8
583D12:  CMP             R0, #0x28 ; '('
583D14:  BEQ             loc_583D7C
583D16:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x583D2A)
583D1A:  MOV.W           R2, #0x194
583D1E:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x583D2C)
583D22:  VMOV.F32        S0, #1.0
583D26:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
583D28:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
583D2A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
583D2C:  LDR             R1, [R1]; CWorld::Players ...
583D2E:  LDR             R0, [R0]; CWorld::PlayerInFocus
583D30:  SMLABB.W        R0, R0, R2, R1
583D34:  VLDR            S2, [R0,#0x148]
583D38:  LDR.W           R1, [R0,#0x140]
583D3C:  VADD.F32        S0, S2, S0
583D40:  ADDS            R1, #2
583D42:  STR.W           R1, [R0,#0x140]
583D46:  VSTR            S0, [R0,#0x148]
583D4A:  BLX             rand
583D4E:  MOV             R1, #0x66666667
583D56:  SMMUL.W         R1, R0, R1
583D5A:  ASRS            R2, R1, #3; float
583D5C:  ADD.W           R1, R2, R1,LSR#31
583D60:  ADD.W           R1, R1, R1,LSL#2
583D64:  SUB.W           R0, R0, R1,LSL#2
583D68:  ADDS            R0, #5
583D6A:  VMOV            S0, R0
583D6E:  MOVS            R0, #(off_7C+1); this
583D70:  VCVT.F32.S32    S0, S0
583D74:  VMOV            R1, S0; unsigned __int16
583D78:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
583D7C:  LDRD.W          R10, R9, [R7,#arg_0]
583D80:  CMP.W           R11, #0
583D84:  BEQ.W           loc_583F54
583D88:  LDRB.W          R0, [R11,#0x3A]
583D8C:  AND.W           R0, R0, #7
583D90:  CMP             R0, #3
583D92:  BNE.W           loc_583F54
583D96:  LDR.W           R0, [R5,#0x5A0]
583D9A:  CMP             R0, #9
583D9C:  IT NE
583D9E:  CMPNE           R0, #0
583DA0:  BNE.W           loc_583F54
583DA4:  SUB.W           R0, R8, #0x16; switch 31 cases
583DA8:  MOVS            R4, #0
583DAA:  CMP             R0, #0x1E
583DAC:  BHI             def_583DAE; jumptable 00583DAE default case, cases 26,27,33-51
583DAE:  TBB.W           [PC,R0]; switch jump
583DB2:  DCB 0x10; jump table for switch statement
583DB3:  DCB 0x10
583DB4:  DCB 0x14
583DB5:  DCB 0x10
583DB6:  DCB 0x15
583DB7:  DCB 0x15
583DB8:  DCB 0x10
583DB9:  DCB 0x10
583DBA:  DCB 0x12
583DBB:  DCB 0x12
583DBC:  DCB 0x10
583DBD:  DCB 0x15
583DBE:  DCB 0x15
583DBF:  DCB 0x15
583DC0:  DCB 0x15
583DC1:  DCB 0x15
583DC2:  DCB 0x15
583DC3:  DCB 0x15
583DC4:  DCB 0x15
583DC5:  DCB 0x15
583DC6:  DCB 0x15
583DC7:  DCB 0x15
583DC8:  DCB 0x15
583DC9:  DCB 0x15
583DCA:  DCB 0x15
583DCB:  DCB 0x15
583DCC:  DCB 0x15
583DCD:  DCB 0x15
583DCE:  DCB 0x15
583DCF:  DCB 0x15
583DD0:  DCB 0x10
583DD1:  ALIGN 2
583DD2:  MOVS            R4, #5; jumptable 00583DAE cases 22,23,25,28,29,32,52
583DD4:  B               def_583DAE; jumptable 00583DAE default case, cases 26,27,33-51
583DD6:  MOVS            R4, #0xA; jumptable 00583DAE cases 30,31
583DD8:  B               def_583DAE; jumptable 00583DAE default case, cases 26,27,33-51
583DDA:  MOVS            R4, #0x40 ; '@'; jumptable 00583DAE case 24
583DDC:  MOV             R0, R11; jumptable 00583DAE default case, cases 26,27,33-51
583DDE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
583DE2:  LDR.W           R1, [R11,#0x590]
583DE6:  CMP             R0, #0
583DE8:  IT NE
583DEA:  MOVNE           R4, #0
583DEC:  CBZ             R1, loc_583E00
583DEE:  LDR.W           R0, [R1,#0x5A4]
583DF2:  CMP             R0, #9
583DF4:  BNE             loc_583E00
583DF6:  CMP             R4, #0
583DF8:  BEQ.W           loc_583F54
583DFC:  MOVS            R4, #1
583DFE:  B               loc_583E26
583E00:  LDRH            R0, [R5,#0x26]
583E02:  MOVW            R1, #0x20B
583E06:  CMP             R0, R1
583E08:  BNE             loc_583E20
583E0A:  LDR.W           R0, [R5,#0x464]
583E0E:  CBZ             R0, loc_583E20
583E10:  CMP             R4, #0
583E12:  BEQ.W           loc_583F54
583E16:  LDR.W           R0, [R0,#0x59C]
583E1A:  CMP             R0, #6
583E1C:  BNE             loc_583E26
583E1E:  B               loc_583F54
583E20:  CMP             R4, #0
583E22:  BEQ.W           loc_583F54
583E26:  LDR.W           R0, [R5,#0x42C]
583E2A:  CMP             R0, #0
583E2C:  BLT.W           loc_583F54
583E30:  BLX             rand
583E34:  AND.W           R0, R0, #0x7F
583E38:  CMP             R0, R4
583E3A:  BGE.W           loc_583F54
583E3E:  LDR.W           R0, [R5,#0x5A0]
583E42:  CMP             R0, #9
583E44:  BNE             loc_583EB0
583E46:  LDR             R1, [R5,#0x14]
583E48:  VMOV            S0, R9
583E4C:  LDR             R0, [R5]
583E4E:  VMOV            S6, R10
583E52:  ADD.W           R2, R1, #0x30 ; '0'
583E56:  CMP             R1, #0
583E58:  IT EQ
583E5A:  ADDEQ           R2, R5, #4
583E5C:  VLDR            S8, [R1,#0x18]
583E60:  VLDR            S2, [R2]
583E64:  VLDR            S4, [R2,#4]
583E68:  MOVS            R2, #0
583E6A:  VSUB.F32        S2, S6, S2
583E6E:  VLDR            S6, [R1,#0x14]
583E72:  VSUB.F32        S0, S0, S4
583E76:  VLDR            S4, [R1,#0x10]
583E7A:  MOVS            R1, #0xF
583E7C:  LDR.W           R3, [R0,#0xB4]
583E80:  MOV             R0, R5
583E82:  VMUL.F32        S2, S2, S4
583E86:  VLDR            S4, =0.0
583E8A:  VMUL.F32        S0, S0, S6
583E8E:  VMUL.F32        S4, S8, S4
583E92:  VADD.F32        S0, S2, S0
583E96:  VADD.F32        S0, S0, S4
583E9A:  VCMPE.F32       S0, #0.0
583E9E:  VMRS            APSR_nzcv, FPSCR
583EA2:  IT GT
583EA4:  MOVGT           R1, #0xD
583EA6:  B               loc_583F52
583EA8:  DCFS 100.0
583EAC:  DCFS 0.0
583EB0:  LDR.W           R0, [R5,#0x388]
583EB4:  LDRB.W          R0, [R0,#0xCF]
583EB8:  LSLS            R0, R0, #0x1C
583EBA:  BNE             loc_583F54
583EBC:  LDR             R1, [R5,#0x14]
583EBE:  VMOV            S0, R9
583EC2:  LDR             R0, [R5]
583EC4:  VMOV            S6, R10
583EC8:  ADD.W           R2, R1, #0x30 ; '0'
583ECC:  CMP             R1, #0
583ECE:  IT EQ
583ED0:  ADDEQ           R2, R5, #4
583ED2:  VLDR            S10, [R1,#0x10]
583ED6:  VLDR            S2, [R2]
583EDA:  VLDR            S4, [R2,#4]
583EDE:  MOVS            R2, #1
583EE0:  VSUB.F32        S2, S6, S2
583EE4:  VLDR            S6, [R1,#4]
583EE8:  VSUB.F32        S0, S0, S4
583EEC:  VLDR            S4, [R1]
583EF0:  VLDR            S8, [R1,#8]
583EF4:  VLDR            S12, [R1,#0x14]
583EF8:  VLDR            S14, [R1,#0x18]
583EFC:  MOVS            R1, #0
583EFE:  LDR.W           R3, [R0,#0xB4]
583F02:  MOVS            R0, #2
583F04:  VMUL.F32        S4, S2, S4
583F08:  VMUL.F32        S6, S0, S6
583F0C:  VMUL.F32        S2, S2, S10
583F10:  VLDR            S10, =0.0
583F14:  VMUL.F32        S0, S0, S12
583F18:  VMUL.F32        S8, S8, S10
583F1C:  VADD.F32        S4, S4, S6
583F20:  VMUL.F32        S6, S14, S10
583F24:  VADD.F32        S0, S2, S0
583F28:  VADD.F32        S2, S4, S8
583F2C:  VADD.F32        S0, S0, S6
583F30:  VCMPE.F32       S2, #0.0
583F34:  VMRS            APSR_nzcv, FPSCR
583F38:  VCMPE.F32       S0, #0.0
583F3C:  IT GT
583F3E:  MOVGT           R1, #1
583F40:  IT GT
583F42:  MOVGT           R0, #3
583F44:  VMRS            APSR_nzcv, FPSCR
583F48:  IT GT
583F4A:  MOVGT           R0, R1
583F4C:  ADD.W           R1, R0, #0xD
583F50:  MOV             R0, R5
583F52:  BLX             R3
583F54:  LDRB.W          R0, [R5,#0x432]
583F58:  ADDW            R6, R5, #0x42C
583F5C:  LSLS            R0, R0, #0x19
583F5E:  BPL             loc_584030
583F60:  CMP.W           R11, #0
583F64:  ITT NE
583F66:  LDRBNE.W        R0, [R7,#var_31]
583F6A:  CMPNE           R0, #0
583F6C:  BEQ             loc_584030
583F6E:  LDRB.W          R0, [R11,#0x3A]
583F72:  AND.W           R0, R0, #7
583F76:  CMP             R0, #3
583F78:  BNE             loc_584030
583F7A:  MOV             R0, R11; this
583F7C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
583F80:  CMP             R0, #1
583F82:  BNE             loc_584030
583F84:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x583F8E)
583F86:  LDRSH.W         R1, [R5,#0x26]
583F8A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
583F8C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
583F8E:  LDR.W           R0, [R0,R1,LSL#2]
583F92:  LDR             R0, [R0,#0x74]
583F94:  VLDR            D16, [R0,#0x60]
583F98:  LDR             R0, [R0,#0x68]
583F9A:  VSTR            D16, [SP,#0x68+var_60]
583F9E:  VLDR            S0, [SP,#0x68+var_60]
583FA2:  STR             R0, [SP,#0x68+var_58]
583FA4:  VCMP.F32        S0, #0.0
583FA8:  VMRS            APSR_nzcv, FPSCR
583FAC:  ITTT EQ
583FAE:  VLDREQ          S0, [SP,#0x68+var_60+4]
583FB2:  VCMPEQ.F32      S0, #0.0
583FB6:  VMRSEQ          APSR_nzcv, FPSCR
583FBA:  BNE             loc_583FCA
583FBC:  VLDR            S0, [SP,#0x68+var_58]
583FC0:  VCMP.F32        S0, #0.0
583FC4:  VMRS            APSR_nzcv, FPSCR
583FC8:  BEQ             loc_584030
583FCA:  LDR             R1, [R5,#0x14]
583FCC:  ADD             R0, SP, #0x68+var_40
583FCE:  ADD             R2, SP, #0x68+var_60
583FD0:  LDR             R4, [R7,#arg_8]
583FD2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
583FD6:  VMOV            S0, R9
583FDA:  VLDR            S4, [SP,#0x68+var_3C]
583FDE:  VLDR            S2, [SP,#0x68+var_40]
583FE2:  VMOV            S8, R10
583FE6:  VSUB.F32        S0, S0, S4
583FEA:  VLDR            S6, [SP,#0x68+var_38]
583FEE:  VSUB.F32        S2, S8, S2
583FF2:  VMOV            S4, R4
583FF6:  VSUB.F32        S4, S4, S6
583FFA:  VMUL.F32        S0, S0, S0
583FFE:  VMUL.F32        S2, S2, S2
584002:  VMUL.F32        S4, S4, S4
584006:  VADD.F32        S0, S2, S0
58400A:  VMOV.F32        S2, #0.25
58400E:  VADD.F32        S0, S0, S4
584012:  VSQRT.F32       S0, S0
584016:  VCMPE.F32       S0, S2
58401A:  VMRS            APSR_nzcv, FPSCR
58401E:  ITTTT LT
584020:  VLDRLT          S0, =1100.0
584024:  ADDWLT          R0, R5, #0x4CC
584028:  VLDRLT          S2, [R0]
58402C:  VMINLT.F32      D8, D1, D0
584030:  LDR.W           R0, [R5,#0x5A4]
584034:  SUBS            R0, #3
584036:  CMP             R0, #1
584038:  BHI             loc_584064
58403A:  LDRB            R0, [R6,#4]
58403C:  MOVS            R1, #0
58403E:  CMP.W           R1, R0,LSR#7
584042:  BNE             loc_584064
584044:  CMP.W           R8, #0x14
584048:  BHI             loc_584056
58404A:  MOVS            R0, #1
58404C:  LSL.W           R0, R0, R8
584050:  TST.W           R0, #0x190000
584054:  BNE             loc_584064
584056:  CMP.W           R8, #0x33 ; '3'
58405A:  ITT NE
58405C:  VLDRNE          S0, =0.4
584060:  VMULNE.F32      S16, S16, S0
584064:  ADDW            R4, R5, #0x4CC
584068:  VLDR            S18, [R4]
58406C:  VCMPE.F32       S18, #0.0
584070:  VMRS            APSR_nzcv, FPSCR
584074:  BLE.W           loc_584216
584078:  CMP.W           R11, #0
58407C:  STRB.W          R8, [R5,#0x518]
584080:  BEQ             loc_584094
584082:  ADDW            R1, R5, #0x51C; CEntity **
584086:  MOV             R0, R11; this
584088:  STR.W           R11, [R5,#0x51C]
58408C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
584090:  VLDR            S18, [R4]
584094:  VCMPE.F32       S18, S16
584098:  VMRS            APSR_nzcv, FPSCR
58409C:  BLE             loc_584194
58409E:  VSUB.F32        S0, S18, S16
5840A2:  STRD.W          R6, R8, [SP,#0x68+var_68]
5840A6:  VSTR            S0, [R4]
5840AA:  LDRB.W          R0, [R5,#0x3A]
5840AE:  LSRS            R0, R0, #3
5840B0:  CMP             R0, #3
5840B2:  BHI             loc_584154
5840B4:  CMP             R0, #1
5840B6:  IT NE
5840B8:  CMPNE.W         R11, #0
5840BC:  BEQ             loc_584154
5840BE:  LDRB.W          R0, [R11,#0x3A]
5840C2:  AND.W           R0, R0, #7
5840C6:  CMP             R0, #3
5840C8:  BNE             loc_584154
5840CA:  LDR.W           R0, [R5,#0x464]
5840CE:  CBZ             R0, loc_584100
5840D0:  ADD             R6, SP, #0x68+var_60
5840D2:  LDR             R3, [SP,#0x68+var_64]
5840D4:  MOV             R1, R5; this
5840D6:  MOV             R2, R11; CEntity *
5840D8:  MOV             R0, R6; int
5840DA:  BLX             j__ZN19CEventVehicleDamageC2EP8CVehicleP7CEntity11eWeaponType; CEventVehicleDamage::CEventVehicleDamage(CVehicle *,CEntity *,eWeaponType)
5840DE:  LDR             R0, =(_ZTV25CEventVehicleDamageWeapon_ptr - 0x5840E8)
5840E0:  MOV             R1, R6; CEvent *
5840E2:  MOVS            R2, #0; bool
5840E4:  ADD             R0, PC; _ZTV25CEventVehicleDamageWeapon_ptr
5840E6:  LDR             R0, [R0]; `vtable for'CEventVehicleDamageWeapon ...
5840E8:  ADDS            R0, #8
5840EA:  STR             R0, [SP,#0x68+var_60]
5840EC:  LDR.W           R0, [R5,#0x464]
5840F0:  LDR.W           R0, [R0,#0x440]
5840F4:  ADDS            R0, #0x68 ; 'h'; this
5840F6:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5840FA:  MOV             R0, R6; this
5840FC:  BLX             j__ZN19CEventVehicleDamageD2Ev; CEventVehicleDamage::~CEventVehicleDamage()
584100:  LDRB.W          R0, [R5,#0x48C]
584104:  CBZ             R0, loc_584154
584106:  LDR             R1, =(_ZTV25CEventVehicleDamageWeapon_ptr - 0x584112)
584108:  ADD.W           R10, SP, #0x68+var_60
58410C:  MOVS            R6, #0
58410E:  ADD             R1, PC; _ZTV25CEventVehicleDamageWeapon_ptr
584110:  LDR             R1, [R1]; `vtable for'CEventVehicleDamageWeapon ...
584112:  ADD.W           R9, R1, #8
584116:  ADD.W           R8, R5, R6,LSL#2
58411A:  LDR.W           R1, [R8,#0x468]
58411E:  CBZ             R1, loc_58414C
584120:  LDR             R3, [SP,#0x68+var_64]
584122:  MOV             R0, R10; int
584124:  MOV             R1, R5; this
584126:  MOV             R2, R11; CEntity *
584128:  BLX             j__ZN19CEventVehicleDamageC2EP8CVehicleP7CEntity11eWeaponType; CEventVehicleDamage::CEventVehicleDamage(CVehicle *,CEntity *,eWeaponType)
58412C:  STR.W           R9, [SP,#0x68+var_60]
584130:  MOV             R1, R10; CEvent *
584132:  LDR.W           R0, [R8,#0x468]
584136:  MOVS            R2, #0; bool
584138:  LDR.W           R0, [R0,#0x440]
58413C:  ADDS            R0, #0x68 ; 'h'; this
58413E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
584142:  MOV             R0, R10; this
584144:  BLX             j__ZN19CEventVehicleDamageD2Ev; CEventVehicleDamage::~CEventVehicleDamage()
584148:  LDRB.W          R0, [R5,#0x48C]
58414C:  ADDS            R6, #1
58414E:  UXTB            R1, R0
584150:  CMP             R6, R1
584152:  BLT             loc_584116
584154:  VLDR            S0, =250.0
584158:  LDR             R6, [SP,#0x68+var_68]
58415A:  VCMPE.F32       S18, S0
58415E:  VMRS            APSR_nzcv, FPSCR
584162:  BLT             loc_584216
584164:  VLDR            S2, [R4]
584168:  VCMPE.F32       S2, S0
58416C:  VMRS            APSR_nzcv, FPSCR
584170:  BGE             loc_584216
584172:  LDR.W           R0, [R5,#0x5A0]
584176:  CMP             R0, #0
584178:  BNE             loc_584216
58417A:  ADDW            R0, R5, #0x5B4; this
58417E:  MOVS            R1, #0xE1; unsigned int
584180:  BLX             j__ZN14CDamageManager15SetEngineStatusEj; CDamageManager::SetEngineStatus(uint)
584184:  CMP.W           R11, #0
584188:  STR.W           R11, [R5,#0x93C]
58418C:  BEQ             loc_584216
58418E:  ADDW            R1, R5, #0x93C
584192:  B               loc_5841C8
584194:  MOVS            R0, #0
584196:  STR             R0, [R4]
584198:  MOV.W           R0, #0xFFFFFFFF; int
58419C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5841A0:  CMP             R0, R11
5841A2:  BEQ             loc_5841D0
5841A4:  CMP.W           R8, #0x33 ; '3'
5841A8:  BNE             loc_584208
5841AA:  BLX             rand
5841AE:  BFC.W           R0, #0xB, #0x15
5841B2:  CMP.W           R11, #0
5841B6:  STR.W           R11, [R5,#0x4F0]
5841BA:  ADD.W           R0, R0, #0x3E8
5841BE:  STRH.W          R0, [R5,#0x4EE]
5841C2:  BEQ             loc_584216
5841C4:  ADD.W           R1, R5, #0x4F0; CEntity **
5841C8:  MOV             R0, R11; this
5841CA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5841CE:  B               loc_584216
5841D0:  LDR.W           R0, [R5,#0x5A4]
5841D4:  CMP             R0, #4
5841D6:  BEQ             loc_5841EA
5841D8:  CMP             R0, #3
5841DA:  BNE             loc_5841F8
5841DC:  LDRB            R0, [R6,#4]
5841DE:  MOVS            R1, #0
5841E0:  CMP.W           R1, R0,LSR#7
5841E4:  BNE             loc_5841F8
5841E6:  MOVS            R0, #0xC
5841E8:  B               loc_5841FA
5841EA:  LDRB            R0, [R6,#4]
5841EC:  MOVS            R1, #0
5841EE:  CMP.W           R1, R0,LSR#7
5841F2:  BNE             loc_5841F8
5841F4:  MOVS            R0, #0x10
5841F6:  B               loc_5841FA
5841F8:  MOVS            R0, #0x14
5841FA:  MOV             R1, R5
5841FC:  MOV             R2, R11
5841FE:  BLX             j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
584202:  CMP.W           R8, #0x33 ; '3'
584206:  BEQ             loc_5841AA
584208:  LDR             R0, [R5]
58420A:  MOV             R1, R11
58420C:  MOVS            R2, #0
58420E:  LDR.W           R3, [R0,#0xA8]
584212:  MOV             R0, R5
584214:  BLX             R3
584216:  LDRB            R0, [R6]
584218:  LSLS            R0, R0, #0x1F
58421A:  BEQ             loc_584236
58421C:  MOV.W           R0, #0xFFFFFFFF; int
584220:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
584224:  CMP             R0, R11
584226:  BNE             loc_584236
584228:  MOV.W           R0, #0xFFFFFFFF; int
58422C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
584230:  MOVS            R1, #1; int
584232:  BLX             j__ZN10CPlayerPed20SetWantedLevelNoDropEi; CPlayerPed::SetWantedLevelNoDrop(int)
584236:  ADD             SP, SP, #0x38 ; '8'
584238:  VPOP            {D8-D9}
58423C:  ADD             SP, SP, #4
58423E:  POP.W           {R8-R11}
584242:  POP             {R4-R7,PC}
