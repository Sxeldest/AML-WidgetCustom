; =========================================================
; Game Engine Function: _ZN4Fx_c17InitStaticSystemsEv
; Address            : 0x363A28 - 0x363B8C
; =========================================================

363A28:  PUSH            {R4-R7,LR}
363A2A:  ADD             R7, SP, #0xC
363A2C:  PUSH.W          {R8}
363A30:  SUB             SP, SP, #0x18
363A32:  MOV             R4, R0
363A34:  LDR             R0, =(g_fxMan_ptr - 0x363A3E)
363A36:  LDR             R1, =(aPrtBlood - 0x363A42); "prt_blood"
363A38:  ADD             R5, SP, #0x28+var_20
363A3A:  ADD             R0, PC; g_fxMan_ptr
363A3C:  MOVS            R2, #0
363A3E:  ADD             R1, PC; "prt_blood"
363A40:  STRD.W          R2, R2, [SP,#0x28+var_20]
363A44:  LDR             R6, [R0]; g_fxMan
363A46:  MOV.W           R8, #1
363A4A:  STR             R2, [SP,#0x28+var_18]
363A4C:  MOV             R2, R5; int
363A4E:  MOVS            R3, #0; int
363A50:  STR.W           R8, [SP,#0x28+var_28]; int
363A54:  MOV             R0, R6; int
363A56:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363A5A:  LDR             R1, =(aPrtBoatsplash - 0x363A66); "prt_boatsplash"
363A5C:  MOV             R2, R5; int
363A5E:  STR             R0, [R4]
363A60:  MOV             R0, R6; int
363A62:  ADD             R1, PC; "prt_boatsplash"
363A64:  MOVS            R3, #0; int
363A66:  STR.W           R8, [SP,#0x28+var_28]; int
363A6A:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363A6E:  LDR             R1, =(aPrtBubble - 0x363A7A); "prt_bubble"
363A70:  MOV             R2, R5; int
363A72:  STR             R0, [R4,#4]
363A74:  MOV             R0, R6; int
363A76:  ADD             R1, PC; "prt_bubble"
363A78:  MOVS            R3, #0; int
363A7A:  STR.W           R8, [SP,#0x28+var_28]; int
363A7E:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363A82:  LDR             R1, =(aPrtCardebris - 0x363A8E); "prt_cardebris"
363A84:  MOV             R2, R5; int
363A86:  STR             R0, [R4,#8]
363A88:  MOV             R0, R6; int
363A8A:  ADD             R1, PC; "prt_cardebris"
363A8C:  MOVS            R3, #0; int
363A8E:  STR.W           R8, [SP,#0x28+var_28]; int
363A92:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363A96:  LDR             R1, =(aPrtCollisionsm - 0x363AA2); "prt_collisionsmoke"
363A98:  MOV             R2, R5; int
363A9A:  STR             R0, [R4,#0xC]
363A9C:  MOV             R0, R6; int
363A9E:  ADD             R1, PC; "prt_collisionsmoke"
363AA0:  MOVS            R3, #0; int
363AA2:  STR.W           R8, [SP,#0x28+var_28]; int
363AA6:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363AAA:  ADR             R1, aPrtGunshell; "prt_gunshell"
363AAC:  STR             R0, [R4,#0x10]
363AAE:  MOV             R0, R6; int
363AB0:  MOV             R2, R5; int
363AB2:  MOVS            R3, #0; int
363AB4:  STR.W           R8, [SP,#0x28+var_28]; int
363AB8:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363ABC:  ADR             R1, aPrtSand; "prt_sand"
363ABE:  STR             R0, [R4,#0x14]
363AC0:  MOV             R0, R6; int
363AC2:  MOV             R2, R5; int
363AC4:  MOVS            R3, #0; int
363AC6:  STR.W           R8, [SP,#0x28+var_28]; int
363ACA:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363ACE:  ADR             R1, aPrtSand2; "prt_sand2"
363AD0:  STR             R0, [R4,#0x18]
363AD2:  MOV             R0, R6; int
363AD4:  MOV             R2, R5; int
363AD6:  MOVS            R3, #0; int
363AD8:  STR.W           R8, [SP,#0x28+var_28]; int
363ADC:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363AE0:  ADR             R1, aPrtSmokeHuge; "prt_smoke_huge"
363AE2:  STR             R0, [R4,#0x1C]
363AE4:  MOV             R0, R6; int
363AE6:  MOV             R2, R5; int
363AE8:  MOVS            R3, #0; int
363AEA:  STR.W           R8, [SP,#0x28+var_28]; int
363AEE:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363AF2:  ADR             R1, aPrtSmokeii3Exp; "prt_smokeII_3_expand"
363AF4:  STR             R0, [R4,#0x20]
363AF6:  MOV             R0, R6; int
363AF8:  MOV             R2, R5; int
363AFA:  MOVS            R3, #0; int
363AFC:  STR.W           R8, [SP,#0x28+var_28]; int
363B00:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363B04:  ADR             R1, aPrtSpark; "prt_spark"
363B06:  STR             R0, [R4,#0x24]
363B08:  MOV             R0, R6; int
363B0A:  MOV             R2, R5; int
363B0C:  MOVS            R3, #0; int
363B0E:  STR.W           R8, [SP,#0x28+var_28]; int
363B12:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363B16:  ADR             R1, aPrtSpark2; "prt_spark_2"
363B18:  STR             R0, [R4,#0x28]
363B1A:  MOV             R0, R6; int
363B1C:  MOV             R2, R5; int
363B1E:  MOVS            R3, #0; int
363B20:  STR.W           R8, [SP,#0x28+var_28]; int
363B24:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363B28:  ADR             R1, aPrtSplash; "prt_splash"
363B2A:  STR             R0, [R4,#0x2C]
363B2C:  MOV             R0, R6; int
363B2E:  MOV             R2, R5; int
363B30:  MOVS            R3, #0; int
363B32:  STR.W           R8, [SP,#0x28+var_28]; int
363B36:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363B3A:  ADR             R1, aPrtWake; "prt_wake"
363B3C:  STR             R0, [R4,#0x30]
363B3E:  MOV             R0, R6; int
363B40:  MOV             R2, R5; int
363B42:  MOVS            R3, #0; int
363B44:  STR.W           R8, [SP,#0x28+var_28]; int
363B48:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363B4C:  ADR             R1, aPrtWatersplash; "prt_watersplash"
363B4E:  STR             R0, [R4,#0x34]
363B50:  MOV             R0, R6; int
363B52:  MOV             R2, R5; int
363B54:  MOVS            R3, #0; int
363B56:  STR.W           R8, [SP,#0x28+var_28]; int
363B5A:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363B5E:  ADR             R1, aPrtWheeldirt; "prt_wheeldirt"
363B60:  STR             R0, [R4,#0x38]
363B62:  MOV             R0, R6; int
363B64:  MOV             R2, R5; int
363B66:  MOVS            R3, #0; int
363B68:  STR.W           R8, [SP,#0x28+var_28]; int
363B6C:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363B70:  ADR             R1, aPrtGlass; "prt_glass"
363B72:  STR             R0, [R4,#0x3C]
363B74:  MOV             R0, R6; int
363B76:  MOV             R2, R5; int
363B78:  MOVS            R3, #0; int
363B7A:  STR.W           R8, [SP,#0x28+var_28]; int
363B7E:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
363B82:  STR             R0, [R4,#0x40]
363B84:  ADD             SP, SP, #0x18
363B86:  POP.W           {R8}
363B8A:  POP             {R4-R7,PC}
