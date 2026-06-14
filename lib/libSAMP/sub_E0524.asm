; =========================================================
; Game Engine Function: sub_E0524
; Address            : 0xE0524 - 0xE05AA
; =========================================================

E0524:  PUSH            {R4-R7,LR}
E0526:  ADD             R7, SP, #0xC
E0528:  PUSH.W          {R11}
E052C:  SUB             SP, SP, #8
E052E:  MOV             R4, R2
E0530:  LDR             R2, =(unk_91EB0 - 0xE053A)
E0532:  MOV             R3, R0
E0534:  LDRB            R0, [R0]
E0536:  ADD             R2, PC; unk_91EB0
E0538:  MOVS            R5, #0x80FF0000
E053E:  LSRS            R6, R0, #3
E0540:  LDRB            R2, [R2,R6]
E0542:  LSR.W           R6, R5, R6
E0546:  AND.W           R6, R6, #1
E054A:  ADD             R2, R6
E054C:  ADDS            R6, R3, R2
E054E:  SUBS            R1, R1, R6
E0550:  CMP             R1, #1
E0552:  IT LT
E0554:  MOVLT           R6, R3
E0556:  LDRB            R1, [R6]
E0558:  CMP             R1, #0x5E ; '^'
E055A:  BEQ             loc_E056C
E055C:  CMP             R1, #0x3E ; '>'
E055E:  BEQ             loc_E0570
E0560:  CMP             R1, #0x3C ; '<'
E0562:  BEQ             loc_E0574
E0564:  CMP             R6, R3
E0566:  MOV             R6, R3
E0568:  BNE             loc_E0556
E056A:  B               loc_E0596
E056C:  MOVS            R5, #3
E056E:  B               loc_E0576
E0570:  MOVS            R5, #2
E0572:  B               loc_E0576
E0574:  MOVS            R5, #1
E0576:  CMP             R6, R3
E0578:  BEQ             loc_E058A
E057A:  CMP             R0, #0x7B ; '{'
E057C:  BEQ             loc_E05A0
E057E:  SUBS            R2, R6, R3
E0580:  MOV             R0, R4
E0582:  MOV             R1, R3
E0584:  BL              sub_E079C
E0588:  B               loc_E058C
E058A:  MOV             R6, R3
E058C:  MOV             R0, R4
E058E:  MOV             R1, R5
E0590:  BL              sub_E07D0
E0594:  ADDS            R3, R6, #1
E0596:  MOV             R0, R3
E0598:  ADD             SP, SP, #8
E059A:  POP.W           {R11}
E059E:  POP             {R4-R7,PC}
E05A0:  LDR             R1, =(aInvalidFillCha - 0xE05A8); "invalid fill character '{'" ...
E05A2:  ADD             R0, SP, #0x18+var_14; this
E05A4:  ADD             R1, PC; "invalid fill character '{'"
E05A6:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
