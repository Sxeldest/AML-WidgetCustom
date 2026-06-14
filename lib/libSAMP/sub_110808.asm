; =========================================================
; Game Engine Function: sub_110808
; Address            : 0x110808 - 0x110836
; =========================================================

110808:  PUSH            {R7,LR}
11080A:  MOV             R7, SP
11080C:  MOV             R12, R0
11080E:  LDR             R0, =(off_23494C - 0x110814)
110810:  ADD             R0, PC; off_23494C
110812:  LDR             R0, [R0]; dword_23DF24
110814:  LDR             R3, [R0]
110816:  MOVS            R0, #0
110818:  CBZ             R3, locret_110830
11081A:  MOV             R2, #0x66E870
110822:  ADDS            R3, R3, R2
110824:  IT EQ
110826:  POPEQ           {R7,PC}
110828:  LDR             R3, [R3]
11082A:  CBZ             R3, loc_110832
11082C:  MOV             R0, R12
11082E:  BLX             R3
110830:  POP             {R7,PC}
110832:  MOVS            R0, #0
110834:  POP             {R7,PC}
