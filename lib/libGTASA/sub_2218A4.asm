; =========================================================
; Game Engine Function: sub_2218A4
; Address            : 0x2218A4 - 0x221B4A
; =========================================================

2218A4:  PUSH            {R4-R7,LR}
2218A6:  ADD             R7, SP, #0xC
2218A8:  PUSH.W          {R8-R11}
2218AC:  SUB             SP, SP, #0x1C
2218AE:  MOV             R8, R0
2218B0:  LDR             R0, =(RwEngineInstance_ptr - 0x2218B8)
2218B2:  MOV             R4, R1
2218B4:  ADD             R0, PC; RwEngineInstance_ptr
2218B6:  LDR             R0, [R0]; RwEngineInstance
2218B8:  LDR             R0, [R0]
2218BA:  LDR             R0, [R0,#4]
2218BC:  LDR.W           R9, [R0,#8]
2218C0:  STR.W           R9, [R4,#4]
2218C4:  BLX             j__Z15emu_ArraysResetv; emu_ArraysReset(void)
2218C8:  MOVS            R0, #0
2218CA:  MOVS            R1, #3; int
2218CC:  STR             R0, [SP,#0x38+var_38]; int
2218CE:  MOVS            R0, #0; unsigned int
2218D0:  MOVW            R2, #0x1406; unsigned int
2218D4:  MOVS            R3, #0; unsigned __int8
2218D6:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2218DA:  MOVS            R0, #0xC
2218DC:  TST.W           R9, #0x80
2218E0:  STR             R0, [R4,#8]
2218E2:  UBFX.W          R10, R9, #2, #1
2218E6:  IT NE
2218E8:  MOVNE.W         R10, #2
2218EC:  ANDS.W          R5, R9, #0x10
2218F0:  BEQ             loc_221908
2218F2:  STR             R0, [SP,#0x38+var_38]; int
2218F4:  MOVS            R0, #2; unsigned int
2218F6:  MOVS            R1, #3; int
2218F8:  MOVW            R2, #0x1406; unsigned int
2218FC:  MOVS            R3, #0; unsigned __int8
2218FE:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
221902:  LDR             R0, [R4,#8]
221904:  ADDS            R0, #0xC
221906:  STR             R0, [R4,#8]
221908:  ANDS.W          R1, R9, #8
22190C:  STR             R1, [SP,#0x38+var_20]
22190E:  BEQ             loc_221926
221910:  STR             R0, [SP,#0x38+var_38]; int
221912:  MOVS            R0, #3; unsigned int
221914:  MOVS            R1, #4; int
221916:  MOVW            R2, #0x1406; unsigned int
22191A:  MOVS            R3, #1; unsigned __int8
22191C:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
221920:  LDR             R0, [R4,#8]
221922:  ADDS            R0, #4
221924:  STR             R0, [R4,#8]
221926:  CMP.W           R10, #0
22192A:  BEQ             loc_22193E
22192C:  STR             R0, [SP,#0x38+var_38]; int
22192E:  MOVS            R0, #1; unsigned int
221930:  MOVS            R1, #2; int
221932:  MOVW            R2, #0x1406; unsigned int
221936:  MOVS            R3, #0; unsigned __int8
221938:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
22193C:  LDR             R0, [R4,#8]
22193E:  LDR             R6, [R4,#0xC]
221940:  ADD.W           R1, R0, R10,LSL#3
221944:  STR             R1, [R4,#8]
221946:  MUL.W           R0, R6, R1; byte_count
22194A:  STR             R0, [R4,#0x10]
22194C:  BLX             malloc
221950:  MOV             R12, R0
221952:  CBZ             R6, loc_22197C
221954:  LDR             R0, [R4,#0x18]
221956:  LDR.W           R1, [R8,#8]
22195A:  ADD.W           R0, R0, R0,LSL#1
22195E:  ADD.W           R0, R1, R0,LSL#2
221962:  MOV             R1, R12
221964:  VLDR            D16, [R0]
221968:  SUBS            R6, #1
22196A:  LDR             R2, [R0,#8]
22196C:  ADD.W           R0, R0, #0xC
221970:  STR             R2, [R1,#8]
221972:  VSTR            D16, [R1]
221976:  LDR             R2, [R4,#8]
221978:  ADD             R1, R2
22197A:  BNE             loc_221964
22197C:  CBNZ            R5, loc_221984
22197E:  MOV.W           R11, #0xC
221982:  B               loc_2219E6
221984:  LDR             R0, [R4,#0xC]
221986:  CBZ             R0, loc_2219E2
221988:  LDR             R1, [R4,#0x18]
22198A:  LDR.W           R2, [R8,#0xC]
22198E:  VLDR            S0, =0.0078125
221992:  ADD.W           R1, R2, R1,LSL#2
221996:  ADD.W           R2, R12, #0xC
22199A:  LDRSB.W         R3, [R1]
22199E:  SUBS            R0, #1
2219A0:  VMOV            S2, R3
2219A4:  VCVT.F32.S32    S2, S2
2219A8:  VMUL.F32        S2, S2, S0
2219AC:  VSTR            S2, [R2]
2219B0:  LDRSB.W         R3, [R1,#1]
2219B4:  VMOV            S2, R3
2219B8:  VCVT.F32.S32    S2, S2
2219BC:  VMUL.F32        S2, S2, S0
2219C0:  VSTR            S2, [R2,#4]
2219C4:  LDRSB.W         R3, [R1,#2]
2219C8:  ADD.W           R1, R1, #4
2219CC:  VMOV            S2, R3
2219D0:  VCVT.F32.S32    S2, S2
2219D4:  VMUL.F32        S2, S2, S0
2219D8:  VSTR            S2, [R2,#8]
2219DC:  LDR             R3, [R4,#8]
2219DE:  ADD             R2, R3
2219E0:  BNE             loc_22199A
2219E2:  MOV.W           R11, #0x18
2219E6:  LDR             R0, [SP,#0x38+var_20]
2219E8:  CBNZ            R0, loc_2219F6
2219EA:  MOVS            R1, #0
2219EC:  STR             R1, [R4,#0x34]
2219EE:  CMP.W           R10, #0
2219F2:  BNE             loc_221AE6
2219F4:  B               loc_221B18
2219F6:  LDR             R2, [R4,#0x18]
2219F8:  ADD.W           LR, R12, R11
2219FC:  LDR.W           R3, [R8,#0x30]
221A00:  LDR             R5, [R4,#0xC]
221A02:  ADD.W           R6, R3, R2,LSL#2
221A06:  MOVS.W          R2, R9,LSL#25
221A0A:  BPL             loc_221AB0
221A0C:  LDR             R1, [R4,#0x30]
221A0E:  LDR             R0, [R1,#4]
221A10:  ADDS            R2, R0, #1
221A12:  BEQ             loc_221AB0
221A14:  CMP             R5, #0
221A16:  BEQ             loc_221ACE
221A18:  ADDS            R6, #1
221A1A:  MOVS            R2, #0xFF
221A1C:  STRD.W          R12, R10, [SP,#0x38+var_34]
221A20:  STR             R0, [SP,#0x38+var_28]
221A22:  RSB.W           R0, R5, #1
221A26:  STR.W           R8, [SP,#0x38+var_2C]
221A2A:  STR             R0, [SP,#0x38+var_24]
221A2C:  B               loc_221A3C
221A2E:  LDR             R3, [R4,#8]
221A30:  ADDS            R6, #4
221A32:  ADDS            R0, #1
221A34:  ADD             LR, R3
221A36:  LDRB            R3, [R1,#4]
221A38:  STR             R3, [SP,#0x38+var_28]
221A3A:  STR             R0, [SP,#0x38+var_24]
221A3C:  LDRB            R0, [R1,#5]
221A3E:  STR             R0, [SP,#0x38+var_20]
221A40:  LDRB.W          R8, [R1,#7]
221A44:  LDRB            R3, [R1,#6]
221A46:  LDRB.W          R10, [R6,#2]
221A4A:  ADD.W           R5, R8, #1
221A4E:  LDRB.W          R9, [R6,#1]
221A52:  ADDS            R3, #1
221A54:  LDR.W           R12, [SP,#0x38+var_28]
221A58:  SMULBB.W        R10, R10, R5
221A5C:  MOVS            R5, #1
221A5E:  LDRB.W          R0, [R6,#-1]
221A62:  SMULBB.W        R9, R9, R3
221A66:  UXTAB.W         R5, R5, R12
221A6A:  LDR             R3, [SP,#0x38+var_20]
221A6C:  LDRB.W          R8, [R6]
221A70:  SMULBB.W        R0, R5, R0
221A74:  ADDS            R5, R3, #1
221A76:  MOV.W           R3, #0xFF000000
221A7A:  SMULBB.W        R12, R5, R8
221A7E:  MOV.W           R5, R9,LSL#8
221A82:  AND.W           R3, R3, R10,LSL#16
221A86:  UXTB16.W        R5, R5
221A8A:  ORRS            R3, R5
221A8C:  AND.W           R5, R12, #0xFF00
221A90:  ORRS            R3, R5
221A92:  UBFX.W          R5, R0, #8, #8
221A96:  ORRS            R3, R5
221A98:  STR.W           R3, [LR]
221A9C:  LDRB            R3, [R6,#2]
221A9E:  LDR             R0, [SP,#0x38+var_24]
221AA0:  ANDS            R2, R3
221AA2:  CMP             R0, #0
221AA4:  BNE             loc_221A2E
221AA6:  LDR.W           R8, [SP,#0x38+var_2C]
221AAA:  LDRD.W          R12, R10, [SP,#0x38+var_34]
221AAE:  B               loc_221AD0
221AB0:  MOVS            R2, #0xFF
221AB2:  CBZ             R5, loc_221AD0
221AB4:  LDR             R3, [R6]
221AB6:  SUBS            R5, #1
221AB8:  STR.W           R3, [LR]
221ABC:  LDRB            R1, [R6,#3]
221ABE:  ADD.W           R6, R6, #4
221AC2:  LDR             R3, [R4,#8]
221AC4:  AND.W           R2, R2, R1
221AC8:  ADD             LR, R3
221ACA:  BNE             loc_221AB4
221ACC:  B               loc_221AD0
221ACE:  MOVS            R2, #0xFF
221AD0:  UXTB            R1, R2
221AD2:  MOVS            R2, #0
221AD4:  CMP             R1, #0xFF
221AD6:  ADD.W           R11, R11, #4
221ADA:  IT NE
221ADC:  MOVNE           R2, #1
221ADE:  STR             R2, [R4,#0x34]
221AE0:  CMP.W           R10, #0
221AE4:  BEQ             loc_221B18
221AE6:  MOVS            R1, #0
221AE8:  LDR             R2, [R4,#0xC]
221AEA:  CBZ             R2, loc_221B0E
221AEC:  ADD.W           R3, R8, R1,LSL#2
221AF0:  LDR             R6, [R4,#0x18]
221AF2:  LDR             R5, [R3,#0x10]
221AF4:  ADD.W           R3, R12, R11
221AF8:  ADD.W           R6, R5, R6,LSL#3
221AFC:  LDRD.W          R5, R0, [R6]
221B00:  ADDS            R6, #8
221B02:  STRD.W          R5, R0, [R3]
221B06:  SUBS            R2, #1
221B08:  LDR             R0, [R4,#8]
221B0A:  ADD             R3, R0
221B0C:  BNE             loc_221AFC
221B0E:  ADDS            R1, #1
221B10:  ADD.W           R11, R11, #8
221B14:  CMP             R1, R10
221B16:  BNE             loc_221AE8
221B18:  LDR             R0, [R4,#0x2C]; void *
221B1A:  CBZ             R0, loc_221B2A
221B1C:  LDR             R2, [R4,#0x28]; unsigned int
221B1E:  MOVW            R1, #0x1403; unsigned int
221B22:  MOV             R5, R12
221B24:  BLX             j__Z17emu_ArraysIndicesPvjj; emu_ArraysIndices(void *,uint,uint)
221B28:  MOV             R12, R5
221B2A:  LDRD.W          R3, R2, [R4,#8]; unsigned int
221B2E:  MOV             R0, R12; void *
221B30:  LDR             R1, [R4,#0x10]; size_t
221B32:  BLX             j__Z16emu_ArraysVertexPvjjj; emu_ArraysVertex(void *,uint,uint,uint)
221B36:  MOVS            R0, #0; unsigned __int8
221B38:  MOVS            R1, #1; unsigned __int8
221B3A:  BLX             j__Z15emu_ArraysStorehh; emu_ArraysStore(uchar,uchar)
221B3E:  STR             R0, [R4,#0x14]
221B40:  MOVS            R0, #1
221B42:  ADD             SP, SP, #0x1C
221B44:  POP.W           {R8-R11}
221B48:  POP             {R4-R7,PC}
