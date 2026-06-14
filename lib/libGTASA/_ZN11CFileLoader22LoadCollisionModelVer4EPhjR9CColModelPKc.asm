; =========================================================
; Game Engine Function: _ZN11CFileLoader22LoadCollisionModelVer4EPhjR9CColModelPKc
; Address            : 0x3F0080 - 0x3F03AA
; =========================================================

3F0080:  PUSH            {R4-R7,LR}
3F0082:  ADD             R7, SP, #0xC
3F0084:  PUSH.W          {R8-R10}
3F0088:  SUB             SP, SP, #0x60
3F008A:  MOV             R4, SP
3F008C:  MOV             R6, R0
3F008E:  MOV             R0, R4; this
3F0090:  MOV             R8, R2
3F0092:  MOV             R5, R1
3F0094:  BLX             j__ZN12CBoundingBoxC2Ev; CBoundingBox::CBoundingBox(void)
3F0098:  MOV             R1, R6; void *
3F009A:  MOVS            R2, #0x5C ; '\'; size_t
3F009C:  BLX             memcpy_1
3F00A0:  ADD.W           R0, R4, #0x18
3F00A4:  VLD1.64         {D16-D17}, [R0]
3F00A8:  ADD.W           R0, R8, #0x18
3F00AC:  VST1.32         {D16-D17}, [R0]
3F00B0:  MOV             R0, R8
3F00B2:  VLD1.32         {D16-D17}, [R4,#0x78+var_78]!
3F00B6:  VLDR            D18, [R4]
3F00BA:  SUBS.W          R4, R5, #0x5C ; '\'
3F00BE:  VST1.32         {D16-D17}, [R0]!
3F00C2:  VSTR            D18, [R0]
3F00C6:  LDRB.W          R0, [SP,#0x78+var_48]
3F00CA:  LDRB.W          R1, [R8,#0x29]
3F00CE:  AND.W           R1, R1, #0xFE; unsigned int
3F00D2:  UBFX.W          R0, R0, #1, #1
3F00D6:  ORR.W           R0, R0, R1
3F00DA:  STRB.W          R0, [R8,#0x29]
3F00DE:  BEQ.W           loc_3F03A2
3F00E2:  SUB.W           R0, R5, #0x28 ; '('; byte_count
3F00E6:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3F00EA:  MOV             R9, R0
3F00EC:  ADD.W           R1, R6, #0x5C ; '\'; void *
3F00F0:  ADD.W           R0, R9, #0x34 ; '4'; void *
3F00F4:  MOV             R2, R4; size_t
3F00F6:  STR.W           R9, [R8,#0x2C]
3F00FA:  BLX             memcpy_1
3F00FE:  LDR.W           R0, [R8,#0x2C]
3F0102:  MOVS            R3, #2
3F0104:  LDRH.W          R1, [SP,#0x78+var_50]
3F0108:  SUB.W           R10, R9, #0x44 ; 'D'
3F010C:  STRH            R1, [R0]
3F010E:  LDR.W           R0, [R8,#0x2C]
3F0112:  LDRH.W          R1, [SP,#0x78+var_4E]
3F0116:  STRH            R1, [R0,#2]
3F0118:  LDR.W           R0, [R8,#0x2C]
3F011C:  LDRB.W          R1, [SP,#0x78+var_4A]
3F0120:  STRB            R1, [R0,#6]
3F0122:  LDR.W           R0, [R8,#0x2C]
3F0126:  LDRH.W          R1, [SP,#0x78+var_4C]
3F012A:  STRH            R1, [R0,#4]
3F012C:  LDR.W           R0, [R8,#0x2C]
3F0130:  LDRB            R1, [R0,#7]
3F0132:  AND.W           R1, R1, #0xFE
3F0136:  STRB            R1, [R0,#7]
3F0138:  LDR.W           R0, [R8,#0x2C]
3F013C:  LDRB.W          R1, [SP,#0x78+var_48]
3F0140:  LDRB            R2, [R0,#7]
3F0142:  AND.W           R1, R3, R1,LSR#2
3F0146:  AND.W           R2, R2, #0xFD
3F014A:  ORRS            R1, R2
3F014C:  STRB            R1, [R0,#7]
3F014E:  LDR.W           R0, [R8,#0x2C]
3F0152:  LDR             R1, [SP,#0x78+var_2C]
3F0154:  STR             R1, [R0,#0x20]
3F0156:  LDR             R1, [SP,#0x78+var_44]
3F0158:  LDR.W           R0, [R8,#0x2C]
3F015C:  CMP             R1, #0
3F015E:  IT NE
3F0160:  ADDNE           R1, R10
3F0162:  STR             R1, [R0,#8]
3F0164:  LDR             R1, [SP,#0x78+var_40]
3F0166:  LDR.W           R0, [R8,#0x2C]
3F016A:  CMP             R1, #0
3F016C:  IT NE
3F016E:  ADDNE           R1, R10
3F0170:  STR             R1, [R0,#0xC]
3F0172:  LDR             R1, [SP,#0x78+var_3C]
3F0174:  LDR.W           R0, [R8,#0x2C]
3F0178:  CMP             R1, #0
3F017A:  IT NE
3F017C:  ADDNE           R1, R10
3F017E:  STR             R1, [R0,#0x10]
3F0180:  LDR             R5, [SP,#0x78+var_34]
3F0182:  CBZ             R5, loc_3F01C8
3F0184:  LDRSH.W         R6, [SP,#0x78+var_4C]
3F0188:  LSLS            R0, R6, #4; byte_count
3F018A:  BLX             malloc
3F018E:  CMP             R6, #1
3F0190:  BLT             loc_3F01CA
3F0192:  ADD.W           R12, R10, R5
3F0196:  MOVS            R2, #0
3F0198:  MOVS            R3, #8
3F019A:  ADDS            R4, R0, R3
3F019C:  LDRH.W          R5, [R12,R2]
3F01A0:  ADD.W           R1, R0, R2,LSL#1
3F01A4:  STR.W           R5, [R4,#-8]
3F01A8:  ADD.W           R5, R12, R2
3F01AC:  ADDS            R2, #8
3F01AE:  SUBS            R6, #1
3F01B0:  LDRH            R4, [R5,#2]
3F01B2:  STR             R4, [R1,#4]
3F01B4:  LDRH            R4, [R5,#4]
3F01B6:  STR             R4, [R0,R3]
3F01B8:  ADD.W           R3, R3, #0x10
3F01BC:  LDRB            R4, [R5,#6]
3F01BE:  STRB            R4, [R1,#0xC]
3F01C0:  LDRB            R5, [R5,#7]
3F01C2:  STRB            R5, [R1,#0xD]
3F01C4:  BNE             loc_3F019A
3F01C6:  B               loc_3F01CA
3F01C8:  MOVS            R0, #0
3F01CA:  LDR.W           R1, [R8,#0x2C]
3F01CE:  STR             R0, [R1,#0x18]
3F01D0:  LDR             R5, [SP,#0x78+var_24]
3F01D2:  CBZ             R5, loc_3F0216
3F01D4:  LDR             R6, [SP,#0x78+var_2C]
3F01D6:  LSLS            R0, R6, #4; byte_count
3F01D8:  BLX             malloc
3F01DC:  CMP             R6, #1
3F01DE:  BLT             loc_3F0218
3F01E0:  ADD.W           R12, R10, R5
3F01E4:  MOVS            R2, #0
3F01E6:  MOVS            R3, #8
3F01E8:  ADDS            R4, R0, R3
3F01EA:  LDRH.W          R5, [R12,R2]
3F01EE:  ADD.W           R1, R0, R2,LSL#1
3F01F2:  STR.W           R5, [R4,#-8]
3F01F6:  ADD.W           R5, R12, R2
3F01FA:  ADDS            R2, #8
3F01FC:  SUBS            R6, #1
3F01FE:  LDRH            R4, [R5,#2]
3F0200:  STR             R4, [R1,#4]
3F0202:  LDRH            R4, [R5,#4]
3F0204:  STR             R4, [R0,R3]
3F0206:  ADD.W           R3, R3, #0x10
3F020A:  LDRB            R4, [R5,#6]
3F020C:  STRB            R4, [R1,#0xC]
3F020E:  LDRB            R5, [R5,#7]
3F0210:  STRB            R5, [R1,#0xD]
3F0212:  BNE             loc_3F01E8
3F0214:  B               loc_3F0218
3F0216:  MOVS            R0, #0
3F0218:  LDR.W           R1, [R8,#0x2C]
3F021C:  STR             R0, [R1,#0x2C]
3F021E:  LDR             R5, [SP,#0x78+var_38]
3F0220:  CBZ             R5, loc_3F0290
3F0222:  LDR.W           R0, [R8,#0x2C]; this
3F0226:  BLX             j__ZNK14CCollisionData12GetNoVectorsEv; CCollisionData::GetNoVectors(void)
3F022A:  MOV             R6, R0
3F022C:  ADD.W           R0, R6, R6,LSL#1
3F0230:  LSLS            R0, R0, #2; byte_count
3F0232:  BLX             malloc
3F0236:  CMP             R6, #1
3F0238:  BLT             loc_3F0292
3F023A:  ADD.W           R1, R10, R5
3F023E:  ADDS            R2, R0, #4
3F0240:  ADDS            R1, #2
3F0242:  VLDR            S0, =0.0078125
3F0246:  LDRSH.W         R3, [R1,#-2]
3F024A:  SUBS            R6, #1
3F024C:  VMOV            S2, R3
3F0250:  VCVT.F32.S32    S2, S2
3F0254:  VMUL.F32        S2, S2, S0
3F0258:  VSTR            S2, [R2,#-4]
3F025C:  LDRSH.W         R3, [R1]
3F0260:  VMOV            S2, R3
3F0264:  VCVT.F32.S32    S2, S2
3F0268:  VMUL.F32        S2, S2, S0
3F026C:  VSTR            S2, [R2]
3F0270:  LDRSH.W         R3, [R1,#2]
3F0274:  ADD.W           R1, R1, #6
3F0278:  VMOV            S2, R3
3F027C:  VCVT.F32.S32    S2, S2
3F0280:  VMUL.F32        S2, S2, S0
3F0284:  VSTR            S2, [R2,#4]
3F0288:  ADD.W           R2, R2, #0xC
3F028C:  BNE             loc_3F0246
3F028E:  B               loc_3F0292
3F0290:  MOVS            R0, #0
3F0292:  LDR.W           R1, [R8,#0x2C]
3F0296:  STR             R0, [R1,#0x14]
3F0298:  LDR             R5, [SP,#0x78+var_28]
3F029A:  CBZ             R5, loc_3F030A
3F029C:  LDR.W           R0, [R8,#0x2C]; this
3F02A0:  BLX             j__ZNK14CCollisionData16GetNoShadVectorsEv; CCollisionData::GetNoShadVectors(void)
3F02A4:  MOV             R6, R0
3F02A6:  ADD.W           R0, R6, R6,LSL#1
3F02AA:  LSLS            R0, R0, #2; byte_count
3F02AC:  BLX             malloc
3F02B0:  CMP             R6, #1
3F02B2:  BLT             loc_3F030C
3F02B4:  ADD.W           R1, R10, R5
3F02B8:  ADDS            R2, R0, #4
3F02BA:  ADDS            R1, #2
3F02BC:  VLDR            S0, =0.0078125
3F02C0:  LDRSH.W         R3, [R1,#-2]
3F02C4:  SUBS            R6, #1
3F02C6:  VMOV            S2, R3
3F02CA:  VCVT.F32.S32    S2, S2
3F02CE:  VMUL.F32        S2, S2, S0
3F02D2:  VSTR            S2, [R2,#-4]
3F02D6:  LDRSH.W         R3, [R1]
3F02DA:  VMOV            S2, R3
3F02DE:  VCVT.F32.S32    S2, S2
3F02E2:  VMUL.F32        S2, S2, S0
3F02E6:  VSTR            S2, [R2]
3F02EA:  LDRSH.W         R3, [R1,#2]
3F02EE:  ADD.W           R1, R1, #6
3F02F2:  VMOV            S2, R3
3F02F6:  VCVT.F32.S32    S2, S2
3F02FA:  VMUL.F32        S2, S2, S0
3F02FE:  VSTR            S2, [R2,#4]
3F0302:  ADD.W           R2, R2, #0xC
3F0306:  BNE             loc_3F02C0
3F0308:  B               loc_3F030C
3F030A:  MOVS            R0, #0
3F030C:  LDR.W           R1, [R8,#0x2C]
3F0310:  ADD             R6, SP, #0x78+var_2C
3F0312:  MOV.W           R12, #0
3F0316:  STR             R0, [R1,#0x28]
3F0318:  LDR.W           R0, [R8,#0x2C]
3F031C:  LDRB            R1, [R0,#7]
3F031E:  LDM             R6, {R2,R3,R6}
3F0320:  BIC.W           R5, R1, #4
3F0324:  CMP             R2, #0
3F0326:  MOV             R2, R5
3F0328:  IT GT
3F032A:  ORRGT.W         R2, R1, #4
3F032E:  CMP             R3, #0
3F0330:  IT EQ
3F0332:  MOVEQ           R2, R5
3F0334:  CMP             R6, #0
3F0336:  IT EQ
3F0338:  MOVEQ           R2, R5
3F033A:  STRB            R2, [R0,#7]
3F033C:  MOVS            R2, #0
3F033E:  LDR             R1, [SP,#0x78+var_34]
3F0340:  LDR.W           R0, [R8,#0x2C]
3F0344:  ADD             R1, R9
3F0346:  SUBS            R1, #0x48 ; 'H'
3F0348:  STR             R1, [R0,#0x30]
3F034A:  LDR.W           R0, [R8,#0x2C]
3F034E:  LDRB            R1, [R0,#7]
3F0350:  LSLS            R1, R1, #0x1D
3F0352:  BPL             loc_3F038C
3F0354:  LDR             R2, [R0,#0x20]
3F0356:  CBZ             R2, loc_3F0386
3F0358:  CMP             R2, #1
3F035A:  BLT             loc_3F038A
3F035C:  LDR             R3, [R0,#0x2C]
3F035E:  ADDS            R6, R3, #4
3F0360:  MOVS            R3, #0
3F0362:  LDR.W           R5, [R6,#-4]
3F0366:  LDRD.W          R4, R1, [R6]
3F036A:  ADDS            R6, #0x10
3F036C:  CMP             R5, R3
3F036E:  IT HI
3F0370:  MOVHI           R3, R5
3F0372:  CMP             R4, R3
3F0374:  IT HI
3F0376:  MOVHI           R3, R4
3F0378:  CMP             R1, R3
3F037A:  IT HI
3F037C:  MOVHI           R3, R1
3F037E:  SUBS            R2, #1
3F0380:  BNE             loc_3F0362
3F0382:  ADDS            R2, R3, #1
3F0384:  B               loc_3F038C
3F0386:  MOVS            R2, #0
3F0388:  B               loc_3F038C
3F038A:  MOVS            R2, #1
3F038C:  STR             R2, [R0,#0x24]
3F038E:  LDR.W           R0, [R8,#0x2C]
3F0392:  STR.W           R12, [R0,#0x1C]
3F0396:  LDRB.W          R0, [R8,#0x29]
3F039A:  ORR.W           R0, R0, #6
3F039E:  STRB.W          R0, [R8,#0x29]
3F03A2:  ADD             SP, SP, #0x60 ; '`'
3F03A4:  POP.W           {R8-R10}
3F03A8:  POP             {R4-R7,PC}
