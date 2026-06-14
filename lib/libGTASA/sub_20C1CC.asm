; =========================================================
; Game Engine Function: sub_20C1CC
; Address            : 0x20C1CC - 0x20C3C2
; =========================================================

20C1CC:  PUSH            {R4-R7,LR}
20C1CE:  ADD             R7, SP, #0xC
20C1D0:  PUSH.W          {R8-R11}
20C1D4:  SUB             SP, SP, #0x74
20C1D6:  MOV             R9, R0
20C1D8:  LDR             R0, =(__stack_chk_guard_ptr - 0x20C1E4)
20C1DA:  CMP.W           R9, #0
20C1DE:  MOV             R8, R2
20C1E0:  ADD             R0, PC; __stack_chk_guard_ptr
20C1E2:  MOV             R5, R1
20C1E4:  MOV.W           R11, #0
20C1E8:  LDR             R0, [R0]; __stack_chk_guard
20C1EA:  LDR             R0, [R0]
20C1EC:  STR             R0, [SP,#0x90+var_20]
20C1EE:  IT NE
20C1F0:  CMPNE           R5, #0
20C1F2:  BEQ.W           loc_20C38C
20C1F6:  MOVS            R0, #0x64 ; 'd'; byte_count
20C1F8:  BLX             malloc
20C1FC:  MOV             R11, R0
20C1FE:  MOVS            R6, #0
20C200:  CMP.W           R11, #0
20C204:  BEQ.W           loc_20C388
20C208:  VMOV.I32        Q8, #0
20C20C:  ADD.W           R0, R11, #0x38 ; '8'
20C210:  STRD.W          R6, R6, [R11,#0x20]
20C214:  MOVS            R1, #0
20C216:  STR.W           R6, [R11,#0x28]
20C21A:  MOVS            R2, #0
20C21C:  STRD.W          R6, R6, [R11,#0xC]
20C220:  STRD.W          R6, R6, [R11]
20C224:  STR.W           R6, [R11,#0x48]
20C228:  VST1.32         {D16-D17}, [R0]
20C22C:  MOVS            R0, #0
20C22E:  BLX             j_crc32
20C232:  STRD.W          R0, R6, [R11,#0x4C]
20C236:  MOV             R0, R9; char *
20C238:  STR.W           R6, [R11,#0x58]
20C23C:  BLX             strlen
20C240:  ADDS            R0, #1; byte_count
20C242:  BLX             malloc
20C246:  CMP             R0, #0
20C248:  STR.W           R0, [R11,#0x54]
20C24C:  BEQ.W           loc_20C382
20C250:  MOV             R1, R9; char *
20C252:  BLX             strcpy
20C256:  ADD             R2, SP, #0x90+modes
20C258:  MOV.W           R10, #0
20C25C:  ADD.W           R3, R2, #0x50 ; 'P'
20C260:  MOV.W           R1, #0xFFFFFFFF
20C264:  MOV.W           R12, #0x72 ; 'r'
20C268:  MOV.W           LR, #0x77 ; 'w'
20C26C:  STRB.W          R10, [R11,#0x5C]
20C270:  LDRB            R6, [R5]
20C272:  CMP             R6, #0x72 ; 'r'
20C274:  ITT EQ
20C276:  STRBEQ.W        R12, [R11,#0x5C]
20C27A:  LDRBEQ          R6, [R5]
20C27C:  CMP             R6, #0x77 ; 'w'
20C27E:  IT NE
20C280:  CMPNE           R6, #0x61 ; 'a'
20C282:  BNE             loc_20C28A
20C284:  STRB.W          LR, [R11,#0x5C]
20C288:  LDRB            R6, [R5]
20C28A:  SUB.W           R0, R6, #0x30 ; '0'
20C28E:  UXTB            R4, R0
20C290:  CMP             R4, #9
20C292:  BHI             loc_20C298
20C294:  MOV             R1, R0
20C296:  B               loc_20C2B6
20C298:  CMP             R6, #0x66 ; 'f'
20C29A:  BEQ             loc_20C2A8
20C29C:  CMP             R6, #0x68 ; 'h'
20C29E:  BNE             loc_20C2B0
20C2A0:  MOV.W           R10, #2
20C2A4:  MOVS            R6, #0x68 ; 'h'
20C2A6:  B               loc_20C2B6
20C2A8:  MOV.W           R10, #1
20C2AC:  MOVS            R6, #0x68 ; 'h'
20C2AE:  B               loc_20C2B6
20C2B0:  STRB.W          R6, [R2],#1
20C2B4:  LDRB            R6, [R5]
20C2B6:  CMP             R2, R3
20C2B8:  ITT NE
20C2BA:  ADDNE           R5, #1
20C2BC:  CMPNE           R6, #0
20C2BE:  BNE             loc_20C270
20C2C0:  LDRB.W          R0, [R11,#0x5C]
20C2C4:  CMP             R0, #0x77 ; 'w'
20C2C6:  BEQ             loc_20C2F6
20C2C8:  CMP             R0, #0
20C2CA:  BEQ             loc_20C382
20C2CC:  MOV.W           R0, #0x4000; byte_count
20C2D0:  BLX             malloc
20C2D4:  ADR             R2, a113_1; "1.1.3"
20C2D6:  STR.W           R0, [R11,#0x44]
20C2DA:  STR.W           R0, [R11]
20C2DE:  MOV             R0, R11
20C2E0:  MOV             R1, #0xFFFFFFF1
20C2E4:  MOVS            R3, #0x38 ; '8'
20C2E6:  BLX             j_inflateInit2_
20C2EA:  CMP             R0, #0
20C2EC:  BNE             loc_20C382
20C2EE:  LDR.W           R0, [R11,#0x44]
20C2F2:  CBNZ            R0, loc_20C328
20C2F4:  B               loc_20C382
20C2F6:  MOVS            R3, #8
20C2F8:  MOVS            R0, #0x38 ; '8'
20C2FA:  ADR             R2, a113_1; "1.1.3"
20C2FC:  STRD.W          R3, R10, [SP,#0x90+var_90]
20C300:  STRD.W          R2, R0, [SP,#0x90+var_88]
20C304:  MOV             R0, R11
20C306:  MOVS            R2, #8
20C308:  MOV             R3, #0xFFFFFFF1
20C30C:  BLX             j_deflateInit2_
20C310:  MOV             R5, R0
20C312:  MOV.W           R0, #0x4000; byte_count
20C316:  BLX             malloc
20C31A:  CMP             R5, #0
20C31C:  STR.W           R0, [R11,#0x48]
20C320:  STR.W           R0, [R11,#0xC]
20C324:  BNE             loc_20C382
20C326:  CBZ             R0, loc_20C382
20C328:  MOV.W           R0, #0x4000
20C32C:  STR.W           R0, [R11,#0x10]
20C330:  BLX             __errno
20C334:  MOVS            R1, #0
20C336:  CMP.W           R8, #0xFFFFFFFF
20C33A:  STR             R1, [R0]
20C33C:  ADD             R1, SP, #0x90+modes; modes
20C33E:  BLE             loc_20C348
20C340:  MOV             R0, R8; fd
20C342:  BLX             fdopen
20C346:  B               loc_20C34E
20C348:  MOV             R0, R9; filename
20C34A:  BLX             fopen
20C34E:  CMP             R0, #0
20C350:  STR.W           R0, [R11,#0x40]
20C354:  BEQ             loc_20C382
20C356:  LDRB.W          R1, [R11,#0x5C]
20C35A:  CMP             R1, #0x77 ; 'w'
20C35C:  BNE             loc_20C3A8
20C35E:  MOVS            R1, #3
20C360:  MOVS            R2, #0
20C362:  MOVS            R3, #8
20C364:  STRD.W          R3, R2, [SP,#0x90+var_90]
20C368:  MOVS            R3, #0x8B
20C36A:  STRD.W          R2, R2, [SP,#0x90+var_88]
20C36E:  STRD.W          R2, R2, [SP,#0x90+var_80]
20C372:  STRD.W          R2, R1, [SP,#0x90+var_78]
20C376:  ADR             R1, aCCCCCCCCCC; "%c%c%c%c%c%c%c%c%c%c"
20C378:  MOVS            R2, #0x1F
20C37A:  BLX             fprintf
20C37E:  MOVS            R0, #0xA
20C380:  B               loc_20C3BC
20C382:  MOV             R0, R11
20C384:  BL              sub_20D174
20C388:  MOV.W           R11, #0
20C38C:  LDR             R0, =(__stack_chk_guard_ptr - 0x20C394)
20C38E:  LDR             R1, [SP,#0x90+var_20]
20C390:  ADD             R0, PC; __stack_chk_guard_ptr
20C392:  LDR             R0, [R0]; __stack_chk_guard
20C394:  LDR             R0, [R0]
20C396:  SUBS            R0, R0, R1
20C398:  ITTTT EQ
20C39A:  MOVEQ           R0, R11
20C39C:  ADDEQ           SP, SP, #0x74 ; 't'
20C39E:  POPEQ.W         {R8-R11}
20C3A2:  POPEQ           {R4-R7,PC}
20C3A4:  BLX             __stack_chk_fail
20C3A8:  MOV             R0, R11
20C3AA:  BL              sub_20C8B4
20C3AE:  LDR.W           R0, [R11,#0x40]; stream
20C3B2:  BLX             ftell
20C3B6:  LDR.W           R1, [R11,#4]
20C3BA:  SUBS            R0, R0, R1
20C3BC:  STR.W           R0, [R11,#0x60]
20C3C0:  B               loc_20C38C
