; =========================================================
; Game Engine Function: sub_FF554
; Address            : 0xFF554 - 0xFF5B8
; =========================================================

FF554:  PUSH            {R4-R7,LR}
FF556:  ADD             R7, SP, #0xC
FF558:  PUSH.W          {R11}
FF55C:  MOV             R6, R0
FF55E:  LDR             R0, =(off_23494C - 0xFF56A)
FF560:  MOV             R5, R1
FF562:  MOVW            R1, #:lower16:unk_2BD191
FF566:  ADD             R0, PC; off_23494C
FF568:  MOV             R4, R2
FF56A:  MOVT            R1, #:upper16:unk_2BD191
FF56E:  ADD.W           R2, R1, #0x140
FF572:  LDR             R0, [R0]; dword_23DF24
FF574:  LDR             R0, [R0]
FF576:  SUB.W           R0, LR, R0
FF57A:  CMP             R0, R2
FF57C:  BNE             loc_FF586
FF57E:  BL              sub_10B2C0
FF582:  CBZ             R0, loc_FF59A
FF584:  B               loc_FF5B0
FF586:  CMP             R0, R1
FF588:  BNE             loc_FF59A
FF58A:  LDR             R0, =(off_234970 - 0xFF590)
FF58C:  ADD             R0, PC; off_234970
FF58E:  LDR             R0, [R0]; dword_23DEF0
FF590:  LDR             R0, [R0]
FF592:  CBZ             R0, loc_FF59A
FF594:  BL              sub_F947C
FF598:  CBZ             R0, loc_FF5B0
FF59A:  LDR             R0, =(off_25B198 - 0xFF5A4)
FF59C:  MOV             R1, R5
FF59E:  MOV             R2, R4
FF5A0:  ADD             R0, PC; off_25B198
FF5A2:  LDR             R3, [R0]
FF5A4:  MOV             R0, R6
FF5A6:  POP.W           {R11}
FF5AA:  POP.W           {R4-R7,LR}
FF5AE:  BX              R3
FF5B0:  MOVS            R0, #0
FF5B2:  POP.W           {R11}
FF5B6:  POP             {R4-R7,PC}
