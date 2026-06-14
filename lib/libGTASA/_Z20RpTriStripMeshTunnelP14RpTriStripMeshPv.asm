; =========================================================
; Game Engine Function: _Z20RpTriStripMeshTunnelP14RpTriStripMeshPv
; Address            : 0x21A074 - 0x21A634
; =========================================================

21A074:  PUSH            {R4-R7,LR}
21A076:  ADD             R7, SP, #0xC
21A078:  PUSH.W          {R8-R11}
21A07C:  SUB             SP, SP, #4
21A07E:  VPUSH           {D8-D10}
21A082:  SUB             SP, SP, #0x20
21A084:  MOV             R5, R0
21A086:  LDR             R0, [R1,#4]
21A088:  CMP             R0, #0
21A08A:  BEQ.W           loc_21A624
21A08E:  LDR.W           R2, =(RwEngineInstance_ptr - 0x21A098)
21A092:  STR             R1, [SP,#0x58+var_3C]
21A094:  ADD             R2, PC; RwEngineInstance_ptr
21A096:  LDR             R4, [R2]; RwEngineInstance
21A098:  MOVS            R2, #0x14
21A09A:  ADD.W           R0, R2, R0,LSL#3
21A09E:  LDR             R1, [R4]
21A0A0:  LDR.W           R1, [R1,#0x12C]
21A0A4:  BLX             R1
21A0A6:  MOV             R11, R0
21A0A8:  ADD.W           R0, R11, #0x10
21A0AC:  STR.W           R0, [R11,#8]
21A0B0:  MOVS            R2, #0
21A0B2:  LDR             R1, [SP,#0x58+var_3C]
21A0B4:  MOV.W           R8, #1
21A0B8:  LDR             R1, [R1,#4]
21A0BA:  STR.W           R2, [R11]
21A0BE:  STR.W           R8, [R11,#4]
21A0C2:  ADD.W           R0, R0, R1,LSL#2
21A0C6:  STR.W           R0, [R11,#0xC]
21A0CA:  LDR             R0, [R4]
21A0CC:  LDR             R4, [SP,#0x58+var_3C]
21A0CE:  LDR.W           R2, [R0,#0x12C]
21A0D2:  LDR             R1, [R4,#4]
21A0D4:  ADD.W           R0, R1, R1,LSL#3
21A0D8:  LSLS            R0, R0, #2
21A0DA:  BLX             R2
21A0DC:  STR             R0, [SP,#0x58+var_48]
21A0DE:  MOVW            R0, #0x126F
21A0E2:  LDR             R1, [R4]; y
21A0E4:  MOVT            R0, #0x3A83; x
21A0E8:  BLX             powf
21A0EC:  VMOV.F32        S20, #0.5
21A0F0:  VLDR            S18, =0.0
21A0F4:  VMOV            S16, R0
21A0F8:  ADDS            R0, R5, #4
21A0FA:  STR             R5, [SP,#0x58+var_58]
21A0FC:  STR             R0, [SP,#0x58+var_4C]
21A0FE:  LDR             R0, [SP,#0x58+var_4C]
21A100:  MOVS            R1, #0
21A102:  LDR             R2, [R0]
21A104:  CMP             R2, R0
21A106:  BEQ.W           loc_21A5CE
21A10A:  STR             R1, [SP,#0x58+var_54]
21A10C:  LDR.W           R0, [R11,#0xC]
21A110:  STR             R2, [SP,#0x58+var_50]
21A112:  STR             R2, [R0]
21A114:  LDR.W           R0, [R11,#0xC]
21A118:  LDR             R0, [R0]
21A11A:  LDR             R1, [R0,#0x18]
21A11C:  CMP             R1, #0
21A11E:  BEQ.W           loc_21A524
21A122:  LDR             R2, [SP,#0x58+var_48]
21A124:  MOVS            R1, #0
21A126:  MOV             R12, R2
21A128:  ADD.W           R2, R0, R1,LSL#2
21A12C:  LDR             R2, [R2,#0x1C]
21A12E:  LDR             R3, [R2,#0x1C]
21A130:  CBNZ            R3, loc_21A152
21A132:  MOV             R3, R2
21A134:  LDR.W           R6, [R3,#0x10]!
21A138:  CMP             R0, R6
21A13A:  IT EQ
21A13C:  ADDEQ           R3, #4
21A13E:  LDR             R3, [R3]
21A140:  CMP             R3, #0
21A142:  ITTTT NE
21A144:  STMNE.W         R12, {R2,R3,R8}
21A148:  LDRNE.W         R0, [R11,#0xC]
21A14C:  LDRNE           R0, [R0]
21A14E:  ADDNE.W         R12, R12, #0xC
21A152:  LDR             R2, [R0,#0x18]
21A154:  ADDS            R1, #1
21A156:  CMP             R1, R2
21A158:  BCC             loc_21A128
21A15A:  B               loc_21A3C0
21A15C:  LDR             R4, [SP,#0x58+var_3C]
21A15E:  MOV.W           R8, #0
21A162:  MOV.W           R10, #0
21A166:  B               loc_21A182
21A168:  LDR             R4, [SP,#0x58+var_3C]
21A16A:  LDRD.W          R3, R2, [R4,#8]
21A16E:  BLX             R3
21A170:  LDR.W           LR, [R11]
21A174:  ADD             R10, R0
21A176:  ADD.W           R8, R8, #1
21A17A:  CMP             R8, LR
21A17C:  BHI             loc_21A21C
21A17E:  LDR.W           R12, [R11,#0xC]
21A182:  LDR.W           R1, =(dword_683BF8 - 0x21A18E)
21A186:  LDR.W           R9, [R12,R8,LSL#2]
21A18A:  ADD             R1, PC; dword_683BF8
21A18C:  LDR.W           R0, [R9,#0x30]
21A190:  LDR             R1, [R1]
21A192:  CMP             R1, R0
21A194:  BEQ             loc_21A176
21A196:  LDR.W           R0, [R9,#0x18]
21A19A:  CBZ             R0, loc_21A1C4
21A19C:  MOVS            R2, #0
21A19E:  ADD.W           R6, R9, R2,LSL#2
21A1A2:  LDR             R6, [R6,#0x1C]
21A1A4:  LDR             R5, [R6,#0x1C]
21A1A6:  CMP             R5, #0
21A1A8:  ITTT NE
21A1AA:  MOVNE           R5, R6
21A1AC:  LDRNE.W         R4, [R5,#0x10]!
21A1B0:  CMPNE           R4, #0
21A1B2:  BEQ             loc_21A1BA
21A1B4:  LDR.W           R3, [R6,#0x14]!
21A1B8:  CBNZ            R3, loc_21A1C8
21A1BA:  ADDS            R2, #1
21A1BC:  CMP             R2, R0
21A1BE:  BCC             loc_21A19E
21A1C0:  MOV             R0, R9
21A1C2:  B               loc_21A168
21A1C4:  MOV             R0, R9
21A1C6:  B               loc_21A16A
21A1C8:  CMP             R4, R9
21A1CA:  IT EQ
21A1CC:  MOVEQ           R5, R6
21A1CE:  LDR             R2, [R5]
21A1D0:  CMP             R2, #0
21A1D2:  BEQ             loc_21A1C0
21A1D4:  LDR             R4, [SP,#0x58+var_3C]
21A1D6:  MOV             R0, R2
21A1D8:  LDR.W           R12, [R0,#0x18]
21A1DC:  CMP.W           R12, #0
21A1E0:  BEQ             loc_21A16A
21A1E2:  MOVS            R6, #0
21A1E4:  ADD.W           R2, R0, R6,LSL#2
21A1E8:  LDR             R5, [R2,#0x1C]
21A1EA:  LDR             R2, [R5,#0x1C]
21A1EC:  CMP             R2, #0
21A1EE:  ITTT NE
21A1F0:  MOVNE           R2, R5
21A1F2:  LDRNE.W         R4, [R2,#0x10]!
21A1F6:  CMPNE           R4, R9
21A1F8:  BEQ             loc_21A202
21A1FA:  LDR.W           R3, [R5,#0x14]!
21A1FE:  CMP             R3, R9
21A200:  BNE             loc_21A20A
21A202:  ADDS            R6, #1
21A204:  CMP             R6, R12
21A206:  BCC             loc_21A1E4
21A208:  B               loc_21A168
21A20A:  CMP             R4, R0
21A20C:  MOV             R9, R0
21A20E:  IT EQ
21A210:  MOVEQ           R2, R5
21A212:  LDR             R4, [SP,#0x58+var_3C]
21A214:  LDR             R2, [R2]
21A216:  CMP             R2, #0
21A218:  BNE             loc_21A1D6
21A21A:  B               loc_21A16A
21A21C:  LDR.W           R0, =(dword_683BF8 - 0x21A228)
21A220:  CMP.W           LR, #0
21A224:  ADD             R0, PC; dword_683BF8
21A226:  MOV             R2, R0
21A228:  LDR             R0, [R2]
21A22A:  ADD.W           R1, R0, #1
21A22E:  STR             R1, [R2]
21A230:  BEQ             loc_21A256
21A232:  MOVS            R0, #0
21A234:  LDR.W           R2, [R11,#8]
21A238:  LDR.W           R2, [R2,R0,LSL#2]
21A23C:  ADDS            R0, #1
21A23E:  LDR             R3, [R2,#0x1C]
21A240:  CMP             R3, #0
21A242:  MOV.W           R3, #0
21A246:  IT EQ
21A248:  MOVEQ           R3, #1
21A24A:  STR             R3, [R2,#0x1C]
21A24C:  LDR.W           R2, [R11]
21A250:  CMP             R0, R2
21A252:  BCC             loc_21A234
21A254:  B               loc_21A258
21A256:  MOVS            R2, #0
21A258:  MOV.W           R9, #0
21A25C:  MOV.W           R8, #0
21A260:  LDR.W           R0, [R11,#0xC]
21A264:  LDR.W           LR, [R0,R9,LSL#2]
21A268:  LDR.W           R0, [LR,#0x30]
21A26C:  CMP             R1, R0
21A26E:  BEQ             loc_21A30A
21A270:  LDR.W           R0, [LR,#0x18]
21A274:  CBZ             R0, loc_21A29E
21A276:  MOVS            R2, #0
21A278:  ADD.W           R6, LR, R2,LSL#2
21A27C:  LDR             R6, [R6,#0x1C]
21A27E:  LDR             R5, [R6,#0x1C]
21A280:  CMP             R5, #0
21A282:  ITTT NE
21A284:  MOVNE           R5, R6
21A286:  LDRNE.W         R4, [R5,#0x10]!
21A28A:  CMPNE           R4, #0
21A28C:  BEQ             loc_21A294
21A28E:  LDR.W           R3, [R6,#0x14]!
21A292:  CBNZ            R3, loc_21A2A2
21A294:  ADDS            R2, #1
21A296:  CMP             R2, R0
21A298:  BCC             loc_21A278
21A29A:  MOV             R0, LR
21A29C:  B               loc_21A2F6
21A29E:  MOV             R0, LR
21A2A0:  B               loc_21A2F8
21A2A2:  CMP             R4, LR
21A2A4:  IT EQ
21A2A6:  MOVEQ           R5, R6
21A2A8:  LDR             R2, [R5]
21A2AA:  CMP             R2, #0
21A2AC:  BEQ             loc_21A29A
21A2AE:  LDR             R4, [SP,#0x58+var_3C]
21A2B0:  MOV             R0, R2
21A2B2:  LDR.W           R12, [R0,#0x18]
21A2B6:  CMP.W           R12, #0
21A2BA:  BEQ             loc_21A2F8
21A2BC:  MOVS            R6, #0
21A2BE:  ADD.W           R2, R0, R6,LSL#2
21A2C2:  LDR             R5, [R2,#0x1C]
21A2C4:  LDR             R2, [R5,#0x1C]
21A2C6:  CMP             R2, #0
21A2C8:  ITTT NE
21A2CA:  MOVNE           R4, R5
21A2CC:  LDRNE.W         R2, [R4,#0x10]!
21A2D0:  CMPNE           R2, LR
21A2D2:  BEQ             loc_21A2DC
21A2D4:  LDR.W           R3, [R5,#0x14]!
21A2D8:  CMP             R3, LR
21A2DA:  BNE             loc_21A2E4
21A2DC:  ADDS            R6, #1
21A2DE:  CMP             R6, R12
21A2E0:  BCC             loc_21A2BE
21A2E2:  B               loc_21A2F6
21A2E4:  CMP             R2, R0
21A2E6:  MOV             LR, R0
21A2E8:  IT EQ
21A2EA:  MOVEQ           R4, R5
21A2EC:  LDR             R2, [R4]
21A2EE:  LDR             R4, [SP,#0x58+var_3C]
21A2F0:  CMP             R2, #0
21A2F2:  BNE             loc_21A2B0
21A2F4:  B               loc_21A2F8
21A2F6:  LDR             R4, [SP,#0x58+var_3C]
21A2F8:  LDRD.W          R3, R2, [R4,#8]
21A2FC:  BLX             R3
21A2FE:  LDR             R1, =(dword_683BF8 - 0x21A30A)
21A300:  ADD             R8, R0
21A302:  LDR.W           R2, [R11]
21A306:  ADD             R1, PC; dword_683BF8
21A308:  LDR             R1, [R1]
21A30A:  ADD.W           R9, R9, #1
21A30E:  CMP             R9, R2
21A310:  BLS             loc_21A260
21A312:  ADDS            R0, R1, #1
21A314:  LDR             R1, =(dword_683BF8 - 0x21A320)
21A316:  CMP             R8, R10
21A318:  MOV.W           R8, #1
21A31C:  ADD             R1, PC; dword_683BF8
21A31E:  STR             R0, [R1]
21A320:  MOV.W           R0, #0
21A324:  IT HI
21A326:  MOVHI           R0, #1
21A328:  LDRD.W          R9, R12, [SP,#0x58+var_44]
21A32C:  CMP             R0, #0
21A32E:  BNE.W           loc_21A532
21A332:  LDR.W           R0, [R11,#4]
21A336:  CMP             R2, R0
21A338:  BCS             loc_21A3C0
21A33A:  LDR.W           R0, [R11,#0xC]
21A33E:  LDR.W           R0, [R0,R2,LSL#2]
21A342:  LDR             R1, [R0,#0x18]
21A344:  CBZ             R1, loc_21A3C0
21A346:  MOVS            R1, #0
21A348:  ADD.W           R2, R0, R1,LSL#2
21A34C:  LDR             R2, [R2,#0x1C]
21A34E:  LDR             R3, [R2,#0x1C]
21A350:  CMP             R9, R3
21A352:  BNE             loc_21A3AE
21A354:  LDR.W           R3, [R11]
21A358:  LDR.W           R6, [R11,#8]
21A35C:  ADD.W           R3, R6, R3,LSL#2
21A360:  LDR.W           R3, [R3,#-4]
21A364:  CMP             R2, R3
21A366:  BEQ             loc_21A3AE
21A368:  MOV             R3, R2
21A36A:  LDR.W           R6, [R3,#0x10]!
21A36E:  CMP             R0, R6
21A370:  IT EQ
21A372:  ADDEQ           R3, #4
21A374:  LDR             R6, [R3]
21A376:  STR.W           R6, [R12,#4]
21A37A:  CBZ             R6, loc_21A3AE
21A37C:  LDR.W           R5, [R11,#0xC]
21A380:  MOVS            R3, #0
21A382:  LDR.W           R4, [R5,R3,LSL#2]
21A386:  CMP             R6, R4
21A388:  BEQ             loc_21A396
21A38A:  LDR.W           R4, [R11]
21A38E:  ADDS            R3, #1
21A390:  CMP             R3, R4
21A392:  BLS             loc_21A382
21A394:  B               loc_21A39A
21A396:  LDR.W           R4, [R11]
21A39A:  CMP             R3, R4
21A39C:  ITTTT HI
21A39E:  STRHI.W         R2, [R12]
21A3A2:  ADDHI           R2, R4, #1
21A3A4:  STRHI.W         R2, [R12,#8]
21A3A8:  ADDHI.W         R12, R12, #0xC
21A3AC:  LDR             R4, [SP,#0x58+var_3C]
21A3AE:  LDR             R2, [R0,#0x18]
21A3B0:  ADDS            R1, #1
21A3B2:  CMP             R1, R2
21A3B4:  BCC             loc_21A348
21A3B6:  B               loc_21A3C0
21A3B8:  MOVS            R0, #0
21A3BA:  B               loc_21A4F0
21A3BC:  DCFS 0.0
21A3C0:  LDR             R0, [SP,#0x58+var_48]
21A3C2:  CMP             R12, R0
21A3C4:  BLS.W           loc_21A524
21A3C8:  LDR.W           R0, [R12,#-4]
21A3CC:  LDR.W           R1, [R11,#8]
21A3D0:  STR.W           R0, [R11]
21A3D4:  ADD.W           R0, R1, R0,LSL#2
21A3D8:  LDR.W           R2, [R12,#-0xC]!
21A3DC:  STR.W           R2, [R0,#-4]
21A3E0:  LDR.W           R0, [R11]
21A3E4:  LDR.W           R1, [R11,#0xC]
21A3E8:  LDR.W           R2, [R12,#4]
21A3EC:  STR.W           R2, [R1,R0,LSL#2]
21A3F0:  LDR.W           R2, [R11]
21A3F4:  ANDS.W          R9, R2, #1
21A3F8:  BEQ             loc_21A408
21A3FA:  LDR.W           R0, [R11,#0xC]
21A3FE:  LDR.W           R0, [R0,R2,LSL#2]
21A402:  LDR             R0, [R0]
21A404:  CMP             R0, #0
21A406:  BEQ             loc_21A332
21A408:  CMP             R2, #0
21A40A:  BEQ.W           loc_21A556
21A40E:  MOVS            R0, #0
21A410:  LDR.W           R1, [R11,#8]
21A414:  LDR.W           R1, [R1,R0,LSL#2]
21A418:  ADDS            R0, #1
21A41A:  LDR             R2, [R1,#0x1C]
21A41C:  CMP             R2, #0
21A41E:  MOV.W           R2, #0
21A422:  IT EQ
21A424:  MOVEQ           R2, #1
21A426:  STR             R2, [R1,#0x1C]
21A428:  LDR.W           LR, [R11]
21A42C:  CMP             R0, LR
21A42E:  BCC             loc_21A410
21A430:  CMP.W           LR, #0
21A434:  BEQ.W           loc_21A556
21A438:  STRD.W          R9, R12, [SP,#0x58+var_44]
21A43C:  MOV.W           R9, #0
21A440:  LDR.W           R12, [R11,#0xC]
21A444:  ORR.W           R0, R9, #1
21A448:  LDR.W           R4, [R12,R0,LSL#2]
21A44C:  LDR             R5, [R4,#0x18]
21A44E:  CMP             R5, #0
21A450:  BEQ             loc_21A4DE
21A452:  LDR.W           R10, [R12,R9,LSL#2]
21A456:  MOVS            R0, #0
21A458:  ADD.W           R1, R4, R0,LSL#2
21A45C:  LDR             R6, [R1,#0x1C]
21A45E:  LDR             R1, [R6,#0x1C]
21A460:  CMP             R1, #0
21A462:  ITTT NE
21A464:  MOVNE           R2, R6
21A466:  LDRNE.W         R1, [R2,#0x10]!
21A46A:  CMPNE           R1, R10
21A46C:  BEQ             loc_21A476
21A46E:  LDR.W           R3, [R6,#0x14]!
21A472:  CMP             R3, R10
21A474:  BNE             loc_21A47E
21A476:  ADDS            R0, #1
21A478:  CMP             R0, R5
21A47A:  BCC             loc_21A458
21A47C:  B               loc_21A4DE
21A47E:  CMP             R1, R4
21A480:  IT EQ
21A482:  MOVEQ           R2, R6
21A484:  LDR             R0, [R2]
21A486:  CMP             R0, #0
21A488:  MOV             R6, R0
21A48A:  ITT NE
21A48C:  MOVNE           R6, #1
21A48E:  CMPNE           R10, R0
21A490:  BEQ             loc_21A4D8
21A492:  MOV             R8, R0
21A494:  LDR.W           R6, [R8,#0x18]
21A498:  CBZ             R6, loc_21A4DE
21A49A:  MOVS            R0, #0
21A49C:  ADD.W           R1, R8, R0,LSL#2
21A4A0:  LDR             R2, [R1,#0x1C]
21A4A2:  LDR             R1, [R2,#0x1C]
21A4A4:  CBZ             R1, loc_21A4B8
21A4A6:  MOV             R5, R2
21A4A8:  LDR.W           R1, [R5,#0x10]!
21A4AC:  CMP             R1, R4
21A4AE:  ITT NE
21A4B0:  LDRNE.W         R3, [R2,#0x14]!
21A4B4:  CMPNE           R3, R4
21A4B6:  BNE             loc_21A4C0
21A4B8:  ADDS            R0, #1
21A4BA:  CMP             R0, R6
21A4BC:  BCC             loc_21A49C
21A4BE:  B               loc_21A4DE
21A4C0:  CMP             R1, R8
21A4C2:  IT EQ
21A4C4:  MOVEQ           R5, R2
21A4C6:  LDR             R0, [R5]
21A4C8:  CMP             R0, #0
21A4CA:  MOV             R6, R0
21A4CC:  IT NE
21A4CE:  MOVNE           R6, #1
21A4D0:  BEQ             loc_21A4D8
21A4D2:  CMP             R10, R0
21A4D4:  MOV             R4, R8
21A4D6:  BNE             loc_21A492
21A4D8:  CMP             R6, #0
21A4DA:  BNE.W           loc_21A3B8
21A4DE:  ADD.W           R9, R9, #2
21A4E2:  CMP             R9, LR
21A4E4:  BCC             loc_21A444
21A4E6:  CMP.W           LR, #2
21A4EA:  BCS.W           loc_21A15C
21A4EE:  MOVS            R0, #1
21A4F0:  LDR             R4, [SP,#0x58+var_3C]
21A4F2:  MOVS            R1, #0
21A4F4:  LDRD.W          R9, R12, [SP,#0x58+var_44]
21A4F8:  LDR.W           R2, [R11,#8]
21A4FC:  LDR.W           R2, [R2,R1,LSL#2]
21A500:  ADDS            R1, #1
21A502:  LDR             R3, [R2,#0x1C]
21A504:  CMP             R3, #0
21A506:  MOV.W           R3, #0
21A50A:  IT EQ
21A50C:  MOVEQ           R3, #1
21A50E:  STR             R3, [R2,#0x1C]
21A510:  LDR.W           R2, [R11]
21A514:  CMP             R1, R2
21A516:  BCC             loc_21A4F8
21A518:  MOV.W           R8, #1
21A51C:  CMP             R0, #0
21A51E:  BEQ.W           loc_21A332
21A522:  B               loc_21A532
21A524:  LDR             R2, [SP,#0x58+var_50]
21A526:  LDR             R0, [SP,#0x58+var_4C]
21A528:  LDR             R2, [R2]
21A52A:  CMP             R2, R0
21A52C:  BNE.W           loc_21A10C
21A530:  B               loc_21A5CC
21A532:  CBZ             R2, loc_21A556
21A534:  MOVS            R0, #0
21A536:  LDR.W           R1, [R11,#8]
21A53A:  LDR.W           R1, [R1,R0,LSL#2]
21A53E:  ADDS            R0, #1
21A540:  LDR             R2, [R1,#0x1C]
21A542:  CMP             R2, #0
21A544:  MOV.W           R2, #0
21A548:  IT EQ
21A54A:  MOVEQ           R2, #1
21A54C:  STR             R2, [R1,#0x1C]
21A54E:  LDR.W           R1, [R11]
21A552:  CMP             R0, R1
21A554:  BCC             loc_21A536
21A556:  MOVS            R0, #0
21A558:  LDR.W           R1, [R11,#0xC]
21A55C:  LDR.W           R1, [R1,R0,LSL#2]
21A560:  LDR             R3, [R1,#0x18]
21A562:  CBZ             R3, loc_21A57C
21A564:  ADD.W           R6, R1, #0x1C
21A568:  MOVS            R2, #0
21A56A:  LDR.W           R5, [R6],#4
21A56E:  LDR             R5, [R5,#0x1C]
21A570:  CMP             R5, #0
21A572:  IT NE
21A574:  ADDNE           R2, #1
21A576:  SUBS            R3, #1
21A578:  BNE             loc_21A56A
21A57A:  B               loc_21A57E
21A57C:  MOVS            R2, #0
21A57E:  LDR             R3, [R1]
21A580:  CBZ             R3, loc_21A598
21A582:  CMP             R2, #2
21A584:  BCC             loc_21A5AC
21A586:  LDR             R2, [R1,#4]
21A588:  STR             R3, [R2]
21A58A:  LDRD.W          R2, R3, [R1]
21A58E:  STR             R3, [R2,#4]
21A590:  MOVS            R2, #0
21A592:  STRD.W          R2, R2, [R1]
21A596:  B               loc_21A5AC
21A598:  CMP             R2, #1
21A59A:  BHI             loc_21A5AC
21A59C:  LDR             R2, [SP,#0x58+var_4C]
21A59E:  MOV             R3, R2
21A5A0:  LDR             R2, [R3]
21A5A2:  STRD.W          R2, R3, [R1]
21A5A6:  LDR             R2, [R3]
21A5A8:  STR             R1, [R2,#4]
21A5AA:  STR             R1, [R3]
21A5AC:  LDR.W           R1, [R11]
21A5B0:  ADDS            R0, #1
21A5B2:  CMP             R0, R1
21A5B4:  BLS             loc_21A558
21A5B6:  MOVS            R0, #0
21A5B8:  STR.W           R0, [R11]
21A5BC:  LDR             R0, [SP,#0x58+var_4C]
21A5BE:  LDR             R1, [SP,#0x58+var_54]
21A5C0:  LDR             R2, [R0]
21A5C2:  ADDS            R1, #1
21A5C4:  CMP             R2, R0
21A5C6:  BNE.W           loc_21A10A
21A5CA:  B               loc_21A5CE
21A5CC:  LDR             R1, [SP,#0x58+var_54]
21A5CE:  LDR             R0, [SP,#0x58+var_58]
21A5D0:  VMOV            S2, R1
21A5D4:  VLDR            S0, [R0]
21A5D8:  VCVT.F32.U32    S2, S2
21A5DC:  VCVT.F32.U32    S0, S0
21A5E0:  LDR.W           R0, [R11,#4]
21A5E4:  ADDS            R0, #1
21A5E6:  STR.W           R0, [R11,#4]
21A5EA:  VDIV.F32        S0, S2, S0
21A5EE:  VMUL.F32        S2, S18, S20
21A5F2:  VADD.F32        S18, S2, S0
21A5F6:  VCMPE.F32       S18, S16
21A5FA:  VMRS            APSR_nzcv, FPSCR
21A5FE:  BLT             loc_21A608
21A600:  LDR             R1, [R4,#4]
21A602:  CMP             R0, R1
21A604:  BCC.W           loc_21A0FE
21A608:  LDR             R0, =(RwEngineInstance_ptr - 0x21A60E)
21A60A:  ADD             R0, PC; RwEngineInstance_ptr
21A60C:  LDR             R4, [R0]; RwEngineInstance
21A60E:  LDR             R0, [R4]
21A610:  LDR.W           R1, [R0,#0x130]
21A614:  LDR             R0, [SP,#0x58+var_48]
21A616:  BLX             R1
21A618:  LDR             R0, [R4]
21A61A:  LDR.W           R1, [R0,#0x130]
21A61E:  MOV             R0, R11
21A620:  BLX             R1
21A622:  LDR             R5, [SP,#0x58+var_58]
21A624:  MOV             R0, R5
21A626:  ADD             SP, SP, #0x20 ; ' '
21A628:  VPOP            {D8-D10}
21A62C:  ADD             SP, SP, #4
21A62E:  POP.W           {R8-R11}
21A632:  POP             {R4-R7,PC}
