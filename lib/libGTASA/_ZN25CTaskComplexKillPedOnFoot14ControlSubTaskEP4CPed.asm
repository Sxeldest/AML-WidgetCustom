; =========================================================
; Game Engine Function: _ZN25CTaskComplexKillPedOnFoot14ControlSubTaskEP4CPed
; Address            : 0x4E0C00 - 0x4E12F4
; =========================================================

4E0C00:  PUSH            {R4-R7,LR}
4E0C02:  ADD             R7, SP, #0xC
4E0C04:  PUSH.W          {R8,R9,R11}
4E0C08:  SUB             SP, SP, #0x20
4E0C0A:  MOV             R5, R1
4E0C0C:  MOV             R4, R0
4E0C0E:  LDR.W           R0, [R5,#0x48C]
4E0C12:  ORR.W           R0, R0, #0x400000
4E0C16:  STR.W           R0, [R5,#0x48C]
4E0C1A:  LDR             R0, [R4,#0x10]
4E0C1C:  CBZ             R0, loc_4E0C56
4E0C1E:  LDR             R0, [R4,#8]
4E0C20:  LDR             R1, [R0]
4E0C22:  LDR             R1, [R1,#0x14]
4E0C24:  BLX             R1
4E0C26:  CMP             R0, #0xCA
4E0C28:  BNE             loc_4E0C5C
4E0C2A:  LDRB            R0, [R4,#0xC]
4E0C2C:  AND.W           R0, R0, #0x60 ; '`'
4E0C30:  CMP             R0, #0x60 ; '`'
4E0C32:  BNE.W           loc_4E1276
4E0C36:  MOV.W           R0, #0xFFFFFFFF; int
4E0C3A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
4E0C3E:  LDRB            R0, [R0,#0x1E]
4E0C40:  LSLS            R0, R0, #0x1D
4E0C42:  BMI.W           loc_4E1276
4E0C46:  LDR             R0, [R4,#8]
4E0C48:  MOVS            R2, #1
4E0C4A:  MOVS            R3, #0
4E0C4C:  LDR             R1, [R0]
4E0C4E:  LDR             R6, [R1,#0x1C]
4E0C50:  MOV             R1, R5
4E0C52:  BLX             R6
4E0C54:  B               loc_4E1276
4E0C56:  MOVW            R9, #0x516
4E0C5A:  B               loc_4E124C
4E0C5C:  LDR             R0, [R4,#0x28]
4E0C5E:  CMP             R0, #1
4E0C60:  BLT             loc_4E0C9E
4E0C62:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E0C6C)
4E0C66:  LDR             R2, [R4,#0x24]
4E0C68:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E0C6A:  ADD             R0, R2
4E0C6C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4E0C6E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4E0C70:  CMP             R1, R0
4E0C72:  BLS             loc_4E0C9E
4E0C74:  LDR             R0, [R4,#8]
4E0C76:  MOVS            R2, #1
4E0C78:  MOVS            R3, #0
4E0C7A:  LDR             R1, [R0]
4E0C7C:  LDR             R6, [R1,#0x1C]
4E0C7E:  MOV             R1, R5
4E0C80:  BLX             R6
4E0C82:  CMP             R0, #1
4E0C84:  BNE             loc_4E0D3A
4E0C86:  MOVS            R0, #dword_20; this
4E0C88:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E0C8C:  MOV.W           R1, #0x41000000
4E0C90:  MOVS            R2, #0; bool
4E0C92:  STR             R1, [SP,#0x38+var_38]; float
4E0C94:  MOVS            R1, #0; int
4E0C96:  MOVS            R3, #0; bool
4E0C98:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E0C9C:  B               loc_4E1278
4E0C9E:  LDRB            R0, [R4,#0xC]
4E0CA0:  TST.W           R0, #2
4E0CA4:  BNE             loc_4E0D14
4E0CA6:  ADDW            R8, R5, #0x484
4E0CAA:  LSLS            R0, R0, #0x1C
4E0CAC:  BMI.W           loc_4E0DB4
4E0CB0:  LDR             R0, [R4,#0x10]; this
4E0CB2:  ADDW            R1, R0, #0x544
4E0CB6:  VLDR            S0, [R1]
4E0CBA:  VCMPE.F32       S0, #0.0
4E0CBE:  VMRS            APSR_nzcv, FPSCR
4E0CC2:  BLE             loc_4E0D40
4E0CC4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4E0CC8:  CMP             R0, #1
4E0CCA:  BNE             loc_4E0DB4
4E0CCC:  LDR             R0, [R4,#0x10]
4E0CCE:  LDR.W           R0, [R0,#0x444]
4E0CD2:  LDR             R0, [R0]
4E0CD4:  LDRB            R0, [R0,#0x1E]
4E0CD6:  LSLS            R0, R0, #0x1D
4E0CD8:  BMI             loc_4E0CF8
4E0CDA:  LDR.W           R0, [R5,#0x59C]
4E0CDE:  CMP             R0, #6
4E0CE0:  BNE             loc_4E0DB4
4E0CE2:  LDRB.W          R0, [R5,#0x7A4]
4E0CE6:  CMP             R0, #0
4E0CE8:  BEQ             loc_4E0DB4
4E0CEA:  MOV.W           R0, #0xFFFFFFFF; int
4E0CEE:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
4E0CF2:  LDRH            R0, [R0,#0x1C]
4E0CF4:  CMP             R0, #0
4E0CF6:  BNE             loc_4E0DB4
4E0CF8:  LDR             R0, [R4,#8]
4E0CFA:  LDR             R1, [R0]
4E0CFC:  LDR             R1, [R1,#0x14]
4E0CFE:  BLX             R1
4E0D00:  CMP             R0, #0xCA
4E0D02:  BEQ             loc_4E0DB4
4E0D04:  LDRB            R0, [R4,#0xC]
4E0D06:  TST.W           R0, #0x20
4E0D0A:  BNE.W           loc_4E1030
4E0D0E:  MOV.W           R9, #0xCA
4E0D12:  B               loc_4E11FE
4E0D14:  LDR             R0, [R4,#8]
4E0D16:  MOVS            R2, #1
4E0D18:  MOVS            R3, #0
4E0D1A:  LDR             R1, [R0]
4E0D1C:  LDR             R6, [R1,#0x1C]
4E0D1E:  MOV             R1, R5
4E0D20:  BLX             R6
4E0D22:  CMP             R0, #1
4E0D24:  BNE             loc_4E0D3A
4E0D26:  LDR             R0, [R4]
4E0D28:  MOV             R1, R5
4E0D2A:  LDR             R2, [R0,#0x2C]
4E0D2C:  MOV             R0, R4
4E0D2E:  ADD             SP, SP, #0x20 ; ' '
4E0D30:  POP.W           {R8,R9,R11}
4E0D34:  POP.W           {R4-R7,LR}
4E0D38:  BX              R2
4E0D3A:  MOV.W           R9, #0xC8
4E0D3E:  B               loc_4E1206
4E0D40:  LDR             R0, [R4,#8]
4E0D42:  MOVS            R2, #1
4E0D44:  MOVS            R3, #0
4E0D46:  LDR             R1, [R0]
4E0D48:  LDR             R6, [R1,#0x1C]
4E0D4A:  MOV             R1, R5
4E0D4C:  BLX             R6
4E0D4E:  CMP             R0, #1
4E0D50:  BNE             loc_4E0DB4
4E0D52:  LDRB            R1, [R4,#0xC]
4E0D54:  LDR             R0, [R4,#8]
4E0D56:  ORR.W           R1, R1, #8
4E0D5A:  STRB            R1, [R4,#0xC]
4E0D5C:  LDR             R1, [R0]
4E0D5E:  LDR             R1, [R1,#0x14]
4E0D60:  BLX             R1
4E0D62:  MOVW            R1, #0x4BA
4E0D66:  CMP             R0, R1
4E0D68:  BEQ.W           loc_4E1276
4E0D6C:  LDR.W           R0, [R5,#0x59C]
4E0D70:  CMP             R0, #6
4E0D72:  BNE             loc_4E0D92
4E0D74:  LDR             R0, [R4,#0x10]; this
4E0D76:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4E0D7A:  CBNZ            R0, loc_4E0D92
4E0D7C:  MOVS            R0, #0
4E0D7E:  MOVS            R1, #0xE; unsigned __int16
4E0D80:  STRD.W          R0, R0, [SP,#0x38+var_38]; unsigned __int8
4E0D84:  MOVS            R2, #0; unsigned int
4E0D86:  STR             R0, [SP,#0x38+var_30]; unsigned __int8
4E0D88:  MOV             R0, R5; this
4E0D8A:  MOV.W           R3, #0x3F800000; float
4E0D8E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4E0D92:  LDRB.W          R0, [R8,#0xD]
4E0D96:  LSLS            R0, R0, #0x1B
4E0D98:  BMI.W           loc_4E1008
4E0D9C:  MOVS            R0, #byte_8; this
4E0D9E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E0DA2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E0DA6:  LDR.W           R1, =(_ZTV15CTaskSimpleNone_ptr - 0x4E0DAE)
4E0DAA:  ADD             R1, PC; _ZTV15CTaskSimpleNone_ptr
4E0DAC:  LDR             R1, [R1]; `vtable for'CTaskSimpleNone ...
4E0DAE:  ADDS            R1, #8
4E0DB0:  STR             R1, [R0]
4E0DB2:  B               loc_4E1278
4E0DB4:  LDR             R0, [R4,#8]
4E0DB6:  LDR             R1, [R0]
4E0DB8:  LDR             R1, [R1,#0x14]
4E0DBA:  BLX             R1
4E0DBC:  MOVW            R1, #0x3E9
4E0DC0:  MOV.W           R9, #0xC8
4E0DC4:  CMP             R0, R1
4E0DC6:  BGT             loc_4E0E48
4E0DC8:  MOVW            R1, #0x2BF
4E0DCC:  CMP             R0, R1
4E0DCE:  BEQ             loc_4E0E88
4E0DD0:  MOVW            R1, #0x3E9
4E0DD4:  CMP             R0, R1
4E0DD6:  BNE.W           loc_4E11FE
4E0DDA:  LDR             R0, [R4,#8]
4E0DDC:  LDRB            R1, [R4,#0xC]
4E0DDE:  AND.W           R1, R1, #1
4E0DE2:  STRB.W          R1, [R0,#0x30]
4E0DE6:  LDRSB.W         R0, [R5,#0x71C]
4E0DEA:  RSB.W           R0, R0, R0,LSL#3
4E0DEE:  ADD.W           R0, R5, R0,LSL#2
4E0DF2:  ADDW            R0, R0, #0x5A4; this
4E0DF6:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4E0DFA:  CMP             R0, #1
4E0DFC:  BNE.W           loc_4E0F5E
4E0E00:  LDR             R0, [R4,#0x10]
4E0E02:  LDRB.W          R1, [R0,#0x485]
4E0E06:  LSLS            R1, R1, #0x1F
4E0E08:  BEQ.W           loc_4E10CA
4E0E0C:  LDR.W           R1, [R0,#0x590]
4E0E10:  LDR.W           R1, [R1,#0x5A4]
4E0E14:  SUBS            R1, #3
4E0E16:  CMP             R1, #2
4E0E18:  BCC.W           loc_4E11FA
4E0E1C:  LDR.W           R0, [R0,#0x590]; this
4E0E20:  CMP             R0, #0
4E0E22:  BEQ.W           loc_4E10CA
4E0E26:  LDR.W           R1, [R0,#0x5A0]
4E0E2A:  CMP             R1, #5
4E0E2C:  BEQ.W           loc_4E10CA
4E0E30:  LDRB.W          R1, [R8,#2]
4E0E34:  LSLS            R1, R1, #0x1A
4E0E36:  BMI.W           loc_4E10CA
4E0E3A:  MOV             R1, R5; CPed *
4E0E3C:  BLX             j__ZNK8CVehicle15CanPedOpenLocksEPK4CPed; CVehicle::CanPedOpenLocks(CPed const*)
4E0E40:  CMP             R0, #0
4E0E42:  BNE.W           loc_4E12C4
4E0E46:  B               loc_4E10CA
4E0E48:  MOVW            R1, #0x3EA
4E0E4C:  CMP             R0, R1
4E0E4E:  BEQ             loc_4E0F0C
4E0E50:  MOVW            R1, #0x3EB
4E0E54:  CMP             R0, R1
4E0E56:  BNE.W           loc_4E11FE
4E0E5A:  LDR             R1, [R4,#0x10]; CVehicle *
4E0E5C:  LDR.W           R2, [R1,#0x484]
4E0E60:  TST.W           R2, #0x100
4E0E64:  BNE             loc_4E0F64
4E0E66:  LDRSB.W         R0, [R5,#0x71C]
4E0E6A:  RSB.W           R0, R0, R0,LSL#3
4E0E6E:  ADD.W           R0, R5, R0,LSL#2
4E0E72:  ADDW            R0, R0, #0x5A4; this
4E0E76:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4E0E7A:  MOVW            R9, #0x3EA
4E0E7E:  CMP             R0, #0
4E0E80:  IT NE
4E0E82:  MOVWNE          R9, #0x3E9
4E0E86:  B               loc_4E11FE
4E0E88:  LDR             R1, [R4,#0x10]; CPed *
4E0E8A:  LDRB.W          R0, [R1,#0x485]
4E0E8E:  LSLS            R0, R0, #0x1F
4E0E90:  BEQ.W           loc_4E10CA
4E0E94:  LDR.W           R0, [R1,#0x590]; this
4E0E98:  CMP             R0, #0
4E0E9A:  BEQ.W           loc_4E10CA
4E0E9E:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4E0EA2:  CBNZ            R0, loc_4E0EB4
4E0EA4:  LDR             R1, [R4,#0x10]; CPed *
4E0EA6:  LDR.W           R0, [R1,#0x590]; this
4E0EAA:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
4E0EAE:  CMP             R0, #1
4E0EB0:  BNE.W           loc_4E10CA
4E0EB4:  LDR             R1, [R4,#0x10]; CPed *
4E0EB6:  LDR.W           R0, [R1,#0x590]
4E0EBA:  VLDR            S0, [R0,#0x48]
4E0EBE:  VLDR            S2, [R0,#0x4C]
4E0EC2:  VMUL.F32        S0, S0, S0
4E0EC6:  VMUL.F32        S2, S2, S2
4E0ECA:  VADD.F32        S0, S0, S2
4E0ECE:  VLDR            S2, =0.1
4E0ED2:  VSQRT.F32       S0, S0
4E0ED6:  VCMPE.F32       S0, S2
4E0EDA:  VMRS            APSR_nzcv, FPSCR
4E0EDE:  BGT.W           loc_4E11FA
4E0EE2:  LDRB.W          R0, [R4,#0x34]
4E0EE6:  CMP             R0, #0
4E0EE8:  BEQ.W           loc_4E10CA
4E0EEC:  LDRB.W          R0, [R4,#0x35]
4E0EF0:  CMP             R0, #0
4E0EF2:  BEQ.W           loc_4E1056
4E0EF6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E0F00)
4E0EFA:  MOVS            R2, #0
4E0EFC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E0EFE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E0F00:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E0F02:  STRB.W          R2, [R4,#0x35]
4E0F06:  STR             R0, [R4,#0x2C]
4E0F08:  MOV             R2, R0
4E0F0A:  B               loc_4E1060
4E0F0C:  LDR             R0, [R4,#8]
4E0F0E:  LDRB            R1, [R4,#0xC]
4E0F10:  AND.W           R1, R1, #1
4E0F14:  STRB.W          R1, [R0,#0x33]
4E0F18:  LDRSB.W         R0, [R5,#0x71C]
4E0F1C:  RSB.W           R0, R0, R0,LSL#3
4E0F20:  ADD.W           R0, R5, R0,LSL#2
4E0F24:  ADDW            R0, R0, #0x5A4; this
4E0F28:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4E0F2C:  CMP             R0, #1
4E0F2E:  BNE             loc_4E0F3C
4E0F30:  MOV             R0, R5; this
4E0F32:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4E0F36:  CMP             R0, #1
4E0F38:  BNE.W           loc_4E11C0
4E0F3C:  LDRSB.W         R0, [R5,#0x71C]
4E0F40:  RSB.W           R0, R0, R0,LSL#3
4E0F44:  ADD.W           R0, R5, R0,LSL#2
4E0F48:  LDR.W           R0, [R0,#0x5B0]
4E0F4C:  CBNZ            R0, loc_4E0F58
4E0F4E:  MOV             R0, R5; this
4E0F50:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4E0F54:  CMP             R0, #0
4E0F56:  BEQ             loc_4E1024
4E0F58:  MOV.W           R9, #0xC8
4E0F5C:  B               loc_4E11C4
4E0F5E:  MOVW            R9, #0x3EA
4E0F62:  B               loc_4E11FE
4E0F64:  LDR.W           R0, [R1,#0x590]; this
4E0F68:  CBZ             R0, loc_4E0F78
4E0F6A:  BLX             j__ZN13CCarEnterExit16IsVehicleHealthyERK8CVehicle; CCarEnterExit::IsVehicleHealthy(CVehicle const&)
4E0F6E:  CMP             R0, #1
4E0F70:  BNE             loc_4E101E
4E0F72:  LDR             R1, [R4,#0x10]
4E0F74:  LDR.W           R2, [R1,#0x484]
4E0F78:  LSLS            R0, R2, #2
4E0F7A:  BMI.W           loc_4E10CA
4E0F7E:  LDR.W           R0, [R1,#0x590]; this
4E0F82:  LDR.W           R1, [R0,#0x5A4]
4E0F86:  SUBS            R1, #3
4E0F88:  CMP             R1, #2
4E0F8A:  BCC.W           loc_4E10CA
4E0F8E:  LDR.W           R1, [R0,#0x5A0]
4E0F92:  MOV.W           R9, #0xC8
4E0F96:  CMP             R1, #5
4E0F98:  IT NE
4E0F9A:  CMPNE           R1, #9
4E0F9C:  BEQ.W           loc_4E11FE
4E0FA0:  LDRB.W          R1, [R8,#2]
4E0FA4:  LSLS            R1, R1, #0x1A
4E0FA6:  BMI.W           loc_4E10CA
4E0FAA:  VLDR            S0, [R0,#0x48]
4E0FAE:  VLDR            S2, [R0,#0x4C]
4E0FB2:  VMUL.F32        S0, S0, S0
4E0FB6:  VMUL.F32        S2, S2, S2
4E0FBA:  VADD.F32        S0, S0, S2
4E0FBE:  VLDR            S2, =0.1
4E0FC2:  VSQRT.F32       S0, S0
4E0FC6:  VCMPE.F32       S0, S2
4E0FCA:  VMRS            APSR_nzcv, FPSCR
4E0FCE:  BGT             loc_4E10CA
4E0FD0:  MOV             R1, R5; CPed *
4E0FD2:  BLX             j__ZNK8CVehicle15CanPedOpenLocksEPK4CPed; CVehicle::CanPedOpenLocks(CPed const*)
4E0FD6:  CMP             R0, #0
4E0FD8:  BEQ             loc_4E10CA
4E0FDA:  LDRB            R0, [R4,#0xC]
4E0FDC:  LSLS            R0, R0, #0x1D
4E0FDE:  BMI.W           loc_4E10E8
4E0FE2:  LDRB.W          R0, [R4,#0x34]
4E0FE6:  CMP             R0, #0
4E0FE8:  BEQ             loc_4E10CA
4E0FEA:  LDRB.W          R0, [R4,#0x35]
4E0FEE:  CMP             R0, #0
4E0FF0:  BEQ.W           loc_4E1106
4E0FF4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E0FFC)
4E0FF6:  MOVS            R1, #0
4E0FF8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E0FFA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E0FFC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E0FFE:  STRB.W          R1, [R4,#0x35]
4E1002:  STR             R0, [R4,#0x2C]
4E1004:  MOV             R1, R0
4E1006:  B               loc_4E1110
4E1008:  MOV             R0, R4; this
4E100A:  MOVW            R1, #0x4BA; int
4E100E:  MOV             R2, R5; CPed *
4E1010:  ADD             SP, SP, #0x20 ; ' '
4E1012:  POP.W           {R8,R9,R11}
4E1016:  POP.W           {R4-R7,LR}
4E101A:  B.W             _ZN25CTaskComplexKillPedOnFoot13CreateSubTaskEiP4CPed; CTaskComplexKillPedOnFoot::CreateSubTask(int,CPed *)
4E101E:  MOVW            R9, #0x4BA
4E1022:  B               loc_4E11FE
4E1024:  LDR.W           R0, [R5,#0x5B0]
4E1028:  CMP             R0, #1
4E102A:  BLT             loc_4E104A
4E102C:  MOVS            R1, #0
4E102E:  B               loc_4E11A8
4E1030:  LDR             R1, [R4,#0x10]
4E1032:  MOV.W           R9, #0xCA
4E1036:  LDR.W           R1, [R1,#0x444]
4E103A:  LDR             R1, [R1]
4E103C:  LDRB            R1, [R1,#0x1E]
4E103E:  LSLS            R1, R1, #0x1D
4E1040:  ITT MI
4E1042:  ORRMI.W         R0, R0, #0x40 ; '@'
4E1046:  STRBMI          R0, [R4,#0xC]
4E1048:  B               loc_4E11FE
4E104A:  LDR.W           R0, [R5,#0x5CC]
4E104E:  CMP             R0, #0
4E1050:  BLE             loc_4E10D0
4E1052:  MOVS            R1, #1
4E1054:  B               loc_4E11A8
4E1056:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E105E)
4E1058:  LDR             R2, [R4,#0x2C]
4E105A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E105C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E105E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E1060:  LDR             R3, [R4,#0x30]
4E1062:  ADD             R2, R3
4E1064:  CMP             R2, R0
4E1066:  BHI             loc_4E10CA
4E1068:  LDR.W           R0, [R1,#0x590]; this
4E106C:  CBZ             R0, loc_4E10CA
4E106E:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
4E1072:  CBNZ            R0, loc_4E1082
4E1074:  LDR             R1, [R4,#0x10]; CPed *
4E1076:  LDR.W           R0, [R1,#0x590]; this
4E107A:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4E107E:  CMP             R0, #1
4E1080:  BNE             loc_4E10CA
4E1082:  LDR             R1, [R4,#0x10]; CVehicle *
4E1084:  LDR.W           R6, [R1,#0x590]
4E1088:  MOV             R0, R6; this
4E108A:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4E108E:  MOV             R1, R0; CVehicle *
4E1090:  MOV             R0, R6; this
4E1092:  MOVS            R2, #0; int
4E1094:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
4E1098:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E10A6)
4E109A:  MOVW            R9, #0x3EB
4E109E:  LDRB            R2, [R4,#0xC]
4E10A0:  CMP             R0, #0
4E10A2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E10A4:  AND.W           R2, R2, #0xFB
4E10A8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4E10AA:  ORR.W           R2, R2, R0,LSL#2
4E10AE:  STRB            R2, [R4,#0xC]
4E10B0:  MOV.W           R2, #0x7D0
4E10B4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4E10B6:  STRD.W          R1, R2, [R4,#0x2C]
4E10BA:  MOV.W           R1, #1
4E10BE:  STRB.W          R1, [R4,#0x34]
4E10C2:  IT NE
4E10C4:  MOVNE.W         R9, #0xC8
4E10C8:  B               loc_4E11FE
4E10CA:  MOV.W           R9, #0xC8
4E10CE:  B               loc_4E11FE
4E10D0:  LDR.W           R0, [R5,#0x5E8]
4E10D4:  CMP             R0, #0
4E10D6:  BLE             loc_4E10DC
4E10D8:  MOVS            R1, #2
4E10DA:  B               loc_4E11A8
4E10DC:  LDR.W           R0, [R5,#0x604]
4E10E0:  CMP             R0, #0
4E10E2:  BLE             loc_4E10EE
4E10E4:  MOVS            R1, #3
4E10E6:  B               loc_4E11A8
4E10E8:  MOVW            R9, #0x2BF
4E10EC:  B               loc_4E11FE
4E10EE:  LDR.W           R0, [R5,#0x620]
4E10F2:  CMP             R0, #0
4E10F4:  BLE             loc_4E10FA
4E10F6:  MOVS            R1, #4
4E10F8:  B               loc_4E11A8
4E10FA:  LDR.W           R0, [R5,#0x63C]
4E10FE:  CMP             R0, #0
4E1100:  BLE             loc_4E1156
4E1102:  MOVS            R1, #5
4E1104:  B               loc_4E11A8
4E1106:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E110E)
4E1108:  LDR             R1, [R4,#0x2C]
4E110A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E110C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E110E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E1110:  LDR             R2, [R4,#0x30]; CPed *
4E1112:  MOV.W           R9, #0xC8
4E1116:  ADD             R1, R2
4E1118:  CMP             R1, R0
4E111A:  BHI             loc_4E11FE
4E111C:  LDR             R1, [R4,#0x10]; CVehicle *
4E111E:  LDR.W           R8, [R1,#0x590]
4E1122:  MOV             R0, R8; this
4E1124:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4E1128:  MOV             R1, R0; CVehicle *
4E112A:  MOV             R0, R8; this
4E112C:  MOVS            R2, #0; int
4E112E:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
4E1132:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E113A)
4E1134:  LDRB            R2, [R4,#0xC]
4E1136:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E1138:  AND.W           R2, R2, #0xFB
4E113C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4E113E:  ORR.W           R2, R2, R0,LSL#2
4E1142:  STRB            R2, [R4,#0xC]
4E1144:  MOV.W           R2, #0x7D0
4E1148:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4E114A:  STRD.W          R1, R2, [R4,#0x2C]
4E114E:  MOVS            R1, #1
4E1150:  STRB.W          R1, [R4,#0x34]
4E1154:  B               loc_4E12EA
4E1156:  LDR.W           R0, [R5,#0x658]
4E115A:  CMP             R0, #0
4E115C:  BLE             loc_4E1162
4E115E:  MOVS            R1, #6
4E1160:  B               loc_4E11A8
4E1162:  LDR.W           R0, [R5,#0x674]
4E1166:  CMP             R0, #0
4E1168:  BLE             loc_4E116E
4E116A:  MOVS            R1, #7
4E116C:  B               loc_4E11A8
4E116E:  LDR.W           R0, [R5,#0x690]
4E1172:  CMP             R0, #0
4E1174:  BLE             loc_4E117A
4E1176:  MOVS            R1, #8
4E1178:  B               loc_4E11A8
4E117A:  LDR.W           R0, [R5,#0x6AC]
4E117E:  CMP             R0, #0
4E1180:  BLE             loc_4E1186
4E1182:  MOVS            R1, #9
4E1184:  B               loc_4E11A8
4E1186:  LDR.W           R0, [R5,#0x6C8]
4E118A:  CMP             R0, #0
4E118C:  BLE             loc_4E1192
4E118E:  MOVS            R1, #0xA
4E1190:  B               loc_4E11A8
4E1192:  LDR.W           R0, [R5,#0x6E4]
4E1196:  CMP             R0, #0
4E1198:  BLE             loc_4E119E
4E119A:  MOVS            R1, #0xB
4E119C:  B               loc_4E11A8
4E119E:  LDR.W           R0, [R5,#0x700]
4E11A2:  CMP             R0, #0
4E11A4:  BLE             loc_4E11B8
4E11A6:  MOVS            R1, #0xC; int
4E11A8:  MOV             R0, R5; this
4E11AA:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4E11AE:  MOV.W           R9, #0xC8
4E11B2:  B               loc_4E11C4
4E11B4:  DCFS 0.1
4E11B8:  MOV             R0, R5
4E11BA:  MOVS            R1, #0
4E11BC:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
4E11C0:  MOVW            R9, #0x3E9
4E11C4:  LDR             R1, [R4,#0x10]; CPed *
4E11C6:  LDRB.W          R0, [R1,#0x485]
4E11CA:  LSLS            R0, R0, #0x1F
4E11CC:  ITT NE
4E11CE:  LDRNE.W         R0, [R1,#0x590]; this
4E11D2:  CMPNE           R0, #0
4E11D4:  BEQ             loc_4E11FE
4E11D6:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4E11DA:  CBNZ            R0, loc_4E11EA
4E11DC:  LDR             R1, [R4,#0x10]; CPed *
4E11DE:  LDR.W           R0, [R1,#0x590]; this
4E11E2:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
4E11E6:  CMP             R0, #1
4E11E8:  BNE             loc_4E11FE
4E11EA:  LDR             R0, [R4,#0x10]
4E11EC:  LDR.W           R0, [R0,#0x590]; this
4E11F0:  LDR.W           R1, [R0,#0x5A4]
4E11F4:  SUBS            R1, #3
4E11F6:  CMP             R1, #2
4E11F8:  BCS             loc_4E1280
4E11FA:  MOVW            R9, #0x3EB
4E11FE:  LDRB            R0, [R4,#0xC]
4E1200:  AND.W           R0, R0, #0xFE
4E1204:  STRB            R0, [R4,#0xC]
4E1206:  LDR             R1, [R4,#0x10]; CPed *
4E1208:  CMP             R1, #0
4E120A:  ITT NE
4E120C:  LDRNE.W         R0, [R1,#0x588]
4E1210:  CMPNE           R0, #0
4E1212:  BEQ             loc_4E1246
4E1214:  LDR.W           R2, [R5,#0x588]
4E1218:  CMP             R2, #0
4E121A:  ITTT NE
4E121C:  LDRBNE.W        R2, [R2,#0x33]
4E1220:  LDRBNE.W        R0, [R0,#0x33]
4E1224:  CMPNE           R0, R2
4E1226:  BEQ             loc_4E1246
4E1228:  ADD.W           R8, SP, #0x38+var_28
4E122C:  MOV             R0, R8; this
4E122E:  BLX             j__ZN15CEventAreaCodesC2EP4CPed_0; CEventAreaCodes::CEventAreaCodes(CPed *)
4E1232:  LDR.W           R0, [R5,#0x440]
4E1236:  MOV             R1, R8; CEvent *
4E1238:  MOVS            R2, #0; bool
4E123A:  ADDS            R0, #0x68 ; 'h'; this
4E123C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4E1240:  MOV             R0, R8; this
4E1242:  BLX             j__ZN15CEventAreaCodesD2Ev; CEventAreaCodes::~CEventAreaCodes()
4E1246:  CMP.W           R9, #0xC8
4E124A:  BEQ             loc_4E126A
4E124C:  LDR             R0, [R4,#8]
4E124E:  MOVS            R2, #1
4E1250:  MOVS            R3, #0
4E1252:  LDR             R1, [R0]
4E1254:  LDR             R6, [R1,#0x1C]
4E1256:  MOV             R1, R5
4E1258:  BLX             R6
4E125A:  CMP             R0, #1
4E125C:  BNE             loc_4E126A
4E125E:  MOV             R0, R4; this
4E1260:  MOV             R1, R9; int
4E1262:  MOV             R2, R5; CPed *
4E1264:  BLX             j__ZN25CTaskComplexKillPedOnFoot13CreateSubTaskEiP4CPed; CTaskComplexKillPedOnFoot::CreateSubTask(int,CPed *)
4E1268:  B               loc_4E1278
4E126A:  LDR             R1, [R4,#0x10]; CPed *
4E126C:  CMP             R1, #0
4E126E:  ITT NE
4E1270:  MOVNE           R0, R5; this
4E1272:  BLXNE           j__ZN22CTaskComplexGangLeader18DoGangAttackSpeechEP4CPedS1_; CTaskComplexGangLeader::DoGangAttackSpeech(CPed *,CPed *)
4E1276:  LDR             R0, [R4,#8]
4E1278:  ADD             SP, SP, #0x20 ; ' '
4E127A:  POP.W           {R8,R9,R11}
4E127E:  POP             {R4-R7,PC}
4E1280:  LDR.W           R1, [R0,#0x5A0]
4E1284:  CMP             R1, #5
4E1286:  IT NE
4E1288:  CMPNE           R1, #9
4E128A:  BEQ             loc_4E11FE
4E128C:  LDRB.W          R1, [R8,#2]
4E1290:  LSLS            R1, R1, #0x1A
4E1292:  BMI             loc_4E11FE
4E1294:  VLDR            S0, [R0,#0x48]
4E1298:  VLDR            S2, [R0,#0x4C]
4E129C:  VMUL.F32        S0, S0, S0
4E12A0:  VMUL.F32        S2, S2, S2
4E12A4:  VADD.F32        S0, S0, S2
4E12A8:  VLDR            S2, =0.1
4E12AC:  VSQRT.F32       S0, S0
4E12B0:  VCMPE.F32       S0, S2
4E12B4:  VMRS            APSR_nzcv, FPSCR
4E12B8:  BGT             loc_4E11FE
4E12BA:  MOV             R1, R5; CPed *
4E12BC:  BLX             j__ZNK8CVehicle15CanPedOpenLocksEPK4CPed; CVehicle::CanPedOpenLocks(CPed const*)
4E12C0:  CMP             R0, #0
4E12C2:  BEQ             loc_4E11FE
4E12C4:  LDR             R1, [R4,#0x10]; CVehicle *
4E12C6:  LDR.W           R6, [R1,#0x590]
4E12CA:  MOV             R0, R6; this
4E12CC:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4E12D0:  MOV             R1, R0; CVehicle *
4E12D2:  MOV             R0, R6; this
4E12D4:  MOVS            R2, #0; int
4E12D6:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
4E12DA:  LDRB            R1, [R4,#0xC]
4E12DC:  MOVW            R9, #0x3EB
4E12E0:  AND.W           R1, R1, #0xFB
4E12E4:  ORR.W           R1, R1, R0,LSL#2
4E12E8:  STRB            R1, [R4,#0xC]
4E12EA:  CMP             R0, #0
4E12EC:  IT NE
4E12EE:  MOVWNE          R9, #0x2BF
4E12F2:  B               loc_4E11FE
