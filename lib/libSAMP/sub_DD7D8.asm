; =========================================================
; Game Engine Function: sub_DD7D8
; Address            : 0xDD7D8 - 0xDD864
; =========================================================

DD7D8:  PUSH            {R4-R7,LR}
DD7DA:  ADD             R7, SP, #0xC
DD7DC:  PUSH.W          {R8-R10}
DD7E0:  SUB             SP, SP, #0x40
DD7E2:  ORR.W           R6, R2, #1
DD7E6:  MOV             R8, R0
DD7E8:  CLZ.W           R6, R6
DD7EC:  LDR             R0, =(unk_91C38 - 0xDD804)
DD7EE:  LDR             R1, =(unk_91BF8 - 0xDD7FE)
DD7F0:  ADDS            R6, #0x20 ; ' '
DD7F2:  CMP             R3, #0
DD7F4:  IT NE
DD7F6:  CLZNE.W         R6, R3
DD7FA:  ADD             R1, PC; unk_91BF8
DD7FC:  EOR.W           R6, R6, #0x3F ; '?'
DD800:  ADD             R0, PC; unk_91C38
DD802:  ADD.W           R9, SP, #0x58+var_54
DD806:  LDRB            R5, [R1,R6]
DD808:  ADD             R4, SP, #0x58+var_44
DD80A:  LDR.W           R10, [R7,#arg_0]
DD80E:  LDR.W           R1, [R0,R5,LSL#3]
DD812:  ADD.W           R0, R0, R5,LSL#3
DD816:  LDR             R0, [R0,#4]
DD818:  SUBS            R1, R2, R1
DD81A:  SBCS.W          R0, R3, R0
DD81E:  MOV             R1, R4
DD820:  MOV             R0, R9
DD822:  IT CC
DD824:  SUBCC           R5, #1
DD826:  STR             R5, [SP,#0x58+var_1C]
DD828:  STR             R5, [SP,#0x58+var_58]
DD82A:  BL              sub_DD0CC
DD82E:  LDR             R6, [R7,#arg_8]
DD830:  MOV             R1, R5
DD832:  MOV             R0, R6
DD834:  BL              sub_DD86C
DD838:  ADD             R2, SP, #0x58+var_1C
DD83A:  STR             R2, [SP,#0x58+var_48]
DD83C:  ADD.W           R2, R7, #8
DD840:  STRD.W          R6, R4, [SP,#0x58+var_50]
DD844:  LDR             R1, [R7,#arg_4]
DD846:  CMP.W           R10, #0
DD84A:  STRD.W          R9, R2, [SP,#0x58+var_58]
DD84E:  IT NE
DD850:  ADDNE           R5, #1
DD852:  ADDS            R2, R5, R0
DD854:  MOV             R0, R8
DD856:  MOV             R3, R2
DD858:  BL              sub_DD8A8
DD85C:  ADD             SP, SP, #0x40 ; '@'
DD85E:  POP.W           {R8-R10}
DD862:  POP             {R4-R7,PC}
