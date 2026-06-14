; =========================================================
; Game Engine Function: sub_11D668
; Address            : 0x11D668 - 0x11D6A8
; =========================================================

11D668:  PUSH            {R7,LR}
11D66A:  MOV             R7, SP
11D66C:  LDR             R0, =(byte_2637D0 - 0x11D672)
11D66E:  ADD             R0, PC; byte_2637D0
11D670:  LDRB            R0, [R0]
11D672:  DMB.W           ISH
11D676:  LSLS            R0, R0, #0x1F
11D678:  IT NE
11D67A:  POPNE           {R7,PC}
11D67C:  LDR             R0, =(byte_2637D0 - 0x11D682)
11D67E:  ADD             R0, PC; byte_2637D0 ; __guard *
11D680:  BLX             j___cxa_guard_acquire
11D684:  CBZ             R0, locret_11D6A6
11D686:  LDR             R1, =(unk_2637B8 - 0x11D692)
11D688:  MOVS            R3, #0
11D68A:  LDR             R0, =(sub_11D57C+1 - 0x11D694)
11D68C:  LDR             R2, =(off_22A540 - 0x11D696)
11D68E:  ADD             R1, PC; unk_2637B8 ; obj
11D690:  ADD             R0, PC; sub_11D57C ; lpfunc
11D692:  ADD             R2, PC; off_22A540 ; lpdso_handle
11D694:  STR             R3, [R1,#(dword_2637C8 - 0x2637B8)]
11D696:  BLX             __cxa_atexit
11D69A:  LDR             R0, =(byte_2637D0 - 0x11D6A0)
11D69C:  ADD             R0, PC; byte_2637D0
11D69E:  POP.W           {R7,LR}
11D6A2:  B.W             sub_2242B0
11D6A6:  POP             {R7,PC}
