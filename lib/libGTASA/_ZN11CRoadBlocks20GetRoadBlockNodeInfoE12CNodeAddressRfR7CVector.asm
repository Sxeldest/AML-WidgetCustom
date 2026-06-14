; =========================================================
; Game Engine Function: _ZN11CRoadBlocks20GetRoadBlockNodeInfoE12CNodeAddressRfR7CVector
; Address            : 0x325934 - 0x325A7C
; =========================================================

325934:  PUSH            {R4-R7,LR}
325936:  ADD             R7, SP, #0xC
325938:  PUSH.W          {R8-R11}
32593C:  SUB             SP, SP, #4
32593E:  LDR             R3, =(ThePaths_ptr - 0x32594C)
325940:  LSRS            R5, R0, #0x10
325942:  MOVW            R4, #:lower16:stru_3FFF8.st_value
325946:  LSLS            R5, R5, #3
325948:  ADD             R3, PC; ThePaths_ptr
32594A:  SUB.W           R6, R5, R0,LSR#16
32594E:  MOVT            R4, #:upper16:stru_3FFF8.st_value
325952:  AND.W           R0, R4, R0,LSL#2
325956:  LDR             R3, [R3]; ThePaths
325958:  ADDW            R5, R3, #0x804
32595C:  LDR             R4, [R5,R0]
32595E:  ADD             R0, R3
325960:  ADD.W           R3, R4, R6,LSL#2
325964:  LDR.W           R0, [R0,#0xDA4]
325968:  LDRSH.W         R4, [R3,#0x10]
32596C:  LDRH.W          R3, [R0,R4,LSL#1]
325970:  LSRS            R6, R3, #0xA
325972:  LDR.W           R5, [R5,R6,LSL#2]
325976:  CMP             R5, #0
325978:  BEQ             loc_325A72
32597A:  LDR             R5, =(ThePaths_ptr - 0x325986)
32597C:  ADD.W           R0, R0, R4,LSL#1
325980:  LDRH            R4, [R0,#2]
325982:  ADD             R5, PC; ThePaths_ptr
325984:  LDR             R0, [R5]; ThePaths
325986:  MOV.W           R12, R4,LSR#10
32598A:  ADD.W           R0, R0, R12,LSL#2
32598E:  LDR.W           R5, [R0,#0x804]
325992:  MOVS            R0, #0
325994:  CMP             R5, #0
325996:  BEQ             loc_325A74
325998:  LDR             R5, =(ThePaths_ptr - 0x3259AA)
32599A:  BFC.W           R4, #0xA, #0x16
32599E:  BFC.W           R3, #0xA, #0x16
3259A2:  VMOV.F32        S0, #5.0
3259A6:  ADD             R5, PC; ThePaths_ptr
3259A8:  RSB.W           R8, R4, R4,LSL#3
3259AC:  RSB.W           R11, R3, R3,LSL#3
3259B0:  LDR             R5, [R5]; ThePaths
3259B2:  ADDW            R5, R5, #0x924
3259B6:  LDR.W           LR, [R5,R12,LSL#2]
3259BA:  LDR.W           R10, [R5,R6,LSL#2]
3259BE:  ADD.W           R12, LR, R8,LSL#1
3259C2:  LDRH.W          R4, [R12,#0xB]
3259C6:  AND.W           R6, R4, #7
3259CA:  UBFX.W          R4, R4, #3, #3
3259CE:  ADD.W           R9, R4, R6
3259D2:  ADD.W           R4, R10, R11,LSL#1
3259D6:  LDRH.W          R5, [R4,#0xB]
3259DA:  AND.W           R3, R5, #7
3259DE:  UBFX.W          R5, R5, #3, #3
3259E2:  ADD             R5, R3
3259E4:  CMP             R5, R9
3259E6:  IT HI
3259E8:  MOVHI           R6, R3
3259EA:  MOV             R3, R12
3259EC:  IT HI
3259EE:  MOVHI           R3, R4
3259F0:  LDRH.W          R3, [R3,#0xB]
3259F4:  UBFX.W          R3, R3, #3, #3
3259F8:  ADD             R3, R6
3259FA:  VMOV            S2, R3
3259FE:  VCVT.F32.U32    S2, S2
325A02:  VMUL.F32        S2, S2, S0
325A06:  VADD.F32        S0, S2, S0
325A0A:  VSTR            S0, [R1]
325A0E:  VMOV.F32        S0, #0.125
325A12:  LDRSH.W         R1, [R10,R11,LSL#1]
325A16:  LDRSH.W         R3, [LR,R8,LSL#1]
325A1A:  VMOV            S2, R1
325A1E:  VMOV            S4, R3
325A22:  VCVT.F32.S32    S2, S2
325A26:  VCVT.F32.S32    S4, S4
325A2A:  LDRSH.W         R1, [R4,#2]
325A2E:  LDRSH.W         R3, [R12,#2]
325A32:  VMOV            S6, R1
325A36:  VMOV            S8, R3
325A3A:  VCVT.F32.S32    S6, S6
325A3E:  VCVT.F32.S32    S8, S8
325A42:  STR             R0, [R2,#8]
325A44:  VMUL.F32        S2, S2, S0
325A48:  MOV             R0, R2; this
325A4A:  VMUL.F32        S4, S4, S0
325A4E:  VMUL.F32        S6, S6, S0
325A52:  VMUL.F32        S0, S8, S0
325A56:  VSUB.F32        S2, S4, S2
325A5A:  VSUB.F32        S0, S0, S6
325A5E:  VNEG.F32        S2, S2
325A62:  VSTR            S0, [R2]
325A66:  VSTR            S2, [R2,#4]
325A6A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
325A6E:  MOVS            R0, #1
325A70:  B               loc_325A74
325A72:  MOVS            R0, #0
325A74:  ADD             SP, SP, #4
325A76:  POP.W           {R8-R11}
325A7A:  POP             {R4-R7,PC}
