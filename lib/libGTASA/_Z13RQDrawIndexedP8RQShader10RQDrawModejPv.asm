; =========================================================
; Game Engine Function: _Z13RQDrawIndexedP8RQShader10RQDrawModejPv
; Address            : 0x1D3390 - 0x1D346C
; =========================================================

1D3390:  PUSH            {R4-R7,LR}
1D3392:  ADD             R7, SP, #0xC
1D3394:  PUSH.W          {R11}
1D3398:  MOV             R6, R1
1D339A:  LDR             R1, [R0]
1D339C:  MOV             R4, R3
1D339E:  MOV             R5, R2
1D33A0:  LDR             R1, [R1,#0x18]
1D33A2:  BLX             R1
1D33A4:  LDR             R0, =(renderQueue_ptr - 0x1D33AC)
1D33A6:  MOVS            R3, #0xE
1D33A8:  ADD             R0, PC; renderQueue_ptr
1D33AA:  LDR             R0, [R0]; renderQueue
1D33AC:  LDR             R1, [R0]
1D33AE:  LDR.W           R2, [R1,#0x274]
1D33B2:  STR.W           R3, [R1,#0x278]
1D33B6:  STR             R3, [R2]
1D33B8:  LDR.W           R2, [R1,#0x274]
1D33BC:  ADDS            R2, #4
1D33BE:  STR.W           R2, [R1,#0x274]
1D33C2:  LDR             R1, [R0]
1D33C4:  LDR.W           R2, [R1,#0x274]
1D33C8:  STR             R6, [R2]
1D33CA:  LDR.W           R2, [R1,#0x274]
1D33CE:  ADDS            R2, #4
1D33D0:  STR.W           R2, [R1,#0x274]
1D33D4:  LDR             R1, [R0]
1D33D6:  LDR.W           R2, [R1,#0x274]
1D33DA:  STR             R5, [R2]
1D33DC:  LDR.W           R2, [R1,#0x274]
1D33E0:  ADDS            R2, #4
1D33E2:  STR.W           R2, [R1,#0x274]
1D33E6:  LDR             R1, [R0]
1D33E8:  LDR.W           R2, [R1,#0x274]
1D33EC:  STR             R4, [R2]
1D33EE:  LDR.W           R2, [R1,#0x274]
1D33F2:  ADDS            R2, #4
1D33F4:  STR.W           R2, [R1,#0x274]
1D33F8:  LDR             R4, [R0]
1D33FA:  LDRB.W          R0, [R4,#0x259]
1D33FE:  CMP             R0, #0
1D3400:  ITT NE
1D3402:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3406:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D340A:  LDRD.W          R1, R2, [R4,#0x270]
1D340E:  ADD.W           R0, R4, #0x270
1D3412:  DMB.W           ISH
1D3416:  SUBS            R1, R2, R1
1D3418:  LDREX.W         R2, [R0]
1D341C:  ADD             R2, R1
1D341E:  STREX.W         R3, R2, [R0]
1D3422:  CMP             R3, #0
1D3424:  BNE             loc_1D3418
1D3426:  DMB.W           ISH
1D342A:  LDRB.W          R0, [R4,#0x259]
1D342E:  CMP             R0, #0
1D3430:  ITT NE
1D3432:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3436:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D343A:  LDRB.W          R0, [R4,#0x258]
1D343E:  CMP             R0, #0
1D3440:  ITT EQ
1D3442:  MOVEQ           R0, R4; this
1D3444:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D3448:  LDR.W           R1, [R4,#0x270]
1D344C:  LDR.W           R0, [R4,#0x264]
1D3450:  ADD.W           R1, R1, #0x400
1D3454:  CMP             R1, R0
1D3456:  ITT LS
1D3458:  POPLS.W         {R11}
1D345C:  POPLS           {R4-R7,PC}
1D345E:  MOV             R0, R4; this
1D3460:  POP.W           {R11}
1D3464:  POP.W           {R4-R7,LR}
1D3468:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
