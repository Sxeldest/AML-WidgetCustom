; =========================================================
; Game Engine Function: _ZN13RQIndexBuffer6CreateE19RQIndexBufferFormatPKvj
; Address            : 0x1CB9D4 - 0x1CBAAC
; =========================================================

1CB9D4:  PUSH            {R4-R7,LR}
1CB9D6:  ADD             R7, SP, #0xC
1CB9D8:  PUSH.W          {R8}
1CB9DC:  MOV             R4, R0
1CB9DE:  MOVS            R0, #0x10; unsigned int
1CB9E0:  MOV             R8, R2
1CB9E2:  MOV             R5, R1
1CB9E4:  BLX             _Znwj; operator new(uint)
1CB9E8:  MOV             R6, R0
1CB9EA:  LDR             R0, =(renderQueue_ptr - 0x1CB9F4)
1CB9EC:  LDR             R1, =(_ZTV14ES2IndexBuffer_ptr - 0x1CB9F8)
1CB9EE:  MOVS            R3, #0
1CB9F0:  ADD             R0, PC; renderQueue_ptr
1CB9F2:  LDR             R2, =(_ZN13RQIndexBuffer9curBufferE_ptr - 0x1CB9FC)
1CB9F4:  ADD             R1, PC; _ZTV14ES2IndexBuffer_ptr
1CB9F6:  STR             R4, [R6,#4]
1CB9F8:  ADD             R2, PC; _ZN13RQIndexBuffer9curBufferE_ptr
1CB9FA:  LDR             R0, [R0]; renderQueue
1CB9FC:  LDR             R1, [R1]; `vtable for'ES2IndexBuffer ...
1CB9FE:  STRD.W          R3, R3, [R6,#8]
1CBA02:  MOVS            R3, #6
1CBA04:  LDR             R2, [R2]; RQIndexBuffer::curBuffer ...
1CBA06:  ADDS            R1, #8
1CBA08:  STR             R1, [R6]
1CBA0A:  LDR             R1, [R0]
1CBA0C:  STR             R6, [R2]; RQIndexBuffer::curBuffer
1CBA0E:  LDR.W           R2, [R1,#0x274]
1CBA12:  STR.W           R3, [R1,#0x278]
1CBA16:  STR             R3, [R2]
1CBA18:  LDR.W           R2, [R1,#0x274]
1CBA1C:  ADDS            R2, #4
1CBA1E:  STR.W           R2, [R1,#0x274]
1CBA22:  LDR             R1, [R0]
1CBA24:  LDR.W           R2, [R1,#0x274]
1CBA28:  STR             R6, [R2]
1CBA2A:  LDR.W           R2, [R1,#0x274]
1CBA2E:  ADDS            R2, #4
1CBA30:  STR.W           R2, [R1,#0x274]
1CBA34:  LDR             R4, [R0]
1CBA36:  LDRB.W          R0, [R4,#0x259]
1CBA3A:  CMP             R0, #0
1CBA3C:  ITT NE
1CBA3E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CBA42:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1CBA46:  LDRD.W          R1, R2, [R4,#0x270]
1CBA4A:  ADD.W           R0, R4, #0x270
1CBA4E:  DMB.W           ISH
1CBA52:  SUBS            R1, R2, R1
1CBA54:  LDREX.W         R2, [R0]
1CBA58:  ADD             R2, R1
1CBA5A:  STREX.W         R3, R2, [R0]
1CBA5E:  CMP             R3, #0
1CBA60:  BNE             loc_1CBA54
1CBA62:  DMB.W           ISH
1CBA66:  LDRB.W          R0, [R4,#0x259]
1CBA6A:  CMP             R0, #0
1CBA6C:  ITT NE
1CBA6E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CBA72:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1CBA76:  LDRB.W          R0, [R4,#0x258]
1CBA7A:  CMP             R0, #0
1CBA7C:  ITT EQ
1CBA7E:  MOVEQ           R0, R4; this
1CBA80:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1CBA84:  LDR.W           R1, [R4,#0x270]
1CBA88:  LDR.W           R0, [R4,#0x264]
1CBA8C:  ADD.W           R1, R1, #0x400
1CBA90:  CMP             R1, R0
1CBA92:  ITT HI
1CBA94:  MOVHI           R0, R4; this
1CBA96:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1CBA9A:  MOV             R0, R6; this
1CBA9C:  MOV             R1, R5; void *
1CBA9E:  MOV             R2, R8; unsigned int
1CBAA0:  BLX             j__ZN13RQIndexBuffer6UpdateEPKvj; RQIndexBuffer::Update(void const*,uint)
1CBAA4:  MOV             R0, R6
1CBAA6:  POP.W           {R8}
1CBAAA:  POP             {R4-R7,PC}
