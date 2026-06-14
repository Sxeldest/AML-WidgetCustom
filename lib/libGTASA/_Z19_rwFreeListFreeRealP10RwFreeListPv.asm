; =========================================================
; Game Engine Function: _Z19_rwFreeListFreeRealP10RwFreeListPv
; Address            : 0x1E488C - 0x1E4982
; =========================================================

1E488C:  PUSH            {R4-R7,LR}
1E488E:  ADD             R7, SP, #0xC
1E4890:  PUSH.W          {R8,R9,R11}
1E4894:  SUB             SP, SP, #8
1E4896:  MOV             R8, R0
1E4898:  MOV             R9, R8
1E489A:  LDR.W           R5, [R9,#0x10]!
1E489E:  CMP             R5, R9
1E48A0:  BEQ             loc_1E48C2
1E48A2:  LDR.W           R4, [R9,#-8]
1E48A6:  ADD.W           R6, R5, #8
1E48AA:  ADDS            R0, R6, R4
1E48AC:  CMP             R0, R1
1E48AE:  BHI             loc_1E48BC
1E48B0:  LDRD.W          R2, R3, [R8]
1E48B4:  MLA.W           R3, R2, R3, R0
1E48B8:  CMP             R3, R1
1E48BA:  BCS             loc_1E48D0
1E48BC:  LDR             R5, [R5]
1E48BE:  CMP             R5, R9
1E48C0:  BNE             loc_1E48A6
1E48C2:  MOV.W           R8, #0
1E48C6:  MOV             R0, R8
1E48C8:  ADD             SP, SP, #8
1E48CA:  POP.W           {R8,R9,R11}
1E48CE:  POP             {R4-R7,PC}
1E48D0:  SUBS            R0, R1, R0
1E48D2:  MOV             R1, R2
1E48D4:  BLX             __aeabi_uidiv
1E48D8:  AND.W           R1, R0, #7
1E48DC:  LSRS            R0, R0, #3
1E48DE:  MOVS            R3, #0x80
1E48E0:  LDRB            R2, [R6,R0]
1E48E2:  LSR.W           R1, R3, R1
1E48E6:  BIC.W           R1, R2, R1
1E48EA:  STRB            R1, [R6,R0]
1E48EC:  LDRB.W          R0, [R8,#0x18]
1E48F0:  LSLS            R0, R0, #0x1E
1E48F2:  BPL             loc_1E48C6
1E48F4:  CBZ             R4, loc_1E4954
1E48F6:  CMP             R4, #4
1E48F8:  BCC             loc_1E493C
1E48FA:  BIC.W           R0, R4, #3
1E48FE:  CBZ             R0, loc_1E493C
1E4900:  VMOV.I32        Q8, #0
1E4904:  ADD             R1, SP, #0x20+var_1C
1E4906:  MOV             R2, R0
1E4908:  LDR.W           R3, [R6],#4
1E490C:  SUBS            R2, #4
1E490E:  STR             R3, [SP,#0x20+var_1C]
1E4910:  VLD1.32         {D18[0]}, [R1@32]
1E4914:  VMOVL.U8        Q9, D18
1E4918:  VMOVL.U16       Q9, D18
1E491C:  VADD.I32        Q8, Q8, Q9
1E4920:  BNE             loc_1E4908
1E4922:  VEXT.8          Q9, Q8, Q8, #8
1E4926:  CMP             R4, R0
1E4928:  VADD.I32        Q8, Q8, Q9
1E492C:  VDUP.32         Q9, D16[1]
1E4930:  VADD.I32        Q8, Q8, Q9
1E4934:  VMOV.32         R1, D16[0]
1E4938:  BNE             loc_1E4940
1E493A:  B               loc_1E4950
1E493C:  MOVS            R1, #0
1E493E:  MOVS            R0, #0
1E4940:  SUBS            R2, R4, R0
1E4942:  ADD             R0, R5
1E4944:  ADDS            R0, #8
1E4946:  LDRB.W          R3, [R0],#1
1E494A:  SUBS            R2, #1
1E494C:  ADD             R1, R3
1E494E:  BNE             loc_1E4946
1E4950:  CMP             R1, #0
1E4952:  BNE             loc_1E48C6
1E4954:  LDR.W           R0, [R9]
1E4958:  CMP             R5, R0
1E495A:  BEQ             loc_1E4960
1E495C:  LDR             R0, [R5]
1E495E:  B               loc_1E4966
1E4960:  LDR             R0, [R5]
1E4962:  CMP             R0, R9
1E4964:  BEQ             loc_1E48C6
1E4966:  LDR             R1, [R5,#4]
1E4968:  LDR             R2, =(RwEngineInstance_ptr - 0x1E4970)
1E496A:  STR             R0, [R1]
1E496C:  ADD             R2, PC; RwEngineInstance_ptr
1E496E:  LDRD.W          R0, R1, [R5]
1E4972:  LDR             R2, [R2]; RwEngineInstance
1E4974:  STR             R1, [R0,#4]
1E4976:  LDR             R0, [R2]
1E4978:  LDR.W           R1, [R0,#0x130]
1E497C:  MOV             R0, R5
1E497E:  BLX             R1
1E4980:  B               loc_1E48C6
