; =========================================================
; Game Engine Function: sub_103964
; Address            : 0x103964 - 0x1039A2
; =========================================================

103964:  PUSH            {R4-R7,LR}
103966:  ADD             R7, SP, #0xC
103968:  PUSH.W          {R11}
10396C:  MOV             R4, R1
10396E:  LDR             R1, =(asc_4F675 - 0x103978); "(" ...
103970:  LDR             R6, =(sub_FFB40+1 - 0x10397E)
103972:  MOV             R5, R0
103974:  ADD             R1, PC; "("
103976:  MOV             R0, R4
103978:  ADDS            R2, R1, #1
10397A:  ADD             R6, PC; sub_FFB40
10397C:  BLX             R6; sub_FFB40
10397E:  LDR             R0, [R5,#8]
103980:  MOV             R1, R4
103982:  BL              sub_FE074
103986:  LDR             R1, =(asc_50037 - 0x10398E); ")" ...
103988:  MOV             R0, R4
10398A:  ADD             R1, PC; ")"
10398C:  ADDS            R2, R1, #1
10398E:  BLX             R6; sub_FFB40
103990:  LDRD.W          R1, R2, [R5,#0xC]
103994:  MOV             R0, R4
103996:  MOV             R3, R6
103998:  POP.W           {R11}
10399C:  POP.W           {R4-R7,LR}
1039A0:  BX              R3; sub_FFB40
