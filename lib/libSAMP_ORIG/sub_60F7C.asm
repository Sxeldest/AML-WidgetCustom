; =========================================================
; Game Engine Function: sub_60F7C
; Address            : 0x60F7C - 0x612FE
; =========================================================

60F7C:  PUSH            {R4-R7,LR}
60F7E:  ADD             R7, SP, #0xC
60F80:  PUSH.W          {R8-R10}
60F84:  LDR             R1, =(aSampOrig - 0x60F8E); "SAMP_ORIG" ...
60F86:  MOVS            R0, #4; prio
60F88:  LDR             R2, =(aInitializerend - 0x60F90); "initializeRenderWare()" ...
60F8A:  ADD             R1, PC; "SAMP_ORIG"
60F8C:  ADD             R2, PC; "initializeRenderWare()"
60F8E:  BLX             __android_log_print
60F92:  LDR             R0, =(off_114AA8 - 0x60FA2)
60F94:  MOVW            R5, #0xC8FC
60F98:  LDR             R1, =(dword_11751C - 0x60FA8)
60F9A:  MOVT            R5, #0x9F
60F9E:  ADD             R0, PC; off_114AA8
60FA0:  LDR             R2, =(dword_117520 - 0x60FAC)
60FA2:  LDR             R3, =(dword_11752C - 0x60FB0)
60FA4:  ADD             R1, PC; dword_11751C
60FA6:  LDR             R0, [R0]; dword_1A4404
60FA8:  ADD             R2, PC; dword_117520
60FAA:  LDR             R6, =(off_117544 - 0x60FB8)
60FAC:  ADD             R3, PC; dword_11752C
60FAE:  LDR             R4, =(dword_11754C - 0x60FBC)
60FB0:  LDR.W           R8, [R0]
60FB4:  ADD             R6, PC; off_117544
60FB6:  LDR             R0, =(dword_11755C - 0x60FCC)
60FB8:  ADD             R4, PC; dword_11754C
60FBA:  ADD             R5, R8
60FBC:  STR             R5, [R1]
60FBE:  MOVW            R1, #0x5F61
60FC2:  LDR             R5, =(dword_117524 - 0x60FDE)
60FC4:  MOVT            R1, #0x1D
60FC8:  ADD             R0, PC; dword_11755C
60FCA:  ADD             R1, R8
60FCC:  STR             R1, [R2]
60FCE:  MOVW            R1, #0x5A95
60FD2:  MOVW            R2, #0x822D
60FD6:  MOVT            R1, #0x1D
60FDA:  ADD             R5, PC; dword_117524
60FDC:  ADD             R1, R8
60FDE:  STR             R1, [R3]
60FE0:  MOVW            R3, #0x87A9
60FE4:  MOVT            R2, #0x1D
60FE8:  MOVT            R3, #0x1D
60FEC:  ADD.W           R12, R8, R3
60FF0:  MOVW            R3, #0x67B1
60FF4:  ADD.W           LR, R8, R2
60FF8:  MOVT            R3, #0x21 ; '!'
60FFC:  STR.W           LR, [R6]
61000:  STR.W           R12, [R4]
61004:  ADD             R3, R8
61006:  LDR             R6, =(dword_117528 - 0x61016)
61008:  MOV             R9, R5
6100A:  STR             R3, [R0]
6100C:  ADD.W           R5, R1, #0x2DC
61010:  LDR             R4, =(dword_117530 - 0x61020)
61012:  ADD             R6, PC; dword_117528
61014:  STR.W           R5, [R9]
61018:  ADDS            R2, R1, #4
6101A:  LDR             R5, =(dword_117534 - 0x6102A)
6101C:  ADD             R4, PC; dword_117530
6101E:  STR             R2, [R6]
61020:  ADD.W           R6, R1, #0x300
61024:  LDR             R2, =(dword_117538 - 0x61034)
61026:  ADD             R5, PC; dword_117534
61028:  STR             R6, [R4]
6102A:  ADD.W           R6, R1, #0xB8
6102E:  LDR             R4, =(dword_11753C - 0x6103E)
61030:  ADD             R2, PC; dword_117538
61032:  STR             R6, [R5]
61034:  ADD.W           R6, R1, #0x24 ; '$'
61038:  LDR             R5, =(dword_117540 - 0x61048)
6103A:  ADD             R4, PC; dword_11753C
6103C:  STR             R6, [R2]
6103E:  ADD.W           R6, R1, #0x3F0
61042:  LDR             R2, =(dword_117548 - 0x61052)
61044:  ADD             R5, PC; dword_117540
61046:  STR             R6, [R4]
61048:  ADD.W           R1, R1, #0x314
6104C:  LDR             R4, =(dword_117550 - 0x61058)
6104E:  ADD             R2, PC; dword_117548
61050:  LDR             R6, =(off_117554 - 0x61062)
61052:  STR             R1, [R5]
61054:  ADD             R4, PC; dword_117550
61056:  LDR             R1, =(dword_117558 - 0x6106C)
61058:  ADD.W           R5, LR, #0x468
6105C:  STR             R5, [R2]
6105E:  ADD             R6, PC; off_117554
61060:  LDR             R2, =(off_117564 - 0x61076)
61062:  ADD.W           R5, R12, #0x130
61066:  STR             R5, [R4]
61068:  ADD             R1, PC; dword_117558
6106A:  LDR             R5, =(off_117560 - 0x61086)
6106C:  ADD.W           R4, R3, #0x680
61070:  STR             R4, [R6]
61072:  ADD             R2, PC; off_117564
61074:  LDR             R6, =(off_117568 - 0x61090)
61076:  ADDS            R3, #0x16
61078:  STR             R3, [R1]
6107A:  MOV             R1, #0x216F75
61082:  ADD             R5, PC; off_117560
61084:  ADD.W           R3, R8, R1
61088:  LDR             R1, =(off_11756C - 0x6109A)
6108A:  LDR             R4, =(dword_117570 - 0x610BA)
6108C:  ADD             R6, PC; off_117568
6108E:  STR             R3, [R2]
61090:  ADD.W           R2, LR, #0x240
61094:  LDR             R0, =(dword_117574 - 0x610BE)
61096:  ADD             R1, PC; off_11756C
61098:  STR             R2, [R5]
6109A:  MOV             R2, #0x1DA90D
610A2:  ADD.W           R3, R8, R2
610A6:  ADD.W           R2, R3, #0x144
610AA:  STR             R2, [R6]
610AC:  MOVW            R2, #0xA4F9
610B0:  LDR             R5, =(dword_117578 - 0x610CE)
610B2:  MOVT            R2, #0x1D
610B6:  ADD             R4, PC; dword_117570
610B8:  ADD             R2, R8
610BA:  ADD             R0, PC; dword_117574
610BC:  ADD.W           R6, R2, #0x358
610C0:  STR             R6, [R1]
610C2:  LDR             R1, =(dword_11757C - 0x610D2)
610C4:  ADD.W           R6, R2, #0x234
610C8:  STR             R6, [R4]
610CA:  ADD             R5, PC; dword_117578
610CC:  LDR             R6, =(dword_117580 - 0x610E4)
610CE:  ADD             R1, PC; dword_11757C
610D0:  ADD.W           R4, R3, #0x74 ; 't'
610D4:  STR             R4, [R0]
610D6:  LDR             R4, =(dword_117584 - 0x610F8)
610D8:  MOV             LR, R1
610DA:  ADD.W           R1, R3, #0xE8
610DE:  STR             R1, [R5]
610E0:  ADD             R6, PC; dword_117580
610E2:  LDR             R0, =(dword_117588 - 0x61102)
610E4:  ADD.W           R5, R2, #0x2BC
610E8:  STR.W           R5, [LR]
610EC:  LDR             R5, =(dword_11758C - 0x61108)
610EE:  ADD.W           R1, R2, #0x308
610F2:  STR             R1, [R6]
610F4:  ADD             R4, PC; dword_117584
610F6:  LDR             R1, =(dword_117590 - 0x61106)
610F8:  ADD.W           R6, R2, #0x214
610FC:  STR             R6, [R4]
610FE:  ADD             R0, PC; dword_117588
61100:  LDR             R4, =(dword_117594 - 0x6111A)
61102:  ADD             R1, PC; dword_117590
61104:  ADD             R5, PC; dword_11758C
61106:  ADD.W           R6, R2, #0x3A0
6110A:  STR             R6, [R0]
6110C:  MOV             LR, R1
6110E:  LDR             R6, =(dword_117598 - 0x6112C)
61110:  ADD.W           R1, R3, #0x2C ; ','
61114:  STR             R1, [R5]
61116:  ADD             R4, PC; dword_117594
61118:  LDR             R0, =(dword_11759C - 0x61130)
6111A:  ADD.W           R5, R2, #0x1F4
6111E:  STR.W           R5, [LR]
61122:  ADD.W           R1, R2, #0x264
61126:  LDR             R5, =(dword_1175A0 - 0x6113A)
61128:  ADD             R6, PC; dword_117598
6112A:  STR             R1, [R4]
6112C:  ADD             R0, PC; dword_11759C
6112E:  LDR             R1, =(dword_1175A4 - 0x6113C)
61130:  ADD.W           R4, R2, #0x2E8
61134:  STR             R4, [R6]
61136:  ADD             R5, PC; dword_1175A0
61138:  ADD             R1, PC; dword_1175A4
6113A:  LDR             R4, =(dword_1175A8 - 0x6115A)
6113C:  ADD.W           R6, R3, #0xB0
61140:  STR             R6, [R0]
61142:  LDR             R6, =(dword_1175AC - 0x6115E)
61144:  MOV             LR, R1
61146:  ADD.W           R1, R3, #0x1E8
6114A:  STR             R1, [R5]
6114C:  LDR             R5, =(off_1175B0 - 0x61162)
6114E:  ADD.W           R1, R2, #0x240
61152:  STR.W           R1, [LR]
61156:  ADD             R4, PC; dword_1175A8
61158:  LDR             R1, =(off_1175B4 - 0x61166)
6115A:  ADD             R6, PC; dword_1175AC
6115C:  LDR             R0, =(off_1175B8 - 0x61176)
6115E:  ADD             R5, PC; off_1175B0
61160:  STR             R3, [R4]
61162:  ADD             R1, PC; off_1175B4
61164:  LDR             R4, =(dword_1175BC - 0x6118E)
61166:  ADD.W           R3, R2, #0x334
6116A:  STR             R3, [R6]
6116C:  ADD.W           R6, R12, #0x6F8
61170:  LDR             R3, =(dword_1175C0 - 0x61196)
61172:  ADD             R0, PC; off_1175B8
61174:  STR             R6, [R5]
61176:  ADD.W           R6, R12, #0x750
6117A:  STR             R6, [R1]
6117C:  MOV             R1, #0x1D8F85
61184:  LDR             R5, =(dword_1175C4 - 0x611A6)
61186:  ADD             R1, R8
61188:  STR             R1, [R0]
6118A:  ADD             R4, PC; dword_1175BC
6118C:  LDR             R0, =(dword_1175C8 - 0x611A4)
6118E:  ADD.W           R6, R12, #0x7B0
61192:  ADD             R3, PC; dword_1175C0
61194:  STR             R6, [R4]
61196:  MOV             R6, #0x1D95E1
6119E:  LDR             R4, =(dword_1175CC - 0x611B6)
611A0:  ADD             R0, PC; dword_1175C8
611A2:  ADD             R5, PC; dword_1175C4
611A4:  ADD             R6, R8
611A6:  STR             R6, [R3]
611A8:  MOV             LR, R0
611AA:  LDR             R0, =(dword_1175D0 - 0x611CE)
611AC:  ADD.W           R3, R1, #0x9C
611B0:  STR             R3, [R5]
611B2:  ADD             R4, PC; dword_1175CC
611B4:  LDR             R3, =(dword_1175D4 - 0x611DA)
611B6:  ADD.W           R5, R1, #0x37C
611BA:  STR.W           R5, [LR]
611BE:  ADD.W           R1, R1, #0x1C4
611C2:  LDR             R5, =(dword_1175D8 - 0x611DE)
611C4:  STR             R1, [R4]
611C6:  MOVW            R1, #0x9E5D
611CA:  ADD             R0, PC; dword_1175D0
611CC:  MOVT            R1, #0x1D
611D0:  LDR             R4, =(dword_1175DC - 0x611F6)
611D2:  ADD             R1, R8
611D4:  STR             R1, [R0]
611D6:  ADD             R3, PC; dword_1175D4
611D8:  LDR             R0, =(off_1175E0 - 0x611E6)
611DA:  ADD             R5, PC; dword_1175D8
611DC:  MOV             R12, R3
611DE:  ADD.W           R3, R6, #0x24C
611E2:  ADD             R0, PC; off_1175E0
611E4:  STR.W           R3, [R12]
611E8:  ADD.W           R3, R6, #0x7E0
611EC:  LDR             R6, =(dword_1175E4 - 0x6120A)
611EE:  MOV             LR, R0
611F0:  LDR             R0, =(dword_1175E8 - 0x611FC)
611F2:  ADD             R4, PC; dword_1175DC
611F4:  STR             R3, [R5]
611F6:  LDR             R5, =(off_1175EC - 0x61216)
611F8:  ADD             R0, PC; dword_1175E8
611FA:  ADD.W           R3, R1, #0x678
611FE:  LDR             R1, =(dword_1175F0 - 0x61220)
61200:  STR             R3, [R4]
61202:  MOV             R9, R0
61204:  LDR             R4, =(dword_1175F4 - 0x61222)
61206:  ADD             R6, PC; dword_1175E4
61208:  STR.W           R2, [LR]
6120C:  ADD.W           R3, R2, #0xFC
61210:  LDR             R0, =(off_1175F8 - 0x6121E)
61212:  ADD             R5, PC; off_1175EC
61214:  STR             R3, [R6]
61216:  ADD.W           R3, R2, #0x19C
6121A:  ADD             R0, PC; off_1175F8
6121C:  ADD             R1, PC; dword_1175F0
6121E:  ADD             R4, PC; dword_1175F4
61220:  MOV             LR, R0
61222:  LDR             R0, =(dword_1175FC - 0x61230)
61224:  STR.W           R3, [R9]
61228:  ADD.W           R3, R2, #0x24 ; '$'
6122C:  ADD             R0, PC; dword_1175FC
6122E:  MOV             R12, R0
61230:  LDR             R0, =(dword_117600 - 0x6123C)
61232:  STR             R3, [R5]
61234:  MOVW            R3, #0xE005
61238:  ADD             R0, PC; dword_117600
6123A:  MOVT            R3, #0x21 ; '!'
6123E:  ADD             R3, R8
61240:  MOV             R9, R0
61242:  LDR             R0, =(dword_117604 - 0x6125C)
61244:  STR             R3, [R1]
61246:  MOV             R1, #0x21E831
6124E:  LDR             R6, =(off_117608 - 0x61266)
61250:  ADD             R1, R8
61252:  STR             R1, [R4]
61254:  ADDS            R1, #0x44 ; 'D'
61256:  LDR             R4, =(dword_11760C - 0x61286)
61258:  ADD             R0, PC; dword_117604
6125A:  STR.W           R1, [LR]
6125E:  MOVW            R1, #0x28F5
61262:  ADD             R6, PC; off_117608
61264:  MOVT            R1, #0x1E
61268:  MOV             R10, R0
6126A:  ADD.W           R0, R8, R1
6126E:  LDR             R1, =(dword_117610 - 0x6128A)
61270:  STR.W           R0, [R12]
61274:  ADD.W           R2, R0, #0x10
61278:  LDR             R3, =(dword_117614 - 0x61290)
6127A:  ADD.W           R5, R0, #0x54 ; 'T'
6127E:  STR.W           R2, [R9]
61282:  ADD             R4, PC; dword_11760C
61284:  LDR             R2, =(off_117618 - 0x61294)
61286:  ADD             R1, PC; dword_117610
61288:  STR.W           R5, [R10]
6128C:  ADD             R3, PC; dword_117614
6128E:  LDR             R5, =(off_11761C - 0x61296)
61290:  ADD             R2, PC; off_117618
61292:  ADD             R5, PC; off_11761C
61294:  MOV             R12, R5
61296:  ADD.W           R5, R0, #0x20 ; ' '
6129A:  STR             R5, [R6]
6129C:  ADD.W           R5, R0, #0x64 ; 'd'
612A0:  LDR             R6, =(dword_117620 - 0x612AE)
612A2:  STR             R5, [R4]
612A4:  ADD.W           R4, R0, #0x7C ; '|'
612A8:  LDR             R5, =(dword_117624 - 0x612BC)
612AA:  ADD             R6, PC; dword_117620
612AC:  STR             R4, [R1]
612AE:  ADD.W           R1, R0, #0x94
612B2:  LDR             R4, =(dword_117628 - 0x612C0)
612B4:  ADDS            R0, #0xA4
612B6:  STR             R1, [R3]
612B8:  ADD             R5, PC; dword_117624
612BA:  LDR             R1, =(dword_11762C - 0x612D0)
612BC:  ADD             R4, PC; dword_117628
612BE:  STR             R0, [R2]
612C0:  MOV             R0, #0x1DB765
612C8:  LDR             R2, =(dword_117630 - 0x612DE)
612CA:  ADD             R0, R8
612CC:  ADD             R1, PC; dword_11762C
612CE:  ADD.W           R3, R0, #0x1880
612D2:  STR.W           R3, [R12]
612D6:  MOVW            R3, #0xA1C5
612DA:  ADD             R2, PC; dword_117630
612DC:  MOVT            R3, #0x20 ; ' '
612E0:  ADD             R3, R8
612E2:  STR             R3, [R6]
612E4:  ADD.W           R3, R3, #0x2B0
612E8:  STR             R3, [R5]
612EA:  ADD.W           R3, R0, #0xD8
612EE:  STR             R3, [R4]
612F0:  ADD.W           R3, R0, #0x358
612F4:  STR             R3, [R1]
612F6:  STR             R0, [R2]
612F8:  POP.W           {R8-R10}
612FC:  POP             {R4-R7,PC}
