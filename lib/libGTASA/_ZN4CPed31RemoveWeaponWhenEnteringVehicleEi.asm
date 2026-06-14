; =========================================================
; Game Engine Function: _ZN4CPed31RemoveWeaponWhenEnteringVehicleEi
; Address            : 0x4A52FC - 0x4A53D2
; =========================================================

4A52FC:  PUSH            {R4,R5,R7,LR}
4A52FE:  ADD             R7, SP, #8
4A5300:  MOV             R4, R0
4A5302:  MOV             R5, R1
4A5304:  LDR.W           R0, [R4,#0x444]
4A5308:  CMP             R0, #0
4A530A:  ITTT NE
4A530C:  LDRHNE          R1, [R0,#0x34]
4A530E:  ORRNE.W         R1, R1, #0x800
4A5312:  STRHNE          R1, [R0,#0x34]
4A5314:  LDR.W           R0, [R4,#0x710]
4A5318:  CMP             R0, #0x37 ; '7'
4A531A:  IT NE
4A531C:  POPNE           {R4,R5,R7,PC}
4A531E:  LDR.W           R0, [R4,#0x59C]
4A5322:  CMP             R0, #1
4A5324:  BHI             loc_4A53B2
4A5326:  MOV             R0, R4
4A5328:  NOP
4A532A:  NOP
4A532C:  NOP
4A532E:  NOP
4A5330:  NOP
4A5332:  NOP
4A5334:  LDR.W           R0, [R4,#0x614]
4A5338:  CMP             R0, #0x1C
4A533A:  IT NE
4A533C:  CMPNE           R0, #0x20 ; ' '
4A533E:  BEQ             loc_4A5348
4A5340:  CMP             R5, #1
4A5342:  BEQ             loc_4A5354
4A5344:  CMP             R0, #0x1D
4A5346:  BNE             loc_4A5354
4A5348:  LDR.W           R0, [R4,#0x620]
4A534C:  CMP             R0, #0
4A534E:  BLE             loc_4A5354
4A5350:  MOVS            R0, #4
4A5352:  B               loc_4A537A
4A5354:  CMP             R5, #1
4A5356:  BNE             loc_4A53B2
4A5358:  LDR.W           R0, [R4,#0x5F8]
4A535C:  CMP             R0, #0x1A
4A535E:  BNE             loc_4A5368
4A5360:  LDR.W           R0, [R4,#0x604]
4A5364:  CMP             R0, #0
4A5366:  BGT             loc_4A5378
4A5368:  LDR.W           R0, [R4,#0x5DC]
4A536C:  CMP             R0, #0x16
4A536E:  BNE             loc_4A53B2
4A5370:  LDR.W           R0, [R4,#0x5E8]
4A5374:  CMP             R0, #1
4A5376:  BLT             loc_4A53B2
4A5378:  MOVS            R0, #2
4A537A:  LDR.W           R1, [R4,#0x710]
4A537E:  CMP             R1, #0x37 ; '7'
4A5380:  BNE             loc_4A5396
4A5382:  LDRSB.W         R1, [R4,#0x71C]
4A5386:  RSB.W           R1, R1, R1,LSL#3
4A538A:  ADD.W           R1, R4, R1,LSL#2
4A538E:  LDR.W           R1, [R1,#0x5A4]
4A5392:  STR.W           R1, [R4,#0x710]
4A5396:  RSB.W           R0, R0, R0,LSL#3
4A539A:  MOVS            R1, #1
4A539C:  ADD.W           R0, R4, R0,LSL#2
4A53A0:  LDR.W           R0, [R0,#0x5A4]
4A53A4:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A53A8:  LDR             R1, [R0,#0x14]; int
4A53AA:  MOV             R0, R4; this
4A53AC:  POP.W           {R4,R5,R7,LR}
4A53B0:  B               _ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4A53B2:  LDRSB.W         R0, [R4,#0x71C]
4A53B6:  MOVS            R1, #1
4A53B8:  RSB.W           R0, R0, R0,LSL#3
4A53BC:  ADD.W           R0, R4, R0,LSL#2
4A53C0:  LDR.W           R0, [R0,#0x5A4]
4A53C4:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A53C8:  LDR             R1, [R0,#0xC]; int
4A53CA:  MOV             R0, R4; this
4A53CC:  POP.W           {R4,R5,R7,LR}
4A53D0:  B               _ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
