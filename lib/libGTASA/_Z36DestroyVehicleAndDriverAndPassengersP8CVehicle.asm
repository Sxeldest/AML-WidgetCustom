; =========================================================
; Game Engine Function: _Z36DestroyVehicleAndDriverAndPassengersP8CVehicle
; Address            : 0x585310 - 0x585390
; =========================================================

585310:  PUSH            {R4-R7,LR}
585312:  ADD             R7, SP, #0xC
585314:  PUSH.W          {R11}
585318:  MOV             R4, R0
58531A:  LDR.W           R0, [R4,#0x464]; this
58531E:  CBZ             R0, loc_58533E
585320:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
585324:  CBNZ            R0, loc_585334
585326:  LDR.W           R0, [R4,#0x464]
58532A:  MOVS            R1, #0x37 ; '7'
58532C:  MOVS            R2, #0
58532E:  MOVS            R3, #0
585330:  BLX             j__ZN7CDarkel20RegisterKillByPlayerEPK4CPed11eWeaponTypebi; CDarkel::RegisterKillByPlayer(CPed const*,eWeaponType,bool,int)
585334:  LDR.W           R0, [R4,#0x464]
585338:  LDR             R1, [R0]
58533A:  LDR             R1, [R1,#0x58]
58533C:  BLX             R1
58533E:  LDRB.W          R0, [R4,#0x48C]; this
585342:  CBZ             R0, loc_58537A
585344:  ADD.W           R5, R4, #0x468
585348:  MOVS            R6, #0
58534A:  LDR.W           R1, [R5,R6,LSL#2]
58534E:  CBZ             R1, loc_585372
585350:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
585354:  CBNZ            R0, loc_585364
585356:  LDR.W           R0, [R5,R6,LSL#2]
58535A:  MOVS            R1, #0x37 ; '7'
58535C:  MOVS            R2, #0
58535E:  MOVS            R3, #0
585360:  BLX             j__ZN7CDarkel20RegisterKillByPlayerEPK4CPed11eWeaponTypebi; CDarkel::RegisterKillByPlayer(CPed const*,eWeaponType,bool,int)
585364:  LDR.W           R0, [R5,R6,LSL#2]
585368:  LDR             R1, [R0]
58536A:  LDR             R1, [R1,#0x58]
58536C:  BLX             R1
58536E:  LDRB.W          R0, [R4,#0x48C]
585372:  ADDS            R6, #1
585374:  UXTB            R1, R0; CEntity *
585376:  CMP             R6, R1
585378:  BLT             loc_58534A
58537A:  MOV             R0, R4; this
58537C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
585380:  LDR             R0, [R4]
585382:  LDR             R1, [R0,#4]
585384:  MOV             R0, R4
585386:  POP.W           {R11}
58538A:  POP.W           {R4-R7,LR}
58538E:  BX              R1
