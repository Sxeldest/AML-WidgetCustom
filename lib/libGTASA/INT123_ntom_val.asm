; =========================================================
; Game Engine Function: INT123_ntom_val
; Address            : 0x233924 - 0x233998
; =========================================================

233924:  PUSH            {R4,R5,R7,LR}
233926:  ADD             R7, SP, #8
233928:  CMP             R1, #1
23392A:  BLT             loc_233992
23392C:  MOVW            R2, #0x9190
233930:  MOVW            R3, #0x92D8
233934:  LDR             R2, [R0,R2]
233936:  MOVW            R5, #0x92CC
23393A:  LDR             R3, [R0,R3]
23393C:  ADD.W           R12, R0, R5
233940:  MOVW            R5, #0x92C8
233944:  ADD.W           LR, R0, R5
233948:  MOV.W           R0, #0x4000
23394C:  MOVW            R4, #0x7FFF
233950:  CMP             R3, #1
233952:  BEQ             loc_23395E
233954:  CMP             R3, #2
233956:  BNE             loc_233964
233958:  MOV.W           R5, #0x480
23395C:  B               loc_233978
23395E:  MOV.W           R5, #0x180
233962:  B               loc_233978
233964:  LDR.W           R5, [LR]
233968:  CMP             R5, #0
23396A:  ITT EQ
23396C:  LDREQ.W         R5, [R12]
233970:  CMPEQ           R5, #0
233972:  BEQ             loc_233958
233974:  MOV.W           R5, #0x240
233978:  MLA.W           R0, R2, R5, R0
23397C:  SUBS            R1, #1
23397E:  MOV.W           R5, R0,ASR#31
233982:  ADD.W           R5, R0, R5,LSR#17
233986:  BIC.W           R5, R5, R4
23398A:  SUB.W           R0, R0, R5
23398E:  BNE             loc_233950
233990:  POP             {R4,R5,R7,PC}
233992:  MOV.W           R0, #0x4000
233996:  POP             {R4,R5,R7,PC}
