; =========================================================
; Game Engine Function: _ZN16CPedStuckChecker12TestPedStuckEP4CPedP11CEventGroup
; Address            : 0x4B9DF8 - 0x4BA592
; =========================================================

4B9DF8:  PUSH            {R4-R7,LR}
4B9DFA:  ADD             R7, SP, #0xC
4B9DFC:  PUSH.W          {R8-R11}
4B9E00:  SUB             SP, SP, #4
4B9E02:  VPUSH           {D8-D10}
4B9E06:  SUB             SP, SP, #0xA0
4B9E08:  MOV             R4, R1
4B9E0A:  MOV             R6, R0
4B9E0C:  MOV             R5, R4
4B9E0E:  MOV             R11, R2
4B9E10:  LDRB.W          R0, [R5,#0x1C]!
4B9E14:  TST.W           R0, #1
4B9E18:  BEQ             loc_4B9E34
4B9E1A:  LDR.W           R0, [R4,#0x100]
4B9E1E:  CBNZ            R0, loc_4B9E34
4B9E20:  LDR.W           R0, [R4,#0x44C]
4B9E24:  BIC.W           R0, R0, #1
4B9E28:  CMP             R0, #0x36 ; '6'
4B9E2A:  BEQ             loc_4B9E34
4B9E2C:  LDRB.W          R0, [R4,#0x484]
4B9E30:  LSLS            R0, R0, #0x1E
4B9E32:  BEQ             loc_4B9E46
4B9E34:  MOVS            R0, #0
4B9E36:  STR             R0, [R6,#0xC]
4B9E38:  ADD             SP, SP, #0xA0
4B9E3A:  VPOP            {D8-D10}
4B9E3E:  ADD             SP, SP, #4
4B9E40:  POP.W           {R8-R11}
4B9E44:  POP             {R4-R7,PC}
4B9E46:  LDR.W           R0, [R4,#0xE0]
4B9E4A:  CBZ             R0, loc_4B9E5A
4B9E4C:  VLDR            S0, [R4,#0xDC]
4B9E50:  VCMPE.F32       S0, #0.0
4B9E54:  VMRS            APSR_nzcv, FPSCR
4B9E58:  BGT             loc_4B9E6A
4B9E5A:  MOV             R0, R4; this
4B9E5C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4B9E60:  CMP             R0, #1
4B9E62:  BNE             loc_4B9E34
4B9E64:  LDRB            R0, [R5]
4B9E66:  LSLS            R0, R0, #0x1B
4B9E68:  BPL             loc_4B9E34
4B9E6A:  LDR.W           R0, [R4,#0x440]
4B9E6E:  ADDS            R0, #4; this
4B9E70:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4B9E74:  CBZ             R0, loc_4B9E82
4B9E76:  LDR             R1, [R0]
4B9E78:  LDR             R1, [R1,#0x14]
4B9E7A:  BLX             R1
4B9E7C:  CMP.W           R0, #0x518
4B9E80:  BEQ             loc_4B9E34
4B9E82:  LDR.W           R5, [R4,#0x440]
4B9E86:  LDR             R0, [R5]; this
4B9E88:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4B9E8C:  CMP             R0, #1
4B9E8E:  BNE             loc_4B9EA6
4B9E90:  ADDS            R0, R5, #4; this
4B9E92:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4B9E96:  CBZ             R0, loc_4B9EA6
4B9E98:  LDR             R1, [R0]
4B9E9A:  LDR             R1, [R1,#0x14]
4B9E9C:  BLX             R1
4B9E9E:  MOVW            R1, #0x517
4B9EA2:  CMP             R0, R1
4B9EA4:  BEQ             loc_4B9E34
4B9EA6:  LDR.W           R0, [R4,#0x440]
4B9EAA:  ADDS            R0, #4; this
4B9EAC:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4B9EB0:  CBZ             R0, loc_4B9EBC
4B9EB2:  LDR             R1, [R0]
4B9EB4:  LDR             R1, [R1,#0x14]
4B9EB6:  BLX             R1
4B9EB8:  CMP             R0, #0xFE
4B9EBA:  BEQ             loc_4B9E34
4B9EBC:  MOVS            R0, #0
4B9EBE:  ADDW            R8, R4, #0x484
4B9EC2:  STR             R0, [SP,#0xD8+var_A4]
4B9EC4:  MOVW            R2, #0x2710
4B9EC8:  LDRH            R0, [R6,#0xC]
4B9ECA:  SUBS            R1, R0, #1
4B9ECC:  UXTH            R1, R1
4B9ECE:  CMP             R1, R2
4B9ED0:  BCC             loc_4B9EFC
4B9ED2:  MOVS            R0, #1
4B9ED4:  VLDR            S0, =0.0
4B9ED8:  STR             R0, [R6,#0xC]
4B9EDA:  LDR             R1, [R4,#0x14]
4B9EDC:  VMOV.F32        S4, S0
4B9EE0:  VMOV.F32        S2, S0
4B9EE4:  ADD.W           R2, R1, #0x30 ; '0'
4B9EE8:  CMP             R1, #0
4B9EEA:  IT EQ
4B9EEC:  ADDEQ           R2, R4, #4
4B9EEE:  VLDR            D16, [R2]
4B9EF2:  LDR             R1, [R2,#8]
4B9EF4:  STR             R1, [R6,#8]
4B9EF6:  VSTR            D16, [R6]
4B9EFA:  B               loc_4B9F30
4B9EFC:  LDR             R1, [R4,#0x14]
4B9EFE:  ADDS            R0, #1
4B9F00:  VLDR            S0, [R6]
4B9F04:  ADD.W           R2, R1, #0x30 ; '0'
4B9F08:  CMP             R1, #0
4B9F0A:  VLDR            S4, [R6,#4]
4B9F0E:  VLDR            S2, [R6,#8]
4B9F12:  IT EQ
4B9F14:  ADDEQ           R2, R4, #4
4B9F16:  VLDR            S6, [R2]
4B9F1A:  VLDR            S8, [R2,#4]
4B9F1E:  VLDR            S10, [R2,#8]
4B9F22:  VSUB.F32        S0, S6, S0
4B9F26:  VSUB.F32        S4, S8, S4
4B9F2A:  STRH            R0, [R6,#0xC]
4B9F2C:  VSUB.F32        S2, S10, S2
4B9F30:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4B9F42)
4B9F34:  VMOV.F32        S16, #4.0
4B9F38:  VLDR            S12, =0.01
4B9F3C:  UXTH            R0, R0
4B9F3E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4B9F40:  VLDR            S10, =50.0
4B9F44:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4B9F46:  VLDR            S6, [R1]
4B9F4A:  VMAX.F32        D4, D3, D6
4B9F4E:  VMUL.F32        S6, S8, S16
4B9F52:  VDIV.F32        S14, S10, S6
4B9F56:  VMOV            S6, R0
4B9F5A:  VCVT.F32.U32    S6, S6
4B9F5E:  VCMPE.F32       S14, S6
4B9F62:  VMRS            APSR_nzcv, FPSCR
4B9F66:  BGE             loc_4B9F8A
4B9F68:  VMUL.F32        S14, S4, S4
4B9F6C:  VMUL.F32        S1, S0, S0
4B9F70:  VMUL.F32        S3, S2, S2
4B9F74:  VMUL.F32        S12, S6, S12
4B9F78:  VADD.F32        S14, S1, S14
4B9F7C:  VADD.F32        S14, S14, S3
4B9F80:  VCMPE.F32       S14, S12
4B9F84:  VMRS            APSR_nzcv, FPSCR
4B9F88:  BLT             loc_4B9FBE
4B9F8A:  LDRB.W          R0, [R4,#0xBD]
4B9F8E:  CMP             R0, #2
4B9F90:  BCC             loc_4B9FDA
4B9F92:  VADD.F32        S0, S8, S8
4B9F96:  VDIV.F32        S0, S10, S0
4B9F9A:  VCMPE.F32       S0, S6
4B9F9E:  VMRS            APSR_nzcv, FPSCR
4B9FA2:  BGE.W           loc_4BA20A
4B9FA6:  VLDR            S0, =0.004
4B9FAA:  VABS.F32        S2, S2
4B9FAE:  VMUL.F32        S0, S6, S0
4B9FB2:  VCMPE.F32       S2, S0
4B9FB6:  VMRS            APSR_nzcv, FPSCR
4B9FBA:  BGE.W           loc_4BA20A
4B9FBE:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4B9FC8)
4B9FC2:  LDRH            R1, [R4,#0x24]
4B9FC4:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
4B9FC6:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
4B9FC8:  LDR             R0, [R0]; CTimer::m_FrameCounter
4B9FCA:  ADD             R0, R1
4B9FCC:  ADDS            R0, #3
4B9FCE:  LSLS            R0, R0, #0x1D
4B9FD0:  BEQ.W           loc_4BA108
4B9FD4:  MOVS            R0, #1
4B9FD6:  STRH            R0, [R6,#0xE]
4B9FD8:  B               loc_4BA20A
4B9FDA:  CMP             R0, #1
4B9FDC:  BNE.W           loc_4BA20A
4B9FE0:  LDR.W           R0, [R4,#0xC0]
4B9FE4:  CMP             R0, #0
4B9FE6:  BEQ.W           loc_4BA20A
4B9FEA:  LDRB.W          R0, [R0,#0x3A]
4B9FEE:  AND.W           R0, R0, #7
4B9FF2:  CMP             R0, #1
4B9FF4:  BNE.W           loc_4BA20A
4B9FF8:  VADD.F32        S8, S8, S8
4B9FFC:  VDIV.F32        S8, S10, S8
4BA000:  VCMPE.F32       S8, S6
4BA004:  VMRS            APSR_nzcv, FPSCR
4BA008:  BGE.W           loc_4BA20A
4BA00C:  VLDR            S8, =0.004
4BA010:  VABS.F32        S2, S2
4BA014:  VMUL.F32        S6, S6, S8
4BA018:  VCMPE.F32       S2, S6
4BA01C:  VMRS            APSR_nzcv, FPSCR
4BA020:  BGE.W           loc_4BA20A
4BA024:  VNEG.F32        S2, S4
4BA028:  MOV.W           R0, #0x3F800000
4BA02C:  VSTR            S0, [SP,#0xD8+var_A0+4]
4BA030:  STR             R0, [SP,#0xD8+var_98]
4BA032:  ADD             R0, SP, #0xD8+var_A0; this
4BA034:  VSTR            S2, [SP,#0xD8+var_A0]
4BA038:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4BA03C:  LDR             R0, [R4,#0x14]
4BA03E:  ADD.W           R9, R4, #4
4BA042:  VLDR            S0, [SP,#0xD8+var_A0]
4BA046:  ADD             R2, SP, #0xD8+var_64; int
4BA048:  CMP             R0, #0
4BA04A:  MOV             R1, R9
4BA04C:  VLDR            S2, [SP,#0xD8+var_A0+4]
4BA050:  ADD             R3, SP, #0xD8+var_A4; int
4BA052:  VLDR            S4, [SP,#0xD8+var_98]
4BA056:  IT NE
4BA058:  ADDNE.W         R1, R0, #0x30 ; '0'
4BA05C:  VLDR            S6, [R1]
4BA060:  ADD             R0, SP, #0xD8+var_90; CVector *
4BA062:  VLDR            S8, [R1,#4]
4BA066:  MOV.W           R10, #0
4BA06A:  VLDR            S10, [R1,#8]
4BA06E:  VADD.F32        S0, S6, S0
4BA072:  VADD.F32        S2, S8, S2
4BA076:  MOVS            R1, #0
4BA078:  VADD.F32        S4, S10, S4
4BA07C:  MOVT            R1, #0xC1A0; int
4BA080:  MOVS            R5, #1
4BA082:  VSTR            S0, [SP,#0xD8+var_90]
4BA086:  VSTR            S2, [SP,#0xD8+var_8C]
4BA08A:  VSTR            S4, [SP,#0xD8+var_88]
4BA08E:  STRD.W          R5, R10, [SP,#0xD8+var_D8]; int
4BA092:  STRD.W          R10, R10, [SP,#0xD8+var_D0]; int
4BA096:  STRD.W          R10, R10, [SP,#0xD8+var_C8]; int
4BA09A:  STR.W           R10, [SP,#0xD8+var_C0]; int
4BA09E:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4BA0A2:  CMP             R0, #0
4BA0A4:  BEQ.W           loc_4BA27C
4BA0A8:  LDR             R1, [R4,#0x14]
4BA0AA:  MOV             R0, R9
4BA0AC:  VLDR            S0, [SP,#0xD8+var_A0]
4BA0B0:  MOVS            R2, #(stderr+1); CVector *
4BA0B2:  CMP             R1, #0
4BA0B4:  VLDR            S2, [SP,#0xD8+var_A0+4]
4BA0B8:  VLDR            S4, [SP,#0xD8+var_98]
4BA0BC:  IT NE
4BA0BE:  ADDNE.W         R0, R1, #0x30 ; '0'; this
4BA0C2:  VLDR            S6, [R0]
4BA0C6:  ADD             R1, SP, #0xD8+var_B0; CVector *
4BA0C8:  VLDR            S8, [R0,#4]
4BA0CC:  MOVS            R3, #1; bool
4BA0CE:  VLDR            S10, [R0,#8]
4BA0D2:  VADD.F32        S0, S6, S0
4BA0D6:  VADD.F32        S2, S8, S2
4BA0DA:  VADD.F32        S4, S10, S4
4BA0DE:  VSTR            S0, [SP,#0xD8+var_B0]
4BA0E2:  VSTR            S2, [SP,#0xD8+var_AC]
4BA0E6:  VSTR            S4, [SP,#0xD8+var_A8]
4BA0EA:  STRD.W          R10, R5, [SP,#0xD8+var_D8]; bool
4BA0EE:  STRD.W          R10, R10, [SP,#0xD8+var_D0]; bool
4BA0F2:  STR.W           R10, [SP,#0xD8+var_C8]; bool
4BA0F6:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4BA0FA:  CMP             R0, #1
4BA0FC:  ITE EQ
4BA0FE:  VLDREQ          S18, [SP,#0xD8+var_5C]
4BA102:  VLDRNE          S18, =5001.0
4BA106:  B               loc_4BA280
4BA108:  LDR             R0, [R4,#0x14]
4BA10A:  ADD.W           R9, R4, #4
4BA10E:  VMOV.F32        S16, #1.0
4BA112:  MOVS            R2, #1
4BA114:  CMP             R0, #0
4BA116:  MOV             R1, R9
4BA118:  IT NE
4BA11A:  ADDNE.W         R1, R0, #0x30 ; '0'
4BA11E:  VMOV.F32        S2, #-1.0
4BA122:  LDR             R0, [R1,#8]
4BA124:  ADD             R3, SP, #0xD8+var_A4; int
4BA126:  STR             R0, [SP,#0xD8+var_98]
4BA128:  MOVS            R0, #0
4BA12A:  VLDR            S0, [SP,#0xD8+var_98]
4BA12E:  VLDR            D16, [R1]
4BA132:  VADD.F32        S0, S0, S16
4BA136:  VSTR            D16, [SP,#0xD8+var_A0]
4BA13A:  VSTR            S0, [SP,#0xD8+var_98]
4BA13E:  VLDR            S0, [R1,#8]
4BA142:  STRD.W          R2, R2, [SP,#0xD8+var_D8]; int
4BA146:  VADD.F32        S0, S0, S2
4BA14A:  STRD.W          R0, R2, [SP,#0xD8+var_D0]; int
4BA14E:  STRD.W          R0, R0, [SP,#0xD8+var_C8]; int
4BA152:  ADD             R2, SP, #0xD8+var_64; int
4BA154:  STR             R0, [SP,#0xD8+var_C0]; int
4BA156:  ADD             R0, SP, #0xD8+var_A0; CVector *
4BA158:  VMOV            R1, S0; int
4BA15C:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4BA160:  CMP             R0, #1
4BA162:  BNE             loc_4BA20A
4BA164:  LDM.W           R8, {R0-R3}
4BA168:  TST.W           R1, #0x200000
4BA16C:  BEQ             loc_4BA18E
4BA16E:  VLDR            S0, [SP,#0xD8+var_5C]
4BA172:  LDR             R5, [R4,#0x14]
4BA174:  VADD.F32        S0, S0, S16
4BA178:  CMP             R5, #0
4BA17A:  IT NE
4BA17C:  ADDNE.W         R9, R5, #0x30 ; '0'
4BA180:  VLDR            S2, [R9,#8]
4BA184:  VCMPE.F32       S0, S2
4BA188:  VMRS            APSR_nzcv, FPSCR
4BA18C:  BGE             loc_4BA1FE
4BA18E:  VLDR            S0, [R4,#0xDC]
4BA192:  VCMPE.F32       S0, #0.0
4BA196:  VMRS            APSR_nzcv, FPSCR
4BA19A:  BLE             loc_4BA1C0
4BA19C:  LDR.W           R5, [R4,#0xE0]
4BA1A0:  CBZ             R5, loc_4BA1C0
4BA1A2:  LDRB.W          R5, [R5,#0x3A]
4BA1A6:  AND.W           R5, R5, #7
4BA1AA:  CMP             R5, #3
4BA1AC:  BNE             loc_4BA1C0
4BA1AE:  VLDR            S0, =0.3
4BA1B2:  VLDR            S2, [R4,#0xEC]
4BA1B6:  VCMPE.F32       S2, S0
4BA1BA:  VMRS            APSR_nzcv, FPSCR
4BA1BE:  BGT             loc_4BA1FE
4BA1C0:  VLDR            S0, [SP,#0xD8+var_5C]
4BA1C4:  LDRD.W          R1, R0, [SP,#0xD8+var_A0]
4BA1C8:  VADD.F32        S0, S0, S16
4BA1CC:  VSTR            S0, [SP,#0xD8+var_98]
4BA1D0:  LDR             R2, [R4,#0x14]
4BA1D2:  CBZ             R2, loc_4BA1E0
4BA1D4:  STR             R1, [R2,#0x30]
4BA1D6:  LDR             R1, [R4,#0x14]
4BA1D8:  STR             R0, [R1,#0x34]
4BA1DA:  LDR             R0, [R4,#0x14]
4BA1DC:  ADDS            R0, #0x38 ; '8'
4BA1DE:  B               loc_4BA1E8
4BA1E0:  STRD.W          R1, R0, [R4,#4]
4BA1E4:  ADD.W           R0, R4, #0xC
4BA1E8:  VSTR            S0, [R0]
4BA1EC:  LDM.W           R8, {R0-R3}
4BA1F0:  TST.W           R1, #0x200000
4BA1F4:  ITT NE
4BA1F6:  BICNE.W         R1, R1, #0x200000
4BA1FA:  STMNE.W         R8, {R0-R3}
4BA1FE:  ORR.W           R0, R0, #1
4BA202:  STM.W           R8, {R0-R3}
4BA206:  MOVS            R0, #0
4BA208:  STR             R0, [R6,#0xC]
4BA20A:  LDRH            R0, [R6,#0xE]
4BA20C:  CBZ             R0, loc_4BA260
4BA20E:  MOV             R0, R11; this
4BA210:  MOVS            R1, #0x42 ; 'B'; int
4BA212:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
4BA216:  CBZ             R0, loc_4BA242
4BA218:  MOV             R0, R11; this
4BA21A:  MOVS            R1, #0x42 ; 'B'; int
4BA21C:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
4BA220:  VMOV.F32        S0, #1.0
4BA224:  VLDR            S2, [R0,#0xC]
4BA228:  VCMPE.F32       S2, S0
4BA22C:  VMRS            APSR_nzcv, FPSCR
4BA230:  BLE             loc_4BA242
4BA232:  LDR.W           R0, [R8]
4BA236:  BIC.W           R0, R0, #1
4BA23A:  STR.W           R0, [R8]
4BA23E:  MOVS            R0, #0
4BA240:  B               loc_4B9E38
4BA242:  ADD             R6, SP, #0xD8+var_64
4BA244:  MOV             R1, R4; CPed *
4BA246:  MOV             R0, R6; this
4BA248:  BLX             j__ZN16CEventStuckInAirC2EP4CPed; CEventStuckInAir::CEventStuckInAir(CPed *)
4BA24C:  MOV             R0, R11; this
4BA24E:  MOV             R1, R6; CEvent *
4BA250:  MOVS            R2, #0; bool
4BA252:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BA256:  MOV             R0, R6; this
4BA258:  BLX             j__ZN16CEventStuckInAirD2Ev; CEventStuckInAir::~CEventStuckInAir()
4BA25C:  MOVS            R0, #1
4BA25E:  B               loc_4B9E38
4BA260:  MOVS            R0, #0
4BA262:  B               loc_4B9E38
4BA264:  DCFS 0.0
4BA268:  DCFS 0.01
4BA26C:  DCFS 50.0
4BA270:  DCFS 0.004
4BA274:  DCFS 5001.0
4BA278:  DCFS 0.3
4BA27C:  VLDR            S18, =5001.0
4BA280:  LDR             R0, [R4,#0x14]
4BA282:  MOV             R1, R9
4BA284:  VLDR            S0, [SP,#0xD8+var_A0]
4BA288:  ADD             R2, SP, #0xD8+var_90; int
4BA28A:  CMP             R0, #0
4BA28C:  VLDR            S2, [SP,#0xD8+var_A0+4]
4BA290:  VLDR            S4, [SP,#0xD8+var_98]
4BA294:  IT NE
4BA296:  ADDNE.W         R1, R0, #0x30 ; '0'
4BA29A:  VLDR            S6, [R1]
4BA29E:  ADD             R0, SP, #0xD8+var_B0; CVector *
4BA2A0:  VLDR            S8, [R1,#4]
4BA2A4:  ADD             R3, SP, #0xD8+var_A4; int
4BA2A6:  VLDR            S10, [R1,#8]
4BA2AA:  VSUB.F32        S0, S6, S0
4BA2AE:  VSUB.F32        S2, S8, S2
4BA2B2:  MOVS            R1, #0
4BA2B4:  VSUB.F32        S4, S10, S4
4BA2B8:  MOVT            R1, #0xC1A0; int
4BA2BC:  MOV.W           R10, #0
4BA2C0:  MOVS            R5, #1
4BA2C2:  VSTR            S0, [SP,#0xD8+var_B0]
4BA2C6:  VSTR            S2, [SP,#0xD8+var_AC]
4BA2CA:  VSTR            S4, [SP,#0xD8+var_A8]
4BA2CE:  STRD.W          R5, R10, [SP,#0xD8+var_D8]; float
4BA2D2:  STRD.W          R10, R10, [SP,#0xD8+var_D0]; int
4BA2D6:  STRD.W          R10, R10, [SP,#0xD8+var_C8]; int
4BA2DA:  STR.W           R10, [SP,#0xD8+var_C0]; int
4BA2DE:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4BA2E2:  CBZ             R0, loc_4BA344
4BA2E4:  LDR             R1, [R4,#0x14]
4BA2E6:  MOV             R0, R9
4BA2E8:  VLDR            S0, [SP,#0xD8+var_A0]
4BA2EC:  MOVS            R2, #(stderr+1); CVector *
4BA2EE:  CMP             R1, #0
4BA2F0:  VLDR            S2, [SP,#0xD8+var_A0+4]
4BA2F4:  VLDR            S4, [SP,#0xD8+var_98]
4BA2F8:  IT NE
4BA2FA:  ADDNE.W         R0, R1, #0x30 ; '0'; this
4BA2FE:  VLDR            S6, [R0]
4BA302:  ADD             R1, SP, #0xD8+var_BC; CVector *
4BA304:  VLDR            S8, [R0,#4]
4BA308:  MOVS            R3, #1; bool
4BA30A:  VLDR            S10, [R0,#8]
4BA30E:  VSUB.F32        S0, S6, S0
4BA312:  VSUB.F32        S2, S8, S2
4BA316:  VSUB.F32        S4, S10, S4
4BA31A:  VSTR            S0, [SP,#0xD8+var_BC]
4BA31E:  VSTR            S2, [SP,#0xD8+var_B8]
4BA322:  VSTR            S4, [SP,#0xD8+var_B4]
4BA326:  STRD.W          R10, R5, [SP,#0xD8+var_D8]; bool
4BA32A:  STRD.W          R10, R10, [SP,#0xD8+var_D0]; bool
4BA32E:  STR.W           R10, [SP,#0xD8+var_C8]; bool
4BA332:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4BA336:  CMP             R0, #1
4BA338:  ITE EQ
4BA33A:  VLDREQ          S0, [SP,#0xD8+var_88]
4BA33E:  VLDRNE          S0, =5002.0
4BA342:  B               loc_4BA348
4BA344:  VLDR            S0, =5002.0
4BA348:  VLDR            S4, =5000.0
4BA34C:  VCMPE.F32       S18, S4
4BA350:  VMRS            APSR_nzcv, FPSCR
4BA354:  ITT GT
4BA356:  VCMPEGT.F32     S0, S4
4BA35A:  VMRSGT          APSR_nzcv, FPSCR
4BA35E:  BLE             loc_4BA416
4BA360:  MOV.W           R10, #0xFFFFFFFF
4BA364:  VCMPE.F32       S18, S0
4BA368:  VLDR            S2, [SP,#0xD8+var_A0]
4BA36C:  VMRS            APSR_nzcv, FPSCR
4BA370:  BGE             loc_4BA394
4BA372:  VLDR            S0, [SP,#0xD8+var_A0+4]
4BA376:  VNEG.F32        S2, S2
4BA37A:  VLDR            S4, [SP,#0xD8+var_98]
4BA37E:  VNEG.F32        S0, S0
4BA382:  VNEG.F32        S4, S4
4BA386:  VSTR            S2, [SP,#0xD8+var_A0]
4BA38A:  VSTR            S0, [SP,#0xD8+var_A0+4]
4BA38E:  VSTR            S4, [SP,#0xD8+var_98]
4BA392:  B               loc_4BA398
4BA394:  VLDR            S0, [SP,#0xD8+var_A0+4]
4BA398:  VMUL.F32        S2, S2, S16
4BA39C:  MOV.W           R0, #0x3F800000
4BA3A0:  VMUL.F32        S0, S0, S16
4BA3A4:  STR             R0, [SP,#0xD8+var_98]
4BA3A6:  MOV             R0, R4
4BA3A8:  MOV.W           R3, #0x40800000
4BA3AC:  VMOV            R1, S2
4BA3B0:  VMOV            R2, S0
4BA3B4:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
4BA3B8:  CMP.W           R10, #0
4BA3BC:  BLT.W           loc_4BA552
4BA3C0:  VMOV.F32        S4, #0.25
4BA3C4:  VLDR            S6, [SP,#0xD8+var_98]
4BA3C8:  VLDR            S0, [SP,#0xD8+var_A0]
4BA3CC:  VLDR            S2, [SP,#0xD8+var_A0+4]
4BA3D0:  LDR             R1, [R4,#0x14]
4BA3D2:  ADD.W           R0, R1, #0x30 ; '0'
4BA3D6:  CMP             R1, #0
4BA3D8:  VMUL.F32        S6, S6, S4
4BA3DC:  IT NE
4BA3DE:  MOVNE           R9, R0
4BA3E0:  VMUL.F32        S8, S2, S4
4BA3E4:  VLDR            S12, [R9]
4BA3E8:  VMUL.F32        S10, S0, S4
4BA3EC:  VLDR            S4, [R9,#8]
4BA3F0:  VLDR            S14, [R9,#4]
4BA3F4:  CMP             R1, #0
4BA3F6:  VADD.F32        S4, S6, S4
4BA3FA:  VADD.F32        S6, S8, S14
4BA3FE:  VADD.F32        S8, S10, S12
4BA402:  BEQ             loc_4BA4D4
4BA404:  VSTR            S8, [R0]
4BA408:  LDR             R0, [R4,#0x14]
4BA40A:  VSTR            S6, [R0,#0x34]
4BA40E:  LDR             R0, [R4,#0x14]
4BA410:  ADD.W           R2, R0, #0x38 ; '8'
4BA414:  B               loc_4BA4E0
4BA416:  LDR             R1, [R4,#0x14]
4BA418:  VMOV.F32        S2, #-1.0
4BA41C:  VCMPE.F32       S18, S4
4BA420:  ADD.W           R0, R1, #0x30 ; '0'
4BA424:  CMP             R1, #0
4BA426:  MOV             R2, R0
4BA428:  IT EQ
4BA42A:  MOVEQ           R2, R9
4BA42C:  VMRS            APSR_nzcv, FPSCR
4BA430:  VLDR            S6, [R2,#8]
4BA434:  VADD.F32        S2, S6, S2
4BA438:  BGE             loc_4BA460
4BA43A:  VCMPE.F32       S18, S2
4BA43E:  VMRS            APSR_nzcv, FPSCR
4BA442:  BLE             loc_4BA460
4BA444:  VLDR            S4, =5001.0
4BA448:  MOV.W           R10, #1
4BA44C:  VCMPE.F32       S0, S4
4BA450:  VMRS            APSR_nzcv, FPSCR
4BA454:  ITT GE
4BA456:  VCMPEGE.F32     S18, S0
4BA45A:  VMRSGE          APSR_nzcv, FPSCR
4BA45E:  BLT             loc_4BA484
4BA460:  VLDR            S4, =5001.0
4BA464:  MOV.W           R10, #0
4BA468:  VCMPE.F32       S0, S4
4BA46C:  VMRS            APSR_nzcv, FPSCR
4BA470:  BGE.W           loc_4BA364
4BA474:  VCMPE.F32       S0, S2
4BA478:  VMRS            APSR_nzcv, FPSCR
4BA47C:  BLE.W           loc_4BA364
4BA480:  MOV.W           R10, #2
4BA484:  LDRB.W          R2, [R8,#6]
4BA488:  LSLS            R2, R2, #0x1A
4BA48A:  BMI.W           loc_4BA364
4BA48E:  VLDR            S2, [R4,#0xDC]
4BA492:  VCMPE.F32       S2, #0.0
4BA496:  VMRS            APSR_nzcv, FPSCR
4BA49A:  BLE             loc_4BA4C2
4BA49C:  LDR.W           R2, [R4,#0xE0]
4BA4A0:  CBZ             R2, loc_4BA4C2
4BA4A2:  LDRB.W          R2, [R2,#0x3A]
4BA4A6:  AND.W           R2, R2, #7
4BA4AA:  CMP             R2, #3
4BA4AC:  BNE             loc_4BA4C2
4BA4AE:  VLDR            S2, =0.3
4BA4B2:  VLDR            S4, [R4,#0xEC]
4BA4B6:  VCMPE.F32       S4, S2
4BA4BA:  VMRS            APSR_nzcv, FPSCR
4BA4BE:  BGT.W           loc_4BA364
4BA4C2:  CMP.W           R10, #2
4BA4C6:  BNE             loc_4BA556
4BA4C8:  LDRD.W          R5, R3, [SP,#0xD8+var_90]
4BA4CC:  LDR             R2, [SP,#0xD8+var_88]
4BA4CE:  CMP             R1, #0
4BA4D0:  BNE             loc_4BA55E
4BA4D2:  B               loc_4BA56A
4BA4D4:  ADD.W           R2, R4, #0xC
4BA4D8:  VSTR            S8, [R4,#4]
4BA4DC:  VSTR            S6, [R4,#8]
4BA4E0:  VMOV            R0, S0; this
4BA4E4:  VSTR            S4, [R2]
4BA4E8:  VMOV            R1, S2; float
4BA4EC:  MOVS            R2, #0; float
4BA4EE:  MOVS            R3, #0; float
4BA4F0:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
4BA4F4:  STR.W           R0, [R4,#0x55C]
4BA4F8:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4BA4FC:  MOV             R3, R0
4BA4FE:  LDR             R0, [R4,#0x14]; this
4BA500:  VMOV            S0, R3; float
4BA504:  STR.W           R3, [R4,#0x55C]
4BA508:  CMP             R0, #0
4BA50A:  STR.W           R3, [R4,#0x560]
4BA50E:  BEQ             loc_4BA54E
4BA510:  MOVS            R1, #0; x
4BA512:  MOVS            R2, #0; float
4BA514:  VLDR            S16, [R0,#0x30]
4BA518:  VLDR            S18, [R0,#0x34]
4BA51C:  VLDR            S20, [R0,#0x38]
4BA520:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
4BA524:  LDR             R0, [R4,#0x14]
4BA526:  VLDR            S0, [R0,#0x30]
4BA52A:  VLDR            S2, [R0,#0x34]
4BA52E:  VLDR            S4, [R0,#0x38]
4BA532:  VADD.F32        S0, S16, S0
4BA536:  VADD.F32        S2, S18, S2
4BA53A:  VADD.F32        S4, S20, S4
4BA53E:  VSTR            S0, [R0,#0x30]
4BA542:  VSTR            S2, [R0,#0x34]
4BA546:  VSTR            S4, [R0,#0x38]
4BA54A:  MOVS            R0, #2
4BA54C:  B               loc_4B9FD6
4BA54E:  VSTR            S0, [R4,#0x10]
4BA552:  MOVS            R0, #2
4BA554:  B               loc_4B9FD6
4BA556:  LDRD.W          R5, R3, [SP,#0xD8+var_64]
4BA55A:  LDR             R2, [SP,#0xD8+var_5C]
4BA55C:  CBZ             R1, loc_4BA56A
4BA55E:  STR             R5, [R0]
4BA560:  LDR             R0, [R4,#0x14]
4BA562:  STR             R3, [R0,#0x34]
4BA564:  LDR             R0, [R4,#0x14]
4BA566:  ADDS            R0, #0x38 ; '8'
4BA568:  B               loc_4BA572
4BA56A:  ADD.W           R0, R4, #0xC
4BA56E:  STR             R5, [R4,#4]
4BA570:  STR             R3, [R4,#8]
4BA572:  STR             R2, [R0]
4BA574:  VMOV.F32        S2, #1.0
4BA578:  LDR             R0, [R4,#0x14]
4BA57A:  MOV             R1, R9
4BA57C:  CMP             R0, #0
4BA57E:  IT NE
4BA580:  ADDNE.W         R1, R0, #0x30 ; '0'
4BA584:  VLDR            S4, [R1,#8]
4BA588:  VADD.F32        S2, S4, S2
4BA58C:  VSTR            S2, [R1,#8]
4BA590:  B               loc_4BA364
