; =========================================================
; Game Engine Function: _ZN11CEventGroup6RemoveEP6CEvent
; Address            : 0x36F658 - 0x36F696
; =========================================================

36F658:  PUSH            {R7,LR}
36F65A:  MOV             R7, SP
36F65C:  CBZ             R1, locret_36F694
36F65E:  LDR.W           R12, [R0,#8]
36F662:  CMP.W           R12, #1
36F666:  BLT             locret_36F694
36F668:  ADD.W           LR, R0, #0xC
36F66C:  MOVS            R3, #0
36F66E:  B               loc_36F678
36F670:  ADDS            R3, #1
36F672:  CMP             R3, R12
36F674:  IT GE
36F676:  POPGE           {R7,PC}
36F678:  LDR.W           R2, [LR,R3,LSL#2]
36F67C:  CMP             R2, R1
36F67E:  BNE             loc_36F670
36F680:  ADD.W           R0, R0, R3,LSL#2
36F684:  MOVS            R2, #0
36F686:  STR             R2, [R0,#0xC]
36F688:  LDR             R0, [R1]
36F68A:  LDR             R2, [R0,#4]
36F68C:  MOV             R0, R1
36F68E:  POP.W           {R7,LR}
36F692:  BX              R2
36F694:  POP             {R7,PC}
