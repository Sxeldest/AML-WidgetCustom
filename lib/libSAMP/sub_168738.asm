; =========================================================
; Game Engine Function: sub_168738
; Address            : 0x168738 - 0x16A7BC
; =========================================================

168738:  PUSH            {R4-R7,LR}
16873A:  ADD             R7, SP, #0xC
16873C:  PUSH.W          {R8-R11}
168740:  SUB             SP, SP, #4
168742:  VPUSH           {D8-D11}
168746:  SUB             SP, SP, #0x58
168748:  LDR             R0, =(dword_381B58 - 0x16875A)
16874A:  MOVW            R5, #0x1990
16874E:  MOVW            R2, #0x2CA8
168752:  MOVW            R3, #0x2CE4
168756:  ADD             R0, PC; dword_381B58
168758:  STR             R0, [SP,#0x98+var_70]
16875A:  LDR.W           R9, [R0]
16875E:  MOVW            R0, #0x15BC
168762:  ADD.W           R1, R9, R3
168766:  STR             R1, [SP,#0x98+var_80]
168768:  LDRB.W          R6, [R9,#0xAF]
16876C:  CBZ             R6, loc_16877C
16876E:  LDRB.W          R3, [R9,#0xC]
168772:  LSLS            R3, R3, #0x1E
168774:  ITT PL
168776:  MOVPL           R3, #0
168778:  STRBPL.W        R3, [R9,#0xAF]
16877C:  ADD.W           R10, R9, R5
168780:  LDR             R5, [SP,#0x98+var_80]
168782:  ADD.W           R1, R9, R0
168786:  ADD.W           R8, R9, R2
16878A:  LDRB            R0, [R5,#0x10]
16878C:  CBNZ            R0, loc_1687A0
16878E:  LDR.W           R0, [R9,#0x20]
168792:  CBZ             R0, loc_16879C
168794:  MOV             R4, R1
168796:  BL              sub_16A7DC
16879A:  MOV             R1, R4
16879C:  MOVS            R0, #1
16879E:  STRB            R0, [R5,#0x10]
1687A0:  VLDR            S0, [R5,#0x14]
1687A4:  VCMP.F32        S0, #0.0
1687A8:  VMRS            APSR_nzcv, FPSCR
1687AC:  BLE             loc_1687DE
1687AE:  VLDR            S2, [R9,#0x18]
1687B2:  VSUB.F32        S0, S0, S2
1687B6:  VCMP.F32        S0, #0.0
1687BA:  VSTR            S0, [R5,#0x14]
1687BE:  VMRS            APSR_nzcv, FPSCR
1687C2:  BHI             loc_1687DE
1687C4:  LDR.W           R0, [R9,#0x20]
1687C8:  CBZ             R0, loc_1687D4
1687CA:  MOV             R4, R1
1687CC:  BL              sub_16A834
1687D0:  MOV             R1, R4
1687D2:  B               loc_1687DA
1687D4:  MOVS            R0, #1
1687D6:  STRB.W          R0, [R9,#0x358]
1687DA:  MOVS            R0, #0
1687DC:  STR             R0, [R5,#0x14]
1687DE:  VLDR            S0, [R9,#0x18]
1687E2:  MOVS            R3, #1
1687E4:  VLDR            D17, [R1,#0x39C]
1687E8:  MOVS            R4, #0
1687EA:  VCVT.F64.F32    D16, S0
1687EE:  LDR             R0, [SP,#0x98+var_70]
1687F0:  STRB.W          R3, [R9,#1]
1687F4:  MOVW            R12, #0x1AA8
1687F8:  LDR.W           R5, [R9,#0x94]
1687FC:  LDR             R2, [R0]
1687FE:  STR.W           R4, [R8,#0x28]
168802:  VADD.F64        D16, D17, D16
168806:  STR.W           R4, [R10,#0x18]
16880A:  LDR.W           R6, [R1,#0x3A4]
16880E:  LDR.W           R0, [R2,#0xA0]
168812:  ADDS            R6, #1
168814:  STR.W           R6, [R1,#0x3A4]
168818:  STRB            R3, [R5]
16881A:  MOV             R5, R1
16881C:  VSTR            D16, [R1,#0x39C]
168820:  CBNZ            R0, loc_16882A
168822:  LDR.W           R0, [R2,#0x94]
168826:  LDR             R0, [R0,#0x3C]
168828:  LDR             R0, [R0]
16882A:  ADD.W           R1, R9, R12
16882E:  STR             R1, [SP,#0x98+var_7C]
168830:  BL              sub_16A884
168834:  LDRB            R1, [R5,#1]
168836:  LDRD.W          R2, R3, [R9,#0x10]
16883A:  LDRB            R0, [R5]
16883C:  LDR             R6, [R5,#4]
16883E:  STRD.W          R6, R4, [R5,#0x324]
168842:  STRD.W          R4, R2, [R5,#0x32C]
168846:  STRD.W          R3, R0, [R5,#0x334]
16884A:  CBZ             R1, loc_168854
16884C:  ORR.W           R0, R0, #2
168850:  STR.W           R0, [R5,#0x338]
168854:  LDRB.W          R1, [R9,#0xC]
168858:  LSLS            R1, R1, #0x1C
16885A:  ITT MI
16885C:  ORRMI.W         R0, R0, #4
168860:  STRMI.W         R0, [R5,#0x338]
168864:  MOVW            R0, #0x1C24
168868:  ADD.W           R4, R9, R0
16886C:  STR             R5, [SP,#0x98+var_84]
16886E:  MOV             R0, R4
168870:  BL              sub_172794
168874:  LDR.W           R0, [R9,#0x94]
168878:  LDR             R1, [R0,#8]
16887A:  MOV             R0, R4
16887C:  BL              sub_172D4E
168880:  MOV             R0, R4
168882:  BL              sub_172D22
168886:  MOVW            R0, #0x1C9C
16888A:  ADD.W           R4, R9, R0
16888E:  MOV             R0, R4
168890:  BL              sub_172794
168894:  LDR.W           R0, [R9,#0x94]
168898:  LDR             R1, [R0,#8]
16889A:  MOV             R0, R4
16889C:  BL              sub_172D4E
1688A0:  MOV             R0, R4
1688A2:  BL              sub_172D22
1688A6:  VMOV.I32        Q8, #0
1688AA:  LDR             R6, [SP,#0x98+var_7C]
1688AC:  ADD.W           R2, R9, #0x1BE0
1688B0:  MOVS            R1, #0
1688B2:  MOVW            R0, #0x1C04
1688B6:  VST1.32         {D16-D17}, [R2]!
1688BA:  STR.W           R1, [R9,R0]
1688BE:  LDRB.W          R0, [R6,#0x270]
1688C2:  VST1.32         {D16-D17}, [R2]!
1688C6:  STRB.W          R1, [R6,#0x134]
1688CA:  STR             R1, [R2]
1688CC:  CBZ             R0, loc_1688F8
1688CE:  LDR.W           R0, [R6,#0x288]
1688D2:  LDR.W           R1, [R10,#0x40]
1688D6:  CMP             R0, R1
1688D8:  BNE             loc_1688F8
1688DA:  LDR             R1, [SP,#0x98+var_70]
1688DC:  MOVW            R2, #0x19D0
1688E0:  LDR             R1, [R1]
1688E2:  LDR             R3, [R1,R2]
1688E4:  ADD             R1, R2
1688E6:  CMP             R3, R0
1688E8:  IT EQ
1688EA:  STREQ           R0, [R1,#4]
1688EC:  LDR             R2, [R1,#0x2C]
1688EE:  CMP             R2, R0
1688F0:  ITT EQ
1688F2:  MOVEQ           R0, #1
1688F4:  STRBEQ.W        R0, [R1,#0x30]
1688F8:  LDR.W           R0, [R10,#0x34]
1688FC:  CBZ             R0, loc_168914
1688FE:  LDR.W           R1, [R10,#0x2C]
168902:  CBZ             R1, loc_16893C
168904:  LDR.W           R0, [R10,#0x40]
168908:  CMP             R0, R1
16890A:  ITT EQ
16890C:  MOVEQ           R0, #0
16890E:  STREQ.W         R0, [R10,#0x3C]
168912:  B               loc_168920
168914:  LDR.W           R1, [R10,#0x2C]
168918:  MOVS            R0, #0
16891A:  STRD.W          R0, R0, [R10,#0x38]
16891E:  CBZ             R1, loc_16893C
168920:  VLDR            S2, [R10,#0x38]
168924:  VLDR            S0, [R9,#0x18]
168928:  LDR.W           R0, [R10,#0x40]
16892C:  VADD.F32        S2, S0, S2
168930:  CMP             R0, R1
168932:  VSTR            S2, [R10,#0x38]
168936:  BNE             loc_168944
168938:  MOV             R0, R1
16893A:  B               loc_168950
16893C:  LDR.W           R0, [R10,#0x40]
168940:  MOVS            R1, #0
168942:  B               loc_168950
168944:  VLDR            S2, [R10,#0x3C]
168948:  VADD.F32        S0, S0, S2
16894C:  VSTR            S0, [R10,#0x3C]
168950:  MOVS            R2, #0
168952:  STR.W           R1, [R10,#0x34]
168956:  STRB.W          R2, [R10,#0x30]
16895A:  STR.W           R2, [R10,#0x2C]
16895E:  LDR.W           R2, [R10,#0x44]
168962:  CMP             R2, R0
168964:  IT NE
168966:  CMPNE           R0, #0
168968:  BNE             loc_168A52
16896A:  VLDR            S0, [R9,#0x18]
16896E:  CBZ             R0, loc_16897C
168970:  VLDR            S2, [R10,#0x48]
168974:  VADD.F32        S2, S0, S2
168978:  VSTR            S2, [R10,#0x48]
16897C:  VLDR            S2, [R10,#0x7C]
168980:  MOVS            R5, #0
168982:  LDR.W           R1, [R8]
168986:  VADD.F32        S0, S0, S2
16898A:  LDRB.W          R2, [R10,#0x4F]
16898E:  LDR.W           R3, [R10,#0x64]
168992:  STR.W           R0, [R10,#0x6C]
168996:  STRB.W          R5, [R10,#0x70]
16899A:  STRB.W          R5, [R10,#0x50]
16899E:  STR.W           R5, [R10,#0x44]
1689A2:  STRB.W          R5, [R10,#0x4C]
1689A6:  STR.W           R3, [R10,#0x74]
1689AA:  STRB.W          R2, [R10,#0x71]
1689AE:  VSTR            S0, [R10,#0x7C]
1689B2:  CBZ             R1, loc_1689BE
1689B4:  CMP             R0, R1
1689B6:  ITT NE
1689B8:  MOVNE           R0, #0
1689BA:  STRNE.W         R0, [R8]
1689BE:  LDR.W           R0, [R6,#0x2D4]
1689C2:  ADD.W           R4, R9, #0x458
1689C6:  MOVW            R11, #0xFFFF
1689CA:  MOV.W           R2, #0x800; n
1689CE:  MOVT            R11, #0x7F7F
1689D2:  MOV             R1, R4; src
1689D4:  STRD.W          R5, R0, [R6,#0x2D4]
1689D8:  ADDW            R0, R9, #0xC58; dest
1689DC:  STR.W           R11, [R6,#0x2D0]
1689E0:  STRB.W          R5, [R6,#0x271]
1689E4:  BLX             j_memcpy
1689E8:  VMOV.F32        S0, #-1.0
1689EC:  ADD.W           R0, R9, #0xFC
1689F0:  VLDR            S2, =0.0
1689F4:  VMOV.F32        S4, S0
1689F8:  LDRB            R1, [R0,R5]
1689FA:  CBZ             R1, loc_168A16
1689FC:  VLDR            S6, [R4]
168A00:  VMOV.F32        S4, S2
168A04:  VCMP.F32        S6, #0.0
168A08:  VMRS            APSR_nzcv, FPSCR
168A0C:  ITT PL
168A0E:  VLDRPL          S4, [R9,#0x18]
168A12:  VADDPL.F32      S4, S6, S4
168A16:  ADDS            R5, #1
168A18:  VSTM            R4!, {S4}
168A1C:  CMP.W           R5, #0x200
168A20:  BNE             loc_1689F4
168A22:  LDR             R0, [SP,#0x98+var_70]
168A24:  MOVW            R1, #0x19D0
168A28:  STRD.W          R10, R9, [SP,#0x98+var_8C]
168A2C:  MOVS            R6, #0
168A2E:  LDR.W           R10, [R0]
168A32:  ADD.W           R9, R10, R1
168A36:  LDR.W           R0, [R10,#8]
168A3A:  STRB.W          R6, [R10,#0x357]
168A3E:  AND.W           R8, R0, #1
168A42:  LSLS            R0, R0, #0x1E
168A44:  BPL             loc_168AD8
168A46:  LDRB.W          R0, [R10,#0xC]
168A4A:  LSLS            R0, R0, #0x1F
168A4C:  BNE             loc_168A98
168A4E:  MOVS            R6, #0
168A50:  B               loc_168AD8
168A52:  LDR.W           R1, [R10,#0x6C]
168A56:  CMP             R1, R0
168A58:  BNE.W           loc_16896A
168A5C:  LDR             R0, [SP,#0x98+var_70]
168A5E:  MOVW            R1, #0x19D0
168A62:  LDR             R0, [R0]
168A64:  LDR             R2, [R0,R1]
168A66:  ADD             R1, R0
168A68:  CMP             R2, #0
168A6A:  IT NE
168A6C:  MOVNE           R2, #1
168A6E:  STRB            R2, [R1,#0xC]
168A70:  MOV.W           R2, #0
168A74:  ITTT NE
168A76:  MOVNE           R0, #0
168A78:  STRHNE          R0, [R1,#0xE]
168A7A:  STRNE           R0, [R1,#8]
168A7C:  STR             R2, [R1]
168A7E:  LDR.W           R0, [R10,#0x40]
168A82:  STRD.W          R2, R2, [R1,#0x14]
168A86:  STR             R2, [R1,#0x24]
168A88:  STRB            R2, [R1,#0xD]
168A8A:  STRB            R2, [R1,#0x10]
168A8C:  B               loc_16896A
168A8E:  ALIGN 0x10
168A90:  DCD dword_381B58 - 0x16875A
168A94:  DCFS 0.0
168A98:  VLDR            S0, [R10,#0x2FC]
168A9C:  VCMP.F32        S0, #0.0
168AA0:  VMRS            APSR_nzcv, FPSCR
168AA4:  BGT             loc_168AD0
168AA6:  VLDR            S0, [R10,#0x304]
168AAA:  VCMP.F32        S0, #0.0
168AAE:  VMRS            APSR_nzcv, FPSCR
168AB2:  BGT             loc_168AD0
168AB4:  VLDR            S0, [R10,#0x300]
168AB8:  VCMP.F32        S0, #0.0
168ABC:  VMRS            APSR_nzcv, FPSCR
168AC0:  BGT             loc_168AD0
168AC2:  VLDR            S0, [R10,#0x308]
168AC6:  VCMP.F32        S0, #0.0
168ACA:  VMRS            APSR_nzcv, FPSCR
168ACE:  BLE             loc_168AD6
168AD0:  MOVS            R0, #4
168AD2:  STR.W           R0, [R9,#0x10C]
168AD6:  MOVS            R6, #1
168AD8:  CMP.W           R8, #0
168ADC:  BEQ.W           loc_168BFC
168AE0:  LDR.W           R0, [R10,#0x64]
168AE4:  CMP             R0, #0
168AE6:  BMI             loc_168AFE
168AE8:  ADD             R0, R10
168AEA:  LDRB.W          R0, [R0,#0xFC]
168AEE:  CBZ             R0, loc_168AFE
168AF0:  MOVS            R0, #3
168AF2:  STR.W           R0, [R9,#0x10C]
168AF6:  MOV.W           R0, #0x3F800000
168AFA:  STR.W           R0, [R10,#0x2FC]
168AFE:  LDR.W           R0, [R10,#0x68]
168B02:  CMP             R0, #0
168B04:  BMI             loc_168B1C
168B06:  ADD             R0, R10
168B08:  LDRB.W          R0, [R0,#0xFC]
168B0C:  CBZ             R0, loc_168B1C
168B0E:  MOVS            R0, #3
168B10:  STR.W           R0, [R9,#0x10C]
168B14:  MOV.W           R0, #0x3F800000
168B18:  STR.W           R0, [R10,#0x304]
168B1C:  LDR.W           R0, [R10,#0x6C]
168B20:  CMP             R0, #0
168B22:  BMI             loc_168B3A
168B24:  ADD             R0, R10
168B26:  LDRB.W          R0, [R0,#0xFC]
168B2A:  CBZ             R0, loc_168B3A
168B2C:  MOVS            R0, #3
168B2E:  STR.W           R0, [R9,#0x10C]
168B32:  MOV.W           R0, #0x3F800000
168B36:  STR.W           R0, [R10,#0x300]
168B3A:  LDR.W           R0, [R10,#0x38]
168B3E:  CMP             R0, #0
168B40:  BMI             loc_168B58
168B42:  ADD             R0, R10
168B44:  LDRB.W          R0, [R0,#0xFC]
168B48:  CBZ             R0, loc_168B58
168B4A:  MOVS            R0, #3
168B4C:  STR.W           R0, [R9,#0x10C]
168B50:  MOV.W           R0, #0x3F800000
168B54:  STR.W           R0, [R10,#0x344]
168B58:  LDR.W           R0, [R10,#0x3C]
168B5C:  CMP             R0, #0
168B5E:  BMI             loc_168B76
168B60:  ADD             R0, R10
168B62:  LDRB.W          R0, [R0,#0xFC]
168B66:  CBZ             R0, loc_168B76
168B68:  MOVS            R0, #3
168B6A:  STR.W           R0, [R9,#0x10C]
168B6E:  MOV.W           R0, #0x3F800000
168B72:  STR.W           R0, [R10,#0x348]
168B76:  LDR.W           R0, [R10,#0x40]
168B7A:  CMP             R0, #0
168B7C:  BMI             loc_168B94
168B7E:  ADD             R0, R10
168B80:  LDRB.W          R0, [R0,#0xFC]
168B84:  CBZ             R0, loc_168B94
168B86:  MOVS            R0, #3
168B88:  STR.W           R0, [R9,#0x10C]
168B8C:  MOV.W           R0, #0x3F800000
168B90:  STR.W           R0, [R10,#0x34C]
168B94:  LDR.W           R0, [R10,#0x44]
168B98:  CMP             R0, #0
168B9A:  BMI             loc_168BB2
168B9C:  ADD             R0, R10
168B9E:  LDRB.W          R0, [R0,#0xFC]
168BA2:  CBZ             R0, loc_168BB2
168BA4:  MOVS            R0, #3
168BA6:  STR.W           R0, [R9,#0x10C]
168BAA:  MOV.W           R0, #0x3F800000
168BAE:  STR.W           R0, [R10,#0x350]
168BB2:  LDR.W           R0, [R10,#0x34]
168BB6:  CMP             R0, #0
168BB8:  BMI             loc_168BD0
168BBA:  ADD             R0, R10
168BBC:  LDRB.W          R0, [R0,#0xFC]
168BC0:  CBZ             R0, loc_168BD0
168BC2:  MOVS            R0, #3
168BC4:  STR.W           R0, [R9,#0x10C]
168BC8:  MOV.W           R0, #0x3F800000
168BCC:  STR.W           R0, [R10,#0x340]
168BD0:  LDRB.W          R0, [R10,#0xF8]
168BD4:  CBZ             R0, loc_168BDE
168BD6:  MOV.W           R1, #0x3F800000
168BDA:  STR.W           R1, [R10,#0x334]
168BDE:  LDRB.W          R1, [R10,#0xF9]
168BE2:  CBZ             R1, loc_168BEC
168BE4:  MOV.W           R1, #0x3F800000
168BE8:  STR.W           R1, [R10,#0x338]
168BEC:  LDRB.W          R1, [R10,#0xFA]
168BF0:  CBZ             R1, loc_168BFC
168BF2:  CBNZ            R0, loc_168BFC
168BF4:  MOV.W           R0, #0x3F800000
168BF8:  STR.W           R0, [R10,#0x33C]
168BFC:  MOVW            R0, #0x14B0
168C00:  MOVW            R1, #0x1458
168C04:  ADD.W           R4, R10, R1
168C08:  ADD             R0, R10; dest
168C0A:  MOVS            R2, #0x58 ; 'X'; n
168C0C:  MOV             R1, R4; src
168C0E:  BLX             j_memcpy
168C12:  VMOV.F32        S0, #-1.0
168C16:  ADD.W           R0, R10, #0x2FC
168C1A:  VLDR            S2, =0.0
168C1E:  MOVS            R1, #0
168C20:  ADDS            R2, R0, R1
168C22:  VLDR            S4, [R2]
168C26:  VCMP.F32        S4, #0.0
168C2A:  VMOV.F32        S4, S0
168C2E:  VMRS            APSR_nzcv, FPSCR
168C32:  BLE             loc_168C50
168C34:  ADDS            R2, R4, R1
168C36:  VMOV.F32        S4, S2
168C3A:  VLDR            S6, [R2]
168C3E:  VCMP.F32        S6, #0.0
168C42:  VMRS            APSR_nzcv, FPSCR
168C46:  ITT PL
168C48:  VLDRPL          S4, [R10,#0x18]
168C4C:  VADDPL.F32      S4, S6, S4
168C50:  ADDS            R2, R4, R1
168C52:  ADDS            R1, #4
168C54:  CMP             R1, #0x58 ; 'X'
168C56:  VSTR            S4, [R2]
168C5A:  BNE             loc_168C20
168C5C:  LDR.W           R0, [R9,#0x14C]
168C60:  CBZ             R0, loc_168CCA
168C62:  LDRB.W          R2, [R9,#0x146]
168C66:  LDRB.W          R1, [R9,#0x14A]
168C6A:  CBZ             R2, loc_168C70
168C6C:  CBNZ            R1, loc_168C76
168C6E:  B               loc_168CCA
168C70:  CMP             R1, #0
168C72:  BEQ.W           loc_169000
168C76:  LDR             R1, [SP,#0x98+var_70]
168C78:  MOVW            R3, #0x1AB4
168C7C:  LDR.W           R2, [R9,#0x13C]
168C80:  LDR             R1, [R1]
168C82:  LDR             R5, [R1,R3]
168C84:  ADD             R3, R1
168C86:  STR             R0, [R3,#4]
168C88:  ADD.W           R1, R5, R2,LSL#2
168C8C:  STR.W           R0, [R1,#0x30C]
168C90:  ADD.W           R0, R5, R2,LSL#4
168C94:  ADD.W           R1, R10, #0x1B20
168C98:  ADD.W           R0, R0, #0x314
168C9C:  VLD1.32         {D16-D17}, [R1]
168CA0:  VST1.32         {D16-D17}, [R0]
168CA4:  MOVS            R0, #1
168CA6:  LDR.W           R1, [R9,#0x13C]
168CAA:  STRB.W          R0, [R3,#0x63]
168CAE:  STRH.W          R0, [R3,#0x61]
168CB2:  LDR.W           R0, [R9,#0xE4]
168CB6:  ADD.W           R2, R10, #0x1B20
168CBA:  VLD1.32         {D16-D17}, [R2]
168CBE:  ADD.W           R0, R0, R1,LSL#4
168CC2:  ADD.W           R0, R0, #0x314
168CC6:  VST1.32         {D16-D17}, [R0]
168CCA:  LDRB.W          R0, [R9,#0x161]
168CCE:  MOVS            R1, #0
168CD0:  STR             R6, [SP,#0x98+var_74]
168CD2:  CMP             R0, #0
168CD4:  STR.W           R8, [SP,#0x98+var_6C]
168CD8:  STR.W           R1, [R9,#0x14C]
168CDC:  STRH.W          R1, [R9,#0x149]
168CE0:  STR.W           R1, [R9,#0x100]
168CE4:  BEQ.W           loc_168E9E
168CE8:  LDR             R0, [SP,#0x98+var_70]
168CEA:  MOVW            R3, #0x1B48
168CEE:  MOVW            R1, #0x1AB4
168CF2:  LDR             R0, [R0]
168CF4:  ADD.W           R8, R0, R1
168CF8:  MOVW            R1, #0x1B70
168CFC:  LDR             R5, [R0,R3]
168CFE:  ADDS            R2, R0, R1
168D00:  CBNZ            R5, loc_168D0A
168D02:  LDR             R1, [R2,#0x28]
168D04:  CMP             R1, #0
168D06:  BEQ.W           loc_16901C
168D0A:  MOVW            R1, #0x1B98
168D0E:  LDRB.W          R4, [R8,#0x80]
168D12:  ADD             R1, R0
168D14:  CMP             R5, #0
168D16:  MOV             R5, R1
168D18:  IT NE
168D1A:  ADDNE           R5, R0, R3
168D1C:  LSLS            R3, R4, #0x1A
168D1E:  BPL             loc_168D2E
168D20:  LDR             R3, [R2]
168D22:  CBZ             R3, loc_168D2E
168D24:  LDR.W           R4, [R8,#4]
168D28:  CMP             R3, R4
168D2A:  IT NE
168D2C:  MOVNE           R5, R2
168D2E:  CMP             R5, R1
168D30:  BEQ             loc_168D58
168D32:  LDR             R2, [R1]
168D34:  CBZ             R2, loc_168D5A
168D36:  LDR             R2, [R1,#8]
168D38:  LDR.W           R3, [R8]
168D3C:  LDR.W           R2, [R2,#0x2F8]
168D40:  CMP             R2, R3
168D42:  BNE             loc_168D5A
168D44:  VLDR            S0, [R5,#0xC]
168D48:  VLDR            S2, [R1,#0xC]
168D4C:  VCMP.F32        S2, S0
168D50:  VMRS            APSR_nzcv, FPSCR
168D54:  BPL.W           loc_169258
168D58:  MOV             R5, R1
168D5A:  LDR.W           R1, [R8,#0x58]
168D5E:  CMP             R1, #0
168D60:  BNE             loc_168E2C
168D62:  LDR             R0, [R5,#8]
168D64:  ADD             R1, SP, #0x98+var_50
168D66:  VLDR            S4, [R5,#0x20]
168D6A:  VLDR            S6, [R5,#0x24]
168D6E:  VLDR            S8, [R0,#0xC]
168D72:  VLDR            S10, [R0,#0x10]
168D76:  VADD.F32        S20, S8, S4
168D7A:  VLDR            S0, [R5,#0x18]
168D7E:  VADD.F32        S22, S10, S6
168D82:  VLDR            S2, [R5,#0x1C]
168D86:  VADD.F32        S16, S0, S8
168D8A:  VADD.F32        S18, S2, S10
168D8E:  VSTR            S20, [SP,#0x98+var_48]
168D92:  VSTR            S22, [SP,#0x98+var_44]
168D96:  LDR             R0, [R5,#8]
168D98:  VSTR            S18, [SP,#0x98+var_4C]
168D9C:  VSTR            S16, [SP,#0x98+var_50]
168DA0:  BL              sub_172008
168DA4:  LDR             R1, [R5,#8]
168DA6:  ADD             R0, SP, #0x98+var_58
168DA8:  MOVS            R2, #0
168DAA:  BL              sub_16F690
168DAE:  LDR             R0, [R5,#8]
168DB0:  VLDR            S0, [SP,#0x98+var_58]
168DB4:  VLDR            S2, [SP,#0x98+var_54]
168DB8:  VLDR            S4, [R0,#0x58]
168DBC:  VLDR            S6, [R0,#0x5C]
168DC0:  VSUB.F32        S0, S4, S0
168DC4:  VLDR            S4, [R5,#0x18]
168DC8:  VSUB.F32        S2, S6, S2
168DCC:  VLDR            S6, [R5,#0x1C]
168DD0:  VLDR            S8, [R5,#0x20]
168DD4:  VLDR            S10, [R5,#0x24]
168DD8:  VADD.F32        S4, S0, S4
168DDC:  VADD.F32        S6, S2, S6
168DE0:  VADD.F32        S8, S0, S8
168DE4:  VADD.F32        S10, S2, S10
168DE8:  VSTR            S4, [R5,#0x18]
168DEC:  VSTR            S6, [R5,#0x1C]
168DF0:  VSTR            S8, [R5,#0x20]
168DF4:  VSTR            S10, [R5,#0x24]
168DF8:  LDRB            R1, [R0,#0xB]
168DFA:  LSLS            R1, R1, #0x1F
168DFC:  BEQ             loc_168E28
168DFE:  VADD.F32        S4, S22, S2
168E02:  LDR.W           R0, [R0,#0x2F8]
168E06:  VADD.F32        S6, S20, S0
168E0A:  ADD             R1, SP, #0x98+var_68
168E0C:  VADD.F32        S2, S18, S2
168E10:  VADD.F32        S0, S16, S0
168E14:  VSTR            S4, [SP,#0x98+var_5C]
168E18:  VSTR            S6, [SP,#0x98+var_60]
168E1C:  VSTR            S2, [SP,#0x98+var_64]
168E20:  VSTR            S0, [SP,#0x98+var_68]
168E24:  BL              sub_172008
168E28:  LDR             R0, [SP,#0x98+var_70]
168E2A:  LDR             R0, [R0]
168E2C:  MOVW            R1, #0x19D0
168E30:  LDR             R2, [R0,R1]
168E32:  ADD             R0, R1
168E34:  CMP             R2, #0
168E36:  IT NE
168E38:  MOVNE           R2, #1
168E3A:  STRB            R2, [R0,#0xC]
168E3C:  ITTT NE
168E3E:  MOVNE           R1, #0
168E40:  STRHNE          R1, [R0,#0xE]
168E42:  STRNE           R1, [R0,#8]
168E44:  MOVS            R1, #0
168E46:  LDR             R2, [R5]
168E48:  LDR.W           R4, [R8,#4]
168E4C:  LDR             R3, [R5,#8]
168E4E:  STRD.W          R1, R1, [R0,#0x14]
168E52:  CMP             R4, R2
168E54:  STR             R1, [R0]
168E56:  STR             R1, [R0,#0x24]
168E58:  STRB            R1, [R0,#0xD]
168E5A:  STRB            R1, [R0,#0x10]
168E5C:  STR.W           R3, [R8]
168E60:  ITT NE
168E62:  LDRNE           R3, [R5,#4]
168E64:  STRDNE.W        R2, R3, [R8,#0x1C]
168E68:  LDR.W           R3, [R8,#0x58]
168E6C:  LDR.W           R4, [R0,#0xE4]
168E70:  STR.W           R2, [R0,#0xE8]
168E74:  ADD.W           R6, R4, R3,LSL#2
168E78:  STR.W           R2, [R6,#0x30C]
168E7C:  ADD.W           R2, R4, R3,LSL#4
168E80:  ADD.W           R3, R5, #0x18
168E84:  ADD.W           R2, R2, #0x314
168E88:  VLD1.32         {D16-D17}, [R3]
168E8C:  VST1.32         {D16-D17}, [R2]
168E90:  MOVS            R2, #1
168E92:  STRB.W          R2, [R0,#0x147]
168E96:  STRH.W          R2, [R0,#0x145]
168E9A:  STRB.W          R1, [R8,#0x7C]
168E9E:  LDR.W           R0, [R9,#0x168]
168EA2:  CMP             R0, #2
168EA4:  BNE             loc_168EBE
168EA6:  LDR.W           R0, [R9,#0x178]
168EAA:  CBNZ            R0, loc_168EB8
168EAC:  LDR.W           R0, [R9,#0x1C8]
168EB0:  CBNZ            R0, loc_168EB8
168EB2:  MOVS            R0, #0
168EB4:  STRB.W          R0, [R9,#0x146]
168EB8:  MOVS            R0, #0
168EBA:  STR.W           R0, [R9,#0x168]
168EBE:  LDRB.W          R0, [R9,#0x145]
168EC2:  CBZ             R0, loc_168EE4
168EC4:  LDRB.W          R0, [R9,#0x144]
168EC8:  CBZ             R0, loc_168EE4
168ECA:  LDRB.W          R0, [R10,#8]
168ECE:  LSLS            R0, R0, #0x1D
168ED0:  ITT MI
168ED2:  LDRBMI.W        R0, [R10,#0xC]
168ED6:  MOVSMI.W        R0, R0,LSL#29
168EDA:  BMI.W           loc_169030
168EDE:  MOVS            R0, #0
168EE0:  STRB.W          R0, [R9,#0x145]
168EE4:  LDR.W           R0, [R9,#0xE4]
168EE8:  MOVS            R1, #0
168EEA:  STR.W           R1, [R9,#0xFC]
168EEE:  STRB.W          R1, [R9,#0x144]
168EF2:  CBZ             R0, loc_168F26
168EF4:  MOV             R1, R0
168EF6:  LDR             R2, [R1,#8]
168EF8:  AND.W           R2, R2, #0x15000000
168EFC:  CMP.W           R2, #0x1000000
168F00:  BNE             loc_168F0C
168F02:  LDR.W           R1, [R1,#0x2F8]
168F06:  CMP             R1, #0
168F08:  BNE             loc_168EF6
168F0A:  B               loc_168F14
168F0C:  CMP             R1, R0
168F0E:  IT NE
168F10:  STRNE.W         R0, [R1,#0x308]
168F14:  LDR.W           R1, [R0,#0x308]
168F18:  CBZ             R1, loc_168F26
168F1A:  LDR.W           R1, [R9,#0x13C]
168F1E:  CBNZ            R1, loc_168F26
168F20:  MOVS            R1, #0
168F22:  STR.W           R1, [R0,#0x308]
168F26:  LDR             R0, [SP,#0x98+var_70]
168F28:  LDR             R6, [R0]
168F2A:  MOVW            R0, #0x1464
168F2E:  ADD.W           R8, R6, R0
168F32:  BL              sub_1683BC
168F36:  CBZ             R0, loc_168F42
168F38:  MOVS            R0, #0
168F3A:  LDR             R6, [SP,#0x98+var_6C]
168F3C:  STR.W           R0, [R8,#0x690]
168F40:  B               loc_169542
168F42:  LDR.W           R0, [R8,#0x694]
168F46:  ADD.W           R1, R6, #0x1B00
168F4A:  LDR.W           R11, [R8,#0x690]
168F4E:  STR             R1, [SP,#0x98+var_78]
168F50:  CBZ             R0, loc_168F9E
168F52:  CMP.W           R11, #0
168F56:  BNE             loc_168FA4
168F58:  VMOV.F32        S0, #-10.0
168F5C:  VLDR            S2, [R6,#0x18]
168F60:  VLDR            S4, [R1,#4]
168F64:  VLDR            S6, [R1,#0x120]
168F68:  VMLA.F32        S4, S2, S0
168F6C:  VLDR            S0, =0.0
168F70:  VCMP.F32        S4, #0.0
168F74:  VMRS            APSR_nzcv, FPSCR
168F78:  VCMP.F32        S6, #0.0
168F7C:  IT GE
168F7E:  VMOVGE.F32      S0, S4
168F82:  VMRS            APSR_nzcv, FPSCR
168F86:  VSTR            S0, [R1,#4]
168F8A:  BHI             loc_168FA8
168F8C:  VCMP.F32        S0, #0.0
168F90:  VMRS            APSR_nzcv, FPSCR
168F94:  ITT LS
168F96:  MOVLS           R0, #0
168F98:  STRLS.W         R0, [R8,#0x694]
168F9C:  B               loc_168FA8
168F9E:  CMP.W           R11, #0
168FA2:  BEQ             loc_168FA8
168FA4:  MOVS            R4, #0
168FA6:  B               loc_16906C
168FA8:  VLDR            S2, [R8]
168FAC:  VMOV.F32        S4, #1.0
168FB0:  VLDR            S0, =0.0
168FB4:  MOVS            R4, #0
168FB6:  VCMP.F32        S2, #0.0
168FBA:  MOV.W           R11, #0
168FBE:  VMOV.F32        S2, S0
168FC2:  VMRS            APSR_nzcv, FPSCR
168FC6:  IT EQ
168FC8:  VMOVEQ.F32      S2, S4
168FCC:  IT MI
168FCE:  VMOVMI.F32      S2, S0
168FD2:  VCMP.F32        S2, #0.0
168FD6:  LDRB.W          R0, [R6,#0xF8]
168FDA:  VMRS            APSR_nzcv, FPSCR
168FDE:  IT GT
168FE0:  MOVGT           R4, #1
168FE2:  CMP             R0, #0
168FE4:  BEQ             loc_16906C
168FE6:  LDR             R0, [R6,#0x34]
168FE8:  CMP             R0, #0
168FEA:  BMI             loc_169068
168FEC:  MOVS            R1, #1
168FEE:  BL              sub_16EA2C
168FF2:  CBZ             R0, loc_169068
168FF4:  LDRB            R0, [R6,#8]
168FF6:  MOV.W           R11, #0
168FFA:  AND.W           R5, R0, #1
168FFE:  B               loc_16906E
169000:  LDR             R1, [SP,#0x98+var_70]
169002:  MOVW            R3, #0x1AB4
169006:  LDR             R2, [R1]
169008:  LDR.W           R1, [R9,#0x13C]
16900C:  LDR             R5, [R2,R3]
16900E:  ADD             R2, R3
169010:  STR             R0, [R2,#4]
169012:  ADD.W           R2, R5, R1,LSL#2
169016:  STR.W           R0, [R2,#0x30C]
16901A:  B               loc_168CB2
16901C:  LDR.W           R0, [R8,#4]
169020:  CMP             R0, #0
169022:  BEQ.W           loc_168E9E
169026:  MOV.W           R0, #0x100
16902A:  STRH.W          R0, [R8,#0x62]
16902E:  B               loc_168E9E
169030:  LDRB.W          R0, [R9,#0x146]
169034:  CMP             R0, #0
169036:  BNE.W           loc_168EDE
16903A:  LDRB.W          R0, [R9,#0x147]
16903E:  CMP             R0, #0
169040:  BEQ.W           loc_168EDE
169044:  LDR.W           R0, [R9,#0xE4]
169048:  CMP             R0, #0
16904A:  BEQ.W           loc_168EDE
16904E:  ADD             R0, SP, #0x98+var_50
169050:  BL              sub_170190
169054:  LDRD.W          R0, R1, [SP,#0x98+var_50]
169058:  STRD.W          R0, R1, [R10,#0x37C]
16905C:  STRD.W          R0, R1, [R10,#0xE0]
169060:  MOVS            R0, #1
169062:  STRB.W          R0, [R10,#0x357]
169066:  B               loc_168EDE
169068:  MOV.W           R11, #0
16906C:  MOVS            R5, #0
16906E:  CBNZ            R4, loc_169092
169070:  CBNZ            R5, loc_169092
169072:  LDR             R5, [SP,#0x98+var_78]
169074:  CMP.W           R11, #0
169078:  VLDR            S2, [R6,#0x18]
16907C:  VLDR            S0, [R5]
169080:  VADD.F32        S0, S2, S0
169084:  VSTR            S0, [R5]
169088:  BEQ.W           loc_169224
16908C:  LDR.W           R0, [R8,#0x678]
169090:  B               loc_1690E6
169092:  LDR.W           R0, [R8,#0x650]
169096:  CBNZ            R0, loc_1690B0
169098:  LDR.W           R0, [R8,#0x514]
16909C:  MOVS            R1, #0x80000001
1690A2:  MOV.W           R2, #0xFFFFFFFF
1690A6:  SUBS            R0, #1
1690A8:  BL              sub_172130
1690AC:  CMP             R0, #0
1690AE:  BEQ             loc_169072
1690B0:  VLDR            S0, =0.0
1690B4:  CMP             R5, #0
1690B6:  VLDR            S2, [R6,#0x18]
1690BA:  LDR             R1, [SP,#0x98+var_78]
1690BC:  VADD.F32        S0, S2, S0
1690C0:  STR.W           R0, [R8,#0x690]
1690C4:  STR.W           R0, [R8,#0x694]
1690C8:  EOR.W           R0, R5, #1
1690CC:  STRB            R0, [R1,#8]
1690CE:  MOV.W           R0, #0
1690D2:  STR             R0, [R1,#4]
1690D4:  MOV.W           R0, #4
1690D8:  IT NE
1690DA:  MOVNE           R0, #3
1690DC:  MOV             R5, R1
1690DE:  STR.W           R0, [R8,#0x678]
1690E2:  VSTR            S0, [R1]
1690E6:  MOVW            R11, #0xFFFF
1690EA:  CMP             R0, #4
1690EC:  MOVT            R11, #0x7F7F
1690F0:  MOV             R1, R6
1690F2:  BNE             loc_1691A4
1690F4:  VLDR            S2, =-0.2
1690F8:  VMOV.F32        S18, #1.0
1690FC:  MOVS            R0, #0xC
1690FE:  MOVS            R1, #4
169100:  VADD.F32        S0, S0, S2
169104:  VLDR            S2, =0.05
169108:  VDIV.F32        S16, S0, S2
16910C:  VCMP.F32        S16, S18
169110:  VLDR            S0, =0.0
169114:  VMRS            APSR_nzcv, FPSCR
169118:  VCMP.F32        S16, #0.0
16911C:  IT GT
16911E:  VMOVGT.F32      S16, S18
169122:  VMRS            APSR_nzcv, FPSCR
169126:  IT MI
169128:  VMOVMI.F32      S16, S0
16912C:  VLDR            S0, [R5,#4]
169130:  VCMP.F32        S0, S16
169134:  VMRS            APSR_nzcv, FPSCR
169138:  IT GE
16913A:  VMOVGE.F32      S16, S0
16913E:  VSTR            S16, [R5,#4]
169142:  BL              sub_1706F8
169146:  VMOV            S20, R0
16914A:  MOVS            R0, #0xD
16914C:  MOVS            R1, #4
16914E:  BL              sub_1706F8
169152:  MOV             R1, R0
169154:  VCMP.F32        S20, #0.0
169158:  VMOV            S0, R1
16915C:  VMRS            APSR_nzcv, FPSCR
169160:  MOV.W           R0, #0
169164:  MOV             R1, R6
169166:  VCMP.F32        S0, #0.0
16916A:  IT GT
16916C:  MOVGT           R0, #1
16916E:  VMRS            APSR_nzcv, FPSCR
169172:  IT GT
169174:  SUBGT           R0, #1
169176:  CBZ             R0, loc_16918A
169178:  BL              sub_172184
16917C:  VMOV.F32        S16, S18
169180:  LDR             R1, [SP,#0x98+var_70]
169182:  MOV.W           R0, #0x3F800000
169186:  LDR             R1, [R1]
169188:  STR             R0, [R5,#4]
16918A:  VLDR            S0, [R1,#0x308]
16918E:  VCMP.F32        S0, #0.0
169192:  VMRS            APSR_nzcv, FPSCR
169196:  BLE             loc_169232
169198:  LDR.W           R0, [R8,#0x690]
16919C:  CMP             R0, #0
16919E:  BEQ             loc_16921E
1691A0:  LDR.W           R0, [R8,#0x678]
1691A4:  CMP             R0, #3
1691A6:  BNE             loc_16921E
1691A8:  VLDR            S0, =-0.2
1691AC:  VLDR            S2, [R5]
1691B0:  VLDR            S4, [R5,#4]
1691B4:  VADD.F32        S0, S2, S0
1691B8:  VLDR            S2, =0.05
1691BC:  VLDR            S6, =0.0
1691C0:  VDIV.F32        S0, S0, S2
1691C4:  VMOV.F32        S2, #1.0
1691C8:  VCMP.F32        S0, S2
1691CC:  VMRS            APSR_nzcv, FPSCR
1691D0:  VCMP.F32        S0, #0.0
1691D4:  IT GT
1691D6:  VMOVGT.F32      S0, S2
1691DA:  VMRS            APSR_nzcv, FPSCR
1691DE:  IT MI
1691E0:  VMOVMI.F32      S0, S6
1691E4:  VCMP.F32        S4, S0
1691E8:  VMRS            APSR_nzcv, FPSCR
1691EC:  IT GE
1691EE:  VMOVGE.F32      S0, S4
1691F2:  LDR             R0, [R1,#0x34]
1691F4:  VSTR            S0, [R5,#4]
1691F8:  CMP             R0, #0
1691FA:  BMI             loc_169218
1691FC:  MOVS            R1, #1
1691FE:  MOVS            R4, #1
169200:  BL              sub_16EA2C
169204:  CBZ             R0, loc_169218
169206:  LDRB.W          R0, [R6,#0xF9]
16920A:  CMP             R0, #0
16920C:  IT EQ
16920E:  MOVEQ.W         R4, #0xFFFFFFFF
169212:  MOV             R0, R4
169214:  BL              sub_172184
169218:  LDRB.W          R0, [R6,#0xF8]
16921C:  CBZ             R0, loc_16927A
16921E:  MOVS            R4, #0
169220:  MOVS            R3, #0
169222:  B               loc_1692AC
169224:  MOVW            R11, #0xFFFF
169228:  MOVS            R4, #0
16922A:  MOVS            R3, #0
16922C:  MOVT            R11, #0x7F7F
169230:  B               loc_1692AC
169232:  VMOV.F32        S0, #1.0
169236:  LDRB            R0, [R5,#8]
169238:  MOVS            R1, #0
16923A:  VCMP.F32        S16, S0
16923E:  VMRS            APSR_nzcv, FPSCR
169242:  IT MI
169244:  MOVMI           R1, #1
169246:  ANDS            R0, R1
169248:  STRB            R0, [R5,#8]
16924A:  BEQ             loc_1692A0
16924C:  LDR.W           R1, [R8,#0x650]
169250:  CBZ             R1, loc_169282
169252:  MOVS            R3, #0
169254:  MOVS            R4, #1
169256:  B               loc_1692A6
169258:  VCMP.F32        S2, S0
16925C:  VMRS            APSR_nzcv, FPSCR
169260:  BNE.W           loc_168D5A
169264:  VLDR            S0, [R5,#0x10]
169268:  VLDR            S2, [R1,#0x10]
16926C:  VCMP.F32        S2, S0
169270:  VMRS            APSR_nzcv, FPSCR
169274:  IT MI
169276:  MOVMI           R5, R1
169278:  B               loc_168D5A
16927A:  LDR.W           R3, [R8,#0x690]
16927E:  MOVS            R4, #0
169280:  B               loc_1692AC
169282:  CBZ             R0, loc_1692A0
169284:  MOVS            R4, #0
169286:  MOVS            R3, #0
169288:  B               loc_1692A6
16928A:  ALIGN 4
16928C:  DCFS 0.0
169290:  DCFS -0.2
169294:  DCFS 0.05
169298:  DCFS -256000.0
16929C:  DCFS 800.0
1692A0:  LDR.W           R3, [R8,#0x690]
1692A4:  MOVS            R4, #0
1692A6:  MOVS            R0, #0
1692A8:  STR.W           R0, [R8,#0x690]
1692AC:  LDR             R0, [SP,#0x98+var_70]
1692AE:  MOVW            R1, #0x1498
1692B2:  LDR             R0, [R0]
1692B4:  ADD             R0, R1
1692B6:  VLDR            S0, [R0]
1692BA:  VCMP.F32        S0, #0.0
1692BE:  VMRS            APSR_nzcv, FPSCR
1692C2:  ITT EQ
1692C4:  MOVEQ           R1, #1
1692C6:  STRBEQ          R1, [R5,#8]
1692C8:  LDR.W           R1, [R8,#0x56C]
1692CC:  CBZ             R1, loc_1692D4
1692CE:  LDRB.W          R1, [R8,#0x579]
1692D2:  CBZ             R1, loc_16934A
1692D4:  LDRB            R1, [R5,#8]
1692D6:  CBZ             R1, loc_16934A
1692D8:  VCMP.F32        S0, #0.0
1692DC:  VMRS            APSR_nzcv, FPSCR
1692E0:  BPL             loc_16934A
1692E2:  VLDR            S0, [R0,#0x58]
1692E6:  VCMP.F32        S0, #0.0
1692EA:  VMRS            APSR_nzcv, FPSCR
1692EE:  BLT             loc_16934A
1692F0:  VLDR            S0, =-256000.0
1692F4:  MOVS            R1, #0
1692F6:  VLDR            S8, [R6,#0x380]
1692FA:  MOVS            R2, #0
1692FC:  VLDR            S6, [R6,#0x37C]
169300:  MOVS            R0, #0
169302:  VCMP.F32        S8, S0
169306:  VLDR            S4, [R6,#0xE4]
16930A:  VMRS            APSR_nzcv, FPSCR
16930E:  VCMP.F32        S6, S0
169312:  VLDR            S2, [R6,#0xE0]
169316:  IT GE
169318:  MOVGE           R1, #1
16931A:  VMRS            APSR_nzcv, FPSCR
16931E:  IT GE
169320:  MOVGE           R2, #1
169322:  VCMP.F32        S4, S0
169326:  ANDS            R1, R2
169328:  VMRS            APSR_nzcv, FPSCR
16932C:  MOV.W           R2, #0
169330:  VCMP.F32        S2, S0
169334:  IT GE
169336:  MOVGE           R2, #1
169338:  VMRS            APSR_nzcv, FPSCR
16933C:  IT GE
16933E:  MOVGE           R0, #1
169340:  ANDS            R0, R2
169342:  EORS            R0, R1
169344:  EOR.W           R0, R0, #1
169348:  ORRS            R4, R0
16934A:  LDR.W           R0, [R8,#0x690]
16934E:  CMP             R0, #0
169350:  BEQ.W           loc_169462
169354:  LDRB            R0, [R0,#8]
169356:  LSLS            R0, R0, #0x1D
169358:  BMI.W           loc_169462
16935C:  LDR.W           R0, [R8,#0x678]
169360:  CMP             R0, #3
169362:  BNE             loc_169374
169364:  LDRB.W          R0, [R6,#0xF9]
169368:  CBZ             R0, loc_16937E
16936A:  VLDR            S0, =0.0
16936E:  VMOV.F32        S2, S0
169372:  B               loc_1693C6
169374:  VLDR            S0, =0.0
169378:  VMOV.F32        S2, S0
16937C:  B               loc_16939E
16937E:  MOVS            R0, #0
169380:  STR             R3, [SP,#0x98+var_90]
169382:  STR             R0, [SP,#0x98+var_98]; float
169384:  ADD             R0, SP, #0x98+var_50; int
169386:  MOVS            R1, #1; int
169388:  MOVS            R2, #0; int
16938A:  MOVS            R3, #0; int
16938C:  BL              sub_170850
169390:  LDR             R3, [SP,#0x98+var_90]
169392:  LDR.W           R0, [R8,#0x678]
169396:  VLDR            S0, [SP,#0x98+var_50]
16939A:  VLDR            S2, [SP,#0x98+var_4C]
16939E:  CMP             R0, #4
1693A0:  BNE             loc_1693C6
1693A2:  MOVS            R0, #0
1693A4:  MOV             R11, R3
1693A6:  STR             R0, [SP,#0x98+var_98]; float
1693A8:  ADD             R0, SP, #0x98+var_50; int
1693AA:  MOVS            R1, #4; int
1693AC:  MOVS            R2, #0; int
1693AE:  MOVS            R3, #0; int
1693B0:  BL              sub_170850
1693B4:  MOV             R3, R11
1693B6:  MOVW            R11, #0xFFFF
1693BA:  VLDR            S0, [SP,#0x98+var_50]
1693BE:  MOVT            R11, #0x7F7F
1693C2:  VLDR            S2, [SP,#0x98+var_4C]
1693C6:  VCMP.F32        S0, #0.0
1693CA:  VMRS            APSR_nzcv, FPSCR
1693CE:  ITT EQ
1693D0:  VCMPEQ.F32      S2, #0.0
1693D4:  VMRSEQ          APSR_nzcv, FPSCR
1693D8:  BEQ             loc_169462
1693DA:  VLDR            S4, =800.0
1693DE:  ADD             R1, SP, #0x98+var_50
1693E0:  VLDR            S6, [R6,#0x18]
1693E4:  MOVS            R2, #1
1693E6:  VLDR            S8, [R6,#0xA4]
1693EA:  VMUL.F32        S4, S6, S4
1693EE:  VLDR            S10, [R6,#0xA8]
1693F2:  MOV             R6, R4
1693F4:  MOV             R4, R3
1693F6:  VCMP.F32        S8, S10
1693FA:  VMRS            APSR_nzcv, FPSCR
1693FE:  IT MI
169400:  VMOVMI.F32      S10, S8
169404:  LDR.W           R0, [R8,#0x690]
169408:  VMUL.F32        S4, S4, S10
16940C:  LDR.W           R0, [R0,#0x2FC]
169410:  VLDR            S6, [R0,#0xC]
169414:  VLDR            S8, [R0,#0x10]
169418:  VCVT.S32.F32    S4, S4
16941C:  VCVT.F32.S32    S4, S4
169420:  VMLA.F32        S8, S2, S4
169424:  VMLA.F32        S6, S0, S4
169428:  VSTR            S8, [SP,#0x98+var_4C]
16942C:  VSTR            S6, [SP,#0x98+var_50]
169430:  BL              sub_16820C
169434:  LDR.W           R0, [R8,#0x690]
169438:  MOVS            R1, #1
16943A:  STRB            R1, [R5,#0x17]
16943C:  MOV             R3, R4
16943E:  MOV             R4, R6
169440:  LDRB            R0, [R0,#9]
169442:  LSLS            R0, R0, #0x1F
169444:  BNE             loc_169462
169446:  LDR             R0, [SP,#0x98+var_70]
169448:  MOVW            R1, #0x2CF8
16944C:  LDR             R0, [R0]
16944E:  ADD             R1, R0
169450:  VLDR            S0, [R1]
169454:  VCMP.F32        S0, #0.0
169458:  VMRS            APSR_nzcv, FPSCR
16945C:  ITT LS
16945E:  LDRLS           R0, [R0,#0x1C]
169460:  STRLS           R0, [R1]
169462:  LDR             R6, [SP,#0x98+var_6C]
169464:  CMP             R3, #0
169466:  BEQ             loc_1694EA
169468:  LDR.W           R0, [R8,#0x650]
16946C:  CBZ             R0, loc_169476
16946E:  LDR.W           R0, [R0,#0x2FC]
169472:  CMP             R3, R0
169474:  BEQ             loc_1694E4
169476:  LDR             R0, [SP,#0x98+var_70]
169478:  MOVW            R1, #0x19D0
16947C:  MOV             R11, R4
16947E:  LDR             R0, [R0]
169480:  LDR             R2, [R0,R1]
169482:  ADD             R0, R1
169484:  CMP             R2, #0
169486:  IT NE
169488:  MOVNE           R2, #1
16948A:  STRB            R2, [R0,#0xC]
16948C:  ITTT NE
16948E:  MOVNE           R1, #0
169490:  STRHNE          R1, [R0,#0xE]
169492:  STRNE           R1, [R0,#8]
169494:  MOVS            R1, #0
169496:  STRD.W          R1, R1, [R0,#0x14]
16949A:  STR             R1, [R0]
16949C:  STR             R1, [R0,#0x24]
16949E:  STRB            R1, [R0,#0xD]
1694A0:  LDR.W           R4, [R3,#0x308]
1694A4:  STRB            R1, [R0,#0x10]
1694A6:  MOV.W           R0, #0x100
1694AA:  STRH            R0, [R5,#0x16]
1694AC:  CMP             R4, #0
1694AE:  IT EQ
1694B0:  MOVEQ           R4, R3
1694B2:  MOV             R0, R4
1694B4:  MOVS            R1, #0
1694B6:  BL              sub_1683F8
1694BA:  MOV             R0, R4
1694BC:  BL              sub_168010
1694C0:  LDR.W           R0, [R4,#0x30C]
1694C4:  CBNZ            R0, loc_1694CE
1694C6:  MOV             R0, R4
1694C8:  MOVS            R1, #0
1694CA:  BL              sub_16F910
1694CE:  LDR.W           R0, [R4,#0x138]
1694D2:  MOV             R4, R11
1694D4:  MOV             R11, #0x7F7FFFFF
1694DC:  CMP             R0, #2
1694DE:  ITT EQ
1694E0:  MOVEQ           R0, #1
1694E2:  STREQ           R0, [R5,#0xC]
1694E4:  MOVS            R0, #0
1694E6:  STR.W           R0, [R8,#0x690]
1694EA:  CBZ             R4, loc_169542
1694EC:  LDR.W           R5, [R8,#0x650]
1694F0:  CBZ             R5, loc_169542
1694F2:  MOV             R0, R5
1694F4:  MOV             R4, R0
1694F6:  LDR.W           R0, [R0,#0x2F8]
1694FA:  CBZ             R0, loc_169510
1694FC:  LDRB.W          R1, [R4,#0x138]
169500:  LSLS            R1, R1, #0x1E
169502:  BMI             loc_169510
169504:  LDR             R1, [R4,#8]
169506:  AND.W           R1, R1, #0x15000000
16950A:  CMP.W           R1, #0x1000000
16950E:  BEQ             loc_1694F4
169510:  CMP             R4, R5
169512:  BEQ             loc_169524
169514:  MOV             R0, R4
169516:  BL              sub_168010
16951A:  LDR.W           R0, [R8,#0x650]
16951E:  STR.W           R5, [R4,#0x308]
169522:  B               loc_169526
169524:  MOV             R0, R5
169526:  LDR             R2, [SP,#0x98+var_78]
169528:  MOV.W           R1, #0x100
16952C:  STRH            R1, [R2,#0x16]
16952E:  LDRB.W          R0, [R0,#0x138]
169532:  LSLS            R0, R0, #0x1E
169534:  ITTE MI
169536:  LDRMI           R0, [R2,#0xC]
169538:  EORMI.W         R0, R0, #1
16953C:  MOVPL           R0, #0
16953E:  BL              sub_171FC0
169542:  MOV             R0, R6
169544:  CMP             R6, #0
169546:  IT NE
169548:  MOVNE           R0, #1
16954A:  LDR             R1, [SP,#0x98+var_74]
16954C:  ORRS            R0, R1
16954E:  CMP             R0, #1
169550:  BNE             loc_16957A
169552:  LDR.W           R0, [R9,#0xE4]
169556:  CBZ             R0, loc_16957A
169558:  LDR             R0, [R0,#8]
16955A:  MOVS            R1, #1
16955C:  ANDS.W          R0, R0, #0x40000
169560:  EOR.W           R0, R1, R0,LSR#18
169564:  STRB.W          R0, [R10,#0x359]
169568:  BNE             loc_169580
16956A:  LDR.W           R0, [R9,#0xE8]
16956E:  CBZ             R0, loc_169580
169570:  LDRB.W          R0, [R9,#0x146]
169574:  CBNZ            R0, loc_169580
169576:  MOVS            R0, #1
169578:  B               loc_16958A
16957A:  MOVS            R0, #0
16957C:  STRB.W          R0, [R10,#0x359]
169580:  LDR.W           R0, [R9,#0x124]
169584:  CMP             R0, #0
169586:  IT NE
169588:  MOVNE           R0, #1
16958A:  LDR             R1, [SP,#0x98+var_70]
16958C:  STRB.W          R0, [R10,#0x35A]
169590:  MOVW            R0, #0x145C
169594:  LDR             R1, [R1]
169596:  ADD             R0, R1
169598:  VLDR            S0, [R0]
16959C:  VCMP.F32        S0, #0.0
1695A0:  VMRS            APSR_nzcv, FPSCR
1695A4:  BNE             loc_169674
1695A6:  LDR.W           R2, [R9]
1695AA:  CBZ             R2, loc_1695E0
1695AC:  LDRB.W          R2, [R9,#0x18]
1695B0:  LSLS            R2, R2, #0x1E
1695B2:  BMI             loc_169674
1695B4:  MOVW            R2, #0x19D8
1695B8:  ADD             R1, R2
1695BA:  LDR.W           R2, [R0,#0x574]
1695BE:  CMP             R2, #0
1695C0:  IT NE
1695C2:  MOVNE           R2, #1
1695C4:  STRB            R2, [R1,#4]
1695C6:  ITTT NE
1695C8:  MOVNE           R2, #0
1695CA:  STRHNE          R2, [R1,#6]
1695CC:  STRNE           R2, [R1]
1695CE:  MOVS            R2, #0
1695D0:  STRD.W          R2, R2, [R1,#0xC]
1695D4:  STR.W           R2, [R0,#0x574]
1695D8:  STR             R2, [R1,#0x1C]
1695DA:  STRB            R2, [R1,#5]
1695DC:  STRB            R2, [R1,#8]
1695DE:  B               loc_169674
1695E0:  LDR.W           R4, [R9,#0xE4]
1695E4:  CBZ             R4, loc_169626
1695E6:  LDR             R0, [R4,#8]
1695E8:  AND.W           R0, R0, #0x5000000
1695EC:  CMP.W           R0, #0x1000000
1695F0:  BNE             loc_169626
1695F2:  LDR.W           R0, [R4,#0x2F8]
1695F6:  CBZ             R0, loc_169626
1695F8:  BL              sub_168010
1695FC:  LDR             R1, [SP,#0x98+var_70]
1695FE:  MOVW            R0, #0x1AB4
169602:  LDRB.W          R2, [R9,#0x147]
169606:  LDR             R3, [R4,#0x54]
169608:  LDR             R1, [R1]
16960A:  LDR             R5, [R1,R0]
16960C:  ADD             R0, R1
16960E:  STR             R3, [R0,#4]
169610:  MOV.W           R0, #0
169614:  STRB.W          R0, [R9,#0x144]
169618:  STR.W           R3, [R5,#0x30C]
16961C:  CBZ             R2, loc_169674
16961E:  MOVS            R0, #1
169620:  STRB.W          R0, [R9,#0x145]
169624:  B               loc_169674
169626:  LDR.W           R0, [R9,#0xCC]
16962A:  CMP             R0, #1
16962C:  BLT             loc_16964C
16962E:  SUBS            R0, #1
169630:  LDR.W           R1, [R9,#0xD4]
169634:  ADD.W           R2, R0, R0,LSL#3
169638:  ADD.W           R1, R1, R2,LSL#2
16963C:  LDR             R1, [R1,#4]
16963E:  LDRB            R1, [R1,#0xB]
169640:  LSLS            R1, R1, #0x1C
169642:  BMI             loc_169674
169644:  MOVS            R1, #1
169646:  BL              sub_1702CC
16964A:  B               loc_169674
16964C:  LDR.W           R0, [R9,#0x13C]
169650:  CBZ             R0, loc_16965A
169652:  MOVS            R0, #0
169654:  BL              sub_171FC0
169658:  B               loc_169674
16965A:  CBZ             R4, loc_16966E
16965C:  LDR             R0, [R4,#8]
16965E:  AND.W           R0, R0, #0x5000000
169662:  CMP.W           R0, #0x1000000
169666:  ITT NE
169668:  MOVNE           R0, #0
16966A:  STRNE.W         R0, [R4,#0x30C]
16966E:  MOVS            R0, #0
169670:  STR.W           R0, [R9,#0xE8]
169674:  LDR.W           R3, [R9,#0xE8]
169678:  VMOV.I32        Q8, #0
16967C:  ADD.W           R0, R9, #0xEC
169680:  VST1.32         {D16-D17}, [R0]
169684:  CBZ             R3, loc_169692
169686:  LDRB.W          R1, [R9,#0x146]
16968A:  CBNZ            R1, loc_169692
16968C:  LDR.W           R1, [R9,#0x124]
169690:  CBZ             R1, loc_1696B0
169692:  LDR.W           R8, [R9,#0xE4]
169696:  CMP.W           R8, #0
16969A:  BEQ             loc_169716
16969C:  LDRB.W          R1, [R8,#0xA]
1696A0:  MOV.W           R12, #0
1696A4:  LSLS            R1, R1, #0x1D
1696A6:  ITT MI
1696A8:  MOVMI           R1, #1
1696AA:  STRBMI.W        R1, [R9,#0x146]
1696AE:  B               loc_16971E
1696B0:  LDR.W           R1, [R9,#0xE4]
1696B4:  CBZ             R1, loc_169716
1696B6:  LDRB            R1, [R1,#0xA]
1696B8:  LSLS            R1, R1, #0x1D
1696BA:  BMI             loc_169692
1696BC:  LDR             R1, [SP,#0x98+var_70]
1696BE:  MOVW            R2, #0x1458
1696C2:  LDR             R1, [R1]
1696C4:  VLDR            S0, [R1,#0x2FC]
1696C8:  ADD             R1, R2
1696CA:  VCMP.F32        S0, #0.0
1696CE:  VMRS            APSR_nzcv, FPSCR
1696D2:  BLE.W           loc_1699BC
1696D6:  VLDR            S0, [R1]
1696DA:  VMOV.F32        S4, #1.0
1696DE:  VLDR            S2, =0.0
1696E2:  VCMP.F32        S0, #0.0
1696E6:  VMOV.F32        S0, S2
1696EA:  VMRS            APSR_nzcv, FPSCR
1696EE:  IT EQ
1696F0:  VMOVEQ.F32      S0, S4
1696F4:  IT MI
1696F6:  VMOVMI.F32      S0, S2
1696FA:  LDR.W           R2, [R9]
1696FE:  CMP             R2, #0
169700:  BNE.W           loc_16A564
169704:  VCMP.F32        S0, #0.0
169708:  VMRS            APSR_nzcv, FPSCR
16970C:  BLE.W           loc_16A564
169710:  STR             R3, [R0]
169712:  B.W             loc_16A56A
169716:  MOV.W           R8, #0
16971A:  MOV.W           R12, #1
16971E:  LDR.W           R2, [R9,#0x108]
169722:  MOVS            R1, #0
169724:  STRB.W          R1, [R9,#0x161]
169728:  CBZ             R2, loc_169732
16972A:  VDUP.32         Q8, R2
16972E:  VST1.32         {D16-D17}, [R0]
169732:  LDR.W           R0, [R9]
169736:  MOV             R4, R11
169738:  STR.W           R1, [R9,#0x108]
16973C:  CMP             R0, #0
16973E:  ITE NE
169740:  LDRNE.W         R11, [R9,#0x14]
169744:  MOVEQ.W         R11, #0xFFFFFFFF
169748:  LDR.W           R0, [R9,#0x168]
16974C:  CBZ             R0, loc_169756
16974E:  MOVS            R0, #2
169750:  STR.W           R0, [R9,#0x168]
169754:  B               loc_169880
169756:  MOVS            R0, #0
169758:  MOV.W           R5, #0xFFFFFFFF
16975C:  CMP.W           R12, #0
169760:  STR.W           R0, [R9,#0x164]
169764:  STR.W           R5, [R9,#0x16C]
169768:  BNE.W           loc_16987A
16976C:  LDR.W           R0, [R9,#0x124]
169770:  MOV.W           R5, #0xFFFFFFFF
169774:  CMP             R0, #0
169776:  BNE.W           loc_16987A
16977A:  CMP.W           R11, #0
16977E:  BEQ             loc_16987A
169780:  LDRB.W          R0, [R8,#0xA]
169784:  LSLS            R0, R0, #0x1D
169786:  BMI             loc_169798
169788:  MOVS.W          R0, R11,LSL#31
16978C:  STR.W           R12, [SP,#0x98+var_74]
169790:  BNE             loc_16979E
169792:  MOV.W           R5, #0xFFFFFFFF
169796:  B               loc_1697D2
169798:  MOV.W           R5, #0xFFFFFFFF
16979C:  B               loc_16987A
16979E:  MOVS            R0, #4
1697A0:  MOVS            R1, #3
1697A2:  MOV             R6, R3
1697A4:  BL              sub_1706F8
1697A8:  VMOV            S16, R0
1697AC:  MOVS            R0, #0x12
1697AE:  MOVS            R1, #3
1697B0:  BL              sub_1706F8
1697B4:  VMOV            S0, R0
1697B8:  MOV             R3, R6
1697BA:  VADD.F32        S0, S16, S0
1697BE:  VCMP.F32        S0, #0.0
1697C2:  VMRS            APSR_nzcv, FPSCR
1697C6:  ITTE GT
1697C8:  MOVGT           R5, #0
1697CA:  STRGT.W         R5, [R9,#0x16C]
1697CE:  MOVLE.W         R5, #0xFFFFFFFF
1697D2:  MOV             R6, R3
1697D4:  MOVS.W          R0, R11,LSL#30
1697D8:  BPL             loc_169806
1697DA:  MOVS            R0, #5
1697DC:  MOVS            R1, #3
1697DE:  BL              sub_1706F8
1697E2:  VMOV            S16, R0
1697E6:  MOVS            R0, #0x13
1697E8:  MOVS            R1, #3
1697EA:  BL              sub_1706F8
1697EE:  VMOV            S0, R0
1697F2:  VADD.F32        S0, S16, S0
1697F6:  VCMP.F32        S0, #0.0
1697FA:  VMRS            APSR_nzcv, FPSCR
1697FE:  ITT GT
169800:  MOVGT           R5, #1
169802:  STRGT.W         R5, [R9,#0x16C]
169806:  MOVS.W          R0, R11,LSL#29
16980A:  BPL             loc_169838
16980C:  MOVS            R0, #6
16980E:  MOVS            R1, #3
169810:  BL              sub_1706F8
169814:  VMOV            S16, R0
169818:  MOVS            R0, #0x14
16981A:  MOVS            R1, #3
16981C:  BL              sub_1706F8
169820:  VMOV            S0, R0
169824:  VADD.F32        S0, S16, S0
169828:  VCMP.F32        S0, #0.0
16982C:  VMRS            APSR_nzcv, FPSCR
169830:  ITT GT
169832:  MOVGT           R5, #2
169834:  STRGT.W         R5, [R9,#0x16C]
169838:  MOVS.W          R0, R11,LSL#28
16983C:  BMI             loc_169846
16983E:  MOV             R3, R6
169840:  LDR.W           R12, [SP,#0x98+var_74]
169844:  B               loc_16987A
169846:  MOVS            R0, #7
169848:  MOVS            R1, #3
16984A:  BL              sub_1706F8
16984E:  VMOV            S16, R0
169852:  MOVS            R0, #0x15
169854:  MOVS            R1, #3
169856:  BL              sub_1706F8
16985A:  VMOV            S0, R0
16985E:  LDR.W           R12, [SP,#0x98+var_74]
169862:  MOV             R3, R6
169864:  VADD.F32        S0, S16, S0
169868:  VCMP.F32        S0, #0.0
16986C:  VMRS            APSR_nzcv, FPSCR
169870:  ITTT GT
169872:  MOVGT           R0, #3
169874:  STRGT.W         R0, [R9,#0x16C]
169878:  MOVGT           R5, #3
16987A:  STR.W           R5, [R9,#0x174]
16987E:  LDR             R6, [SP,#0x98+var_6C]
169880:  VLDR            S16, =0.0
169884:  CBZ             R6, loc_169894
169886:  LDR             R0, [SP,#0x98+var_70]
169888:  LDR             R1, [R0]
16988A:  MOVW            R0, #0x1B3C
16988E:  LDR             R0, [R1,R0]
169890:  ADDS            R0, #1
169892:  BEQ             loc_169978
169894:  LDR.W           R0, [R9,#0x16C]
169898:  MOVS            R2, #1
16989A:  ADDS            R1, R0, #1
16989C:  BEQ             loc_1698BE
16989E:  STRB.W          R2, [R9,#0x161]
1698A2:  MOVS            R2, #0
1698A4:  STR.W           R0, [R9,#0x170]
1698A8:  CBNZ            R3, loc_1698BA
1698AA:  MOVW            R1, #0x101
1698AE:  STR.W           R2, [R9,#0x14C]
1698B2:  STRH.W          R1, [R9,#0x149]
1698B6:  STRB.W          R2, [R9,#0x146]
1698BA:  MOVS            R1, #1
1698BC:  B               loc_1698C0
1698BE:  MOVS            R1, #0
1698C0:  LDR             R3, [SP,#0x98+var_70]
1698C2:  MOVW            R6, #0x1B31
1698C6:  MOVW            R5, #0x18CC
1698CA:  LDR             R3, [R3]
1698CC:  LDRB            R6, [R3,R6]
1698CE:  ADD             R3, R5
1698D0:  CBZ             R6, loc_1698D6
1698D2:  MOVS            R5, #1
1698D4:  B               loc_1698E0
1698D6:  LDRB.W          R5, [R3,#0x24D]
1698DA:  CMP             R5, #0
1698DC:  IT NE
1698DE:  MOVNE           R5, #1
1698E0:  CMP.W           R12, #0
1698E4:  STRB.W          R5, [R3,#0x24C]
1698E8:  BNE.W           loc_169AAA
1698EC:  LDRB.W          R6, [R8,#0xA]
1698F0:  LSLS            R6, R6, #0x1D
1698F2:  BMI.W           loc_169AAA
1698F6:  LDR.W           R6, [R9,#0x124]
1698FA:  CMP             R6, #0
1698FC:  BNE.W           loc_169AAA
169900:  VLDR            S0, [R8,#0x274]
169904:  VLDR            S2, [R3]
169908:  VLDR            S4, [R10,#0x18]
16990C:  VMUL.F32        S0, S2, S0
169910:  VLDR            S2, =100.0
169914:  LDR.W           R1, [R8,#0x138]
169918:  CMP             R1, #0
16991A:  VMUL.F32        S0, S0, S2
16991E:  VMOV.F32        S2, #0.5
169922:  VMLA.F32        S2, S0, S4
169926:  VCVT.S32.F32    S0, S2
16992A:  VCVT.F32.S32    S18, S0
16992E:  BNE             loc_169A14
169930:  LDRB.W          R1, [R8,#0x141]
169934:  CLZ.W           R1, R1
169938:  LSRS            R1, R1, #5
16993A:  ORRS            R1, R2
16993C:  BNE             loc_169A14
16993E:  CMP             R0, #1
169940:  BHI             loc_1699D8
169942:  VMOV.F32        S0, #1.0
169946:  CMP             R0, #0
169948:  VMOV.F32        S2, #-1.0
16994C:  IT EQ
16994E:  VMOVEQ.F32      S0, S2
169952:  VLDR            S2, [R8,#0x58]
169956:  VLDR            S4, [R8,#0xE0]
16995A:  VADD.F32        S4, S2, S4
16995E:  VMLA.F32        S2, S0, S18
169962:  VCVT.S32.F32    S0, S2
169966:  VCVT.F32.S32    S0, S0
16996A:  VSUB.F32        S2, S4, S0
16996E:  VSTR            S0, [R8,#0x58]
169972:  VSTR            S2, [R8,#0xE0]
169976:  B               loc_169A14
169978:  MOVW            R0, #0x18CC
16997C:  ADDS            R6, R1, R0
16997E:  LDR.W           R5, [R6,#0x1E8]
169982:  CMP             R5, #0
169984:  BEQ.W           loc_169894
169988:  LDRB            R0, [R5,#0xA]
16998A:  LSLS            R0, R0, #0x1D
16998C:  BMI.W           loc_169894
169990:  LDR.W           R0, [R6,#0x228]
169994:  CMP             R0, #0
169996:  BNE.W           loc_169894
16999A:  LDR.W           R0, [R6,#0x240]
16999E:  CMP             R0, #0
1699A0:  BNE.W           loc_169894
1699A4:  LDR             R0, [R1,#0x48]
1699A6:  CMP             R0, #0
1699A8:  BMI.W           loc_16A5D2
1699AC:  ADDS            R2, R1, R0
1699AE:  LDRB.W          R2, [R2,#0xFC]
1699B2:  CMP             R2, #0
1699B4:  IT NE
1699B6:  MOVNE           R2, #1
1699B8:  B.W             loc_16A5D4
1699BC:  LDR.W           R2, [R9]
1699C0:  CMP             R2, #0
1699C2:  BNE.W           loc_16A57E
1699C6:  B.W             loc_16A584
1699CA:  ALIGN 4
1699CC:  DCFS 0.0
1699D0:  DCFS 100.0
1699D4:  DCFS -256000.0
1699D8:  BIC.W           R1, R0, #1
1699DC:  CMP             R1, #2
1699DE:  BNE             loc_169A14
1699E0:  VMOV.F32        S0, #1.0
1699E4:  CMP             R0, #2
1699E6:  VMOV.F32        S2, #-1.0
1699EA:  IT EQ
1699EC:  VMOVEQ.F32      S0, S2
1699F0:  VLDR            S2, [R8,#0x5C]
1699F4:  VLDR            S4, [R8,#0xE4]
1699F8:  VADD.F32        S4, S2, S4
1699FC:  VMLA.F32        S2, S0, S18
169A00:  VCVT.S32.F32    S0, S2
169A04:  VCVT.F32.S32    S0, S0
169A08:  VSUB.F32        S2, S4, S0
169A0C:  VSTR            S0, [R8,#0x5C]
169A10:  VSTR            S2, [R8,#0xE4]
169A14:  MOVS            R0, #0
169A16:  MOVW            R3, #0xCCCD
169A1A:  MOVT            R0, #0x4120
169A1E:  MOVT            R3, #0x3DCC; int
169A22:  STR             R0, [SP,#0x98+var_98]; float
169A24:  ADD             R0, SP, #0x98+var_50; int
169A26:  MOVS            R1, #4; int
169A28:  MOVS            R2, #0; int
169A2A:  BL              sub_170850
169A2E:  VLDR            S0, [SP,#0x98+var_50]
169A32:  VCMP.F32        S0, #0.0
169A36:  VMRS            APSR_nzcv, FPSCR
169A3A:  ITT NE
169A3C:  LDRBNE.W        R0, [R8,#0x78]
169A40:  CMPNE           R0, #0
169A42:  BEQ             loc_169A6E
169A44:  VLDR            S2, [R8,#0x58]
169A48:  MOVS            R0, #1
169A4A:  VLDR            S4, [R8,#0xE0]
169A4E:  STRB.W          R0, [R9,#0x160]
169A52:  VADD.F32        S4, S2, S4
169A56:  VMLA.F32        S2, S0, S18
169A5A:  VCVT.S32.F32    S0, S2
169A5E:  VCVT.F32.S32    S0, S0
169A62:  VSUB.F32        S2, S4, S0
169A66:  VSTR            S0, [R8,#0x58]
169A6A:  VSTR            S2, [R8,#0xE0]
169A6E:  VLDR            S0, [SP,#0x98+var_4C]
169A72:  VCMP.F32        S0, #0.0
169A76:  VMRS            APSR_nzcv, FPSCR
169A7A:  BEQ             loc_169AA6
169A7C:  VLDR            S2, [R8,#0x5C]
169A80:  MOVS            R0, #1
169A82:  VLDR            S4, [R8,#0xE4]
169A86:  STRB.W          R0, [R9,#0x160]
169A8A:  VADD.F32        S4, S2, S4
169A8E:  VMLA.F32        S2, S0, S18
169A92:  VCVT.S32.F32    S0, S2
169A96:  VCVT.F32.S32    S0, S0
169A9A:  VSUB.F32        S2, S4, S0
169A9E:  VSTR            S0, [R8,#0x5C]
169AA2:  VSTR            S2, [R8,#0xE4]
169AA6:  LDRB.W          R1, [R9,#0x161]
169AAA:  ADR.W           R0, dword_16A7C0
169AAE:  MOV             R2, #0xFF7FFFFF
169AB2:  VLD1.64         {D16-D17}, [R0]
169AB6:  MOVS            R0, #0
169AB8:  CMP             R1, #0
169ABA:  STRD.W          R0, R0, [R9,#0x178]
169ABE:  STR.W           R0, [R9,#0x180]
169AC2:  STRD.W          R0, R0, [R9,#0x1A0]
169AC6:  STR.W           R0, [R9,#0x1A8]
169ACA:  STRD.W          R0, R0, [R9,#0x1C8]
169ACE:  STR.W           R0, [R9,#0x1D0]
169AD2:  ADD.W           R0, R9, #0x184
169AD6:  VST1.32         {D16-D17}, [R0]!
169ADA:  STR             R4, [R0]
169ADC:  ADD.W           R0, R9, #0x1AC
169AE0:  VST1.32         {D16-D17}, [R0]!
169AE4:  STR             R4, [R0]
169AE6:  ADD.W           R0, R9, #0x1D4
169AEA:  VST1.32         {D16-D17}, [R0]!
169AEE:  STRD.W          R2, R2, [R9,#0x198]
169AF2:  STRD.W          R2, R2, [R9,#0x1E8]
169AF6:  STRD.W          R2, R2, [R9,#0x1C0]
169AFA:  STR             R4, [R0]
169AFC:  BEQ.W           loc_169C3E
169B00:  LDRB.W          R0, [R9,#0x160]
169B04:  CMP             R0, #0
169B06:  BEQ.W           loc_169C3E
169B0A:  LDR.W           R0, [R9,#0x13C]
169B0E:  CMP             R0, #0
169B10:  BNE.W           loc_169C3E
169B14:  LDR.W           R0, [R9,#0xE4]
169B18:  VMOV.F32        S12, #-1.0
169B1C:  VMOV.F32        S14, #1.0
169B20:  VLDR            S0, [R0,#0xC]
169B24:  VLDR            S4, [R0,#0x1F0]
169B28:  VLDR            S2, [R0,#0x10]
169B2C:  VLDR            S10, [R0,#0x1FC]
169B30:  VSUB.F32        S4, S4, S0
169B34:  VLDR            S8, [R0,#0x1F8]
169B38:  VLDR            S6, [R0,#0x1F4]
169B3C:  VSUB.F32        S10, S10, S2
169B40:  VSUB.F32        S0, S8, S0
169B44:  VSUB.F32        S2, S6, S2
169B48:  VADD.F32        S6, S4, S12
169B4C:  VLDR            S4, [R0,#0x318]
169B50:  VADD.F32        S10, S10, S14
169B54:  VADD.F32        S8, S0, S14
169B58:  VLDR            S0, [R0,#0x31C]
169B5C:  VADD.F32        S12, S2, S12
169B60:  VLDR            S2, [R0,#0x314]
169B64:  VCMP.F32        S2, S6
169B68:  VMRS            APSR_nzcv, FPSCR
169B6C:  ITT GE
169B6E:  VCMPGE.F32      S4, S12
169B72:  VMRSGE          APSR_nzcv, FPSCR
169B76:  BLT             loc_169B90
169B78:  VCMP.F32        S0, S8
169B7C:  VMRS            APSR_nzcv, FPSCR
169B80:  ITTT LS
169B82:  VLDRLS          S14, [R0,#0x320]
169B86:  VCMPLS.F32      S14, S10
169B8A:  VMRSLS          APSR_nzcv, FPSCR
169B8E:  BLS             loc_169C38
169B90:  LDR             R1, [SP,#0x98+var_70]
169B92:  MOVW            R2, #0x18CC
169B96:  VLDR            S14, [R0,#0x274]
169B9A:  VMOV.F32        S5, #0.5
169B9E:  VLDR            S1, [R0,#0x320]
169BA2:  LDR             R1, [R1]
169BA4:  ADD             R1, R2
169BA6:  VLDR            S3, [R1]
169BAA:  VMUL.F32        S14, S3, S14
169BAE:  VSUB.F32        S3, S10, S12
169BB2:  VMUL.F32        S14, S14, S5
169BB6:  VSUB.F32        S5, S8, S6
169BBA:  VCMP.F32        S3, S14
169BBE:  VMOV.F32        S7, S14
169BC2:  VMRS            APSR_nzcv, FPSCR
169BC6:  IT MI
169BC8:  VMOVMI.F32      S7, S3
169BCC:  VCMP.F32        S5, S14
169BD0:  VADD.F32        S12, S12, S7
169BD4:  VMRS            APSR_nzcv, FPSCR
169BD8:  IT MI
169BDA:  VMOVMI.F32      S14, S5
169BDE:  VADD.F32        S6, S6, S14
169BE2:  VSUB.F32        S10, S10, S7
169BE6:  VSUB.F32        S8, S8, S14
169BEA:  VCMP.F32        S4, S12
169BEE:  VMRS            APSR_nzcv, FPSCR
169BF2:  VCMP.F32        S2, S6
169BF6:  IT GE
169BF8:  VMOVGE.F32      S12, S4
169BFC:  VMRS            APSR_nzcv, FPSCR
169C00:  VCMP.F32        S1, S10
169C04:  IT GE
169C06:  VMOVGE.F32      S6, S2
169C0A:  VMRS            APSR_nzcv, FPSCR
169C0E:  VCMP.F32        S0, S8
169C12:  IT MI
169C14:  VMOVMI.F32      S10, S1
169C18:  VMRS            APSR_nzcv, FPSCR
169C1C:  IT MI
169C1E:  VMOVMI.F32      S8, S0
169C22:  VSTR            S6, [R0,#0x314]
169C26:  VSTR            S12, [R0,#0x318]
169C2A:  VSTR            S8, [R0,#0x31C]
169C2E:  VSTR            S10, [R0,#0x320]
169C32:  MOVS            R0, #0
169C34:  STR.W           R0, [R9,#0xE8]
169C38:  MOVS            R0, #0
169C3A:  STRB.W          R0, [R9,#0x160]
169C3E:  LDR.W           R0, [R9,#0xE4]
169C42:  CBZ             R0, loc_169C92
169C44:  LDR.W           R1, [R9,#0x13C]
169C48:  VLDR            S0, =0.0
169C4C:  ADD.W           R1, R0, R1,LSL#4
169C50:  VLDR            S8, [R1,#0x314]
169C54:  VLDR            S6, [R1,#0x31C]
169C58:  VCMP.F32        S8, S6
169C5C:  VMRS            APSR_nzcv, FPSCR
169C60:  BGT             loc_169CA8
169C62:  VLDR            S14, [R1,#0x318]
169C66:  VMOV.F32        S2, S0
169C6A:  VLDR            S12, [R1,#0x320]
169C6E:  VMOV.F32        S4, S0
169C72:  VMOV.F32        S10, S0
169C76:  VCMP.F32        S14, S12
169C7A:  VMRS            APSR_nzcv, FPSCR
169C7E:  ITTTT LE
169C80:  VMOVLE.F32      S0, S8
169C84:  VMOVLE.F32      S2, S14
169C88:  VMOVLE.F32      S4, S6
169C8C:  VMOVLE.F32      S10, S12
169C90:  B               loc_169CB4
169C92:  LDR             R0, [SP,#0x98+var_70]
169C94:  VMOV.F32        S2, #1.0
169C98:  VLDR            S4, =0.0
169C9C:  LDR             R0, [R0]
169C9E:  VLDR            S0, [R0,#0x10]
169CA2:  VLDR            S6, [R0,#0x14]
169CA6:  B               loc_169CD8
169CA8:  VMOV.F32        S2, S0
169CAC:  VMOV.F32        S4, S0
169CB0:  VMOV.F32        S10, S0
169CB4:  VLDR            S8, [R0,#0xC]
169CB8:  VMOV.F32        S14, #1.0
169CBC:  VLDR            S12, [R0,#0x10]
169CC0:  VADD.F32        S1, S0, S8
169CC4:  LDR             R0, [SP,#0x98+var_70]
169CC6:  VADD.F32        S0, S4, S8
169CCA:  VADD.F32        S4, S2, S12
169CCE:  VADD.F32        S6, S10, S12
169CD2:  LDR             R0, [R0]
169CD4:  VADD.F32        S2, S1, S14
169CD8:  VADD.F32        S8, S16, S4
169CDC:  MOVS            R1, #0
169CDE:  VADD.F32        S6, S16, S6
169CE2:  VLDR            S4, =-256000.0
169CE6:  VCMP.F32        S2, S0
169CEA:  VMRS            APSR_nzcv, FPSCR
169CEE:  IT MI
169CF0:  VMOVMI.F32      S0, S2
169CF4:  STR.W           R1, [R9,#0x120]
169CF8:  MOVW            R1, #0x1958
169CFC:  VSTR            S0, [R9,#0x110]
169D00:  ADD.W           R10, R0, R1
169D04:  VSTR            S0, [R9,#0x118]
169D08:  VSTR            S8, [R9,#0x114]
169D0C:  VSTR            S6, [R9,#0x11C]
169D10:  VLDR            S0, [R0,#0xE0]
169D14:  VLDR            S2, [R0,#0xE4]
169D18:  VCMP.F32        S0, S4
169D1C:  VMRS            APSR_nzcv, FPSCR
169D20:  ITT GE
169D22:  VCMPGE.F32      S2, S4
169D26:  VMRSGE          APSR_nzcv, FPSCR
169D2A:  BLT             loc_169D52
169D2C:  VCVT.S32.F32    S2, S2
169D30:  MOVW            R2, #0x1DD4
169D34:  VCVT.S32.F32    S0, S0
169D38:  ADD             R2, R0
169D3A:  VCVT.F32.S32    S2, S2
169D3E:  VCVT.F32.S32    S0, S0
169D42:  VSTR            S2, [R2,#4]
169D46:  VSTR            S0, [R2]
169D4A:  VSTR            S0, [R0,#0xE0]
169D4E:  VSTR            S2, [R0,#0xE4]
169D52:  VCMP.F32        S0, S4
169D56:  VMRS            APSR_nzcv, FPSCR
169D5A:  BLT             loc_169D76
169D5C:  VCMP.F32        S2, S4
169D60:  VMRS            APSR_nzcv, FPSCR
169D64:  ITTT GE
169D66:  VLDRGE          S6, [R0,#0x37C]
169D6A:  VCMPGE.F32      S6, S4
169D6E:  VMRSGE          APSR_nzcv, FPSCR
169D72:  BGE.W           loc_16A368
169D76:  MOVS            R2, #0
169D78:  STRD.W          R2, R2, [R0,#0x374]
169D7C:  LDRD.W          R1, R2, [R0,#0xE0]
169D80:  VCMP.F32        S0, S4
169D84:  VMOV            S2, R2
169D88:  VMRS            APSR_nzcv, FPSCR
169D8C:  STR             R2, [SP,#0x98+var_78]
169D8E:  MOV.W           R3, #0
169D92:  STR.W           R2, [R0,#0x380]
169D96:  VCMP.F32        S2, S4
169D9A:  MOV.W           R2, #0
169D9E:  STR             R1, [SP,#0x98+var_74]
169DA0:  STR.W           R1, [R0,#0x37C]
169DA4:  IT GE
169DA6:  MOVGE           R2, #1
169DA8:  VMRS            APSR_nzcv, FPSCR
169DAC:  IT GE
169DAE:  MOVGE           R3, #1
169DB0:  VLDR            S4, =0.0
169DB4:  AND.W           R1, R2, R3
169DB8:  VLDR            D16, =-3.40282347e38
169DBC:  MOVS            R6, #0
169DBE:  MOVW            R5, #0x107
169DC2:  MOVS            R2, #0
169DC4:  MOVS            R3, #0
169DC6:  MOV.W           LR, #0
169DCA:  STR             R1, [SP,#0x98+var_6C]
169DCC:  ADD.W           R8, R0, LR
169DD0:  LDRB.W          R4, [R8,#0xE8]
169DD4:  CMP             R4, #0
169DD6:  BEQ             loc_169EB4
169DD8:  ADD.W           R12, R0, R3
169DDC:  MOVS            R4, #0
169DDE:  ADD.W           R11, R8, #0x3D8
169DE2:  VLDR            S6, [R12,#0x3F4]
169DE6:  STRB.W          R6, [R8,#0x3E2]
169DEA:  VCMP.F32        S6, #0.0
169DEE:  VMRS            APSR_nzcv, FPSCR
169DF2:  IT MI
169DF4:  MOVMI           R4, #1
169DF6:  STRB.W          R4, [R8,#0x3D8]
169DFA:  ADD.W           R4, R12, #0x408
169DFE:  VCMP.F32        S6, #0.0
169E02:  VMRS            APSR_nzcv, FPSCR
169E06:  VSTR            S6, [R4]
169E0A:  BPL             loc_169EF4
169E0C:  ADD.W           R9, R0, R2
169E10:  VLDR            D17, [R10]
169E14:  VLDR            S8, [R0,#0x28]
169E18:  VLDR            D18, [R9,#0x3B0]
169E1C:  STR.W           R6, [R12,#0x3F4]
169E20:  VSUB.F64        D18, D17, D18
169E24:  STRB.W          R6, [R8,#0x3DD]
169E28:  VCVT.F32.F64    S6, D18
169E2C:  VCMP.F32        S8, S6
169E30:  VMRS            APSR_nzcv, FPSCR
169E34:  BLE             loc_169E7E
169E36:  VMOV.F32        S6, S4
169E3A:  LDR             R1, [SP,#0x98+var_6C]
169E3C:  VMOV.F32        S8, S4
169E40:  CBZ             R1, loc_169E56
169E42:  ADD.W           R1, R0, LR,LSL#3
169E46:  VLDR            S6, [R9,#0x388]
169E4A:  VLDR            S10, [R1,#0x384]
169E4E:  VSUB.F32        S8, S2, S6
169E52:  VSUB.F32        S6, S0, S10
169E56:  VMUL.F32        S8, S8, S8
169E5A:  VLDR            S10, [R0,#0x2C]
169E5E:  VMOV            D17, D16
169E62:  VMUL.F32        S10, S10, S10
169E66:  VMLA.F32        S8, S6, S6
169E6A:  VCMP.F32        S8, S10
169E6E:  VMRS            APSR_nzcv, FPSCR
169E72:  BPL             loc_169E7E
169E74:  VMOV            D17, D16
169E78:  MOVS            R1, #1
169E7A:  STRB.W          R1, [R8,#0x3DD]
169E7E:  ADD.W           R1, R0, LR,LSL#3
169E82:  LDR             R4, [SP,#0x98+var_74]
169E84:  VSTR            D17, [R9,#0x3B0]
169E88:  STR.W           R4, [R1,#0x384]
169E8C:  LDR             R4, [SP,#0x98+var_78]
169E8E:  STR.W           R4, [R1,#0x388]
169E92:  LDRB.W          R4, [R8,#0x3DD]
169E96:  STRB.W          R4, [R8,#0x3EC]
169E9A:  STR.W           R6, [R0,R5,LSL#2]
169E9E:  STR.W           R6, [R1,#0x420]
169EA2:  LDRB.W          R1, [R8,#0xE8]
169EA6:  STR.W           R6, [R12,#0x444]
169EAA:  CMP             R1, #0
169EAC:  BNE             loc_169FA4
169EAE:  LDRB.W          R4, [R8,#0x3E2]
169EB2:  B               loc_169EEA
169EB4:  ADDS            R1, R0, R3
169EB6:  MOVS            R4, #0
169EB8:  STRB.W          R6, [R8,#0x3D8]
169EBC:  MOVT            R4, #0xBF80
169EC0:  STRB.W          R6, [R8,#0x3DD]
169EC4:  ADD.W           R11, R8, #0x3D8
169EC8:  VLDR            S6, [R1,#0x3F4]
169ECC:  STR.W           R4, [R1,#0x3F4]
169ED0:  ADD.W           R1, R1, #0x408
169ED4:  VCMP.F32        S6, #0.0
169ED8:  MOVS            R4, #0
169EDA:  VMRS            APSR_nzcv, FPSCR
169EDE:  IT GE
169EE0:  MOVGE           R4, #1
169EE2:  STRB.W          R4, [R8,#0x3E2]
169EE6:  VSTR            S6, [R1]
169EEA:  CMP             R4, #0
169EEC:  BNE             loc_169FA4
169EEE:  STRB.W          R6, [R8,#0x3EC]
169EF2:  B               loc_169FA4
169EF4:  VLDR            S8, [R0,#0x18]
169EF8:  STRB.W          R6, [R8,#0x3DD]
169EFC:  VADD.F32        S6, S6, S8
169F00:  LDR             R1, [SP,#0x98+var_6C]
169F02:  VMOV.F32        S8, S4
169F06:  VSTR            S6, [R12,#0x3F4]
169F0A:  VMOV.F32        S6, S4
169F0E:  CBZ             R1, loc_169F26
169F10:  ADDS            R1, R0, R2
169F12:  VLDR            S6, [R1,#0x388]
169F16:  ADD.W           R1, R0, LR,LSL#3
169F1A:  VLDR            S8, [R1,#0x384]
169F1E:  VSUB.F32        S6, S2, S6
169F22:  VSUB.F32        S8, S0, S8
169F26:  VMUL.F32        S10, S6, S6
169F2A:  ADDW            R1, R12, #0x444
169F2E:  ADD.W           R4, R0, LR,LSL#3
169F32:  VNEG.F32        S14, S6
169F36:  VLDR            S12, [R1]
169F3A:  ADD.W           R4, R4, #0x420
169F3E:  VMLA.F32        S10, S8, S8
169F42:  VCMP.F32        S12, S10
169F46:  VMRS            APSR_nzcv, FPSCR
169F4A:  VCMP.F32        S8, #0.0
169F4E:  IT GE
169F50:  VMOVGE.F32      S10, S12
169F54:  VMRS            APSR_nzcv, FPSCR
169F58:  VCMP.F32        S6, #0.0
169F5C:  VNEG.F32        S12, S8
169F60:  IT MI
169F62:  VMOVMI.F32      S8, S12
169F66:  VMRS            APSR_nzcv, FPSCR
169F6A:  IT MI
169F6C:  VMOVMI.F32      S6, S14
169F70:  VSTR            S10, [R1]
169F74:  ADD.W           R1, R0, R5,LSL#2
169F78:  VLDR            S12, [R4]
169F7C:  VLDR            S10, [R1]
169F80:  VCMP.F32        S10, S8
169F84:  VMRS            APSR_nzcv, FPSCR
169F88:  VCMP.F32        S12, S6
169F8C:  IT GE
169F8E:  VMOVGE.F32      S8, S10
169F92:  VMRS            APSR_nzcv, FPSCR
169F96:  IT GE
169F98:  VMOVGE.F32      S6, S12
169F9C:  VSTR            S8, [R1]
169FA0:  VSTR            S6, [R4]
169FA4:  LDRB.W          R1, [R11]
169FA8:  CBZ             R1, loc_169FAE
169FAA:  STRB.W          R6, [R10,#0x1BF]
169FAE:  ADD.W           LR, LR, #1
169FB2:  ADDS            R5, #2
169FB4:  ADDS            R2, #8
169FB6:  ADDS            R3, #4
169FB8:  CMP.W           LR, #5
169FBC:  BNE.W           loc_169DCC
169FC0:  LDR             R5, [SP,#0x98+var_80]
169FC2:  MOVW            R2, #0x2D4C
169FC6:  LDR.W           R9, [SP,#0x98+var_88]
169FCA:  LDR.W           R0, [R5,#0x248]
169FCE:  VLDR            S0, [R9,#0x18]
169FD2:  VLDR            S4, [R5,#0x24C]
169FD6:  ADD.W           R1, R9, R0,LSL#2
169FDA:  ADDS            R0, #1
169FDC:  ADD             R1, R2
169FDE:  MOV             R2, #0x88888889
169FE6:  VLDR            S2, [R1]
169FEA:  SMMLA.W         R2, R2, R0, R0
169FEE:  VSUB.F32        S2, S0, S2
169FF2:  VADD.F32        S2, S4, S2
169FF6:  VSTR            S2, [R5,#0x24C]
169FFA:  VSTR            S0, [R1]
169FFE:  ASRS            R1, R2, #6
16A000:  ADD.W           R1, R1, R2,LSR#31
16A004:  VLDR            S0, [R5,#0x24C]
16A008:  RSB.W           R1, R1, R1,LSL#4
16A00C:  VCMP.F32        S0, #0.0
16A010:  VMRS            APSR_nzcv, FPSCR
16A014:  SUB.W           R0, R0, R1,LSL#3
16A018:  STR.W           R0, [R5,#0x248]
16A01C:  BLE             loc_16A030
16A01E:  VLDR            S2, =120.0
16A022:  VDIV.F32        S0, S0, S2
16A026:  VMOV.F32        S2, #1.0
16A02A:  VDIV.F32        S0, S2, S0
16A02E:  B               loc_16A034
16A030:  VLDR            S0, =3.4028e38
16A034:  LDR.W           R10, [SP,#0x98+var_8C]
16A038:  VSTR            S0, [R9,#0x35C]
16A03C:  BL              sub_1680DC
16A040:  BL              sub_1684A0
16A044:  BL              sub_1683BC
16A048:  LDR.W           R12, [SP,#0x98+var_7C]
16A04C:  CBZ             R0, loc_16A090
16A04E:  VMOV.F32        S0, #6.0
16A052:  VLDR            S2, [R9,#0x18]
16A056:  VLDR            S4, [R12,#0x178]
16A05A:  VMOV.F32        S6, #1.0
16A05E:  VMLA.F32        S4, S2, S0
16A062:  VCMP.F32        S4, S6
16A066:  VMRS            APSR_nzcv, FPSCR
16A06A:  IT MI
16A06C:  VMOVMI.F32      S6, S4
16A070:  VSTR            S6, [R12,#0x178]
16A074:  B               loc_16A0CA
16A076:  ALIGN 4
16A078:  DCFS 0.0
16A07C:  ALIGN 0x10
16A080:  DCFD -3.40282347e38
16A088:  DCFS 120.0
16A08C:  DCFS 3.4028e38
16A090:  LDR.W           R0, [R12,#0x4C]
16A094:  CBZ             R0, loc_16A0A4
16A096:  VLDR            S0, [R12,#0x5C]
16A09A:  VCMP.F32        S0, #0.0
16A09E:  VMRS            APSR_nzcv, FPSCR
16A0A2:  BGT             loc_16A04E
16A0A4:  VMOV.F32        S0, #-10.0
16A0A8:  VLDR            S2, [R9,#0x18]
16A0AC:  VLDR            S4, [R12,#0x178]
16A0B0:  VMLA.F32        S4, S2, S0
16A0B4:  VLDR            S0, =0.0
16A0B8:  VCMP.F32        S4, #0.0
16A0BC:  VMRS            APSR_nzcv, FPSCR
16A0C0:  IT GE
16A0C2:  VMOVGE.F32      S0, S4
16A0C6:  VSTR            S0, [R12,#0x178]
16A0CA:  MOV.W           R0, #0x3F800000
16A0CE:  MOV.W           R1, #0xFFFFFFFF
16A0D2:  STRD.W          R0, R0, [R5]
16A0D6:  MOVW            R3, #0x19B0
16A0DA:  LDR             R0, [SP,#0x98+var_70]
16A0DC:  MOVS            R2, #0
16A0DE:  LDR.W           LR, [SP,#0x98+var_84]
16A0E2:  LDR             R0, [R0]
16A0E4:  STR.W           R1, [R5,#0x258]
16A0E8:  LDR             R4, [R0,R3]
16A0EA:  STR.W           R2, [R12,#0x26C]
16A0EE:  STRD.W          R1, R1, [R5,#0x250]
16A0F2:  CBZ             R4, loc_16A0FE
16A0F4:  LDRB.W          R1, [R4,#0x7D]
16A0F8:  CMP             R1, #0
16A0FA:  BEQ.W           loc_16A3A2
16A0FE:  LDR.W           R8, [R12,#0xC]
16A102:  CMP.W           R8, #0
16A106:  ITT NE
16A108:  LDRBNE.W        R0, [R8,#0x7A]
16A10C:  CMPNE           R0, #0
16A10E:  BNE.W           loc_16A2FE
16A112:  MOVS            R0, #0
16A114:  STRB.W          R0, [R12,#0x130]
16A118:  LDR.W           R6, [R12,#0x11C]
16A11C:  MOV             R5, #0x7FFFFFFF
16A120:  MOVS            R0, #0
16A122:  STR.W           R0, [R12,#0x118]
16A126:  STRD.W          R5, R5, [R12,#0x120]
16A12A:  CBZ             R6, loc_16A182
16A12C:  LDR.W           R0, [R12,#0x128]
16A130:  STR.W           R6, [R12,#0x118]
16A134:  CMP             R0, R5
16A136:  BEQ             loc_16A152
16A138:  LDR.W           R1, [R6,#0x164]
16A13C:  ADDS            R1, #1
16A13E:  BCS             loc_16A152
16A140:  ADD             R0, R1
16A142:  BLX             sub_2211C4
16A146:  LDR.W           R12, [SP,#0x98+var_7C]
16A14A:  LDR.W           LR, [SP,#0x98+var_84]
16A14E:  STR.W           R1, [R12,#0x120]
16A152:  LDR.W           R0, [R12,#0x12C]
16A156:  MOV             R4, #0x7FFFFFFF
16A15A:  CMP             R0, R4
16A15C:  BEQ             loc_16A178
16A15E:  LDR.W           R1, [R6,#0x168]
16A162:  ADDS            R1, #1
16A164:  BCS             loc_16A178
16A166:  ADD             R0, R1
16A168:  BLX             sub_2211C4
16A16C:  LDR.W           R12, [SP,#0x98+var_7C]
16A170:  LDR.W           LR, [SP,#0x98+var_84]
16A174:  STR.W           R1, [R12,#0x124]
16A178:  MOVS            R0, #0
16A17A:  STRD.W          R4, R4, [R12,#0x128]
16A17E:  STR.W           R0, [R12,#0x11C]
16A182:  LDR.W           R0, [LR,#0x3B0]
16A186:  STR.W           R5, [R12,#0x68]
16A18A:  CBZ             R0, loc_16A1AE
16A18C:  LDR.W           R1, [LR,#0x3B8]
16A190:  MOVS            R2, #0
16A192:  LDR.W           R3, [R1],#4
16A196:  SUBS            R0, #1
16A198:  LDRB.W          R6, [R3,#0x7A]
16A19C:  STRH.W          R2, [R3,#0x84]
16A1A0:  STRB.W          R2, [R3,#0x7C]
16A1A4:  STRB.W          R6, [R3,#0x7B]
16A1A8:  STRB.W          R2, [R3,#0x7A]
16A1AC:  BNE             loc_16A192
16A1AE:  CMP.W           R8, #0
16A1B2:  BEQ             loc_16A1C6
16A1B4:  LDRB.W          R0, [R8,#0x7B]
16A1B8:  CBNZ            R0, loc_16A1C6
16A1BA:  MOVS            R0, #0
16A1BC:  MOVS            R1, #0
16A1BE:  BL              sub_16A8F8
16A1C2:  LDR.W           R12, [SP,#0x98+var_7C]
16A1C6:  LDR.W           R0, [R10,#4]
16A1CA:  CMP.W           R0, #0xFFFFFFFF
16A1CE:  BGT             loc_16A22E
16A1D0:  LDR             R0, [SP,#0x98+var_70]
16A1D2:  LDR             R0, [R0]
16A1D4:  CBZ             R0, loc_16A1E0
16A1D6:  LDR.W           R1, [R0,#0x370]
16A1DA:  ADDS            R1, #1
16A1DC:  STR.W           R1, [R0,#0x370]
16A1E0:  LDR             R6, =(dword_381B60 - 0x16A1EA)
16A1E2:  MOVS            R5, #0
16A1E4:  LDR             R0, =(off_2390AC - 0x16A1EC)
16A1E6:  ADD             R6, PC; dword_381B60
16A1E8:  ADD             R0, PC; off_2390AC
16A1EA:  LDR             R1, [R6]
16A1EC:  LDR             R2, [R0]; sub_171190
16A1EE:  MOVS            R0, #0
16A1F0:  BLX             R2; sub_171190
16A1F2:  LDR.W           R1, [R10,#8]; src
16A1F6:  MOV             R4, R0
16A1F8:  CBZ             R1, loc_16A226
16A1FA:  LDR.W           R0, [R10]
16A1FE:  LSLS            R2, R0, #2; n
16A200:  MOV             R0, R4; dest
16A202:  BLX             j_memcpy
16A206:  LDR.W           R0, [R10,#8]
16A20A:  CBZ             R0, loc_16A21C
16A20C:  LDR             R1, [SP,#0x98+var_70]
16A20E:  LDR             R1, [R1]
16A210:  CBZ             R1, loc_16A21C
16A212:  LDR.W           R2, [R1,#0x370]
16A216:  SUBS            R2, #1
16A218:  STR.W           R2, [R1,#0x370]
16A21C:  LDR             R2, =(off_2390B0 - 0x16A224)
16A21E:  LDR             R1, [R6]
16A220:  ADD             R2, PC; off_2390B0
16A222:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16A224:  BLX             R2; j_opus_decoder_destroy_0
16A226:  LDR.W           R12, [SP,#0x98+var_7C]
16A22A:  STRD.W          R5, R4, [R10,#4]
16A22E:  LDR.W           R0, [R12,#4]
16A232:  MOVS            R5, #0
16A234:  STR.W           R5, [R10]
16A238:  CMP.W           R0, #0xFFFFFFFF
16A23C:  BGT             loc_16A2AA
16A23E:  LDR             R0, [SP,#0x98+var_70]
16A240:  LDR             R0, [R0]
16A242:  CBZ             R0, loc_16A24E
16A244:  LDR.W           R1, [R0,#0x370]
16A248:  ADDS            R1, #1
16A24A:  STR.W           R1, [R0,#0x370]
16A24E:  LDR             R6, =(dword_381B60 - 0x16A25A)
16A250:  MOV.W           R8, #0
16A254:  LDR             R0, =(off_2390AC - 0x16A25C)
16A256:  ADD             R6, PC; dword_381B60
16A258:  ADD             R0, PC; off_2390AC
16A25A:  LDR             R1, [R6]
16A25C:  LDR             R2, [R0]; sub_171190
16A25E:  MOVS            R0, #0
16A260:  BLX             R2; sub_171190
16A262:  LDR.W           R12, [SP,#0x98+var_7C]
16A266:  MOV             R4, R0
16A268:  LDR.W           R1, [R12,#8]; src
16A26C:  CBZ             R1, loc_16A2A6
16A26E:  LDR.W           R0, [R12]
16A272:  MOV             R10, R6
16A274:  MOV             R6, R12
16A276:  ADD.W           R0, R0, R0,LSL#3
16A27A:  LSLS            R2, R0, #2; n
16A27C:  MOV             R0, R4; dest
16A27E:  BLX             j_memcpy
16A282:  LDR             R0, [R6,#8]
16A284:  CBZ             R0, loc_16A296
16A286:  LDR             R1, [SP,#0x98+var_70]
16A288:  LDR             R1, [R1]
16A28A:  CBZ             R1, loc_16A296
16A28C:  LDR.W           R2, [R1,#0x370]
16A290:  SUBS            R2, #1
16A292:  STR.W           R2, [R1,#0x370]
16A296:  LDR             R2, =(off_2390B0 - 0x16A2A0)
16A298:  LDR.W           R1, [R10]
16A29C:  ADD             R2, PC; off_2390B0
16A29E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16A2A0:  BLX             R2; j_opus_decoder_destroy_0
16A2A2:  LDR.W           R12, [SP,#0x98+var_7C]
16A2A6:  STRD.W          R8, R4, [R12,#4]
16A2AA:  LDR.W           R0, [R12,#0xC]
16A2AE:  MOVS            R1, #0
16A2B0:  STR.W           R5, [R12]
16A2B4:  BL              sub_1683F8
16A2B8:  LDR             R0, [SP,#0x98+var_70]
16A2BA:  MOVW            R2, #0x1A10
16A2BE:  MOVS            R5, #0
16A2C0:  MOVW            R6, #0x1A30
16A2C4:  MOVT            R5, #0x43C8
16A2C8:  LDR             R1, [R0]
16A2CA:  LDR             R3, [R1,R2]
16A2CC:  LDR             R0, =(aDebugDefault - 0x16A2E0); "Debug##Default" ...
16A2CE:  STR             R5, [R1,R6]
16A2D0:  ORR.W           R3, R3, #2
16A2D4:  STR             R3, [R1,R2]
16A2D6:  ADDS            R3, R1, R6
16A2D8:  ADD             R1, R2
16A2DA:  MOVS            R2, #4
16A2DC:  ADD             R0, PC; "Debug##Default"
16A2DE:  STR             R2, [R1,#8]
16A2E0:  MOVS            R1, #0
16A2E2:  MOVS            R2, #0
16A2E4:  STR             R5, [R3,#4]
16A2E6:  BL              sub_16A980
16A2EA:  MOVS            R0, #1
16A2EC:  STRB.W          R0, [R9,#2]
16A2F0:  ADD             SP, SP, #0x58 ; 'X'
16A2F2:  VPOP            {D8-D11}
16A2F6:  ADD             SP, SP, #4
16A2F8:  POP.W           {R8-R11}
16A2FC:  POP             {R4-R7,PC}
16A2FE:  LDRB.W          R0, [R8,#0xA]
16A302:  LSLS            R0, R0, #0x1D
16A304:  BMI.W           loc_16A112
16A308:  LDRB.W          R0, [R9,#0xF8]
16A30C:  CMP             R0, #0
16A30E:  BNE.W           loc_16A112
16A312:  LDR             R0, [SP,#0x98+var_70]
16A314:  LDR             R0, [R0]
16A316:  LDR             R0, [R0,#0x34]
16A318:  CMP.W           R0, #0xFFFFFFFF
16A31C:  BLE.W           loc_16A112
16A320:  MOVS            R1, #1
16A322:  BL              sub_16EA2C
16A326:  LDR.W           R12, [SP,#0x98+var_7C]
16A32A:  CMP             R0, #0
16A32C:  LDR.W           LR, [SP,#0x98+var_84]
16A330:  LDR.W           R1, [R10,#0x40]
16A334:  STRB.W          R0, [R12,#0x130]
16A338:  BEQ.W           loc_16A118
16A33C:  CMP             R1, #0
16A33E:  BNE.W           loc_16A118
16A342:  LDR.W           R0, [R12,#0x10]
16A346:  MOV             R1, #0x7FFFFFFF
16A34A:  STR.W           R1, [R12,#0x128]
16A34E:  STR.W           R8, [R12,#0x11C]
16A352:  CBZ             R0, loc_16A35E
16A354:  LDR.W           R0, [R12,#0x68]
16A358:  CMP             R0, R1
16A35A:  BNE.W           loc_16A5B8
16A35E:  LDRB.W          R0, [R9,#0xF9]
16A362:  NEGS            R0, R0
16A364:  SXTB            R0, R0
16A366:  B               loc_16A5CA
16A368:  VLDR            S8, [R0,#0x380]
16A36C:  VCMP.F32        S8, S4
16A370:  VMRS            APSR_nzcv, FPSCR
16A374:  BLT.W           loc_169D76
16A378:  VSUB.F32        S6, S0, S6
16A37C:  VSUB.F32        S2, S2, S8
16A380:  VCMP.F32        S6, #0.0
16A384:  VSTR            S6, [R0,#0x374]
16A388:  VMRS            APSR_nzcv, FPSCR
16A38C:  VSTR            S2, [R0,#0x378]
16A390:  ITTEE EQ
16A392:  VCMPEQ.F32      S2, #0.0
16A396:  VMRSEQ          APSR_nzcv, FPSCR
16A39A:  MOVNE           R2, #0
16A39C:  STRBNE.W        R2, [R10,#0x1BF]
16A3A0:  B               loc_169D7C
16A3A2:  VLDR            S0, [R0,#0xF0]
16A3A6:  VCMP.F32        S0, #0.0
16A3AA:  VMRS            APSR_nzcv, FPSCR
16A3AE:  ITTT EQ
16A3B0:  VLDREQ          S2, [R0,#0xF4]
16A3B4:  VCMPEQ.F32      S2, #0.0
16A3B8:  VMRSEQ          APSR_nzcv, FPSCR
16A3BC:  BEQ.W           loc_16A0FE
16A3C0:  VCMP.F32        S0, #0.0
16A3C4:  VMRS            APSR_nzcv, FPSCR
16A3C8:  ITTTT NE
16A3CA:  LDRBNE.W        R1, [R0,#0xF8]
16A3CE:  CMPNE           R1, #0
16A3D0:  LDRBNE.W        R1, [R0,#0x9C]
16A3D4:  CMPNE           R1, #0
16A3D6:  BNE             loc_16A4A4
16A3D8:  MOVS            R3, #0x10
16A3DA:  MOVW            R1, #0x18CC
16A3DE:  ADDS            R2, R0, R1
16A3E0:  MOVT            R3, #0x100
16A3E4:  LDR             R6, [R4,#8]
16A3E6:  ADD.W           R5, R3, #0x208
16A3EA:  MOV             R1, R4
16A3EC:  ANDS            R5, R6
16A3EE:  CMP             R5, R3
16A3F0:  BNE             loc_16A3FA
16A3F2:  LDR.W           R4, [R1,#0x2F8]
16A3F6:  CMP             R4, #0
16A3F8:  BNE             loc_16A3E4
16A3FA:  TST.W           R6, #0x210
16A3FE:  BNE.W           loc_16A0FE
16A402:  VCMP.F32        S0, #0.0
16A406:  VMRS            APSR_nzcv, FPSCR
16A40A:  BNE             loc_16A41C
16A40C:  VLDR            S2, [R0,#0xF4]
16A410:  VCMP.F32        S2, #0.0
16A414:  VMRS            APSR_nzcv, FPSCR
16A418:  BEQ.W           loc_16A0FE
16A41C:  LDRB.W          R3, [R0,#0xF8]
16A420:  CMP             R3, #0
16A422:  BNE.W           loc_16A0FE
16A426:  VLDR            S2, [R1,#0x3C]
16A42A:  VCMP.F32        S0, #0.0
16A42E:  VLDR            S4, [R1,#0x220]
16A432:  VLDR            S6, [R1,#0x228]
16A436:  VADD.F32        S2, S2, S2
16A43A:  VMRS            APSR_nzcv, FPSCR
16A43E:  VSUB.F32        S4, S6, S4
16A442:  VADD.F32        S2, S4, S2
16A446:  VLDR            S4, =0.67
16A44A:  VMUL.F32        S2, S2, S4
16A44E:  BEQ.W           loc_16A6C4
16A452:  VLDR            S6, [R1,#0x274]
16A456:  VLDR            S8, [R2]
16A45A:  LDRB.W          R3, [R0,#0xF9]
16A45E:  VMUL.F32        S6, S8, S6
16A462:  CMP             R3, #0
16A464:  BEQ.W           loc_16A66E
16A468:  VADD.F32        S4, S6, S6
16A46C:  VMOV.F32        S6, S2
16A470:  VCMP.F32        S4, S2
16A474:  VMRS            APSR_nzcv, FPSCR
16A478:  IT MI
16A47A:  VMOVMI.F32      S6, S4
16A47E:  VCVT.S32.F32    S4, S6
16A482:  VLDR            S6, [R1,#0x58]
16A486:  VLDR            S8, [R1,#0xE0]
16A48A:  VADD.F32        S8, S6, S8
16A48E:  VCVT.F32.S32    S4, S4
16A492:  VMLS.F32        S6, S0, S4
16A496:  VSTR            S6, [R1,#0x58]
16A49A:  VSUB.F32        S0, S8, S6
16A49E:  VSTR            S0, [R1,#0xE0]
16A4A2:  B               loc_16A6C4
16A4A4:  VLDR            S2, [R4,#0x274]
16A4A8:  VMOV.F32        S8, #2.5
16A4AC:  VLDR            S6, =0.1
16A4B0:  VMOV.F32        S4, S2
16A4B4:  VMLA.F32        S4, S0, S6
16A4B8:  VMOV.F32        S0, #0.5
16A4BC:  VCMP.F32        S4, S8
16A4C0:  VMRS            APSR_nzcv, FPSCR
16A4C4:  VCMP.F32        S4, S0
16A4C8:  IT GT
16A4CA:  VMOVGT.F32      S4, S8
16A4CE:  VMRS            APSR_nzcv, FPSCR
16A4D2:  IT MI
16A4D4:  VMOVMI.F32      S4, S0
16A4D8:  LDRB            R1, [R4,#0xB]
16A4DA:  VSTR            S4, [R4,#0x274]
16A4DE:  LSLS            R1, R1, #0x1F
16A4E0:  BNE.W           loc_16A0FE
16A4E4:  VDIV.F32        S16, S4, S2
16A4E8:  ADD             R1, SP, #0x98+var_50
16A4EA:  MOVS            R2, #0
16A4EC:  VMOV.F32        S0, #1.0
16A4F0:  VLDR            S2, [R4,#0xC]
16A4F4:  VLDR            S10, [R0,#0xE0]
16A4F8:  VLDR            S12, [R0,#0xE4]
16A4FC:  MOV             R0, R4
16A4FE:  VLDR            S4, [R4,#0x10]
16A502:  VSUB.F32        S10, S10, S2
16A506:  VLDR            S6, [R4,#0x14]
16A50A:  VLDR            S8, [R4,#0x18]
16A50E:  VSUB.F32        S12, S12, S4
16A512:  VSUB.F32        S0, S0, S16
16A516:  VMUL.F32        S14, S0, S8
16A51A:  VMUL.F32        S0, S0, S6
16A51E:  VMUL.F32        S12, S14, S12
16A522:  VMUL.F32        S0, S0, S10
16A526:  VDIV.F32        S8, S12, S8
16A52A:  VDIV.F32        S0, S0, S6
16A52E:  VADD.F32        S4, S4, S8
16A532:  VADD.F32        S0, S2, S0
16A536:  VSTR            S4, [SP,#0x98+var_4C]
16A53A:  VSTR            S0, [SP,#0x98+var_50]
16A53E:  BL              sub_16820C
16A542:  ADD.W           R0, R4, #0x14
16A546:  LDR.W           LR, [SP,#0x98+var_84]
16A54A:  VLD1.32         {D16-D17}, [R0]
16A54E:  VMUL.F32        Q8, Q8, D8[0]
16A552:  LDR.W           R12, [SP,#0x98+var_7C]
16A556:  VCVT.S32.F32    Q8, Q8
16A55A:  VCVT.F32.S32    Q8, Q8
16A55E:  VST1.32         {D16-D17}, [R0]
16A562:  B               loc_16A0FE
16A564:  CBZ             R2, loc_16A56A
16A566:  CMP             R2, R3
16A568:  BNE             loc_16A57E
16A56A:  VCMP.F32        S0, #0.0
16A56E:  STR.W           R3, [R9,#0xF0]
16A572:  VMRS            APSR_nzcv, FPSCR
16A576:  IT GT
16A578:  STRGT.W         R3, [R9,#0xF4]
16A57C:  B               loc_16A584
16A57E:  CMP             R2, R3
16A580:  BNE.W           loc_169692
16A584:  VLDR            S0, [R1,#8]
16A588:  VCMP.F32        S0, #0.0
16A58C:  VMRS            APSR_nzcv, FPSCR
16A590:  IT EQ
16A592:  STREQ.W         R3, [R9,#0xF8]
16A596:  B.W             loc_169692
16A59A:  ALIGN 4
16A59C:  DCD dword_381B60 - 0x16A1EA
16A5A0:  DCD off_2390AC - 0x16A1EC
16A5A4:  DCD off_2390B0 - 0x16A224
16A5A8:  DCD dword_381B60 - 0x16A25A
16A5AC:  DCD off_2390AC - 0x16A25C
16A5B0:  DCD off_2390B0 - 0x16A2A0
16A5B4:  DCD aDebugDefault - 0x16A2E0
16A5B8:  LDRB.W          R1, [R9,#0xF9]
16A5BC:  MOV.W           R2, #0xFFFFFFFF
16A5C0:  CMP             R1, #0
16A5C2:  IT EQ
16A5C4:  MOVEQ           R2, #1
16A5C6:  ADD             R0, R2
16A5C8:  ADDS            R0, #1
16A5CA:  MOV             R6, R8
16A5CC:  STR.W           R0, [R12,#0x12C]
16A5D0:  B               loc_16A11C
16A5D2:  MOVS            R2, #0
16A5D4:  LDR.W           LR, [R1,#0x4C]
16A5D8:  AND.W           R2, R2, R11,LSR#2
16A5DC:  CMP.W           LR, #0xFFFFFFFF
16A5E0:  BLE             loc_16A5FA
16A5E2:  ADD             R1, LR
16A5E4:  LDRB.W          R1, [R1,#0xFC]
16A5E8:  CMP             R1, #0
16A5EA:  IT NE
16A5EC:  MOVNE           R1, #1
16A5EE:  AND.W           R1, R1, R11,LSR#3
16A5F2:  CMP             R2, R1
16A5F4:  BEQ.W           loc_169894
16A5F8:  B               loc_16A600
16A5FA:  CMP             R2, #0
16A5FC:  BEQ.W           loc_169894
16A600:  LDR.W           R1, [R5,#0x138]
16A604:  MOV             R11, LR
16A606:  STR.W           R12, [SP,#0x98+var_74]
16A60A:  CMP             R1, #0
16A60C:  STR             R3, [SP,#0x98+var_6C]
16A60E:  BEQ.W           loc_16A750
16A612:  VLDR            S0, [R5,#0x1F4]
16A616:  MOVS            R1, #1
16A618:  VLDR            S2, [R5,#0x1FC]
16A61C:  VLDR            S4, [R5,#0x274]
16A620:  VSUB.F32        S0, S2, S0
16A624:  VLDR            S8, [R6]
16A628:  VLDR            S6, [R5,#0x318]
16A62C:  VLDR            S2, [R5,#0x320]
16A630:  VLDR            S16, =0.0
16A634:  VSUB.F32        S2, S2, S6
16A638:  VMLS.F32        S0, S8, S4
16A63C:  VADD.F32        S18, S0, S2
16A640:  VCMP.F32        S18, #0.0
16A644:  VMRS            APSR_nzcv, FPSCR
16A648:  IT LS
16A64A:  VMOVLS.F32      S18, S16
16A64E:  BL              sub_16EA2C
16A652:  CMP             R0, #0
16A654:  BEQ             loc_16A722
16A656:  MOVS            R0, #2
16A658:  VNEG.F32        S16, S18
16A65C:  STR.W           R0, [R6,#0x278]
16A660:  MOVS            R0, #3
16A662:  STR.W           R0, [R6,#0x270]
16A666:  MOVS            R0, #0x30 ; '0'
16A668:  STR.W           R0, [R6,#0x268]
16A66C:  B               loc_16A7B2
16A66E:  VLDR            S8, [R1,#0x40]
16A672:  VLDR            S10, [R1,#0x224]
16A676:  VLDR            S12, [R1,#0x22C]
16A67A:  VADD.F32        S8, S8, S8
16A67E:  VSUB.F32        S10, S12, S10
16A682:  VADD.F32        S8, S10, S8
16A686:  VMUL.F32        S4, S8, S4
16A68A:  VMOV.F32        S8, #5.0
16A68E:  VMUL.F32        S6, S6, S8
16A692:  VCMP.F32        S6, S4
16A696:  VMRS            APSR_nzcv, FPSCR
16A69A:  IT MI
16A69C:  VMOVMI.F32      S4, S6
16A6A0:  VCVT.S32.F32    S4, S4
16A6A4:  VLDR            S6, [R1,#0x5C]
16A6A8:  VLDR            S8, [R1,#0xE4]
16A6AC:  VADD.F32        S8, S6, S8
16A6B0:  VCVT.F32.S32    S4, S4
16A6B4:  VMLS.F32        S6, S0, S4
16A6B8:  VSTR            S6, [R1,#0x5C]
16A6BC:  VSUB.F32        S0, S8, S6
16A6C0:  VSTR            S0, [R1,#0xE4]
16A6C4:  VLDR            S0, [R0,#0xF4]
16A6C8:  VCMP.F32        S0, #0.0
16A6CC:  VMRS            APSR_nzcv, FPSCR
16A6D0:  BEQ.W           loc_16A0FE
16A6D4:  LDRB.W          R0, [R0,#0xF9]
16A6D8:  CMP             R0, #0
16A6DA:  BNE.W           loc_16A0FE
16A6DE:  VLDR            S8, [R1,#0x274]
16A6E2:  VLDR            S10, [R2]
16A6E6:  VLDR            S4, [R1,#0x58]
16A6EA:  VMUL.F32        S8, S10, S8
16A6EE:  VLDR            S6, [R1,#0xE0]
16A6F2:  VADD.F32        S6, S4, S6
16A6F6:  VADD.F32        S8, S8, S8
16A6FA:  VCMP.F32        S8, S2
16A6FE:  VMRS            APSR_nzcv, FPSCR
16A702:  IT MI
16A704:  VMOVMI.F32      S2, S8
16A708:  VCVT.S32.F32    S2, S2
16A70C:  VCVT.F32.S32    S2, S2
16A710:  VMLS.F32        S4, S0, S2
16A714:  VSTR            S4, [R1,#0x58]
16A718:  VSUB.F32        S0, S6, S4
16A71C:  VSTR            S0, [R1,#0xE0]
16A720:  B               loc_16A0FE
16A722:  MOV             R0, R11
16A724:  MOVS            R1, #1
16A726:  BL              sub_16EA2C
16A72A:  LDR             R3, [SP,#0x98+var_6C]
16A72C:  CMP             R0, #0
16A72E:  LDR.W           R12, [SP,#0x98+var_74]
16A732:  BEQ.W           loc_169894
16A736:  VMOV.F32        S16, S18
16A73A:  MOVS            R0, #3
16A73C:  STR.W           R0, [R6,#0x278]
16A740:  MOVS            R0, #2
16A742:  STR.W           R0, [R6,#0x270]
16A746:  MOVS            R0, #0x30 ; '0'
16A748:  STR.W           R0, [R6,#0x268]
16A74C:  B.W             loc_169894
16A750:  LDRB.W          R1, [R5,#0x141]
16A754:  CMP             R1, #0
16A756:  BEQ.W           loc_16A612
16A75A:  MOVS            R1, #1
16A75C:  BL              sub_16EA2C
16A760:  CBZ             R0, loc_16A780
16A762:  VLDR            S4, [R5,#0x1F4]
16A766:  VLDR            S6, [R5,#0x1FC]
16A76A:  VLDR            S0, [R5,#0x5C]
16A76E:  VSUB.F32        S4, S6, S4
16A772:  VLDR            S2, [R5,#0xE4]
16A776:  VADD.F32        S2, S0, S2
16A77A:  VSUB.F32        S0, S0, S4
16A77E:  B               loc_16A7A6
16A780:  MOV             R0, R11
16A782:  MOVS            R1, #1
16A784:  BL              sub_16EA2C
16A788:  CBZ             R0, loc_16A7B2
16A78A:  VLDR            S4, [R5,#0x1F4]
16A78E:  VLDR            S6, [R5,#0x1FC]
16A792:  VLDR            S0, [R5,#0x5C]
16A796:  VSUB.F32        S4, S6, S4
16A79A:  VLDR            S2, [R5,#0xE4]
16A79E:  VADD.F32        S2, S0, S2
16A7A2:  VADD.F32        S0, S0, S4
16A7A6:  VSUB.F32        S2, S2, S0
16A7AA:  VSTR            S0, [R5,#0x5C]
16A7AE:  VSTR            S2, [R5,#0xE4]
16A7B2:  LDR             R3, [SP,#0x98+var_6C]
16A7B4:  LDR.W           R12, [SP,#0x98+var_74]
16A7B8:  B.W             loc_169894
