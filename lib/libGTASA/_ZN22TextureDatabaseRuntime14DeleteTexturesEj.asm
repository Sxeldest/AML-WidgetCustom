; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime14DeleteTexturesEj
; Address            : 0x1E97F8 - 0x1E98AE
; =========================================================

1E97F8:  PUSH            {R4-R7,LR}
1E97FA:  ADD             R7, SP, #0xC
1E97FC:  PUSH.W          {R8-R11}
1E9800:  SUB             SP, SP, #0xC
1E9802:  MOV             R6, R0
1E9804:  CMP             R1, #0
1E9806:  ITT NE
1E9808:  LDRNE.W         R3, [R6,#0xA0]
1E980C:  CMPNE           R3, #0
1E980E:  MOV.W           R0, #0
1E9812:  BEQ             loc_1E98A6
1E9814:  LDR             R2, =(RasterExtOffset_ptr - 0x1E9820)
1E9816:  MOVS            R5, #0x17
1E9818:  MOVS            R4, #3
1E981A:  STR             R1, [SP,#0x28+var_28]
1E981C:  ADD             R2, PC; RasterExtOffset_ptr
1E981E:  LDR             R0, [R2]; RasterExtOffset
1E9820:  STR             R0, [SP,#0x28+var_20]
1E9822:  MOVS            R0, #0
1E9824:  STR             R0, [SP,#0x28+var_24]
1E9826:  LDR.W           R2, [R6,#0xA4]
1E982A:  SUBS            R0, R3, #1
1E982C:  LDR             R1, [R6,#0x1C]
1E982E:  LDR.W           R8, [R2,R0,LSL#2]
1E9832:  STR.W           R0, [R6,#0xA0]
1E9836:  MLA.W           R9, R8, R5, R1
1E983A:  LDR.W           R0, [R9,#0x13]!
1E983E:  LDR             R2, [R0,#0x54]
1E9840:  CMP             R2, #1
1E9842:  BNE             loc_1E986A
1E9844:  LDR             R2, [SP,#0x28+var_20]
1E9846:  MOVS            R4, #0
1E9848:  LDR             R1, [R0]
1E984A:  LDR             R2, [R2]
1E984C:  LDR             R1, [R1,R2]
1E984E:  LDRD.W          R10, R11, [R1,#4]
1E9852:  STR             R4, [R0,#0x54]
1E9854:  LDR.W           R0, [R9]
1E9858:  BLX             j__Z17TextureAnnihilateP9RwTexture; TextureAnnihilate(RwTexture *)
1E985C:  MUL.W           R3, R11, R10
1E9860:  STR.W           R4, [R9]
1E9864:  CBNZ            R3, loc_1E9880
1E9866:  LDR             R1, [R6,#0x1C]
1E9868:  MOVS            R4, #3
1E986A:  MLA.W           R0, R8, R5, R1
1E986E:  LDRH            R1, [R0,#8]
1E9870:  BFI.W           R1, R4, #0xC, #0x14
1E9874:  STRH            R1, [R0,#8]
1E9876:  LDR.W           R3, [R6,#0xA0]
1E987A:  CMP             R3, #0
1E987C:  BNE             loc_1E9826
1E987E:  B               loc_1E98A4
1E9880:  LDR             R1, [R6,#0x1C]
1E9882:  MLA.W           R1, R8, R5, R1
1E9886:  LDRH            R2, [R1,#8]
1E9888:  BFC.W           R2, #0xC, #0x14
1E988C:  STRH            R2, [R1,#8]
1E988E:  LDR             R0, [SP,#0x28+var_24]
1E9890:  LDR             R1, [SP,#0x28+var_28]
1E9892:  ADD             R0, R3
1E9894:  CMP             R0, R1
1E9896:  BCS             loc_1E98A6
1E9898:  LDR.W           R3, [R6,#0xA0]
1E989C:  MOVS            R4, #3
1E989E:  CMP             R3, #0
1E98A0:  BNE             loc_1E9824
1E98A2:  B               loc_1E98A6
1E98A4:  LDR             R0, [SP,#0x28+var_24]
1E98A6:  ADD             SP, SP, #0xC
1E98A8:  POP.W           {R8-R11}
1E98AC:  POP             {R4-R7,PC}
