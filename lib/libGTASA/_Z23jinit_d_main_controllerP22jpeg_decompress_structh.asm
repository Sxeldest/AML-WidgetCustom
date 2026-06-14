; =========================================================
; Game Engine Function: _Z23jinit_d_main_controllerP22jpeg_decompress_structh
; Address            : 0x47D848 - 0x47D9AC
; =========================================================

47D848:  PUSH            {R4-R7,LR}
47D84A:  ADD             R7, SP, #0xC
47D84C:  PUSH.W          {R8-R11}
47D850:  SUB             SP, SP, #0xC
47D852:  MOV             R8, R0
47D854:  MOV             R6, R1
47D856:  LDR.W           R0, [R8,#4]
47D85A:  MOVS            R1, #1
47D85C:  MOVS            R2, #0x38 ; '8'
47D85E:  LDR             R3, [R0]
47D860:  MOV             R0, R8
47D862:  BLX             R3
47D864:  LDR             R2, =(sub_47D9B0+1 - 0x47D872)
47D866:  CMP             R6, #0
47D868:  MOV             R1, R0
47D86A:  STR.W           R0, [R8,#0x184]
47D86E:  ADD             R2, PC; sub_47D9B0
47D870:  STR             R1, [SP,#0x28+var_20]
47D872:  STR             R2, [R0]
47D874:  BEQ             loc_47D888
47D876:  LDR.W           R0, [R8]
47D87A:  MOVS            R1, #4
47D87C:  STR             R1, [R0,#0x14]
47D87E:  LDR.W           R0, [R8]
47D882:  LDR             R1, [R0]
47D884:  MOV             R0, R8
47D886:  BLX             R1
47D888:  LDR.W           R0, [R8,#0x1A0]
47D88C:  LDR.W           R10, [R8,#0x118]
47D890:  LDRB            R0, [R0,#8]
47D892:  CMP             R0, #0
47D894:  BEQ             loc_47D94C
47D896:  CMP.W           R10, #1
47D89A:  BGT             loc_47D8B2
47D89C:  LDR.W           R0, [R8]
47D8A0:  MOVS            R1, #0x2F ; '/'
47D8A2:  STR             R1, [R0,#0x14]
47D8A4:  LDR.W           R0, [R8]
47D8A8:  LDR             R1, [R0]
47D8AA:  MOV             R0, R8
47D8AC:  BLX             R1
47D8AE:  LDR.W           R10, [R8,#0x118]
47D8B2:  LDR.W           R0, [R8,#4]
47D8B6:  LDR.W           R1, [R8,#0x24]
47D8BA:  LDR.W           R11, [R8,#0x184]
47D8BE:  LDR             R3, [R0]
47D8C0:  MOV             R0, R8
47D8C2:  LSLS            R2, R1, #3
47D8C4:  MOVS            R1, #1
47D8C6:  BLX             R3
47D8C8:  STR.W           R0, [R11,#0x20]
47D8CC:  LDR.W           R1, [R8,#0x24]
47D8D0:  ADD.W           R0, R0, R1,LSL#2
47D8D4:  STR.W           R0, [R11,#0x24]
47D8D8:  LDR.W           R0, [R8,#0x24]
47D8DC:  CMP             R0, #1
47D8DE:  BLT             loc_47D93E
47D8E0:  LDR.W           R0, [R8,#0xC4]
47D8E4:  MOVS            R4, #0
47D8E6:  ADD.W           R1, R10, #4
47D8EA:  STR             R1, [SP,#0x28+var_24]
47D8EC:  ADD.W           R5, R0, #0x24 ; '$'
47D8F0:  LDR.W           R0, [R5,#-0x18]
47D8F4:  LDR             R1, [R5]
47D8F6:  LDR.W           R10, [R8,#4]
47D8FA:  MULS            R0, R1
47D8FC:  LDR.W           R1, [R8,#0x118]
47D900:  BLX             __aeabi_idiv
47D904:  MOV             R6, R0
47D906:  LDR             R0, [SP,#0x28+var_24]
47D908:  LDR.W           R3, [R10]
47D90C:  MOVS            R1, #1
47D90E:  MUL.W           R9, R6, R0
47D912:  MOV             R0, R8
47D914:  MOV.W           R2, R9,LSL#3
47D918:  BLX             R3
47D91A:  LDR.W           R1, [R11,#0x20]
47D91E:  ADD.W           R0, R0, R6,LSL#2
47D922:  ADDS            R5, #0x54 ; 'T'
47D924:  STR.W           R0, [R1,R4,LSL#2]
47D928:  ADD.W           R0, R0, R9,LSL#2
47D92C:  LDR.W           R1, [R11,#0x24]
47D930:  STR.W           R0, [R1,R4,LSL#2]
47D934:  ADDS            R4, #1
47D936:  LDR.W           R0, [R8,#0x24]
47D93A:  CMP             R4, R0
47D93C:  BLT             loc_47D8F0
47D93E:  LDR.W           R10, [R8,#0x118]
47D942:  ADD.W           R9, R10, #2
47D946:  CMP             R0, #1
47D948:  BGE             loc_47D956
47D94A:  B               loc_47D9A4
47D94C:  LDR.W           R0, [R8,#0x24]
47D950:  MOV             R9, R10
47D952:  CMP             R0, #1
47D954:  BLT             loc_47D9A4
47D956:  LDR.W           R0, [R8,#0xC4]
47D95A:  MOV.W           R11, #2
47D95E:  ADD.W           R5, R0, #0x1C
47D962:  B               loc_47D96E
47D964:  ADD.W           R11, R11, #1
47D968:  LDR.W           R10, [R8,#0x118]
47D96C:  ADDS            R5, #0x54 ; 'T'
47D96E:  LDR.W           R0, [R5,#-0x10]
47D972:  MOV             R1, R10
47D974:  LDR             R4, [R5,#8]
47D976:  MULS            R0, R4
47D978:  BLX             __aeabi_idiv
47D97C:  LDR             R1, [R5]
47D97E:  MUL.W           R3, R0, R9
47D982:  LDR.W           R6, [R8,#4]
47D986:  MOV             R0, R8
47D988:  MUL.W           R2, R1, R4
47D98C:  MOVS            R1, #1
47D98E:  LDR             R6, [R6,#8]
47D990:  BLX             R6
47D992:  LDR             R1, [SP,#0x28+var_20]
47D994:  STR.W           R0, [R1,R11,LSL#2]
47D998:  SUB.W           R1, R11, #1
47D99C:  LDR.W           R0, [R8,#0x24]
47D9A0:  CMP             R1, R0
47D9A2:  BLT             loc_47D964
47D9A4:  ADD             SP, SP, #0xC
47D9A6:  POP.W           {R8-R11}
47D9AA:  POP             {R4-R7,PC}
