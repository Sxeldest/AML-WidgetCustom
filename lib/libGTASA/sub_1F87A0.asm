; =========================================================
; Game Engine Function: sub_1F87A0
; Address            : 0x1F87A0 - 0x1F88A0
; =========================================================

1F87A0:  PUSH            {R4-R7,LR}
1F87A2:  ADD             R7, SP, #0xC
1F87A4:  PUSH.W          {R8-R11}
1F87A8:  SUB             SP, SP, #0xC
1F87AA:  MOVW            R8, #0xA405
1F87AE:  MOV             R4, R0
1F87B0:  MOVS            R6, #0
1F87B2:  MOVT            R8, #0x1BB4
1F87B6:  MOV.W           R9, #1
1F87BA:  MOV.W           R10, #0xFF
1F87BE:  MOVS            R5, #0
1F87C0:  ADD.W           R0, R6, #0x73 ; 's'
1F87C4:  UMULL.W         R1, R2, R0, R8
1F87C8:  MOV             R1, R5
1F87CA:  SUBS            R0, R0, R2
1F87CC:  ADD.W           R0, R2, R0,LSR#1
1F87D0:  LSRS            R2, R0, #7
1F87D2:  MOV             R0, R4
1F87D4:  MOV             R3, R2
1F87D6:  STRD.W          R2, R10, [SP,#0x28+var_28]
1F87DA:  STR.W           R9, [SP,#0x28+var_20]
1F87DE:  BL              sub_1F82C0
1F87E2:  ADDS            R5, #1
1F87E4:  ADD.W           R6, R6, #0x100
1F87E8:  CMP             R5, #0xE7
1F87EA:  BNE             loc_1F87C0
1F87EC:  MOVS            R0, #0
1F87EE:  MOVS            R1, #0xFF
1F87F0:  STRD.W          R1, R0, [SP,#0x28+var_28]
1F87F4:  MOVS            R6, #1
1F87F6:  MOV             R0, R4
1F87F8:  MOVS            R1, #0xE7
1F87FA:  MOVS            R2, #0xFF
1F87FC:  MOVS            R3, #0xFF
1F87FE:  STR             R6, [SP,#0x28+var_20]
1F8800:  BL              sub_1F82C0
1F8804:  MOVS            R5, #0xE8
1F8806:  MOV.W           R11, #0x66 ; 'f'
1F880A:  MOV.W           R8, #0x99
1F880E:  MOV.W           R9, #0xCC
1F8812:  MOV.W           R10, #0x33 ; '3'
1F8816:  MOVS            R0, #0
1F8818:  MOV             R1, R5
1F881A:  STRD.W          R0, R10, [SP,#0x28+var_28]
1F881E:  MOV             R0, R4
1F8820:  MOVS            R2, #0
1F8822:  MOVS            R3, #0
1F8824:  STR             R6, [SP,#0x28+var_20]
1F8826:  BL              sub_1F82C0
1F882A:  MOVS            R0, #0x33 ; '3'
1F882C:  ADDS            R1, R5, #1
1F882E:  STRD.W          R0, R10, [SP,#0x28+var_28]
1F8832:  MOV             R0, R4
1F8834:  MOVS            R2, #0x33 ; '3'
1F8836:  MOVS            R3, #0x33 ; '3'
1F8838:  STR             R6, [SP,#0x28+var_20]
1F883A:  BL              sub_1F82C0
1F883E:  ADDS            R1, R5, #2
1F8840:  MOV             R0, R4
1F8842:  MOVS            R2, #0x66 ; 'f'
1F8844:  MOVS            R3, #0x66 ; 'f'
1F8846:  STRD.W          R11, R10, [SP,#0x28+var_28]
1F884A:  STR             R6, [SP,#0x28+var_20]
1F884C:  BL              sub_1F82C0
1F8850:  ADDS            R1, R5, #3
1F8852:  MOV             R0, R4
1F8854:  MOVS            R2, #0x99
1F8856:  MOVS            R3, #0x99
1F8858:  STRD.W          R8, R10, [SP,#0x28+var_28]
1F885C:  STR             R6, [SP,#0x28+var_20]
1F885E:  BL              sub_1F82C0
1F8862:  ADDS            R1, R5, #4
1F8864:  MOV             R0, R4
1F8866:  MOVS            R2, #0xCC
1F8868:  MOVS            R3, #0xCC
1F886A:  STRD.W          R9, R10, [SP,#0x28+var_28]
1F886E:  STR             R6, [SP,#0x28+var_20]
1F8870:  BL              sub_1F82C0
1F8874:  MOVS            R0, #0xFF
1F8876:  ADDS            R1, R5, #5
1F8878:  STRD.W          R0, R10, [SP,#0x28+var_28]
1F887C:  MOV             R0, R4
1F887E:  MOVS            R2, #0xFF
1F8880:  MOVS            R3, #0xFF
1F8882:  STR             R6, [SP,#0x28+var_20]
1F8884:  BL              sub_1F82C0
1F8888:  ADD.W           R10, R10, #0x33 ; '3'
1F888C:  ADDS            R5, #6
1F888E:  CMP.W           R10, #0xFF
1F8892:  BNE             loc_1F8816
1F8894:  MOV.W           R0, #0x100
1F8898:  ADD             SP, SP, #0xC
1F889A:  POP.W           {R8-R11}
1F889E:  POP             {R4-R7,PC}
