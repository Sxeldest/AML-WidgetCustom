; =========================================================
; Game Engine Function: _ZN12CHIDJoystick26InternalIsReleasedPositiveE10HIDMapping
; Address            : 0x28D314 - 0x28D380
; =========================================================

28D314:  PUSH            {R4,R6,R7,LR}
28D316:  ADD             R7, SP, #8
28D318:  VPUSH           {D8}
28D31C:  LDR             R3, [R0,#8]
28D31E:  CBZ             R3, loc_28D33E
28D320:  LDR             R0, [R0,#0xC]
28D322:  MOVS            R4, #0
28D324:  ADDS            R0, #0xC
28D326:  LDR.W           R2, [R0,#-8]
28D32A:  CMP             R2, R1
28D32C:  BNE             loc_28D336
28D32E:  LDR.W           R2, [R0,#-0xC]
28D332:  CMP             R2, #0x10
28D334:  BGE             loc_28D348
28D336:  ADDS            R4, #1
28D338:  ADDS            R0, #0x14
28D33A:  CMP             R4, R3
28D33C:  BCC             loc_28D326
28D33E:  MOVS            R4, #0
28D340:  MOV             R0, R4
28D342:  VPOP            {D8}
28D346:  POP             {R4,R6,R7,PC}
28D348:  VMOV.F32        S16, #0.5
28D34C:  VLDR            S0, [R0]
28D350:  MOVS            R4, #0
28D352:  VCMPE.F32       S0, S16
28D356:  VMRS            APSR_nzcv, FPSCR
28D35A:  BLE             loc_28D340
28D35C:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28D364)
28D35E:  MOV             R1, R2; unsigned int
28D360:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28D362:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28D364:  LDR             R0, [R0]; unsigned int
28D366:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28D36A:  BIC.W           R0, R0, #0x80000000
28D36E:  VMOV            S0, R0
28D372:  VCMPE.F32       S0, S16
28D376:  VMRS            APSR_nzcv, FPSCR
28D37A:  IT LT
28D37C:  MOVLT           R4, #1
28D37E:  B               loc_28D340
