; =========================================================
; Game Engine Function: INT123_synth_ntom
; Address            : 0x235DA0 - 0x23634E
; =========================================================

235DA0:  PUSH            {R4-R7,LR}
235DA2:  ADD             R7, SP, #0xC
235DA4:  PUSH.W          {R8-R11}
235DA8:  SUB             SP, SP, #0x34
235DAA:  MOV             R9, R2
235DAC:  MOVW            R12, #0xB2A8
235DB0:  MOVW            LR, #0xB2A0
235DB4:  MOVW            R5, #0x4848
235DB8:  LDR.W           R8, [R9,R12]
235DBC:  MOV             R2, R0
235DBE:  LDR.W           R6, [R9,LR]
235DC2:  LDR.W           R5, [R9,R5]
235DC6:  CBZ             R5, loc_235DF0
235DC8:  ADD.W           R5, R9, R1,LSL#8
235DCC:  MOVW            R4, #0x4850
235DD0:  ADD             R5, R4
235DD2:  MOVS            R4, #0
235DD4:  ADDS            R0, R5, R4
235DD6:  VLDR            D16, [R0]
235DDA:  ADDS            R0, R2, R4
235DDC:  ADDS            R4, #8
235DDE:  VLDR            D17, [R0]
235DE2:  CMP.W           R4, #0x100
235DE6:  VMUL.F64        D16, D17, D16
235DEA:  VSTR            D16, [R0]
235DEE:  BNE             loc_235DD4
235DF0:  ADD.W           R4, R6, R8
235DF4:  CBZ             R1, loc_235E12
235DF6:  MOVW            R0, #0x4838
235DFA:  MOVW            R5, #0x4828
235DFE:  LDR.W           R6, [R9,R0]
235E02:  MOVW            R0, #0x918C
235E06:  LDR.W           R10, [R9,R0]
235E0A:  ADD.W           R8, R9, R5
235E0E:  ADDS            R4, #2
235E10:  B               loc_235E3C
235E12:  MOVW            R8, #0x4838
235E16:  MOVW            R6, #0x9188
235E1A:  LDR.W           R0, [R9,R8]
235E1E:  MOVW            R5, #0x918C
235E22:  LDR.W           R10, [R9,R6]
235E26:  ADDS            R0, #0xF
235E28:  AND.W           R6, R0, #0xF
235E2C:  STR.W           R10, [R9,R5]
235E30:  MOVW            R0, #0x4820
235E34:  STR.W           R6, [R9,R8]
235E38:  ADD.W           R8, R9, R0
235E3C:  ADD             R12, R9
235E3E:  LSLS            R0, R6, #0x1F
235E40:  ADD.W           R5, R9, LR
235E44:  STRD.W          R3, R1, [SP,#0x50+var_30]
235E48:  STRD.W          R5, R12, [SP,#0x50+var_48]
235E4C:  BNE             loc_235E64
235E4E:  LDRD.W          R0, R11, [R8]
235E52:  ADD.W           R1, R11, R6,LSL#3
235E56:  ADDS            R1, #8
235E58:  ADD.W           R0, R0, R6,LSL#3
235E5C:  BLX             j_INT123_dct64
235E60:  ADDS            R6, #1
235E62:  B               loc_235E7A
235E64:  ADDS            R3, R6, #1
235E66:  LDRD.W          R11, R0, [R8]
235E6A:  AND.W           R3, R3, #0xF
235E6E:  ADD.W           R1, R11, R6,LSL#3
235E72:  ADD.W           R0, R0, R3,LSL#3
235E76:  BLX             j_INT123_dct64
235E7A:  MOVW            R1, #0x4844
235E7E:  MOVW            R0, #0x9190
235E82:  LDR.W           R1, [R9,R1]
235E86:  LDR.W           R5, [R9,R0]
235E8A:  ADD             R0, R9
235E8C:  STR             R0, [SP,#0x50+var_24]
235E8E:  SUB.W           R0, R1, R6,LSL#3
235E92:  ADD.W           R2, R0, #0x80
235E96:  ADD.W           R0, R11, #0x780
235E9A:  STR             R0, [SP,#0x50+var_40]
235E9C:  RSB.W           R0, R6, #0x210
235EA0:  ADD.W           R8, R5, R10
235EA4:  STR             R0, [SP,#0x50+var_4C]
235EA6:  RSB.W           R0, R6, #0x1F0
235EAA:  VLDR            D16, =32767.0
235EAE:  VLDR            D17, =-32768.0
235EB2:  MOV.W           R10, #0x8000
235EB6:  STR.W           R9, [SP,#0x50+var_34]
235EBA:  MOV             R9, R11
235EBC:  STR             R1, [SP,#0x50+var_28]
235EBE:  MOV.W           R11, #0x10
235EC2:  STR             R0, [SP,#0x50+var_38]
235EC4:  MOVS            R0, #0
235EC6:  MOVW            R1, #0x7FFF
235ECA:  STR             R6, [SP,#0x50+var_3C]
235ECC:  STR.W           R9, [SP,#0x50+var_20]
235ED0:  CMP.W           R8, #0x8000
235ED4:  BLT.W           loc_236024
235ED8:  VLDM            R9, {D18-D21}
235EDC:  MOVS            R5, #0
235EDE:  MVN.W           R6, R8
235EE2:  MOVT            R5, #0xFFFF
235EE6:  VLDM            R2, {D22-D25}
235EEA:  CMP             R6, R5
235EEC:  VMUL.F64        D19, D23, D19
235EF0:  VMUL.F64        D18, D22, D18
235EF4:  VMUL.F64        D20, D24, D20
235EF8:  VSUB.F64        D18, D18, D19
235EFC:  VMUL.F64        D21, D25, D21
235F00:  VADD.F64        D18, D18, D20
235F04:  VLDR            D19, [R9,#0x20]
235F08:  VLDR            D22, [R2,#0x20]
235F0C:  VSUB.F64        D18, D18, D21
235F10:  VMUL.F64        D19, D22, D19
235F14:  VLDR            D20, [R9,#0x28]
235F18:  VLDR            D23, [R2,#0x28]
235F1C:  VADD.F64        D18, D18, D19
235F20:  VMUL.F64        D20, D23, D20
235F24:  VLDR            D21, [R9,#0x30]
235F28:  VLDR            D22, [R2,#0x30]
235F2C:  VSUB.F64        D18, D18, D20
235F30:  VMUL.F64        D21, D22, D21
235F34:  VLDR            D19, [R9,#0x38]
235F38:  VLDR            D23, [R2,#0x38]
235F3C:  VADD.F64        D18, D18, D21
235F40:  VMUL.F64        D19, D23, D19
235F44:  VLDR            D20, [R9,#0x40]
235F48:  VLDR            D22, [R2,#0x40]
235F4C:  VSUB.F64        D18, D18, D19
235F50:  VMUL.F64        D20, D22, D20
235F54:  VLDR            D21, [R9,#0x48]
235F58:  VLDR            D23, [R2,#0x48]
235F5C:  VADD.F64        D18, D18, D20
235F60:  VMUL.F64        D21, D23, D21
235F64:  VLDR            D19, [R9,#0x50]
235F68:  VLDR            D22, [R2,#0x50]
235F6C:  VSUB.F64        D18, D18, D21
235F70:  VMUL.F64        D19, D22, D19
235F74:  VLDR            D20, [R9,#0x58]
235F78:  VLDR            D23, [R2,#0x58]
235F7C:  VADD.F64        D18, D18, D19
235F80:  VMUL.F64        D20, D23, D20
235F84:  VLDR            D21, [R9,#0x60]
235F88:  VLDR            D22, [R2,#0x60]
235F8C:  VSUB.F64        D18, D18, D20
235F90:  VMUL.F64        D21, D22, D21
235F94:  VLDR            D19, [R9,#0x68]
235F98:  VLDR            D23, [R2,#0x68]
235F9C:  VADD.F64        D18, D18, D21
235FA0:  VMUL.F64        D19, D23, D19
235FA4:  VLDR            D20, [R9,#0x70]
235FA8:  VLDR            D22, [R2,#0x70]
235FAC:  VSUB.F64        D18, D18, D19
235FB0:  VMUL.F64        D20, D22, D20
235FB4:  VLDR            D21, [R9,#0x78]
235FB8:  VLDR            D23, [R2,#0x78]
235FBC:  VADD.F64        D18, D18, D20
235FC0:  VMUL.F64        D19, D23, D21
235FC4:  VSUB.F64        D18, D18, D19
235FC8:  VCVT.S32.F64    S0, D18
235FCC:  IT LE
235FCE:  MOVLE           R6, R5
235FD0:  ADD.W           R5, R8, #0x8000
235FD4:  ADD             R6, R5
235FD6:  BIC.W           R12, R6, R1
235FDA:  LSRS            R6, R6, #0xF
235FDC:  ADD.W           R6, R4, R6,LSL#2
235FE0:  ADD.W           LR, R6, #4
235FE4:  VMOV            R3, S0
235FE8:  VCMPE.F64       D18, D16
235FEC:  VMRS            APSR_nzcv, FPSCR
235FF0:  BLE             loc_235FF8
235FF2:  STRH            R1, [R4]
235FF4:  ADDS            R0, #1
235FF6:  B               loc_23600A
235FF8:  VCMPE.F64       D18, D17
235FFC:  VMRS            APSR_nzcv, FPSCR
236000:  ITEE GE
236002:  STRHGE          R3, [R4]
236004:  STRHLT.W        R10, [R4]
236008:  ADDLT           R0, #1
23600A:  SUB.W           R5, R5, #0x8000
23600E:  ADDS            R4, #4
236010:  CMP.W           R5, #0x10000
236014:  BGE             loc_235FE8
236016:  LDR             R3, [SP,#0x50+var_24]
236018:  MOV             R4, LR
23601A:  LDR             R5, [R3]
23601C:  SUB.W           R3, R8, #0x8000
236020:  SUB.W           R8, R3, R12
236024:  ADD             R8, R5
236026:  ADD.W           R2, R2, #0x100
23602A:  SUBS.W          R11, R11, #1
23602E:  ADD.W           R9, R9, #0x80
236032:  BNE.W           loc_235ED0
236036:  LDR             R1, [SP,#0x50+var_38]
236038:  CMP.W           R8, #0x8000
23603C:  LDR             R6, [SP,#0x50+var_28]
23603E:  ADD.W           R9, R6, R1,LSL#3
236042:  LDR             R1, [SP,#0x50+var_20]
236044:  ADD.W           R2, R1, #0x800
236048:  BLT.W           loc_23615E
23604C:  ADD.W           R3, R1, #0x810
236050:  VLDR            D18, [R9,#0x110]
236054:  VLDR            D22, [R2]
236058:  ADD.W           R5, R8, #0x8000
23605C:  VLDR            D23, [R3]
236060:  MOV.W           LR, #0x8000
236064:  LDR             R3, [SP,#0x50+var_4C]
236066:  VMUL.F64        D18, D18, D23
23606A:  ADD.W           R3, R6, R3,LSL#3
23606E:  MVN.W           R6, R8
236072:  VLDR            D24, [R3]
236076:  ADD.W           R3, R1, #0x820
23607A:  VLDR            D19, [R9,#0x120]
23607E:  VMUL.F64        D22, D24, D22
236082:  VLDR            D23, [R3]
236086:  ADD.W           R3, R1, #0x830
23608A:  VADD.F64        D18, D22, D18
23608E:  VMUL.F64        D19, D19, D23
236092:  VLDR            D24, [R3]
236096:  ADD.W           R3, R1, #0x840
23609A:  VLDR            D20, [R9,#0x130]
23609E:  VADD.F64        D18, D18, D19
2360A2:  VMUL.F64        D20, D20, D24
2360A6:  VLDR            D22, [R3]
2360AA:  ADD.W           R3, R1, #0x850
2360AE:  VLDR            D21, [R9,#0x140]
2360B2:  VADD.F64        D18, D18, D20
2360B6:  VMUL.F64        D21, D21, D22
2360BA:  VLDR            D23, [R3]
2360BE:  ADD.W           R3, R1, #0x860
2360C2:  VLDR            D19, [R9,#0x150]
2360C6:  VADD.F64        D18, D18, D21
2360CA:  VMUL.F64        D19, D19, D23
2360CE:  VLDR            D22, [R3]
2360D2:  ADD.W           R3, R1, #0x870
2360D6:  VLDR            D21, [R9,#0x160]
2360DA:  MOVS            R1, #0
2360DC:  VADD.F64        D18, D18, D19
2360E0:  MOVT            R1, #0xFFFF
2360E4:  CMP             R6, R1
2360E6:  VMUL.F64        D21, D21, D22
2360EA:  VLDR            D20, [R9,#0x170]
2360EE:  VLDR            D23, [R3]
2360F2:  VADD.F64        D18, D18, D21
2360F6:  VMUL.F64        D19, D20, D23
2360FA:  VADD.F64        D18, D18, D19
2360FE:  VCVT.S32.F64    S0, D18
236102:  IT LE
236104:  MOVLE           R6, R1
236106:  ADD             R6, R8
236108:  LDR.W           R10, [SP,#0x50+var_3C]
23610C:  ADD.W           R1, R6, #0x8000
236110:  MOVW            R6, #0x7FFF
236114:  BIC.W           R12, R1, R6
236118:  LSRS            R1, R1, #0xF
23611A:  ADD.W           R1, R4, R1,LSL#2
23611E:  ADDS            R1, #4
236120:  STR             R1, [SP,#0x50+var_20]
236122:  VMOV            R3, S0
236126:  VCMPE.F64       D18, D16
23612A:  VMRS            APSR_nzcv, FPSCR
23612E:  BLE             loc_236136
236130:  STRH            R6, [R4]
236132:  ADDS            R0, #1
236134:  B               loc_236148
236136:  VCMPE.F64       D18, D17
23613A:  VMRS            APSR_nzcv, FPSCR
23613E:  ITEE GE
236140:  STRHGE          R3, [R4]
236142:  STRHLT.W        LR, [R4]
236146:  ADDLT           R0, #1
236148:  SUB.W           R5, R5, #0x8000
23614C:  ADDS            R4, #4
23614E:  CMP.W           R5, #0x10000
236152:  BGE             loc_236126
236154:  SUB.W           R1, R8, #0x8000
236158:  SUB.W           R8, R1, R12
23615C:  B               loc_236164
23615E:  STR             R4, [SP,#0x50+var_20]
236160:  LDR.W           R10, [SP,#0x50+var_3C]
236164:  LDR             R3, [SP,#0x50+var_40]
236166:  ADD.W           R4, R9, R10,LSL#4
23616A:  MOVS            R1, #0xF
23616C:  MOVW            R12, #0x7FFF
236170:  MOV             R10, R3
236172:  LDR             R3, [SP,#0x50+var_24]
236174:  LDR.W           R11, [R3]
236178:  ADD.W           R3, R11, R8
23617C:  CMP.W           R3, #0x8000
236180:  BGE             loc_236198
236182:  MOV             R8, R3
236184:  B               loc_236310
236186:  ALIGN 4
236188:  DCFD 32767.0
236190:  DCFD -32768.0
236198:  VLDR            D18, [R4,#-8]
23619C:  MVNS            R5, R3
23619E:  VLDR            D23, [R10]
2361A2:  SUB.W           LR, R8, #0x8000
2361A6:  VLDR            D19, [R4,#-0x10]
2361AA:  VLDR            D22, [R2,#-0x78]
2361AE:  VNMUL.F64       D18, D18, D23
2361B2:  VMUL.F64        D19, D19, D22
2361B6:  VLDR            D20, [R4,#-0x18]
2361BA:  VLDR            D24, [R2,#-0x70]
2361BE:  VSUB.F64        D18, D18, D19
2361C2:  VMUL.F64        D20, D20, D24
2361C6:  VLDR            D21, [R4,#-0x20]
2361CA:  VLDR            D22, [R2,#-0x68]
2361CE:  VSUB.F64        D18, D18, D20
2361D2:  VMUL.F64        D21, D21, D22
2361D6:  VLDR            D19, [R2,#-0x60]
2361DA:  VLDR            D23, [R4,#-0x28]
2361DE:  VSUB.F64        D18, D18, D21
2361E2:  VMUL.F64        D19, D23, D19
2361E6:  VLDR            D20, [R2,#-0x58]
2361EA:  VLDR            D22, [R4,#-0x30]
2361EE:  VSUB.F64        D18, D18, D19
2361F2:  VMUL.F64        D20, D22, D20
2361F6:  VLDR            D21, [R2,#-0x50]
2361FA:  VLDR            D23, [R4,#-0x38]
2361FE:  VSUB.F64        D18, D18, D20
236202:  VMUL.F64        D21, D23, D21
236206:  VLDR            D19, [R2,#-0x48]
23620A:  VLDR            D22, [R4,#-0x40]
23620E:  VSUB.F64        D18, D18, D21
236212:  VMUL.F64        D19, D22, D19
236216:  VLDR            D20, [R2,#-0x40]
23621A:  VLDR            D23, [R4,#-0x48]
23621E:  VSUB.F64        D18, D18, D19
236222:  VMUL.F64        D20, D23, D20
236226:  VLDR            D21, [R2,#-0x38]
23622A:  VLDR            D22, [R4,#-0x50]
23622E:  VSUB.F64        D18, D18, D20
236232:  VMUL.F64        D21, D22, D21
236236:  VLDR            D19, [R2,#-0x30]
23623A:  VLDR            D23, [R4,#-0x58]
23623E:  VSUB.F64        D18, D18, D21
236242:  VMUL.F64        D19, D23, D19
236246:  VLDR            D20, [R2,#-0x28]
23624A:  VLDR            D22, [R4,#-0x60]
23624E:  VSUB.F64        D18, D18, D19
236252:  VMUL.F64        D20, D22, D20
236256:  VLDR            D25, [R2,#-0x20]
23625A:  VLDR            D26, [R4,#-0x68]
23625E:  VSUB.F64        D18, D18, D20
236262:  VMUL.F64        D22, D26, D25
236266:  VLDR            D24, [R2,#-0x18]
23626A:  VLDR            D19, [R4,#-0x70]
23626E:  VSUB.F64        D18, D18, D22
236272:  VMUL.F64        D19, D19, D24
236276:  VLDR            D23, [R2,#-0x10]
23627A:  VLDR            D20, [R4,#-0x78]
23627E:  VSUB.F64        D18, D18, D19
236282:  VMUL.F64        D20, D20, D23
236286:  VLDR            D21, [R2,#-8]
23628A:  MOVS            R2, #0
23628C:  VLDR            D22, [R4,#-0x80]
236290:  MOVT            R2, #0xFFFF
236294:  VSUB.F64        D18, D18, D20
236298:  CMP             R5, R2
23629A:  VMUL.F64        D19, D22, D21
23629E:  VSUB.F64        D18, D18, D19
2362A2:  VCVT.S32.F64    S0, D18
2362A6:  IT LE
2362A8:  MOVLE           R5, R2
2362AA:  ADD.W           R2, R3, #0x8000
2362AE:  ADDS            R3, R2, R5
2362B0:  MOV             R5, #0x3FFFE
2362B8:  AND.W           R6, R5, R3,LSR#14
2362BC:  LDR             R5, [SP,#0x50+var_20]
2362BE:  BFC.W           R3, #0, #0xF
2362C2:  STR             R6, [SP,#0x50+var_28]
2362C4:  MOV.W           R6, #0x8000
2362C8:  VMOV            R9, S0
2362CC:  VCMPE.F64       D18, D16
2362D0:  VMRS            APSR_nzcv, FPSCR
2362D4:  BLE             loc_2362DE
2362D6:  STRH.W          R12, [R5]
2362DA:  ADDS            R0, #1
2362DC:  B               loc_2362F0
2362DE:  VCMPE.F64       D18, D17
2362E2:  VMRS            APSR_nzcv, FPSCR
2362E6:  ITEE GE
2362E8:  STRHGE.W        R9, [R5]
2362EC:  STRHLT          R6, [R5]
2362EE:  ADDLT           R0, #1
2362F0:  SUB.W           R2, R2, #0x8000
2362F4:  ADDS            R5, #4
2362F6:  CMP.W           R2, #0x10000
2362FA:  BGE             loc_2362CC
2362FC:  ADD.W           R2, LR, R11
236300:  SUB.W           R8, R2, R3
236304:  LDR             R3, [SP,#0x50+var_28]
236306:  LDR             R2, [SP,#0x50+var_20]
236308:  ADD.W           R2, R2, R3,LSL#1
23630C:  ADDS            R2, #4
23630E:  STR             R2, [SP,#0x50+var_20]
236310:  SUB.W           R3, R10, #0x80
236314:  SUB.W           R4, R4, #0x100
236318:  SUBS            R1, #1
23631A:  MOV             R2, R10
23631C:  BNE.W           loc_236170
236320:  LDR             R3, [SP,#0x50+var_2C]
236322:  MOVW            R2, #0x9188
236326:  LDR             R1, [SP,#0x50+var_34]
236328:  ADD.W           R1, R1, R3,LSL#2
23632C:  STR.W           R8, [R1,R2]
236330:  LDR             R1, [SP,#0x50+var_30]
236332:  CBZ             R1, loc_236346
236334:  LDR             R1, [SP,#0x50+var_48]
236336:  CMP             R3, #0
236338:  LDR             R2, [SP,#0x50+var_20]
23633A:  LDR             R1, [R1]
23633C:  IT NE
23633E:  SUBNE           R2, #2
236340:  SUBS            R1, R2, R1
236342:  LDR             R2, [SP,#0x50+var_44]
236344:  STR             R1, [R2]
236346:  ADD             SP, SP, #0x34 ; '4'
236348:  POP.W           {R8-R11}
23634C:  POP             {R4-R7,PC}
