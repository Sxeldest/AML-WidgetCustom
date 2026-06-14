; =========================================================
; Game Engine Function: _Z25_rwPalQuantResolvePaletteP6RwRGBAiP10rwPalQuant
; Address            : 0x1AB82C - 0x1ABC92
; =========================================================

1AB82C:  PUSH            {R4-R7,LR}
1AB82E:  ADD             R7, SP, #0xC
1AB830:  PUSH.W          {R8-R11}
1AB834:  SUB             SP, SP, #4
1AB836:  VPUSH           {D8-D13}
1AB83A:  SUB             SP, SP, #0x40
1AB83C:  MOV             R11, R2
1AB83E:  MOV             R6, R1
1AB840:  LDR.W           R5, [R11,#8]
1AB844:  MOV             R8, R0
1AB846:  MOVS            R1, #5
1AB848:  MOV             R0, R5
1AB84A:  BL              sub_1ABC9C
1AB84E:  MOV             R4, R0
1AB850:  CMP             R4, R6
1AB852:  BLE.W           loc_1ABC60
1AB856:  STR.W           R8, [SP,#0x90+var_88]
1AB85A:  MOV.W           R10, #0
1AB85E:  LDR.W           R0, [R11]
1AB862:  MOVS            R1, #0x20 ; ' '
1AB864:  VMOV.I32        Q6, #0
1AB868:  MOVS            R2, #0xFF
1AB86A:  STRB.W          R10, [R0]
1AB86E:  LDR.W           R0, [R11]
1AB872:  STRB.W          R10, [R0,#1]
1AB876:  LDR.W           R0, [R11]
1AB87A:  STRB.W          R10, [R0,#2]
1AB87E:  LDR.W           R0, [R11]
1AB882:  STRB.W          R10, [R0,#3]
1AB886:  LDR.W           R0, [R11]
1AB88A:  STRB            R1, [R0,#4]
1AB88C:  LDR.W           R0, [R11]
1AB890:  STRB            R1, [R0,#5]
1AB892:  LDR.W           R0, [R11]
1AB896:  STRB            R1, [R0,#6]
1AB898:  LDR.W           R0, [R11]
1AB89C:  STRB            R1, [R0,#7]
1AB89E:  ADD             R1, SP, #0x90+var_70
1AB8A0:  LDR.W           R3, [R11]
1AB8A4:  MOV             R4, R1
1AB8A6:  LDR.W           R0, [R11,#8]
1AB8AA:  VST1.64         {D12-D13}, [R4]!
1AB8AE:  STR             R1, [SP,#0x90+var_90]
1AB8B0:  ADD             R1, SP, #0x90+var_54
1AB8B2:  STR.W           R10, [R4]
1AB8B6:  STRB.W          R2, [SP,#0x90+var_58]
1AB8BA:  MOVS            R2, #5
1AB8BC:  STR.W           R10, [SP,#0x90+var_54]
1AB8C0:  STR.W           R10, [SP,#0x90+var_5C]
1AB8C4:  BL              sub_1ACA96
1AB8C8:  VLDR            S2, [SP,#0x90+var_6C]
1AB8CC:  CMP             R6, #2
1AB8CE:  VLDR            S4, [SP,#0x90+var_68]
1AB8D2:  VMUL.F32        S2, S2, S2
1AB8D6:  VLDR            S6, [SP,#0x90+var_64]
1AB8DA:  VMUL.F32        S4, S4, S4
1AB8DE:  VLDR            S0, [SP,#0x90+var_70]
1AB8E2:  VMUL.F32        S6, S6, S6
1AB8E6:  LDR.W           R0, [R11,#4]
1AB8EA:  VADD.F32        S2, S2, S4
1AB8EE:  VLDR            S4, [R4]
1AB8F2:  VMUL.F32        S4, S4, S4
1AB8F6:  VADD.F32        S2, S2, S6
1AB8FA:  VADD.F32        S2, S2, S4
1AB8FE:  VDIV.F32        S0, S2, S0
1AB902:  VLDR            S2, [SP,#0x90+var_5C]
1AB906:  VSUB.F32        S0, S2, S0
1AB90A:  VSTR            S0, [R0]
1AB90E:  STR             R6, [SP,#0x90+var_84]
1AB910:  BLT.W           loc_1ABB84
1AB914:  VLDR            S22, =0.0
1AB918:  MOV.W           R9, #1
1AB91C:  CMP.W           R9, #1
1AB920:  BLT.W           loc_1ABB84
1AB924:  LDR.W           R1, [R11,#4]
1AB928:  VMOV            D0, D11
1AB92C:  MOVS            R0, #0
1AB92E:  MOV.W           R8, #0xFFFFFFFF
1AB932:  VLDM            R1!, {S2}
1AB936:  VMAX.F32        D2, D1, D0
1AB93A:  VCMPE.F32       S2, S0
1AB93E:  VMRS            APSR_nzcv, FPSCR
1AB942:  VMOV            D0, D2
1AB946:  IT GT
1AB948:  MOVGT           R8, R0
1AB94A:  ADDS            R0, #1
1AB94C:  CMP             R9, R0
1AB94E:  BNE             loc_1AB932
1AB950:  ADDS.W          R0, R8, #1
1AB954:  BEQ.W           loc_1ABB84
1AB958:  ADD             R4, SP, #0x90+var_70
1AB95A:  LDR.W           R6, [R11]
1AB95E:  LDR.W           R5, [R11,#8]
1AB962:  ADD             R1, SP, #0x90+var_54
1AB964:  MOV             R0, R4
1AB966:  STR.W           R10, [SP,#0x90+var_54]
1AB96A:  VST1.64         {D12-D13}, [R0]!
1AB96E:  MOVS            R2, #5
1AB970:  STR.W           R10, [R0]
1AB974:  MOVS            R0, #0xFF
1AB976:  STRB.W          R0, [SP,#0x90+var_58]
1AB97A:  MOV             R0, R5
1AB97C:  STR.W           R10, [SP,#0x90+var_5C]
1AB980:  ADD.W           R10, R6, R8,LSL#3
1AB984:  STR             R4, [SP,#0x90+var_90]
1AB986:  MOV             R3, R10
1AB988:  BL              sub_1ACA96
1AB98C:  ADD             R3, SP, #0x90+var_74
1AB98E:  MOV             R0, R5
1AB990:  MOV             R1, R10
1AB992:  MOVS            R2, #1
1AB994:  STR             R4, [SP,#0x90+var_90]
1AB996:  BL              sub_1AC4D0
1AB99A:  ADD             R3, SP, #0x90+var_78
1AB99C:  MOV             R0, R5
1AB99E:  MOV             R1, R10
1AB9A0:  MOVS            R2, #2
1AB9A2:  VMOV.F32        S16, S0
1AB9A6:  STR             R4, [SP,#0x90+var_90]
1AB9A8:  BL              sub_1AC4D0
1AB9AC:  ADD             R3, SP, #0x90+var_7C
1AB9AE:  MOV             R0, R5
1AB9B0:  MOV             R1, R10
1AB9B2:  MOVS            R2, #3
1AB9B4:  VMOV.F32        S18, S0
1AB9B8:  STR             R4, [SP,#0x90+var_90]
1AB9BA:  BL              sub_1AC4D0
1AB9BE:  ADD             R3, SP, #0x90+var_80
1AB9C0:  MOV             R0, R5
1AB9C2:  MOV             R1, R10
1AB9C4:  MOVS            R2, #4
1AB9C6:  VMOV.F32        S20, S0
1AB9CA:  STR             R4, [SP,#0x90+var_90]
1AB9CC:  BL              sub_1AC4D0
1AB9D0:  VCMPE.F32       S16, #0.0
1AB9D4:  VMRS            APSR_nzcv, FPSCR
1AB9D8:  BGT             loc_1ABA0C
1AB9DA:  VCMPE.F32       S18, #0.0
1AB9DE:  VMRS            APSR_nzcv, FPSCR
1AB9E2:  ITT LE
1AB9E4:  VCMPELE.F32     S20, #0.0
1AB9E8:  VMRSLE          APSR_nzcv, FPSCR
1AB9EC:  BGT             loc_1ABA0C
1AB9EE:  VCMPE.F32       S0, #0.0
1AB9F2:  VMRS            APSR_nzcv, FPSCR
1AB9F6:  BGT             loc_1ABA0C
1AB9F8:  LDR.W           R0, [R11,#4]
1AB9FC:  MOV.W           R10, #0
1ABA00:  SUB.W           R9, R9, #1
1ABA04:  STR.W           R10, [R0,R8,LSL#2]
1ABA08:  LDR             R6, [SP,#0x90+var_84]
1ABA0A:  B               loc_1ABB7A
1ABA0C:  VCMPE.F32       S16, S18
1ABA10:  ADD.W           R0, R6, R9,LSL#3
1ABA14:  VMRS            APSR_nzcv, FPSCR
1ABA18:  LDR.W           R1, [R10]
1ABA1C:  LDR.W           R2, [R10,#4]
1ABA20:  STR             R2, [R0,#4]
1ABA22:  STR             R1, [R0]
1ABA24:  BGE             loc_1ABA46
1ABA26:  VCMPE.F32       S18, S20
1ABA2A:  VMRS            APSR_nzcv, FPSCR
1ABA2E:  BLT             loc_1ABA50
1ABA30:  VCMPE.F32       S18, S0
1ABA34:  VMRS            APSR_nzcv, FPSCR
1ABA38:  BLT             loc_1ABA70
1ABA3A:  LDRB.W          R1, [SP,#0x90+var_78]
1ABA3E:  STRB            R1, [R0,#1]
1ABA40:  STRB.W          R1, [R10,#5]
1ABA44:  B               loc_1ABA86
1ABA46:  VCMPE.F32       S16, S20
1ABA4A:  VMRS            APSR_nzcv, FPSCR
1ABA4E:  BGE             loc_1ABA66
1ABA50:  VCMPE.F32       S20, S0
1ABA54:  VMRS            APSR_nzcv, FPSCR
1ABA58:  BLT             loc_1ABA70
1ABA5A:  LDRB.W          R1, [SP,#0x90+var_7C]
1ABA5E:  STRB            R1, [R0,#2]
1ABA60:  STRB.W          R1, [R10,#6]
1ABA64:  B               loc_1ABA86
1ABA66:  VCMPE.F32       S16, S0
1ABA6A:  VMRS            APSR_nzcv, FPSCR
1ABA6E:  BGE             loc_1ABA7C
1ABA70:  LDRB.W          R1, [SP,#0x90+var_80]
1ABA74:  STRB            R1, [R0,#3]
1ABA76:  STRB.W          R1, [R10,#7]
1ABA7A:  B               loc_1ABA86
1ABA7C:  LDRB.W          R1, [SP,#0x90+var_74]
1ABA80:  STRB            R1, [R0]
1ABA82:  STRB.W          R1, [R10,#4]
1ABA86:  ADD             R5, SP, #0x90+var_70
1ABA88:  LDR.W           R1, [R11]
1ABA8C:  LDR.W           R0, [R11,#8]
1ABA90:  MOV.W           R10, #0
1ABA94:  MOV             R4, R5
1ABA96:  ADD.W           R3, R1, R8,LSL#3
1ABA9A:  VST1.64         {D12-D13}, [R4]!
1ABA9E:  MOVS            R2, #0xFF
1ABAA0:  ADD             R1, SP, #0x90+var_54
1ABAA2:  STR.W           R10, [R4]
1ABAA6:  STRB.W          R2, [SP,#0x90+var_58]
1ABAAA:  MOVS            R2, #5
1ABAAC:  LDR             R6, [SP,#0x90+var_84]
1ABAAE:  STR.W           R10, [SP,#0x90+var_54]
1ABAB2:  STR.W           R10, [SP,#0x90+var_5C]
1ABAB6:  STR             R5, [SP,#0x90+var_90]
1ABAB8:  BL              sub_1ACA96
1ABABC:  VLDR            S2, [SP,#0x90+var_6C]
1ABAC0:  MOVS            R2, #0xFF
1ABAC2:  VLDR            S4, [SP,#0x90+var_68]
1ABAC6:  VMUL.F32        S2, S2, S2
1ABACA:  VLDR            S6, [SP,#0x90+var_64]
1ABACE:  VMUL.F32        S4, S4, S4
1ABAD2:  VLDR            S0, [SP,#0x90+var_70]
1ABAD6:  VMUL.F32        S6, S6, S6
1ABADA:  LDR.W           R0, [R11,#4]
1ABADE:  ADD.W           R0, R0, R8,LSL#2
1ABAE2:  VADD.F32        S2, S2, S4
1ABAE6:  VLDR            S4, [R4]
1ABAEA:  MOV             R4, R5
1ABAEC:  VMUL.F32        S4, S4, S4
1ABAF0:  VADD.F32        S2, S2, S6
1ABAF4:  VADD.F32        S2, S2, S4
1ABAF8:  VDIV.F32        S0, S2, S0
1ABAFC:  VLDR            S2, [SP,#0x90+var_5C]
1ABB00:  VSUB.F32        S0, S2, S0
1ABB04:  VSTR            S0, [R0]
1ABB08:  LDR.W           R1, [R11]
1ABB0C:  LDR.W           R0, [R11,#8]
1ABB10:  VST1.64         {D12-D13}, [R4]!
1ABB14:  ADD.W           R3, R1, R9,LSL#3
1ABB18:  ADD             R1, SP, #0x90+var_54
1ABB1A:  STR.W           R10, [R4]
1ABB1E:  STRB.W          R2, [SP,#0x90+var_58]
1ABB22:  MOVS            R2, #5
1ABB24:  STR.W           R10, [SP,#0x90+var_54]
1ABB28:  STR.W           R10, [SP,#0x90+var_5C]
1ABB2C:  STR             R5, [SP,#0x90+var_90]
1ABB2E:  BL              sub_1ACA96
1ABB32:  VLDR            S2, [SP,#0x90+var_6C]
1ABB36:  VLDR            S4, [SP,#0x90+var_68]
1ABB3A:  VMUL.F32        S2, S2, S2
1ABB3E:  VLDR            S6, [SP,#0x90+var_64]
1ABB42:  VMUL.F32        S4, S4, S4
1ABB46:  VLDR            S0, [SP,#0x90+var_70]
1ABB4A:  VMUL.F32        S6, S6, S6
1ABB4E:  LDR.W           R0, [R11,#4]
1ABB52:  ADD.W           R0, R0, R9,LSL#2
1ABB56:  VADD.F32        S2, S2, S4
1ABB5A:  VLDR            S4, [R4]
1ABB5E:  VMUL.F32        S4, S4, S4
1ABB62:  VADD.F32        S2, S2, S6
1ABB66:  VADD.F32        S2, S2, S4
1ABB6A:  VDIV.F32        S0, S2, S0
1ABB6E:  VLDR            S2, [SP,#0x90+var_5C]
1ABB72:  VSUB.F32        S0, S2, S0
1ABB76:  VSTR            S0, [R0]
1ABB7A:  ADD.W           R9, R9, #1
1ABB7E:  CMP             R9, R6
1ABB80:  BLT.W           loc_1AB91C
1ABB84:  CMP             R6, #1
1ABB86:  BLT             loc_1ABC80
1ABB88:  VMOV.I32        Q4, #0
1ABB8C:  LDR.W           R8, [SP,#0x90+var_88]
1ABB90:  VLDR            S20, =256.0
1ABB94:  ADD.W           R9, SP, #0x90+var_70
1ABB98:  VLDR            S22, =0.0
1ABB9C:  MOV.W           R10, #0
1ABBA0:  MOVS            R4, #0
1ABBA2:  MOVS            R6, #0
1ABBA4:  LDR.W           R1, [R11]
1ABBA8:  MOVS            R2, #5
1ABBAA:  LDR.W           R0, [R11,#8]
1ABBAE:  ADDS            R3, R1, R4
1ABBB0:  MOV             R1, R9
1ABBB2:  STR.W           R10, [SP,#0x90+var_70]
1ABBB6:  STR             R6, [SP,#0x90+var_90]
1ABBB8:  BL              sub_1AC96C
1ABBBC:  LDR.W           R1, [R11]
1ABBC0:  MOVS            R2, #0xFF
1ABBC2:  LDR.W           R0, [R11,#8]
1ABBC6:  MOV             R5, R9
1ABBC8:  STRB.W          R2, [SP,#0x90+var_58]
1ABBCC:  ADDS            R3, R1, R4
1ABBCE:  VST1.64         {D8-D9}, [R5]!
1ABBD2:  ADD             R1, SP, #0x90+var_54
1ABBD4:  MOVS            R2, #5
1ABBD6:  STR.W           R10, [R5]
1ABBDA:  STR.W           R10, [SP,#0x90+var_54]
1ABBDE:  STR.W           R10, [SP,#0x90+var_5C]
1ABBE2:  STR.W           R9, [SP,#0x90+var_90]
1ABBE6:  BL              sub_1ACA96
1ABBEA:  VLDR            S0, [SP,#0x90+var_70]
1ABBEE:  ADDS            R4, #8
1ABBF0:  VLDR            S2, [SP,#0x90+var_6C]
1ABBF4:  VCMPE.F32       S0, #0.0
1ABBF8:  VDIV.F32        S4, S20, S0
1ABBFC:  VMRS            APSR_nzcv, FPSCR
1ABC00:  VMOV.F32        S0, S22
1ABC04:  IT GT
1ABC06:  VMOVGT.F32      S0, S4
1ABC0A:  VMUL.F32        S2, S2, S0
1ABC0E:  VCVT.S32.F32    S2, S2
1ABC12:  VMOV            R0, S2
1ABC16:  STRB.W          R0, [R8,R6,LSL#2]
1ABC1A:  ADD.W           R0, R8, R6,LSL#2
1ABC1E:  ADDS            R6, #1
1ABC20:  VLDR            S2, [SP,#0x90+var_68]
1ABC24:  VMUL.F32        S2, S0, S2
1ABC28:  VCVT.S32.F32    S2, S2
1ABC2C:  VMOV            R1, S2
1ABC30:  STRB            R1, [R0,#1]
1ABC32:  VLDR            S2, [SP,#0x90+var_64]
1ABC36:  VMUL.F32        S2, S0, S2
1ABC3A:  VCVT.S32.F32    S2, S2
1ABC3E:  VMOV            R1, S2
1ABC42:  STRB            R1, [R0,#2]
1ABC44:  VLDR            S2, [R5]
1ABC48:  VMUL.F32        S0, S0, S2
1ABC4C:  VCVT.S32.F32    S0, S0
1ABC50:  VMOV            R1, S0
1ABC54:  STRB            R1, [R0,#3]
1ABC56:  LDR             R0, [SP,#0x90+var_84]
1ABC58:  CMP             R0, R6
1ABC5A:  BNE             loc_1ABBA4
1ABC5C:  LDR             R4, [SP,#0x90+var_84]
1ABC5E:  B               loc_1ABC82
1ABC60:  MOV             R0, R5
1ABC62:  MOV             R1, R8
1ABC64:  MOVS            R2, #0
1ABC66:  MOVS            R3, #5
1ABC68:  BL              sub_1ABD84
1ABC6C:  CMP             R0, R6
1ABC6E:  BGE             loc_1ABC82
1ABC70:  ADD.W           R2, R8, R0,LSL#2
1ABC74:  SUBS            R0, R6, R0
1ABC76:  LSLS            R1, R0, #2
1ABC78:  MOV             R0, R2
1ABC7A:  BLX             j___aeabi_memclr8_1
1ABC7E:  B               loc_1ABC82
1ABC80:  MOV             R4, R6
1ABC82:  MOV             R0, R4
1ABC84:  ADD             SP, SP, #0x40 ; '@'
1ABC86:  VPOP            {D8-D13}
1ABC8A:  ADD             SP, SP, #4
1ABC8C:  POP.W           {R8-R11}
1ABC90:  POP             {R4-R7,PC}
