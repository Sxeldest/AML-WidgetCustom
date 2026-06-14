; =========================================================
; Game Engine Function: _Z16RQDrawNonIndexedP8RQShader10RQDrawModejj
; Address            : 0x1D3470 - 0x1D354C
; =========================================================

1D3470:  PUSH            {R4-R7,LR}
1D3472:  ADD             R7, SP, #0xC
1D3474:  PUSH.W          {R11}
1D3478:  MOV             R6, R1
1D347A:  LDR             R1, [R0]
1D347C:  MOV             R4, R3
1D347E:  MOV             R5, R2
1D3480:  LDR             R1, [R1,#0x18]
1D3482:  BLX             R1
1D3484:  LDR             R0, =(renderQueue_ptr - 0x1D348C)
1D3486:  MOVS            R3, #0xF
1D3488:  ADD             R0, PC; renderQueue_ptr
1D348A:  LDR             R0, [R0]; renderQueue
1D348C:  LDR             R1, [R0]
1D348E:  LDR.W           R2, [R1,#0x274]
1D3492:  STR.W           R3, [R1,#0x278]
1D3496:  STR             R3, [R2]
1D3498:  LDR.W           R2, [R1,#0x274]
1D349C:  ADDS            R2, #4
1D349E:  STR.W           R2, [R1,#0x274]
1D34A2:  LDR             R1, [R0]
1D34A4:  LDR.W           R2, [R1,#0x274]
1D34A8:  STR             R6, [R2]
1D34AA:  LDR.W           R2, [R1,#0x274]
1D34AE:  ADDS            R2, #4
1D34B0:  STR.W           R2, [R1,#0x274]
1D34B4:  LDR             R1, [R0]
1D34B6:  LDR.W           R2, [R1,#0x274]
1D34BA:  STR             R5, [R2]
1D34BC:  LDR.W           R2, [R1,#0x274]
1D34C0:  ADDS            R2, #4
1D34C2:  STR.W           R2, [R1,#0x274]
1D34C6:  LDR             R1, [R0]
1D34C8:  LDR.W           R2, [R1,#0x274]
1D34CC:  STR             R4, [R2]
1D34CE:  LDR.W           R2, [R1,#0x274]
1D34D2:  ADDS            R2, #4
1D34D4:  STR.W           R2, [R1,#0x274]
1D34D8:  LDR             R4, [R0]
1D34DA:  LDRB.W          R0, [R4,#0x259]
1D34DE:  CMP             R0, #0
1D34E0:  ITT NE
1D34E2:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D34E6:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D34EA:  LDRD.W          R1, R2, [R4,#0x270]
1D34EE:  ADD.W           R0, R4, #0x270
1D34F2:  DMB.W           ISH
1D34F6:  SUBS            R1, R2, R1
1D34F8:  LDREX.W         R2, [R0]
1D34FC:  ADD             R2, R1
1D34FE:  STREX.W         R3, R2, [R0]
1D3502:  CMP             R3, #0
1D3504:  BNE             loc_1D34F8
1D3506:  DMB.W           ISH
1D350A:  LDRB.W          R0, [R4,#0x259]
1D350E:  CMP             R0, #0
1D3510:  ITT NE
1D3512:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3516:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D351A:  LDRB.W          R0, [R4,#0x258]
1D351E:  CMP             R0, #0
1D3520:  ITT EQ
1D3522:  MOVEQ           R0, R4; this
1D3524:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D3528:  LDR.W           R1, [R4,#0x270]
1D352C:  LDR.W           R0, [R4,#0x264]
1D3530:  ADD.W           R1, R1, #0x400
1D3534:  CMP             R1, R0
1D3536:  ITT LS
1D3538:  POPLS.W         {R11}
1D353C:  POPLS           {R4-R7,PC}
1D353E:  MOV             R0, R4; this
1D3540:  POP.W           {R11}
1D3544:  POP.W           {R4-R7,LR}
1D3548:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
