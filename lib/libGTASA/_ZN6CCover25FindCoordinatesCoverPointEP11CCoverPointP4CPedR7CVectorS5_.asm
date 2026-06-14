; =========================================================
; Game Engine Function: _ZN6CCover25FindCoordinatesCoverPointEP11CCoverPointP4CPedR7CVectorS5_
; Address            : 0x4D61A0 - 0x4D6376
; =========================================================

4D61A0:  PUSH            {R4-R7,LR}
4D61A2:  ADD             R7, SP, #0xC
4D61A4:  PUSH.W          {R8,R9,R11}
4D61A8:  VPUSH           {D8-D9}
4D61AC:  SUB             SP, SP, #0x158
4D61AE:  MOV             R5, R1
4D61B0:  LDR             R1, =(__stack_chk_guard_ptr - 0x4D61BA)
4D61B2:  MOV             R9, R3
4D61B4:  MOV             R6, R2
4D61B6:  ADD             R1, PC; __stack_chk_guard_ptr
4D61B8:  LDR             R1, [R1]; __stack_chk_guard
4D61BA:  LDR             R1, [R1]
4D61BC:  STR             R1, [SP,#0x180+var_2C]
4D61BE:  LDR             R1, [R0,#0x14]
4D61C0:  CMP             R1, R5
4D61C2:  ITT NE
4D61C4:  LDRNE           R1, [R0,#0x18]
4D61C6:  CMPNE           R1, R5
4D61C8:  BEQ             loc_4D61EA
4D61CA:  MOVS            R0, #0
4D61CC:  LDR             R1, =(__stack_chk_guard_ptr - 0x4D61D4)
4D61CE:  LDR             R2, [SP,#0x180+var_2C]
4D61D0:  ADD             R1, PC; __stack_chk_guard_ptr
4D61D2:  LDR             R1, [R1]; __stack_chk_guard
4D61D4:  LDR             R1, [R1]
4D61D6:  SUBS            R1, R1, R2
4D61D8:  ITTTT EQ
4D61DA:  ADDEQ           SP, SP, #0x158
4D61DC:  VPOPEQ          {D8-D9}
4D61E0:  POPEQ.W         {R8,R9,R11}
4D61E4:  POPEQ           {R4-R7,PC}
4D61E6:  BLX             __stack_chk_fail
4D61EA:  LDRSB.W         R1, [R0]
4D61EE:  CMP             R1, #3
4D61F0:  BEQ             loc_4D62A4
4D61F2:  CMP             R1, #2
4D61F4:  BEQ             loc_4D62AC
4D61F6:  CMP             R1, #1
4D61F8:  BNE             loc_4D61CA
4D61FA:  LDR             R5, [R0,#0x10]
4D61FC:  MOVS            R0, #0
4D61FE:  CMP             R5, #0
4D6200:  BEQ             loc_4D61CC
4D6202:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D620C)
4D6204:  LDRSH.W         R2, [R5,#0x26]
4D6208:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D620A:  VLDR            S0, [R6]
4D620E:  VLDR            S2, [R6,#4]
4D6212:  ADDS            R6, R5, #4
4D6214:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4D6216:  LDR.W           R1, [R1,R2,LSL#2]
4D621A:  MOV             R2, R6
4D621C:  LDR             R1, [R1,#0x2C]
4D621E:  VLDR            S16, [R1,#0xC]
4D6222:  VLDR            S18, [R1,#0x10]
4D6226:  LDR             R1, [R5,#0x14]
4D6228:  CMP             R1, #0
4D622A:  IT NE
4D622C:  ADDNE.W         R2, R1, #0x30 ; '0'
4D6230:  VLDR            S4, [R2]
4D6234:  VLDR            S6, [R2,#4]
4D6238:  VSUB.F32        S0, S0, S4
4D623C:  STR             R0, [SP,#0x180+var_160]
4D623E:  VSUB.F32        S2, S2, S6
4D6242:  ADD             R0, SP, #0x180+var_168; this
4D6244:  VSTR            S2, [SP,#0x180+var_164]
4D6248:  VSTR            S0, [SP,#0x180+var_168]
4D624C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4D6250:  VMAX.F32        D1, D8, D9
4D6254:  VLDR            S0, =0.4
4D6258:  VLDR            S4, [SP,#0x180+var_164]
4D625C:  VLDR            S6, [SP,#0x180+var_160]
4D6260:  LDR             R0, [R5,#0x14]
4D6262:  VADD.F32        S0, S2, S0
4D6266:  VLDR            S2, [SP,#0x180+var_168]
4D626A:  CMP             R0, #0
4D626C:  IT NE
4D626E:  ADDNE.W         R6, R0, #0x30 ; '0'
4D6272:  VLDR            S8, [R6,#4]
4D6276:  VLDR            S10, [R6,#8]
4D627A:  VMUL.F32        S4, S0, S4
4D627E:  VMUL.F32        S6, S0, S6
4D6282:  VMUL.F32        S0, S0, S2
4D6286:  VLDR            S2, [R6]
4D628A:  VSUB.F32        S4, S8, S4
4D628E:  VSUB.F32        S0, S2, S0
4D6292:  VSUB.F32        S2, S10, S6
4D6296:  VSTR            S0, [R9]
4D629A:  VSTR            S4, [R9,#4]
4D629E:  VSTR            S2, [R9,#8]
4D62A2:  B               loc_4D6372
4D62A4:  VLDR            D16, [R0,#4]
4D62A8:  LDR             R0, [R0,#0xC]
4D62AA:  B               loc_4D636A
4D62AC:  LDR             R4, [R0,#0x10]
4D62AE:  CMP             R4, #0
4D62B0:  BEQ             loc_4D61CA
4D62B2:  ADD.W           R8, SP, #0x180+var_168
4D62B6:  MOV             R0, R8; this
4D62B8:  BLX             j__ZN10CPointList5EmptyEv; CPointList::Empty(void)
4D62BC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D62CE)
4D62BE:  MOVW            R12, #0x2400
4D62C2:  LDRSH.W         R1, [R4,#0x26]
4D62C6:  MOVT            R12, #0x4974
4D62CA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D62CC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D62CE:  LDR.W           R0, [R0,R1,LSL#2]
4D62D2:  LDM.W           R6, {R1-R3}
4D62D6:  LDR             R0, [R0,#0x2C]
4D62D8:  LDR.W           LR, [R4,#0x14]
4D62DC:  ADD.W           R6, R0, #0x18
4D62E0:  ADD.W           R4, R0, #0xC
4D62E4:  STRD.W          LR, R6, [SP,#0x180+var_180]
4D62E8:  ADD.W           LR, SP, #0x180+var_178
4D62EC:  STM.W           LR, {R0,R4,R12}
4D62F0:  MOV             R0, R8
4D62F2:  BLX             j__ZN10CFormation24FindCoverPointsBehindBoxEP10CPointList7CVectorP7CMatrixPKS2_S6_S6_f; CFormation::FindCoverPointsBehindBox(CPointList *,CVector,CMatrix *,CVector const*,CVector const*,CVector const*,float)
4D62F6:  LDR             R0, [SP,#0x180+var_168]
4D62F8:  CMP             R0, #2
4D62FA:  BNE.W           loc_4D61CA
4D62FE:  LDR             R0, [R5,#0x14]
4D6300:  VLDR            S0, [SP,#0x180+var_164]
4D6304:  ADD.W           R1, R0, #0x30 ; '0'
4D6308:  CMP             R0, #0
4D630A:  VLDR            S2, [SP,#0x180+var_160]
4D630E:  VLDR            S4, [SP,#0x180+var_158]
4D6312:  VLDR            S6, [SP,#0x180+var_154]
4D6316:  IT EQ
4D6318:  ADDEQ           R1, R5, #4
4D631A:  VLDR            S8, [R1]
4D631E:  VLDR            S10, [R1,#4]
4D6322:  VSUB.F32        S4, S4, S8
4D6326:  VSUB.F32        S6, S6, S10
4D632A:  VSUB.F32        S2, S2, S10
4D632E:  VSUB.F32        S0, S0, S8
4D6332:  VMUL.F32        S4, S4, S4
4D6336:  VMUL.F32        S6, S6, S6
4D633A:  VMUL.F32        S2, S2, S2
4D633E:  VMUL.F32        S0, S0, S0
4D6342:  VADD.F32        S4, S4, S6
4D6346:  VADD.F32        S0, S0, S2
4D634A:  VSQRT.F32       S2, S4
4D634E:  VSQRT.F32       S0, S0
4D6352:  VCMPE.F32       S0, S2
4D6356:  VMRS            APSR_nzcv, FPSCR
4D635A:  ITE GE
4D635C:  ADDGE.W         R0, R8, #0x10
4D6360:  ORRLT.W         R0, R8, #4
4D6364:  VLDR            D16, [R0]
4D6368:  LDR             R0, [R0,#8]
4D636A:  STR.W           R0, [R9,#8]
4D636E:  VSTR            D16, [R9]
4D6372:  MOVS            R0, #1
4D6374:  B               loc_4D61CC
