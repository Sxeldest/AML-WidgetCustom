; =========================================================
; Game Engine Function: _ZN4CPad11GetLookLeftEb
; Address            : 0x3FA2C8 - 0x3FA384
; =========================================================

3FA2C8:  PUSH            {R4-R7,LR}
3FA2CA:  ADD             R7, SP, #0xC
3FA2CC:  PUSH.W          {R11}
3FA2D0:  MOV             R4, R0
3FA2D2:  MOV             R6, R1
3FA2D4:  LDRH.W          R0, [R4,#0x110]
3FA2D8:  MOVS            R5, #0
3FA2DA:  CMP             R0, #0
3FA2DC:  BNE             loc_3FA37C
3FA2DE:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3FA2E6)
3FA2E0:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3FA2E8)
3FA2E2:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3FA2E4:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3FA2E6:  LDR             R0, [R0]; CTimer::m_UserPause ...
3FA2E8:  LDR             R1, [R1]; CTimer::m_CodePause ...
3FA2EA:  LDRB            R0, [R0]; CTimer::m_UserPause
3FA2EC:  LDRB            R1, [R1]; CTimer::m_CodePause
3FA2EE:  ORRS            R0, R1
3FA2F0:  LSLS            R0, R0, #0x18
3FA2F2:  BNE             loc_3FA37C
3FA2F4:  MOV.W           R0, #0xFFFFFFFF; int
3FA2F8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA2FC:  LDRB.W          R1, [R4,#0x145]
3FA300:  CBNZ            R1, loc_3FA362
3FA302:  CBZ             R6, loc_3FA362
3FA304:  LDRSB.W         R1, [R0,#0x71C]
3FA308:  RSB.W           R1, R1, R1,LSL#3
3FA30C:  ADD.W           R0, R0, R1,LSL#2
3FA310:  MOVS            R1, #1
3FA312:  LDR.W           R0, [R0,#0x5A4]
3FA316:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3FA31A:  LDR             R0, [R0,#0x14]
3FA31C:  CMP             R0, #4
3FA31E:  BNE             loc_3FA346
3FA320:  MOV.W           R0, #0xFFFFFFFF; int
3FA324:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA328:  CBZ             R0, loc_3FA346
3FA32A:  MOV.W           R0, #0xFFFFFFFF; int
3FA32E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA332:  LDRSB.W         R1, [R0,#0x71C]
3FA336:  RSB.W           R1, R1, R1,LSL#3
3FA33A:  ADD.W           R0, R0, R1,LSL#2
3FA33E:  LDR.W           R0, [R0,#0x5B0]
3FA342:  CMP             R0, #0
3FA344:  BGT             loc_3FA350
3FA346:  MOVS            R0, #0x13
3FA348:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
3FA34C:  CMP             R0, #1
3FA34E:  BNE             loc_3FA35E
3FA350:  MOVS            R0, #0x10
3FA352:  MOVS            R1, #0
3FA354:  MOVS            R2, #1
3FA356:  MOVS            R5, #1
3FA358:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA35C:  CBNZ            R0, loc_3FA37C
3FA35E:  LDRB.W          R1, [R4,#0x145]
3FA362:  CBZ             R1, loc_3FA37A
3FA364:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FA368:  CMP             R0, #2
3FA36A:  BEQ             loc_3FA37A
3FA36C:  MOVS            R0, #0x13
3FA36E:  MOVS            R1, #0
3FA370:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FA374:  CBZ             R0, loc_3FA37A
3FA376:  MOVS            R5, #1
3FA378:  B               loc_3FA37C
3FA37A:  MOVS            R5, #0
3FA37C:  MOV             R0, R5
3FA37E:  POP.W           {R11}
3FA382:  POP             {R4-R7,PC}
