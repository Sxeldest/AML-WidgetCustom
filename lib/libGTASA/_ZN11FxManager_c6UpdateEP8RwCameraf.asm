; =========================================================
; Game Engine Function: _ZN11FxManager_c6UpdateEP8RwCameraf
; Address            : 0x36D2F8 - 0x36D472
; =========================================================

36D2F8:  PUSH            {R4-R7,LR}
36D2FA:  ADD             R7, SP, #0xC
36D2FC:  PUSH.W          {R8,R9,R11}
36D300:  VPUSH           {D8-D9}
36D304:  MOV             R9, R1
36D306:  MOV             R8, R0
36D308:  VLDR            S0, [R9,#0x68]
36D30C:  MOV.W           R1, #0x3F800000; x
36D310:  VLDR            S2, [R9,#0x6C]
36D314:  MOV             R4, R2
36D316:  VMUL.F32        S0, S0, S0
36D31A:  LDR.W           R6, [R9,#4]
36D31E:  VMUL.F32        S2, S2, S2
36D322:  VLDR            S18, [R9,#0x84]
36D326:  VADD.F32        S0, S0, S2
36D32A:  VSQRT.F32       S16, S0
36D32E:  VMOV            R0, S16; y
36D332:  BLX             atan2f
36D336:  VLDR            S0, =57.296
36D33A:  VMOV            S2, R0
36D33E:  VMOV.F32        S4, #-2.0
36D342:  VLDR            S8, =180.0
36D346:  VMUL.F32        S0, S2, S0
36D34A:  VMUL.F32        S6, S16, S16
36D34E:  VMUL.F32        S2, S0, S4
36D352:  VMOV.F32        S4, #1.0
36D356:  VADD.F32        S2, S2, S8
36D35A:  VADD.F32        S4, S6, S4
36D35E:  VLDR            S6, =0.017453
36D362:  VMUL.F32        S16, S0, S6
36D366:  VMUL.F32        S2, S2, S6
36D36A:  VSQRT.F32       S4, S4
36D36E:  VMOV            R0, S2; x
36D372:  VMUL.F32        S18, S18, S4
36D376:  BLX             sinf
36D37A:  VMOV            S0, R0
36D37E:  VMOV            R0, S16; x
36D382:  VDIV.F32        S16, S18, S0
36D386:  BLX             sinf
36D38A:  VMOV            S0, R0
36D38E:  VLDR            S2, [R6,#0x30]
36D392:  VLDR            S4, [R6,#0x34]
36D396:  VMUL.F32        S0, S0, S16
36D39A:  VLDR            S6, [R6,#0x38]
36D39E:  VLDR            S8, [R6,#0x40]
36D3A2:  VLDR            S10, [R6,#0x44]
36D3A6:  VLDR            S12, [R6,#0x48]
36D3AA:  VMUL.F32        S6, S6, S0
36D3AE:  VMUL.F32        S4, S4, S0
36D3B2:  VMUL.F32        S2, S2, S0
36D3B6:  VADD.F32        S6, S6, S12
36D3BA:  VADD.F32        S4, S10, S4
36D3BE:  VADD.F32        S2, S8, S2
36D3C2:  VSTR            S2, [R8,#0x34]
36D3C6:  VSTR            S4, [R8,#0x38]
36D3CA:  VSTR            S6, [R8,#0x3C]
36D3CE:  VSTR            S0, [R8,#0x40]
36D3D2:  VLDR            D16, [R9,#0xC0]
36D3D6:  LDR.W           R0, [R9,#0xC8]
36D3DA:  STR.W           R0, [R8,#0x50]
36D3DE:  VSTR            D16, [R8,#0x48]
36D3E2:  LDR.W           R0, [R9,#0xCC]
36D3E6:  STR.W           R0, [R8,#0x54]
36D3EA:  VLDR            D16, [R9,#0xD4]
36D3EE:  LDR.W           R0, [R9,#0xDC]
36D3F2:  STR.W           R0, [R8,#0x60]
36D3F6:  VSTR            D16, [R8,#0x58]
36D3FA:  LDR.W           R0, [R9,#0xE0]
36D3FE:  STR.W           R0, [R8,#0x64]
36D402:  VLDR            D16, [R9,#0xE8]
36D406:  LDR.W           R0, [R9,#0xF0]
36D40A:  STR.W           R0, [R8,#0x70]
36D40E:  VSTR            D16, [R8,#0x68]
36D412:  LDR.W           R0, [R9,#0xF4]
36D416:  STR.W           R0, [R8,#0x74]
36D41A:  VLDR            D16, [R9,#0xFC]
36D41E:  LDR.W           R0, [R9,#0x104]
36D422:  STR.W           R0, [R8,#0x80]
36D426:  VSTR            D16, [R8,#0x78]
36D42A:  LDR.W           R0, [R9,#0x108]
36D42E:  STR.W           R0, [R8,#0x84]
36D432:  LDR.W           R6, [R8]
36D436:  CBZ             R6, loc_36D446
36D438:  MOV             R0, R6; this
36D43A:  MOV             R1, R4; float
36D43C:  BLX             j__ZN12FxSystemBP_c6UpdateEf; FxSystemBP_c::Update(float)
36D440:  LDR             R6, [R6,#4]
36D442:  CMP             R6, #0
36D444:  BNE             loc_36D438
36D446:  LDR.W           R6, [R8,#0xC]
36D44A:  CBZ             R6, loc_36D468
36D44C:  MOV             R0, R6
36D44E:  MOV             R1, R9
36D450:  MOV             R2, R4
36D452:  LDR             R5, [R6,#4]
36D454:  BLX             j__ZN10FxSystem_c6UpdateEP8RwCameraf; FxSystem_c::Update(RwCamera *,float)
36D458:  CBZ             R0, loc_36D462
36D45A:  MOV             R0, R8; this
36D45C:  MOV             R1, R6; FxSystem_c *
36D45E:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
36D462:  CMP             R5, #0
36D464:  MOV             R6, R5
36D466:  BNE             loc_36D44C
36D468:  VPOP            {D8-D9}
36D46C:  POP.W           {R8,R9,R11}
36D470:  POP             {R4-R7,PC}
