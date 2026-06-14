; =========================================================
; Game Engine Function: alGetListenerfv
; Address            : 0x255A3C - 0x255BFE
; =========================================================

255A3C:  PUSH            {R4-R7,LR}
255A3E:  ADD             R7, SP, #0xC
255A40:  PUSH.W          {R8}
255A44:  MOV             R6, R0
255A46:  MOVW            R0, #0x1009
255A4A:  MOV             R5, R1
255A4C:  CMP             R6, R0
255A4E:  BGT             loc_255A74
255A50:  MOVW            R0, #0x1004
255A54:  CMP             R6, R0
255A56:  ITT NE
255A58:  MOVWNE          R0, #0x1006
255A5C:  CMPNE           R6, R0
255A5E:  BNE             loc_255AAA
255A60:  ADDS            R2, R5, #4
255A62:  ADD.W           R3, R5, #8
255A66:  MOV             R0, R6
255A68:  MOV             R1, R5
255A6A:  POP.W           {R8}
255A6E:  POP.W           {R4-R7,LR}
255A72:  B               alGetListener3f
255A74:  MOVS            R4, #0x20004
255A7A:  CMP             R6, R4
255A7C:  ITT NE
255A7E:  MOVWNE          R0, #0x100A
255A82:  CMPNE           R6, R0
255A84:  BNE             loc_255AAA
255A86:  BLX             j_GetContextRef
255A8A:  MOV             R8, R0
255A8C:  CMP.W           R8, #0
255A90:  BEQ             loc_255B00
255A92:  CBZ             R5, loc_255B06
255A94:  CMP             R6, R4
255A96:  BEQ             loc_255B3A
255A98:  MOVW            R0, #0x100A
255A9C:  CMP             R6, R0
255A9E:  BNE             loc_255B44
255AA0:  LDR.W           R0, [R8,#4]
255AA4:  LDR             R0, [R0,#0x30]
255AA6:  STR             R0, [R5]
255AA8:  B               loc_255B7E
255AAA:  BLX             j_GetContextRef
255AAE:  MOV             R4, R0
255AB0:  CBZ             R4, loc_255B00
255AB2:  CMP             R5, #0
255AB4:  BEQ             loc_255B82
255AB6:  MOVW            R0, #0x100F
255ABA:  CMP             R6, R0
255ABC:  BNE             loc_255BB6
255ABE:  LDR.W           R0, [R4,#0x88]
255AC2:  MOV             R6, #0x161AC
255ACA:  LDR             R1, [R0,R6]
255ACC:  LDR             R1, [R1,#0x2C]
255ACE:  BLX             R1
255AD0:  LDR             R0, [R4,#4]
255AD2:  LDR             R0, [R0,#0x18]
255AD4:  STR             R0, [R5]
255AD6:  LDR             R0, [R4,#4]
255AD8:  LDR             R0, [R0,#0x1C]
255ADA:  STR             R0, [R5,#4]
255ADC:  LDR             R0, [R4,#4]
255ADE:  LDR             R0, [R0,#0x20]
255AE0:  STR             R0, [R5,#8]
255AE2:  LDR             R0, [R4,#4]
255AE4:  LDR             R0, [R0,#0x24]
255AE6:  STR             R0, [R5,#0xC]
255AE8:  LDR             R0, [R4,#4]
255AEA:  LDR             R0, [R0,#0x28]
255AEC:  STR             R0, [R5,#0x10]
255AEE:  LDR             R0, [R4,#4]
255AF0:  LDR             R0, [R0,#0x2C]
255AF2:  STR             R0, [R5,#0x14]
255AF4:  LDR.W           R0, [R4,#0x88]
255AF8:  LDR             R1, [R0,R6]
255AFA:  LDR             R1, [R1,#0x30]
255AFC:  BLX             R1
255AFE:  B               loc_255BF0
255B00:  POP.W           {R8}
255B04:  POP             {R4-R7,PC}
255B06:  LDR             R0, =(TrapALError_ptr - 0x255B0C)
255B08:  ADD             R0, PC; TrapALError_ptr
255B0A:  LDR             R0, [R0]; TrapALError
255B0C:  LDRB            R0, [R0]
255B0E:  CMP             R0, #0
255B10:  ITT NE
255B12:  MOVNE           R0, #5; sig
255B14:  BLXNE           raise
255B18:  LDREX.W         R0, [R8,#0x50]
255B1C:  CBNZ            R0, loc_255B76
255B1E:  ADD.W           R0, R8, #0x50 ; 'P'
255B22:  MOVW            R1, #0xA003
255B26:  DMB.W           ISH
255B2A:  STREX.W         R2, R1, [R0]
255B2E:  CBZ             R2, loc_255B7A
255B30:  LDREX.W         R2, [R0]
255B34:  CMP             R2, #0
255B36:  BEQ             loc_255B2A
255B38:  B               loc_255B76
255B3A:  LDR.W           R0, [R8,#4]
255B3E:  LDR             R0, [R0,#0x34]
255B40:  STR             R0, [R5]
255B42:  B               loc_255B7E
255B44:  LDR             R0, =(TrapALError_ptr - 0x255B4A)
255B46:  ADD             R0, PC; TrapALError_ptr
255B48:  LDR             R0, [R0]; TrapALError
255B4A:  LDRB            R0, [R0]
255B4C:  CMP             R0, #0
255B4E:  ITT NE
255B50:  MOVNE           R0, #5; sig
255B52:  BLXNE           raise
255B56:  LDREX.W         R0, [R8,#0x50]
255B5A:  CBNZ            R0, loc_255B76
255B5C:  ADD.W           R0, R8, #0x50 ; 'P'
255B60:  MOVW            R1, #0xA002
255B64:  DMB.W           ISH
255B68:  STREX.W         R2, R1, [R0]
255B6C:  CBZ             R2, loc_255B7A
255B6E:  LDREX.W         R2, [R0]
255B72:  CMP             R2, #0
255B74:  BEQ             loc_255B68
255B76:  CLREX.W
255B7A:  DMB.W           ISH
255B7E:  MOV             R0, R8
255B80:  B               loc_255BF2
255B82:  LDR             R0, =(TrapALError_ptr - 0x255B88)
255B84:  ADD             R0, PC; TrapALError_ptr
255B86:  LDR             R0, [R0]; TrapALError
255B88:  LDRB            R0, [R0]
255B8A:  CMP             R0, #0
255B8C:  ITT NE
255B8E:  MOVNE           R0, #5; sig
255B90:  BLXNE           raise
255B94:  LDREX.W         R0, [R4,#0x50]
255B98:  CBNZ            R0, loc_255BE8
255B9A:  ADD.W           R0, R4, #0x50 ; 'P'
255B9E:  MOVW            R1, #0xA003
255BA2:  DMB.W           ISH
255BA6:  STREX.W         R2, R1, [R0]
255BAA:  CBZ             R2, loc_255BEC
255BAC:  LDREX.W         R2, [R0]
255BB0:  CMP             R2, #0
255BB2:  BEQ             loc_255BA6
255BB4:  B               loc_255BE8
255BB6:  LDR             R0, =(TrapALError_ptr - 0x255BBC)
255BB8:  ADD             R0, PC; TrapALError_ptr
255BBA:  LDR             R0, [R0]; TrapALError
255BBC:  LDRB            R0, [R0]
255BBE:  CMP             R0, #0
255BC0:  ITT NE
255BC2:  MOVNE           R0, #5; sig
255BC4:  BLXNE           raise
255BC8:  LDREX.W         R0, [R4,#0x50]
255BCC:  CBNZ            R0, loc_255BE8
255BCE:  ADD.W           R0, R4, #0x50 ; 'P'
255BD2:  MOVW            R1, #0xA002
255BD6:  DMB.W           ISH
255BDA:  STREX.W         R2, R1, [R0]
255BDE:  CBZ             R2, loc_255BEC
255BE0:  LDREX.W         R2, [R0]
255BE4:  CMP             R2, #0
255BE6:  BEQ             loc_255BDA
255BE8:  CLREX.W
255BEC:  DMB.W           ISH
255BF0:  MOV             R0, R4
255BF2:  POP.W           {R8}
255BF6:  POP.W           {R4-R7,LR}
255BFA:  B.W             ALCcontext_DecRef
