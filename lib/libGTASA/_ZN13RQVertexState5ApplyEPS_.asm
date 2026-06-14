; =========================================================
; Game Engine Function: _ZN13RQVertexState5ApplyEPS_
; Address            : 0x1D27F4 - 0x1D28CC
; =========================================================

1D27F4:  PUSH            {R4,R5,R7,LR}
1D27F6:  ADD             R7, SP, #8
1D27F8:  MOV             R4, R0
1D27FA:  LDR             R0, =(_ZN13RQVertexState8curStateE_ptr - 0x1D2800)
1D27FC:  ADD             R0, PC; _ZN13RQVertexState8curStateE_ptr
1D27FE:  LDR             R0, [R0]; RQVertexState::curState ...
1D2800:  LDR             R0, [R0]; RQVertexState::curState
1D2802:  CMP             R0, R4
1D2804:  BEQ             locret_1D28CA
1D2806:  LDR             R0, =(renderQueue_ptr - 0x1D280E)
1D2808:  MOVS            R3, #0xB
1D280A:  ADD             R0, PC; renderQueue_ptr
1D280C:  LDR             R0, [R0]; renderQueue
1D280E:  LDR             R1, [R0]
1D2810:  LDR.W           R2, [R1,#0x274]
1D2814:  STR.W           R3, [R1,#0x278]
1D2818:  STR             R3, [R2]
1D281A:  LDR.W           R2, [R1,#0x274]
1D281E:  ADDS            R2, #4
1D2820:  STR.W           R2, [R1,#0x274]
1D2824:  LDR             R1, [R0]
1D2826:  LDR.W           R2, [R1,#0x274]
1D282A:  STR             R4, [R2]
1D282C:  LDR.W           R2, [R1,#0x274]
1D2830:  ADDS            R2, #4
1D2832:  STR.W           R2, [R1,#0x274]
1D2836:  LDR             R5, [R0]
1D2838:  LDRB.W          R0, [R5,#0x259]
1D283C:  CMP             R0, #0
1D283E:  ITT NE
1D2840:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D2844:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D2848:  LDRD.W          R1, R2, [R5,#0x270]
1D284C:  ADD.W           R0, R5, #0x270
1D2850:  DMB.W           ISH
1D2854:  SUBS            R1, R2, R1
1D2856:  LDREX.W         R2, [R0]
1D285A:  ADD             R2, R1
1D285C:  STREX.W         R3, R2, [R0]
1D2860:  CMP             R3, #0
1D2862:  BNE             loc_1D2856
1D2864:  DMB.W           ISH
1D2868:  LDRB.W          R0, [R5,#0x259]
1D286C:  CMP             R0, #0
1D286E:  ITT NE
1D2870:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D2874:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D2878:  LDRB.W          R0, [R5,#0x258]
1D287C:  CMP             R0, #0
1D287E:  ITT EQ
1D2880:  MOVEQ           R0, R5; this
1D2882:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D2886:  LDR.W           R1, [R5,#0x270]
1D288A:  LDR.W           R0, [R5,#0x264]
1D288E:  ADD.W           R1, R1, #0x400
1D2892:  CMP             R1, R0
1D2894:  ITT HI
1D2896:  MOVHI           R0, R5; this
1D2898:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D289C:  LDR             R0, =(_ZN13RQVertexState8curStateE_ptr - 0x1D28A4)
1D289E:  CMP             R4, #0
1D28A0:  ADD             R0, PC; _ZN13RQVertexState8curStateE_ptr
1D28A2:  LDR             R0, [R0]; RQVertexState::curState ...
1D28A4:  STR             R4, [R0]; RQVertexState::curState
1D28A6:  IT EQ
1D28A8:  POPEQ           {R4,R5,R7,PC}
1D28AA:  LDR             R0, =(_ZN14RQVertexBuffer9curBufferE_ptr - 0x1D28B8)
1D28AC:  MOV.W           R3, #0xFFFFFFFF
1D28B0:  LDR             R1, =(cachedDescription_ptr - 0x1D28BA)
1D28B2:  LDR             R2, =(_ZN13RQIndexBuffer9curBufferE_ptr - 0x1D28BC)
1D28B4:  ADD             R0, PC; _ZN14RQVertexBuffer9curBufferE_ptr
1D28B6:  ADD             R1, PC; cachedDescription_ptr
1D28B8:  ADD             R2, PC; _ZN13RQIndexBuffer9curBufferE_ptr
1D28BA:  LDR             R0, [R0]; RQVertexBuffer::curBuffer ...
1D28BC:  LDR             R1, [R1]; cachedDescription
1D28BE:  LDR             R2, [R2]; RQIndexBuffer::curBuffer ...
1D28C0:  STR             R3, [R0]; RQVertexBuffer::curBuffer
1D28C2:  MOVW            R0, #0xFFFF
1D28C6:  STR             R0, [R1,#(dword_6BCC68 - 0x6BCC64)]
1D28C8:  STR             R3, [R2]; RQIndexBuffer::curBuffer
1D28CA:  POP             {R4,R5,R7,PC}
