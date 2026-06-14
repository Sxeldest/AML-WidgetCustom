; =========================================================
; Game Engine Function: sub_14D2F0
; Address            : 0x14D2F0 - 0x14D478
; =========================================================

14D2F0:  PUSH            {R7,LR}
14D2F2:  MOV             R7, SP
14D2F4:  SUB             SP, SP, #0x160
14D2F6:  LDRD.W          R1, R0, [R0]; src
14D2FA:  MOVS            R3, #0
14D2FC:  ASRS            R2, R0, #0x1F
14D2FE:  ADD.W           R0, R0, R2,LSR#29
14D302:  MOVS            R2, #1
14D304:  ADD.W           R2, R2, R0,ASR#3; size
14D308:  ADD             R0, SP, #0x168+var_138; int
14D30A:  BL              sub_17D4F2
14D30E:  SUBS            R1, R7, #2; int
14D310:  MOVS            R2, #0x10
14D312:  MOVS            R3, #1
14D314:  BL              sub_17D786
14D318:  ADD             R0, SP, #0x168+var_138; int
14D31A:  ADD             R1, SP, #0x168+var_C; int
14D31C:  MOVS            R2, #0x10
14D31E:  MOVS            R3, #1
14D320:  BL              sub_17D786
14D324:  ADD             R0, SP, #0x168+var_138; int
14D326:  ADD             R1, SP, #0x168+var_10; int
14D328:  MOVS            R2, #0x20 ; ' '
14D32A:  MOVS            R3, #1
14D32C:  BL              sub_17D786
14D330:  ADD             R0, SP, #0x168+var_138; int
14D332:  ADD             R1, SP, #0x168+var_14; int
14D334:  MOVS            R2, #0x20 ; ' '
14D336:  MOVS            R3, #1
14D338:  BL              sub_17D786
14D33C:  ADD             R0, SP, #0x168+var_138; int
14D33E:  ADD             R1, SP, #0x168+var_18; int
14D340:  MOVS            R2, #0x20 ; ' '
14D342:  MOVS            R3, #1
14D344:  BL              sub_17D786
14D348:  ADD             R0, SP, #0x168+var_138; int
14D34A:  ADD             R1, SP, #0x168+var_1C; int
14D34C:  MOVS            R2, #0x20 ; ' '
14D34E:  MOVS            R3, #1
14D350:  BL              sub_17D786
14D354:  ADD             R0, SP, #0x168+var_138; int
14D356:  ADD             R1, SP, #0x168+var_20; int
14D358:  MOVS            R2, #0x20 ; ' '
14D35A:  MOVS            R3, #1
14D35C:  BL              sub_17D786
14D360:  ADD             R0, SP, #0x168+var_138; int
14D362:  ADD             R1, SP, #0x168+var_24; int
14D364:  MOVS            R2, #0x20 ; ' '
14D366:  MOVS            R3, #1
14D368:  BL              sub_17D786
14D36C:  LDR             R0, =(off_23496C - 0x14D372)
14D36E:  ADD             R0, PC; off_23496C
14D370:  LDR             R0, [R0]; dword_23DEF4
14D372:  LDR             R0, [R0]
14D374:  LDR.W           R1, [R0,#0x3B0]
14D378:  LDR             R0, [R1,#0x10]
14D37A:  CMP             R0, #0
14D37C:  BEQ             loc_14D46E
14D37E:  LDRH.W          R2, [R7,#-2]
14D382:  CMP.W           R2, #0x3E8
14D386:  BHI             loc_14D46E
14D388:  ADDS            R3, R0, R2
14D38A:  LDRB            R3, [R3,#4]
14D38C:  CMP             R3, #0
14D38E:  BEQ             loc_14D46E
14D390:  ADD.W           R0, R0, R2,LSL#2
14D394:  LDR.W           R0, [R0,#0x3EC]
14D398:  CMP             R0, #0
14D39A:  BEQ             loc_14D46E
14D39C:  LDR             R1, [R1]
14D39E:  CMP             R1, #0
14D3A0:  BEQ             loc_14D46E
14D3A2:  ADD.W           R12, R1, #0x13A0
14D3A6:  LDRH.W          R3, [SP,#0x168+var_C]
14D3AA:  LDRH.W          R2, [R12]
14D3AE:  CMP             R2, R3
14D3B0:  BNE             loc_14D40E
14D3B2:  LDR.W           R1, [R12,#0x1C]
14D3B6:  VLDR            S0, [SP,#0x168+var_24]
14D3BA:  VLDR            S2, [SP,#0x168+var_20]
14D3BE:  LDR             R2, [R1,#0x1C]
14D3C0:  VCVT.F64.F32    D16, S0
14D3C4:  LDR             R1, [R0,#8]
14D3C6:  LDR             R2, [R2,#8]
14D3C8:  VLDR            S0, [SP,#0x168+var_14]
14D3CC:  VLDR            S4, [SP,#0x168+var_1C]
14D3D0:  VLDR            S6, [SP,#0x168+var_18]
14D3D4:  VCVT.F64.F32    D20, S0
14D3D8:  VLDR            S0, [SP,#0x168+var_10]
14D3DC:  LDR             R0, =(unk_B9578 - 0x14D3E6)
14D3DE:  VCVT.F64.F32    D17, S2
14D3E2:  ADD             R0, PC; unk_B9578
14D3E4:  VCVT.F64.F32    D18, S4
14D3E8:  VCVT.F64.F32    D19, S6
14D3EC:  VCVT.F64.F32    D21, S0
14D3F0:  VSTR            D21, [SP,#0x168+var_168]
14D3F4:  VSTR            D20, [SP,#0x168+var_160]
14D3F8:  VSTR            D19, [SP,#0x168+var_158]
14D3FC:  VSTR            D18, [SP,#0x168+var_150]
14D400:  VSTR            D17, [SP,#0x168+var_148]
14D404:  VSTR            D16, [SP,#0x168+var_140]
14D408:  BL              sub_107188
14D40C:  B               loc_14D46E
14D40E:  ADD.W           R1, R1, R3,LSL#2
14D412:  VLDR            S0, [SP,#0x168+var_24]
14D416:  VLDR            S2, [SP,#0x168+var_20]
14D41A:  LDR             R1, [R1,#4]
14D41C:  VCVT.F64.F32    D16, S0
14D420:  LDR             R1, [R1]
14D422:  VLDR            S0, [SP,#0x168+var_1C]
14D426:  LDR.W           R2, [R1,#0x128]
14D42A:  VCVT.F64.F32    D17, S2
14D42E:  LDR             R1, [R0,#8]
14D430:  LDR             R2, [R2,#8]
14D432:  VCVT.F64.F32    D18, S0
14D436:  VLDR            S0, [SP,#0x168+var_14]
14D43A:  VLDR            S4, [SP,#0x168+var_18]
14D43E:  VCVT.F64.F32    D20, S0
14D442:  VLDR            S0, [SP,#0x168+var_10]
14D446:  LDR             R0, =(unk_B9578 - 0x14D450)
14D448:  VCVT.F64.F32    D19, S4
14D44C:  ADD             R0, PC; unk_B9578
14D44E:  VCVT.F64.F32    D21, S0
14D452:  VSTR            D21, [SP,#0x168+var_168]
14D456:  VSTR            D20, [SP,#0x168+var_160]
14D45A:  VSTR            D19, [SP,#0x168+var_158]
14D45E:  VSTR            D18, [SP,#0x168+var_150]
14D462:  VSTR            D17, [SP,#0x168+var_148]
14D466:  VSTR            D16, [SP,#0x168+var_140]
14D46A:  BL              sub_107188
14D46E:  ADD             R0, SP, #0x168+var_138
14D470:  BL              sub_17D542
14D474:  ADD             SP, SP, #0x160
14D476:  POP             {R7,PC}
