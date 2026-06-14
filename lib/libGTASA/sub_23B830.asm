; =========================================================
; Game Engine Function: sub_23B830
; Address            : 0x23B830 - 0x23BA2C
; =========================================================

23B830:  PUSH            {R4-R7,LR}
23B832:  ADD             R7, SP, #0xC
23B834:  PUSH.W          {R8-R10}
23B838:  LDR.W           LR, =(loc_23C7AC+1 - 0x23B852)
23B83C:  MOV             R4, R0
23B83E:  MOV.W           R6, #0xB300
23B842:  LDR             R2, =(sub_23C7E4+1 - 0x23B85A)
23B844:  LDR             R6, [R4,R6]
23B846:  MOVW            R1, #0xB304
23B84A:  MOVW            R5, #0xB448
23B84E:  ADD             LR, PC; loc_23C7AC
23B850:  MOVW            R0, #0xB2FC
23B854:  LDR             R3, =(sub_23C7E8+1 - 0x23B864)
23B856:  ADD             R2, PC; sub_23C7E4
23B858:  LDR.W           R12, =(sub_23C7EC+1 - 0x23B87C)
23B85C:  CMP             R6, #0
23B85E:  LDR             R1, [R4,R1]
23B860:  ADD             R3, PC; sub_23C7E8
23B862:  LDR             R5, [R4,R5]
23B864:  STR.W           LR, [R4,R0]
23B868:  IT NE
23B86A:  MOVNE           R2, R6
23B86C:  MOVW            LR, #0xB2F4
23B870:  LDRB.W          R6, [R4,LR]
23B874:  MOVW            R0, #0xB314
23B878:  ADD             R12, PC; sub_23C7EC
23B87A:  CMP             R1, #0
23B87C:  STR             R2, [R4,R0]
23B87E:  IT NE
23B880:  MOVNE           R3, R1
23B882:  CMP             R5, #0
23B884:  ADD.W           R9, R4, LR
23B888:  IT GT
23B88A:  MOVGT           R3, R12
23B88C:  MOVW            R5, #0xB318
23B890:  LSLS            R0, R6, #0x19
23B892:  STR             R3, [R4,R5]
23B894:  BMI             loc_23B89C
23B896:  MOVW            R0, #0xB2EC
23B89A:  B               loc_23B8AA
23B89C:  MOVW            R0, #0xB30C
23B8A0:  LDR             R3, [R4,R0]
23B8A2:  CMP             R3, #0
23B8A4:  BEQ             loc_23B988
23B8A6:  MOVW            R0, #0xB2F0
23B8AA:  LDR             R0, [R4,R0]
23B8AC:  MOVS            R1, #0
23B8AE:  MOVS            R2, #2
23B8B0:  BLX             R3
23B8B2:  MOV             R10, R0
23B8B4:  CMP.W           R10, #0
23B8B8:  BLT             loc_23B988
23B8BA:  LDRB.W          R0, [R9]
23B8BE:  ADDS            R6, R4, R5
23B8C0:  LSLS            R0, R0, #0x19
23B8C2:  BMI             loc_23B8CC
23B8C4:  MOVW            R0, #0xB2EC
23B8C8:  LDR             R3, [R6]
23B8CA:  B               loc_23B8DA
23B8CC:  MOVW            R0, #0xB30C
23B8D0:  LDR             R3, [R4,R0]
23B8D2:  CMP             R3, #0
23B8D4:  BEQ             loc_23B988
23B8D6:  MOVW            R0, #0xB2F0
23B8DA:  LDR             R0, [R4,R0]
23B8DC:  MOV             R1, #0xFFFFFF80
23B8E0:  MOVS            R2, #2
23B8E2:  BLX             R3
23B8E4:  CMP             R0, #0
23B8E6:  BLT             loc_23B988
23B8E8:  MOVW            R0, #0xB2E0
23B8EC:  MOVS            R2, #0x80
23B8EE:  LDR             R0, [R4,R0]
23B8F0:  LDR             R3, [R0,#8]
23B8F2:  MOVW            R0, #0xB47C
23B8F6:  ADD.W           R8, R4, R0
23B8FA:  MOV             R0, R4
23B8FC:  MOV             R1, R8
23B8FE:  BLX             R3
23B900:  CMP             R0, #0x80
23B902:  BNE             loc_23B988
23B904:  ADR             R1, dword_23BA3C; char *
23B906:  MOV             R0, R8; char *
23B908:  MOVS            R2, #3; size_t
23B90A:  BLX             strncmp
23B90E:  LDRB.W          R1, [R9]
23B912:  CMP             R0, #0
23B914:  IT EQ
23B916:  SUBEQ.W         R10, R10, #0x80
23B91A:  LSLS            R0, R1, #0x19
23B91C:  BMI             loc_23B926
23B91E:  MOVW            R0, #0xB2EC
23B922:  LDR             R3, [R6]
23B924:  B               loc_23B934
23B926:  MOVW            R0, #0xB30C
23B92A:  LDR             R3, [R4,R0]
23B92C:  CMP             R3, #0
23B92E:  BEQ             loc_23B988
23B930:  MOVW            R0, #0xB2F0
23B934:  LDR             R0, [R4,R0]
23B936:  MOVS            R1, #0
23B938:  MOVS            R2, #0
23B93A:  BLX             R3
23B93C:  CMP.W           R10, #1
23B940:  IT GE
23B942:  CMPGE           R0, #0
23B944:  BLT             loc_23B988
23B946:  MOVW            R0, #0xB2E8
23B94A:  MOVS            R6, #0
23B94C:  STR             R6, [R4,R0]
23B94E:  MOVW            R0, #0xB2E4
23B952:  ADR             R1, dword_23BA3C; char *
23B954:  STR.W           R10, [R4,R0]
23B958:  MOVS            R2, #3; size_t
23B95A:  LDR.W           R5, [R9]
23B95E:  ORR.W           R0, R5, #4
23B962:  STR.W           R0, [R9]
23B966:  MOV             R0, R8; char *
23B968:  BLX             strncmp
23B96C:  CMP             R0, #0
23B96E:  BNE             loc_23BA0E
23B970:  ORR.W           R0, R5, #6
23B974:  STR.W           R0, [R9]
23B978:  MOVW            R0, #0xB478
23B97C:  MOVS            R6, #0
23B97E:  LDR             R1, [R4,R0]
23B980:  ORR.W           R1, R1, #1
23B984:  STR             R1, [R4,R0]
23B986:  B               loc_23BA0E
23B988:  MOVW            R0, #0xB2E8
23B98C:  MOVS            R6, #0
23B98E:  STR             R6, [R4,R0]
23B990:  MOVW            R0, #0xB2E4
23B994:  MOV.W           R1, #0xFFFFFFFF
23B998:  STR             R1, [R4,R0]
23B99A:  MOVW            R1, #0xB33C
23B99E:  LDR             R2, [R4,R1]
23B9A0:  TST.W           R2, #0x100
23B9A4:  BEQ             loc_23BA0E
23B9A6:  MOVW            R1, #0xB2E0
23B9AA:  LDR             R3, =(off_685330 - 0x23B9B2)
23B9AC:  LDR             R6, [R4,R1]
23B9AE:  ADD             R3, PC; off_685330
23B9B0:  CMP             R6, R3
23B9B2:  BEQ             loc_23B9CA
23B9B4:  LDR             R3, =(off_685330 - 0x23B9BA)
23B9B6:  ADD             R3, PC; off_685330
23B9B8:  ADD.W           R5, R3, #0x30 ; '0'
23B9BC:  CMP             R6, R5
23B9BE:  BEQ             loc_23B9D2
23B9C0:  LSLS            R0, R2, #0x1A
23B9C2:  BPL             loc_23BA16
23B9C4:  MOV.W           R6, #0xFFFFFFFF
23B9C8:  B               loc_23BA0E
23B9CA:  LDR             R2, =(sub_23BAEC+1 - 0x23B9D2)
23B9CC:  ADDS            R3, #0x90
23B9CE:  ADD             R2, PC; sub_23BAEC
23B9D0:  B               loc_23B9D8
23B9D2:  LDR             R2, =(sub_23BFBC+1 - 0x23B9DA)
23B9D4:  ADDS            R3, #0xC0
23B9D6:  ADD             R2, PC; sub_23BFBC
23B9D8:  ADD             R1, R4
23B9DA:  MOVS            R6, #0
23B9DC:  VMOV.I32        Q8, #0
23B9E0:  ADD             R0, R4
23B9E2:  STR             R3, [R1]
23B9E4:  MOVW            R1, #0xB334
23B9E8:  STR             R6, [R4,R1]
23B9EA:  MOVW            R1, #0xB330
23B9EE:  STR             R6, [R4,R1]
23B9F0:  MOVW            R1, #0xB31C
23B9F4:  STR             R2, [R4,R1]
23B9F6:  MOVW            R1, #0xB320
23B9FA:  ADD             R1, R4
23B9FC:  VST1.32         {D16-D17}, [R1]
23BA00:  STR             R6, [R0]
23BA02:  LDR.W           R0, [R9]
23BA06:  ORR.W           R0, R0, #8
23BA0A:  STR.W           R0, [R9]
23BA0E:  MOV             R0, R6
23BA10:  POP.W           {R8-R10}
23BA14:  POP             {R4-R7,PC}
23BA16:  LDR             R0, =(off_677664 - 0x23BA22)
23BA18:  MOVW            R2, #0x3DB
23BA1C:  LDR             R1, =(aCProjectsOswra_60 - 0x23BA24); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23BA1E:  ADD             R0, PC; off_677664
23BA20:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23BA22:  LDR             R0, [R0]
23BA24:  LDR             R0, [R0]; stream
23BA26:  BLX             fprintf
23BA2A:  B               loc_23B9C4
