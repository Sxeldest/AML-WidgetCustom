; =========================================================
; Game Engine Function: _Z24emu_FlushAltRenderTargetv
; Address            : 0x1BC28C - 0x1BC7F6
; =========================================================

1BC28C:  LDR.W           R0, =(flushedSinceSwap_ptr - 0x1BC294)
1BC290:  ADD             R0, PC; flushedSinceSwap_ptr
1BC292:  LDR             R0, [R0]; flushedSinceSwap
1BC294:  LDRB            R0, [R0]
1BC296:  CMP             R0, #0
1BC298:  BNE.W           locret_1BC7F4
1BC29C:  LDR.W           R0, =(backTarget_ptr - 0x1BC2A4)
1BC2A0:  ADD             R0, PC; backTarget_ptr
1BC2A2:  LDR             R0, [R0]; backTarget
1BC2A4:  LDR             R0, [R0]
1BC2A6:  CMP             R0, #0
1BC2A8:  IT EQ
1BC2AA:  BXEQ            LR
1BC2AC:  PUSH            {R4-R7,LR}
1BC2AE:  ADD             R7, SP, #0x14+var_8
1BC2B0:  PUSH.W          {R8,R9,R11}
1BC2B4:  MOVS            R0, #0; this
1BC2B6:  MOVS            R1, #(stderr+1); RQRenderTarget *
1BC2B8:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BC2BC:  LDR.W           R0, =(curEmulatorStateFlags_ptr - 0x1BC2CC)
1BC2C0:  LDR.W           R1, =(emu_InternalBlendEnabled_ptr - 0x1BC2CE)
1BC2C4:  LDR.W           R2, =(usingGrading_ptr - 0x1BC2D0)
1BC2C8:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BC2CA:  ADD             R1, PC; emu_InternalBlendEnabled_ptr
1BC2CC:  ADD             R2, PC; usingGrading_ptr
1BC2CE:  LDR             R0, [R0]; curEmulatorStateFlags
1BC2D0:  LDR             R1, [R1]; emu_InternalBlendEnabled
1BC2D2:  LDR             R2, [R2]; usingGrading
1BC2D4:  LDR             R5, [R0]
1BC2D6:  LDRB.W          R8, [R1]
1BC2DA:  LDRB            R0, [R2]
1BC2DC:  CBZ             R0, loc_1BC338
1BC2DE:  LDR.W           R0, =(gradeBlur_ptr - 0x1BC2EA)
1BC2E2:  LDR.W           R1, =(dword_6B4090 - 0x1BC2F0)
1BC2E6:  ADD             R0, PC; gradeBlur_ptr
1BC2E8:  LDR.W           R2, =(dword_6B4094 - 0x1BC2F4)
1BC2EC:  ADD             R1, PC; dword_6B4090
1BC2EE:  LDR             R0, [R0]; gradeBlur
1BC2F0:  ADD             R2, PC; dword_6B4094
1BC2F2:  VLDR            S0, [R0]
1BC2F6:  VCMP.F32        S0, #0.0
1BC2FA:  VMRS            APSR_nzcv, FPSCR
1BC2FE:  IT EQ
1BC300:  MOVEQ           R2, R1
1BC302:  LDR             R4, [R2]
1BC304:  MOV             R0, R4; void *
1BC306:  BLX             j__Z19emu_CustomShaderSetPv; emu_CustomShaderSet(void *)
1BC30A:  LDR.W           R3, =(unk_67A130 - 0x1BC318)
1BC30E:  MOV             R0, R4; void *
1BC310:  MOVS            R1, #0x14; unsigned int
1BC312:  MOVS            R2, #4; int
1BC314:  ADD             R3, PC; unk_67A130 ; float *
1BC316:  BLX             j__Z23emu_CustomShaderUniformPvjiPf; emu_CustomShaderUniform(void *,uint,int,float *)
1BC31A:  LDR.W           R3, =(unk_67A140 - 0x1BC328)
1BC31E:  MOV             R0, R4; void *
1BC320:  MOVS            R1, #0x15; unsigned int
1BC322:  MOVS            R2, #4; int
1BC324:  ADD             R3, PC; unk_67A140 ; float *
1BC326:  BLX             j__Z23emu_CustomShaderUniformPvjiPf; emu_CustomShaderUniform(void *,uint,int,float *)
1BC32A:  LDR.W           R3, =(unk_67A150 - 0x1BC338)
1BC32E:  MOV             R0, R4
1BC330:  MOVS            R1, #0x16
1BC332:  MOVS            R2, #4
1BC334:  ADD             R3, PC; unk_67A150
1BC336:  B               loc_1BC364
1BC338:  LDR.W           R4, =(dword_6B408C - 0x1BC340)
1BC33C:  ADD             R4, PC; dword_6B408C
1BC33E:  LDR             R0, [R4]; void *
1BC340:  BLX             j__Z19emu_CustomShaderSetPv; emu_CustomShaderSet(void *)
1BC344:  LDR.W           R1, =(contrastMult_ptr - 0x1BC350)
1BC348:  MOVS            R2, #3; int
1BC34A:  LDR             R0, [R4]; void *
1BC34C:  ADD             R1, PC; contrastMult_ptr
1BC34E:  LDR             R3, [R1]; contrastMult ; float *
1BC350:  MOVS            R1, #0xF; unsigned int
1BC352:  BLX             j__Z23emu_CustomShaderUniformPvjiPf; emu_CustomShaderUniform(void *,uint,int,float *)
1BC356:  LDR.W           R0, =(contrastAdd_ptr - 0x1BC362)
1BC35A:  MOVS            R1, #0x10; unsigned int
1BC35C:  MOVS            R2, #3; int
1BC35E:  ADD             R0, PC; contrastAdd_ptr
1BC360:  LDR             R3, [R0]; contrastAdd ; float *
1BC362:  LDR             R0, [R4]; void *
1BC364:  BLX             j__Z23emu_CustomShaderUniformPvjiPf; emu_CustomShaderUniform(void *,uint,int,float *)
1BC368:  LDR.W           R0, =(renderQueue_ptr - 0x1BC372)
1BC36C:  MOVS            R3, #0x20 ; ' '
1BC36E:  ADD             R0, PC; renderQueue_ptr
1BC370:  LDR             R0, [R0]; renderQueue
1BC372:  LDR             R1, [R0]
1BC374:  LDR.W           R2, [R1,#0x274]
1BC378:  STR.W           R3, [R1,#0x278]
1BC37C:  STR             R3, [R2]
1BC37E:  MOVS            R3, #0
1BC380:  LDR.W           R2, [R1,#0x274]
1BC384:  ADDS            R2, #4
1BC386:  STR.W           R2, [R1,#0x274]
1BC38A:  LDR             R1, [R0]
1BC38C:  LDR.W           R2, [R1,#0x274]
1BC390:  STR             R3, [R2]
1BC392:  LDR.W           R2, [R1,#0x274]
1BC396:  ADDS            R2, #4
1BC398:  STR.W           R2, [R1,#0x274]
1BC39C:  LDR             R4, [R0]
1BC39E:  LDRB.W          R0, [R4,#0x259]
1BC3A2:  CMP             R0, #0
1BC3A4:  ITT NE
1BC3A6:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BC3AA:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC3AE:  LDRD.W          R1, R2, [R4,#0x270]
1BC3B2:  AND.W           R9, R5, #0x1000000
1BC3B6:  ADD.W           R0, R4, #0x270
1BC3BA:  DMB.W           ISH
1BC3BE:  SUBS            R1, R2, R1
1BC3C0:  LDREX.W         R2, [R0]
1BC3C4:  ADD             R2, R1
1BC3C6:  STREX.W         R3, R2, [R0]
1BC3CA:  CMP             R3, #0
1BC3CC:  BNE             loc_1BC3C0
1BC3CE:  DMB.W           ISH
1BC3D2:  LDRB.W          R0, [R4,#0x259]
1BC3D6:  CMP             R0, #0
1BC3D8:  ITT NE
1BC3DA:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BC3DE:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC3E2:  LDRB.W          R0, [R4,#0x258]
1BC3E6:  CMP             R0, #0
1BC3E8:  ITT EQ
1BC3EA:  MOVEQ           R0, R4; this
1BC3EC:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC3F0:  LDR.W           R1, [R4,#0x270]
1BC3F4:  LDR.W           R0, [R4,#0x264]
1BC3F8:  ADD.W           R1, R1, #0x400
1BC3FC:  CMP             R1, R0
1BC3FE:  ITT HI
1BC400:  MOVHI           R0, R4; this
1BC402:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC406:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1BC40E)
1BC40A:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BC40C:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BC40E:  LDRB            R0, [R0]
1BC410:  CMP             R0, #0
1BC412:  BEQ             loc_1BC4B8
1BC414:  LDR.W           R0, =(renderQueue_ptr - 0x1BC41E)
1BC418:  MOVS            R3, #0x22 ; '"'
1BC41A:  ADD             R0, PC; renderQueue_ptr
1BC41C:  LDR             R0, [R0]; renderQueue
1BC41E:  LDR             R1, [R0]
1BC420:  LDR.W           R2, [R1,#0x274]
1BC424:  STR.W           R3, [R1,#0x278]
1BC428:  STR             R3, [R2]
1BC42A:  MOVS            R3, #0
1BC42C:  LDR.W           R2, [R1,#0x274]
1BC430:  ADDS            R2, #4
1BC432:  STR.W           R2, [R1,#0x274]
1BC436:  LDR             R1, [R0]
1BC438:  LDR.W           R2, [R1,#0x274]
1BC43C:  STR             R3, [R2]
1BC43E:  LDR.W           R2, [R1,#0x274]
1BC442:  ADDS            R2, #4
1BC444:  STR.W           R2, [R1,#0x274]
1BC448:  LDR             R4, [R0]
1BC44A:  LDRB.W          R0, [R4,#0x259]
1BC44E:  CMP             R0, #0
1BC450:  ITT NE
1BC452:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BC456:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC45A:  LDRD.W          R1, R2, [R4,#0x270]
1BC45E:  ADD.W           R0, R4, #0x270
1BC462:  DMB.W           ISH
1BC466:  SUBS            R1, R2, R1
1BC468:  LDREX.W         R2, [R0]
1BC46C:  ADD             R2, R1
1BC46E:  STREX.W         R3, R2, [R0]
1BC472:  CMP             R3, #0
1BC474:  BNE             loc_1BC468
1BC476:  DMB.W           ISH
1BC47A:  LDRB.W          R0, [R4,#0x259]
1BC47E:  CMP             R0, #0
1BC480:  ITT NE
1BC482:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BC486:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC48A:  LDRB.W          R0, [R4,#0x258]
1BC48E:  CMP             R0, #0
1BC490:  ITT EQ
1BC492:  MOVEQ           R0, R4; this
1BC494:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC498:  LDR.W           R1, [R4,#0x270]
1BC49C:  LDR.W           R0, [R4,#0x264]
1BC4A0:  ADD.W           R1, R1, #0x400
1BC4A4:  CMP             R1, R0
1BC4A6:  ITT HI
1BC4A8:  MOVHI           R0, R4; this
1BC4AA:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC4AE:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BC4B6)
1BC4B0:  MOVS            R1, #0
1BC4B2:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BC4B4:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BC4B6:  STRB            R1, [R0]
1BC4B8:  LDR             R0, =(renderQueue_ptr - 0x1BC4C0)
1BC4BA:  MOVS            R3, #0x25 ; '%'
1BC4BC:  ADD             R0, PC; renderQueue_ptr
1BC4BE:  LDR             R0, [R0]; renderQueue
1BC4C0:  LDR             R1, [R0]
1BC4C2:  LDR.W           R2, [R1,#0x274]
1BC4C6:  STR.W           R3, [R1,#0x278]
1BC4CA:  STR             R3, [R2]
1BC4CC:  MOVS            R3, #0
1BC4CE:  LDR.W           R2, [R1,#0x274]
1BC4D2:  ADDS            R2, #4
1BC4D4:  STR.W           R2, [R1,#0x274]
1BC4D8:  LDR             R1, [R0]
1BC4DA:  LDR.W           R2, [R1,#0x274]
1BC4DE:  STR             R3, [R2]
1BC4E0:  LDR.W           R2, [R1,#0x274]
1BC4E4:  ADDS            R2, #4
1BC4E6:  STR.W           R2, [R1,#0x274]
1BC4EA:  LDR             R4, [R0]
1BC4EC:  LDRB.W          R0, [R4,#0x259]
1BC4F0:  CMP             R0, #0
1BC4F2:  ITT NE
1BC4F4:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BC4F8:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC4FC:  LDRD.W          R1, R2, [R4,#0x270]
1BC500:  ADD.W           R0, R4, #0x270
1BC504:  DMB.W           ISH
1BC508:  SUBS            R1, R2, R1
1BC50A:  LDREX.W         R2, [R0]
1BC50E:  ADD             R2, R1
1BC510:  STREX.W         R3, R2, [R0]
1BC514:  CMP             R3, #0
1BC516:  BNE             loc_1BC50A
1BC518:  DMB.W           ISH
1BC51C:  LDRB.W          R0, [R4,#0x259]
1BC520:  CMP             R0, #0
1BC522:  ITT NE
1BC524:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BC528:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC52C:  LDRB.W          R0, [R4,#0x258]
1BC530:  CMP             R0, #0
1BC532:  ITT EQ
1BC534:  MOVEQ           R0, R4; this
1BC536:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC53A:  LDR.W           R1, [R4,#0x270]
1BC53E:  LDR.W           R0, [R4,#0x264]
1BC542:  ADD.W           R1, R1, #0x400
1BC546:  CMP             R1, R0
1BC548:  ITT HI
1BC54A:  MOVHI           R0, R4; this
1BC54C:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC550:  LDR             R0, =(backTarget_ptr - 0x1BC558)
1BC552:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1BC55A)
1BC554:  ADD             R0, PC; backTarget_ptr
1BC556:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1BC558:  LDR             R0, [R0]; backTarget
1BC55A:  LDR             R1, [R1]; RQTexture::selected ...
1BC55C:  LDR             R0, [R0]
1BC55E:  LDR             R4, [R1]; RQTexture::selected
1BC560:  MOVS            R1, #0
1BC562:  LDR             R0, [R0]
1BC564:  LDR             R2, [R0]
1BC566:  LDR             R2, [R2,#0x18]
1BC568:  BLX             R2
1BC56A:  MOVS            R0, #5; unsigned int
1BC56C:  BLX             j__Z11emu_glBeginj; emu_glBegin(uint)
1BC570:  LDR             R0, =(gradeBlur_ptr - 0x1BC580)
1BC572:  MOVS            R5, #0xBF800000
1BC578:  MOV.W           R1, #0x3F800000; float
1BC57C:  ADD             R0, PC; gradeBlur_ptr
1BC57E:  LDR             R6, [R0]; gradeBlur
1BC580:  MOV             R0, R5; float
1BC582:  LDR             R2, [R6]; float
1BC584:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BC588:  MOVS            R0, #0; float
1BC58A:  MOV.W           R1, #0x3F800000; float
1BC58E:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BC592:  LDR             R2, [R6]; float
1BC594:  MOV.W           R0, #0x3F800000; float
1BC598:  MOV.W           R1, #0x3F800000; float
1BC59C:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BC5A0:  MOV.W           R0, #0x3F800000; float
1BC5A4:  MOV.W           R1, #0x3F800000; float
1BC5A8:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BC5AC:  LDR             R2, [R6]; float
1BC5AE:  MOV             R0, R5; float
1BC5B0:  MOV             R1, R5; float
1BC5B2:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BC5B6:  MOVS            R0, #0; float
1BC5B8:  MOVS            R1, #0; float
1BC5BA:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BC5BE:  LDR             R2, [R6]; float
1BC5C0:  MOV.W           R0, #0x3F800000; float
1BC5C4:  MOV             R1, R5; float
1BC5C6:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BC5CA:  MOV.W           R0, #0x3F800000; float
1BC5CE:  MOVS            R1, #0; float
1BC5D0:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BC5D4:  BLX             j__Z9emu_glEndv; emu_glEnd(void)
1BC5D8:  MOVS            R0, #0; void *
1BC5DA:  BLX             j__Z19emu_CustomShaderSetPv; emu_CustomShaderSet(void *)
1BC5DE:  CMP.W           R9, #0
1BC5E2:  BEQ             loc_1BC67C
1BC5E4:  LDR             R0, =(renderQueue_ptr - 0x1BC5EC)
1BC5E6:  MOVS            R3, #0x20 ; ' '
1BC5E8:  ADD             R0, PC; renderQueue_ptr
1BC5EA:  LDR             R0, [R0]; renderQueue
1BC5EC:  LDR             R1, [R0]
1BC5EE:  LDR.W           R2, [R1,#0x274]
1BC5F2:  STR.W           R3, [R1,#0x278]
1BC5F6:  STR             R3, [R2]
1BC5F8:  MOVS            R3, #1
1BC5FA:  LDR.W           R2, [R1,#0x274]
1BC5FE:  ADDS            R2, #4
1BC600:  STR.W           R2, [R1,#0x274]
1BC604:  LDR             R1, [R0]
1BC606:  LDR.W           R2, [R1,#0x274]
1BC60A:  STR             R3, [R2]
1BC60C:  LDR.W           R2, [R1,#0x274]
1BC610:  ADDS            R2, #4
1BC612:  STR.W           R2, [R1,#0x274]
1BC616:  LDR             R5, [R0]
1BC618:  LDRB.W          R0, [R5,#0x259]
1BC61C:  CMP             R0, #0
1BC61E:  ITT NE
1BC620:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC624:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC628:  LDRD.W          R1, R2, [R5,#0x270]
1BC62C:  ADD.W           R0, R5, #0x270
1BC630:  DMB.W           ISH
1BC634:  SUBS            R1, R2, R1
1BC636:  LDREX.W         R2, [R0]
1BC63A:  ADD             R2, R1
1BC63C:  STREX.W         R3, R2, [R0]
1BC640:  CMP             R3, #0
1BC642:  BNE             loc_1BC636
1BC644:  DMB.W           ISH
1BC648:  LDRB.W          R0, [R5,#0x259]
1BC64C:  CMP             R0, #0
1BC64E:  ITT NE
1BC650:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC654:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC658:  LDRB.W          R0, [R5,#0x258]
1BC65C:  CMP             R0, #0
1BC65E:  ITT EQ
1BC660:  MOVEQ           R0, R5; this
1BC662:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC666:  LDR.W           R1, [R5,#0x270]
1BC66A:  LDR.W           R0, [R5,#0x264]
1BC66E:  ADD.W           R1, R1, #0x400
1BC672:  CMP             R1, R0
1BC674:  ITT HI
1BC676:  MOVHI           R0, R5; this
1BC678:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC67C:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BC686)
1BC67E:  CMP.W           R8, #0
1BC682:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BC684:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BC686:  LDRB            R0, [R0]
1BC688:  BEQ             loc_1BC730
1BC68A:  CMP             R0, #0
1BC68C:  BNE.W           loc_1BC7D6
1BC690:  LDR             R0, =(renderQueue_ptr - 0x1BC698)
1BC692:  MOVS            R3, #0x22 ; '"'
1BC694:  ADD             R0, PC; renderQueue_ptr
1BC696:  LDR             R0, [R0]; renderQueue
1BC698:  LDR             R1, [R0]
1BC69A:  LDR.W           R2, [R1,#0x274]
1BC69E:  STR.W           R3, [R1,#0x278]
1BC6A2:  STR             R3, [R2]
1BC6A4:  MOVS            R3, #1
1BC6A6:  LDR.W           R2, [R1,#0x274]
1BC6AA:  ADDS            R2, #4
1BC6AC:  STR.W           R2, [R1,#0x274]
1BC6B0:  LDR             R1, [R0]
1BC6B2:  LDR.W           R2, [R1,#0x274]
1BC6B6:  STR             R3, [R2]
1BC6B8:  LDR.W           R2, [R1,#0x274]
1BC6BC:  ADDS            R2, #4
1BC6BE:  STR.W           R2, [R1,#0x274]
1BC6C2:  LDR             R5, [R0]
1BC6C4:  LDRB.W          R0, [R5,#0x259]
1BC6C8:  CMP             R0, #0
1BC6CA:  ITT NE
1BC6CC:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC6D0:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC6D4:  LDRD.W          R1, R2, [R5,#0x270]
1BC6D8:  ADD.W           R0, R5, #0x270
1BC6DC:  DMB.W           ISH
1BC6E0:  SUBS            R1, R2, R1
1BC6E2:  LDREX.W         R2, [R0]
1BC6E6:  ADD             R2, R1
1BC6E8:  STREX.W         R3, R2, [R0]
1BC6EC:  CMP             R3, #0
1BC6EE:  BNE             loc_1BC6E2
1BC6F0:  DMB.W           ISH
1BC6F4:  LDRB.W          R0, [R5,#0x259]
1BC6F8:  CMP             R0, #0
1BC6FA:  ITT NE
1BC6FC:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC700:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC704:  LDRB.W          R0, [R5,#0x258]
1BC708:  CMP             R0, #0
1BC70A:  ITT EQ
1BC70C:  MOVEQ           R0, R5; this
1BC70E:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC712:  LDR.W           R1, [R5,#0x270]
1BC716:  LDR.W           R0, [R5,#0x264]
1BC71A:  ADD.W           R1, R1, #0x400
1BC71E:  CMP             R1, R0
1BC720:  ITT HI
1BC722:  MOVHI           R0, R5; this
1BC724:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC728:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BC730)
1BC72A:  MOVS            R1, #1
1BC72C:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BC72E:  B               loc_1BC7D2
1BC730:  CMP             R0, #0
1BC732:  BEQ             loc_1BC7D6
1BC734:  LDR             R0, =(renderQueue_ptr - 0x1BC73C)
1BC736:  MOVS            R3, #0x22 ; '"'
1BC738:  ADD             R0, PC; renderQueue_ptr
1BC73A:  LDR             R0, [R0]; renderQueue
1BC73C:  LDR             R1, [R0]
1BC73E:  LDR.W           R2, [R1,#0x274]
1BC742:  STR.W           R3, [R1,#0x278]
1BC746:  STR             R3, [R2]
1BC748:  MOVS            R3, #0
1BC74A:  LDR.W           R2, [R1,#0x274]
1BC74E:  ADDS            R2, #4
1BC750:  STR.W           R2, [R1,#0x274]
1BC754:  LDR             R1, [R0]
1BC756:  LDR.W           R2, [R1,#0x274]
1BC75A:  STR             R3, [R2]
1BC75C:  LDR.W           R2, [R1,#0x274]
1BC760:  ADDS            R2, #4
1BC762:  STR.W           R2, [R1,#0x274]
1BC766:  LDR             R5, [R0]
1BC768:  LDRB.W          R0, [R5,#0x259]
1BC76C:  CMP             R0, #0
1BC76E:  ITT NE
1BC770:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC774:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC778:  LDRD.W          R1, R2, [R5,#0x270]
1BC77C:  ADD.W           R0, R5, #0x270
1BC780:  DMB.W           ISH
1BC784:  SUBS            R1, R2, R1
1BC786:  LDREX.W         R2, [R0]
1BC78A:  ADD             R2, R1
1BC78C:  STREX.W         R3, R2, [R0]
1BC790:  CMP             R3, #0
1BC792:  BNE             loc_1BC786
1BC794:  DMB.W           ISH
1BC798:  LDRB.W          R0, [R5,#0x259]
1BC79C:  CMP             R0, #0
1BC79E:  ITT NE
1BC7A0:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC7A4:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC7A8:  LDRB.W          R0, [R5,#0x258]
1BC7AC:  CMP             R0, #0
1BC7AE:  ITT EQ
1BC7B0:  MOVEQ           R0, R5; this
1BC7B2:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC7B6:  LDR.W           R1, [R5,#0x270]
1BC7BA:  LDR.W           R0, [R5,#0x264]
1BC7BE:  ADD.W           R1, R1, #0x400
1BC7C2:  CMP             R1, R0
1BC7C4:  ITT HI
1BC7C6:  MOVHI           R0, R5; this
1BC7C8:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC7CC:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BC7D4)
1BC7CE:  MOVS            R1, #0
1BC7D0:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BC7D2:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BC7D4:  STRB            R1, [R0]
1BC7D6:  CBZ             R4, loc_1BC7E2
1BC7D8:  LDR             R0, [R4]
1BC7DA:  MOVS            R1, #0
1BC7DC:  LDR             R2, [R0,#0x18]
1BC7DE:  MOV             R0, R4
1BC7E0:  BLX             R2
1BC7E2:  LDR             R0, =(flushedSinceSwap_ptr - 0x1BC7EA)
1BC7E4:  MOVS            R1, #1
1BC7E6:  ADD             R0, PC; flushedSinceSwap_ptr
1BC7E8:  LDR             R0, [R0]; flushedSinceSwap
1BC7EA:  STRB            R1, [R0]
1BC7EC:  POP.W           {R8,R9,R11}
1BC7F0:  POP.W           {R4-R7,LR}
1BC7F4:  BX              LR
