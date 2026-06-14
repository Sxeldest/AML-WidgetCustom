; =========================================================
; Game Engine Function: aluMixData
; Address            : 0x24E888 - 0x24F674
; =========================================================

24E888:  PUSH            {R4-R7,LR}
24E88A:  ADD             R7, SP, #0xC
24E88C:  PUSH.W          {R8-R11}
24E890:  SUB             SP, SP, #4
24E892:  VPUSH           {D8-D15}
24E896:  SUB             SP, SP, #0x60
24E898:  MOV             R8, R2
24E89A:  MOV             R9, R1
24E89C:  STR             R0, [SP,#0xC0+var_68]
24E89E:  BLX             fegetround
24E8A2:  STR             R0, [SP,#0xC0+rounding_direction]
24E8A4:  MOVS            R0, #3; rounding_direction
24E8A6:  BLX             fesetround
24E8AA:  CMP.W           R8, #1
24E8AE:  BLT.W           loc_24F65E
24E8B2:  LDR             R1, [SP,#0xC0+var_68]
24E8B4:  VMOV.F32        S17, #-1.0
24E8B8:  VMOV.F32        S24, #1.0
24E8BC:  VLDR            S16, =0.0
24E8C0:  ADD.W           R0, R1, #0x16000
24E8C4:  VMOV.F32        S26, #2.0
24E8C8:  ADD.W           R0, R0, #0x184
24E8CC:  STR             R0, [SP,#0xC0+var_B0]
24E8CE:  ADD.W           R0, R1, #0x16000
24E8D2:  VMOV.F32        S28, #-2.0
24E8D6:  ADD.W           R0, R0, #0x154
24E8DA:  STR             R0, [SP,#0xC0+var_A4]
24E8DC:  MOVW            R0, #:lower16:(elf_hash_chain+0x6018)
24E8E0:  VMOV.F32        S30, #0.25
24E8E4:  MOVT            R0, #:upper16:(elf_hash_chain+0x6018)
24E8E8:  VLDR            S18, =0.000030518
24E8EC:  ADD             R0, R1
24E8EE:  STR             R0, [SP,#0xC0+var_B4]
24E8F0:  MOVW            R0, #:lower16:(elf_hash_chain+0x5FE8)
24E8F4:  VLDR            S20, =-0.0039062
24E8F8:  MOVT            R0, #:upper16:(elf_hash_chain+0x5FE8)
24E8FC:  VLDR            D11, =2.14748365e9
24E900:  ADD             R0, R1
24E902:  STR             R0, [SP,#0xC0+var_A8]
24E904:  ADD.W           R0, R1, #0x14000
24E908:  MOVS            R4, #0
24E90A:  ADD.W           R0, R0, #0x150
24E90E:  STR             R0, [SP,#0xC0+var_88]
24E910:  ADD.W           R0, R1, #0x12000
24E914:  ADD.W           R0, R0, #0x150
24E918:  STR             R0, [SP,#0xC0+var_8C]
24E91A:  ADD.W           R0, R1, #0x10000
24E91E:  ADD.W           R0, R0, #0x150
24E922:  STR             R0, [SP,#0xC0+var_90]
24E924:  MOVW            R0, #0xE150
24E928:  ADD             R0, R1
24E92A:  STR             R0, [SP,#0xC0+var_94]
24E92C:  MOVW            R0, #0xC150
24E930:  ADD             R0, R1
24E932:  STR             R0, [SP,#0xC0+var_98]
24E934:  MOVW            R0, #0xA150
24E938:  ADD             R0, R1
24E93A:  STR             R0, [SP,#0xC0+var_9C]
24E93C:  MOVW            R0, #0x8150
24E940:  ADD             R0, R1
24E942:  STR             R0, [SP,#0xC0+var_84]
24E944:  MOVW            R0, #0x6150
24E948:  ADD             R0, R1
24E94A:  STR             R0, [SP,#0xC0+var_80]
24E94C:  MOVW            R0, #0x4150
24E950:  ADD             R0, R1
24E952:  STR             R0, [SP,#0xC0+var_64]
24E954:  ADD.W           R0, R1, #0x16000
24E958:  ADD.W           R0, R0, #0x188
24E95C:  STR             R0, [SP,#0xC0+var_B8]
24E95E:  ADD.W           R0, R1, #0x16000
24E962:  ADD.W           R0, R0, #0x158
24E966:  STR             R0, [SP,#0xC0+var_AC]
24E968:  ADD.W           R0, R1, #0x16000
24E96C:  ADD.W           R11, R0, #0x1A4
24E970:  ADD.W           R0, R1, #0x16000
24E974:  ADD.W           R0, R0, #0x1A8
24E978:  STR             R0, [SP,#0xC0+var_A0]
24E97A:  ADD.W           R0, R1, #0x16000
24E97E:  ADD.W           R0, R0, #0x1AC
24E982:  STR             R0, [SP,#0xC0+var_70]
24E984:  STR.W           R11, [SP,#0xC0+var_6C]
24E988:  CMP.W           R8, #0x800
24E98C:  MOV             R10, R8
24E98E:  STR.W           R9, [SP,#0xC0+var_78]
24E992:  STR.W           R8, [SP,#0xC0+var_74]
24E996:  IT CS
24E998:  MOVCS.W         R10, #0x800
24E99C:  LDR             R0, [SP,#0xC0+var_64]
24E99E:  MOV.W           R5, R10,LSL#2
24E9A2:  MOV             R1, R5
24E9A4:  BLX             j___aeabi_memclr8
24E9A8:  LDR             R0, [SP,#0xC0+var_80]
24E9AA:  MOV             R1, R5
24E9AC:  BLX             j___aeabi_memclr8
24E9B0:  LDR             R0, [SP,#0xC0+var_84]
24E9B2:  MOV             R1, R5
24E9B4:  BLX             j___aeabi_memclr8
24E9B8:  LDR             R0, [SP,#0xC0+var_9C]
24E9BA:  MOV             R1, R5
24E9BC:  BLX             j___aeabi_memclr8
24E9C0:  LDR             R0, [SP,#0xC0+var_98]
24E9C2:  MOV             R1, R5
24E9C4:  BLX             j___aeabi_memclr8
24E9C8:  LDR             R0, [SP,#0xC0+var_94]
24E9CA:  MOV             R1, R5
24E9CC:  BLX             j___aeabi_memclr8
24E9D0:  LDR             R0, [SP,#0xC0+var_90]
24E9D2:  MOV             R1, R5
24E9D4:  BLX             j___aeabi_memclr8
24E9D8:  LDR             R0, [SP,#0xC0+var_8C]
24E9DA:  MOV             R1, R5
24E9DC:  BLX             j___aeabi_memclr8
24E9E0:  LDR             R0, [SP,#0xC0+var_88]
24E9E2:  MOV             R1, R5
24E9E4:  STR             R5, [SP,#0xC0+var_7C]
24E9E6:  BLX             j___aeabi_memclr8
24E9EA:  LDR             R0, [SP,#0xC0+var_70]
24E9EC:  LDR             R0, [R0]
24E9EE:  LDR             R1, [R0,#0x2C]
24E9F0:  LDR             R0, [SP,#0xC0+var_68]
24E9F2:  BLX             R1
24E9F4:  LDR             R0, [SP,#0xC0+var_A0]
24E9F6:  LDR.W           R8, [R0]
24E9FA:  CMP.W           R8, #0
24E9FE:  BEQ.W           loc_24ED98
24EA02:  LDR.W           R11, [R8,#0x6C]
24EA06:  CMP.W           R11, #0
24EA0A:  BEQ             loc_24EA12
24EA0C:  MOV.W           R9, #0
24EA10:  B               loc_24EC1A
24EA12:  ADD.W           R0, R8, #0x54 ; 'T'
24EA16:  DMB.W           ISH
24EA1A:  LDREX.W         R9, [R0]
24EA1E:  STREX.W         R1, R4, [R0]
24EA22:  CMP             R1, #0
24EA24:  BNE             loc_24EA1A
24EA26:  CMP.W           R9, #0
24EA2A:  DMB.W           ISH
24EA2E:  BEQ             loc_24EA0C
24EA30:  LDR.W           R0, [R8,#4]
24EA34:  VLDR            S4, [R0,#0x18]
24EA38:  VLDR            S2, [R0,#0x1C]
24EA3C:  VMUL.F32        S6, S4, S4
24EA40:  VLDR            S0, [R0,#0x20]
24EA44:  VMUL.F32        S8, S2, S2
24EA48:  VMUL.F32        S10, S0, S0
24EA4C:  VADD.F32        S6, S6, S8
24EA50:  VADD.F32        S6, S6, S10
24EA54:  VCMPE.F32       S6, #0.0
24EA58:  VMRS            APSR_nzcv, FPSCR
24EA5C:  BLE             loc_24EA72
24EA5E:  VSQRT.F32       S6, S6
24EA62:  VDIV.F32        S6, S24, S6
24EA66:  VMUL.F32        S0, S0, S6
24EA6A:  VMUL.F32        S2, S2, S6
24EA6E:  VMUL.F32        S4, S4, S6
24EA72:  VLDR            S10, [R0,#0x24]
24EA76:  VLDR            S8, [R0,#0x28]
24EA7A:  VMUL.F32        S12, S10, S10
24EA7E:  VLDR            S6, [R0,#0x2C]
24EA82:  VMUL.F32        S14, S8, S8
24EA86:  VMUL.F32        S1, S6, S6
24EA8A:  VADD.F32        S12, S12, S14
24EA8E:  VADD.F32        S12, S12, S1
24EA92:  VCMPE.F32       S12, #0.0
24EA96:  VMRS            APSR_nzcv, FPSCR
24EA9A:  BLE             loc_24EAB0
24EA9C:  VSQRT.F32       S12, S12
24EAA0:  VDIV.F32        S12, S24, S12
24EAA4:  VMUL.F32        S6, S6, S12
24EAA8:  VMUL.F32        S8, S8, S12
24EAAC:  VMUL.F32        S10, S10, S12
24EAB0:  VMUL.F32        S12, S4, S6
24EAB4:  VMUL.F32        S14, S0, S10
24EAB8:  VMUL.F32        S1, S0, S8
24EABC:  VMUL.F32        S3, S2, S6
24EAC0:  VMUL.F32        S5, S2, S10
24EAC4:  VMUL.F32        S7, S4, S8
24EAC8:  VSUB.F32        S14, S14, S12
24EACC:  VSUB.F32        S1, S3, S1
24EAD0:  VSUB.F32        S12, S7, S5
24EAD4:  VMUL.F32        S3, S14, S14
24EAD8:  VMUL.F32        S5, S1, S1
24EADC:  VMUL.F32        S7, S12, S12
24EAE0:  VADD.F32        S3, S5, S3
24EAE4:  VADD.F32        S3, S7, S3
24EAE8:  VCMPE.F32       S3, #0.0
24EAEC:  VMRS            APSR_nzcv, FPSCR
24EAF0:  BLE             loc_24EB06
24EAF2:  VSQRT.F32       S3, S3
24EAF6:  VDIV.F32        S3, S24, S3
24EAFA:  VMUL.F32        S12, S12, S3
24EAFE:  VMUL.F32        S14, S14, S3
24EB02:  VMUL.F32        S1, S1, S3
24EB06:  VNEG.F32        S3, S4
24EB0A:  MOV.W           R1, #0x3F800000
24EB0E:  VNEG.F32        S5, S2
24EB12:  STR             R4, [R0,#0x44]
24EB14:  VNEG.F32        S7, S0
24EB18:  STR             R4, [R0,#0x54]
24EB1A:  STR             R4, [R0,#0x64]
24EB1C:  VSTR            S1, [R0,#0x38]
24EB20:  VSTR            S10, [R0,#0x3C]
24EB24:  VSTR            S3, [R0,#0x40]
24EB28:  VSTR            S14, [R0,#0x48]
24EB2C:  VSTR            S8, [R0,#0x4C]
24EB30:  VSTR            S5, [R0,#0x50]
24EB34:  VSTR            S12, [R0,#0x58]
24EB38:  VSTR            S6, [R0,#0x5C]
24EB3C:  VSTR            S7, [R0,#0x60]
24EB40:  STR             R1, [R0,#0x74]
24EB42:  VLDR            S3, [R0]
24EB46:  VLDR            S5, [R0,#4]
24EB4A:  VMUL.F32        S7, S1, S3
24EB4E:  VLDR            S15, [R0,#8]
24EB52:  VMUL.F32        S9, S14, S5
24EB56:  VNMUL.F32       S11, S4, S3
24EB5A:  VMUL.F32        S13, S5, S2
24EB5E:  VMUL.F32        S3, S10, S3
24EB62:  VMUL.F32        S5, S8, S5
24EB66:  VMUL.F32        S19, S12, S15
24EB6A:  VADD.F32        S7, S7, S9
24EB6E:  VMUL.F32        S9, S15, S0
24EB72:  VSUB.F32        S11, S11, S13
24EB76:  VMUL.F32        S13, S6, S15
24EB7A:  VADD.F32        S3, S3, S5
24EB7E:  VADD.F32        S5, S7, S19
24EB82:  VSUB.F32        S7, S11, S9
24EB86:  VADD.F32        S3, S3, S13
24EB8A:  VADD.F32        S5, S5, S16
24EB8E:  VADD.F32        S7, S7, S16
24EB92:  VADD.F32        S3, S3, S16
24EB96:  VNEG.F32        S9, S5
24EB9A:  VNEG.F32        S11, S7
24EB9E:  VNEG.F32        S13, S3
24EBA2:  VSTR            S9, [R0,#0x68]
24EBA6:  VSTR            S13, [R0,#0x6C]
24EBAA:  VSTR            S11, [R0,#0x70]
24EBAE:  VLDR            S9, [R0,#0xC]
24EBB2:  VLDR            S11, [R0,#0x10]
24EBB6:  VMUL.F32        S1, S1, S9
24EBBA:  VMUL.F32        S14, S14, S11
24EBBE:  VMUL.F32        S10, S10, S9
24EBC2:  VMUL.F32        S8, S8, S11
24EBC6:  VNMUL.F32       S4, S4, S9
24EBCA:  VLDR            S9, [R0,#0x14]
24EBCE:  VMUL.F32        S2, S11, S2
24EBD2:  VMUL.F32        S12, S12, S9
24EBD6:  VMUL.F32        S6, S6, S9
24EBDA:  VADD.F32        S14, S1, S14
24EBDE:  VMUL.F32        S0, S9, S0
24EBE2:  VADD.F32        S8, S10, S8
24EBE6:  VSUB.F32        S2, S4, S2
24EBEA:  VMUL.F32        S4, S5, S16
24EBEE:  VADD.F32        S10, S14, S12
24EBF2:  VMUL.F32        S12, S3, S16
24EBF6:  VADD.F32        S6, S8, S6
24EBFA:  VMUL.F32        S8, S7, S16
24EBFE:  VSUB.F32        S0, S2, S0
24EC02:  VSUB.F32        S2, S10, S4
24EC06:  VSUB.F32        S4, S6, S12
24EC0A:  VSUB.F32        S0, S0, S8
24EC0E:  VSTR            S2, [R0,#0x78]
24EC12:  VSTR            S4, [R0,#0x7C]
24EC16:  VSTR            S0, [R0,#0x80]
24EC1A:  LDR.W           R0, [R8,#0x74]
24EC1E:  CMP             R0, #0
24EC20:  BEQ             loc_24ECA8
24EC22:  LDR.W           R5, [R8,#0x70]
24EC26:  ADD.W           R6, R5, R0,LSL#2
24EC2A:  LDR             R0, [R5]
24EC2C:  LDR.W           R1, [R0,#0x80]
24EC30:  MOVW            R2, #0x1012
24EC34:  CMP             R1, R2
24EC36:  BEQ             loc_24EC68
24EC38:  LDR.W           R0, [R8,#0x74]
24EC3C:  SUBS            R0, #1
24EC3E:  STR.W           R0, [R8,#0x74]
24EC42:  LDR.W           R0, [R6,#-4]!
24EC46:  CMP             R5, R6
24EC48:  STR             R0, [R5]
24EC4A:  BNE             loc_24EC2C
24EC4C:  B               loc_24ECA8
24EC4E:  ALIGN 0x10
24EC50:  DCFS 0.0
24EC54:  DCFS 0.000030518
24EC58:  DCFS -0.0039062
24EC5C:  ALIGN 0x10
24EC60:  DCFD 2.14748365e9
24EC68:  CMP.W           R11, #0
24EC6C:  BNE             loc_24EC98
24EC6E:  ADD.W           R0, R0, #0x5980
24EC72:  DMB.W           ISH
24EC76:  LDREX.W         R1, [R0]
24EC7A:  STREX.W         R2, R4, [R0]
24EC7E:  CMP             R2, #0
24EC80:  BNE             loc_24EC76
24EC82:  ORRS.W          R0, R1, R9
24EC86:  DMB.W           ISH
24EC8A:  BEQ             loc_24EC98
24EC8C:  LDR             R0, [R5]
24EC8E:  MOVW            R1, #0x5984
24EC92:  LDR             R2, [R0,R1]
24EC94:  MOV             R1, R8
24EC96:  BLX             R2
24EC98:  LDR.W           R0, [R5],#4
24EC9C:  MOV             R2, R10
24EC9E:  LDR             R1, [SP,#0xC0+var_68]
24ECA0:  BLX             j_MixSource
24ECA4:  CMP             R5, R6
24ECA6:  BNE             loc_24EC2A
24ECA8:  LDR.W           R0, [R8,#0x80]
24ECAC:  CMP             R0, #0
24ECAE:  BEQ             loc_24ED8C
24ECB0:  LDR.W           R6, [R8,#0x7C]
24ECB4:  ADD.W           R9, R6, R0,LSL#2
24ECB8:  LDR             R0, [R6]
24ECBA:  MOVW            R1, #0x20D0
24ECBE:  ADD             R1, R0
24ECC0:  VLDR            S2, [R1]
24ECC4:  VCMPE.F32       S2, S18
24ECC8:  VMRS            APSR_nzcv, FPSCR
24ECCC:  VMOV.F32        S0, S2
24ECD0:  IT LT
24ECD2:  VMOVLT.F32      S0, S16
24ECD6:  BLT             loc_24ED18
24ECD8:  VMUL.F32        S0, S2, S20
24ECDC:  VLDR            S4, [R0,#0xD0]
24ECE0:  CMP.W           R10, #2
24ECE4:  VADD.F32        S4, S2, S4
24ECE8:  VADD.F32        S0, S2, S0
24ECEC:  VSTR            S4, [R0,#0xD0]
24ECF0:  BCC             loc_24ED16
24ECF2:  MOVS            R0, #1
24ECF4:  MOVS            R1, #0xD4
24ECF6:  VMUL.F32        S2, S0, S20
24ECFA:  LDR             R2, [R6]
24ECFC:  ADDS            R0, #1
24ECFE:  ADD             R2, R1
24ED00:  ADDS            R1, #4
24ED02:  CMP             R0, R10
24ED04:  VLDR            S4, [R2]
24ED08:  VADD.F32        S4, S0, S4
24ED0C:  VADD.F32        S0, S0, S2
24ED10:  VSTR            S4, [R2]
24ED14:  BCC             loc_24ECF6
24ED16:  LDR             R0, [R6]
24ED18:  MOVW            R2, #0x20D4
24ED1C:  ADDS            R1, R0, R2
24ED1E:  CMP.W           R11, #0
24ED22:  VLDR            S2, [R1]
24ED26:  MOVW            R1, #0x20D0
24ED2A:  ADD             R0, R1
24ED2C:  VADD.F32        S0, S0, S2
24ED30:  VSTR            S0, [R0]
24ED34:  LDR             R0, [R6]
24ED36:  STR             R4, [R0,R2]
24ED38:  BNE             loc_24ED62
24ED3A:  LDR             R0, [R6]
24ED3C:  DMB.W           ISH
24ED40:  ADDS            R0, #0xC0
24ED42:  LDREX.W         R1, [R0]
24ED46:  STREX.W         R2, R4, [R0]
24ED4A:  CMP             R2, #0
24ED4C:  BNE             loc_24ED42
24ED4E:  CMP             R1, #0
24ED50:  DMB.W           ISH
24ED54:  BEQ             loc_24ED62
24ED56:  LDR             R2, [R6]
24ED58:  LDR             R1, [SP,#0xC0+var_68]
24ED5A:  LDR.W           R0, [R2,#0xC4]
24ED5E:  LDR             R3, [R0,#8]
24ED60:  BLX             R3
24ED62:  LDR             R1, [R6]
24ED64:  LDR             R3, [SP,#0xC0+var_64]
24ED66:  ADD.W           R2, R1, #0xD0
24ED6A:  LDR.W           R0, [R1,#0xC4]
24ED6E:  MOV             R1, R10
24ED70:  LDR             R5, [R0,#0xC]
24ED72:  BLX             R5
24ED74:  MOVS            R0, #0
24ED76:  MOVS            R1, #0xD0
24ED78:  LDR             R2, [R6]
24ED7A:  ADDS            R0, #1
24ED7C:  CMP             R0, R10
24ED7E:  STR             R4, [R2,R1]
24ED80:  ADD.W           R1, R1, #4
24ED84:  BCC             loc_24ED78
24ED86:  ADDS            R6, #4
24ED88:  CMP             R6, R9
24ED8A:  BNE             loc_24ECB8
24ED8C:  LDR.W           R8, [R8,#0x90]
24ED90:  CMP.W           R8, #0
24ED94:  BNE.W           loc_24EA02
24ED98:  LDR             R0, [SP,#0xC0+var_6C]
24ED9A:  MOV             R11, #0x16150
24EDA2:  LDR             R0, [R0]
24EDA4:  LDRD.W          R9, R8, [SP,#0xC0+var_78]
24EDA8:  CMP             R0, #0
24EDAA:  BEQ             loc_24EE84
24EDAC:  MOVW            R1, #0x20D0
24EDB0:  ADD             R1, R0
24EDB2:  VLDR            S0, [R1]
24EDB6:  VCMPE.F32       S0, S18
24EDBA:  VMRS            APSR_nzcv, FPSCR
24EDBE:  BGE             loc_24EDC6
24EDC0:  VMOV.F32        S0, S16
24EDC4:  B               loc_24EE12
24EDC6:  CMP.W           R10, #0
24EDCA:  BEQ             loc_24EE12
24EDCC:  VMUL.F32        S2, S0, S20
24EDD0:  VLDR            S4, [R0,#0xD0]
24EDD4:  CMP.W           R10, #1
24EDD8:  VADD.F32        S4, S0, S4
24EDDC:  VADD.F32        S0, S0, S2
24EDE0:  VSTR            S4, [R0,#0xD0]
24EDE4:  BNE             loc_24EDEA
24EDE6:  LDR             R3, [SP,#0xC0+var_6C]
24EDE8:  B               loc_24EE10
24EDEA:  LDR             R3, [SP,#0xC0+var_6C]
24EDEC:  MOVS            R0, #1
24EDEE:  MOVS            R1, #0xD4
24EDF0:  VMUL.F32        S2, S0, S20
24EDF4:  LDR             R2, [R3]
24EDF6:  ADDS            R0, #1
24EDF8:  ADD             R2, R1
24EDFA:  ADDS            R1, #4
24EDFC:  CMP             R0, R10
24EDFE:  VLDR            S4, [R2]
24EE02:  VADD.F32        S4, S0, S4
24EE06:  VADD.F32        S0, S0, S2
24EE0A:  VSTR            S4, [R2]
24EE0E:  BCC             loc_24EDF0
24EE10:  LDR             R0, [R3]
24EE12:  MOVW            R2, #0x20D4
24EE16:  ADDS            R1, R0, R2
24EE18:  VLDR            S2, [R1]
24EE1C:  MOVW            R1, #0x20D0
24EE20:  ADD             R0, R1
24EE22:  VADD.F32        S0, S0, S2
24EE26:  VSTR            S0, [R0]
24EE2A:  LDR             R1, [SP,#0xC0+var_6C]
24EE2C:  LDR             R0, [R1]
24EE2E:  STR             R4, [R0,R2]
24EE30:  LDR             R0, [R1]
24EE32:  DMB.W           ISH
24EE36:  ADDS            R0, #0xC0
24EE38:  LDREX.W         R1, [R0]
24EE3C:  STREX.W         R2, R4, [R0]
24EE40:  CMP             R2, #0
24EE42:  BNE             loc_24EE38
24EE44:  DMB.W           ISH
24EE48:  CMP             R1, #0
24EE4A:  LDR             R5, [SP,#0xC0+var_6C]
24EE4C:  BEQ             loc_24EE5A
24EE4E:  LDR             R2, [R5]
24EE50:  LDR             R1, [SP,#0xC0+var_68]
24EE52:  LDR.W           R0, [R2,#0xC4]
24EE56:  LDR             R3, [R0,#8]
24EE58:  BLX             R3
24EE5A:  LDR             R1, [R5]
24EE5C:  LDR             R3, [SP,#0xC0+var_64]
24EE5E:  ADD.W           R2, R1, #0xD0
24EE62:  LDR.W           R0, [R1,#0xC4]
24EE66:  MOV             R1, R10
24EE68:  LDR             R6, [R0,#0xC]
24EE6A:  BLX             R6
24EE6C:  CMP.W           R10, #0
24EE70:  BEQ             loc_24EE84
24EE72:  MOVS            R0, #0
24EE74:  MOVS            R1, #0xD0
24EE76:  LDR             R2, [R5]
24EE78:  ADDS            R0, #1
24EE7A:  CMP             R0, R10
24EE7C:  STR             R4, [R2,R1]
24EE7E:  ADD.W           R1, R1, #4
24EE82:  BCC             loc_24EE76
24EE84:  LDR             R0, [SP,#0xC0+var_70]
24EE86:  LDR             R5, [SP,#0xC0+var_68]
24EE88:  LDR             R0, [R0]
24EE8A:  LDR             R1, [R0,#0x30]
24EE8C:  MOV             R0, R5
24EE8E:  BLX             R1
24EE90:  LDR             R0, [R5,#0x1C]
24EE92:  CMP.W           R0, #0x1500
24EE96:  BEQ.W           loc_24F020
24EE9A:  MOVW            R12, #:lower16:(elf_hash_chain+0x6018)
24EE9E:  MOVW            R1, #0x1501
24EEA2:  CMP             R0, R1
24EEA4:  MOVT            R12, #:upper16:(elf_hash_chain+0x6018)
24EEA8:  MOV.W           LR, #0x80
24EEAC:  BNE.W           loc_24F066
24EEB0:  LDR             R0, [SP,#0xC0+var_A8]
24EEB2:  VLDR            S2, [R0]
24EEB6:  VCMPE.F32       S2, S18
24EEBA:  VMRS            APSR_nzcv, FPSCR
24EEBE:  VMOV.F32        S0, S2
24EEC2:  IT LT
24EEC4:  VMOVLT.F32      S0, S16
24EEC8:  BLT             loc_24EEF2
24EECA:  CMP.W           R10, #0
24EECE:  BEQ             loc_24EEF2
24EED0:  VMOV.F32        S0, S2
24EED4:  LDR             R1, [SP,#0xC0+var_64]
24EED6:  MOVS            R0, #0
24EED8:  VMUL.F32        S4, S0, S20
24EEDC:  VLDR            S2, [R1]
24EEE0:  ADDS            R0, #1
24EEE2:  VADD.F32        S2, S0, S2
24EEE6:  CMP             R0, R10
24EEE8:  VADD.F32        S0, S0, S4
24EEEC:  VSTM            R1!, {S2}
24EEF0:  BCC             loc_24EED8
24EEF2:  LDR             R0, [SP,#0xC0+var_B4]
24EEF4:  LDR             R1, [SP,#0xC0+var_A8]
24EEF6:  VLDR            S2, [R0]
24EEFA:  VADD.F32        S0, S0, S2
24EEFE:  VSTR            S0, [R1]
24EF02:  STR             R4, [R0]
24EF04:  LDR             R0, [SP,#0xC0+var_A4]
24EF06:  VLDR            S2, [R0]
24EF0A:  VCMPE.F32       S2, S18
24EF0E:  VMRS            APSR_nzcv, FPSCR
24EF12:  VMOV.F32        S0, S2
24EF16:  IT LT
24EF18:  VMOVLT.F32      S0, S16
24EF1C:  BLT             loc_24EF46
24EF1E:  CMP.W           R10, #0
24EF22:  BEQ             loc_24EF46
24EF24:  VMOV.F32        S0, S2
24EF28:  LDR             R1, [SP,#0xC0+var_80]
24EF2A:  MOVS            R0, #0
24EF2C:  VMUL.F32        S4, S0, S20
24EF30:  VLDR            S2, [R1]
24EF34:  ADDS            R0, #1
24EF36:  VADD.F32        S2, S0, S2
24EF3A:  CMP             R0, R10
24EF3C:  VADD.F32        S0, S0, S4
24EF40:  VSTM            R1!, {S2}
24EF44:  BCC             loc_24EF2C
24EF46:  LDR             R0, [SP,#0xC0+var_B0]
24EF48:  LDR             R1, [SP,#0xC0+var_A4]
24EF4A:  VLDR            S2, [R0]
24EF4E:  VADD.F32        S0, S0, S2
24EF52:  VSTR            S0, [R1]
24EF56:  STR             R4, [R0]
24EF58:  LDR             R0, [SP,#0xC0+var_68]
24EF5A:  LDR.W           R0, [R0,#0xB0]
24EF5E:  CMP             R0, #0
24EF60:  IT NE
24EF62:  CMPNE.W         R10, #0
24EF66:  BEQ.W           loc_24F0D2
24EF6A:  LDR             R2, [SP,#0xC0+var_64]
24EF6C:  MOVS            R1, #1
24EF6E:  B               loc_24EF7A
24EF70:  LDR             R0, [SP,#0xC0+var_68]
24EF72:  ADDS            R2, #4
24EF74:  ADDS            R1, #1
24EF76:  LDR.W           R0, [R0,#0xB0]
24EF7A:  ADD.W           R3, R2, #0x2000
24EF7E:  VLDR            S0, [R2]
24EF82:  ADD.W           R12, R0, #8
24EF86:  CMP             R1, R10
24EF88:  VLDR            S2, [R3]
24EF8C:  VCVT.F64.F32    D27, S0
24EF90:  VCVT.F64.F32    D28, S2
24EF94:  VLDM            R12, {D16-D20}
24EF98:  ADD.W           R12, R0, #0x38 ; '8'
24EF9C:  VLDM            R12, {D21-D26}
24EFA0:  VMUL.F64        D21, D19, D21
24EFA4:  VMUL.F64        D29, D18, D27
24EFA8:  VMUL.F64        D19, D19, D22
24EFAC:  VMUL.F64        D18, D18, D28
24EFB0:  VMUL.F64        D22, D17, D24
24EFB4:  VMUL.F64        D24, D16, D28
24EFB8:  VMUL.F64        D25, D20, D25
24EFBC:  VMUL.F64        D17, D17, D23
24EFC0:  VMUL.F64        D16, D16, D27
24EFC4:  VMUL.F64        D20, D20, D26
24EFC8:  VADD.F64        D21, D29, D21
24EFCC:  VADD.F64        D18, D18, D19
24EFD0:  VADD.F64        D16, D16, D17
24EFD4:  VADD.F64        D17, D18, D20
24EFD8:  VADD.F64        D19, D24, D22
24EFDC:  VADD.F64        D21, D21, D25
24EFE0:  VADD.F64        D18, D19, D21
24EFE4:  VADD.F64        D20, D17, D16
24EFE8:  VCVT.F32.F64    S0, D18
24EFEC:  VCVT.F32.F64    S2, D20
24EFF0:  VLDR            S4, [R0,#0x30]
24EFF4:  VSTR            D27, [R0,#0x38]
24EFF8:  VMUL.F32        S0, S4, S0
24EFFC:  VSTR            D28, [R0,#0x40]
24F000:  VMUL.F32        S2, S4, S2
24F004:  VSTR            D16, [R0,#0x48]
24F008:  VSTR            D19, [R0,#0x50]
24F00C:  VSTR            D21, [R0,#0x58]
24F010:  VSTR            D17, [R0,#0x60]
24F014:  VSTR            S0, [R2]
24F018:  VSTR            S2, [R3]
24F01C:  BCC             loc_24EF70
24F01E:  B               loc_24F0D2
24F020:  LDR             R0, [SP,#0xC0+var_AC]
24F022:  VMOV.F32        S0, S16
24F026:  MOV.W           LR, #0x80
24F02A:  VLDR            S2, [R0]
24F02E:  VCMPE.F32       S2, S18
24F032:  VMRS            APSR_nzcv, FPSCR
24F036:  BLT.W           loc_24F220
24F03A:  CMP.W           R10, #0
24F03E:  BEQ.W           loc_24F21C
24F042:  VMOV.F32        S0, S2
24F046:  LDR             R1, [SP,#0xC0+var_84]
24F048:  MOVS            R0, #0
24F04A:  VMUL.F32        S4, S0, S20
24F04E:  VLDR            S2, [R1]
24F052:  ADDS            R0, #1
24F054:  VADD.F32        S2, S0, S2
24F058:  CMP             R0, R10
24F05A:  VADD.F32        S0, S0, S4
24F05E:  VSTM            R1!, {S2}
24F062:  BCC             loc_24F04A
24F064:  B               loc_24F220
24F066:  LDR             R5, [SP,#0xC0+var_64]
24F068:  MOVS            R0, #0
24F06A:  LDR             R1, [SP,#0xC0+var_68]
24F06C:  ADD.W           R2, R1, R0,LSL#2
24F070:  ADD.W           R3, R2, R11
24F074:  VLDR            S2, [R3]
24F078:  VCMPE.F32       S2, S18
24F07C:  VMRS            APSR_nzcv, FPSCR
24F080:  VMOV.F32        S0, S2
24F084:  IT LT
24F086:  VMOVLT.F32      S0, S16
24F08A:  BLT             loc_24F0B4
24F08C:  CMP.W           R10, #0
24F090:  BEQ             loc_24F0B4
24F092:  VMOV.F32        S0, S2
24F096:  MOVS            R6, #0
24F098:  MOV             R1, R5
24F09A:  VMUL.F32        S4, S0, S20
24F09E:  VLDR            S2, [R1]
24F0A2:  ADDS            R6, #1
24F0A4:  VADD.F32        S2, S0, S2
24F0A8:  CMP             R6, R10
24F0AA:  VADD.F32        S0, S0, S4
24F0AE:  VSTM            R1!, {S2}
24F0B2:  BCC             loc_24F09A
24F0B4:  ADD.W           R1, R2, R12
24F0B8:  ADDS            R0, #1
24F0BA:  ADD.W           R5, R5, #0x2000
24F0BE:  CMP             R0, #9
24F0C0:  VLDR            S2, [R1]
24F0C4:  VADD.F32        S0, S0, S2
24F0C8:  VSTR            S0, [R3]
24F0CC:  STR.W           R4, [R2,R12]
24F0D0:  BNE             loc_24F06A
24F0D2:  CMP.W           R9, #0
24F0D6:  BEQ.W           loc_24F23A
24F0DA:  LDR             R0, [SP,#0xC0+var_68]
24F0DC:  LDR             R0, [R0,#0x20]
24F0DE:  SUB.W           R0, R0, #0x1400; switch 7 cases
24F0E2:  CMP             R0, #6
24F0E4:  BHI             def_24F0E6; jumptable 0024F0E6 default case
24F0E6:  TBB.W           [PC,R0]; switch jump
24F0EA:  DCB 4; jump table for switch statement
24F0EB:  DCB 0x19
24F0EC:  DCB 0x2C
24F0ED:  DCB 0x41
24F0EE:  DCB 0x56
24F0EF:  DCB 0x6D
24F0F0:  DCB 0x83
24F0F1:  ALIGN 2
24F0F2:  LDR             R0, [SP,#0xC0+var_68]; jumptable 0024F0E6 case 5120
24F0F4:  LDR             R0, [R0,#0x1C]
24F0F6:  SUB.W           R1, R0, #0x1500; switch 7 cases
24F0FA:  CMP             R1, #6
24F0FC:  BHI.W           def_24F102; jumptable 0024F102 default case
24F100:  MOVS            R0, #1
24F102:  TBH.W           [PC,R1,LSL#1]; switch jump
24F106:  DCW 0xE3; jump table for switch statement
24F108:  DCW 7
24F10A:  DCW 0xCB
24F10C:  DCW 0xDE
24F10E:  DCW 0xA0
24F110:  DCW 0xE0
24F112:  DCW 0xE2
24F114:  MOVS            R0, #2; jumptable 0024F102 case 5377
24F116:  B               loc_24F2CC; jumptable 0024F102 case 5376
24F118:  MOVS            R0, #0; jumptable 0024F0E6 default case
24F11A:  B               loc_24F650
24F11C:  LDR             R0, [SP,#0xC0+var_68]; jumptable 0024F0E6 case 5121
24F11E:  LDR             R0, [R0,#0x1C]
24F120:  SUB.W           R1, R0, #0x1500; switch 7 cases
24F124:  CMP             R1, #6
24F126:  BHI.W           def_24F12C; jumptable 0024F12C default case
24F12A:  MOVS            R0, #1
24F12C:  TBH.W           [PC,R1,LSL#1]; switch jump
24F130:  DCW 0x10F; jump table for switch statement
24F132:  DCW 7
24F134:  DCW 0xB8
24F136:  DCW 0x10A
24F138:  DCW 0x90
24F13A:  DCW 0x10C
24F13C:  DCW 0x10E
24F13E:  MOVS            R0, #2; jumptable 0024F12C case 5377
24F140:  B               loc_24F34E; jumptable 0024F12C case 5376
24F142:  LDR             R0, [SP,#0xC0+var_68]; jumptable 0024F0E6 case 5122
24F144:  LDR             R1, [R0,#0x1C]
24F146:  SUB.W           R0, R1, #0x1500; switch 7 cases
24F14A:  CMP             R0, #6
24F14C:  BHI.W           def_24F154; jumptable 0024F154 default case
24F150:  MOV.W           R12, #1
24F154:  TBH.W           [PC,R0,LSL#1]; switch jump
24F158:  DCW 0x141; jump table for switch statement
24F15A:  DCW 7
24F15C:  DCW 0xA6
24F15E:  DCW 0x139
24F160:  DCW 0x81
24F162:  DCW 0x13C
24F164:  DCW 0x13F
24F166:  MOV.W           R12, #2; jumptable 0024F154 case 5377
24F16A:  B               loc_24F3DA; jumptable 0024F154 case 5376
24F16C:  LDR             R0, [SP,#0xC0+var_68]; jumptable 0024F0E6 case 5123
24F16E:  LDR             R1, [R0,#0x1C]
24F170:  SUB.W           R0, R1, #0x1500; switch 7 cases
24F174:  CMP             R0, #6
24F176:  BHI.W           def_24F17E; jumptable 0024F17E default case
24F17A:  MOV.W           R12, #1
24F17E:  TBH.W           [PC,R0,LSL#1]; switch jump
24F182:  DCW 0x172; jump table for switch statement
24F184:  DCW 7
24F186:  DCW 0x94
24F188:  DCW 0x16A
24F18A:  DCW 0x72
24F18C:  DCW 0x16D
24F18E:  DCW 0x170
24F190:  MOV.W           R12, #2; jumptable 0024F17E case 5377
24F194:  B               loc_24F466; jumptable 0024F17E case 5376
24F196:  LDR             R0, [SP,#0xC0+var_68]; jumptable 0024F0E6 case 5124
24F198:  LDR             R1, [R0,#0x1C]
24F19A:  SUB.W           R0, R1, #0x1500; switch 7 cases
24F19E:  CMP             R0, #6
24F1A0:  BHI.W           def_24F1AC; jumptable 0024F1AC default case
24F1A4:  MOV.W           R12, #1
24F1A8:  LDR.W           LR, [SP,#0xC0+var_7C]
24F1AC:  TBH.W           [PC,R0,LSL#1]; switch jump
24F1B0:  DCW 0x1A6; jump table for switch statement
24F1B2:  DCW 7
24F1B4:  DCW 0x80
24F1B6:  DCW 0x19E
24F1B8:  DCW 0x63
24F1BA:  DCW 0x1A1
24F1BC:  DCW 0x1A4
24F1BE:  MOV.W           R12, #2; jumptable 0024F1AC case 5377
24F1C2:  B               loc_24F4FC; jumptable 0024F1AC case 5376
24F1C4:  LDR             R0, [SP,#0xC0+var_68]; jumptable 0024F0E6 case 5125
24F1C6:  LDR             R1, [R0,#0x1C]
24F1C8:  SUB.W           R0, R1, #0x1500; switch 7 cases
24F1CC:  CMP             R0, #6
24F1CE:  BHI             def_24F1D8; jumptable 0024F1D8 default case
24F1D0:  MOV.W           R12, #1
24F1D4:  LDR.W           R11, [SP,#0xC0+var_7C]
24F1D8:  TBH.W           [PC,R0,LSL#1]; switch jump
24F1DC:  DCW 0x1D4; jump table for switch statement
24F1DE:  DCW 7
24F1E0:  DCW 0x6D
24F1E2:  DCW 0x1CC
24F1E4:  DCW 0x55
24F1E6:  DCW 0x1CF
24F1E8:  DCW 0x1D2
24F1EA:  MOV.W           R12, #2; jumptable 0024F1D8 case 5377
24F1EE:  B               loc_24F584; jumptable 0024F1D8 case 5376
24F1F0:  LDR             R0, [SP,#0xC0+var_68]; jumptable 0024F0E6 case 5126
24F1F2:  LDR             R1, [R0,#0x1C]
24F1F4:  SUB.W           R0, R1, #0x1500; switch 7 cases
24F1F8:  CMP             R0, #6
24F1FA:  BHI             def_24F204; jumptable 0024F204 default case
24F1FC:  MOV.W           R12, #1
24F200:  LDR.W           R11, [SP,#0xC0+var_7C]
24F204:  TBH.W           [PC,R0,LSL#1]; switch jump
24F208:  DCW 0x204; jump table for switch statement
24F20A:  DCW 7
24F20C:  DCW 0x5A
24F20E:  DCW 0x1FC
24F210:  DCW 0x47
24F212:  DCW 0x1FF
24F214:  DCW 0x202
24F216:  MOV.W           R12, #2; jumptable 0024F204 case 5377
24F21A:  B               loc_24F610; jumptable 0024F204 case 5376
24F21C:  VMOV.F32        S0, S2
24F220:  LDR             R0, [SP,#0xC0+var_B8]
24F222:  LDR             R1, [SP,#0xC0+var_AC]
24F224:  VLDR            S2, [R0]
24F228:  VADD.F32        S0, S0, S2
24F22C:  VSTR            S0, [R1]
24F230:  STR             R4, [R0]
24F232:  CMP.W           R9, #0
24F236:  BNE.W           loc_24F0DA
24F23A:  MOV.W           R9, #0
24F23E:  B               loc_24F652
24F240:  CMP.W           R0, #0x80000000; jumptable 0024F102 default case
24F244:  BNE             loc_24F29C; jumptable 0024F102 case 5378
24F246:  MOVS            R0, #6; jumptable 0024F102 case 5380
24F248:  B               loc_24F2CC; jumptable 0024F102 case 5376
24F24A:  CMP.W           R0, #0x80000000; jumptable 0024F12C default case
24F24E:  BNE             loc_24F2A0; jumptable 0024F12C case 5378
24F250:  MOVS            R0, #6; jumptable 0024F12C case 5380
24F252:  B               loc_24F34E; jumptable 0024F12C case 5376
24F254:  CMP.W           R1, #0x80000000; jumptable 0024F154 default case
24F258:  BNE             loc_24F2A4; jumptable 0024F154 case 5378
24F25A:  MOV.W           R12, #6; jumptable 0024F154 case 5380
24F25E:  B               loc_24F3DA; jumptable 0024F154 case 5376
24F260:  CMP.W           R1, #0x80000000; jumptable 0024F17E default case
24F264:  BNE             loc_24F2AA; jumptable 0024F17E case 5378
24F266:  MOV.W           R12, #6; jumptable 0024F17E case 5380
24F26A:  B               loc_24F466; jumptable 0024F17E case 5376
24F26C:  LDR.W           LR, [SP,#0xC0+var_7C]; jumptable 0024F1AC default case
24F270:  CMP.W           R1, #0x80000000
24F274:  BNE             loc_24F2B0; jumptable 0024F1AC case 5378
24F276:  MOV.W           R12, #6; jumptable 0024F1AC case 5380
24F27A:  B               loc_24F4FC; jumptable 0024F1AC case 5376
24F27C:  LDR.W           R11, [SP,#0xC0+var_7C]; jumptable 0024F1D8 default case
24F280:  CMP.W           R1, #0x80000000
24F284:  BNE             loc_24F2B6; jumptable 0024F1D8 case 5378
24F286:  MOV.W           R12, #6; jumptable 0024F1D8 case 5380
24F28A:  B               loc_24F584; jumptable 0024F1D8 case 5376
24F28C:  LDR.W           R11, [SP,#0xC0+var_7C]; jumptable 0024F204 default case
24F290:  CMP.W           R1, #0x80000000
24F294:  BNE             loc_24F2BC; jumptable 0024F204 case 5378
24F296:  MOV.W           R12, #6; jumptable 0024F204 case 5380
24F29A:  B               loc_24F610; jumptable 0024F204 case 5376
24F29C:  MOVS            R0, #0; jumptable 0024F102 case 5378
24F29E:  B               loc_24F2CC; jumptable 0024F102 case 5376
24F2A0:  MOVS            R0, #0; jumptable 0024F12C case 5378
24F2A2:  B               loc_24F34E; jumptable 0024F12C case 5376
24F2A4:  MOV.W           R12, #0; jumptable 0024F154 case 5378
24F2A8:  B               loc_24F3DA; jumptable 0024F154 case 5376
24F2AA:  MOV.W           R12, #0; jumptable 0024F17E case 5378
24F2AE:  B               loc_24F466; jumptable 0024F17E case 5376
24F2B0:  MOV.W           R12, #0; jumptable 0024F1AC case 5378
24F2B4:  B               loc_24F4FC; jumptable 0024F1AC case 5376
24F2B6:  MOV.W           R12, #0; jumptable 0024F1D8 case 5378
24F2BA:  B               loc_24F584; jumptable 0024F1D8 case 5376
24F2BC:  MOV.W           R12, #0; jumptable 0024F204 case 5378
24F2C0:  B               loc_24F610; jumptable 0024F204 case 5376
24F2C2:  MOVS            R0, #4; jumptable 0024F102 case 5379
24F2C4:  B               loc_24F2CC; jumptable 0024F102 case 5376
24F2C6:  MOVS            R0, #7; jumptable 0024F102 case 5381
24F2C8:  B               loc_24F2CC; jumptable 0024F102 case 5376
24F2CA:  MOVS            R0, #8; jumptable 0024F102 case 5382
24F2CC:  LDR.W           R12, [SP,#0xC0+var_64]; jumptable 0024F102 case 5376
24F2D0:  MOVS            R1, #0
24F2D2:  LDR             R2, [SP,#0xC0+var_68]
24F2D4:  ADD.W           R2, R2, R1,LSL#2
24F2D8:  LDR.W           R2, [R2,#0xBC]
24F2DC:  ADDS            R3, R2, #1
24F2DE:  IT NE
24F2E0:  CMPNE.W         R10, #0
24F2E4:  BEQ             loc_24F338
24F2E6:  ADD.W           R3, R9, R2
24F2EA:  MOV             R2, R12
24F2EC:  MOV             R5, R10
24F2EE:  VLDR            S0, [R2]
24F2F2:  ADDS            R2, #4
24F2F4:  SUBS            R5, #1
24F2F6:  VADD.F32        S2, S0, S17
24F2FA:  VADD.F32        S0, S0, S24
24F2FE:  VABS.F32        S2, S2
24F302:  VSUB.F32        S0, S0, S2
24F306:  VADD.F32        S2, S0, S26
24F30A:  VADD.F32        S0, S0, S28
24F30E:  VABS.F32        S2, S2
24F312:  VADD.F32        S0, S0, S2
24F316:  VMUL.F32        S0, S0, S30
24F31A:  VCVT.F64.F32    D16, S0
24F31E:  VMUL.F64        D16, D16, D11
24F322:  VCVT.F32.F64    S0, D16
24F326:  VCVT.S32.F32    S0, S0
24F32A:  VMOV            R6, S0
24F32E:  MOV.W           R6, R6,LSR#24
24F332:  STRB            R6, [R3]
24F334:  ADD             R3, R0
24F336:  BNE             loc_24F2EE
24F338:  ADDS            R1, #1
24F33A:  ADD.W           R12, R12, #0x2000
24F33E:  CMP             R1, #9
24F340:  BNE             loc_24F2D2
24F342:  B               loc_24F3C4
24F344:  MOVS            R0, #4; jumptable 0024F12C case 5379
24F346:  B               loc_24F34E; jumptable 0024F12C case 5376
24F348:  MOVS            R0, #7; jumptable 0024F12C case 5381
24F34A:  B               loc_24F34E; jumptable 0024F12C case 5376
24F34C:  MOVS            R0, #8; jumptable 0024F12C case 5382
24F34E:  LDR.W           R12, [SP,#0xC0+var_64]; jumptable 0024F12C case 5376
24F352:  MOVS            R1, #0
24F354:  LDR             R2, [SP,#0xC0+var_68]
24F356:  ADD.W           R2, R2, R1,LSL#2
24F35A:  LDR.W           R2, [R2,#0xBC]
24F35E:  ADDS            R3, R2, #1
24F360:  IT NE
24F362:  CMPNE.W         R10, #0
24F366:  BEQ             loc_24F3BA
24F368:  ADD.W           R3, R9, R2
24F36C:  MOV             R2, R12
24F36E:  MOV             R5, R10
24F370:  VLDR            S0, [R2]
24F374:  ADDS            R2, #4
24F376:  SUBS            R5, #1
24F378:  VADD.F32        S2, S0, S17
24F37C:  VADD.F32        S0, S0, S24
24F380:  VABS.F32        S2, S2
24F384:  VSUB.F32        S0, S0, S2
24F388:  VADD.F32        S2, S0, S26
24F38C:  VADD.F32        S0, S0, S28
24F390:  VABS.F32        S2, S2
24F394:  VADD.F32        S0, S0, S2
24F398:  VMUL.F32        S0, S0, S30
24F39C:  VCVT.F64.F32    D16, S0
24F3A0:  VMUL.F64        D16, D16, D11
24F3A4:  VCVT.F32.F64    S0, D16
24F3A8:  VCVT.S32.F32    S0, S0
24F3AC:  VMOV            R6, S0
24F3B0:  ADD.W           R6, LR, R6,LSR#24
24F3B4:  STRB            R6, [R3]
24F3B6:  ADD             R3, R0
24F3B8:  BNE             loc_24F370
24F3BA:  ADDS            R1, #1
24F3BC:  ADD.W           R12, R12, #0x2000
24F3C0:  CMP             R1, #9
24F3C2:  BNE             loc_24F354
24F3C4:  MUL.W           R0, R0, R10
24F3C8:  B               loc_24F650
24F3CA:  MOV.W           R12, #4; jumptable 0024F154 case 5379
24F3CE:  B               loc_24F3DA; jumptable 0024F154 case 5376
24F3D0:  MOV.W           R12, #7; jumptable 0024F154 case 5381
24F3D4:  B               loc_24F3DA; jumptable 0024F154 case 5376
24F3D6:  MOV.W           R12, #8; jumptable 0024F154 case 5382
24F3DA:  LDR.W           LR, [SP,#0xC0+var_64]; jumptable 0024F154 case 5376
24F3DE:  MOV.W           R1, R12,LSL#1
24F3E2:  MOVS            R2, #0
24F3E4:  LDR             R0, [SP,#0xC0+var_68]
24F3E6:  ADD.W           R0, R0, R2,LSL#2
24F3EA:  LDR.W           R0, [R0,#0xBC]
24F3EE:  ADDS            R3, R0, #1
24F3F0:  IT NE
24F3F2:  CMPNE.W         R10, #0
24F3F6:  BEQ             loc_24F44A
24F3F8:  ADD.W           R6, R9, R0,LSL#1
24F3FC:  MOV             R3, LR
24F3FE:  MOV             R0, R10
24F400:  VLDR            S0, [R3]
24F404:  ADDS            R3, #4
24F406:  SUBS            R0, #1
24F408:  VADD.F32        S2, S0, S17
24F40C:  VADD.F32        S0, S0, S24
24F410:  VABS.F32        S2, S2
24F414:  VSUB.F32        S0, S0, S2
24F418:  VADD.F32        S2, S0, S26
24F41C:  VADD.F32        S0, S0, S28
24F420:  VABS.F32        S2, S2
24F424:  VADD.F32        S0, S0, S2
24F428:  VMUL.F32        S0, S0, S30
24F42C:  VCVT.F64.F32    D16, S0
24F430:  VMUL.F64        D16, D16, D11
24F434:  VCVT.F32.F64    S0, D16
24F438:  VCVT.S32.F32    S0, S0
24F43C:  VMOV            R5, S0
24F440:  MOV.W           R5, R5,LSR#16
24F444:  STRH            R5, [R6]
24F446:  ADD             R6, R1
24F448:  BNE             loc_24F400
24F44A:  ADDS            R2, #1
24F44C:  ADD.W           LR, LR, #0x2000
24F450:  CMP             R2, #9
24F452:  BNE             loc_24F3E4
24F454:  B               loc_24F4E4
24F456:  MOV.W           R12, #4; jumptable 0024F17E case 5379
24F45A:  B               loc_24F466; jumptable 0024F17E case 5376
24F45C:  MOV.W           R12, #7; jumptable 0024F17E case 5381
24F460:  B               loc_24F466; jumptable 0024F17E case 5376
24F462:  MOV.W           R12, #8; jumptable 0024F17E case 5382
24F466:  LDR.W           LR, [SP,#0xC0+var_64]; jumptable 0024F17E case 5376
24F46A:  MOV.W           R1, R12,LSL#1
24F46E:  MOVS            R2, #0
24F470:  LDR             R0, [SP,#0xC0+var_68]
24F472:  MOV.W           R11, #0x8000
24F476:  ADD.W           R0, R0, R2,LSL#2
24F47A:  LDR.W           R0, [R0,#0xBC]
24F47E:  ADDS            R3, R0, #1
24F480:  IT NE
24F482:  CMPNE.W         R10, #0
24F486:  BEQ             loc_24F4DA
24F488:  ADD.W           R6, R9, R0,LSL#1
24F48C:  MOV             R3, LR
24F48E:  MOV             R0, R10
24F490:  VLDR            S0, [R3]
24F494:  ADDS            R3, #4
24F496:  SUBS            R0, #1
24F498:  VADD.F32        S2, S0, S17
24F49C:  VADD.F32        S0, S0, S24
24F4A0:  VABS.F32        S2, S2
24F4A4:  VSUB.F32        S0, S0, S2
24F4A8:  VADD.F32        S2, S0, S26
24F4AC:  VADD.F32        S0, S0, S28
24F4B0:  VABS.F32        S2, S2
24F4B4:  VADD.F32        S0, S0, S2
24F4B8:  VMUL.F32        S0, S0, S30
24F4BC:  VCVT.F64.F32    D16, S0
24F4C0:  VMUL.F64        D16, D16, D11
24F4C4:  VCVT.F32.F64    S0, D16
24F4C8:  VCVT.S32.F32    S0, S0
24F4CC:  VMOV            R5, S0
24F4D0:  ADD.W           R5, R11, R5,LSR#16
24F4D4:  STRH            R5, [R6]
24F4D6:  ADD             R6, R1
24F4D8:  BNE             loc_24F490
24F4DA:  ADDS            R2, #1
24F4DC:  ADD.W           LR, LR, #0x2000
24F4E0:  CMP             R2, #9
24F4E2:  BNE             loc_24F470
24F4E4:  MUL.W           R0, R10, R12
24F4E8:  LSLS            R0, R0, #1
24F4EA:  B               loc_24F650
24F4EC:  MOV.W           R12, #4; jumptable 0024F1AC case 5379
24F4F0:  B               loc_24F4FC; jumptable 0024F1AC case 5376
24F4F2:  MOV.W           R12, #7; jumptable 0024F1AC case 5381
24F4F6:  B               loc_24F4FC; jumptable 0024F1AC case 5376
24F4F8:  MOV.W           R12, #8; jumptable 0024F1AC case 5382
24F4FC:  LDR             R5, [SP,#0xC0+var_64]; jumptable 0024F1AC case 5376
24F4FE:  MOV.W           R1, R12,LSL#2
24F502:  MOVS            R2, #0
24F504:  LDR             R0, [SP,#0xC0+var_68]
24F506:  ADD.W           R0, R0, R2,LSL#2
24F50A:  LDR.W           R0, [R0,#0xBC]
24F50E:  ADDS            R3, R0, #1
24F510:  IT NE
24F512:  CMPNE.W         R10, #0
24F516:  BEQ             loc_24F564
24F518:  ADD.W           R6, R9, R0,LSL#2
24F51C:  MOV             R3, R5
24F51E:  MOV             R0, R10
24F520:  VLDR            S0, [R3]
24F524:  ADDS            R3, #4
24F526:  SUBS            R0, #1
24F528:  VADD.F32        S2, S0, S17
24F52C:  VADD.F32        S0, S0, S24
24F530:  VABS.F32        S2, S2
24F534:  VSUB.F32        S0, S0, S2
24F538:  VADD.F32        S2, S0, S26
24F53C:  VADD.F32        S0, S0, S28
24F540:  VABS.F32        S2, S2
24F544:  VADD.F32        S0, S0, S2
24F548:  VMUL.F32        S0, S0, S30
24F54C:  VCVT.F64.F32    D16, S0
24F550:  VMUL.F64        D16, D16, D11
24F554:  VCVT.F32.F64    S0, D16
24F558:  VCVT.S32.F32    S0, S0
24F55C:  VSTR            S0, [R6]
24F560:  ADD             R6, R1
24F562:  BNE             loc_24F520
24F564:  ADDS            R2, #1
24F566:  ADD.W           R5, R5, #0x2000
24F56A:  CMP             R2, #9
24F56C:  BNE             loc_24F504
24F56E:  MUL.W           R0, LR, R12
24F572:  B               loc_24F650
24F574:  MOV.W           R12, #4; jumptable 0024F1D8 case 5379
24F578:  B               loc_24F584; jumptable 0024F1D8 case 5376
24F57A:  MOV.W           R12, #7; jumptable 0024F1D8 case 5381
24F57E:  B               loc_24F584; jumptable 0024F1D8 case 5376
24F580:  MOV.W           R12, #8; jumptable 0024F1D8 case 5382
24F584:  LDR.W           LR, [SP,#0xC0+var_64]; jumptable 0024F1D8 case 5376
24F588:  MOV.W           R1, R12,LSL#2
24F58C:  MOVS            R2, #0
24F58E:  LDR             R0, [SP,#0xC0+var_68]
24F590:  ADD.W           R0, R0, R2,LSL#2
24F594:  LDR.W           R0, [R0,#0xBC]
24F598:  ADDS            R3, R0, #1
24F59A:  IT NE
24F59C:  CMPNE.W         R10, #0
24F5A0:  BEQ             loc_24F5F4
24F5A2:  ADD.W           R6, R9, R0,LSL#2
24F5A6:  MOV             R3, LR
24F5A8:  MOV             R0, R10
24F5AA:  VLDR            S0, [R3]
24F5AE:  ADDS            R3, #4
24F5B0:  SUBS            R0, #1
24F5B2:  VADD.F32        S2, S0, S17
24F5B6:  VADD.F32        S0, S0, S24
24F5BA:  VABS.F32        S2, S2
24F5BE:  VSUB.F32        S0, S0, S2
24F5C2:  VADD.F32        S2, S0, S26
24F5C6:  VADD.F32        S0, S0, S28
24F5CA:  VABS.F32        S2, S2
24F5CE:  VADD.F32        S0, S0, S2
24F5D2:  VMUL.F32        S0, S0, S30
24F5D6:  VCVT.F64.F32    D16, S0
24F5DA:  VMUL.F64        D16, D16, D11
24F5DE:  VCVT.F32.F64    S0, D16
24F5E2:  VCVT.S32.F32    S0, S0
24F5E6:  VMOV            R5, S0
24F5EA:  EOR.W           R5, R5, #0x80000000
24F5EE:  STR             R5, [R6]
24F5F0:  ADD             R6, R1
24F5F2:  BNE             loc_24F5AA
24F5F4:  ADDS            R2, #1
24F5F6:  ADD.W           LR, LR, #0x2000
24F5FA:  CMP             R2, #9
24F5FC:  BNE             loc_24F58E
24F5FE:  B               loc_24F64C
24F600:  MOV.W           R12, #4; jumptable 0024F204 case 5379
24F604:  B               loc_24F610; jumptable 0024F204 case 5376
24F606:  MOV.W           R12, #7; jumptable 0024F204 case 5381
24F60A:  B               loc_24F610; jumptable 0024F204 case 5376
24F60C:  MOV.W           R12, #8; jumptable 0024F204 case 5382
24F610:  LDR.W           LR, [SP,#0xC0+var_64]; jumptable 0024F204 case 5376
24F614:  MOV.W           R1, R12,LSL#2
24F618:  MOVS            R2, #0
24F61A:  LDR             R0, [SP,#0xC0+var_68]
24F61C:  ADD.W           R0, R0, R2,LSL#2
24F620:  LDR.W           R0, [R0,#0xBC]
24F624:  ADDS            R3, R0, #1
24F626:  IT NE
24F628:  CMPNE.W         R10, #0
24F62C:  BEQ             loc_24F642
24F62E:  ADD.W           R6, R9, R0,LSL#2
24F632:  MOV             R3, LR
24F634:  MOV             R0, R10
24F636:  LDR.W           R5, [R3],#4
24F63A:  SUBS            R0, #1
24F63C:  STR             R5, [R6]
24F63E:  ADD             R6, R1
24F640:  BNE             loc_24F636
24F642:  ADDS            R2, #1
24F644:  ADD.W           LR, LR, #0x2000
24F648:  CMP             R2, #9
24F64A:  BNE             loc_24F61A
24F64C:  MUL.W           R0, R11, R12
24F650:  ADD             R9, R0
24F652:  SUB.W           R8, R8, R10
24F656:  CMP.W           R8, #0
24F65A:  BGT.W           loc_24E988
24F65E:  LDR             R0, [SP,#0xC0+rounding_direction]; rounding_direction
24F660:  ADD             SP, SP, #0x60 ; '`'
24F662:  VPOP            {D8-D15}
24F666:  ADD             SP, SP, #4
24F668:  POP.W           {R8-R11}
24F66C:  POP.W           {R4-R7,LR}
24F670:  B.W             j_fesetround
