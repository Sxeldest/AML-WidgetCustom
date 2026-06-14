; =========================================================
; Game Engine Function: sub_1086F0
; Address            : 0x1086F0 - 0x108720
; =========================================================

1086F0:  PUSH            {R4,R6,R7,LR}
1086F2:  ADD             R7, SP, #8
1086F4:  MOV             R4, R0
1086F6:  LDR             R0, [R0]
1086F8:  DMB.W           ISH
1086FC:  SUBS            R1, R0, #4
1086FE:  LDREX.W         R2, [R1]
108702:  SUBS            R2, #1
108704:  STREX.W         R3, R2, [R1]
108708:  CMP             R3, #0
10870A:  BNE             loc_1086FE
10870C:  CMP.W           R2, #0xFFFFFFFF
108710:  DMB.W           ISH
108714:  ITT LE
108716:  SUBLE           R0, #0xC; void *
108718:  BLXLE           j__ZdlPv; operator delete(void *)
10871C:  MOV             R0, R4
10871E:  POP             {R4,R6,R7,PC}
