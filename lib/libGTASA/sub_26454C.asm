; =========================================================
; Game Engine Function: sub_26454C
; Address            : 0x26454C - 0x2645A6
; =========================================================

26454C:  PUSH            {R4,R6,R7,LR}
26454E:  ADD             R7, SP, #8
264550:  MOV             R4, R1
264552:  CMP             R2, #2
264554:  BEQ             loc_26459E
264556:  CMP             R2, #1
264558:  ITTT EQ
26455A:  LDREQ.W         R0, [R0,#0x84]
26455E:  STREQ           R0, [R3]
264560:  POPEQ           {R4,R6,R7,PC}
264562:  LDR             R0, =(TrapALError_ptr - 0x264568)
264564:  ADD             R0, PC; TrapALError_ptr
264566:  LDR             R0, [R0]; TrapALError
264568:  LDRB            R0, [R0]
26456A:  CMP             R0, #0
26456C:  ITT NE
26456E:  MOVNE           R0, #5; sig
264570:  BLXNE           raise
264574:  LDREX.W         R0, [R4,#0x50]
264578:  CBNZ            R0, loc_264594
26457A:  ADD.W           R0, R4, #0x50 ; 'P'
26457E:  MOVW            R1, #0xA002
264582:  DMB.W           ISH
264586:  STREX.W         R2, R1, [R0]
26458A:  CBZ             R2, loc_264598
26458C:  LDREX.W         R2, [R0]
264590:  CMP             R2, #0
264592:  BEQ             loc_264586
264594:  CLREX.W
264598:  DMB.W           ISH
26459C:  POP             {R4,R6,R7,PC}
26459E:  LDR.W           R0, [R0,#0x88]
2645A2:  STR             R0, [R3]
2645A4:  POP             {R4,R6,R7,PC}
