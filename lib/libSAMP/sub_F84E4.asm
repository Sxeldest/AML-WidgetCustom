; =========================================================
; Game Engine Function: sub_F84E4
; Address            : 0xF84E4 - 0xF8514
; =========================================================

F84E4:  PUSH            {R4-R7,LR}
F84E6:  ADD             R7, SP, #0xC
F84E8:  PUSH.W          {R11}
F84EC:  LDR             R0, =(unk_245630 - 0xF84F8)
F84EE:  MOVW            R6, #0x714
F84F2:  LDR             R1, =(unk_92DBE - 0xF84FA)
F84F4:  ADD             R0, PC; unk_245630
F84F6:  ADD             R1, PC; unk_92DBE
F84F8:  ADDS            R5, R0, #4
F84FA:  ADD.W           R4, R1, #0x6C ; 'l'
F84FE:  MOV             R0, R4
F8500:  BL              sub_10919C
F8504:  STR.W           R0, [R5],#4
F8508:  ADDS            R4, #0x48 ; 'H'
F850A:  SUBS            R6, #1
F850C:  BNE             loc_F84FE
F850E:  POP.W           {R11}
F8512:  POP             {R4-R7,PC}
