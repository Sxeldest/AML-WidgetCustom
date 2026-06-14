; =========================================================
; Game Engine Function: sub_142800
; Address            : 0x142800 - 0x14288C
; =========================================================

142800:  PUSH            {R4,R5,R7,LR}
142802:  ADD             R7, SP, #8
142804:  SUB             SP, SP, #8
142806:  MOV             R4, R0
142808:  LDR.W           R0, [R0,#0x210]
14280C:  LDR             R1, [R0]
14280E:  LDR             R1, [R1,#0x18]
142810:  BLX             R1
142812:  LDR             R1, =(off_234A24 - 0x142818)
142814:  ADD             R1, PC; off_234A24
142816:  LDR             R1, [R1]; dword_23DEEC
142818:  LDR             R1, [R1]
14281A:  CBZ             R0, loc_14284A
14281C:  CBZ             R1, loc_142834
14281E:  LDR             R5, [R1,#0x60]
142820:  MOV             R0, SP; int
142822:  LDR             R1, =(unk_8FD07 - 0x14282A)
142824:  MOVS            R2, #0x2D ; '-'
142826:  ADD             R1, PC; unk_8FD07 ; s
142828:  BL              sub_F1E90
14282C:  LDR             R1, [SP,#0x10+var_10]
14282E:  MOV             R0, R5
142830:  BL              sub_12D5E8
142834:  LDR.W           R0, [R4,#0x210]
142838:  LDR             R2, [R0]
14283A:  LDR             R1, =(byte_8F794 - 0x142842)
14283C:  LDR             R2, [R2,#0x14]
14283E:  ADD             R1, PC; byte_8F794
142840:  BLX             R2
142842:  MOVS            R0, #1
142844:  STR.W           R0, [R4,#0x218]
142848:  B               loc_142870
14284A:  CBZ             R1, loc_142862
14284C:  LDR             R5, [R1,#0x60]
14284E:  MOV             R0, SP; int
142850:  LDR             R1, =(unk_87C00 - 0x142858)
142852:  MOVS            R2, #0x60 ; '`'
142854:  ADD             R1, PC; unk_87C00 ; s
142856:  BL              sub_F1E90
14285A:  LDR             R1, [SP,#0x10+var_10]
14285C:  MOV             R0, R5
14285E:  BL              sub_12D5E8
142862:  LDR.W           R0, [R4,#0x210]
142866:  MOVS            R2, #0
142868:  LDR             R1, [R0]
14286A:  LDR             R3, [R1,#0xC]
14286C:  MOVS            R1, #0
14286E:  BLX             R3
142870:  LDR.W           R0, [R4,#0x3B0]
142874:  LDR             R0, [R0]
142876:  CBZ             R0, loc_142888
142878:  MOVW            R1, #0x13BC
14287C:  LDR             R0, [R0,R1]
14287E:  CBZ             R0, loc_142888
142880:  LDR             R0, [R0,#0x1C]
142882:  MOVS            R1, #1
142884:  BL              sub_10421C
142888:  ADD             SP, SP, #8
14288A:  POP             {R4,R5,R7,PC}
