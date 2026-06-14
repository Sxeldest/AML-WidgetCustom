; =========================================================
; Game Engine Function: sub_120968
; Address            : 0x120968 - 0x1209EC
; =========================================================

120968:  PUSH            {R4-R7,LR}
12096A:  ADD             R7, SP, #0xC
12096C:  PUSH.W          {R8,R9,R11}
120970:  SUB             SP, SP, #0x18
120972:  CBZ             R1, loc_1209A4
120974:  CBZ             R2, loc_1209BC
120976:  CBZ             R3, loc_1209D4
120978:  LDRD.W          R12, R4, [R7,#arg_0]
12097C:  LDR.W           R9, [R0]
120980:  ADD             R0, SP, #0x30+var_28
120982:  LDRD.W          R6, R5, [R7,#arg_8]
120986:  LDRD.W          R8, LR, [R7,#arg_10]
12098A:  STM.W           R0, {R5,R8,LR}
12098E:  MOV             R0, R1
120990:  MOV             R1, R2
120992:  MOV             R2, R3
120994:  MOV             R3, R12
120996:  STRD.W          R4, R6, [SP,#0x30+var_30]
12099A:  BLX             R9
12099C:  ADD             SP, SP, #0x18
12099E:  POP.W           {R8,R9,R11}
1209A2:  POP             {R4-R7,PC}
1209A4:  LDR             R1, =(off_2349CC - 0x1209AC)
1209A6:  LDR             R0, =(aRxopenglallino - 0x1209AE); "_rxOpenGLAllInOneAtomicInstanceVertexAr"... ...
1209A8:  ADD             R1, PC; off_2349CC
1209AA:  ADD             R0, PC; "_rxOpenGLAllInOneAtomicInstanceVertexAr"...
1209AC:  LDR             R1, [R1]; word_247566
1209AE:  ADD             SP, SP, #0x18
1209B0:  POP.W           {R8,R9,R11}
1209B4:  POP.W           {R4-R7,LR}
1209B8:  B.W             sub_120A6C
1209BC:  LDR             R1, =(off_2349CC - 0x1209C4)
1209BE:  LDR             R0, =(aRxopenglallino_0 - 0x1209C6); "_rxOpenGLAllInOneAtomicInstanceVertexAr"... ...
1209C0:  ADD             R1, PC; off_2349CC
1209C2:  ADD             R0, PC; "_rxOpenGLAllInOneAtomicInstanceVertexAr"...
1209C4:  LDR             R1, [R1]; word_247566
1209C6:  ADD             SP, SP, #0x18
1209C8:  POP.W           {R8,R9,R11}
1209CC:  POP.W           {R4-R7,LR}
1209D0:  B.W             sub_120A88
1209D4:  LDR             R1, =(off_2349CC - 0x1209DC)
1209D6:  LDR             R0, =(aRxopenglallino_1 - 0x1209DE); "_rxOpenGLAllInOneAtomicInstanceVertexAr"... ...
1209D8:  ADD             R1, PC; off_2349CC
1209DA:  ADD             R0, PC; "_rxOpenGLAllInOneAtomicInstanceVertexAr"...
1209DC:  LDR             R1, [R1]; word_247566
1209DE:  ADD             SP, SP, #0x18
1209E0:  POP.W           {R8,R9,R11}
1209E4:  POP.W           {R4-R7,LR}
1209E8:  B.W             sub_120AA4
