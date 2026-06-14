; =========================================================
; Game Engine Function: _ZN6CRopes12RegisterRopeEjj7CVectorbhbP9CPhysicali
; Address            : 0x41411C - 0x4145D4
; =========================================================

41411C:  PUSH            {R4-R7,LR}
41411E:  ADD             R7, SP, #0xC
414120:  PUSH.W          {R8-R11}
414124:  SUB             SP, SP, #0x24
414126:  LDR.W           R6, =(_ZN6CRopes6aRopesE_ptr - 0x414132)
41412A:  LDR.W           R12, [R7,#arg_0]
41412E:  ADD             R6, PC; _ZN6CRopes6aRopesE_ptr
414130:  LDR.W           LR, [R7,#arg_8]
414134:  LDR             R4, [R6]; CRopes::aRopes ...
414136:  LDRB.W          R10, [R4,#(byte_9631BD - 0x962E98)]
41413A:  LDR.W           R4, [R4,#(dword_963198 - 0x962E98)]
41413E:  CMP             R4, R0
414140:  BNE             loc_41414E
414142:  CMP.W           R10, #0
414146:  BEQ             loc_41414E
414148:  MOV.W           R9, #0
41414C:  B               loc_41423E
41414E:  LDR.W           R4, =(_ZN6CRopes6aRopesE_ptr - 0x414156)
414152:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414154:  LDR             R4, [R4]; CRopes::aRopes ...
414156:  LDRB.W          R6, [R4,#(byte_9634E5 - 0x962E98)]
41415A:  LDR.W           R4, [R4,#(dword_9634C0 - 0x962E98)]
41415E:  CMP             R4, R0
414160:  BNE             loc_41416A
414162:  CBZ             R6, loc_41416A
414164:  MOV.W           R9, #1
414168:  B               loc_41423E
41416A:  LDR.W           R4, =(_ZN6CRopes6aRopesE_ptr - 0x414172)
41416E:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414170:  LDR             R4, [R4]; CRopes::aRopes ...
414172:  LDRB.W          R8, [R4,#(byte_96380D - 0x962E98)]
414176:  LDR.W           R4, [R4,#(dword_9637E8 - 0x962E98)]
41417A:  CMP             R4, R0
41417C:  BNE             loc_41418A
41417E:  CMP.W           R8, #0
414182:  BEQ             loc_41418A
414184:  MOV.W           R9, #2
414188:  B               loc_41423E
41418A:  LDR.W           R4, =(_ZN6CRopes6aRopesE_ptr - 0x414192)
41418E:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414190:  LDR             R4, [R4]; CRopes::aRopes ...
414192:  LDRB.W          R11, [R4,#(byte_963B35 - 0x962E98)]
414196:  LDR.W           R4, [R4,#(dword_963B10 - 0x962E98)]
41419A:  CMP             R4, R0
41419C:  BNE             loc_4141AA
41419E:  CMP.W           R11, #0
4141A2:  BEQ             loc_4141AA
4141A4:  MOV.W           R9, #3
4141A8:  B               loc_41423E
4141AA:  LDR.W           R4, =(_ZN6CRopes6aRopesE_ptr - 0x4141B2)
4141AE:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
4141B0:  LDR             R4, [R4]; CRopes::aRopes ...
4141B2:  LDRB.W          R5, [R4,#(byte_963E5D - 0x962E98)]
4141B6:  LDR.W           R4, [R4,#(dword_963E38 - 0x962E98)]
4141BA:  CMP             R4, R0
4141BC:  BNE             loc_4141C6
4141BE:  CBZ             R5, loc_4141C6
4141C0:  MOV.W           R9, #4
4141C4:  B               loc_41423E
4141C6:  LDR.W           R4, =(_ZN6CRopes6aRopesE_ptr - 0x4141D4)
4141CA:  STR             R5, [SP,#0x40+var_20]
4141CC:  MOVW            R5, #(byte_964185 - 0x962E98)
4141D0:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
4141D2:  LDR             R4, [R4]; CRopes::aRopes ...
4141D4:  LDRB.W          R9, [R4,R5]
4141D8:  MOVW            R5, #(dword_964160 - 0x962E98)
4141DC:  LDR             R4, [R4,R5]
4141DE:  CMP             R4, R0
4141E0:  BNE             loc_4141EE
4141E2:  CMP.W           R9, #0
4141E6:  BEQ             loc_4141EE
4141E8:  MOV.W           R9, #5
4141EC:  B               loc_41423E
4141EE:  LDR.W           R4, =(_ZN6CRopes6aRopesE_ptr - 0x4141FE)
4141F2:  MOVW            R5, #(byte_9644AD - 0x962E98)
4141F6:  STR.W           R9, [SP,#0x40+var_24]
4141FA:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
4141FC:  LDR             R4, [R4]; CRopes::aRopes ...
4141FE:  LDRB.W          R9, [R4,R5]
414202:  MOVW            R5, #(dword_964488 - 0x962E98)
414206:  LDR             R4, [R4,R5]
414208:  CMP             R4, R0
41420A:  BNE             loc_414218
41420C:  CMP.W           R9, #0
414210:  BEQ             loc_414218
414212:  MOV.W           R9, #6
414216:  B               loc_41423E
414218:  LDR.W           R4, =(_ZN6CRopes6aRopesE_ptr - 0x41422C)
41421C:  MOVW            R5, #(byte_9647D5 - 0x962E98)
414220:  STR.W           R9, [SP,#0x40+var_34]
414224:  MOV.W           R9, #7
414228:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
41422A:  LDR             R4, [R4]; CRopes::aRopes ...
41422C:  LDRB            R5, [R4,R5]
41422E:  STR             R5, [SP,#0x40+var_28]
414230:  MOVW            R5, #(dword_9647B0 - 0x962E98)
414234:  LDR             R4, [R4,R5]
414236:  CMP             R4, R0
414238:  LDR             R4, [SP,#0x40+var_28]
41423A:  BNE             loc_4142A4
41423C:  CBZ             R4, loc_4142A4
41423E:  LDR.W           R0, =(_ZN6CRopes6aRopesE_ptr - 0x41424E)
414242:  MOV.W           R1, #0x328
414246:  SMULBB.W        R4, R9, R1
41424A:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
41424C:  LDR             R5, [R0]; CRopes::aRopes ...
41424E:  SMLABB.W        R0, R9, R1, R5; this
414252:  MOVS            R1, #0
414254:  STR             R2, [R5,R4]
414256:  STRD.W          R3, R12, [R0,#4]
41425A:  MOV             R5, R0
41425C:  STRD.W          R1, R1, [R0,#0x180]
414260:  STR.W           R1, [R0,#0x188]
414264:  LDRB.W          R4, [R0,#0x327]
414268:  STRB.W          LR, [R0,#0x324]
41426C:  ADD.W           LR, R0, #0x324
414270:  ORR.W           R6, R4, #1
414274:  MOV.W           R4, #0xFFFFFFFF
414278:  STRB.W          R6, [R0,#0x327]
41427C:  STM.W           R5, {R2,R3,R12}
414280:  ADDS            R4, #1
414282:  STRD.W          R1, R1, [R5,#0x180]
414286:  STR.W           R1, [R5,#0x188]
41428A:  ADDS            R5, #0xC
41428C:  LDRB.W          R6, [LR]
414290:  CMP             R4, R6
414292:  BLT             loc_41427C
414294:  BLX             j__ZN5CRope23CreateHookObjectForRopeEv; CRope::CreateHookObjectForRope(void)
414298:  MOVS            R4, #1
41429A:  MOV             R0, R4
41429C:  ADD             SP, SP, #0x24 ; '$'
41429E:  POP.W           {R8-R11}
4142A2:  POP             {R4-R7,PC}
4142A4:  CMP             R6, #0
4142A6:  MOV.W           R6, #0
4142AA:  IT EQ
4142AC:  MOVEQ           R6, #1
4142AE:  CMP.W           R10, #0
4142B2:  MOV.W           R5, #0
4142B6:  MOV.W           R4, #0
4142BA:  IT EQ
4142BC:  MOVEQ           R5, #1
4142BE:  ORR.W           R5, R5, R6
4142C2:  MOV             R6, R10
4142C4:  STR             R5, [SP,#0x40+var_30]
4142C6:  IT NE
4142C8:  MOVNE           R6, #1
4142CA:  CMP             R5, #0
4142CC:  MOV.W           R5, #0
4142D0:  IT EQ
4142D2:  MOVEQ           R6, #2
4142D4:  CMP.W           R8, #0
4142D8:  STR             R6, [SP,#0x40+var_2C]
4142DA:  IT EQ
4142DC:  MOVEQ           R5, #1
4142DE:  LDR             R6, [SP,#0x40+var_30]
4142E0:  ORRS            R6, R5
4142E2:  LDR             R5, [SP,#0x40+var_2C]
4142E4:  STR             R6, [SP,#0x40+var_38]
4142E6:  IT EQ
4142E8:  MOVEQ           R5, #3
4142EA:  CMP.W           R11, #0
4142EE:  STR             R5, [SP,#0x40+var_2C]
4142F0:  MOV.W           R5, #0
4142F4:  IT EQ
4142F6:  MOVEQ           R5, #1
4142F8:  ORRS.W          R8, R6, R5
4142FC:  LDR             R6, [SP,#0x40+var_2C]
4142FE:  STR.W           R8, [SP,#0x40+var_3C]
414302:  IT EQ
414304:  MOVEQ           R6, #4
414306:  LDR             R5, [SP,#0x40+var_20]
414308:  CMP             R5, #0
41430A:  MOV.W           R5, #0
41430E:  IT EQ
414310:  MOVEQ           R5, #1
414312:  ORRS.W          R11, R8, R5
414316:  STR.W           R11, [SP,#0x40+var_2C]
41431A:  IT EQ
41431C:  MOVEQ           R6, #5
41431E:  LDR             R5, [SP,#0x40+var_24]
414320:  MOV.W           R8, #0
414324:  CMP             R5, #0
414326:  IT EQ
414328:  MOVEQ.W         R8, #1
41432C:  ORR.W           R8, R8, R11
414330:  MOV.W           R11, #0
414334:  ANDS.W          R5, R8, #1
414338:  STR             R5, [SP,#0x40+var_20]
41433A:  IT EQ
41433C:  MOVEQ           R6, #6
41433E:  LDR             R5, [SP,#0x40+var_34]
414340:  CMP             R5, #0
414342:  IT EQ
414344:  MOVEQ.W         R11, #1
414348:  ORR.W           R5, R8, R11
41434C:  ANDS.W          R8, R5, #1
414350:  LDR             R5, =(_ZN6CRopes6aRopesE_ptr - 0x41435E)
414352:  IT NE
414354:  MOVNE           R9, R6
414356:  CMP.W           R10, #0
41435A:  ADD             R5, PC; _ZN6CRopes6aRopesE_ptr
41435C:  MOVW            R10, #0x12ED
414360:  LDR             R5, [R5]; CRopes::aRopes ...
414362:  ADDW            R11, R5, #0x64D
414366:  IT EQ
414368:  ADDWEQ          R11, R5, #0x325
41436C:  LDR             R6, [SP,#0x40+var_30]
41436E:  CMP             R6, #0
414370:  IT EQ
414372:  ADDWEQ          R11, R5, #0x975
414376:  LDR             R6, [SP,#0x40+var_38]
414378:  CMP             R6, #0
41437A:  IT EQ
41437C:  ADDWEQ          R11, R5, #0xC9D
414380:  LDR             R6, [SP,#0x40+var_3C]
414382:  CMP             R6, #0
414384:  IT EQ
414386:  ADDWEQ          R11, R5, #0xFC5
41438A:  LDR             R6, [SP,#0x40+var_2C]
41438C:  CMP             R6, #0
41438E:  IT EQ
414390:  ADDEQ.W         R11, R5, R10
414394:  LDR             R6, [SP,#0x40+var_20]
414396:  MOVW            R10, #0x1615
41439A:  CMP             R6, #0
41439C:  MOVW            R6, #0x193D
4143A0:  IT EQ
4143A2:  ADDEQ.W         R11, R5, R10
4143A6:  CMP.W           R8, #0
4143AA:  IT EQ
4143AC:  ADDEQ.W         R11, R5, R6
4143B0:  BNE             loc_4143BA
4143B2:  LDR             R5, [SP,#0x40+var_28]
4143B4:  CMP             R5, #0
4143B6:  BNE.W           loc_41429A
4143BA:  LDR             R5, =(_ZN6CRopes6aRopesE_ptr - 0x4143CC)
4143BC:  MOV.W           R8, #0x328
4143C0:  MUL.W           R6, R9, R8
4143C4:  LDR.W           R10, [R7,#arg_10]
4143C8:  ADD             R5, PC; _ZN6CRopes6aRopesE_ptr
4143CA:  LDR             R5, [R5]; CRopes::aRopes ...
4143CC:  MLA.W           R8, R9, R8, R5
4143D0:  STR             R2, [R5,R6]
4143D2:  STRD.W          R4, R4, [R8,#0x180]
4143D6:  MOV             R6, R8
4143D8:  STR.W           R4, [R8,#0x188]
4143DC:  LDRB.W          R2, [R8,#0x327]
4143E0:  STRB.W          LR, [R8,#0x324]
4143E4:  STRD.W          R0, R4, [R8,#0x300]
4143E8:  AND.W           R0, R2, #0xF8
4143EC:  LDR             R2, [R7,#arg_C]
4143EE:  STRD.W          R4, R4, [R8,#0x314]
4143F2:  ORR.W           R0, R0, R2,LSL#2
4143F6:  ORR.W           R0, R0, #1
4143FA:  STRB.W          R0, [R8,#0x327]
4143FE:  STR.W           R12, [R6,#8]!
414402:  MOV             R12, R8
414404:  STR.W           R3, [R12,#4]!
414408:  MOV             R0, R10; this
41440A:  CBZ             R0, loc_41441E
41440C:  LDRB.W          R2, [R0,#0x3A]
414410:  AND.W           R2, R2, #7
414414:  CMP             R2, #2
414416:  BNE             loc_41441E
414418:  VLDR            S0, =0.9
41441C:  B               loc_414422
41441E:  VMOV.F32        S0, #0.5
414422:  LDR             R2, =(_ZN6CRopes6aRopesE_ptr - 0x414430)
414424:  MOV.W           LR, #0x328
414428:  LDR             R4, [R7,#arg_14]
41442A:  CMP             R0, #0
41442C:  ADD             R2, PC; _ZN6CRopes6aRopesE_ptr
41442E:  LDR             R5, [R7,#arg_4]
414430:  LDR             R2, [R2]; CRopes::aRopes ...
414432:  MLA.W           R3, R9, LR, R2
414436:  MOV.W           R2, #0
41443A:  STR.W           R0, [R3,#0x310]
41443E:  STRB.W          R2, [R3,#0x326]
414442:  VSTR            S0, [R3,#0x31C]
414446:  STRB.W          R1, [R11]
41444A:  BEQ             loc_414460
41444C:  ADD.W           R1, R3, #0x310; CEntity **
414450:  MOV             R10, R12
414452:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
414456:  LDRB.W          R1, [R11]
41445A:  MOV.W           LR, #0x328
41445E:  MOV             R12, R10
414460:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x41446A)
414462:  CMP             R5, #0
414464:  LDR             R2, =(_ZN6CRopes6aRopesE_ptr - 0x41446C)
414466:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
414468:  ADD             R2, PC; _ZN6CRopes6aRopesE_ptr
41446A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
41446C:  LDR             R2, [R2]; CRopes::aRopes ...
41446E:  MLA.W           R2, R9, LR, R2
414472:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
414474:  IT NE
414476:  ADDNE           R5, R0, R4
414478:  MOV             R0, #0xFFFFFFFB
41447C:  UXTAB.W         R0, R0, R1
414480:  CMP             R0, #3
414482:  STR.W           R5, [R2,#0x320]
414486:  BCS             loc_414492
414488:  VLDR            S0, =2.1935
41448C:  VLDR            S2, =68.0
414490:  B               loc_4144F8
414492:  UXTB            R0, R1
414494:  CMP             R0, #3
414496:  BEQ             loc_4144C6
414498:  CMP             R0, #4
41449A:  BNE             loc_4144F0
41449C:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x4144AC)
41449E:  MOV.W           R1, #0x328
4144A2:  MOVS            R2, #0
4144A4:  VLDR            S0, =1.6129
4144A8:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
4144AA:  MOVT            R2, #0x4248
4144AE:  LDR             R0, [R0]; CRopes::aRopes ...
4144B0:  MLA.W           R0, R9, R1, R0
4144B4:  MOV             R1, #0x3FCE739D
4144BC:  STRD.W          R2, R1, [R0,#0x308]
4144C0:  ADD.W           R0, R0, #0x30C
4144C4:  B               loc_41451A
4144C6:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x4144D6)
4144C8:  MOV.W           R1, #0x328
4144CC:  MOVS            R2, #0
4144CE:  VLDR            S0, =0.32258
4144D2:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
4144D4:  MOVT            R2, #0x4120
4144D8:  LDR             R0, [R0]; CRopes::aRopes ...
4144DA:  MLA.W           R0, R9, R1, R0
4144DE:  MOV             R1, #0x3EA5294A
4144E6:  STRD.W          R2, R1, [R0,#0x308]
4144EA:  ADD.W           R0, R0, #0x30C
4144EE:  B               loc_414560
4144F0:  VMOV.F32        S2, #20.0
4144F4:  VLDR            S0, =0.64516
4144F8:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x414506)
4144FA:  MOV.W           R2, #0x328
4144FE:  AND.W           R1, R1, #0xFC
414502:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
414504:  CMP             R1, #4
414506:  LDR             R0, [R0]; CRopes::aRopes ...
414508:  MLA.W           R0, R9, R2, R0
41450C:  VSTR            S2, [R0,#0x308]
414510:  VSTR            S0, [R0,#0x30C]
414514:  ADD.W           R0, R0, #0x30C
414518:  BNE             loc_414560
41451A:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x41452C)
41451C:  MOV.W           R2, #0x328
414520:  MUL.W           R3, R9, R2
414524:  VLDR            S2, [R6]
414528:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
41452A:  VSUB.F32        S0, S2, S0
41452E:  LDR             R6, [R1]; CRopes::aRopes ...
414530:  MLA.W           R1, R9, R2, R6
414534:  LDR.W           R2, [R12]
414538:  LDR             R3, [R6,R3]
41453A:  MOVS            R6, #0
41453C:  VSTR            S0, [R1,#0x14]
414540:  STRD.W          R3, R2, [R1,#0xC]
414544:  VLDR            S2, [R0]
414548:  ADDS            R5, R1, R6
41454A:  ADDS            R6, #0xC
41454C:  VSUB.F32        S0, S0, S2
414550:  CMP.W           R6, #0x168
414554:  STRD.W          R3, R2, [R5,#0x18]
414558:  VSTR            S0, [R5,#0x20]
41455C:  BNE             loc_414544
41455E:  B               loc_4145D0
414560:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414570)
414562:  MOV.W           R2, #0x328
414566:  VLDR            S4, =0.0
41456A:  MOVS            R3, #0
41456C:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
41456E:  MOVS            R6, #0
414570:  LDR             R1, [R1]; CRopes::aRopes ...
414572:  MLA.W           R1, R9, R2, R1
414576:  MOVS            R2, #1
414578:  VLDR            S2, [R1]
41457C:  LSLS            R5, R2, #0x1F
41457E:  BEQ             loc_41458E
414580:  B               loc_41459E
414582:  ADDS            R2, #1
414584:  VLDR            S0, [R0]
414588:  ADDS            R6, #0xC
41458A:  LSLS            R5, R2, #0x1F
41458C:  BNE             loc_41459E
41458E:  VSUB.F32        S2, S2, S0
414592:  ADDS            R5, R1, R6
414594:  VLDR            S6, [R5,#4]
414598:  VLDR            S0, [R5,#8]
41459C:  B               loc_4145B4
41459E:  ADDS            R5, R1, R6
4145A0:  VADD.F32        S2, S0, S2
4145A4:  VLDR            S6, [R5,#4]
4145A8:  VLDR            S8, [R5,#8]
4145AC:  VADD.F32        S6, S6, S4
4145B0:  VADD.F32        S0, S8, S4
4145B4:  ADDS            R5, R1, R6
4145B6:  CMP.W           R6, #0x168
4145BA:  VSTR            S2, [R5,#0xC]
4145BE:  VSTR            S6, [R5,#0x10]
4145C2:  VSTR            S0, [R5,#0x14]
4145C6:  STRD.W          R3, R3, [R5,#0x18C]
4145CA:  STR.W           R3, [R5,#0x194]
4145CE:  BNE             loc_414582
4145D0:  MOV             R0, R8
4145D2:  B               loc_414294
