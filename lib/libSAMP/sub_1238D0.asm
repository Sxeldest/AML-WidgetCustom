; =========================================================
; Game Engine Function: sub_1238D0
; Address            : 0x1238D0 - 0x123990
; =========================================================

1238D0:  PUSH            {R4-R7,LR}
1238D2:  ADD             R7, SP, #0xC
1238D4:  PUSH.W          {R8-R11}
1238D8:  SUB             SP, SP, #0x4C
1238DA:  MOV             R4, R0
1238DC:  LDR             R0, =(off_23494C - 0x1238E6)
1238DE:  LDR             R1, =(sub_1239DC+1 - 0x1238EA)
1238E0:  MOVS            R2, #0
1238E2:  ADD             R0, PC; off_23494C
1238E4:  MOV             R9, SP
1238E6:  ADD             R1, PC; sub_1239DC
1238E8:  MOV             R3, R4
1238EA:  LDR             R0, [R0]; dword_23DF24
1238EC:  LDR.W           R10, [R0]
1238F0:  MOV             R0, R9
1238F2:  STR             R2, [R4]
1238F4:  MOVS            R2, #0
1238F6:  BL              sub_123A68
1238FA:  ADD.W           R11, SP, #0x68+var_50
1238FE:  MOV             R1, R9
123900:  MOV             R0, R11
123902:  BL              sub_123C34
123906:  BL              sub_123BDC
12390A:  LDR             R0, =(unk_263BE0 - 0x123910)
12390C:  ADD             R0, PC; unk_263BE0
12390E:  LDR             R6, [R0,#(dword_263BF0 - 0x263BE0)]
123910:  CBNZ            R6, loc_123944
123912:  ADD.W           R8, SP, #0x68+var_50
123916:  ADD             R0, SP, #0x68+var_38
123918:  MOV             R1, R8
12391A:  BL              sub_123C34
12391E:  BL              sub_123BDC
123922:  LDR             R0, =(unk_263BE0 - 0x123928)
123924:  ADD             R0, PC; unk_263BE0
123926:  ADD             R5, SP, #0x68+var_38
123928:  MOV             R1, R5
12392A:  BL              sub_123C60
12392E:  LDR             R0, [SP,#0x68+var_28]
123930:  CMP             R5, R0
123932:  BEQ             loc_12393A
123934:  CBZ             R0, loc_123944
123936:  MOVS            R1, #5
123938:  B               loc_12393C
12393A:  MOVS            R1, #4
12393C:  LDR             R2, [R0]
12393E:  LDR.W           R1, [R2,R1,LSL#2]
123942:  BLX             R1
123944:  LDR             R0, [SP,#0x68+var_40]
123946:  CMP             R11, R0
123948:  BEQ             loc_123950
12394A:  CBZ             R0, loc_12395A
12394C:  MOVS            R1, #5
12394E:  B               loc_123952
123950:  MOVS            R1, #4
123952:  LDR             R2, [R0]
123954:  LDR.W           R1, [R2,R1,LSL#2]
123958:  BLX             R1
12395A:  CBNZ            R6, loc_123970
12395C:  MOVW            R0, #0xD6D0
123960:  LDR             R1, =(sub_123BB0+1 - 0x12396C)
123962:  MOVT            R0, #0x66 ; 'f'
123966:  ADD             R0, R10
123968:  ADD             R1, PC; sub_123BB0
12396A:  MOV             R2, R4
12396C:  BL              sub_164196
123970:  LDR             R0, [SP,#0x68+var_58]
123972:  CMP             R9, R0
123974:  BEQ             loc_12397C
123976:  CBZ             R0, loc_123986
123978:  MOVS            R1, #5
12397A:  B               loc_12397E
12397C:  MOVS            R1, #4
12397E:  LDR             R2, [R0]
123980:  LDR.W           R1, [R2,R1,LSL#2]
123984:  BLX             R1
123986:  MOV             R0, R4
123988:  ADD             SP, SP, #0x4C ; 'L'
12398A:  POP.W           {R8-R11}
12398E:  POP             {R4-R7,PC}
