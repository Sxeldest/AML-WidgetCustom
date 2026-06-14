; =========================================================
; Game Engine Function: _ZN9CIplStore7LoadIplEiPhi
; Address            : 0x2808E8 - 0x280C74
; =========================================================

2808E8:  PUSH            {R4-R7,LR}
2808EA:  ADD             R7, SP, #0xC
2808EC:  PUSH.W          {R8-R11}
2808F0:  SUB             SP, SP, #0x3C
2808F2:  MOV             R9, R0
2808F4:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x2808FC)
2808F6:  MOV             R11, R1
2808F8:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
2808FA:  LDR             R0, [R0]; CIplStore::ms_pPool ...
2808FC:  LDR             R0, [R0]; CIplStore::ms_pPool
2808FE:  STRD.W          R2, R11, [SP,#0x58+var_24]
280902:  LDR             R1, [R0,#4]
280904:  LDRSB.W         R1, [R1,R9]
280908:  CMP             R1, #0
28090A:  BLT             loc_280916
28090C:  MOVS            R1, #0x34 ; '4'
28090E:  LDR             R0, [R0]
280910:  MLA.W           R4, R9, R1, R0
280914:  B               loc_280918
280916:  MOVS            R4, #0
280918:  VLDR            S0, [R4]
28091C:  VLDR            S2, [R4,#8]
280920:  VCMPE.F32       S0, S2
280924:  VMRS            APSR_nzcv, FPSCR
280928:  BGT             loc_28093C
28092A:  VLDR            S0, [R4,#4]
28092E:  VLDR            S2, [R4,#0xC]
280932:  VCMPE.F32       S2, S0
280936:  VMRS            APSR_nzcv, FPSCR
28093A:  BLE             loc_2809E2
28093C:  MOV             R0, R9; this
28093E:  MOV             R1, R11; char *
280940:  BLX             j__ZN9CIplStore18LoadIplBoundingBoxEiPhi; CIplStore::LoadIplBoundingBox(int,uchar *,int)
280944:  LDRB.W          R0, [R4,#0x31]
280948:  ADR             R1, dword_280C98
28094A:  VLDR            S0, [R4]
28094E:  ADD.W           LR, R4, #0x18
280952:  CMP             R0, #0
280954:  VLDR            S2, [R4,#4]
280958:  VLDR            S4, [R4,#8]
28095C:  ADD.W           R11, R4, #0x24 ; '$'
280960:  VLDR            S6, [R4,#0xC]
280964:  IT EQ
280966:  ADDEQ           R1, #4
280968:  VLDR            S8, [R1]
28096C:  LDRD.W          R0, R6, [R4,#0x10]
280970:  VADD.F32        S4, S8, S4
280974:  LDM.W           LR, {R5,R12,LR}
280978:  VADD.F32        S2, S8, S2
28097C:  VSUB.F32        S0, S0, S8
280980:  LDM.W           R11, {R8,R10,R11}
280984:  VSUB.F32        S6, S6, S8
280988:  LDR             R1, [R4,#0x30]
28098A:  VMOV            R3, S4
28098E:  VMOV            R2, S2
280992:  VSTR            S0, [R4]
280996:  VSTR            S2, [R4,#4]
28099A:  VSTR            S4, [R4,#8]
28099E:  VSTR            S6, [R4,#0xC]
2809A2:  STR             R1, [SP,#0x58+var_34]
2809A4:  VMOV            R1, S0
2809A8:  STRD.W          R0, R6, [SP,#0x58+var_54]
2809AC:  ADD             R0, SP, #0x58+var_4C
2809AE:  STM.W           R0, {R5,R12,LR}
2809B2:  ADD             R0, SP, #0x58+var_40
2809B4:  STM.W           R0, {R8,R10,R11}
2809B8:  MOV             R0, R9
2809BA:  VSTR            S6, [SP,#0x58+var_58]
2809BE:  BLX             j__ZN9CColAccel9setIplDefEi6IplDef; CColAccel::setIplDef(int,IplDef)
2809C2:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x2809CC)
2809C4:  MOV             R1, R4
2809C6:  MOV             R2, R4
2809C8:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
2809CA:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
2809CC:  LDR             R0, [R0]; CIplStore::ms_pQuadTree
2809CE:  BLX             j__ZN13CQuadTreeNode7AddItemEPvRK5CRect; CQuadTreeNode::AddItem(void *,CRect const&)
2809D2:  MOVS            R0, #1
2809D4:  STRB.W          R0, [R4,#0x2D]
2809D8:  MOVS            R0, #1
2809DA:  ADD             SP, SP, #0x3C ; '<'
2809DC:  POP.W           {R8-R11}
2809E0:  POP             {R4-R7,PC}
2809E2:  LDRSH.W         R0, [R4,#0x2A]
2809E6:  ADDS            R1, R0, #1
2809E8:  BEQ             loc_2809F4
2809EA:  LDR             R1, =(unk_6DFDA8 - 0x2809F0)
2809EC:  ADD             R1, PC; unk_6DFDA8
2809EE:  LDR.W           R0, [R1,R0,LSL#2]
2809F2:  B               loc_2809F6
2809F4:  MOVS            R0, #0
2809F6:  LDR             R1, =(aBnry - 0x280A02); "bnry"
2809F8:  MOVS            R2, #4; size_t
2809FA:  STR             R0, [SP,#0x58+var_28]
2809FC:  MOV             R0, R11; char *
2809FE:  ADD             R1, PC; "bnry"
280A00:  BLX             strncmp
280A04:  CMP             R0, #0
280A06:  BEQ.W           loc_280B3E
280A0A:  ADD             R0, SP, #0x58+var_20; this
280A0C:  ADD             R1, SP, #0x58+var_24; unsigned __int8 **
280A0E:  BLX             j__ZN11CFileLoader8LoadLineEPPhRi; CFileLoader::LoadLine(uchar **,int &)
280A12:  CMP             R0, #0
280A14:  BEQ             loc_2809D2
280A16:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280A26)
280A18:  ADD.W           R8, SP, #0x58+var_20
280A1C:  ADD             R6, SP, #0x58+var_24
280A1E:  MOV.W           R10, #0
280A22:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
280A24:  MOVS            R5, #0
280A26:  LDR.W           R11, [R1]; CIplStore::ms_pPool ...
280A2A:  LDR             R1, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x280A30)
280A2C:  ADD             R1, PC; _ZN6CPools13ms_pDummyPoolE_ptr
280A2E:  LDR             R1, [R1]; CPools::ms_pDummyPool ...
280A30:  STR             R1, [SP,#0x58+var_2C]
280A32:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x280A38)
280A34:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
280A36:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
280A38:  STR             R1, [SP,#0x58+var_30]
280A3A:  B               loc_280ACE
280A3C:  STR.W           R10, [R5,#0x34]
280A40:  LDR             R0, [R5]
280A42:  LDR             R1, [R0,#8]
280A44:  MOV             R0, R5
280A46:  BLX             R1
280A48:  LDR.W           R0, [R11]; CIplStore::ms_pPool
280A4C:  LDR             R1, [R0,#4]
280A4E:  LDRSB.W         R1, [R1,R9]
280A52:  CMP             R1, #0
280A54:  BLT             loc_280A60
280A56:  LDR             R0, [R0]
280A58:  MOVS            R1, #0x34 ; '4'
280A5A:  MLA.W           R0, R9, R1, R0
280A5E:  B               loc_280A62
280A60:  MOVS            R0, #0
280A62:  LDRB.W          R1, [R5,#0x3A]
280A66:  AND.W           R1, R1, #7
280A6A:  CMP             R1, #5
280A6C:  BEQ             loc_280A9E
280A6E:  CMP             R1, #1
280A70:  BNE             loc_280ACA
280A72:  LDR             R1, [SP,#0x58+var_30]
280A74:  MOV             R2, #0xEEEEEEEF
280A7C:  LDR             R1, [R1]
280A7E:  LDR             R1, [R1]
280A80:  SUBS            R1, R5, R1
280A82:  MOVS            R5, #1
280A84:  ASRS            R1, R1, #2
280A86:  MULS            R1, R2
280A88:  LDRSH.W         R2, [R0,#0x22]
280A8C:  CMP             R1, R2
280A8E:  IT LT
280A90:  STRHLT          R1, [R0,#0x22]
280A92:  LDRSH.W         R2, [R0,#0x24]
280A96:  CMP             R1, R2
280A98:  IT GT
280A9A:  STRHGT          R1, [R0,#0x24]
280A9C:  B               loc_280B30
280A9E:  LDR             R1, [SP,#0x58+var_2C]
280AA0:  MOV             R2, #0xEEEEEEEF
280AA8:  LDR             R1, [R1]
280AAA:  LDR             R1, [R1]
280AAC:  SUBS            R1, R5, R1
280AAE:  MOVS            R5, #1
280AB0:  ASRS            R1, R1, #2
280AB2:  MULS            R1, R2
280AB4:  LDRSH.W         R2, [R0,#0x26]
280AB8:  CMP             R1, R2
280ABA:  IT LT
280ABC:  STRHLT          R1, [R0,#0x26]
280ABE:  LDRSH.W         R2, [R0,#0x28]
280AC2:  CMP             R1, R2
280AC4:  IT GT
280AC6:  STRHGT          R1, [R0,#0x28]
280AC8:  B               loc_280B30
280ACA:  MOVS            R5, #1
280ACC:  B               loc_280B30
280ACE:  LDRB            R1, [R0]
280AD0:  CMP             R1, #0
280AD2:  IT NE
280AD4:  CMPNE           R1, #0x23 ; '#'
280AD6:  BEQ             loc_280B30
280AD8:  CBZ             R5, loc_280B12
280ADA:  CMP             R1, #0x65 ; 'e'
280ADC:  BNE             loc_280AEA
280ADE:  LDRB            R1, [R0,#1]
280AE0:  CMP             R1, #0x6E ; 'n'
280AE2:  ITT EQ
280AE4:  LDRBEQ          R1, [R0,#2]; char *
280AE6:  CMPEQ           R1, #0x64 ; 'd'
280AE8:  BEQ             loc_280B2E
280AEA:  CMP             R5, #1
280AEC:  BNE             loc_280B30
280AEE:  BLX             j__ZN11CFileLoader18LoadObjectInstanceEPKc; CFileLoader::LoadObjectInstance(char const*)
280AF2:  MOV             R5, R0
280AF4:  LDR             R0, [R5,#0x34]
280AF6:  STRH.W          R9, [R5,#0x38]
280AFA:  ADDS            R1, R0, #1
280AFC:  BEQ             loc_280A3C
280AFE:  LDR             R1, [SP,#0x58+var_28]
280B00:  LDR.W           R0, [R1,R0,LSL#2]
280B04:  STR             R0, [R5,#0x34]
280B06:  LDRB.W          R1, [R0,#0x3B]
280B0A:  ADDS            R1, #1
280B0C:  STRB.W          R1, [R0,#0x3B]
280B10:  B               loc_280A40
280B12:  CMP             R1, #0x69 ; 'i'
280B14:  BNE             loc_280B2E
280B16:  LDRB            R1, [R0,#1]
280B18:  CMP             R1, #0x6E ; 'n'
280B1A:  BNE             loc_280B2E
280B1C:  LDRB            R1, [R0,#2]
280B1E:  CMP             R1, #0x73 ; 's'
280B20:  BNE             loc_280B2E
280B22:  LDRB            R0, [R0,#3]
280B24:  MOVS            R5, #0
280B26:  CMP             R0, #0x74 ; 't'
280B28:  IT EQ
280B2A:  MOVEQ           R5, #1
280B2C:  B               loc_280B30
280B2E:  MOVS            R5, #0
280B30:  MOV             R0, R8; this
280B32:  MOV             R1, R6; unsigned __int8 **
280B34:  BLX             j__ZN11CFileLoader8LoadLineEPPhRi; CFileLoader::LoadLine(uchar **,int &)
280B38:  CMP             R0, #0
280B3A:  BNE             loc_280ACE
280B3C:  B               loc_2809D2
280B3E:  LDRSH.W         R0, [R11,#4]
280B42:  CMP             R0, #1
280B44:  BLT             loc_280C32
280B46:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280B56)
280B48:  MOVS            R6, #1
280B4A:  LDR.W           R0, [R11,#0x1C]
280B4E:  MOV.W           R10, #0
280B52:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
280B54:  ADD             R0, R11
280B56:  STR.W           R0, [R11,#0x1C]
280B5A:  LDR.W           R8, [R1]; CIplStore::ms_pPool ...
280B5E:  LDR             R1, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x280B64)
280B60:  ADD             R1, PC; _ZN6CPools13ms_pDummyPoolE_ptr
280B62:  LDR             R1, [R1]; CPools::ms_pDummyPool ...
280B64:  STR             R1, [SP,#0x58+var_2C]
280B66:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x280B6C)
280B68:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
280B6A:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
280B6C:  STR             R1, [SP,#0x58+var_30]
280B6E:  B               loc_280B7A
280B70:  ADDS            R6, #1
280B72:  LDR.W           R0, [R11,#0x1C]
280B76:  ADD.W           R10, R10, #0x28 ; '('
280B7A:  ADD             R0, R10
280B7C:  MOVS            R1, #0
280B7E:  BLX             j__ZN11CFileLoader18LoadObjectInstanceEP19CFileObjectInstancePKc; CFileLoader::LoadObjectInstance(CFileObjectInstance *,char const*)
280B82:  MOV             R5, R0
280B84:  LDR             R0, [R5,#0x34]
280B86:  STRH.W          R9, [R5,#0x38]
280B8A:  ADDS            R1, R0, #1
280B8C:  BEQ             loc_280BA2
280B8E:  LDR             R1, [SP,#0x58+var_28]
280B90:  LDR.W           R0, [R1,R0,LSL#2]
280B94:  STR             R0, [R5,#0x34]
280B96:  LDRB.W          R1, [R0,#0x3B]
280B9A:  ADDS            R1, #1
280B9C:  STRB.W          R1, [R0,#0x3B]
280BA0:  B               loc_280BA6
280BA2:  MOVS            R0, #0
280BA4:  STR             R0, [R5,#0x34]
280BA6:  LDR             R0, [R5]
280BA8:  LDR             R1, [R0,#8]
280BAA:  MOV             R0, R5
280BAC:  BLX             R1
280BAE:  LDR.W           R0, [R8]; CIplStore::ms_pPool
280BB2:  LDR             R1, [R0,#4]
280BB4:  LDRSB.W         R1, [R1,R9]
280BB8:  CMP             R1, #0
280BBA:  BLT             loc_280BC6
280BBC:  LDR             R0, [R0]
280BBE:  MOVS            R1, #0x34 ; '4'
280BC0:  MLA.W           R0, R9, R1, R0
280BC4:  B               loc_280BC8
280BC6:  MOVS            R0, #0
280BC8:  LDRB.W          R1, [R5,#0x3A]
280BCC:  AND.W           R1, R1, #7
280BD0:  CMP             R1, #5
280BD2:  BEQ             loc_280C02
280BD4:  CMP             R1, #1
280BD6:  BNE             loc_280C2A
280BD8:  LDR             R1, [SP,#0x58+var_30]
280BDA:  MOV             R2, #0xEEEEEEEF
280BE2:  LDR             R1, [R1]
280BE4:  LDR             R1, [R1]
280BE6:  SUBS            R1, R5, R1
280BE8:  ASRS            R1, R1, #2
280BEA:  MULS            R1, R2
280BEC:  LDRSH.W         R2, [R0,#0x22]
280BF0:  CMP             R1, R2
280BF2:  IT LT
280BF4:  STRHLT          R1, [R0,#0x22]
280BF6:  LDRSH.W         R2, [R0,#0x24]
280BFA:  CMP             R1, R2
280BFC:  IT GT
280BFE:  STRHGT          R1, [R0,#0x24]
280C00:  B               loc_280C2A
280C02:  LDR             R1, [SP,#0x58+var_2C]
280C04:  MOV             R2, #0xEEEEEEEF
280C0C:  LDR             R1, [R1]
280C0E:  LDR             R1, [R1]
280C10:  SUBS            R1, R5, R1
280C12:  ASRS            R1, R1, #2
280C14:  MULS            R1, R2
280C16:  LDRSH.W         R2, [R0,#0x26]
280C1A:  CMP             R1, R2
280C1C:  IT LT
280C1E:  STRHLT          R1, [R0,#0x26]
280C20:  LDRSH.W         R2, [R0,#0x28]
280C24:  CMP             R1, R2
280C26:  IT GT
280C28:  STRHGT          R1, [R0,#0x28]
280C2A:  LDRSH.W         R0, [R11,#4]
280C2E:  CMP             R6, R0
280C30:  BCC             loc_280B70
280C32:  LDRSH.W         R0, [R11,#0x14]
280C36:  CMP             R0, #1
280C38:  BLT.W           loc_2809D2
280C3C:  LDR.W           R0, [R11,#0x3C]
280C40:  MOV             R1, R9
280C42:  ADD             R0, R11
280C44:  STR.W           R0, [R11,#0x3C]
280C48:  BLX             j__ZN11CFileLoader16LoadCarGeneratorEP17CFileCarGeneratori; CFileLoader::LoadCarGenerator(CFileCarGenerator *,int)
280C4C:  LDRH.W          R0, [R11,#0x14]
280C50:  CMP             R0, #2
280C52:  BCC.W           loc_2809D2
280C56:  MOVS            R5, #1
280C58:  MOVS            R6, #0x30 ; '0'
280C5A:  LDR.W           R0, [R11,#0x3C]
280C5E:  MOV             R1, R9
280C60:  ADD             R0, R6
280C62:  BLX             j__ZN11CFileLoader16LoadCarGeneratorEP17CFileCarGeneratori; CFileLoader::LoadCarGenerator(CFileCarGenerator *,int)
280C66:  LDRSH.W         R0, [R11,#0x14]
280C6A:  ADDS            R5, #1
280C6C:  ADDS            R6, #0x30 ; '0'
280C6E:  CMP             R5, R0
280C70:  BCC             loc_280C5A
280C72:  B               loc_2809D2
