; =========================================================
; Game Engine Function: _Z10CameraSizeP8RwCameraP6RwRectff
; Address            : 0x5D325C - 0x5D3350
; =========================================================

5D325C:  PUSH            {R4-R7,LR}
5D325E:  ADD             R7, SP, #0xC
5D3260:  PUSH.W          {R8,R9,R11}
5D3264:  SUB             SP, SP, #0x28
5D3266:  MOV             R4, R0
5D3268:  MOV             R8, R3
5D326A:  MOV             R9, R2
5D326C:  MOV             R5, R1
5D326E:  CMP             R4, #0
5D3270:  BEQ             loc_5D3348
5D3272:  BLX.W           j__Z27RwEngineGetCurrentVideoModev; RwEngineGetCurrentVideoMode(void)
5D3276:  MOV             R1, R0
5D3278:  ADD             R0, SP, #0x40+var_30
5D327A:  BLX.W           j__Z24RwEngineGetVideoModeInfoP11RwVideoModei; RwEngineGetVideoModeInfo(RwVideoMode *,int)
5D327E:  LDR             R0, [R4,#0x60]
5D3280:  CMP             R5, #0
5D3282:  LDRD.W          R3, R1, [R0,#0xC]
5D3286:  BEQ             loc_5D328C
5D3288:  LDR             R2, [R5,#8]
5D328A:  B               loc_5D32AE
5D328C:  LDRD.W          R2, R5, [SP,#0x40+var_30]
5D3290:  MOV.W           LR, #0
5D3294:  LDR.W           R12, [SP,#0x40+var_24]
5D3298:  STRD.W          LR, LR, [SP,#0x40+var_40]
5D329C:  ANDS.W          R6, R12, #1
5D32A0:  IT EQ
5D32A2:  MOVEQ           R2, R3
5D32A4:  STR             R2, [SP,#0x40+var_38]
5D32A6:  IT EQ
5D32A8:  MOVEQ           R5, R1
5D32AA:  STR             R5, [SP,#0x40+var_34]
5D32AC:  MOV             R5, SP
5D32AE:  CMP             R3, R2
5D32B0:  ITT EQ
5D32B2:  LDREQ           R3, [R5,#0xC]
5D32B4:  CMPEQ           R1, R3
5D32B6:  BEQ             loc_5D32C4
5D32B8:  LDR             R1, [R4,#0x64]
5D32BA:  STR             R2, [R1,#0xC]
5D32BC:  STR             R2, [R0,#0xC]
5D32BE:  LDR             R2, [R5,#0xC]
5D32C0:  STR             R2, [R1,#0x10]
5D32C2:  STR             R2, [R0,#0x10]
5D32C4:  LDRB.W          R0, [SP,#0x40+var_24]
5D32C8:  VMOV            S0, R9
5D32CC:  LSLS            R0, R0, #0x1F
5D32CE:  BNE             loc_5D32FC
5D32D0:  MOV             R6, R5
5D32D2:  LDR.W           R0, [R6,#0xC]!
5D32D6:  LDR.W           R1, [R6,#-4]
5D32DA:  CMP             R1, R0
5D32DC:  BLE             loc_5D330E
5D32DE:  VMOV            S2, R0
5D32E2:  VMOV            S4, R1
5D32E6:  VCVT.F32.S32    S2, S2
5D32EA:  VCVT.F32.S32    S4, S4
5D32EE:  VSTR            S0, [SP,#0x40+var_20]
5D32F2:  VMUL.F32        S2, S2, S0
5D32F6:  VDIV.F32        S2, S2, S4
5D32FA:  B               loc_5D332E
5D32FC:  VMOV            S2, R8
5D3300:  VSTR            S0, [SP,#0x40+var_20]
5D3304:  ADD.W           R6, R5, #0xC
5D3308:  VDIV.F32        S2, S0, S2
5D330C:  B               loc_5D332E
5D330E:  VMOV            S2, R1
5D3312:  VMOV            S4, R0
5D3316:  VCVT.F32.S32    S2, S2
5D331A:  VCVT.F32.S32    S4, S4
5D331E:  VMUL.F32        S2, S2, S0
5D3322:  VDIV.F32        S2, S2, S4
5D3326:  VSTR            S2, [SP,#0x40+var_20]
5D332A:  VMOV.F32        S2, S0
5D332E:  ADD             R1, SP, #0x40+var_20
5D3330:  MOV             R0, R4
5D3332:  VSTR            S2, [SP,#0x40+var_1C]
5D3336:  BLX.W           j__Z21RwCameraSetViewWindowP8RwCameraPK5RwV2d; RwCameraSetViewWindow(RwCamera *,RwV2d const*)
5D333A:  LDR             R0, =(RsGlobal_ptr - 0x5D3342)
5D333C:  LDR             R2, [R6]
5D333E:  ADD             R0, PC; RsGlobal_ptr
5D3340:  LDR             R1, [R5,#8]
5D3342:  LDR             R0, [R0]; RsGlobal
5D3344:  STRD.W          R1, R2, [R0,#(dword_9FC900 - 0x9FC8FC)]
5D3348:  ADD             SP, SP, #0x28 ; '('
5D334A:  POP.W           {R8,R9,R11}
5D334E:  POP             {R4-R7,PC}
