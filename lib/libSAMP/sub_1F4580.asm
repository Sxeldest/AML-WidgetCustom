; =========================================================
; Game Engine Function: sub_1F4580
; Address            : 0x1F4580 - 0x1F4594
; =========================================================

1F4580:  CMN.W           R0, #4
1F4584:  IT CC
1F4586:  BXCC            LR
1F4588:  PUSH            {R7,LR}
1F458A:  MOV             R7, SP
1F458C:  LDR             R0, =(aNextPrimeOverf - 0x1F4592); "__next_prime overflow" ...
1F458E:  ADD             R0, PC; "__next_prime overflow"
1F4590:  BL              sub_1F45F8
