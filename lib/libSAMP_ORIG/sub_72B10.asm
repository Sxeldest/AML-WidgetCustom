; =========================================================
; Game Engine Function: sub_72B10
; Address            : 0x72B10 - 0x72D76
; =========================================================

72B10:  PUSH            {R4-R7,LR}
72B12:  ADD             R7, SP, #0xC
72B14:  PUSH.W          {R8-R11}
72B18:  SUB             SP, SP, #4
72B1A:  VPUSH           {D8-D11}
72B1E:  SUB             SP, SP, #0x38
72B20:  MOV             R5, R0
72B22:  LDR             R0, =(off_114AA8 - 0x72B2A)
72B24:  MOV             R8, R1
72B26:  ADD             R0, PC; off_114AA8
72B28:  LDR             R1, [R0]; dword_1A4404
72B2A:  LDR             R0, =(__stack_chk_guard_ptr - 0x72B30)
72B2C:  ADD             R0, PC; __stack_chk_guard_ptr
72B2E:  LDR             R0, [R0]; __stack_chk_guard
72B30:  LDR             R0, [R0]
72B32:  STR             R0, [SP,#0x78+var_44]
72B34:  LDR             R0, [R1]
72B36:  STR             R1, [SP,#0x78+var_60]
72B38:  MOV             R1, #0xA7C344
72B40:  ADD             R0, R1
72B42:  LDR             R2, [R5,#0x24]
72B44:  VLDR            S16, [R0]
72B48:  VLDR            S18, [R0,#4]
72B4C:  CBZ             R2, loc_72B58
72B4E:  LDR.W           R0, [R8,#0x10]
72B52:  LDR             R1, [R5,#0x28]
72B54:  CMP             R1, R0
72B56:  BGE             loc_72BA8
72B58:  LDR             R1, =(aSampOrig - 0x72B62); "SAMP_ORIG" ...
72B5A:  MOVS            R0, #4; prio
72B5C:  LDR             R2, =(aImguiwrapperCh - 0x72B64); "ImGuiWrapper::checkVertexBuffer" ...
72B5E:  ADD             R1, PC; "SAMP_ORIG"
72B60:  ADD             R2, PC; "ImGuiWrapper::checkVertexBuffer"
72B62:  BLX             __android_log_print
72B66:  LDR             R0, [R5,#0x24]; void *
72B68:  CBZ             R0, loc_72B72
72B6A:  BLX             j__ZdlPv; operator delete(void *)
72B6E:  MOVS            R0, #0
72B70:  STR             R0, [R5,#0x24]
72B72:  LDR.W           R0, [R8,#0x10]
72B76:  MOVW            R1, #0x2710
72B7A:  ADDS            R4, R0, R1
72B7C:  MOVS            R0, #0x1C
72B7E:  STR             R4, [R5,#0x28]
72B80:  UMULL.W         R0, R1, R4, R0
72B84:  CMP             R1, #0
72B86:  IT NE
72B88:  MOVNE           R1, #1
72B8A:  CMP             R1, #0
72B8C:  IT NE
72B8E:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
72B92:  BLX             j__Znaj; operator new[](uint)
72B96:  LDR             R1, =(aSampOrig - 0x72BA0); "SAMP_ORIG" ...
72B98:  MOV             R3, R4
72B9A:  LDR             R2, =(aVertexBufferRe - 0x72BA4); "Vertex buffer reallocated. Size %d" ...
72B9C:  ADD             R1, PC; "SAMP_ORIG"
72B9E:  STR             R0, [R5,#0x24]
72BA0:  ADD             R2, PC; "Vertex buffer reallocated. Size %d"
72BA2:  MOVS            R0, #4; prio
72BA4:  BLX             __android_log_print
72BA8:  STR             R5, [SP,#0x78+var_68]
72BAA:  MOVS            R1, #0
72BAC:  LDR             R0, =(off_114AFC - 0x72BB2)
72BAE:  ADD             R0, PC; off_114AFC
72BB0:  LDR             R4, [R0]; off_117608
72BB2:  MOVS            R0, #6
72BB4:  LDR             R2, [R4]
72BB6:  BLX             R2
72BB8:  LDR             R2, [R4]
72BBA:  MOVS            R0, #8
72BBC:  MOVS            R1, #0
72BBE:  BLX             R2
72BC0:  LDR             R2, [R4]
72BC2:  MOVS            R0, #0xC
72BC4:  MOVS            R1, #1
72BC6:  BLX             R2
72BC8:  LDR             R2, [R4]
72BCA:  MOVS            R0, #0xA
72BCC:  MOVS            R1, #5
72BCE:  BLX             R2
72BD0:  LDR             R2, [R4]
72BD2:  MOVS            R0, #0xB
72BD4:  MOVS            R1, #6
72BD6:  BLX             R2
72BD8:  LDR             R2, [R4]
72BDA:  MOVS            R0, #0xE
72BDC:  MOVS            R1, #0
72BDE:  BLX             R2
72BE0:  LDR             R2, [R4]
72BE2:  MOVS            R0, #0x14
72BE4:  MOVS            R1, #1
72BE6:  BLX             R2
72BE8:  LDR             R2, [R4]
72BEA:  MOVS            R0, #0xD
72BEC:  MOVS            R1, #0
72BEE:  BLX             R2
72BF0:  LDR             R2, [R4]
72BF2:  MOVS            R0, #0x1D
72BF4:  MOVS            R1, #5
72BF6:  BLX             R2
72BF8:  LDR             R2, [R4]
72BFA:  MOVS            R0, #0x1E
72BFC:  MOVS            R1, #2
72BFE:  BLX             R2
72C00:  LDR             R2, [R4]
72C02:  MOVS            R0, #9
72C04:  MOVS            R1, #2
72C06:  BLX             R2
72C08:  LDR             R2, [R4]
72C0A:  MOVS            R0, #2
72C0C:  MOVS            R1, #3
72C0E:  STR             R4, [SP,#0x78+var_6C]
72C10:  BLX             R2
72C12:  LDR.W           R0, [R8,#8]
72C16:  CMP             R0, #1
72C18:  BLT.W           loc_72D54
72C1C:  MOVS            R1, #0
72C1E:  VMOV.I32        Q5, #0
72C22:  STR             R1, [SP,#0x78+var_64]
72C24:  MOVS            R4, #0
72C26:  LDR             R1, [SP,#0x78+var_68]
72C28:  STR.W           R8, [SP,#0x78+var_74]
72C2C:  LDR.W           R11, [R1,#0x24]
72C30:  B               loc_72C4C
72C32:  LDR.W           R8, [SP,#0x78+var_74]
72C36:  LDR             R1, [R4,#0x18]
72C38:  LDR             R4, [SP,#0x78+var_70]
72C3A:  LDR.W           R0, [R8,#8]
72C3E:  LDR             R2, [SP,#0x78+var_64]
72C40:  ADDS            R4, #1
72C42:  CMP             R4, R0
72C44:  ADD             R2, R1
72C46:  STR             R2, [SP,#0x78+var_64]
72C48:  BGE.W           loc_72D54
72C4C:  LDR.W           R1, [R8,#4]
72C50:  LDR.W           R2, [R1,R4,LSL#2]
72C54:  STR             R2, [SP,#0x78+var_5C]
72C56:  LDR             R1, [R2,#0x18]
72C58:  CMP             R1, #1
72C5A:  BLT             loc_72C92
72C5C:  LDR             R2, [R2,#0x20]
72C5E:  MOV             R3, R1
72C60:  LDR             R6, [R2]
72C62:  SUBS            R3, #1
72C64:  LDR             R5, [R2,#0x10]
72C66:  STR.W           R6, [R11]
72C6A:  LDR             R6, [R2,#4]
72C6C:  VSTR            S18, [R11,#8]
72C70:  VSTR            S16, [R11,#0xC]
72C74:  STR.W           R5, [R11,#0x10]
72C78:  STR.W           R6, [R11,#4]
72C7C:  LDR             R6, [R2,#8]
72C7E:  STR.W           R6, [R11,#0x14]
72C82:  LDR             R6, [R2,#0xC]
72C84:  ADD.W           R2, R2, #0x14
72C88:  STR.W           R6, [R11,#0x18]
72C8C:  ADD.W           R11, R11, #0x1C
72C90:  BNE             loc_72C60
72C92:  LDR             R3, [SP,#0x78+var_5C]
72C94:  LDR             R2, [R3]
72C96:  CMP             R2, #1
72C98:  BLT             loc_72C3E
72C9A:  LDR             R5, [R3,#0x14]
72C9C:  MOV.W           R8, #0
72CA0:  STR             R4, [SP,#0x78+var_70]
72CA2:  MOV.W           R9, #0
72CA6:  MOV             R4, R3
72CA8:  B               loc_72D3E
72CAA:  ADD             R2, SP, #0x78+var_58
72CAC:  MOVS            R1, #4
72CAE:  MOV             R0, R2
72CB0:  VST1.64         {D10-D11}, [R0],R1
72CB4:  LDR             R1, [R6,#4]
72CB6:  STR             R1, [SP,#0x78+var_58]
72CB8:  LDR             R1, [R6,#0x10]
72CBA:  STR             R1, [R0]
72CBC:  LDR             R1, [SP,#0x78+var_60]
72CBE:  LDR             R0, [R6,#0xC]
72CC0:  STR             R0, [SP,#0x78+var_50]
72CC2:  LDR             R0, [R6,#8]
72CC4:  LDR             R1, [R1]
72CC6:  STR             R0, [SP,#0x78+var_4C]
72CC8:  MOV             R0, #0x2B3E55
72CD0:  ADD             R1, R0
72CD2:  MOV             R0, R2
72CD4:  BLX             R1
72CD6:  LDR             R4, [SP,#0x78+var_6C]
72CD8:  MOVS            R0, #1
72CDA:  LDR             R1, [R6,#0x14]
72CDC:  LDR             R2, [R4]
72CDE:  BLX             R2
72CE0:  LDR             R0, =(off_114B00 - 0x72CEC)
72CE2:  MOV             R3, R5
72CE4:  LDR.W           R1, [R10,R8]
72CE8:  ADD             R0, PC; off_114B00
72CEA:  LDR             R0, [R0]; off_117618
72CEC:  LDR             R6, [R0]
72CEE:  LDR             R0, [SP,#0x78+var_5C]
72CF0:  LDR             R2, [R0,#0x18]
72CF2:  LDR             R0, [SP,#0x78+var_68]
72CF4:  LDR             R0, [R0,#0x24]
72CF6:  STR             R1, [SP,#0x78+var_78]
72CF8:  LDR             R1, [SP,#0x78+var_64]
72CFA:  RSB.W           R1, R1, R1,LSL#3
72CFE:  ADD.W           R1, R0, R1,LSL#2
72D02:  MOVS            R0, #3
72D04:  BLX             R6
72D06:  LDR             R2, [R4]
72D08:  MOVS            R0, #1
72D0A:  MOVS            R1, #0
72D0C:  LDR             R4, [SP,#0x78+var_5C]
72D0E:  BLX             R2
72D10:  LDR             R0, [SP,#0x78+var_60]
72D12:  MOV             R2, #0x2B3E55
72D1A:  LDR             R1, [R0]
72D1C:  ADD             R0, SP, #0x78+var_58
72D1E:  ADD             R1, R2
72D20:  VST1.64         {D10-D11}, [R0]
72D24:  BLX             R1
72D26:  LDR.W           R0, [R10,R8]
72D2A:  ADD.W           R8, R8, #0x28 ; '('
72D2E:  LDR             R1, [R4]
72D30:  ADD.W           R9, R9, #1
72D34:  CMP             R9, R1
72D36:  ADD.W           R5, R5, R0,LSL#1
72D3A:  BGE.W           loc_72C32
72D3E:  LDR.W           R10, [R4,#8]
72D42:  ADD.W           R6, R10, R8
72D46:  LDR             R2, [R6,#0x20]
72D48:  CMP             R2, #0
72D4A:  BEQ             loc_72CAA
72D4C:  MOV             R0, R4
72D4E:  MOV             R1, R6
72D50:  BLX             R2
72D52:  B               loc_72D26
72D54:  LDR             R0, [SP,#0x78+var_44]
72D56:  LDR             R1, =(__stack_chk_guard_ptr - 0x72D5C)
72D58:  ADD             R1, PC; __stack_chk_guard_ptr
72D5A:  LDR             R1, [R1]; __stack_chk_guard
72D5C:  LDR             R1, [R1]
72D5E:  CMP             R1, R0
72D60:  ITTTT EQ
72D62:  ADDEQ           SP, SP, #0x38 ; '8'
72D64:  VPOPEQ          {D8-D11}
72D68:  ADDEQ           SP, SP, #4
72D6A:  POPEQ.W         {R8-R11}
72D6E:  IT EQ
72D70:  POPEQ           {R4-R7,PC}
72D72:  BLX             __stack_chk_fail
