; =========================================================
; Game Engine Function: check_control_input
; Address            : 0xCA2A8 - 0xCA3E6
; =========================================================

CA2A8:  PUSH            {R7,LR}
CA2AA:  MOV             R7, SP
CA2AC:  LDR             R2, [R0,#8]
CA2AE:  MOVW            R1, #0x5DBF
CA2B2:  MOV             R12, #0xFFFFFF9A
CA2B6:  CMP             R2, R1
CA2B8:  BLE             loc_CA2D2
CA2BA:  MOVW            R1, #0xAC43
CA2BE:  CMP             R2, R1
CA2C0:  BGT             loc_CA2E8
CA2C2:  MOVW            R1, #0x5DC0
CA2C6:  CMP             R2, R1
CA2C8:  IT NE
CA2CA:  CMPNE.W         R2, #0x7D00
CA2CE:  BEQ             loc_CA2F8
CA2D0:  B               loc_CA3E2
CA2D2:  CMP.W           R2, #0x1F40
CA2D6:  ITT NE
CA2D8:  MOVWNE          R1, #0x2EE0
CA2DC:  CMPNE           R2, R1
CA2DE:  BEQ             loc_CA2F8
CA2E0:  CMP.W           R2, #0x3E80
CA2E4:  BEQ             loc_CA2F8
CA2E6:  B               loc_CA3E2
CA2E8:  MOVW            R1, #0xBB80
CA2EC:  CMP             R2, R1
CA2EE:  ITT NE
CA2F0:  MOVWNE          R1, #0xAC44
CA2F4:  CMPNE           R2, R1
CA2F6:  BNE             loc_CA3E2
CA2F8:  LDR             R2, [R0,#0x14]
CA2FA:  CMP.W           R2, #0x1F40
CA2FE:  IT NE
CA300:  CMPNE.W         R2, #0x3E80
CA304:  BEQ             loc_CA30E
CA306:  MOVW            R1, #0x2EE0
CA30A:  CMP             R2, R1
CA30C:  BNE             loc_CA390
CA30E:  LDR.W           LR, [R0,#0xC]
CA312:  CMP.W           LR, #0x1F40
CA316:  IT NE
CA318:  CMPNE.W         LR, #0x3E80
CA31C:  BEQ             loc_CA326
CA31E:  MOVW            R1, #0x2EE0
CA322:  CMP             LR, R1
CA324:  BNE             loc_CA390
CA326:  LDR             R1, [R0,#0x10]
CA328:  CMP.W           R1, #0x1F40
CA32C:  IT NE
CA32E:  CMPNE.W         R1, #0x3E80
CA332:  BEQ             loc_CA33C
CA334:  MOVW            R3, #0x2EE0
CA338:  CMP             R1, R3
CA33A:  BNE             loc_CA390
CA33C:  MOV             R12, #0xFFFFFF9A
CA340:  CMP             R1, R2
CA342:  BGT             loc_CA3E2
CA344:  CMP             LR, R2
CA346:  BLT             loc_CA3E2
CA348:  CMP             R1, LR
CA34A:  BGT             loc_CA3E2
CA34C:  LDR             R1, [R0,#0x18]
CA34E:  SUB.W           R2, R1, #0xA
CA352:  CMP             R2, #0x1E
CA354:  BHI             loc_CA368
CA356:  MOVS            R3, #1
CA358:  LSL.W           R2, R3, R2
CA35C:  MOV             R3, #0x40000401
CA364:  TST             R2, R3
CA366:  BNE             loc_CA374
CA368:  CMP             R1, #0x3C ; '<'
CA36A:  ITTT NE
CA36C:  MOVNE           R12, #0xFFFFFF99
CA370:  MOVNE           R0, R12
CA372:  POPNE           {R7,PC}
CA374:  LDR             R1, [R0,#0x20]
CA376:  CMP             R1, #0x64 ; 'd'
CA378:  ITTT HI
CA37A:  MOVHI           R12, #0xFFFFFF97
CA37E:  MOVHI           R0, R12
CA380:  POPHI           {R7,PC}
CA382:  LDR             R1, [R0,#0x30]
CA384:  CMP             R1, #1
CA386:  BLS             loc_CA398
CA388:  MOV             R12, #0xFFFFFF94
CA38C:  MOV             R0, R12
CA38E:  POP             {R7,PC}
CA390:  MOV             R12, #0xFFFFFF9A
CA394:  MOV             R0, R12
CA396:  POP             {R7,PC}
CA398:  LDR             R1, [R0,#0x34]
CA39A:  CMP             R1, #1
CA39C:  ITTT HI
CA39E:  MOVHI           R12, #0xFFFFFF93
CA3A2:  MOVHI           R0, R12
CA3A4:  POPHI           {R7,PC}
CA3A6:  LDR             R1, [R0,#0x28]
CA3A8:  CMP             R1, #1
CA3AA:  BLS             loc_CA3B4
CA3AC:  MOV             R12, #0xFFFFFF95
CA3B0:  MOV             R0, R12
CA3B2:  POP             {R7,PC}
CA3B4:  LDR             R1, [R0]
CA3B6:  SUBS            R2, R1, #1
CA3B8:  CMP             R2, #1
CA3BA:  ITTT HI
CA3BC:  MOVHI           R12, #0xFFFFFF91
CA3C0:  MOVHI           R0, R12
CA3C2:  POPHI           {R7,PC}
CA3C4:  LDR             R2, [R0,#4]
CA3C6:  MOV             R12, #0xFFFFFF91
CA3CA:  CMP             R2, R1
CA3CC:  BGT             loc_CA3E2
CA3CE:  SUBS            R1, R2, #1
CA3D0:  CMP             R1, #1
CA3D2:  BHI             loc_CA3E2
CA3D4:  LDR             R1, [R0,#0x24]
CA3D6:  MOVS            R0, #0
CA3D8:  CMP             R1, #0xA
CA3DA:  IT HI
CA3DC:  MOVHI           R0, #0xFFFFFF96
CA3E0:  POP             {R7,PC}
CA3E2:  MOV             R0, R12
CA3E4:  POP             {R7,PC}
