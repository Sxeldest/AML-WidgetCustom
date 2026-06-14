; =========================================================
; Game Engine Function: _Z12HandleDecalZt
; Address            : 0x1B02E0 - 0x1B0580
; =========================================================

1B02E0:  PUSH            {R4,R6,R7,LR}
1B02E2:  ADD             R7, SP, #8
1B02E4:  LDR             R1, =(textureDecalZ_ptr - 0x1B02EC)
1B02E6:  LSLS            R0, R0, #0x16
1B02E8:  ADD             R1, PC; textureDecalZ_ptr
1B02EA:  LDR             R1, [R1]; textureDecalZ
1B02EC:  LDR             R1, [R1]
1B02EE:  BMI.W           loc_1B0440
1B02F2:  CMP             R1, #0
1B02F4:  IT EQ
1B02F6:  POPEQ           {R4,R6,R7,PC}
1B02F8:  LDR             R0, =(renderQueue_ptr - 0x1B0300)
1B02FA:  MOVS            R3, #0x28 ; '('
1B02FC:  ADD             R0, PC; renderQueue_ptr
1B02FE:  LDR             R0, [R0]; renderQueue
1B0300:  LDR             R1, [R0]
1B0302:  LDR.W           R2, [R1,#0x274]
1B0306:  STR.W           R3, [R1,#0x278]
1B030A:  STR             R3, [R2]
1B030C:  MOVS            R3, #0
1B030E:  LDR.W           R2, [R1,#0x274]
1B0312:  ADDS            R2, #4
1B0314:  STR.W           R2, [R1,#0x274]
1B0318:  LDR             R1, [R0]
1B031A:  LDR.W           R2, [R1,#0x274]
1B031E:  STR             R3, [R2]
1B0320:  LDR.W           R2, [R1,#0x274]
1B0324:  ADDS            R2, #4
1B0326:  STR.W           R2, [R1,#0x274]
1B032A:  LDR             R4, [R0]
1B032C:  LDRB.W          R0, [R4,#0x259]
1B0330:  CMP             R0, #0
1B0332:  ITT NE
1B0334:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B0338:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B033C:  LDRD.W          R1, R2, [R4,#0x270]
1B0340:  ADD.W           R0, R4, #0x270
1B0344:  DMB.W           ISH
1B0348:  SUBS            R1, R2, R1
1B034A:  LDREX.W         R2, [R0]
1B034E:  ADD             R2, R1
1B0350:  STREX.W         R3, R2, [R0]
1B0354:  CMP             R3, #0
1B0356:  BNE             loc_1B034A
1B0358:  DMB.W           ISH
1B035C:  LDRB.W          R0, [R4,#0x259]
1B0360:  CMP             R0, #0
1B0362:  ITT NE
1B0364:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B0368:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B036C:  LDRB.W          R0, [R4,#0x258]
1B0370:  CMP             R0, #0
1B0372:  ITT EQ
1B0374:  MOVEQ           R0, R4; this
1B0376:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B037A:  LDR.W           R1, [R4,#0x270]
1B037E:  LDR.W           R0, [R4,#0x264]
1B0382:  ADD.W           R1, R1, #0x400
1B0386:  CMP             R1, R0
1B0388:  ITT HI
1B038A:  MOVHI           R0, R4; this
1B038C:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B0390:  LDR             R0, =(renderQueue_ptr - 0x1B0398)
1B0392:  MOVS            R3, #0x25 ; '%'
1B0394:  ADD             R0, PC; renderQueue_ptr
1B0396:  LDR             R0, [R0]; renderQueue
1B0398:  LDR             R1, [R0]
1B039A:  LDR.W           R2, [R1,#0x274]
1B039E:  STR.W           R3, [R1,#0x278]
1B03A2:  STR             R3, [R2]
1B03A4:  LDR.W           R2, [R1,#0x274]
1B03A8:  LDR             R3, =(dword_6B3208 - 0x1B03B4)
1B03AA:  ADDS            R2, #4
1B03AC:  STR.W           R2, [R1,#0x274]
1B03B0:  ADD             R3, PC; dword_6B3208
1B03B2:  LDR             R1, [R0]
1B03B4:  LDR             R2, =(unk_5E87C8 - 0x1B03BC)
1B03B6:  LDR             R3, [R3,#(dword_6B3274 - 0x6B3208)]
1B03B8:  ADD             R2, PC; unk_5E87C8
1B03BA:  LDR.W           R4, [R1,#0x274]
1B03BE:  LDR.W           R2, [R2,R3,LSL#2]
1B03C2:  STR             R2, [R4]
1B03C4:  LDR.W           R2, [R1,#0x274]
1B03C8:  ADDS            R2, #4
1B03CA:  STR.W           R2, [R1,#0x274]
1B03CE:  LDR             R4, [R0]
1B03D0:  LDRB.W          R0, [R4,#0x259]
1B03D4:  CMP             R0, #0
1B03D6:  ITT NE
1B03D8:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B03DC:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B03E0:  LDRD.W          R1, R2, [R4,#0x270]
1B03E4:  ADD.W           R0, R4, #0x270
1B03E8:  DMB.W           ISH
1B03EC:  SUBS            R1, R2, R1
1B03EE:  LDREX.W         R2, [R0]
1B03F2:  ADD             R2, R1
1B03F4:  STREX.W         R3, R2, [R0]
1B03F8:  CMP             R3, #0
1B03FA:  BNE             loc_1B03EE
1B03FC:  DMB.W           ISH
1B0400:  LDRB.W          R0, [R4,#0x259]
1B0404:  CMP             R0, #0
1B0406:  ITT NE
1B0408:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B040C:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B0410:  LDRB.W          R0, [R4,#0x258]
1B0414:  CMP             R0, #0
1B0416:  ITT EQ
1B0418:  MOVEQ           R0, R4; this
1B041A:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B041E:  LDR.W           R1, [R4,#0x270]
1B0422:  LDR.W           R0, [R4,#0x264]
1B0426:  ADD.W           R1, R1, #0x400
1B042A:  CMP             R1, R0
1B042C:  ITT HI
1B042E:  MOVHI           R0, R4; this
1B0430:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B0434:  LDR             R0, =(textureDecalZ_ptr - 0x1B043C)
1B0436:  MOVS            R1, #0
1B0438:  ADD             R0, PC; textureDecalZ_ptr
1B043A:  LDR             R0, [R0]; textureDecalZ
1B043C:  STR             R1, [R0]
1B043E:  POP             {R4,R6,R7,PC}
1B0440:  CBZ             R1, loc_1B0444
1B0442:  POP             {R4,R6,R7,PC}
1B0444:  LDR             R0, =(renderQueue_ptr - 0x1B044C)
1B0446:  MOVS            R3, #0x28 ; '('
1B0448:  ADD             R0, PC; renderQueue_ptr
1B044A:  LDR             R0, [R0]; renderQueue
1B044C:  LDR             R1, [R0]
1B044E:  LDR.W           R2, [R1,#0x274]
1B0452:  STR.W           R3, [R1,#0x278]
1B0456:  STR             R3, [R2]
1B0458:  MOVS            R3, #1
1B045A:  LDR.W           R2, [R1,#0x274]
1B045E:  ADDS            R2, #4
1B0460:  STR.W           R2, [R1,#0x274]
1B0464:  LDR             R1, [R0]
1B0466:  LDR.W           R2, [R1,#0x274]
1B046A:  STR             R3, [R2]
1B046C:  LDR.W           R2, [R1,#0x274]
1B0470:  ADDS            R2, #4
1B0472:  STR.W           R2, [R1,#0x274]
1B0476:  LDR             R4, [R0]
1B0478:  LDRB.W          R0, [R4,#0x259]
1B047C:  CMP             R0, #0
1B047E:  ITT NE
1B0480:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B0484:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B0488:  LDRD.W          R1, R2, [R4,#0x270]
1B048C:  ADD.W           R0, R4, #0x270
1B0490:  DMB.W           ISH
1B0494:  SUBS            R1, R2, R1
1B0496:  LDREX.W         R2, [R0]
1B049A:  ADD             R2, R1
1B049C:  STREX.W         R3, R2, [R0]
1B04A0:  CMP             R3, #0
1B04A2:  BNE             loc_1B0496
1B04A4:  DMB.W           ISH
1B04A8:  LDRB.W          R0, [R4,#0x259]
1B04AC:  CMP             R0, #0
1B04AE:  ITT NE
1B04B0:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B04B4:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B04B8:  LDRB.W          R0, [R4,#0x258]
1B04BC:  CMP             R0, #0
1B04BE:  ITT EQ
1B04C0:  MOVEQ           R0, R4; this
1B04C2:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B04C6:  LDR.W           R1, [R4,#0x270]
1B04CA:  LDR.W           R0, [R4,#0x264]
1B04CE:  ADD.W           R1, R1, #0x400
1B04D2:  CMP             R1, R0
1B04D4:  ITT HI
1B04D6:  MOVHI           R0, R4; this
1B04D8:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B04DC:  LDR             R0, =(renderQueue_ptr - 0x1B04E4)
1B04DE:  MOVS            R3, #0x25 ; '%'
1B04E0:  ADD             R0, PC; renderQueue_ptr
1B04E2:  LDR             R0, [R0]; renderQueue
1B04E4:  LDR             R1, [R0]
1B04E6:  LDR.W           R2, [R1,#0x274]
1B04EA:  STR.W           R3, [R1,#0x278]
1B04EE:  STR             R3, [R2]
1B04F0:  MOVS            R3, #2
1B04F2:  LDR.W           R2, [R1,#0x274]
1B04F6:  ADDS            R2, #4
1B04F8:  STR.W           R2, [R1,#0x274]
1B04FC:  LDR             R1, [R0]
1B04FE:  LDR.W           R2, [R1,#0x274]
1B0502:  STR             R3, [R2]
1B0504:  LDR.W           R2, [R1,#0x274]
1B0508:  ADDS            R2, #4
1B050A:  STR.W           R2, [R1,#0x274]
1B050E:  LDR             R4, [R0]
1B0510:  LDRB.W          R0, [R4,#0x259]
1B0514:  CMP             R0, #0
1B0516:  ITT NE
1B0518:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B051C:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B0520:  LDRD.W          R1, R2, [R4,#0x270]
1B0524:  ADD.W           R0, R4, #0x270
1B0528:  DMB.W           ISH
1B052C:  SUBS            R1, R2, R1
1B052E:  LDREX.W         R2, [R0]
1B0532:  ADD             R2, R1
1B0534:  STREX.W         R3, R2, [R0]
1B0538:  CMP             R3, #0
1B053A:  BNE             loc_1B052E
1B053C:  DMB.W           ISH
1B0540:  LDRB.W          R0, [R4,#0x259]
1B0544:  CMP             R0, #0
1B0546:  ITT NE
1B0548:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B054C:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B0550:  LDRB.W          R0, [R4,#0x258]
1B0554:  CMP             R0, #0
1B0556:  ITT EQ
1B0558:  MOVEQ           R0, R4; this
1B055A:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B055E:  LDR.W           R1, [R4,#0x270]
1B0562:  LDR.W           R0, [R4,#0x264]
1B0566:  ADD.W           R1, R1, #0x400
1B056A:  CMP             R1, R0
1B056C:  ITT HI
1B056E:  MOVHI           R0, R4; this
1B0570:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B0574:  LDR             R0, =(textureDecalZ_ptr - 0x1B057C)
1B0576:  MOVS            R1, #1
1B0578:  ADD             R0, PC; textureDecalZ_ptr
1B057A:  LDR             R0, [R0]; textureDecalZ
1B057C:  STR             R1, [R0]
1B057E:  POP             {R4,R6,R7,PC}
