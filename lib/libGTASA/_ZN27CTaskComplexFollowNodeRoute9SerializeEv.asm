; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute9SerializeEv
; Address            : 0x5271DC - 0x5273AE
; =========================================================

5271DC:  PUSH            {R4-R7,LR}
5271DE:  ADD             R7, SP, #0xC
5271E0:  PUSH.W          {R11}
5271E4:  MOV             R4, R0
5271E6:  LDR             R0, [R4]
5271E8:  LDR             R1, [R0,#0x14]
5271EA:  MOV             R0, R4
5271EC:  BLX             R1
5271EE:  MOV             R5, R0
5271F0:  LDR             R0, =(UseDataFence_ptr - 0x5271F6)
5271F2:  ADD             R0, PC; UseDataFence_ptr
5271F4:  LDR             R0, [R0]; UseDataFence
5271F6:  LDRB            R0, [R0]
5271F8:  CMP             R0, #0
5271FA:  IT NE
5271FC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527200:  MOVS            R0, #4; byte_count
527202:  BLX             malloc
527206:  MOV             R6, R0
527208:  MOVS            R1, #byte_4; void *
52720A:  STR             R5, [R6]
52720C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527210:  MOV             R0, R6; p
527212:  BLX             free
527216:  LDR             R0, [R4]
527218:  LDR             R1, [R0,#0x14]
52721A:  MOV             R0, R4
52721C:  BLX             R1
52721E:  MOVW            R1, #0x38A
527222:  CMP             R0, R1
527224:  BNE.W           loc_527394
527228:  LDR             R0, =(UseDataFence_ptr - 0x52722E)
52722A:  ADD             R0, PC; UseDataFence_ptr
52722C:  LDR             R0, [R0]; UseDataFence
52722E:  LDRB            R0, [R0]
527230:  CMP             R0, #0
527232:  IT NE
527234:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527238:  MOVS            R0, #4; byte_count
52723A:  BLX             malloc
52723E:  MOV             R5, R0
527240:  LDR             R0, [R4,#0x18]
527242:  STR             R0, [R5]
527244:  MOV             R0, R5; this
527246:  MOVS            R1, #byte_4; void *
527248:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
52724C:  MOV             R0, R5; p
52724E:  BLX             free
527252:  LDR             R0, =(UseDataFence_ptr - 0x527258)
527254:  ADD             R0, PC; UseDataFence_ptr
527256:  LDR             R0, [R0]; UseDataFence
527258:  LDRB            R0, [R0]
52725A:  CMP             R0, #0
52725C:  IT NE
52725E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527262:  MOVS            R0, #0xC; byte_count
527264:  BLX             malloc
527268:  ADD.W           R1, R4, #0xC
52726C:  MOV             R5, R0
52726E:  LDR             R0, [R4,#0x14]
527270:  VLD1.8          {D16}, [R1]
527274:  MOVS            R1, #(byte_9+3); void *
527276:  STR             R0, [R5,#8]
527278:  MOV             R0, R5; this
52727A:  VST1.8          {D16}, [R5]
52727E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527282:  MOV             R0, R5; p
527284:  BLX             free
527288:  LDR             R0, =(UseDataFence_ptr - 0x52728E)
52728A:  ADD             R0, PC; UseDataFence_ptr
52728C:  LDR             R0, [R0]; UseDataFence
52728E:  LDRB            R0, [R0]
527290:  CMP             R0, #0
527292:  IT NE
527294:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527298:  MOVS            R0, #4; byte_count
52729A:  BLX             malloc
52729E:  MOV             R5, R0
5272A0:  LDR             R0, [R4,#0x1C]
5272A2:  STR             R0, [R5]
5272A4:  MOV             R0, R5; this
5272A6:  MOVS            R1, #byte_4; void *
5272A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5272AC:  MOV             R0, R5; p
5272AE:  BLX             free
5272B2:  LDR             R0, =(UseDataFence_ptr - 0x5272B8)
5272B4:  ADD             R0, PC; UseDataFence_ptr
5272B6:  LDR             R0, [R0]; UseDataFence
5272B8:  LDRB            R0, [R0]
5272BA:  CMP             R0, #0
5272BC:  IT NE
5272BE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5272C2:  MOVS            R0, #4; byte_count
5272C4:  BLX             malloc
5272C8:  MOV             R5, R0
5272CA:  LDR             R0, [R4,#0x20]
5272CC:  STR             R0, [R5]
5272CE:  MOV             R0, R5; this
5272D0:  MOVS            R1, #byte_4; void *
5272D2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5272D6:  MOV             R0, R5; p
5272D8:  BLX             free
5272DC:  LDR             R0, =(UseDataFence_ptr - 0x5272E2)
5272DE:  ADD             R0, PC; UseDataFence_ptr
5272E0:  LDR             R0, [R0]; UseDataFence
5272E2:  LDRB            R0, [R0]
5272E4:  CMP             R0, #0
5272E6:  IT NE
5272E8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5272EC:  MOVS            R0, #4; byte_count
5272EE:  BLX             malloc
5272F2:  MOV             R5, R0
5272F4:  LDR             R0, [R4,#0x24]
5272F6:  STR             R0, [R5]
5272F8:  MOV             R0, R5; this
5272FA:  MOVS            R1, #byte_4; void *
5272FC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527300:  MOV             R0, R5; p
527302:  BLX             free
527306:  LDR             R0, =(UseDataFence_ptr - 0x527310)
527308:  LDRB.W          R1, [R4,#0x4C]
52730C:  ADD             R0, PC; UseDataFence_ptr
52730E:  AND.W           R6, R1, #1
527312:  LDR             R0, [R0]; UseDataFence
527314:  LDRB            R0, [R0]
527316:  CMP             R0, #0
527318:  IT NE
52731A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52731E:  MOVS            R0, #4; byte_count
527320:  BLX             malloc
527324:  MOV             R5, R0
527326:  MOVS            R1, #byte_4; void *
527328:  STR             R6, [R5]
52732A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
52732E:  MOV             R0, R5; p
527330:  BLX             free
527334:  LDR             R0, =(UseDataFence_ptr - 0x52733A)
527336:  ADD             R0, PC; UseDataFence_ptr
527338:  LDR             R0, [R0]; UseDataFence
52733A:  LDRB            R0, [R0]
52733C:  CMP             R0, #0
52733E:  IT NE
527340:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527344:  MOVS            R0, #4; byte_count
527346:  BLX             malloc
52734A:  MOV             R5, R0
52734C:  LDR             R0, [R4,#0x3C]
52734E:  STR             R0, [R5]
527350:  MOV             R0, R5; this
527352:  MOVS            R1, #byte_4; void *
527354:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527358:  MOV             R0, R5; p
52735A:  BLX             free
52735E:  LDR             R0, =(UseDataFence_ptr - 0x527368)
527360:  LDRB.W          R1, [R4,#0x4C]
527364:  ADD             R0, PC; UseDataFence_ptr
527366:  LDR             R0, [R0]; UseDataFence
527368:  LDRB            R0, [R0]
52736A:  UBFX.W          R5, R1, #3, #1
52736E:  CMP             R0, #0
527370:  IT NE
527372:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527376:  MOVS            R0, #4; byte_count
527378:  BLX             malloc
52737C:  MOV             R4, R0
52737E:  MOVS            R1, #byte_4; void *
527380:  STR             R5, [R4]
527382:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527386:  MOV             R0, R4; p
527388:  POP.W           {R11}
52738C:  POP.W           {R4-R7,LR}
527390:  B.W             j_free
527394:  LDR             R0, [R4]
527396:  LDR             R1, [R0,#0x14]
527398:  MOV             R0, R4
52739A:  BLX             R1
52739C:  MOV             R1, R0; int
52739E:  MOVW            R0, #0x38A; int
5273A2:  POP.W           {R11}
5273A6:  POP.W           {R4-R7,LR}
5273AA:  B.W             sub_1941D4
