; =========================================================
; Game Engine Function: opus_repacketizer_out_range_impl
; Address            : 0xDB73C - 0xDBA26
; =========================================================

DB73C:  PUSH            {R4-R7,LR}
DB73E:  ADD             R7, SP, #0xC
DB740:  PUSH.W          {R8-R11}
DB744:  SUB             SP, SP, #0x14
DB746:  MOV             R6, R1
DB748:  CMP             R6, #0
DB74A:  MOV             R10, R2
DB74C:  MOV             R4, R0
DB74E:  MOV.W           R9, #0xFFFFFFFF
DB752:  IT GE
DB754:  CMPGE           R10, R6
DB756:  BLE.W           loc_DBA1C
DB75A:  LDR             R0, [R4,#4]
DB75C:  CMP             R0, R10
DB75E:  BGE             loc_DB766
DB760:  MOV.W           R9, #0xFFFFFFFF
DB764:  B               loc_DBA1C
DB766:  LDR             R1, [R7,#arg_4]
DB768:  ADD.W           R8, R4, R6,LSL#1
DB76C:  SUB.W           R11, R10, R6
DB770:  ADD.W           R2, R8, #0xC8
DB774:  CBZ             R1, loc_DB78C
DB776:  ADD.W           R0, R2, R11,LSL#1
DB77A:  MOV.W           R9, #1
DB77E:  LDRSH.W         R0, [R0,#-2]
DB782:  CMP             R0, #0xFB
DB784:  IT GT
DB786:  MOVGT.W         R9, #2
DB78A:  B               loc_DB790
DB78C:  MOV.W           R9, #0
DB790:  LDR.W           R12, [R7,#arg_8]
DB794:  CMP.W           R11, #2
DB798:  LDR.W           LR, [R7,#arg_0]
DB79C:  STR             R2, [SP,#0x30+var_20]
DB79E:  BEQ             loc_DB7D0
DB7A0:  CMP.W           R11, #1
DB7A4:  BNE             loc_DB806
DB7A6:  LDRSH.W         R0, [R2]
DB7AA:  ADD             R0, R9
DB7AC:  ADD.W           R9, R0, #1
DB7B0:  CMP             R9, LR
DB7B2:  BGT.W           loc_DB8FE
DB7B6:  LDRB            R0, [R4]
DB7B8:  MOV             R5, R3
DB7BA:  AND.W           R0, R0, #0xFC
DB7BE:  STRB.W          R0, [R5],#1
DB7C2:  CMP.W           R12, #0
DB7C6:  BEQ.W           loc_DB9BE
DB7CA:  CMP             R9, LR
DB7CC:  BLT             loc_DB80E
DB7CE:  B               loc_DB9BE
DB7D0:  MOV             R0, R2
DB7D2:  LDRH            R2, [R0]
DB7D4:  LDRH            R1, [R0,#2]
DB7D6:  SXTH            R0, R2
DB7D8:  CMP             R1, R2
DB7DA:  BNE             loc_DB82E
DB7DC:  MOVS            R1, #1
DB7DE:  ORR.W           R0, R1, R0,LSL#1
DB7E2:  ADD             R9, R0
DB7E4:  CMP             R9, LR
DB7E6:  BGT.W           loc_DB8FE
DB7EA:  LDRB            R0, [R4]
DB7EC:  MOV             R5, R3
DB7EE:  LDR             R1, [R7,#arg_4]
DB7F0:  AND.W           R0, R0, #0xFC
DB7F4:  ORR.W           R0, R0, #1
DB7F8:  STRB.W          R0, [R5],#1
DB7FC:  LDR             R2, [SP,#0x30+var_20]
DB7FE:  CMP.W           R12, #0
DB802:  BNE             loc_DB7CA
DB804:  B               loc_DB9BE
DB806:  CMP.W           R11, #2
DB80A:  MOV             R5, R3
DB80C:  BLE             loc_DB826
DB80E:  CMP             R1, #0
DB810:  STR             R4, [SP,#0x30+var_24]
DB812:  BEQ             loc_DB87E
DB814:  ADD.W           R0, R2, R11,LSL#1
DB818:  LDRSH.W         R1, [R0,#-2]
DB81C:  MOVS            R0, #3
DB81E:  CMP             R1, #0xFB
DB820:  IT GT
DB822:  MOVGT           R0, #4
DB824:  B               loc_DB880
DB826:  CMP.W           R12, #0
DB82A:  BNE             loc_DB7CA
DB82C:  B               loc_DB9BE
DB82E:  SXTH            R1, R1
DB830:  CMP             R0, #0xFB
DB832:  ADD             R1, R9
DB834:  ADD             R1, R0
DB836:  ADD.W           R9, R1, #2
DB83A:  IT GT
DB83C:  ADDGT.W         R9, R1, #3
DB840:  CMP             R9, LR
DB842:  BGT             loc_DB8FE
DB844:  LDRB            R0, [R4]
DB846:  MOV             R5, R3
DB848:  AND.W           R0, R0, #0xFC
DB84C:  ORR.W           R0, R0, #2
DB850:  STRB.W          R0, [R5],#1
DB854:  LDR             R0, [SP,#0x30+var_20]
DB856:  MOV             R1, R5
DB858:  LDRSH.W         R0, [R0]
DB85C:  STR             R4, [SP,#0x30+var_24]
DB85E:  MOV             R4, R3
DB860:  BLX             j_encode_size
DB864:  MOV             R3, R4
DB866:  LDR             R2, [SP,#0x30+var_20]
DB868:  LDR.W           R12, [R7,#arg_8]
DB86C:  ADD             R5, R0
DB86E:  LDR.W           LR, [R7,#arg_0]
DB872:  LDR             R4, [SP,#0x30+var_24]
DB874:  LDR             R1, [R7,#arg_4]
DB876:  CMP.W           R12, #0
DB87A:  BNE             loc_DB7CA
DB87C:  B               loc_DB9BE
DB87E:  MOVS            R0, #2
DB880:  LDRSH.W         R1, [R2]
DB884:  CMP.W           R11, #2
DB888:  BLT             loc_DB8A0
DB88A:  MOVS            R2, #0x65 ; 'e'
DB88C:  LDRH.W          R4, [R8,R2,LSL#1]
DB890:  UXTH            R5, R1
DB892:  CMP             R4, R5
DB894:  BNE             loc_DB8BC
DB896:  ADDS            R5, R2, #1
DB898:  SUBS            R2, #0x63 ; 'c'
DB89A:  CMP             R2, R11
DB89C:  MOV             R2, R5
DB89E:  BLT             loc_DB88C
DB8A0:  MLA.W           R9, R11, R1, R0
DB8A4:  CMP             R9, LR
DB8A6:  BGT             loc_DB8FE
DB8A8:  LDR             R4, [SP,#0x30+var_24]
DB8AA:  MOV             R8, R11
DB8AC:  LDR             R1, [R7,#arg_4]
DB8AE:  LDRB            R0, [R4]
DB8B0:  ORR.W           R0, R0, #3
DB8B4:  STRB            R0, [R3]
DB8B6:  LDR             R2, [SP,#0x30+var_20]
DB8B8:  MOVS            R0, #0
DB8BA:  B               loc_DB918
DB8BC:  MOVS            R2, #1
DB8BE:  CMP             R1, #0xFB
DB8C0:  IT GT
DB8C2:  MOVGT           R2, #2
DB8C4:  ADD             R0, R1
DB8C6:  ADD             R0, R2
DB8C8:  SUB.W           R12, R11, #1
DB8CC:  CMP.W           R11, #3
DB8D0:  BLT             loc_DB8F0
DB8D2:  ADD.W           R2, R8, #0xCA
DB8D6:  MOVS            R1, #0
DB8D8:  LDRSH.W         R5, [R2,R1,LSL#1]
DB8DC:  MOVS            R4, #1
DB8DE:  CMP             R5, #0xFB
DB8E0:  ADD             R0, R5
DB8E2:  IT GT
DB8E4:  MOVGT           R4, #2
DB8E6:  ADDS            R5, R1, #2
DB8E8:  ADD             R0, R4
DB8EA:  ADDS            R1, #1
DB8EC:  CMP             R5, R12
DB8EE:  BLT             loc_DB8D8
DB8F0:  LDR             R2, [SP,#0x30+var_20]
DB8F2:  LDRSH.W         R1, [R2,R12,LSL#1]
DB8F6:  ADD.W           R9, R0, R1
DB8FA:  CMP             R9, LR
DB8FC:  BLE             loc_DB904
DB8FE:  MOV             R9, #0xFFFFFFFE
DB902:  B               loc_DBA1C
DB904:  LDR             R4, [SP,#0x30+var_24]
DB906:  ORR.W           R8, R11, #0x80
DB90A:  LDRB            R0, [R4]
DB90C:  ORR.W           R0, R0, #3
DB910:  STRB            R0, [R3]
DB912:  MOVS            R0, #1
DB914:  LDRD.W          R1, R12, [R7,#arg_4]
DB918:  ADDS            R5, R3, #2
DB91A:  CMP.W           R12, #0
DB91E:  STRB.W          R8, [R3,#1]
DB922:  BEQ             loc_DB990
DB924:  STRD.W          R8, R0, [SP,#0x30+var_30]
DB928:  SUBS.W          R8, LR, R9
DB92C:  BEQ             loc_DB98E
DB92E:  MOVW            R2, #0x8081
DB932:  SUB.W           R1, R8, #1
DB936:  MOVT            R2, #0x8080
DB93A:  LDR             R0, [SP,#0x30+var_30]
DB93C:  SMMLA.W         R1, R2, R1, R1
DB940:  CMP.W           R8, #0x100
DB944:  ORR.W           R0, R0, #0x40 ; '@'
DB948:  STRB            R0, [R3,#1]
DB94A:  MOV.W           R0, R1,ASR#7
DB94E:  ADD.W           R4, R0, R1,LSR#31
DB952:  BLT             loc_DB97A
DB954:  CMP             R4, #1
DB956:  MOV             R1, R4
DB958:  IT LE
DB95A:  MOVLE           R1, #1; n
DB95C:  MOV             R0, R5; int
DB95E:  MOVS            R2, #0xFF; c
DB960:  MOV             R9, R3
DB962:  BLX             sub_10966C
DB966:  MOVS            R0, #0
DB968:  ADDS            R0, #1
DB96A:  CMP             R0, R4
DB96C:  BLT             loc_DB968
DB96E:  LDR.W           LR, [R7,#arg_0]
DB972:  ADD             R5, R0
DB974:  LDR.W           R12, [R7,#arg_8]
DB978:  MOV             R3, R9
DB97A:  SUB.W           R0, R4, R4,LSL#8
DB97E:  LDR             R2, [SP,#0x30+var_20]
DB980:  ADD             R0, R8
DB982:  LDR             R1, [R7,#arg_4]
DB984:  ADDS            R0, #0xFF
DB986:  STRB.W          R0, [R5],#1
DB98A:  LDR             R4, [SP,#0x30+var_24]
DB98C:  MOV             R9, LR
DB98E:  LDR             R0, [SP,#0x30+var_2C]
DB990:  CMP             R0, #1
DB992:  BNE             loc_DB9BE
DB994:  CMP.W           R11, #2
DB998:  BLT             loc_DB9BE
DB99A:  SUB.W           R8, R11, #1
DB99E:  MOVS            R4, #0
DB9A0:  STR             R3, [SP,#0x30+var_28]
DB9A2:  LDRSH.W         R0, [R2,R4,LSL#1]
DB9A6:  MOV             R1, R5
DB9A8:  BLX             j_encode_size
DB9AC:  LDR             R2, [SP,#0x30+var_20]
DB9AE:  ADDS            R4, #1
DB9B0:  ADD             R5, R0
DB9B2:  CMP             R4, R8
DB9B4:  BLT             loc_DB9A2
DB9B6:  LDRD.W          R3, R4, [SP,#0x30+var_28]
DB9BA:  LDRD.W          R1, R12, [R7,#arg_4]
DB9BE:  MOV             R8, R12
DB9C0:  CMP             R1, #0
DB9C2:  STR             R3, [SP,#0x30+var_28]
DB9C4:  BEQ             loc_DB9D6
DB9C6:  ADD.W           R0, R2, R11,LSL#1
DB9CA:  MOV             R1, R5
DB9CC:  LDRSH.W         R0, [R0,#-2]
DB9D0:  BLX             j_encode_size
DB9D4:  ADD             R5, R0
DB9D6:  CMP.W           R11, #1
DB9DA:  BLT             loc_DB9FC
DB9DC:  ADDS            R4, #0xC8
DB9DE:  ADD.W           R0, R4, R6,LSL#2
DB9E2:  LDRSH.W         R2, [R4,R6,LSL#1]; n
DB9E6:  LDR.W           R1, [R0,#-0xC0]; src
DB9EA:  MOV             R0, R5; dest
DB9EC:  BLX             j_memmove
DB9F0:  LDRSH.W         R0, [R4,R6,LSL#1]
DB9F4:  ADDS            R6, #1
DB9F6:  CMP             R10, R6
DB9F8:  ADD             R5, R0
DB9FA:  BNE             loc_DB9DE
DB9FC:  CMP.W           R8, #0
DBA00:  BEQ             loc_DBA1C
DBA02:  LDR.W           R8, [SP,#0x30+var_28]
DBA06:  LDR             R1, [R7,#arg_0]
DBA08:  ADD.W           R0, R8, R1
DBA0C:  CMP             R5, R0
DBA0E:  BCS             loc_DBA1C
DBA10:  SUBS            R0, R1, R5
DBA12:  ADD.W           R1, R8, R0; n
DBA16:  MOV             R0, R5; int
DBA18:  BLX             sub_10967C
DBA1C:  MOV             R0, R9
DBA1E:  ADD             SP, SP, #0x14
DBA20:  POP.W           {R8-R11}
DBA24:  POP             {R4-R7,PC}
