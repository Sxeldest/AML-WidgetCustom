; =========================================================
; Game Engine Function: sub_17E954
; Address            : 0x17E954 - 0x17E9E4
; =========================================================

17E954:  PUSH            {R4-R7,LR}
17E956:  ADD             R7, SP, #0xC
17E958:  PUSH.W          {R8-R11}
17E95C:  SUB             SP, SP, #0xC
17E95E:  STR             R2, [SP,#0x28+var_20]
17E960:  MOV             R9, R1
17E962:  MOVS            R1, #0x64 ; 'd'
17E964:  MOVS            R2, #0
17E966:  MOV             R4, R3
17E968:  MOV             R10, R0
17E96A:  MOV.W           R11, #0
17E96E:  BL              sub_180270
17E972:  LDR             R3, [R7,#arg_4]
17E974:  MOV             R0, R10
17E976:  MOVS            R1, #1
17E978:  MOV             R2, R4
17E97A:  STR.W           R11, [SP,#0x28+var_28]
17E97E:  BL              sub_17FB94
17E982:  LDRB.W          R0, [R9]
17E986:  SUBS            R0, #0x33 ; '3'
17E988:  CMN.W           R0, #4
17E98C:  BHI             loc_17E99C
17E98E:  LDR             R0, =(off_234E88 - 0x17E996)
17E990:  MOV             R1, R9; name
17E992:  ADD             R0, PC; off_234E88
17E994:  LDR             R0, [R0]; unk_382751 ; int
17E996:  BL              sub_18CC56
17E99A:  MOV             R9, R0
17E99C:  ADDW            R4, R10, #0xAE8
17E9A0:  MOVS            R5, #0x20 ; ' '
17E9A2:  MOVW            R6, #0xFFFF
17E9A6:  MOV.W           R8, #0xFFFFFFFF
17E9AA:  ADD.W           R0, R4, #0xC
17E9AE:  STRH            R6, [R4,#4]
17E9B0:  STR.W           R8, [R4]
17E9B4:  STRB.W          R11, [R4,#0x120]
17E9B8:  BL              sub_17D55E
17E9BC:  ADD.W           R4, R4, #0x124
17E9C0:  SUBS            R5, #1
17E9C2:  BNE             loc_17E9AA
17E9C4:  LDR.W           R0, [R10,#0x9D4]
17E9C8:  MOV             R1, R9; name
17E9CA:  LDR.W           R3, [R10,#0x9E0]; int
17E9CE:  ADDS            R0, #7
17E9D0:  LDR             R2, [SP,#0x28+var_20]; int
17E9D2:  ASRS            R0, R0, #3
17E9D4:  STR             R0, [SP,#0x28+var_28]; int
17E9D6:  MOV             R0, R10; int
17E9D8:  BL              sub_180148
17E9DC:  ADD             SP, SP, #0xC
17E9DE:  POP.W           {R8-R11}
17E9E2:  POP             {R4-R7,PC}
