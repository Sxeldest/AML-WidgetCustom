; =========================================================
; Game Engine Function: _ZN27CTaskComplexGangJoinRespond14ControlSubTaskEP4CPed
; Address            : 0x51B278 - 0x51B394
; =========================================================

51B278:  PUSH            {R4,R5,R7,LR}
51B27A:  ADD             R7, SP, #8
51B27C:  SUB             SP, SP, #0x10; float
51B27E:  MOV             R4, R0
51B280:  MOV.W           R0, #0xFFFFFFFF; int
51B284:  MOV             R5, R1
51B286:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51B28A:  LDR             R1, [R5,#0x14]
51B28C:  LDR             R2, [R0,#0x14]
51B28E:  ADD.W           R3, R1, #0x30 ; '0'
51B292:  CMP             R1, #0
51B294:  IT EQ
51B296:  ADDEQ           R3, R5, #4
51B298:  ADD.W           R1, R2, #0x30 ; '0'
51B29C:  CMP             R2, #0
51B29E:  VLDR            S0, [R3]
51B2A2:  VLDR            S2, [R3,#4]
51B2A6:  IT EQ
51B2A8:  ADDEQ           R1, R0, #4
51B2AA:  VLDR            S4, [R1]
51B2AE:  MOVS            R0, #0
51B2B0:  VLDR            S6, [R1,#4]
51B2B4:  VSUB.F32        S0, S4, S0
51B2B8:  VSTR            S0, [SP,#0x18+var_14]
51B2BC:  VSUB.F32        S0, S6, S2
51B2C0:  STR             R0, [SP,#0x18+var_C]
51B2C2:  ADD             R0, SP, #0x18+var_14; this
51B2C4:  VSTR            S0, [SP,#0x18+var_10]
51B2C8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
51B2CC:  LDRD.W          R0, R1, [SP,#0x18+var_14]; float
51B2D0:  MOVS            R2, #0; float
51B2D2:  MOVS            R3, #0; float
51B2D4:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
51B2D8:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
51B2DC:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x51B2EA)
51B2DE:  MOV.W           R2, #0x194
51B2E2:  STR.W           R0, [R5,#0x560]
51B2E6:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
51B2E8:  LDRB            R5, [R4,#0xD]
51B2EA:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
51B2EC:  LDR             R0, [R1]; CWorld::PlayerInFocus
51B2EE:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x51B2F4)
51B2F0:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
51B2F2:  SMULBB.W        R0, R0, R2
51B2F6:  LDR             R1, [R1]; CWorld::Players ...
51B2F8:  LDR             R1, [R1,R0]
51B2FA:  LDR.W           R0, [R1,#0x590]; this
51B2FE:  CMP             R0, #0
51B300:  ITT NE
51B302:  LDRNE.W         R1, [R1,#0x484]
51B306:  ANDSNE.W        R1, R1, #0x100; char *
51B30A:  BEQ             loc_51B362
51B30C:  VLDR            S0, [R0,#0x48]
51B310:  VLDR            S2, [R0,#0x4C]
51B314:  VMUL.F32        S0, S0, S0
51B318:  VLDR            S4, [R0,#0x50]
51B31C:  VMUL.F32        S2, S2, S2
51B320:  VMUL.F32        S4, S4, S4
51B324:  VADD.F32        S0, S0, S2
51B328:  VLDR            S2, =0.04
51B32C:  VADD.F32        S0, S0, S4
51B330:  VCMPE.F32       S0, S2
51B334:  VMRS            APSR_nzcv, FPSCR
51B338:  BLE             loc_51B362
51B33A:  MOVS            R0, #0
51B33C:  CBNZ            R5, loc_51B36E
51B33E:  CMP             R0, #1
51B340:  BNE             loc_51B38E
51B342:  LDR             R0, =(aGangs - 0x51B348); "gangs"
51B344:  ADD             R0, PC; "gangs"
51B346:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51B34A:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x51B350)
51B34C:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
51B34E:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
51B350:  ADD.W           R1, R1, R0,LSL#5
51B354:  LDRB            R1, [R1,#0x10]; int
51B356:  CMP             R1, #1
51B358:  BNE             loc_51B382
51B35A:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
51B35E:  MOVS            R0, #1
51B360:  B               loc_51B37E
51B362:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
51B366:  EOR.W           R0, R0, #1
51B36A:  CMP             R5, #0
51B36C:  BEQ             loc_51B33E
51B36E:  CBNZ            R0, loc_51B38E
51B370:  LDR             R0, =(aGangs - 0x51B376); "gangs"
51B372:  ADD             R0, PC; "gangs"
51B374:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51B378:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51B37C:  MOVS            R0, #0
51B37E:  STRB            R0, [R4,#0xD]
51B380:  B               loc_51B38E
51B382:  MOVW            R1, #0x63E7
51B386:  ADD             R0, R1; this
51B388:  MOVS            R1, #8; int
51B38A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
51B38E:  LDR             R0, [R4,#8]
51B390:  ADD             SP, SP, #0x10
51B392:  POP             {R4,R5,R7,PC}
