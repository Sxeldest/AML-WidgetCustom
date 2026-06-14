; =========================================================
; Game Engine Function: _Z19_rpMaterialListCopyP14RpMaterialListPKS_
; Address            : 0x2177E4 - 0x217894
; =========================================================

2177E4:  PUSH            {R4,R5,R7,LR}
2177E6:  ADD             R7, SP, #8
2177E8:  SUB             SP, SP, #8
2177EA:  MOV             R5, R1
2177EC:  MOV             R4, R0
2177EE:  LDR             R0, [R5,#4]
2177F0:  MOVS            R1, #0
2177F2:  STR             R0, [R4,#4]
2177F4:  LDR             R0, [R5,#8]
2177F6:  STR             R1, [R4]
2177F8:  STR             R0, [R4,#8]
2177FA:  LDR             R1, [R5]
2177FC:  CMP             R1, #0
2177FE:  BEQ             loc_21788E
217800:  LDR             R1, =(RwEngineInstance_ptr - 0x217808)
217802:  LSLS            R0, R0, #2
217804:  ADD             R1, PC; RwEngineInstance_ptr
217806:  LDR             R1, [R1]; RwEngineInstance
217808:  LDR             R1, [R1]
21780A:  LDR.W           R1, [R1,#0x12C]
21780E:  BLX             R1
217810:  CMP             R0, #0
217812:  STR             R0, [R4]
217814:  BEQ             loc_217856
217816:  LDR             R1, [R4,#4]
217818:  CMP             R1, #1
21781A:  BLT             loc_217872
21781C:  LDR             R1, [R5]
21781E:  LDR             R1, [R1]
217820:  STR             R1, [R0]
217822:  LDR             R0, [R4]
217824:  LDR             R0, [R0]
217826:  LDRH            R1, [R0,#0x18]
217828:  ADDS            R1, #1
21782A:  STRH            R1, [R0,#0x18]
21782C:  LDR             R0, [R4,#4]
21782E:  CMP             R0, #2
217830:  BLT             loc_217876
217832:  MOVS            R0, #1
217834:  LDR             R1, [R5]
217836:  LDR             R2, [R4]
217838:  LDR.W           R1, [R1,R0,LSL#2]
21783C:  STR.W           R1, [R2,R0,LSL#2]
217840:  LDR             R1, [R4]
217842:  LDR.W           R1, [R1,R0,LSL#2]
217846:  ADDS            R0, #1
217848:  LDRH            R2, [R1,#0x18]
21784A:  ADDS            R2, #1
21784C:  STRH            R2, [R1,#0x18]
21784E:  LDR             R1, [R4,#4]
217850:  CMP             R0, R1
217852:  BLT             loc_217834
217854:  B               loc_217878
217856:  LDR             R0, [R4,#8]
217858:  MOVS            R4, #0
21785A:  STR             R4, [SP,#0x10+var_10]
21785C:  LSLS            R1, R0, #2
21785E:  MOVS            R0, #0x80000013; int
217864:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
217868:  STR             R0, [SP,#0x10+var_C]
21786A:  MOV             R0, SP
21786C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
217870:  B               loc_21788E
217872:  MOVS            R0, #0
217874:  B               loc_217878
217876:  MOVS            R0, #1
217878:  LDR             R1, [R4,#8]
21787A:  CMP             R0, R1
21787C:  BGE             loc_21788E
21787E:  MOVS            R1, #0
217880:  LDR             R2, [R4]
217882:  STR.W           R1, [R2,R0,LSL#2]
217886:  ADDS            R0, #1
217888:  LDR             R2, [R4,#8]
21788A:  CMP             R0, R2
21788C:  BLT             loc_217880
21788E:  MOV             R0, R4
217890:  ADD             SP, SP, #8
217892:  POP             {R4,R5,R7,PC}
