; =========================================================
; Game Engine Function: sub_A9EE0
; Address            : 0xA9EE0 - 0xAA598
; =========================================================

A9EE0:  PUSH            {R4-R7,LR}
A9EE2:  ADD             R7, SP, #0xC
A9EE4:  PUSH.W          {R8-R11}
A9EE8:  SUB             SP, SP, #4
A9EEA:  VPUSH           {D8-D15}
A9EEE:  SUB             SP, SP, #0x40
A9EF0:  STR             R3, [SP,#0xA0+var_7C]
A9EF2:  MOV             R8, R1
A9EF4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xA9F06)
A9EF8:  ADD.W           LR, R7, #8
A9EFC:  VMOV.F32        S16, #1.0
A9F00:  LDR             R5, [R7,#arg_C]
A9F02:  ADD             R1, PC; __stack_chk_guard_ptr
A9F04:  LDM.W           LR, {R6,R12,LR}
A9F08:  MOV.W           R10, #0
A9F0C:  LDR             R1, [R1]; __stack_chk_guard
A9F0E:  SUBS.W          R3, LR, R6
A9F12:  SBC.W           R4, R5, R12
A9F16:  SUBS.W          R6, R6, LR
A9F1A:  VLDR            S23, [R7,#arg_14]
A9F1E:  SBCS.W          R5, R12, R5
A9F22:  LDR             R1, [R1]
A9F24:  VMOV.F32        S0, #-4.0
A9F28:  STR             R1, [SP,#0xA0+var_64]
A9F2A:  MOV.W           R1, #0
A9F2E:  IT CC
A9F30:  MOVCC           R1, #1
A9F32:  CMP             R1, #0
A9F34:  VCMP.F32        S23, S16
A9F38:  STR             R4, [SP,#0xA0+var_80]
A9F3A:  IT NE
A9F3C:  MOVNE           R5, R4
A9F3E:  STR             R3, [SP,#0xA0+var_84]
A9F40:  IT NE
A9F42:  MOVNE           R6, R3
A9F44:  VMRS            APSR_nzcv, FPSCR
A9F48:  BIC.W           R1, R2, #1
A9F4C:  IT NE
A9F4E:  MOVNE.W         R10, #1
A9F52:  STR             R1, [SP,#0xA0+var_88]
A9F54:  SUBS            R1, #8
A9F56:  CLZ.W           R1, R1
A9F5A:  STR             R2, [SP,#0xA0+var_8C]
A9F5C:  MOV.W           R9, R1,LSR#5
A9F60:  LDR             R1, =(off_114D5C - 0xA9F6A)
A9F62:  STRD.W          R5, R6, [SP,#0xA0+var_98]
A9F66:  ADD             R1, PC; off_114D5C
A9F68:  LDR             R1, [R1]; dword_1ACF68
A9F6A:  STR             R1, [SP,#0xA0+var_90]
A9F6C:  LDR             R4, [R1]
A9F6E:  MOVW            R1, #0x1588
A9F72:  ADD.W           R11, R4, R1
A9F76:  LDR             R1, [R7,#arg_18]
A9F78:  AND.W           R1, R1, #1
A9F7C:  STRD.W          R1, R0, [SP,#0xA0+var_74]
A9F80:  VLDR            S22, [R11]
A9F84:  ADD.W           R0, R0, R1,LSL#2
A9F88:  VLDR            S20, [R0]
A9F8C:  VLDR            S28, [R0,#8]
A9F90:  VSUB.F32        S2, S28, S20
A9F94:  VADD.F32        S30, S2, S0
A9F98:  BEQ             loc_A9FCA
A9F9A:  CMP             R5, #0
A9F9C:  BMI             loc_A9FCA
A9F9E:  ADDS            R0, R6, #1
A9FA0:  MOV             R6, R8
A9FA2:  ADC.W           R1, R5, #0
A9FA6:  MOV             R5, R12
A9FA8:  MOV             R8, LR
A9FAA:  BLX             sub_108B88
A9FAE:  VMOV            S0, R0
A9FB2:  MOV             LR, R8
A9FB4:  MOV             R8, R6
A9FB6:  MOV             R12, R5
A9FB8:  VDIV.F32        S0, S30, S0
A9FBC:  VCMP.F32        S0, S22
A9FC0:  VMRS            APSR_nzcv, FPSCR
A9FC4:  IT GE
A9FC6:  VMOVGE.F32      S22, S0
A9FCA:  VCMP.F32        S22, S30
A9FCE:  AND.W           R0, R9, R10
A9FD2:  VMOV.F32        S24, S30
A9FD6:  STR             R0, [SP,#0xA0+var_78]
A9FD8:  VMRS            APSR_nzcv, FPSCR
A9FDC:  IT MI
A9FDE:  VMOVMI.F32      S24, S22
A9FE2:  VMOV.F32        S18, #0.5
A9FE6:  LDR.W           R0, [R11,#0x448]
A9FEA:  VMOV.F32        S22, #2.0
A9FEE:  CMP             R0, R8
A9FF0:  VMUL.F32        S17, S24, S18
A9FF4:  VADD.F32        S0, S20, S22
A9FF8:  VADD.F32        S20, S17, S0
A9FFC:  BNE             loc_AA064
A9FFE:  LDR.W           R0, [R11,#0x470]
AA002:  MOVS            R2, #0
AA004:  LDR.W           R9, [R7,#arg_10]
AA008:  CMP             R0, #2
AA00A:  BEQ             loc_AA06E
AA00C:  LDR             R5, [SP,#0xA0+var_70]
AA00E:  CMP             R0, #1
AA010:  LDR.W           R8, [R7,#arg_0]
AA014:  BNE.W           loc_AA3E2
AA018:  LDRB.W          R0, [R4,#0xE8]
AA01C:  CMP             R0, #0
AA01E:  BEQ             loc_AA0CE
AA020:  VSUB.F32        S0, S30, S24
AA024:  VCMP.F32        S0, #0.0
AA028:  VMRS            APSR_nzcv, FPSCR
AA02C:  BLE             loc_AA0DC
AA02E:  LDR             R1, [SP,#0xA0+var_74]
AA030:  ADD.W           R0, R4, R1,LSL#2
AA034:  VLDR            S2, [R0,#0xE0]
AA038:  MOV             R0, R1
AA03A:  VSUB.F32        S2, S2, S20
AA03E:  VDIV.F32        S0, S2, S0
AA042:  VCMP.F32        S0, S16
AA046:  VLDR            S2, =0.0
AA04A:  VMRS            APSR_nzcv, FPSCR
AA04E:  VCMP.F32        S0, #0.0
AA052:  IT GT
AA054:  VMOVGT.F32      S0, S16
AA058:  VMRS            APSR_nzcv, FPSCR
AA05C:  IT MI
AA05E:  VMOVMI.F32      S0, S2
AA062:  B               loc_AA0E2
AA064:  MOVS            R2, #0
AA066:  LDR             R5, [SP,#0xA0+var_70]
AA068:  LDR.W           R8, [R7,#arg_0]
AA06C:  B               loc_AA3E2
AA06E:  ADD             R0, SP, #0xA0+var_6C; int
AA070:  STR             R2, [SP,#0xA0+var_A0]; float
AA072:  MOVS            R1, #3; int
AA074:  MOVS            R2, #5; int
AA076:  MOVS            R3, #0; int
AA078:  BL              sub_99284
AA07C:  VLDR            S2, [SP,#0xA0+var_68]
AA080:  LDR             R0, [SP,#0xA0+var_74]
AA082:  VNEG.F32        S19, S2
AA086:  VLDR            S0, [SP,#0xA0+var_6C]
AA08A:  CMP             R0, #0
AA08C:  IT EQ
AA08E:  VMOVEQ.F32      S19, S0
AA092:  LDR.W           R0, [R11,#0x53C]
AA096:  CMP             R0, R8
AA098:  ITT EQ
AA09A:  LDRBEQ.W        R0, [R11,#0x454]
AA09E:  CMPEQ           R0, #0
AA0A0:  BEQ.W           loc_AA2BA
AA0A4:  ADD.W           LR, R7, #8
AA0A8:  LDR             R5, [SP,#0xA0+var_70]
AA0AA:  VCMP.F32        S19, #0.0
AA0AE:  LDM.W           LR, {R8,R12,LR}
AA0B2:  VMRS            APSR_nzcv, FPSCR
AA0B6:  BEQ.W           loc_AA3E0
AA0BA:  LDR             R1, [R7,#arg_C]
AA0BC:  EOR.W           R0, LR, R8
AA0C0:  EOR.W           R1, R1, R12
AA0C4:  ORRS            R0, R1
AA0C6:  BNE             loc_AA162
AA0C8:  VLDR            S21, =0.0
AA0CC:  B               loc_AA2FA
AA0CE:  MOV             R4, R12
AA0D0:  MOV             R6, LR
AA0D2:  BL              sub_8B080
AA0D6:  MOV             LR, R6
AA0D8:  MOV             R12, R4
AA0DA:  B               loc_AA3E0
AA0DC:  VLDR            S0, =0.0
AA0E0:  LDR             R0, [SP,#0xA0+var_74]
AA0E2:  VSUB.F32        S19, S16, S0
AA0E6:  CMP             R0, #0
AA0E8:  IT EQ
AA0EA:  VMOVEQ.F32      S19, S0
AA0EE:  LDR             R0, [SP,#0xA0+var_78]
AA0F0:  CBZ             R0, loc_AA134
AA0F2:  VCMP.F32        S19, #0.0
AA0F6:  MOV             R4, R12
AA0F8:  VMRS            APSR_nzcv, FPSCR
AA0FC:  BPL.W           loc_AA202
AA100:  VLDR            S21, =0.0
AA104:  VMOV            R1, S23; y
AA108:  VDIV.F32        S0, S19, S21
AA10C:  VSUB.F32        S0, S16, S0
AA110:  VMOV            R0, S0; x
AA114:  BLX             powf
AA118:  MOV             R6, R0
AA11A:  MOV             R0, R8
AA11C:  MOV             R1, R4
AA11E:  BLX             sub_108CE8
AA122:  VMOV            S0, R0
AA126:  VMOV            S2, R6
AA12A:  VMLA.F32        S21, S0, S2
AA12E:  VMOV            R0, S21
AA132:  B               loc_AA234
AA134:  LDR             R0, [SP,#0xA0+var_88]
AA136:  CMP             R0, #8
AA138:  BNE.W           loc_AA23E
AA13C:  MOV             R0, R8
AA13E:  MOV             R1, R12
AA140:  MOV             R4, R12
AA142:  BLX             sub_108CE8
AA146:  MOV             R6, R0
AA148:  LDRD.W          R0, R1, [SP,#0xA0+var_84]
AA14C:  BLX             sub_108CE8
AA150:  VMOV            S0, R0
AA154:  VMOV            S2, R6
AA158:  VMLA.F32        S2, S0, S19
AA15C:  VMOV            R0, S2
AA160:  B               loc_AA234
AA162:  LDR             R1, [SP,#0xA0+var_7C]
AA164:  MOV             R0, LR
AA166:  LDR             R3, [R7,#arg_C]
AA168:  SUBS.W          R2, R8, R0
AA16C:  MOV             R9, R12
AA16E:  LDRD.W          R12, LR, [R1]
AA172:  SBCS.W          R2, R9, R3
AA176:  MOV.W           R6, #0
AA17A:  IT CC
AA17C:  MOVCC           R6, #1
AA17E:  MOV             R11, R5
AA180:  CMP             R6, #0
AA182:  MOV             R5, R9
AA184:  MOV             R2, R8
AA186:  MOV.W           R1, #0
AA18A:  ITT NE
AA18C:  MOVNE           R5, R3
AA18E:  MOVNE           R2, R0
AA190:  SUBS.W          R4, R2, R12
AA194:  SBCS.W          R4, R5, LR
AA198:  MOV.W           R4, #0
AA19C:  IT CC
AA19E:  MOVCC           R4, #1
AA1A0:  CMP             R4, #0
AA1A2:  IT EQ
AA1A4:  MOVEQ           R5, LR
AA1A6:  CMP             R6, #0
AA1A8:  MOV             R6, R3
AA1AA:  ITT NE
AA1AC:  MOVNE           R6, R9
AA1AE:  MOVNE           R0, R8
AA1B0:  SUBS.W          R3, R12, R0
AA1B4:  SBCS.W          R3, LR, R6
AA1B8:  IT CC
AA1BA:  MOVCC           R1, #1
AA1BC:  CMP             R1, #0
AA1BE:  IT EQ
AA1C0:  MOVEQ           R6, R5
AA1C2:  CMP             R4, #0
AA1C4:  LDR             R3, [SP,#0xA0+var_78]
AA1C6:  IT EQ
AA1C8:  MOVEQ           R2, R12
AA1CA:  CMP             R1, #0
AA1CC:  IT NE
AA1CE:  MOVNE           R2, R0
AA1D0:  SUBS.W          R0, R2, R8
AA1D4:  SBC.W           R1, R6, R9
AA1D8:  CMP             R3, #0
AA1DA:  BEQ             loc_AA2D4
AA1DC:  LDRD.W          R2, R3, [SP,#0xA0+var_84]
AA1E0:  BLX             sub_1096A4
AA1E4:  BLX             sub_108CE8
AA1E8:  VDIV.F32        S0, S16, S23
AA1EC:  VMOV            R1, S0; y
AA1F0:  BLX             powf
AA1F4:  VLDR            S0, =0.0
AA1F8:  VMOV            S2, R0
AA1FC:  VADD.F32        S21, S2, S0
AA200:  B               loc_AA2F4
AA202:  VMOV            R0, S19; x
AA206:  VMOV            R1, S23; y
AA20A:  BLX             powf
AA20E:  MOV             R6, R0
AA210:  LDRD.W          R0, R1, [SP,#0xA0+var_84]
AA214:  BLX             sub_108CE8
AA218:  VMOV            S19, R0
AA21C:  MOV             R0, R8
AA21E:  MOV             R1, R4
AA220:  VMOV            S21, R6
AA224:  BLX             sub_108CE8
AA228:  VMOV            S0, R0
AA22C:  VMLA.F32        S0, S19, S21
AA230:  VMOV            R0, S0
AA234:  BLX             sub_108AF0
AA238:  MOV             R2, R0
AA23A:  MOV             R3, R1
AA23C:  B               loc_AA294
AA23E:  LDRD.W          R0, R1, [SP,#0xA0+var_84]
AA242:  MOV             R11, R12
AA244:  BLX             sub_108CE8
AA248:  VMOV            S0, R0
AA24C:  VMUL.F32        S0, S19, S0
AA250:  VMOV            R0, S0
AA254:  VCVT.F64.F32    D13, S0
AA258:  BLX             sub_108AF0
AA25C:  VMOV.F64        D16, #0.5
AA260:  MOV             R6, R0
AA262:  MOV             R8, R1
AA264:  VADD.F64        D16, D13, D16
AA268:  VMOV            R0, R1, D16
AA26C:  BLX             sub_108AA0
AA270:  SUBS            R3, R6, R0
AA272:  MOV.W           R2, #0
AA276:  SBCS.W          R3, R8, R1
AA27A:  IT CC
AA27C:  MOVCC           R2, #1
AA27E:  CMP             R2, #0
AA280:  ITT NE
AA282:  MOVNE           R8, R1
AA284:  MOVNE           R6, R0
AA286:  LDR             R0, [R7,#arg_0]
AA288:  MOV             R4, R11
AA28A:  ADDS            R2, R6, R0
AA28C:  ADC.W           R3, R8, R11
AA290:  LDR.W           R8, [R7,#arg_0]
AA294:  LDR             R1, [SP,#0xA0+var_8C]
AA296:  MOV             R0, R9
AA298:  BL              sub_AF6F8
AA29C:  LDR             R6, [SP,#0xA0+var_7C]
AA29E:  MOV             R12, R4
AA2A0:  LDR.W           LR, [R7,#arg_8]
AA2A4:  LDRD.W          R2, R3, [R6]
AA2A8:  EORS            R3, R1
AA2AA:  EORS            R2, R0
AA2AC:  ORRS            R2, R3
AA2AE:  ITTE NE
AA2B0:  STRDNE.W        R0, R1, [R6]
AA2B4:  MOVNE           R2, #1
AA2B6:  MOVEQ           R2, #0
AA2B8:  B               loc_AA3E2
AA2BA:  BL              sub_8B080
AA2BE:  ADD.W           LR, R7, #8
AA2C2:  LDR             R5, [SP,#0xA0+var_70]
AA2C4:  MOVS            R2, #0
AA2C6:  LDM.W           LR, {R8,R12,LR}
AA2CA:  B               loc_AA3E2
AA2CC:  DCD off_114D5C - 0xA9F6A
AA2D0:  DCFS 0.0
AA2D4:  BLX             sub_108CB0
AA2D8:  MOV             R9, R0
AA2DA:  MOV             R6, R1
AA2DC:  LDRD.W          R0, R1, [SP,#0xA0+var_84]
AA2E0:  BLX             sub_108CB0
AA2E4:  VMOV            D16, R0, R1
AA2E8:  VMOV            D17, R9, R6
AA2EC:  VDIV.F64        D16, D17, D16
AA2F0:  VCVT.F32.F64    S21, D16
AA2F4:  LDR.W           R9, [R7,#arg_10]
AA2F8:  MOV             R5, R11
AA2FA:  LDR             R0, [SP,#0xA0+var_88]
AA2FC:  MOVS            R4, #0
AA2FE:  CMP             R0, #8
AA300:  BNE             loc_AA310
AA302:  MOV             R0, R9
AA304:  MOVS            R1, #3
AA306:  BL              sub_AB7D0
AA30A:  CMP             R0, #0
AA30C:  IT GT
AA30E:  MOVGT           R4, #1
AA310:  LDR             R0, [SP,#0xA0+var_78]
AA312:  ORRS            R0, R4
AA314:  CMP             R0, #1
AA316:  BNE             loc_AA340
AA318:  VLDR            S0, =100.0
AA31C:  LDR             R0, [SP,#0xA0+var_90]
AA31E:  VDIV.F32        S0, S19, S0
AA322:  LDRD.W          R12, LR, [R7,#arg_4]
AA326:  LDR             R1, [R0]
AA328:  VLDR            S2, [R1,#0x334]
AA32C:  VCMP.F32        S2, #0.0
AA330:  VMRS            APSR_nzcv, FPSCR
AA334:  BLE             loc_AA39A
AA336:  VMOV.F32        S2, #10.0
AA33A:  VDIV.F32        S0, S0, S2
AA33E:  B               loc_AA39A
AA340:  LDR             R4, [SP,#0xA0+var_94]
AA342:  LDR             R6, [SP,#0xA0+var_98]
AA344:  MOV             R0, R4
AA346:  MOV             R1, R6
AA348:  BLX             sub_108B88
AA34C:  LDR             R1, [SP,#0xA0+var_90]
AA34E:  ADDS.W          R2, R4, #0x64 ; 'd'
AA352:  ADC.W           R3, R6, #0
AA356:  SUBS            R2, #0xC9
AA358:  SBCS.W          R2, R3, #0
AA35C:  LDR             R1, [R1]
AA35E:  BCC             loc_AA36E
AA360:  VLDR            S0, [R1,#0x334]
AA364:  VCMP.F32        S0, #0.0
AA368:  VMRS            APSR_nzcv, FPSCR
AA36C:  BLE             loc_AA38E
AA36E:  VMOV            S0, R0
AA372:  VCMP.F32        S19, #0.0
AA376:  VMOV.F32        S4, S16
AA37A:  VMRS            APSR_nzcv, FPSCR
AA37E:  VMOV.F32        S2, #-1.0
AA382:  IT MI
AA384:  VMOVMI.F32      S4, S2
AA388:  VDIV.F32        S0, S4, S0
AA38C:  B               loc_AA396
AA38E:  VLDR            S0, =100.0
AA392:  VDIV.F32        S0, S19, S0
AA396:  LDRD.W          R12, LR, [R7,#arg_4]
AA39A:  VMOV.F32        S2, #10.0
AA39E:  VLDR            S4, [R1,#0x338]
AA3A2:  VCMP.F32        S4, #0.0
AA3A6:  VMRS            APSR_nzcv, FPSCR
AA3AA:  VCMP.F32        S21, S16
AA3AE:  VMUL.F32        S2, S0, S2
AA3B2:  IT GT
AA3B4:  VMOVGT.F32      S0, S2
AA3B8:  VMRS            APSR_nzcv, FPSCR
AA3BC:  ITT GE
AA3BE:  VCMPGE.F32      S0, #0.0
AA3C2:  VMRSGE          APSR_nzcv, FPSCR
AA3C6:  BGT             loc_AA3E0
AA3C8:  VCMP.F32        S21, #0.0
AA3CC:  VMRS            APSR_nzcv, FPSCR
AA3D0:  BHI.W           loc_AA572
AA3D4:  VCMP.F32        S0, #0.0
AA3D8:  VMRS            APSR_nzcv, FPSCR
AA3DC:  BPL.W           loc_AA572
AA3E0:  MOVS            R2, #0
AA3E2:  LDR.W           R9, [R7,#arg_1C]
AA3E6:  VCMP.F32        S30, S16
AA3EA:  VMRS            APSR_nzcv, FPSCR
AA3EE:  BPL             loc_AA3FE
AA3F0:  VLDR            D16, [R5]
AA3F4:  VMOV            D17, D16
AA3F8:  VST1.32         {D16-D17}, [R9]
AA3FC:  B               loc_AA54E
AA3FE:  VMOV.F32        S30, #-2.0
AA402:  LDR             R1, [R7,#arg_C]
AA404:  EOR.W           R0, LR, R8
AA408:  EOR.W           R1, R1, R12
AA40C:  ORRS            R0, R1
AA40E:  VADD.F32        S0, S28, S30
AA412:  VSUB.F32        S28, S0, S17
AA416:  BNE             loc_AA41E
AA418:  VLDR            S2, =0.0
AA41C:  B               loc_AA4D8
AA41E:  LDR             R0, [SP,#0xA0+var_7C]
AA420:  MOVS            R6, #0
AA422:  LDR             R1, [R7,#arg_C]
AA424:  MOV             R4, R12
AA426:  STR             R2, [SP,#0xA0+var_70]
AA428:  SUBS.W          R2, R8, LR
AA42C:  LDRD.W          R10, R3, [R0]
AA430:  SBCS.W          R2, R12, R1
AA434:  IT CC
AA436:  MOVCC           R6, #1
AA438:  CMP             R6, #0
AA43A:  MOV             R2, R8
AA43C:  MOV             R11, R5
AA43E:  ITT NE
AA440:  MOVNE           R4, R1
AA442:  MOVNE           R2, LR
AA444:  SUBS.W          R5, R2, R10
AA448:  SBCS.W          R5, R4, R3
AA44C:  MOV.W           R0, #0
AA450:  MOV.W           R5, #0
AA454:  IT CC
AA456:  MOVCC           R5, #1
AA458:  CMP             R5, #0
AA45A:  IT EQ
AA45C:  MOVEQ           R4, R3
AA45E:  CMP             R6, #0
AA460:  ITT NE
AA462:  MOVNE           R1, R12
AA464:  MOVNE           LR, R8
AA466:  SUBS.W          R6, R10, LR
AA46A:  SBCS            R3, R1
AA46C:  IT CC
AA46E:  MOVCC           R0, #1
AA470:  CMP             R0, #0
AA472:  IT EQ
AA474:  MOVEQ           R1, R4
AA476:  CMP             R5, #0
AA478:  IT EQ
AA47A:  MOVEQ           R2, R10
AA47C:  CMP             R0, #0
AA47E:  IT NE
AA480:  MOVNE           R2, LR
AA482:  SUBS.W          R0, R2, R8
AA486:  LDR             R2, [SP,#0xA0+var_78]
AA488:  SBC.W           R1, R1, R12
AA48C:  CBZ             R2, loc_AA4B4
AA48E:  LDRD.W          R2, R3, [SP,#0xA0+var_84]
AA492:  BLX             sub_1096A4
AA496:  BLX             sub_108CE8
AA49A:  VDIV.F32        S0, S16, S23
AA49E:  VMOV            R1, S0; y
AA4A2:  BLX             powf
AA4A6:  VLDR            S0, =0.0
AA4AA:  VMOV            S2, R0
AA4AE:  VADD.F32        S2, S2, S0
AA4B2:  B               loc_AA4D4
AA4B4:  BLX             sub_108CB0
AA4B8:  MOV             R8, R0
AA4BA:  MOV             R6, R1
AA4BC:  LDRD.W          R0, R1, [SP,#0xA0+var_84]
AA4C0:  BLX             sub_108CB0
AA4C4:  VMOV            D16, R0, R1
AA4C8:  VMOV            D17, R8, R6
AA4CC:  VDIV.F64        D16, D17, D16
AA4D0:  VCVT.F32.F64    S2, D16
AA4D4:  LDR             R2, [SP,#0xA0+var_70]
AA4D6:  MOV             R5, R11
AA4D8:  VSUB.F32        S6, S28, S20
AA4DC:  LDR             R0, [SP,#0xA0+var_74]
AA4DE:  VSUB.F32        S4, S16, S2
AA4E2:  CMP             R0, #0
AA4E4:  IT EQ
AA4E6:  VMOVEQ.F32      S4, S2
AA4EA:  VNEG.F32        S0, S24
AA4EE:  VMLA.F32        S20, S6, S4
AA4F2:  BNE             loc_AA522
AA4F4:  VMOV.F32        S6, S20
AA4F8:  VLDR            S2, [R5,#4]
AA4FC:  VLDR            S4, [R5,#0xC]
AA500:  VMLA.F32        S20, S0, S18
AA504:  VADD.F32        S4, S4, S30
AA508:  VMLA.F32        S6, S24, S18
AA50C:  VSTR            S20, [R9]
AA510:  VADD.F32        S2, S2, S22
AA514:  VSTR            S4, [R9,#0xC]
AA518:  VSTR            S6, [R9,#8]
AA51C:  VSTR            S2, [R9,#4]
AA520:  B               loc_AA54E
AA522:  VMOV.F32        S6, S20
AA526:  VLDR            S4, [R5,#8]
AA52A:  VLDR            S2, [R5]
AA52E:  VMLA.F32        S20, S0, S18
AA532:  VMLA.F32        S6, S24, S18
AA536:  VSTR            S20, [R9,#4]
AA53A:  VADD.F32        S4, S4, S30
AA53E:  VADD.F32        S0, S2, S22
AA542:  VSTR            S6, [R9,#0xC]
AA546:  VSTR            S4, [R9,#8]
AA54A:  VSTR            S0, [R9]
AA54E:  LDR             R0, [SP,#0xA0+var_64]
AA550:  LDR             R1, =(__stack_chk_guard_ptr - 0xAA556)
AA552:  ADD             R1, PC; __stack_chk_guard_ptr
AA554:  LDR             R1, [R1]; __stack_chk_guard
AA556:  LDR             R1, [R1]
AA558:  CMP             R1, R0
AA55A:  ITTTT EQ
AA55C:  MOVEQ           R0, R2
AA55E:  ADDEQ           SP, SP, #0x40 ; '@'
AA560:  VPOPEQ          {D8-D15}
AA564:  ADDEQ           SP, SP, #4
AA566:  ITT EQ
AA568:  POPEQ.W         {R8-R11}
AA56C:  POPEQ           {R4-R7,PC}
AA56E:  BLX             __stack_chk_fail
AA572:  VADD.F32        S19, S21, S0
AA576:  VLDR            S0, =0.0
AA57A:  VCMP.F32        S19, S16
AA57E:  VMRS            APSR_nzcv, FPSCR
AA582:  VCMP.F32        S19, #0.0
AA586:  IT GT
AA588:  VMOVGT.F32      S19, S16
AA58C:  VMRS            APSR_nzcv, FPSCR
AA590:  IT MI
AA592:  VMOVMI.F32      S19, S0
AA596:  B               loc_AA0EE
