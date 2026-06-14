; =========================================================
; Game Engine Function: sub_DD6FC
; Address            : 0xDD6FC - 0xDD746
; =========================================================

DD6FC:  PUSH            {R4-R7,LR}
DD6FE:  ADD             R7, SP, #0xC
DD700:  PUSH.W          {R11}
DD704:  SUB             SP, SP, #0x20
DD706:  LDR             R1, [R7,#arg_8]
DD708:  MOV             R4, R0
DD70A:  ADD             R0, SP, #0x30+var_20
DD70C:  MOV             R6, R2
DD70E:  MOVS            R2, #1
DD710:  MOV             R5, R3
DD712:  BL              sub_DD758
DD716:  LDR             R1, [R4]
DD718:  LDRD.W          R2, R3, [R7,#arg_0]
DD71C:  STRD.W          R2, R3, [SP,#0x30+var_30]
DD720:  MOV             R2, R6
DD722:  STR             R0, [SP,#0x30+var_28]
DD724:  MOV             R0, R1
DD726:  MOV             R3, R5
DD728:  BL              sub_DD7D8
DD72C:  LDRB.W          R1, [SP,#0x30+var_20]
DD730:  STR             R0, [R4]
DD732:  LSLS            R0, R1, #0x1F
DD734:  ITT NE
DD736:  LDRNE           R0, [SP,#0x30+var_18]; void *
DD738:  BLXNE           j__ZdlPv; operator delete(void *)
DD73C:  MOVS            R0, #1
DD73E:  ADD             SP, SP, #0x20 ; ' '
DD740:  POP.W           {R11}
DD744:  POP             {R4-R7,PC}
