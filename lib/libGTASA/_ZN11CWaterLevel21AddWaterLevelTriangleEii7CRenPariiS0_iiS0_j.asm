; =========================================================
; Game Engine Function: _ZN11CWaterLevel21AddWaterLevelTriangleEii7CRenPariiS0_iiS0_j
; Address            : 0x593B64 - 0x593C88
; =========================================================

593B64:  PUSH            {R4-R7,LR}
593B66:  ADD             R7, SP, #0xC
593B68:  PUSH.W          {R8-R11}
593B6C:  SUB             SP, SP, #0xC
593B6E:  LDR             R4, [R7,#arg_8]
593B70:  LDR             R6, [R7,#arg_20]
593B72:  CMP             R0, R4
593B74:  IT EQ
593B76:  CMPEQ           R0, R6
593B78:  BEQ.W           loc_593C80
593B7C:  LDR             R5, [R7,#arg_C]
593B7E:  LDR.W           R8, [R7,#arg_24]
593B82:  CMP             R1, R5
593B84:  IT EQ
593B86:  CMPEQ           R1, R8
593B88:  BEQ             loc_593C80
593B8A:  LDRD.W          LR, R12, [R7,#arg_0]
593B8E:  LDR.W           R9, [R7,#arg_18]
593B92:  LDR.W           R11, [R7,#arg_10]
593B96:  STRD.W          LR, R12, [SP,#0x28+var_28]
593B9A:  BLX             j__ZN11CWaterLevel19AddWaterLevelVertexEii7CRenPar; CWaterLevel::AddWaterLevelVertex(int,int,CRenPar)
593B9E:  LDR             R3, [R7,#arg_14]
593BA0:  MOV             R10, R0
593BA2:  LDR             R0, [R7,#arg_1C]
593BA4:  MOV             R1, R5
593BA6:  STR.W           R9, [SP,#0x28+var_28]
593BAA:  MOV             R2, R11
593BAC:  STR             R0, [SP,#0x28+var_24]
593BAE:  MOV             R0, R4
593BB0:  BLX             j__ZN11CWaterLevel19AddWaterLevelVertexEii7CRenPar; CWaterLevel::AddWaterLevelVertex(int,int,CRenPar)
593BB4:  MOV             R4, R0
593BB6:  LDR             R0, [R7,#arg_30]
593BB8:  STR             R0, [SP,#0x28+var_28]
593BBA:  MOV             R1, R8
593BBC:  LDR             R0, [R7,#arg_34]
593BBE:  STR             R0, [SP,#0x28+var_24]
593BC0:  MOV             R0, R6
593BC2:  LDRD.W          R2, R3, [R7,#arg_28]
593BC6:  BLX             j__ZN11CWaterLevel19AddWaterLevelVertexEii7CRenPar; CWaterLevel::AddWaterLevelVertex(int,int,CRenPar)
593BCA:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593BD4)
593BCC:  ADD.W           R6, R4, R4,LSL#2
593BD0:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593BD2:  LDR             R2, [R1]; CWaterLevel::m_aVertices ...
593BD4:  ADD.W           R1, R10, R10,LSL#2
593BD8:  ADD.W           R1, R2, R1,LSL#2
593BDC:  ADD.W           R2, R2, R6,LSL#2
593BE0:  LDRH            R3, [R1,#2]
593BE2:  LDRH            R6, [R2,#2]
593BE4:  CMP             R3, R6
593BE6:  BNE             loc_593BFC
593BE8:  LDRSH.W         R2, [R2]
593BEC:  LDRSH.W         R1, [R1]
593BF0:  CMP             R1, R2
593BF2:  MOV             R1, R10
593BF4:  ITT LT
593BF6:  MOVLT           R1, R4
593BF8:  MOVLT           R4, R10
593BFA:  B               loc_593C3E
593BFC:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593C06)
593BFE:  ADD.W           R5, R0, R0,LSL#2
593C02:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593C04:  LDR             R6, [R6]; CWaterLevel::m_aVertices ...
593C06:  ADD.W           R6, R6, R5,LSL#2
593C0A:  LDRH            R5, [R6,#2]
593C0C:  CMP             R3, R5
593C0E:  BNE             loc_593C2A
593C10:  LDRSH.W         R3, [R6]
593C14:  MOV             R2, R4
593C16:  LDRSH.W         R1, [R1]
593C1A:  CMP             R1, R3
593C1C:  MOV             R1, R10
593C1E:  ITT LT
593C20:  MOVLT           R1, R0
593C22:  MOVLT           R0, R10
593C24:  MOV             R4, R0
593C26:  MOV             R0, R2
593C28:  B               loc_593C3E
593C2A:  LDRSH.W         R1, [R6]
593C2E:  LDRSH.W         R2, [R2]
593C32:  CMP             R2, R1
593C34:  MOV             R1, R4
593C36:  ITE LT
593C38:  MOVLT           R1, R0
593C3A:  MOVGE           R4, R0
593C3C:  MOV             R0, R10
593C3E:  LDR             R2, =(_ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr - 0x593C46)
593C40:  LDR             R3, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x593C48)
593C42:  ADD             R2, PC; _ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr
593C44:  ADD             R3, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
593C46:  LDR             R2, [R2]; CWaterLevel::m_nNumOfWaterTriangles ...
593C48:  LDR             R3, [R3]; CWaterLevel::m_aTriangles ...
593C4A:  LDR             R6, [R2]; CWaterLevel::m_nNumOfWaterTriangles
593C4C:  STRH.W          R4, [R3,R6,LSL#3]
593C50:  ADD.W           R3, R3, R6,LSL#3
593C54:  LDRB            R5, [R3,#6]
593C56:  STRH            R1, [R3,#2]
593C58:  LDR             R1, [R7,#arg_38]
593C5A:  STRH            R0, [R3,#4]
593C5C:  BIC.W           R0, R5, #3
593C60:  MOV             R5, R1
593C62:  TST.W           R5, #1
593C66:  IT EQ
593C68:  ORREQ.W         R0, R0, #2
593C6C:  TST.W           R5, #2
593C70:  AND.W           R1, R0, #0xFA
593C74:  IT NE
593C76:  ORRNE.W         R1, R0, #4
593C7A:  ADDS            R0, R6, #1
593C7C:  STRB            R1, [R3,#6]
593C7E:  STR             R0, [R2]; CWaterLevel::m_nNumOfWaterTriangles
593C80:  ADD             SP, SP, #0xC
593C82:  POP.W           {R8-R11}
593C86:  POP             {R4-R7,PC}
