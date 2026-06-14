; =========================================================
; Game Engine Function: sub_10F720
; Address            : 0x10F720 - 0x10F760
; =========================================================

10F720:  PUSH            {R7,LR}
10F722:  MOV             R7, SP
10F724:  LDR             R0, =(byte_2632C0 - 0x10F72A)
10F726:  ADD             R0, PC; byte_2632C0
10F728:  LDRB            R0, [R0]
10F72A:  DMB.W           ISH
10F72E:  LSLS            R0, R0, #0x1F
10F730:  IT NE
10F732:  POPNE           {R7,PC}
10F734:  LDR             R0, =(byte_2632C0 - 0x10F73A)
10F736:  ADD             R0, PC; byte_2632C0 ; __guard *
10F738:  BLX             j___cxa_guard_acquire
10F73C:  CBZ             R0, locret_10F75E
10F73E:  LDR             R1, =(unk_2632A8 - 0x10F74A)
10F740:  MOVS            R3, #0
10F742:  LDR             R0, =(sub_10F688+1 - 0x10F74C)
10F744:  LDR             R2, =(off_22A540 - 0x10F74E)
10F746:  ADD             R1, PC; unk_2632A8 ; obj
10F748:  ADD             R0, PC; sub_10F688 ; lpfunc
10F74A:  ADD             R2, PC; off_22A540 ; lpdso_handle
10F74C:  STR             R3, [R1,#(dword_2632B8 - 0x2632A8)]
10F74E:  BLX             __cxa_atexit
10F752:  LDR             R0, =(byte_2632C0 - 0x10F758)
10F754:  ADD             R0, PC; byte_2632C0
10F756:  POP.W           {R7,LR}
10F75A:  B.W             sub_2242B0
10F75E:  POP             {R7,PC}
