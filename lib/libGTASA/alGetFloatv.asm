; =========================================================
; Game Engine Function: alGetFloatv
; Address            : 0x25D500 - 0x25D648
; =========================================================

25D500:  PUSH            {R4-R7,LR}
25D502:  ADD             R7, SP, #0xC
25D504:  PUSH.W          {R8}
25D508:  VPUSH           {D8}
25D50C:  MOV             R4, R1
25D50E:  MOV             R6, R0
25D510:  CBZ             R4, loc_25D53E
25D512:  SUB.W           R5, R6, #0xC000
25D516:  CMP             R5, #4
25D518:  BCS             loc_25D538
25D51A:  BLX             j_GetContextRef
25D51E:  MOV             R8, R0
25D520:  CMP.W           R8, #0
25D524:  BEQ             loc_25D580
25D526:  CMP             R5, #3; switch 4 cases
25D528:  BHI             def_25D52A; jumptable 0025D52A default case
25D52A:  TBB.W           [PC,R5]; switch jump
25D52E:  DCB 2; jump table for switch statement
25D52F:  DCB 0x76
25D530:  DCB 0x79
25D531:  DCB 0x7E
25D532:  VLDR            S16, [R8,#0x60]; jumptable 0025D52A case 0
25D536:  B               loc_25D62E
25D538:  CMP.W           R6, #0xD000
25D53C:  BEQ             loc_25D51A
25D53E:  BLX             j_GetContextRef
25D542:  MOV             R5, R0
25D544:  CMP             R5, #0
25D546:  BEQ             loc_25D638
25D548:  LDR             R0, =(TrapALError_ptr - 0x25D550)
25D54A:  CMP             R4, #0
25D54C:  ADD             R0, PC; TrapALError_ptr
25D54E:  LDR             R0, [R0]; TrapALError
25D550:  LDRB            R0, [R0]
25D552:  BEQ             loc_25D586
25D554:  CMP             R0, #0
25D556:  ITT NE
25D558:  MOVNE           R0, #5; sig
25D55A:  BLXNE           raise
25D55E:  LDREX.W         R0, [R5,#0x50]
25D562:  CBNZ            R0, loc_25D5B0
25D564:  ADD.W           R0, R5, #0x50 ; 'P'
25D568:  MOVW            R1, #0xA002
25D56C:  DMB.W           ISH
25D570:  STREX.W         R2, R1, [R0]
25D574:  CBZ             R2, loc_25D5B4
25D576:  LDREX.W         R2, [R0]
25D57A:  CMP             R2, #0
25D57C:  BEQ             loc_25D570
25D57E:  B               loc_25D5B0
25D580:  VLDR            S16, =0.0
25D584:  B               loc_25D634
25D586:  CMP             R0, #0
25D588:  ITT NE
25D58A:  MOVNE           R0, #5; sig
25D58C:  BLXNE           raise
25D590:  LDREX.W         R0, [R5,#0x50]
25D594:  CBNZ            R0, loc_25D5B0
25D596:  ADD.W           R0, R5, #0x50 ; 'P'
25D59A:  MOVW            R1, #0xA003
25D59E:  DMB.W           ISH
25D5A2:  STREX.W         R2, R1, [R0]
25D5A6:  CBZ             R2, loc_25D5B4
25D5A8:  LDREX.W         R2, [R0]
25D5AC:  CMP             R2, #0
25D5AE:  BEQ             loc_25D5A2
25D5B0:  CLREX.W
25D5B4:  DMB.W           ISH
25D5B8:  MOV             R0, R5
25D5BA:  VPOP            {D8}
25D5BE:  POP.W           {R8}
25D5C2:  POP.W           {R4-R7,LR}
25D5C6:  B.W             ALCcontext_DecRef
25D5CA:  CMP.W           R6, #0xD000; jumptable 0025D52A default case
25D5CE:  BNE             loc_25D5DA
25D5D0:  VLDR            S0, [R8,#0x58]
25D5D4:  VCVT.F32.U32    S16, S0
25D5D8:  B               loc_25D62E
25D5DA:  LDR             R0, =(TrapALError_ptr - 0x25D5E0)
25D5DC:  ADD             R0, PC; TrapALError_ptr
25D5DE:  LDR             R0, [R0]; TrapALError
25D5E0:  LDRB            R0, [R0]
25D5E2:  CMP             R0, #0
25D5E4:  ITT NE
25D5E6:  MOVNE           R0, #5; sig
25D5E8:  BLXNE           raise
25D5EC:  LDREX.W         R0, [R8,#0x50]
25D5F0:  CBNZ            R0, loc_25D60C
25D5F2:  ADD.W           R0, R8, #0x50 ; 'P'
25D5F6:  MOVW            R1, #0xA002
25D5FA:  DMB.W           ISH
25D5FE:  STREX.W         R2, R1, [R0]
25D602:  CBZ             R2, loc_25D642
25D604:  LDREX.W         R2, [R0]
25D608:  CMP             R2, #0
25D60A:  BEQ             loc_25D5FE
25D60C:  VLDR            S16, =0.0
25D610:  CLREX.W
25D614:  DMB.W           ISH
25D618:  B               loc_25D62E
25D61A:  VLDR            S16, [R8,#0x64]; jumptable 0025D52A case 1
25D61E:  B               loc_25D62E
25D620:  VLDR            S0, [R8,#0x6C]; jumptable 0025D52A case 2
25D624:  VCVT.F32.S32    S16, S0
25D628:  B               loc_25D62E
25D62A:  VLDR            S16, [R8,#0x68]; jumptable 0025D52A case 3
25D62E:  MOV             R0, R8
25D630:  BLX             j_ALCcontext_DecRef
25D634:  VSTR            S16, [R4]
25D638:  VPOP            {D8}
25D63C:  POP.W           {R8}
25D640:  POP             {R4-R7,PC}
25D642:  VLDR            S16, =0.0
25D646:  B               loc_25D614
