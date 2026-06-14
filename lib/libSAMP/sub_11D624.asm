; =========================================================
; Game Engine Function: sub_11D624
; Address            : 0x11D624 - 0x11D662
; =========================================================

11D624:  PUSH            {R4-R7,LR}
11D626:  ADD             R7, SP, #0xC
11D628:  PUSH.W          {R8}
11D62C:  SUB             SP, SP, #0x18
11D62E:  MOV             R4, R3
11D630:  MOV             R8, R2
11D632:  MOV             R6, R1
11D634:  MOV             R5, R0
11D636:  BL              sub_11D668
11D63A:  LDR             R0, =(unk_2637B8 - 0x11D648)
11D63C:  LDRD.W          R2, R12, [R7,#arg_0]
11D640:  LDRD.W          R3, R1, [R7,#arg_8]
11D644:  ADD             R0, PC; unk_2637B8
11D646:  STRD.W          R4, R2, [SP,#0x28+var_28]
11D64A:  MOV             R2, R6
11D64C:  STRD.W          R12, R3, [SP,#0x28+var_20]
11D650:  MOV             R3, R8
11D652:  STR             R1, [SP,#0x28+var_18]
11D654:  MOV             R1, R5
11D656:  BL              sub_11D734
11D65A:  ADD             SP, SP, #0x18
11D65C:  POP.W           {R8}
11D660:  POP             {R4-R7,PC}
