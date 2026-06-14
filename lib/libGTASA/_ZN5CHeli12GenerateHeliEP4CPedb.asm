; =========================================================
; Game Engine Function: _ZN5CHeli12GenerateHeliEP4CPedb
; Address            : 0x573260 - 0x5735D2
; =========================================================

573260:  PUSH            {R4-R7,LR}
573262:  ADD             R7, SP, #0xC
573264:  PUSH.W          {R8-R11}
573268:  SUB             SP, SP, #4
57326A:  VPUSH           {D8-D12}
57326E:  MOV             R9, R0
573270:  MOVW            R0, #(elf_hash_bucket+0x930); this
573274:  MOV             R8, R1
573276:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
57327A:  MOV             R4, R0
57327C:  MOV.W           R10, #4
573280:  CMP.W           R8, #1
573284:  BNE             loc_57329C
573286:  MOV.W           R1, #0x1E8; int
57328A:  MOVS            R2, #4; unsigned __int8
57328C:  MOVS            R3, #1; unsigned __int8
57328E:  BLX             j__ZN11CAutomobileC2Eihh_0; CAutomobile::CAutomobile(int,uchar,uchar)
573292:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x57329A)
573294:  LDR             R1, =(_ZTV5CHeli_ptr - 0x57329C)
573296:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
573298:  ADD             R1, PC; _ZTV5CHeli_ptr
57329A:  B               loc_5732B0
57329C:  MOVW            R1, #0x1F1; int
5732A0:  MOVS            R2, #4; unsigned __int8
5732A2:  MOVS            R3, #1; unsigned __int8
5732A4:  BLX             j__ZN11CAutomobileC2Eihh_0; CAutomobile::CAutomobile(int,uchar,uchar)
5732A8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5732B0)
5732AA:  LDR             R1, =(_ZTV5CHeli_ptr - 0x5732B2)
5732AC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5732AE:  ADD             R1, PC; _ZTV5CHeli_ptr
5732B0:  ADR             R2, dword_5735E0
5732B2:  VMOV.I32        Q9, #0
5732B6:  VLD1.64         {D16-D17}, [R2@128]
5732BA:  MOVS            R2, #3
5732BC:  ADDW            R6, R4, #0x9AC
5732C0:  STR.W           R2, [R4,#0x5A4]
5732C4:  MOVS            R2, #0
5732C6:  STR.W           R2, [R4,#0xA14]
5732CA:  STR.W           R2, [R4,#0x9CE]
5732CE:  LDR             R3, [R4,#0x44]
5732D0:  VST1.32         {D18-D19}, [R6]
5732D4:  ADD.W           R6, R4, #0x9A0
5732D8:  ORR.W           R3, R3, #0x1000000
5732DC:  LDR             R1, [R1]; `vtable for'CHeli ...
5732DE:  LDRB.W          R5, [R4,#0x99C]
5732E2:  VST1.32         {D18-D19}, [R6]
5732E6:  ADDW            R6, R4, #0x9BC
5732EA:  ADDS            R1, #8
5732EC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5732EE:  VST1.32         {D16-D17}, [R6]
5732F2:  AND.W           R6, R5, #0xFC
5732F6:  STRB.W          R10, [R4,#0x9CD]
5732FA:  STRB.W          R6, [R4,#0x99C]
5732FE:  STR             R3, [R4,#0x44]
573300:  STR             R1, [R4]
573302:  ADDW            R1, R4, #0x9F4
573306:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
573308:  VST1.32         {D18-D19}, [R1]
57330C:  ADDW            R1, R4, #0x9E4
573310:  VST1.32         {D18-D19}, [R1]
573314:  ADDW            R1, R4, #0x9D4
573318:  VST1.32         {D18-D19}, [R1]
57331C:  STR.W           R2, [R4,#0xA18]
573320:  MOVS            R2, #0x10
573322:  STR.W           R0, [R4,#0xA04]
573326:  STR.W           R0, [R4,#0xA1C]
57332A:  MOVS            R0, #0xA
57332C:  STRB.W          R0, [R4,#0x3E3]
573330:  MOVS            R0, #0
573332:  STR.W           R0, [R4,#0xA20]
573336:  LDR.W           R1, [R4,#0x430]
57333A:  STRB.W          R2, [R4,#0xA24]
57333E:  STRB.W          R0, [R4,#0x9CC]
573342:  STRB.W          R0, [R4,#0xA25]
573346:  ORR.W           R0, R1, #0x40 ; '@'
57334A:  STR.W           R0, [R4,#0x430]
57334E:  BLX             rand
573352:  VMOV            S0, R0
573356:  VLDR            S2, =4.6566e-10
57335A:  VMOV.F32        S4, #6.0
57335E:  ADDW            R0, R4, #0xA28
573362:  VCVT.F32.S32    S0, S0
573366:  ADD.W           R11, R9, #4
57336A:  MOV             R1, R11
57336C:  VMUL.F32        S0, S0, S2
573370:  VMOV.F32        S2, #2.0
573374:  VMUL.F32        S0, S0, S4
573378:  VADD.F32        S0, S0, S2
57337C:  VSTR            S0, [R0]
573380:  LDR.W           R0, [R9,#0x14]
573384:  CMP             R0, #0
573386:  IT NE
573388:  ADDNE.W         R1, R0, #0x30 ; '0'
57338C:  VLDR            S22, [R1]
573390:  VLDR            S24, [R1,#4]
573394:  VLDR            S18, [R1,#8]
573398:  BLX             rand
57339C:  UXTB            R0, R0
57339E:  VLDR            S2, =0.024531
5733A2:  VMOV            S0, R0
5733A6:  VCVT.F32.S32    S0, S0
5733AA:  VMUL.F32        S16, S0, S2
5733AE:  VMOV            R6, S16
5733B2:  MOV             R0, R6; x
5733B4:  BLX             cosf
5733B8:  MOV             R5, R0
5733BA:  MOV             R0, R6; x
5733BC:  BLX             sinf
5733C0:  VLDR            S20, =250.0
5733C4:  VMOV            S0, R0
5733C8:  VLDR            S4, =3000.0
5733CC:  ADDW            R10, R4, #0x42C
5733D0:  VMUL.F32        S0, S0, S20
5733D4:  VADD.F32        S0, S24, S0
5733D8:  VCMPE.F32       S0, S4
5733DC:  VMRS            APSR_nzcv, FPSCR
5733E0:  BGT             loc_573410
5733E2:  VMOV            S2, R5
5733E6:  VLDR            S6, =-3000.0
5733EA:  VMUL.F32        S2, S2, S20
5733EE:  VADD.F32        S2, S22, S2
5733F2:  VCMPE.F32       S2, S6
5733F6:  VMRS            APSR_nzcv, FPSCR
5733FA:  BLT             loc_573410
5733FC:  VCMPE.F32       S2, S4
573400:  VMRS            APSR_nzcv, FPSCR
573404:  BGT             loc_573410
573406:  VCMPE.F32       S0, S6
57340A:  VMRS            APSR_nzcv, FPSCR
57340E:  BGE             loc_57345C
573410:  VLDR            S0, =3.1416
573414:  VADD.F32        S16, S16, S0
573418:  VMOV            R5, S16
57341C:  MOV             R0, R5; x
57341E:  BLX             cosf
573422:  MOV             R6, R0
573424:  MOV             R0, R5; x
573426:  BLX             sinf
57342A:  VMOV            S0, R0
57342E:  LDR.W           R0, [R9,#0x14]
573432:  VMOV            S2, R6
573436:  MOV             R1, R11
573438:  VMUL.F32        S0, S0, S20
57343C:  CMP             R0, #0
57343E:  VMUL.F32        S2, S2, S20
573442:  IT NE
573444:  ADDNE.W         R1, R0, #0x30 ; '0'
573448:  VLDR            S4, [R1]
57344C:  VLDR            S6, [R1,#4]
573450:  VLDR            S18, [R1,#8]
573454:  VADD.F32        S0, S6, S0
573458:  VADD.F32        S2, S4, S2
57345C:  VLDR            S4, =1653.0
573460:  VLDR            S6, =2322.0
573464:  VADD.F32        S4, S0, S4
573468:  VADD.F32        S6, S2, S6
57346C:  VMUL.F32        S4, S4, S4
573470:  VMUL.F32        S6, S6, S6
573474:  VADD.F32        S4, S6, S4
573478:  VLDR            S6, =350.0
57347C:  VSQRT.F32       S4, S4
573480:  VCMPE.F32       S4, S6
573484:  VMRS            APSR_nzcv, FPSCR
573488:  BGE             loc_5734B4
57348A:  LDR.W           R0, [R9,#0x14]
57348E:  VLDR            S4, =200.0
573492:  CMP             R0, #0
573494:  VLDR            S8, =560.0
573498:  IT NE
57349A:  ADDNE.W         R11, R0, #0x30 ; '0'
57349E:  VLDR            S6, [R11,#8]
5734A2:  VLDR            S2, [R11]
5734A6:  VADD.F32        S4, S6, S4
5734AA:  VLDR            S0, [R11,#4]
5734AE:  VMAX.F32        D9, D2, D4
5734B2:  B               loc_5734BC
5734B4:  VLDR            S4, =50.0
5734B8:  VADD.F32        S18, S18, S4
5734BC:  VMOV            R5, S2
5734C0:  VMOV            R6, S0
5734C4:  MOV             R0, R5; this
5734C6:  MOV             R1, R6; float
5734C8:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
5734CC:  VMOV.F32        S0, #20.0
5734D0:  MOV             R1, R5; float
5734D2:  VMOV            S2, R0
5734D6:  LDR             R0, [R4,#0x14]; this
5734D8:  MOV             R2, R6; float
5734DA:  VADD.F32        S0, S2, S0
5734DE:  VMAX.F32        D0, D9, D0
5734E2:  VMOV            R3, S0; float
5734E6:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
5734EA:  LDRB.W          R0, [R4,#0x3A]
5734EE:  MOVS            R1, #3
5734F0:  CMP.W           R8, #1
5734F4:  BFI.W           R0, R1, #3, #0x1D
5734F8:  STRB.W          R0, [R4,#0x3A]
5734FC:  LDR.W           R0, [R10]
573500:  ORR.W           R0, R0, #8
573504:  STR.W           R0, [R10]
573508:  BNE             loc_573524
57350A:  MOVS            R0, #0x29 ; ')'
57350C:  STRB.W          R0, [R4,#0x3BE]
573510:  MOV.W           R0, #0xFFFFFFFF; int
573514:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
573518:  STR.W           R0, [R4,#0x420]
57351C:  ADD.W           R0, R4, #0x420
573520:  MOVS            R1, #0x23 ; '#'
573522:  B               loc_573530
573524:  MOVS            R0, #0x28 ; '('
573526:  MOVS            R1, #0x46 ; 'F'
573528:  STRB.W          R0, [R4,#0x3BE]
57352C:  ADD.W           R0, R4, #0x420
573530:  MOVS            R2, #0
573532:  CMP.W           R8, #1
573536:  MOVT            R2, #0x41A0
57353A:  STR.W           R2, [R4,#0x9BC]
57353E:  STRB.W          R1, [R4,#0x3D4]
573542:  MOV             R1, #0x41400000
57354A:  STR.W           R1, [R4,#0x9C4]
57354E:  STR.W           R9, [R0]
573552:  BNE             loc_57356C
573554:  MOVS            R2, #0
573556:  ADDW            R1, R4, #0x9BC
57355A:  MOVT            R2, #0x41F0
57355E:  ADDW            R0, R4, #0x9C4
573562:  STR             R2, [R1]
573564:  MOVS            R1, #0x41D80000
57356A:  STR             R1, [R0]
57356C:  VLDR            S0, =3.1416
573570:  MOVW            R0, #0xF5C3
573574:  LDR             R5, [R4,#0x14]
573576:  MOVT            R0, #0x3E28
57357A:  VADD.F32        S0, S16, S0
57357E:  STR.W           R0, [R4,#0x860]
573582:  MOVS            R0, #0
573584:  MOV.W           R1, #0x3F800000
573588:  STR             R0, [R5,#8]
57358A:  STR             R0, [R5,#0x18]
57358C:  STRD.W          R0, R0, [R5,#0x20]
573590:  STR             R1, [R5,#0x28]
573592:  VMOV            R8, S0
573596:  MOV             R0, R8; x
573598:  BLX             cosf
57359C:  MOV             R6, R0
57359E:  EOR.W           R0, R6, #0x80000000
5735A2:  STR             R0, [R5,#4]
5735A4:  MOV             R0, R8; x
5735A6:  BLX             sinf
5735AA:  STR             R0, [R5]
5735AC:  STRD.W          R6, R0, [R5,#0x10]
5735B0:  MOV             R0, R4; this
5735B2:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
5735B6:  MOV             R0, R4; this
5735B8:  MOV.W           R1, #0xFFFFFFFF; bool
5735BC:  MOVS            R2, #0; CPopulation *
5735BE:  MOVS            R3, #0; bool
5735C0:  BLX             j__ZN8CVehicle11SetUpDriverEibb; CVehicle::SetUpDriver(int,bool,bool)
5735C4:  MOV             R0, R4
5735C6:  VPOP            {D8-D12}
5735CA:  ADD             SP, SP, #4
5735CC:  POP.W           {R8-R11}
5735D0:  POP             {R4-R7,PC}
