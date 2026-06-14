; =========================================================
; Game Engine Function: CalcNonAttnSourceParams
; Address            : 0x1C1BCC - 0x1C2338
; =========================================================

1C1BCC:  PUSH            {R4-R11,LR}
1C1BD0:  ADD             R11, SP, #0x1C
1C1BD4:  SUB             SP, SP, #4
1C1BD8:  VPUSH           {D8-D12}
1C1BDC:  SUB             SP, SP, #0x48
1C1BE0:  MOV             R2, R0
1C1BE4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C1BF4)
1C1BE8:  MOV             R4, #0x1500
1C1BEC:  LDR             R0, [PC,R0]; __stack_chk_guard
1C1BF0:  LDR             R0, [R0]
1C1BF4:  STR             R0, [SP,#0x90+var_4C]
1C1BF8:  LDR             R3, [R1,#0xFC]
1C1BFC:  LDR             R10, [R3,#0xC]
1C1C00:  LDR             R8, [R3,#0x38]
1C1C04:  VLDR            S16, [R1,#0x74]
1C1C08:  VLDR            S18, [R2,#4]
1C1C0C:  VLDR            S22, [R2,#0xC]
1C1C10:  VLDR            S20, [R2,#0x10]
1C1C14:  LDR             R0, [R2,#0x6C]
1C1C18:  LDR             R5, [R2,#0x58]
1C1C1C:  VLDR            S24, [R2]
1C1C20:  CMP             R0, #0
1C1C24:  LDRB            R9, [R2,#0x54]
1C1C28:  STR             R3, [SP,#0x90+var_74]
1C1C2C:  BEQ             loc_1C1D0C
1C1C30:  LDR             R7, [R0]
1C1C34:  CMP             R7, #0
1C1C38:  BNE             loc_1C1C4C
1C1C3C:  LDR             R0, [R0,#4]
1C1C40:  CMP             R0, #0
1C1C44:  BNE             loc_1C1C30
1C1C48:  B               loc_1C1D0C
1C1C4C:  LDR             R1, [R2,#0xD0]
1C1C50:  MOV             R0, #0x1000
1C1C54:  MOV             R4, R2
1C1C58:  BL              sub_220A6C
1C1C5C:  VLDR            S0, [R7,#4]
1C1C60:  VMOV            S2, R10
1C1C64:  LDR             R1, =(ResamplerPadding_ptr - 0x1C1C80)
1C1C68:  SUB             R0, R0, #1
1C1C6C:  VCVT.F32.S32    S0, S0
1C1C70:  LDR             R2, =(ResamplerPrePadding_ptr - 0x1C1C84)
1C1C74:  VCVT.F32.S32    S2, S2
1C1C78:  LDR             R1, [PC,R1]; ResamplerPadding
1C1C7C:  LDR             R2, [PC,R2]; ResamplerPrePadding
1C1C80:  LDR             R1, [R1,R5,LSL#2]
1C1C84:  LDR             R2, [R2,R5,LSL#2]
1C1C88:  VMUL.F32        S0, S24, S0
1C1C8C:  SUB             R0, R0, R1
1C1C90:  MOVW            R1, #:lower16:(aSilkLsfcostabF+6); "SFCosTab_FIX_Q12"
1C1C94:  SUB             R0, R0, R2
1C1C98:  MOVT            R1, #:upper16:(aSilkLsfcostabF+6); "SFCosTab_FIX_Q12"
1C1C9C:  CMP             R0, R1
1C1CA0:  MOVLT           R1, R0
1C1CA4:  VDIV.F32        S0, S0, S2
1C1CA8:  VMOV            S2, R1
1C1CAC:  VCVT.F32.S32    S2, S2
1C1CB0:  VCMPE.F32       S0, S2
1C1CB4:  VMRS            APSR_nzcv, FPSCR
1C1CB8:  BLE             loc_1C1CD4
1C1CBC:  MOVW            R0, #0x12E8
1C1CC0:  MOV             R1, R1,LSL#14
1C1CC4:  ADD             R0, R4, R0
1C1CC8:  MOV             R2, R4
1C1CCC:  LDR             R3, [SP,#0x90+var_74]
1C1CD0:  B               loc_1C1D04
1C1CD4:  VLDR            S2, =16384.0
1C1CD8:  MOVW            R2, #0x12E8
1C1CDC:  MOV             R0, R4
1C1CE0:  VMUL.F32        S0, S0, S2
1C1CE4:  VCVT.S32.F32    S0, S0
1C1CE8:  VMOV            R1, S0
1C1CEC:  STR             R1, [R0,R2]!
1C1CF0:  MOV             R2, R4
1C1CF4:  LDR             R3, [SP,#0x90+var_74]
1C1CF8:  CMP             R1, #0
1C1CFC:  BNE             loc_1C1D08
1C1D00:  MOV             R1, #1
1C1D04:  STR             R1, [R0]
1C1D08:  LDR             R4, [R7,#0x10]
1C1D0C:  CMP             R9, #0
1C1D10:  LDRNE           R0, [R3,#0xA8]
1C1D14:  CMPNE           R0, #0
1C1D18:  BEQ             loc_1C1D3C
1C1D1C:  MOVW            R0, #0x12E8
1C1D20:  LDR             R0, [R2,R0]
1C1D24:  CMP             R0, #0x4000
1C1D28:  MOVWEQ          R5, #0
1C1D2C:  MOV             R0, R5
1C1D30:  MOV             R5, R2
1C1D34:  BL              j_SelectHrtfMixer
1C1D38:  B               loc_1C1D58
1C1D3C:  MOVW            R0, #0x12E8
1C1D40:  LDR             R0, [R2,R0]
1C1D44:  CMP             R0, #0x4000
1C1D48:  MOVWEQ          R5, #0
1C1D4C:  MOV             R0, R5
1C1D50:  MOV             R5, R2
1C1D54:  BL              j_SelectMixer
1C1D58:  VCMPE.F32       S22, S18
1C1D5C:  VLDR            S0, [R5,#0x78]
1C1D60:  VMRS            APSR_nzcv, FPSCR
1C1D64:  MOVW            R1, #0x12E4
1C1D68:  MOV             R6, R5
1C1D6C:  VMOVGT.F32      S18, S22
1C1D70:  VCMPE.F32       S18, S20
1C1D74:  VMRS            APSR_nzcv, FPSCR
1C1D78:  VMOVLT.F32      S20, S18
1C1D7C:  VLDR            S18, [R5,#0x7C]
1C1D80:  CMP             R8, #1
1C1D84:  STR             R0, [R5,R1]
1C1D88:  BLT             loc_1C1DC0
1C1D8C:  ADD             R0, R6, #0x84
1C1D90:  ADD             R1, SP, #0x90+var_5C
1C1D94:  ADD             R2, SP, #0x90+var_6C
1C1D98:  MOV             R3, R8
1C1D9C:  VLDR            S2, [R0]
1C1DA0:  SUBS            R3, R3, #1
1C1DA4:  VMUL.F32        S2, S2, S20
1C1DA8:  VSTR            S2, [R1]
1C1DAC:  ADD             R1, R1, #4
1C1DB0:  LDR             R7, [R0,#4]
1C1DB4:  ADD             R0, R0, #0xC
1C1DB8:  STR             R7, [R2],#4
1C1DBC:  BNE             loc_1C1D9C
1C1DC0:  MOVW            R0, #0x1D4C
1C1DC4:  MOV             R1, #0x144; n
1C1DC8:  ADD             R0, R6, R0; int
1C1DCC:  VMUL.F32        S20, S0, S20
1C1DD0:  STR             R6, [SP,#0x90+var_70]
1C1DD4:  BL              sub_22178C
1C1DD8:  SUB             R0, R4, #0x1500; switch 7 cases
1C1DDC:  STR             R8, [SP,#0x90+var_80]
1C1DE0:  CMP             R0, #6
1C1DE4:  STR             R10, [SP,#0x90+var_84]
1C1DE8:  BHI             def_1C1DFC; jumptable 001C1DFC default case
1C1DEC:  ADR             R1, jpt_1C1DFC
1C1DF0:  MOV             R0, R0,LSL#2
1C1DF4:  LDR             R12, [SP,#0x90+var_74]
1C1DF8:  LDR             R0, [R0,R1]
1C1DFC:  ADD             PC, R0, R1; switch jump
1C1E00:  DCD loc_1C1E1C - 0x1C1E00; jump table for switch statement
1C1E04:  DCD loc_1C1E48 - 0x1C1E00; jumptable 001C1DFC case 5377
1C1E08:  DCD loc_1C1E70 - 0x1C1E00; jumptable 001C1DFC case 5378
1C1E0C:  DCD loc_1C1E80 - 0x1C1E00; jumptable 001C1DFC case 5379
1C1E10:  DCD loc_1C1E90 - 0x1C1E00; jumptable 001C1DFC case 5380
1C1E14:  DCD loc_1C1EA0 - 0x1C1E00; jumptable 001C1DFC case 5381
1C1E18:  DCD loc_1C1EB0 - 0x1C1E00; jumptable 001C1DFC case 5382
1C1E1C:  LDR             R0, =(dword_B3CAC - 0x1C1E2C); jumptable 001C1DFC case 5376
1C1E20:  MOV             R8, #1
1C1E24:  ADD             R4, PC, R0; dword_B3CAC
1C1E28:  B               loc_1C1EBC
1C1E2C:  MOV             R8, #0; jumptable 001C1DFC default case
1C1E30:  MOV             R4, #0
1C1E34:  LDR             R6, [SP,#0x90+var_70]
1C1E38:  LDR             R12, [SP,#0x90+var_74]
1C1E3C:  CMP             R9, #0
1C1E40:  BNE             loc_1C1EC8
1C1E44:  B               loc_1C21E4
1C1E48:  LDR             R6, [SP,#0x90+var_70]; jumptable 001C1DFC case 5377
1C1E4C:  CMP             R9, #0
1C1E50:  BEQ             loc_1C208C
1C1E54:  LDRB            R0, [R12,#0xB4]
1C1E58:  TST             R0, #1
1C1E5C:  BNE             loc_1C20A0
1C1E60:  LDR             R0, =(dword_91E00 - 0x1C1E70)
1C1E64:  MOV             R8, #2
1C1E68:  ADD             R4, PC, R0; dword_91E00
1C1E6C:  B               loc_1C1EC8
1C1E70:  LDR             R0, =(dword_91D90 - 0x1C1E80); jumptable 001C1DFC case 5378
1C1E74:  MOV             R8, #2
1C1E78:  ADD             R4, PC, R0; dword_91D90
1C1E7C:  B               loc_1C1EBC
1C1E80:  LDR             R0, =(dword_91E30 - 0x1C1E90); jumptable 001C1DFC case 5379
1C1E84:  MOV             R8, #4
1C1E88:  ADD             R4, PC, R0; dword_91E30
1C1E8C:  B               loc_1C1EBC
1C1E90:  LDR             R0, =(dword_C45E4 - 0x1C1EA0); jumptable 001C1DFC case 5380
1C1E94:  MOV             R8, #6
1C1E98:  ADD             R4, PC, R0; dword_C45E4
1C1E9C:  B               loc_1C1EBC
1C1EA0:  LDR             R0, =(dword_C4614 - 0x1C1EB0); jumptable 001C1DFC case 5381
1C1EA4:  MOV             R8, #7
1C1EA8:  ADD             R4, PC, R0; dword_C4614
1C1EAC:  B               loc_1C1EBC
1C1EB0:  LDR             R0, =(dword_C464C - 0x1C1EC0); jumptable 001C1DFC case 5382
1C1EB4:  MOV             R8, #8
1C1EB8:  ADD             R4, PC, R0; dword_C464C
1C1EBC:  LDR             R6, [SP,#0x90+var_70]
1C1EC0:  CMP             R9, #0
1C1EC4:  BEQ             loc_1C21E4
1C1EC8:  LDR             R0, [R12,#0xA8]
1C1ECC:  CMP             R0, #0
1C1ED0:  BEQ             loc_1C1F84
1C1ED4:  CMP             R8, #1
1C1ED8:  BLT             loc_1C2218
1C1EDC:  VMUL.F32        S0, S20, S16
1C1EE0:  MOVW            R0, #0x1BFC
1C1EE4:  ADD             R0, R6, R0
1C1EE8:  STR             R0, [SP,#0x90+var_78]
1C1EEC:  MOVW            R0, #0x12FC
1C1EF0:  ADD             R5, R6, R0
1C1EF4:  ADD             R0, R6, #0x1C00
1C1EF8:  LDR             R6, [SP,#0x90+var_70]
1C1EFC:  VLDR            S20, =0.017453
1C1F00:  MOV             R7, #0
1C1F04:  MOV             R9, #0
1C1F08:  STR             R0, [SP,#0x90+var_7C]
1C1F0C:  VMOV            R10, S0
1C1F10:  LDR             R0, [R4,R9]
1C1F14:  CMP             R0, #3
1C1F18:  BNE             loc_1C1F38
1C1F1C:  LDR             R0, [SP,#0x90+var_7C]
1C1F20:  MOV             R1, #0x100; n
1C1F24:  STR             R7, [R0,R9]!
1C1F28:  STR             R7, [R0,#-4]
1C1F2C:  MOV             R0, R5; int
1C1F30:  BL              sub_22178C
1C1F34:  B               loc_1C1F68
1C1F38:  ADD             R0, R4, R9
1C1F3C:  LDR             R1, [SP,#0x90+var_78]
1C1F40:  MOV             R3, R10
1C1F44:  VLDR            S0, [R0,#4]
1C1F48:  ADD             R1, R1, R9
1C1F4C:  LDR             R0, [R12,#0xA8]
1C1F50:  VMUL.F32        S0, S0, S20
1C1F54:  STR             R5, [SP,#0x90+var_90]
1C1F58:  STR             R1, [SP,#0x90+var_8C]
1C1F5C:  MOV             R1, #0
1C1F60:  VMOV            R2, S0
1C1F64:  BL              j_GetLerpedHrtfCoeffs
1C1F68:  STR             R7, [R6,#0xDC]
1C1F6C:  ADD             R9, R9, #8
1C1F70:  LDR             R12, [SP,#0x90+var_74]
1C1F74:  SUBS            R8, R8, #1
1C1F78:  ADD             R5, R5, #0x100
1C1F7C:  BNE             loc_1C1F10
1C1F80:  B               loc_1C2218
1C1F84:  CMP             R8, #1
1C1F88:  BLT             loc_1C2218
1C1F8C:  VMUL.F32        S20, S20, S16
1C1F90:  ADD             R0, R12, #0xDC
1C1F94:  MOVW            R7, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1C1F98:  ADD             R9, R0, #0x24000
1C1F9C:  VLDR            S22, =0.017453
1C1FA0:  ADD             R0, R12, #0x8900
1C1FA4:  MOV             R10, #0
1C1FA8:  MOVT            R7, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1C1FAC:  ADD             R0, R0, #0x20000
1C1FB0:  STR             R0, [SP,#0x90+var_7C]
1C1FB4:  STR             R4, [SP,#0x90+var_78]
1C1FB8:  LDR             R0, [R4,R10,LSL#3]
1C1FBC:  CMP             R0, #3
1C1FC0:  BNE             loc_1C1FE4
1C1FC4:  ADD             R0, R10, R10,LSL#3
1C1FC8:  MOVW            R1, #0x1D58
1C1FCC:  ADD             R0, R6, R0,LSL#2
1C1FD0:  ADD             R0, R0, R1
1C1FD4:  VLDR            S0, [R0]
1C1FD8:  VADD.F32        S0, S0, S20
1C1FDC:  VSTR            S0, [R0]
1C1FE0:  B               loc_1C2078
1C1FE4:  ADD             R0, R4, R10,LSL#3
1C1FE8:  VLDR            S0, [R0,#4]
1C1FEC:  VMUL.F32        S0, S0, S22
1C1FF0:  VMOV            R5, S0
1C1FF4:  MOV             R0, R5; x
1C1FF8:  BL              cosf
1C1FFC:  MOV             R4, R0
1C2000:  MOV             R0, R5; x
1C2004:  BL              sinf
1C2008:  MOV             R1, R0
1C200C:  MOV             R0, R4
1C2010:  BL              j_aluCart2LUTpos
1C2014:  LDR             R1, [SP,#0x90+var_7C]
1C2018:  MOVW            R4, #0x1D4C
1C201C:  LDR             R12, [SP,#0x90+var_74]
1C2020:  LDR             R6, [SP,#0x90+var_70]
1C2024:  LDR             R1, [R1]
1C2028:  CMP             R1, #1
1C202C:  BLT             loc_1C2078
1C2030:  MOV             R2, #0
1C2034:  ADD             R5, R0, R0,LSL#3
1C2038:  LDR             R3, [R9,R2,LSL#2]
1C203C:  ADD             R2, R2, #1
1C2040:  ADD             R5, R12, R5,LSL#2
1C2044:  CMP             R2, R1
1C2048:  ADD             R5, R5, R3,LSL#2
1C204C:  ADD             R5, R5, R7
1C2050:  VLDR            S0, [R5]
1C2054:  ADD             R5, R10, R10,LSL#3
1C2058:  VMUL.F32        S0, S20, S0
1C205C:  ADD             R5, R6, R5,LSL#2
1C2060:  ADD             R3, R5, R3,LSL#2
1C2064:  ADD             R3, R3, R4
1C2068:  VLDR            S2, [R3]
1C206C:  VADD.F32        S0, S2, S0
1C2070:  VSTR            S0, [R3]
1C2074:  BLT             loc_1C2034
1C2078:  LDR             R4, [SP,#0x90+var_78]
1C207C:  ADD             R10, R10, #1
1C2080:  CMP             R10, R8
1C2084:  BNE             loc_1C1FB8
1C2088:  B               loc_1C2218
1C208C:  LDR             R0, =(dword_91E00 - 0x1C209C)
1C2090:  MOV             R8, #2
1C2094:  ADD             R4, PC, R0; dword_91E00
1C2098:  B               loc_1C21EC
1C209C:  DCFS 16384.0
1C20A0:  VLDR            S0, =0.70711
1C20A4:  MOVW            R0, #0xB3D7
1C20A8:  MOVW            R1, #1
1C20AC:  MOVT            R0, #0xBF5D
1C20B0:  VMUL.F32        S20, S20, S0
1C20B4:  MOVT            R1, #0xBF00
1C20B8:  STR             R9, [SP,#0x90+var_78]
1C20BC:  MOV             R8, R12
1C20C0:  VMUL.F32        S22, S20, S16
1C20C4:  BL              j_aluCart2LUTpos
1C20C8:  MOVW            R1, #:lower16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1C20CC:  MOV             R9, R8
1C20D0:  MOVT            R1, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1C20D4:  LDR             R7, [SP,#0x90+var_70]
1C20D8:  LDR             R1, [R9,R1]!
1C20DC:  CMP             R1, #1
1C20E0:  BLT             loc_1C2138
1C20E4:  ADD             R2, R8, #0xDC
1C20E8:  MOVW            R12, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1C20EC:  ADD             R2, R2, #0x24000
1C20F0:  MOV             R3, #0
1C20F4:  MOVT            R12, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1C20F8:  MOVW            R6, #0x1D4C
1C20FC:  ADD             R4, R0, R0,LSL#3
1C2100:  LDR             R5, [R2,R3,LSL#2]
1C2104:  ADD             R3, R3, #1
1C2108:  ADD             R4, R8, R4,LSL#2
1C210C:  CMP             R3, R1
1C2110:  ADD             R4, R4, R5,LSL#2
1C2114:  ADD             R5, R7, R5,LSL#2
1C2118:  ADD             R4, R4, R12
1C211C:  ADD             R5, R5, R6
1C2120:  VLDR            S0, [R4]
1C2124:  VLDR            S2, [R5]
1C2128:  VMUL.F32        S0, S22, S0
1C212C:  VADD.F32        S0, S2, S0
1C2130:  VSTR            S0, [R5]
1C2134:  BLT             loc_1C20FC
1C2138:  MOVW            R0, #0xB3D7
1C213C:  MOVW            R1, #1
1C2140:  MOVT            R0, #0xBF5D
1C2144:  MOVT            R1, #0x3F00
1C2148:  BL              j_aluCart2LUTpos
1C214C:  LDR             R1, [R9]
1C2150:  MOV             R8, #2
1C2154:  CMP             R1, #1
1C2158:  BLT             loc_1C21C8
1C215C:  LDR             R9, [SP,#0x90+var_74]
1C2160:  MOVW            R12, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1C2164:  LDR             R10, =(dword_91E00 - 0x1C2198)
1C2168:  MOV             R3, #0
1C216C:  ADD             R2, R9, #0xDC
1C2170:  LDR             R6, [SP,#0x90+var_70]
1C2174:  ADD             R2, R2, #0x24000
1C2178:  MOVT            R12, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1C217C:  MOVW            LR, #0x1D70
1C2180:  ADD             R5, R0, R0,LSL#3
1C2184:  LDR             R7, [R2,R3,LSL#2]
1C2188:  ADD             R3, R3, #1
1C218C:  ADD             R5, R9, R5,LSL#2
1C2190:  ADD             R4, PC, R10; dword_91E00
1C2194:  ADD             R5, R5, R7,LSL#2
1C2198:  CMP             R3, R1
1C219C:  ADD             R5, R5, R12
1C21A0:  VLDR            S0, [R5]
1C21A4:  ADD             R5, R6, R7,LSL#2
1C21A8:  ADD             R5, R5, LR
1C21AC:  VMUL.F32        S0, S22, S0
1C21B0:  VLDR            S2, [R5]
1C21B4:  VADD.F32        S0, S2, S0
1C21B8:  VSTR            S0, [R5]
1C21BC:  BLT             loc_1C2180
1C21C0:  MOV             R12, R9
1C21C4:  B               loc_1C21D8
1C21C8:  LDR             R0, =(dword_91E00 - 0x1C21D8)
1C21CC:  LDR             R6, [SP,#0x90+var_70]
1C21D0:  ADD             R4, PC, R0; dword_91E00
1C21D4:  LDR             R12, [SP,#0x90+var_74]
1C21D8:  LDR             R9, [SP,#0x90+var_78]
1C21DC:  CMP             R9, #0
1C21E0:  BNE             loc_1C1EC8
1C21E4:  CMP             R8, #0
1C21E8:  BEQ             loc_1C2218
1C21EC:  VMUL.F32        S0, S20, S16
1C21F0:  MOVW            R0, #0x1D4C
1C21F4:  ADD             R0, R6, R0
1C21F8:  LDR             R1, [R4],#8
1C21FC:  SUBS            R8, R8, #1
1C2200:  ADD             R1, R0, R1,LSL#2
1C2204:  ADD             R0, R0, #0x24 ; '$'
1C2208:  VLDR            S2, [R1]
1C220C:  VADD.F32        S2, S2, S0
1C2210:  VSTR            S2, [R1]
1C2214:  BNE             loc_1C21F8
1C2218:  LDR             R7, [SP,#0x90+var_80]
1C221C:  LDR             LR, [SP,#0x90+var_84]
1C2220:  CMP             R7, #1
1C2224:  BLT             loc_1C22A4
1C2228:  MOVW            R0, #0x1EE0
1C222C:  ADD             R1, R12, #0x14C
1C2230:  ADD             R12, R1, #0x28800
1C2234:  ADD             R0, R6, R0
1C2238:  ADD             R2, R6, #0x80
1C223C:  ADD             R1, SP, #0x90+var_5C
1C2240:  MOV             R3, #0
1C2244:  MOV             R6, R7
1C2248:  ADD             R5, R3, R3,LSL#1
1C224C:  CMP             R3, #0
1C2250:  LDR             R5, [R2,R5]
1C2254:  BNE             loc_1C2260
1C2258:  CMP             R5, #0
1C225C:  LDREQ           R5, [R12]
1C2260:  CMP             R5, #0
1C2264:  BEQ             loc_1C227C
1C2268:  LDR             R4, [R5]
1C226C:  CMP             R4, #0
1C2270:  MOVNE           R4, R5
1C2274:  B               loc_1C2280
1C2278:  DCFS 0.017453
1C227C:  MOV             R4, #0
1C2280:  ADD             R5, R1, R3
1C2284:  STR             R4, [R0,#-4]
1C2288:  SUBS            R6, R6, #1
1C228C:  ADD             R3, R3, #4
1C2290:  VLDR            S0, [R5]
1C2294:  VMUL.F32        S0, S0, S16
1C2298:  VSTR            S0, [R0]
1C229C:  ADD             R0, R0, #0x30 ; '0'
1C22A0:  BNE             loc_1C2248
1C22A4:  VMOV            S0, LR
1C22A8:  VLDR            S2, =31416.0
1C22AC:  VCVT.F32.S32    S0, S0
1C22B0:  VDIV.F32        S0, S2, S0
1C22B4:  VMOV            R0, S0; x
1C22B8:  BL              cosf
1C22BC:  MOV             R5, R0
1C22C0:  VMOV            R0, S18
1C22C4:  MOV             R1, R5
1C22C8:  BL              j_lpCoeffCalc
1C22CC:  LDR             R2, [SP,#0x90+var_70]
1C22D0:  MOVW            R1, #0x1E90
1C22D4:  CMP             R7, #1
1C22D8:  STR             R0, [R2,R1]
1C22DC:  BLT             loc_1C2310
1C22E0:  MOVW            R0, #0x1EE4
1C22E4:  ADD             R4, R2, R0
1C22E8:  ADD             R6, SP, #0x90+var_6C
1C22EC:  VLDR            S0, [R6]
1C22F0:  MOV             R1, R5
1C22F4:  VMUL.F32        S0, S0, S0
1C22F8:  VMOV            R0, S0
1C22FC:  BL              j_lpCoeffCalc
1C2300:  STR             R0, [R4],#0x30
1C2304:  SUBS            R7, R7, #1
1C2308:  ADD             R6, R6, #4
1C230C:  BNE             loc_1C22EC
1C2310:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C2320)
1C2314:  LDR             R1, [SP,#0x90+var_4C]
1C2318:  LDR             R0, [PC,R0]; __stack_chk_guard
1C231C:  LDR             R0, [R0]
1C2320:  SUBS            R0, R0, R1
1C2324:  SUBEQ           SP, R11, #0x48 ; 'H'
1C2328:  VPOPEQ          {D8-D12}
1C232C:  ADDEQ           SP, SP, #4
1C2330:  POPEQ           {R4-R11,PC}
1C2334:  BL              __stack_chk_fail
