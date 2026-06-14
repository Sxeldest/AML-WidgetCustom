; =========================================================
; Game Engine Function: _ZN17CTheCarGenerators19RemoveCarGeneratorsEh
; Address            : 0x56E548 - 0x56E58E
; =========================================================

56E548:  PUSH            {R4,R5,R7,LR}
56E54A:  ADD             R7, SP, #8
56E54C:  LDR             R1, =(_ZN17CTheCarGenerators17CarGeneratorArrayE_ptr - 0x56E558)
56E54E:  MOV.W           R12, #0
56E552:  LDR             R3, =(_ZN17CTheCarGenerators18NumOfCarGeneratorsE_ptr - 0x56E55A)
56E554:  ADD             R1, PC; _ZN17CTheCarGenerators17CarGeneratorArrayE_ptr
56E556:  ADD             R3, PC; _ZN17CTheCarGenerators18NumOfCarGeneratorsE_ptr
56E558:  LDR             R2, [R1]; CTheCarGenerators::CarGeneratorArray ...
56E55A:  LDR             R1, =(_ZN17CTheCarGenerators17CarGeneratorArrayE_ptr - 0x56E560)
56E55C:  ADD             R1, PC; _ZN17CTheCarGenerators17CarGeneratorArrayE_ptr
56E55E:  LDR.W           LR, [R1]; CTheCarGenerators::CarGeneratorArray ...
56E562:  LDR             R1, [R3]; CTheCarGenerators::NumOfCarGenerators ...
56E564:  MOVS            R3, #0
56E566:  B               loc_56E572
56E568:  ADDS            R3, #0x20 ; ' '
56E56A:  CMP.W           R3, #0x3E80
56E56E:  IT EQ
56E570:  POPEQ           {R4,R5,R7,PC}
56E572:  ADDS            R4, R2, R3
56E574:  LDRB            R5, [R4,#0x1C]
56E576:  CMP             R5, R0
56E578:  BNE             loc_56E568
56E57A:  ADD.W           R5, LR, R3
56E57E:  STRB.W          R12, [R5,#0x1D]
56E582:  STRB.W          R12, [R4,#0x1C]
56E586:  LDR             R4, [R1]; CTheCarGenerators::NumOfCarGenerators
56E588:  SUBS            R4, #1
56E58A:  STR             R4, [R1]; CTheCarGenerators::NumOfCarGenerators
56E58C:  B               loc_56E568
