; =========================================================
; Game Engine Function: _ZN15FxInfoManager_c17ProcessRenderInfoEffffhP12RenderInfo_t
; Address            : 0x36A290 - 0x36A340
; =========================================================

36A290:  PUSH            {R4-R7,LR}
36A292:  ADD             R7, SP, #0xC
36A294:  PUSH.W          {R8-R11}
36A298:  SUB             SP, SP, #4
36A29A:  VPUSH           {D8}
36A29E:  SUB             SP, SP, #0x10
36A2A0:  LDR.W           R11, [R7,#arg_8]
36A2A4:  MOV             R10, R1
36A2A6:  MOV             R4, R0
36A2A8:  ADR             R0, dword_36A340
36A2AA:  ADR             R1, dword_36A350
36A2AC:  VLD1.64         {D16-D17}, [R0@128]
36A2B0:  MOVS            R0, #0
36A2B2:  MOV             R8, R3
36A2B4:  VLD1.64         {D18-D19}, [R1@128]
36A2B8:  MOV.W           R1, #0xFFFFFFFF
36A2BC:  MOV             R9, R2
36A2BE:  STR.W           R0, [R11,#8]
36A2C2:  STR.W           R1, [R11]
36A2C6:  STRB.W          R0, [R11,#0x36]
36A2CA:  STRB.W          R0, [R11,#0x37]
36A2CE:  STRB.W          R0, [R11,#0x78]
36A2D2:  STRB.W          R0, [R11,#0x34]
36A2D6:  STR.W           R0, [R11,#0x2C]
36A2DA:  STRB.W          R0, [R11,#0x79]
36A2DE:  STRB.W          R0, [R11,#0x7A]
36A2E2:  MOVS            R0, #0xFF
36A2E4:  STRB.W          R0, [R11,#0x7B]
36A2E8:  ADD.W           R0, R11, #0xC
36A2EC:  VST1.32         {D18-D19}, [R0]
36A2F0:  ADD.W           R0, R11, #0x1C
36A2F4:  VST1.32         {D16-D17}, [R0]
36A2F8:  LDR             R1, [R4]
36A2FA:  LDRSB.W         R6, [R4,#9]
36A2FE:  CMP             R1, R6
36A300:  BLE             loc_36A332
36A302:  VLDR            S16, [R7,#arg_0]
36A306:  LDR             R0, [R4,#4]
36A308:  LDR.W           R0, [R0,R6,LSL#2]
36A30C:  LDRH            R2, [R0,#4]
36A30E:  CMP.W           R2, #0x4000
36A312:  BCC             loc_36A32C
36A314:  LDR             R1, [R0]
36A316:  MOV             R2, R9
36A318:  MOV             R3, R8
36A31A:  LDR             R5, [R1,#0xC]
36A31C:  LDR             R1, [R7,#arg_4]
36A31E:  STRD.W          R1, R11, [SP,#0x38+var_34]
36A322:  MOV             R1, R10
36A324:  VSTR            S16, [SP,#0x38+var_38]
36A328:  BLX             R5
36A32A:  LDR             R1, [R4]
36A32C:  ADDS            R6, #1
36A32E:  CMP             R6, R1
36A330:  BLT             loc_36A306
36A332:  ADD             SP, SP, #0x10
36A334:  VPOP            {D8}
36A338:  ADD             SP, SP, #4
36A33A:  POP.W           {R8-R11}
36A33E:  POP             {R4-R7,PC}
