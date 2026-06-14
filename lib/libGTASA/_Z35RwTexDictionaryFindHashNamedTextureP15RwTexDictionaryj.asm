; =========================================================
; Game Engine Function: _Z35RwTexDictionaryFindHashNamedTextureP15RwTexDictionaryj
; Address            : 0x5D166E - 0x5D16A2
; =========================================================

5D166E:  PUSH            {R4-R7,LR}
5D1670:  ADD             R7, SP, #0xC
5D1672:  PUSH.W          {R11}
5D1676:  ADD.W           R5, R0, #8
5D167A:  MOV             R4, R1
5D167C:  MOV             R6, R5
5D167E:  LDR             R6, [R6]
5D1680:  CMP             R6, R5
5D1682:  BEQ             loc_5D169A
5D1684:  ADD.W           R0, R6, #8; this
5D1688:  BLX.W           j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
5D168C:  CMP             R0, R4
5D168E:  BNE             loc_5D167E
5D1690:  SUB.W           R0, R6, #8
5D1694:  POP.W           {R11}
5D1698:  POP             {R4-R7,PC}
5D169A:  MOVS            R0, #0
5D169C:  POP.W           {R11}
5D16A0:  POP             {R4-R7,PC}
