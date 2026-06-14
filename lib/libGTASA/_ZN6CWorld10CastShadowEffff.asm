; =========================================================
; Game Engine Function: _ZN6CWorld10CastShadowEffff
; Address            : 0x427514 - 0x427668
; =========================================================

427514:  PUSH            {R4-R7,LR}
427516:  ADD             R7, SP, #0xC
427518:  PUSH.W          {R8-R11}
42751C:  SUB             SP, SP, #4
42751E:  VPUSH           {D8-D10}
427522:  VLDR            S16, =50.0
427526:  VMOV            S0, R0
42752A:  VLDR            S18, =60.0
42752E:  MOV             R4, R3
427530:  VDIV.F32        S0, S0, S16
427534:  MOV             R5, R2
427536:  MOV             R6, R1
427538:  VADD.F32        S0, S0, S18
42753C:  VMOV            R0, S0; x
427540:  BLX             floorf
427544:  VMOV            S0, R6
427548:  VMOV            S20, R0
42754C:  VDIV.F32        S0, S0, S16
427550:  VADD.F32        S0, S0, S18
427554:  VMOV            R1, S0
427558:  MOV             R0, R1; x
42755A:  BLX             floorf
42755E:  VMOV            S0, R5
427562:  MOV             R6, R0
427564:  VDIV.F32        S0, S0, S16
427568:  VADD.F32        S0, S0, S18
42756C:  VMOV            R0, S0; x
427570:  BLX             floorf
427574:  VMOV            S0, R4
427578:  LDR             R4, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x427582)
42757A:  VDIV.F32        S0, S0, S16
42757E:  ADD             R4, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
427580:  VADD.F32        S0, S0, S18
427584:  VMOV            S16, R0
427588:  VMOV            R1, S0
42758C:  MOV             R0, R1; x
42758E:  BLX             floorf
427592:  VMOV            S0, R0
427596:  LDR             R0, [R4]; CWorld::ms_nCurrentScanCode ...
427598:  VCVT.S32.F32    S4, S20
42759C:  MOV.W           R11, #0x78 ; 'x'
4275A0:  VCVT.S32.F32    S0, S0
4275A4:  MOV.W           R9, #0
4275A8:  LDRH            R0, [R0]; this
4275AA:  VCVT.S32.F32    S6, S16
4275AE:  VMOV            S2, R6
4275B2:  VCVT.S32.F32    S2, S2
4275B6:  VMOV            R8, S0
4275BA:  VMOV            R1, S6
4275BE:  VMOV            R10, S2
4275C2:  CMP.W           R8, #0x78 ; 'x'
4275C6:  IT GE
4275C8:  MOVGE           R8, R11
4275CA:  CMP             R1, #0x78 ; 'x'
4275CC:  IT LT
4275CE:  MOVLT           R11, R1
4275D0:  VMOV            R1, S4
4275D4:  CMP.W           R10, #0
4275D8:  IT LE
4275DA:  MOVLE           R10, R9
4275DC:  CMP             R1, #0
4275DE:  IT GT
4275E0:  MOVGT           R9, R1
4275E2:  MOVW            R1, #0xFFFF
4275E6:  CMP             R0, R1
4275E8:  BEQ             loc_4275EE
4275EA:  ADDS            R0, #1
4275EC:  B               loc_4275F4
4275EE:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
4275F2:  MOVS            R0, #1
4275F4:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4275FC)
4275F6:  CMP             R10, R8
4275F8:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4275FA:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
4275FC:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
4275FE:  BGT             loc_42765C
427600:  LDR             R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x427606)
427602:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
427604:  LDR.W           R12, [R1]; CWorld::ms_aSectors ...
427608:  CMP             R9, R11
42760A:  BGT             loc_427652
42760C:  CMP.W           R10, #0x77 ; 'w'
427610:  MOV.W           R2, #0x77 ; 'w'
427614:  IT LT
427616:  MOVLT           R2, R10
427618:  MOV             R3, R9
42761A:  RSB.W           R2, R2, R2,LSL#4
42761E:  LSLS            R2, R2, #3
427620:  CMP             R3, #0x77 ; 'w'
427622:  MOV.W           R6, #0x77 ; 'w'
427626:  IT LT
427628:  MOVLT           R6, R3
42762A:  ADD             R6, R2
42762C:  LDR.W           R5, [R12,R6,LSL#3]
427630:  B               loc_42763A
427632:  LDRB            R1, [R6,#0x1C]
427634:  LSLS            R1, R1, #0x1F
427636:  IT NE
427638:  STRHNE          R0, [R6,#0x30]
42763A:  CBZ             R5, loc_42764A
42763C:  LDRD.W          R6, R5, [R5]
427640:  UXTH            R1, R0
427642:  LDRH            R4, [R6,#0x30]
427644:  CMP             R4, R1
427646:  BEQ             loc_42763A
427648:  B               loc_427632
42764A:  ADDS            R1, R3, #1
42764C:  CMP             R3, R11
42764E:  MOV             R3, R1
427650:  BLT             loc_427620
427652:  ADD.W           R2, R10, #1
427656:  CMP             R10, R8
427658:  MOV             R10, R2
42765A:  BLT             loc_427608
42765C:  VPOP            {D8-D10}
427660:  ADD             SP, SP, #4
427662:  POP.W           {R8-R11}
427666:  POP             {R4-R7,PC}
