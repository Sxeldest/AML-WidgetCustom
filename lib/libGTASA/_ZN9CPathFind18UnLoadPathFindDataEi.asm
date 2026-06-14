; =========================================================
; Game Engine Function: _ZN9CPathFind18UnLoadPathFindDataEi
; Address            : 0x315704 - 0x31578A
; =========================================================

315704:  PUSH            {R4-R7,LR}
315706:  ADD             R7, SP, #0xC
315708:  PUSH.W          {R8-R10}
31570C:  ADD.W           R4, R0, R1,LSL#2
315710:  LDR.W           R0, [R4,#0x804]; this
315714:  CMP             R0, #0
315716:  IT NE
315718:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
31571C:  LDR.W           R0, [R4,#0x924]; this
315720:  CMP             R0, #0
315722:  IT NE
315724:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
315728:  LDR.W           R0, [R4,#0xA44]; this
31572C:  CMP             R0, #0
31572E:  IT NE
315730:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
315734:  LDR.W           R0, [R4,#0xDA4]; this
315738:  CMP             R0, #0
31573A:  IT NE
31573C:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
315740:  LDR.W           R0, [R4,#0xB64]; this
315744:  ADDW            R10, R4, #0x804
315748:  ADDW            R6, R4, #0x924
31574C:  ADDW            R8, R4, #0xA44
315750:  CMP             R0, #0
315752:  ADDW            R9, R4, #0xDA4
315756:  ADDW            R5, R4, #0xB64
31575A:  IT NE
31575C:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
315760:  LDR.W           R0, [R4,#0xC84]; this
315764:  ADDW            R4, R4, #0xC84
315768:  CMP             R0, #0
31576A:  IT NE
31576C:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
315770:  MOVS            R0, #0
315772:  STR.W           R0, [R10]
315776:  STR             R0, [R6]
315778:  STR.W           R0, [R8]
31577C:  STR.W           R0, [R9]
315780:  STR             R0, [R5]
315782:  STR             R0, [R4]
315784:  POP.W           {R8-R10}
315788:  POP             {R4-R7,PC}
