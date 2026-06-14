; =========================================================
; Game Engine Function: _ZN9RQTexture7SetWrapE10RQWrapModeS0_
; Address            : 0x1D364C - 0x1D3726
; =========================================================

1D364C:  PUSH            {R4,R6,R7,LR}
1D364E:  ADD             R7, SP, #8
1D3650:  LDR             R3, [R0,#0x14]
1D3652:  CMP             R3, R1
1D3654:  ITT EQ
1D3656:  LDREQ           R3, [R0,#0x18]
1D3658:  CMPEQ           R3, R2
1D365A:  BEQ             locret_1D3724
1D365C:  LDR             R3, =(renderQueue_ptr - 0x1D3668)
1D365E:  MOVS            R4, #0x15
1D3660:  STRD.W          R1, R2, [R0,#0x14]
1D3664:  ADD             R3, PC; renderQueue_ptr
1D3666:  LDR             R3, [R3]; renderQueue
1D3668:  LDR             R1, [R3]
1D366A:  LDR.W           R2, [R1,#0x274]
1D366E:  STR.W           R4, [R1,#0x278]
1D3672:  STR             R4, [R2]
1D3674:  LDR.W           R2, [R1,#0x274]
1D3678:  ADDS            R2, #4
1D367A:  STR.W           R2, [R1,#0x274]
1D367E:  LDR             R1, [R3]
1D3680:  LDR.W           R2, [R1,#0x274]
1D3684:  STR             R0, [R2]
1D3686:  LDR.W           R2, [R1,#0x274]
1D368A:  ADDS            R2, #4
1D368C:  STR.W           R2, [R1,#0x274]
1D3690:  LDR             R1, [R3]
1D3692:  LDR             R4, [R0,#0x14]
1D3694:  LDR.W           R2, [R1,#0x274]
1D3698:  STR             R4, [R2]
1D369A:  LDR.W           R2, [R1,#0x274]
1D369E:  ADDS            R2, #4
1D36A0:  STR.W           R2, [R1,#0x274]
1D36A4:  LDR             R1, [R3]
1D36A6:  LDR             R0, [R0,#0x18]
1D36A8:  LDR.W           R2, [R1,#0x274]
1D36AC:  STR             R0, [R2]
1D36AE:  LDR.W           R0, [R1,#0x274]
1D36B2:  ADDS            R0, #4
1D36B4:  STR.W           R0, [R1,#0x274]
1D36B8:  LDR             R4, [R3]
1D36BA:  LDRB.W          R0, [R4,#0x259]
1D36BE:  CMP             R0, #0
1D36C0:  ITT NE
1D36C2:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D36C6:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D36CA:  LDRD.W          R1, R2, [R4,#0x270]
1D36CE:  ADD.W           R0, R4, #0x270
1D36D2:  DMB.W           ISH
1D36D6:  SUBS            R1, R2, R1
1D36D8:  LDREX.W         R2, [R0]
1D36DC:  ADD             R2, R1
1D36DE:  STREX.W         R3, R2, [R0]
1D36E2:  CMP             R3, #0
1D36E4:  BNE             loc_1D36D8
1D36E6:  DMB.W           ISH
1D36EA:  LDRB.W          R0, [R4,#0x259]
1D36EE:  CMP             R0, #0
1D36F0:  ITT NE
1D36F2:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D36F6:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D36FA:  LDRB.W          R0, [R4,#0x258]
1D36FE:  CMP             R0, #0
1D3700:  ITT EQ
1D3702:  MOVEQ           R0, R4; this
1D3704:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D3708:  LDR.W           R1, [R4,#0x270]
1D370C:  LDR.W           R0, [R4,#0x264]
1D3710:  ADD.W           R1, R1, #0x400
1D3714:  CMP             R1, R0
1D3716:  IT LS
1D3718:  POPLS           {R4,R6,R7,PC}
1D371A:  MOV             R0, R4; this
1D371C:  POP.W           {R4,R6,R7,LR}
1D3720:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
1D3724:  POP             {R4,R6,R7,PC}
