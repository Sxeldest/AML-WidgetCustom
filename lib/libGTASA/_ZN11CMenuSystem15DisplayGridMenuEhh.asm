; =========================================================
; Game Engine Function: _ZN11CMenuSystem15DisplayGridMenuEhh
; Address            : 0x43D2A0 - 0x43D500
; =========================================================

43D2A0:  PUSH            {R4-R7,LR}
43D2A2:  ADD             R7, SP, #0xC
43D2A4:  PUSH.W          {R8-R11}
43D2A8:  SUB             SP, SP, #4
43D2AA:  VPUSH           {D8-D12}
43D2AE:  SUB             SP, SP, #0x40
43D2B0:  MOV             R5, R0
43D2B2:  LDR             R0, =(MenuNumber_ptr - 0x43D2BA)
43D2B4:  MOV             R4, R1
43D2B6:  ADD             R0, PC; MenuNumber_ptr
43D2B8:  LDR             R0, [R0]; MenuNumber
43D2BA:  LDR.W           R0, [R0,R5,LSL#2]
43D2BE:  LDRB.W          R1, [R0,#0x414]
43D2C2:  CBZ             R1, loc_43D342
43D2C4:  LDRB.W          R1, [R0,#0x3F7]
43D2C8:  MOVS            R2, #0; unsigned __int8
43D2CA:  MOVS            R3, #0; unsigned __int8
43D2CC:  MOV.W           R8, #0
43D2D0:  VMOV            S0, R1
43D2D4:  ADDW            R1, R0, #0x40C
43D2D8:  VCVT.F32.U32    S0, S0
43D2DC:  VLDR            S2, [R0,#0x3FC]
43D2E0:  ADD.W           R0, R0, #0x410
43D2E4:  VLDR            S4, [R0]
43D2E8:  MOVS            R0, #0xBE
43D2EA:  VMUL.F32        S0, S2, S0
43D2EE:  VLDR            S2, [R1]
43D2F2:  STR             R0, [SP,#0x88+var_88]; unsigned __int8
43D2F4:  ADD             R0, SP, #0x88+var_5C; this
43D2F6:  MOVS            R1, #0; unsigned __int8
43D2F8:  VSTR            S4, [SP,#0x88+var_4C]
43D2FC:  VSTR            S2, [SP,#0x88+var_58]
43D300:  VADD.F32        S6, S2, S0
43D304:  VADD.F32        S0, S4, S0
43D308:  VSTR            S6, [SP,#0x88+var_50]
43D30C:  VSTR            S0, [SP,#0x88+var_54]
43D310:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43D314:  LDR             R1, =(FrontEndMenuManager_ptr - 0x43D324)
43D316:  CMP             R4, #0
43D318:  MOV.W           R3, #0
43D31C:  MOV.W           R6, #1
43D320:  ADD             R1, PC; FrontEndMenuManager_ptr
43D322:  IT EQ
43D324:  MOVEQ           R3, #0x78 ; 'x'
43D326:  STRD.W          R0, R8, [SP,#0x88+var_88]
43D32A:  LDR             R2, [R1]; FrontEndMenuManager
43D32C:  ADD             R1, SP, #0x88+var_58
43D32E:  STR             R6, [SP,#0x88+var_80]
43D330:  MOV             R0, R2
43D332:  MOVS            R2, #0
43D334:  BLX             j__ZN12CMenuManager10DrawWindowERK5CRectPch5CRGBAhh; CMenuManager::DrawWindow(CRect const&,char *,uchar,CRGBA,uchar,uchar)
43D338:  LDR             R0, =(MenuNumber_ptr - 0x43D33E)
43D33A:  ADD             R0, PC; MenuNumber_ptr
43D33C:  LDR             R0, [R0]; MenuNumber
43D33E:  LDR.W           R0, [R0,R5,LSL#2]
43D342:  LDRB.W          R1, [R0,#0x3F7]
43D346:  CMP             R1, #0
43D348:  BEQ.W           loc_43D4F2
43D34C:  LDR             R1, =(_ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr - 0x43D35E)
43D34E:  VMOV.F32        S20, #3.0
43D352:  ADD.W           R9, SP, #0x88+var_60
43D356:  ADD.W           R11, SP, #0x88+var_58
43D35A:  ADD             R1, PC; _ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr
43D35C:  VLDR            S16, =640.0
43D360:  VLDR            S18, =448.0
43D364:  MOV.W           R8, #0
43D368:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleColourTable ...
43D36A:  MOV.W           R12, #0xFF
43D36E:  STR             R1, [SP,#0x88+var_68]
43D370:  MOVS            R3, #0
43D372:  LDR             R1, =(MenuNumber_ptr - 0x43D378)
43D374:  ADD             R1, PC; MenuNumber_ptr
43D376:  LDR             R1, [R1]; MenuNumber
43D378:  STR             R1, [SP,#0x88+var_74]
43D37A:  LDR             R1, =(RsGlobal_ptr - 0x43D380)
43D37C:  ADD             R1, PC; RsGlobal_ptr
43D37E:  LDR             R1, [R1]; RsGlobal
43D380:  STR             R1, [SP,#0x88+var_6C]
43D382:  LDR             R1, =(MenuNumber_ptr - 0x43D388)
43D384:  ADD             R1, PC; MenuNumber_ptr
43D386:  LDR             R1, [R1]; MenuNumber
43D388:  STR             R1, [SP,#0x88+var_70]
43D38A:  UXTB            R1, R3
43D38C:  STR             R3, [SP,#0x88+var_78]
43D38E:  VMOV            S0, R1
43D392:  MOV.W           R10, #0
43D396:  VCVT.F32.U32    S22, S0
43D39A:  UXTB.W          R1, R8
43D39E:  LDR             R4, [SP,#0x88+var_68]
43D3A0:  LDRB            R2, [R0,R1]
43D3A2:  LDRSB.W         R3, [R0,#0x415]
43D3A6:  LDRB.W          R6, [R4,R2,LSL#2]
43D3AA:  ADD.W           R2, R4, R2,LSL#2
43D3AE:  STR             R6, [SP,#0x88+var_64]
43D3B0:  LDRB            R6, [R2,#1]
43D3B2:  CMP             R1, R3
43D3B4:  LDRB            R4, [R2,#2]
43D3B6:  BNE             loc_43D42C
43D3B8:  UXTB.W          R1, R10
43D3BC:  MOVS            R2, #0xE1; unsigned __int8
43D3BE:  VMOV            S0, R1
43D3C2:  ADD.W           R1, R0, #0x410
43D3C6:  MOVS            R3, #0xE1; unsigned __int8
43D3C8:  VCVT.F32.U32    S24, S0
43D3CC:  VLDR            S0, [R0,#0x3FC]
43D3D0:  ADDW            R0, R0, #0x40C
43D3D4:  VLDR            S2, [R1]
43D3D8:  VMUL.F32        S4, S0, S22
43D3DC:  MOVS            R1, #0xE1; unsigned __int8
43D3DE:  VLDR            S6, [R0]
43D3E2:  VADD.F32        S8, S0, S2
43D3E6:  MOV             R0, R9; this
43D3E8:  STR.W           R12, [SP,#0x88+var_88]; unsigned __int8
43D3EC:  VMUL.F32        S10, S0, S24
43D3F0:  VADD.F32        S0, S6, S0
43D3F4:  VADD.F32        S2, S2, S4
43D3F8:  VADD.F32        S4, S4, S8
43D3FC:  VADD.F32        S6, S6, S10
43D400:  VADD.F32        S0, S0, S10
43D404:  VSTR            S2, [SP,#0x88+var_4C]
43D408:  VSTR            S4, [SP,#0x88+var_54]
43D40C:  VSTR            S6, [SP,#0x88+var_58]
43D410:  VSTR            S0, [SP,#0x88+var_50]
43D414:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43D418:  MOV             R0, R11
43D41A:  MOV             R1, R9
43D41C:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
43D420:  LDR             R0, [SP,#0x88+var_74]
43D422:  MOV.W           R12, #0xFF
43D426:  LDR.W           R0, [R0,R5,LSL#2]
43D42A:  B               loc_43D438
43D42C:  UXTB.W          R1, R10
43D430:  VMOV            S0, R1
43D434:  VCVT.F32.U32    S24, S0
43D438:  MOV             R2, R6; unsigned __int8
43D43A:  LDR             R6, [SP,#0x88+var_6C]
43D43C:  LDR             R1, [SP,#0x88+var_64]; unsigned __int8
43D43E:  MOV             R3, R4; unsigned __int8
43D440:  VLDR            S0, [R6,#4]
43D444:  VLDR            S2, [R6,#8]
43D448:  ADD.W           R6, R0, #0x410
43D44C:  VCVT.F32.S32    S0, S0
43D450:  VCVT.F32.S32    S2, S2
43D454:  VLDR            S4, [R0,#0x3FC]
43D458:  ADDW            R0, R0, #0x40C
43D45C:  VLDR            S8, [R6]
43D460:  VMUL.F32        S14, S4, S24
43D464:  VLDR            S6, [R0]
43D468:  VADD.F32        S12, S4, S8
43D46C:  MOV             R0, R9; this
43D46E:  STR.W           R12, [SP,#0x88+var_88]; unsigned __int8
43D472:  VADD.F32        S10, S6, S4
43D476:  VDIV.F32        S0, S0, S16
43D47A:  VDIV.F32        S2, S2, S18
43D47E:  VMUL.F32        S0, S0, S20
43D482:  VMUL.F32        S2, S2, S20
43D486:  VMUL.F32        S4, S4, S22
43D48A:  VADD.F32        S6, S6, S0
43D48E:  VADD.F32        S8, S8, S2
43D492:  VSUB.F32        S0, S10, S0
43D496:  VSUB.F32        S2, S12, S2
43D49A:  VADD.F32        S6, S14, S6
43D49E:  VADD.F32        S8, S4, S8
43D4A2:  VADD.F32        S0, S14, S0
43D4A6:  VADD.F32        S2, S4, S2
43D4AA:  VSTR            S6, [SP,#0x88+var_58]
43D4AE:  VSTR            S8, [SP,#0x88+var_4C]
43D4B2:  VSTR            S0, [SP,#0x88+var_50]
43D4B6:  VSTR            S2, [SP,#0x88+var_54]
43D4BA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43D4BE:  MOV             R0, R11
43D4C0:  MOV             R1, R9
43D4C2:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
43D4C6:  LDR             R0, [SP,#0x88+var_70]
43D4C8:  ADD.W           R10, R10, #1
43D4CC:  ADD.W           R8, R8, #1
43D4D0:  MOV.W           R12, #0xFF
43D4D4:  UXTB.W          R2, R10
43D4D8:  LDR.W           R0, [R0,R5,LSL#2]
43D4DC:  LDRB.W          R1, [R0,#0x3F7]
43D4E0:  CMP             R2, R1
43D4E2:  BCC.W           loc_43D39A
43D4E6:  LDR             R3, [SP,#0x88+var_78]
43D4E8:  ADDS            R3, #1
43D4EA:  UXTB            R2, R3
43D4EC:  CMP             R2, R1
43D4EE:  BCC.W           loc_43D38A
43D4F2:  ADD             SP, SP, #0x40 ; '@'
43D4F4:  VPOP            {D8-D12}
43D4F8:  ADD             SP, SP, #4
43D4FA:  POP.W           {R8-R11}
43D4FE:  POP             {R4-R7,PC}
