; =========================================================
; Game Engine Function: _ZN10CModelInfo8ShutDownEv
; Address            : 0x385A58 - 0x385CA8
; =========================================================

385A58:  PUSH            {R4-R7,LR}
385A5A:  ADD             R7, SP, #0xC
385A5C:  PUSH.W          {R8-R10}
385A60:  LDR             R0, =(dword_820738 - 0x385A66)
385A62:  ADD             R0, PC; dword_820738
385A64:  LDR             R0, [R0]
385A66:  CMP             R0, #1
385A68:  BLT             loc_385A8A
385A6A:  LDR             R0, =(dword_820738 - 0x385A74)
385A6C:  MOVS            R4, #0
385A6E:  LDR             R5, =(dword_820738 - 0x385A78)
385A70:  ADD             R0, PC; dword_820738
385A72:  ADDS            R0, #4
385A74:  ADD             R5, PC; dword_820738
385A76:  MOV             R6, R0
385A78:  LDR.W           R1, [R6],#0x38
385A7C:  LDR             R1, [R1,#0x20]
385A7E:  BLX             R1
385A80:  LDR             R0, [R5]
385A82:  ADDS            R4, #1
385A84:  CMP             R4, R0
385A86:  MOV             R0, R6
385A88:  BLT             loc_385A78
385A8A:  LDR             R0, =(dword_8DFDBC - 0x385A90)
385A8C:  ADD             R0, PC; dword_8DFDBC
385A8E:  LDR             R0, [R0]
385A90:  CMP             R0, #1
385A92:  BLT             loc_385AB4
385A94:  LDR             R0, =(dword_8DFDBC - 0x385A9E)
385A96:  MOVS            R4, #0
385A98:  LDR             R5, =(dword_8DFDBC - 0x385AA2)
385A9A:  ADD             R0, PC; dword_8DFDBC
385A9C:  ADDS            R0, #4
385A9E:  ADD             R5, PC; dword_8DFDBC
385AA0:  MOV             R6, R0
385AA2:  LDR.W           R1, [R6],#0x3C
385AA6:  LDR             R1, [R1,#0x20]
385AA8:  BLX             R1
385AAA:  LDR             R0, [R5]
385AAC:  ADDS            R4, #1
385AAE:  CMP             R4, R0
385AB0:  MOV             R0, R6
385AB2:  BLT             loc_385AA2
385AB4:  LDR             R0, =(dword_8E0E28 - 0x385ABA)
385AB6:  ADD             R0, PC; dword_8E0E28
385AB8:  LDR             R0, [R0]
385ABA:  CMP             R0, #1
385ABC:  BLT             loc_385ADE
385ABE:  LDR             R0, =(dword_8E0E28 - 0x385AC8)
385AC0:  MOVS            R4, #0
385AC2:  LDR             R5, =(dword_8E0E28 - 0x385ACC)
385AC4:  ADD             R0, PC; dword_8E0E28
385AC6:  ADDS            R0, #4
385AC8:  ADD             R5, PC; dword_8E0E28
385ACA:  MOV             R6, R0
385ACC:  LDR.W           R1, [R6],#0x3C
385AD0:  LDR             R1, [R1,#0x20]
385AD2:  BLX             R1
385AD4:  LDR             R0, [R5]
385AD6:  ADDS            R4, #1
385AD8:  CMP             R4, R0
385ADA:  MOV             R0, R6
385ADC:  BLT             loc_385ACC
385ADE:  LDR             R0, =(dword_8E0E68 - 0x385AE4)
385AE0:  ADD             R0, PC; dword_8E0E68
385AE2:  LDR             R0, [R0]
385AE4:  CMP             R0, #1
385AE6:  BLT             loc_385B08
385AE8:  LDR             R0, =(dword_8E0E68 - 0x385AF2)
385AEA:  MOVS            R4, #0
385AEC:  LDR             R5, =(dword_8E0E68 - 0x385AF6)
385AEE:  ADD             R0, PC; dword_8E0E68
385AF0:  ADDS            R0, #4
385AF2:  ADD             R5, PC; dword_8E0E68
385AF4:  MOV             R6, R0
385AF6:  LDR.W           R1, [R6],#0x3C
385AFA:  LDR             R1, [R1,#0x20]
385AFC:  BLX             R1
385AFE:  LDR             R0, [R5]
385B00:  ADDS            R4, #1
385B02:  CMP             R4, R0
385B04:  MOV             R0, R6
385B06:  BLT             loc_385AF6
385B08:  LDR             R0, =(dword_8E3608 - 0x385B0E)
385B0A:  ADD             R0, PC; dword_8E3608
385B0C:  LDR             R0, [R0]
385B0E:  CMP             R0, #1
385B10:  BLT             loc_385B32
385B12:  LDR             R0, =(dword_8E3608 - 0x385B1C)
385B14:  MOVS            R4, #0
385B16:  LDR             R5, =(dword_8E3608 - 0x385B20)
385B18:  ADD             R0, PC; dword_8E3608
385B1A:  ADDS            R0, #4
385B1C:  ADD             R5, PC; dword_8E3608
385B1E:  MOV             R6, R0
385B20:  LDR.W           R1, [R6],#0x40
385B24:  LDR             R1, [R1,#0x20]
385B26:  BLX             R1
385B28:  LDR             R0, [R5]
385B2A:  ADDS            R4, #1
385B2C:  CMP             R4, R0
385B2E:  MOV             R0, R6
385B30:  BLT             loc_385B20
385B32:  LDR             R0, =(dword_8E364C - 0x385B38)
385B34:  ADD             R0, PC; dword_8E364C
385B36:  LDR             R0, [R0]
385B38:  CMP             R0, #1
385B3A:  BLT             loc_385B5C
385B3C:  LDR             R0, =(dword_8E364C - 0x385B46)
385B3E:  MOVS            R4, #0
385B40:  LDR             R5, =(dword_8E364C - 0x385B4A)
385B42:  ADD             R0, PC; dword_8E364C
385B44:  ADDS            R0, #4
385B46:  ADD             R5, PC; dword_8E364C
385B48:  MOV             R6, R0
385B4A:  LDR.W           R1, [R6],#0x40
385B4E:  LDR             R1, [R1,#0x20]
385B50:  BLX             R1
385B52:  LDR             R0, [R5]
385B54:  ADDS            R4, #1
385B56:  CMP             R4, R0
385B58:  MOV             R0, R6
385B5A:  BLT             loc_385B4A
385B5C:  LDR             R0, =(dword_8E4310 - 0x385B62)
385B5E:  ADD             R0, PC; dword_8E4310
385B60:  LDR             R0, [R0]
385B62:  CMP             R0, #1
385B64:  BLT             loc_385B86
385B66:  LDR             R0, =(dword_8E4310 - 0x385B70)
385B68:  MOVS            R4, #0
385B6A:  LDR             R5, =(dword_8E4310 - 0x385B74)
385B6C:  ADD             R0, PC; dword_8E4310
385B6E:  ADDS            R0, #4
385B70:  ADD             R5, PC; dword_8E4310
385B72:  MOV             R6, R0
385B74:  LDR.W           R1, [R6],#0x3C
385B78:  LDR             R1, [R1,#0x20]
385B7A:  BLX             R1
385B7C:  LDR             R0, [R5]
385B7E:  ADDS            R4, #1
385B80:  CMP             R4, R0
385B82:  MOV             R0, R6
385B84:  BLT             loc_385B74
385B86:  LDR             R0, =(dword_8E58A4 - 0x385B8C)
385B88:  ADD             R0, PC; dword_8E58A4
385B8A:  LDR             R0, [R0]
385B8C:  CMP             R0, #1
385B8E:  BLT             loc_385BB0
385B90:  LDR             R0, =(dword_8E58A4 - 0x385B9A)
385B92:  MOVS            R5, #0
385B94:  LDR             R6, =(dword_8E58A4 - 0x385B9E)
385B96:  ADD             R0, PC; dword_8E58A4
385B98:  ADDS            R4, R0, #4
385B9A:  ADD             R6, PC; dword_8E58A4
385B9C:  LDR             R0, [R4]
385B9E:  LDR             R1, [R0,#0x20]
385BA0:  MOV             R0, R4
385BA2:  BLX             R1
385BA4:  LDR             R0, [R6]
385BA6:  ADDS            R5, #1
385BA8:  ADD.W           R4, R4, #0x3A8
385BAC:  CMP             R5, R0
385BAE:  BLT             loc_385B9C
385BB0:  LDR             R0, =(dword_915FC8 - 0x385BB6)
385BB2:  ADD             R0, PC; dword_915FC8
385BB4:  LDR             R0, [R0]
385BB6:  CMP             R0, #1
385BB8:  BLT             loc_385BDA
385BBA:  LDR             R0, =(dword_915FC8 - 0x385BC4)
385BBC:  MOVS            R4, #0
385BBE:  LDR             R5, =(dword_915FC8 - 0x385BC8)
385BC0:  ADD             R0, PC; dword_915FC8
385BC2:  ADDS            R0, #4
385BC4:  ADD             R5, PC; dword_915FC8
385BC6:  MOV             R6, R0
385BC8:  LDR.W           R1, [R6],#0x5C
385BCC:  LDR             R1, [R1,#0x20]
385BCE:  BLX             R1
385BD0:  LDR             R0, [R5]
385BD2:  ADDS            R4, #1
385BD4:  CMP             R4, R0
385BD6:  MOV             R0, R6
385BD8:  BLT             loc_385BC8
385BDA:  LDR             R0, =(dword_91C3B4 - 0x385BE0)
385BDC:  ADD             R0, PC; dword_91C3B4
385BDE:  LDR             R0, [R0]
385BE0:  CMP             R0, #1
385BE2:  BLT             loc_385C60
385BE4:  LDR             R0, =(dword_91C3B4 - 0x385BF4)
385BE6:  MOV.W           R8, #0
385BEA:  LDR.W           R9, =(dword_91C3B4 - 0x385BFA)
385BEE:  MOVS            R5, #0
385BF0:  ADD             R0, PC; dword_91C3B4
385BF2:  ADD.W           R6, R0, #0x38 ; '8'
385BF6:  ADD             R9, PC; dword_91C3B4
385BF8:  LDRB.W          R0, [R6,#-0x28]
385BFC:  CMP             R0, #7
385BFE:  BEQ             loc_385C1E
385C00:  CBNZ            R0, loc_385C54
385C02:  LDR.W           R0, [R6,#-4]
385C06:  CBZ             R0, loc_385C10
385C08:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
385C0C:  STR.W           R8, [R6,#-4]
385C10:  LDR             R0, [R6]
385C12:  CBZ             R0, loc_385C54
385C14:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
385C18:  STR.W           R8, [R6]
385C1C:  B               loc_385C54
385C1E:  LDR.W           R0, [R6,#-0xC]; this
385C22:  CBZ             R0, loc_385C2C
385C24:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
385C28:  STR.W           R8, [R6,#-0xC]
385C2C:  LDR.W           R4, [R6,#-8]
385C30:  CBZ             R4, loc_385C54
385C32:  LDR.W           R10, [R4,#4]
385C36:  CMP.W           R10, #0
385C3A:  BEQ             loc_385C4A
385C3C:  MOV             R0, R4
385C3E:  MOVS            R1, #0
385C40:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
385C44:  MOV             R0, R10
385C46:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
385C4A:  MOV             R0, R4
385C4C:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
385C50:  STR.W           R8, [R6,#-8]
385C54:  LDR.W           R0, [R9]
385C58:  ADDS            R5, #1
385C5A:  ADDS            R6, #0x40 ; '@'
385C5C:  CMP             R5, R0
385C5E:  BLT             loc_385BF8
385C60:  LDR             R0, =(dword_8DFDBC - 0x385C6C)
385C62:  MOVS            R2, #0
385C64:  LDR             R1, =(dword_820738 - 0x385C6E)
385C66:  LDR             R4, =(dword_8E0E28 - 0x385C74)
385C68:  ADD             R0, PC; dword_8DFDBC
385C6A:  ADD             R1, PC; dword_820738
385C6C:  LDR.W           R12, =(dword_8E0E68 - 0x385C7A)
385C70:  ADD             R4, PC; dword_8E0E28
385C72:  LDR             R3, =(dword_8E3608 - 0x385C7E)
385C74:  LDR             R6, =(dword_8E364C - 0x385C82)
385C76:  ADD             R12, PC; dword_8E0E68
385C78:  LDR             R5, =(dword_8E4310 - 0x385C86)
385C7A:  ADD             R3, PC; dword_8E3608
385C7C:  STR             R2, [R0]
385C7E:  ADD             R6, PC; dword_8E364C
385C80:  LDR             R0, =(dword_8E58A4 - 0x385C8C)
385C82:  ADD             R5, PC; dword_8E4310
385C84:  STR             R2, [R1]
385C86:  LDR             R1, =(dword_915FC8 - 0x385C92)
385C88:  ADD             R0, PC; dword_8E58A4
385C8A:  STR             R2, [R4]
385C8C:  LDR             R4, =(dword_91C3B4 - 0x385C98)
385C8E:  ADD             R1, PC; dword_915FC8
385C90:  STR.W           R2, [R12]
385C94:  ADD             R4, PC; dword_91C3B4
385C96:  STR             R2, [R3]
385C98:  STR             R2, [R6]
385C9A:  STR             R2, [R5]
385C9C:  STR             R2, [R0]
385C9E:  STR             R2, [R1]
385CA0:  STR             R2, [R4]
385CA2:  POP.W           {R8-R10}
385CA6:  POP             {R4-R7,PC}
