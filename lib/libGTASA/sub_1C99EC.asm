; =========================================================
; Game Engine Function: sub_1C99EC
; Address            : 0x1C99EC - 0x1C9C14
; =========================================================

1C99EC:  PUSH            {R4-R7,LR}
1C99EE:  ADD             R7, SP, #0xC
1C99F0:  PUSH.W          {R8-R11}
1C99F4:  SUB             SP, SP, #0x10C
1C99F6:  MOV             R4, R0
1C99F8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C9A02)
1C99FA:  MOV             R6, R1
1C99FC:  LDR             R1, =(RwEngineInstance_ptr - 0x1C9A06)
1C99FE:  ADD             R0, PC; __stack_chk_guard_ptr
1C9A00:  MOV             R10, R2
1C9A02:  ADD             R1, PC; RwEngineInstance_ptr
1C9A04:  LDR             R2, =(_rpSkinGlobals_ptr - 0x1C9A10)
1C9A06:  LDR             R0, [R0]; __stack_chk_guard
1C9A08:  MOV             R5, R3
1C9A0A:  LDR             R1, [R1]; RwEngineInstance
1C9A0C:  ADD             R2, PC; _rpSkinGlobals_ptr
1C9A0E:  LDR             R0, [R0]
1C9A10:  STR             R0, [SP,#0x128+var_20]
1C9A12:  LDR             R1, [R1]
1C9A14:  LDR             R2, [R2]; _rpSkinGlobals
1C9A16:  LDR.W           R1, [R1,#0x13C]
1C9A1A:  LDR             R0, [R2,#(dword_6B728C - 0x6B7274)]
1C9A1C:  BLX             R1
1C9A1E:  VMOV.I32        Q8, #0
1C9A22:  MOV             R8, R0
1C9A24:  ADD.W           R0, R8, #0x2C ; ','
1C9A28:  LDR             R2, [R7,#arg_0]
1C9A2A:  CMP             R5, #0
1C9A2C:  VST1.32         {D16-D17}, [R0]
1C9A30:  ADD.W           R0, R8, #0x20 ; ' '
1C9A34:  VST1.32         {D16-D17}, [R0]
1C9A38:  MOV             R0, R8
1C9A3A:  VST1.32         {D16-D17}, [R0]!
1C9A3E:  VST1.32         {D16-D17}, [R0]
1C9A42:  BEQ             loc_1C9A4C
1C9A44:  MOV.W           R11, #0
1C9A48:  MOV             R5, R4
1C9A4A:  B               loc_1C9A8A
1C9A4C:  MOV.W           R11, #1
1C9A50:  CMP             R4, #0
1C9A52:  MOV             R5, R4
1C9A54:  STR.W           R11, [R8,#0x10]
1C9A58:  BEQ             loc_1C9A8A
1C9A5A:  MOVS            R1, #0
1C9A5C:  MOV.W           R11, #1
1C9A60:  CMP.W           R11, #3
1C9A64:  BHI             loc_1C9A7C
1C9A66:  LDR.W           R0, [R2,R11,LSL#2]
1C9A6A:  CBZ             R0, loc_1C9A7C
1C9A6C:  ADD.W           R11, R11, #1
1C9A70:  STR.W           R11, [R8,#0x10]
1C9A74:  CMP.W           R11, #4
1C9A78:  BNE             loc_1C9A66
1C9A7A:  B               loc_1C9A86
1C9A7C:  ADDS            R1, #1
1C9A7E:  ADDS            R2, #0x10
1C9A80:  CMP             R1, R5
1C9A82:  BCC             loc_1C9A60
1C9A84:  B               loc_1C9A8A
1C9A86:  MOV.W           R11, #4
1C9A8A:  LDR.W           R9, [R7,#arg_4]
1C9A8E:  CMP.W           R10, #0
1C9A92:  STR             R6, [SP,#0x128+var_128]
1C9A94:  STR             R5, [SP,#0x128+var_124]
1C9A96:  BNE             loc_1C9AF8
1C9A98:  MOV.W           R10, #0
1C9A9C:  CBZ             R5, loc_1C9AF8
1C9A9E:  ADD             R1, SP, #0x128+var_120
1C9AA0:  MOVS            R3, #0
1C9AA2:  MOV             R0, R11
1C9AA4:  MOV.W           R12, #0
1C9AA8:  CBZ             R0, loc_1C9AEC
1C9AAA:  LDR             R0, [R7,#arg_0]
1C9AAC:  MOVS            R5, #0
1C9AAE:  ADD.W           LR, R0, R12,LSL#4
1C9AB2:  LDR.W           R0, [LR,R5,LSL#2]
1C9AB6:  CBZ             R0, loc_1C9AE2
1C9AB8:  LDR.W           R0, [R9,R12,LSL#2]
1C9ABC:  LSLS            R2, R5, #3
1C9ABE:  CMP             R3, #0
1C9AC0:  LSR.W           R0, R0, R2
1C9AC4:  BEQ             loc_1C9AD8
1C9AC6:  MOVS            R2, #0
1C9AC8:  LDRB            R4, [R1,R2]
1C9ACA:  UXTB            R6, R0
1C9ACC:  CMP             R4, R6
1C9ACE:  BEQ             loc_1C9AE2
1C9AD0:  ADDS            R2, #1
1C9AD2:  CMP             R2, R3
1C9AD4:  BCC             loc_1C9AC8
1C9AD6:  B               loc_1C9ADA
1C9AD8:  MOVS            R3, #0
1C9ADA:  ADD.W           R10, R10, #1
1C9ADE:  STRB            R0, [R1,R3]
1C9AE0:  MOV             R3, R10
1C9AE2:  ADDS            R5, #1
1C9AE4:  MOV             R0, R11
1C9AE6:  CMP             R5, R11
1C9AE8:  BCC             loc_1C9AB2
1C9AEA:  B               loc_1C9AEE
1C9AEC:  MOVS            R0, #0
1C9AEE:  LDR             R5, [SP,#0x128+var_124]
1C9AF0:  ADD.W           R12, R12, #1
1C9AF4:  CMP             R12, R5
1C9AF6:  BNE             loc_1C9AA8
1C9AF8:  LDR             R0, =(RwEngineInstance_ptr - 0x1C9B06)
1C9AFA:  MOVS            R1, #0xF
1C9AFC:  LDR             R6, [SP,#0x128+var_128]
1C9AFE:  ADD.W           R2, R5, R5,LSL#2
1C9B02:  ADD             R0, PC; RwEngineInstance_ptr
1C9B04:  LDR             R0, [R0]; RwEngineInstance
1C9B06:  ORR.W           R1, R1, R6,LSL#6
1C9B0A:  ADD.W           R1, R1, R2,LSL#2
1C9B0E:  ADD.W           R11, R1, R10
1C9B12:  LDR             R0, [R0]
1C9B14:  LDR.W           R2, [R0,#0x12C]
1C9B18:  MOV             R0, R11
1C9B1A:  BLX             R2
1C9B1C:  CMP             R0, #0
1C9B1E:  STR.W           R0, [R8,#0x38]
1C9B22:  BEQ             loc_1C9BDC
1C9B24:  MOV             R1, R11
1C9B26:  LDR             R4, [R7,#arg_8]
1C9B28:  BLX             j___aeabi_memclr8_0
1C9B2C:  LDR.W           R0, [R8,#0x38]; void *
1C9B30:  CMP.W           R10, #0
1C9B34:  STRD.W          R6, R10, [R8]
1C9B38:  ADD.W           R1, R0, R10
1C9B3C:  ADD.W           R1, R1, #0xF
1C9B40:  BIC.W           R1, R1, #0xF
1C9B44:  STRD.W          R0, R1, [R8,#8]
1C9B48:  ADD.W           R1, R1, R6,LSL#6
1C9B4C:  ADD.W           R2, R1, R5,LSL#2
1C9B50:  STRD.W          R1, R2, [R8,#0x14]
1C9B54:  ITTT NE
1C9B56:  ADDNE.W         R1, SP, #0x128+var_120; void *
1C9B5A:  MOVNE           R2, R10; size_t
1C9B5C:  BLXNE           memcpy_1
1C9B60:  CMP             R4, #0
1C9B62:  ITT NE
1C9B64:  LDRNE.W         R0, [R8]
1C9B68:  CMPNE           R0, #0
1C9B6A:  BEQ             loc_1C9BB8
1C9B6C:  MOV             R1, #0xFFFFFFC0
1C9B70:  ADD.W           R1, R1, R0,LSL#6
1C9B74:  ADDS            R2, R4, R1
1C9B76:  LDR.W           R6, [R8,#0xC]
1C9B7A:  ADD.W           R5, R2, #0x20 ; ' '
1C9B7E:  SUBS            R0, #1
1C9B80:  MOV             R3, R2
1C9B82:  ADD.W           R2, R2, #0x30 ; '0'
1C9B86:  VLD1.32         {D16-D17}, [R3]!
1C9B8A:  VLD1.32         {D22-D23}, [R2]
1C9B8E:  ADD.W           R2, R6, R1
1C9B92:  SUB.W           R1, R1, #0x40 ; '@'
1C9B96:  VLD1.32         {D20-D21}, [R3]
1C9B9A:  ADD.W           R3, R2, #0x30 ; '0'
1C9B9E:  VLD1.32         {D18-D19}, [R5]
1C9BA2:  VST1.32         {D22-D23}, [R3]
1C9BA6:  ADD.W           R3, R2, #0x20 ; ' '
1C9BAA:  VST1.32         {D18-D19}, [R3]
1C9BAE:  VST1.32         {D16-D17}, [R2]!
1C9BB2:  VST1.32         {D20-D21}, [R2]
1C9BB6:  BNE             loc_1C9B74
1C9BB8:  LDR             R4, [SP,#0x128+var_124]
1C9BBA:  CMP.W           R9, #0
1C9BBE:  BEQ             loc_1C9BCC
1C9BC0:  LDR.W           R0, [R8,#0x14]; void *
1C9BC4:  LSLS            R2, R4, #2; size_t
1C9BC6:  MOV             R1, R9; void *
1C9BC8:  BLX             memcpy_0
1C9BCC:  LDR             R1, [R7,#arg_0]; void *
1C9BCE:  CBZ             R1, loc_1C9BF8
1C9BD0:  LDR.W           R0, [R8,#0x18]; void *
1C9BD4:  LSLS            R2, R4, #4; size_t
1C9BD6:  BLX             memcpy_0
1C9BDA:  B               loc_1C9BF8
1C9BDC:  LDR             R0, =(RwEngineInstance_ptr - 0x1C9BE4)
1C9BDE:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C9BE6)
1C9BE0:  ADD             R0, PC; RwEngineInstance_ptr
1C9BE2:  ADD             R1, PC; _rpSkinGlobals_ptr
1C9BE4:  LDR             R0, [R0]; RwEngineInstance
1C9BE6:  LDR             R1, [R1]; _rpSkinGlobals
1C9BE8:  LDR             R2, [R0]
1C9BEA:  LDR             R0, [R1,#(dword_6B728C - 0x6B7274)]
1C9BEC:  MOV             R1, R8
1C9BEE:  LDR.W           R2, [R2,#0x140]
1C9BF2:  BLX             R2
1C9BF4:  MOV.W           R8, #0
1C9BF8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C9C00)
1C9BFA:  LDR             R1, [SP,#0x128+var_20]
1C9BFC:  ADD             R0, PC; __stack_chk_guard_ptr
1C9BFE:  LDR             R0, [R0]; __stack_chk_guard
1C9C00:  LDR             R0, [R0]
1C9C02:  SUBS            R0, R0, R1
1C9C04:  ITTTT EQ
1C9C06:  MOVEQ           R0, R8
1C9C08:  ADDEQ           SP, SP, #0x10C
1C9C0A:  POPEQ.W         {R8-R11}
1C9C0E:  POPEQ           {R4-R7,PC}
1C9C10:  BLX             __stack_chk_fail
