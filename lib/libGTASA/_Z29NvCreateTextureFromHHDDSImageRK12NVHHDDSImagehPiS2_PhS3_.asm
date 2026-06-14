; =========================================================
; Game Engine Function: _Z29NvCreateTextureFromHHDDSImageRK12NVHHDDSImagehPiS2_PhS3_
; Address            : 0x274B78 - 0x274C88
; =========================================================

274B78:  PUSH            {R4-R7,LR}
274B7A:  ADD             R7, SP, #0xC
274B7C:  PUSH.W          {R8}
274B80:  SUB             SP, SP, #8
274B82:  MOV             R6, R3
274B84:  MOV             R4, R2
274B86:  MOV             R8, R1
274B88:  MOV             R5, R0
274B8A:  BLX             glGetError
274B8E:  LDR             R0, [R7,#arg_4]
274B90:  MOVS            R1, #0
274B92:  STR             R1, [SP,#0x18+textures]
274B94:  CBZ             R0, loc_274BA0
274B96:  LDR             R1, [R5,#0x1C]
274B98:  CMP             R1, #0
274B9A:  IT NE
274B9C:  MOVNE           R1, #1
274B9E:  STRB            R1, [R0]
274BA0:  CMP             R4, #0
274BA2:  ITT NE
274BA4:  LDRNE           R0, [R5]
274BA6:  STRNE           R0, [R4]
274BA8:  CMP             R6, #0
274BAA:  LDR             R0, [R7,#arg_0]
274BAC:  ITT NE
274BAE:  LDRNE           R1, [R5,#4]
274BB0:  STRNE           R1, [R6]
274BB2:  CBZ             R0, loc_274BBE
274BB4:  LDR             R1, [R5,#0x24]
274BB6:  CMP             R1, #0
274BB8:  IT NE
274BBA:  MOVNE           R1, #1
274BBC:  STRB            R1, [R0]
274BBE:  ADD             R1, SP, #0x18+textures; textures
274BC0:  MOVS            R0, #1; n
274BC2:  BLX             glGenTextures
274BC6:  LDR             R0, [R5,#0x1C]
274BC8:  LDR             R1, [SP,#0x18+textures]; texture
274BCA:  CMP             R0, #0
274BCC:  BEQ             loc_274C52
274BCE:  MOVW            R0, #0x8513; target
274BD2:  BLX             glBindTexture
274BD6:  MOVW            R0, #0x8516
274BDA:  MOVS            R1, #0
274BDC:  MOV             R2, R5
274BDE:  MOV             R3, R8
274BE0:  BL              sub_274A34
274BE4:  LDR             R4, [R5,#0x18]
274BE6:  MOVW            R0, #0x8515
274BEA:  MOV             R2, R5
274BEC:  MOV             R3, R8
274BEE:  CMP             R4, #0
274BF0:  IT EQ
274BF2:  MOVEQ           R4, #1
274BF4:  MOV             R1, R4
274BF6:  BL              sub_274A34
274BFA:  LDR             R0, [R5,#0x18]
274BFC:  MOV             R2, R5
274BFE:  MOV             R3, R8
274C00:  CMP             R0, #0
274C02:  IT EQ
274C04:  MOVEQ           R0, #1
274C06:  ADD             R4, R0
274C08:  MOVW            R0, #0x8517
274C0C:  MOV             R1, R4
274C0E:  BL              sub_274A34
274C12:  LDR             R0, [R5,#0x18]
274C14:  MOV             R2, R5
274C16:  MOV             R3, R8
274C18:  CMP             R0, #0
274C1A:  IT EQ
274C1C:  MOVEQ           R0, #1
274C1E:  ADD             R4, R0
274C20:  MOVW            R0, #0x8518
274C24:  MOV             R1, R4
274C26:  BL              sub_274A34
274C2A:  LDR             R0, [R5,#0x18]
274C2C:  MOV             R2, R5
274C2E:  MOV             R3, R8
274C30:  CMP             R0, #0
274C32:  IT EQ
274C34:  MOVEQ           R0, #1
274C36:  ADD             R4, R0
274C38:  MOVW            R0, #0x8519
274C3C:  MOV             R1, R4
274C3E:  BL              sub_274A34
274C42:  LDR             R0, [R5,#0x18]
274C44:  CMP             R0, #0
274C46:  IT EQ
274C48:  MOVEQ           R0, #1
274C4A:  ADDS            R1, R0, R4
274C4C:  MOVW            R0, #0x851A
274C50:  B               loc_274C60
274C52:  MOVW            R0, #0xDE1; target
274C56:  BLX             glBindTexture
274C5A:  MOVW            R0, #0xDE1
274C5E:  MOVS            R1, #0
274C60:  MOV             R2, R5
274C62:  MOV             R3, R8
274C64:  BL              sub_274A34
274C68:  BLX             glGetError
274C6C:  CBZ             R0, loc_274C7E
274C6E:  LDR             R0, =(NVLogError_ptr - 0x274C76)
274C70:  LDR             R1, =(byte_61CD7E - 0x274C78)
274C72:  ADD             R0, PC; NVLogError_ptr
274C74:  ADD             R1, PC; byte_61CD7E ; char *
274C76:  LDR             R0, [R0]; NVLogError
274C78:  LDR             R2, [R0]; NVDefaultLogError(char const*,char const*,...)
274C7A:  ADR             R0, aNvcreatetextur_0; "NvCreateTextureFromHHDDSImage error"
274C7C:  BLX             R2; NVDefaultLogError(char const*,char const*,...)
274C7E:  LDR             R0, [SP,#0x18+textures]
274C80:  ADD             SP, SP, #8
274C82:  POP.W           {R8}
274C86:  POP             {R4-R7,PC}
