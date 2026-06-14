; =========================================================
; Game Engine Function: _ZN14RQVertexBuffer6CreateEPKvj
; Address            : 0x1CB734 - 0x1CB808
; =========================================================

1CB734:  PUSH            {R4-R7,LR}
1CB736:  ADD             R7, SP, #0xC
1CB738:  PUSH.W          {R8}
1CB73C:  MOV             R5, R0
1CB73E:  MOVS            R0, #0xC; unsigned int
1CB740:  MOV             R8, R1
1CB742:  BLX             _Znwj; operator new(uint)
1CB746:  LDR             R1, =(_ZTV15ES2VertexBuffer_ptr - 0x1CB752)
1CB748:  MOV             R6, R0
1CB74A:  LDR             R0, =(renderQueue_ptr - 0x1CB756)
1CB74C:  MOVS            R3, #0
1CB74E:  ADD             R1, PC; _ZTV15ES2VertexBuffer_ptr
1CB750:  LDR             R2, =(_ZN14RQVertexBuffer9curBufferE_ptr - 0x1CB75C)
1CB752:  ADD             R0, PC; renderQueue_ptr
1CB754:  STRD.W          R3, R3, [R6,#4]
1CB758:  ADD             R2, PC; _ZN14RQVertexBuffer9curBufferE_ptr
1CB75A:  LDR             R1, [R1]; `vtable for'ES2VertexBuffer ...
1CB75C:  LDR             R0, [R0]; renderQueue
1CB75E:  MOVS            R3, #1
1CB760:  LDR             R2, [R2]; RQVertexBuffer::curBuffer ...
1CB762:  ADDS            R1, #8
1CB764:  STR             R1, [R6]
1CB766:  LDR             R1, [R0]
1CB768:  STR             R6, [R2]; RQVertexBuffer::curBuffer
1CB76A:  LDR.W           R2, [R1,#0x274]
1CB76E:  STR.W           R3, [R1,#0x278]
1CB772:  STR             R3, [R2]
1CB774:  LDR.W           R2, [R1,#0x274]
1CB778:  ADDS            R2, #4
1CB77A:  STR.W           R2, [R1,#0x274]
1CB77E:  LDR             R1, [R0]
1CB780:  LDR.W           R2, [R1,#0x274]
1CB784:  STR             R6, [R2]
1CB786:  LDR.W           R2, [R1,#0x274]
1CB78A:  ADDS            R2, #4
1CB78C:  STR.W           R2, [R1,#0x274]
1CB790:  LDR             R4, [R0]
1CB792:  LDRB.W          R0, [R4,#0x259]
1CB796:  CMP             R0, #0
1CB798:  ITT NE
1CB79A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CB79E:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1CB7A2:  LDRD.W          R1, R2, [R4,#0x270]
1CB7A6:  ADD.W           R0, R4, #0x270
1CB7AA:  DMB.W           ISH
1CB7AE:  SUBS            R1, R2, R1
1CB7B0:  LDREX.W         R2, [R0]
1CB7B4:  ADD             R2, R1
1CB7B6:  STREX.W         R3, R2, [R0]
1CB7BA:  CMP             R3, #0
1CB7BC:  BNE             loc_1CB7B0
1CB7BE:  DMB.W           ISH
1CB7C2:  LDRB.W          R0, [R4,#0x259]
1CB7C6:  CMP             R0, #0
1CB7C8:  ITT NE
1CB7CA:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CB7CE:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1CB7D2:  LDRB.W          R0, [R4,#0x258]
1CB7D6:  CMP             R0, #0
1CB7D8:  ITT EQ
1CB7DA:  MOVEQ           R0, R4; this
1CB7DC:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1CB7E0:  LDR.W           R1, [R4,#0x270]
1CB7E4:  LDR.W           R0, [R4,#0x264]
1CB7E8:  ADD.W           R1, R1, #0x400
1CB7EC:  CMP             R1, R0
1CB7EE:  ITT HI
1CB7F0:  MOVHI           R0, R4; this
1CB7F2:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1CB7F6:  MOV             R0, R6; this
1CB7F8:  MOV             R1, R5; void *
1CB7FA:  MOV             R2, R8; unsigned int
1CB7FC:  BLX             j__ZN14RQVertexBuffer6UpdateEPKvj; RQVertexBuffer::Update(void const*,uint)
1CB800:  MOV             R0, R6
1CB802:  POP.W           {R8}
1CB806:  POP             {R4-R7,PC}
