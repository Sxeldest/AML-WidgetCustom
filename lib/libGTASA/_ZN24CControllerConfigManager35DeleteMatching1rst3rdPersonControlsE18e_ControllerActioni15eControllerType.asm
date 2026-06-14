; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager35DeleteMatching1rst3rdPersonControlsE18e_ControllerActioni15eControllerType
; Address            : 0x3E91F0 - 0x3E93D6
; =========================================================

3E91F0:  PUSH            {R4-R7,LR}
3E91F2:  ADD             R7, SP, #0xC
3E91F4:  PUSH.W          {R8}
3E91F8:  MOV             R5, R3
3E91FA:  MOV             R6, R2
3E91FC:  MOV             R8, R0
3E91FE:  CMP             R5, #2
3E9200:  BCC             loc_3E920E
3E9202:  IT NE
3E9204:  CMPNE           R5, #3
3E9206:  BNE.W           loc_3E93D0
3E920A:  CBNZ            R6, loc_3E9216
3E920C:  B               loc_3E93D0
3E920E:  CMP.W           R6, #0x420
3E9212:  BEQ.W           loc_3E93D0
3E9216:  ADD.W           R4, R8, R5,LSL#3
3E921A:  MOVW            R0, #0x3930
3E921E:  LDR             R2, [R4,R0]
3E9220:  CMP             R2, R6
3E9222:  BNE             loc_3E926A
3E9224:  LDR             R2, =(FrontEndMenuManager_ptr - 0x3E922C)
3E9226:  CMP             R1, #0x10
3E9228:  ADD             R2, PC; FrontEndMenuManager_ptr
3E922A:  LDR             R2, [R2]; FrontEndMenuManager
3E922C:  LDRB.W          R3, [R2,#(byte_98F18C - 0x98F0F8)]
3E9230:  MOV.W           R2, #0
3E9234:  IT NE
3E9236:  MOVNE           R2, #1
3E9238:  CMP             R3, #1
3E923A:  MOV             R1, R3
3E923C:  IT NE
3E923E:  MOVNE           R1, #0
3E9240:  CMP             R3, #0
3E9242:  ITT NE
3E9244:  ANDNE           R1, R2
3E9246:  CMPNE           R1, #1
3E9248:  BNE             loc_3E926A
3E924A:  CMP             R5, #3
3E924C:  BHI             loc_3E9262
3E924E:  LDR             R1, =(unk_616F5C - 0x3E9256)
3E9250:  ADD             R0, R4
3E9252:  ADD             R1, PC; unk_616F5C
3E9254:  LDR.W           R1, [R1,R5,LSL#2]
3E9258:  STR             R1, [R0]
3E925A:  MOVW            R0, #0x3934
3E925E:  MOVS            R1, #0
3E9260:  STR             R1, [R4,R0]
3E9262:  MOV             R0, R8
3E9264:  MOVS            R1, #1
3E9266:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E926A:  MOVW            R0, #0x3910
3E926E:  LDR             R1, [R4,R0]
3E9270:  CMP             R1, R6
3E9272:  BNE             loc_3E9294
3E9274:  CMP             R5, #3
3E9276:  BHI             loc_3E928C
3E9278:  LDR             R1, =(unk_616F5C - 0x3E9280)
3E927A:  ADD             R0, R4
3E927C:  ADD             R1, PC; unk_616F5C
3E927E:  LDR.W           R1, [R1,R5,LSL#2]
3E9282:  STR             R1, [R0]
3E9284:  MOVW            R0, #0x3914
3E9288:  MOVS            R1, #0
3E928A:  STR             R1, [R4,R0]
3E928C:  MOV             R0, R8
3E928E:  MOVS            R1, #0
3E9290:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9294:  MOVW            R0, #0x3EB0
3E9298:  LDR             R1, [R4,R0]
3E929A:  CMP             R1, R6
3E929C:  BNE             loc_3E92BE
3E929E:  CMP             R5, #3
3E92A0:  BHI             loc_3E92B6
3E92A2:  LDR             R1, =(unk_616F5C - 0x3E92AA)
3E92A4:  ADD             R0, R4
3E92A6:  ADD             R1, PC; unk_616F5C
3E92A8:  LDR.W           R1, [R1,R5,LSL#2]
3E92AC:  STR             R1, [R0]
3E92AE:  MOVW            R0, #0x3EB4
3E92B2:  MOVS            R1, #0
3E92B4:  STR             R1, [R4,R0]
3E92B6:  MOV             R0, R8
3E92B8:  MOVS            R1, #0x2D ; '-'
3E92BA:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E92BE:  MOVW            R0, #0x3990
3E92C2:  LDR             R1, [R4,R0]
3E92C4:  CMP             R1, R6
3E92C6:  BNE             loc_3E92E8
3E92C8:  CMP             R5, #3
3E92CA:  BHI             loc_3E92E0
3E92CC:  LDR             R1, =(unk_616F5C - 0x3E92D4)
3E92CE:  ADD             R0, R4
3E92D0:  ADD             R1, PC; unk_616F5C
3E92D2:  LDR.W           R1, [R1,R5,LSL#2]
3E92D6:  STR             R1, [R0]
3E92D8:  MOVW            R0, #0x3994
3E92DC:  MOVS            R1, #0
3E92DE:  STR             R1, [R4,R0]
3E92E0:  MOV             R0, R8
3E92E2:  MOVS            R1, #4
3E92E4:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E92E8:  MOVW            R0, #0x39B0
3E92EC:  LDR             R1, [R4,R0]
3E92EE:  CMP             R1, R6
3E92F0:  BNE             loc_3E9312
3E92F2:  CMP             R5, #3
3E92F4:  BHI             loc_3E930A
3E92F6:  LDR             R1, =(unk_616F5C - 0x3E92FE)
3E92F8:  ADD             R0, R4
3E92FA:  ADD             R1, PC; unk_616F5C
3E92FC:  LDR.W           R1, [R1,R5,LSL#2]
3E9300:  STR             R1, [R0]
3E9302:  MOVW            R0, #0x39B4
3E9306:  MOVS            R1, #0
3E9308:  STR             R1, [R4,R0]
3E930A:  MOV             R0, R8
3E930C:  MOVS            R1, #5
3E930E:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9312:  LDR             R0, =(FrontEndMenuManager_ptr - 0x3E9318)
3E9314:  ADD             R0, PC; FrontEndMenuManager_ptr
3E9316:  LDR             R0, [R0]; FrontEndMenuManager
3E9318:  LDRB.W          R0, [R0,#(byte_98F18C - 0x98F0F8)]
3E931C:  CMP             R0, #1
3E931E:  BNE             loc_3E93D0
3E9320:  MOVW            R0, #0x3D10
3E9324:  LDR             R1, [R4,R0]
3E9326:  CMP             R1, R6
3E9328:  BNE             loc_3E934A
3E932A:  CMP             R5, #3
3E932C:  BHI             loc_3E9342
3E932E:  LDR             R1, =(unk_616F5C - 0x3E9336)
3E9330:  ADD             R0, R4
3E9332:  ADD             R1, PC; unk_616F5C
3E9334:  LDR.W           R1, [R1,R5,LSL#2]
3E9338:  STR             R1, [R0]
3E933A:  MOVW            R0, #0x3D14
3E933E:  MOVS            R1, #0
3E9340:  STR             R1, [R4,R0]
3E9342:  MOV             R0, R8
3E9344:  MOVS            R1, #0x20 ; ' '
3E9346:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E934A:  MOVW            R0, #0x3D30
3E934E:  LDR             R1, [R4,R0]
3E9350:  CMP             R1, R6
3E9352:  BNE             loc_3E9374
3E9354:  CMP             R5, #3
3E9356:  BHI             loc_3E936C
3E9358:  LDR             R1, =(unk_616F5C - 0x3E9360)
3E935A:  ADD             R0, R4
3E935C:  ADD             R1, PC; unk_616F5C
3E935E:  LDR.W           R1, [R1,R5,LSL#2]
3E9362:  STR             R1, [R0]
3E9364:  MOVW            R0, #0x3D34
3E9368:  MOVS            R1, #0
3E936A:  STR             R1, [R4,R0]
3E936C:  MOV             R0, R8
3E936E:  MOVS            R1, #0x21 ; '!'
3E9370:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9374:  MOVW            R0, #0x3F90
3E9378:  LDR             R1, [R4,R0]
3E937A:  CMP             R1, R6
3E937C:  BNE             loc_3E939E
3E937E:  CMP             R5, #3
3E9380:  BHI             loc_3E9396
3E9382:  LDR             R1, =(unk_616F5C - 0x3E938A)
3E9384:  ADD             R0, R4
3E9386:  ADD             R1, PC; unk_616F5C
3E9388:  LDR.W           R1, [R1,R5,LSL#2]
3E938C:  STR             R1, [R0]
3E938E:  MOVW            R0, #0x3F94
3E9392:  MOVS            R1, #0
3E9394:  STR             R1, [R4,R0]
3E9396:  MOV             R0, R8
3E9398:  MOVS            R1, #0x34 ; '4'
3E939A:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E939E:  MOVW            R0, #0x3F70
3E93A2:  LDR             R1, [R4,R0]
3E93A4:  CMP             R1, R6
3E93A6:  BNE             loc_3E93D0
3E93A8:  CMP             R5, #3
3E93AA:  BHI             loc_3E93C0
3E93AC:  LDR             R1, =(unk_616F5C - 0x3E93B4)
3E93AE:  ADD             R0, R4
3E93B0:  ADD             R1, PC; unk_616F5C
3E93B2:  LDR.W           R1, [R1,R5,LSL#2]
3E93B6:  STR             R1, [R0]
3E93B8:  MOVW            R0, #0x3F74
3E93BC:  MOVS            R1, #0
3E93BE:  STR             R1, [R4,R0]
3E93C0:  MOV             R0, R8
3E93C2:  MOVS            R1, #0x33 ; '3'
3E93C4:  POP.W           {R8}
3E93C8:  POP.W           {R4-R7,LR}
3E93CC:  B.W             _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E93D0:  POP.W           {R8}
3E93D4:  POP             {R4-R7,PC}
