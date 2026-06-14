; =========================================================
; Game Engine Function: _Z13emu_glDisablej
; Address            : 0x1BB468 - 0x1BB686
; =========================================================

1BB468:  PUSH            {R4,R6,R7,LR}
1BB46A:  ADD             R7, SP, #8
1BB46C:  MOVW            R1, #0xBE1
1BB470:  CMP             R0, R1
1BB472:  BLE             loc_1BB4A0
1BB474:  SUB.W           R1, R0, #0x4000
1BB478:  CMP             R1, #8
1BB47A:  BCS             loc_1BB4E2
1BB47C:  MOV             R0, R1; unsigned int
1BB47E:  BLX             j__Z8GetLightj; GetLight(uint)
1BB482:  LDRB            R1, [R0]
1BB484:  MOVS            R2, #0
1BB486:  CMP             R1, #0
1BB488:  ITT NE
1BB48A:  MOVNE           R1, #1
1BB48C:  STRBNE          R1, [R0,#1]
1BB48E:  STRB            R2, [R0]
1BB490:  LDR             R1, =(curEmulatorStateFlags_ptr - 0x1BB496)
1BB492:  ADD             R1, PC; curEmulatorStateFlags_ptr
1BB494:  LDR             R1, [R1]; curEmulatorStateFlags
1BB496:  LDR             R0, [R1]
1BB498:  ORR.W           R0, R0, #0x10000000
1BB49C:  STR             R0, [R1]
1BB49E:  POP             {R4,R6,R7,PC}
1BB4A0:  CMP.W           R0, #0xB70
1BB4A4:  BGT             loc_1BB4C4
1BB4A6:  CMP.W           R0, #0xB50
1BB4AA:  BEQ             loc_1BB504
1BB4AC:  MOVW            R1, #0xB57
1BB4B0:  CMP             R0, R1
1BB4B2:  BNE             locret_1BB49E
1BB4B4:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB4BA)
1BB4B6:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB4B8:  LDR             R0, [R0]; curEmulatorStateFlags
1BB4BA:  LDR             R1, [R0]
1BB4BC:  BIC.W           R1, R1, #0x8000000
1BB4C0:  STR             R1, [R0]
1BB4C2:  POP             {R4,R6,R7,PC}
1BB4C4:  MOVW            R1, #0xB71
1BB4C8:  CMP             R0, R1
1BB4CA:  BEQ             loc_1BB520
1BB4CC:  CMP.W           R0, #0xBC0
1BB4D0:  BNE             locret_1BB49E
1BB4D2:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BB4D8)
1BB4D4:  ADD             R0, PC; curShaderStateFlags_ptr
1BB4D6:  LDR             R0, [R0]; curShaderStateFlags
1BB4D8:  LDR             R1, [R0]
1BB4DA:  BIC.W           R1, R1, #1
1BB4DE:  STR             R1, [R0]
1BB4E0:  POP             {R4,R6,R7,PC}
1BB4E2:  MOVW            R1, #0xBE2
1BB4E6:  CMP             R0, R1
1BB4E8:  BEQ             loc_1BB5C8
1BB4EA:  MOVW            R1, #0xDE1
1BB4EE:  CMP             R0, R1
1BB4F0:  IT NE
1BB4F2:  POPNE           {R4,R6,R7,PC}
1BB4F4:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BB4FA)
1BB4F6:  ADD             R0, PC; curShaderStateFlags_ptr
1BB4F8:  LDR             R0, [R0]; curShaderStateFlags
1BB4FA:  LDR             R1, [R0]
1BB4FC:  BIC.W           R1, R1, #0x20 ; ' '
1BB500:  STR             R1, [R0]
1BB502:  POP             {R4,R6,R7,PC}
1BB504:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BB50C)
1BB506:  LDR             R1, =(curEmulatorStateFlags_ptr - 0x1BB50E)
1BB508:  ADD             R0, PC; curShaderStateFlags_ptr
1BB50A:  ADD             R1, PC; curEmulatorStateFlags_ptr
1BB50C:  LDR             R0, [R0]; curShaderStateFlags
1BB50E:  LDR             R1, [R1]; curEmulatorStateFlags
1BB510:  LDR             R2, [R0]
1BB512:  LDR             R3, [R1]
1BB514:  BIC.W           R2, R2, #2
1BB518:  STR             R2, [R0]
1BB51A:  ORR.W           R0, R3, #0x10000000
1BB51E:  B               loc_1BB49C
1BB520:  LDR             R0, =(renderQueue_ptr - 0x1BB528)
1BB522:  MOVS            R3, #0x20 ; ' '
1BB524:  ADD             R0, PC; renderQueue_ptr
1BB526:  LDR             R0, [R0]; renderQueue
1BB528:  LDR             R1, [R0]
1BB52A:  LDR.W           R2, [R1,#0x274]
1BB52E:  STR.W           R3, [R1,#0x278]
1BB532:  STR             R3, [R2]
1BB534:  MOVS            R3, #0
1BB536:  LDR.W           R2, [R1,#0x274]
1BB53A:  ADDS            R2, #4
1BB53C:  STR.W           R2, [R1,#0x274]
1BB540:  LDR             R1, [R0]
1BB542:  LDR.W           R2, [R1,#0x274]
1BB546:  STR             R3, [R2]
1BB548:  LDR.W           R2, [R1,#0x274]
1BB54C:  ADDS            R2, #4
1BB54E:  STR.W           R2, [R1,#0x274]
1BB552:  LDR             R4, [R0]
1BB554:  LDRB.W          R0, [R4,#0x259]
1BB558:  CMP             R0, #0
1BB55A:  ITT NE
1BB55C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BB560:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BB564:  LDRD.W          R1, R2, [R4,#0x270]
1BB568:  ADD.W           R0, R4, #0x270
1BB56C:  DMB.W           ISH
1BB570:  SUBS            R1, R2, R1
1BB572:  LDREX.W         R2, [R0]
1BB576:  ADD             R2, R1
1BB578:  STREX.W         R3, R2, [R0]
1BB57C:  CMP             R3, #0
1BB57E:  BNE             loc_1BB572
1BB580:  DMB.W           ISH
1BB584:  LDRB.W          R0, [R4,#0x259]
1BB588:  CMP             R0, #0
1BB58A:  ITT NE
1BB58C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BB590:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BB594:  LDRB.W          R0, [R4,#0x258]
1BB598:  CMP             R0, #0
1BB59A:  ITT EQ
1BB59C:  MOVEQ           R0, R4; this
1BB59E:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BB5A2:  LDR.W           R1, [R4,#0x270]
1BB5A6:  LDR.W           R0, [R4,#0x264]
1BB5AA:  ADD.W           R1, R1, #0x400
1BB5AE:  CMP             R1, R0
1BB5B0:  ITT HI
1BB5B2:  MOVHI           R0, R4; this
1BB5B4:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BB5B8:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB5BE)
1BB5BA:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB5BC:  LDR             R0, [R0]; curEmulatorStateFlags
1BB5BE:  LDR             R1, [R0]
1BB5C0:  BIC.W           R1, R1, #0x1000000
1BB5C4:  STR             R1, [R0]
1BB5C6:  POP             {R4,R6,R7,PC}
1BB5C8:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BB5CE)
1BB5CA:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BB5CC:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BB5CE:  LDRB            R0, [R0]
1BB5D0:  CMP             R0, #0
1BB5D2:  BEQ             loc_1BB676
1BB5D4:  LDR             R0, =(renderQueue_ptr - 0x1BB5DC)
1BB5D6:  MOVS            R3, #0x22 ; '"'
1BB5D8:  ADD             R0, PC; renderQueue_ptr
1BB5DA:  LDR             R0, [R0]; renderQueue
1BB5DC:  LDR             R1, [R0]
1BB5DE:  LDR.W           R2, [R1,#0x274]
1BB5E2:  STR.W           R3, [R1,#0x278]
1BB5E6:  STR             R3, [R2]
1BB5E8:  MOVS            R3, #0
1BB5EA:  LDR.W           R2, [R1,#0x274]
1BB5EE:  ADDS            R2, #4
1BB5F0:  STR.W           R2, [R1,#0x274]
1BB5F4:  LDR             R1, [R0]
1BB5F6:  LDR.W           R2, [R1,#0x274]
1BB5FA:  STR             R3, [R2]
1BB5FC:  LDR.W           R2, [R1,#0x274]
1BB600:  ADDS            R2, #4
1BB602:  STR.W           R2, [R1,#0x274]
1BB606:  LDR             R4, [R0]
1BB608:  LDRB.W          R0, [R4,#0x259]
1BB60C:  CMP             R0, #0
1BB60E:  ITT NE
1BB610:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BB614:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BB618:  LDRD.W          R1, R2, [R4,#0x270]
1BB61C:  ADD.W           R0, R4, #0x270
1BB620:  DMB.W           ISH
1BB624:  SUBS            R1, R2, R1
1BB626:  LDREX.W         R2, [R0]
1BB62A:  ADD             R2, R1
1BB62C:  STREX.W         R3, R2, [R0]
1BB630:  CMP             R3, #0
1BB632:  BNE             loc_1BB626
1BB634:  DMB.W           ISH
1BB638:  LDRB.W          R0, [R4,#0x259]
1BB63C:  CMP             R0, #0
1BB63E:  ITT NE
1BB640:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BB644:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BB648:  LDRB.W          R0, [R4,#0x258]
1BB64C:  CMP             R0, #0
1BB64E:  ITT EQ
1BB650:  MOVEQ           R0, R4; this
1BB652:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BB656:  LDR.W           R1, [R4,#0x270]
1BB65A:  LDR.W           R0, [R4,#0x264]
1BB65E:  ADD.W           R1, R1, #0x400
1BB662:  CMP             R1, R0
1BB664:  ITT HI
1BB666:  MOVHI           R0, R4; this
1BB668:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BB66C:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BB674)
1BB66E:  MOVS            R1, #0
1BB670:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BB672:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BB674:  STRB            R1, [R0]
1BB676:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB67C)
1BB678:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB67A:  LDR             R0, [R0]; curEmulatorStateFlags
1BB67C:  LDR             R1, [R0]
1BB67E:  BIC.W           R1, R1, #0x4000000
1BB682:  STR             R1, [R0]
1BB684:  POP             {R4,R6,R7,PC}
