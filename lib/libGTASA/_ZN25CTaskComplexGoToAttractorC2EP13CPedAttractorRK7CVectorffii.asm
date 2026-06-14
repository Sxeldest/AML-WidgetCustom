; =========================================================
; Game Engine Function: _ZN25CTaskComplexGoToAttractorC2EP13CPedAttractorRK7CVectorffii
; Address            : 0x524544 - 0x524586
; =========================================================

524544:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexGoToAttractor::CTaskComplexGoToAttractor(CPedAttractor *, CVector const&, float, float, int, int)'
524546:  ADD             R7, SP, #0xC
524548:  PUSH.W          {R11}
52454C:  MOV             R4, R3
52454E:  MOV             R5, R2
524550:  MOV             R6, R1
524552:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
524556:  LDR             R1, =(_ZTV25CTaskComplexGoToAttractor_ptr - 0x52455E)
524558:  STR             R6, [R0,#0xC]
52455A:  ADD             R1, PC; _ZTV25CTaskComplexGoToAttractor_ptr
52455C:  VLDR            S0, [R7,#arg_0]
524560:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToAttractor ...
524562:  ADDS            R1, #8
524564:  STR             R1, [R0]
524566:  VLDR            D16, [R5]
52456A:  LDR             R1, [R5,#8]
52456C:  LDRD.W          R2, R3, [R7,#arg_4]
524570:  STRD.W          R1, R4, [R0,#0x18]
524574:  VSTR            S0, [R0,#0x20]
524578:  STRD.W          R2, R3, [R0,#0x24]
52457C:  VSTR            D16, [R0,#0x10]
524580:  POP.W           {R11}
524584:  POP             {R4-R7,PC}
