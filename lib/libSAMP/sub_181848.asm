; =========================================================
; Game Engine Function: sub_181848
; Address            : 0x181848 - 0x181920
; =========================================================

181848:  PUSH            {R4-R7,LR}
18184A:  ADD             R7, SP, #0xC
18184C:  PUSH.W          {R8-R11}
181850:  SUB             SP, SP, #0x12C
181852:  CMP             R1, #0
181854:  BEQ             loc_181918
181856:  MOV             R11, R0
181858:  LDRB            R0, [R1]
18185A:  MOV             R9, R3
18185C:  MOV             R8, R2
18185E:  SUBS            R0, #0x33 ; '3'
181860:  MOV             R10, R1
181862:  CMN.W           R0, #4
181866:  LDR             R0, =(off_234E88 - 0x18186C)
181868:  ADD             R0, PC; off_234E88
18186A:  STR             R0, [SP,#0x148+var_140]
18186C:  BHI             loc_181878
18186E:  LDR             R0, [R0]; unk_382751 ; int
181870:  MOV             R1, R10; name
181872:  BL              sub_18CC56
181876:  MOV             R10, R0
181878:  LDR.W           R0, [R11]
18187C:  ADD             R3, SP, #0x148+var_28
18187E:  MOV             R1, R10
181880:  MOV             R2, R8
181882:  LDR.W           R4, [R0,#0xC0]
181886:  MOV             R0, R11
181888:  BLX             R4
18188A:  ADD             R0, SP, #0x148+var_13C; int
18188C:  MOVS            R1, #5; size
18188E:  BL              sub_17D4C0
181892:  CMP.W           R9, #0
181896:  BEQ             loc_1818AC
181898:  MOVS            R0, #8
18189A:  STRB.W          R0, [SP,#0x148+var_20]
18189E:  ADD             R0, SP, #0x148+var_13C
1818A0:  ADD             R1, SP, #0x148+var_20
1818A2:  MOVS            R2, #8
1818A4:  MOVS            R3, #1
1818A6:  BL              sub_17D628
1818AA:  B               loc_1818BE
1818AC:  MOVS            R0, #7
1818AE:  STRB.W          R0, [SP,#0x148+var_20]
1818B2:  ADD             R0, SP, #0x148+var_13C
1818B4:  ADD             R1, SP, #0x148+var_20
1818B6:  MOVS            R2, #8
1818B8:  MOVS            R3, #1
1818BA:  BL              sub_17D628
1818BE:  BL              sub_17E2E4
1818C2:  STR             R0, [SP,#0x148+var_20]
1818C4:  ADD             R0, SP, #0x148+var_13C
1818C6:  ADD             R1, SP, #0x148+var_20
1818C8:  MOVS            R2, #0x20 ; ' '
1818CA:  MOVS            R3, #1
1818CC:  BL              sub_17D628
1818D0:  LDR.W           R0, [R11,#0x384]
1818D4:  CBZ             R0, loc_1818FA
1818D6:  MOVS            R4, #0
1818D8:  LDR.W           R0, [R11,#0x380]
1818DC:  LDR             R1, [SP,#0x148+var_130]
1818DE:  LDR             R2, [SP,#0x148+var_13C]
1818E0:  LDR.W           R0, [R0,R4,LSL#2]
1818E4:  LDRD.W          R3, R6, [SP,#0x148+var_28]
1818E8:  LDR             R5, [R0]
1818EA:  LDR             R5, [R5,#0x1C]
1818EC:  STR             R6, [SP,#0x148+cp]
1818EE:  BLX             R5
1818F0:  LDR.W           R0, [R11,#0x384]
1818F4:  ADDS            R4, #1
1818F6:  CMP             R4, R0
1818F8:  BCC             loc_1818D8
1818FA:  LDR.W           R1, [R11,#0x7EC]; int
1818FE:  LDR             R3, [SP,#0x148+var_13C]
181900:  LDR             R2, [SP,#0x148+var_130]; int
181902:  LDR             R0, [SP,#0x148+var_140]
181904:  ADDS            R3, #7
181906:  STRD.W          R10, R8, [SP,#0x148+cp]; cp
18190A:  ASRS            R3, R3, #3; int
18190C:  LDR             R0, [R0]; int
18190E:  BL              sub_18CD80
181912:  ADD             R0, SP, #0x148+var_13C
181914:  BL              sub_17D542
181918:  ADD             SP, SP, #0x12C
18191A:  POP.W           {R8-R11}
18191E:  POP             {R4-R7,PC}
