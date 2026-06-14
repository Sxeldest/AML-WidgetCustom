; =========================================================
; Game Engine Function: _ZN7CCamera15LoadPathSplinesEj
; Address            : 0x462BE8 - 0x462D28
; =========================================================

462BE8:  PUSH            {R4-R7,LR}
462BEA:  ADD             R7, SP, #0xC
462BEC:  PUSH.W          {R8-R11}
462BF0:  SUB             SP, SP, #4
462BF2:  MOV             R11, R0
462BF4:  MOV             R4, R1
462BF6:  LDR.W           R0, [R11,#0x8E4]; void *
462BFA:  CBZ             R0, loc_462C06
462BFC:  BLX             _ZdaPv; operator delete[](void *)
462C00:  MOVS            R0, #0
462C02:  STR.W           R0, [R11,#0x8E4]
462C06:  LDR.W           R0, [R11,#0x8E8]; void *
462C0A:  CBZ             R0, loc_462C16
462C0C:  BLX             _ZdaPv; operator delete[](void *)
462C10:  MOVS            R0, #0
462C12:  STR.W           R0, [R11,#0x8E8]
462C16:  LDR.W           R0, [R11,#0x8EC]; void *
462C1A:  CBZ             R0, loc_462C26
462C1C:  BLX             _ZdaPv; operator delete[](void *)
462C20:  MOVS            R0, #0
462C22:  STR.W           R0, [R11,#0x8EC]
462C26:  LDR.W           R0, [R11,#0x8F0]; void *
462C2A:  CBZ             R0, loc_462C36
462C2C:  BLX             _ZdaPv; operator delete[](void *)
462C30:  MOVS            R0, #0
462C32:  STR.W           R0, [R11,#0x8F0]
462C36:  MOVS            R5, #0
462C38:  MOV             R0, R4; this
462C3A:  STR             R5, [SP,#0x20+var_20]
462C3C:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
462C40:  CMP             R0, #0
462C42:  BEQ             loc_462D20
462C44:  MOV.W           R8, #1
462C48:  MOV.W           R10, #0xFFFFFFFF
462C4C:  MOV             R9, SP
462C4E:  ADR             R6, dword_462D28
462C50:  LDRB            R1, [R0]; unsigned int
462C52:  CMP             R1, #0x23 ; '#'
462C54:  IT NE
462C56:  CMPNE           R1, #0
462C58:  BNE             loc_462C66
462C5A:  MOV             R0, R4; this
462C5C:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
462C60:  CMP             R0, #0
462C62:  BNE             loc_462C50
462C64:  B               loc_462D20
462C66:  LDR             R2, [SP,#0x20+var_20]
462C68:  CBZ             R2, loc_462C98
462C6A:  SUBS            R1, R2, #1
462C6C:  STR             R1, [SP,#0x20+var_20]
462C6E:  MOV             R1, R6; char *
462C70:  BLX             strtok
462C74:  CMP             R0, #0
462C76:  BEQ             loc_462C5A
462C78:  BLX             atof
462C7C:  VMOV            D16, R0, R1
462C80:  MOVS            R0, #0; char *
462C82:  MOV             R1, R6; char *
462C84:  VCVT.F32.F64    S0, D16
462C88:  VSTR            S0, [R5]
462C8C:  BLX             strtok
462C90:  ADDS            R5, #4
462C92:  CMP             R0, #0
462C94:  BNE             loc_462C78
462C96:  B               loc_462C5A
462C98:  MOVS.W          R2, R8,LSL#31
462C9C:  BNE             loc_462CAC
462C9E:  CMP             R1, #0x3B ; ';'
462CA0:  MOV.W           R8, #0
462CA4:  IT EQ
462CA6:  MOVEQ.W         R8, #1
462CAA:  B               loc_462C5A
462CAC:  CMP.W           R10, #2
462CB0:  BGT             loc_462D20
462CB2:  ADR             R1, dword_462D2C; format
462CB4:  MOV             R2, R9
462CB6:  ADD.W           R8, R10, #1
462CBA:  BLX             sscanf
462CBE:  LDR             R5, [SP,#0x20+var_20]
462CC0:  CMP.W           R8, #0
462CC4:  MOV.W           R1, #4
462CC8:  ADD.W           R0, R5, R5,LSL#2
462CCC:  MOV.W           R0, R0,LSL#1
462CD0:  IT EQ
462CD2:  LSLEQ           R0, R5, #2
462CD4:  CMP.W           R10, #0
462CD8:  IT EQ
462CDA:  LSLEQ           R0, R5, #2
462CDC:  ORR.W           R0, R0, #1
462CE0:  UMULL.W         R0, R1, R0, R1
462CE4:  CMP             R1, #0
462CE6:  IT NE
462CE8:  MOVNE           R1, #1
462CEA:  CMP             R1, #0
462CEC:  IT NE
462CEE:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
462CF2:  BLX             _Znaj; operator new[](uint)
462CF6:  VMOV            S0, R5
462CFA:  MOV             R10, R8
462CFC:  ADD.W           R1, R11, R10,LSL#2; unsigned int
462D00:  VCVT.F32.S32    S0, S0
462D04:  STR.W           R0, [R1,#0x8E4]
462D08:  VSTR            S0, [R0]
462D0C:  LDR.W           R0, [R1,#0x8E4]
462D10:  ADDS            R5, R0, #4
462D12:  MOV             R0, R4; this
462D14:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
462D18:  MOV.W           R8, #0
462D1C:  CMP             R0, #0
462D1E:  BNE             loc_462C50
462D20:  ADD             SP, SP, #4
462D22:  POP.W           {R8-R11}
462D26:  POP             {R4-R7,PC}
