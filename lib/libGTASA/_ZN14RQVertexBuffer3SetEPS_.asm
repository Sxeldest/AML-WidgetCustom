; =========================================================
; Game Engine Function: _ZN14RQVertexBuffer3SetEPS_
; Address            : 0x1D270C - 0x1D27E0
; =========================================================

1D270C:  PUSH            {R4,R6,R7,LR}
1D270E:  ADD             R7, SP, #8
1D2710:  MOV             R4, R0
1D2712:  LDR             R0, =(_ZN13RQVertexState8curStateE_ptr - 0x1D2718)
1D2714:  ADD             R0, PC; _ZN13RQVertexState8curStateE_ptr
1D2716:  LDR             R0, [R0]; RQVertexState::curState ...
1D2718:  LDR             R0, [R0]; RQVertexState::curState
1D271A:  CMP             R0, #0
1D271C:  ITT NE
1D271E:  MOVNE           R0, #0; this
1D2720:  BLXNE           j__ZN13RQVertexState5ApplyEPS_; RQVertexState::Apply(RQVertexState*)
1D2724:  LDR             R0, =(_ZN14RQVertexBuffer9curBufferE_ptr - 0x1D272A)
1D2726:  ADD             R0, PC; _ZN14RQVertexBuffer9curBufferE_ptr
1D2728:  LDR             R0, [R0]; RQVertexBuffer::curBuffer ...
1D272A:  LDR             R0, [R0]; RQVertexBuffer::curBuffer
1D272C:  CMP             R0, R4
1D272E:  BEQ             locret_1D27DE
1D2730:  LDR             R0, =(renderQueue_ptr - 0x1D2738)
1D2732:  LDR             R1, =(_ZN14RQVertexBuffer9curBufferE_ptr - 0x1D273C)
1D2734:  ADD             R0, PC; renderQueue_ptr
1D2736:  LDR             R2, =(bufferChanged_ptr - 0x1D273E)
1D2738:  ADD             R1, PC; _ZN14RQVertexBuffer9curBufferE_ptr
1D273A:  ADD             R2, PC; bufferChanged_ptr
1D273C:  LDR             R0, [R0]; renderQueue
1D273E:  LDR             R1, [R1]; RQVertexBuffer::curBuffer ...
1D2740:  LDR             R2, [R2]; bufferChanged
1D2742:  LDR             R3, [R0]
1D2744:  STR             R4, [R1]; RQVertexBuffer::curBuffer
1D2746:  MOVS            R1, #1
1D2748:  STRB            R1, [R2]
1D274A:  MOVS            R2, #0
1D274C:  LDR.W           R1, [R3,#0x274]
1D2750:  STR.W           R2, [R3,#0x278]
1D2754:  STR             R2, [R1]
1D2756:  LDR.W           R1, [R3,#0x274]
1D275A:  ADDS            R1, #4
1D275C:  STR.W           R1, [R3,#0x274]
1D2760:  LDR             R1, [R0]
1D2762:  LDR.W           R2, [R1,#0x274]
1D2766:  STR             R4, [R2]
1D2768:  LDR.W           R2, [R1,#0x274]
1D276C:  ADDS            R2, #4
1D276E:  STR.W           R2, [R1,#0x274]
1D2772:  LDR             R4, [R0]
1D2774:  LDRB.W          R0, [R4,#0x259]
1D2778:  CMP             R0, #0
1D277A:  ITT NE
1D277C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D2780:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D2784:  LDRD.W          R1, R2, [R4,#0x270]
1D2788:  ADD.W           R0, R4, #0x270
1D278C:  DMB.W           ISH
1D2790:  SUBS            R1, R2, R1
1D2792:  LDREX.W         R2, [R0]
1D2796:  ADD             R2, R1
1D2798:  STREX.W         R3, R2, [R0]
1D279C:  CMP             R3, #0
1D279E:  BNE             loc_1D2792
1D27A0:  DMB.W           ISH
1D27A4:  LDRB.W          R0, [R4,#0x259]
1D27A8:  CMP             R0, #0
1D27AA:  ITT NE
1D27AC:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D27B0:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D27B4:  LDRB.W          R0, [R4,#0x258]
1D27B8:  CMP             R0, #0
1D27BA:  ITT EQ
1D27BC:  MOVEQ           R0, R4; this
1D27BE:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D27C2:  LDR.W           R1, [R4,#0x270]
1D27C6:  LDR.W           R0, [R4,#0x264]
1D27CA:  ADD.W           R1, R1, #0x400
1D27CE:  CMP             R1, R0
1D27D0:  IT LS
1D27D2:  POPLS           {R4,R6,R7,PC}
1D27D4:  MOV             R0, R4; this
1D27D6:  POP.W           {R4,R6,R7,LR}
1D27DA:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
1D27DE:  POP             {R4,R6,R7,PC}
