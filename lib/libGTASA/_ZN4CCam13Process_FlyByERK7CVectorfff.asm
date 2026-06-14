; =========================================================
; Game Engine Function: _ZN4CCam13Process_FlyByERK7CVectorfff
; Address            : 0x463120 - 0x46361E
; =========================================================

463120:  PUSH            {R4-R7,LR}
463122:  ADD             R7, SP, #0xC
463124:  PUSH.W          {R8-R11}
463128:  SUB             SP, SP, #4
46312A:  VPUSH           {D8-D10}
46312E:  SUB             SP, SP, #0x20
463130:  MOV             R4, R0
463132:  LDR.W           R0, =(TheCamera_ptr - 0x46313A)
463136:  ADD             R0, PC; TheCamera_ptr
463138:  LDR             R0, [R0]; TheCamera
46313A:  LDRB            R1, [R0,#(byte_951FC5 - 0x951FA8)]
46313C:  MOVS            R0, #0
46313E:  STR             R0, [SP,#0x58+var_4C]
463140:  CMP             R1, #0
463142:  BNE.W           loc_463610
463146:  LDR.W           R1, =(TheCamera_ptr - 0x46315A)
46314A:  MOV.W           R2, #0x3F800000
46314E:  STR.W           R2, [R4,#0x194]
463152:  ADD.W           R8, R4, #0x18C
463156:  ADD             R1, PC; TheCamera_ptr
463158:  STRD.W          R0, R0, [R4,#0x18C]
46315C:  LDR             R1, [R1]; TheCamera
46315E:  LDRB.W          R0, [R1,#(byte_951FD9 - 0x951FA8)]
463162:  CBZ             R0, loc_463196
463164:  LDR.W           R0, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x463170)
463168:  VLDR            S0, =50.0
46316C:  ADD             R0, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
46316E:  LDR             R0, [R0]; CTimer::ms_fTimeStepNonClipped ...
463170:  VLDR            S2, [R0]
463174:  VDIV.F32        S0, S2, S0
463178:  VLDR            S2, =1000.0
46317C:  VMUL.F32        S0, S0, S2
463180:  VLDR            S2, [R4,#0x68]
463184:  VADD.F32        S0, S2, S0
463188:  VCVT.U32.F32    S2, S0
46318C:  VCVT.F32.U32    S16, S2
463190:  VSTR            S0, [R4,#0x68]
463194:  B               loc_46320C
463196:  LDR.W           R0, =(TheCamera_ptr - 0x4631A4)
46319A:  MOVS            R1, #0
46319C:  STR             R1, [R4,#0x68]
46319E:  MOVS            R5, #0xB
4631A0:  ADD             R0, PC; TheCamera_ptr
4631A2:  VLDR            S2, =1000.0
4631A6:  LDR.W           R3, =(dword_9ABF68 - 0x4631B4)
4631AA:  LDR             R0, [R0]; TheCamera
4631AC:  LDR.W           R6, =(dword_9ABF6C - 0x4631BE)
4631B0:  ADD             R3, PC; dword_9ABF68
4631B2:  LDR.W           R12, =(dword_9ABF70 - 0x4631C0)
4631B6:  LDR.W           R1, [R0,#(dword_952894 - 0x951FA8)]
4631BA:  ADD             R6, PC; dword_9ABF6C
4631BC:  ADD             R12, PC; dword_9ABF70
4631BE:  VLDR            S16, =0.0
4631C2:  VLDR            S0, [R1]
4631C6:  VCVT.S32.F32    S0, S0
4631CA:  VMOV            R2, S0
4631CE:  ADD.W           R2, R2, R2,LSL#2
4631D2:  ADD.W           R1, R1, R2,LSL#3
4631D6:  LDR.W           R2, =(dword_9ABF64 - 0x4631E2)
4631DA:  VLDR            S0, [R1,#-0x24]
4631DE:  ADD             R2, PC; dword_9ABF64
4631E0:  LDR.W           R1, =(dword_9ABF60 - 0x4631EC)
4631E4:  VMUL.F32        S0, S0, S2
4631E8:  ADD             R1, PC; dword_9ABF60
4631EA:  VCVT.U32.F32    S0, S0
4631EE:  VSTR            S0, [R4,#0x10]
4631F2:  STR             R5, [R1]
4631F4:  MOVS            R1, #1
4631F6:  STRB.W          R1, [R0,#(byte_951FD9 - 0x951FA8)]
4631FA:  MOVS            R1, #5
4631FC:  LDR.W           R0, [R0,#(dword_95288C - 0x951FA8)]
463200:  STR             R5, [R2]
463202:  STR             R1, [R3]
463204:  STR             R1, [R6]
463206:  LDR             R0, [R0,#8]
463208:  STR.W           R0, [R12]
46320C:  ADD.W           R0, R4, #0x10
463210:  VLDR            S0, [R0]
463214:  VCVT.F32.U32    S0, S0
463218:  VCMPE.F32       S16, S0
46321C:  VMRS            APSR_nzcv, FPSCR
463220:  BGE.W           loc_46346C
463224:  VDIV.F32        S0, S16, S0
463228:  LDR.W           R0, =(TheCamera_ptr - 0x463234)
46322C:  LDR.W           R1, =(dword_9ABF60 - 0x463236)
463230:  ADD             R0, PC; TheCamera_ptr
463232:  ADD             R1, PC; dword_9ABF60
463234:  LDR             R2, [R0]; TheCamera
463236:  LDR             R0, [R1]
463238:  LDR.W           R1, [R2,#(dword_952894 - 0x951FA8)]; float *
46323C:  VSTR            S0, [R2,#0x13C]
463240:  ADD.W           R2, R1, R0,LSL#2
463244:  VLDR            S0, [R1,#4]
463248:  VLDR            S2, [R2]
46324C:  VLDR            S18, =1000.0
463250:  VSUB.F32        S2, S2, S0
463254:  VMUL.F32        S2, S2, S18
463258:  VCMPE.F32       S2, S16
46325C:  VMRS            APSR_nzcv, FPSCR
463260:  BGT             loc_46328A
463262:  LDR.W           R3, =(dword_9ABF60 - 0x463270)
463266:  ADDS            R0, #0xA
463268:  ADD.W           R2, R1, R0,LSL#2
46326C:  ADD             R3, PC; dword_9ABF60
46326E:  STR             R0, [R3]
463270:  ADDS            R0, #0xA
463272:  VLDR            S2, [R2]
463276:  ADDS            R2, #0x28 ; '('
463278:  VSUB.F32        S2, S2, S0
46327C:  VMUL.F32        S2, S2, S18
463280:  VCMPE.F32       S2, S16
463284:  VMRS            APSR_nzcv, FPSCR
463288:  BLE             loc_46326E
46328A:  VMOV            R9, S16
46328E:  LDR.W           R3, =(dword_9ABF60 - 0x46329A)
463292:  ADD.W           R0, R4, #0x174; CVector *
463296:  ADD             R3, PC; dword_9ABF60 ; unsigned int *
463298:  MOV             R2, R9; float
46329A:  BLX             j__Z28FindSplinePathPositionVectorP7CVectorPffRj; FindSplinePathPositionVector(CVector *,float *,float,uint &)
46329E:  LDR.W           R0, =(TheCamera_ptr - 0x4632AA)
4632A2:  LDR.W           R2, =(dword_9ABF64 - 0x4632AC)
4632A6:  ADD             R0, PC; TheCamera_ptr
4632A8:  ADD             R2, PC; dword_9ABF64
4632AA:  LDR             R0, [R0]; TheCamera
4632AC:  LDR.W           R1, [R0,#(dword_952898 - 0x951FA8)]; float *
4632B0:  LDR             R0, [R2]
4632B2:  VLDR            S0, [R1,#4]
4632B6:  ADD.W           R2, R1, R0,LSL#2
4632BA:  VLDR            S2, [R2]
4632BE:  VSUB.F32        S2, S2, S0
4632C2:  VMUL.F32        S2, S2, S18
4632C6:  VCMPE.F32       S2, S16
4632CA:  VMRS            APSR_nzcv, FPSCR
4632CE:  BGT             loc_4632F6
4632D0:  LDR             R3, =(dword_9ABF64 - 0x4632DC)
4632D2:  ADDS            R0, #0xA
4632D4:  ADD.W           R2, R1, R0,LSL#2
4632D8:  ADD             R3, PC; dword_9ABF64
4632DA:  STR             R0, [R3]
4632DC:  ADDS            R0, #0xA
4632DE:  VLDR            S2, [R2]
4632E2:  ADDS            R2, #0x28 ; '('
4632E4:  VSUB.F32        S2, S2, S0
4632E8:  VMUL.F32        S2, S2, S18
4632EC:  VCMPE.F32       S2, S16
4632F0:  VMRS            APSR_nzcv, FPSCR
4632F4:  BLE             loc_4632DA
4632F6:  LDR             R3, =(dword_9ABF64 - 0x463302)
4632F8:  ADD.W           R11, R4, #0x168
4632FC:  MOV             R2, R9; float
4632FE:  ADD             R3, PC; dword_9ABF64 ; unsigned int *
463300:  MOV             R0, R11; CVector *
463302:  BLX             j__Z28FindSplinePathPositionVectorP7CVectorPffRj; FindSplinePathPositionVector(CVector *,float *,float,uint &)
463306:  LDR             R0, =(TheCamera_ptr - 0x46330E)
463308:  LDR             R2, =(dword_9ABF68 - 0x463310)
46330A:  ADD             R0, PC; TheCamera_ptr
46330C:  ADD             R2, PC; dword_9ABF68
46330E:  LDR             R0, [R0]; TheCamera
463310:  LDR.W           R1, [R0,#(dword_952890 - 0x951FA8)]; float *
463314:  LDR             R0, [R2]
463316:  VLDR            S0, [R1,#4]
46331A:  ADD.W           R2, R1, R0,LSL#2
46331E:  VLDR            S2, [R2]
463322:  VSUB.F32        S2, S2, S0
463326:  VMUL.F32        S2, S2, S18
46332A:  VCMPE.F32       S2, S16
46332E:  VMRS            APSR_nzcv, FPSCR
463332:  BGT             loc_46335A
463334:  LDR             R3, =(dword_9ABF68 - 0x463340)
463336:  ADDS            R0, #4
463338:  ADD.W           R2, R1, R0,LSL#2
46333C:  ADD             R3, PC; dword_9ABF68
46333E:  STR             R0, [R3]
463340:  ADDS            R0, #4
463342:  VLDR            S2, [R2]
463346:  ADDS            R2, #0x10
463348:  VSUB.F32        S2, S2, S0
46334C:  VMUL.F32        S2, S2, S18
463350:  VCMPE.F32       S2, S16
463354:  VMRS            APSR_nzcv, FPSCR
463358:  BLE             loc_46333E
46335A:  LDR             R3, =(dword_9ABF68 - 0x463364)
46335C:  ADD             R0, SP, #0x58+var_4C; float *
46335E:  MOV             R2, R9; float
463360:  ADD             R3, PC; dword_9ABF68 ; unsigned int *
463362:  BLX             j__Z27FindSplinePathPositionFloatPfS_fRj; FindSplinePathPositionFloat(float *,float *,float,uint &)
463366:  VLDR            S0, =3.1416
46336A:  VLDR            S2, [SP,#0x58+var_4C]
46336E:  VMUL.F32        S0, S2, S0
463372:  VLDR            S2, =180.0
463376:  VDIV.F32        S0, S0, S2
46337A:  VLDR            S2, =1.5708
46337E:  VADD.F32        S20, S0, S2
463382:  VMOV            R6, S20
463386:  MOV             R0, R6; x
463388:  BLX             sinf
46338C:  LDR             R1, =(TheCamera_ptr - 0x463396)
46338E:  LDR.W           R10, =(dword_9ABF6C - 0x4633A2)
463392:  ADD             R1, PC; TheCamera_ptr
463394:  VSTR            S20, [SP,#0x58+var_4C]
463398:  STR.W           R0, [R4,#0x194]
46339C:  MOV             R0, R6; x
46339E:  ADD             R10, PC; dword_9ABF6C
4633A0:  LDR             R5, [R1]; TheCamera
4633A2:  BLX             cosf
4633A6:  STR.W           R0, [R4,#0x18C]
4633AA:  LDR.W           R0, [R10]
4633AE:  LDR.W           R1, [R5,#(dword_95288C - 0x951FA8)]; float *
4633B2:  ADD.W           R2, R1, R0,LSL#2
4633B6:  VLDR            S0, [R1,#4]
4633BA:  VLDR            S2, [R2]
4633BE:  VSUB.F32        S2, S2, S0
4633C2:  VMUL.F32        S2, S2, S18
4633C6:  VCMPE.F32       S2, S16
4633CA:  VMRS            APSR_nzcv, FPSCR
4633CE:  BGT             loc_4633F6
4633D0:  LDR             R3, =(dword_9ABF6C - 0x4633DC)
4633D2:  ADDS            R0, #4
4633D4:  ADD.W           R2, R1, R0,LSL#2
4633D8:  ADD             R3, PC; dword_9ABF6C
4633DA:  STR             R0, [R3]
4633DC:  ADDS            R0, #4
4633DE:  VLDR            S2, [R2]
4633E2:  ADDS            R2, #0x10
4633E4:  VSUB.F32        S2, S2, S0
4633E8:  VMUL.F32        S2, S2, S18
4633EC:  VCMPE.F32       S2, S16
4633F0:  VMRS            APSR_nzcv, FPSCR
4633F4:  BLE             loc_4633DA
4633F6:  LDR             R0, =(dword_9ABF70 - 0x463400)
4633F8:  MOV             R2, R9; float
4633FA:  LDR             R3, =(dword_9ABF6C - 0x463402)
4633FC:  ADD             R0, PC; dword_9ABF70 ; float *
4633FE:  ADD             R3, PC; dword_9ABF6C ; unsigned int *
463400:  BLX             j__Z27FindSplinePathPositionFloatPfS_fRj; FindSplinePathPositionFloat(float *,float *,float,uint &)
463404:  VLDR            S0, [R4,#0x168]
463408:  VLDR            S6, [R4,#0x174]
46340C:  VLDR            S2, [R4,#0x16C]
463410:  VLDR            S8, [R4,#0x178]
463414:  VSUB.F32        S0, S0, S6
463418:  VLDR            S4, [R4,#0x170]
46341C:  VLDR            S10, [R4,#0x17C]
463420:  VSUB.F32        S2, S2, S8
463424:  VLDR            D16, [R11]
463428:  VSUB.F32        S4, S4, S10
46342C:  LDR.W           R0, [R11,#8]
463430:  STR.W           R0, [R4,#0x128]
463434:  MOV             R0, R11; this
463436:  VSTR            D16, [R4,#0x120]
46343A:  VSTR            S0, [R4,#0x168]
46343E:  VSTR            S2, [R4,#0x16C]
463442:  VSTR            S4, [R4,#0x170]
463446:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
46344A:  MOV             R0, SP; CVector *
46344C:  MOV             R1, R8; CVector *
46344E:  MOV             R2, R11
463450:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
463454:  VLDR            D16, [SP,#0x58+var_58]
463458:  ADD             R2, SP, #0x58+var_48
46345A:  LDR             R0, [SP,#0x58+var_50]
46345C:  MOV             R1, R11
46345E:  B               loc_4635E6
463460:  DCFS 50.0
463464:  DCFS 1000.0
463468:  DCFS 0.0
46346C:  BLT.W           loc_463606
463470:  LDR             R0, =(TheCamera_ptr - 0x463482)
463472:  MOV             LR, #0xFFFFFFF7
463476:  LDR.W           R10, =(dword_9ABF64 - 0x463484)
46347A:  VMOV            R9, S16
46347E:  ADD             R0, PC; TheCamera_ptr
463480:  ADD             R10, PC; dword_9ABF64
463482:  LDR.W           R11, [R0]; TheCamera
463486:  LDR             R0, =(dword_9ABF60 - 0x463490)
463488:  LDR.W           R1, [R11,#(dword_952894 - 0x951FA8)]; float *
46348C:  ADD             R0, PC; dword_9ABF60
46348E:  LDR.W           R12, [R11,#(dword_95288C - 0x951FA8)]
463492:  LDR.W           R2, [R11,#(dword_952890 - 0x951FA8)]
463496:  MOV             R3, R0; unsigned int *
463498:  VLDR            S0, [R1]
46349C:  LDR.W           R5, [R11,#(dword_952898 - 0x951FA8)]
4634A0:  VCVT.S32.F32    S0, S0
4634A4:  VMOV            R6, S0
4634A8:  ADD.W           R6, R6, R6,LSL#2
4634AC:  ADD.W           R6, LR, R6,LSL#1
4634B0:  STR             R6, [R0]
4634B2:  VLDR            S0, [R5]
4634B6:  MOV             R6, #0xFFFFFFFD
4634BA:  VCVT.S32.F32    S0, S0
4634BE:  VMOV            R0, S0
4634C2:  ADD.W           R0, R0, R0,LSL#2
4634C6:  ADD.W           R0, LR, R0,LSL#1
4634CA:  STR.W           R0, [R10]
4634CE:  VLDR            S0, [R2]
4634D2:  LDR             R0, =(dword_9ABF68 - 0x4634DC)
4634D4:  VCVT.S32.F32    S0, S0
4634D8:  ADD             R0, PC; dword_9ABF68
4634DA:  VMOV            R2, S0
4634DE:  ADD.W           R2, R6, R2,LSL#2
4634E2:  STR             R2, [R0]
4634E4:  VLDR            S0, [R12]
4634E8:  MOV             R2, R9; float
4634EA:  VCVT.S32.F32    S0, S0
4634EE:  VMOV            R0, S0
4634F2:  ADD.W           R0, R6, R0,LSL#2
4634F6:  LDR             R6, =(dword_9ABF6C - 0x4634FC)
4634F8:  ADD             R6, PC; dword_9ABF6C
4634FA:  STR             R0, [R6]
4634FC:  ADD.W           R0, R4, #0x174; CVector *
463500:  BLX             j__Z28FindSplinePathPositionVectorP7CVectorPffRj; FindSplinePathPositionVector(CVector *,float *,float,uint &)
463504:  ADD.W           R5, R4, #0x168
463508:  LDR.W           R1, [R11,#(dword_952898 - 0x951FA8)]; float *
46350C:  MOV             R2, R9; float
46350E:  MOV             R3, R10; unsigned int *
463510:  MOV             R0, R5; CVector *
463512:  BLX             j__Z28FindSplinePathPositionVectorP7CVectorPffRj; FindSplinePathPositionVector(CVector *,float *,float,uint &)
463516:  LDR             R3, =(dword_9ABF68 - 0x463524)
463518:  ADD             R0, SP, #0x58+var_4C; float *
46351A:  LDR.W           R1, [R11,#(dword_952890 - 0x951FA8)]; float *
46351E:  MOV             R2, R9; float
463520:  ADD             R3, PC; dword_9ABF68 ; unsigned int *
463522:  BLX             j__Z27FindSplinePathPositionFloatPfS_fRj; FindSplinePathPositionFloat(float *,float *,float,uint &)
463526:  VLDR            S0, =3.1416
46352A:  VLDR            S2, [SP,#0x58+var_4C]
46352E:  VMUL.F32        S0, S2, S0
463532:  VLDR            S2, =180.0
463536:  VDIV.F32        S0, S0, S2
46353A:  VLDR            S2, =1.5708
46353E:  VADD.F32        S0, S0, S2
463542:  VMOV            R10, S0
463546:  VSTR            S0, [SP,#0x58+var_4C]
46354A:  MOV             R0, R10; x
46354C:  BLX             sinf
463550:  STR.W           R0, [R4,#0x194]
463554:  MOV             R0, R10; x
463556:  BLX             cosf
46355A:  STR.W           R0, [R4,#0x18C]
46355E:  MOV             R2, R9; float
463560:  LDR             R0, =(dword_9ABF70 - 0x46356C)
463562:  MOV             R3, R6; unsigned int *
463564:  LDR.W           R1, [R11,#(dword_95288C - 0x951FA8)]; float *
463568:  ADD             R0, PC; dword_9ABF70 ; float *
46356A:  BLX             j__Z27FindSplinePathPositionFloatPfS_fRj; FindSplinePathPositionFloat(float *,float *,float,uint &)
46356E:  LDR             R1, =(dword_9ABF64 - 0x463578)
463570:  MOVS            R0, #0
463572:  STR             R0, [R6]
463574:  ADD             R1, PC; dword_9ABF64
463576:  STR             R0, [R1]
463578:  LDR             R1, =(dword_9ABF60 - 0x46357E)
46357A:  ADD             R1, PC; dword_9ABF60
46357C:  STR             R0, [R1]
46357E:  MOV.W           R1, #0x3F800000
463582:  STR.W           R1, [R11,#(dword_9520E4 - 0x951FA8)]
463586:  LDR             R1, =(dword_9ABF68 - 0x46358C)
463588:  ADD             R1, PC; dword_9ABF68
46358A:  STR             R0, [R1]
46358C:  VLDR            S0, [R4,#0x168]
463590:  VLDR            S6, [R4,#0x174]
463594:  VLDR            S2, [R4,#0x16C]
463598:  VLDR            S8, [R4,#0x178]
46359C:  VSUB.F32        S0, S0, S6
4635A0:  VLDR            S4, [R4,#0x170]
4635A4:  VLDR            S10, [R4,#0x17C]
4635A8:  VSUB.F32        S2, S2, S8
4635AC:  VLDR            D16, [R4,#0x168]
4635B0:  VSUB.F32        S4, S4, S10
4635B4:  LDR.W           R0, [R4,#0x170]
4635B8:  STR.W           R0, [R4,#0x128]
4635BC:  MOV             R0, R5; this
4635BE:  VSTR            D16, [R4,#0x120]
4635C2:  VSTR            S0, [R4,#0x168]
4635C6:  VSTR            S2, [R4,#0x16C]
4635CA:  VSTR            S4, [R4,#0x170]
4635CE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4635D2:  MOV             R0, SP; CVector *
4635D4:  MOV             R1, R8; CVector *
4635D6:  MOV             R2, R5
4635D8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4635DC:  LDR             R0, [SP,#0x58+var_50]
4635DE:  ADD             R2, SP, #0x58+var_48
4635E0:  VLDR            D16, [SP,#0x58+var_58]
4635E4:  MOV             R1, R5; CVector *
4635E6:  STR             R0, [SP,#0x58+var_40]
4635E8:  MOV             R0, SP; CVector *
4635EA:  VSTR            D16, [SP,#0x58+var_48]
4635EE:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4635F2:  VLDR            D16, [SP,#0x58+var_58]
4635F6:  LDR             R0, [SP,#0x58+var_50]
4635F8:  STR.W           R0, [R8,#8]
4635FC:  MOV             R0, R8; this
4635FE:  VSTR            D16, [R8]
463602:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
463606:  LDR             R0, =(dword_9ABF70 - 0x46360C)
463608:  ADD             R0, PC; dword_9ABF70
46360A:  LDR             R0, [R0]
46360C:  STR.W           R0, [R4,#0x8C]
463610:  ADD             SP, SP, #0x20 ; ' '
463612:  VPOP            {D8-D10}
463616:  ADD             SP, SP, #4
463618:  POP.W           {R8-R11}
46361C:  POP             {R4-R7,PC}
