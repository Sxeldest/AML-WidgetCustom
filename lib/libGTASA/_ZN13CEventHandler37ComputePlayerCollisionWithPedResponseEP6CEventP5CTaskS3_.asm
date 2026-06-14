; =========================================================
; Game Engine Function: _ZN13CEventHandler37ComputePlayerCollisionWithPedResponseEP6CEventP5CTaskS3_
; Address            : 0x37DF78 - 0x37E4BA
; =========================================================

37DF78:  PUSH            {R4-R7,LR}
37DF7A:  ADD             R7, SP, #0xC
37DF7C:  PUSH.W          {R8-R11}
37DF80:  SUB             SP, SP, #4
37DF82:  VPUSH           {D8-D15}
37DF86:  SUB             SP, SP, #0x28
37DF88:  LDR.W           R10, [R1,#0x10]
37DF8C:  CMP.W           R10, #0
37DF90:  BEQ.W           loc_37E32A
37DF94:  STR             R0, [SP,#0x88+var_64]
37DF96:  LDR             R5, [R0]
37DF98:  LDR.W           R0, [R10,#0x14]
37DF9C:  LDR             R2, [R5,#0x14]
37DF9E:  ADD.W           R3, R0, #0x30 ; '0'
37DFA2:  CMP             R0, #0
37DFA4:  IT EQ
37DFA6:  ADDEQ.W         R3, R10, #4
37DFAA:  ADD.W           R6, R2, #0x30 ; '0'
37DFAE:  CMP             R2, #0
37DFB0:  VLDR            S16, [R3]
37DFB4:  VLDR            S20, [R3,#4]
37DFB8:  VLDR            S18, [R3,#8]
37DFBC:  IT EQ
37DFBE:  ADDEQ           R6, R5, #4
37DFC0:  VLDR            S26, [R0,#0x10]
37DFC4:  VLDR            S21, [R0,#0x14]
37DFC8:  VLDR            S22, [R0,#0x18]
37DFCC:  LDR.W           R0, [R10,#0x440]
37DFD0:  VLDR            S24, [R6]
37DFD4:  ADDS            R0, #4; this
37DFD6:  VLDR            S19, [R6,#4]
37DFDA:  VLDR            S30, [R6,#8]
37DFDE:  VLDR            S17, [R2,#0x10]
37DFE2:  VLDR            S23, [R2,#0x14]
37DFE6:  VLDR            S28, [R2,#0x18]
37DFEA:  LDRSH.W         R4, [R1,#0x2C]
37DFEE:  LDRSH.W         R6, [R1,#0x2E]
37DFF2:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37DFF6:  CBZ             R0, loc_37E040
37DFF8:  LDR.W           R0, [R10,#0x440]
37DFFC:  ADDS            R0, #4; this
37DFFE:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37E002:  LDR             R1, [R0]
37E004:  LDR             R1, [R1,#0x14]
37E006:  BLX             R1
37E008:  MOVW            R1, #0x391; unsigned int
37E00C:  CMP             R0, R1
37E00E:  BNE             loc_37E040
37E010:  MOVS            R0, #dword_1C; this
37E012:  MOVS            R4, #0x1C
37E014:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E018:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37E01C:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37E030)
37E020:  MOV.W           R11, #0
37E024:  MOV.W           R2, #0xFFFFFFFF
37E028:  STRH.W          R11, [R0,#0x18]
37E02C:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37E02E:  STRD.W          R11, R11, [R0,#0x10]
37E032:  STRD.W          R4, R2, [R0,#8]
37E036:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37E038:  ADDS            R1, #8
37E03A:  STR             R1, [R0]
37E03C:  LDR             R5, [SP,#0x88+var_64]
37E03E:  B               loc_37E100
37E040:  VSUB.F32        S0, S20, S19
37E044:  UXTH.W          R9, R4
37E048:  VSUB.F32        S2, S16, S24
37E04C:  CMP.W           R9, #4
37E050:  VSUB.F32        S4, S18, S30
37E054:  UXTH.W          R8, R6
37E058:  IT EQ
37E05A:  CMPEQ.W         R8, #4
37E05E:  VMUL.F32        S6, S0, S21
37E062:  VMUL.F32        S8, S2, S26
37E066:  VMUL.F32        S0, S0, S23
37E06A:  VMUL.F32        S2, S2, S17
37E06E:  VMUL.F32        S10, S4, S22
37E072:  VMUL.F32        S4, S4, S28
37E076:  VADD.F32        S6, S8, S6
37E07A:  VADD.F32        S0, S2, S0
37E07E:  VADD.F32        S2, S6, S10
37E082:  VADD.F32        S0, S0, S4
37E086:  BNE             loc_37E104
37E088:  VCMPE.F32       S0, #0.0
37E08C:  VMRS            APSR_nzcv, FPSCR
37E090:  BLT.W           loc_37E204
37E094:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37E0A4)
37E098:  MOVS            R0, #5
37E09A:  LDR             R5, [SP,#0x88+var_64]
37E09C:  MOV.W           R1, #0x7D0
37E0A0:  ADD             R12, PC; g_ikChainMan_ptr
37E0A2:  MOV.W           R11, #0
37E0A6:  MOV.W           R3, #0x1F4
37E0AA:  MOV.W           R6, #0x3E800000
37E0AE:  LDR             R2, [R5]; CPed *
37E0B0:  MOVS            R4, #1
37E0B2:  STRD.W          R1, R0, [SP,#0x88+var_88]; int
37E0B6:  ADR.W           R1, aCompplayercoll; "CompPlayerCollPedResp"
37E0BA:  LDR.W           R0, [R12]; g_ikChainMan ; int
37E0BE:  MOV.W           LR, #3
37E0C2:  STRD.W          R11, R4, [SP,#0x88+var_80]; int
37E0C6:  STRD.W          R6, R3, [SP,#0x88+var_78]; float
37E0CA:  MOV             R3, R10; int
37E0CC:  STRD.W          LR, R11, [SP,#0x88+var_70]; int
37E0D0:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37E0D4:  MOVS            R0, #dword_1C; this
37E0D6:  MOVS            R4, #0x1C
37E0D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E0DC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37E0E0:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37E0E8)
37E0E4:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37E0E6:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37E0E8:  MOV.W           R2, #0xFFFFFFFF
37E0EC:  STRH.W          R11, [R0,#0x18]
37E0F0:  STR             R4, [R0,#8]
37E0F2:  ADDS            R1, #8
37E0F4:  STR             R2, [R0,#0xC]
37E0F6:  STR.W           R11, [R0,#0x10]
37E0FA:  STR.W           R11, [R0,#0x14]
37E0FE:  STR             R1, [R0]
37E100:  STR             R0, [R5,#0x2C]
37E102:  B               loc_37E326
37E104:  ORR.W           R0, R4, #1
37E108:  CMP             R0, #7
37E10A:  BNE.W           loc_37E280
37E10E:  CMP             R6, #7
37E110:  BHI.W           loc_37E280
37E114:  MOVS            R0, #1
37E116:  LSLS            R0, R6
37E118:  TST.W           R0, #0xD0
37E11C:  BEQ.W           loc_37E280
37E120:  VCMPE.F32       S0, #0.0
37E124:  VMRS            APSR_nzcv, FPSCR
37E128:  BLT.W           loc_37E3B6
37E12C:  VCMPE.F32       S2, #0.0
37E130:  VMRS            APSR_nzcv, FPSCR
37E134:  BGT.W           loc_37E3B6
37E138:  STR             R5, [SP,#0x88+var_68]
37E13A:  CMP.W           R8, #4
37E13E:  LDR             R5, [SP,#0x88+var_64]
37E140:  BEQ             loc_37E180
37E142:  LDR             R0, =(_ZN25CEventPedCollisionWithPed21ms_fPedBrushKnockdownE_ptr - 0x37E14A)
37E144:  LDR             R1, [R5]; CPed *
37E146:  ADD             R0, PC; _ZN25CEventPedCollisionWithPed21ms_fPedBrushKnockdownE_ptr
37E148:  LDR             R0, [R0]; CEventPedCollisionWithPed::ms_fPedBrushKnockdown ...
37E14A:  LDR.W           R2, [R1,#0x5A0]; CEntity *
37E14E:  VLDR            S2, [R0]
37E152:  VLDR            S0, [R2,#0x2C]
37E156:  VCMPE.F32       S0, S2
37E15A:  VMRS            APSR_nzcv, FPSCR
37E15E:  BLE             loc_37E180
37E160:  LDR.W           R0, [R10,#0x5A0]
37E164:  VLDR            S4, [R0,#0x2C]
37E168:  VCMPE.F32       S4, S2
37E16C:  VMRS            APSR_nzcv, FPSCR
37E170:  BLE.W           loc_37E49E
37E174:  VCMPE.F32       S0, S4
37E178:  VMRS            APSR_nzcv, FPSCR
37E17C:  BGT.W           loc_37E49E
37E180:  MOVS            R0, #dword_1C; this
37E182:  MOVS            R4, #0x1C
37E184:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E188:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37E18C:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37E19C)
37E18E:  MOV.W           R11, #0
37E192:  LDR             R3, =(g_ikChainMan_ptr - 0x37E1A2)
37E194:  MOV.W           R2, #0xFFFFFFFF
37E198:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37E19A:  STRH.W          R11, [R0,#0x18]
37E19E:  ADD             R3, PC; g_ikChainMan_ptr
37E1A0:  STRD.W          R11, R11, [R0,#0x10]
37E1A4:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37E1A6:  MOVS            R6, #3
37E1A8:  STRD.W          R4, R2, [R0,#8]
37E1AC:  ADDS            R1, #8
37E1AE:  STR             R1, [R0]
37E1B0:  LDR             R2, [R5]; CPed *
37E1B2:  ADR             R1, aCompplayercoll; "CompPlayerCollPedResp"
37E1B4:  STR             R0, [R5,#0x2C]
37E1B6:  LDR             R0, [R3]; g_ikChainMan ; int
37E1B8:  MOV.W           R3, #0x1F4
37E1BC:  STR.W           R11, [SP,#0x88+var_6C]; int
37E1C0:  STR             R6, [SP,#0x88+var_70]; int
37E1C2:  STR             R3, [SP,#0x88+var_74]; int
37E1C4:  MOV.W           R3, #0x3E800000
37E1C8:  STR             R3, [SP,#0x88+var_78]; float
37E1CA:  MOVS            R3, #1
37E1CC:  STRD.W          R11, R3, [SP,#0x88+var_80]; int
37E1D0:  MOVS            R3, #5
37E1D2:  STR             R3, [SP,#0x88+var_84]; int
37E1D4:  MOV.W           R3, #0x7D0
37E1D8:  STR             R3, [SP,#0x88+var_88]; int
37E1DA:  MOV             R3, R10; int
37E1DC:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37E1E0:  CMP.W           R9, #7
37E1E4:  BNE.W           loc_37E31E
37E1E8:  LDR             R1, [R5]; CPed *
37E1EA:  MOV             R0, R10; this
37E1EC:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
37E1F0:  MOV             R5, R0
37E1F2:  MOVS            R0, #word_10; this
37E1F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E1F8:  MOV             R1, R5; int
37E1FA:  MOV             R11, R0
37E1FC:  LDR             R5, [SP,#0x88+var_64]
37E1FE:  BLX             j__ZN23CTaskComplexHitResponseC2Ei; CTaskComplexHitResponse::CTaskComplexHitResponse(int)
37E202:  B               loc_37E31E
37E204:  MOV             R6, R5
37E206:  LDR             R5, [SP,#0x88+var_64]
37E208:  VCMPE.F32       S2, #0.0
37E20C:  MOV.W           R11, #0
37E210:  VMRS            APSR_nzcv, FPSCR
37E214:  BGT.W           loc_37E326
37E218:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37E228)
37E21C:  MOVS            R0, #5
37E21E:  MOV.W           R1, #0x7D0
37E222:  LDR             R2, [R5]; CPed *
37E224:  ADD             R12, PC; g_ikChainMan_ptr
37E226:  STRD.W          R1, R0, [SP,#0x88+var_88]; int
37E22A:  MOVS            R4, #1
37E22C:  MOV.W           LR, #3
37E230:  LDR.W           R0, [R12]; g_ikChainMan ; int
37E234:  MOV.W           R3, #0x1F4
37E238:  MOV.W           R5, #0x3E800000
37E23C:  STRD.W          R11, R4, [SP,#0x88+var_80]; int
37E240:  ADR             R1, aCompplayercoll; "CompPlayerCollPedResp"
37E242:  STR             R5, [SP,#0x88+var_78]; float
37E244:  LDR             R5, [SP,#0x88+var_64]
37E246:  STRD.W          R3, LR, [SP,#0x88+var_74]; int
37E24A:  MOV             R3, R10; int
37E24C:  STR.W           R11, [SP,#0x88+var_6C]; int
37E250:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37E254:  MOVS            R0, #dword_1C; this
37E256:  MOVS            R4, #0x1C
37E258:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E25C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37E260:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37E26E)
37E262:  MOV.W           R2, #0xFFFFFFFF
37E266:  STRH.W          R11, [R0,#0x18]
37E26A:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37E26C:  STRD.W          R4, R2, [R0,#8]
37E270:  STRD.W          R11, R11, [R0,#0x10]
37E274:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37E276:  ADDS            R1, #8
37E278:  STR             R1, [R0]
37E27A:  STR             R0, [R5,#0x2C]
37E27C:  MOV             R0, R6
37E27E:  B               loc_37E320
37E280:  CMP.W           R9, #1
37E284:  IT LS
37E286:  CMPLS           R6, #7
37E288:  BHI             loc_37E338
37E28A:  MOVS            R0, #1
37E28C:  LSLS            R0, R6
37E28E:  TST.W           R0, #0xD0
37E292:  BEQ             loc_37E338
37E294:  VCMPE.F32       S2, #0.0
37E298:  VMRS            APSR_nzcv, FPSCR
37E29C:  BGT             loc_37E338
37E29E:  STR             R5, [SP,#0x88+var_68]
37E2A0:  MOV             R0, R10; this
37E2A2:  LDR             R5, [SP,#0x88+var_64]
37E2A4:  LDR             R1, [R5]; CPed *
37E2A6:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
37E2AA:  MOV             R9, R0
37E2AC:  MOVS            R4, #0
37E2AE:  CMP.W           R8, #4
37E2B2:  MOV.W           R11, #0
37E2B6:  BEQ             loc_37E2C6
37E2B8:  MOVS            R0, #word_10; this
37E2BA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E2BE:  MOV             R1, R9; int
37E2C0:  MOV             R11, R0
37E2C2:  BLX             j__ZN23CTaskComplexHitResponseC2Ei; CTaskComplexHitResponse::CTaskComplexHitResponse(int)
37E2C6:  MOVS            R0, #dword_1C; this
37E2C8:  MOVS            R6, #0x1C
37E2CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E2CE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37E2D2:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37E2DE)
37E2D4:  MOV.W           R2, #0xFFFFFFFF
37E2D8:  LDR             R3, =(g_ikChainMan_ptr - 0x37E2E2)
37E2DA:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37E2DC:  STRH            R4, [R0,#0x18]
37E2DE:  ADD             R3, PC; g_ikChainMan_ptr
37E2E0:  STRD.W          R4, R4, [R0,#0x10]
37E2E4:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37E2E6:  STRD.W          R6, R2, [R0,#8]
37E2EA:  MOVS            R6, #3
37E2EC:  ADDS            R1, #8
37E2EE:  STR             R1, [R0]
37E2F0:  LDR             R2, [R5]; CPed *
37E2F2:  ADR             R1, aCompplayercoll; "CompPlayerCollPedResp"
37E2F4:  STR             R0, [R5,#0x2C]
37E2F6:  LDR             R0, [R3]; g_ikChainMan ; int
37E2F8:  MOV.W           R3, #0x1F4
37E2FC:  STR             R4, [SP,#0x88+var_6C]; int
37E2FE:  STR             R6, [SP,#0x88+var_70]; int
37E300:  STR             R3, [SP,#0x88+var_74]; int
37E302:  MOV.W           R3, #0x3E800000
37E306:  STR             R3, [SP,#0x88+var_78]; float
37E308:  MOVS            R3, #1
37E30A:  STRD.W          R4, R3, [SP,#0x88+var_80]; int
37E30E:  MOVS            R3, #5
37E310:  STR             R3, [SP,#0x88+var_84]; int
37E312:  MOV.W           R3, #0x7D0
37E316:  STR             R3, [SP,#0x88+var_88]; int
37E318:  MOV             R3, R10; int
37E31A:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37E31E:  LDR             R0, [SP,#0x88+var_68]; this
37E320:  MOVS            R1, #0; bool
37E322:  BLX             j__ZN10CPlayerPed14AnnoyPlayerPedEb; CPlayerPed::AnnoyPlayerPed(bool)
37E326:  STR.W           R11, [R5,#0x24]
37E32A:  ADD             SP, SP, #0x28 ; '('
37E32C:  VPOP            {D8-D15}
37E330:  ADD             SP, SP, #4
37E332:  POP.W           {R8-R11}
37E336:  POP             {R4-R7,PC}
37E338:  MOV.W           R11, #0
37E33C:  CMP             R4, #7
37E33E:  BHI.W           loc_37E49A
37E342:  LDR             R5, [SP,#0x88+var_64]
37E344:  MOVS            R0, #1
37E346:  LSLS            R0, R4
37E348:  TST.W           R0, #0xD0
37E34C:  BEQ             loc_37E326
37E34E:  MOV.W           R11, #0
37E352:  CMP.W           R8, #1
37E356:  BHI             loc_37E326
37E358:  VCMPE.F32       S0, #0.0
37E35C:  VMRS            APSR_nzcv, FPSCR
37E360:  BLT             loc_37E326
37E362:  CMP.W           R9, #7
37E366:  BNE             loc_37E326
37E368:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37E378)
37E36C:  MOVS            R0, #5
37E36E:  MOV.W           R1, #0x3E8
37E372:  LDR             R2, [R5]; CPed *
37E374:  ADD             R12, PC; g_ikChainMan_ptr
37E376:  STRD.W          R1, R0, [SP,#0x88+var_88]; int
37E37A:  MOV.W           R11, #0
37E37E:  MOVS            R4, #1
37E380:  LDR.W           R0, [R12]; g_ikChainMan ; int
37E384:  MOV.W           R3, #0x1F4
37E388:  MOV.W           R6, #0x3E800000
37E38C:  ADR             R1, aCompplayercoll; "CompPlayerCollPedResp"
37E38E:  STRD.W          R11, R4, [SP,#0x88+var_80]; int
37E392:  MOV.W           LR, #3
37E396:  STRD.W          R6, R3, [SP,#0x88+var_78]; float
37E39A:  MOV             R3, R10; int
37E39C:  STRD.W          LR, R11, [SP,#0x88+var_70]; int
37E3A0:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37E3A4:  MOVS            R0, #dword_1C; this
37E3A6:  MOVS            R4, #0x1C
37E3A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E3AC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37E3B0:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37E3B6)
37E3B2:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37E3B4:  B               loc_37E0E6
37E3B6:  VCMPE.F32       S0, #0.0
37E3BA:  VMRS            APSR_nzcv, FPSCR
37E3BE:  BLT             loc_37E424
37E3C0:  MOVS            R0, #dword_1C; this
37E3C2:  MOVS            R4, #0x1C
37E3C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E3C8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37E3CC:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37E3DC)
37E3CE:  MOV.W           R11, #0
37E3D2:  MOV.W           R2, #0xFFFFFFFF
37E3D6:  LDR             R3, =(g_ikChainMan_ptr - 0x37E3E6)
37E3D8:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37E3DA:  STRH.W          R11, [R0,#0x18]
37E3DE:  STRD.W          R11, R11, [R0,#0x10]
37E3E2:  ADD             R3, PC; g_ikChainMan_ptr
37E3E4:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37E3E6:  MOVS            R6, #3
37E3E8:  STRD.W          R4, R2, [R0,#8]
37E3EC:  ADDS            R1, #8
37E3EE:  STR             R1, [R0]
37E3F0:  LDR             R5, [SP,#0x88+var_64]
37E3F2:  ADR             R1, aCompplayercoll; "CompPlayerCollPedResp"
37E3F4:  LDR             R2, [R5]; CPed *
37E3F6:  STR             R0, [R5,#0x2C]
37E3F8:  LDR             R0, [R3]; g_ikChainMan ; int
37E3FA:  MOV.W           R3, #0x1F4
37E3FE:  STR.W           R11, [SP,#0x88+var_6C]; int
37E402:  STR             R6, [SP,#0x88+var_70]; int
37E404:  STR             R3, [SP,#0x88+var_74]; int
37E406:  MOV.W           R3, #0x3E800000
37E40A:  STR             R3, [SP,#0x88+var_78]; float
37E40C:  MOVS            R3, #1
37E40E:  STRD.W          R11, R3, [SP,#0x88+var_80]; int
37E412:  MOVS            R3, #5
37E414:  STR             R3, [SP,#0x88+var_84]; int
37E416:  MOV.W           R3, #0x7D0
37E41A:  STR             R3, [SP,#0x88+var_88]; int
37E41C:  MOV             R3, R10; int
37E41E:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37E422:  B               loc_37E326
37E424:  MOV             R4, R5
37E426:  LDR             R5, [SP,#0x88+var_64]
37E428:  VCMPE.F32       S2, #0.0
37E42C:  MOV.W           R11, #0
37E430:  VMRS            APSR_nzcv, FPSCR
37E434:  BGT.W           loc_37E326
37E438:  MOVS            R0, #dword_1C; this
37E43A:  MOVS            R5, #0x1C
37E43C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E440:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37E444:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37E452)
37E446:  MOV.W           R2, #0xFFFFFFFF
37E44A:  LDR             R3, =(g_ikChainMan_ptr - 0x37E45C)
37E44C:  MOVS            R6, #3
37E44E:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37E450:  STRH.W          R11, [R0,#0x18]
37E454:  STRD.W          R11, R11, [R0,#0x10]
37E458:  ADD             R3, PC; g_ikChainMan_ptr
37E45A:  STRD.W          R5, R2, [R0,#8]
37E45E:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37E460:  LDR             R5, [SP,#0x88+var_64]
37E462:  ADDS            R1, #8
37E464:  STR             R1, [R0]
37E466:  ADR             R1, aCompplayercoll; "CompPlayerCollPedResp"
37E468:  LDR             R2, [R5]; CPed *
37E46A:  STR             R0, [R5,#0x2C]
37E46C:  LDR             R0, [R3]; g_ikChainMan ; int
37E46E:  MOV.W           R3, #0x1F4
37E472:  STR.W           R11, [SP,#0x88+var_6C]; int
37E476:  STR             R6, [SP,#0x88+var_70]; int
37E478:  STR             R3, [SP,#0x88+var_74]; int
37E47A:  MOV.W           R3, #0x3E800000
37E47E:  STR             R3, [SP,#0x88+var_78]; float
37E480:  MOVS            R3, #1
37E482:  STRD.W          R11, R3, [SP,#0x88+var_80]; int
37E486:  MOVS            R3, #5
37E488:  STR             R3, [SP,#0x88+var_84]; int
37E48A:  MOV.W           R3, #0x7D0
37E48E:  STR             R3, [SP,#0x88+var_88]; int
37E490:  MOV             R3, R10; int
37E492:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37E496:  MOV             R0, R4
37E498:  B               loc_37E320
37E49A:  LDR             R5, [SP,#0x88+var_64]
37E49C:  B               loc_37E326
37E49E:  MOV             R0, R10; this
37E4A0:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
37E4A4:  MOV             R5, R0
37E4A6:  MOVS            R0, #off_18; this
37E4A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E4AC:  MOV             R1, R5; int
37E4AE:  MOVS            R2, #0; int
37E4B0:  MOV             R11, R0
37E4B2:  LDR             R5, [SP,#0x88+var_64]
37E4B4:  BLX             j__ZN24CTaskComplexFallAndGetUpC2Eii; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(int,int)
37E4B8:  B               loc_37E31E
