; =========================================================
; Game Engine Function: _ZN16CAEAudioHardwareC2Ev
; Address            : 0x3921B0 - 0x3923FA
; =========================================================

3921B0:  PUSH            {R4-R7,LR}; Alternative name is 'CAEAudioHardware::CAEAudioHardware(void)'
3921B2:  ADD             R7, SP, #0xC
3921B4:  PUSH.W          {R8-R11}
3921B8:  SUB             SP, SP, #0x1C
3921BA:  MOV             R4, R0
3921BC:  ADDW            R0, R4, #0xB8C; this
3921C0:  BLX             j__ZN15CAEStreamThreadC2Ev; CAEStreamThread::CAEStreamThread(void)
3921C4:  ADD.W           R1, R4, #0x178
3921C8:  ADD.W           R10, R4, #0x42 ; 'B'
3921CC:  CMP             R10, R1
3921CE:  MOV.W           R0, #0
3921D2:  IT HI
3921D4:  MOVHI           R0, #1
3921D6:  ADD.W           R5, R4, #0x1F0
3921DA:  STR             R0, [SP,#0x38+var_28]
3921DC:  ADDS            R0, R4, #6
3921DE:  CMP             R0, R5
3921E0:  MOV.W           R2, #0
3921E4:  IT CC
3921E6:  MOVCC           R2, #1
3921E8:  ADD.W           R3, R4, #0x100
3921EC:  STR             R2, [SP,#0x38+var_2C]
3921EE:  CMP             R1, R3
3921F0:  MOV.W           R2, #0
3921F4:  MOV.W           R6, #0
3921F8:  IT CC
3921FA:  MOVCC           R2, #1
3921FC:  MOV.W           R12, #0
392200:  STR             R2, [SP,#0x38+var_24]
392202:  ADD.W           R2, R4, #0x88
392206:  CMP             R2, R5
392208:  MOV.W           R8, #0
39220C:  IT CC
39220E:  MOVCC           R6, #1
392210:  CMP             R0, R3
392212:  MOV.W           R3, #0
392216:  MOV.W           R9, #0
39221A:  IT CC
39221C:  MOVCC           R3, #1
39221E:  CMP             R10, R2
392220:  IT HI
392222:  MOVHI.W         R12, #1
392226:  STR             R1, [SP,#0x38+var_30]
392228:  CMP             R1, R2
39222A:  ADD.W           R1, R4, #0x4C ; 'L'
39222E:  IT CC
392230:  MOVCC.W         R8, #1
392234:  CMP             R1, R5
392236:  STR             R5, [SP,#0x38+var_20]
392238:  IT CC
39223A:  MOVCC.W         R9, #1
39223E:  CMP             R0, R2
392240:  MOV.W           LR, #0
392244:  STR             R0, [SP,#0x38+var_34]
392246:  IT CC
392248:  MOVCC.W         LR, #1
39224C:  CMP             R10, R1
39224E:  MOV.W           R10, #0
392252:  IT HI
392254:  MOVHI.W         R10, #1
392258:  MOV.W           R11, #0
39225C:  MOVS            R0, #0
39225E:  TST.W           R10, LR
392262:  BNE             loc_39235C
392264:  ANDS.W          R5, R9, R8
392268:  IT EQ
39226A:  ANDSEQ.W        R3, R3, R12
39226E:  BNE             loc_39235C
392270:  MOV             R5, R1
392272:  LDR             R1, [SP,#0x38+var_24]
392274:  ANDS.W          R3, R6, R1
392278:  ITT EQ
39227A:  LDRDEQ.W        R3, R1, [SP,#0x38+var_2C]
39227E:  ANDSEQ.W        R3, R3, R1
392282:  BNE             loc_39235C
392284:  VMOV.I32        D18, #0
392288:  ADR             R0, dword_392400
39228A:  VMOV.F32        Q8, #1.0
39228E:  VLD1.64         {D20-D21}, [R0@128]
392292:  ADD.W           R0, R4, #0x54 ; 'T'
392296:  VST1.16         {D18}, [R5]
39229A:  LDR             R1, [SP,#0x38+var_30]
39229C:  VST1.32         {D16-D17}, [R1]!
3922A0:  LDR             R3, [SP,#0x38+var_34]
3922A2:  VST1.16         {D18}, [R3]!
3922A6:  VST1.32         {D20-D21}, [R2]!
3922AA:  VST1.16         {D18}, [R0]
3922AE:  ADD.W           R0, R4, #0xA8
3922B2:  VST1.32         {D20-D21}, [R2]
3922B6:  VST1.16         {D18}, [R3]
3922BA:  VST1.32         {D16-D17}, [R1]
3922BE:  VST1.32         {D20-D21}, [R0]
3922C2:  ADD.W           R0, R4, #0x5C ; '\'
3922C6:  VST1.16         {D18}, [R0]
3922CA:  ADD.W           R0, R4, #0x16
3922CE:  VST1.16         {D18}, [R0]
3922D2:  ADD.W           R0, R4, #0x198
3922D6:  VST1.32         {D16-D17}, [R0]
3922DA:  ADD.W           R0, R4, #0x64 ; 'd'
3922DE:  VST1.16         {D18}, [R0]
3922E2:  ADD.W           R0, R4, #0xB8
3922E6:  VST1.32         {D20-D21}, [R0]
3922EA:  ADD.W           R0, R4, #0x1E
3922EE:  VST1.16         {D18}, [R0]
3922F2:  ADD.W           R0, R4, #0x1A8
3922F6:  VST1.32         {D16-D17}, [R0]
3922FA:  ADD.W           R0, R4, #0x6C ; 'l'
3922FE:  VST1.16         {D18}, [R0]
392302:  ADD.W           R0, R4, #0xC8
392306:  VST1.32         {D20-D21}, [R0]
39230A:  ADD.W           R0, R4, #0x26 ; '&'
39230E:  VST1.16         {D18}, [R0]
392312:  ADD.W           R0, R4, #0x1B8
392316:  VST1.32         {D16-D17}, [R0]
39231A:  ADD.W           R0, R4, #0x74 ; 't'
39231E:  VST1.16         {D18}, [R0]
392322:  ADD.W           R0, R4, #0xD8
392326:  VST1.32         {D20-D21}, [R0]
39232A:  ADD.W           R0, R4, #0x2E ; '.'
39232E:  VST1.16         {D18}, [R0]
392332:  ADD.W           R0, R4, #0x1C8
392336:  VST1.32         {D16-D17}, [R0]
39233A:  ADD.W           R0, R4, #0x7C ; '|'
39233E:  VST1.16         {D18}, [R0]
392342:  ADD.W           R0, R4, #0xE8
392346:  VST1.32         {D20-D21}, [R0]
39234A:  ADD.W           R0, R4, #0x36 ; '6'
39234E:  VST1.16         {D18}, [R0]
392352:  ADD.W           R0, R4, #0x1D8
392356:  VST1.32         {D16-D17}, [R0]
39235A:  MOVS            R0, #0x1C
39235C:  MOVS            R3, #0
39235E:  LSLS            R2, R0, #2
392360:  MOVT            R3, #0xC47A
392364:  MOV.W           R6, #0x3F800000
392368:  ADD.W           R5, R4, R0,LSL#1
39236C:  ADDS            R1, R4, R2
39236E:  ADDS            R0, #1
392370:  ADDS            R2, #4
392372:  CMP             R0, #0x1E
392374:  STRH.W          R11, [R5,#0x4C]
392378:  STR.W           R3, [R1,#0x88]
39237C:  STRH.W          R11, [R5,#6]
392380:  STR.W           R6, [R1,#0x178]
392384:  BNE             loc_392368
392386:  VMOV.I8         Q8, #0xFF
39238A:  MOV.W           R0, #0x210
39238E:  ADDS            R1, R4, R0
392390:  ADDS            R0, #0x10
392392:  CMP.W           R0, #0x460
392396:  VST1.16         {D16-D17}, [R1]
39239A:  ADD.W           R1, R1, #0x258
39239E:  VST1.16         {D16-D17}, [R1]
3923A2:  BNE             loc_39238E
3923A4:  MOVW            R0, #0xFFFF
3923A8:  MOVS            R1, #0xFF
3923AA:  STRH.W          R0, [R4,#0x6B8]
3923AE:  VMOV.F32        Q8, #1.0
3923B2:  STRH.W          R0, [R4,#0x460]
3923B6:  STRH.W          R0, [R4,#0x6BA]
3923BA:  STRH.W          R0, [R4,#0x462]
3923BE:  STRH.W          R0, [R4,#0x6BC]
3923C2:  STRH.W          R0, [R4,#0x464]
3923C6:  STRH.W          R0, [R4,#0x6BE]
3923CA:  STRH.W          R0, [R4,#0x466]
3923CE:  MOV.W           R0, #0x3F800000
3923D2:  STRD.W          R0, R0, [R4,#0x200]
3923D6:  MOV             R0, #0xFFFFD8F0
3923DE:  STR             R0, [R4,#0x44]
3923E0:  MOVS            R0, #0
3923E2:  STRH.W          R0, [R4,#0x48]
3923E6:  STRB            R1, [R4,#5]
3923E8:  STRH            R0, [R4]
3923EA:  LDR             R0, [SP,#0x38+var_20]
3923EC:  VST1.32         {D16-D17}, [R0]
3923F0:  MOV             R0, R4
3923F2:  ADD             SP, SP, #0x1C
3923F4:  POP.W           {R8-R11}
3923F8:  POP             {R4-R7,PC}
