; =========================================================
; Game Engine Function: sub_8D060
; Address            : 0x8D060 - 0x8FC16
; =========================================================

8D060:  PUSH            {R4-R7,LR}
8D062:  ADD             R7, SP, #0xC
8D064:  PUSH.W          {R8-R11}
8D068:  SUB             SP, SP, #4
8D06A:  VPUSH           {D8-D12}
8D06E:  SUB             SP, SP, #0x58
8D070:  LDR             R1, =(dword_1ACF68 - 0x8D080)
8D072:  MOVW            R3, #0x2CE4
8D076:  LDR             R0, =(__stack_chk_guard_ptr - 0x8D084)
8D078:  MOVW            R2, #0x2CA8
8D07C:  ADD             R1, PC; dword_1ACF68
8D07E:  STR             R1, [SP,#0xA0+var_78]
8D080:  ADD             R0, PC; __stack_chk_guard_ptr
8D082:  LDR             R5, [R1]
8D084:  MOVW            R1, #0x1990
8D088:  LDR             R0, [R0]; __stack_chk_guard
8D08A:  ADD.W           R9, R5, R3
8D08E:  LDR             R0, [R0]
8D090:  STR             R0, [SP,#0xA0+var_4C]
8D092:  MOVW            R0, #0x15BC
8D096:  LDRB.W          R6, [R5,#0xAF]
8D09A:  CBZ             R6, loc_8D0A8
8D09C:  LDRB            R3, [R5,#0xC]
8D09E:  LSLS            R3, R3, #0x1E
8D0A0:  ITT PL
8D0A2:  MOVPL           R3, #0
8D0A4:  STRBPL.W        R3, [R5,#0xAF]
8D0A8:  ADDS            R4, R5, R0
8D0AA:  LDRB.W          R0, [R9,#0x10]
8D0AE:  ADD.W           R10, R5, R1
8D0B2:  ADD.W           R8, R5, R2
8D0B6:  CBNZ            R0, loc_8D102
8D0B8:  LDR             R0, [R5,#0x20]
8D0BA:  CBZ             R0, loc_8D0FC
8D0BC:  LDR             R1, =(aRb - 0x8D0C8); "rb" ...
8D0BE:  MOVS            R2, #0
8D0C0:  STR             R2, [SP,#0xA0+n]
8D0C2:  ADD             R2, SP, #0xA0+n
8D0C4:  ADD             R1, PC; "rb"
8D0C6:  MOVS            R3, #0
8D0C8:  MOV             R6, R4
8D0CA:  BL              sub_8874C
8D0CE:  CBZ             R0, loc_8D0FA
8D0D0:  LDR             R1, [SP,#0xA0+n]
8D0D2:  MOV             R4, R0
8D0D4:  BL              sub_9A200
8D0D8:  LDR             R0, [SP,#0xA0+var_78]
8D0DA:  LDR             R0, [R0]
8D0DC:  CMP             R0, #0
8D0DE:  ITTT NE
8D0E0:  LDRNE.W         R1, [R0,#0x370]
8D0E4:  SUBNE           R1, #1
8D0E6:  STRNE.W         R1, [R0,#0x370]
8D0EA:  LDR             R0, =(dword_1ACF70 - 0x8D0F2)
8D0EC:  LDR             R2, =(off_11724C - 0x8D0F4)
8D0EE:  ADD             R0, PC; dword_1ACF70
8D0F0:  ADD             R2, PC; off_11724C
8D0F2:  LDR             R1, [R0]
8D0F4:  MOV             R0, R4
8D0F6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8D0F8:  BLX             R2; j_opus_decoder_destroy_0
8D0FA:  MOV             R4, R6
8D0FC:  MOVS            R0, #1
8D0FE:  STRB.W          R0, [R9,#0x10]
8D102:  VLDR            S0, [R9,#0x14]
8D106:  STR.W           R9, [SP,#0xA0+var_84]
8D10A:  VCMP.F32        S0, #0.0
8D10E:  VMRS            APSR_nzcv, FPSCR
8D112:  BLE             loc_8D17A
8D114:  VLDR            S2, [R5,#0x18]
8D118:  VSUB.F32        S0, S0, S2
8D11C:  VCMP.F32        S0, #0.0
8D120:  VSTR            S0, [R9,#0x14]
8D124:  VMRS            APSR_nzcv, FPSCR
8D128:  BHI             loc_8D17A
8D12A:  LDR             R6, [R5,#0x20]
8D12C:  CBZ             R6, loc_8D16E
8D12E:  LDR             R0, [SP,#0xA0+var_78]
8D130:  MOVS            R2, #0
8D132:  MOVW            R1, #0x2CF8
8D136:  MOV             R11, R4
8D138:  STR             R2, [SP,#0xA0+n]
8D13A:  LDR             R0, [R0]
8D13C:  STR             R2, [R0,R1]
8D13E:  ADD             R0, SP, #0xA0+n
8D140:  BL              sub_9A3F4
8D144:  LDR             R1, =(aWt - 0x8D14E); "wt" ...
8D146:  MOV             R9, R0
8D148:  MOV             R0, R6; filename
8D14A:  ADD             R1, PC; "wt" ; modes
8D14C:  BLX             fopen
8D150:  CBZ             R0, loc_8D166
8D152:  LDR             R2, [SP,#0xA0+n]; n
8D154:  MOV             R4, R0
8D156:  MOV             R0, R9; ptr
8D158:  MOVS            R1, #1; size
8D15A:  MOV             R3, R4; s
8D15C:  BLX             fwrite
8D160:  MOV             R0, R4; stream
8D162:  BLX             fclose
8D166:  MOV             R4, R11
8D168:  LDR.W           R9, [SP,#0xA0+var_84]
8D16C:  B               loc_8D174
8D16E:  MOVS            R0, #1
8D170:  STRB.W          R0, [R5,#0x358]
8D174:  MOVS            R0, #0
8D176:  STR.W           R0, [R9,#0x14]
8D17A:  VLDR            S0, [R5,#0x18]
8D17E:  MOVS            R1, #0
8D180:  VLDR            D17, [R4,#0x39C]
8D184:  MOVS            R0, #1
8D186:  VCVT.F64.F32    D16, S0
8D18A:  STR.W           R1, [R8,#0x28]
8D18E:  STR.W           R1, [R10,#0x18]
8D192:  MOV.W           R12, #0
8D196:  LDR             R1, [SP,#0xA0+var_78]
8D198:  STRB            R0, [R5,#1]
8D19A:  LDR.W           R2, [R5,#0x94]
8D19E:  VADD.F64        D16, D17, D16
8D1A2:  LDR.W           R6, [R4,#0x3A4]
8D1A6:  LDR             R3, [R1]
8D1A8:  ADDS            R1, R6, #1
8D1AA:  STR.W           R1, [R4,#0x3A4]
8D1AE:  STRB            R0, [R2]
8D1B0:  MOVW            R1, #0x18C4
8D1B4:  LDR.W           R0, [R3,#0xA0]
8D1B8:  ADDS            R2, R3, R1
8D1BA:  MOVW            R1, #0x18D0
8D1BE:  MOVW            R6, #0x1AA8
8D1C2:  CMP             R0, #0
8D1C4:  ADD             R1, R3
8D1C6:  ADD.W           R11, R5, R6
8D1CA:  VSTR            D16, [R4,#0x39C]
8D1CE:  VMOV.F32        S16, #1.0
8D1D2:  ITTT EQ
8D1D4:  LDREQ.W         R0, [R3,#0x94]
8D1D8:  LDREQ           R0, [R0,#0x3C]
8D1DA:  LDREQ           R0, [R0]
8D1DC:  VLDR            S0, [R0,#0x10]
8D1E0:  VLDR            S4, [R3,#0x98]
8D1E4:  VLDR            S2, [R0,#0x44]
8D1E8:  VMUL.F32        S0, S4, S0
8D1EC:  VMUL.F32        S0, S0, S2
8D1F0:  VCMP.F32        S0, S16
8D1F4:  VMRS            APSR_nzcv, FPSCR
8D1F8:  IT LS
8D1FA:  VMOVLS.F32      S0, S16
8D1FE:  LDR.W           R3, [R1,#0xDC]
8D202:  STR             R0, [R2]
8D204:  VSTR            S0, [R2,#8]
8D208:  CMP             R3, #0
8D20A:  ITTE NE
8D20C:  VLDRNE          S2, [R3,#0x274]
8D210:  VMULNE.F32      S0, S0, S2
8D214:  VLDREQ          S0, =0.0
8D218:  LDR             R3, [R0,#0x38]
8D21A:  VSTR            S0, [R2,#4]
8D21E:  LDRD.W          R2, R3, [R3,#0x2C]
8D222:  VSTR            S0, [R1,#0xC]
8D226:  STRD.W          R2, R3, [R1]
8D22A:  STR             R0, [R1,#8]
8D22C:  LDRD.W          R1, R2, [R5,#0x10]
8D230:  LDRB            R0, [R4]
8D232:  LDRB            R3, [R4,#1]
8D234:  LDR             R6, [R4,#4]
8D236:  STRD.W          R6, R12, [R4,#0x324]
8D23A:  CMP             R3, #0
8D23C:  STRD.W          R12, R1, [R4,#0x32C]
8D240:  STRD.W          R2, R0, [R4,#0x334]
8D244:  ITT NE
8D246:  ORRNE.W         R0, R0, #2
8D24A:  STRNE.W         R0, [R4,#0x338]
8D24E:  LDRB            R1, [R5,#0xC]
8D250:  LSLS            R1, R1, #0x1C
8D252:  ITT MI
8D254:  ORRMI.W         R0, R0, #4
8D258:  STRMI.W         R0, [R4,#0x338]
8D25C:  STR             R4, [SP,#0xA0+var_88]
8D25E:  MOVW            R0, #0x1C24
8D262:  ADDS            R4, R5, R0
8D264:  MOV             R0, R4
8D266:  BL              sub_9BAD4
8D26A:  LDR.W           R0, [R5,#0x94]
8D26E:  LDR             R1, [R0,#8]
8D270:  MOV             R0, R4
8D272:  BL              sub_9C138
8D276:  MOV             R0, R4
8D278:  BL              sub_9C10C
8D27C:  MOVW            R0, #0x1C9C
8D280:  ADDS            R4, R5, R0
8D282:  MOV             R0, R4
8D284:  BL              sub_9BAD4
8D288:  LDR.W           R0, [R5,#0x94]
8D28C:  LDR             R1, [R0,#8]
8D28E:  MOV             R0, R4
8D290:  BL              sub_9C138
8D294:  MOV             R0, R4
8D296:  BL              sub_9C10C
8D29A:  VMOV.I32        Q8, #0
8D29E:  ADD.W           R2, R5, #0x1BE0
8D2A2:  MOVS            R1, #0
8D2A4:  MOVW            R0, #0x1C04
8D2A8:  STR             R1, [R5,R0]
8D2AA:  VST1.32         {D16-D17}, [R2]!
8D2AE:  LDRB.W          R0, [R11,#0x270]
8D2B2:  VST1.32         {D16-D17}, [R2]!
8D2B6:  STRB.W          R1, [R11,#0x134]
8D2BA:  STR             R1, [R2]
8D2BC:  CBZ             R0, loc_8D2E8
8D2BE:  LDR.W           R0, [R11,#0x288]
8D2C2:  LDR.W           R1, [R10,#0x40]
8D2C6:  CMP             R0, R1
8D2C8:  BNE             loc_8D2E8
8D2CA:  LDR             R1, [SP,#0xA0+var_78]
8D2CC:  MOVW            R2, #0x19D0
8D2D0:  LDR             R1, [R1]
8D2D2:  LDR             R3, [R1,R2]
8D2D4:  ADD             R1, R2
8D2D6:  CMP             R3, R0
8D2D8:  IT EQ
8D2DA:  STREQ           R0, [R1,#4]
8D2DC:  LDR             R2, [R1,#0x2C]
8D2DE:  CMP             R2, R0
8D2E0:  ITT EQ
8D2E2:  MOVEQ           R0, #1
8D2E4:  STRBEQ.W        R0, [R1,#0x30]
8D2E8:  LDR.W           R0, [R10,#0x34]
8D2EC:  CBZ             R0, loc_8D304
8D2EE:  LDR.W           R1, [R10,#0x2C]
8D2F2:  CBZ             R1, loc_8D32C
8D2F4:  LDR.W           R0, [R10,#0x40]
8D2F8:  CMP             R0, R1
8D2FA:  ITT EQ
8D2FC:  MOVEQ           R0, #0
8D2FE:  STREQ.W         R0, [R10,#0x3C]
8D302:  B               loc_8D310
8D304:  LDR.W           R1, [R10,#0x2C]
8D308:  MOVS            R0, #0
8D30A:  STRD.W          R0, R0, [R10,#0x38]
8D30E:  CBZ             R1, loc_8D32C
8D310:  VLDR            S2, [R10,#0x38]
8D314:  VLDR            S0, [R5,#0x18]
8D318:  LDR.W           R0, [R10,#0x40]
8D31C:  VADD.F32        S2, S0, S2
8D320:  CMP             R0, R1
8D322:  VSTR            S2, [R10,#0x38]
8D326:  BNE             loc_8D334
8D328:  MOV             R0, R1
8D32A:  B               loc_8D340
8D32C:  LDR.W           R0, [R10,#0x40]
8D330:  MOVS            R1, #0
8D332:  B               loc_8D340
8D334:  VLDR            S2, [R10,#0x3C]
8D338:  VADD.F32        S0, S0, S2
8D33C:  VSTR            S0, [R10,#0x3C]
8D340:  MOVS            R2, #0
8D342:  STR.W           R1, [R10,#0x34]
8D346:  STRB.W          R2, [R10,#0x30]
8D34A:  STR.W           R2, [R10,#0x2C]
8D34E:  LDR.W           R2, [R10,#0x44]
8D352:  CMP             R2, R0
8D354:  IT NE
8D356:  CMPNE           R0, #0
8D358:  BNE.W           loc_8D5A4
8D35C:  VLDR            S0, [R5,#0x18]
8D360:  CMP             R0, #0
8D362:  ITTT NE
8D364:  VLDRNE          S2, [R10,#0x48]
8D368:  VADDNE.F32      S2, S0, S2
8D36C:  VSTRNE          S2, [R10,#0x48]
8D370:  MOVS            R6, #0
8D372:  VLDR            S2, [R10,#0x7C]
8D376:  ADD.W           R4, R5, #0x458
8D37A:  LDR.W           R1, [R8]
8D37E:  VADD.F32        S0, S0, S2
8D382:  LDRB.W          R2, [R10,#0x4F]
8D386:  LDR.W           R3, [R10,#0x64]
8D38A:  CMP             R1, #0
8D38C:  STRB.W          R2, [R10,#0x71]
8D390:  MOV.W           R2, #0x800; n
8D394:  STR.W           R0, [R10,#0x6C]
8D398:  STRB.W          R6, [R10,#0x70]
8D39C:  STRB.W          R6, [R10,#0x50]
8D3A0:  STR.W           R6, [R10,#0x44]
8D3A4:  STRB.W          R6, [R10,#0x4C]
8D3A8:  STR.W           R3, [R10,#0x74]
8D3AC:  VSTR            S0, [R10,#0x7C]
8D3B0:  ITTT NE
8D3B2:  CMPNE           R0, R1
8D3B4:  MOVNE           R0, #0
8D3B6:  STRNE.W         R0, [R8]
8D3BA:  MOVW            R0, #0xFFFF
8D3BE:  MOV             R1, R4; src
8D3C0:  MOVT            R0, #0x7F7F
8D3C4:  STRB.W          R6, [R11,#0x271]
8D3C8:  STR.W           R0, [R11,#0x2D0]
8D3CC:  LDR.W           R0, [R11,#0x2D4]
8D3D0:  STRD.W          R6, R0, [R11,#0x2D4]
8D3D4:  ADDW            R0, R5, #0xC58; dest
8D3D8:  BLX             j_memcpy
8D3DC:  VMOV.F32        S0, #-1.0
8D3E0:  ADD.W           R0, R5, #0xFC
8D3E4:  VLDR            S2, =0.0
8D3E8:  B               loc_8D3F6
8D3EA:  ADDS            R6, #1
8D3EC:  VSTM            R4!, {S4}
8D3F0:  CMP.W           R6, #0x200
8D3F4:  BEQ             loc_8D438
8D3F6:  VMOV.F32        S4, S0
8D3FA:  LDRB            R1, [R0,R6]
8D3FC:  CMP             R1, #0
8D3FE:  BEQ             loc_8D3EA
8D400:  VLDR            S6, [R4]
8D404:  VMOV.F32        S4, S2
8D408:  VCMP.F32        S6, #0.0
8D40C:  VMRS            APSR_nzcv, FPSCR
8D410:  ITT PL
8D412:  VLDRPL          S4, [R5,#0x18]
8D416:  VADDPL.F32      S4, S6, S4
8D41A:  B               loc_8D3EA
8D41C:  DCD dword_1ACF68 - 0x8D080
8D420:  DCD __stack_chk_guard_ptr - 0x8D084
8D424:  DCD aRb - 0x8D0C8
8D428:  DCD dword_1ACF70 - 0x8D0F2
8D42C:  DCD off_11724C - 0x8D0F4
8D430:  DCD aWt - 0x8D14E
8D434:  DCFS 0.0
8D438:  LDR             R0, [SP,#0xA0+var_78]
8D43A:  MOVW            R1, #0x19D0
8D43E:  STRD.W          R10, R5, [SP,#0xA0+var_90]
8D442:  MOVS            R2, #0
8D444:  LDR.W           R10, [R0]
8D448:  ADD.W           R8, R10, R1
8D44C:  LDR.W           R0, [R10,#8]
8D450:  STRB.W          R2, [R10,#0x357]
8D454:  AND.W           R5, R0, #1
8D458:  LSLS            R0, R0, #0x1E
8D45A:  BPL             loc_8D468
8D45C:  LDRB.W          R0, [R10,#0xC]
8D460:  LSLS            R0, R0, #0x1F
8D462:  BNE.W           loc_8D5E0
8D466:  MOVS            R2, #0
8D468:  CMP             R5, #0
8D46A:  BEQ.W           loc_8D626
8D46E:  LDR.W           R0, [R10,#0x64]
8D472:  CMP             R0, #0
8D474:  BMI             loc_8D48E
8D476:  ADD             R0, R10
8D478:  LDRB.W          R0, [R0,#0xFC]
8D47C:  CMP             R0, #0
8D47E:  ITTTT NE
8D480:  MOVNE           R0, #3
8D482:  STRNE.W         R0, [R8,#0x10C]
8D486:  MOVNE.W         R0, #0x3F800000
8D48A:  STRNE.W         R0, [R10,#0x2FC]
8D48E:  LDR.W           R0, [R10,#0x68]
8D492:  CMP             R0, #0
8D494:  BMI             loc_8D4AE
8D496:  ADD             R0, R10
8D498:  LDRB.W          R0, [R0,#0xFC]
8D49C:  CMP             R0, #0
8D49E:  ITTTT NE
8D4A0:  MOVNE           R0, #3
8D4A2:  STRNE.W         R0, [R8,#0x10C]
8D4A6:  MOVNE.W         R0, #0x3F800000
8D4AA:  STRNE.W         R0, [R10,#0x304]
8D4AE:  LDR.W           R0, [R10,#0x6C]
8D4B2:  CMP             R0, #0
8D4B4:  BMI             loc_8D4CE
8D4B6:  ADD             R0, R10
8D4B8:  LDRB.W          R0, [R0,#0xFC]
8D4BC:  CMP             R0, #0
8D4BE:  ITTTT NE
8D4C0:  MOVNE           R0, #3
8D4C2:  STRNE.W         R0, [R8,#0x10C]
8D4C6:  MOVNE.W         R0, #0x3F800000
8D4CA:  STRNE.W         R0, [R10,#0x300]
8D4CE:  LDR.W           R0, [R10,#0x38]
8D4D2:  CMP             R0, #0
8D4D4:  BMI             loc_8D4EE
8D4D6:  ADD             R0, R10
8D4D8:  LDRB.W          R0, [R0,#0xFC]
8D4DC:  CMP             R0, #0
8D4DE:  ITTTT NE
8D4E0:  MOVNE           R0, #3
8D4E2:  STRNE.W         R0, [R8,#0x10C]
8D4E6:  MOVNE.W         R0, #0x3F800000
8D4EA:  STRNE.W         R0, [R10,#0x344]
8D4EE:  LDR.W           R0, [R10,#0x3C]
8D4F2:  CMP             R0, #0
8D4F4:  BMI             loc_8D50E
8D4F6:  ADD             R0, R10
8D4F8:  LDRB.W          R0, [R0,#0xFC]
8D4FC:  CMP             R0, #0
8D4FE:  ITTTT NE
8D500:  MOVNE           R0, #3
8D502:  STRNE.W         R0, [R8,#0x10C]
8D506:  MOVNE.W         R0, #0x3F800000
8D50A:  STRNE.W         R0, [R10,#0x348]
8D50E:  LDR.W           R0, [R10,#0x40]
8D512:  CMP             R0, #0
8D514:  BMI             loc_8D52E
8D516:  ADD             R0, R10
8D518:  LDRB.W          R0, [R0,#0xFC]
8D51C:  CMP             R0, #0
8D51E:  ITTTT NE
8D520:  MOVNE           R0, #3
8D522:  STRNE.W         R0, [R8,#0x10C]
8D526:  MOVNE.W         R0, #0x3F800000
8D52A:  STRNE.W         R0, [R10,#0x34C]
8D52E:  LDR.W           R0, [R10,#0x44]
8D532:  CMP             R0, #0
8D534:  BMI             loc_8D54E
8D536:  ADD             R0, R10
8D538:  LDRB.W          R0, [R0,#0xFC]
8D53C:  CMP             R0, #0
8D53E:  ITTTT NE
8D540:  MOVNE           R0, #3
8D542:  STRNE.W         R0, [R8,#0x10C]
8D546:  MOVNE.W         R0, #0x3F800000
8D54A:  STRNE.W         R0, [R10,#0x350]
8D54E:  LDR.W           R0, [R10,#0x34]
8D552:  CMP             R0, #0
8D554:  BMI             loc_8D56E
8D556:  ADD             R0, R10
8D558:  LDRB.W          R0, [R0,#0xFC]
8D55C:  CMP             R0, #0
8D55E:  ITTTT NE
8D560:  MOVNE           R0, #3
8D562:  STRNE.W         R0, [R8,#0x10C]
8D566:  MOVNE.W         R0, #0x3F800000
8D56A:  STRNE.W         R0, [R10,#0x340]
8D56E:  LDRB.W          R0, [R10,#0xF8]
8D572:  CMP             R0, #0
8D574:  ITT NE
8D576:  MOVNE.W         R1, #0x3F800000
8D57A:  STRNE.W         R1, [R10,#0x334]
8D57E:  LDRB.W          R1, [R10,#0xF9]
8D582:  CMP             R1, #0
8D584:  ITT NE
8D586:  MOVNE.W         R1, #0x3F800000
8D58A:  STRNE.W         R1, [R10,#0x338]
8D58E:  LDRB.W          R1, [R10,#0xFA]
8D592:  CMP             R1, #0
8D594:  BEQ             loc_8D626
8D596:  CMP             R0, #0
8D598:  ITT EQ
8D59A:  MOVEQ.W         R0, #0x3F800000
8D59E:  STREQ.W         R0, [R10,#0x33C]
8D5A2:  B               loc_8D626
8D5A4:  LDR.W           R1, [R10,#0x6C]
8D5A8:  CMP             R1, R0
8D5AA:  BNE.W           loc_8D35C
8D5AE:  LDR             R0, [SP,#0xA0+var_78]
8D5B0:  MOVW            R1, #0x19D0
8D5B4:  LDR             R0, [R0]
8D5B6:  LDR             R2, [R0,R1]
8D5B8:  ADD             R1, R0
8D5BA:  CMP             R2, #0
8D5BC:  IT NE
8D5BE:  MOVNE           R2, #1
8D5C0:  STRB            R2, [R1,#0xC]
8D5C2:  MOV.W           R2, #0
8D5C6:  ITTT NE
8D5C8:  MOVNE           R0, #0
8D5CA:  STRHNE          R0, [R1,#0xE]
8D5CC:  STRNE           R0, [R1,#8]
8D5CE:  STR             R2, [R1]
8D5D0:  LDR.W           R0, [R10,#0x40]
8D5D4:  STRD.W          R2, R2, [R1,#0x14]
8D5D8:  STR             R2, [R1,#0x24]
8D5DA:  STRB            R2, [R1,#0xD]
8D5DC:  STRB            R2, [R1,#0x10]
8D5DE:  B               loc_8D35C
8D5E0:  VLDR            S0, [R10,#0x2FC]
8D5E4:  VCMP.F32        S0, #0.0
8D5E8:  VMRS            APSR_nzcv, FPSCR
8D5EC:  BGT             loc_8D618
8D5EE:  VLDR            S0, [R10,#0x304]
8D5F2:  VCMP.F32        S0, #0.0
8D5F6:  VMRS            APSR_nzcv, FPSCR
8D5FA:  BGT             loc_8D618
8D5FC:  VLDR            S0, [R10,#0x300]
8D600:  VCMP.F32        S0, #0.0
8D604:  VMRS            APSR_nzcv, FPSCR
8D608:  BGT             loc_8D618
8D60A:  VLDR            S0, [R10,#0x308]
8D60E:  VCMP.F32        S0, #0.0
8D612:  VMRS            APSR_nzcv, FPSCR
8D616:  BLE             loc_8D61E
8D618:  MOVS            R0, #4
8D61A:  STR.W           R0, [R8,#0x10C]
8D61E:  MOVS            R2, #1
8D620:  CMP             R5, #0
8D622:  BNE.W           loc_8D46E
8D626:  MOVW            R0, #0x14B0
8D62A:  MOVW            R1, #0x1458
8D62E:  ADD.W           R4, R10, R1
8D632:  ADD             R0, R10; dest
8D634:  STR             R2, [SP,#0xA0+var_7C]
8D636:  MOVS            R2, #0x58 ; 'X'; n
8D638:  MOV             R1, R4; src
8D63A:  BLX             j_memcpy
8D63E:  VMOV.F32        S0, #-1.0
8D642:  ADD.W           R0, R10, #0x2FC
8D646:  VLDR            S2, =0.0
8D64A:  MOVS            R1, #0
8D64C:  B               loc_8D65A
8D64E:  ADDS            R2, R4, R1
8D650:  ADDS            R1, #4
8D652:  CMP             R1, #0x58 ; 'X'
8D654:  VSTR            S4, [R2]
8D658:  BEQ             loc_8D68C
8D65A:  ADDS            R2, R0, R1
8D65C:  VLDR            S4, [R2]
8D660:  VCMP.F32        S4, #0.0
8D664:  VMOV.F32        S4, S0
8D668:  VMRS            APSR_nzcv, FPSCR
8D66C:  BLE             loc_8D64E
8D66E:  ADDS            R2, R4, R1
8D670:  VMOV.F32        S4, S2
8D674:  VLDR            S6, [R2]
8D678:  VCMP.F32        S6, #0.0
8D67C:  VMRS            APSR_nzcv, FPSCR
8D680:  ITT PL
8D682:  VLDRPL          S4, [R10,#0x18]
8D686:  VADDPL.F32      S4, S6, S4
8D68A:  B               loc_8D64E
8D68C:  LDR.W           R0, [R8,#0x14C]
8D690:  STR             R5, [SP,#0xA0+var_74]
8D692:  CMP             R0, #0
8D694:  BEQ             loc_8D71A
8D696:  LDRB.W          R1, [R8,#0x146]
8D69A:  CBZ             R1, loc_8D6A2
8D69C:  LDRB.W          R1, [R8,#0x14A]
8D6A0:  CBZ             R1, loc_8D71A
8D6A2:  LDR.W           R2, [R8,#0xE4]
8D6A6:  CBZ             R2, loc_8D71A
8D6A8:  LDRB.W          R3, [R8,#0x14A]
8D6AC:  LDR.W           R1, [R8,#0x13C]
8D6B0:  CBZ             R3, loc_8D6F0
8D6B2:  LDR             R2, [SP,#0xA0+var_78]
8D6B4:  MOVW            R3, #0x1AB4
8D6B8:  LDR             R2, [R2]
8D6BA:  LDR             R6, [R2,R3]
8D6BC:  ADD             R3, R2
8D6BE:  STR             R0, [R3,#4]
8D6C0:  ADD.W           R2, R6, R1,LSL#2
8D6C4:  STR.W           R0, [R2,#0x30C]
8D6C8:  ADD.W           R0, R6, R1,LSL#4
8D6CC:  ADD.W           R1, R10, #0x1B20
8D6D0:  ADD.W           R0, R0, #0x314
8D6D4:  VLD1.32         {D16-D17}, [R1]
8D6D8:  VST1.32         {D16-D17}, [R0]
8D6DC:  MOVS            R0, #1
8D6DE:  LDR.W           R2, [R8,#0xE4]
8D6E2:  LDR.W           R1, [R8,#0x13C]
8D6E6:  STRB.W          R0, [R3,#0x63]
8D6EA:  STRH.W          R0, [R3,#0x61]
8D6EE:  B               loc_8D706
8D6F0:  LDR             R3, [SP,#0xA0+var_78]
8D6F2:  MOVW            R6, #0x1AB4
8D6F6:  LDR             R3, [R3]
8D6F8:  LDR             R5, [R3,R6]
8D6FA:  ADD             R3, R6
8D6FC:  STR             R0, [R3,#4]
8D6FE:  ADD.W           R3, R5, R1,LSL#2
8D702:  STR.W           R0, [R3,#0x30C]
8D706:  ADD.W           R0, R2, R1,LSL#4
8D70A:  ADD.W           R1, R10, #0x1B20
8D70E:  VLD1.32         {D16-D17}, [R1]
8D712:  ADD.W           R0, R0, #0x314
8D716:  VST1.32         {D16-D17}, [R0]
8D71A:  LDRB.W          R0, [R8,#0x161]
8D71E:  MOVS            R1, #0
8D720:  STR.W           R1, [R8,#0x14C]
8D724:  CMP             R0, #0
8D726:  STRH.W          R1, [R8,#0x149]
8D72A:  STR.W           R1, [R8,#0x100]
8D72E:  BEQ.W           loc_8D970
8D732:  LDR             R0, [SP,#0xA0+var_78]
8D734:  MOVW            R3, #0x1B48
8D738:  MOVW            R1, #0x1AB4
8D73C:  LDR             R0, [R0]
8D73E:  ADD.W           R9, R0, R1
8D742:  MOVW            R1, #0x1B70
8D746:  LDR             R6, [R0,R3]
8D748:  ADDS            R2, R0, R1
8D74A:  CMP             R6, #0
8D74C:  ITT EQ
8D74E:  LDREQ           R1, [R2,#0x28]
8D750:  CMPEQ           R1, #0
8D752:  BEQ.W           loc_8DCAC
8D756:  MOVW            R1, #0x1B98
8D75A:  LDRB.W          R5, [R9,#0x80]
8D75E:  ADD             R1, R0
8D760:  CMP             R6, #0
8D762:  MOV             R6, R1
8D764:  IT NE
8D766:  ADDNE           R6, R0, R3
8D768:  LSLS            R3, R5, #0x1A
8D76A:  BPL             loc_8D77A
8D76C:  LDR             R3, [R2]
8D76E:  CBZ             R3, loc_8D77A
8D770:  LDR.W           R5, [R9,#4]
8D774:  CMP             R3, R5
8D776:  IT NE
8D778:  MOVNE           R6, R2
8D77A:  CMP             R6, R1
8D77C:  BEQ             loc_8D7A4
8D77E:  LDR             R2, [R1]
8D780:  CBZ             R2, loc_8D7A6
8D782:  LDR             R2, [R1,#8]
8D784:  LDR.W           R3, [R9]
8D788:  LDR.W           R2, [R2,#0x2F8]
8D78C:  CMP             R2, R3
8D78E:  BNE             loc_8D7A6
8D790:  VLDR            S0, [R6,#0xC]
8D794:  VLDR            S2, [R1,#0xC]
8D798:  VCMP.F32        S2, S0
8D79C:  VMRS            APSR_nzcv, FPSCR
8D7A0:  BPL.W           loc_8DEDA
8D7A4:  MOV             R6, R1
8D7A6:  LDR.W           R1, [R9,#0x58]
8D7AA:  CMP             R1, #0
8D7AC:  BNE.W           loc_8D8FE
8D7B0:  LDR             R0, [R6,#8]
8D7B2:  ADD             R1, SP, #0xA0+n
8D7B4:  VLDR            S4, [R6,#0x20]
8D7B8:  VLDR            S6, [R6,#0x24]
8D7BC:  VLDR            S8, [R0,#0xC]
8D7C0:  VLDR            S10, [R0,#0x10]
8D7C4:  VADD.F32        S22, S8, S4
8D7C8:  VLDR            S0, [R6,#0x18]
8D7CC:  VADD.F32        S24, S10, S6
8D7D0:  VLDR            S2, [R6,#0x1C]
8D7D4:  VADD.F32        S18, S0, S8
8D7D8:  VADD.F32        S20, S2, S10
8D7DC:  VSTR            S22, [SP,#0xA0+var_58]
8D7E0:  VSTR            S24, [SP,#0xA0+var_54]
8D7E4:  LDR             R0, [R6,#8]
8D7E6:  VSTR            S20, [SP,#0xA0+var_5C]
8D7EA:  VSTR            S18, [SP,#0xA0+n]
8D7EE:  BL              sub_9B3A4
8D7F2:  LDR             R0, [R6,#8]
8D7F4:  VLDR            S6, =3.4028e38
8D7F8:  VLDR            S0, [R0,#0x50]
8D7FC:  VLDR            S2, [R0,#0x60]
8D800:  VMOV.F32        S4, S0
8D804:  VCMP.F32        S2, S6
8D808:  VMRS            APSR_nzcv, FPSCR
8D80C:  BPL             loc_8D826
8D80E:  VLDR            S8, [R0,#0x1E0]
8D812:  VLDR            S10, [R0,#0x1E8]
8D816:  VLDR            S4, [R0,#0x68]
8D81A:  VSUB.F32        S8, S10, S8
8D81E:  VMLS.F32        S2, S4, S8
8D822:  VMOV.F32        S4, S2
8D826:  VLDR            S2, [R0,#0x54]
8D82A:  VLDR            S8, [R0,#0x64]
8D82E:  VMOV.F32        S10, S2
8D832:  VCMP.F32        S8, S6
8D836:  VMRS            APSR_nzcv, FPSCR
8D83A:  BPL             loc_8D854
8D83C:  VLDR            S10, [R0,#0x1E4]
8D840:  VLDR            S12, [R0,#0x1EC]
8D844:  VLDR            S6, [R0,#0x6C]
8D848:  VSUB.F32        S10, S12, S10
8D84C:  VMLS.F32        S8, S6, S10
8D850:  VMOV.F32        S10, S8
8D854:  VLDR            S6, =0.0
8D858:  VCMP.F32        S10, #0.0
8D85C:  VMRS            APSR_nzcv, FPSCR
8D860:  VCMP.F32        S4, #0.0
8D864:  VMOV.F32        S8, S6
8D868:  IT GE
8D86A:  VMOVGE.F32      S8, S10
8D86E:  VMRS            APSR_nzcv, FPSCR
8D872:  IT GE
8D874:  VMOVGE.F32      S6, S4
8D878:  LDRB.W          R1, [R0,#0x7D]
8D87C:  CMP             R1, #0
8D87E:  ITT EQ
8D880:  LDRBEQ.W        R1, [R0,#0x7F]
8D884:  CMPEQ           R1, #0
8D886:  BEQ.W           loc_8E4FA
8D88A:  VMOV.F32        S4, S6
8D88E:  VMOV.F32        S10, S8
8D892:  VSUB.F32        S0, S0, S4
8D896:  VLDR            S4, [R6,#0x18]
8D89A:  VSUB.F32        S2, S2, S10
8D89E:  VLDR            S6, [R6,#0x1C]
8D8A2:  VLDR            S8, [R6,#0x20]
8D8A6:  VLDR            S10, [R6,#0x24]
8D8AA:  VADD.F32        S4, S0, S4
8D8AE:  VADD.F32        S6, S2, S6
8D8B2:  VADD.F32        S8, S0, S8
8D8B6:  VADD.F32        S10, S2, S10
8D8BA:  VSTR            S4, [R6,#0x18]
8D8BE:  VSTR            S6, [R6,#0x1C]
8D8C2:  VSTR            S8, [R6,#0x20]
8D8C6:  VSTR            S10, [R6,#0x24]
8D8CA:  LDRB            R1, [R0,#0xB]
8D8CC:  LSLS            R1, R1, #0x1F
8D8CE:  BEQ             loc_8D8FA
8D8D0:  VADD.F32        S4, S24, S2
8D8D4:  LDR.W           R0, [R0,#0x2F8]
8D8D8:  VADD.F32        S6, S22, S0
8D8DC:  ADD             R1, SP, #0xA0+var_70
8D8DE:  VADD.F32        S2, S20, S2
8D8E2:  VADD.F32        S0, S18, S0
8D8E6:  VSTR            S4, [SP,#0xA0+var_64]
8D8EA:  VSTR            S6, [SP,#0xA0+var_68]
8D8EE:  VSTR            S2, [SP,#0xA0+var_6C]
8D8F2:  VSTR            S0, [SP,#0xA0+var_70]
8D8F6:  BL              sub_9B3A4
8D8FA:  LDR             R0, [SP,#0xA0+var_78]
8D8FC:  LDR             R0, [R0]
8D8FE:  MOVW            R1, #0x19D0
8D902:  LDR             R2, [R0,R1]
8D904:  ADD             R0, R1
8D906:  CMP             R2, #0
8D908:  IT NE
8D90A:  MOVNE           R2, #1
8D90C:  STRB            R2, [R0,#0xC]
8D90E:  ITTT NE
8D910:  MOVNE           R1, #0
8D912:  STRHNE          R1, [R0,#0xE]
8D914:  STRNE           R1, [R0,#8]
8D916:  MOVS            R1, #0
8D918:  LDR             R2, [R6]
8D91A:  LDR.W           R5, [R9,#4]
8D91E:  LDR             R3, [R6,#8]
8D920:  STRD.W          R1, R1, [R0,#0x14]
8D924:  CMP             R5, R2
8D926:  STR             R1, [R0]
8D928:  STR             R1, [R0,#0x24]
8D92A:  STRB            R1, [R0,#0xD]
8D92C:  STRB            R1, [R0,#0x10]
8D92E:  STR.W           R3, [R9]
8D932:  ITT NE
8D934:  LDRNE           R3, [R6,#4]
8D936:  STRDNE.W        R2, R3, [R9,#0x1C]
8D93A:  LDR.W           R3, [R9,#0x58]
8D93E:  LDR.W           R5, [R0,#0xE4]
8D942:  STR.W           R2, [R0,#0xE8]
8D946:  ADD.W           R4, R5, R3,LSL#2
8D94A:  STR.W           R2, [R4,#0x30C]
8D94E:  ADD.W           R2, R5, R3,LSL#4
8D952:  ADD.W           R3, R6, #0x18
8D956:  ADD.W           R2, R2, #0x314
8D95A:  VLD1.32         {D16-D17}, [R3]
8D95E:  VST1.32         {D16-D17}, [R2]
8D962:  MOVS            R2, #1
8D964:  STRB.W          R2, [R0,#0x147]
8D968:  STRH.W          R2, [R0,#0x145]
8D96C:  STRB.W          R1, [R9,#0x7C]
8D970:  LDR.W           R0, [R8,#0x168]
8D974:  CMP             R0, #2
8D976:  BNE             loc_8D992
8D978:  LDR.W           R0, [R8,#0x178]
8D97C:  CMP             R0, #0
8D97E:  ITTTT EQ
8D980:  LDREQ.W         R0, [R8,#0x1C8]
8D984:  CMPEQ           R0, #0
8D986:  MOVEQ           R0, #0
8D988:  STRBEQ.W        R0, [R8,#0x146]
8D98C:  MOVS            R0, #0
8D98E:  STR.W           R0, [R8,#0x168]
8D992:  LDRB.W          R0, [R8,#0x145]
8D996:  CMP             R0, #0
8D998:  ITT NE
8D99A:  LDRBNE.W        R0, [R8,#0x144]
8D99E:  CMPNE           R0, #0
8D9A0:  BEQ             loc_8D9BC
8D9A2:  LDRB.W          R0, [R10,#8]
8D9A6:  LSLS            R0, R0, #0x1D
8D9A8:  ITT MI
8D9AA:  LDRBMI.W        R0, [R10,#0xC]
8D9AE:  MOVSMI.W        R0, R0,LSL#29
8D9B2:  BMI.W           loc_8DCBE
8D9B6:  MOVS            R0, #0
8D9B8:  STRB.W          R0, [R8,#0x145]
8D9BC:  LDR.W           R0, [R8,#0xE4]
8D9C0:  MOVS            R1, #0
8D9C2:  STR.W           R1, [R8,#0xFC]
8D9C6:  STRB.W          R1, [R8,#0x144]
8D9CA:  CBZ             R0, loc_8DA00
8D9CC:  MOV             R1, R0
8D9CE:  LDR             R2, [R1,#8]
8D9D0:  AND.W           R2, R2, #0x15000000
8D9D4:  CMP.W           R2, #0x1000000
8D9D8:  BNE             loc_8D9E4
8D9DA:  LDR.W           R1, [R1,#0x2F8]
8D9DE:  CMP             R1, #0
8D9E0:  BNE             loc_8D9CE
8D9E2:  B               loc_8D9EC
8D9E4:  CMP             R1, R0
8D9E6:  IT NE
8D9E8:  STRNE.W         R0, [R1,#0x308]
8D9EC:  LDR.W           R1, [R0,#0x308]
8D9F0:  CBZ             R1, loc_8DA00
8D9F2:  LDR.W           R1, [R8,#0x13C]
8D9F6:  CMP             R1, #0
8D9F8:  ITT EQ
8D9FA:  MOVEQ           R1, #0
8D9FC:  STREQ.W         R1, [R0,#0x308]
8DA00:  LDR             R0, [SP,#0xA0+var_78]
8DA02:  STR.W           R11, [SP,#0xA0+var_94]
8DA06:  LDR             R4, [R0]
8DA08:  MOVW            R0, #0x1A9C
8DA0C:  LDR             R1, [R4,R0]
8DA0E:  MOVW            R0, #0x1464
8DA12:  ADD.W           LR, R4, R0
8DA16:  CMP             R1, #1
8DA18:  BLT             loc_8DA4A
8DA1A:  ADD.W           R2, R1, R1,LSL#3
8DA1E:  LDR.W           R0, [LR,#0x640]
8DA22:  ADDS            R1, #1
8DA24:  ADD.W           R0, R0, R2,LSL#2
8DA28:  SUBS            R0, #0x20 ; ' '
8DA2A:  B               loc_8DA34
8DA2C:  SUBS            R1, #1
8DA2E:  SUBS            R0, #0x24 ; '$'
8DA30:  CMP             R1, #1
8DA32:  BLS             loc_8DA4A
8DA34:  LDR             R2, [R0]
8DA36:  CMP             R2, #0
8DA38:  BEQ             loc_8DA2C
8DA3A:  LDRB            R2, [R2,#0xB]
8DA3C:  LSLS            R2, R2, #0x1C
8DA3E:  BPL             loc_8DA2C
8DA40:  MOVS            R0, #0
8DA42:  STR.W           R0, [LR,#0x690]
8DA46:  B.W             loc_8E28C
8DA4A:  LDR.W           R1, [LR,#0x694]
8DA4E:  ADD.W           R9, R4, #0x1B00
8DA52:  LDR.W           R0, [LR,#0x690]
8DA56:  CBZ             R1, loc_8DAA0
8DA58:  CBNZ            R0, loc_8DAA2
8DA5A:  VMOV.F32        S0, #-10.0
8DA5E:  VLDR            S2, [R4,#0x18]
8DA62:  VLDR            S4, [R9,#4]
8DA66:  VLDR            S6, [R9,#0x120]
8DA6A:  VMLA.F32        S4, S2, S0
8DA6E:  VLDR            S0, =0.0
8DA72:  VCMP.F32        S4, #0.0
8DA76:  VMRS            APSR_nzcv, FPSCR
8DA7A:  VCMP.F32        S6, #0.0
8DA7E:  IT GE
8DA80:  VMOVGE.F32      S0, S4
8DA84:  VMRS            APSR_nzcv, FPSCR
8DA88:  VSTR            S0, [R9,#4]
8DA8C:  BHI             loc_8DAEE
8DA8E:  VCMP.F32        S0, #0.0
8DA92:  VMRS            APSR_nzcv, FPSCR
8DA96:  ITT LS
8DA98:  MOVLS           R0, #0
8DA9A:  STRLS.W         R0, [LR,#0x694]
8DA9E:  B               loc_8DAEE
8DAA0:  CBZ             R0, loc_8DAEE
8DAA2:  MOVS            R1, #0
8DAA4:  MOVS            R2, #0
8DAA6:  CMP             R1, #0
8DAA8:  IT EQ
8DAAA:  CMPEQ           R2, #0
8DAAC:  BEQ             loc_8DB98
8DAAE:  LDR.W           R6, [LR,#0x650]
8DAB2:  CMP             R6, #0
8DAB4:  BEQ             loc_8DB54
8DAB6:  VLDR            S0, =0.0
8DABA:  EOR.W           R0, R2, #1
8DABE:  VLDR            S2, [R4,#0x18]
8DAC2:  CMP             R2, #0
8DAC4:  STRB.W          R0, [R9,#8]
8DAC8:  MOV.W           R0, #0
8DACC:  VADD.F32        S0, S2, S0
8DAD0:  STR.W           R0, [R9,#4]
8DAD4:  MOV.W           R0, #4
8DAD8:  STR.W           R6, [LR,#0x690]
8DADC:  STR.W           R6, [LR,#0x694]
8DAE0:  IT NE
8DAE2:  MOVNE           R0, #3
8DAE4:  STR.W           R0, [LR,#0x678]
8DAE8:  VSTR            S0, [R9]
8DAEC:  B               loc_8DBB2
8DAEE:  VLDR            S2, [LR]
8DAF2:  VMOV.F32        S4, #1.0
8DAF6:  VLDR            S0, =0.0
8DAFA:  MOVS            R1, #0
8DAFC:  VCMP.F32        S2, #0.0
8DB00:  MOVS            R0, #0
8DB02:  VMOV.F32        S2, S0
8DB06:  VMRS            APSR_nzcv, FPSCR
8DB0A:  IT EQ
8DB0C:  VMOVEQ.F32      S2, S4
8DB10:  IT MI
8DB12:  VMOVMI.F32      S2, S0
8DB16:  VCMP.F32        S2, #0.0
8DB1A:  LDRB.W          R2, [R4,#0xF8]
8DB1E:  VMRS            APSR_nzcv, FPSCR
8DB22:  IT GT
8DB24:  MOVGT           R1, #1
8DB26:  CMP             R2, #0
8DB28:  BEQ             loc_8DAA4
8DB2A:  LDR             R0, [R4,#0x34]
8DB2C:  CMP             R0, #0
8DB2E:  BMI.W           loc_8DED6
8DB32:  ADD.W           R0, R4, R0,LSL#2
8DB36:  ADD.W           R0, R0, #0x458
8DB3A:  VLDR            S0, [R0]
8DB3E:  VCMP.F32        S0, #0.0
8DB42:  VMRS            APSR_nzcv, FPSCR
8DB46:  BNE.W           loc_8DE7C
8DB4A:  LDRB            R0, [R4,#8]
8DB4C:  AND.W           R2, R0, #1
8DB50:  MOVS            R0, #0
8DB52:  B               loc_8DAA6
8DB54:  LDR.W           R1, [LR,#0x514]
8DB58:  CMP             R1, #1
8DB5A:  BLT             loc_8DB98
8DB5C:  LDR.W           R3, [LR,#0x51C]
8DB60:  SUBS            R3, #4
8DB62:  B               loc_8DB6C
8DB64:  SUBS            R1, #1
8DB66:  ADDS            R6, R1, #1
8DB68:  CMP             R6, #1
8DB6A:  BLS             loc_8DB98
8DB6C:  LDR.W           R6, [R3,R1,LSL#2]
8DB70:  LDRB.W          R5, [R6,#0x7A]
8DB74:  CMP             R5, #0
8DB76:  BEQ             loc_8DB64
8DB78:  LDR.W           R5, [R6,#0x2FC]
8DB7C:  CMP             R5, R6
8DB7E:  BNE             loc_8DB64
8DB80:  LDRB            R5, [R6,#0xA]
8DB82:  LSLS            R5, R5, #0x1C
8DB84:  BMI             loc_8DB64
8DB86:  B               loc_8DAB6
8DB88:  DCFS 3.4028e38
8DB8C:  DCFS 0.0
8DB90:  DCFS -0.2
8DB94:  DCFS 0.05
8DB98:  VLDR            S0, [R9]
8DB9C:  CMP             R0, #0
8DB9E:  VLDR            S2, [R4,#0x18]
8DBA2:  VADD.F32        S0, S2, S0
8DBA6:  VSTR            S0, [R9]
8DBAA:  BEQ.W           loc_8DE6A
8DBAE:  LDR.W           R0, [LR,#0x678]
8DBB2:  CMP             R0, #4
8DBB4:  MOV             R1, R4
8DBB6:  BNE.W           loc_8DD88
8DBBA:  VLDR            S4, =-0.2
8DBBE:  VMOV.F32        S8, #1.0
8DBC2:  VADD.F32        S0, S0, S4
8DBC6:  VLDR            S4, =0.05
8DBCA:  VDIV.F32        S0, S0, S4
8DBCE:  VCMP.F32        S0, S8
8DBD2:  VLDR            S4, =0.0
8DBD6:  VMRS            APSR_nzcv, FPSCR
8DBDA:  VCMP.F32        S0, #0.0
8DBDE:  IT GT
8DBE0:  VMOVGT.F32      S0, S8
8DBE4:  VMRS            APSR_nzcv, FPSCR
8DBE8:  IT MI
8DBEA:  VMOVMI.F32      S0, S4
8DBEE:  VLDR            S6, [R9,#4]
8DBF2:  VMOV.F32        S10, S4
8DBF6:  VCMP.F32        S6, S0
8DBFA:  VMRS            APSR_nzcv, FPSCR
8DBFE:  IT GE
8DC00:  VMOVGE.F32      S0, S6
8DC04:  VLDR            S6, [LR,#0x24]
8DC08:  VSTR            S0, [R9,#4]
8DC0C:  VCMP.F32        S6, #0.0
8DC10:  VMRS            APSR_nzcv, FPSCR
8DC14:  BMI             loc_8DC7E
8DC16:  VMOV.F32        S10, S8
8DC1A:  VCMP.F32        S6, #0.0
8DC1E:  VMRS            APSR_nzcv, FPSCR
8DC22:  BEQ             loc_8DC7E
8DC24:  VMOV.F32        S10, S4
8DC28:  VLDR            S8, [R4,#0x88]
8DC2C:  VCMP.F32        S6, S8
8DC30:  VMRS            APSR_nzcv, FPSCR
8DC34:  BLS             loc_8DC7E
8DC36:  VLDR            S10, [R4,#0x8C]
8DC3A:  VADD.F32        S12, S10, S10
8DC3E:  VMOV.F32        S10, S4
8DC42:  VCMP.F32        S12, #0.0
8DC46:  VMRS            APSR_nzcv, FPSCR
8DC4A:  BLS             loc_8DC7E
8DC4C:  VSUB.F32        S10, S6, S2
8DC50:  VSUB.F32        S6, S6, S8
8DC54:  VSUB.F32        S10, S10, S8
8DC58:  VDIV.F32        S6, S6, S12
8DC5C:  VDIV.F32        S8, S10, S12
8DC60:  VCVT.S32.F32    S8, S8
8DC64:  VCVT.S32.F32    S6, S6
8DC68:  VMOV            R0, S8
8DC6C:  VMOV            R1, S6
8DC70:  SUBS            R0, R1, R0
8DC72:  BIC.W           R0, R0, R0,ASR#31
8DC76:  VMOV            S6, R0
8DC7A:  VCVT.F32.S32    S10, S6
8DC7E:  VLDR            S6, [LR,#0x28]
8DC82:  VCMP.F32        S10, #0.0
8DC86:  VMRS            APSR_nzcv, FPSCR
8DC8A:  MOV.W           R0, #0
8DC8E:  VCMP.F32        S6, #0.0
8DC92:  IT GT
8DC94:  MOVGT           R0, #1
8DC96:  VMRS            APSR_nzcv, FPSCR
8DC9A:  BMI             loc_8DD46
8DC9C:  VCMP.F32        S6, #0.0
8DCA0:  VMRS            APSR_nzcv, FPSCR
8DCA4:  BNE             loc_8DCF4
8DCA6:  VMOV.F32        S4, #1.0
8DCAA:  B               loc_8DD46
8DCAC:  LDR.W           R0, [R9,#4]
8DCB0:  CMP             R0, #0
8DCB2:  ITT NE
8DCB4:  MOVNE.W         R0, #0x100
8DCB8:  STRHNE.W        R0, [R9,#0x62]
8DCBC:  B               loc_8D970
8DCBE:  LDRB.W          R0, [R8,#0x146]
8DCC2:  CMP             R0, #0
8DCC4:  BNE.W           loc_8D9B6
8DCC8:  LDRB.W          R0, [R8,#0x147]
8DCCC:  CMP             R0, #0
8DCCE:  ITT NE
8DCD0:  LDRNE.W         R0, [R8,#0xE4]
8DCD4:  CMPNE           R0, #0
8DCD6:  BEQ.W           loc_8D9B6
8DCDA:  ADD             R0, SP, #0xA0+n
8DCDC:  BL              sub_98718
8DCE0:  LDRD.W          R0, R1, [SP,#0xA0+n]
8DCE4:  STRD.W          R0, R1, [R10,#0x37C]
8DCE8:  STRD.W          R0, R1, [R10,#0xE0]
8DCEC:  MOVS            R0, #1
8DCEE:  STRB.W          R0, [R10,#0x357]
8DCF2:  B               loc_8D9B6
8DCF4:  VLDR            S8, [R4,#0x88]
8DCF8:  VCMP.F32        S6, S8
8DCFC:  VMRS            APSR_nzcv, FPSCR
8DD00:  ITTTT HI
8DD02:  VLDRHI          S10, [R4,#0x8C]
8DD06:  VADDHI.F32      S10, S10, S10
8DD0A:  VCMPHI.F32      S10, #0.0
8DD0E:  VMRSHI          APSR_nzcv, FPSCR
8DD12:  BLS             loc_8DD46
8DD14:  VSUB.F32        S2, S6, S2
8DD18:  VSUB.F32        S4, S6, S8
8DD1C:  VSUB.F32        S2, S2, S8
8DD20:  VDIV.F32        S4, S4, S10
8DD24:  VDIV.F32        S2, S2, S10
8DD28:  VCVT.S32.F32    S2, S2
8DD2C:  VCVT.S32.F32    S4, S4
8DD30:  VMOV            R1, S2
8DD34:  VMOV            R2, S4
8DD38:  SUBS            R1, R2, R1
8DD3A:  BIC.W           R1, R1, R1,ASR#31
8DD3E:  VMOV            S2, R1
8DD42:  VCVT.F32.S32    S4, S2
8DD46:  VCMP.F32        S4, #0.0
8DD4A:  MOV             R1, R4
8DD4C:  VMRS            APSR_nzcv, FPSCR
8DD50:  IT GT
8DD52:  SUBGT           R0, #1
8DD54:  CBZ             R0, loc_8DD6E
8DD56:  MOV             R5, LR
8DD58:  BL              sub_9B4CC
8DD5C:  VMOV.F32        S0, #1.0
8DD60:  LDR             R1, [SP,#0xA0+var_78]
8DD62:  MOV             LR, R5
8DD64:  MOV.W           R0, #0x3F800000
8DD68:  LDR             R1, [R1]
8DD6A:  STR.W           R0, [R9,#4]
8DD6E:  VLDR            S2, [R1,#0x308]
8DD72:  VCMP.F32        S2, #0.0
8DD76:  VMRS            APSR_nzcv, FPSCR
8DD7A:  BLE             loc_8DE0E
8DD7C:  LDR.W           R0, [LR,#0x690]
8DD80:  CMP             R0, #0
8DD82:  BEQ             loc_8DE6A
8DD84:  LDR.W           R0, [LR,#0x678]
8DD88:  CMP             R0, #3
8DD8A:  BNE             loc_8DE6A
8DD8C:  VLDR            S0, =-0.2
8DD90:  VLDR            S2, [R9]
8DD94:  VLDR            S4, [R9,#4]
8DD98:  VADD.F32        S0, S2, S0
8DD9C:  VLDR            S2, =0.05
8DDA0:  VLDR            S6, =0.0
8DDA4:  VDIV.F32        S0, S0, S2
8DDA8:  VMOV.F32        S2, #1.0
8DDAC:  VCMP.F32        S0, S2
8DDB0:  VMRS            APSR_nzcv, FPSCR
8DDB4:  VCMP.F32        S0, #0.0
8DDB8:  IT GT
8DDBA:  VMOVGT.F32      S0, S2
8DDBE:  VMRS            APSR_nzcv, FPSCR
8DDC2:  IT MI
8DDC4:  VMOVMI.F32      S0, S6
8DDC8:  VCMP.F32        S4, S0
8DDCC:  VMRS            APSR_nzcv, FPSCR
8DDD0:  IT GE
8DDD2:  VMOVGE.F32      S0, S4
8DDD6:  LDR             R0, [R1,#0x34]
8DDD8:  VSTR            S0, [R9,#4]
8DDDC:  CMP             R0, #0
8DDDE:  BMI             loc_8DE64
8DDE0:  ADD.W           R0, R1, R0,LSL#2
8DDE4:  ADD.W           R0, R0, #0x458
8DDE8:  VLDR            S0, [R0]
8DDEC:  VCMP.F32        S0, #0.0
8DDF0:  VMRS            APSR_nzcv, FPSCR
8DDF4:  BNE             loc_8DE3C
8DDF6:  LDRB.W          R1, [R4,#0xF9]
8DDFA:  MOVS            R0, #1
8DDFC:  MOV             R5, LR
8DDFE:  CMP             R1, #0
8DE00:  IT EQ
8DE02:  MOVEQ.W         R0, #0xFFFFFFFF
8DE06:  BL              sub_9B4CC
8DE0A:  MOV             LR, R5
8DE0C:  B               loc_8DE64
8DE0E:  VMOV.F32        S2, #1.0
8DE12:  LDRB.W          R0, [R9,#8]
8DE16:  MOVS            R1, #0
8DE18:  VCMP.F32        S0, S2
8DE1C:  VMRS            APSR_nzcv, FPSCR
8DE20:  IT MI
8DE22:  MOVMI           R1, #1
8DE24:  ANDS            R0, R1
8DE26:  STRB.W          R0, [R9,#8]
8DE2A:  BEQ             loc_8DF06
8DE2C:  LDR.W           R1, [LR,#0x650]
8DE30:  CMP             R1, #0
8DE32:  BEQ             loc_8DEFC
8DE34:  MOVS            R0, #0
8DE36:  MOV.W           R11, #1
8DE3A:  B               loc_8DF0E
8DE3C:  VLDR            S2, [R1,#0x88]
8DE40:  VCMP.F32        S0, S2
8DE44:  VMRS            APSR_nzcv, FPSCR
8DE48:  BLE             loc_8DE64
8DE4A:  VCMP.F32        S0, S2
8DE4E:  VMRS            APSR_nzcv, FPSCR
8DE52:  ITTT HI
8DE54:  VLDRHI          S4, [R1,#0x8C]
8DE58:  VCMPHI.F32      S4, #0.0
8DE5C:  VMRSHI          APSR_nzcv, FPSCR
8DE60:  BHI.W           loc_8F556
8DE64:  LDRB.W          R0, [R4,#0xF8]
8DE68:  CBZ             R0, loc_8DE72
8DE6A:  MOV.W           R11, #0
8DE6E:  MOVS            R0, #0
8DE70:  B               loc_8DF14
8DE72:  LDR.W           R0, [LR,#0x690]
8DE76:  MOV.W           R11, #0
8DE7A:  B               loc_8DF14
8DE7C:  VLDR            S2, [R4,#0x88]
8DE80:  VCMP.F32        S0, S2
8DE84:  VMRS            APSR_nzcv, FPSCR
8DE88:  BLE             loc_8DED6
8DE8A:  VCMP.F32        S0, S2
8DE8E:  MOVS            R0, #0
8DE90:  VMRS            APSR_nzcv, FPSCR
8DE94:  BLS.W           loc_8DAA4
8DE98:  VLDR            S4, [R4,#0x8C]
8DE9C:  VCMP.F32        S4, #0.0
8DEA0:  VMRS            APSR_nzcv, FPSCR
8DEA4:  BLS.W           loc_8DAA4
8DEA8:  VLDR            S6, [R4,#0x18]
8DEAC:  VSUB.F32        S6, S0, S6
8DEB0:  VSUB.F32        S0, S0, S2
8DEB4:  VSUB.F32        S2, S6, S2
8DEB8:  VDIV.F32        S0, S0, S4
8DEBC:  VDIV.F32        S2, S2, S4
8DEC0:  VCVT.S32.F32    S0, S0
8DEC4:  VCVT.S32.F32    S2, S2
8DEC8:  VMOV            R0, S0
8DECC:  VMOV            R2, S2
8DED0:  CMP             R0, R2
8DED2:  BGT.W           loc_8DB4A
8DED6:  MOVS            R0, #0
8DED8:  B               loc_8DAA4
8DEDA:  VCMP.F32        S2, S0
8DEDE:  VMRS            APSR_nzcv, FPSCR
8DEE2:  BNE.W           loc_8D7A6
8DEE6:  VLDR            S0, [R6,#0x10]
8DEEA:  VLDR            S2, [R1,#0x10]
8DEEE:  VCMP.F32        S2, S0
8DEF2:  VMRS            APSR_nzcv, FPSCR
8DEF6:  IT MI
8DEF8:  MOVMI           R6, R1
8DEFA:  B               loc_8D7A6
8DEFC:  CBZ             R0, loc_8DF06
8DEFE:  MOV.W           R11, #0
8DF02:  MOVS            R0, #0
8DF04:  B               loc_8DF0E
8DF06:  LDR.W           R0, [LR,#0x690]
8DF0A:  MOV.W           R11, #0
8DF0E:  MOVS            R1, #0
8DF10:  STR.W           R1, [LR,#0x690]
8DF14:  LDR             R1, [SP,#0xA0+var_78]
8DF16:  LDR             R2, [R1]
8DF18:  MOVW            R1, #0x1498
8DF1C:  ADD             R1, R2
8DF1E:  VLDR            S0, [R1]
8DF22:  VCMP.F32        S0, #0.0
8DF26:  VMRS            APSR_nzcv, FPSCR
8DF2A:  ITT EQ
8DF2C:  MOVEQ           R3, #1
8DF2E:  STRBEQ.W        R3, [R9,#8]
8DF32:  LDR.W           R3, [LR,#0x56C]
8DF36:  CBZ             R3, loc_8DF3E
8DF38:  LDRB.W          R3, [LR,#0x579]
8DF3C:  CBZ             R3, loc_8DFB8
8DF3E:  LDRB.W          R3, [R9,#8]
8DF42:  CBZ             R3, loc_8DFB8
8DF44:  VCMP.F32        S0, #0.0
8DF48:  VMRS            APSR_nzcv, FPSCR
8DF4C:  BPL             loc_8DFB8
8DF4E:  VLDR            S0, [R1,#0x58]
8DF52:  VCMP.F32        S0, #0.0
8DF56:  VMRS            APSR_nzcv, FPSCR
8DF5A:  BLT             loc_8DFB8
8DF5C:  VLDR            S0, =-256000.0
8DF60:  MOVS            R6, #0
8DF62:  VLDR            S8, [R4,#0x380]
8DF66:  MOVS            R5, #0
8DF68:  VLDR            S6, [R4,#0x37C]
8DF6C:  MOVS            R3, #0
8DF6E:  VCMP.F32        S8, S0
8DF72:  VLDR            S4, [R4,#0xE4]
8DF76:  VMRS            APSR_nzcv, FPSCR
8DF7A:  VCMP.F32        S6, S0
8DF7E:  VLDR            S2, [R4,#0xE0]
8DF82:  IT GE
8DF84:  MOVGE           R6, #1
8DF86:  VMRS            APSR_nzcv, FPSCR
8DF8A:  IT GE
8DF8C:  MOVGE           R5, #1
8DF8E:  VCMP.F32        S4, S0
8DF92:  ANDS            R6, R5
8DF94:  VMRS            APSR_nzcv, FPSCR
8DF98:  MOV.W           R5, #0
8DF9C:  VCMP.F32        S2, S0
8DFA0:  IT GE
8DFA2:  MOVGE           R5, #1
8DFA4:  VMRS            APSR_nzcv, FPSCR
8DFA8:  IT GE
8DFAA:  MOVGE           R3, #1
8DFAC:  ANDS            R3, R5
8DFAE:  EORS            R3, R6
8DFB0:  EOR.W           R3, R3, #1
8DFB4:  ORR.W           R11, R11, R3
8DFB8:  LDR.W           R6, [LR,#0x690]
8DFBC:  CMP             R6, #0
8DFBE:  BEQ.W           loc_8E134
8DFC2:  LDR             R3, [R6,#8]
8DFC4:  LSLS            R5, R3, #0x1D
8DFC6:  BMI.W           loc_8E134
8DFCA:  LDR.W           R5, [LR,#0x678]
8DFCE:  CMP             R5, #4
8DFD0:  BEQ             loc_8DFF6
8DFD2:  VLDR            S0, =0.0
8DFD6:  CMP             R5, #3
8DFD8:  BNE             loc_8E024
8DFDA:  VMOV.F32        S2, S0
8DFDE:  LDRB.W          R5, [R4,#0xF9]
8DFE2:  CBNZ            R5, loc_8E028
8DFE4:  VLDR            S0, [R2,#0x344]
8DFE8:  ADD.W           R12, R2, #0x34C
8DFEC:  VLDR            S2, [R2,#0x348]
8DFF0:  ADD.W           R5, R2, #0x350
8DFF4:  B               loc_8E006
8DFF6:  VLDR            S0, [R2,#0x31C]
8DFFA:  ADD.W           R12, R2, #0x324
8DFFE:  VLDR            S2, [R2,#0x320]
8E002:  ADD.W           R5, R2, #0x328
8E006:  VSUB.F32        S0, S2, S0
8E00A:  VLDR            S2, [R12]
8E00E:  VLDR            S4, [R5]
8E012:  VSUB.F32        S2, S4, S2
8E016:  VLDR            S4, =0.0
8E01A:  VADD.F32        S0, S0, S4
8E01E:  VADD.F32        S2, S2, S4
8E022:  B               loc_8E028
8E024:  VMOV.F32        S2, S0
8E028:  VCMP.F32        S0, #0.0
8E02C:  VMRS            APSR_nzcv, FPSCR
8E030:  ITT EQ
8E032:  VCMPEQ.F32      S2, #0.0
8E036:  VMRSEQ          APSR_nzcv, FPSCR
8E03A:  BEQ             loc_8E134
8E03C:  VLDR            S6, [R4,#0xA4]
8E040:  VLDR            S4, [R4,#0xA8]
8E044:  VCMP.F32        S6, S4
8E048:  VMRS            APSR_nzcv, FPSCR
8E04C:  IT MI
8E04E:  VMOVMI.F32      S4, S6
8E052:  LDR.W           R6, [R6,#0x2FC]
8E056:  LDR.W           R12, [R6,#0xAC]
8E05A:  MOVS.W          R5, R12,LSL#31
8E05E:  BEQ             loc_8E112
8E060:  VLDR            S6, =800.0
8E064:  MOVW            R3, #0xFFFF
8E068:  VLDR            S8, [R4,#0x18]
8E06C:  MOVT            R3, #0x7F7F
8E070:  VLDR            S10, [R6,#0xC8]
8E074:  BIC.W           R5, R12, #0xE
8E078:  VMUL.F32        S6, S8, S6
8E07C:  VLDR            S8, [R6,#0x10]
8E080:  VLDR            S12, [R6,#0xCC]
8E084:  VLDR            S1, [R6,#0xE0]
8E088:  VLDR            S3, [R6,#0xE4]
8E08C:  STRD.W          R3, R3, [R6,#0xB8]
8E090:  VMUL.F32        S4, S6, S4
8E094:  VLDR            S6, [R6,#0xC]
8E098:  VMOV.F32        S14, S6
8E09C:  VCVT.S32.F32    S4, S4
8E0A0:  VCVT.F32.S32    S4, S4
8E0A4:  VMLA.F32        S14, S0, S4
8E0A8:  VMOV.F32        S0, S8
8E0AC:  VMLA.F32        S0, S2, S4
8E0B0:  VCVT.S32.F32    S2, S14
8E0B4:  VLDR            S14, [R6,#0xDC]
8E0B8:  VCVT.S32.F32    S0, S0
8E0BC:  VCVT.F32.S32    S2, S2
8E0C0:  VCVT.F32.S32    S0, S0
8E0C4:  VSUB.F32        S4, S2, S6
8E0C8:  VSTR            S2, [R6,#0xC]
8E0CC:  VSUB.F32        S6, S0, S8
8E0D0:  VLDR            S8, [R6,#0xD8]
8E0D4:  VSTR            S0, [R6,#0x10]
8E0D8:  VADD.F32        S10, S4, S10
8E0DC:  VADD.F32        S2, S4, S1
8E0E0:  LDR.W           R3, [LR,#0x690]
8E0E4:  VADD.F32        S4, S4, S8
8E0E8:  LDR             R3, [R3,#8]
8E0EA:  STR.W           R5, [R6,#0xAC]
8E0EE:  VADD.F32        S0, S6, S12
8E0F2:  VADD.F32        S12, S6, S3
8E0F6:  VSTR            S10, [R6,#0xC8]
8E0FA:  VADD.F32        S6, S6, S14
8E0FE:  VSTR            S2, [R6,#0xE0]
8E102:  VSTR            S4, [R6,#0xD8]
8E106:  VSTR            S0, [R6,#0xCC]
8E10A:  VSTR            S12, [R6,#0xE4]
8E10E:  VSTR            S6, [R6,#0xDC]
8E112:  MOVS            R6, #1
8E114:  LSLS            R3, R3, #0x17
8E116:  STRB.W          R6, [R9,#0x17]
8E11A:  BMI             loc_8E134
8E11C:  MOVW            R3, #0x2CF8
8E120:  ADD             R3, R2
8E122:  VLDR            S0, [R3]
8E126:  VCMP.F32        S0, #0.0
8E12A:  VMRS            APSR_nzcv, FPSCR
8E12E:  ITT LS
8E130:  LDRLS           R6, [R2,#0x1C]
8E132:  STRLS           R6, [R3]
8E134:  CMP             R0, #0
8E136:  BEQ.W           loc_8E27C
8E13A:  LDR.W           R3, [LR,#0x650]
8E13E:  CBZ             R3, loc_8E14A
8E140:  LDR.W           R3, [R3,#0x2FC]
8E144:  CMP             R0, R3
8E146:  BEQ.W           loc_8E276
8E14A:  MOVW            R3, #0x19D8
8E14E:  ADD             R2, R3
8E150:  LDR.W           R3, [R1,#0x538]
8E154:  STR.W           R11, [SP,#0xA0+var_9C]
8E158:  STR.W           R9, [SP,#0xA0+var_80]
8E15C:  CMP             R3, #0
8E15E:  IT NE
8E160:  MOVNE           R3, #1
8E162:  STRB            R3, [R2,#4]
8E164:  ITTT NE
8E166:  MOVNE           R3, #0
8E168:  STRHNE          R3, [R2,#6]
8E16A:  STRNE           R3, [R2]
8E16C:  STR.W           LR, [SP,#0xA0+var_98]
8E170:  MOVS            R3, #0
8E172:  STR.W           R3, [R1,#0x538]
8E176:  MOV.W           R1, #0x100
8E17A:  STRD.W          R3, R3, [R2,#0xC]
8E17E:  STR             R3, [R2,#0x1C]
8E180:  STRB            R3, [R2,#5]
8E182:  LDR.W           R11, [R0,#0x308]
8E186:  STRB            R3, [R2,#8]
8E188:  LDR             R3, [SP,#0xA0+var_80]
8E18A:  CMP.W           R11, #0
8E18E:  STRH            R1, [R3,#0x16]
8E190:  LDR.W           R1, [R2,#0xC4]
8E194:  IT EQ
8E196:  MOVEQ           R11, R0
8E198:  CBZ             R1, loc_8E20C
8E19A:  CMP             R1, #1
8E19C:  BLT             loc_8E200
8E19E:  LDR.W           R12, [R2,#0xCC]
8E1A2:  MOVS            R0, #0
8E1A4:  MOVS            R2, #1
8E1A6:  ADD.W           LR, R12, #0x28 ; '('
8E1AA:  B               loc_8E1BC
8E1AC:  LSLS            R3, R5, #0x1F
8E1AE:  BEQ             loc_8E202
8E1B0:  ADDS            R0, #1
8E1B2:  ADDS            R2, #1
8E1B4:  ADD.W           LR, LR, #0x24 ; '$'
8E1B8:  CMP             R0, R1
8E1BA:  BEQ             loc_8E20C
8E1BC:  ADD.W           R3, R0, R0,LSL#3
8E1C0:  ADD.W           R3, R12, R3,LSL#2
8E1C4:  LDR             R4, [R3,#4]
8E1C6:  CMP             R4, #0
8E1C8:  BEQ             loc_8E1B0
8E1CA:  LDRB            R3, [R4,#0xB]
8E1CC:  LSLS            R3, R3, #0x1F
8E1CE:  BNE             loc_8E1B0
8E1D0:  MOVS            R5, #0
8E1D2:  MOV             R6, R2
8E1D4:  MOV             R3, LR
8E1D6:  CMP             R4, #0
8E1D8:  ITTTT NE
8E1DA:  LDRNE.W         R9, [R11,#0x2FC]
8E1DE:  LDRNE.W         R4, [R4,#0x2FC]
8E1E2:  SUBNE.W         R4, R4, R9
8E1E6:  CLZNE.W         R4, R4
8E1EA:  ITT NE
8E1EC:  LSRNE           R4, R4, #5
8E1EE:  ORRNE           R5, R4
8E1F0:  CMP             R6, R1
8E1F2:  BGE             loc_8E1AC
8E1F4:  LSLS            R4, R5, #0x1F
8E1F6:  BNE             loc_8E1AC
8E1F8:  LDR.W           R4, [R3],#0x24
8E1FC:  ADDS            R6, #1
8E1FE:  B               loc_8E1D6
8E200:  MOVS            R0, #0
8E202:  CMP             R0, R1
8E204:  ITT LT
8E206:  MOVLT           R1, #0
8E208:  BLLT            sub_98854
8E20C:  MOV             R0, R11
8E20E:  BL              sub_8C628
8E212:  LDR.W           R0, [R11,#0x30C]
8E216:  LDR.W           LR, [SP,#0xA0+var_98]
8E21A:  CBNZ            R0, loc_8E260
8E21C:  LDR             R0, [SP,#0xA0+var_78]
8E21E:  MOVW            R2, #0x1AB4
8E222:  LDRB.W          R1, [R11,#0xA]
8E226:  LDR             R0, [R0]
8E228:  LSLS            R1, R1, #0x1D
8E22A:  ADD             R0, R2
8E22C:  BMI             loc_8E25C
8E22E:  ADR             R1, dword_8E2E0
8E230:  LDR             R2, [R0,#0x58]
8E232:  VLD1.64         {D16-D17}, [R1@128]
8E236:  MOVS            R3, #0
8E238:  MOVW            R6, #0x101
8E23C:  LDR             R1, [R0]
8E23E:  STR             R3, [R0,#4]
8E240:  ADD.W           R1, R1, R2,LSL#2
8E244:  STRB.W          R3, [R0,#0x66]
8E248:  STRH.W          R6, [R0,#0x64]
8E24C:  STR.W           R3, [R1,#0x30C]
8E250:  ADD.W           R1, R0, #0x6C ; 'l'
8E254:  STR             R3, [R0,#0x68]
8E256:  VST1.64         {D16-D17}, [R1]
8E25A:  B               loc_8E260
8E25C:  MOVS            R1, #0
8E25E:  STR             R1, [R0,#4]
8E260:  LDR.W           R0, [R11,#0x138]
8E264:  LDR.W           R9, [SP,#0xA0+var_80]
8E268:  LDR.W           R11, [SP,#0xA0+var_9C]
8E26C:  CMP             R0, #2
8E26E:  ITT EQ
8E270:  MOVEQ           R0, #1
8E272:  STREQ.W         R0, [R9,#0xC]
8E276:  MOVS            R0, #0
8E278:  STR.W           R0, [LR,#0x690]
8E27C:  CMP.W           R11, #0
8E280:  ITT NE
8E282:  LDRNE.W         R5, [LR,#0x650]
8E286:  CMPNE           R5, #0
8E288:  BNE.W           loc_8E3DA
8E28C:  LDR             R5, [SP,#0xA0+var_74]
8E28E:  CMP             R5, #0
8E290:  MOV             R0, R5
8E292:  IT NE
8E294:  MOVNE           R0, #1
8E296:  LDR             R1, [SP,#0xA0+var_7C]
8E298:  ORRS            R0, R1
8E29A:  CMP             R0, #1
8E29C:  BNE             loc_8E300
8E29E:  LDR.W           R0, [R8,#0xE4]
8E2A2:  CBZ             R0, loc_8E300
8E2A4:  LDR             R0, [R0,#8]
8E2A6:  MOVS            R1, #1
8E2A8:  ANDS.W          R0, R0, #0x40000
8E2AC:  EOR.W           R0, R1, R0,LSR#18
8E2B0:  STRB.W          R0, [R10,#0x359]
8E2B4:  BNE             loc_8E306
8E2B6:  LDR.W           R0, [R8,#0xE8]
8E2BA:  CBZ             R0, loc_8E306
8E2BC:  LDRB.W          R0, [R8,#0x146]
8E2C0:  CBNZ            R0, loc_8E306
8E2C2:  MOVS            R0, #1
8E2C4:  B               loc_8E310
8E2C6:  ALIGN 4
8E2C8:  DCFS -256000.0
8E2CC:  DCFS 0.0
8E2D0:  DCFS 800.0
8E2D4:  ALIGN 0x10
8E2E0:  DCD 0x7F7FFFFF, 0x7F7FFFFF, 0xFF7FFFFF, 0xFF7FFFFF
8E2F1:  DCB 0xFF, 0x7F, 0x7F
8E2F4:  DCD 0x7F7FFFFF, 0x7F7FFFFF
8E2FC:  DCB 0xFF, 0xFF
8E2FE:  LDRB            R7, [R7,#arg_15]
8E300:  MOVS            R0, #0
8E302:  STRB.W          R0, [R10,#0x359]
8E306:  LDR.W           R0, [R8,#0x124]
8E30A:  CMP             R0, #0
8E30C:  IT NE
8E30E:  MOVNE           R0, #1
8E310:  LDR             R1, [SP,#0xA0+var_78]
8E312:  STRB.W          R0, [R10,#0x35A]
8E316:  MOVW            R0, #0x145C
8E31A:  LDR             R1, [R1]
8E31C:  ADD             R0, R1
8E31E:  VLDR            S0, [R0]
8E322:  VCMP.F32        S0, #0.0
8E326:  VMRS            APSR_nzcv, FPSCR
8E32A:  BNE.W           loc_8E570
8E32E:  MOVW            R2, #0x19D8
8E332:  ADD             R1, R2
8E334:  LDR.W           R2, [R8]
8E338:  CBZ             R2, loc_8E36A
8E33A:  LDRB.W          R2, [R8,#0x18]
8E33E:  LSLS            R2, R2, #0x1E
8E340:  BMI.W           loc_8E570
8E344:  LDR.W           R2, [R0,#0x574]
8E348:  CMP             R2, #0
8E34A:  IT NE
8E34C:  MOVNE           R2, #1
8E34E:  STRB            R2, [R1,#4]
8E350:  ITTT NE
8E352:  MOVNE           R2, #0
8E354:  STRHNE          R2, [R1,#6]
8E356:  STRNE           R2, [R1]
8E358:  MOVS            R2, #0
8E35A:  STRD.W          R2, R2, [R1,#0xC]
8E35E:  STR.W           R2, [R0,#0x574]
8E362:  STR             R2, [R1,#0x1C]
8E364:  STRB            R2, [R1,#5]
8E366:  STRB            R2, [R1,#8]
8E368:  B               loc_8E570
8E36A:  LDR.W           R4, [R8,#0xE4]
8E36E:  CBZ             R4, loc_8E3B2
8E370:  LDR             R0, [R4,#8]
8E372:  AND.W           R0, R0, #0x5000000
8E376:  CMP.W           R0, #0x1000000
8E37A:  BNE             loc_8E3B2
8E37C:  LDR.W           R0, [R4,#0x2F8]
8E380:  CBZ             R0, loc_8E3B2
8E382:  BL              sub_8C628
8E386:  LDR             R1, [SP,#0xA0+var_78]
8E388:  MOVW            R0, #0x1AB4
8E38C:  LDRB.W          R2, [R8,#0x147]
8E390:  LDR             R3, [R4,#0x4C]
8E392:  LDR             R1, [R1]
8E394:  CMP             R2, #0
8E396:  LDR             R6, [R1,R0]
8E398:  ADD             R0, R1
8E39A:  STR             R3, [R0,#4]
8E39C:  MOV.W           R0, #0
8E3A0:  STRB.W          R0, [R8,#0x144]
8E3A4:  STR.W           R3, [R6,#0x30C]
8E3A8:  ITT NE
8E3AA:  MOVNE           R0, #1
8E3AC:  STRBNE.W        R0, [R8,#0x145]
8E3B0:  B               loc_8E570
8E3B2:  LDR.W           R0, [R8,#0xCC]
8E3B6:  CMP             R0, #1
8E3B8:  BLT             loc_8E40E
8E3BA:  SUBS            R0, #1
8E3BC:  LDR.W           R1, [R8,#0xD4]
8E3C0:  ADD.W           R2, R0, R0,LSL#3
8E3C4:  ADD.W           R1, R1, R2,LSL#2
8E3C8:  LDR             R1, [R1,#4]
8E3CA:  LDRB            R1, [R1,#0xB]
8E3CC:  LSLS            R1, R1, #0x1C
8E3CE:  BMI.W           loc_8E570
8E3D2:  MOVS            R1, #1
8E3D4:  BL              sub_98854
8E3D8:  B               loc_8E570
8E3DA:  MOV             R0, R5
8E3DC:  MOV             R4, R0
8E3DE:  LDR.W           R0, [R0,#0x2F8]
8E3E2:  CBZ             R0, loc_8E3F8
8E3E4:  LDRB.W          R1, [R4,#0x138]
8E3E8:  LSLS            R1, R1, #0x1E
8E3EA:  BMI             loc_8E3F8
8E3EC:  LDR             R1, [R4,#8]
8E3EE:  AND.W           R1, R1, #0x15000000
8E3F2:  CMP.W           R1, #0x1000000
8E3F6:  BEQ             loc_8E3DC
8E3F8:  CMP             R4, R5
8E3FA:  BEQ             loc_8E44E
8E3FC:  MOV             R0, R4
8E3FE:  MOV             R6, LR
8E400:  BL              sub_8C628
8E404:  LDR.W           R0, [R6,#0x650]
8E408:  STR.W           R5, [R4,#0x308]
8E40C:  B               loc_8E450
8E40E:  LDR.W           R0, [R8,#0x13C]
8E412:  CMP             R0, #0
8E414:  BEQ.W           loc_8E522
8E418:  LDR.W           R2, [R1,#0xDC]
8E41C:  MOVS            R3, #0
8E41E:  LDR.W           R0, [R2,#0x308]
8E422:  CMP             R0, #0
8E424:  IT EQ
8E426:  MOVEQ           R0, R2
8E428:  LDR.W           R2, [R0,#0x30C]
8E42C:  STR.W           R3, [R1,#0x134]
8E430:  CMP             R2, #0
8E432:  STR.W           R0, [R1,#0xDC]
8E436:  BEQ.W           loc_8E540
8E43A:  MOVS            R3, #1
8E43C:  STR.W           R2, [R1,#0xE0]
8E440:  STRB.W          R3, [R1,#0x13F]
8E444:  STRH.W          R3, [R1,#0x13D]
8E448:  STR.W           R2, [R0,#0x30C]
8E44C:  B               loc_8E570
8E44E:  MOV             R0, R5
8E450:  MOV.W           R1, #0x100
8E454:  STRH.W          R1, [R9,#0x16]
8E458:  LDRB.W          R0, [R0,#0x138]
8E45C:  LSLS            R0, R0, #0x1E
8E45E:  BMI             loc_8E472
8E460:  LDR             R0, [SP,#0xA0+var_78]
8E462:  MOVW            R1, #0x1AB4
8E466:  LDR             R0, [R0]
8E468:  ADDS            R6, R0, R1
8E46A:  LDR             R3, [R0,R1]
8E46C:  MOVS            R1, #0
8E46E:  STR             R1, [R6,#0x58]
8E470:  B               loc_8E48E
8E472:  LDR             R0, [SP,#0xA0+var_78]
8E474:  MOVW            R2, #0x1AB4
8E478:  LDR.W           R1, [R9,#0xC]
8E47C:  LDR             R0, [R0]
8E47E:  ADDS            R6, R0, R2
8E480:  LDR             R3, [R0,R2]
8E482:  EORS.W          R2, R1, #1
8E486:  STR             R2, [R6,#0x58]
8E488:  BEQ             loc_8E48E
8E48A:  MOV             R1, R3
8E48C:  B               loc_8E4BA
8E48E:  LDR.W           R1, [R3,#0x308]
8E492:  CMP             R1, #0
8E494:  IT EQ
8E496:  MOVEQ           R1, R3
8E498:  STR             R1, [R6]
8E49A:  LDR.W           R2, [R1,#0x30C]
8E49E:  CBZ             R2, loc_8E4B8
8E4A0:  MOVW            R3, #0x1AB8
8E4A4:  ADD             R0, R3
8E4A6:  MOVS            R3, #1
8E4A8:  STR             R2, [R0]
8E4AA:  STRB.W          R3, [R0,#0x5F]
8E4AE:  STRH.W          R3, [R0,#0x5D]
8E4B2:  STR.W           R2, [R1,#0x30C]
8E4B6:  B               loc_8E28C
8E4B8:  MOVS            R2, #0
8E4BA:  LDRB            R3, [R1,#0xA]
8E4BC:  MOVW            R6, #0x1AB8
8E4C0:  ADD             R0, R6
8E4C2:  LSLS            R3, R3, #0x1D
8E4C4:  BMI             loc_8E4F2
8E4C6:  ADR.W           R3, dword_8E2E0
8E4CA:  ADD.W           R1, R1, R2,LSL#2
8E4CE:  VLD1.64         {D16-D17}, [R3@128]
8E4D2:  MOVS            R3, #0
8E4D4:  MOVW            R6, #0x101
8E4D8:  STR             R3, [R0]
8E4DA:  STRB.W          R3, [R0,#0x62]
8E4DE:  STRH.W          R6, [R0,#0x60]
8E4E2:  STR.W           R3, [R1,#0x30C]
8E4E6:  ADD.W           R1, R0, #0x68 ; 'h'
8E4EA:  STR             R3, [R0,#0x64]
8E4EC:  VST1.64         {D16-D17}, [R1]
8E4F0:  B               loc_8E28C
8E4F2:  LDR.W           R1, [R1,#0x30C]
8E4F6:  STR             R1, [R0]
8E4F8:  B               loc_8E28C
8E4FA:  VLDR            S10, [R0,#0x5C]
8E4FE:  VLDR            S4, [R0,#0x58]
8E502:  VCMP.F32        S8, S10
8E506:  VMRS            APSR_nzcv, FPSCR
8E50A:  VCMP.F32        S6, S4
8E50E:  IT MI
8E510:  VMOVMI.F32      S10, S8
8E514:  VMRS            APSR_nzcv, FPSCR
8E518:  IT MI
8E51A:  VMOVMI.F32      S4, S6
8E51E:  B.W             loc_8D892
8E522:  CMP             R4, #0
8E524:  ITTTT NE
8E526:  LDRNE           R0, [R4,#8]
8E528:  ANDNE.W         R0, R0, #0x5000000
8E52C:  CMPNE.W         R0, #0x1000000
8E530:  MOVNE           R0, #0
8E532:  IT NE
8E534:  STRNE.W         R0, [R4,#0x30C]
8E538:  MOVS            R0, #0
8E53A:  STR.W           R0, [R8,#0xE8]
8E53E:  B               loc_8E570
8E540:  LDR             R2, [R0,#8]
8E542:  STR.W           R3, [R1,#0xE0]
8E546:  LSLS            R2, R2, #0xD
8E548:  BMI             loc_8E570
8E54A:  ADR.W           R2, dword_8E2E0
8E54E:  VLD1.64         {D16-D17}, [R2@128]
8E552:  MOVS            R2, #0
8E554:  STR.W           R2, [R0,#0x30C]
8E558:  MOVW            R0, #0x101
8E55C:  STRH.W          R0, [R1,#0x140]
8E560:  ADD.W           R0, R1, #0x148
8E564:  STRB.W          R2, [R1,#0x142]
8E568:  STR.W           R2, [R1,#0x144]
8E56C:  VST1.64         {D16-D17}, [R0]
8E570:  LDR.W           R9, [R8,#0xE8]
8E574:  VMOV.I32        Q8, #0
8E578:  ADD.W           R0, R8, #0xEC
8E57C:  CMP.W           R9, #0
8E580:  VST1.32         {D16-D17}, [R0]
8E584:  BEQ             loc_8E596
8E586:  LDRB.W          R1, [R8,#0x146]
8E58A:  CMP             R1, #0
8E58C:  ITT EQ
8E58E:  LDREQ.W         R1, [R8,#0x124]
8E592:  CMPEQ           R1, #0
8E594:  BEQ             loc_8E5AE
8E596:  LDR.W           R4, [R8,#0xE4]
8E59A:  CBZ             R4, loc_8E612
8E59C:  LDRB            R1, [R4,#0xA]
8E59E:  MOV.W           R12, #0
8E5A2:  LSLS            R1, R1, #0x1D
8E5A4:  ITT MI
8E5A6:  MOVMI           R1, #1
8E5A8:  STRBMI.W        R1, [R8,#0x146]
8E5AC:  B               loc_8E618
8E5AE:  LDR.W           R1, [R8,#0xE4]
8E5B2:  CBZ             R1, loc_8E612
8E5B4:  LDRB            R1, [R1,#0xA]
8E5B6:  LSLS            R1, R1, #0x1D
8E5B8:  BMI             loc_8E596
8E5BA:  LDR             R1, [SP,#0xA0+var_78]
8E5BC:  MOVW            R2, #0x1458
8E5C0:  LDR             R1, [R1]
8E5C2:  VLDR            S0, [R1,#0x2FC]
8E5C6:  ADD             R1, R2
8E5C8:  VCMP.F32        S0, #0.0
8E5CC:  VMRS            APSR_nzcv, FPSCR
8E5D0:  BLE.W           loc_8E810
8E5D4:  VLDR            S0, [R1]
8E5D8:  VLDR            S2, =0.0
8E5DC:  VCMP.F32        S0, #0.0
8E5E0:  VMOV.F32        S0, S2
8E5E4:  VMRS            APSR_nzcv, FPSCR
8E5E8:  IT EQ
8E5EA:  VMOVEQ.F32      S0, S16
8E5EE:  IT MI
8E5F0:  VMOVMI.F32      S0, S2
8E5F4:  LDR.W           R2, [R8]
8E5F8:  CMP             R2, #0
8E5FA:  BNE.W           loc_8F588
8E5FE:  VCMP.F32        S0, #0.0
8E602:  VMRS            APSR_nzcv, FPSCR
8E606:  BLE.W           loc_8F588
8E60A:  STR.W           R9, [R0]
8E60E:  B.W             loc_8F592
8E612:  MOV.W           R12, #1
8E616:  MOVS            R4, #0
8E618:  LDR.W           R2, [R8,#0x108]
8E61C:  MOVS            R1, #0
8E61E:  STRB.W          R1, [R8,#0x161]
8E622:  CBZ             R2, loc_8E62C
8E624:  VDUP.32         Q8, R2
8E628:  VST1.32         {D16-D17}, [R0]
8E62C:  LDR.W           R0, [R8]
8E630:  STR.W           R1, [R8,#0x108]
8E634:  CMP             R0, #0
8E636:  ITE NE
8E638:  LDRNE.W         R1, [R8,#0x14]
8E63C:  MOVEQ.W         R1, #0xFFFFFFFF
8E640:  LDR.W           R0, [R8,#0x168]
8E644:  CBZ             R0, loc_8E64E
8E646:  MOVS            R0, #2
8E648:  STR.W           R0, [R8,#0x168]
8E64C:  B               loc_8E666
8E64E:  MOVS            R0, #0
8E650:  CMP.W           R12, #0
8E654:  STR.W           R0, [R8,#0x164]
8E658:  MOV.W           R0, #0xFFFFFFFF
8E65C:  STR.W           R0, [R8,#0x16C]
8E660:  BEQ             loc_8E738
8E662:  STR.W           R0, [R8,#0x174]
8E666:  VLDR            S18, =0.0
8E66A:  CBZ             R5, loc_8E67C
8E66C:  LDR             R0, [SP,#0xA0+var_78]
8E66E:  LDR             R2, [R0]
8E670:  MOVW            R0, #0x1B3C
8E674:  LDR             R0, [R2,R0]
8E676:  ADDS            R0, #1
8E678:  BEQ.W           loc_8E792
8E67C:  LDR.W           R1, [R8,#0x16C]
8E680:  MOVS            R2, #1
8E682:  ADDS            R0, R1, #1
8E684:  BEQ             loc_8E6A6
8E686:  STRB.W          R2, [R8,#0x161]
8E68A:  MOVS            R2, #0
8E68C:  CMP.W           R9, #0
8E690:  STR.W           R1, [R8,#0x170]
8E694:  BNE             loc_8E6A6
8E696:  MOVW            R0, #0x101
8E69A:  STR.W           R2, [R8,#0x14C]
8E69E:  STRH.W          R0, [R8,#0x149]
8E6A2:  STRB.W          R2, [R8,#0x146]
8E6A6:  LDR             R0, [SP,#0xA0+var_78]
8E6A8:  MOVW            R3, #0x1B31
8E6AC:  MOVW            R6, #0x18CC
8E6B0:  LDR.W           R11, [R0]
8E6B4:  ADD.W           R9, R11, R6
8E6B8:  LDRB.W          R3, [R11,R3]
8E6BC:  CBZ             R3, loc_8E6C2
8E6BE:  MOVS            R3, #1
8E6C0:  B               loc_8E6CC
8E6C2:  LDRB.W          R3, [R9,#0x24D]
8E6C6:  CMP             R3, #0
8E6C8:  IT NE
8E6CA:  MOVNE           R3, #1
8E6CC:  CMP.W           R12, #0
8E6D0:  STRB.W          R3, [R9,#0x24C]
8E6D4:  BNE.W           loc_8E912
8E6D8:  LDRB            R3, [R4,#0xA]
8E6DA:  LSLS            R3, R3, #0x1D
8E6DC:  BMI.W           loc_8E912
8E6E0:  LDR.W           R3, [R8,#0x124]
8E6E4:  CMP             R3, #0
8E6E6:  BNE.W           loc_8E912
8E6EA:  VLDR            S0, [R4,#0x274]
8E6EE:  VLDR            S2, [R9]
8E6F2:  VLDR            S4, [R10,#0x18]
8E6F6:  VMUL.F32        S0, S2, S0
8E6FA:  VLDR            S2, =100.0
8E6FE:  LDR.W           R3, [R4,#0x138]
8E702:  CMP             R3, #0
8E704:  VMUL.F32        S0, S0, S2
8E708:  VMOV.F32        S2, #0.5
8E70C:  VMLA.F32        S2, S0, S4
8E710:  VCVT.S32.F32    S0, S2
8E714:  VCVT.F32.S32    S0, S0
8E718:  BNE.W           loc_8E856
8E71C:  LDRB.W          R3, [R4,#0x141]
8E720:  CLZ.W           R3, R3
8E724:  LSRS            R3, R3, #5
8E726:  ORRS            R3, R2
8E728:  BNE.W           loc_8E856
8E72C:  CMP             R1, #1
8E72E:  BHI             loc_8E824
8E730:  ADD.W           R3, R4, #0x50 ; 'P'
8E734:  MOVS            R6, #0
8E736:  B               loc_8E832
8E738:  LDR.W           R2, [R8,#0x124]
8E73C:  MOV.W           R0, #0xFFFFFFFF
8E740:  CMP             R2, #0
8E742:  BNE             loc_8E662
8E744:  CMP             R1, #0
8E746:  BEQ             loc_8E662
8E748:  LDRB            R0, [R4,#0xA]
8E74A:  LSLS            R0, R0, #0x1D
8E74C:  BMI             loc_8E7D4
8E74E:  LSLS            R0, R1, #0x1F
8E750:  BNE             loc_8E7DA
8E752:  MOV.W           R0, #0xFFFFFFFF
8E756:  LSLS            R2, R1, #0x1E
8E758:  BPL.W           loc_8F814
8E75C:  LDR             R2, [SP,#0xA0+var_78]
8E75E:  MOVW            R3, #0x146C
8E762:  VLDR            S0, =0.0
8E766:  LDR             R2, [R2]
8E768:  VMOV.F32        S2, S0
8E76C:  ADD             R3, R2
8E76E:  VLDR            S4, [R3]
8E772:  VCMP.F32        S4, #0.0
8E776:  VMRS            APSR_nzcv, FPSCR
8E77A:  BMI.W           loc_8F64C
8E77E:  VCMP.F32        S4, #0.0
8E782:  VMRS            APSR_nzcv, FPSCR
8E786:  BNE.W           loc_8F5E4
8E78A:  VMOV.F32        S2, #1.0
8E78E:  B.W             loc_8F64C
8E792:  MOVW            R0, #0x18CC
8E796:  ADDS            R5, R2, R0
8E798:  LDR.W           R6, [R5,#0x1E8]
8E79C:  CMP             R6, #0
8E79E:  BEQ.W           loc_8E67C
8E7A2:  LDRB            R0, [R6,#0xA]
8E7A4:  LSLS            R0, R0, #0x1D
8E7A6:  BMI.W           loc_8E67C
8E7AA:  LDR.W           R0, [R5,#0x228]
8E7AE:  CMP             R0, #0
8E7B0:  ITT EQ
8E7B2:  LDREQ.W         R0, [R5,#0x240]
8E7B6:  CMPEQ           R0, #0
8E7B8:  BNE.W           loc_8E67C
8E7BC:  LDR             R0, [R2,#0x48]
8E7BE:  CMP             R0, #0
8E7C0:  BMI.W           loc_8FAE4
8E7C4:  ADDS            R3, R2, R0
8E7C6:  LDRB.W          R3, [R3,#0xFC]
8E7CA:  CMP             R3, #0
8E7CC:  IT NE
8E7CE:  MOVNE           R3, #1
8E7D0:  B.W             loc_8FAE6
8E7D4:  MOV.W           R0, #0xFFFFFFFF
8E7D8:  B               loc_8E662
8E7DA:  LDR             R0, [SP,#0xA0+var_78]
8E7DC:  MOVW            R2, #0x1468
8E7E0:  VLDR            S0, =0.0
8E7E4:  LDR             R0, [R0]
8E7E6:  VMOV.F32        S2, S0
8E7EA:  ADD             R2, R0
8E7EC:  VLDR            S4, [R2]
8E7F0:  VCMP.F32        S4, #0.0
8E7F4:  VMRS            APSR_nzcv, FPSCR
8E7F8:  BMI.W           loc_8F6D0
8E7FC:  VCMP.F32        S4, #0.0
8E800:  VMRS            APSR_nzcv, FPSCR
8E804:  BNE.W           loc_8F66A
8E808:  VMOV.F32        S2, #1.0
8E80C:  B.W             loc_8F6D0
8E810:  LDR.W           R2, [R8]
8E814:  CMP             R2, #0
8E816:  BEQ.W           loc_8F5A4
8E81A:  CMP             R2, R9
8E81C:  BNE.W           loc_8E596
8E820:  B.W             loc_8F5A4
8E824:  BIC.W           R3, R1, #1
8E828:  CMP             R3, #2
8E82A:  BNE             loc_8E856
8E82C:  ADD.W           R3, R4, #0x54 ; 'T'
8E830:  MOVS            R6, #2
8E832:  VMOV.F32        S2, #-1.0
8E836:  CMP             R1, R6
8E838:  VMOV.F32        S4, S16
8E83C:  IT EQ
8E83E:  VMOVEQ.F32      S4, S2
8E842:  VLDR            S2, [R3]
8E846:  VMLA.F32        S2, S4, S0
8E84A:  VCVT.S32.F32    S2, S2
8E84E:  VCVT.F32.S32    S2, S2
8E852:  VSTR            S2, [R3]
8E856:  VLDR            S2, [R11,#0x31C]
8E85A:  VMOV.F32        S14, #10.0
8E85E:  VLDR            S4, [R11,#0x320]
8E862:  VLDR            S6, [R11,#0x324]
8E866:  VLDR            S8, [R11,#0x328]
8E86A:  VSUB.F32        S2, S4, S2
8E86E:  VLDR            S10, [R11,#0x338]
8E872:  VSUB.F32        S6, S8, S6
8E876:  VLDR            S8, =0.0
8E87A:  VADD.F32        S4, S2, S8
8E87E:  VADD.F32        S2, S6, S8
8E882:  VLDR            S8, [R11,#0x334]
8E886:  VLDR            S6, =0.1
8E88A:  VCMP.F32        S8, #0.0
8E88E:  VMRS            APSR_nzcv, FPSCR
8E892:  VCMP.F32        S10, #0.0
8E896:  VMUL.F32        S12, S4, S6
8E89A:  IT GT
8E89C:  VMOVGT.F32      S4, S12
8E8A0:  VMUL.F32        S6, S2, S6
8E8A4:  IT GT
8E8A6:  VMOVGT.F32      S2, S6
8E8AA:  VMUL.F32        S6, S4, S14
8E8AE:  VMRS            APSR_nzcv, FPSCR
8E8B2:  IT GT
8E8B4:  VMOVGT.F32      S4, S6
8E8B8:  VCMP.F32        S4, #0.0
8E8BC:  VMUL.F32        S6, S2, S14
8E8C0:  IT GT
8E8C2:  VMOVGT.F32      S2, S6
8E8C6:  VMRS            APSR_nzcv, FPSCR
8E8CA:  ITT NE
8E8CC:  LDRBNE.W        R1, [R4,#0x78]
8E8D0:  CMPNE           R1, #0
8E8D2:  BEQ             loc_8E8EE
8E8D4:  VLDR            S6, [R4,#0x50]
8E8D8:  MOVS            R1, #1
8E8DA:  VMLA.F32        S6, S4, S0
8E8DE:  STRB.W          R1, [R8,#0x160]
8E8E2:  VCVT.S32.F32    S4, S6
8E8E6:  VCVT.F32.S32    S4, S4
8E8EA:  VSTR            S4, [R4,#0x50]
8E8EE:  VCMP.F32        S2, #0.0
8E8F2:  VMRS            APSR_nzcv, FPSCR
8E8F6:  BEQ             loc_8E912
8E8F8:  VLDR            S4, [R4,#0x54]
8E8FC:  MOVS            R1, #1
8E8FE:  VMLA.F32        S4, S2, S0
8E902:  STRB.W          R1, [R8,#0x160]
8E906:  VCVT.S32.F32    S0, S4
8E90A:  VCVT.F32.S32    S0, S0
8E90E:  VSTR            S0, [R4,#0x54]
8E912:  ADR.W           R1, unk_8E2F0
8E916:  MOVW            R0, #0xFFFF
8E91A:  VLD1.64         {D16-D17}, [R1@128]
8E91E:  MOVS            R1, #0
8E920:  MOVT            R0, #0x7F7F
8E924:  MOV             R3, #0xFF7FFFFF
8E928:  STRD.W          R1, R1, [R8,#0x178]
8E92C:  STR.W           R1, [R8,#0x180]
8E930:  STRD.W          R1, R1, [R8,#0x1A0]
8E934:  STR.W           R1, [R8,#0x1A8]
8E938:  STRD.W          R1, R1, [R8,#0x1C8]
8E93C:  STR.W           R1, [R8,#0x1D0]
8E940:  ADD.W           R1, R8, #0x184
8E944:  VST1.32         {D16-D17}, [R1]!
8E948:  STR             R0, [R1]
8E94A:  ADD.W           R1, R8, #0x1AC
8E94E:  VST1.32         {D16-D17}, [R1]!
8E952:  STR             R0, [R1]
8E954:  ADD.W           R1, R8, #0x1D4
8E958:  VST1.32         {D16-D17}, [R1]!
8E95C:  STRD.W          R3, R3, [R8,#0x198]
8E960:  STRD.W          R3, R3, [R8,#0x1E8]
8E964:  STRD.W          R3, R3, [R8,#0x1C0]
8E968:  STR             R0, [R1]
8E96A:  CBNZ            R2, loc_8E97A
8E96C:  LDRB.W          R1, [R8,#0x160]
8E970:  CBZ             R1, loc_8E97A
8E972:  LDR.W           R1, [R8,#0x13C]
8E976:  CMP             R1, #0
8E978:  BEQ             loc_8EA10
8E97A:  CMP             R4, #0
8E97C:  BEQ.W           loc_8EB32
8E980:  LDR.W           R1, [R8,#0x13C]
8E984:  VLDR            S0, =0.0
8E988:  ADD.W           R1, R4, R1,LSL#4
8E98C:  VLDR            S8, [R1,#0x314]
8E990:  VLDR            S4, [R1,#0x31C]
8E994:  VCMP.F32        S8, S4
8E998:  VMRS            APSR_nzcv, FPSCR
8E99C:  BGT             loc_8E9CE
8E99E:  VLDR            S14, [R1,#0x318]
8E9A2:  VMOV.F32        S2, S0
8E9A6:  VLDR            S12, [R1,#0x320]
8E9AA:  VMOV.F32        S6, S0
8E9AE:  VMOV.F32        S10, S0
8E9B2:  VCMP.F32        S14, S12
8E9B6:  VMRS            APSR_nzcv, FPSCR
8E9BA:  ITTTT LE
8E9BC:  VMOVLE.F32      S0, S8
8E9C0:  VMOVLE.F32      S2, S14
8E9C4:  VMOVLE.F32      S6, S4
8E9C8:  VMOVLE.F32      S10, S12
8E9CC:  B               loc_8E9DA
8E9CE:  VMOV.F32        S2, S0
8E9D2:  VMOV.F32        S6, S0
8E9D6:  VMOV.F32        S10, S0
8E9DA:  VLDR            S8, [R4,#0xC]
8E9DE:  VLDR            S12, [R4,#0x10]
8E9E2:  VADD.F32        S14, S0, S8
8E9E6:  VADD.F32        S0, S6, S8
8E9EA:  VADD.F32        S4, S10, S12
8E9EE:  VADD.F32        S2, S2, S12
8E9F2:  VADD.F32        S6, S14, S16
8E9F6:  B               loc_8EB42
8E9F8:  DCFS 100.0
8E9FC:  DCFS 0.0
8EA00:  DCFS 0.1
8EA04:  DCFS -256000.0
8EA08:  DCFD -3.40282347e38
8EA10:  VLDR            S0, [R4,#0xC]
8EA14:  VMOV.F32        S12, #-1.0
8EA18:  VLDR            S4, [R4,#0x1E0]
8EA1C:  VLDR            S2, [R4,#0x10]
8EA20:  VLDR            S10, [R4,#0x1EC]
8EA24:  VSUB.F32        S4, S4, S0
8EA28:  VLDR            S8, [R4,#0x1E8]
8EA2C:  VLDR            S6, [R4,#0x1E4]
8EA30:  VSUB.F32        S10, S10, S2
8EA34:  VSUB.F32        S0, S8, S0
8EA38:  VSUB.F32        S2, S6, S2
8EA3C:  VADD.F32        S6, S4, S12
8EA40:  VLDR            S4, [R4,#0x318]
8EA44:  VADD.F32        S10, S10, S16
8EA48:  VADD.F32        S8, S0, S16
8EA4C:  VLDR            S0, [R4,#0x31C]
8EA50:  VADD.F32        S12, S2, S12
8EA54:  VLDR            S2, [R4,#0x314]
8EA58:  VCMP.F32        S2, S6
8EA5C:  VMRS            APSR_nzcv, FPSCR
8EA60:  ITT GE
8EA62:  VCMPGE.F32      S4, S12
8EA66:  VMRSGE          APSR_nzcv, FPSCR
8EA6A:  BLT             loc_8EA84
8EA6C:  VCMP.F32        S0, S8
8EA70:  VMRS            APSR_nzcv, FPSCR
8EA74:  ITTT LS
8EA76:  VLDRLS          S14, [R4,#0x320]
8EA7A:  VCMPLS.F32      S14, S10
8EA7E:  VMRSLS          APSR_nzcv, FPSCR
8EA82:  BLS             loc_8EB26
8EA84:  VLDR            S14, [R4,#0x274]
8EA88:  VMOV.F32        S5, #0.5
8EA8C:  VLDR            S3, [R9]
8EA90:  MOVS            R1, #0
8EA92:  VLDR            S1, [R4,#0x320]
8EA96:  VMUL.F32        S14, S3, S14
8EA9A:  VSUB.F32        S3, S10, S12
8EA9E:  VMUL.F32        S14, S14, S5
8EAA2:  VSUB.F32        S5, S8, S6
8EAA6:  VCMP.F32        S3, S14
8EAAA:  VMOV.F32        S7, S14
8EAAE:  VMRS            APSR_nzcv, FPSCR
8EAB2:  IT MI
8EAB4:  VMOVMI.F32      S7, S3
8EAB8:  VCMP.F32        S5, S14
8EABC:  VADD.F32        S12, S12, S7
8EAC0:  VMRS            APSR_nzcv, FPSCR
8EAC4:  IT MI
8EAC6:  VMOVMI.F32      S14, S5
8EACA:  VADD.F32        S6, S6, S14
8EACE:  VSUB.F32        S10, S10, S7
8EAD2:  VSUB.F32        S8, S8, S14
8EAD6:  VCMP.F32        S4, S12
8EADA:  VMRS            APSR_nzcv, FPSCR
8EADE:  VCMP.F32        S2, S6
8EAE2:  IT GE
8EAE4:  VMOVGE.F32      S12, S4
8EAE8:  VMRS            APSR_nzcv, FPSCR
8EAEC:  VCMP.F32        S1, S10
8EAF0:  IT GE
8EAF2:  VMOVGE.F32      S6, S2
8EAF6:  VMRS            APSR_nzcv, FPSCR
8EAFA:  VCMP.F32        S0, S8
8EAFE:  IT MI
8EB00:  VMOVMI.F32      S10, S1
8EB04:  VMRS            APSR_nzcv, FPSCR
8EB08:  IT MI
8EB0A:  VMOVMI.F32      S8, S0
8EB0E:  VSTR            S6, [R4,#0x314]
8EB12:  VSTR            S12, [R4,#0x318]
8EB16:  VSTR            S8, [R4,#0x31C]
8EB1A:  VSTR            S10, [R4,#0x320]
8EB1E:  LDR.W           R4, [R8,#0xE4]
8EB22:  STR.W           R1, [R8,#0xE8]
8EB26:  MOVS            R1, #0
8EB28:  STRB.W          R1, [R8,#0x160]
8EB2C:  CMP             R4, #0
8EB2E:  BNE.W           loc_8E980
8EB32:  VMOV.F32        S6, S16
8EB36:  VLDR            S2, =0.0
8EB3A:  VLDR            S0, [R11,#0x10]
8EB3E:  VLDR            S4, [R11,#0x14]
8EB42:  VADD.F32        S8, S18, S4
8EB46:  MOVS            R1, #0
8EB48:  VADD.F32        S2, S18, S2
8EB4C:  VLDR            S4, =-256000.0
8EB50:  VCMP.F32        S6, S0
8EB54:  VMRS            APSR_nzcv, FPSCR
8EB58:  IT MI
8EB5A:  VMOVMI.F32      S0, S6
8EB5E:  STR.W           R1, [R8,#0x120]
8EB62:  VSTR            S0, [R8,#0x110]
8EB66:  VSTR            S0, [R8,#0x118]
8EB6A:  VSTR            S8, [R8,#0x11C]
8EB6E:  VSTR            S2, [R8,#0x114]
8EB72:  VLDR            S0, [R11,#0xE0]
8EB76:  VLDR            S2, [R11,#0xE4]
8EB7A:  VCMP.F32        S0, S4
8EB7E:  VMRS            APSR_nzcv, FPSCR
8EB82:  ITT GE
8EB84:  VCMPGE.F32      S2, S4
8EB88:  VMRSGE          APSR_nzcv, FPSCR
8EB8C:  BLT             loc_8EBB4
8EB8E:  VCVT.S32.F32    S2, S2
8EB92:  MOVW            R1, #0x1DD4
8EB96:  VCVT.S32.F32    S0, S0
8EB9A:  ADD             R1, R11
8EB9C:  VCVT.F32.S32    S2, S2
8EBA0:  VCVT.F32.S32    S0, S0
8EBA4:  VSTR            S2, [R1,#4]
8EBA8:  VSTR            S0, [R1]
8EBAC:  VSTR            S0, [R11,#0xE0]
8EBB0:  VSTR            S2, [R11,#0xE4]
8EBB4:  VCMP.F32        S0, S4
8EBB8:  VMRS            APSR_nzcv, FPSCR
8EBBC:  BLT             loc_8EBD8
8EBBE:  VCMP.F32        S2, S4
8EBC2:  VMRS            APSR_nzcv, FPSCR
8EBC6:  ITTT GE
8EBC8:  VLDRGE          S6, [R11,#0x37C]
8EBCC:  VCMPGE.F32      S6, S4
8EBD0:  VMRSGE          APSR_nzcv, FPSCR
8EBD4:  BGE.W           loc_8F102
8EBD8:  MOVS            R1, #0
8EBDA:  STRD.W          R1, R1, [R11,#0x374]
8EBDE:  LDRD.W          R0, R1, [R11,#0xE0]
8EBE2:  VCMP.F32        S0, S4
8EBE6:  VMOV            S2, R1
8EBEA:  VMRS            APSR_nzcv, FPSCR
8EBEE:  STR             R1, [SP,#0xA0+var_80]
8EBF0:  MOV.W           R2, #0
8EBF4:  STR.W           R1, [R11,#0x380]
8EBF8:  VCMP.F32        S2, S4
8EBFC:  MOV.W           R1, #0
8EC00:  STR             R0, [SP,#0xA0+var_7C]
8EC02:  STR.W           R0, [R11,#0x37C]
8EC06:  IT GE
8EC08:  MOVGE           R1, #1
8EC0A:  VMRS            APSR_nzcv, FPSCR
8EC0E:  IT GE
8EC10:  MOVGE           R2, #1
8EC12:  VLDR            S4, =0.0
8EC16:  AND.W           R0, R1, R2
8EC1A:  VLDR            D16, =-3.40282347e38
8EC1E:  MOVS            R6, #0
8EC20:  MOVW            R4, #0x107
8EC24:  MOVS            R1, #0
8EC26:  MOVS            R2, #0
8EC28:  MOVS            R3, #0
8EC2A:  STR             R0, [SP,#0xA0+var_74]
8EC2C:  B               loc_8ECC8
8EC2E:  VMUL.F32        S10, S6, S6
8EC32:  ADDW            R0, R12, #0x444
8EC36:  ADD.W           R5, R11, R3,LSL#3
8EC3A:  VNEG.F32        S14, S6
8EC3E:  VLDR            S12, [R0]
8EC42:  ADD.W           R5, R5, #0x420
8EC46:  VMLA.F32        S10, S8, S8
8EC4A:  VCMP.F32        S12, S10
8EC4E:  VMRS            APSR_nzcv, FPSCR
8EC52:  VCMP.F32        S8, #0.0
8EC56:  IT GE
8EC58:  VMOVGE.F32      S10, S12
8EC5C:  VMRS            APSR_nzcv, FPSCR
8EC60:  VCMP.F32        S6, #0.0
8EC64:  VNEG.F32        S12, S8
8EC68:  IT MI
8EC6A:  VMOVMI.F32      S8, S12
8EC6E:  VMRS            APSR_nzcv, FPSCR
8EC72:  IT MI
8EC74:  VMOVMI.F32      S6, S14
8EC78:  VSTR            S10, [R0]
8EC7C:  ADD.W           R0, R11, R4,LSL#2
8EC80:  VLDR            S12, [R5]
8EC84:  VLDR            S10, [R0]
8EC88:  VCMP.F32        S10, S8
8EC8C:  VMRS            APSR_nzcv, FPSCR
8EC90:  VCMP.F32        S12, S6
8EC94:  IT GE
8EC96:  VMOVGE.F32      S8, S10
8EC9A:  VMRS            APSR_nzcv, FPSCR
8EC9E:  IT GE
8ECA0:  VMOVGE.F32      S6, S12
8ECA4:  VSTR            S8, [R0]
8ECA8:  VSTR            S6, [R5]
8ECAC:  LDRB.W          R0, [LR]
8ECB0:  ADDS            R4, #2
8ECB2:  ADDS            R1, #8
8ECB4:  ADDS            R2, #4
8ECB6:  CMP             R0, #0
8ECB8:  ADD.W           R3, R3, #1
8ECBC:  IT NE
8ECBE:  STRBNE.W        R6, [R9,#0x24B]
8ECC2:  CMP             R3, #5
8ECC4:  BEQ.W           loc_8EE32
8ECC8:  ADD.W           R8, R11, R3
8ECCC:  LDRB.W          R5, [R8,#0xE8]
8ECD0:  CMP             R5, #0
8ECD2:  BEQ             loc_8EDB6
8ECD4:  ADD.W           R12, R11, R2
8ECD8:  MOVS            R5, #0
8ECDA:  ADD.W           LR, R8, #0x3D8
8ECDE:  VLDR            S6, [R12,#0x3F4]
8ECE2:  STRB.W          R6, [R8,#0x3E2]
8ECE6:  VCMP.F32        S6, #0.0
8ECEA:  VMRS            APSR_nzcv, FPSCR
8ECEE:  IT MI
8ECF0:  MOVMI           R5, #1
8ECF2:  STRB.W          R5, [R8,#0x3D8]
8ECF6:  ADD.W           R5, R12, #0x408
8ECFA:  VCMP.F32        S6, #0.0
8ECFE:  VMRS            APSR_nzcv, FPSCR
8ED02:  VSTR            S6, [R5]
8ED06:  BPL             loc_8EDF8
8ED08:  MOV             R10, R9
8ED0A:  VLDR            D17, [R9,#0x8C]
8ED0E:  ADD.W           R9, R11, R1
8ED12:  VLDR            S8, [R11,#0x28]
8ED16:  VLDR            D18, [R9,#0x3B0]
8ED1A:  STR.W           R6, [R12,#0x3F4]
8ED1E:  VSUB.F64        D18, D17, D18
8ED22:  STRB.W          R6, [R8,#0x3DD]
8ED26:  VCVT.F32.F64    S6, D18
8ED2A:  VCMP.F32        S8, S6
8ED2E:  VMRS            APSR_nzcv, FPSCR
8ED32:  BLE             loc_8ED7C
8ED34:  VMOV.F32        S6, S4
8ED38:  LDR             R0, [SP,#0xA0+var_74]
8ED3A:  VMOV.F32        S8, S4
8ED3E:  CBZ             R0, loc_8ED54
8ED40:  ADD.W           R0, R11, R3,LSL#3
8ED44:  VLDR            S6, [R9,#0x388]
8ED48:  VLDR            S10, [R0,#0x384]
8ED4C:  VSUB.F32        S8, S2, S6
8ED50:  VSUB.F32        S6, S0, S10
8ED54:  VMUL.F32        S8, S8, S8
8ED58:  VLDR            S10, [R11,#0x2C]
8ED5C:  VMOV            D17, D16
8ED60:  VMUL.F32        S10, S10, S10
8ED64:  VMLA.F32        S8, S6, S6
8ED68:  VCMP.F32        S8, S10
8ED6C:  VMRS            APSR_nzcv, FPSCR
8ED70:  BPL             loc_8ED7C
8ED72:  VMOV            D17, D16
8ED76:  MOVS            R0, #1
8ED78:  STRB.W          R0, [R8,#0x3DD]
8ED7C:  ADD.W           R0, R11, R3,LSL#3
8ED80:  LDR             R5, [SP,#0xA0+var_7C]
8ED82:  VSTR            D17, [R9,#0x3B0]
8ED86:  MOV             R9, R10
8ED88:  STR.W           R5, [R0,#0x384]
8ED8C:  LDR             R5, [SP,#0xA0+var_80]
8ED8E:  STR.W           R5, [R0,#0x388]
8ED92:  LDRB.W          R5, [R8,#0x3DD]
8ED96:  STRB.W          R5, [R8,#0x3EC]
8ED9A:  STR.W           R6, [R11,R4,LSL#2]
8ED9E:  STR.W           R6, [R0,#0x420]
8EDA2:  LDRB.W          R0, [R8,#0xE8]
8EDA6:  STR.W           R6, [R12,#0x444]
8EDAA:  CMP             R0, #0
8EDAC:  BNE.W           loc_8ECAC
8EDB0:  LDRB.W          R5, [R8,#0x3E2]
8EDB4:  B               loc_8EDEE
8EDB6:  ADD.W           R0, R11, R2
8EDBA:  MOVS            R5, #0
8EDBC:  STRB.W          R6, [R8,#0x3D8]
8EDC0:  MOVT            R5, #0xBF80
8EDC4:  STRB.W          R6, [R8,#0x3DD]
8EDC8:  ADD.W           LR, R8, #0x3D8
8EDCC:  VLDR            S6, [R0,#0x3F4]
8EDD0:  STR.W           R5, [R0,#0x3F4]
8EDD4:  ADD.W           R0, R0, #0x408
8EDD8:  VCMP.F32        S6, #0.0
8EDDC:  MOVS            R5, #0
8EDDE:  VMRS            APSR_nzcv, FPSCR
8EDE2:  IT GE
8EDE4:  MOVGE           R5, #1
8EDE6:  STRB.W          R5, [R8,#0x3E2]
8EDEA:  VSTR            S6, [R0]
8EDEE:  CMP             R5, #0
8EDF0:  IT EQ
8EDF2:  STRBEQ.W        R6, [R8,#0x3EC]
8EDF6:  B               loc_8ECAC
8EDF8:  VLDR            S8, [R11,#0x18]
8EDFC:  STRB.W          R6, [R8,#0x3DD]
8EE00:  VADD.F32        S6, S6, S8
8EE04:  LDR             R0, [SP,#0xA0+var_74]
8EE06:  VMOV.F32        S8, S4
8EE0A:  CMP             R0, #0
8EE0C:  VSTR            S6, [R12,#0x3F4]
8EE10:  VMOV.F32        S6, S4
8EE14:  BEQ.W           loc_8EC2E
8EE18:  ADD.W           R0, R11, R1
8EE1C:  VLDR            S6, [R0,#0x388]
8EE20:  ADD.W           R0, R11, R3,LSL#3
8EE24:  VLDR            S8, [R0,#0x384]
8EE28:  VSUB.F32        S6, S2, S6
8EE2C:  VSUB.F32        S8, S0, S8
8EE30:  B               loc_8EC2E
8EE32:  LDR             R3, [SP,#0xA0+var_84]
8EE34:  MOVW            R2, #0x2D4C
8EE38:  LDR.W           R9, [SP,#0xA0+var_8C]
8EE3C:  LDR.W           R0, [R3,#0x248]
8EE40:  VLDR            S0, [R9,#0x18]
8EE44:  VLDR            S4, [R3,#0x24C]
8EE48:  ADD.W           R1, R9, R0,LSL#2
8EE4C:  ADDS            R0, #1
8EE4E:  ADD             R1, R2
8EE50:  MOV             R2, #0x88888889
8EE58:  VLDR            S2, [R1]
8EE5C:  SMMLA.W         R2, R2, R0, R0
8EE60:  VSUB.F32        S2, S0, S2
8EE64:  VADD.F32        S2, S4, S2
8EE68:  VSTR            S2, [R3,#0x24C]
8EE6C:  VSTR            S0, [R1]
8EE70:  ASRS            R1, R2, #6
8EE72:  ADD.W           R1, R1, R2,LSR#31
8EE76:  VLDR            S0, [R3,#0x24C]
8EE7A:  RSB.W           R1, R1, R1,LSL#4
8EE7E:  VCMP.F32        S0, #0.0
8EE82:  VMRS            APSR_nzcv, FPSCR
8EE86:  SUB.W           R0, R0, R1,LSL#3
8EE8A:  STR.W           R0, [R3,#0x248]
8EE8E:  BLE             loc_8EE9E
8EE90:  VLDR            S2, =120.0
8EE94:  VDIV.F32        S0, S0, S2
8EE98:  VDIV.F32        S0, S16, S0
8EE9C:  B               loc_8EEA2
8EE9E:  VLDR            S0, =3.4028e38
8EEA2:  LDRD.W          R11, R10, [SP,#0xA0+var_94]
8EEA6:  VSTR            S0, [R9,#0x35C]
8EEAA:  BL              sub_8CCBC
8EEAE:  BL              sub_8C7A8
8EEB2:  LDR             R0, [SP,#0xA0+var_78]
8EEB4:  MOVW            R1, #0x1A9C
8EEB8:  LDR.W           R12, [SP,#0xA0+var_88]
8EEBC:  LDR             R0, [R0]
8EEBE:  LDR             R3, [R0,R1]
8EEC0:  MOVW            R1, #0x18CC
8EEC4:  ADD             R1, R0
8EEC6:  CMP             R3, #1
8EEC8:  BLT             loc_8EEF2
8EECA:  ADD.W           R6, R3, R3,LSL#3
8EECE:  LDR.W           R2, [R1,#0x1D8]
8EED2:  ADDS            R3, #1
8EED4:  ADD.W           R2, R2, R6,LSL#2
8EED8:  SUBS            R2, #0x20 ; ' '
8EEDA:  B               loc_8EEE4
8EEDC:  SUBS            R3, #1
8EEDE:  SUBS            R2, #0x24 ; '$'
8EEE0:  CMP             R3, #1
8EEE2:  BLS             loc_8EEF2
8EEE4:  LDR             R6, [R2]
8EEE6:  CMP             R6, #0
8EEE8:  BEQ             loc_8EEDC
8EEEA:  LDRB            R6, [R6,#0xB]
8EEEC:  LSLS            R6, R6, #0x1C
8EEEE:  BPL             loc_8EEDC
8EEF0:  B               loc_8EF06
8EEF2:  LDR.W           R2, [R11,#0x4C]
8EEF6:  CBZ             R2, loc_8EF2A
8EEF8:  VLDR            S0, [R11,#0x5C]
8EEFC:  VCMP.F32        S0, #0.0
8EF00:  VMRS            APSR_nzcv, FPSCR
8EF04:  BLE             loc_8EF2A
8EF06:  VMOV.F32        S0, #6.0
8EF0A:  VLDR            S2, [R9,#0x18]
8EF0E:  VLDR            S4, [R11,#0x178]
8EF12:  VMLA.F32        S4, S2, S0
8EF16:  VMOV.F32        S0, S16
8EF1A:  VCMP.F32        S4, S16
8EF1E:  VMRS            APSR_nzcv, FPSCR
8EF22:  IT MI
8EF24:  VMOVMI.F32      S0, S4
8EF28:  B               loc_8EF4C
8EF2A:  VMOV.F32        S0, #-10.0
8EF2E:  VLDR            S2, [R9,#0x18]
8EF32:  VLDR            S4, [R11,#0x178]
8EF36:  VMLA.F32        S4, S2, S0
8EF3A:  VLDR            S0, =0.0
8EF3E:  VCMP.F32        S4, #0.0
8EF42:  VMRS            APSR_nzcv, FPSCR
8EF46:  IT GE
8EF48:  VMOVGE.F32      S0, S4
8EF4C:  LDR             R6, [SP,#0xA0+var_84]
8EF4E:  MOV.W           R2, #0x3F800000
8EF52:  VSTR            S0, [R11,#0x178]
8EF56:  MOVS            R3, #0
8EF58:  STRD.W          R2, R2, [R6]
8EF5C:  MOV.W           R2, #0xFFFFFFFF
8EF60:  STR.W           R2, [R6,#0x258]
8EF64:  LDR.W           R4, [R1,#0xE4]
8EF68:  STR.W           R3, [R11,#0x26C]
8EF6C:  STRD.W          R2, R2, [R6,#0x250]
8EF70:  CBZ             R4, loc_8EF7C
8EF72:  LDRB.W          R2, [R4,#0x7D]
8EF76:  CMP             R2, #0
8EF78:  BEQ.W           loc_8F13C
8EF7C:  LDR.W           R8, [R11,#0xC]
8EF80:  CMP.W           R8, #0
8EF84:  ITT NE
8EF86:  LDRBNE.W        R0, [R8,#0x7A]
8EF8A:  CMPNE           R0, #0
8EF8C:  BNE             loc_8F08A
8EF8E:  MOVS            R0, #0
8EF90:  LDR.W           R6, [R11,#0x11C]
8EF94:  STRB.W          R0, [R11,#0x130]
8EF98:  MOV             R5, #0x7FFFFFFF
8EF9C:  MOVS            R0, #0
8EF9E:  STR.W           R0, [R11,#0x118]
8EFA2:  STRD.W          R5, R5, [R11,#0x120]
8EFA6:  CBZ             R6, loc_8EFF6
8EFA8:  LDR.W           R0, [R11,#0x128]
8EFAC:  STR.W           R6, [R11,#0x118]
8EFB0:  CMP             R0, R5
8EFB2:  BEQ             loc_8EFCA
8EFB4:  LDR.W           R1, [R6,#0x164]
8EFB8:  ADDS            R1, #1
8EFBA:  BCS             loc_8EFCA
8EFBC:  ADD             R0, R1
8EFBE:  BLX             sub_1090B0
8EFC2:  LDR.W           R12, [SP,#0xA0+var_88]
8EFC6:  STR.W           R1, [R11,#0x120]
8EFCA:  LDR.W           R0, [R11,#0x12C]
8EFCE:  MOV             R4, #0x7FFFFFFF
8EFD2:  CMP             R0, R4
8EFD4:  BEQ             loc_8EFEC
8EFD6:  LDR.W           R1, [R6,#0x168]
8EFDA:  ADDS            R1, #1
8EFDC:  BCS             loc_8EFEC
8EFDE:  ADD             R0, R1
8EFE0:  BLX             sub_1090B0
8EFE4:  LDR.W           R12, [SP,#0xA0+var_88]
8EFE8:  STR.W           R1, [R11,#0x124]
8EFEC:  MOVS            R0, #0
8EFEE:  STRD.W          R4, R4, [R11,#0x128]
8EFF2:  STR.W           R0, [R11,#0x11C]
8EFF6:  LDR.W           R0, [R12,#0x3B0]
8EFFA:  STR.W           R5, [R11,#0x68]
8EFFE:  CBZ             R0, loc_8F022
8F000:  LDR.W           R1, [R12,#0x3B8]
8F004:  MOVS            R2, #0
8F006:  LDR.W           R3, [R1],#4
8F00A:  SUBS            R0, #1
8F00C:  LDRB.W          R6, [R3,#0x7A]
8F010:  STRH.W          R2, [R3,#0x84]
8F014:  STRB.W          R2, [R3,#0x7C]
8F018:  STRB.W          R6, [R3,#0x7B]
8F01C:  STRB.W          R2, [R3,#0x7A]
8F020:  BNE             loc_8F006
8F022:  CMP.W           R8, #0
8F026:  BEQ.W           loc_8F250
8F02A:  LDRB.W          R0, [R8,#0x7B]
8F02E:  CMP             R0, #0
8F030:  BNE.W           loc_8F250
8F034:  LDR             R0, [SP,#0xA0+var_78]
8F036:  MOVW            R2, #0x1978
8F03A:  LDR             R0, [R0]
8F03C:  LDR             R1, [R0,R2]
8F03E:  ADD             R0, R2
8F040:  CMP             R1, #1
8F042:  BLT.W           loc_8F224
8F046:  LDR             R2, [R0,#8]
8F048:  MOV             R3, #unk_40200
8F050:  SUBS            R2, #4
8F052:  B               loc_8F05E
8F054:  SUBS            R1, #1
8F056:  ADDS            R6, R1, #1
8F058:  CMP             R6, #1
8F05A:  BLS.W           loc_8F224
8F05E:  LDR.W           R6, [R2,R1,LSL#2]
8F062:  CMP             R6, #0
8F064:  ITT NE
8F066:  LDRBNE.W        R5, [R6,#0x7B]
8F06A:  CMPNE           R5, #0
8F06C:  BEQ             loc_8F054
8F06E:  LDR             R5, [R6,#8]
8F070:  LSLS            R4, R5, #7
8F072:  BMI             loc_8F054
8F074:  ANDS            R5, R3
8F076:  CMP             R5, R3
8F078:  BEQ             loc_8F054
8F07A:  LDR.W           R0, [R6,#0x308]
8F07E:  CMP             R0, #0
8F080:  IT EQ
8F082:  MOVEQ           R0, R6
8F084:  BL              sub_8C628
8F088:  B               loc_8F250
8F08A:  LDRB.W          R0, [R8,#0xA]
8F08E:  LSLS            R0, R0, #0x1D
8F090:  BMI.W           loc_8EF8E
8F094:  LDRB.W          R0, [R9,#0xF8]
8F098:  CMP             R0, #0
8F09A:  BNE.W           loc_8EF8E
8F09E:  LDR             R0, [SP,#0xA0+var_78]
8F0A0:  LDR             R0, [R0]
8F0A2:  LDR             R1, [R0,#0x34]
8F0A4:  CMP             R1, #0
8F0A6:  BMI.W           loc_8EF8E
8F0AA:  ADD.W           R1, R0, R1,LSL#2
8F0AE:  ADD.W           R1, R1, #0x458
8F0B2:  VLDR            S0, [R1]
8F0B6:  VCMP.F32        S0, #0.0
8F0BA:  VMRS            APSR_nzcv, FPSCR
8F0BE:  BNE.W           loc_8F4F4
8F0C2:  MOVS            R0, #1
8F0C4:  LDR.W           R1, [R10,#0x40]
8F0C8:  CMP             R0, #0
8F0CA:  STRB.W          R0, [R11,#0x130]
8F0CE:  BEQ.W           loc_8F550
8F0D2:  CMP             R1, #0
8F0D4:  BNE.W           loc_8F550
8F0D8:  LDR.W           R0, [R11,#0x10]
8F0DC:  MOV             R1, #0x7FFFFFFF
8F0E0:  STR.W           R1, [R11,#0x128]
8F0E4:  STR.W           R8, [R11,#0x11C]
8F0E8:  CMP             R0, #0
8F0EA:  ITT NE
8F0EC:  LDRNE.W         R0, [R11,#0x68]
8F0F0:  CMPNE           R0, R1
8F0F2:  BNE.W           loc_8FB7E
8F0F6:  LDRB.W          R0, [R9,#0xF9]
8F0FA:  NEGS            R0, R0
8F0FC:  SXTB            R0, R0
8F0FE:  B.W             loc_8FB90
8F102:  VLDR            S8, [R11,#0x380]
8F106:  VCMP.F32        S8, S4
8F10A:  VMRS            APSR_nzcv, FPSCR
8F10E:  BLT.W           loc_8EBD8
8F112:  VSUB.F32        S6, S0, S6
8F116:  VSUB.F32        S2, S2, S8
8F11A:  VCMP.F32        S6, #0.0
8F11E:  VSTR            S6, [R11,#0x374]
8F122:  VMRS            APSR_nzcv, FPSCR
8F126:  VSTR            S2, [R11,#0x378]
8F12A:  ITTEE EQ
8F12C:  VCMPEQ.F32      S2, #0.0
8F130:  VMRSEQ          APSR_nzcv, FPSCR
8F134:  MOVNE           R1, #0
8F136:  STRBNE.W        R1, [R9,#0x24B]
8F13A:  B               loc_8EBDE
8F13C:  VLDR            S0, [R0,#0xF0]
8F140:  VCMP.F32        S0, #0.0
8F144:  VMRS            APSR_nzcv, FPSCR
8F148:  ITTT EQ
8F14A:  VLDREQ          S2, [R0,#0xF4]
8F14E:  VCMPEQ.F32      S2, #0.0
8F152:  VMRSEQ          APSR_nzcv, FPSCR
8F156:  BEQ.W           loc_8EF7C
8F15A:  VCMP.F32        S0, #0.0
8F15E:  VMRS            APSR_nzcv, FPSCR
8F162:  ITTTT NE
8F164:  LDRBNE.W        R2, [R0,#0xF8]
8F168:  CMPNE           R2, #0
8F16A:  LDRBNE.W        R2, [R0,#0x9C]
8F16E:  CMPNE           R2, #0
8F170:  BNE.W           loc_8F43C
8F174:  MOVS            R3, #0x1000010
8F17A:  LDR             R6, [R4,#8]
8F17C:  ADD.W           R5, R3, #0x208
8F180:  MOV             R2, R4
8F182:  ANDS            R5, R6
8F184:  CMP             R5, R3
8F186:  BNE             loc_8F190
8F188:  LDR.W           R4, [R2,#0x2F8]
8F18C:  CMP             R4, #0
8F18E:  BNE             loc_8F17A
8F190:  TST.W           R6, #0x210
8F194:  BNE.W           loc_8EF7C
8F198:  VCMP.F32        S0, #0.0
8F19C:  VMRS            APSR_nzcv, FPSCR
8F1A0:  BNE             loc_8F1B2
8F1A2:  VLDR            S2, [R0,#0xF4]
8F1A6:  VCMP.F32        S2, #0.0
8F1AA:  VMRS            APSR_nzcv, FPSCR
8F1AE:  BEQ.W           loc_8EF7C
8F1B2:  LDRB.W          R3, [R0,#0xF8]
8F1B6:  CMP             R3, #0
8F1B8:  BNE.W           loc_8EF7C
8F1BC:  VLDR            S2, [R2,#0x34]
8F1C0:  VCMP.F32        S0, #0.0
8F1C4:  VLDR            S4, [R2,#0x220]
8F1C8:  VLDR            S6, [R2,#0x228]
8F1CC:  VADD.F32        S2, S2, S2
8F1D0:  VMRS            APSR_nzcv, FPSCR
8F1D4:  VSUB.F32        S4, S6, S4
8F1D8:  VADD.F32        S2, S4, S2
8F1DC:  VLDR            S4, =0.67
8F1E0:  VMUL.F32        S2, S2, S4
8F1E4:  BEQ.W           loc_8FA94
8F1E8:  VLDR            S6, [R2,#0x274]
8F1EC:  VLDR            S8, [R1]
8F1F0:  LDRB.W          R3, [R0,#0xF9]
8F1F4:  VMUL.F32        S6, S8, S6
8F1F8:  CMP             R3, #0
8F1FA:  BEQ.W           loc_8FA4A
8F1FE:  VADD.F32        S6, S6, S6
8F202:  ADD.W           R3, R2, #0x50 ; 'P'
8F206:  VMOV.F32        S4, S2
8F20A:  VCMP.F32        S6, S2
8F20E:  B.W             loc_8FA76
8F212:  ALIGN 4
8F214:  DCFS 120.0
8F218:  DCFS 3.4028e38
8F21C:  DCFS 0.0
8F220:  DCFS 0.67
8F224:  LDR.W           R1, [R0,#0x13C]
8F228:  CMP             R1, #0
8F22A:  ITTTT NE
8F22C:  MOVNE           R1, #0
8F22E:  STRBNE.W        R1, [R0,#0x1A1]
8F232:  STRBNE.W        R1, [R0,#0x19C]
8F236:  STRDNE.W        R1, R1, [R0,#0x13C]
8F23A:  IT NE
8F23C:  STRNE.W         R1, [R0,#0x194]
8F240:  LDR.W           R0, [R0,#0x124]
8F244:  CMP             R0, #1
8F246:  ITTT GE
8F248:  MOVGE           R0, #0
8F24A:  MOVGE           R1, #0
8F24C:  BLGE            sub_98854
8F250:  LDR.W           R0, [R10,#4]
8F254:  CMP.W           R0, #0xFFFFFFFF
8F258:  BGT             loc_8F2BA
8F25A:  LDR             R0, [SP,#0xA0+var_78]
8F25C:  MOVS            R5, #0
8F25E:  LDR             R0, [R0]
8F260:  CMP             R0, #0
8F262:  ITTT NE
8F264:  LDRNE.W         R1, [R0,#0x370]
8F268:  ADDNE           R1, #1
8F26A:  STRNE.W         R1, [R0,#0x370]
8F26E:  LDR             R6, =(dword_1ACF70 - 0x8F276)
8F270:  LDR             R0, =(off_117248 - 0x8F278)
8F272:  ADD             R6, PC; dword_1ACF70
8F274:  ADD             R0, PC; off_117248
8F276:  LDR             R1, [R6]
8F278:  LDR             R2, [R0]; sub_9A720
8F27A:  MOVS            R0, #0
8F27C:  BLX             R2; sub_9A720
8F27E:  LDR.W           R1, [R10,#8]; src
8F282:  MOV             R4, R0
8F284:  CBZ             R1, loc_8F2B6
8F286:  LDR.W           R0, [R10]
8F28A:  LSLS            R2, R0, #2; n
8F28C:  MOV             R0, R4; dest
8F28E:  BLX             j_memcpy
8F292:  LDR.W           R0, [R10,#8]
8F296:  CMP             R0, #0
8F298:  ITTTT NE
8F29A:  LDRNE           R1, [SP,#0xA0+var_78]
8F29C:  LDRNE           R1, [R1]
8F29E:  CMPNE           R1, #0
8F2A0:  LDRNE.W         R2, [R1,#0x370]
8F2A4:  ITT NE
8F2A6:  SUBNE           R2, #1
8F2A8:  STRNE.W         R2, [R1,#0x370]
8F2AC:  LDR             R2, =(off_11724C - 0x8F2B4)
8F2AE:  LDR             R1, [R6]
8F2B0:  ADD             R2, PC; off_11724C
8F2B2:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8F2B4:  BLX             R2; j_opus_decoder_destroy_0
8F2B6:  STRD.W          R5, R4, [R10,#4]
8F2BA:  LDR.W           R0, [R11,#4]
8F2BE:  MOVS            R5, #0
8F2C0:  STR.W           R5, [R10]
8F2C4:  CMP.W           R0, #0xFFFFFFFF
8F2C8:  BGT             loc_8F330
8F2CA:  LDR             R0, [SP,#0xA0+var_78]
8F2CC:  MOV.W           R8, #0
8F2D0:  LDR             R0, [R0]
8F2D2:  CMP             R0, #0
8F2D4:  ITTT NE
8F2D6:  LDRNE.W         R1, [R0,#0x370]
8F2DA:  ADDNE           R1, #1
8F2DC:  STRNE.W         R1, [R0,#0x370]
8F2E0:  LDR             R6, =(dword_1ACF70 - 0x8F2E8)
8F2E2:  LDR             R0, =(off_117248 - 0x8F2EA)
8F2E4:  ADD             R6, PC; dword_1ACF70
8F2E6:  ADD             R0, PC; off_117248
8F2E8:  LDR             R1, [R6]
8F2EA:  LDR             R2, [R0]; sub_9A720
8F2EC:  MOVS            R0, #0
8F2EE:  BLX             R2; sub_9A720
8F2F0:  LDR.W           R1, [R11,#8]; src
8F2F4:  MOV             R4, R0
8F2F6:  CBZ             R1, loc_8F32C
8F2F8:  LDR.W           R0, [R11]
8F2FC:  ADD.W           R0, R0, R0,LSL#3
8F300:  LSLS            R2, R0, #2; n
8F302:  MOV             R0, R4; dest
8F304:  BLX             j_memcpy
8F308:  LDR.W           R0, [R11,#8]
8F30C:  CMP             R0, #0
8F30E:  ITTTT NE
8F310:  LDRNE           R1, [SP,#0xA0+var_78]
8F312:  LDRNE           R1, [R1]
8F314:  CMPNE           R1, #0
8F316:  LDRNE.W         R2, [R1,#0x370]
8F31A:  ITT NE
8F31C:  SUBNE           R2, #1
8F31E:  STRNE.W         R2, [R1,#0x370]
8F322:  LDR             R2, =(off_11724C - 0x8F32A)
8F324:  LDR             R1, [R6]
8F326:  ADD             R2, PC; off_11724C
8F328:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8F32A:  BLX             R2; j_opus_decoder_destroy_0
8F32C:  STRD.W          R8, R4, [R11,#4]
8F330:  LDR             R0, [SP,#0xA0+var_78]
8F332:  LDR.W           R12, [R0]
8F336:  MOVW            R0, #0x1A9C
8F33A:  STR.W           R5, [R11]
8F33E:  LDR.W           R2, [R12,R0]
8F342:  CMP             R2, #0
8F344:  BEQ             loc_8F3D2
8F346:  LDR.W           R8, [R11,#0xC]
8F34A:  CMP.W           R8, #0
8F34E:  BEQ             loc_8F3BA
8F350:  CMP             R2, #1
8F352:  BLT             loc_8F3BA
8F354:  ADD             R0, R12
8F356:  MOV.W           R10, #1
8F35A:  LDR.W           LR, [R0,#8]
8F35E:  MOVS            R0, #0
8F360:  ADD.W           R9, LR, #0x28 ; '('
8F364:  B               loc_8F378
8F366:  LSLS            R1, R1, #0x1F
8F368:  BEQ             loc_8F432
8F36A:  ADDS            R0, #1
8F36C:  ADD.W           R10, R10, #1
8F370:  ADD.W           R9, R9, #0x24 ; '$'
8F374:  CMP             R0, R2
8F376:  BEQ             loc_8F3CE
8F378:  ADD.W           R1, R0, R0,LSL#3
8F37C:  ADD.W           R1, LR, R1,LSL#2
8F380:  LDR             R3, [R1,#4]
8F382:  CMP             R3, #0
8F384:  BEQ             loc_8F36A
8F386:  LDRB            R1, [R3,#0xB]
8F388:  LSLS            R1, R1, #0x1F
8F38A:  BNE             loc_8F36A
8F38C:  MOVS            R1, #0
8F38E:  MOV             R4, R10
8F390:  MOV             R5, R9
8F392:  CMP             R3, #0
8F394:  ITTTT NE
8F396:  LDRNE.W         R6, [R8,#0x2FC]
8F39A:  LDRNE.W         R3, [R3,#0x2FC]
8F39E:  SUBNE           R3, R3, R6
8F3A0:  CLZNE.W         R3, R3
8F3A4:  ITT NE
8F3A6:  LSRNE           R3, R3, #5
8F3A8:  ORRNE           R1, R3
8F3AA:  CMP             R4, R2
8F3AC:  BGE             loc_8F366
8F3AE:  LSLS            R3, R1, #0x1F
8F3B0:  BNE             loc_8F366
8F3B2:  LDR.W           R3, [R5],#0x24
8F3B6:  ADDS            R4, #1
8F3B8:  B               loc_8F392
8F3BA:  MOVS            R0, #0
8F3BC:  CMP             R0, R2
8F3BE:  BGE             loc_8F3D2
8F3C0:  MOVS            R1, #0
8F3C2:  BL              sub_98854
8F3C6:  LDR             R0, [SP,#0xA0+var_78]
8F3C8:  LDR.W           R12, [R0]
8F3CC:  B               loc_8F3D2
8F3CE:  LDR.W           R9, [SP,#0xA0+var_8C]
8F3D2:  MOVW            R1, #0x1A10
8F3D6:  MOVS            R6, #0
8F3D8:  LDR.W           R2, [R12,R1]
8F3DC:  MOVW            R3, #0x1A30
8F3E0:  LDR             R0, =(aDebugDefault - 0x8F3F8); "Debug##Default" ...
8F3E2:  MOVT            R6, #0x43C8
8F3E6:  ORR.W           R2, R2, #2
8F3EA:  STR.W           R2, [R12,R1]
8F3EE:  ADD.W           R2, R12, R3
8F3F2:  ADD             R1, R12
8F3F4:  ADD             R0, PC; "Debug##Default"
8F3F6:  STR             R6, [R2,#4]
8F3F8:  MOVS            R2, #4
8F3FA:  STR             R2, [R1,#8]
8F3FC:  MOVS            R1, #0
8F3FE:  MOVS            R2, #0
8F400:  STR.W           R6, [R12,R3]
8F404:  BL              sub_8FD20
8F408:  MOVS            R0, #1
8F40A:  STRB.W          R0, [R9,#2]
8F40E:  LDR             R0, [SP,#0xA0+var_4C]
8F410:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x8F418)
8F414:  ADD             R1, PC; __stack_chk_guard_ptr
8F416:  LDR             R1, [R1]; __stack_chk_guard
8F418:  LDR             R1, [R1]
8F41A:  CMP             R1, R0
8F41C:  ITTTT EQ
8F41E:  ADDEQ           SP, SP, #0x58 ; 'X'
8F420:  VPOPEQ          {D8-D12}
8F424:  ADDEQ           SP, SP, #4
8F426:  POPEQ.W         {R8-R11}
8F42A:  IT EQ
8F42C:  POPEQ           {R4-R7,PC}
8F42E:  BLX             __stack_chk_fail
8F432:  LDR.W           R9, [SP,#0xA0+var_8C]
8F436:  CMP             R0, R2
8F438:  BLT             loc_8F3C0
8F43A:  B               loc_8F3D2
8F43C:  VLDR            S2, [R4,#0x274]
8F440:  VMOV.F32        S8, #2.5
8F444:  VLDR            S6, =0.1
8F448:  VMOV.F32        S4, S2
8F44C:  VMLA.F32        S4, S0, S6
8F450:  VMOV.F32        S0, #0.5
8F454:  VCMP.F32        S4, S8
8F458:  VMRS            APSR_nzcv, FPSCR
8F45C:  VCMP.F32        S4, S0
8F460:  IT GT
8F462:  VMOVGT.F32      S4, S8
8F466:  VMRS            APSR_nzcv, FPSCR
8F46A:  IT MI
8F46C:  VMOVMI.F32      S4, S0
8F470:  LDRB            R1, [R4,#0xB]
8F472:  VSTR            S4, [R4,#0x274]
8F476:  LSLS            R1, R1, #0x1F
8F478:  BNE.W           loc_8EF7C
8F47C:  VDIV.F32        S18, S4, S2
8F480:  ADD             R1, SP, #0xA0+n
8F482:  MOVS            R2, #0
8F484:  VSUB.F32        S0, S16, S18
8F488:  VLDR            S8, [R4,#0x18]
8F48C:  VLDR            S2, [R4,#0xC]
8F490:  VLDR            S10, [R0,#0xE0]
8F494:  VLDR            S12, [R0,#0xE4]
8F498:  MOV             R0, R4
8F49A:  VLDR            S4, [R4,#0x10]
8F49E:  VSUB.F32        S10, S10, S2
8F4A2:  VLDR            S6, [R4,#0x14]
8F4A6:  VSUB.F32        S12, S12, S4
8F4AA:  VMUL.F32        S14, S0, S8
8F4AE:  VMUL.F32        S0, S0, S6
8F4B2:  VMUL.F32        S12, S14, S12
8F4B6:  VMUL.F32        S0, S0, S10
8F4BA:  VDIV.F32        S8, S12, S8
8F4BE:  VDIV.F32        S0, S0, S6
8F4C2:  VADD.F32        S4, S4, S8
8F4C6:  VADD.F32        S0, S2, S0
8F4CA:  VSTR            S4, [SP,#0xA0+var_5C]
8F4CE:  VSTR            S0, [SP,#0xA0+n]
8F4D2:  BL              sub_8C960
8F4D6:  ADD.W           R0, R4, #0x14
8F4DA:  LDR.W           R12, [SP,#0xA0+var_88]
8F4DE:  VLD1.32         {D16-D17}, [R0]
8F4E2:  VMUL.F32        Q8, Q8, D9[0]
8F4E6:  VCVT.S32.F32    Q8, Q8
8F4EA:  VCVT.F32.S32    Q8, Q8
8F4EE:  VST1.32         {D16-D17}, [R0]
8F4F2:  B               loc_8EF7C
8F4F4:  VLDR            S2, [R0,#0x88]
8F4F8:  VCMP.F32        S0, S2
8F4FC:  VMRS            APSR_nzcv, FPSCR
8F500:  BLE.W           loc_8EF8E
8F504:  VCMP.F32        S0, S2
8F508:  VMRS            APSR_nzcv, FPSCR
8F50C:  ITTT HI
8F50E:  VLDRHI          S4, [R0,#0x8C]
8F512:  VCMPHI.F32      S4, #0.0
8F516:  VMRSHI          APSR_nzcv, FPSCR
8F51A:  BLS.W           loc_8EF8E
8F51E:  VLDR            S6, [R0,#0x18]
8F522:  MOVS            R0, #0
8F524:  VSUB.F32        S6, S0, S6
8F528:  VSUB.F32        S0, S0, S2
8F52C:  VSUB.F32        S2, S6, S2
8F530:  VDIV.F32        S0, S0, S4
8F534:  VDIV.F32        S2, S2, S4
8F538:  VCVT.S32.F32    S0, S0
8F53C:  VCVT.S32.F32    S2, S2
8F540:  VMOV            R1, S0
8F544:  VMOV            R2, S2
8F548:  CMP             R1, R2
8F54A:  IT GT
8F54C:  MOVGT           R0, #1
8F54E:  B               loc_8F0C4
8F550:  LDR.W           R6, [R11,#0x11C]
8F554:  B               loc_8EF98
8F556:  VLDR            S6, [R1,#0x18]
8F55A:  VSUB.F32        S6, S0, S6
8F55E:  VSUB.F32        S0, S0, S2
8F562:  VSUB.F32        S2, S6, S2
8F566:  VDIV.F32        S0, S0, S4
8F56A:  VDIV.F32        S2, S2, S4
8F56E:  VCVT.S32.F32    S0, S0
8F572:  VCVT.S32.F32    S2, S2
8F576:  VMOV            R0, S0
8F57A:  VMOV            R1, S2
8F57E:  CMP             R0, R1
8F580:  BGT.W           loc_8DDF6
8F584:  B.W             loc_8DE64
8F588:  CMP             R2, #0
8F58A:  IT NE
8F58C:  CMPNE           R2, R9
8F58E:  BNE.W           loc_8E81A
8F592:  VCMP.F32        S0, #0.0
8F596:  STR.W           R9, [R8,#0xF0]
8F59A:  VMRS            APSR_nzcv, FPSCR
8F59E:  IT GT
8F5A0:  STRGT.W         R9, [R8,#0xF4]
8F5A4:  VLDR            S0, [R1,#8]
8F5A8:  VCMP.F32        S0, #0.0
8F5AC:  VMRS            APSR_nzcv, FPSCR
8F5B0:  IT EQ
8F5B2:  STREQ.W         R9, [R8,#0xF8]
8F5B6:  B.W             loc_8E596
8F5BA:  ALIGN 4
8F5BC:  DCD dword_1ACF70 - 0x8F276
8F5C0:  DCD off_117248 - 0x8F278
8F5C4:  DCD off_11724C - 0x8F2B4
8F5C8:  DCD dword_1ACF70 - 0x8F2E8
8F5CC:  DCD off_117248 - 0x8F2EA
8F5D0:  DCD off_11724C - 0x8F32A
8F5D4:  DCD aDebugDefault - 0x8F3F8
8F5D8:  DCFS 0.1
8F5DC:  DCFS 0.8
8F5E0:  DCFS 0.0
8F5E4:  VLDR            S8, =0.8
8F5E8:  VLDR            S2, [R2,#0x88]
8F5EC:  VMUL.F32        S6, S2, S8
8F5F0:  VMOV.F32        S2, S0
8F5F4:  VCMP.F32        S4, S6
8F5F8:  VMRS            APSR_nzcv, FPSCR
8F5FC:  BLS             loc_8F64C
8F5FE:  VLDR            S2, [R2,#0x8C]
8F602:  VMUL.F32        S8, S2, S8
8F606:  VMOV.F32        S2, S0
8F60A:  VCMP.F32        S8, #0.0
8F60E:  VMRS            APSR_nzcv, FPSCR
8F612:  BLS             loc_8F64C
8F614:  VLDR            S2, [R2,#0x18]
8F618:  VSUB.F32        S2, S4, S2
8F61C:  VSUB.F32        S4, S4, S6
8F620:  VSUB.F32        S2, S2, S6
8F624:  VDIV.F32        S4, S4, S8
8F628:  VDIV.F32        S2, S2, S8
8F62C:  VCVT.S32.F32    S2, S2
8F630:  VCVT.S32.F32    S4, S4
8F634:  VMOV            R6, S2
8F638:  VMOV            R5, S4
8F63C:  SUBS            R6, R5, R6
8F63E:  LDR             R5, [SP,#0xA0+var_74]
8F640:  BIC.W           R6, R6, R6,ASR#31
8F644:  VMOV            S2, R6
8F648:  VCVT.F32.S32    S2, S2
8F64C:  VLDR            S4, [R3,#0x38]
8F650:  VCMP.F32        S4, #0.0
8F654:  VMRS            APSR_nzcv, FPSCR
8F658:  BMI             loc_8F74E
8F65A:  VCMP.F32        S4, #0.0
8F65E:  VMRS            APSR_nzcv, FPSCR
8F662:  BNE             loc_8F6F0
8F664:  VMOV.F32        S0, #1.0
8F668:  B               loc_8F74E
8F66A:  VLDR            S8, =0.8
8F66E:  VLDR            S2, [R0,#0x88]
8F672:  VMUL.F32        S6, S2, S8
8F676:  VMOV.F32        S2, S0
8F67A:  VCMP.F32        S4, S6
8F67E:  VMRS            APSR_nzcv, FPSCR
8F682:  BLS             loc_8F6D0
8F684:  VLDR            S2, [R0,#0x8C]
8F688:  VMUL.F32        S8, S2, S8
8F68C:  VMOV.F32        S2, S0
8F690:  VCMP.F32        S8, #0.0
8F694:  VMRS            APSR_nzcv, FPSCR
8F698:  BLS             loc_8F6D0
8F69A:  VLDR            S2, [R0,#0x18]
8F69E:  VSUB.F32        S2, S4, S2
8F6A2:  VSUB.F32        S4, S4, S6
8F6A6:  VSUB.F32        S2, S2, S6
8F6AA:  VDIV.F32        S4, S4, S8
8F6AE:  VDIV.F32        S2, S2, S8
8F6B2:  VCVT.S32.F32    S2, S2
8F6B6:  VCVT.S32.F32    S4, S4
8F6BA:  VMOV            R3, S2
8F6BE:  VMOV            R6, S4
8F6C2:  SUBS            R3, R6, R3
8F6C4:  BIC.W           R3, R3, R3,ASR#31
8F6C8:  VMOV            S2, R3
8F6CC:  VCVT.F32.S32    S2, S2
8F6D0:  VLDR            S4, [R2,#0x38]
8F6D4:  VCMP.F32        S4, #0.0
8F6D8:  VMRS            APSR_nzcv, FPSCR
8F6DC:  BMI.W           loc_8F7F6
8F6E0:  VCMP.F32        S4, #0.0
8F6E4:  VMRS            APSR_nzcv, FPSCR
8F6E8:  BNE             loc_8F798
8F6EA:  VMOV.F32        S0, #1.0
8F6EE:  B               loc_8F7F6
8F6F0:  VLDR            S8, =0.8
8F6F4:  VLDR            S6, [R2,#0x88]
8F6F8:  VMUL.F32        S6, S6, S8
8F6FC:  VCMP.F32        S4, S6
8F700:  VMRS            APSR_nzcv, FPSCR
8F704:  ITTTT HI
8F706:  VLDRHI          S10, [R2,#0x8C]
8F70A:  VMULHI.F32      S8, S10, S8
8F70E:  VCMPHI.F32      S8, #0.0
8F712:  VMRSHI          APSR_nzcv, FPSCR
8F716:  BLS             loc_8F74E
8F718:  VLDR            S0, [R2,#0x18]
8F71C:  VSUB.F32        S0, S4, S0
8F720:  VSUB.F32        S4, S4, S6
8F724:  VSUB.F32        S0, S0, S6
8F728:  VDIV.F32        S4, S4, S8
8F72C:  VDIV.F32        S0, S0, S8
8F730:  VCVT.S32.F32    S0, S0
8F734:  VCVT.S32.F32    S4, S4
8F738:  VMOV            R2, S0
8F73C:  VMOV            R3, S4
8F740:  SUBS            R2, R3, R2
8F742:  BIC.W           R2, R2, R2,ASR#31
8F746:  VMOV            S0, R2
8F74A:  VCVT.F32.S32    S0, S0
8F74E:  VADD.F32        S0, S2, S0
8F752:  VCMP.F32        S0, #0.0
8F756:  VMRS            APSR_nzcv, FPSCR
8F75A:  ITT GT
8F75C:  MOVGT           R0, #1
8F75E:  STRGT.W         R0, [R8,#0x16C]
8F762:  LSLS            R2, R1, #0x1D
8F764:  BPL             loc_8F818
8F766:  LDR             R2, [SP,#0xA0+var_78]
8F768:  MOVW            R3, #0x1470
8F76C:  VLDR            S0, =0.0
8F770:  LDR             R2, [R2]
8F772:  VMOV.F32        S2, S0
8F776:  ADD             R3, R2
8F778:  VLDR            S4, [R3]
8F77C:  VCMP.F32        S4, #0.0
8F780:  VMRS            APSR_nzcv, FPSCR
8F784:  BMI.W           loc_8F888
8F788:  VCMP.F32        S4, #0.0
8F78C:  VMRS            APSR_nzcv, FPSCR
8F790:  BNE             loc_8F820
8F792:  VMOV.F32        S2, #1.0
8F796:  B               loc_8F888
8F798:  VLDR            S8, =0.8
8F79C:  VLDR            S6, [R0,#0x88]
8F7A0:  VMUL.F32        S6, S6, S8
8F7A4:  VCMP.F32        S4, S6
8F7A8:  VMRS            APSR_nzcv, FPSCR
8F7AC:  ITTTT HI
8F7AE:  VLDRHI          S10, [R0,#0x8C]
8F7B2:  VMULHI.F32      S8, S10, S8
8F7B6:  VCMPHI.F32      S8, #0.0
8F7BA:  VMRSHI          APSR_nzcv, FPSCR
8F7BE:  BLS             loc_8F7F6
8F7C0:  VLDR            S0, [R0,#0x18]
8F7C4:  VSUB.F32        S0, S4, S0
8F7C8:  VSUB.F32        S4, S4, S6
8F7CC:  VSUB.F32        S0, S0, S6
8F7D0:  VDIV.F32        S4, S4, S8
8F7D4:  VDIV.F32        S0, S0, S8
8F7D8:  VCVT.S32.F32    S0, S0
8F7DC:  VCVT.S32.F32    S4, S4
8F7E0:  VMOV            R0, S0
8F7E4:  VMOV            R2, S4
8F7E8:  SUBS            R0, R2, R0
8F7EA:  BIC.W           R0, R0, R0,ASR#31
8F7EE:  VMOV            S0, R0
8F7F2:  VCVT.F32.S32    S0, S0
8F7F6:  VADD.F32        S0, S2, S0
8F7FA:  VCMP.F32        S0, #0.0
8F7FE:  VMRS            APSR_nzcv, FPSCR
8F802:  ITTE GT
8F804:  MOVGT           R0, #0
8F806:  STRGT.W         R0, [R8,#0x16C]
8F80A:  MOVLE.W         R0, #0xFFFFFFFF
8F80E:  LSLS            R2, R1, #0x1E
8F810:  BMI.W           loc_8E75C
8F814:  LSLS            R2, R1, #0x1D
8F816:  BMI             loc_8F766
8F818:  LSLS            R2, R1, #0x1C
8F81A:  BPL.W           loc_8E662
8F81E:  B               loc_8F91E
8F820:  VLDR            S8, =0.8
8F824:  VLDR            S2, [R2,#0x88]
8F828:  VMUL.F32        S6, S2, S8
8F82C:  VMOV.F32        S2, S0
8F830:  VCMP.F32        S4, S6
8F834:  VMRS            APSR_nzcv, FPSCR
8F838:  BLS             loc_8F888
8F83A:  VLDR            S2, [R2,#0x8C]
8F83E:  VMUL.F32        S8, S2, S8
8F842:  VMOV.F32        S2, S0
8F846:  VCMP.F32        S8, #0.0
8F84A:  VMRS            APSR_nzcv, FPSCR
8F84E:  BLS             loc_8F888
8F850:  VLDR            S2, [R2,#0x18]
8F854:  VSUB.F32        S2, S4, S2
8F858:  VSUB.F32        S4, S4, S6
8F85C:  VSUB.F32        S2, S2, S6
8F860:  VDIV.F32        S4, S4, S8
8F864:  VDIV.F32        S2, S2, S8
8F868:  VCVT.S32.F32    S2, S2
8F86C:  VCVT.S32.F32    S4, S4
8F870:  VMOV            R6, S2
8F874:  VMOV            R5, S4
8F878:  SUBS            R6, R5, R6
8F87A:  LDR             R5, [SP,#0xA0+var_74]
8F87C:  BIC.W           R6, R6, R6,ASR#31
8F880:  VMOV            S2, R6
8F884:  VCVT.F32.S32    S2, S2
8F888:  VLDR            S4, [R3,#0x38]
8F88C:  VCMP.F32        S4, #0.0
8F890:  VMRS            APSR_nzcv, FPSCR
8F894:  BMI             loc_8F904
8F896:  VCMP.F32        S4, #0.0
8F89A:  VMRS            APSR_nzcv, FPSCR
8F89E:  BNE             loc_8F8A6
8F8A0:  VMOV.F32        S0, #1.0
8F8A4:  B               loc_8F904
8F8A6:  VLDR            S8, =0.8
8F8AA:  VLDR            S6, [R2,#0x88]
8F8AE:  VMUL.F32        S6, S6, S8
8F8B2:  VCMP.F32        S4, S6
8F8B6:  VMRS            APSR_nzcv, FPSCR
8F8BA:  ITTTT HI
8F8BC:  VLDRHI          S10, [R2,#0x8C]
8F8C0:  VMULHI.F32      S8, S10, S8
8F8C4:  VCMPHI.F32      S8, #0.0
8F8C8:  VMRSHI          APSR_nzcv, FPSCR
8F8CC:  BLS             loc_8F904
8F8CE:  VLDR            S0, [R2,#0x18]
8F8D2:  VSUB.F32        S0, S4, S0
8F8D6:  VSUB.F32        S4, S4, S6
8F8DA:  VSUB.F32        S0, S0, S6
8F8DE:  VDIV.F32        S4, S4, S8
8F8E2:  VDIV.F32        S0, S0, S8
8F8E6:  VCVT.S32.F32    S0, S0
8F8EA:  VCVT.S32.F32    S4, S4
8F8EE:  VMOV            R2, S0
8F8F2:  VMOV            R3, S4
8F8F6:  SUBS            R2, R3, R2
8F8F8:  BIC.W           R2, R2, R2,ASR#31
8F8FC:  VMOV            S0, R2
8F900:  VCVT.F32.S32    S0, S0
8F904:  VADD.F32        S0, S2, S0
8F908:  VCMP.F32        S0, #0.0
8F90C:  VMRS            APSR_nzcv, FPSCR
8F910:  ITT GT
8F912:  MOVGT           R0, #2
8F914:  STRGT.W         R0, [R8,#0x16C]
8F918:  LSLS            R2, R1, #0x1C
8F91A:  BPL.W           loc_8E662
8F91E:  LDR             R2, [SP,#0xA0+var_78]
8F920:  MOVW            R3, #0x1474
8F924:  VLDR            S0, =0.0
8F928:  LDR             R2, [R2]
8F92A:  VMOV.F32        S2, S0
8F92E:  ADD             R3, R2
8F930:  VLDR            S4, [R3]
8F934:  VCMP.F32        S4, #0.0
8F938:  VMRS            APSR_nzcv, FPSCR
8F93C:  BMI             loc_8F9B6
8F93E:  VCMP.F32        S4, #0.0
8F942:  VMRS            APSR_nzcv, FPSCR
8F946:  BNE             loc_8F94E
8F948:  VMOV.F32        S2, #1.0
8F94C:  B               loc_8F9B6
8F94E:  VLDR            S8, =0.8
8F952:  VLDR            S2, [R2,#0x88]
8F956:  VMUL.F32        S6, S2, S8
8F95A:  VMOV.F32        S2, S0
8F95E:  VCMP.F32        S4, S6
8F962:  VMRS            APSR_nzcv, FPSCR
8F966:  BLS             loc_8F9B6
8F968:  VLDR            S2, [R2,#0x8C]
8F96C:  VMUL.F32        S8, S2, S8
8F970:  VMOV.F32        S2, S0
8F974:  VCMP.F32        S8, #0.0
8F978:  VMRS            APSR_nzcv, FPSCR
8F97C:  BLS             loc_8F9B6
8F97E:  VLDR            S2, [R2,#0x18]
8F982:  VSUB.F32        S2, S4, S2
8F986:  VSUB.F32        S4, S4, S6
8F98A:  VSUB.F32        S2, S2, S6
8F98E:  VDIV.F32        S4, S4, S8
8F992:  VDIV.F32        S2, S2, S8
8F996:  VCVT.S32.F32    S2, S2
8F99A:  VCVT.S32.F32    S4, S4
8F99E:  VMOV            R6, S2
8F9A2:  VMOV            R5, S4
8F9A6:  SUBS            R6, R5, R6
8F9A8:  LDR             R5, [SP,#0xA0+var_74]
8F9AA:  BIC.W           R6, R6, R6,ASR#31
8F9AE:  VMOV            S2, R6
8F9B2:  VCVT.F32.S32    S2, S2
8F9B6:  VLDR            S4, [R3,#0x38]
8F9BA:  VCMP.F32        S4, #0.0
8F9BE:  VMRS            APSR_nzcv, FPSCR
8F9C2:  BMI             loc_8FA32
8F9C4:  VCMP.F32        S4, #0.0
8F9C8:  VMRS            APSR_nzcv, FPSCR
8F9CC:  BNE             loc_8F9D4
8F9CE:  VMOV.F32        S0, #1.0
8F9D2:  B               loc_8FA32
8F9D4:  VLDR            S8, =0.8
8F9D8:  VLDR            S6, [R2,#0x88]
8F9DC:  VMUL.F32        S6, S6, S8
8F9E0:  VCMP.F32        S4, S6
8F9E4:  VMRS            APSR_nzcv, FPSCR
8F9E8:  ITTTT HI
8F9EA:  VLDRHI          S10, [R2,#0x8C]
8F9EE:  VMULHI.F32      S8, S10, S8
8F9F2:  VCMPHI.F32      S8, #0.0
8F9F6:  VMRSHI          APSR_nzcv, FPSCR
8F9FA:  BLS             loc_8FA32
8F9FC:  VLDR            S0, [R2,#0x18]
8FA00:  VSUB.F32        S0, S4, S0
8FA04:  VSUB.F32        S4, S4, S6
8FA08:  VSUB.F32        S0, S0, S6
8FA0C:  VDIV.F32        S4, S4, S8
8FA10:  VDIV.F32        S0, S0, S8
8FA14:  VCVT.S32.F32    S0, S0
8FA18:  VCVT.S32.F32    S4, S4
8FA1C:  VMOV            R2, S0
8FA20:  VMOV            R3, S4
8FA24:  SUBS            R2, R3, R2
8FA26:  BIC.W           R2, R2, R2,ASR#31
8FA2A:  VMOV            S0, R2
8FA2E:  VCVT.F32.S32    S0, S0
8FA32:  VADD.F32        S0, S2, S0
8FA36:  VCMP.F32        S0, #0.0
8FA3A:  VMRS            APSR_nzcv, FPSCR
8FA3E:  ITT GT
8FA40:  MOVGT           R0, #3
8FA42:  STRGT.W         R0, [R8,#0x16C]
8FA46:  B.W             loc_8E662
8FA4A:  VLDR            S8, [R2,#0x38]
8FA4E:  ADD.W           R3, R2, #0x54 ; 'T'
8FA52:  VLDR            S10, [R2,#0x224]
8FA56:  VLDR            S12, [R2,#0x22C]
8FA5A:  VADD.F32        S8, S8, S8
8FA5E:  VSUB.F32        S10, S12, S10
8FA62:  VADD.F32        S8, S10, S8
8FA66:  VMUL.F32        S4, S8, S4
8FA6A:  VMOV.F32        S8, #5.0
8FA6E:  VMUL.F32        S6, S6, S8
8FA72:  VCMP.F32        S6, S4
8FA76:  VMRS            APSR_nzcv, FPSCR
8FA7A:  IT MI
8FA7C:  VMOVMI.F32      S4, S6
8FA80:  VCVT.S32.F32    S4, S4
8FA84:  VLDR            S6, [R3]
8FA88:  VCVT.F32.S32    S4, S4
8FA8C:  VMLS.F32        S6, S0, S4
8FA90:  VSTR            S6, [R3]
8FA94:  VLDR            S0, [R0,#0xF4]
8FA98:  VCMP.F32        S0, #0.0
8FA9C:  VMRS            APSR_nzcv, FPSCR
8FAA0:  BEQ.W           loc_8EF7C
8FAA4:  LDRB.W          R0, [R0,#0xF9]
8FAA8:  CMP             R0, #0
8FAAA:  BNE.W           loc_8EF7C
8FAAE:  VLDR            S6, [R2,#0x274]
8FAB2:  VLDR            S8, [R1]
8FAB6:  VLDR            S4, [R2,#0x50]
8FABA:  VMUL.F32        S6, S8, S6
8FABE:  VADD.F32        S6, S6, S6
8FAC2:  VCMP.F32        S6, S2
8FAC6:  VMRS            APSR_nzcv, FPSCR
8FACA:  IT MI
8FACC:  VMOVMI.F32      S2, S6
8FAD0:  VCVT.S32.F32    S2, S2
8FAD4:  VCVT.F32.S32    S2, S2
8FAD8:  VMLS.F32        S4, S0, S2
8FADC:  VSTR            S4, [R2,#0x50]
8FAE0:  B.W             loc_8EF7C
8FAE4:  MOVS            R3, #0
8FAE6:  LDR.W           R11, [R2,#0x4C]
8FAEA:  AND.W           R3, R3, R1,LSR#2
8FAEE:  CMP.W           R11, #0xFFFFFFFF
8FAF2:  BLE             loc_8FB0C
8FAF4:  ADD             R2, R11
8FAF6:  LDRB.W          R2, [R2,#0xFC]
8FAFA:  CMP             R2, #0
8FAFC:  IT NE
8FAFE:  MOVNE           R2, #1
8FB00:  AND.W           R1, R2, R1,LSR#3
8FB04:  CMP             R3, R1
8FB06:  BEQ.W           loc_8E67C
8FB0A:  B               loc_8FB12
8FB0C:  CMP             R3, #0
8FB0E:  BEQ.W           loc_8E67C
8FB12:  LDR.W           R1, [R6,#0x138]
8FB16:  STR.W           R12, [SP,#0xA0+var_74]
8FB1A:  CMP             R1, #0
8FB1C:  BEQ             loc_8FBC6
8FB1E:  VLDR            S0, [R6,#0x1E4]
8FB22:  MOVS            R1, #1
8FB24:  VLDR            S2, [R6,#0x1EC]
8FB28:  VLDR            S4, [R6,#0x274]
8FB2C:  VSUB.F32        S0, S2, S0
8FB30:  VLDR            S8, [R5]
8FB34:  VLDR            S6, [R6,#0x318]
8FB38:  VLDR            S2, [R6,#0x320]
8FB3C:  VLDR            S18, =0.0
8FB40:  VSUB.F32        S2, S2, S6
8FB44:  VMLS.F32        S0, S8, S4
8FB48:  VADD.F32        S20, S0, S2
8FB4C:  VCMP.F32        S20, #0.0
8FB50:  VMRS            APSR_nzcv, FPSCR
8FB54:  IT LS
8FB56:  VMOVLS.F32      S20, S18
8FB5A:  BL              sub_95484
8FB5E:  CBZ             R0, loc_8FB9A
8FB60:  MOVS            R0, #2
8FB62:  VNEG.F32        S18, S20
8FB66:  STR.W           R0, [R5,#0x278]
8FB6A:  MOVS            R0, #3
8FB6C:  STR.W           R0, [R5,#0x270]
8FB70:  MOVS            R0, #0x30 ; '0'
8FB72:  STR.W           R0, [R5,#0x268]
8FB76:  LDR.W           R12, [SP,#0xA0+var_74]
8FB7A:  B.W             loc_8E67C
8FB7E:  LDRB.W          R1, [R9,#0xF9]
8FB82:  MOV.W           R2, #0xFFFFFFFF
8FB86:  CMP             R1, #0
8FB88:  IT EQ
8FB8A:  MOVEQ           R2, #1
8FB8C:  ADD             R0, R2
8FB8E:  ADDS            R0, #1
8FB90:  MOV             R6, R8
8FB92:  STR.W           R0, [R11,#0x12C]
8FB96:  B.W             loc_8EF98
8FB9A:  MOV             R0, R11
8FB9C:  MOVS            R1, #1
8FB9E:  BL              sub_95484
8FBA2:  LDR.W           R12, [SP,#0xA0+var_74]
8FBA6:  CMP             R0, #0
8FBA8:  BEQ.W           loc_8E67C
8FBAC:  VMOV.F32        S18, S20
8FBB0:  MOVS            R0, #3
8FBB2:  STR.W           R0, [R5,#0x278]
8FBB6:  MOVS            R0, #2
8FBB8:  STR.W           R0, [R5,#0x270]
8FBBC:  MOVS            R0, #0x30 ; '0'
8FBBE:  STR.W           R0, [R5,#0x268]
8FBC2:  B.W             loc_8E67C
8FBC6:  LDRB.W          R1, [R6,#0x141]
8FBCA:  CMP             R1, #0
8FBCC:  BEQ             loc_8FB1E
8FBCE:  MOVS            R1, #1
8FBD0:  BL              sub_95484
8FBD4:  CBZ             R0, loc_8FBEC
8FBD6:  VLDR            S2, [R6,#0x1E4]
8FBDA:  VLDR            S4, [R6,#0x1EC]
8FBDE:  VLDR            S0, [R6,#0x54]
8FBE2:  VSUB.F32        S2, S4, S2
8FBE6:  VSUB.F32        S0, S0, S2
8FBEA:  B               loc_8FC0A
8FBEC:  MOV             R0, R11
8FBEE:  MOVS            R1, #1
8FBF0:  BL              sub_95484
8FBF4:  CBZ             R0, loc_8FC0E
8FBF6:  VLDR            S2, [R6,#0x1E4]
8FBFA:  VLDR            S4, [R6,#0x1EC]
8FBFE:  VLDR            S0, [R6,#0x54]
8FC02:  VSUB.F32        S2, S4, S2
8FC06:  VADD.F32        S0, S0, S2
8FC0A:  VSTR            S0, [R6,#0x54]
8FC0E:  LDR.W           R12, [SP,#0xA0+var_74]
8FC12:  B.W             loc_8E67C
