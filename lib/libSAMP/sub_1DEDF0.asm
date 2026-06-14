; =========================================================
; Game Engine Function: sub_1DEDF0
; Address            : 0x1DEDF0 - 0x1DF588
; =========================================================

1DEDF0:  PUSH            {R4-R11,LR}
1DEDF4:  ADD             R11, SP, #0x1C
1DEDF8:  SUB             SP, SP, #4
1DEDFC:  VPUSH           {D8-D15}
1DEE00:  SUB             SP, SP, #8
1DEE04:  MOV             R10, R0
1DEE08:  LDR             R0, =(EmulateEAXReverb_ptr - 0x1DEE20)
1DEE0C:  STR             R1, [SP,#0x68+var_68]
1DEE10:  MOV             R4, R2
1DEE14:  LDR             R1, [R1,#0xFC]
1DEE18:  LDR             R3, [PC,R0]; EmulateEAXReverb
1DEE1C:  LDR             R2, [R4]
1DEE20:  LDR             R0, [R1,#0xC]
1DEE24:  LDRB            R1, [R3]
1DEE28:  CMP             R2, #0x8000
1DEE2C:  CMPEQ           R1, #0
1DEE30:  BEQ             loc_1DEE5C
1DEE34:  VLDR            S0, =31416.0
1DEE38:  MOV             R5, #0
1DEE3C:  CMP             R2, #1
1DEE40:  BEQ             loc_1DEE4C
1DEE44:  CMP             R1, #0
1DEE48:  BEQ             loc_1DEE78
1DEE4C:  LDR             R1, =(sub_1DF5A4 - 0x1DEE58)
1DEE50:  ADD             R1, PC, R1; sub_1DF5A4
1DEE54:  STR             R1, [R10,#0xC]
1DEE58:  B               loc_1DEE78
1DEE5C:  LDR             R1, =(sub_1DF8FC - 0x1DEE70)
1DEE60:  MOV             R5, #1
1DEE64:  VLDR            S0, =6.2832
1DEE68:  ADD             R1, PC, R1; sub_1DF8FC
1DEE6C:  STR             R1, [R10,#0xC]
1DEE70:  VLDR            S2, [R4,#0x68]
1DEE74:  VMUL.F32        S0, S2, S0
1DEE78:  VMOV            S2, R0
1DEE7C:  VCVT.F32.U32    S18, S2
1DEE80:  VDIV.F32        S0, S0, S18
1DEE84:  VMOV            R0, S0; x
1DEE88:  BL              cosf
1DEE8C:  MOV             R9, R0
1DEE90:  LDR             R0, [R4,#0x10]
1DEE94:  MOV             R1, R9
1DEE98:  BL              j_lpCoeffCalc
1DEE9C:  CMP             R5, #1
1DEEA0:  STR             R0, [R10,#0x18]
1DEEA4:  STR             R5, [SP,#0x68+var_64]
1DEEA8:  BNE             loc_1DEEF8
1DEEAC:  VLDR            S0, =0.025
1DEEB0:  VLDR            S2, [R4,#0x60]
1DEEB4:  VMUL.F32        S0, S18, S0
1DEEB8:  VLDR            S4, [R4,#0x64]
1DEEBC:  VMUL.F32        S6, S2, S18
1DEEC0:  VMUL.F32        S0, S0, S2
1DEEC4:  VCVT.S32.F32    S2, S6
1DEEC8:  LDR             R0, [R10,#0x2C]
1DEECC:  LDR             R2, [R10,#0x30]
1DEED0:  VMUL.F32        S16, S0, S4
1DEED4:  VMOV            R3, S2
1DEED8:  CMP             R3, #1
1DEEDC:  MOVLS           R3, #1
1DEEE0:  UMULL           R0, R1, R3, R0
1DEEE4:  STR             R3, [R10,#0x30]
1DEEE8:  MOV             R3, #0
1DEEEC:  BL              sub_2217B4
1DEEF0:  STR             R0, [R10,#0x2C]
1DEEF4:  VSTR            S16, [R10,#0x34]
1DEEF8:  VMOV.F32        S16, #1.0
1DEEFC:  VLDR            S2, [R4,#0x28]
1DEF00:  VLDR            S0, [R4,#0x20]
1DEF04:  VMOV.F32        S20, #0.5
1DEF08:  VLDR            S6, =0.0045
1DEF0C:  MOVW            R8, #0x126F
1DEF10:  VLDR            S12, =0.0135
1DEF14:  MOVT            R8, #0x3A83
1DEF18:  VLDR            S8, =0.0015
1DEF1C:  MOV             R0, R8; x
1DEF20:  VLDR            S10, =0.0405
1DEF24:  VLDR            S22, =0.01266
1DEF28:  VDIV.F32        S4, S16, S2
1DEF2C:  VADD.F32        S2, S2, S0
1DEF30:  VMUL.F32        S0, S0, S18
1DEF34:  VMUL.F32        S6, S4, S6
1DEF38:  VMUL.F32        S8, S4, S8
1DEF3C:  VMUL.F32        S2, S2, S18
1DEF40:  VCVT.S32.F32    S0, S0
1DEF44:  VMOV            R1, S6; y
1DEF48:  VMOV            R6, S8
1DEF4C:  VCVT.S32.F32    S2, S2
1DEF50:  VSTR            S0, [R10,#0x48]
1DEF54:  VMUL.F32        S0, S4, S12
1DEF58:  VMUL.F32        S4, S4, S10
1DEF5C:  VSTR            S2, [R10,#0x4C]
1DEF60:  VLDR            S2, [R4,#0xC]
1DEF64:  VMOV            R7, S0
1DEF68:  VLDR            S12, [R4,#0x1C]
1DEF6C:  VMOV            R5, S4
1DEF70:  VMUL.F32        S2, S2, S20
1DEF74:  VMUL.F32        S0, S2, S12
1DEF78:  VSTR            S0, [R10,#0x50]
1DEF7C:  BL              powf
1DEF80:  STR             R0, [R10,#0x58]
1DEF84:  MOV             R0, R8; x
1DEF88:  MOV             R1, R6; y
1DEF8C:  BL              powf
1DEF90:  STR             R0, [R10,#0x54]
1DEF94:  MOV             R0, R8; x
1DEF98:  MOV             R1, R7; y
1DEF9C:  BL              powf
1DEFA0:  STR             R0, [R10,#0x5C]
1DEFA4:  MOV             R0, R8; x
1DEFA8:  MOV             R1, R5; y
1DEFAC:  BL              powf
1DEFB0:  STR             R0, [R10,#0x60]
1DEFB4:  VMOV.F32        S28, #4.0
1DEFB8:  VLDR            S26, [R4,#4]
1DEFBC:  VLDR            S2, =0.003165
1DEFC0:  VMUL.F32        S0, S26, S22
1DEFC4:  VLDR            S6, =1.0472
1DEFC8:  VADD.F32        S0, S0, S2
1DEFCC:  VMUL.F32        S0, S0, S18
1DEFD0:  VMUL.F32        S2, S0, S28
1DEFD4:  VADD.F32        S4, S0, S0
1DEFD8:  VCVT.S32.F32    S0, S0
1DEFDC:  VCVT.S32.F32    S2, S2
1DEFE0:  VCVT.S32.F32    S4, S4
1DEFE4:  VSTR            S0, [R10,#0xC0]
1DEFE8:  VSTR            S4, [R10,#0xC4]
1DEFEC:  VSTR            S2, [R10,#0xC8]
1DEFF0:  VLDR            S30, [R4,#8]
1DEFF4:  VMUL.F32        S0, S30, S6
1DEFF8:  VMOV            R6, S0
1DEFFC:  MOV             R0, R6; x
1DF000:  BL              cosf
1DF004:  MOV             R5, R0
1DF008:  MOV             R0, R6; x
1DF00C:  BL              sinf
1DF010:  VLDR            S0, =0.57735
1DF014:  VMOV            S2, R0
1DF018:  VMOV            S24, R5
1DF01C:  VMUL.F32        S0, S2, S0
1DF020:  VDIV.F32        S0, S0, S24
1DF024:  VSTR            S0, [R10,#0xD8]
1DF028:  LDRB            R0, [R4,#0x34]
1DF02C:  VLDR            S22, [R4,#0x18]
1DF030:  CMP             R0, #0
1DF034:  BEQ             loc_1DF088
1DF038:  VLDR            S0, [R4,#0x2C]
1DF03C:  VCMPE.F32       S0, S16
1DF040:  VMRS            APSR_nzcv, FPSCR
1DF044:  BGE             loc_1DF088
1DF048:  VMOV            R0, S0; x
1DF04C:  VLDR            S0, =-0.33333
1DF050:  VLDR            S2, [R4,#0x14]
1DF054:  VMUL.F32        S17, S2, S0
1DF058:  BL              log10f
1DF05C:  VMOV            S0, R0
1DF060:  VLDR            S2, =0.0029129
1DF064:  VMUL.F32        S0, S17, S0
1DF068:  VDIV.F32        S0, S2, S0
1DF06C:  VLDR            S2, =0.1
1DF070:  VCMPE.F32       S0, S2
1DF074:  VMRS            APSR_nzcv, FPSCR
1DF078:  VMOVLT.F32      S0, S2
1DF07C:  VCMPE.F32       S0, S22
1DF080:  VMRS            APSR_nzcv, FPSCR
1DF084:  VMOVLT.F32      S22, S0
1DF088:  VLDR            S0, =0.1663
1DF08C:  MOVW            R6, #0x126F
1DF090:  VLDR            S2, =0.041575
1DF094:  MOVT            R6, #0x3A83
1DF098:  VMUL.F32        S0, S26, S0
1DF09C:  VLDR            S17, [R4,#0x14]
1DF0A0:  MOV             R0, R6; x
1DF0A4:  VLDR            S19, [R4,#0xC]
1DF0A8:  MOV             R8, R4
1DF0AC:  VLDR            S21, [R4,#0x24]
1DF0B0:  VADD.F32        S0, S0, S2
1DF0B4:  VDIV.F32        S0, S0, S17
1DF0B8:  VMOV            R1, S0; y
1DF0BC:  BL              powf
1DF0C0:  VMOV            S0, R0
1DF0C4:  MOV             R7, #(dword_1DF374 - 0x1DF374)
1DF0C8:  VMUL.F32        S2, S17, S22
1DF0CC:  VMUL.F32        S0, S0, S0
1DF0D0:  VMUL.F32        S4, S30, S30
1DF0D4:  VDIV.F32        S30, S16, S17
1DF0D8:  VSUB.F32        S0, S16, S0
1DF0DC:  VDIV.F32        S17, S16, S2
1DF0E0:  VSQRT.F32       S0, S0
1DF0E4:  VMUL.F32        S2, S19, S24
1DF0E8:  VLDR            S19, =0.0
1DF0EC:  VMUL.F32        S6, S26, S28
1DF0F0:  VLDR            S26, =0.98
1DF0F4:  VMUL.F32        S4, S4, S20
1DF0F8:  VMUL.F32        S2, S2, S21
1DF0FC:  VADD.F32        S28, S6, S16
1DF100:  VSTR            S2, [R10,#0xCC]
1DF104:  VSTR            S0, [R10,#0xD0]
1DF108:  VSTR            S4, [R10,#0xD4]
1DF10C:  ADR             R0, dword_1DF374
1DF110:  ADD             R0, R0, R7
1DF114:  VLDR            S0, [R0]
1DF118:  MOV             R0, R6; x
1DF11C:  VMUL.F32        S0, S0, S30
1DF120:  VMOV            R1, S0; y
1DF124:  BL              powf
1DF128:  MOV             R5, R0
1DF12C:  ADR             R0, dword_1DF384
1DF130:  ADD             R0, R0, R7
1DF134:  ADD             R4, R10, R7
1DF138:  VLDR            S0, [R0]
1DF13C:  MOV             R0, R6; x
1DF140:  VMUL.F32        S23, S0, S28
1DF144:  VMUL.F32        S0, S23, S30
1DF148:  VMOV            R1, S0; y
1DF14C:  VMUL.F32        S0, S23, S18
1DF150:  VCVT.S32.F32    S0, S0
1DF154:  VSTR            S0, [R4,#0x14C]
1DF158:  BL              powf
1DF15C:  VCMPE.F32       S22, S16
1DF160:  STR             R5, [R4,#0xDC]
1DF164:  VMOV            S21, R0
1DF168:  VMRS            APSR_nzcv, FPSCR
1DF16C:  STR             R0, [R4,#0x11C]
1DF170:  BGE             loc_1DF1BC
1DF174:  VMUL.F32        S0, S23, S17
1DF178:  MOV             R0, R6; x
1DF17C:  VMOV            R1, S0; y
1DF180:  BL              powf
1DF184:  VMOV            S0, R0
1DF188:  MOV             R1, R9
1DF18C:  VDIV.F32        S0, S0, S21
1DF190:  VMUL.F32        S0, S0, S0
1DF194:  VMOV            R0, S0
1DF198:  BL              j_lpCoeffCalc
1DF19C:  VMOV            S0, R0
1DF1A0:  VLDR            S21, [R4,#0x11C]
1DF1A4:  VCMPE.F32       S0, S26
1DF1A8:  VMRS            APSR_nzcv, FPSCR
1DF1AC:  VMOVGT.F32      S0, S26
1DF1B0:  B               loc_1DF1C0
1DF1B4:  DCFS 31416.0
1DF1B8:  DCFS 6.2832
1DF1BC:  VMOV.F32        S0, S19
1DF1C0:  VMUL.F32        S2, S21, S24
1DF1C4:  ADD             R7, R7, #4
1DF1C8:  CMP             R7, #0x10
1DF1CC:  VSTR            S0, [R4,#0x15C]
1DF1D0:  VSTR            S2, [R4,#0x11C]
1DF1D4:  BNE             loc_1DF10C
1DF1D8:  LDR             R0, [SP,#0x68+var_64]
1DF1DC:  CMP             R0, #1
1DF1E0:  BNE             loc_1DF2C4
1DF1E4:  VLDR            S17, [R8,#0x14]
1DF1E8:  MOVW            R5, #0x126F
1DF1EC:  VLDR            S19, [R8,#0x58]
1DF1F0:  MOVT            R5, #0x3A83
1DF1F4:  MOV             R0, R5; x
1DF1F8:  VLDR            S28, [R8,#8]
1DF1FC:  VDIV.F32        S0, S19, S17
1DF200:  VMOV            R1, S0; y
1DF204:  VLDR            S24, [R8,#0xC]
1DF208:  VLDR            S30, [R8,#0x24]
1DF20C:  BL              powf
1DF210:  VLDR            S0, =0.0133
1DF214:  VMOV            S21, R0
1DF218:  VDIV.F32        S0, S0, S17
1DF21C:  VMUL.F32        S2, S21, S21
1DF220:  VMOV            R1, S0; y
1DF224:  VMUL.F32        S0, S19, S18
1DF228:  VLDR            S18, [R8,#0x5C]
1DF22C:  VSUB.F32        S2, S16, S2
1DF230:  VCVT.S32.F32    S0, S0
1DF234:  VSQRT.F32       S23, S2
1DF238:  VMUL.F32        S2, S28, S28
1DF23C:  VSTR            S0, [R10,#0x1C0]
1DF240:  VMUL.F32        S2, S2, S20
1DF244:  VSTR            S2, [R10,#0x1B8]
1DF248:  STR             R0, [R10,#0x1B4]
1DF24C:  MOV             R0, R5; x
1DF250:  BL              powf
1DF254:  VCMPE.F32       S22, S16
1DF258:  STR             R0, [R10,#0x1BC]
1DF25C:  VMRS            APSR_nzcv, FPSCR
1DF260:  VSTR            S23, [R10,#0x1A0]
1DF264:  BGE             loc_1DF394
1DF268:  VMUL.F32        S0, S17, S22
1DF26C:  MOV             R0, #0x3A83126F; x
1DF274:  VDIV.F32        S0, S19, S0
1DF278:  VMOV            R1, S0; y
1DF27C:  BL              powf
1DF280:  VMOV            S0, R0
1DF284:  MOV             R1, R9
1DF288:  VDIV.F32        S0, S0, S21
1DF28C:  VMUL.F32        S0, S0, S0
1DF290:  VMOV            R0, S0
1DF294:  BL              j_lpCoeffCalc
1DF298:  VMOV            S0, R0
1DF29C:  VCMPE.F32       S0, S26
1DF2A0:  VMRS            APSR_nzcv, FPSCR
1DF2A4:  VMOVGT.F32      S0, S26
1DF2A8:  B               loc_1DF398
1DF2AC:  DCFS 0.025
1DF2B0:  DCFS 0.0045
1DF2B4:  DCFS 0.0135
1DF2B8:  DCFS 0.0015
1DF2BC:  DCFS 0.0405
1DF2C0:  DCFS 0.01266
1DF2C4:  LDR             R1, =(ReverbBoost_ptr - 0x1DF2DC)
1DF2C8:  MOVW            R2, #:lower16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1DF2CC:  LDR             R0, [SP,#0x68+var_68]
1DF2D0:  MOVT            R2, #:upper16:(aZnst6Ndk14Fs10_79+4); "t6__ndk14__fs10filesystem10hash_valueER"...
1DF2D4:  LDR             R1, [PC,R1]; ReverbBoost
1DF2D8:  LDR             R4, [R0,#0xFC]
1DF2DC:  VLDR            S16, [R8,#0xB8]
1DF2E0:  LDR             R0, [R10,#0x1DC]; int
1DF2E4:  MOV             R5, R4
1DF2E8:  VLDR            S18, [R1]
1DF2EC:  MOV             R1, #0x24 ; '$'; n
1DF2F0:  LDR             R6, [R5,R2]!
1DF2F4:  BL              sub_22178C
1DF2F8:  VMOV            S0, R6
1DF2FC:  VCVT.F32.U32    S0, S0
1DF300:  LDR             R0, [R5]
1DF304:  CMP             R0, #0
1DF308:  BEQ             loc_1DF578
1DF30C:  VMOV.F32        S2, #2.0
1DF310:  ADD             R1, R4, #0xDC
1DF314:  LDR             R2, [R10,#0x1DC]
1DF318:  ADD             R1, R1, #0x24000
1DF31C:  MOV             R3, #0
1DF320:  VDIV.F32        S0, S2, S0
1DF324:  VSQRT.F32       S0, S0
1DF328:  VMUL.F32        S2, S18, S16
1DF32C:  VMUL.F32        S0, S2, S0
1DF330:  LDR             R7, [R1,R3,LSL#2]
1DF334:  ADD             R3, R3, #1
1DF338:  CMP             R3, R0
1DF33C:  ADD             R7, R2, R7,LSL#2
1DF340:  VSTR            S0, [R7]
1DF344:  BCC             loc_1DF330
1DF348:  B               loc_1DF578
1DF34C:  DCFS 0.003165
1DF350:  DCFS 1.0472
1DF354:  DCFS 0.57735
1DF358:  DCFS -0.33333
1DF35C:  DCFS 0.0029129
1DF360:  DCFS 0.1
1DF364:  DCFS 0.1663
1DF368:  DCFS 0.041575
1DF36C:  DCFS 0.0
1DF370:  DCFS 0.98
1DF374:  DCD 0x3C7765FE, 0x3C88CE70, 0x3C95E9E2, 0x3CA3D70A
1DF384:  DCD 0x3CACD9E8, 0x3CFEC56D, 0x3D3CD35B, 0x3D8B4396
1DF394:  VLDR            S0, =0.0
1DF398:  VMOV.F32        S2, #-0.5
1DF39C:  VSTR            S0, [R10,#0x1C8]
1DF3A0:  VSUB.F32        S4, S16, S28
1DF3A4:  VMUL.F32        S6, S30, S24
1DF3A8:  VMUL.F32        S2, S18, S2
1DF3AC:  VMUL.F32        S2, S2, S4
1DF3B0:  VMUL.F32        S4, S6, S18
1DF3B4:  VADD.F32        S2, S2, S16
1DF3B8:  VSTR            S4, [R10,#0x1D0]
1DF3BC:  VMOV.F32        S4, #2.0
1DF3C0:  VSTR            S2, [R10,#0x1D4]
1DF3C4:  LDR             R0, [SP,#0x68+var_68]
1DF3C8:  LDR             R6, [R0,#0xFC]
1DF3CC:  MOV             R0, #0x28900
1DF3D4:  VLDR            S0, [R8,#0xB8]
1DF3D8:  MOV             R7, R6
1DF3DC:  LDR             R0, [R7,R0]!
1DF3E0:  VMOV            S2, R0
1DF3E4:  LDR             R0, =(ReverbBoost_ptr - 0x1DF408)
1DF3E8:  VCVT.F32.U32    S6, S2
1DF3EC:  VLDR            S2, [R8,#0x44]
1DF3F0:  VLDR            S24, [R8,#0x40]
1DF3F4:  VMUL.F32        S2, S2, S2
1DF3F8:  VLDR            S26, [R8,#0x48]
1DF3FC:  VMUL.F32        S10, S24, S24
1DF400:  LDR             R0, [PC,R0]; ReverbBoost
1DF404:  VMUL.F32        S12, S26, S26
1DF408:  VLDR            S18, [R8,#0x4C]
1DF40C:  VLDR            S8, [R8,#0x50]
1DF410:  VLDR            S20, [R8,#0x54]
1DF414:  VADD.F32        S10, S2, S10
1DF418:  VLDR            S2, [R0]
1DF41C:  VADD.F32        S10, S10, S12
1DF420:  VCMPE.F32       S10, S16
1DF424:  VMRS            APSR_nzcv, FPSCR
1DF428:  BLE             loc_1DF43C
1DF42C:  VSQRT.F32       S10, S10
1DF430:  VDIV.F32        S10, S16, S10
1DF434:  VMUL.F32        S26, S10, S26
1DF438:  VMUL.F32        S24, S10, S24
1DF43C:  VDIV.F32        S4, S4, S6
1DF440:  VMUL.F32        S6, S18, S18
1DF444:  VMUL.F32        S8, S8, S8
1DF448:  VMUL.F32        S10, S20, S20
1DF44C:  VADD.F32        S6, S8, S6
1DF450:  VADD.F32        S6, S6, S10
1DF454:  VCMPE.F32       S6, S16
1DF458:  VMRS            APSR_nzcv, FPSCR
1DF45C:  BLE             loc_1DF470
1DF460:  VSQRT.F32       S6, S6
1DF464:  VDIV.F32        S6, S16, S6
1DF468:  VMUL.F32        S20, S6, S20
1DF46C:  VMUL.F32        S18, S6, S18
1DF470:  VMOV            R0, S26
1DF474:  VMOV            R1, S24
1DF478:  VSQRT.F32       S16, S4
1DF47C:  VMUL.F32        S22, S2, S0
1DF480:  BL              j_aluCart2LUTpos
1DF484:  MOV             R5, R0
1DF488:  ADD             R0, R10, #0x94; int
1DF48C:  MOV             R1, #0x24 ; '$'; n
1DF490:  BL              sub_22178C
1DF494:  LDR             R0, [R7]
1DF498:  CMP             R0, #0
1DF49C:  BEQ             loc_1DF4F8
1DF4A0:  VMUL.F32        S0, S24, S24
1DF4A4:  ADD             R1, R6, #0xDC
1DF4A8:  VMUL.F32        S2, S26, S26
1DF4AC:  MOVW            R2, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1DF4B0:  ADD             R1, R1, #0x24000
1DF4B4:  MOVT            R2, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1DF4B8:  VADD.F32        S0, S2, S0
1DF4BC:  VSQRT.F32       S0, S0
1DF4C0:  ADD             R4, R5, R5,LSL#3
1DF4C4:  LDR             R3, [R1],#4
1DF4C8:  SUBS            R0, R0, #1
1DF4CC:  ADD             R4, R6, R4,LSL#2
1DF4D0:  ADD             R4, R4, R3,LSL#2
1DF4D4:  ADD             R3, R10, R3,LSL#2
1DF4D8:  ADD             R4, R4, R2
1DF4DC:  VLDR            S2, [R4]
1DF4E0:  VSUB.F32        S2, S2, S16
1DF4E4:  VMUL.F32        S2, S2, S0
1DF4E8:  VADD.F32        S2, S2, S16
1DF4EC:  VMUL.F32        S2, S2, S22
1DF4F0:  VSTR            S2, [R3,#0x94]
1DF4F4:  BNE             loc_1DF4C0
1DF4F8:  VMOV            R0, S20
1DF4FC:  VMOV            R1, S18
1DF500:  BL              j_aluCart2LUTpos
1DF504:  MOV             R5, R0
1DF508:  ADD             R0, R10, #0x17C; int
1DF50C:  MOV             R1, #0x24 ; '$'; n
1DF510:  BL              sub_22178C
1DF514:  LDR             R0, [R7]
1DF518:  CMP             R0, #0
1DF51C:  BEQ             loc_1DF578
1DF520:  VMUL.F32        S0, S20, S20
1DF524:  ADD             R1, R6, #0xDC
1DF528:  VMUL.F32        S2, S18, S18
1DF52C:  MOVW            R2, #:lower16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1DF530:  ADD             R1, R1, #0x24000
1DF534:  MOVT            R2, #:upper16:(aZn3fmt2v86deta_55+0x25); "NS1_13specs_checkerINS1_21dynamic_specs"...
1DF538:  VADD.F32        S0, S2, S0
1DF53C:  VSQRT.F32       S0, S0
1DF540:  ADD             R7, R5, R5,LSL#3
1DF544:  LDR             R3, [R1],#4
1DF548:  SUBS            R0, R0, #1
1DF54C:  ADD             R7, R6, R7,LSL#2
1DF550:  ADD             R7, R7, R3,LSL#2
1DF554:  ADD             R3, R10, R3,LSL#2
1DF558:  ADD             R7, R7, R2
1DF55C:  VLDR            S2, [R7]
1DF560:  VSUB.F32        S2, S2, S16
1DF564:  VMUL.F32        S2, S2, S0
1DF568:  VADD.F32        S2, S2, S16
1DF56C:  VMUL.F32        S2, S2, S22
1DF570:  VSTR            S2, [R3,#0x17C]
1DF574:  BNE             loc_1DF540
1DF578:  SUB             SP, R11, #0x60 ; '`'
1DF57C:  VPOP            {D8-D15}
1DF580:  ADD             SP, SP, #4
1DF584:  POP             {R4-R11,PC}
