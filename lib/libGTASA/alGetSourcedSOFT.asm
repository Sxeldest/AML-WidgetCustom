; =========================================================
; Game Engine Function: alGetSourcedSOFT
; Address            : 0x25952C - 0x25968C
; =========================================================

25952C:  PUSH            {R4-R7,LR}
25952E:  ADD             R7, SP, #0xC
259530:  PUSH.W          {R8}
259534:  MOV             R8, R2
259536:  MOV             R6, R1
259538:  MOV             R5, R0
25953A:  BLX             j_GetContextRef
25953E:  MOV             R4, R0
259540:  CMP             R4, #0
259542:  BEQ.W           loc_2595A8
259546:  ADD.W           R0, R4, #8
25954A:  MOV             R1, R5
25954C:  BLX             j_LookupUIntMapKey
259550:  CMP             R0, #0
259552:  BEQ             loc_2595AE
259554:  CMP.W           R8, #0
259558:  BEQ.W           loc_2595E6
25955C:  CMP.W           R6, #0xC000
259560:  BGE.W           loc_25961A
259564:  MOVW            R1, #0x1001
259568:  SUBS            R1, R6, R1
25956A:  CMP             R1, #0x32 ; '2'; switch 51 cases
25956C:  BHI.W           def_259570; jumptable 00259570 default case
259570:  TBB.W           [PC,R1]; switch jump
259574:  DCB 0x5E; jump table for switch statement
259575:  DCB 0x5E
259576:  DCB 0x5E
259577:  DCB 0x68
259578:  DCB 0x68
259579:  DCB 0x68
25957A:  DCB 0x5E
25957B:  DCB 0x68
25957C:  DCB 0x5E
25957D:  DCB 0x5E
25957E:  DCB 0x68
25957F:  DCB 0x68
259580:  DCB 0x5E
259581:  DCB 0x5E
259582:  DCB 0x68
259583:  DCB 0x5E
259584:  DCB 0x68
259585:  DCB 0x68
259586:  DCB 0x68
259587:  DCB 0x68
259588:  DCB 0x5E
259589:  DCB 0x5E
25958A:  DCB 0x68
25958B:  DCB 0x68
25958C:  DCB 0x68
25958D:  DCB 0x68
25958E:  DCB 0x68
25958F:  DCB 0x68
259590:  DCB 0x68
259591:  DCB 0x68
259592:  DCB 0x68
259593:  DCB 0x5E
259594:  DCB 0x5E
259595:  DCB 0x5E
259596:  DCB 0x5E
259597:  DCB 0x5E
259598:  DCB 0x5E
259599:  DCB 0x5E
25959A:  DCB 0x5E
25959B:  DCB 0x68
25959C:  DCB 0x68
25959D:  DCB 0x68
25959E:  DCB 0x68
25959F:  DCB 0x68
2595A0:  DCB 0x68
2595A1:  DCB 0x68
2595A2:  DCB 0x68
2595A3:  DCB 0x68
2595A4:  DCB 0x68
2595A5:  DCB 0x68
2595A6:  DCB 0x5E
2595A7:  ALIGN 2
2595A8:  POP.W           {R8}
2595AC:  POP             {R4-R7,PC}
2595AE:  LDR             R0, =(TrapALError_ptr - 0x2595B4)
2595B0:  ADD             R0, PC; TrapALError_ptr
2595B2:  LDR             R0, [R0]; TrapALError
2595B4:  LDRB            R0, [R0]
2595B6:  CMP             R0, #0
2595B8:  ITT NE
2595BA:  MOVNE           R0, #5; sig
2595BC:  BLXNE           raise
2595C0:  LDREX.W         R0, [R4,#0x50]
2595C4:  CMP             R0, #0
2595C6:  BNE             loc_259676
2595C8:  ADD.W           R0, R4, #0x50 ; 'P'
2595CC:  MOVW            R1, #0xA001
2595D0:  DMB.W           ISH
2595D4:  STREX.W         R2, R1, [R0]
2595D8:  CMP             R2, #0
2595DA:  BEQ             loc_25967A
2595DC:  LDREX.W         R2, [R0]
2595E0:  CMP             R2, #0
2595E2:  BEQ             loc_2595D4
2595E4:  B               loc_259676
2595E6:  LDR             R0, =(TrapALError_ptr - 0x2595EC)
2595E8:  ADD             R0, PC; TrapALError_ptr
2595EA:  LDR             R0, [R0]; TrapALError
2595EC:  LDRB            R0, [R0]
2595EE:  CMP             R0, #0
2595F0:  ITT NE
2595F2:  MOVNE           R0, #5; sig
2595F4:  BLXNE           raise
2595F8:  LDREX.W         R0, [R4,#0x50]
2595FC:  CBNZ            R0, loc_259676
2595FE:  ADD.W           R0, R4, #0x50 ; 'P'
259602:  MOVW            R1, #0xA003
259606:  DMB.W           ISH
25960A:  STREX.W         R2, R1, [R0]
25960E:  CBZ             R2, loc_25967A
259610:  LDREX.W         R2, [R0]
259614:  CMP             R2, #0
259616:  BEQ             loc_25960A
259618:  B               loc_259676
25961A:  SUB.W           R1, R6, #0x20000
25961E:  SUBS            R1, #7
259620:  CMP             R1, #6
259622:  BCC             loc_259630; jumptable 00259570 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
259624:  CMP.W           R6, #0xC000
259628:  IT NE
25962A:  CMPNE.W         R6, #0xD000
25962E:  BNE             loc_259644; jumptable 00259570 cases 3-5,7,10,11,14,16-19,22-30,39-49
259630:  MOV             R1, R4; jumptable 00259570 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
259632:  MOV             R2, R6
259634:  MOV             R3, R8
259636:  BL              sub_258E98
25963A:  B               loc_25967E
25963C:  MOVW            R1, #0x202; jumptable 00259570 default case
259640:  CMP             R6, R1
259642:  BEQ             loc_259630; jumptable 00259570 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
259644:  LDR             R0, =(TrapALError_ptr - 0x25964A); jumptable 00259570 cases 3-5,7,10,11,14,16-19,22-30,39-49
259646:  ADD             R0, PC; TrapALError_ptr
259648:  LDR             R0, [R0]; TrapALError
25964A:  LDRB            R0, [R0]
25964C:  CMP             R0, #0
25964E:  ITT NE
259650:  MOVNE           R0, #5; sig
259652:  BLXNE           raise
259656:  LDREX.W         R0, [R4,#0x50]
25965A:  CBNZ            R0, loc_259676
25965C:  ADD.W           R0, R4, #0x50 ; 'P'
259660:  MOVW            R1, #0xA002
259664:  DMB.W           ISH
259668:  STREX.W         R2, R1, [R0]
25966C:  CBZ             R2, loc_25967A
25966E:  LDREX.W         R2, [R0]
259672:  CMP             R2, #0
259674:  BEQ             loc_259668
259676:  CLREX.W
25967A:  DMB.W           ISH
25967E:  MOV             R0, R4
259680:  POP.W           {R8}
259684:  POP.W           {R4-R7,LR}
259688:  B.W             ALCcontext_DecRef
