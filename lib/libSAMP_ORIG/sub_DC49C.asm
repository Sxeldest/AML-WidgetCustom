; =========================================================
; Game Engine Function: sub_DC49C
; Address            : 0xDC49C - 0xDC4B0
; =========================================================

DC49C:  CMN.W           R0, #4
DC4A0:  IT CC
DC4A2:  BXCC            LR
DC4A4:  PUSH            {R7,LR}
DC4A6:  MOV             R7, SP
DC4A8:  LDR             R0, =(aNextPrimeOverf - 0xDC4AE); "__next_prime overflow" ...
DC4AA:  ADD             R0, PC; "__next_prime overflow"
DC4AC:  BL              sub_DC514
