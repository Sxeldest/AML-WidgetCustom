; =========================================================
; Game Engine Function: _ZN5CBike19DamageKnockOffRiderEP8CVehicleftP7CEntityR7CVectorS5_
; Address            : 0x560CAC - 0x56111C
; =========================================================

560CAC:  PUSH            {R4-R7,LR}
560CAE:  ADD             R7, SP, #0xC
560CB0:  PUSH.W          {R8-R11}
560CB4:  SUB             SP, SP, #4
560CB6:  VPUSH           {D8-D15}
560CBA:  SUB             SP, SP, #0xB0
560CBC:  VLDR            S0, =800.0
560CC0:  VMOV            S16, R1
560CC4:  MOV             R4, R0
560CC6:  MOV.W           R6, #0x18000000
560CCA:  VMUL.F32        S0, S16, S0
560CCE:  VLDR            S2, [R4,#0x90]
560CD2:  LDRB.W          R0, [R4,#0x3A]
560CD6:  CMP             R0, #7
560CD8:  VDIV.F32        S18, S0, S2
560CDC:  BHI             loc_560CFA
560CDE:  LDR.W           R0, [R4,#0x464]
560CE2:  CMP             R0, #0
560CE4:  BEQ.W           loc_560FC8
560CE8:  VLDR            S0, =0.42
560CEC:  VMOV.F32        S20, #0.5
560CF0:  ADDW            R5, R4, #0x464
560CF4:  VMUL.F32        S18, S18, S0
560CF8:  B               loc_560D18
560CFA:  LDR.W           R0, [R4,#0x464]; this
560CFE:  CMP             R0, #0
560D00:  BEQ.W           loc_560FC8
560D04:  LDR.W           R1, [R0,#0x48C]
560D08:  ADDW            R5, R4, #0x464
560D0C:  ANDS            R1, R6
560D0E:  TEQ.W           R1, #0x10000000
560D12:  BEQ             loc_560D30
560D14:  VLDR            S20, =0.6
560D18:  BLX             j__ZN4CPed18GetBikeRidingSkillEv; CPed::GetBikeRidingSkill(void)
560D1C:  VMOV            S0, R0
560D20:  VMOV.F32        S2, #1.0
560D24:  VMUL.F32        S0, S0, S20
560D28:  VSUB.F32        S0, S2, S0
560D2C:  VMUL.F32        S18, S18, S0
560D30:  LDR             R1, [R5]
560D32:  CMP             R1, #0
560D34:  BEQ.W           loc_560FC8
560D38:  VMOV.F32        S0, #10.0
560D3C:  MOVS            R0, #0
560D3E:  VCMPE.F32       S18, S0
560D42:  VMRS            APSR_nzcv, FPSCR
560D46:  BLE.W           loc_560FCA
560D4A:  LDR.W           R2, [R1,#0x44C]
560D4E:  CMP             R2, #0x32 ; '2'
560D50:  BNE.W           loc_560FCA
560D54:  LDR.W           R0, [R1,#0x440]
560D58:  ADDS            R0, #4; this
560D5A:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
560D5E:  CBZ             R0, loc_560D86
560D60:  LDR             R0, [R5]
560D62:  LDR.W           R0, [R0,#0x440]
560D66:  ADDS            R0, #4; this
560D68:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
560D6C:  LDR             R1, [R0]
560D6E:  LDR             R1, [R1,#0x14]
560D70:  BLX             R1
560D72:  MOVW            R1, #0x3FE
560D76:  CMP             R0, R1
560D78:  BNE             loc_560D86
560D7A:  LDR             R0, [R5]
560D7C:  LDR.W           R0, [R0,#0x59C]
560D80:  CMP             R0, #6
560D82:  BNE.W           loc_560FC8
560D86:  LDR.W           R8, [R7,#arg_4]
560D8A:  LDR             R1, [R4,#0x14]
560D8C:  VLDR            S22, [R8]
560D90:  VLDR            S6, [R1,#0x10]
560D94:  VLDR            S26, [R8,#4]
560D98:  VLDR            S19, [R1,#0x14]
560D9C:  VMUL.F32        S2, S22, S6
560DA0:  VLDR            S24, [R8,#8]
560DA4:  VMUL.F32        S0, S26, S19
560DA8:  VLDR            S17, [R1,#0x18]
560DAC:  VSTR            S6, [SP,#0x110+var_E4]
560DB0:  VMUL.F32        S4, S24, S17
560DB4:  VADD.F32        S0, S2, S0
560DB8:  VLDR            S2, =0.85
560DBC:  VADD.F32        S0, S0, S4
560DC0:  VABS.F32        S4, S0
560DC4:  VCMPE.F32       S4, S2
560DC8:  VMRS            APSR_nzcv, FPSCR
560DCC:  BLE             loc_560E0A
560DCE:  VLDR            S4, =0.0
560DD2:  VMUL.F32        S6, S26, S4
560DD6:  VMUL.F32        S8, S22, S4
560DDA:  VADD.F32        S6, S8, S6
560DDE:  VMOV.F32        S8, #7.0
560DE2:  VADD.F32        S6, S6, S24
560DE6:  VMAX.F32        D3, D3, D2
560DEA:  VCMPE.F32       S6, S2
560DEE:  VMRS            APSR_nzcv, FPSCR
560DF2:  IT LT
560DF4:  VMOVLT.F32      S6, S4
560DF8:  VLDR            S4, =0.6
560DFC:  VMUL.F32        S2, S6, S8
560E00:  VMUL.F32        S2, S6, S2
560E04:  VADD.F32        S28, S2, S4
560E08:  B               loc_560E0E
560E0A:  VLDR            S28, =0.6
560E0E:  VLDR            S27, [R1,#0x28]
560E12:  VMOV.F32        S2, #5.0
560E16:  VCMPE.F32       S27, #0.0
560E1A:  VMRS            APSR_nzcv, FPSCR
560E1E:  IT LT
560E20:  VMOVLT.F32      S28, S2
560E24:  LDRH            R0, [R4,#0x26]
560E26:  CMP.W           R0, #0x1D4
560E2A:  BNE             loc_560E42
560E2C:  VMOV.F32        S4, #1.5
560E30:  VLDR            S2, =0.65
560E34:  VMUL.F32        S28, S28, S2
560E38:  VLDR            S2, =0.0375
560E3C:  VSTR            S4, [SP,#0x110+var_E8]
560E40:  B               loc_560E70
560E42:  VLDR            S2, =0.65
560E46:  VMOV.F32        S4, #3.0
560E4A:  LDR.W           R0, [R4,#0x5A4]
560E4E:  VMOV.F32        S6, #1.5
560E52:  VMUL.F32        S2, S28, S2
560E56:  ADR             R2, dword_56112C
560E58:  CMP             R0, #2
560E5A:  ITT EQ
560E5C:  VMOVEQ.F32      S28, S2
560E60:  VMOVEQ.F32      S6, S4
560E64:  VSTR            S6, [SP,#0x110+var_E8]
560E68:  IT EQ
560E6A:  ADDEQ           R2, #4
560E6C:  VLDR            S2, [R2]
560E70:  VSTR            S2, [SP,#0x110+var_EC]
560E74:  LDR             R0, [R5]; this
560E76:  CBZ             R0, loc_560EC4
560E78:  VCMPE.F32       S0, #0.0
560E7C:  VMRS            APSR_nzcv, FPSCR
560E80:  BLE             loc_560EC6
560E82:  BLX             j__ZN4CPed18GetBikeRidingSkillEv; CPed::GetBikeRidingSkill(void)
560E86:  VMOV            S2, R0
560E8A:  VLDR            S0, =-0.6
560E8E:  VMOV.F32        S4, #1.0
560E92:  LDR             R1, [R4,#0x14]
560E94:  VMUL.F32        S0, S2, S0
560E98:  VLDR            S22, [R8]
560E9C:  VLDR            S26, [R8,#4]
560EA0:  VLDR            S24, [R8,#8]
560EA4:  LDR             R0, [R5]
560EA6:  VADD.F32        S0, S0, S4
560EAA:  VMUL.F32        S28, S28, S0
560EAE:  VLDR            S0, [R1,#0x10]
560EB2:  VSTR            S0, [SP,#0x110+var_E4]
560EB6:  VLDR            S19, [R1,#0x14]
560EBA:  VLDR            S17, [R1,#0x18]
560EBE:  VLDR            S27, [R1,#0x28]
560EC2:  B               loc_560EC6
560EC4:  MOVS            R0, #0; this
560EC6:  VLDR            S23, [R1]
560ECA:  VLDR            S30, [R1,#4]
560ECE:  VLDR            S25, [R1,#8]
560ED2:  VLDR            S29, [R1,#0x20]
560ED6:  VLDR            S31, [R1,#0x24]
560EDA:  VLDR            S20, =0.0
560EDE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
560EE2:  CMP             R0, #0
560EE4:  BEQ             loc_560EF6
560EE6:  BLX             j__ZN10CCullZones18CamStairsForPlayerEv; CCullZones::CamStairsForPlayer(void)
560EEA:  CMP             R0, #1
560EEC:  BNE             loc_560EF6
560EEE:  BLX             j__ZN10CCullZones36FindZoneWithStairsAttributeForPlayerEv; CCullZones::FindZoneWithStairsAttributeForPlayer(void)
560EF2:  CMP             R0, #0
560EF4:  BNE             loc_560F84
560EF6:  VLDR            S2, [SP,#0x110+var_E4]
560EFA:  VMUL.F32        S0, S26, S19
560EFE:  VMUL.F32        S4, S26, S30
560F02:  VMUL.F32        S2, S22, S2
560F06:  VMUL.F32        S6, S22, S23
560F0A:  VMUL.F32        S8, S24, S17
560F0E:  VADD.F32        S0, S2, S0
560F12:  VADD.F32        S4, S6, S4
560F16:  VMUL.F32        S2, S24, S25
560F1A:  VMUL.F32        S6, S22, S29
560F1E:  VADD.F32        S0, S0, S8
560F22:  VMUL.F32        S8, S24, S27
560F26:  VADD.F32        S2, S4, S2
560F2A:  VMUL.F32        S4, S26, S31
560F2E:  VABS.F32        S0, S0
560F32:  VABS.F32        S2, S2
560F36:  VADD.F32        S4, S6, S4
560F3A:  VLDR            S6, =0.45
560F3E:  VMUL.F32        S0, S28, S0
560F42:  VMUL.F32        S2, S2, S6
560F46:  VADD.F32        S4, S4, S8
560F4A:  VLDR            S8, [SP,#0x110+var_EC]
560F4E:  VMAX.F32        D3, D2, D10
560F52:  VADD.F32        S0, S0, S2
560F56:  VMIN.F32        D1, D2, D10
560F5A:  VLDR            S4, [SP,#0x110+var_E8]
560F5E:  VMUL.F32        S6, S8, S6
560F62:  VMUL.F32        S2, S4, S2
560F66:  VADD.F32        S0, S0, S6
560F6A:  VSUB.F32        S0, S0, S2
560F6E:  VMUL.F32        S20, S18, S0
560F72:  VLDR            S0, =75.0
560F76:  VCMPE.F32       S20, S0
560F7A:  VMRS            APSR_nzcv, FPSCR
560F7E:  BLE             loc_560F84
560F80:  LDR             R2, [R5]
560F82:  B               loc_560FA2
560F84:  VMOV.F32        S0, #20.0
560F88:  MOVS            R0, #0
560F8A:  VCMPE.F32       S20, S0
560F8E:  VMRS            APSR_nzcv, FPSCR
560F92:  BLE             loc_560FCA
560F94:  LDR             R2, [R5]
560F96:  LDR.W           R1, [R2,#0x48C]
560F9A:  ANDS            R1, R6
560F9C:  TEQ.W           R1, R6
560FA0:  BNE             loc_560FCA
560FA2:  MOV.W           R1, #0x8000000
560FA6:  CBZ             R2, loc_560FB4
560FA8:  LDR.W           R0, [R2,#0x48C]
560FAC:  ANDS            R0, R6
560FAE:  TEQ.W           R0, R1
560FB2:  BEQ             loc_560FC8
560FB4:  LDR.W           R0, [R4,#0x468]
560FB8:  CMP             R0, #0
560FBA:  BEQ             loc_560FD8
560FBC:  LDR.W           R3, [R0,#0x48C]
560FC0:  ANDS            R3, R6
560FC2:  TEQ.W           R3, R1
560FC6:  BNE             loc_560FD8
560FC8:  MOVS            R0, #0
560FCA:  ADD             SP, SP, #0xB0
560FCC:  VPOP            {D8-D15}
560FD0:  ADD             SP, SP, #4
560FD2:  POP.W           {R8-R11}
560FD6:  POP             {R4-R7,PC}; float
560FD8:  VLDR            S0, [R8]
560FDC:  CMP             R2, #0
560FDE:  VLDR            S2, [R8,#4]
560FE2:  VNEG.F32        S0, S0
560FE6:  VNEG.F32        S2, S2
560FEA:  VSTR            S2, [SP,#0x110+var_64]
560FEE:  VSTR            S0, [SP,#0x110+var_68]
560FF2:  BEQ             loc_561060
560FF4:  ADD             R1, SP, #0x110+var_68
560FF6:  MOV             R0, R2
560FF8:  BLX             j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
560FFC:  VLDR            S0, =0.05
561000:  MOV             R6, R0
561002:  SXTB            R2, R6
561004:  MOVS            R3, #0x31 ; '1'
561006:  VMUL.F32        S0, S20, S0
56100A:  ADD.W           R9, SP, #0x110+var_A4
56100E:  STRD.W          R3, R2, [SP,#0x110+var_108]; int
561012:  MOVS            R0, #0
561014:  MOVS            R1, #1
561016:  ADD.W           R2, R4, #0x48 ; 'H'; int
56101A:  STRD.W          R0, R0, [SP,#0x110+var_100]; int
56101E:  MOV             R3, R8; int
561020:  STRD.W          R1, R0, [SP,#0x110+var_F8]; int
561024:  MOV             R0, R9; int
561026:  MOV             R1, R4; this
561028:  VSTR            S16, [SP,#0x110+var_110]
56102C:  VSTR            S0, [SP,#0x110+var_10C]
561030:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
561034:  LDR             R0, [R5]
561036:  MOV             R1, R9; CEvent *
561038:  MOVS            R2, #0; bool
56103A:  LDR.W           R0, [R0,#0x440]
56103E:  ADDS            R0, #0x68 ; 'h'; this
561040:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
561044:  MOV             R0, R9; this
561046:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
56104A:  LDR.W           R0, [R4,#0x468]
56104E:  CBNZ            R0, loc_561068
561050:  B               loc_561118
561052:  ALIGN 4
561054:  DCFS 800.0
561058:  DCFS 0.42
56105C:  DCFS 0.6
561060:  MOV             R6, #0xFFFFFFF6
561064:  CMP             R0, #0
561066:  BEQ             loc_561118
561068:  ADDS.W          R1, R6, #0xA
56106C:  BNE             loc_561076
56106E:  ADD             R1, SP, #0x110+var_68
561070:  BLX             j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
561074:  MOV             R6, R0
561076:  VLDR            S0, =0.05
56107A:  SXTB            R0, R6
56107C:  ADD.W           R9, R4, #0x48 ; 'H'
561080:  ADD             R6, SP, #0x110+var_A4
561082:  VMUL.F32        S18, S20, S0
561086:  MOV.W           R11, #0x31 ; '1'
56108A:  STRD.W          R11, R0, [SP,#0x110+var_108]; int
56108E:  MOV.W           R10, #0
561092:  MOV             R0, R6; int
561094:  MOV             R1, R4; this
561096:  MOV             R2, R9; int
561098:  MOV             R3, R8; int
56109A:  STRD.W          R10, R10, [SP,#0x110+var_100]; int
56109E:  STRD.W          R10, R10, [SP,#0x110+var_F8]; int
5610A2:  VSTR            S16, [SP,#0x110+var_110]
5610A6:  VSTR            S18, [SP,#0x110+var_10C]
5610AA:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
5610AE:  LDR.W           R0, [R4,#0x468]
5610B2:  MOV             R1, R6; CEvent *
5610B4:  MOVS            R2, #0; bool
5610B6:  LDR.W           R0, [R0,#0x440]
5610BA:  ADDS            R0, #0x68 ; 'h'; this
5610BC:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5610C0:  MOV.W           R0, #0xFFFFFFFF; int
5610C4:  LDR             R6, [R5]
5610C6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5610CA:  CMP             R6, R0
5610CC:  BNE             loc_561112
5610CE:  LDR             R0, [R5]
5610D0:  ADD             R1, SP, #0x110+var_68
5610D2:  BLX             j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
5610D6:  ADD             R6, SP, #0x110+var_E0
5610D8:  SXTB            R0, R0
5610DA:  MOVS            R1, #1
5610DC:  STRD.W          R11, R0, [SP,#0x110+var_108]; int
5610E0:  STRD.W          R10, R10, [SP,#0x110+var_100]; int
5610E4:  MOV             R0, R6; int
5610E6:  STRD.W          R1, R10, [SP,#0x110+var_F8]; int
5610EA:  MOV             R1, R4; this
5610EC:  MOV             R2, R9; int
5610EE:  MOV             R3, R8; int
5610F0:  VSTR            S16, [SP,#0x110+var_110]
5610F4:  VSTR            S18, [SP,#0x110+var_10C]
5610F8:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
5610FC:  LDR             R0, [R5]
5610FE:  MOV             R1, R6; CEvent *
561100:  MOVS            R2, #0; bool
561102:  LDR.W           R0, [R0,#0x440]
561106:  ADDS            R0, #0x68 ; 'h'; this
561108:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
56110C:  MOV             R0, R6; this
56110E:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
561112:  ADD             R0, SP, #0x110+var_A4; this
561114:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
561118:  MOVS            R0, #1
56111A:  B               loc_560FCA
