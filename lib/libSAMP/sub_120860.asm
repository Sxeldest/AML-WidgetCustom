; =========================================================
; Game Engine Function: sub_120860
; Address            : 0x120860 - 0x12091C
; =========================================================

120860:  PUSH            {R4-R7,LR}
120862:  ADD             R7, SP, #0xC
120864:  PUSH.W          {R8-R11}
120868:  SUB             SP, SP, #0x4C
12086A:  MOV             R5, R0
12086C:  LDR             R0, =(off_23494C - 0x120876)
12086E:  MOV             R9, SP
120870:  MOVS            R2, #0
120872:  ADD             R0, PC; off_23494C
120874:  MOV             R3, R5
120876:  LDR             R0, [R0]; dword_23DF24
120878:  LDR.W           R10, [R0]
12087C:  MOV             R0, R9
12087E:  LDR             R1, =(sub_120968+1 - 0x120884)
120880:  ADD             R1, PC; sub_120968
120882:  BL              sub_120A04
120886:  ADD.W           R11, SP, #0x68+var_50
12088A:  MOV             R1, R9
12088C:  MOV             R0, R11
12088E:  BL              sub_120C08
120892:  BL              sub_120BB0
120896:  LDR             R0, =(unk_263918 - 0x12089C)
120898:  ADD             R0, PC; unk_263918
12089A:  LDR             R6, [R0,#(dword_263928 - 0x263918)]
12089C:  CBNZ            R6, loc_1208D0
12089E:  ADD.W           R8, SP, #0x68+var_50
1208A2:  ADD             R0, SP, #0x68+var_38
1208A4:  MOV             R1, R8
1208A6:  BL              sub_120C08
1208AA:  BL              sub_120BB0
1208AE:  LDR             R0, =(unk_263918 - 0x1208B4)
1208B0:  ADD             R0, PC; unk_263918
1208B2:  ADD             R4, SP, #0x68+var_38
1208B4:  MOV             R1, R4
1208B6:  BL              sub_120C34
1208BA:  LDR             R0, [SP,#0x68+var_28]
1208BC:  CMP             R4, R0
1208BE:  BEQ             loc_1208C6
1208C0:  CBZ             R0, loc_1208D0
1208C2:  MOVS            R1, #5
1208C4:  B               loc_1208C8
1208C6:  MOVS            R1, #4
1208C8:  LDR             R2, [R0]
1208CA:  LDR.W           R1, [R2,R1,LSL#2]
1208CE:  BLX             R1
1208D0:  LDR             R0, [SP,#0x68+var_40]
1208D2:  CMP             R11, R0
1208D4:  BEQ             loc_1208DC
1208D6:  CBZ             R0, loc_1208E6
1208D8:  MOVS            R1, #5
1208DA:  B               loc_1208DE
1208DC:  MOVS            R1, #4
1208DE:  LDR             R2, [R0]
1208E0:  LDR.W           R1, [R2,R1,LSL#2]
1208E4:  BLX             R1
1208E6:  CBNZ            R6, loc_1208FC
1208E8:  MOVW            R0, #0x2348
1208EC:  LDR             R1, =(sub_120B68+1 - 0x1208F8)
1208EE:  MOVT            R0, #0x67 ; 'g'
1208F2:  ADD             R0, R10
1208F4:  ADD             R1, PC; sub_120B68
1208F6:  MOV             R2, R5
1208F8:  BL              sub_164196
1208FC:  LDR             R0, [SP,#0x68+var_58]
1208FE:  CMP             R9, R0
120900:  BEQ             loc_120908
120902:  CBZ             R0, loc_120912
120904:  MOVS            R1, #5
120906:  B               loc_12090A
120908:  MOVS            R1, #4
12090A:  LDR             R2, [R0]
12090C:  LDR.W           R1, [R2,R1,LSL#2]
120910:  BLX             R1
120912:  MOV             R0, R5
120914:  ADD             SP, SP, #0x4C ; 'L'
120916:  POP.W           {R8-R11}
12091A:  POP             {R4-R7,PC}
