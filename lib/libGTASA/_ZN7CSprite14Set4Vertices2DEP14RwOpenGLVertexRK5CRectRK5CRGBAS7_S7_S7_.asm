; =========================================================
; Game Engine Function: _ZN7CSprite14Set4Vertices2DEP14RwOpenGLVertexRK5CRectRK5CRGBAS7_S7_S7_
; Address            : 0x5C7FE8 - 0x5C80B6
; =========================================================

5C7FE8:  PUSH            {R4-R7,LR}
5C7FEA:  ADD             R7, SP, #0xC
5C7FEC:  PUSH.W          {R8}
5C7FF0:  LDR             R4, =(_ZN7CSprite16m_f2DNearScreenZE_ptr - 0x5C7FFC)
5C7FF2:  MOV.W           R8, #0
5C7FF6:  LDR             R5, =(_ZN7CSprite21m_fRecipNearClipPlaneE_ptr - 0x5C8000)
5C7FF8:  ADD             R4, PC; _ZN7CSprite16m_f2DNearScreenZE_ptr
5C7FFA:  LDR             R6, [R1]
5C7FFC:  ADD             R5, PC; _ZN7CSprite21m_fRecipNearClipPlaneE_ptr
5C7FFE:  LDR             R4, [R4]; CSprite::m_f2DNearScreenZ ...
5C8000:  LDR             R5, [R5]; CSprite::m_fRecipNearClipPlane ...
5C8002:  LDR.W           LR, [R4]; CSprite::m_f2DNearScreenZ
5C8006:  LDR.W           R12, [R5]; CSprite::m_fRecipNearClipPlane
5C800A:  STR             R6, [R0]
5C800C:  LDR             R5, [R7,#arg_0]
5C800E:  LDR             R4, [R1,#0xC]
5C8010:  STRD.W          R4, LR, [R0,#4]
5C8014:  STR.W           R12, [R0,#0xC]
5C8018:  STRD.W          R8, R8, [R0,#0x14]
5C801C:  LDRB            R6, [R5]
5C801E:  STRB            R6, [R0,#0x10]
5C8020:  LDRB            R6, [R5,#1]
5C8022:  STRB            R6, [R0,#0x11]
5C8024:  LDRB            R6, [R5,#2]
5C8026:  STRB            R6, [R0,#0x12]
5C8028:  LDRB            R5, [R5,#3]
5C802A:  STRB            R5, [R0,#0x13]
5C802C:  LDR             R5, [R1,#8]
5C802E:  STR             R5, [R0,#0x1C]
5C8030:  LDR             R5, [R1,#0xC]
5C8032:  LDR             R6, [R7,#arg_4]
5C8034:  STRD.W          R5, LR, [R0,#0x20]
5C8038:  MOV.W           R5, #0x3F800000
5C803C:  STR.W           R12, [R0,#0x28]
5C8040:  STRD.W          R5, R8, [R0,#0x30]
5C8044:  LDRB            R4, [R6]
5C8046:  STRB.W          R4, [R0,#0x2C]
5C804A:  LDRB            R4, [R6,#1]
5C804C:  STRB.W          R4, [R0,#0x2D]
5C8050:  LDRB            R4, [R6,#2]
5C8052:  STRB.W          R4, [R0,#0x2E]
5C8056:  LDRB            R4, [R6,#3]
5C8058:  STRB.W          R4, [R0,#0x2F]
5C805C:  LDR             R4, [R1,#8]
5C805E:  STR             R4, [R0,#0x38]
5C8060:  LDR             R4, [R1,#4]
5C8062:  STRD.W          R4, LR, [R0,#0x3C]
5C8066:  STR.W           R12, [R0,#0x44]
5C806A:  STRD.W          R5, R5, [R0,#0x4C]
5C806E:  LDRB            R4, [R3]
5C8070:  STRB.W          R4, [R0,#0x48]
5C8074:  LDRB            R4, [R3,#1]
5C8076:  STRB.W          R4, [R0,#0x49]
5C807A:  LDRB            R4, [R3,#2]
5C807C:  STRB.W          R4, [R0,#0x4A]
5C8080:  LDRB            R3, [R3,#3]
5C8082:  STRB.W          R3, [R0,#0x4B]
5C8086:  LDR             R3, [R1]
5C8088:  STR             R3, [R0,#0x54]
5C808A:  LDR             R1, [R1,#4]
5C808C:  STRD.W          R1, LR, [R0,#0x58]
5C8090:  STR.W           R12, [R0,#0x60]
5C8094:  STRD.W          R8, R5, [R0,#0x68]
5C8098:  LDRB            R1, [R2]
5C809A:  STRB.W          R1, [R0,#0x64]
5C809E:  LDRB            R1, [R2,#1]
5C80A0:  STRB.W          R1, [R0,#0x65]
5C80A4:  LDRB            R1, [R2,#2]
5C80A6:  STRB.W          R1, [R0,#0x66]
5C80AA:  LDRB            R1, [R2,#3]
5C80AC:  STRB.W          R1, [R0,#0x67]
5C80B0:  POP.W           {R8}
5C80B4:  POP             {R4-R7,PC}
