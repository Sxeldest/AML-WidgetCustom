; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSequence13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F1614 - 0x4F1688
; =========================================================

4F1614:  PUSH            {R4-R7,LR}
4F1616:  ADD             R7, SP, #0xC
4F1618:  PUSH.W          {R11}
4F161C:  MOV             R4, R0
4F161E:  MOV             R6, R3
4F1620:  LDR             R0, [R4,#8]
4F1622:  LDR             R3, [R0]
4F1624:  LDR             R5, [R3,#0x1C]
4F1626:  MOV             R3, R6
4F1628:  BLX             R5
4F162A:  MOV             R5, R0
4F162C:  CBZ             R6, loc_4F1680
4F162E:  CMP             R5, #1
4F1630:  BNE             loc_4F1680
4F1632:  LDR             R0, [R6]
4F1634:  LDR             R1, [R0,#8]
4F1636:  MOV             R0, R6
4F1638:  BLX             R1
4F163A:  CMP             R0, #9
4F163C:  BNE             loc_4F1680
4F163E:  LDRB.W          R0, [R6,#0x3C]
4F1642:  CMP             R0, #0
4F1644:  ITT NE
4F1646:  LDRBNE          R0, [R6,#9]
4F1648:  CMPNE           R0, #0
4F164A:  BEQ             loc_4F1680
4F164C:  LDR             R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F1654)
4F164E:  LDR             R1, [R4,#0xC]
4F1650:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F1652:  LDR             R0, [R0]; CTaskSequences::ms_taskSequence ...
4F1654:  ADD.W           R0, R0, R1,LSL#6; this
4F1658:  LDR             R2, [R0,#0x3C]
4F165A:  SUBS            R2, #1
4F165C:  STR             R2, [R0,#0x3C]
4F165E:  BNE             loc_4F167A
4F1660:  LDR             R2, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F1666)
4F1662:  ADD             R2, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F1664:  LDR             R2, [R2]; CTaskSequences::ms_taskSequence ...
4F1666:  ADD.W           R1, R2, R1,LSL#6
4F166A:  LDRB.W          R2, [R1,#0x38]!
4F166E:  CMP             R2, #0
4F1670:  ITTT NE
4F1672:  MOVNE           R2, #0
4F1674:  STRBNE          R2, [R1]
4F1676:  BLXNE           j__ZN20CTaskComplexSequence5FlushEv; CTaskComplexSequence::Flush(void)
4F167A:  MOV.W           R0, #0xFFFFFFFF
4F167E:  STR             R0, [R4,#0xC]
4F1680:  MOV             R0, R5
4F1682:  POP.W           {R11}
4F1686:  POP             {R4-R7,PC}
