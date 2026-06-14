; =========================================================
; Game Engine Function: sub_E27E6
; Address            : 0xE27E6 - 0xE284A
; =========================================================

E27E6:  PUSH            {R4-R7,LR}
E27E8:  ADD             R7, SP, #0xC
E27EA:  PUSH.W          {R8-R11}
E27EE:  SUB             SP, SP, #0x1C
E27F0:  ADD.W           R11, R1, R2
E27F4:  ADDS            R4, R0, #1
E27F6:  ADD.W           R8, SP, #0x38+var_28
E27FA:  MOV             R6, R1
E27FC:  MOV.W           R10, #0
E2800:  MOV             R9, SP
E2802:  SUB.W           R1, R11, R6
E2806:  MOV             R0, R6
E2808:  MOV             R2, R8
E280A:  STR.W           R10, [SP,#0x38+var_20]
E280E:  STRD.W          R11, R10, [SP,#0x38+var_28]
E2812:  BL              sub_E29FC
E2816:  VLDR            D16, [SP,#0x38+var_28]
E281A:  SUBS            R1, R4, R6
E281C:  LDR             R0, [SP,#0x38+var_20]
E281E:  VSTR            D16, [SP,#0x38+var_38]
E2822:  STR             R0, [SP,#0x38+var_30]
E2824:  LDRD.W          R0, R5, [SP,#0x38+var_38]
E2828:  CMP             R6, R0
E282A:  IT NE
E282C:  ADDNE           R4, R1, R0
E282E:  CBZ             R5, loc_E2840
E2830:  MOV             R0, R4
E2832:  MOV             R1, R9
E2834:  BL              sub_E28C4
E2838:  MOV             R4, R0
E283A:  CMP             R5, R11
E283C:  MOV             R6, R5
E283E:  BNE             loc_E2802
E2840:  ADDS            R0, R4, #1
E2842:  ADD             SP, SP, #0x1C
E2844:  POP.W           {R8-R11}
E2848:  POP             {R4-R7,PC}
