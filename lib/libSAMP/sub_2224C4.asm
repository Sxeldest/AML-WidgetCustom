; =========================================================
; Game Engine Function: sub_2224C4
; Address            : 0x2224C4 - 0x2226EC
; =========================================================

2224C4:  PUSH            {R4-R11,LR}
2224C8:  ADD             R11, SP, #0x1C
2224CC:  SUB             SP, SP, #0x2C
2224D0:  MOV             R5, R0
2224D4:  LDR             R0, [R0,#0x4C]
2224D8:  MOV             R10, R1
2224DC:  ADD             R1, SP, #0x48+var_44
2224E0:  LDRB            R8, [R0,#3]
2224E4:  MOV             R0, R10
2224E8:  BL              sub_222E9C
2224EC:  CMP             R0, #0
2224F0:  LDRB            R0, [R5,#0x50]
2224F4:  LDR             R7, [SP,#0x48+var_3C]
2224F8:  MOVNE           R7, #0
2224FC:  TST             R0, #1
222500:  BNE             loc_222654
222504:  LDR             R6, [R7]
222508:  CMP             R6, #0
22250C:  BEQ             loc_222654
222510:  AND             R1, R8, #0xF
222514:  MOV             R0, #9
222518:  CMP             R1, #3
22251C:  BEQ             loc_2225AC
222520:  CMP             R1, #1
222524:  BNE             loc_22264C
222528:  ADD             R9, SP, #0x48+var_44
22252C:  B               loc_222540
222530:  MOV             R7, R0
222534:  LDR             R0, [R7]
222538:  CMP             R0, #0
22253C:  BEQ             loc_222654
222540:  MOV             R0, #0
222544:  LDRH            R6, [R7]
222548:  LDRH            R8, [R7,#2]
22254C:  MOV             R1, #0xF
222550:  STR             R0, [SP,#0x48+var_44]
222554:  MOV             R0, R10
222558:  MOV             R2, R9
22255C:  LDR             R4, [R5,#0x48]
222560:  BL              sub_222C8C
222564:  AND             R1, R6, #1
222568:  ADD             R0, R7, #4
22256C:  BFI             R1, R8, #1, #1
222570:  CMP             R1, #2
222574:  BCC             loc_222530
222578:  BNE             loc_22267C
22257C:  LDR             R2, [SP,#0x48+var_44]
222580:  BIC             R1, R8, #1
222584:  ADD             R1, R1, R4
222588:  ADD             R7, R7, #8
22258C:  BIC             R2, R2, #1
222590:  CMP             R1, R2
222594:  BHI             loc_222534
222598:  BIC             R3, R6, #1
22259C:  ADD             R1, R1, R3
2225A0:  CMP             R2, R1
2225A4:  BCS             loc_222534
2225A8:  B               loc_222628
2225AC:  ADD             R9, SP, #0x48+var_44
2225B0:  B               loc_2225C4
2225B4:  MOV             R7, R0
2225B8:  LDR             R6, [R7]
2225BC:  CMP             R6, #0
2225C0:  BEQ             loc_222654
2225C4:  MOV             R0, #0
2225C8:  MOV             R1, #0xF
2225CC:  STR             R0, [SP,#0x48+var_44]
2225D0:  MOV             R0, R10
2225D4:  MOV             R2, R9
2225D8:  LDR             R4, [R5,#0x48]
2225DC:  LDR             R8, [R7,#4]
2225E0:  BL              sub_222C8C
2225E4:  AND             R1, R6, #1
2225E8:  ADD             R0, R7, #8
2225EC:  BFI             R1, R8, #1, #1
2225F0:  CMP             R1, #2
2225F4:  BCC             loc_2225B4
2225F8:  BNE             loc_22267C
2225FC:  LDR             R2, [SP,#0x48+var_44]
222600:  BIC             R1, R8, #1
222604:  ADD             R1, R4, R1
222608:  ADD             R7, R7, #0xC
22260C:  BIC             R2, R2, #1
222610:  CMP             R1, R2
222614:  BHI             loc_2225B8
222618:  BIC             R3, R6, #1
22261C:  ADD             R1, R1, R3
222620:  CMP             R2, R1
222624:  BCS             loc_2225B8
222628:  LDR             R0, [R0]
22262C:  MOV             R1, R0,LSL#1
222630:  BFI             R1, R0, #0, #0x1F
222634:  MOV             R0, #6
222638:  CMN             R1, #1
22263C:  BEQ             loc_22264C
222640:  CMN             R1, #2
222644:  BNE             loc_2226B4
222648:  MOV             R0, #9
22264C:  SUB             SP, R11, #0x1C
222650:  POP             {R4-R11,PC}
222654:  MOV             R0, R10
222658:  BL              sub_222E84
22265C:  MOV             R1, R0
222660:  MOV             R0, #9
222664:  CMP             R1, #0
222668:  MOVWEQ          R0, #5
22266C:  CMP             R1, #1
222670:  MOVWEQ          R0, #8
222674:  SUB             SP, R11, #0x1C
222678:  POP             {R4-R11,PC}
22267C:  LDR             R1, =(aLibunwindSS - 0x222690); "libunwind: %s - %s\n" ...
222680:  LDR             R2, =(aProcessdescrip - 0x222698); "ProcessDescriptors" ...
222684:  LDR             R3, =(aInvalidDescrip - 0x22269C); "Invalid descriptor kind found." ...
222688:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
22268C:  LDR             R0, =(__sF_ptr - 0x2226A0)
222690:  ADD             R2, PC, R2; "ProcessDescriptors"
222694:  ADD             R3, PC, R3; "Invalid descriptor kind found."
222698:  LDR             R0, [PC,R0]; __sF
22269C:  ADD             R4, R0, #0xA8
2226A0:  MOV             R0, R4; stream
2226A4:  BL              fprintf
2226A8:  MOV             R0, R4; stream
2226AC:  BL              fflush
2226B0:  BL              abort
2226B4:  LDR             R1, =(aLibunwindSS - 0x2226C8); "libunwind: %s - %s\n" ...
2226B8:  LDR             R2, =(aProcessdescrip - 0x2226D0); "ProcessDescriptors" ...
2226BC:  LDR             R3, =(aTypeMatchingNo - 0x2226D4); "Type matching not implemented" ...
2226C0:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
2226C4:  LDR             R0, =(__sF_ptr - 0x2226D8)
2226C8:  ADD             R2, PC, R2; "ProcessDescriptors"
2226CC:  ADD             R3, PC, R3; "Type matching not implemented"
2226D0:  LDR             R0, [PC,R0]; __sF
2226D4:  ADD             R4, R0, #0xA8
2226D8:  MOV             R0, R4; stream
2226DC:  BL              fprintf
2226E0:  MOV             R0, R4; stream
2226E4:  BL              fflush
2226E8:  BL              abort
