; =========================================================
; Game Engine Function: sub_188D78
; Address            : 0x188D78 - 0x18929A
; =========================================================

188D78:  PUSH            {R4-R7,LR}
188D7A:  ADD             R7, SP, #0xC
188D7C:  PUSH.W          {R8-R11}
188D80:  SUB             SP, SP, #4
188D82:  VPUSH           {D8}
188D86:  SUB             SP, SP, #0x38
188D88:  MOV             R9, R1
188D8A:  MOV             R4, R0
188D8C:  LDRD.W          R8, R11, [R7,#arg_8]
188D90:  LDRD.W          R0, R1, [R0,#0x3C8]
188D94:  STR             R2, [SP,#0x60+var_38]
188D96:  SUBS.W          R2, R0, R8
188D9A:  SBCS.W          R2, R1, R11
188D9E:  BGE             loc_188E2A
188DA0:  SUBS.W          R0, R8, R0
188DA4:  SBC.W           R1, R11, R1
188DA8:  MOV             R10, R3
188DAA:  ADD.W           R5, R4, #0x400
188DAE:  BLX             sub_220C98
188DB2:  VLDR            D16, =1000000.0
188DB6:  VMOV            D17, R0, R1
188DBA:  VDIV.F64        D18, D17, D16
188DBE:  VLDR            D17, [R5]
188DC2:  VLDR            D16, [R5,#8]
188DC6:  VMLA.F64        D16, D17, D18
188DCA:  VCMP.F64        D16, D17
188DCE:  VMRS            APSR_nzcv, FPSCR
188DD2:  IT GT
188DD4:  VMOVGT.F64      D16, D17
188DD8:  LDRB.W          R0, [R4,#0x680]
188DDC:  STRD.W          R8, R11, [R4,#0x3C8]
188DE0:  STR             R5, [SP,#0x60+var_40]
188DE2:  VSTR            D16, [R5,#8]
188DE6:  CBZ             R0, loc_188DEE
188DE8:  MOVS            R0, #0
188DEA:  STRB.W          R0, [R4,#0x680]
188DEE:  LDR             R0, [R4,#0x50]
188DF0:  CBZ             R0, loc_188E30
188DF2:  LDRD.W          R1, R0, [R4,#0xB8]
188DF6:  SUBS.W          R2, R1, R8
188DFA:  SBCS.W          R2, R0, R11
188DFE:  BGE             loc_188E30
188E00:  ORRS.W          R2, R1, R0
188E04:  BEQ             loc_188E30
188E06:  LDR.W           R2, [R4,#0x2E0]
188E0A:  MOV.W           R3, #0x3E8
188E0E:  SUBS.W          R1, R8, R1
188E12:  SBC.W           R0, R11, R0
188E16:  UMULL.W         R2, R3, R2, R3
188E1A:  SUBS            R1, R2, R1
188E1C:  SBCS.W          R0, R3, R0
188E20:  BGE             loc_188E30
188E22:  MOVS            R0, #1
188E24:  STRB.W          R0, [R4,#0x2D4]
188E28:  B               loc_18924C
188E2A:  STRD.W          R8, R11, [R4,#0x3C8]
188E2E:  B               loc_18924C
188E30:  LDR             R1, [R7,#arg_0]
188E32:  MOVS            R0, #0xE0
188E34:  MOV             R5, R10
188E36:  ADD.W           R0, R0, R1,LSL#3
188E3A:  VMOV            S0, R0
188E3E:  VCVT.F32.S32    S0, S0
188E42:  VCVT.F64.F32    D8, S0
188E46:  VCMP.F64        D17, D8
188E4A:  VMRS            APSR_nzcv, FPSCR
188E4E:  IT MI
188E50:  VMOVMI.F64      D8, D17
188E54:  VCMP.F64        D16, D8
188E58:  STR             R4, [SP,#0x60+var_3C]
188E5A:  ADDS            R4, #0xC0
188E5C:  STR             R4, [SP,#0x60+var_30]
188E5E:  STR.W           R9, [SP,#0x60+var_34]
188E62:  VMRS            APSR_nzcv, FPSCR
188E66:  BLE             loc_188F5C
188E68:  LDR             R0, [SP,#0x60+var_3C]
188E6A:  ADDW            R0, R0, #0x684
188E6E:  STRD.W          R0, R5, [SP,#0x60+var_48]
188E72:  MOV             R0, R4
188E74:  BL              sub_17D55E
188E78:  LDR             R0, [SP,#0x60+var_38]
188E7A:  MOV             R1, R4
188E7C:  STRD.W          R8, R11, [SP,#0x60+var_60]
188E80:  SUB.W           R3, R7, #-var_29
188E84:  LDR.W           R8, [SP,#0x60+var_3C]
188E88:  MOV             R10, R5
188E8A:  LDR             R2, [R7,#arg_0]
188E8C:  MOV             R4, R0
188E8E:  STR             R0, [SP,#0x60+var_58]
188E90:  LDR             R0, [R7,#arg_10]
188E92:  STR             R0, [SP,#0x60+var_50]
188E94:  MOV             R0, R8
188E96:  STR             R5, [SP,#0x60+var_54]
188E98:  BL              sub_1892D4
188E9C:  LDR.W           R5, [R8,#0xC0]
188EA0:  CMP             R5, #0
188EA2:  BLE             loc_188F50
188EA4:  LDR.W           R9, [R8,#0x698]
188EA8:  LDR.W           R6, [R8,#0x69C]
188EAC:  ORRS.W          R0, R9, R6
188EB0:  BNE             loc_188ECC
188EB2:  LDR             R3, [SP,#0x60+var_30]
188EB4:  MOV             R2, R4
188EB6:  LDR             R1, [SP,#0x60+var_34]
188EB8:  MOV             R0, R8
188EBA:  STR             R3, [SP,#0x60+var_60]
188EBC:  MOV             R5, R10
188EBE:  MOV             R4, R3
188EC0:  MOV             R3, R10
188EC2:  BL              sub_189848
188EC6:  LDR.W           R8, [R7,#arg_8]
188ECA:  B               loc_188F2A
188ECC:  MOV.W           R0, #0x240; unsigned int
188ED0:  BLX             j__Znwj; operator new(uint)
188ED4:  MOV             R10, R0
188ED6:  ADDS            R0, R5, #7
188ED8:  LDR.W           R1, [R8,#0xCC]
188EDC:  MOV.W           R3, #0x240
188EE0:  LSRS            R5, R0, #3
188EE2:  MOV             R0, R10
188EE4:  MOV             R2, R5
188EE6:  BLX             __memcpy_chk
188EEA:  LDR             R0, [R7,#arg_8]
188EEC:  MOV             R1, R11
188EEE:  MOV.W           R2, #0x3E8
188EF2:  UMLAL.W         R0, R1, R9, R2
188EF6:  STR.W           R5, [R10,#0x230]
188EFA:  STRD.W          R0, R1, [R10,#0x238]
188EFE:  CBZ             R6, loc_188F1A
188F00:  BL              sub_187150
188F04:  LDR.W           R1, [R8,#0x69C]
188F08:  BLX             sub_221798
188F0C:  LDRD.W          R0, R2, [R10,#0x238]
188F10:  ADDS            R0, R0, R1
188F12:  ADC.W           R1, R2, #0
188F16:  STRD.W          R0, R1, [R10,#0x238]
188F1A:  LDR             R0, [SP,#0x60+var_48]
188F1C:  MOV             R1, R10
188F1E:  BL              sub_1897DA
188F22:  LDR             R5, [SP,#0x60+var_44]
188F24:  LDR.W           R8, [R7,#arg_8]
188F28:  LDR             R4, [SP,#0x60+var_30]
188F2A:  LDR             R0, [R4]
188F2C:  ADDS            R0, #0xE0
188F2E:  VMOV            S0, R0
188F32:  LDR             R0, [SP,#0x60+var_40]
188F34:  VCVT.F64.S32    D16, S0
188F38:  VLDR            D17, [R0,#8]
188F3C:  VSUB.F64        D16, D17, D16
188F40:  VCMP.F64        D16, D8
188F44:  VMRS            APSR_nzcv, FPSCR
188F48:  VSTR            D16, [R0,#8]
188F4C:  BGT             loc_188E72
188F4E:  B               loc_188F5C
188F50:  LDR             R0, [SP,#0x60+var_40]
188F52:  MOV             R5, R10
188F54:  LDR.W           R8, [R7,#arg_8]
188F58:  VLDR            D16, [R0,#8]
188F5C:  VCMP.F64        D16, D8
188F60:  MOVS            R0, #0
188F62:  MOV             R12, #0x3D090
188F6A:  VMRS            APSR_nzcv, FPSCR
188F6E:  IT MI
188F70:  MOVMI           R0, #1
188F72:  LDR             R4, [SP,#0x60+var_3C]
188F74:  VCMP.F64        D16, D8
188F78:  LDRB.W          R1, [R4,#0x410]
188F7C:  VMRS            APSR_nzcv, FPSCR
188F80:  STRB.W          R0, [R4,#0x410]
188F84:  BPL             loc_188FC4
188F86:  CBNZ            R1, loc_188FC4
188F88:  LDR.W           R1, [R4,#0x2D8]
188F8C:  MOV.W           R3, #0x7D0
188F90:  LDR.W           R2, [R4,#0x3E0]
188F94:  ADD.W           LR, R4, #0x3D0
188F98:  MULS            R1, R3
188F9A:  MOVS            R3, #0
188F9C:  ADDS            R2, #1
188F9E:  STRD.W          R3, R3, [R4,#0x3E8]
188FA2:  SUBS.W          R3, R2, #0xFFFFFFFF
188FA6:  IT NE
188FA8:  MOVNE           R3, R2
188FAA:  ADDS.W          R6, R1, R8
188FAE:  ADC.W           R0, R11, #0
188FB2:  ADDS.W          R1, R6, R12
188FB6:  ADC.W           R2, R0, #0
188FBA:  STM.W           LR, {R1,R2,R6}
188FBE:  STRD.W          R0, R3, [R4,#0x3DC]
188FC2:  B               loc_188FC8
188FC4:  LDRD.W          R1, R2, [R4,#0x3D0]
188FC8:  LDR.W           R9, [SP,#0x60+var_38]
188FCC:  SUBS.W          R1, R8, R1
188FD0:  SBCS.W          R1, R11, R2
188FD4:  BLT.W           loc_1891D2
188FD8:  LDRD.W          R2, R1, [R4,#0x3E8]
188FDC:  CMN             R1, R2
188FDE:  BNE             loc_188FF2
188FE0:  VCMP.F64        D16, D8
188FE4:  VMRS            APSR_nzcv, FPSCR
188FE8:  BPL.W           loc_18918C
188FEC:  VLDR            S0, =0.0
188FF0:  B               loc_18902E
188FF2:  VMOV            S0, R2
188FF6:  VMOV            S2, R1
188FFA:  VCVT.F32.U32    S0, S0
188FFE:  VCVT.F32.U32    S2, S2
189002:  VCMP.F64        D16, D8
189006:  VMRS            APSR_nzcv, FPSCR
18900A:  VADD.F32        S2, S2, S0
18900E:  VDIV.F32        S0, S0, S2
189012:  VLDR            S2, =0.02
189016:  BPL             loc_189058
189018:  VCMP.F32        S0, S2
18901C:  VMRS            APSR_nzcv, FPSCR
189020:  BLS             loc_18902E
189022:  LDR             R0, [SP,#0x60+var_40]
189024:  VLDR            D17, [R0]
189028:  VSTR            D17, [R4,#0x3F8]
18902C:  B               loc_189038
18902E:  LDR             R0, [SP,#0x60+var_40]
189030:  VLDR            D17, [R0]
189034:  VSTR            D17, [R4,#0x3F0]
189038:  VCMP.F32        S0, #0.0
18903C:  VMRS            APSR_nzcv, FPSCR
189040:  BNE             loc_1890CE
189042:  LDR.W           R1, [R4,#0x3E4]
189046:  ADDS            R1, #1
189048:  STR.W           R1, [R4,#0x3E4]
18904C:  CMP             R1, #0xA
18904E:  BNE             loc_1890D4
189050:  MOVS            R1, #0
189052:  STRD.W          R1, R1, [R4,#0x3F8]
189056:  B               loc_1890D0
189058:  VCMP.F32        S0, S2
18905C:  VMRS            APSR_nzcv, FPSCR
189060:  BLE.W           loc_18918C
189064:  VLDR            D17, =0.2
189068:  VCVT.F64.F32    D19, S0
18906C:  VCMP.F64        D19, D17
189070:  VLDR            D18, =0.9
189074:  VMOV.F64        D16, #0.5
189078:  VMRS            APSR_nzcv, FPSCR
18907C:  IT GT
18907E:  VMOVGT.F64      D18, D16
189082:  VLDR            D17, [R4,#0x3F0]
189086:  VLDR            D19, =14400.0
18908A:  VMUL.F64        D17, D17, D18
18908E:  LDR             R0, [SP,#0x60+var_40]
189090:  VCMP.F64        D17, D19
189094:  VLDR            D18, [R0]
189098:  VMRS            APSR_nzcv, FPSCR
18909C:  VSTR            D17, [R4,#0x3F0]
1890A0:  VSTR            D18, [R4,#0x3F8]
1890A4:  BPL             loc_1890B8
1890A6:  VMOV.F64        D17, D19
1890AA:  MOV             R1, #0x40CC2000
1890B2:  MOVS            R2, #0
1890B4:  STRD.W          R2, R1, [R4,#0x3F0]
1890B8:  VSUB.F64        D18, D18, D17
1890BC:  LDR             R0, [SP,#0x60+var_40]
1890BE:  MOVS            R1, #0
1890C0:  STR.W           R1, [R4,#0x3E4]
1890C4:  VMLA.F64        D17, D18, D16
1890C8:  VSTR            D17, [R0]
1890CC:  B               loc_18918C
1890CE:  MOVS            R1, #0
1890D0:  STR.W           R1, [R4,#0x3E4]
1890D4:  VLDR            D16, [R4,#0x3F8]
1890D8:  VCMP.F64        D16, #0.0
1890DC:  VMRS            APSR_nzcv, FPSCR
1890E0:  BEQ             loc_18914E
1890E2:  VCVT.F64.F32    D18, S0
1890E6:  VLDR            D19, =0.2
1890EA:  VLDR            D17, [R4,#0x3F0]
1890EE:  VCMP.F64        D18, D19
1890F2:  VMRS            APSR_nzcv, FPSCR
1890F6:  BLE             loc_189124
1890F8:  VMOV.F64        D18, #0.5
1890FC:  VMUL.F64        D17, D17, D18
189100:  VLDR            D18, =14400.0
189104:  VSTR            D17, [R4,#0x3F0]
189108:  VCMP.F64        D17, D18
18910C:  VMRS            APSR_nzcv, FPSCR
189110:  BPL             loc_189124
189112:  VMOV.F64        D17, D18
189116:  MOV             R1, #0x40CC2000
18911E:  MOVS            R2, #0
189120:  STRD.W          R2, R1, [R4,#0x3F0]
189124:  VSUB.F64        D19, D16, D17
189128:  VMOV.F64        D18, #0.5
18912C:  VMUL.F64        D19, D19, D18
189130:  VLDR            D20, =3600.0
189134:  VCMP.F64        D19, D20
189138:  VMRS            APSR_nzcv, FPSCR
18913C:  BPL             loc_189182
18913E:  VCMP.F32        S0, #0.0
189142:  VMRS            APSR_nzcv, FPSCR
189146:  BNE             loc_189160
189148:  VMOV.F64        D19, #1.5
18914C:  B               loc_189172
18914E:  VADD.F64        D16, D17, D17
189152:  B               loc_189186
189154:  ALIGN 8
189158:  DCFD 1000000.0
189160:  VLDR            S2, =0.02
189164:  VCMP.F32        S0, S2
189168:  VMRS            APSR_nzcv, FPSCR
18916C:  BPL             loc_18925A
18916E:  VLDR            D19, =1.05
189172:  VMUL.F64        D16, D16, D19
189176:  VSTR            D16, [R4,#0x3F8]
18917A:  VSUB.F64        D16, D16, D17
18917E:  VMUL.F64        D19, D16, D18
189182:  VADD.F64        D16, D19, D17
189186:  LDR             R0, [SP,#0x60+var_40]
189188:  VSTR            D16, [R0]
18918C:  LDR.W           R1, [R4,#0x2D8]
189190:  MOV.W           R3, #0x7D0
189194:  LDR.W           R2, [R4,#0x3E0]
189198:  MOV             R6, #unk_7A120
1891A0:  MULS            R1, R3
1891A2:  MOVS            R3, #0
1891A4:  ADDS            R2, #1
1891A6:  STRD.W          R3, R3, [R4,#0x3E8]
1891AA:  SUBS.W          R3, R2, #0xFFFFFFFF
1891AE:  IT NE
1891B0:  MOVNE           R3, R2
1891B2:  ADDS.W          R1, R1, R8
1891B6:  ADC.W           R2, R11, #0
1891BA:  ADDS            R1, R1, R6
1891BC:  ADC.W           R2, R2, #0
1891C0:  ADDS.W          R0, R1, R12
1891C4:  ADC.W           R6, R2, #0
1891C8:  STRD.W          R0, R6, [R4,#0x3D0]
1891CC:  ADD.W           R0, R4, #0x3D8
1891D0:  STM             R0!, {R1-R3}
1891D2:  LDR.W           R0, [R4,#0x688]
1891D6:  CBZ             R0, loc_18924C
1891D8:  LDR.W           R10, [SP,#0x60+var_30]
1891DC:  MOVS            R6, #0
1891DE:  LDR.W           R1, [R4,#0x684]
1891E2:  LDR.W           R1, [R1,R6,LSL#2]
1891E6:  LDRD.W          R1, R2, [R1,#0x238]
1891EA:  SUBS.W          R1, R1, R8
1891EE:  SBCS.W          R1, R2, R11
1891F2:  BGE             loc_189246
1891F4:  MOV             R0, R10
1891F6:  BL              sub_17D55E
1891FA:  LDR.W           R0, [R4,#0x684]
1891FE:  LDR.W           R1, [R0,R6,LSL#2]
189202:  MOV             R0, R10
189204:  LDR.W           R2, [R1,#0x230]
189208:  BL              sub_17D566
18920C:  LDR             R1, [SP,#0x60+var_34]
18920E:  MOV             R0, R4
189210:  MOV             R2, R9
189212:  MOV             R3, R5
189214:  STR.W           R10, [SP,#0x60+var_60]
189218:  BL              sub_189848
18921C:  LDR.W           R0, [R4,#0x684]
189220:  LDR.W           R0, [R0,R6,LSL#2]; void *
189224:  CBZ             R0, loc_18922A
189226:  BLX             j__ZdlPv; operator delete(void *)
18922A:  LDR.W           R0, [R4,#0x688]
18922E:  SUBS            R0, #1
189230:  CMP             R6, R0
189232:  BEQ             loc_189240
189234:  LDR.W           R1, [R4,#0x684]
189238:  LDR.W           R2, [R1,R0,LSL#2]
18923C:  STR.W           R2, [R1,R6,LSL#2]
189240:  STR.W           R0, [R4,#0x688]
189244:  B               loc_189248
189246:  ADDS            R6, #1
189248:  CMP             R6, R0
18924A:  BCC             loc_1891DE
18924C:  ADD             SP, SP, #0x38 ; '8'
18924E:  VPOP            {D8}
189252:  ADD             SP, SP, #4
189254:  POP.W           {R8-R11}
189258:  POP             {R4-R7,PC}
18925A:  VLDR            S2, =0.04
18925E:  VCMP.F32        S0, S2
189262:  VMRS            APSR_nzcv, FPSCR
189266:  BPL.W           loc_18917A
18926A:  VLDR            D19, =0.9
18926E:  VMUL.F64        D19, D17, D19
189272:  VLDR            D17, =14400.0
189276:  VSTR            D19, [R4,#0x3F0]
18927A:  VCMP.F64        D19, D17
18927E:  VMRS            APSR_nzcv, FPSCR
189282:  BPL             loc_189294
189284:  MOVW            R1, #0x2000
189288:  MOVS            R2, #0
18928A:  MOVT            R1, #0x40CC
18928E:  STRD.W          R2, R1, [R4,#0x3F0]
189292:  B               loc_18917A
189294:  VMOV.F64        D17, D19
189298:  B               loc_18917A
