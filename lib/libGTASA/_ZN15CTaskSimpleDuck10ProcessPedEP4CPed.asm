; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck10ProcessPedEP4CPed
; Address            : 0x54315C - 0x5433E2
; =========================================================

54315C:  PUSH            {R4-R7,LR}
54315E:  ADD             R7, SP, #0xC
543160:  PUSH.W          {R8}
543164:  MOV             R4, R0
543166:  MOV             R8, R1
543168:  LDRB            R0, [R4,#0x18]
54316A:  CBNZ            R0, loc_543182
54316C:  VMOV.F32        S0, #1.0
543170:  ADDW            R0, R8, #0x544
543174:  VLDR            S2, [R0]
543178:  VCMPE.F32       S2, S0
54317C:  VMRS            APSR_nzcv, FPSCR
543180:  BGE             loc_5431A0
543182:  LDRB            R0, [R4,#0x19]
543184:  CBNZ            R0, loc_543194
543186:  LDR             R0, [R4]
543188:  MOV             R1, R8
54318A:  MOVS            R2, #1
54318C:  MOVS            R3, #0
54318E:  LDR             R6, [R0,#0x1C]
543190:  MOV             R0, R4
543192:  BLX             R6
543194:  LDRB            R0, [R4,#0x1A]
543196:  CMP             R0, #0
543198:  BEQ.W           loc_543332
54319C:  MOVS            R6, #1
54319E:  B               loc_543340
5431A0:  LDRB            R0, [R4,#0x1A]
5431A2:  CMP             R0, #0
5431A4:  BEQ             loc_543254
5431A6:  LDR.W           R0, [R8,#0x440]
5431AA:  ADDS            R0, #4; this
5431AC:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
5431B0:  MOV             R6, R0
5431B2:  CBZ             R6, loc_5431C6
5431B4:  LDR             R0, [R6]
5431B6:  LDR             R1, [R0,#0x14]
5431B8:  MOV             R0, R6
5431BA:  BLX             R1
5431BC:  MOVW            R1, #0x19F
5431C0:  CMP             R0, R1
5431C2:  IT NE
5431C4:  MOVNE           R6, #0
5431C6:  LDR.W           R0, [R8,#0x440]
5431CA:  MOVS            R1, #1; int
5431CC:  ADDS            R0, #4; this
5431CE:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5431D2:  MOV             R5, R0
5431D4:  CBZ             R5, loc_5431E8
5431D6:  LDR             R0, [R5]
5431D8:  LDR             R1, [R0,#0x14]
5431DA:  MOV             R0, R5
5431DC:  BLX             R1
5431DE:  MOVW            R1, #0x19F
5431E2:  CMP             R0, R1
5431E4:  IT NE
5431E6:  MOVNE           R5, #0
5431E8:  CMP             R6, #0
5431EA:  BEQ.W           loc_5432F4
5431EE:  CMP             R5, R4
5431F0:  BNE.W           loc_5432F4
5431F4:  LDR             R0, [R6,#0x10]; this
5431F6:  CBZ             R0, loc_543208
5431F8:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x543202)
5431FA:  MOVS            R2, #0; void *
5431FC:  MOVS            R5, #0
5431FE:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
543200:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
543202:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543206:  STR             R5, [R6,#0x10]
543208:  LDR             R0, [R6,#0x14]
54320A:  CBZ             R0, loc_543224
54320C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x54321A)
54320E:  MOV.W           R2, #0xC1000000
543212:  STR             R2, [R0,#0x1C]
543214:  MOVS            R2, #0; void *
543216:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
543218:  LDR             R0, [R6,#0x14]; this
54321A:  MOVS            R5, #0
54321C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
54321E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543222:  STR             R5, [R6,#0x14]
543224:  MOVS            R0, #1
543226:  STRB            R0, [R6,#0x18]
543228:  STRB            R0, [R6,#0x1A]
54322A:  LDR.W           R0, [R8,#0x440]; this
54322E:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
543232:  CBZ             R0, loc_543242
543234:  LDR.W           R0, [R8,#0x440]; this
543238:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
54323C:  MOV             R1, R8; CPed *
54323E:  BLX             j__ZN17CTaskSimpleUseGun9ClearAnimEP4CPed; CTaskSimpleUseGun::ClearAnim(CPed *)
543242:  LDR.W           R0, [R8,#0x484]
543246:  ORR.W           R0, R0, #0x4000000
54324A:  STR.W           R0, [R8,#0x484]
54324E:  MOVS            R0, #0
543250:  STRB            R0, [R4,#0x1A]
543252:  B               loc_543260
543254:  LDRB.W          R0, [R8,#0x487]
543258:  LSLS            R0, R0, #0x1D
54325A:  ITT PL
54325C:  MOVPL           R0, #1
54325E:  STRBPL          R0, [R4,#0x18]
543260:  LDRB            R0, [R4,#0x19]
543262:  CBZ             R0, loc_543268
543264:  MOVS            R6, #0
543266:  B               loc_543340
543268:  LDRB            R0, [R4,#0x1B]
54326A:  CMP             R0, #0
54326C:  BEQ             loc_54330E
54326E:  LDRH            R0, [R4,#0xC]
543270:  MOVS            R1, #4
543272:  STRB.W          R1, [R4,#0x25]
543276:  CBZ             R0, loc_543296
543278:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x543280)
54327A:  LDR             R2, [R4,#8]
54327C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54327E:  ADD             R0, R2
543280:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
543282:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
543284:  CMP             R1, R0
543286:  BLS             loc_543296
543288:  LDR             R0, [R4]
54328A:  MOV             R1, R8
54328C:  MOVS            R2, #0
54328E:  MOVS            R3, #0
543290:  LDR             R6, [R0,#0x1C]
543292:  MOV             R0, R4
543294:  BLX             R6
543296:  LDRSH.W         R0, [R4,#0xE]
54329A:  CMP             R0, #1
54329C:  BLT             loc_5432C6
54329E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5432A8)
5432A0:  VLDR            S0, =50.0
5432A4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5432A6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5432A8:  VLDR            S2, [R0]
5432AC:  LDRH            R0, [R4,#0xC]
5432AE:  VDIV.F32        S0, S2, S0
5432B2:  VLDR            S2, =1000.0
5432B6:  VMUL.F32        S0, S0, S2
5432BA:  VCVT.U32.F32    S0, S0
5432BE:  VMOV            R1, S0
5432C2:  SUBS            R0, R0, R1
5432C4:  STRH            R0, [R4,#0xE]
5432C6:  LDR             R0, [R4,#0x10]
5432C8:  CBZ             R0, loc_543348
5432CA:  VLDR            S0, =0.99
5432CE:  ADD.W           R5, R4, #0x24 ; '$'
5432D2:  VLDR            S2, [R0,#0x18]
5432D6:  VCMPE.F32       S2, S0
5432DA:  VMRS            APSR_nzcv, FPSCR
5432DE:  BLE             loc_5433D6
5432E0:  LDRB            R0, [R5]
5432E2:  CMP             R0, #4
5432E4:  IT NE
5432E6:  CMPNE           R0, #2
5432E8:  BNE             loc_5433D8
5432EA:  MOV             R0, R4; this
5432EC:  MOV             R1, R8; CPed *
5432EE:  BLX             j__ZN15CTaskSimpleDuck11SetMoveAnimEP4CPed; CTaskSimpleDuck::SetMoveAnim(CPed *)
5432F2:  B               loc_5433D6
5432F4:  CMP             R6, R4
5432F6:  BNE             loc_54322A
5432F8:  CMP             R5, #0
5432FA:  BEQ             loc_54322A
5432FC:  LDR             R0, [R4]
5432FE:  MOV             R1, R8
543300:  MOVS            R2, #1
543302:  MOVS            R3, #0
543304:  MOVS            R6, #0
543306:  LDR             R5, [R0,#0x1C]
543308:  MOV             R0, R4
54330A:  BLX             R5
54330C:  B               loc_543340
54330E:  LDRB.W          R0, [R4,#0x25]
543312:  CMP             R0, #0
543314:  SUB.W           R1, R0, #1
543318:  STRB.W          R1, [R4,#0x25]
54331C:  BNE             loc_543264
54331E:  LDR             R0, [R4]
543320:  MOV             R1, R8
543322:  MOVS            R2, #1
543324:  MOVS            R3, #0
543326:  MOVS            R6, #0
543328:  LDR             R5, [R0,#0x1C]
54332A:  MOV             R0, R4
54332C:  BLX             R5
54332E:  CMP             R0, #1
543330:  BNE             loc_543340
543332:  LDR.W           R0, [R8,#0x484]
543336:  MOVS            R6, #1
543338:  BIC.W           R0, R0, #0x4000000
54333C:  STR.W           R0, [R8,#0x484]
543340:  MOV             R0, R6
543342:  POP.W           {R8}
543346:  POP             {R4-R7,PC}
543348:  LDR.W           R0, [R8,#0x18]
54334C:  MOVS            R1, #0xA
54334E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
543352:  CMP             R0, #0
543354:  MOV             R5, R4
543356:  ITT NE
543358:  MOVNE.W         R1, #0xC0000000
54335C:  STRNE           R1, [R0,#0x1C]
54335E:  MOVS            R2, #0x37 ; '7'
543360:  LDRB.W          R6, [R5,#0x24]!
543364:  MOVS            R1, #0; int
543366:  LDR.W           R0, [R8,#0x18]; int
54336A:  MOV.W           R3, #0x40800000
54336E:  CMP             R6, #0
543370:  IT EQ
543372:  MOVEQ           R2, #0x8D; unsigned int
543374:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
543378:  LDR             R1, =(_ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr - 0x543382)
54337A:  MOV             R2, R4; void *
54337C:  STR             R0, [R4,#0x10]
54337E:  ADD             R1, PC; _ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr
543380:  LDR             R1, [R1]; CTaskSimpleDuck::DeleteDuckAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
543382:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543386:  LDR.W           R0, [R8,#0x18]
54338A:  MOVS            R1, #0x8D
54338C:  CMP             R6, #0
54338E:  IT EQ
543390:  MOVEQ           R1, #0x37 ; '7'
543392:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
543396:  CBZ             R0, loc_5433D6
543398:  VLDR            S0, [R0,#0x18]
54339C:  VCMPE.F32       S0, #0.0
5433A0:  VMRS            APSR_nzcv, FPSCR
5433A4:  BLE             loc_5433D6
5433A6:  VLDR            S0, [R0,#0x1C]
5433AA:  VCMPE.F32       S0, #0.0
5433AE:  VMRS            APSR_nzcv, FPSCR
5433B2:  BLT             loc_5433D6
5433B4:  LDRB.W          R1, [R0,#0x2E]
5433B8:  LSLS            R1, R1, #0x1B
5433BA:  BMI             loc_5433CE
5433BC:  LDR.W           R0, [R8,#0x18]; int
5433C0:  MOVS            R1, #0; int
5433C2:  MOVS            R2, #3; unsigned int
5433C4:  MOV.W           R3, #0x40800000
5433C8:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5433CC:  B               loc_5433D6
5433CE:  MOVS            R1, #0xC0800000
5433D4:  STR             R1, [R0,#0x1C]
5433D6:  LDRB            R0, [R5]
5433D8:  MOVS            R6, #0
5433DA:  CMP             R0, #2
5433DC:  IT EQ
5433DE:  STRBEQ          R6, [R4,#0x1B]
5433E0:  B               loc_543340
