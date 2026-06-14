; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib
; Address            : 0x51F354 - 0x51F418
; =========================================================

51F354:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int, CVector const&, float, float, float, bool, int, bool)'
51F356:  ADD             R7, SP, #0xC
51F358:  PUSH.W          {R8}
51F35C:  MOV             R8, R3
51F35E:  MOV             R6, R2
51F360:  MOV             R5, R1
51F362:  MOV             R4, R0
51F364:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51F368:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x51F374)
51F36A:  ADD.W           LR, R4, #0x14
51F36E:  LDR             R2, [R7,#arg_10]
51F370:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
51F372:  VLDR            S0, [R7,#arg_0]
51F376:  VLDR            S2, [R7,#arg_4]
51F37A:  CMP             R2, #0
51F37C:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
51F37E:  ADD.W           R0, R0, #8
51F382:  STR             R0, [R4]
51F384:  LDR             R0, [R6,#8]
51F386:  VLDR            D16, [R6]
51F38A:  MOV.W           R6, #0
51F38E:  LDRD.W          R12, R1, [R7,#arg_8]
51F392:  LDRB.W          R3, [R4,#0x4C]
51F396:  STM.W           LR, {R0,R5,R8}
51F39A:  ORR.W           R0, R12, R2,LSL#3
51F39E:  MOVW            R5, #0xFFFF
51F3A2:  VSTR            S0, [R4,#0x20]
51F3A6:  VSTR            S2, [R4,#0x24]
51F3AA:  STRD.W          R6, R1, [R4,#0x38]
51F3AE:  BIC.W           R1, R3, #9; unsigned int
51F3B2:  ORR.W           R0, R0, R1
51F3B6:  STRD.W          R6, R6, [R4,#0x40]
51F3BA:  STRH            R5, [R4,#0x28]
51F3BC:  STRH            R5, [R4,#0x34]
51F3BE:  STRH.W          R6, [R4,#0x48]
51F3C2:  STRB.W          R0, [R4,#0x4C]
51F3C6:  VSTR            D16, [R4,#0xC]
51F3CA:  BEQ             loc_51F3E0
51F3CC:  AND.W           R0, R0, #0x9F
51F3D0:  VMOV.I32        Q8, #0
51F3D4:  STRB.W          R0, [R4,#0x4C]
51F3D8:  ADD.W           R0, R4, #0x50 ; 'P'
51F3DC:  VST1.32         {D16-D17}, [R0]
51F3E0:  MOVS            R0, #dword_64; this
51F3E2:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
51F3E6:  STR             R6, [R0]
51F3E8:  STR             R0, [R4,#0x30]
51F3EA:  MOVS            R0, #dword_24; this
51F3EC:  BLX             j__ZN10CNodeRoutenwEj; CNodeRoute::operator new(uint)
51F3F0:  LDR             R1, =(EmptyNodeAddress_ptr - 0x51F3F8)
51F3F2:  STR             R6, [R0]
51F3F4:  ADD             R1, PC; EmptyNodeAddress_ptr
51F3F6:  STRH            R5, [R0,#4]
51F3F8:  STRH            R5, [R0,#8]
51F3FA:  LDR             R1, [R1]; EmptyNodeAddress
51F3FC:  STRH            R5, [R0,#0xC]
51F3FE:  STRH            R5, [R0,#0x10]
51F400:  STRH            R5, [R0,#0x14]
51F402:  STRH            R5, [R0,#0x18]
51F404:  STRH            R5, [R0,#0x1C]
51F406:  STRH            R5, [R0,#0x20]
51F408:  STRH            R5, [R4,#0x34]
51F40A:  STR             R0, [R4,#0x2C]
51F40C:  LDR             R0, [R1]
51F40E:  STR             R0, [R4,#0x28]
51F410:  MOV             R0, R4
51F412:  POP.W           {R8}
51F416:  POP             {R4-R7,PC}
