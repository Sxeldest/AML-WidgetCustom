; =========================================================
; Game Engine Function: alSourceiv
; Address            : 0x258514 - 0x258682
; =========================================================

258514:  PUSH            {R4-R7,LR}
258516:  ADD             R7, SP, #0xC
258518:  PUSH.W          {R8}
25851C:  MOV             R8, R2
25851E:  MOV             R6, R1
258520:  MOV             R5, R0
258522:  BLX             j_GetContextRef
258526:  MOV             R4, R0
258528:  CMP             R4, #0
25852A:  BEQ.W           loc_258590
25852E:  ADD.W           R0, R4, #8
258532:  MOV             R1, R5
258534:  BLX             j_LookupUIntMapKey
258538:  CMP             R0, #0
25853A:  BEQ             loc_258596
25853C:  CMP.W           R8, #0
258540:  BEQ.W           loc_2585CE
258544:  CMP.W           R6, #0xC000
258548:  BGE.W           loc_258604
25854C:  MOVW            R1, #0x1001
258550:  SUBS            R1, R6, R1
258552:  CMP             R1, #0x32 ; '2'; switch 51 cases
258554:  BHI.W           def_258558; jumptable 00258558 default case
258558:  TBB.W           [PC,R1]; switch jump
25855C:  DCB 0x65; jump table for switch statement
25855D:  DCB 0x65
25855E:  DCB 0x6F
25855F:  DCB 0x65
258560:  DCB 0x65
258561:  DCB 0x65
258562:  DCB 0x65
258563:  DCB 0x6F
258564:  DCB 0x65
258565:  DCB 0x6F
258566:  DCB 0x6F
258567:  DCB 0x6F
258568:  DCB 0x6F
258569:  DCB 0x6F
25856A:  DCB 0x6F
25856B:  DCB 0x65
25856C:  DCB 0x6F
25856D:  DCB 0x6F
25856E:  DCB 0x6F
25856F:  DCB 0x6F
258570:  DCB 0x65
258571:  DCB 0x65
258572:  DCB 0x6F
258573:  DCB 0x6F
258574:  DCB 0x6F
258575:  DCB 0x6F
258576:  DCB 0x6F
258577:  DCB 0x6F
258578:  DCB 0x6F
258579:  DCB 0x6F
25857A:  DCB 0x6F
25857B:  DCB 0x65
25857C:  DCB 0x65
25857D:  DCB 0x6F
25857E:  DCB 0x65
25857F:  DCB 0x65
258580:  DCB 0x65
258581:  DCB 0x65
258582:  DCB 0x65
258583:  DCB 0x6F
258584:  DCB 0x6F
258585:  DCB 0x6F
258586:  DCB 0x6F
258587:  DCB 0x6F
258588:  DCB 0x6F
258589:  DCB 0x6F
25858A:  DCB 0x6F
25858B:  DCB 0x6F
25858C:  DCB 0x65
25858D:  DCB 0x65
25858E:  DCB 0x65
25858F:  ALIGN 2
258590:  POP.W           {R8}
258594:  POP             {R4-R7,PC}
258596:  LDR             R0, =(TrapALError_ptr - 0x25859C)
258598:  ADD             R0, PC; TrapALError_ptr
25859A:  LDR             R0, [R0]; TrapALError
25859C:  LDRB            R0, [R0]
25859E:  CMP             R0, #0
2585A0:  ITT NE
2585A2:  MOVNE           R0, #5; sig
2585A4:  BLXNE           raise
2585A8:  LDREX.W         R0, [R4,#0x50]
2585AC:  CMP             R0, #0
2585AE:  BNE             loc_25866C
2585B0:  ADD.W           R0, R4, #0x50 ; 'P'
2585B4:  MOVW            R1, #0xA001
2585B8:  DMB.W           ISH
2585BC:  STREX.W         R2, R1, [R0]
2585C0:  CMP             R2, #0
2585C2:  BEQ             loc_258670
2585C4:  LDREX.W         R2, [R0]
2585C8:  CMP             R2, #0
2585CA:  BEQ             loc_2585BC
2585CC:  B               loc_25866C
2585CE:  LDR             R0, =(TrapALError_ptr - 0x2585D4)
2585D0:  ADD             R0, PC; TrapALError_ptr
2585D2:  LDR             R0, [R0]; TrapALError
2585D4:  LDRB            R0, [R0]
2585D6:  CMP             R0, #0
2585D8:  ITT NE
2585DA:  MOVNE           R0, #5; sig
2585DC:  BLXNE           raise
2585E0:  LDREX.W         R0, [R4,#0x50]
2585E4:  CMP             R0, #0
2585E6:  BNE             loc_25866C
2585E8:  ADD.W           R0, R4, #0x50 ; 'P'
2585EC:  MOVW            R1, #0xA003
2585F0:  DMB.W           ISH
2585F4:  STREX.W         R2, R1, [R0]
2585F8:  CBZ             R2, loc_258670
2585FA:  LDREX.W         R2, [R0]
2585FE:  CMP             R2, #0
258600:  BEQ             loc_2585F4
258602:  B               loc_25866C
258604:  SUB.W           R1, R6, #0x20000
258608:  SUBS            R1, #5
25860A:  CMP             R1, #7
25860C:  BHI             loc_25861A
25860E:  MOVS            R2, #1
258610:  LSL.W           R1, R2, R1
258614:  TST.W           R1, #0xE3
258618:  BNE             loc_258626; jumptable 00258558 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
25861A:  CMP.W           R6, #0xC000
25861E:  IT NE
258620:  CMPNE.W         R6, #0xD000
258624:  BNE             loc_25863A; jumptable 00258558 cases 2,7,9-14,16-19,22-30,33,39-47
258626:  MOV             R1, R4; jumptable 00258558 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
258628:  MOV             R2, R6
25862A:  MOV             R3, R8
25862C:  BL              sub_2579C4
258630:  B               loc_258674
258632:  MOVW            R1, #0x202; jumptable 00258558 default case
258636:  CMP             R6, R1
258638:  BEQ             loc_258626; jumptable 00258558 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
25863A:  LDR             R0, =(TrapALError_ptr - 0x258640); jumptable 00258558 cases 2,7,9-14,16-19,22-30,33,39-47
25863C:  ADD             R0, PC; TrapALError_ptr
25863E:  LDR             R0, [R0]; TrapALError
258640:  LDRB            R0, [R0]
258642:  CMP             R0, #0
258644:  ITT NE
258646:  MOVNE           R0, #5; sig
258648:  BLXNE           raise
25864C:  LDREX.W         R0, [R4,#0x50]
258650:  CBNZ            R0, loc_25866C
258652:  ADD.W           R0, R4, #0x50 ; 'P'
258656:  MOVW            R1, #0xA002
25865A:  DMB.W           ISH
25865E:  STREX.W         R2, R1, [R0]
258662:  CBZ             R2, loc_258670
258664:  LDREX.W         R2, [R0]
258668:  CMP             R2, #0
25866A:  BEQ             loc_25865E
25866C:  CLREX.W
258670:  DMB.W           ISH
258674:  MOV             R0, R4
258676:  POP.W           {R8}
25867A:  POP.W           {R4-R7,LR}
25867E:  B.W             ALCcontext_DecRef
