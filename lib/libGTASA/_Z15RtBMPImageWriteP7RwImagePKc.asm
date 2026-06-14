; =========================================================
; Game Engine Function: _Z15RtBMPImageWriteP7RwImagePKc
; Address            : 0x1EC6C4 - 0x1EC958
; =========================================================

1EC6C4:  PUSH            {R4-R7,LR}
1EC6C6:  ADD             R7, SP, #0xC
1EC6C8:  PUSH.W          {R8-R11}
1EC6CC:  SUB             SP, SP, #0x14
1EC6CE:  MOV             R2, R1
1EC6D0:  MOV             R11, R0
1EC6D2:  MOVS            R0, #2
1EC6D4:  MOVS            R1, #2
1EC6D6:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
1EC6DA:  MOV             R10, R0
1EC6DC:  MOVS            R6, #0
1EC6DE:  CMP.W           R10, #0
1EC6E2:  BEQ.W           loc_1EC94A
1EC6E6:  MOVS            R0, #0x42 ; 'B'
1EC6E8:  ADD             R1, SP, #0x30+var_24; void *
1EC6EA:  LDRD.W          R5, R9, [R11,#4]
1EC6EE:  MOVS            R2, #1; size_t
1EC6F0:  STRB.W          R0, [SP,#0x30+var_24]
1EC6F4:  MOV             R0, R10; int
1EC6F6:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC6FA:  MOVS            R0, #0x4D ; 'M'
1EC6FC:  ADD             R1, SP, #0x30+var_24; void *
1EC6FE:  STRB.W          R0, [SP,#0x30+var_24]
1EC702:  MOV             R0, R10; int
1EC704:  MOVS            R2, #1; size_t
1EC706:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC70A:  ADD.W           R8, R5, R5,LSL#1
1EC70E:  MOVS            R4, #0x18
1EC710:  MOVS            R2, #4
1EC712:  AND.W           R0, R4, R8,LSL#3
1EC716:  RSB.W           R1, R0, #0x20 ; ' '
1EC71A:  CMP             R0, #0
1EC71C:  ADD.W           R1, R1, R8,LSL#3
1EC720:  MOV.W           R0, #0
1EC724:  IT EQ
1EC726:  MOVEQ.W         R1, R8,LSL#3
1EC72A:  TST.W           R1, #0x18
1EC72E:  IT EQ
1EC730:  LSREQ           R0, R1, #3
1EC732:  ADD             R1, SP, #0x30+var_24
1EC734:  MUL.W           R0, R0, R9
1EC738:  ADDS            R0, #0x36 ; '6'
1EC73A:  STR             R0, [SP,#0x30+var_24]
1EC73C:  MOV             R0, R10
1EC73E:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC742:  ADD             R1, SP, #0x30+var_24; void *
1EC744:  MOV             R0, R10; int
1EC746:  MOVS            R2, #2; size_t
1EC748:  STRH.W          R6, [SP,#0x30+var_24]
1EC74C:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC750:  ADD             R1, SP, #0x30+var_24; void *
1EC752:  MOV             R0, R10; int
1EC754:  MOVS            R2, #2; size_t
1EC756:  STRH.W          R6, [SP,#0x30+var_24]
1EC75A:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC75E:  MOVS            R0, #0x36 ; '6'
1EC760:  ADD             R1, SP, #0x30+var_24
1EC762:  STR             R0, [SP,#0x30+var_24]
1EC764:  MOV             R0, R10
1EC766:  MOVS            R2, #4
1EC768:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC76C:  MOVS            R0, #0x28 ; '('
1EC76E:  ADD             R1, SP, #0x30+var_24
1EC770:  STR             R0, [SP,#0x30+var_24]
1EC772:  MOV             R0, R10
1EC774:  MOVS            R2, #4
1EC776:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC77A:  ADD             R1, SP, #0x30+var_24
1EC77C:  MOV             R0, R10
1EC77E:  MOVS            R2, #4
1EC780:  STRD.W          R5, R5, [SP,#0x30+var_28]
1EC784:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC788:  ADD             R1, SP, #0x30+var_24
1EC78A:  MOV             R0, R10
1EC78C:  MOVS            R2, #4
1EC78E:  STR.W           R9, [SP,#0x30+var_24]
1EC792:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC796:  MOVS            R0, #1
1EC798:  ADD             R1, SP, #0x30+var_24; void *
1EC79A:  STRH.W          R0, [SP,#0x30+var_24]
1EC79E:  MOV             R0, R10; int
1EC7A0:  MOVS            R2, #2; size_t
1EC7A2:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC7A6:  ADD             R1, SP, #0x30+var_24; void *
1EC7A8:  MOV             R0, R10; int
1EC7AA:  MOVS            R2, #2; size_t
1EC7AC:  STRH.W          R4, [SP,#0x30+var_24]
1EC7B0:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC7B4:  ADD             R1, SP, #0x30+var_24
1EC7B6:  MOV             R0, R10
1EC7B8:  MOVS            R2, #4
1EC7BA:  STR             R6, [SP,#0x30+var_24]
1EC7BC:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC7C0:  ADD             R1, SP, #0x30+var_24
1EC7C2:  MOV             R0, R10
1EC7C4:  MOVS            R2, #4
1EC7C6:  STR             R6, [SP,#0x30+var_24]
1EC7C8:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC7CC:  ADD             R1, SP, #0x30+var_24
1EC7CE:  MOV             R0, R10
1EC7D0:  MOVS            R2, #4
1EC7D2:  STR             R6, [SP,#0x30+var_24]
1EC7D4:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC7D8:  ADD             R1, SP, #0x30+var_24
1EC7DA:  MOV             R0, R10
1EC7DC:  MOVS            R2, #4
1EC7DE:  STR             R6, [SP,#0x30+var_24]
1EC7E0:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC7E4:  ADD             R1, SP, #0x30+var_24
1EC7E6:  MOV             R0, R10
1EC7E8:  MOVS            R2, #4
1EC7EA:  STR             R6, [SP,#0x30+var_24]
1EC7EC:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC7F0:  ADD             R1, SP, #0x30+var_24
1EC7F2:  MOV             R0, R10
1EC7F4:  MOVS            R2, #4
1EC7F6:  STR             R6, [SP,#0x30+var_24]
1EC7F8:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EC7FC:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC802)
1EC7FE:  ADD             R0, PC; RwEngineInstance_ptr
1EC800:  LDR             R0, [R0]; RwEngineInstance
1EC802:  LDR             R0, [R0]
1EC804:  LDR.W           R1, [R0,#0x12C]
1EC808:  MOV             R0, R8
1EC80A:  STR.W           R8, [SP,#0x30+var_2C]
1EC80E:  BLX             R1
1EC810:  SUB.W           R9, R9, #1
1EC814:  MOV             R8, R0
1EC816:  CMP.W           R9, #0
1EC81A:  BLT.W           loc_1EC92A
1EC81E:  SUB.W           R4, R7, #-var_1D
1EC822:  MOVS            R6, #0
1EC824:  CMP.W           R8, #0
1EC828:  BEQ             loc_1EC88A
1EC82A:  LDR             R4, [SP,#0x30+var_28]
1EC82C:  CMP             R4, #0
1EC82E:  BEQ             loc_1EC8F0
1EC830:  MOVS            R0, #0
1EC832:  MOVS            R1, #0
1EC834:  LDR.W           R2, [R11,#0xC]
1EC838:  CMP             R2, #4
1EC83A:  IT NE
1EC83C:  CMPNE           R2, #8
1EC83E:  BEQ             loc_1EC850
1EC840:  CMP             R2, #0x20 ; ' '
1EC842:  BNE             loc_1EC862
1EC844:  LDRD.W          R2, R3, [R11,#0x10]
1EC848:  MLA.W           R2, R9, R2, R3
1EC84C:  ADD             R2, R0
1EC84E:  B               loc_1EC864
1EC850:  ADD.W           R6, R11, #0x10
1EC854:  LDM             R6, {R2,R3,R6}
1EC856:  MLA.W           R2, R9, R2, R3
1EC85A:  LDRB            R2, [R2,R1]
1EC85C:  ADD.W           R2, R6, R2,LSL#2
1EC860:  B               loc_1EC864
1EC862:  MOVS            R2, #0
1EC864:  ADD.W           R6, R1, R1,LSL#1
1EC868:  LDRB            R3, [R2]
1EC86A:  ADD.W           R5, R8, R6
1EC86E:  ADDS            R1, #1
1EC870:  ADDS            R0, #4
1EC872:  CMP             R4, R1
1EC874:  STRB            R3, [R5,#2]
1EC876:  LDRB            R3, [R2,#1]
1EC878:  STRB            R3, [R5,#1]
1EC87A:  LDRB            R2, [R2,#2]
1EC87C:  STRB.W          R2, [R8,R6]
1EC880:  MOV.W           R6, #0
1EC884:  BNE             loc_1EC834
1EC886:  LDR             R5, [SP,#0x30+var_2C]
1EC888:  B               loc_1EC8F2
1EC88A:  LDR             R0, [SP,#0x30+var_28]
1EC88C:  CMP             R0, #0
1EC88E:  BEQ             loc_1EC91E
1EC890:  LDR             R4, [SP,#0x30+var_28]
1EC892:  MOVS            R5, #0
1EC894:  MOVS            R6, #0
1EC896:  LDR.W           R0, [R11,#0xC]
1EC89A:  CMP             R0, #4
1EC89C:  IT NE
1EC89E:  CMPNE           R0, #8
1EC8A0:  BEQ             loc_1EC8B2
1EC8A2:  CMP             R0, #0x20 ; ' '
1EC8A4:  BNE             loc_1EC8C4
1EC8A6:  LDRD.W          R0, R1, [R11,#0x10]
1EC8AA:  MLA.W           R0, R9, R0, R1
1EC8AE:  ADD             R0, R5
1EC8B0:  B               loc_1EC8C6
1EC8B2:  ADD.W           R2, R11, #0x10
1EC8B6:  LDM             R2, {R0-R2}
1EC8B8:  MLA.W           R0, R9, R0, R1
1EC8BC:  LDRB            R0, [R0,R6]
1EC8BE:  ADD.W           R0, R2, R0,LSL#2
1EC8C2:  B               loc_1EC8C6
1EC8C4:  MOVS            R0, #0
1EC8C6:  LDRB            R1, [R0]
1EC8C8:  MOVS            R2, #3; size_t
1EC8CA:  STRB.W          R1, [SP,#0x30+var_24+2]
1EC8CE:  LDRB            R1, [R0,#1]
1EC8D0:  STRB.W          R1, [SP,#0x30+var_24+1]
1EC8D4:  ADD             R1, SP, #0x30+var_24; void *
1EC8D6:  LDRB            R0, [R0,#2]
1EC8D8:  STRB.W          R0, [SP,#0x30+var_24]
1EC8DC:  MOV             R0, R10; int
1EC8DE:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC8E2:  ADDS            R6, #1
1EC8E4:  ADDS            R5, #4
1EC8E6:  CMP             R4, R6
1EC8E8:  BNE             loc_1EC896
1EC8EA:  LDR             R5, [SP,#0x30+var_2C]
1EC8EC:  MOVS            R6, #0
1EC8EE:  B               loc_1EC8FC
1EC8F0:  MOVS            R5, #0
1EC8F2:  MOV             R0, R10; int
1EC8F4:  MOV             R1, R8; void *
1EC8F6:  MOV             R2, R5; size_t
1EC8F8:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC8FC:  SUB.W           R4, R7, #-var_1D
1EC900:  LSLS            R0, R5, #0x1E
1EC902:  BEQ             loc_1EC91E
1EC904:  ADDS            R5, #1
1EC906:  MOV             R0, R10; int
1EC908:  MOV             R1, R4; void *
1EC90A:  MOVS            R2, #1; size_t
1EC90C:  STRB.W          R6, [R7,#var_1D]
1EC910:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1EC914:  ADDS            R0, R5, #1
1EC916:  TST.W           R5, #3
1EC91A:  MOV             R5, R0
1EC91C:  BNE             loc_1EC906
1EC91E:  SUB.W           R9, R9, #1
1EC922:  CMP.W           R9, #0xFFFFFFFF
1EC926:  BGT.W           loc_1EC824
1EC92A:  CMP.W           R8, #0
1EC92E:  BEQ             loc_1EC940
1EC930:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC936)
1EC932:  ADD             R0, PC; RwEngineInstance_ptr
1EC934:  LDR             R0, [R0]; RwEngineInstance
1EC936:  LDR             R0, [R0]
1EC938:  LDR.W           R1, [R0,#0x130]
1EC93C:  MOV             R0, R8
1EC93E:  BLX             R1
1EC940:  MOV             R0, R10
1EC942:  MOVS            R1, #0
1EC944:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
1EC948:  B               loc_1EC94E
1EC94A:  MOV.W           R11, #0
1EC94E:  MOV             R0, R11
1EC950:  ADD             SP, SP, #0x14
1EC952:  POP.W           {R8-R11}
1EC956:  POP             {R4-R7,PC}
