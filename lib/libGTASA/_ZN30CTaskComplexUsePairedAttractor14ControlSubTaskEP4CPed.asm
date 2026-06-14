; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractor14ControlSubTaskEP4CPed
; Address            : 0x4EF2F0 - 0x4EF3BC
; =========================================================

4EF2F0:  PUSH            {R4-R7,LR}
4EF2F2:  ADD             R7, SP, #0xC
4EF2F4:  PUSH.W          {R8}
4EF2F8:  MOV             R6, R0
4EF2FA:  MOV             R8, R1
4EF2FC:  LDR             R4, [R6,#8]
4EF2FE:  LDR             R0, [R4]
4EF300:  LDR             R1, [R0,#0x14]
4EF302:  MOV             R0, R4
4EF304:  BLX             R1
4EF306:  CMP             R0, #0xF7
4EF308:  BEQ             loc_4EF32C
4EF30A:  CMP             R0, #0xF8
4EF30C:  BEQ             loc_4EF360
4EF30E:  CMP             R0, #0xF9
4EF310:  BNE             loc_4EF3B4
4EF312:  LDR             R0, [R6,#0x10]
4EF314:  CBNZ            R0, loc_4EF324
4EF316:  MOV             R0, R6; this
4EF318:  MOV             R1, R8; CPed *
4EF31A:  BLX             j__ZN30CTaskComplexUsePairedAttractor15SeekPartnershipEP4CPed; CTaskComplexUsePairedAttractor::SeekPartnership(CPed *)
4EF31E:  LDR             R0, [R6,#0x10]
4EF320:  CMP             R0, #0
4EF322:  BEQ             loc_4EF3B4
4EF324:  LDR             R0, [R6,#0x18]
4EF326:  LDRB.W          R0, [R0,#0x20]
4EF32A:  B               loc_4EF38C
4EF32C:  LDR             R0, [R6,#0x10]
4EF32E:  CBZ             R0, loc_4EF38E
4EF330:  LDR.W           R0, [R0,#0x440]
4EF334:  MOVS            R1, #0xF6; int
4EF336:  ADDS            R0, #4; this
4EF338:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF33C:  CBZ             R0, loc_4EF38E
4EF33E:  LDR             R0, [R6,#0x10]
4EF340:  MOVS            R1, #0xF7; int
4EF342:  LDR.W           R0, [R0,#0x440]
4EF346:  ADDS            R0, #4; this
4EF348:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF34C:  CBNZ            R0, loc_4EF3B4
4EF34E:  LDR             R0, [R6,#0x10]
4EF350:  MOVS            R1, #0xF8; int
4EF352:  LDR.W           R0, [R0,#0x440]
4EF356:  ADDS            R0, #4; this
4EF358:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF35C:  CBNZ            R0, loc_4EF3B4
4EF35E:  B               loc_4EF38E
4EF360:  MOV             R5, R6
4EF362:  LDR.W           R0, [R5,#0x10]!
4EF366:  CBZ             R0, loc_4EF3A0
4EF368:  LDR.W           R0, [R0,#0x440]
4EF36C:  MOVS            R1, #0xF6; int
4EF36E:  ADDS            R0, #4; this
4EF370:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF374:  CBZ             R0, loc_4EF392
4EF376:  LDR             R0, [R6,#0x10]
4EF378:  LDRB            R1, [R6,#0x14]
4EF37A:  LDR.W           R0, [R0,#0x440]
4EF37E:  CMP             R1, #0
4EF380:  ITE EQ
4EF382:  MOVEQ           R1, #0xF7
4EF384:  MOVNE           R1, #0xF8; int
4EF386:  ADDS            R0, #4; this
4EF388:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4EF38C:  CBZ             R0, loc_4EF3B4
4EF38E:  LDR             R0, [R6,#8]
4EF390:  B               loc_4EF3A8
4EF392:  LDR             R0, [R5]; this
4EF394:  CBZ             R0, loc_4EF3A0
4EF396:  MOV             R1, R5; CEntity **
4EF398:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EF39C:  MOVS            R0, #0
4EF39E:  STR             R0, [R5]
4EF3A0:  MOVS            R1, #0
4EF3A2:  LDR             R0, [R6,#8]
4EF3A4:  STR             R1, [R6,#0x18]
4EF3A6:  STRB            R1, [R6,#0x14]
4EF3A8:  LDR             R1, [R0]
4EF3AA:  MOVS            R2, #0
4EF3AC:  MOVS            R3, #0
4EF3AE:  LDR             R6, [R1,#0x1C]
4EF3B0:  MOV             R1, R8
4EF3B2:  BLX             R6
4EF3B4:  MOV             R0, R4
4EF3B6:  POP.W           {R8}
4EF3BA:  POP             {R4-R7,PC}
