; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb
; Address            : 0x51E2CC - 0x51E3AA
; =========================================================

51E2CC:  PUSH            {R4-R7,LR}
51E2CE:  ADD             R7, SP, #0xC
51E2D0:  PUSH.W          {R8}
51E2D4:  VPUSH           {D8-D9}
51E2D8:  MOV             R6, R3
51E2DA:  MOV             R8, R2
51E2DC:  MOV             R5, R1
51E2DE:  MOV             R4, R0
51E2E0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51E2E4:  LDR             R0, =(_ZTV28CTaskComplexFollowPointRoute_ptr - 0x51E2EE)
51E2E6:  LDR             R1, [R7,#arg_C]; unsigned int
51E2E8:  LDR             R3, [R7,#arg_8]
51E2EA:  ADD             R0, PC; _ZTV28CTaskComplexFollowPointRoute_ptr
51E2EC:  STR             R6, [R4,#0xC]
51E2EE:  CMP             R1, #0
51E2F0:  STR             R5, [R4,#0x14]
51E2F2:  ORR.W           R3, R3, R1,LSL#3
51E2F6:  LDR             R2, [R7,#arg_10]
51E2F8:  LDRB.W          R6, [R4,#0x28]
51E2FC:  ORR.W           R2, R3, R2,LSL#2
51E300:  LDR             R3, [R0]; `vtable for'CTaskComplexFollowPointRoute ...
51E302:  BIC.W           R0, R6, #0xD
51E306:  ORR.W           R0, R0, R2
51E30A:  STRB.W          R0, [R4,#0x28]
51E30E:  ADD.W           R2, R3, #8
51E312:  STR             R2, [R4]
51E314:  BEQ             loc_51E32A
51E316:  AND.W           R0, R0, #0x9F
51E31A:  VMOV.I32        Q8, #0
51E31E:  STRB.W          R0, [R4,#0x28]
51E322:  ADD.W           R0, R4, #0x2C ; ','
51E326:  VST1.32         {D16-D17}, [R0]
51E32A:  MOVS            R0, #dword_64; this
51E32C:  VLDR            S16, [R7,#arg_4]
51E330:  VLDR            S18, [R7,#arg_0]
51E334:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
51E338:  MOVS            R1, #0
51E33A:  STR             R1, [R0]
51E33C:  STR             R0, [R4,#0x20]
51E33E:  LDR.W           R2, [R8]
51E342:  STR             R2, [R0]
51E344:  CMP             R2, #1
51E346:  BLT             loc_51E368
51E348:  ADD.W           R2, R8, #4
51E34C:  ADDS            R3, R0, #4
51E34E:  MOVS            R6, #0
51E350:  VLDR            D16, [R2]
51E354:  ADDS            R6, #1
51E356:  LDR             R5, [R2,#8]
51E358:  ADDS            R2, #0xC
51E35A:  STR             R5, [R3,#8]
51E35C:  VSTR            D16, [R3]
51E360:  ADDS            R3, #0xC
51E362:  LDR             R5, [R0]
51E364:  CMP             R6, R5
51E366:  BLT             loc_51E350
51E368:  VSTR            S18, [R4,#0x18]
51E36C:  VSTR            S16, [R4,#0x1C]
51E370:  LDRB.W          R2, [R4,#0x28]
51E374:  STR             R1, [R4,#0x24]
51E376:  ORR.W           R0, R2, #2
51E37A:  TST.W           R2, #8
51E37E:  STR             R1, [R4,#0x10]
51E380:  STRB.W          R0, [R4,#0x28]
51E384:  BEQ             loc_51E39E
51E386:  AND.W           R0, R0, #0x9F
51E38A:  VMOV.I32        Q8, #0
51E38E:  ORR.W           R0, R0, #0x40 ; '@'
51E392:  STRB.W          R0, [R4,#0x28]
51E396:  ADD.W           R0, R4, #0x2C ; ','
51E39A:  VST1.32         {D16-D17}, [R0]
51E39E:  MOV             R0, R4
51E3A0:  VPOP            {D8-D9}
51E3A4:  POP.W           {R8}
51E3A8:  POP             {R4-R7,PC}
