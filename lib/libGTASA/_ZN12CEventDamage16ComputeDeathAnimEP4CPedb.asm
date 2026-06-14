; =========================================================
; Game Engine Function: _ZN12CEventDamage16ComputeDeathAnimEP4CPedb
; Address            : 0x372E90 - 0x37326A
; =========================================================

372E90:  PUSH            {R4-R7,LR}
372E92:  ADD             R7, SP, #0xC
372E94:  PUSH.W          {R8-R10}
372E98:  VPUSH           {D8}
372E9C:  SUB             SP, SP, #0x10
372E9E:  MOV             R4, R1
372EA0:  MOV             R5, R0
372EA2:  MOVS            R0, #0xF
372EA4:  MOVS            R1, #0
372EA6:  MOV.W           R3, #0x40800000
372EAA:  MOV.W           R6, #0x3F800000
372EAE:  STRD.W          R1, R0, [R5,#0x24]
372EB2:  STRD.W          R3, R6, [R5,#0x2C]
372EB6:  LDRB.W          R0, [R4,#0x485]
372EBA:  LSLS            R0, R0, #0x1F
372EBC:  BNE             loc_372EF0
372EBE:  CMP             R2, #1
372EC0:  BNE             loc_372EE6
372EC2:  LDR.W           R0, [R4,#0x440]
372EC6:  ADDS            R0, #4; this
372EC8:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
372ECC:  CBZ             R0, loc_372EE6
372ECE:  LDR.W           R0, [R4,#0x440]
372ED2:  ADDS            R0, #4; this
372ED4:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
372ED8:  LDR             R1, [R0]
372EDA:  MOVS            R2, #1
372EDC:  MOV             R3, R5
372EDE:  LDR             R6, [R1,#0x1C]
372EE0:  MOV             R1, R4
372EE2:  BLX             R6
372EE4:  CBZ             R0, loc_372EF0
372EE6:  LDR             R0, [R5,#0x18]
372EE8:  CMP             R0, #0x35 ; '5'
372EEA:  BNE             loc_372F00
372EEC:  MOVS            R0, #0x8C
372EEE:  B               loc_372EF2
372EF0:  MOVS            R0, #0xBF
372EF2:  STR             R0, [R5,#0x28]
372EF4:  ADD             SP, SP, #0x10
372EF6:  VPOP            {D8}
372EFA:  POP.W           {R8-R10}
372EFE:  POP             {R4-R7,PC}
372F00:  LDRB.W          R0, [R4,#0x45]
372F04:  ADDW            R8, R4, #0x484
372F08:  LSLS            R0, R0, #0x1F
372F0A:  BEQ             loc_372F14
372F0C:  LDRB.W          R0, [R8]
372F10:  LSLS            R0, R0, #0x1F
372F12:  BEQ             loc_372EEC
372F14:  LDR             R0, [R5,#0x10]
372F16:  MOVS            R6, #0
372F18:  CBZ             R0, loc_372F32
372F1A:  LDRB.W          R1, [R0,#0x3A]
372F1E:  AND.W           R1, R1, #7
372F22:  CMP             R1, #3
372F24:  BNE             loc_372F32
372F26:  LDR.W           R0, [R0,#0x440]; this
372F2A:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
372F2E:  MOV             R10, R0
372F30:  B               loc_372F36
372F32:  MOV.W           R10, #0
372F36:  ADD             R1, SP, #0x30+var_2C
372F38:  MOV             R0, R4; this
372F3A:  MOVS            R2, #5
372F3C:  MOVS            R3, #0
372F3E:  STRD.W          R6, R6, [SP,#0x30+var_2C]
372F42:  STR             R6, [SP,#0x30+var_24]
372F44:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
372F48:  LDR             R0, [R4,#0x14]
372F4A:  ADD.W           R9, R4, #4
372F4E:  VLDR            S0, =-0.2
372F52:  CMP             R0, #0
372F54:  MOV             R1, R9
372F56:  IT NE
372F58:  ADDNE.W         R1, R0, #0x30 ; '0'
372F5C:  VLDR            S2, [R1,#8]
372F60:  VADD.F32        S0, S2, S0
372F64:  VLDR            S2, [SP,#0x30+var_24]
372F68:  VCMPE.F32       S2, S0
372F6C:  VMRS            APSR_nzcv, FPSCR
372F70:  BGE             loc_372FC8
372F72:  LDR.W           R0, [R4,#0x440]
372F76:  ADDS            R0, #4; this
372F78:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
372F7C:  CBZ             R0, loc_372FC8
372F7E:  LDR.W           R0, [R4,#0x440]
372F82:  ADDS            R0, #4; this
372F84:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
372F88:  LDR             R1, [R0]
372F8A:  LDR             R1, [R1,#0x14]
372F8C:  BLX             R1
372F8E:  CMP             R0, #0xCF
372F90:  BEQ             loc_372FA6
372F92:  LDR.W           R0, [R4,#0x440]
372F96:  ADDS            R0, #4; this
372F98:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
372F9C:  LDR             R1, [R0]
372F9E:  LDR             R1, [R1,#0x14]
372FA0:  BLX             R1
372FA2:  CMP             R0, #0xCD
372FA4:  BNE             loc_372FC8
372FA6:  LDRB.W          R0, [R5,#0x21]
372FAA:  MOV.W           R1, #0x800
372FAE:  ORR.W           R0, R0, #2
372FB2:  STRB.W          R0, [R5,#0x21]
372FB6:  LDR             R0, [R4,#0x18]
372FB8:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
372FBC:  MOVS            R1, #0x24 ; '$'
372FBE:  CMP             R0, #0
372FC0:  IT NE
372FC2:  MOVNE           R1, #0x27 ; '''
372FC4:  STR             R1, [R5,#0x28]
372FC6:  B               loc_372EF4
372FC8:  LDRB.W          R0, [R5,#0x20]
372FCC:  CMP.W           R10, #0
372FD0:  BEQ             loc_373024
372FD2:  CBNZ            R0, loc_373024
372FD4:  LDRSB.W         R3, [R10,#0x24]
372FD8:  LDRSB.W         R1, [R10,#0x25]
372FDC:  SUBS            R2, R3, #4
372FDE:  IT LT
372FE0:  MOVLT           R2, #0
372FE2:  CMP             R1, #2
372FE4:  BGT             loc_373024
372FE6:  CMP             R3, #4
372FE8:  BLT             loc_373024
372FEA:  LDR             R3, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x372FF6)
372FEC:  ADD.W           R2, R2, R2,LSL#4
372FF0:  MOVS            R6, #0x10
372FF2:  ADD             R3, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
372FF4:  LSL.W           R1, R6, R1
372FF8:  LDR             R3, [R3]; CTaskSimpleFight::m_aComboData ...
372FFA:  ADD.W           R3, R3, R2,LSL#3
372FFE:  LDRH.W          R3, [R3,#(word_9FD4E4 - 0x9FD460)]
373002:  ANDS            R1, R3
373004:  BEQ             loc_373024
373006:  LDR             R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x373014)
373008:  MOV.W           R1, #0x41800000
37300C:  VMOV.F32        S0, #1.0
373010:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
373012:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
373014:  LDR.W           R0, [R0,R2,LSL#3]
373018:  STR             R0, [R5,#0x24]
37301A:  LDRSB.W         R0, [R10,#0x25]
37301E:  STR             R1, [R5,#0x2C]
373020:  ADDS            R0, #0xDB
373022:  B               loc_373132
373024:  LDR             R1, [R5,#0x18]
373026:  VLDR            S0, =0.0
37302A:  CMP             R1, #0x36 ; '6'; switch 55 cases
37302C:  BHI.W           def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
373030:  VMOV.F32        S4, #1.0
373034:  VMOV.F32        S16, S0
373038:  VMOV.F32        S2, S0
37303C:  TBH.W           [PC,R1,LSL#1]; switch jump
373040:  DCW 0x3A; jump table for switch statement
373042:  DCW 0x3A
373044:  DCW 0x37
373046:  DCW 0x3A
373048:  DCW 0x3C
37304A:  DCW 0x37
37304C:  DCW 0x37
37304E:  DCW 0x37
373050:  DCW 0x37
373052:  DCW 0x3A
373054:  DCW 0x37
373056:  DCW 0x3C
373058:  DCW 0x3C
37305A:  DCW 0x3C
37305C:  DCW 0x3C
37305E:  DCW 0x3C
373060:  DCW 0x69
373062:  DCW 0x78
373064:  DCW 0x78
373066:  DCW 0x7A
373068:  DCW 0x7A
37306A:  DCW 0x7A
37306C:  DCW 0x74
37306E:  DCW 0x74
373070:  DCW 0x6F
373072:  DCW 0x6D
373074:  DCW 0x6D
373076:  DCW 0x6D
373078:  DCW 0x74
37307A:  DCW 0x74
37307C:  DCW 0x72
37307E:  DCW 0x72
373080:  DCW 0x74
373082:  DCW 0x74
373084:  DCW 0x74
373086:  DCW 0x69
373088:  DCW 0x69
37308A:  DCW 0x78
37308C:  DCW 0x6D
37308E:  DCW 0x69
373090:  DCW 0x7A
373092:  DCW 0x78
373094:  DCW 0x78
373096:  DCW 0x7A
373098:  DCW 0x7A
37309A:  DCW 0x7A
37309C:  DCW 0x3A
37309E:  DCW 0x7A
3730A0:  DCW 0x7A
3730A2:  DCW 0xE9
3730A4:  DCW 0xE9
3730A6:  DCW 0x69
3730A8:  DCW 0x74
3730AA:  DCW 0x102
3730AC:  DCW 0x104
3730AE:  VMOV.F32        S16, #1.5; jumptable 0037303C cases 2,5-8,10
3730B2:  B               loc_3730B8; jumptable 0037303C cases 4,11-15
3730B4:  VMOV.F32        S16, #0.5; jumptable 0037303C cases 0,1,3,9,46
3730B8:  LDRB.W          R1, [R5,#0x3D]; jumptable 0037303C cases 4,11-15
3730BC:  CBZ             R1, loc_3730FC
3730BE:  MOVS            R1, #0x13
3730C0:  VMOV.F32        S16, S0
3730C4:  B               loc_37310A; jumptable 00373102 case 1
3730C6:  LDR             R0, [R5,#0x10]; jumptable 00373102 default case
3730C8:  CBZ             R0, loc_3730F6
3730CA:  LDRB.W          R1, [R0,#0x3A]
3730CE:  AND.W           R1, R1, #7
3730D2:  CMP             R1, #3
3730D4:  BNE             loc_3730F6
3730D6:  LDR.W           R0, [R0,#0x444]
3730DA:  CBZ             R0, loc_3730F6
3730DC:  LDRB.W          R0, [R0,#0x34]
3730E0:  LSLS            R0, R0, #0x1E
3730E2:  BMI.W           loc_373228
3730E6:  MOVS            R0, #4
3730E8:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
3730EC:  VMOV            S0, R0
3730F0:  VMUL.F32        S0, S16, S0
3730F4:  B               def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
3730F6:  VMOV.F32        S0, S16
3730FA:  B               def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
3730FC:  CMP             R0, #3; switch 4 cases
3730FE:  BHI             def_373102; jumptable 00373102 default case
373100:  MOVS            R1, #0x19
373102:  TBB.W           [PC,R0]; switch jump
373106:  DCB 4; jump table for switch statement
373107:  DCB 2
373108:  DCB 0x99
373109:  DCB 0x9B
37310A:  STR             R1, [R5,#0x28]; jumptable 00373102 case 1
37310C:  B               def_373102; jumptable 00373102 default case
37310E:  MOVS            R1, #0x18; jumptable 00373102 case 0
373110:  B               loc_37310A; jumptable 00373102 case 1
373112:  CMP             R0, #3; jumptable 0037303C cases 16,35,36,39,51
373114:  BHI             def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
373116:  ADDS            R0, #0x18
373118:  B               loc_373132
37311A:  VMOV.F32        S4, #2.0; jumptable 0037303C cases 25-27,38
37311E:  VMOV.F32        S2, S4; jumptable 0037303C case 24
373122:  B               loc_373128; jumptable 0037303C cases 22,23,28,29,32-34,52
373124:  VMOV.F32        S2, #0.5; jumptable 0037303C cases 30,31
373128:  LDRB.W          R1, [R5,#0x3D]; jumptable 0037303C cases 22,23,28,29,32-34,52
37312C:  CMP             R1, #0
37312E:  BEQ             loc_3731F6
373130:  MOVS            R0, #0xF; jumptable 0037303C cases 17,18,37,41,42
373132:  STR             R0, [R5,#0x28]
373134:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x37313A); jumptable 0037303C default case, cases 19-21,40,43-45,47,48
373136:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
373138:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
37313A:  LDRB.W          R0, [R0,#(byte_79683F - 0x7967F4)]
37313E:  CBZ             R0, loc_373152
373140:  LDR             R0, [R5,#0x18]
373142:  CMP             R0, #2
373144:  BCC             loc_37314A
373146:  CMP             R0, #0x2E ; '.'
373148:  BNE             loc_373152
37314A:  VMOV.F32        S2, #20.0
37314E:  VMUL.F32        S0, S0, S2
373152:  VCMPE.F32       S0, #0.0
373156:  VMRS            APSR_nzcv, FPSCR
37315A:  BLE.W           loc_372EF4
37315E:  LDR             R0, [R5,#0x10]
373160:  CMP             R0, #0
373162:  BEQ.W           loc_372EF4
373166:  LDR             R1, [R4,#0x14]
373168:  LDR             R2, [R0,#0x14]
37316A:  CMP             R1, #0
37316C:  IT NE
37316E:  ADDNE.W         R9, R1, #0x30 ; '0'
373172:  ADD.W           R1, R2, #0x30 ; '0'
373176:  CMP             R2, #0
373178:  VLDR            S4, [R9]
37317C:  VLDR            S2, [R9,#4]
373180:  IT EQ
373182:  ADDEQ           R1, R0, #4
373184:  VLDR            S6, [R1]
373188:  VLDR            S8, [R1,#4]
37318C:  VSUB.F32        S4, S6, S4
373190:  VSUB.F32        S2, S8, S2
373194:  VMUL.F32        S8, S4, S4
373198:  VMUL.F32        S6, S2, S2
37319C:  VADD.F32        S6, S8, S6
3731A0:  VCMPE.F32       S6, #0.0
3731A4:  VMRS            APSR_nzcv, FPSCR
3731A8:  BLE             loc_3731C0
3731AA:  VSQRT.F32       S6, S6
3731AE:  VMOV.F32        S8, #1.0
3731B2:  VDIV.F32        S6, S8, S6
3731B6:  VMUL.F32        S2, S2, S6
3731BA:  VMUL.F32        S4, S4, S6
3731BE:  B               loc_3731C4
3731C0:  VMOV.F32        S4, #1.0
3731C4:  VMOV.F32        S6, #-5.0
3731C8:  LDR.W           R0, [R8]
3731CC:  MOVS            R3, #0
3731CE:  BIC.W           R0, R0, #3
3731D2:  STR.W           R0, [R8]
3731D6:  MOVT            R3, #0x40A0
3731DA:  MOV             R0, R4
3731DC:  VMUL.F32        S0, S0, S6
3731E0:  VMUL.F32        S4, S0, S4
3731E4:  VMUL.F32        S0, S0, S2
3731E8:  VMOV            R1, S4
3731EC:  VMOV            R2, S0
3731F0:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
3731F4:  B               loc_372EF4
3731F6:  VCMPE.F32       S2, #0.0
3731FA:  VMRS            APSR_nzcv, FPSCR
3731FE:  BLE             loc_373208
373200:  CMP             R0, #3
373202:  BHI             loc_373232
373204:  ADDS            R0, #0x18
373206:  B               loc_37320A
373208:  MOVS            R0, #0xF
37320A:  STR             R0, [R5,#0x28]
37320C:  VMOV.F32        S0, S2
373210:  B               def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
373212:  CMP             R0, #3; jumptable 0037303C cases 49,50
373214:  BHI             def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
373216:  TBB.W           [PC,R0]; switch jump
37321A:  DCB 2; jump table for switch statement
37321B:  DCB 0x20
37321C:  DCB 0x19
37321D:  DCB 0x1E
37321E:  LDR             R0, [R5,#0x1C]; jumptable 00373216 case 0
373220:  CMP             R0, #5
373222:  BEQ             loc_373252
373224:  MOVS            R1, #0x1A
373226:  B               loc_373260
373228:  VMOV.F32        S0, #5.0
37322C:  VMUL.F32        S0, S16, S0
373230:  B               def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
373232:  VMOV.F32        S0, S2
373236:  B               def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
373238:  MOVS            R1, #0x1A; jumptable 00373102 case 2
37323A:  B               loc_37310A; jumptable 00373102 case 1
37323C:  MOVS            R1, #0x1B; jumptable 00373102 case 3
37323E:  B               loc_37310A; jumptable 00373102 case 1
373240:  DCFS -0.2
373244:  MOVS            R0, #0x8C; jumptable 0037303C case 53
373246:  B               loc_373132
373248:  MOVS            R0, #0x11; jumptable 0037303C case 54
37324A:  B               loc_373132
37324C:  LDR             R0, [R5,#0x1C]; jumptable 00373216 case 2
37324E:  CMP             R0, #5
373250:  BNE             loc_37325E
373252:  MOVS            R0, #0x16
373254:  B               loc_373132
373256:  MOVS            R0, #0x1B; jumptable 00373216 case 3
373258:  B               loc_373132
37325A:  MOVS            R0, #0x19; jumptable 00373216 case 1
37325C:  B               loc_373132
37325E:  MOVS            R1, #0x18
373260:  CMP             R0, #6
373262:  IT EQ
373264:  MOVEQ           R1, #0x17
373266:  STR             R1, [R5,#0x28]
373268:  B               def_37303C; jumptable 0037303C default case, cases 19-21,40,43-45,47,48
