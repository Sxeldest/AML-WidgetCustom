; =========================================================
; Game Engine Function: _ZN24CTaskComplexKillCriminal14ControlSubTaskEP4CPed
; Address            : 0x53EF28 - 0x53FBA2
; =========================================================

53EF28:  PUSH            {R4-R7,LR}
53EF2A:  ADD             R7, SP, #0xC
53EF2C:  PUSH.W          {R8-R11}
53EF30:  SUB             SP, SP, #4
53EF32:  VPUSH           {D8-D9}
53EF36:  SUB             SP, SP, #0x28
53EF38:  MOV             R11, R0
53EF3A:  STR             R1, [SP,#0x58+var_48]
53EF3C:  MOV             R10, R11
53EF3E:  LDR.W           R0, [R10,#0xC]!; this
53EF42:  LDR.W           R4, [R10,#-4]
53EF46:  CBZ             R0, loc_53EF7E
53EF48:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53EF4C:  CMP             R0, #0
53EF4E:  BNE.W           loc_53F160
53EF52:  LDR.W           R0, [R10]
53EF56:  LDR.W           R1, [R0,#0x59C]
53EF5A:  CMP             R1, #0x13
53EF5C:  BHI             loc_53EF6E
53EF5E:  MOVS            R2, #1
53EF60:  MOVS            R3, #:lower16:(aZn8cvehicle28q+0x2B); "v"
53EF62:  LSLS            R2, R1
53EF64:  MOVT            R3, #:upper16:(aZn8cvehicle28q+0x2B); "v"
53EF68:  TST             R2, R3
53EF6A:  BNE.W           loc_53F160
53EF6E:  CMP             R1, #0x17
53EF70:  BGT.W           loc_53F160
53EF74:  LDRB.W          R0, [R0,#0x448]
53EF78:  CMP             R0, #2
53EF7A:  BEQ.W           loc_53F160
53EF7E:  MOV.W           R0, #0xFFFFFFFF; int
53EF82:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
53EF86:  LDR.W           R0, [R0,#0x444]
53EF8A:  LDR             R0, [R0]
53EF8C:  LDR             R0, [R0,#0x2C]
53EF8E:  CBZ             R0, loc_53EFCE
53EF90:  MOV.W           R0, #0xFFFFFFFF; int
53EF94:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53EF98:  LDR             R1, [SP,#0x58+var_48]; CCopPed *
53EF9A:  BLX             j__ZNK7CWanted17CanCopJoinPursuitEP7CCopPed; CWanted::CanCopJoinPursuit(CCopPed *)
53EF9E:  CMP             R0, #1
53EFA0:  BNE             loc_53EFCE
53EFA2:  LDR.W           R0, [R11,#8]
53EFA6:  MOV             R8, R4
53EFA8:  LDR             R1, [SP,#0x58+var_48]
53EFAA:  MOVS            R3, #0
53EFAC:  MOVS            R5, #0
53EFAE:  LDR             R2, [R0]
53EFB0:  LDR             R4, [R2,#0x1C]
53EFB2:  MOVS            R2, #1
53EFB4:  BLX             R4
53EFB6:  LDR.W           R1, =(g_LoadMonitor_ptr - 0x53EFBE)
53EFBA:  ADD             R1, PC; g_LoadMonitor_ptr
53EFBC:  LDR             R1, [R1]; g_LoadMonitor
53EFBE:  LDRB            R1, [R1,#(byte_959608 - 0x9595EC)]
53EFC0:  CMP             R1, #0
53EFC2:  BEQ.W           loc_53F162
53EFC6:  CMP             R0, #0
53EFC8:  MOV             R4, R8
53EFCA:  BEQ             loc_53EFDE
53EFCC:  B               loc_53F162
53EFCE:  LDR.W           R0, =(g_LoadMonitor_ptr - 0x53EFD6)
53EFD2:  ADD             R0, PC; g_LoadMonitor_ptr
53EFD4:  LDR             R0, [R0]; g_LoadMonitor
53EFD6:  LDRB            R0, [R0,#(byte_959608 - 0x9595EC)]
53EFD8:  CMP             R0, #0
53EFDA:  BEQ.W           loc_53F160
53EFDE:  LDR.W           R0, [R11,#0x10]
53EFE2:  LDRB.W          R1, [R0,#0x7C8]
53EFE6:  LDR.W           R6, [R0,#0x7B0]
53EFEA:  CMP             R1, #0
53EFEC:  BEQ.W           loc_53F172
53EFF0:  MOV.W           R9, #0xC8
53EFF4:  LDR             R0, [SP,#0x58+var_48]
53EFF6:  ADDW            R0, R0, #0x544
53EFFA:  VLDR            S0, [R0]
53EFFE:  VCMPE.F32       S0, #0.0
53F002:  VMRS            APSR_nzcv, FPSCR
53F006:  BLE.W           loc_53F300
53F00A:  LDR.W           R0, [R10]
53F00E:  CMP             R0, #0
53F010:  BEQ.W           loc_53F1B8
53F014:  ADDW            R1, R0, #0x544
53F018:  VLDR            S0, [R1]
53F01C:  VCMPE.F32       S0, #0.0
53F020:  VMRS            APSR_nzcv, FPSCR
53F024:  BLE.W           loc_53F1B8
53F028:  LDR.W           R1, [R11,#0x10]
53F02C:  LDRB.W          R1, [R1,#0x7C8]
53F030:  CMP             R1, #0
53F032:  BEQ.W           loc_53F422
53F036:  LDR             R2, [SP,#0x58+var_48]
53F038:  ADD.W           R8, R2, #0x590
53F03C:  LDR.W           R1, [R2,#0x590]
53F040:  CBZ             R1, loc_53F05C
53F042:  LDR             R2, [SP,#0x58+var_48]
53F044:  LDRB.W          R2, [R2,#0x485]
53F048:  LSLS            R2, R2, #0x1F
53F04A:  ITTTT NE
53F04C:  LDRNE.W         R0, [R1,#0x430]
53F050:  ORRNE.W         R0, R0, #0x8000
53F054:  STRNE.W         R0, [R1,#0x430]
53F058:  LDRNE.W         R0, [R10]
53F05C:  LDRB.W          R1, [R0,#0x485]
53F060:  LSLS            R1, R1, #0x1F
53F062:  ITT NE
53F064:  LDRNE.W         R1, [R0,#0x590]
53F068:  CMPNE           R1, #0
53F06A:  BNE.W           loc_53F484
53F06E:  LDR             R1, [SP,#0x58+var_48]
53F070:  LDRB.W          R1, [R1,#0x485]
53F074:  LSLS            R1, R1, #0x1F
53F076:  ITT NE
53F078:  LDRNE.W         R1, [R8]
53F07C:  CMPNE           R1, #0
53F07E:  BNE.W           loc_53F58C
53F082:  LDRB.W          R1, [R11,#0x1A]
53F086:  CMP             R1, #0
53F088:  BNE.W           loc_53FA28
53F08C:  LDR.W           R1, [R8]
53F090:  CMP             R1, #0
53F092:  BEQ.W           loc_53F304
53F096:  LDR             R5, [SP,#0x58+var_48]
53F098:  LDR             R3, [R0,#0x14]
53F09A:  LDR             R2, [R5,#0x14]
53F09C:  ADD.W           R6, R2, #0x30 ; '0'
53F0A0:  CMP             R2, #0
53F0A2:  IT EQ
53F0A4:  ADDEQ           R6, R5, #4
53F0A6:  ADD.W           R2, R3, #0x30 ; '0'
53F0AA:  CMP             R3, #0
53F0AC:  VLDR            S0, [R6]
53F0B0:  VLDR            S4, [R6,#4]
53F0B4:  VLDR            S2, [R6,#8]
53F0B8:  IT EQ
53F0BA:  ADDEQ           R2, R0, #4
53F0BC:  VLDR            S6, [R2]
53F0C0:  VLDR            S8, [R2,#4]
53F0C4:  VSUB.F32        S6, S6, S0
53F0C8:  VLDR            S10, [R2,#8]
53F0CC:  VSUB.F32        S8, S8, S4
53F0D0:  VSUB.F32        S10, S10, S2
53F0D4:  VMUL.F32        S6, S6, S6
53F0D8:  VMUL.F32        S8, S8, S8
53F0DC:  VMUL.F32        S10, S10, S10
53F0E0:  VADD.F32        S6, S6, S8
53F0E4:  VLDR            S8, =625.0
53F0E8:  VADD.F32        S6, S6, S10
53F0EC:  VCMPE.F32       S6, S8
53F0F0:  VMRS            APSR_nzcv, FPSCR
53F0F4:  BGT             loc_53F13E
53F0F6:  LDR             R0, [R1,#0x14]
53F0F8:  ADD.W           R2, R0, #0x30 ; '0'
53F0FC:  CMP             R0, #0
53F0FE:  IT EQ
53F100:  ADDEQ           R2, R1, #4
53F102:  VLDR            S6, [R2]
53F106:  VLDR            S8, [R2,#4]
53F10A:  VSUB.F32        S0, S6, S0
53F10E:  VLDR            S10, [R2,#8]
53F112:  VSUB.F32        S4, S8, S4
53F116:  VSUB.F32        S2, S10, S2
53F11A:  VMUL.F32        S0, S0, S0
53F11E:  VMUL.F32        S4, S4, S4
53F122:  VMUL.F32        S2, S2, S2
53F126:  VADD.F32        S0, S0, S4
53F12A:  VADD.F32        S0, S0, S2
53F12E:  VLDR            S2, =250.0
53F132:  VCMPE.F32       S0, S2
53F136:  VMRS            APSR_nzcv, FPSCR
53F13A:  BLE.W           loc_53FA28
53F13E:  LDR             R1, [SP,#0x58+var_48]; CPed *
53F140:  MOV             R0, R11; this
53F142:  MOVS            R2, #0; bool
53F144:  BLX             j__ZN24CTaskComplexKillCriminal22FindNextCriminalToKillEP4CPedb; CTaskComplexKillCriminal::FindNextCriminalToKill(CPed *,bool)
53F148:  MOV             R1, R0; CPed *
53F14A:  CBZ             R1, loc_53F158
53F14C:  MOV             R0, R11; this
53F14E:  BLX             j__ZN24CTaskComplexKillCriminal12ChangeTargetEP4CPed; CTaskComplexKillCriminal::ChangeTarget(CPed *)
53F152:  CMP             R0, #0
53F154:  BNE.W           loc_53F458
53F158:  MOVW            R9, #0x2BD
53F15C:  B.W             loc_53FA28
53F160:  MOVS            R5, #0
53F162:  MOV             R0, R5
53F164:  ADD             SP, SP, #0x28 ; '('
53F166:  VPOP            {D8-D9}
53F16A:  ADD             SP, SP, #4
53F16C:  POP.W           {R8-R11}
53F170:  POP             {R4-R7,PC}
53F172:  CBZ             R6, loc_53F188
53F174:  ADDW            R1, R6, #0x544
53F178:  VLDR            S0, [R1]
53F17C:  VCMPE.F32       S0, #0.0
53F180:  VMRS            APSR_nzcv, FPSCR
53F184:  BGT.W           loc_53EFF0
53F188:  MOVS            R1, #1
53F18A:  STRB.W          R1, [R0,#0x7C8]
53F18E:  MOVS            R1, #0; CCopPed *
53F190:  LDR.W           R0, [R11,#0x10]; this
53F194:  BLX             j__ZN7CCopPed10SetPartnerEPS_; CCopPed::SetPartner(CCopPed*)
53F198:  LDR             R0, [SP,#0x58+var_48]
53F19A:  LDRB.W          R0, [R0,#0x485]
53F19E:  LSLS            R0, R0, #0x1F
53F1A0:  BEQ.W           loc_53EFF0
53F1A4:  LDR             R0, [SP,#0x58+var_48]
53F1A6:  MOV.W           R9, #0x2C0
53F1AA:  LDR.W           R0, [R0,#0x590]
53F1AE:  CMP             R0, #0
53F1B0:  IT EQ
53F1B2:  MOVEQ.W         R9, #0xC8
53F1B6:  B               loc_53EFF4
53F1B8:  LDR.W           R0, [R11,#8]
53F1BC:  LDR             R1, [R0]
53F1BE:  LDR             R1, [R1,#0x14]
53F1C0:  BLX             R1
53F1C2:  CMP.W           R0, #0x3E8
53F1C6:  BEQ.W           loc_53F304
53F1CA:  LDR.W           R1, [R11,#0x10]
53F1CE:  LDR.W           R0, [R1,#0x7B4]
53F1D2:  CBZ             R0, loc_53F1F2
53F1D4:  ADDW            R2, R0, #0x544
53F1D8:  VLDR            S0, [R2]
53F1DC:  VCMPE.F32       S0, #0.0
53F1E0:  VMRS            APSR_nzcv, FPSCR
53F1E4:  BLE             loc_53F1F2
53F1E6:  LDR.W           R2, [R10]
53F1EA:  CMP             R0, R2
53F1EC:  IT EQ
53F1EE:  MOVEQ           R0, #0
53F1F0:  B               loc_53F1F4
53F1F2:  MOVS            R0, #0
53F1F4:  LDR.W           R2, [R1,#0x7B8]
53F1F8:  CBZ             R2, loc_53F216
53F1FA:  ADDW            R3, R2, #0x544
53F1FE:  VLDR            S0, [R3]
53F202:  VCMPE.F32       S0, #0.0
53F206:  VMRS            APSR_nzcv, FPSCR
53F20A:  BLE             loc_53F216
53F20C:  LDR.W           R3, [R10]
53F210:  CMP             R2, R3
53F212:  IT NE
53F214:  MOVNE           R0, R2
53F216:  LDR.W           R2, [R1,#0x7BC]
53F21A:  CBZ             R2, loc_53F238
53F21C:  ADDW            R3, R2, #0x544
53F220:  VLDR            S0, [R3]
53F224:  VCMPE.F32       S0, #0.0
53F228:  VMRS            APSR_nzcv, FPSCR
53F22C:  BLE             loc_53F238
53F22E:  LDR.W           R3, [R10]
53F232:  CMP             R2, R3
53F234:  IT NE
53F236:  MOVNE           R0, R2
53F238:  LDR.W           R2, [R1,#0x7C0]
53F23C:  CBZ             R2, loc_53F25A
53F23E:  ADDW            R3, R2, #0x544
53F242:  VLDR            S0, [R3]
53F246:  VCMPE.F32       S0, #0.0
53F24A:  VMRS            APSR_nzcv, FPSCR
53F24E:  BLE             loc_53F25A
53F250:  LDR.W           R3, [R10]
53F254:  CMP             R2, R3
53F256:  IT NE
53F258:  MOVNE           R0, R2
53F25A:  LDR.W           R1, [R1,#0x7C4]
53F25E:  CBZ             R1, loc_53F27A
53F260:  ADDW            R2, R1, #0x544
53F264:  VLDR            S0, [R2]
53F268:  VCMPE.F32       S0, #0.0
53F26C:  VMRS            APSR_nzcv, FPSCR
53F270:  BLE             loc_53F27A
53F272:  LDR.W           R2, [R10]
53F276:  CMP             R1, R2
53F278:  BNE             loc_53F280
53F27A:  CMP             R0, #0
53F27C:  MOV             R1, R0; CPed *
53F27E:  BEQ             loc_53F288
53F280:  MOV             R0, R11; this
53F282:  BLX             j__ZN24CTaskComplexKillCriminal12ChangeTargetEP4CPed; CTaskComplexKillCriminal::ChangeTarget(CPed *)
53F286:  CBNZ            R0, loc_53F304
53F288:  LDR.W           R0, [R11,#8]
53F28C:  LDR             R1, [R0]
53F28E:  LDR             R1, [R1,#0x14]
53F290:  BLX             R1
53F292:  CMP.W           R0, #0x2BC
53F296:  BEQ             loc_53F304
53F298:  LDR.W           R0, [R11,#8]
53F29C:  LDR             R1, [R0]
53F29E:  LDR             R1, [R1,#0x14]
53F2A0:  BLX             R1
53F2A2:  MOVW            R1, #0x2BD
53F2A6:  CMP             R0, R1
53F2A8:  BEQ             loc_53F304
53F2AA:  LDR             R0, [SP,#0x58+var_48]
53F2AC:  MOV             R1, R0
53F2AE:  LDR.W           R0, [R1,#0x484]
53F2B2:  LDR.W           R1, [R1,#0x590]
53F2B6:  CBZ             R1, loc_53F2C8
53F2B8:  ANDS.W          R1, R0, #0x100
53F2BC:  ITT EQ
53F2BE:  LDRBEQ.W        R1, [R11,#0x1A]
53F2C2:  CMPEQ           R1, #0
53F2C4:  BEQ.W           loc_53F8E4
53F2C8:  LSLS            R0, R0, #0x17
53F2CA:  BPL             loc_53F300
53F2CC:  LDR.W           R0, [R11,#8]
53F2D0:  LDR             R1, [R0]
53F2D2:  LDR             R1, [R1,#0x14]
53F2D4:  BLX             R1
53F2D6:  MOVW            R1, #0x2C5
53F2DA:  CMP             R0, R1
53F2DC:  BNE             loc_53F300
53F2DE:  CBZ             R6, loc_53F300
53F2E0:  ADDW            R0, R6, #0x544
53F2E4:  VLDR            S0, [R0]
53F2E8:  VCMPE.F32       S0, #0.0
53F2EC:  VMRS            APSR_nzcv, FPSCR
53F2F0:  BLE             loc_53F300
53F2F2:  LDRB.W          R0, [R6,#0x485]
53F2F6:  LSLS            R0, R0, #0x1F
53F2F8:  IT NE
53F2FA:  MOVWNE          R9, #0x516
53F2FE:  B               loc_53F304
53F300:  MOVW            R9, #0x516
53F304:  LDR.W           R0, [R10]
53F308:  MOV             R5, R4
53F30A:  MOV             R4, R9
53F30C:  CMP             R0, #0
53F30E:  ITT NE
53F310:  LDRBNE.W        R1, [R0,#0x485]
53F314:  MOVSNE.W        R1, R1,LSL#31
53F318:  BEQ             loc_53F3F6
53F31A:  LDR.W           R0, [R0,#0x590]
53F31E:  CMP             R0, #0
53F320:  ITT NE
53F322:  LDRBNE.W        R1, [R0,#0x488]
53F326:  CMPNE           R1, #0
53F328:  BEQ             loc_53F3F6
53F32A:  LDR             R6, [SP,#0x58+var_48]
53F32C:  LDR             R2, [R0,#0x14]
53F32E:  LDR             R1, [R6,#0x14]
53F330:  ADD.W           R3, R1, #0x30 ; '0'
53F334:  CMP             R1, #0
53F336:  IT EQ
53F338:  ADDEQ           R3, R6, #4
53F33A:  ADD.W           R1, R2, #0x30 ; '0'
53F33E:  CMP             R2, #0
53F340:  VLDR            S0, [R3]
53F344:  IT EQ
53F346:  ADDEQ           R1, R0, #4
53F348:  VLDR            D16, [R3,#4]
53F34C:  VLDR            S2, [R1]
53F350:  VLDR            D17, [R1,#4]
53F354:  VSUB.F32        S0, S2, S0
53F358:  VSUB.F32        D16, D17, D16
53F35C:  VMUL.F32        D1, D16, D16
53F360:  VMUL.F32        S0, S0, S0
53F364:  VADD.F32        S0, S0, S2
53F368:  VADD.F32        S0, S0, S3
53F36C:  VLDR            S2, =60.0
53F370:  VSQRT.F32       S0, S0
53F374:  VCMPE.F32       S0, S2
53F378:  VMRS            APSR_nzcv, FPSCR
53F37C:  BGE             loc_53F3F6
53F37E:  LDRB.W          R1, [R0,#0x48C]
53F382:  CBZ             R1, loc_53F3F6
53F384:  MOV.W           R8, #0
53F388:  ADD.W           R0, R0, R8,LSL#2
53F38C:  LDR.W           R9, [R0,#0x468]
53F390:  CMP.W           R9, #0
53F394:  ITT NE
53F396:  LDRBNE.W        R0, [R9,#0x485]
53F39A:  MOVSNE.W        R0, R0,LSL#31
53F39E:  BEQ             loc_53F3E2
53F3A0:  LDR.W           R0, [R9,#0x440]; this
53F3A4:  MOVW            R1, #0x3FE; int
53F3A8:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
53F3AC:  CBNZ            R0, loc_53F3E2
53F3AE:  MOVS            R0, #dword_44; this
53F3B0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53F3B4:  MOV             R6, R0
53F3B6:  MOVS            R0, #0x46 ; 'F'
53F3B8:  STR             R0, [SP,#0x58+var_58]; signed __int8
53F3BA:  MOVS            R0, #8
53F3BC:  LDR             R1, [SP,#0x58+var_48]; CEntity *
53F3BE:  MOVS            R3, #0
53F3C0:  STR             R0, [SP,#0x58+var_54]; signed __int8
53F3C2:  MOVS            R0, #0
53F3C4:  STR             R0, [SP,#0x58+var_50]; bool
53F3C6:  MOV             R0, R6; this
53F3C8:  MOVS            R2, #0; CVector *
53F3CA:  MOVT            R3, #0x428C; float
53F3CE:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
53F3D2:  LDR.W           R0, [R9,#0x440]
53F3D6:  MOV             R1, R6; CTask *
53F3D8:  MOVS            R2, #3; int
53F3DA:  MOVS            R3, #0; bool
53F3DC:  ADDS            R0, #4; this
53F3DE:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
53F3E2:  LDR.W           R0, [R10]
53F3E6:  ADD.W           R8, R8, #1
53F3EA:  LDR.W           R0, [R0,#0x590]
53F3EE:  LDRB.W          R1, [R0,#0x48C]
53F3F2:  CMP             R8, R1
53F3F4:  BLT             loc_53F388
53F3F6:  CMP             R4, #0xC8
53F3F8:  BEQ.W           loc_53F162
53F3FC:  LDR.W           R0, [R11,#8]
53F400:  MOVS            R2, #1
53F402:  MOVS            R3, #0
53F404:  LDR             R1, [R0]
53F406:  LDR             R6, [R1,#0x1C]
53F408:  LDR             R1, [SP,#0x58+var_48]
53F40A:  BLX             R6
53F40C:  CMP             R0, #1
53F40E:  BNE.W           loc_53F162
53F412:  LDR             R2, [SP,#0x58+var_48]; CPed *
53F414:  MOV             R0, R11; this
53F416:  MOV             R1, R4; int
53F418:  MOVS            R3, #0; bool
53F41A:  BLX             j__ZNK24CTaskComplexKillCriminal13CreateSubTaskEiP4CPedb; CTaskComplexKillCriminal::CreateSubTask(int,CPed *,bool)
53F41E:  MOV             R5, R0
53F420:  B               loc_53F162
53F422:  LDRB.W          R0, [R6,#0x485]
53F426:  LSLS            R0, R0, #0x1F
53F428:  BNE             loc_53F43C
53F42A:  LDR.W           R0, [R6,#0x440]; this
53F42E:  MOVW            R1, #0x2BD; int
53F432:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
53F436:  CMP             R0, #0
53F438:  BEQ.W           loc_53F85E
53F43C:  LDR             R0, [SP,#0x58+var_48]
53F43E:  LDR.W           R0, [R0,#0x590]
53F442:  CMP             R0, #0
53F444:  BEQ.W           loc_53F5FE
53F448:  LDR             R1, [SP,#0x58+var_48]
53F44A:  ADD.W           R8, R1, #0x590
53F44E:  LDRB.W          R1, [R11,#0x1A]
53F452:  CMP             R1, #0
53F454:  BEQ.W           loc_53F84E
53F458:  MOV.W           R9, #0x3E8
53F45C:  B               loc_53FA28
53F45E:  ALIGN 0x10
53F460:  DCFS 625.0
53F464:  DCFS 250.0
53F468:  DCFS 60.0
53F46C:  DCFS 0.2
53F470:  DCFS 36.0
53F474:  DCFS 225.0
53F478:  DCFS 0.12
53F47C:  DCFS -50.0
53F480:  DCFS 400.0
53F484:  LDR             R2, [SP,#0x58+var_48]
53F486:  ADDW            R3, R1, #0x4CC
53F48A:  VLDR            S16, [R3]
53F48E:  LDRB.W          R2, [R2,#0x485]
53F492:  LSLS            R2, R2, #0x1F
53F494:  ITT NE
53F496:  LDRNE.W         R2, [R8]
53F49A:  CMPNE           R2, #0
53F49C:  BNE.W           loc_53F622
53F4A0:  VLDR            S0, [R1,#0x48]
53F4A4:  VLDR            S2, [R1,#0x4C]
53F4A8:  VMUL.F32        S0, S0, S0
53F4AC:  VLDR            S4, [R1,#0x50]
53F4B0:  VMUL.F32        S2, S2, S2
53F4B4:  VLDR            S18, =0.2
53F4B8:  VMUL.F32        S4, S4, S4
53F4BC:  VADD.F32        S0, S0, S2
53F4C0:  VADD.F32        S0, S0, S4
53F4C4:  VSQRT.F32       S0, S0
53F4C8:  VCMPE.F32       S0, S18
53F4CC:  VMRS            APSR_nzcv, FPSCR
53F4D0:  BGE.W           loc_53F73C
53F4D4:  LDR             R5, [SP,#0x58+var_48]
53F4D6:  LDR             R2, [R0,#0x14]
53F4D8:  LDR             R1, [R5,#0x14]
53F4DA:  ADD.W           R3, R1, #0x30 ; '0'
53F4DE:  CMP             R1, #0
53F4E0:  IT EQ
53F4E2:  ADDEQ           R3, R5, #4
53F4E4:  ADD.W           R1, R2, #0x30 ; '0'
53F4E8:  CMP             R2, #0
53F4EA:  VLDR            S6, [R3]
53F4EE:  VLDR            S8, [R3,#4]
53F4F2:  VLDR            S10, [R3,#8]
53F4F6:  IT EQ
53F4F8:  ADDEQ           R1, R0, #4
53F4FA:  VLDR            S0, [R1]
53F4FE:  VLDR            S4, [R1,#4]
53F502:  VSUB.F32        S6, S0, S6
53F506:  VLDR            S2, [R1,#8]
53F50A:  VSUB.F32        S8, S4, S8
53F50E:  VSUB.F32        S10, S2, S10
53F512:  VMUL.F32        S6, S6, S6
53F516:  VMUL.F32        S8, S8, S8
53F51A:  VMUL.F32        S10, S10, S10
53F51E:  VADD.F32        S6, S6, S8
53F522:  VADD.F32        S8, S6, S10
53F526:  VLDR            S6, =36.0
53F52A:  VCMPE.F32       S8, S6
53F52E:  VMRS            APSR_nzcv, FPSCR
53F532:  BLT.W           loc_53F944
53F536:  CMP             R6, #0
53F538:  BEQ.W           loc_53F936
53F53C:  LDRB.W          R0, [R6,#0x485]
53F540:  LSLS            R0, R0, #0x1F
53F542:  BNE.W           loc_53F936
53F546:  LDR             R0, [R6,#0x14]
53F548:  ADD.W           R1, R0, #0x30 ; '0'
53F54C:  CMP             R0, #0
53F54E:  IT EQ
53F550:  ADDEQ           R1, R6, #4
53F552:  VLDR            S8, [R1]
53F556:  VLDR            S10, [R1,#4]
53F55A:  VSUB.F32        S0, S0, S8
53F55E:  VLDR            S12, [R1,#8]
53F562:  VSUB.F32        S4, S4, S10
53F566:  VSUB.F32        S2, S2, S12
53F56A:  VMUL.F32        S0, S0, S0
53F56E:  VMUL.F32        S4, S4, S4
53F572:  VMUL.F32        S2, S2, S2
53F576:  VADD.F32        S0, S0, S4
53F57A:  VADD.F32        S0, S0, S2
53F57E:  VCMPE.F32       S0, S6
53F582:  VMRS            APSR_nzcv, FPSCR
53F586:  BGE.W           loc_53F936
53F58A:  B               loc_53F944
53F58C:  LDR             R2, [R1,#0x14]
53F58E:  MOV             R12, R4
53F590:  LDR             R3, [R0,#0x14]
53F592:  ADD.W           R4, R2, #0x30 ; '0'
53F596:  CMP             R2, #0
53F598:  IT EQ
53F59A:  ADDEQ           R4, R1, #4
53F59C:  ADD.W           R2, R3, #0x30 ; '0'
53F5A0:  CMP             R3, #0
53F5A2:  VLDR            S0, [R4]
53F5A6:  VLDR            S2, [R4,#4]
53F5AA:  VLDR            S4, [R4,#8]
53F5AE:  IT EQ
53F5B0:  ADDEQ           R2, R0, #4
53F5B2:  VLDR            S6, [R2]
53F5B6:  CMP             R6, #0
53F5B8:  VLDR            S8, [R2,#4]
53F5BC:  VSUB.F32        S0, S6, S0
53F5C0:  VLDR            S10, [R2,#8]
53F5C4:  VSUB.F32        S2, S8, S2
53F5C8:  VSUB.F32        S4, S10, S4
53F5CC:  VMUL.F32        S0, S0, S0
53F5D0:  VMUL.F32        S2, S2, S2
53F5D4:  VMUL.F32        S4, S4, S4
53F5D8:  VADD.F32        S0, S0, S2
53F5DC:  VADD.F32        S0, S0, S4
53F5E0:  BEQ             loc_53F604
53F5E2:  ADDW            R0, R6, #0x544
53F5E6:  VLDR            S2, [R0]
53F5EA:  VCMPE.F32       S2, #0.0
53F5EE:  VMRS            APSR_nzcv, FPSCR
53F5F2:  BLE             loc_53F604
53F5F4:  LDRB.W          R0, [R6,#0x485]
53F5F8:  AND.W           R0, R0, #1
53F5FC:  B               loc_53F606
53F5FE:  MOV.W           R9, #0x3E8
53F602:  B               loc_53F304
53F604:  MOVS            R0, #1
53F606:  VLDR            S2, =225.0
53F60A:  MOV             R4, R12
53F60C:  VCMPE.F32       S0, S2
53F610:  VMRS            APSR_nzcv, FPSCR
53F614:  BLE.W           loc_53F81A
53F618:  CMP             R0, #0
53F61A:  IT NE
53F61C:  MOVNE.W         R9, #0x2D4
53F620:  B               loc_53FA28
53F622:  LDR.W           R0, [R11,#8]
53F626:  LDR             R1, [R0]
53F628:  LDR             R1, [R1,#0x14]
53F62A:  BLX             R1
53F62C:  CMP.W           R0, #0x2D4
53F630:  BEQ             loc_53F646
53F632:  LDR.W           R0, [R11,#8]
53F636:  LDR             R1, [R0]
53F638:  LDR             R1, [R1,#0x14]
53F63A:  BLX             R1
53F63C:  MOVW            R1, #0x3FE
53F640:  CMP             R0, R1
53F642:  BNE.W           loc_53F8FA
53F646:  LDR.W           R0, [R10]
53F64A:  LDR.W           R1, [R0,#0x590]
53F64E:  VLDR            S0, [R1,#0x48]
53F652:  VLDR            S2, [R1,#0x4C]
53F656:  VMUL.F32        S0, S0, S0
53F65A:  VLDR            S4, [R1,#0x50]
53F65E:  VMUL.F32        S2, S2, S2
53F662:  VMUL.F32        S4, S4, S4
53F666:  VADD.F32        S0, S0, S2
53F66A:  VLDR            S2, =0.12
53F66E:  VADD.F32        S0, S0, S4
53F672:  VSQRT.F32       S0, S0
53F676:  VCMPE.F32       S0, S2
53F67A:  VMRS            APSR_nzcv, FPSCR
53F67E:  BGE.W           loc_53F8D6
53F682:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53F68E)
53F686:  VLDR            S0, =-50.0
53F68A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53F68C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
53F68E:  VLDR            S2, [R1]
53F692:  VDIV.F32        S0, S2, S0
53F696:  VLDR            S2, [R11,#0x14]
53F69A:  VADD.F32        S0, S2, S0
53F69E:  VCMPE.F32       S0, #0.0
53F6A2:  VSTR            S0, [R11,#0x14]
53F6A6:  VMRS            APSR_nzcv, FPSCR
53F6AA:  BGT.W           loc_53F936
53F6AE:  LDR.W           R0, [R0,#0x440]
53F6B2:  ADDS            R0, #0x34 ; '4'; this
53F6B4:  BLX             j__ZNK13CEventHandler19GetCurrentEventTypeEv; CEventHandler::GetCurrentEventType(void)
53F6B8:  CMP             R0, #0x24 ; '$'
53F6BA:  BEQ.W           loc_53F936
53F6BE:  LDR.W           R0, [R10]
53F6C2:  LDR.W           R1, [R8]
53F6C6:  LDR.W           R0, [R0,#0x590]
53F6CA:  LDR             R2, [R1,#0x14]
53F6CC:  LDR             R3, [R0,#0x14]
53F6CE:  ADD.W           R6, R2, #0x30 ; '0'
53F6D2:  CMP             R2, #0
53F6D4:  IT EQ
53F6D6:  ADDEQ           R6, R1, #4
53F6D8:  ADD.W           R1, R3, #0x30 ; '0'
53F6DC:  CMP             R3, #0
53F6DE:  VLDR            S0, [R6]
53F6E2:  IT EQ
53F6E4:  ADDEQ           R1, R0, #4
53F6E6:  VLDR            D16, [R6,#4]
53F6EA:  VLDR            S2, [R1]
53F6EE:  VLDR            D17, [R1,#4]
53F6F2:  VSUB.F32        S0, S2, S0
53F6F6:  VSUB.F32        D16, D17, D16
53F6FA:  VMUL.F32        D1, D16, D16
53F6FE:  VMUL.F32        S0, S0, S0
53F702:  VADD.F32        S0, S0, S2
53F706:  VADD.F32        S0, S0, S3
53F70A:  VLDR            S2, =225.0
53F70E:  VCMPE.F32       S0, S2
53F712:  VMRS            APSR_nzcv, FPSCR
53F716:  BGE.W           loc_53F936
53F71A:  LDR             R1, [SP,#0x58+var_48]; CPed *
53F71C:  MOV             R0, R11; this
53F71E:  MOVS            R2, #0; bool
53F720:  BLX             j__ZN24CTaskComplexKillCriminal22FindNextCriminalToKillEP4CPedb; CTaskComplexKillCriminal::FindNextCriminalToKill(CPed *,bool)
53F724:  MOV             R1, R0; CPed *
53F726:  CMP             R1, #0
53F728:  BEQ.W           loc_53F932
53F72C:  MOV             R0, R11; this
53F72E:  BLX             j__ZN24CTaskComplexKillCriminal12ChangeTargetEP4CPed; CTaskComplexKillCriminal::ChangeTarget(CPed *)
53F732:  VLDR            S0, =250.0
53F736:  MOV.W           R9, #0x3E8
53F73A:  B               loc_53F93A
53F73C:  LDR.W           R0, [R8]
53F740:  CMP             R0, #0
53F742:  BEQ.W           loc_53F936
53F746:  LDRB.W          R0, [R11,#0x1A]
53F74A:  CMP             R0, #0
53F74C:  BNE.W           loc_53F936
53F750:  LDR.W           R0, [R11,#8]
53F754:  LDR             R1, [R0]
53F756:  LDR             R1, [R1,#0x14]
53F758:  BLX             R1
53F75A:  MOVW            R1, #0x2BD
53F75E:  CMP             R0, R1
53F760:  BEQ.W           loc_53F936
53F764:  LDR.W           R0, [R11,#8]
53F768:  LDR             R1, [R0]
53F76A:  LDR             R1, [R1,#0x14]
53F76C:  BLX             R1
53F76E:  CMP.W           R0, #0x2BC
53F772:  BEQ.W           loc_53F936
53F776:  LDR.W           R0, [R10]
53F77A:  LDR.W           R1, [R8]
53F77E:  LDR.W           R0, [R0,#0x590]
53F782:  LDR             R2, [R1,#0x14]
53F784:  LDR             R6, [R0,#0x14]
53F786:  ADD.W           R3, R2, #0x30 ; '0'
53F78A:  CMP             R2, #0
53F78C:  IT EQ
53F78E:  ADDEQ           R3, R1, #4
53F790:  ADD.W           R1, R6, #0x30 ; '0'
53F794:  CMP             R6, #0
53F796:  VLDR            S0, [R3]
53F79A:  IT EQ
53F79C:  ADDEQ           R1, R0, #4
53F79E:  VLDR            D16, [R3,#4]
53F7A2:  VLDR            S2, [R1]
53F7A6:  VLDR            D17, [R1,#4]
53F7AA:  VSUB.F32        S0, S2, S0
53F7AE:  VSUB.F32        D16, D17, D16
53F7B2:  VMUL.F32        D1, D16, D16
53F7B6:  VMUL.F32        S0, S0, S0
53F7BA:  VADD.F32        S0, S0, S2
53F7BE:  VADD.F32        S0, S0, S3
53F7C2:  VLDR            S2, =400.0
53F7C6:  VCMPE.F32       S0, S2
53F7CA:  VMRS            APSR_nzcv, FPSCR
53F7CE:  BGT             loc_53F800
53F7D0:  VLDR            S0, [R0,#0x48]
53F7D4:  VLDR            S2, [R0,#0x4C]
53F7D8:  VMUL.F32        S0, S0, S0
53F7DC:  VLDR            S4, [R0,#0x50]
53F7E0:  VMUL.F32        S2, S2, S2
53F7E4:  VMUL.F32        S4, S4, S4
53F7E8:  VADD.F32        S0, S0, S2
53F7EC:  VADD.F32        S0, S0, S4
53F7F0:  VSQRT.F32       S0, S0
53F7F4:  VCMPE.F32       S0, S18
53F7F8:  VMRS            APSR_nzcv, FPSCR
53F7FC:  BLT.W           loc_53F936
53F800:  LDR.W           R0, [R11,#0x10]
53F804:  MOV.W           R9, #0x2BC
53F808:  VLDR            S0, =250.0
53F80C:  LDRB.W          R0, [R0,#0x7C8]
53F810:  CMP             R0, #0
53F812:  IT NE
53F814:  MOVWNE          R9, #0x2BD
53F818:  B               loc_53F93A
53F81A:  VMOV.F32        S4, #5.0
53F81E:  LDR.W           R0, [R1,#0x5A0]
53F822:  VMOV.F32        S2, #16.0
53F826:  CMP             R0, #9
53F828:  IT EQ
53F82A:  VMOVEQ.F32      S2, S4
53F82E:  LDRB.W          R0, [R1,#0x3BE]
53F832:  VCMPE.F32       S0, S2
53F836:  VMRS            APSR_nzcv, FPSCR
53F83A:  AND.W           R0, R0, #0xFE
53F83E:  IT LT
53F840:  MOVLT.W         R9, #0x3E8
53F844:  CMP             R0, #0x36 ; '6'
53F846:  IT NE
53F848:  MOVNE.W         R9, #0x3E8
53F84C:  B               loc_53FA28
53F84E:  LDR             R1, [SP,#0x58+var_48]
53F850:  LDRB.W          R1, [R1,#0x485]
53F854:  LSLS            R1, R1, #0x1F
53F856:  BNE             loc_53F86A
53F858:  MOV.W           R9, #0x2BC
53F85C:  B               loc_53FA28
53F85E:  LDR             R0, [SP,#0x58+var_48]
53F860:  MOV.W           R9, #0x3E8
53F864:  ADD.W           R8, R0, #0x590
53F868:  B               loc_53FA28
53F86A:  ADDW            R1, R6, #0x484
53F86E:  MOVW            R9, #0x2C5
53F872:  LDRB            R1, [R1,#1]
53F874:  LSLS            R1, R1, #0x1F
53F876:  BEQ.W           loc_53FA28
53F87A:  LDR.W           R1, [R10]
53F87E:  LDR             R2, [R0,#0x14]
53F880:  LDR             R3, [R1,#0x14]
53F882:  ADD.W           R6, R2, #0x30 ; '0'
53F886:  CMP             R2, #0
53F888:  IT EQ
53F88A:  ADDEQ           R6, R0, #4
53F88C:  ADD.W           R0, R3, #0x30 ; '0'
53F890:  CMP             R3, #0
53F892:  VLDR            S0, [R6]
53F896:  IT EQ
53F898:  ADDEQ           R0, R1, #4
53F89A:  VLDR            D16, [R6,#4]
53F89E:  VLDR            S2, [R0]
53F8A2:  VLDR            D17, [R0,#4]
53F8A6:  VSUB.F32        S0, S2, S0
53F8AA:  VSUB.F32        D16, D17, D16
53F8AE:  VMUL.F32        D1, D16, D16
53F8B2:  VMUL.F32        S0, S0, S0
53F8B6:  VADD.F32        S0, S0, S2
53F8BA:  VADD.F32        S0, S0, S3
53F8BE:  VLDR            S2, =60.0
53F8C2:  VSQRT.F32       S0, S0
53F8C6:  VCMPE.F32       S0, S2
53F8CA:  VMRS            APSR_nzcv, FPSCR
53F8CE:  IT LT
53F8D0:  MOVWLT          R9, #0x3FE
53F8D4:  B               loc_53FA28
53F8D6:  MOV.W           R0, #0x3F800000
53F8DA:  VLDR            S0, =250.0
53F8DE:  STR.W           R0, [R11,#0x14]
53F8E2:  B               loc_53F93A
53F8E4:  LDR.W           R0, [R11,#0x10]
53F8E8:  MOV.W           R9, #0x2BC
53F8EC:  LDRB.W          R0, [R0,#0x7C8]
53F8F0:  CMP             R0, #0
53F8F2:  IT NE
53F8F4:  MOVWNE          R9, #0x2BD
53F8F8:  B               loc_53F304
53F8FA:  LDR.W           R0, [R11,#8]
53F8FE:  LDR             R1, [R0]
53F900:  LDR             R1, [R1,#0x14]
53F902:  BLX             R1
53F904:  MOVW            R1, #0x2C5
53F908:  CMP             R0, R1
53F90A:  BNE             loc_53F936
53F90C:  CBZ             R6, loc_53F928
53F90E:  ADDW            R0, R6, #0x544
53F912:  VLDR            S0, [R0]
53F916:  VCMPE.F32       S0, #0.0
53F91A:  VMRS            APSR_nzcv, FPSCR
53F91E:  BLE             loc_53F928
53F920:  LDRB.W          R0, [R6,#0x485]
53F924:  LSLS            R0, R0, #0x1F
53F926:  BEQ             loc_53F936
53F928:  VLDR            S0, =250.0
53F92C:  MOV.W           R9, #0x2D4
53F930:  B               loc_53F93A
53F932:  MOV.W           R9, #0x3E8
53F936:  VLDR            S0, =250.0
53F93A:  VCMPE.F32       S16, S0
53F93E:  VMRS            APSR_nzcv, FPSCR
53F942:  BGE             loc_53FA28
53F944:  ADD             R6, SP, #0x58+var_44
53F946:  LDR             R1, [SP,#0x58+var_48]; CPed *
53F948:  MOV             R5, R8
53F94A:  MOV             R0, R6; this
53F94C:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
53F950:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x53F95C)
53F952:  MOVS            R2, #0; bool
53F954:  VLDR            S0, =250.0
53F958:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
53F95A:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
53F95C:  ADDS            R0, #8
53F95E:  STR             R0, [SP,#0x58+var_44]
53F960:  LDR.W           R0, [R10]
53F964:  LDR.W           R1, [R0,#0x590]
53F968:  ADDW            R1, R1, #0x4CC
53F96C:  VLDR            S2, [R1]
53F970:  MOVW            R1, #0x406
53F974:  VCMPE.F32       S2, S0
53F978:  VMRS            APSR_nzcv, FPSCR
53F97C:  IT LT
53F97E:  MOVLT.W         R1, #0x2C0
53F982:  STRH.W          R1, [SP,#0x58+var_3A]
53F986:  MOV             R1, R6; CEvent *
53F988:  LDR.W           R0, [R0,#0x440]
53F98C:  ADDS            R0, #0x68 ; 'h'; this
53F98E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
53F992:  LDR.W           R0, [R10]; this
53F996:  BLX             j__ZN4CPed26SetPedDefaultDecisionMakerEv; CPed::SetPedDefaultDecisionMaker(void)
53F99A:  LDR.W           R1, [R10]
53F99E:  LDR.W           R0, [R1,#0x590]
53F9A2:  LDR.W           R0, [R0,#0x464]; this
53F9A6:  CMP             R1, R0
53F9A8:  IT NE
53F9AA:  CMPNE           R0, #0
53F9AC:  BEQ             loc_53F9CE
53F9AE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53F9B2:  CBNZ            R0, loc_53F9CE
53F9B4:  LDR.W           R0, [R10]
53F9B8:  ADD             R1, SP, #0x58+var_44; CEvent *
53F9BA:  MOVS            R2, #0; bool
53F9BC:  LDR.W           R0, [R0,#0x590]
53F9C0:  LDR.W           R0, [R0,#0x464]
53F9C4:  LDR.W           R0, [R0,#0x440]
53F9C8:  ADDS            R0, #0x68 ; 'h'; this
53F9CA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
53F9CE:  LDR.W           R0, [R10]
53F9D2:  LDR.W           R1, [R0,#0x590]
53F9D6:  LDRB.W          R2, [R1,#0x48C]
53F9DA:  CBZ             R2, loc_53FA20
53F9DC:  MOV.W           R8, #0
53F9E0:  ADD.W           R1, R1, R8,LSL#2
53F9E4:  LDR.W           R6, [R1,#0x468]
53F9E8:  CMP             R6, #0
53F9EA:  IT NE
53F9EC:  CMPNE           R6, R0
53F9EE:  BEQ             loc_53FA0C
53F9F0:  MOV             R0, R6; this
53F9F2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53F9F6:  CBNZ            R0, loc_53FA0C
53F9F8:  LDR.W           R0, [R6,#0x440]
53F9FC:  ADD             R1, SP, #0x58+var_44; CEvent *
53F9FE:  MOVS            R2, #0; bool
53FA00:  ADDS            R0, #0x68 ; 'h'; this
53FA02:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
53FA06:  MOV             R0, R6; this
53FA08:  BLX             j__ZN4CPed26SetPedDefaultDecisionMakerEv; CPed::SetPedDefaultDecisionMaker(void)
53FA0C:  LDR.W           R0, [R10]
53FA10:  ADD.W           R8, R8, #1
53FA14:  LDR.W           R1, [R0,#0x590]
53FA18:  LDRB.W          R2, [R1,#0x48C]
53FA1C:  CMP             R8, R2
53FA1E:  BLT             loc_53F9E0
53FA20:  ADD             R0, SP, #0x58+var_44; this
53FA22:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
53FA26:  MOV             R8, R5
53FA28:  LDR.W           R0, [R8]
53FA2C:  CMP             R0, #0
53FA2E:  BEQ.W           loc_53F304
53FA32:  LDR.W           R0, [R0,#0x5A0]
53FA36:  CMP             R0, #9
53FA38:  BNE.W           loc_53F304
53FA3C:  LDR.W           R0, [R11,#8]
53FA40:  LDR             R1, [R0]
53FA42:  LDR             R1, [R1,#0x14]
53FA44:  BLX             R1
53FA46:  CMP.W           R0, #0x2D4
53FA4A:  BNE             loc_53FAC0
53FA4C:  CMP.W           R9, #0xC8
53FA50:  BEQ             loc_53FA60
53FA52:  MOVW            R0, #0x3FE
53FA56:  CMP             R9, R0
53FA58:  BEQ             loc_53FADE
53FA5A:  CMP.W           R9, #0x2D4
53FA5E:  BNE             loc_53FAC8
53FA60:  LDR.W           R0, [R8]
53FA64:  LDR.W           R1, [R10]
53FA68:  LDR             R2, [R0,#0x14]
53FA6A:  LDR             R3, [R1,#0x14]
53FA6C:  ADD.W           R6, R2, #0x30 ; '0'
53FA70:  CMP             R2, #0
53FA72:  IT EQ
53FA74:  ADDEQ           R6, R0, #4
53FA76:  ADD.W           R0, R3, #0x30 ; '0'
53FA7A:  CMP             R3, #0
53FA7C:  VLDR            S0, [R6]
53FA80:  IT EQ
53FA82:  ADDEQ           R0, R1, #4
53FA84:  VLDR            D16, [R6,#4]
53FA88:  VLDR            S2, [R0]
53FA8C:  VLDR            D17, [R0,#4]
53FA90:  VSUB.F32        S0, S2, S0
53FA94:  VSUB.F32        D16, D17, D16
53FA98:  VMUL.F32        D1, D16, D16
53FA9C:  VMUL.F32        S0, S0, S0
53FAA0:  VADD.F32        S0, S0, S2
53FAA4:  VADD.F32        S0, S0, S3
53FAA8:  VLDR            S2, =60.0
53FAAC:  VSQRT.F32       S0, S0
53FAB0:  VCMPE.F32       S0, S2
53FAB4:  VMRS            APSR_nzcv, FPSCR
53FAB8:  BGE             loc_53FAC8
53FABA:  MOVW            R0, #0x3FE
53FABE:  B               loc_53FADE
53FAC0:  MOVW            R0, #0x3FE
53FAC4:  CMP             R9, R0
53FAC6:  BEQ             loc_53FADE
53FAC8:  LDR.W           R0, [R11,#8]
53FACC:  LDR             R1, [R0]
53FACE:  LDR             R1, [R1,#0x14]
53FAD0:  BLX             R1
53FAD2:  MOVW            R1, #0x3FE
53FAD6:  CMP             R0, R1
53FAD8:  MOV             R0, R9
53FADA:  BNE.W           loc_53F304
53FADE:  LDR.W           R1, [R10]
53FAE2:  LDRB.W          R2, [R1,#0x485]
53FAE6:  LSLS            R2, R2, #0x1F
53FAE8:  ITT NE
53FAEA:  LDRNE.W         R1, [R1,#0x590]
53FAEE:  CMPNE           R1, #0
53FAF0:  BNE             loc_53FB3A
53FAF2:  LDR.W           R1, [R8]
53FAF6:  MOVS            R3, #3
53FAF8:  LDRB.W          R2, [R1,#0x3A]
53FAFC:  BFI.W           R2, R3, #3, #0x1D
53FB00:  STRB.W          R2, [R1,#0x3A]
53FB04:  LDR.W           R1, [R8]
53FB08:  MOVS            R2, #0x37 ; '7'
53FB0A:  STRB.W          R2, [R1,#0x3BE]
53FB0E:  MOVS            R2, #0x14
53FB10:  LDR.W           R1, [R8]
53FB14:  STRB.W          R2, [R1,#0x3D4]
53FB18:  LDR.W           R1, [R8]
53FB1C:  LDRB.W          R2, [R1,#0x3D4]
53FB20:  VMOV            S0, R2
53FB24:  MOVS            R2, #2
53FB26:  VCVT.F32.U32    S0, S0
53FB2A:  VSTR            S0, [R1,#0x3CC]
53FB2E:  LDR.W           R1, [R8]
53FB32:  STRB.W          R2, [R1,#0x3BD]
53FB36:  MOV             R1, R10
53FB38:  B               loc_53FB92
53FB3A:  LDR.W           R1, [R8]
53FB3E:  MOVS            R3, #3
53FB40:  LDRB.W          R2, [R1,#0x3A]
53FB44:  BFI.W           R2, R3, #3, #0x1D
53FB48:  STRB.W          R2, [R1,#0x3A]
53FB4C:  LDR.W           R1, [R8]
53FB50:  MOVS            R2, #0x35 ; '5'
53FB52:  STRB.W          R2, [R1,#0x3BE]
53FB56:  LDR.W           R1, [R10]
53FB5A:  LDR.W           R2, [R8]
53FB5E:  LDR.W           R1, [R1,#0x590]
53FB62:  LDRB.W          R1, [R1,#0x3D4]
53FB66:  ADDS            R1, #0xA
53FB68:  STRB.W          R1, [R2,#0x3D4]
53FB6C:  LDR.W           R1, [R8]
53FB70:  LDRB.W          R2, [R1,#0x3D4]
53FB74:  VMOV            S0, R2
53FB78:  MOVS            R2, #2
53FB7A:  VCVT.F32.U32    S0, S0
53FB7E:  VSTR            S0, [R1,#0x3CC]
53FB82:  LDR.W           R1, [R8]
53FB86:  STRB.W          R2, [R1,#0x3BD]
53FB8A:  LDR.W           R1, [R10]
53FB8E:  ADD.W           R1, R1, #0x590
53FB92:  LDR.W           R2, [R8]
53FB96:  MOV             R9, R0
53FB98:  LDR             R1, [R1]
53FB9A:  STR.W           R1, [R2,#0x420]
53FB9E:  B.W             loc_53F304
