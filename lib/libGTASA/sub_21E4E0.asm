; =========================================================
; Game Engine Function: sub_21E4E0
; Address            : 0x21E4E0 - 0x21E574
; =========================================================

21E4E0:  PUSH            {R4-R7,LR}
21E4E2:  ADD             R7, SP, #0xC
21E4E4:  PUSH.W          {R8-R10}
21E4E8:  MOV             R4, R0
21E4EA:  LDR             R0, =(dword_6BD63C - 0x21E4F0)
21E4EC:  ADD             R0, PC; dword_6BD63C
21E4EE:  LDR             R0, [R0]
21E4F0:  ADDS.W          R8, R4, R0
21E4F4:  BEQ             loc_21E56C
21E4F6:  LDR.W           R0, [R8]
21E4FA:  CMP             R0, R1
21E4FC:  BNE             loc_21E56C
21E4FE:  LDR             R0, [R4,#0x14]
21E500:  CMP             R0, #0
21E502:  IT NE
21E504:  BLXNE           j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
21E508:  MOV             R6, R4
21E50A:  LDR.W           R5, [R6,#0x64]!
21E50E:  CMP             R5, R6
21E510:  BEQ             loc_21E566
21E512:  LDR             R0, =(RwEngineInstance_ptr - 0x21E51C)
21E514:  LDR.W           R9, =(dword_6BD690 - 0x21E51E)
21E518:  ADD             R0, PC; RwEngineInstance_ptr
21E51A:  ADD             R9, PC; dword_6BD690
21E51C:  LDR.W           R10, [R0]; RwEngineInstance
21E520:  MOV             R0, R5
21E522:  LDR.W           R1, [R0,#-4]
21E526:  LDR             R5, [R0]
21E528:  CMP             R1, #0
21E52A:  ITTT NE
21E52C:  SUBNE.W         R1, R0, #0xC
21E530:  LDRNE           R0, [R1,#0x14]
21E532:  CMPNE           R0, #0
21E534:  BNE             loc_21E53C
21E536:  CMP             R5, R6
21E538:  BNE             loc_21E520
21E53A:  B               loc_21E566
21E53C:  LDR             R0, [R1,#0x10]
21E53E:  STR             R5, [R0]
21E540:  LDRD.W          R0, R2, [R1,#0xC]
21E544:  STR             R2, [R0,#4]
21E546:  LDRD.W          R0, R2, [R1]
21E54A:  STR             R0, [R2]
21E54C:  LDRD.W          R0, R2, [R1]
21E550:  STR             R2, [R0,#4]
21E552:  LDR.W           R0, [R9]
21E556:  LDR.W           R2, [R10]
21E55A:  LDR             R0, [R2,R0]
21E55C:  LDR.W           R2, [R2,#0x140]
21E560:  BLX             R2
21E562:  CMP             R5, R6
21E564:  BNE             loc_21E520
21E566:  MOVS            R0, #0
21E568:  STR.W           R0, [R8]
21E56C:  MOV             R0, R4
21E56E:  POP.W           {R8-R10}
21E572:  POP             {R4-R7,PC}
