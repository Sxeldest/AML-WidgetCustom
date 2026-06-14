; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering7SetUpIKEP4CPed
; Address            : 0x5222B8 - 0x522466
; =========================================================

5222B8:  PUSH            {R4-R7,LR}
5222BA:  ADD             R7, SP, #0xC
5222BC:  PUSH.W          {R11}
5222C0:  SUB             SP, SP, #0x38
5222C2:  MOV             R4, R0
5222C4:  MOVS            R0, #0; this
5222C6:  MOV             R5, R1
5222C8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5222CC:  MOV             R6, R0
5222CE:  MOV.W           R0, #0xFFFFFFFF; int
5222D2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5222D6:  CMP             R0, R5
5222D8:  ITT EQ
5222DA:  LDRHEQ.W        R0, [R6,#0x110]
5222DE:  CMPEQ           R0, #0
5222E0:  BEQ             loc_522312
5222E2:  MOV             R0, R5; this
5222E4:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
5222E8:  CMP             R0, #1
5222EA:  ITT EQ
5222EC:  LDRBEQ.W        R0, [R4,#0x5C]
5222F0:  MOVSEQ.W        R0, R0,LSL#31
5222F4:  BNE             loc_522312
5222F6:  LDR             R0, =(g_ikChainMan_ptr - 0x5222FE)
5222F8:  MOV             R1, R5; CPed *
5222FA:  ADD             R0, PC; g_ikChainMan_ptr
5222FC:  LDR             R0, [R0]; g_ikChainMan ; this
5222FE:  BLX             j__ZN16IKChainManager_c15GetLookAtEntityEP4CPed; IKChainManager_c::GetLookAtEntity(CPed *)
522302:  CBNZ            R0, loc_522312
522304:  LDR.W           R0, [R5,#0x440]
522308:  MOVS            R1, #5; int
52230A:  ADDS            R0, #4; this
52230C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
522310:  CBZ             R0, loc_52231A
522312:  ADD             SP, SP, #0x38 ; '8'
522314:  POP.W           {R11}
522318:  POP             {R4-R7,PC}
52231A:  LDR             R0, [R4,#4]
52231C:  CBZ             R0, loc_52233C
52231E:  LDR             R1, [R0]
522320:  LDR             R1, [R1,#0x14]
522322:  BLX             R1
522324:  MOVW            R1, #0x395
522328:  CMP             R0, R1
52232A:  BEQ             loc_522312
52232C:  LDR             R0, [R4,#4]
52232E:  LDR             R1, [R0]
522330:  LDR             R1, [R1,#0x14]
522332:  BLX             R1
522334:  MOVW            R1, #0x3AB
522338:  CMP             R0, R1
52233A:  BEQ             loc_522312
52233C:  LDR             R0, [R5,#0x14]
52233E:  ADDS            R6, R5, #4
522340:  VLDR            S0, [R4,#0x1C]
522344:  CMP             R0, #0
522346:  MOV             R1, R6
522348:  VLDR            S2, [R4,#0x20]
52234C:  VLDR            S4, [R4,#0x24]
522350:  IT NE
522352:  ADDNE.W         R1, R0, #0x30 ; '0'
522356:  VLDR            S6, [R1]
52235A:  VLDR            S8, [R1,#4]
52235E:  VSUB.F32        S0, S0, S6
522362:  VLDR            S10, [R1,#8]
522366:  VSUB.F32        S2, S2, S8
52236A:  VSUB.F32        S4, S4, S10
52236E:  VMUL.F32        S8, S0, S0
522372:  VMUL.F32        S6, S2, S2
522376:  VSTR            S2, [SP,#0x48+var_18]
52237A:  VMUL.F32        S10, S4, S4
52237E:  VSTR            S0, [SP,#0x48+var_1C]
522382:  VSTR            S4, [SP,#0x48+var_14]
522386:  VADD.F32        S6, S8, S6
52238A:  VMOV.F32        S8, #9.0
52238E:  VADD.F32        S6, S6, S10
522392:  VCMPE.F32       S6, S8
522396:  VMRS            APSR_nzcv, FPSCR
52239A:  BLE             loc_522312
52239C:  ADD             R0, SP, #0x48+var_1C; this
52239E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5223A2:  LDR             R0, [R5,#0x14]
5223A4:  VLDR            S0, [SP,#0x48+var_1C]
5223A8:  VLDR            S2, [SP,#0x48+var_18]
5223AC:  VLDR            S6, [R0,#0x10]
5223B0:  VLDR            S8, [R0,#0x14]
5223B4:  VMUL.F32        S6, S0, S6
5223B8:  VLDR            S4, [SP,#0x48+var_14]
5223BC:  VMUL.F32        S8, S2, S8
5223C0:  VLDR            S10, [R0,#0x18]
5223C4:  LDR             R1, =(dword_9FEFB0 - 0x5223CE)
5223C6:  VMUL.F32        S10, S4, S10
5223CA:  ADD             R1, PC; dword_9FEFB0
5223CC:  VADD.F32        S6, S6, S8
5223D0:  VLDR            S8, [R1]
5223D4:  VADD.F32        S6, S6, S10
5223D8:  VCMPE.F32       S6, S8
5223DC:  VMRS            APSR_nzcv, FPSCR
5223E0:  BGE             loc_522312
5223E2:  VADD.F32        S4, S4, S4
5223E6:  CMP             R0, #0
5223E8:  IT NE
5223EA:  ADDNE.W         R6, R0, #0x30 ; '0'
5223EE:  VADD.F32        S2, S2, S2
5223F2:  VLDR            S6, [R6,#8]
5223F6:  VADD.F32        S0, S0, S0
5223FA:  VLDR            S8, [R4,#0x20]
5223FE:  MOVS            R2, #0
522400:  VLDR            S10, =0.61
522404:  MOVS            R3, #3
522406:  LDR             R0, =(g_ikChainMan_ptr - 0x522426)
522408:  ADR             R1, aTaskavoidothpe; "TaskAvoidOthPed"
52240A:  VADD.F32        S4, S4, S6
52240E:  VLDR            S6, [R4,#0x1C]
522412:  VADD.F32        S2, S2, S8
522416:  STR             R2, [SP,#0x48+var_2C]; int
522418:  VADD.F32        S0, S0, S6
52241C:  STR             R3, [SP,#0x48+var_30]; int
52241E:  MOV.W           R3, #0x1F4
522422:  ADD             R0, PC; g_ikChainMan_ptr
522424:  STR             R3, [SP,#0x48+var_34]; int
522426:  MOV.W           R3, #0x3E800000
52242A:  LDR             R0, [R0]; g_ikChainMan ; int
52242C:  VADD.F32        S4, S4, S10
522430:  VSTR            S2, [SP,#0x48+var_24]
522434:  VSTR            S0, [SP,#0x48+var_28]
522438:  VSTR            S4, [SP,#0x48+var_20]
52243C:  STRD.W          R2, R3, [SP,#0x48+var_3C]; int
522440:  ADD             R2, SP, #0x48+var_28
522442:  STR             R2, [SP,#0x48+var_40]; int
522444:  MOV.W           R2, #0xFFFFFFFF
522448:  STR             R2, [SP,#0x48+var_44]; int
52244A:  MOVW            R2, #0x1388
52244E:  STR             R2, [SP,#0x48+var_48]; int
522450:  MOV             R2, R5; CPed *
522452:  MOVS            R3, #0; int
522454:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
522458:  LDRB.W          R0, [R4,#0x5C]
52245C:  ORR.W           R0, R0, #1
522460:  STRB.W          R0, [R4,#0x5C]
522464:  B               loc_522312
