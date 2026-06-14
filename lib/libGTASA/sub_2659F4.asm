; =========================================================
; Game Engine Function: sub_2659F4
; Address            : 0x2659F4 - 0x265CEA
; =========================================================

2659F4:  PUSH            {R4-R7,LR}
2659F6:  ADD             R7, SP, #0xC
2659F8:  PUSH.W          {R8-R11}
2659FC:  SUB             SP, SP, #0x2C
2659FE:  MOV             R5, R0
265A00:  LDR             R0, =(dword_6D6838 - 0x265A0A)
265A02:  MOVW            R1, #:lower16:(elf_hash_chain+0x6048)
265A06:  ADD             R0, PC; dword_6D6838
265A08:  MOVT            R1, #:upper16:(elf_hash_chain+0x6048)
265A0C:  LDR.W           R8, [R5,R1]
265A10:  LDR             R6, [R0]
265A12:  CBNZ            R6, loc_265A3A
265A14:  LDR             R0, =(apportableOpenALFuncs_ptr - 0x265A1E)
265A16:  LDR.W           R9, =(dword_6D6838 - 0x265A20)
265A1A:  ADD             R0, PC; apportableOpenALFuncs_ptr
265A1C:  ADD             R9, PC; dword_6D6838
265A1E:  LDR             R4, [R0]; apportableOpenALFuncs
265A20:  BLX             j_GetJavaVM
265A24:  LDR             R1, [R4,#(off_A98FE0 - 0xA98FD8)]
265A26:  MOV             R6, R0
265A28:  STR.W           R6, [R9]
265A2C:  CMP             R1, #0
265A2E:  ITT NE
265A30:  MOVNE           R0, R6
265A32:  BLXNE           R1
265A34:  LDR             R0, =(dword_6D6838 - 0x265A3A)
265A36:  ADD             R0, PC; dword_6D6838
265A38:  STR             R6, [R0]
265A3A:  LDR             R0, [R6]
265A3C:  MOVS            R2, #0
265A3E:  LDR             R4, =(dword_6D683C - 0x265A44)
265A40:  ADD             R4, PC; dword_6D683C
265A42:  LDR             R3, [R0,#0x10]
265A44:  MOV             R0, R6
265A46:  MOV             R1, R4
265A48:  BLX             R3
265A4A:  LDR             R0, [R4]
265A4C:  MOV.W           R11, #2
265A50:  LDR             R1, [R0]
265A52:  LDR             R2, [R1,#0x4C]
265A54:  MOVS            R1, #2
265A56:  BLX             R2
265A58:  LDR             R1, [R5,#0x1C]
265A5A:  LDR             R3, [R5,#0x10]
265A5C:  SUB.W           R0, R1, #0x1500; switch 7 cases
265A60:  CMP             R0, #6
265A62:  BHI             def_265A64; jumptable 00265A64 default case
265A64:  TBB.W           [PC,R0]; switch jump
265A68:  DCB 8; jump table for switch statement
265A69:  DCB 6
265A6A:  DCB 6
265A6B:  DCB 6
265A6C:  DCB 6
265A6D:  DCB 6
265A6E:  DCB 6
265A6F:  ALIGN 2
265A70:  CMP.W           R1, #0x80000000; jumptable 00265A64 default case
265A74:  MOV.W           R11, #3; jumptable 00265A64 cases 5377-5382
265A78:  LDR             R0, [R5,#0x20]; jumptable 00265A64 case 5376
265A7A:  STR             R6, [SP,#0x48+var_34]
265A7C:  SUB.W           R0, R0, #0x1400
265A80:  LDR             R2, =(dword_6D6854 - 0x265A88)
265A82:  CMP             R0, #6
265A84:  ADD             R2, PC; dword_6D6854
265A86:  ITTE LS
265A88:  ADRLS           R1, dword_265D00
265A8A:  LDRLS.W         R4, [R1,R0,LSL#2]
265A8E:  MOVHI           R4, #2
265A90:  LDR             R0, =(dword_6D683C - 0x265A98)
265A92:  LDR             R1, =(dword_6D6840 - 0x265A9C)
265A94:  ADD             R0, PC; dword_6D683C
265A96:  LDR             R2, [R2]
265A98:  ADD             R1, PC; dword_6D6840
265A9A:  LDR             R0, [R0]
265A9C:  LDR             R1, [R1]
265A9E:  LDR             R6, [R0]
265AA0:  LDR.W           R6, [R6,#0x204]
265AA4:  STR             R4, [SP,#0x48+var_20]
265AA6:  STRD.W          R11, R4, [SP,#0x48+var_48]
265AAA:  MOV             R4, R3
265AAC:  BLX             R6
265AAE:  LDRD.W          R9, R6, [R5,#0x18]
265AB2:  LDR.W           R10, [R5,#0x20]
265AB6:  MOV             R1, R9
265AB8:  BLX             __aeabi_uidiv
265ABC:  STR             R0, [SP,#0x48+var_24]
265ABE:  SUB.W           R0, R6, #0x1500; switch 7 cases
265AC2:  CMP             R0, #6
265AC4:  BHI             def_265ACA; jumptable 00265ACA default case
265AC6:  MOVS            R2, #1
265AC8:  MOV             R12, R4
265ACA:  TBB.W           [PC,R0]; switch jump
265ACE:  DCB 0x13; jump table for switch statement
265ACF:  DCB 4
265AD0:  DCB 0xC
265AD1:  DCB 0xE
265AD2:  DCB 0xA
265AD3:  DCB 0x10
265AD4:  DCB 0x12
265AD5:  ALIGN 2
265AD6:  MOVS            R2, #2; jumptable 00265ACA case 5377
265AD8:  B               loc_265AF4; jumptable 00265ACA case 5376
265ADA:  CMP.W           R6, #0x80000000; jumptable 00265ACA default case
265ADE:  MOV             R12, R4
265AE0:  BNE             loc_265AE6; jumptable 00265ACA case 5378
265AE2:  MOVS            R2, #6; jumptable 00265ACA case 5380
265AE4:  B               loc_265AF4; jumptable 00265ACA case 5376
265AE6:  MOVS            R2, #0; jumptable 00265ACA case 5378
265AE8:  B               loc_265AF4; jumptable 00265ACA case 5376
265AEA:  MOVS            R2, #4; jumptable 00265ACA case 5379
265AEC:  B               loc_265AF4; jumptable 00265ACA case 5376
265AEE:  MOVS            R2, #7; jumptable 00265ACA case 5381
265AF0:  B               loc_265AF4; jumptable 00265ACA case 5376
265AF2:  MOVS            R2, #8; jumptable 00265ACA case 5382
265AF4:  SUB.W           R0, R10, #0x1400; jumptable 00265ACA case 5376
265AF8:  MOV             LR, R11
265AFA:  CMP             R0, #6
265AFC:  STRD.W          R2, R5, [SP,#0x48+var_2C]
265B00:  BHI             loc_265B0C
265B02:  LDR             R1, =(unk_60A6D0 - 0x265B08)
265B04:  ADD             R1, PC; unk_60A6D0
265B06:  LDR.W           R0, [R1,R0,LSL#2]
265B0A:  B               loc_265B0E
265B0C:  MOVS            R0, #0
265B0E:  LDR.W           R10, =(dword_6D683C - 0x265B18)
265B12:  STR             R0, [SP,#0x48+var_30]
265B14:  ADD             R10, PC; dword_6D683C
265B16:  LDR             R1, =(dword_6D6850 - 0x265B24)
265B18:  LDR.W           R11, =(dword_6D6840 - 0x265B28)
265B1C:  LDR.W           R0, [R10]
265B20:  ADD             R1, PC; dword_6D6850
265B22:  LDR             R6, [SP,#0x48+var_24]
265B24:  ADD             R11, PC; dword_6D6840
265B26:  LDR             R2, [R1]
265B28:  LDR             R3, [R0]
265B2A:  MUL.W           R5, R9, R6
265B2E:  LDR.W           R1, [R11]
265B32:  MOV.W           R9, #1
265B36:  LDR             R4, [R3,#0x70]
265B38:  STRD.W          R12, LR, [SP,#0x48+var_48]
265B3C:  ADD.W           R12, SP, #0x48+var_40
265B40:  LDR             R3, [SP,#0x48+var_20]
265B42:  STM.W           R12, {R3,R5,R9}
265B46:  MOVS            R3, #3
265B48:  BLX             R4
265B4A:  LDR             R1, =(dword_6D6858 - 0x265B56)
265B4C:  MOV             R4, R0
265B4E:  LDR.W           R0, [R10]
265B52:  ADD             R1, PC; dword_6D6858
265B54:  LDR.W           R2, [R11]
265B58:  LDR             R3, [R1]
265B5A:  LDR             R1, [R0]
265B5C:  LDR.W           R5, [R1,#0x16C]
265B60:  MOV             R1, R4
265B62:  BLX             R5
265B64:  LDR             R1, =(byte_6D686C - 0x265B6E)
265B66:  LDR.W           R0, [R10]
265B6A:  ADD             R1, PC; byte_6D686C
265B6C:  STRB.W          R9, [R1]
265B70:  MOV             R9, R4
265B72:  LDR             R1, [R0]
265B74:  LDR.W           R2, [R1,#0x2C0]
265B78:  MOV             R1, R6
265B7A:  BLX             R2
265B7C:  STR             R0, [SP,#0x48+var_20]
265B7E:  LDRD.W          R1, R0, [SP,#0x48+var_30]
265B82:  MULS            R1, R0
265B84:  MOV             R0, R6
265B86:  BLX             __aeabi_uidiv
265B8A:  STR             R0, [SP,#0x48+var_2C]
265B8C:  LDR.W           R0, [R8,#4]
265B90:  CMP             R0, #0
265B92:  BEQ             loc_265C90
265B94:  LDR             R0, =(IsAndroidPaused_ptr - 0x265B9C)
265B96:  LDR             R4, =(byte_6D686C - 0x265B9E)
265B98:  ADD             R0, PC; IsAndroidPaused_ptr
265B9A:  ADD             R4, PC; byte_6D686C
265B9C:  LDR.W           R10, [R0]; IsAndroidPaused
265BA0:  LDR             R0, =(LogLevel_ptr - 0x265BA6)
265BA2:  ADD             R0, PC; LogLevel_ptr
265BA4:  LDR             R0, [R0]; LogLevel
265BA6:  STR             R0, [SP,#0x48+var_30]
265BA8:  LDR.W           R1, [R10]
265BAC:  LDRB            R0, [R4]
265BAE:  CBZ             R1, loc_265BE2
265BB0:  CMP             R0, #1
265BB2:  BNE             loc_265BD8
265BB4:  LDR             R0, =(dword_6D683C - 0x265BBC)
265BB6:  LDR             R2, =(dword_6D685C - 0x265BBE)
265BB8:  ADD             R0, PC; dword_6D683C
265BBA:  ADD             R2, PC; dword_6D685C
265BBC:  LDR             R0, [R0]
265BBE:  LDR             R3, [R2]
265BC0:  LDR             R2, =(dword_6D6840 - 0x265BC8)
265BC2:  LDR             R1, [R0]
265BC4:  ADD             R2, PC; dword_6D6840
265BC6:  LDR.W           R6, [R1,#0x16C]
265BCA:  MOV             R1, R9
265BCC:  LDR             R2, [R2]
265BCE:  BLX             R6
265BD0:  LDR             R1, =(byte_6D686C - 0x265BD8)
265BD2:  MOVS            R0, #0
265BD4:  ADD             R1, PC; byte_6D686C
265BD6:  STRB            R0, [R1]
265BD8:  MOVW            R0, #0x1388; useconds
265BDC:  BLX             usleep
265BE0:  B               loc_265C88
265BE2:  CBNZ            R0, loc_265C08
265BE4:  LDR             R0, =(dword_6D683C - 0x265BEC)
265BE6:  LDR             R2, =(dword_6D6858 - 0x265BEE)
265BE8:  ADD             R0, PC; dword_6D683C
265BEA:  ADD             R2, PC; dword_6D6858
265BEC:  LDR             R0, [R0]
265BEE:  LDR             R3, [R2]
265BF0:  LDR             R2, =(dword_6D6840 - 0x265BF8)
265BF2:  LDR             R1, [R0]
265BF4:  ADD             R2, PC; dword_6D6840
265BF6:  LDR.W           R6, [R1,#0x16C]
265BFA:  MOV             R1, R9
265BFC:  LDR             R2, [R2]
265BFE:  BLX             R6
265C00:  LDR             R1, =(byte_6D686C - 0x265C08)
265C02:  MOVS            R0, #1
265C04:  ADD             R1, PC; byte_6D686C
265C06:  STRB            R0, [R1]
265C08:  LDR             R0, =(dword_6D683C - 0x265C10)
265C0A:  MOVS            R2, #0
265C0C:  ADD             R0, PC; dword_6D683C
265C0E:  LDR             R0, [R0]
265C10:  LDR             R1, [R0]
265C12:  LDR.W           R3, [R1,#0x378]
265C16:  LDR             R1, [SP,#0x48+var_20]
265C18:  BLX             R3
265C1A:  MOV             R11, R0
265C1C:  CMP.W           R11, #0
265C20:  BEQ             loc_265C76
265C22:  LDR             R0, [SP,#0x48+var_28]
265C24:  MOV             R1, R11
265C26:  LDR             R2, [SP,#0x48+var_2C]
265C28:  BLX             j_aluMixData
265C2C:  LDR             R0, =(dword_6D683C - 0x265C3A)
265C2E:  MOV             R5, R9
265C30:  MOV             R9, R10
265C32:  LDR.W           R10, [SP,#0x48+var_20]
265C36:  ADD             R0, PC; dword_6D683C
265C38:  MOV             R2, R11
265C3A:  MOVS            R3, #0
265C3C:  LDR             R0, [R0]
265C3E:  LDR             R1, [R0]
265C40:  LDR.W           R6, [R1,#0x37C]
265C44:  MOV             R1, R10
265C46:  BLX             R6
265C48:  LDR             R0, =(dword_6D683C - 0x265C54)
265C4A:  MOV             R6, R10
265C4C:  LDR             R2, =(dword_6D6868 - 0x265C58)
265C4E:  MOV             R10, R9
265C50:  ADD             R0, PC; dword_6D683C
265C52:  MOV             R9, R5
265C54:  ADD             R2, PC; dword_6D6868
265C56:  LDR             R0, [R0]
265C58:  LDR             R3, [R2]
265C5A:  LDR             R2, =(dword_6D6840 - 0x265C62)
265C5C:  LDR             R1, [R0]
265C5E:  ADD             R2, PC; dword_6D6840
265C60:  LDR.W           R5, [R1,#0x13C]
265C64:  MOVS            R1, #0
265C66:  LDR             R2, [R2]
265C68:  STR             R6, [SP,#0x48+var_48]
265C6A:  STR             R1, [SP,#0x48+var_44]
265C6C:  LDR             R1, [SP,#0x48+var_24]
265C6E:  STR             R1, [SP,#0x48+var_40]
265C70:  MOV             R1, R9
265C72:  BLX             R5
265C74:  B               loc_265C88
265C76:  LDR             R0, [SP,#0x48+var_30]
265C78:  LDR             R0, [R0]
265C7A:  CBZ             R0, loc_265C88
265C7C:  LDR             R0, =(aEe - 0x265C86); "(EE)"
265C7E:  ADR             R1, aThreadFunction; "thread_function"
265C80:  ADR             R2, aFailedToGetPoi; "Failed to get pointer to array bytes"
265C82:  ADD             R0, PC; "(EE)"
265C84:  BLX             j_al_print
265C88:  LDR.W           R0, [R8,#4]
265C8C:  CMP             R0, #0
265C8E:  BNE             loc_265BA8
265C90:  LDR             R4, =(dword_6D683C - 0x265C98)
265C92:  LDR             R2, =(dword_6D6860 - 0x265C9E)
265C94:  ADD             R4, PC; dword_6D683C
265C96:  LDR.W           R8, =(dword_6D6840 - 0x265CA2)
265C9A:  ADD             R2, PC; dword_6D6860
265C9C:  LDR             R0, [R4]
265C9E:  ADD             R8, PC; dword_6D6840
265CA0:  LDR             R3, [R2]
265CA2:  LDR.W           R2, [R8]
265CA6:  LDR             R1, [R0]
265CA8:  LDR.W           R6, [R1,#0x16C]
265CAC:  MOV             R1, R9
265CAE:  BLX             R6
265CB0:  LDR             R0, [R4]
265CB2:  LDR             R1, =(dword_6D6864 - 0x265CBE)
265CB4:  LDR.W           R2, [R8]
265CB8:  LDR             R6, [R0]
265CBA:  ADD             R1, PC; dword_6D6864
265CBC:  LDR             R3, [R1]
265CBE:  MOV             R1, R9
265CC0:  LDR.W           R6, [R6,#0x16C]
265CC4:  BLX             R6
265CC6:  LDR             R1, =(byte_6D686C - 0x265CD0)
265CC8:  MOVS            R2, #0
265CCA:  LDR             R0, [R4]
265CCC:  ADD             R1, PC; byte_6D686C
265CCE:  STRB            R2, [R1]
265CD0:  LDR             R1, [R0]
265CD2:  LDR             R2, [R1,#0x50]
265CD4:  MOVS            R1, #0
265CD6:  BLX             R2
265CD8:  LDR             R0, [SP,#0x48+var_34]
265CDA:  LDR             R1, [R0]
265CDC:  LDR             R1, [R1,#0x14]
265CDE:  BLX             R1
265CE0:  MOVS            R0, #0
265CE2:  ADD             SP, SP, #0x2C ; ','
265CE4:  POP.W           {R8-R11}
265CE8:  POP             {R4-R7,PC}
