; =========================================================
; Game Engine Function: _ZN9CPathFind12DoPathSearchEh7CVector12CNodeAddressS0_PS1_PsiPffS2_fbS1_bb
; Address            : 0x315848 - 0x315D2E
; =========================================================

315848:  PUSH            {R4-R7,LR}
31584A:  ADD             R7, SP, #0xC
31584C:  PUSH.W          {R8-R11}
315850:  SUB             SP, SP, #4
315852:  VPUSH           {D8}
315856:  SUB             SP, SP, #0x48
315858:  MOV             R9, R1
31585A:  LDR             R1, [R7,#arg_28]
31585C:  MOVW            R8, #0x3584
315860:  MOVS            R4, #0
315862:  STRD.W          R2, R3, [SP,#0x70+var_30]
315866:  MOVW            R11, #0xFFFF
31586A:  STR             R0, [SP,#0x70+var_34]
31586C:  CMP             R1, #0
31586E:  STR.W           R4, [R0,R8]
315872:  ITT NE
315874:  LDRHNE          R2, [R1]
315876:  CMPNE           R2, R11
315878:  LDR             R5, [R7,#arg_3C]
31587A:  VLDR            S16, [R7,#arg_24]
31587E:  BEQ             loc_315890
315880:  LDR             R6, [R1]
315882:  LDR             R0, [SP,#0x70+var_34]
315884:  UXTH            R1, R6
315886:  ADD.W           R1, R0, R1,LSL#2
31588A:  LDR.W           R1, [R1,#0x804]
31588E:  CBNZ            R1, loc_3158B0
315890:  ADD.W           R3, R7, #0x10
315894:  LDM             R3, {R1-R3}
315896:  STRD.W          R4, R4, [SP,#0x70+var_68]
31589A:  STRD.W          R4, R5, [SP,#0x70+var_60]
31589E:  LDR             R0, [SP,#0x70+var_34]
3158A0:  STR             R4, [SP,#0x70+var_58]
3158A2:  VSTR            S16, [SP,#0x70+var_6C]
3158A6:  STR.W           R9, [SP,#0x70+var_70]
3158AA:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
3158AE:  MOV             R6, R0
3158B0:  LDR             R4, [R7,#arg_20]
3158B2:  UXTH.W          R10, R6
3158B6:  LDR             R1, [R7,#arg_18]
3158B8:  CMP             R10, R11
3158BA:  BNE             loc_3158C2
3158BC:  MOVS            R0, #0
3158BE:  STRH            R0, [R1]
3158C0:  B               loc_315904
3158C2:  LDR             R0, [R7,#arg_4]
3158C4:  UXTH            R1, R0
3158C6:  CMP             R1, R11
3158C8:  BEQ             loc_3158D6
3158CA:  LDR             R2, [SP,#0x70+var_34]
3158CC:  ADD.W           R1, R2, R1,LSL#2
3158D0:  LDR.W           R1, [R1,#0x804]
3158D4:  CBNZ            R1, loc_315918
3158D6:  MOV.W           R8, #0
3158DA:  ADD             R2, SP, #0x70+var_34
3158DC:  STRD.W          R8, R8, [SP,#0x70+var_68]
3158E0:  STRD.W          R8, R5, [SP,#0x70+var_60]
3158E4:  STR.W           R8, [SP,#0x70+var_58]
3158E8:  VSTR            S16, [SP,#0x70+var_6C]
3158EC:  STR.W           R9, [SP,#0x70+var_70]
3158F0:  LDR             R3, [R7,#arg_0]
3158F2:  LDM             R2, {R0-R2}
3158F4:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
3158F8:  UXTH            R1, R0
3158FA:  CMP             R1, R11
3158FC:  BNE             loc_315914
3158FE:  LDR             R0, [R7,#arg_18]
315900:  STRH.W          R8, [R0]
315904:  CMP             R4, #0
315906:  ITTT NE
315908:  MOVWNE          R0, #0x5000
31590C:  MOVTNE          R0, #0x47C3
315910:  STRNE           R0, [R4]
315912:  B               loc_315C1C
315914:  MOVW            R8, #0x3584
315918:  LSRS            R2, R0, #0x10
31591A:  UXTH            R0, R0
31591C:  CMP             R0, R10
31591E:  MOV.W           R1, R6,LSR#16
315922:  IT EQ
315924:  CMPEQ           R2, R1
315926:  BNE             loc_315936
315928:  LDR             R1, [R7,#arg_18]
31592A:  MOVS            R0, #0
31592C:  CMP             R4, #0
31592E:  STRH            R0, [R1]
315930:  IT NE
315932:  STRNE           R0, [R4]
315934:  B               loc_315C1C
315936:  LDR             R4, [SP,#0x70+var_34]
315938:  RSB.W           R2, R2, R2,LSL#3
31593C:  ADDW            R3, R4, #0x804
315940:  LDR.W           R0, [R3,R0,LSL#2]
315944:  LDR.W           R3, [R3,R10,LSL#2]
315948:  ADD.W           R11, R0, R2,LSL#2
31594C:  RSB.W           R0, R1, R1,LSL#3
315950:  LDRB.W          R1, [R11,#0x17]
315954:  ADD.W           R2, R3, R0,LSL#2
315958:  LDRB            R0, [R2,#0x17]
31595A:  CMP             R0, R1
31595C:  BNE.W           loc_315C06
315960:  ADD.W           R9, R4, #4
315964:  ADD.W           R0, R4, R8
315968:  STR             R0, [SP,#0x70+var_3C]
31596A:  MOV.W           R1, #0x800
31596E:  MOV             R0, R9
315970:  LDR             R5, [R7,#arg_38]
315972:  STR             R2, [SP,#0x70+var_54]
315974:  BLX             j___aeabi_memclr8_0
315978:  LDR             R2, [SP,#0x70+var_54]
31597A:  MOVS            R6, #0
31597C:  LDR             R1, =(dword_7A9ED0 - 0x31598A)
31597E:  LDR.W           R10, [R7,#arg_14]
315982:  STRD.W          R6, R9, [R2]
315986:  ADD             R1, PC; dword_7A9ED0
315988:  LDR             R0, [R4,#4]
31598A:  LDR.W           LR, [R7,#arg_18]
31598E:  CMP             R0, #0
315990:  VLDR            S0, [R7,#arg_2C]
315994:  IT NE
315996:  STRNE           R2, [R0,#4]
315998:  LDR             R0, [R7,#arg_34]
31599A:  LSRS            R0, R0, #0x10
31599C:  STR             R0, [SP,#0x70+var_2C]
31599E:  STR.W           R2, [R9]
3159A2:  STRH            R6, [R2,#0xE]
3159A4:  LDR             R0, [SP,#0x70+var_3C]
3159A6:  MOV             R3, R0
3159A8:  LDR             R0, [R3]
3159AA:  ADDS            R0, #1
3159AC:  STR             R0, [R3]
3159AE:  LDR.W           R2, [R2,#0x12]
3159B2:  MOVS            R3, #0
3159B4:  STR             R2, [R1]
3159B6:  EOR.W           R1, R5, #1
3159BA:  STR             R1, [SP,#0x70+var_30]
3159BC:  MOVS            R5, #1
3159BE:  MOVS            R1, #0
3159C0:  STR.W           R11, [SP,#0x70+var_4C]
3159C4:  LSLS            R2, R6, #0x1F
3159C6:  BNE.W           loc_315C2A
3159CA:  ADD.W           R1, R4, R1,LSL#2
3159CE:  LDR.W           R10, [R1,#4]
3159D2:  CMP.W           R10, #0
3159D6:  BEQ.W           loc_315BA2
3159DA:  MOVS            R6, #0
3159DC:  STR             R3, [SP,#0x70+var_50]
3159DE:  STR             R5, [SP,#0x70+var_38]
3159E0:  STR             R6, [SP,#0x70+var_44]
3159E2:  MOV             R2, R10
3159E4:  LDRB.W          R0, [R10,#0x1A]
3159E8:  CMP             R10, R11
3159EA:  LDRH.W          R1, [R2,#0x18]!
3159EE:  STR             R2, [SP,#0x70+var_40]
3159F0:  MOV.W           R2, #0
3159F4:  ORR.W           R12, R1, R0,LSL#16
3159F8:  IT EQ
3159FA:  MOVEQ           R2, #1
3159FC:  TST.W           R12, #0xF
315A00:  STR             R2, [SP,#0x70+var_48]
315A02:  BEQ.W           loc_315B68
315A06:  MOV.W           R9, #0
315A0A:  LDRH.W          R0, [R10,#0x12]
315A0E:  LDRSH.W         R11, [R10,#0x10]
315A12:  ADD.W           R0, R4, R0,LSL#2
315A16:  ADD.W           R8, R9, R11
315A1A:  LDR.W           R1, [R0,#0xA44]
315A1E:  LDR.W           R1, [R1,R8,LSL#2]
315A22:  UXTH            R3, R1
315A24:  ADD.W           R2, R4, R3,LSL#2
315A28:  LDR.W           R5, [R2,#0x804]
315A2C:  CMP             R5, #0
315A2E:  BEQ.W           loc_315B5A
315A32:  LDR             R2, [R7,#arg_30]
315A34:  MOV.W           LR, R1,LSR#16
315A38:  CMP             R2, #1
315A3A:  BNE             loc_315A76
315A3C:  LDR.W           R2, [R0,#0xDA4]
315A40:  MOV             R6, R4
315A42:  LDRH.W          R2, [R2,R8,LSL#1]
315A46:  LSRS            R4, R2, #0xA
315A48:  ADD.W           R4, R6, R4,LSL#2
315A4C:  LDR.W           R6, [R4,#0x804]
315A50:  CBZ             R6, loc_315A7A
315A52:  BFC.W           R2, #0xA, #0x16
315A56:  LDR.W           R4, [R4,#0x924]
315A5A:  RSB.W           R2, R2, R2,LSL#3
315A5E:  ADD.W           R2, R4, R2,LSL#1
315A62:  LDRH            R4, [R2,#4]
315A64:  CMP             R4, R3
315A66:  BNE             loc_315A80
315A68:  LDRH.W          R3, [R2,#0xB]
315A6C:  LDRH            R2, [R2,#6]
315A6E:  CMP             R2, LR
315A70:  IT EQ
315A72:  LSREQ           R3, R3, #3
315A74:  B               loc_315A84
315A76:  MOVS            R3, #0
315A78:  B               loc_315A90
315A7A:  MOVS            R3, #0
315A7C:  LDR             R4, [SP,#0x70+var_34]
315A7E:  B               loc_315A90
315A80:  LDRH.W          R3, [R2,#0xB]
315A84:  LDR             R4, [SP,#0x70+var_34]
315A86:  LSLS            R2, R3, #0x1D
315A88:  MOV.W           R3, #0
315A8C:  IT EQ
315A8E:  MOVEQ           R3, #1
315A90:  LDR             R2, [SP,#0x70+var_2C]
315A92:  LDR             R6, [R7,#arg_34]
315A94:  EOR.W           R2, R2, LR
315A98:  EORS            R1, R6
315A9A:  ORRS            R1, R2
315A9C:  LSLS            R1, R1, #0x10
315A9E:  BEQ             loc_315B5A
315AA0:  CMP             R3, #0
315AA2:  ITTTT EQ
315AA4:  RSBEQ.W         R1, LR, LR,LSL#3
315AA8:  ADDEQ.W         R5, R5, R1,LSL#2
315AAC:  LDRHEQ          R1, [R5,#0x18]
315AAE:  EOREQ.W         R1, R1, R12
315AB2:  ITTT EQ
315AB4:  LDREQ           R2, [SP,#0x70+var_30]
315AB6:  ANDEQ.W         R1, R2, R1,LSR#7
315ABA:  CMPEQ           R1, #0
315ABC:  BNE             loc_315B5A
315ABE:  LDR.W           R3, [R0,#0xB64]
315AC2:  MOV             R0, R5
315AC4:  LDRSH.W         R2, [R10,#0xE]
315AC8:  ADD             R3, R11
315ACA:  LDRSH.W         R1, [R0,#0xE]!
315ACE:  LDRB.W          R3, [R3,R9]
315AD2:  ADDS            R6, R3, R2
315AD4:  CMP             R6, R1
315AD6:  BGE             loc_315B5A
315AD8:  MOV             R12, R4
315ADA:  LDR             R4, [SP,#0x70+var_38]
315ADC:  UXTH            R2, R1
315ADE:  MOVW            R1, #0x7FFE
315AE2:  CMP             R2, R1
315AE4:  BEQ             loc_315B06
315AE6:  MOV             R1, R5
315AE8:  LDR             R3, [R5]
315AEA:  LDR.W           R2, [R1,#4]!
315AEE:  STR             R3, [R2]
315AF0:  LDR             R2, [R5]
315AF2:  CMP             R2, #0
315AF4:  ITT NE
315AF6:  LDRNE           R1, [R1]
315AF8:  STRNE           R1, [R2,#4]
315AFA:  LDR             R1, [SP,#0x70+var_3C]
315AFC:  MOV             R2, R1
315AFE:  LDR             R1, [R2]
315B00:  SUBS            R1, #1
315B02:  STR             R1, [R2]
315B04:  LDRH            R1, [R0]
315B06:  MOVW            R2, #0x1387
315B0A:  CMP             R4, R2
315B0C:  BGT             loc_315B24
315B0E:  MOVW            R2, #0x7FFE
315B12:  CMP             R1, R2
315B14:  BNE             loc_315B24
315B16:  LDR             R2, =(dword_7A9ED0 - 0x315B20)
315B18:  LDR.W           R1, [R5,#0x12]
315B1C:  ADD             R2, PC; dword_7A9ED0
315B1E:  STR.W           R1, [R2,R4,LSL#2]
315B22:  ADDS            R4, #1
315B24:  MOV             R1, R6
315B26:  STR             R4, [SP,#0x70+var_38]
315B28:  BFC.W           R1, #9, #0x17
315B2C:  MOV             R4, R12
315B2E:  ADD.W           R1, R4, R1,LSL#2
315B32:  LDR.W           R2, [R1,#4]!
315B36:  STRD.W          R2, R1, [R5]
315B3A:  LDR             R2, [R1]
315B3C:  CMP             R2, #0
315B3E:  IT NE
315B40:  STRNE           R5, [R2,#4]
315B42:  STR             R5, [R1]
315B44:  STRH            R6, [R0]
315B46:  LDR             R0, [SP,#0x70+var_3C]
315B48:  MOV             R1, R0
315B4A:  LDR             R0, [R1]
315B4C:  ADDS            R0, #1
315B4E:  STR             R0, [R1]
315B50:  LDR             R1, [SP,#0x70+var_40]
315B52:  LDRB            R0, [R1,#2]
315B54:  LDRH            R1, [R1]
315B56:  ORR.W           R12, R1, R0,LSL#16
315B5A:  ADD.W           R9, R9, #1
315B5E:  AND.W           R0, R12, #0xF
315B62:  CMP             R9, R0
315B64:  BLT.W           loc_315A0A
315B68:  LDRD.W          R0, R6, [SP,#0x70+var_48]
315B6C:  ORRS            R6, R0
315B6E:  LDRD.W          R0, R1, [R10]
315B72:  STR             R0, [R1]
315B74:  LDR.W           R0, [R10]
315B78:  CMP             R0, #0
315B7A:  ITT NE
315B7C:  LDRNE.W         R1, [R10,#4]
315B80:  STRNE           R1, [R0,#4]
315B82:  LDR             R0, [SP,#0x70+var_3C]
315B84:  MOV             R1, R0
315B86:  LDR             R0, [R1]
315B88:  SUBS            R0, #1
315B8A:  STR             R0, [R1]
315B8C:  LDR.W           R10, [R10]
315B90:  LDR.W           R11, [SP,#0x70+var_4C]
315B94:  CMP.W           R10, #0
315B98:  BNE.W           loc_3159E0
315B9C:  LDR             R5, [SP,#0x70+var_38]
315B9E:  LDR             R3, [SP,#0x70+var_50]
315BA0:  B               loc_315BA4
315BA2:  MOVS            R6, #0
315BA4:  LDRD.W          R10, LR, [R7,#arg_14]
315BA8:  CBZ             R0, loc_315BCE
315BAA:  ADDS            R3, #1
315BAC:  VMOV            S2, R3
315BB0:  VCVT.F32.S32    S2, S2
315BB4:  VCMPE.F32       S2, S0
315BB8:  VMRS            APSR_nzcv, FPSCR
315BBC:  ITTTT LE
315BBE:  MOVLE           R1, R3
315BC0:  BFCLE.W         R1, #9, #0x17
315BC4:  MOVWLE          R2, #0x1356
315BC8:  CMPLE           R5, R2
315BCA:  BLT.W           loc_3159C4
315BCE:  MOVS            R0, #0
315BD0:  CMP             R5, #1
315BD2:  STRH.W          R0, [LR]
315BD6:  BLT             loc_315C1C
315BD8:  LDR             R0, =(dword_7A9ED0 - 0x315BE2)
315BDA:  MOVW            R1, #0x7FFE
315BDE:  ADD             R0, PC; dword_7A9ED0
315BE0:  LDR.W           R2, [R0],#4
315BE4:  SUBS            R5, #1
315BE6:  UXTH            R3, R2
315BE8:  MOV.W           R6, R2,LSR#16
315BEC:  ADD.W           R3, R4, R3,LSL#2
315BF0:  MOV.W           R6, R6,LSL#3
315BF4:  SUB.W           R2, R6, R2,LSR#16
315BF8:  LDR.W           R3, [R3,#0x804]
315BFC:  ADD.W           R2, R3, R2,LSL#2
315C00:  STRH            R1, [R2,#0xE]
315C02:  BNE             loc_315BE0
315C04:  B               loc_315C1C
315C06:  LDR             R1, [R7,#arg_18]
315C08:  MOVS            R0, #0
315C0A:  STRH            R0, [R1]
315C0C:  LDR             R1, [R7,#arg_20]
315C0E:  CMP             R1, #0
315C10:  ITTT NE
315C12:  MOVWNE          R0, #0x5000
315C16:  MOVTNE          R0, #0x47C3
315C1A:  STRNE           R0, [R1]
315C1C:  ADD             SP, SP, #0x48 ; 'H'
315C1E:  VPOP            {D8}
315C22:  ADD             SP, SP, #4
315C24:  POP.W           {R8-R11}
315C28:  POP             {R4-R7,PC}
315C2A:  LDR             R1, [R7,#arg_20]
315C2C:  MOVS            R0, #0
315C2E:  STRH.W          R0, [LR]
315C32:  MOV             R8, R5
315C34:  CMP             R1, #0
315C36:  LDR             R2, [SP,#0x70+var_54]
315C38:  LDR.W           R9, [R7,#arg_1C]
315C3C:  ITTTT NE
315C3E:  LDRSHNE.W       R0, [R11,#0xE]
315C42:  VMOVNE          S0, R0
315C46:  VCVTNE.F32.S32  S0, S0
315C4A:  VSTRNE          S0, [R1]
315C4E:  CMP.W           R10, #0
315C52:  ITTTT NE
315C54:  LDRSHNE.W       R0, [LR]
315C58:  ADDNE           R1, R0, #1
315C5A:  STRHNE.W        R1, [LR]
315C5E:  LDRNE.W         R1, [R11,#0x12]
315C62:  IT NE
315C64:  STRNE.W         R1, [R10,R0,LSL#2]
315C68:  CMP             R11, R2
315C6A:  BEQ             loc_315CF8
315C6C:  LDRSH.W         R0, [LR]
315C70:  CMP             R0, R9
315C72:  BGE             loc_315CF8
315C74:  LDRH.W          R0, [R11,#0x18]
315C78:  LSLS            R0, R0, #0x1C
315C7A:  BEQ             loc_315CF2
315C7C:  MOVS            R0, #0
315C7E:  LDRH.W          R1, [R11,#0x12]
315C82:  LDRSH.W         R2, [R11,#0x10]
315C86:  ADD.W           R6, R4, R1,LSL#2
315C8A:  ADDS            R3, R0, R2
315C8C:  LDR.W           R1, [R6,#0xA44]
315C90:  LDR.W           R5, [R1,R3,LSL#2]
315C94:  UXTH            R1, R5
315C96:  ADD.W           R1, R4, R1,LSL#2
315C9A:  LDR.W           R1, [R1,#0x804]
315C9E:  CBZ             R1, loc_315CE4
315CA0:  MOV.W           R12, R5,LSR#16
315CA4:  LDR.W           R6, [R6,#0xB64]
315CA8:  MOV.W           R2, R12,LSL#3
315CAC:  LDRSH.W         R4, [R11,#0xE]
315CB0:  SUB.W           R2, R2, R5,LSR#16
315CB4:  LDRB            R3, [R6,R3]
315CB6:  ADD.W           R2, R1, R2,LSL#2
315CBA:  SUBS            R3, R4, R3
315CBC:  LDR             R4, [SP,#0x70+var_34]
315CBE:  LDRSH.W         R2, [R2,#0xE]
315CC2:  CMP             R3, R2
315CC4:  BNE             loc_315CE4
315CC6:  LDRSH.W         R0, [LR]
315CCA:  ADDS            R2, R0, #1
315CCC:  STRH.W          R2, [LR]
315CD0:  RSB.W           R2, R12, R12,LSL#3
315CD4:  ADD.W           R11, R1, R2,LSL#2
315CD8:  LDR.W           R1, [R11,#0x12]
315CDC:  STR.W           R1, [R10,R0,LSL#2]
315CE0:  MOVW            R0, #0x7166
315CE4:  LDRH.W          R1, [R11,#0x18]
315CE8:  ADDS            R0, #1
315CEA:  AND.W           R1, R1, #0xF
315CEE:  CMP             R0, R1
315CF0:  BLT             loc_315C7E
315CF2:  LDR             R0, [SP,#0x70+var_54]
315CF4:  CMP             R11, R0
315CF6:  BNE             loc_315C6C
315CF8:  CMP.W           R8, #1
315CFC:  BLT             loc_315C1C
315CFE:  LDR             R0, =(dword_7A9ED0 - 0x315D08)
315D00:  MOVW            R1, #0x7FFE
315D04:  ADD             R0, PC; dword_7A9ED0
315D06:  LDR.W           R2, [R0],#4
315D0A:  SUBS.W          R8, R8, #1
315D0E:  UXTH            R3, R2
315D10:  MOV.W           R6, R2,LSR#16
315D14:  ADD.W           R3, R4, R3,LSL#2
315D18:  MOV.W           R6, R6,LSL#3
315D1C:  SUB.W           R2, R6, R2,LSR#16
315D20:  LDR.W           R3, [R3,#0x804]
315D24:  ADD.W           R2, R3, R2,LSL#2
315D28:  STRH            R1, [R2,#0xE]
315D2A:  BNE             loc_315D06
315D2C:  B               loc_315C1C
