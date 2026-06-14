; =========================================================
; Game Engine Function: _ZN13RQVertexState6DeleteEPS_
; Address            : 0x1D32D4 - 0x1D3388
; =========================================================

1D32D4:  PUSH            {R4,R6,R7,LR}
1D32D6:  ADD             R7, SP, #8
1D32D8:  MOV             R4, R0
1D32DA:  LDR             R0, =(_ZN13RQVertexState8curStateE_ptr - 0x1D32E0)
1D32DC:  ADD             R0, PC; _ZN13RQVertexState8curStateE_ptr
1D32DE:  LDR             R0, [R0]; RQVertexState::curState ...
1D32E0:  LDR             R0, [R0]; RQVertexState::curState
1D32E2:  CMP             R0, R4
1D32E4:  ITT EQ
1D32E6:  MOVEQ           R0, #0; this
1D32E8:  BLXEQ           j__ZN13RQVertexState5ApplyEPS_; RQVertexState::Apply(RQVertexState*)
1D32EC:  LDR             R0, =(renderQueue_ptr - 0x1D32F4)
1D32EE:  MOVS            R3, #0xC
1D32F0:  ADD             R0, PC; renderQueue_ptr
1D32F2:  LDR             R0, [R0]; renderQueue
1D32F4:  LDR             R1, [R0]
1D32F6:  LDR.W           R2, [R1,#0x274]
1D32FA:  STR.W           R3, [R1,#0x278]
1D32FE:  STR             R3, [R2]
1D3300:  LDR.W           R2, [R1,#0x274]
1D3304:  ADDS            R2, #4
1D3306:  STR.W           R2, [R1,#0x274]
1D330A:  LDR             R1, [R0]
1D330C:  LDR.W           R2, [R1,#0x274]
1D3310:  STR             R4, [R2]
1D3312:  LDR.W           R2, [R1,#0x274]
1D3316:  ADDS            R2, #4
1D3318:  STR.W           R2, [R1,#0x274]
1D331C:  LDR             R4, [R0]
1D331E:  LDRB.W          R0, [R4,#0x259]
1D3322:  CMP             R0, #0
1D3324:  ITT NE
1D3326:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D332A:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D332E:  LDRD.W          R1, R2, [R4,#0x270]
1D3332:  ADD.W           R0, R4, #0x270
1D3336:  DMB.W           ISH
1D333A:  SUBS            R1, R2, R1
1D333C:  LDREX.W         R2, [R0]
1D3340:  ADD             R2, R1
1D3342:  STREX.W         R3, R2, [R0]
1D3346:  CMP             R3, #0
1D3348:  BNE             loc_1D333C
1D334A:  DMB.W           ISH
1D334E:  LDRB.W          R0, [R4,#0x259]
1D3352:  CMP             R0, #0
1D3354:  ITT NE
1D3356:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D335A:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D335E:  LDRB.W          R0, [R4,#0x258]
1D3362:  CMP             R0, #0
1D3364:  ITT EQ
1D3366:  MOVEQ           R0, R4; this
1D3368:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D336C:  LDR.W           R1, [R4,#0x270]
1D3370:  LDR.W           R0, [R4,#0x264]
1D3374:  ADD.W           R1, R1, #0x400
1D3378:  CMP             R1, R0
1D337A:  IT LS
1D337C:  POPLS           {R4,R6,R7,PC}
1D337E:  MOV             R0, R4; this
1D3380:  POP.W           {R4,R6,R7,LR}
1D3384:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
