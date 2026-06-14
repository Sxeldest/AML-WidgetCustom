; =========================================================
; Game Engine Function: alGetBuffer3f
; Address            : 0x247598 - 0x247680
; =========================================================

247598:  PUSH            {R4-R7,LR}
24759A:  ADD             R7, SP, #0xC
24759C:  PUSH.W          {R8,R9,R11}
2475A0:  MOV             R8, R3
2475A2:  MOV             R6, R2
2475A4:  MOV             R5, R0
2475A6:  LDR.W           R9, [R7,#arg_0]
2475AA:  BLX             j_GetContextRef
2475AE:  MOV             R4, R0
2475B0:  CBZ             R4, loc_247606
2475B2:  LDR.W           R0, [R4,#0x88]
2475B6:  MOV             R1, R5
2475B8:  ADDS            R0, #0x40 ; '@'
2475BA:  BLX             j_LookupUIntMapKey
2475BE:  CBZ             R0, loc_24760C
2475C0:  LDR             R0, =(TrapALError_ptr - 0x2475C8)
2475C2:  CMP             R6, #0
2475C4:  ADD             R0, PC; TrapALError_ptr
2475C6:  LDR             R0, [R0]; TrapALError
2475C8:  LDRB            R0, [R0]
2475CA:  IT NE
2475CC:  CMPNE.W         R8, #0
2475D0:  BEQ             loc_247640
2475D2:  CMP.W           R9, #0
2475D6:  BEQ             loc_247640
2475D8:  CMP             R0, #0
2475DA:  ITT NE
2475DC:  MOVNE           R0, #5; sig
2475DE:  BLXNE           raise
2475E2:  LDREX.W         R0, [R4,#0x50]
2475E6:  CMP             R0, #0
2475E8:  BNE             loc_24766A
2475EA:  ADD.W           R0, R4, #0x50 ; 'P'
2475EE:  MOVW            R1, #0xA002
2475F2:  DMB.W           ISH
2475F6:  STREX.W         R2, R1, [R0]
2475FA:  CBZ             R2, loc_24766E
2475FC:  LDREX.W         R2, [R0]
247600:  CMP             R2, #0
247602:  BEQ             loc_2475F6
247604:  B               loc_24766A
247606:  POP.W           {R8,R9,R11}
24760A:  POP             {R4-R7,PC}
24760C:  LDR             R0, =(TrapALError_ptr - 0x247612)
24760E:  ADD             R0, PC; TrapALError_ptr
247610:  LDR             R0, [R0]; TrapALError
247612:  LDRB            R0, [R0]
247614:  CMP             R0, #0
247616:  ITT NE
247618:  MOVNE           R0, #5; sig
24761A:  BLXNE           raise
24761E:  LDREX.W         R0, [R4,#0x50]
247622:  CBNZ            R0, loc_24766A
247624:  ADD.W           R0, R4, #0x50 ; 'P'
247628:  MOVW            R1, #0xA001
24762C:  DMB.W           ISH
247630:  STREX.W         R2, R1, [R0]
247634:  CBZ             R2, loc_24766E
247636:  LDREX.W         R2, [R0]
24763A:  CMP             R2, #0
24763C:  BEQ             loc_247630
24763E:  B               loc_24766A
247640:  CMP             R0, #0
247642:  ITT NE
247644:  MOVNE           R0, #5; sig
247646:  BLXNE           raise
24764A:  LDREX.W         R0, [R4,#0x50]
24764E:  CBNZ            R0, loc_24766A
247650:  ADD.W           R0, R4, #0x50 ; 'P'
247654:  MOVW            R1, #0xA003
247658:  DMB.W           ISH
24765C:  STREX.W         R2, R1, [R0]
247660:  CBZ             R2, loc_24766E
247662:  LDREX.W         R2, [R0]
247666:  CMP             R2, #0
247668:  BEQ             loc_24765C
24766A:  CLREX.W
24766E:  DMB.W           ISH
247672:  MOV             R0, R4
247674:  POP.W           {R8,R9,R11}
247678:  POP.W           {R4-R7,LR}
24767C:  B.W             ALCcontext_DecRef
