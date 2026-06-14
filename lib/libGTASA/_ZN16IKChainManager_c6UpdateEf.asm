; =========================================================
; Game Engine Function: _ZN16IKChainManager_c6UpdateEf
; Address            : 0x4D32E8 - 0x4D3372
; =========================================================

4D32E8:  PUSH            {R4-R7,LR}
4D32EA:  ADD             R7, SP, #0xC
4D32EC:  PUSH.W          {R8-R11}
4D32F0:  SUB             SP, SP, #4
4D32F2:  MOV             R8, R0
4D32F4:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4D32FC)
4D32F6:  MOVS            R6, #0
4D32F8:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4D32FA:  LDR.W           R10, [R0]; CWorld::ms_nCurrentScanCode ...
4D32FE:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4D3304)
4D3300:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4D3302:  LDR.W           R11, [R0]; CWorld::ms_nCurrentScanCode ...
4D3306:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4D330C)
4D3308:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4D330A:  LDR             R4, [R0]; CWorld::ms_nCurrentScanCode ...
4D330C:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4D3312)
4D330E:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4D3310:  LDR.W           R9, [R0]; CWorld::ms_nCurrentScanCode ...
4D3314:  LDRH.W          R0, [R10]; this
4D3318:  MOVW            R1, #0xFFFF
4D331C:  CMP             R0, R1
4D331E:  BEQ             loc_4D3324
4D3320:  ADDS            R0, #1
4D3322:  B               loc_4D332A
4D3324:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
4D3328:  MOVS            R0, #1
4D332A:  STRH.W          R0, [R11]; CWorld::ms_nCurrentScanCode
4D332E:  LDR.W           R5, [R8,#0xB00]
4D3332:  CBNZ            R5, loc_4D333A
4D3334:  B               loc_4D3364
4D3336:  LDR             R5, [R5,#4]
4D3338:  CBZ             R5, loc_4D3364
4D333A:  LDRB.W          R0, [R5,#0x55]
4D333E:  CMP             R6, R0
4D3340:  BNE             loc_4D3336
4D3342:  LDR             R0, [R5,#8]; this
4D3344:  CMP             R0, #0
4D3346:  ITTT NE
4D3348:  LDRHNE          R1, [R0,#0x30]
4D334A:  LDRHNE          R2, [R4]; CWorld::ms_nCurrentScanCode
4D334C:  CMPNE           R1, R2
4D334E:  BEQ             loc_4D335C
4D3350:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
4D3354:  LDR             R0, [R5,#8]
4D3356:  LDRH.W          R1, [R9]; float
4D335A:  STRH            R1, [R0,#0x30]
4D335C:  MOV             R0, R5; this
4D335E:  BLX             j__ZN9IKChain_c6UpdateEf; IKChain_c::Update(float)
4D3362:  B               loc_4D3336
4D3364:  ADDS            R6, #1
4D3366:  CMP             R6, #4
4D3368:  BNE             loc_4D3314
4D336A:  ADD             SP, SP, #4
4D336C:  POP.W           {R8-R11}
4D3370:  POP             {R4-R7,PC}
