; =========================================================
; Game Engine Function: _Z20RpUVAnimPluginAttachv
; Address            : 0x1CA318 - 0x1CA37A
; =========================================================

1CA318:  PUSH            {R4,R6,R7,LR}
1CA31A:  ADD             R7, SP, #8
1CA31C:  SUB             SP, SP, #8
1CA31E:  LDR             R2, =(sub_1CA3A0+1 - 0x1CA32C)
1CA320:  MOVS            R0, #0; int
1CA322:  LDR             R3, =(sub_1CA424+1 - 0x1CA330)
1CA324:  MOVW            R1, #0x135; unsigned int
1CA328:  ADD             R2, PC; sub_1CA3A0 ; void *(*)(void *, int, int)
1CA32A:  MOVS            R4, #0
1CA32C:  ADD             R3, PC; sub_1CA424 ; void *(*)(void *, int, int)
1CA32E:  BLX             j__Z22RwEngineRegisterPluginijPFPvS_iiES1_; RwEngineRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int))
1CA332:  CMP             R0, #0
1CA334:  BLT             loc_1CA374
1CA336:  LDR             R2, =(loc_1CA468+1 - 0x1CA344)
1CA338:  MOVW            R1, #0x135; unsigned int
1CA33C:  LDR             R3, =(sub_1CA48C+1 - 0x1CA346)
1CA33E:  LDR             R0, =(loc_1CA51C+1 - 0x1CA348)
1CA340:  ADD             R2, PC; loc_1CA468 ; void *(*)(void *, int, int)
1CA342:  ADD             R3, PC; sub_1CA48C ; void *(*)(void *, int, int)
1CA344:  ADD             R0, PC; loc_1CA51C
1CA346:  STR             R0, [SP,#0x10+var_10]; void *(*)(void *, const void *, int, int)
1CA348:  MOVS            R0, #0x28 ; '('; int
1CA34A:  BLX             j__Z24RpMaterialRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpMaterialRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
1CA34E:  LDR             R1, =(RpUVAnimMaterialGlobals_ptr - 0x1CA356)
1CA350:  LDR             R2, =(sub_1CA710+1 - 0x1CA35A)
1CA352:  ADD             R1, PC; RpUVAnimMaterialGlobals_ptr
1CA354:  LDR             R3, =(loc_1CA850+1 - 0x1CA35E)
1CA356:  ADD             R2, PC; sub_1CA710
1CA358:  LDR             R4, [R1]; RpUVAnimMaterialGlobals
1CA35A:  ADD             R3, PC; loc_1CA850
1CA35C:  LDR             R1, =(sub_1CA5DC+1 - 0x1CA362)
1CA35E:  ADD             R1, PC; sub_1CA5DC
1CA360:  STR             R0, [R4]
1CA362:  MOVW            R0, #0x135
1CA366:  BLX             j__Z30RpMaterialRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpMaterialRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
1CA36A:  LDR             R1, [R4]
1CA36C:  ORRS            R0, R1
1CA36E:  MOVS            R1, #1
1CA370:  EOR.W           R4, R1, R0,LSR#31
1CA374:  MOV             R0, R4
1CA376:  ADD             SP, SP, #8
1CA378:  POP             {R4,R6,R7,PC}
