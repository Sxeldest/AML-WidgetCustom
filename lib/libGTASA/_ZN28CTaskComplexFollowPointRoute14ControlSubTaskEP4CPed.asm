; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute14ControlSubTaskEP4CPed
; Address            : 0x51F16C - 0x51F348
; =========================================================

51F16C:  PUSH            {R4-R7,LR}
51F16E:  ADD             R7, SP, #0xC
51F170:  PUSH.W          {R8,R9,R11}
51F174:  MOV             R4, R0
51F176:  MOV             R5, R1
51F178:  LDR             R0, [R4,#8]
51F17A:  LDR             R1, [R0]
51F17C:  LDR             R1, [R1,#0x14]
51F17E:  BLX             R1
51F180:  CMP.W           R0, #0x2C0
51F184:  BNE             loc_51F18A
51F186:  LDR             R5, [R4,#8]
51F188:  B               loc_51F1D2
51F18A:  LDR             R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x51F194)
51F18C:  LDR.W           R1, [R5,#0x440]
51F190:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
51F192:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
51F194:  LDR.W           R1, [R1,#0x278]
51F198:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
51F19A:  CMP             R1, R0
51F19C:  BGT             loc_51F1D0
51F19E:  LDR             R0, [R4,#0x20]
51F1A0:  LDR             R0, [R0]
51F1A2:  CMP             R0, #1
51F1A4:  BLT             loc_51F1D0
51F1A6:  LDRB.W          R1, [R4,#0x28]
51F1AA:  TST.W           R1, #2
51F1AE:  BNE             loc_51F1DA
51F1B0:  LSLS            R0, R1, #0x1C
51F1B2:  BPL             loc_51F1EC
51F1B4:  LDR             R0, [R4,#8]
51F1B6:  LDR             R1, [R0]
51F1B8:  LDR             R1, [R1,#0x14]
51F1BA:  BLX             R1
51F1BC:  LDRB.W          R1, [R4,#0x28]
51F1C0:  CMP             R0, #0xC8
51F1C2:  BNE             loc_51F1EC
51F1C4:  LDR             R5, [R4,#8]
51F1C6:  AND.W           R0, R1, #0x8F
51F1CA:  STRB.W          R0, [R4,#0x28]
51F1CE:  B               loc_51F1D2
51F1D0:  MOVS            R5, #0
51F1D2:  MOV             R0, R5
51F1D4:  POP.W           {R8,R9,R11}
51F1D8:  POP             {R4-R7,PC}
51F1DA:  LDR             R0, [R4]
51F1DC:  MOV             R1, R5
51F1DE:  LDR             R2, [R0,#0x2C]
51F1E0:  MOV             R0, R4
51F1E2:  POP.W           {R8,R9,R11}
51F1E6:  POP.W           {R4-R7,LR}
51F1EA:  BX              R2
51F1EC:  LSLS            R0, R1, #0x1C
51F1EE:  BPL             loc_51F186
51F1F0:  LSLS            R0, R1, #0x1A
51F1F2:  BPL             loc_51F22C
51F1F4:  LDR             R0, [R4,#8]
51F1F6:  LDR             R1, [R0]
51F1F8:  LDR             R1, [R1,#0x14]
51F1FA:  BLX             R1
51F1FC:  MOVW            R1, #0x39E
51F200:  CMP             R0, R1
51F202:  BNE             loc_51F228
51F204:  MOV             R0, R4; this
51F206:  MOV             R1, R5; CPed *
51F208:  MOVS            R2, #1; bool
51F20A:  BLX             j__ZN28CTaskComplexFollowPointRoute14CalcBlendRatioEP4CPedb; CTaskComplexFollowPointRoute::CalcBlendRatio(CPed *,bool)
51F20E:  MOV             R1, R0
51F210:  VMOV            S0, R1; float
51F214:  VCMPE.F32       S0, #0.0
51F218:  VMRS            APSR_nzcv, FPSCR
51F21C:  BGE             loc_51F2D8
51F21E:  LDR             R0, [R4,#0x14]
51F220:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
51F224:  MOV             R1, R0
51F226:  B               loc_51F2D8
51F228:  LDRB.W          R1, [R4,#0x28]
51F22C:  LSLS            R0, R1, #0x19
51F22E:  BPL             loc_51F2DE
51F230:  LDR             R0, [R4,#8]
51F232:  LDR             R1, [R0]
51F234:  LDR             R1, [R1,#0x14]
51F236:  BLX             R1
51F238:  MOVW            R1, #0x39E
51F23C:  CMP             R0, R1
51F23E:  BNE             loc_51F2DE
51F240:  MOV             R0, R4; this
51F242:  MOV             R1, R5; CPed *
51F244:  MOVS            R2, #0; bool
51F246:  BLX             j__ZN28CTaskComplexFollowPointRoute14CalcBlendRatioEP4CPedb; CTaskComplexFollowPointRoute::CalcBlendRatio(CPed *,bool)
51F24A:  MOV             R1, R0
51F24C:  VMOV            S0, R1
51F250:  VCMPE.F32       S0, #0.0
51F254:  VMRS            APSR_nzcv, FPSCR
51F258:  BGE             loc_51F2D8
51F25A:  LDR             R0, [R4,#0x14]
51F25C:  LDRB.W          R1, [R4,#0x28]
51F260:  LDR             R5, [R4,#8]
51F262:  AND.W           R1, R1, #0xBF
51F266:  STRB.W          R1, [R4,#0x28]
51F26A:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
51F26E:  MOV             R1, R0; float
51F270:  MOV             R0, R5; this
51F272:  BLX             j__ZN24CTaskSimpleGoToPointFine12SetMoveRatioEf; CTaskSimpleGoToPointFine::SetMoveRatio(float)
51F276:  MOVS            R0, #word_2C; this
51F278:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51F27C:  LDR             R6, [R4,#0x14]
51F27E:  MOV             R5, R0
51F280:  LDRD.W          R8, R9, [R4,#0x20]
51F284:  LDRB.W          R4, [R4,#0x28]
51F288:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51F28C:  LDR             R0, =(_ZTV15CTaskSimpleGoTo_ptr - 0x51F294)
51F28E:  LDR             R1, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x51F298)
51F290:  ADD             R0, PC; _ZTV15CTaskSimpleGoTo_ptr
51F292:  STR             R6, [R5,#8]
51F294:  ADD             R1, PC; _ZTV20CTaskSimpleGoToPoint_ptr
51F296:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoTo ...
51F298:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoToPoint ...
51F29A:  ADDS            R0, #8
51F29C:  STR             R0, [R5]
51F29E:  ADD.W           R0, R9, R9,LSL#1
51F2A2:  LDRB            R2, [R5,#0x1C]
51F2A4:  LDRB            R3, [R5,#0x1D]
51F2A6:  ADD.W           R0, R8, R0,LSL#2
51F2AA:  VLDR            D16, [R0,#4]
51F2AE:  LDR             R0, [R0,#0xC]
51F2B0:  STR             R0, [R5,#0x14]
51F2B2:  ADD.W           R0, R1, #8
51F2B6:  STR             R0, [R5]
51F2B8:  MOV.W           R0, #0x3F000000
51F2BC:  STR             R0, [R5,#0x18]
51F2BE:  MOVS            R0, #8
51F2C0:  AND.W           R0, R0, R4,LSL#3
51F2C4:  AND.W           R1, R3, #0xE0
51F2C8:  ORRS            R0, R1
51F2CA:  STRB            R0, [R5,#0x1D]
51F2CC:  AND.W           R0, R2, #0xC0
51F2D0:  STRB            R0, [R5,#0x1C]
51F2D2:  VSTR            D16, [R5,#0xC]
51F2D6:  B               loc_51F1D2
51F2D8:  LDR             R0, [R4,#8]; this
51F2DA:  BLX             j__ZN24CTaskSimpleGoToPointFine12SetMoveRatioEf; CTaskSimpleGoToPointFine::SetMoveRatio(float)
51F2DE:  LDRB.W          R0, [R4,#0x28]
51F2E2:  AND.W           R0, R0, #0x30 ; '0'
51F2E6:  CMP             R0, #0x10
51F2E8:  BNE.W           loc_51F186
51F2EC:  MOV             R0, R4; this
51F2EE:  MOV             R1, R5; CPed *
51F2F0:  MOVS            R2, #1; bool
51F2F2:  BLX             j__ZN28CTaskComplexFollowPointRoute14CalcBlendRatioEP4CPedb; CTaskComplexFollowPointRoute::CalcBlendRatio(CPed *,bool)
51F2F6:  MOV             R6, R0
51F2F8:  VMOV            S0, R6
51F2FC:  VCMPE.F32       S0, #0.0
51F300:  VMRS            APSR_nzcv, FPSCR
51F304:  BLT.W           loc_51F186
51F308:  LDRB.W          R1, [R4,#0x28]
51F30C:  LDR             R0, [R4,#8]
51F30E:  AND.W           R1, R1, #0x8F
51F312:  ORR.W           R1, R1, #0x20 ; ' '
51F316:  STRB.W          R1, [R4,#0x28]
51F31A:  LDR             R1, [R0]
51F31C:  LDR             R1, [R1,#0x14]
51F31E:  BLX             R1
51F320:  MOVW            R1, #0x39E
51F324:  CMP             R0, R1
51F326:  BNE             loc_51F332
51F328:  LDR             R0, [R4,#8]; this
51F32A:  MOV             R1, R6; float
51F32C:  BLX             j__ZN24CTaskSimpleGoToPointFine12SetMoveRatioEf; CTaskSimpleGoToPointFine::SetMoveRatio(float)
51F330:  B               loc_51F186
51F332:  MOV             R0, R4; this
51F334:  MOVW            R1, #0x39E; int
51F338:  MOV             R2, R5; CPed *
51F33A:  BLX             j__ZN28CTaskComplexFollowPointRoute13CreateSubTaskEiP4CPed; CTaskComplexFollowPointRoute::CreateSubTask(int,CPed *)
51F33E:  MOV             R1, R6; float
51F340:  MOV             R5, R0
51F342:  BLX             j__ZN24CTaskSimpleGoToPointFine12SetMoveRatioEf; CTaskSimpleGoToPointFine::SetMoveRatio(float)
51F346:  B               loc_51F1D2
