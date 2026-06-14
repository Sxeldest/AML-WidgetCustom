; =========================================================
; Game Engine Function: sub_AAC70
; Address            : 0xAAC70 - 0xAB3A0
; =========================================================

AAC70:  PUSH            {R4-R7,LR}
AAC72:  ADD             R7, SP, #0xC
AAC74:  PUSH.W          {R8-R11}
AAC78:  SUB             SP, SP, #4
AAC7A:  VPUSH           {D8-D15}
AAC7E:  SUB             SP, SP, #0x38
AAC80:  STR             R3, [SP,#0x98+var_74]
AAC82:  MOV             R6, R0
AAC84:  LDR             R0, =(off_114D5C - 0xAACAA)
AAC86:  MOV             R8, R1
AAC88:  LDR.W           R3, =(__stack_chk_guard_ptr - 0xAAC9A)
AAC8C:  VMOV.F32        S16, #1.0
AAC90:  LDR             R1, [R7,#arg_18]
AAC92:  VMOV.F32        S2, #-4.0
AAC96:  ADD             R3, PC; __stack_chk_guard_ptr
AAC98:  VLDR            D12, [R7,#arg_0]
AAC9C:  AND.W           R1, R1, #1
AACA0:  VLDR            D13, [R7,#arg_8]
AACA4:  LDR             R3, [R3]; __stack_chk_guard
AACA6:  ADD             R0, PC; off_114D5C
AACA8:  VSUB.F64        D16, D13, D12
AACAC:  LDR             R3, [R3]
AACAE:  STR             R3, [SP,#0x98+var_64]
AACB0:  MOVW            R3, #0x1588
AACB4:  STR             R1, [SP,#0x98+var_70]
AACB6:  ADD.W           R1, R6, R1,LSL#2
AACBA:  VLDR            S0, [R1]
AACBE:  VLDR            S19, [R1,#8]
AACC2:  VLDR            S28, [R7,#arg_14]
AACC6:  VSUB.F32        S4, S19, S0
AACCA:  LDR             R1, [R0]; dword_1ACF68
AACCC:  VCMP.F32        S28, S16
AACD0:  STR             R1, [SP,#0x98+var_8C]
AACD2:  VMRS            APSR_nzcv, FPSCR
AACD6:  MOV.W           R0, #0
AACDA:  VCMP.F64        D12, D13
AACDE:  LDR.W           R10, [R1]
AACE2:  MOV.W           R1, #0
AACE6:  IT NE
AACE8:  MOVNE           R1, #1
AACEA:  ADD.W           R11, R10, R3
AACEE:  VSUB.F64        D15, D12, D13
AACF2:  VADD.F32        S23, S4, S2
AACF6:  VMRS            APSR_nzcv, FPSCR
AACFA:  VSTR            D16, [SP,#0x98+var_80]
AACFE:  IT MI
AAD00:  VMOVMI.F64      D15, D16
AAD04:  STR             R2, [SP,#0x98+var_88]
AAD06:  BIC.W           R2, R2, #1
AAD0A:  STR             R2, [SP,#0x98+var_84]
AAD0C:  SUBS            R2, #8
AAD0E:  CLZ.W           R2, R2
AAD12:  VLDR            S2, [R11]
AAD16:  MOV.W           R2, R2,LSR#5
AAD1A:  AND.W           R9, R2, R1
AAD1E:  BEQ             loc_AAD4C
AAD20:  VCMP.F64        D15, #0.0
AAD24:  VMRS            APSR_nzcv, FPSCR
AAD28:  BLT             loc_AAD4C
AAD2A:  VMOV.F64        D16, #1.0
AAD2E:  VADD.F64        D16, D15, D16
AAD32:  VCVT.F64.F32    D17, S23
AAD36:  VDIV.F64        D16, D17, D16
AAD3A:  VCVT.F32.F64    S4, D16
AAD3E:  VCMP.F32        S2, S4
AAD42:  VMRS            APSR_nzcv, FPSCR
AAD46:  IT LS
AAD48:  VMOVLS.F32      S2, S4
AAD4C:  VCMP.F32        S2, S23
AAD50:  EOR.W           R1, R9, #1
AAD54:  VMOV.F32        S22, S23
AAD58:  VMRS            APSR_nzcv, FPSCR
AAD5C:  IT MI
AAD5E:  VMOVMI.F32      S22, S2
AAD62:  VMOV.F32        S18, #0.5
AAD66:  VMOV.F32        S2, #2.0
AAD6A:  VMUL.F64        D16, D12, D13
AAD6E:  VMUL.F32        S29, S22, S18
AAD72:  VADD.F32        S20, S0, S2
AAD76:  VCMP.F64        D16, #0.0
AAD7A:  VMRS            APSR_nzcv, FPSCR
AAD7E:  IT PL
AAD80:  MOVPL           R0, #1
AAD82:  ORRS            R0, R1
AAD84:  BNE             loc_AADF6
AAD86:  VCVT.F64.F32    D16, S28
AAD8A:  VMOV.F64        D17, #1.0
AAD8E:  VDIV.F64        D16, D17, D16
AAD92:  VCMP.F64        D12, #0.0
AAD96:  VMOV            R5, R4, D16
AAD9A:  VMRS            APSR_nzcv, FPSCR
AAD9E:  VNEG.F64        D17, D12
AADA2:  IT GE
AADA4:  VMOVGE.F64      D17, D12
AADA8:  VMOV            R0, R1, D17; x
AADAC:  MOV             R2, R5; y
AADAE:  MOV             R3, R4; y
AADB0:  BLX             pow
AADB4:  VCMP.F64        D13, #0.0
AADB8:  STR             R6, [SP,#0x98+var_90]
AADBA:  STR.W           R9, [SP,#0x98+var_94]
AADBE:  MOV             R6, R0
AADC0:  MOV             R9, R1
AADC2:  MOV             R2, R5; y
AADC4:  MOV             R3, R4; y
AADC6:  VNEG.F64        D16, D13
AADCA:  VMRS            APSR_nzcv, FPSCR
AADCE:  IT GE
AADD0:  VMOVGE.F64      D16, D13
AADD4:  VMOV            R0, R1, D16; x
AADD8:  BLX             pow
AADDC:  VMOV            D17, R6, R9
AADE0:  LDRD.W          R9, R6, [SP,#0x98+var_94]
AADE4:  VMOV            D16, R0, R1
AADE8:  VADD.F64        D16, D17, D16
AADEC:  VDIV.F64        D16, D17, D16
AADF0:  VCVT.F32.F64    S21, D16
AADF4:  B               loc_AAE08
AADF6:  VCMP.F64        D12, #0.0
AADFA:  VLDR            S21, =0.0
AADFE:  VMRS            APSR_nzcv, FPSCR
AAE02:  IT MI
AAE04:  VMOVMI.F32      S21, S16
AAE08:  VADD.F32        S17, S29, S20
AAE0C:  LDR.W           R0, [R11,#0x448]
AAE10:  CMP             R0, R8
AAE12:  BNE.W           loc_AB1E4
AAE16:  LDR.W           R0, [R11,#0x470]
AAE1A:  MOVS            R5, #0
AAE1C:  LDR             R4, [R7,#arg_10]
AAE1E:  CMP             R0, #2
AAE20:  BEQ             loc_AAE72
AAE22:  CMP             R0, #1
AAE24:  BNE.W           loc_AB1E6
AAE28:  LDRB.W          R0, [R10,#0xE8]
AAE2C:  CMP             R0, #0
AAE2E:  BEQ             loc_AAEC2
AAE30:  VSUB.F32        S0, S23, S22
AAE34:  VCMP.F32        S0, #0.0
AAE38:  VMRS            APSR_nzcv, FPSCR
AAE3C:  BLE             loc_AAEC8
AAE3E:  LDR             R0, [SP,#0x98+var_70]
AAE40:  ADD.W           R0, R10, R0,LSL#2
AAE44:  VLDR            S2, [R0,#0xE0]
AAE48:  VSUB.F32        S2, S2, S17
AAE4C:  VDIV.F32        S2, S2, S0
AAE50:  VCMP.F32        S2, S16
AAE54:  VLDR            S0, =0.0
AAE58:  VMRS            APSR_nzcv, FPSCR
AAE5C:  VCMP.F32        S2, #0.0
AAE60:  IT GT
AAE62:  VMOVGT.F32      S2, S16
AAE66:  VMRS            APSR_nzcv, FPSCR
AAE6A:  IT MI
AAE6C:  VMOVMI.F32      S2, S0
AAE70:  B               loc_AAECC
AAE72:  ADD             R0, SP, #0x98+var_6C; int
AAE74:  MOVS            R1, #3; int
AAE76:  MOVS            R2, #5; int
AAE78:  MOVS            R3, #0; int
AAE7A:  STR             R5, [SP,#0x98+var_98]; float
AAE7C:  BL              sub_99284
AAE80:  VLDR            S2, [SP,#0x98+var_68]
AAE84:  LDR             R0, [SP,#0x98+var_70]
AAE86:  VNEG.F32        S20, S2
AAE8A:  VLDR            S0, [SP,#0x98+var_6C]
AAE8E:  CMP             R0, #0
AAE90:  IT EQ
AAE92:  VMOVEQ.F32      S20, S0
AAE96:  LDR.W           R0, [R11,#0x53C]
AAE9A:  CMP             R0, R8
AAE9C:  ITT EQ
AAE9E:  LDRBEQ.W        R0, [R11,#0x454]
AAEA2:  CMPEQ           R0, #0
AAEA4:  BEQ             loc_AAEC2
AAEA6:  VCMP.F32        S20, #0.0
AAEAA:  VMRS            APSR_nzcv, FPSCR
AAEAE:  BEQ.W           loc_AB1E4
AAEB2:  VCMP.F64        D12, D13
AAEB6:  VMRS            APSR_nzcv, FPSCR
AAEBA:  BNE             loc_AAF18
AAEBC:  VLDR            S6, =0.0
AAEC0:  B               loc_AB06A
AAEC2:  BL              sub_8B080
AAEC6:  B               loc_AB1E4
AAEC8:  VLDR            S2, =0.0
AAECC:  LDR             R0, [SP,#0x98+var_70]
AAECE:  VSUB.F32        S0, S16, S2
AAED2:  CMP             R0, #0
AAED4:  IT EQ
AAED6:  VMOVEQ.F32      S0, S2
AAEDA:  CMP.W           R9, #0
AAEDE:  BEQ.W           loc_AB180
AAEE2:  VCMP.F32        S0, S21
AAEE6:  VMRS            APSR_nzcv, FPSCR
AAEEA:  BPL             loc_AAFB2
AAEEC:  VDIV.F32        S0, S0, S21
AAEF0:  VSUB.F32        S0, S16, S0
AAEF4:  VMOV            R1, S28; y
AAEF8:  VMOV            R0, S0; x
AAEFC:  BLX             powf
AAF00:  VCMP.F64        D13, #0.0
AAF04:  VMOV.I32        D16, #0
AAF08:  VMRS            APSR_nzcv, FPSCR
AAF0C:  IT MI
AAF0E:  VMOVMI.F64      D16, D13
AAF12:  VSUB.F64        D17, D12, D16
AAF16:  B               loc_AAFFA
AAF18:  LDR             R0, [SP,#0x98+var_74]
AAF1A:  VCMP.F64        D12, D13
AAF1E:  VLDR            D17, [R0]
AAF22:  VMOV.F64        D18, D12
AAF26:  VMRS            APSR_nzcv, FPSCR
AAF2A:  IT MI
AAF2C:  VMOVMI.F64      D18, D13
AAF30:  VCMP.F64        D18, D17
AAF34:  VMOV.F64        D19, D13
AAF38:  IT MI
AAF3A:  VMOVMI.F64      D19, D12
AAF3E:  VMRS            APSR_nzcv, FPSCR
AAF42:  VCMP.F64        D19, D17
AAF46:  VMOV.F64        D16, D17
AAF4A:  IT MI
AAF4C:  VMOVMI.F64      D16, D18
AAF50:  VMRS            APSR_nzcv, FPSCR
AAF54:  IT GT
AAF56:  VMOVGT.F64      D16, D19
AAF5A:  CMP.W           R9, #0
AAF5E:  BEQ             loc_AB008
AAF60:  VCMP.F64        D16, #0.0
AAF64:  VMOV.I32        D17, #0
AAF68:  VMRS            APSR_nzcv, FPSCR
AAF6C:  BPL             loc_AB028
AAF6E:  VCMP.F64        D13, #0.0
AAF72:  VMOV.F64        D18, D13
AAF76:  VMRS            APSR_nzcv, FPSCR
AAF7A:  IT GT
AAF7C:  VMOVGT.F64      D18, D17
AAF80:  VSUB.F64        D16, D16, D12
AAF84:  VSUB.F64        D17, D18, D12
AAF88:  VDIV.F64        D16, D16, D17
AAF8C:  VDIV.F32        S0, S16, S28
AAF90:  VCVT.F32.F64    S2, D16
AAF94:  VSUB.F32        S2, S16, S2
AAF98:  VMOV            R1, S0; y
AAF9C:  VMOV            R0, S2; x
AAFA0:  BLX             powf
AAFA4:  VMOV            S0, R0
AAFA8:  VSUB.F32        S0, S16, S0
AAFAC:  VMUL.F32        S6, S21, S0
AAFB0:  B               loc_AB06A
AAFB2:  VMOV.F32        S2, #-1.0
AAFB6:  VLDR            S4, =0.000001
AAFBA:  VADD.F32        S2, S21, S2
AAFBE:  VABS.F32        S2, S2
AAFC2:  VCMP.F32        S2, S4
AAFC6:  VMRS            APSR_nzcv, FPSCR
AAFCA:  BLE             loc_AAFD8
AAFCC:  VSUB.F32        S0, S0, S21
AAFD0:  VSUB.F32        S2, S16, S21
AAFD4:  VDIV.F32        S0, S0, S2
AAFD8:  VMOV            R0, S0; x
AAFDC:  VMOV            R1, S28; y
AAFE0:  BLX             powf
AAFE4:  VCMP.F64        D12, #0.0
AAFE8:  VMOV.I32        D16, #0
AAFEC:  VMRS            APSR_nzcv, FPSCR
AAFF0:  IT GE
AAFF2:  VMOVGE.F64      D16, D12
AAFF6:  VSUB.F64        D17, D13, D16
AAFFA:  VMOV            S0, R0
AAFFE:  VCVT.F64.F32    D18, S0
AB002:  VMLA.F64        D16, D17, D18
AB006:  B               loc_AB1BA
AB008:  VSUB.F64        D16, D16, D12
AB00C:  VLDR            D17, [SP,#0x98+var_80]
AB010:  VDIV.F64        D16, D16, D17
AB014:  VCVT.F32.F64    S6, D16
AB018:  B               loc_AB06A
AB01A:  ALIGN 4
AB01C:  DCD off_114D5C - 0xAACAA
AB020:  DCFS 0.0
AB024:  DCFS 0.000001
AB028:  VCMP.F64        D12, #0.0
AB02C:  VMOV.F64        D18, D12
AB030:  VMRS            APSR_nzcv, FPSCR
AB034:  IT LS
AB036:  VMOVLS.F64      D18, D17
AB03A:  VSUB.F64        D17, D13, D18
AB03E:  VSUB.F64        D16, D16, D18
AB042:  VDIV.F64        D16, D16, D17
AB046:  VDIV.F32        S0, S16, S28
AB04A:  VCVT.F32.F64    S2, D16
AB04E:  VMOV            R1, S0; y
AB052:  VMOV            R0, S2; x
AB056:  BLX             powf
AB05A:  VSUB.F32        S0, S16, S21
AB05E:  VMOV.F32        S6, S21
AB062:  VMOV            S2, R0
AB066:  VMLA.F32        S6, S2, S0
AB06A:  LDR             R0, [SP,#0x98+var_84]
AB06C:  MOVS            R5, #0
AB06E:  CMP             R0, #8
AB070:  MOV.W           R0, #0
AB074:  BNE             loc_AB08A
AB076:  MOV             R0, R4
AB078:  MOVS            R1, #3
AB07A:  VMOV.F32        S28, S6
AB07E:  BL              sub_AB7D0
AB082:  VMOV.F32        S6, S28
AB086:  VLDR            S28, [R7,#arg_14]
AB08A:  CMP             R0, #1
AB08C:  IT LT
AB08E:  MOVLT           R5, #1
AB090:  MVN.W           R0, R9
AB094:  TST             R0, R5
AB096:  BNE             loc_AB0BC
AB098:  VLDR            S0, =100.0
AB09C:  LDR             R0, [SP,#0x98+var_8C]
AB09E:  VDIV.F32        S0, S20, S0
AB0A2:  LDR             R0, [R0]
AB0A4:  VLDR            S2, [R0,#0x334]
AB0A8:  VCMP.F32        S2, #0.0
AB0AC:  VMRS            APSR_nzcv, FPSCR
AB0B0:  BLE             loc_AB112
AB0B2:  VMOV.F32        S2, #10.0
AB0B6:  VDIV.F32        S0, S0, S2
AB0BA:  B               loc_AB112
AB0BC:  VLDR            D16, =-100.0
AB0C0:  LDR             R0, [SP,#0x98+var_8C]
AB0C2:  VCMP.F64        D15, D16
AB0C6:  LDR             R0, [R0]
AB0C8:  VMRS            APSR_nzcv, FPSCR
AB0CC:  BLT             loc_AB0DC
AB0CE:  VLDR            D16, =100.0
AB0D2:  VCMP.F64        D15, D16
AB0D6:  VMRS            APSR_nzcv, FPSCR
AB0DA:  BLS             loc_AB0EA
AB0DC:  VLDR            S0, [R0,#0x334]
AB0E0:  VCMP.F32        S0, #0.0
AB0E4:  VMRS            APSR_nzcv, FPSCR
AB0E8:  BLE             loc_AB10A
AB0EA:  VCVT.F32.F64    S2, D15
AB0EE:  VCMP.F32        S20, #0.0
AB0F2:  VMOV.F32        S0, #-1.0
AB0F6:  VMRS            APSR_nzcv, FPSCR
AB0FA:  VMOV.F32        S4, S16
AB0FE:  IT MI
AB100:  VMOVMI.F32      S4, S0
AB104:  VDIV.F32        S0, S4, S2
AB108:  B               loc_AB112
AB10A:  VLDR            S0, =100.0
AB10E:  VDIV.F32        S0, S20, S0
AB112:  VMOV.F32        S2, #10.0
AB116:  VLDR            S4, [R0,#0x338]
AB11A:  VCMP.F32        S4, #0.0
AB11E:  VMRS            APSR_nzcv, FPSCR
AB122:  VCMP.F32        S6, S16
AB126:  VMUL.F32        S2, S0, S2
AB12A:  IT GT
AB12C:  VMOVGT.F32      S0, S2
AB130:  VMRS            APSR_nzcv, FPSCR
AB134:  ITT GE
AB136:  VCMPGE.F32      S0, #0.0
AB13A:  VMRSGE          APSR_nzcv, FPSCR
AB13E:  BGT             loc_AB1E4
AB140:  VCMP.F32        S6, #0.0
AB144:  VMRS            APSR_nzcv, FPSCR
AB148:  BHI             loc_AB154
AB14A:  VCMP.F32        S0, #0.0
AB14E:  VMRS            APSR_nzcv, FPSCR
AB152:  BMI             loc_AB1E4
AB154:  VADD.F32        S0, S6, S0
AB158:  VLDR            S2, =0.0
AB15C:  VCMP.F32        S0, S16
AB160:  VMRS            APSR_nzcv, FPSCR
AB164:  VCMP.F32        S0, #0.0
AB168:  IT GT
AB16A:  VMOVGT.F32      S0, S16
AB16E:  VMRS            APSR_nzcv, FPSCR
AB172:  IT MI
AB174:  VMOVMI.F32      S0, S2
AB178:  CMP.W           R9, #0
AB17C:  BNE.W           loc_AAEE2
AB180:  VCVT.F64.F32    D17, S0
AB184:  LDR             R0, [SP,#0x98+var_84]
AB186:  CMP             R0, #8
AB188:  BNE             loc_AB198
AB18A:  VMOV.F64        D16, D12
AB18E:  VLDR            D18, [SP,#0x98+var_80]
AB192:  VMLA.F64        D16, D18, D17
AB196:  B               loc_AB1BA
AB198:  VLDR            D16, [SP,#0x98+var_80]
AB19C:  VMUL.F64        D16, D16, D17
AB1A0:  VMOV.F64        D17, #0.5
AB1A4:  VADD.F64        D17, D16, D17
AB1A8:  VCMP.F64        D16, D17
AB1AC:  VMRS            APSR_nzcv, FPSCR
AB1B0:  IT MI
AB1B2:  VMOVMI.F64      D16, D17
AB1B6:  VADD.F64        D16, D16, D12
AB1BA:  VMOV            R2, R3, D16
AB1BE:  LDR             R1, [SP,#0x98+var_88]
AB1C0:  MOV             R0, R4
AB1C2:  BL              sub_AF8D8
AB1C6:  VMOV            D16, R0, R1
AB1CA:  LDR             R0, [SP,#0x98+var_74]
AB1CC:  VLDR            D17, [R0]
AB1D0:  VCMP.F64        D17, D16
AB1D4:  VMRS            APSR_nzcv, FPSCR
AB1D8:  BEQ             loc_AB1E4
AB1DA:  LDR             R0, [SP,#0x98+var_74]
AB1DC:  MOVS            R5, #1
AB1DE:  VSTR            D16, [R0]
AB1E2:  B               loc_AB1E6
AB1E4:  MOVS            R5, #0
AB1E6:  LDR             R4, [R7,#arg_1C]
AB1E8:  VCMP.F32        S23, S16
AB1EC:  VMRS            APSR_nzcv, FPSCR
AB1F0:  BPL             loc_AB200
AB1F2:  VLDR            D16, [R6]
AB1F6:  VMOV            D17, D16
AB1FA:  VST1.32         {D16-D17}, [R4]
AB1FE:  B               loc_AB37C
AB200:  VMOV.F32        S20, #-2.0
AB204:  VCMP.F64        D12, D13
AB208:  VMRS            APSR_nzcv, FPSCR
AB20C:  VADD.F32        S0, S19, S20
AB210:  VSUB.F32        S30, S0, S29
AB214:  BNE             loc_AB21C
AB216:  VLDR            S21, =0.0
AB21A:  B               loc_AB2FE
AB21C:  LDR             R0, [SP,#0x98+var_74]
AB21E:  VCMP.F64        D12, D13
AB222:  VLDR            D17, [R0]
AB226:  VMOV.F64        D18, D12
AB22A:  VMRS            APSR_nzcv, FPSCR
AB22E:  IT MI
AB230:  VMOVMI.F64      D18, D13
AB234:  VCMP.F64        D18, D17
AB238:  VMOV.F64        D19, D13
AB23C:  IT MI
AB23E:  VMOVMI.F64      D19, D12
AB242:  VMRS            APSR_nzcv, FPSCR
AB246:  VCMP.F64        D19, D17
AB24A:  VMOV.F64        D16, D17
AB24E:  IT MI
AB250:  VMOVMI.F64      D16, D18
AB254:  VMRS            APSR_nzcv, FPSCR
AB258:  IT GT
AB25A:  VMOVGT.F64      D16, D19
AB25E:  CMP.W           R9, #0
AB262:  BEQ             loc_AB2B2
AB264:  VCMP.F64        D16, #0.0
AB268:  VMOV.I32        D17, #0
AB26C:  VMRS            APSR_nzcv, FPSCR
AB270:  BPL             loc_AB2C4
AB272:  VCMP.F64        D13, #0.0
AB276:  VMRS            APSR_nzcv, FPSCR
AB27A:  IT GT
AB27C:  VMOVGT.F64      D13, D17
AB280:  VSUB.F64        D16, D16, D12
AB284:  VSUB.F64        D17, D13, D12
AB288:  VDIV.F64        D16, D16, D17
AB28C:  VDIV.F32        S0, S16, S28
AB290:  VCVT.F32.F64    S2, D16
AB294:  VSUB.F32        S2, S16, S2
AB298:  VMOV            R1, S0; y
AB29C:  VMOV            R0, S2; x
AB2A0:  BLX             powf
AB2A4:  VMOV            S0, R0
AB2A8:  VSUB.F32        S0, S16, S0
AB2AC:  VMUL.F32        S21, S21, S0
AB2B0:  B               loc_AB2FE
AB2B2:  VSUB.F64        D16, D16, D12
AB2B6:  VLDR            D17, [SP,#0x98+var_80]
AB2BA:  VDIV.F64        D16, D16, D17
AB2BE:  VCVT.F32.F64    S21, D16
AB2C2:  B               loc_AB2FE
AB2C4:  VCMP.F64        D12, #0.0
AB2C8:  VMRS            APSR_nzcv, FPSCR
AB2CC:  IT LS
AB2CE:  VMOVLS.F64      D12, D17
AB2D2:  VSUB.F64        D17, D13, D12
AB2D6:  VSUB.F64        D16, D16, D12
AB2DA:  VDIV.F64        D16, D16, D17
AB2DE:  VDIV.F32        S0, S16, S28
AB2E2:  VCVT.F32.F64    S2, D16
AB2E6:  VMOV            R1, S0; y
AB2EA:  VMOV            R0, S2; x
AB2EE:  BLX             powf
AB2F2:  VSUB.F32        S0, S16, S21
AB2F6:  VMOV            S2, R0
AB2FA:  VMLA.F32        S21, S2, S0
AB2FE:  VSUB.F32        S4, S30, S17
AB302:  LDR             R0, [SP,#0x98+var_70]
AB304:  VSUB.F32        S2, S16, S21
AB308:  CMP             R0, #0
AB30A:  IT EQ
AB30C:  VMOVEQ.F32      S2, S21
AB310:  VNEG.F32        S0, S22
AB314:  VMLA.F32        S17, S4, S2
AB318:  BNE             loc_AB34C
AB31A:  VMOV.F32        S8, #2.0
AB31E:  VLDR            S2, [R6,#4]
AB322:  VMOV.F32        S6, S17
AB326:  VLDR            S4, [R6,#0xC]
AB32A:  VMLA.F32        S17, S0, S18
AB32E:  VADD.F32        S4, S4, S20
AB332:  VMLA.F32        S6, S22, S18
AB336:  VSTR            S17, [R4]
AB33A:  VADD.F32        S2, S2, S8
AB33E:  VSTR            S4, [R4,#0xC]
AB342:  VSTR            S6, [R4,#8]
AB346:  VSTR            S2, [R4,#4]
AB34A:  B               loc_AB37C
AB34C:  VMOV.F32        S6, S17
AB350:  VLDR            S4, [R6,#8]
AB354:  VMLA.F32        S17, S0, S18
AB358:  VLDR            S2, [R6]
AB35C:  VMOV.F32        S0, #2.0
AB360:  VADD.F32        S4, S4, S20
AB364:  VMLA.F32        S6, S22, S18
AB368:  VSTR            S17, [R4,#4]
AB36C:  VADD.F32        S0, S2, S0
AB370:  VSTR            S4, [R4,#8]
AB374:  VSTR            S6, [R4,#0xC]
AB378:  VSTR            S0, [R4]
AB37C:  LDR             R0, [SP,#0x98+var_64]
AB37E:  LDR             R1, =(__stack_chk_guard_ptr - 0xAB384)
AB380:  ADD             R1, PC; __stack_chk_guard_ptr
AB382:  LDR             R1, [R1]; __stack_chk_guard
AB384:  LDR             R1, [R1]
AB386:  CMP             R1, R0
AB388:  ITTTT EQ
AB38A:  MOVEQ           R0, R5
AB38C:  ADDEQ           SP, SP, #0x38 ; '8'
AB38E:  VPOPEQ          {D8-D15}
AB392:  ADDEQ           SP, SP, #4
AB394:  ITT EQ
AB396:  POPEQ.W         {R8-R11}
AB39A:  POPEQ           {R4-R7,PC}
AB39C:  BLX             __stack_chk_fail
