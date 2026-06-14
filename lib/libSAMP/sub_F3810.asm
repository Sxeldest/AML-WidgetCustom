; =========================================================
; Game Engine Function: sub_F3810
; Address            : 0xF3810 - 0xF38DE
; =========================================================

F3810:  PUSH            {R4-R7,LR}
F3812:  ADD             R7, SP, #0xC
F3814:  PUSH.W          {R8}
F3818:  MOV             R8, R0
F381A:  LDR             R0, =(off_23494C - 0xF3824)
F381C:  MOVW            R6, #0x3358
F3820:  ADD             R0, PC; off_23494C
F3822:  MOVT            R6, #0x67 ; 'g'
F3826:  LDR             R5, [R0]; dword_23DF24
F3828:  LDR             R0, =(off_23FFE0 - 0xF382E)
F382A:  ADD             R0, PC; off_23FFE0
F382C:  LDR             R2, [R5]
F382E:  LDR             R1, [R0]
F3830:  ADDS            R0, R2, R6
F3832:  ADD.W           R0, R0, #0x18C
F3836:  MOVS            R2, #0
F3838:  BL              sub_164196
F383C:  LDR             R0, =(dword_23FFE4 - 0xF384C)
F383E:  MOVW            R4, #0xFAA0
F3842:  LDR             R2, [R5]
F3844:  MOVT            R4, #0x66 ; 'f'
F3848:  ADD             R0, PC; dword_23FFE4
F384A:  LDR             R1, [R0]
F384C:  ADDS            R0, R2, R4
F384E:  MOVS            R2, #0
F3850:  BL              sub_164196
F3854:  LDR             R0, =(dword_23FFE8 - 0xF385C)
F3856:  LDR             R2, [R5]
F3858:  ADD             R0, PC; dword_23FFE8
F385A:  LDR             R1, [R0]
F385C:  MOV             R0, #0x6746E4
F3864:  ADD             R0, R2
F3866:  MOVS            R2, #0
F3868:  BL              sub_164196
F386C:  LDR             R0, =(dword_23FFEC - 0xF3874)
F386E:  LDR             R2, [R5]
F3870:  ADD             R0, PC; dword_23FFEC
F3872:  LDR             R1, [R0]
F3874:  MOV             R0, #0x66E5E4
F387C:  ADD             R0, R2
F387E:  MOVS            R2, #0
F3880:  BL              sub_164196
F3884:  LDR             R0, =(dword_23FFF0 - 0xF388C)
F3886:  LDR             R2, [R5]
F3888:  ADD             R0, PC; dword_23FFF0
F388A:  LDR             R1, [R0]
F388C:  ADDS            R0, R2, R6
F388E:  MOVS            R2, #0
F3890:  BL              sub_164196
F3894:  LDR             R0, =(dword_23FFF4 - 0xF389C)
F3896:  LDR             R2, [R5]
F3898:  ADD             R0, PC; dword_23FFF4
F389A:  LDR             R1, [R0]
F389C:  ADDS            R0, R4, R2
F389E:  ADD.W           R0, R0, #0x810
F38A2:  MOVS            R2, #0
F38A4:  BL              sub_164196
F38A8:  LDR             R0, [R5]
F38AA:  MOVW            R4, #0x3794
F38AE:  LDR             R1, =(dword_23FCE0 - 0xF38BE)
F38B0:  MOVT            R4, #0x6F ; 'o'
F38B4:  ADD             R0, R4; dest
F38B6:  MOV.W           R2, #0x2F8; n
F38BA:  ADD             R1, PC; dword_23FCE0 ; src
F38BC:  BLX             j_memcpy
F38C0:  LDR             R0, [R5]
F38C2:  MOV             R6, #0x67947C
F38CA:  ADD             R0, R6
F38CC:  BL              sub_1641C4
F38D0:  LDR             R0, [R5]
F38D2:  ADDS            R1, R0, R4
F38D4:  STR             R1, [R0,R6]
F38D6:  MOV             R0, R8
F38D8:  POP.W           {R8}
F38DC:  POP             {R4-R7,PC}
