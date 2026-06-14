; =========================================================
; Game Engine Function: _ZN11CWeaponInfo19GetWeaponReloadTimeEv
; Address            : 0x5E4340 - 0x5E43C0
; =========================================================

5E4340:  LDR             R1, [R0,#0x18]
5E4342:  TST.W           R1, #0x1000
5E4346:  BNE             loc_5E43B2
5E4348:  LSLS            R1, R1, #0x10
5E434A:  ITT MI
5E434C:  MOVMI.W         R0, #0x3E8
5E4350:  BXMI            LR
5E4352:  LDR             R1, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E435C)
5E4354:  LDRSH.W         R0, [R0,#0x6C]
5E4358:  ADD             R1, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E435A:  LDR             R2, [R1]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E435C:  ADD.W           R1, R0, R0,LSL#1
5E4360:  ADD.W           R0, R2, R1,LSL#3
5E4364:  LDRH            R0, [R0,#0x10]
5E4366:  ADDS            R0, #0x64 ; 'd'
5E4368:  CMP.W           R0, #0x190
5E436C:  BHI             locret_5E43B0
5E436E:  LDR             R0, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E4374)
5E4370:  ADD             R0, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E4372:  LDR             R0, [R0]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E4374:  ADD.W           R0, R0, R1,LSL#3
5E4378:  LDRH            R0, [R0,#0x14]
5E437A:  ADDS            R0, #0x64 ; 'd'
5E437C:  CMP.W           R0, #0x190
5E4380:  BHI             locret_5E43B0
5E4382:  LDR             R0, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E4388)
5E4384:  ADD             R0, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E4386:  LDR             R0, [R0]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E4388:  ADD.W           R0, R0, R1,LSL#3
5E438C:  LDRH            R0, [R0,#0x12]
5E438E:  ADDS            R0, #0x64 ; 'd'
5E4390:  CMP.W           R0, #0x190
5E4394:  IT HI
5E4396:  BXHI            LR
5E4398:  LDR             R0, =(_ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr - 0x5E439E)
5E439A:  ADD             R0, PC; _ZN11CWeaponInfo20ms_aWeaponAimOffsetsE_ptr
5E439C:  LDR             R0, [R0]; CWeaponInfo::ms_aWeaponAimOffsets ...
5E439E:  ADD.W           R0, R0, R1,LSL#3
5E43A2:  LDRH            R0, [R0,#0x16]
5E43A4:  ADDS            R0, #0x64 ; 'd'
5E43A6:  CMP.W           R0, #0x190
5E43AA:  IT LS
5E43AC:  MOVLS.W         R0, #0x190
5E43B0:  BX              LR
5E43B2:  LSLS            R0, R1, #0x14
5E43B4:  MOV.W           R0, #0x3E8
5E43B8:  IT MI
5E43BA:  MOVMI.W         R0, #0x7D0
5E43BE:  BX              LR
