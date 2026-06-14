; =========================================================
; Game Engine Function: sub_13F048
; Address            : 0x13F048 - 0x13F498
; =========================================================

13F048:  PUSH            {R4-R7,LR}
13F04A:  ADD             R7, SP, #0xC
13F04C:  PUSH.W          {R8-R11}
13F050:  SUB             SP, SP, #4
13F052:  VPUSH           {D8}
13F056:  SUB.W           SP, SP, #0x220
13F05A:  MOV             R4, R0
13F05C:  LDR             R0, [R0,#0x1C]
13F05E:  CMP             R0, #0
13F060:  BEQ.W           loc_13F456
13F064:  LDR             R1, =(off_23496C - 0x13F06A)
13F066:  ADD             R1, PC; off_23496C
13F068:  LDR.W           R9, [R1]; dword_23DEF4
13F06C:  LDR.W           R1, [R9]
13F070:  LDR.W           R1, [R1,#0x3B0]
13F074:  LDR             R6, [R1,#4]
13F076:  CMP             R6, #0
13F078:  BEQ.W           loc_13F456
13F07C:  ADD.W           R11, SP, #0x248+src
13F080:  VMOV.I32        Q8, #0
13F084:  MOVS            R2, #0xF
13F086:  MOV             R1, R11
13F088:  VST1.64         {D16-D17}, [R1]!
13F08C:  VST1.64         {D16-D17}, [R1]!
13F090:  VST1.64         {D16-D17}, [R1],R2
13F094:  VST1.8          {D16-D17}, [R1]
13F098:  BL              sub_104326
13F09C:  CMP             R0, #0
13F09E:  BEQ.W           loc_13F456
13F0A2:  MOVW            R1, #0xEA60
13F0A6:  ADD.W           R10, R6, R1
13F0AA:  LDRD.W          R1, R2, [R10]
13F0AE:  CMP             R1, R2
13F0B0:  BEQ             loc_13F0CA
13F0B2:  MOV.W           R3, #0x1F40
13F0B6:  LDR             R5, [R1]
13F0B8:  ADD.W           R5, R6, R5,LSL#2
13F0BC:  LDR             R5, [R5,R3]
13F0BE:  CMP             R5, R0
13F0C0:  BEQ             loc_13F0CA
13F0C2:  ADDS            R1, #4
13F0C4:  CMP             R1, R2
13F0C6:  BNE             loc_13F0B6
13F0C8:  B               loc_13F456
13F0CA:  CMP             R1, R2
13F0CC:  BEQ.W           loc_13F456
13F0D0:  LDR             R0, [R1]
13F0D2:  STRH.W          R0, [SP,#0x248+src]
13F0D6:  UXTH            R5, R0
13F0D8:  LSRS            R0, R5, #4
13F0DA:  CMP             R0, #0x7C ; '|'
13F0DC:  BHI.W           loc_13F456
13F0E0:  MOV             R0, R6
13F0E2:  MOV             R1, R5
13F0E4:  BL              sub_F2396
13F0E8:  CMP             R0, #0
13F0EA:  BEQ.W           loc_13F456
13F0EE:  LDR.W           R5, [R6,R5,LSL#2]
13F0F2:  CMP             R5, #0
13F0F4:  BEQ.W           loc_13F456
13F0F8:  ADD.W           R0, R4, #0xEA
13F0FC:  STR             R0, [SP,#0x248+var_1EC]
13F0FE:  LDR             R0, [R4,#0x1C]
13F100:  MOVS            R1, #1
13F102:  STR             R1, [SP,#0x248+var_248]
13F104:  SUB.W           R1, R7, #-var_6A
13F108:  ADD             R2, SP, #0x248+var_6C
13F10A:  SUB.W           R3, R7, #-var_6D
13F10E:  BL              sub_104BA4
13F112:  LDRB.W          R12, [R7,#var_6D]
13F116:  LDRB.W          R2, [SP,#0x248+var_32]
13F11A:  LDRH.W          R1, [SP,#0x248+var_6C]
13F11E:  STRH.W          R0, [SP,#0x248+var_62]
13F122:  AND.W           R0, R2, #0x3F ; '?'
13F126:  STRH.W          R1, [SP,#0x248+var_64]
13F12A:  ORR.W           R0, R0, R12,LSL#6
13F12E:  ADD             R1, SP, #0x248+var_B0
13F130:  LDRH.W          R3, [R7,#var_6A]
13F134:  STRB.W          R0, [SP,#0x248+var_32]
13F138:  MOV             R0, R5
13F13A:  STRH.W          R3, [SP,#0x248+var_66]
13F13E:  BL              sub_F8910
13F142:  ADD             R1, SP, #0x248+var_BC
13F144:  MOV             R0, R5
13F146:  STR             R5, [SP,#0x248+var_1E8]
13F148:  BL              sub_F8994
13F14C:  ADR             R0, dword_13F4A8
13F14E:  ADD.W           R12, SP, #0x248+var_84
13F152:  VLD1.64         {D16-D17}, [R0]
13F156:  ADD             R5, SP, #0x248+var_D0
13F158:  LDR             R0, [SP,#0x248+var_B0]
13F15A:  STR             R0, [SP,#0x248+var_1F0]
13F15C:  LDR             R0, [SP,#0x248+var_AC]
13F15E:  STR             R0, [SP,#0x248+var_1F4]
13F160:  LDR             R0, [SP,#0x248+var_A8]
13F162:  STR             R0, [SP,#0x248+var_1F8]
13F164:  LDR             R0, [SP,#0x248+var_A4]
13F166:  STR             R0, [SP,#0x248+var_1FC]
13F168:  LDR             R0, [SP,#0x248+var_A0]
13F16A:  STR             R0, [SP,#0x248+var_200]
13F16C:  LDR             R0, [SP,#0x248+var_94]
13F16E:  STR             R0, [SP,#0x248+var_204]
13F170:  LDR             R0, [SP,#0x248+var_90]
13F172:  STR             R0, [SP,#0x248+var_208]
13F174:  LDR             R0, [SP,#0x248+var_8C]
13F176:  STR             R0, [SP,#0x248+var_20C]
13F178:  LDR             R0, [SP,#0x248+var_88]
13F17A:  LDRD.W          LR, R8, [SP,#0x248+var_9C]
13F17E:  STR             R0, [SP,#0x248+var_210]
13F180:  LDM.W           R12, {R0-R3,R12}
13F184:  STR             R0, [SP,#0x248+var_228]
13F186:  LDR             R0, [SP,#0x248+var_1FC]
13F188:  STR             R0, [SP,#0x248+var_248]
13F18A:  LDR             R0, [SP,#0x248+var_200]
13F18C:  STRD.W          R0, LR, [SP,#0x248+var_244]
13F190:  LDR             R0, [SP,#0x248+var_204]
13F192:  STR             R0, [SP,#0x248+var_238]
13F194:  LDR             R0, [SP,#0x248+var_208]
13F196:  STR             R1, [SP,#0x248+var_224]
13F198:  STR             R0, [SP,#0x248+var_234]
13F19A:  LDR             R0, [SP,#0x248+var_20C]
13F19C:  STR             R2, [SP,#0x248+var_220]
13F19E:  STR             R3, [SP,#0x248+var_21C]
13F1A0:  LDR             R1, [SP,#0x248+var_1F0]
13F1A2:  LDRD.W          R3, R2, [SP,#0x248+var_1F8]
13F1A6:  STR             R0, [SP,#0x248+var_230]
13F1A8:  LDR             R0, [SP,#0x248+var_210]
13F1AA:  STR             R0, [SP,#0x248+var_22C]
13F1AC:  MOV             R0, R5
13F1AE:  STR.W           R8, [SP,#0x248+var_23C]
13F1B2:  VST1.64         {D16-D17}, [R5]
13F1B6:  STR.W           R12, [SP,#0x248+var_218]
13F1BA:  LDR.W           R8, [SP,#0x248+var_1EC]
13F1BE:  BL              sub_17D12C
13F1C2:  MOV             R0, R5
13F1C4:  BL              sub_17D2F2
13F1C8:  VLD1.64         {D16-D17}, [R5]
13F1CC:  ADD.W           R5, R11, #8
13F1D0:  VST1.64         {D16-D17}, [R5]
13F1D4:  LDR.W           R1, [R8]
13F1D8:  LDR             R0, [SP,#0x248+var_60]
13F1DA:  BL              sub_108700
13F1DE:  VLDR            S16, =0.00001
13F1E2:  VMOV            S0, R0
13F1E6:  VCMP.F32        S0, S16
13F1EA:  VMRS            APSR_nzcv, FPSCR
13F1EE:  BPL             loc_13F240
13F1F0:  LDR             R0, [SP,#0x248+var_5C]
13F1F2:  LDR.W           R1, [R8,#4]
13F1F6:  BL              sub_108700
13F1FA:  VMOV            S0, R0
13F1FE:  VCMP.F32        S0, S16
13F202:  VMRS            APSR_nzcv, FPSCR
13F206:  BPL             loc_13F240
13F208:  LDR             R0, [SP,#0x248+var_58]
13F20A:  LDR.W           R1, [R8,#8]
13F20E:  BL              sub_108700
13F212:  VMOV            S0, R0
13F216:  VCMP.F32        S0, S16
13F21A:  VMRS            APSR_nzcv, FPSCR
13F21E:  BPL             loc_13F240
13F220:  LDR             R0, [SP,#0x248+var_54]
13F222:  LDR.W           R1, [R8,#0xC]
13F226:  BL              sub_108700
13F22A:  VMOV            S0, R0
13F22E:  VCMP.F32        S0, S16
13F232:  VMRS            APSR_nzcv, FPSCR
13F236:  BPL             loc_13F240
13F238:  VLD1.16         {D16-D17}, [R8]
13F23C:  VST1.16         {D16-D17}, [R5]
13F240:  ADD             R2, SP, #0x248+var_80
13F242:  LDR.W           R8, [SP,#0x248+var_1E8]
13F246:  ADD.W           R12, SP, #0x248+var_BC
13F24A:  ADD.W           LR, SP, #0x248+var_50
13F24E:  LDM             R2, {R0-R2}
13F250:  LDM.W           R12, {R3,R5,R12}
13F254:  STM.W           LR, {R0-R3,R5,R12}
13F258:  MOV             R0, R8
13F25A:  BL              sub_109AB4
13F25E:  VLDR            S0, =250.0
13F262:  VMOV            S2, R0
13F266:  VCMP.F32        S2, S0
13F26A:  VMRS            APSR_nzcv, FPSCR
13F26E:  BPL             loc_13F27C
13F270:  MOVS            R1, #0
13F272:  MOV             R0, R8
13F274:  MOVT            R1, #0x437A
13F278:  BL              sub_109AD0
13F27C:  MOV             R0, R8
13F27E:  BL              sub_109AB4
13F282:  LDR             R1, [R4,#0x1C]
13F284:  STR             R0, [SP,#0x248+var_38]
13F286:  MOV             R0, R1
13F288:  BL              sub_1042D8
13F28C:  VMOV            S0, R0
13F290:  LDR             R0, [R4,#0x1C]
13F292:  VCVT.U32.F32    S0, S0
13F296:  VMOV            R1, S0
13F29A:  STRB.W          R1, [SP,#0x248+var_34]
13F29E:  BL              sub_104300
13F2A2:  VMOV            S0, R0
13F2A6:  LDR             R0, [R4,#0x1C]
13F2A8:  LDRB.W          R5, [SP,#0x248+var_32]
13F2AC:  VCVT.U32.F32    S0, S0
13F2B0:  VMOV            R1, S0
13F2B4:  STRB.W          R1, [SP,#0x248+var_33]
13F2B8:  BL              sub_104648
13F2BC:  MOVS            R1, #0
13F2BE:  EORS            R0, R5
13F2C0:  STRH.W          R1, [SP,#0x248+var_2F]
13F2C4:  AND.W           R0, R0, #0x3F ; '?'
13F2C8:  LDRB.W          R1, [SP,#0x248+var_32]
13F2CC:  EORS            R0, R1
13F2CE:  STRB.W          R0, [SP,#0x248+var_32]
13F2D2:  MOV             R0, R8
13F2D4:  BL              sub_109E00
13F2D8:  CBZ             R0, loc_13F2EA
13F2DA:  MOV             R5, R0
13F2DC:  LDR             R0, [R0,#0xC]
13F2DE:  CBZ             R0, loc_13F2EA
13F2E0:  MOV             R0, R5
13F2E2:  BL              sub_109E78
13F2E6:  CMP             R0, R8
13F2E8:  BEQ             loc_13F384
13F2EA:  MOV             R0, R8
13F2EC:  MOVS            R1, #0
13F2EE:  BL              sub_109C00
13F2F2:  MOV             R0, R8
13F2F4:  BL              sub_F8A2C
13F2F8:  MOVW            R1, #0x21A
13F2FC:  CMP             R0, R1
13F2FE:  BEQ             loc_13F31C
13F300:  MOV             R0, R8
13F302:  BL              sub_F8A2C
13F306:  MOVW            R1, #0x219
13F30A:  CMP             R0, R1
13F30C:  BEQ             loc_13F31C
13F30E:  MOV             R0, R8
13F310:  BL              sub_F8A2C
13F314:  MOVW            R1, #0x1C1
13F318:  CMP             R0, R1
13F31A:  BNE             loc_13F3BC
13F31C:  MOV             R0, R8
13F31E:  BL              sub_109F08
13F322:  VLDR            S2, [SP,#0x248+var_B8]
13F326:  BIC.W           R1, R0, #0x80000000
13F32A:  VLDR            S0, [SP,#0x248+var_BC]
13F32E:  VCVT.F64.F32    D16, S2
13F332:  STR.W           R0, [SP,#0x248+var_2D]
13F336:  VMUL.F64        D16, D16, D16
13F33A:  VCVT.F64.F32    D17, S0
13F33E:  VMLA.F64        D16, D17, D17
13F342:  VMOV            S0, R1
13F346:  VLDR            D18, =0.01
13F34A:  VSQRT.F64       D17, D16
13F34E:  VCVT.F64.F32    D16, S0
13F352:  VADD.F64        D18, D16, D18
13F356:  VCMP.F64        D17, D18
13F35A:  VMRS            APSR_nzcv, FPSCR
13F35E:  BLE             loc_13F3DA
13F360:  VLDR            D17, =0.001
13F364:  VCMP.F64        D16, D17
13F368:  VMRS            APSR_nzcv, FPSCR
13F36C:  BPL             loc_13F456
13F36E:  MOV             R0, R8
13F370:  MOVS            R1, #0
13F372:  MOVS            R2, #0
13F374:  MOVS            R3, #0
13F376:  MOVS            R5, #0
13F378:  BL              sub_F89BC
13F37C:  STR             R5, [SP,#0x248+var_3C]
13F37E:  STRD.W          R5, R5, [SP,#0x248+var_44]
13F382:  B               loc_13F3DA
13F384:  MOV             R0, R8
13F386:  MOV             R1, R5
13F388:  BL              sub_109C00
13F38C:  LDR             R3, [R5,#0xC]
13F38E:  MOVW            R12, #0xFFFF
13F392:  CMP             R3, #0
13F394:  BEQ             loc_13F46E
13F396:  LDRD.W          R1, R2, [R10]
13F39A:  CMP             R1, R2
13F39C:  BEQ             loc_13F466
13F39E:  MOV.W           R5, #0x1F40
13F3A2:  LDR             R0, [R1]
13F3A4:  ADD.W           R0, R6, R0,LSL#2
13F3A8:  LDR             R0, [R0,R5]
13F3AA:  CMP             R0, R3
13F3AC:  BEQ             loc_13F466
13F3AE:  ADDS            R1, #4
13F3B0:  CMP             R1, R2
13F3B2:  BNE             loc_13F3A2
13F3B4:  B               loc_13F46E
13F3B6:  ALIGN 4
13F3B8:  DCD off_23496C - 0x13F06A
13F3BC:  MOV             R0, R8
13F3BE:  BL              sub_109864
13F3C2:  CMP             R0, #2
13F3C4:  BEQ             loc_13F3D0
13F3C6:  MOV             R0, R8
13F3C8:  BL              sub_109864
13F3CC:  CMP             R0, #6
13F3CE:  BNE             loc_13F474
13F3D0:  MOV             R0, R8
13F3D2:  BL              sub_109F32
13F3D6:  STR.W           R0, [SP,#0x248+var_2D]
13F3DA:  ADD.W           R5, R4, #0xE2
13F3DE:  ADD             R2, SP, #0x248+src
13F3E0:  MOV             R0, R4
13F3E2:  MOVS            R3, #0x3F ; '?'
13F3E4:  MOV             R1, R5
13F3E6:  BL              sub_140978
13F3EA:  CBZ             R0, loc_13F440
13F3EC:  ADD             R0, SP, #0x248+var_1E4
13F3EE:  BL              sub_17D4A8
13F3F2:  BL              sub_F0B30
13F3F6:  STR.W           R0, [R4,#0x1C4]
13F3FA:  MOVS            R0, #0xC8
13F3FC:  STRB.W          R0, [R7,#var_29]
13F400:  ADD             R0, SP, #0x248+var_1E4
13F402:  SUB.W           R1, R7, #-var_29
13F406:  MOVS            R2, #8
13F408:  MOVS            R3, #1
13F40A:  BL              sub_17D628
13F40E:  ADD             R0, SP, #0x248+var_1E4
13F410:  ADD             R1, SP, #0x248+src
13F412:  MOVS            R2, #0x3F ; '?'
13F414:  BL              sub_17D566
13F418:  LDR.W           R0, [R9]
13F41C:  LDR.W           R0, [R0,#0x210]
13F420:  LDR             R1, [R0]
13F422:  LDR             R6, [R1,#0x20]
13F424:  MOVS            R1, #1
13F426:  MOVS            R2, #1
13F428:  STR             R1, [SP,#0x248+var_248]
13F42A:  ADD             R1, SP, #0x248+var_1E4
13F42C:  MOVS            R3, #7
13F42E:  BLX             R6
13F430:  ADD             R1, SP, #0x248+src; src
13F432:  MOV             R0, R5; dest
13F434:  MOVS            R2, #0x3F ; '?'; n
13F436:  BLX             j_memcpy
13F43A:  ADD             R0, SP, #0x248+var_1E4
13F43C:  BL              sub_17D542
13F440:  LDRH.W          R1, [SP,#0x248+var_2F]
13F444:  MOVW            R2, #0x7CE
13F448:  SUBS            R0, R1, #1
13F44A:  UXTH            R0, R0
13F44C:  CMP             R0, R2
13F44E:  ITT LS
13F450:  MOVLS           R0, R4
13F452:  BLLS            sub_1409B8
13F456:  ADD.W           SP, SP, #0x220
13F45A:  VPOP            {D8}
13F45E:  ADD             SP, SP, #4
13F460:  POP.W           {R8-R11}
13F464:  POP             {R4-R7,PC}
13F466:  CMP             R1, R2
13F468:  IT NE
13F46A:  LDRNE.W         R12, [R1]
13F46E:  STRH.W          R12, [SP,#0x248+var_2F]
13F472:  B               loc_13F2F2
13F474:  MOV             R0, R8
13F476:  BL              sub_F8A2C
13F47A:  CMP.W           R0, #0x208
13F47E:  BNE             loc_13F494
13F480:  MOV             R0, R8
13F482:  BL              sub_109F24
13F486:  VMOV            S0, R0
13F48A:  VCVT.F32.U32    S0, S0
13F48E:  VMOV            R0, S0
13F492:  B               loc_13F3D6
13F494:  MOVS            R0, #0
13F496:  B               loc_13F3D6
