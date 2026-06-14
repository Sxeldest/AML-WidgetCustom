; =========================================================
; Game Engine Function: _ZN12CPostEffects9RadiosityEiiii
; Address            : 0x5B4124 - 0x5B47AE
; =========================================================

5B4124:  PUSH            {R4-R7,LR}
5B4126:  ADD             R7, SP, #0xC
5B4128:  PUSH.W          {R8-R11}
5B412C:  SUB             SP, SP, #4
5B412E:  VPUSH           {D8}
5B4132:  SUB             SP, SP, #0x10
5B4134:  MOV             R6, R1
5B4136:  LDR.W           R1, =(_ZN12CPostEffects18m_RadiosityPixelsXE_ptr - 0x5B4144)
5B413A:  MOV             R10, R0
5B413C:  LDR.W           R0, =(_ZN12CPostEffects18m_RadiosityPixelsYE_ptr - 0x5B4148)
5B4140:  ADD             R1, PC; _ZN12CPostEffects18m_RadiosityPixelsXE_ptr
5B4142:  STR             R3, [SP,#0x38+var_30]
5B4144:  ADD             R0, PC; _ZN12CPostEffects18m_RadiosityPixelsYE_ptr
5B4146:  MOV             R9, R2
5B4148:  LDR             R1, [R1]; CPostEffects::m_RadiosityPixelsX ...
5B414A:  LDR             R0, [R0]; CPostEffects::m_RadiosityPixelsY ...
5B414C:  LDR             R5, [R1]; CPostEffects::m_RadiosityPixelsX
5B414E:  MOVS            R1, #1
5B4150:  LDR.W           R8, [R0]; CPostEffects::m_RadiosityPixelsY
5B4154:  MOVS            R0, #9
5B4156:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B415A:  MOVS            R0, #0xE
5B415C:  MOVS            R1, #0
5B415E:  MOVS            R4, #0
5B4160:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4164:  MOVS            R0, #6
5B4166:  MOVS            R1, #1
5B4168:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B416C:  MOVS            R0, #8
5B416E:  MOVS            R1, #0
5B4170:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4174:  LDR.W           R0, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B417C)
5B4178:  ADD             R0, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B417A:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer ...
5B417C:  LDR             R1, [R0]; CPostEffects::pRasterFrontBuffer
5B417E:  MOVS            R0, #1
5B4180:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4184:  MOVS            R0, #0xC
5B4186:  MOVS            R1, #0
5B4188:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B418C:  MOVS            R0, #0xA
5B418E:  MOVS            R1, #5
5B4190:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4194:  MOVS            R0, #0xB
5B4196:  MOVS            R1, #6
5B4198:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B419C:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x5B41B0)
5B41A0:  VMOV.F32        S16, #1.0
5B41A4:  LDR.W           R2, =(Scene_ptr - 0x5B41B6)
5B41A8:  MOVW            R12, #:lower16:(elf_hash_chain+0x1EC8)
5B41AC:  ADD             R0, PC; TempVertexBuffer_ptr
5B41AE:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x5B41C6)
5B41B2:  ADD             R2, PC; Scene_ptr
5B41B4:  MOVT            R12, #:upper16:(elf_hash_chain+0x1EC8)
5B41B8:  LDR             R3, [R0]; TempVertexBuffer
5B41BA:  MOV             R0, #(dword_A6C1F0 - 0xA5A1D8)
5B41C2:  ADD             R1, PC; TempBufferVerticesStored_ptr
5B41C4:  LDR             R2, [R2]; Scene
5B41C6:  STR             R4, [R3,R0]
5B41C8:  MOV             R0, #(dword_A6C1EC - 0xA5A1D8)
5B41D0:  STR             R4, [R3,R0]
5B41D2:  MOV             R0, #(dword_A6C1DC - 0xA5A1D8)
5B41DA:  LDR             R1, [R1]; TempBufferVerticesStored
5B41DC:  STR             R4, [R3,R0]
5B41DE:  MOV.W           R0, #(dword_A6C1D8 - 0xA5A1D8)
5B41E2:  STR             R4, [R3,R0]
5B41E4:  LDR             R0, [R2,#(dword_9FC93C - 0x9FC938)]
5B41E6:  MOV             R2, #(dword_A6C1E0 - 0xA5A1D8)
5B41EE:  STR             R4, [R1]
5B41F0:  STR             R4, [R3,R2]
5B41F2:  MOVW            R4, #:lower16:(elf_hash_chain+0x1ECC)
5B41F6:  MOV.W           R2, #0x3F800000
5B41FA:  VLDR            S0, [R0,#0x80]
5B41FE:  MOVT            R4, #:upper16:(elf_hash_chain+0x1ECC)
5B4202:  LDR.W           R1, =(_ZN12CPostEffects25m_bRadiosityStripCopyModeE_ptr - 0x5B4212)
5B4206:  VDIV.F32        S0, S16, S0
5B420A:  STR.W           R2, [R3,R12]
5B420E:  ADD             R1, PC; _ZN12CPostEffects25m_bRadiosityStripCopyModeE_ptr
5B4210:  STR             R2, [R3,R4]
5B4212:  MOV             R2, #0x1200C
5B421A:  LDR             R1, [R1]; CPostEffects::m_bRadiosityStripCopyMode ...
5B421C:  ADD             R2, R3
5B421E:  LDRB            R1, [R1]; CPostEffects::m_bRadiosityStripCopyMode
5B4220:  CMP             R1, #0
5B4222:  VSTR            S0, [R2]
5B4226:  STR.W           R10, [SP,#0x38+var_2C]
5B422A:  BEQ             loc_5B4252
5B422C:  LDR.W           R1, =(RsGlobal_ptr - 0x5B4238)
5B4230:  LDR.W           R2, =(TempVertexBuffer_ptr - 0x5B423A)
5B4234:  ADD             R1, PC; RsGlobal_ptr
5B4236:  ADD             R2, PC; TempVertexBuffer_ptr
5B4238:  LDR             R1, [R1]; RsGlobal
5B423A:  LDR             R2, [R2]; TempVertexBuffer
5B423C:  VLDR            S0, [R1,#4]
5B4240:  ADD.W           R2, R2, #0x12000
5B4244:  ADDS            R2, #0x1C
5B4246:  VCVT.F32.S32    S0, S0
5B424A:  LDR             R1, [R1,#(dword_9FC904 - 0x9FC8FC)]
5B424C:  VSTR            S0, [R2]
5B4250:  B               loc_5B426E
5B4252:  LDR.W           R1, =(TempVertexBuffer_ptr - 0x5B425E)
5B4256:  VMOV            S0, R5
5B425A:  ADD             R1, PC; TempVertexBuffer_ptr
5B425C:  VCVT.F32.S32    S0, S0
5B4260:  LDR             R1, [R1]; TempVertexBuffer
5B4262:  ADD.W           R1, R1, #0x12000
5B4266:  ADDS            R1, #0x1C
5B4268:  VSTR            S0, [R1]
5B426C:  MOV             R1, R8
5B426E:  LDR.W           R2, =(TempVertexBuffer_ptr - 0x5B4282)
5B4272:  VMOV            S0, R1
5B4276:  MOV.W           R11, #0
5B427A:  MOV.W           R10, #1
5B427E:  ADD             R2, PC; TempVertexBuffer_ptr
5B4280:  VCVT.F32.S32    S0, S0
5B4284:  LDR             R1, [R2]; TempVertexBuffer
5B4286:  MOV             R2, #(dword_A6C1FC - 0xA5A1D8)
5B428E:  STR.W           R11, [R1,R2]
5B4292:  MOV             R2, #0x12020
5B429A:  ADD             R2, R1
5B429C:  VSTR            S0, [R2]
5B42A0:  MOVW            R2, #:lower16:(elf_hash_chain+0x1EC0)
5B42A4:  VLDR            S0, [R0,#0x80]
5B42A8:  MOVT            R2, #:upper16:(elf_hash_chain+0x1EC0)
5B42AC:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5B42BA)
5B42B0:  ADD             R1, R2
5B42B2:  VDIV.F32        S0, S16, S0
5B42B6:  ADD             R0, PC; TempBufferVerticesStored_ptr
5B42B8:  LDR             R0, [R0]; TempBufferVerticesStored
5B42BA:  STR.W           R11, [R0]
5B42BE:  MOVS            R0, #6
5B42C0:  VSTR            S0, [R1]
5B42C4:  MOVS            R1, #1
5B42C6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B42CA:  CMP             R6, #1
5B42CC:  BLT.W           loc_5B43FA
5B42D0:  MOVS            R0, #9
5B42D2:  MOVS            R1, #2
5B42D4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B42D8:  LDR.W           R1, =(_ZN12CPostEffects28m_RadiosityFilterVCorrectionE_ptr - 0x5B42E8)
5B42DC:  LDR.W           R3, =(_ZN12CPostEffects28m_RadiosityFilterUCorrectionE_ptr - 0x5B42EE)
5B42E0:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5B42F4)
5B42E4:  ADD             R1, PC; _ZN12CPostEffects28m_RadiosityFilterVCorrectionE_ptr
5B42E6:  LDR.W           R2, =(Scene_ptr - 0x5B42F6)
5B42EA:  ADD             R3, PC; _ZN12CPostEffects28m_RadiosityFilterUCorrectionE_ptr
5B42EC:  LDR.W           R12, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B42FA)
5B42F0:  ADD             R0, PC; TempBufferVerticesStored_ptr
5B42F2:  ADD             R2, PC; Scene_ptr
5B42F4:  LDR             R1, [R1]; CPostEffects::m_RadiosityFilterVCorrection ...
5B42F6:  ADD             R12, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B42F8:  LDR             R3, [R3]; CPostEffects::m_RadiosityFilterUCorrection ...
5B42FA:  LDR             R0, [R0]; TempBufferVerticesStored
5B42FC:  LDR             R2, [R2]; Scene
5B42FE:  LDR.W           R12, [R12]; CPostEffects::pRasterFrontBuffer ...
5B4302:  LDR.W           R4, =(TempVertexBuffer_ptr - 0x5B4312)
5B4306:  VLDR            S0, [R1]
5B430A:  VLDR            S2, [R3]
5B430E:  ADD             R4, PC; TempVertexBuffer_ptr
5B4310:  LDR.W           LR, [R0]
5B4314:  LDR             R1, [R2,#(dword_9FC93C - 0x9FC938)]
5B4316:  LDR.W           R2, [R12]; CPostEffects::pRasterFrontBuffer
5B431A:  VCVT.F32.S32    S0, S0
5B431E:  VCVT.F32.S32    S2, S2
5B4322:  LDR             R0, [R4]; TempVertexBuffer
5B4324:  RSB.W           R3, LR, LR,LSL#3
5B4328:  MOV.W           R12, #0xFFFFFFFF
5B432C:  ADD.W           R0, R0, R3,LSL#2
5B4330:  ADD.W           R3, R0, #0x12000
5B4334:  LSLS            R0, R6, #1
5B4336:  STR             R0, [SP,#0x38+var_34]
5B4338:  VLDR            S4, [R2,#0xC]
5B433C:  VMOV            S10, R5
5B4340:  VLDR            S6, [R2,#0x10]
5B4344:  VMOV            S8, R8
5B4348:  ADD.W           R5, R5, R5,LSR#31
5B434C:  ADD.W           R0, R8, R8,LSR#31
5B4350:  VCVT.F32.S32    S6, S6
5B4354:  SUBS            R6, #1
5B4356:  VCVT.F32.S32    S4, S4
5B435A:  STRD.W          R11, R11, [R3]
5B435E:  STR.W           R11, [R3,#8]
5B4362:  ADD.W           R4, R10, R5,ASR#1
5B4366:  MOV.W           R8, R0,ASR#1
5B436A:  MOV.W           R5, R5,ASR#1
5B436E:  VDIV.F32        S6, S0, S6
5B4372:  VDIV.F32        S4, S2, S4
5B4376:  VSTR            S4, [R3,#0x14]
5B437A:  VSTR            S6, [R3,#0x18]
5B437E:  VLDR            S4, [R1,#0x80]
5B4382:  VDIV.F32        S4, S16, S4
5B4386:  VSTR            S4, [R3,#0xC]
5B438A:  VLDR            S4, [R2,#0xC]
5B438E:  VLDR            S6, [R2,#0x10]
5B4392:  VCVT.F32.S32    S8, S8
5B4396:  VCVT.F32.S32    S6, S6
5B439A:  VCVT.F32.S32    S10, S10
5B439E:  VCVT.F32.S32    S4, S4
5B43A2:  VDIV.F32        S6, S8, S6
5B43A6:  VDIV.F32        S4, S10, S4
5B43AA:  VMOV            S8, R4
5B43AE:  ADD.W           R4, R10, R0,ASR#1
5B43B2:  VMOV            S10, R4
5B43B6:  VCVT.F32.S32    S8, S8
5B43BA:  VCVT.F32.S32    S10, S10
5B43BE:  VSTR            S8, [R3,#0x1C]
5B43C2:  VSTR            S10, [R3,#0x20]
5B43C6:  STR.W           R11, [R3,#0x24]
5B43CA:  VSTR            S4, [R3,#0x30]
5B43CE:  VSTR            S6, [R3,#0x34]
5B43D2:  VLDR            S4, [R1,#0x80]
5B43D6:  STR.W           R12, [R3,#0x10]
5B43DA:  VDIV.F32        S4, S16, S4
5B43DE:  STR.W           R12, [R3,#0x2C]
5B43E2:  VSTR            S4, [R3,#0x28]
5B43E6:  ADD.W           R3, R3, #0x38 ; '8'
5B43EA:  BNE             loc_5B4338
5B43EC:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5B43F6)
5B43F0:  LDR             R1, [SP,#0x38+var_34]
5B43F2:  ADD             R0, PC; TempBufferVerticesStored_ptr
5B43F4:  ADD             R1, LR
5B43F6:  LDR             R0, [R0]; TempBufferVerticesStored
5B43F8:  STR             R1, [R0]
5B43FA:  MOVS            R0, #0xA
5B43FC:  MOVS            R1, #5
5B43FE:  LDR             R4, [SP,#0x38+var_2C]
5B4400:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4404:  MOVS            R0, #0xB
5B4406:  MOVS            R1, #6
5B4408:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B440C:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5B441C)
5B4410:  CMP.W           R9, #1
5B4414:  LDR.W           R2, =(Scene_ptr - 0x5B4422)
5B4418:  ADD             R0, PC; TempBufferVerticesStored_ptr
5B441A:  LDR.W           R3, =(TempVertexBuffer_ptr - 0x5B4426)
5B441E:  ADD             R2, PC; Scene_ptr
5B4420:  LDR             R1, [R0]; TempBufferVerticesStored
5B4422:  ADD             R3, PC; TempVertexBuffer_ptr
5B4424:  LDR             R6, [R2]; Scene
5B4426:  LDR             R2, [R3]; TempVertexBuffer
5B4428:  LDR             R0, [R1]
5B442A:  RSB.W           R3, R0, R0,LSL#3
5B442E:  ADD.W           R2, R2, R3,LSL#2
5B4432:  MOV             R3, #0x12004
5B443A:  STR.W           R11, [R2,R3]
5B443E:  MOV.W           R3, #0x12000
5B4442:  STR.W           R11, [R2,R3]
5B4446:  MOV             R3, #0x12008
5B444E:  STR.W           R11, [R2,R3]
5B4452:  LDR             R3, [R6,#(dword_9FC93C - 0x9FC938)]
5B4454:  ADD.W           R6, R8, #1
5B4458:  VMOV            S2, R6
5B445C:  ADD.W           R6, R5, #1
5B4460:  VLDR            S0, [R3,#0x80]
5B4464:  VCVT.F32.S32    S2, S2
5B4468:  VDIV.F32        S0, S16, S0
5B446C:  VMOV            S4, R6
5B4470:  MOV             R6, #0x12024
5B4478:  VCVT.F32.S32    S4, S4
5B447C:  STR.W           R11, [R2,R6]
5B4480:  MOV             R6, #0x12020
5B4488:  ADD             R6, R2
5B448A:  VSTR            S2, [R6]
5B448E:  ADD.W           R6, R2, #0x12000
5B4492:  ADD.W           R6, R6, #0x1C
5B4496:  VSTR            S4, [R6]
5B449A:  MOV             R6, #0x1200C
5B44A2:  ADD             R6, R2
5B44A4:  VSTR            S0, [R6]
5B44A8:  MOV.W           R6, #0x80
5B44AC:  VLDR            S0, [R3,#0x80]
5B44B0:  MOV             R3, #0x1202D
5B44B8:  VDIV.F32        S0, S16, S0
5B44BC:  STRB            R4, [R2,R3]
5B44BE:  MOV             R3, #0x1202C
5B44C6:  STRB            R4, [R2,R3]
5B44C8:  MOV             R3, #0x1202E
5B44D0:  STRB            R4, [R2,R3]
5B44D2:  MOV             R3, #0x1202F
5B44DA:  STRB            R6, [R2,R3]
5B44DC:  MOV             R3, #0x12011
5B44E4:  STRB            R4, [R2,R3]
5B44E6:  MOV             R3, #0x12010
5B44EE:  STRB            R4, [R2,R3]
5B44F0:  MOV             R3, #0x12012
5B44F8:  STRB            R4, [R2,R3]
5B44FA:  MOV             R3, #0x12013
5B4502:  STRB            R6, [R2,R3]
5B4504:  MOV             R3, #0x12028
5B450C:  ADD             R2, R3
5B450E:  VSTR            S0, [R2]
5B4512:  ADD.W           R2, R0, #2
5B4516:  STR             R2, [R1]
5B4518:  BLT.W           loc_5B473A
5B451C:  CMP             R0, #1
5B451E:  BLT             loc_5B4530
5B4520:  LDR             R0, =(TempVertexBuffer_ptr - 0x5B4526)
5B4522:  ADD             R0, PC; TempVertexBuffer_ptr
5B4524:  LDR             R0, [R0]; TempVertexBuffer
5B4526:  ADD.W           R1, R0, #0x12000
5B452A:  MOVS            R0, #4
5B452C:  BLX.W           j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
5B4530:  LDR             R0, =(_ZN12CPostEffects24m_bRadiosityLinearFilterE_ptr - 0x5B453A)
5B4532:  MOVS            R2, #0
5B4534:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5B453C)
5B4536:  ADD             R0, PC; _ZN12CPostEffects24m_bRadiosityLinearFilterE_ptr
5B4538:  ADD             R1, PC; TempBufferVerticesStored_ptr
5B453A:  LDR             R0, [R0]; CPostEffects::m_bRadiosityLinearFilter ...
5B453C:  LDR             R1, [R1]; TempBufferVerticesStored
5B453E:  LDRB            R0, [R0]; CPostEffects::m_bRadiosityLinearFilter
5B4540:  STR             R2, [R1]
5B4542:  CMP             R0, #0
5B4544:  MOV.W           R0, #9
5B4548:  ITE EQ
5B454A:  MOVEQ           R1, #3
5B454C:  MOVNE           R1, #2
5B454E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4552:  LDR             R0, =(_ZN12CPostEffects25m_bRadiosityStripCopyModeE_ptr - 0x5B4558)
5B4554:  ADD             R0, PC; _ZN12CPostEffects25m_bRadiosityStripCopyModeE_ptr
5B4556:  LDR             R0, [R0]; CPostEffects::m_bRadiosityStripCopyMode ...
5B4558:  LDRB            R4, [R0]; CPostEffects::m_bRadiosityStripCopyMode
5B455A:  CMP             R4, #0
5B455C:  BNE             loc_5B465C
5B455E:  LDR             R0, =(_ZN12CPostEffects17m_bRadiosityDebugE_ptr - 0x5B456E)
5B4560:  VMOV            S0, R8
5B4564:  LDR             R1, =(TempVertexBuffer_ptr - 0x5B4574)
5B4566:  VMOV            S2, R5
5B456A:  ADD             R0, PC; _ZN12CPostEffects17m_bRadiosityDebugE_ptr
5B456C:  LDR             R3, =(RsGlobal_ptr - 0x5B4578)
5B456E:  LDR             R2, =(Scene_ptr - 0x5B457E)
5B4570:  ADD             R1, PC; TempVertexBuffer_ptr
5B4572:  LDR             R6, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B4582)
5B4574:  ADD             R3, PC; RsGlobal_ptr
5B4576:  LDR.W           LR, =(TempBufferVerticesStored_ptr - 0x5B4584)
5B457A:  ADD             R2, PC; Scene_ptr
5B457C:  LDR             R0, [R0]; CPostEffects::m_bRadiosityDebug ...
5B457E:  ADD             R6, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B4580:  ADD             LR, PC; TempBufferVerticesStored_ptr
5B4582:  LDR.W           R10, [R1]; TempVertexBuffer
5B4586:  LDR             R3, [R3]; RsGlobal
5B4588:  MOV.W           R12, R9,LSL#1
5B458C:  LDRB            R1, [R0]; CPostEffects::m_bRadiosityDebug
5B458E:  LDR             R0, [R2]; Scene
5B4590:  LDR             R2, [R6]; CPostEffects::pRasterFrontBuffer ...
5B4592:  CMP             R1, #0
5B4594:  LDR.W           R11, [SP,#0x38+var_30]
5B4598:  LDR.W           R6, [LR]; TempBufferVerticesStored
5B459C:  IT NE
5B459E:  MOVNE.W         R11, #0xFFFFFFFF
5B45A2:  VLDR            S6, [R3,#4]
5B45A6:  VLDR            S4, [R3,#8]
5B45AA:  VCVT.F32.S32    S0, S0
5B45AE:  LDR.W           LR, [R6]
5B45B2:  VCVT.F32.S32    S2, S2
5B45B6:  LDR             R6, [R0,#(dword_9FC93C - 0x9FC938)]
5B45B8:  CMP             R1, #0
5B45BA:  LDR             R2, [R2]; CPostEffects::pRasterFrontBuffer
5B45BC:  VCVT.F32.S32    S4, S4
5B45C0:  VCVT.F32.S32    S6, S6
5B45C4:  RSB.W           R0, LR, LR,LSL#3
5B45C8:  IT NE
5B45CA:  MOVNE.W         R1, #0xFFFFFFFF
5B45CE:  MOVS            R3, #0
5B45D0:  ADD.W           R0, R10, R0,LSL#2
5B45D4:  MOV             R10, R9
5B45D6:  ADD.W           R0, R0, #0x12000
5B45DA:  STRD.W          R3, R3, [R0,#0x14]
5B45DE:  SUBS.W          R10, R10, #1
5B45E2:  STRD.W          R3, R3, [R0]
5B45E6:  STR             R3, [R0,#8]
5B45E8:  VLDR            S8, [R6,#0x80]
5B45EC:  VDIV.F32        S8, S16, S8
5B45F0:  VSTR            S8, [R0,#0xC]
5B45F4:  VLDR            S8, [R2,#0xC]
5B45F8:  VLDR            S10, [R2,#0x10]
5B45FC:  VCVT.F32.S32    S10, S10
5B4600:  VCVT.F32.S32    S8, S8
5B4604:  VSTR            S6, [R0,#0x1C]
5B4608:  VSTR            S4, [R0,#0x20]
5B460C:  STR             R3, [R0,#0x24]
5B460E:  VDIV.F32        S10, S0, S10
5B4612:  VDIV.F32        S8, S2, S8
5B4616:  VSTR            S8, [R0,#0x30]
5B461A:  VSTR            S10, [R0,#0x34]
5B461E:  VLDR            S8, [R6,#0x80]
5B4622:  STRB            R1, [R0,#0x10]
5B4624:  VDIV.F32        S8, S16, S8
5B4628:  STRB            R1, [R0,#0x11]
5B462A:  STRB            R1, [R0,#0x12]
5B462C:  STRB.W          R11, [R0,#0x13]
5B4630:  STRB.W          R1, [R0,#0x2C]
5B4634:  STRB.W          R1, [R0,#0x2D]
5B4638:  STRB.W          R1, [R0,#0x2E]
5B463C:  STRB.W          R11, [R0,#0x2F]
5B4640:  VSTR            S8, [R0,#0x28]
5B4644:  ADD.W           R0, R0, #0x38 ; '8'
5B4648:  BNE             loc_5B45DA
5B464A:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5B4656)
5B464C:  CMP             R4, #0
5B464E:  ADD.W           R1, LR, R12
5B4652:  ADD             R0, PC; TempBufferVerticesStored_ptr
5B4654:  LDR             R0, [R0]; TempBufferVerticesStored
5B4656:  STR             R1, [R0]
5B4658:  BEQ.W           loc_5B47A0
5B465C:  LDR             R0, =(RsGlobal_ptr - 0x5B466C)
5B465E:  VMOV            S0, R8
5B4662:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5B4670)
5B4664:  VMOV            S2, R5
5B4668:  ADD             R0, PC; RsGlobal_ptr
5B466A:  LDR             R2, =(Scene_ptr - 0x5B4674)
5B466C:  ADD             R1, PC; TempBufferVerticesStored_ptr
5B466E:  LDR             R6, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B4678)
5B4670:  ADD             R2, PC; Scene_ptr
5B4672:  LDR             R0, [R0]; RsGlobal
5B4674:  ADD             R6, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B4676:  LDR             R1, [R1]; TempBufferVerticesStored
5B4678:  LDR             R3, =(TempVertexBuffer_ptr - 0x5B4684)
5B467A:  MOVS            R5, #0
5B467C:  LDR             R2, [R2]; Scene
5B467E:  LDR             R6, [R6]; CPostEffects::pRasterFrontBuffer ...
5B4680:  ADD             R3, PC; TempVertexBuffer_ptr
5B4682:  VLDR            S6, [R0,#4]
5B4686:  VLDR            S4, [R0,#8]
5B468A:  VCVT.F32.S32    S0, S0
5B468E:  LDR             R0, [R1]
5B4690:  VCVT.F32.S32    S2, S2
5B4694:  LDR             R1, [R6]; CPostEffects::pRasterFrontBuffer
5B4696:  LDR             R2, [R2,#(dword_9FC93C - 0x9FC938)]
5B4698:  VCVT.F32.S32    S4, S4
5B469C:  VCVT.F32.S32    S6, S6
5B46A0:  LDR             R3, [R3]; TempVertexBuffer
5B46A2:  RSB.W           R6, R0, R0,LSL#3
5B46A6:  LDR             R4, [SP,#0x38+var_30]
5B46A8:  ADD.W           R3, R3, R6,LSL#2
5B46AC:  MOV             R6, #0x12034
5B46B4:  ADD             R6, R3
5B46B6:  MOV.W           R3, R9,LSL#1
5B46BA:  STRD.W          R5, R5, [R6,#-0x20]
5B46BE:  SUBS.W          R9, R9, #1
5B46C2:  STRD.W          R5, R5, [R6,#-0x34]
5B46C6:  STR.W           R5, [R6,#-0x2C]
5B46CA:  VLDR            S8, [R2,#0x80]
5B46CE:  VDIV.F32        S8, S16, S8
5B46D2:  VSTR            S8, [R6,#-0x28]
5B46D6:  VLDR            S8, [R1,#0xC]
5B46DA:  VLDR            S10, [R1,#0x10]
5B46DE:  VCVT.F32.S32    S10, S10
5B46E2:  VCVT.F32.S32    S8, S8
5B46E6:  VSTR            S6, [R6,#-0x18]
5B46EA:  VSTR            S4, [R6,#-0x14]
5B46EE:  STR.W           R5, [R6,#-0x10]
5B46F2:  VDIV.F32        S10, S0, S10
5B46F6:  VDIV.F32        S8, S2, S8
5B46FA:  VSTR            S8, [R6,#-4]
5B46FE:  VSTR            S10, [R6]
5B4702:  VLDR            S8, [R2,#0x80]
5B4706:  STRH.W          R5, [R6,#-0x24]
5B470A:  VDIV.F32        S8, S16, S8
5B470E:  STRB.W          R5, [R6,#-0x22]
5B4712:  STRB.W          R4, [R6,#-0x21]
5B4716:  STRB.W          R5, [R6,#-8]
5B471A:  STRB.W          R5, [R6,#-7]
5B471E:  STRB.W          R5, [R6,#-6]
5B4722:  STRB.W          R4, [R6,#-5]
5B4726:  VSTR            S8, [R6,#-0xC]
5B472A:  ADD.W           R6, R6, #0x38 ; '8'
5B472E:  BNE             loc_5B46BA
5B4730:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5B4738)
5B4732:  ADDS            R2, R0, R3
5B4734:  ADD             R1, PC; TempBufferVerticesStored_ptr
5B4736:  LDR             R1, [R1]; TempBufferVerticesStored
5B4738:  STR             R2, [R1]
5B473A:  CMP             R2, #3
5B473C:  BLT             loc_5B474E
5B473E:  LDR             R0, =(TempVertexBuffer_ptr - 0x5B4744)
5B4740:  ADD             R0, PC; TempVertexBuffer_ptr
5B4742:  LDR             R0, [R0]; TempVertexBuffer
5B4744:  ADD.W           R1, R0, #0x12000
5B4748:  MOVS            R0, #4
5B474A:  BLX.W           j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
5B474E:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5B4756)
5B4750:  MOVS            R1, #0
5B4752:  ADD             R0, PC; TempBufferVerticesStored_ptr
5B4754:  LDR             R0, [R0]; TempBufferVerticesStored
5B4756:  STR             R1, [R0]
5B4758:  MOVS            R0, #0xE
5B475A:  MOVS            R1, #0
5B475C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4760:  MOVS            R0, #6
5B4762:  MOVS            R1, #1
5B4764:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4768:  MOVS            R0, #8
5B476A:  MOVS            R1, #1
5B476C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4770:  MOVS            R0, #1
5B4772:  MOVS            R1, #0
5B4774:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4778:  MOVS            R0, #0xC
5B477A:  MOVS            R1, #0
5B477C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4780:  MOVS            R0, #0xA
5B4782:  MOVS            R1, #5
5B4784:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4788:  MOVS            R0, #0xB
5B478A:  MOVS            R1, #6
5B478C:  ADD             SP, SP, #0x10
5B478E:  VPOP            {D8}
5B4792:  ADD             SP, SP, #4
5B4794:  POP.W           {R8-R11}
5B4798:  POP.W           {R4-R7,LR}
5B479C:  B.W             sub_192888
5B47A0:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5B47A6)
5B47A2:  ADD             R0, PC; TempBufferVerticesStored_ptr
5B47A4:  LDR             R0, [R0]; TempBufferVerticesStored
5B47A6:  LDR             R2, [R0]
5B47A8:  CMP             R2, #3
5B47AA:  BGE             loc_5B473E
5B47AC:  B               loc_5B474E
