; =========================================================
; Game Engine Function: _ZN9ES2Shader16SetBonesConstantEiPKf
; Address            : 0x1CD224 - 0x1CD35A
; =========================================================

1CD224:  PUSH            {R4-R7,LR}
1CD226:  ADD             R7, SP, #0xC
1CD228:  PUSH.W          {R8,R9,R11}
1CD22C:  MOV             R9, R0
1CD22E:  LDR             R0, =(renderQueue_ptr - 0x1CD238)
1CD230:  MOV             R8, R2
1CD232:  MOV             R6, R1
1CD234:  ADD             R0, PC; renderQueue_ptr
1CD236:  LSLS            R5, R6, #4
1CD238:  LDR             R0, [R0]; renderQueue
1CD23A:  LDR             R0, [R0]; this
1CD23C:  LDR.W           R2, [R0,#0x270]
1CD240:  LDR.W           R1, [R0,#0x264]
1CD244:  ADD.W           R2, R2, R6,LSL#4
1CD248:  ADDS            R2, #0x43 ; 'C'
1CD24A:  CMP             R2, R1
1CD24C:  BLS             loc_1CD25A
1CD24E:  BLX             j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1CD252:  LDR             R0, =(renderQueue_ptr - 0x1CD258)
1CD254:  ADD             R0, PC; renderQueue_ptr
1CD256:  LDR             R0, [R0]; renderQueue
1CD258:  LDR             R0, [R0]
1CD25A:  LDR             R1, =(renderQueue_ptr - 0x1CD264)
1CD25C:  LDR.W           R2, [R0,#0x274]
1CD260:  ADD             R1, PC; renderQueue_ptr
1CD262:  LDR             R4, [R1]; renderQueue
1CD264:  MOVS            R1, #0x11
1CD266:  STR.W           R1, [R0,#0x278]
1CD26A:  STR             R1, [R2]
1CD26C:  MOVS            R2, #6
1CD26E:  LDR.W           R1, [R0,#0x274]
1CD272:  ADDS            R1, #4
1CD274:  STR.W           R1, [R0,#0x274]
1CD278:  LDR             R0, [R4]
1CD27A:  LDR.W           R1, [R0,#0x274]
1CD27E:  STR.W           R9, [R1]
1CD282:  LDR.W           R1, [R0,#0x274]
1CD286:  ADDS            R1, #4
1CD288:  STR.W           R1, [R0,#0x274]
1CD28C:  LDR             R0, [R4]
1CD28E:  LDR.W           R1, [R0,#0x274]
1CD292:  STR             R2, [R1]
1CD294:  MOV             R2, R5; size_t
1CD296:  LDR.W           R1, [R0,#0x274]
1CD29A:  ADDS            R1, #4
1CD29C:  STR.W           R1, [R0,#0x274]
1CD2A0:  LDR             R0, [R4]
1CD2A2:  LDR.W           R1, [R0,#0x274]
1CD2A6:  STR             R6, [R1]
1CD2A8:  LDR.W           R1, [R0,#0x274]
1CD2AC:  ADDS            R1, #4
1CD2AE:  STR.W           R1, [R0,#0x274]
1CD2B2:  LDR             R6, [R4]
1CD2B4:  MOV             R1, R8; void *
1CD2B6:  LDR.W           R0, [R6,#0x274]
1CD2BA:  ADDS            R0, #3
1CD2BC:  BIC.W           R0, R0, #3; void *
1CD2C0:  STR.W           R0, [R6,#0x274]
1CD2C4:  BLX             memcpy_1
1CD2C8:  LDR.W           R0, [R6,#0x274]
1CD2CC:  MOVS            R2, #8
1CD2CE:  ADD             R0, R5
1CD2D0:  STR.W           R0, [R6,#0x274]
1CD2D4:  LDR             R0, [R4]
1CD2D6:  LDR.W           R1, [R0,#0x274]
1CD2DA:  STR             R2, [R1]
1CD2DC:  LDR.W           R1, [R0,#0x274]
1CD2E0:  ADDS            R1, #4
1CD2E2:  STR.W           R1, [R0,#0x274]
1CD2E6:  LDR             R4, [R4]
1CD2E8:  LDRB.W          R0, [R4,#0x259]
1CD2EC:  CMP             R0, #0
1CD2EE:  ITT NE
1CD2F0:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CD2F4:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1CD2F8:  LDRD.W          R1, R2, [R4,#0x270]
1CD2FC:  ADD.W           R0, R4, #0x270
1CD300:  DMB.W           ISH
1CD304:  SUBS            R1, R2, R1
1CD306:  LDREX.W         R2, [R0]
1CD30A:  ADD             R2, R1
1CD30C:  STREX.W         R3, R2, [R0]
1CD310:  CMP             R3, #0
1CD312:  BNE             loc_1CD306
1CD314:  DMB.W           ISH
1CD318:  LDRB.W          R0, [R4,#0x259]
1CD31C:  CMP             R0, #0
1CD31E:  ITT NE
1CD320:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CD324:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1CD328:  LDRB.W          R0, [R4,#0x258]
1CD32C:  CMP             R0, #0
1CD32E:  ITT EQ
1CD330:  MOVEQ           R0, R4; this
1CD332:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1CD336:  LDR.W           R1, [R4,#0x270]
1CD33A:  LDR.W           R0, [R4,#0x264]
1CD33E:  ADD.W           R1, R1, #0x400
1CD342:  CMP             R1, R0
1CD344:  BLS             loc_1CD354
1CD346:  MOV             R0, R4; this
1CD348:  POP.W           {R8,R9,R11}
1CD34C:  POP.W           {R4-R7,LR}
1CD350:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
1CD354:  POP.W           {R8,R9,R11}
1CD358:  POP             {R4-R7,PC}
