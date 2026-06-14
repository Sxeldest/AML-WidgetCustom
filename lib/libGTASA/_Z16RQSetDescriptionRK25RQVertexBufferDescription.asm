; =========================================================
; Game Engine Function: _Z16RQSetDescriptionRK25RQVertexBufferDescription
; Address            : 0x1D31B4 - 0x1D32BA
; =========================================================

1D31B4:  PUSH            {R4-R7,LR}
1D31B6:  ADD             R7, SP, #0xC
1D31B8:  PUSH.W          {R11}
1D31BC:  MOV             R4, R0
1D31BE:  LDR             R0, =(_ZN13RQVertexState8curStateE_ptr - 0x1D31C4)
1D31C0:  ADD             R0, PC; _ZN13RQVertexState8curStateE_ptr
1D31C2:  LDR             R0, [R0]; RQVertexState::curState ...
1D31C4:  LDR             R0, [R0]; RQVertexState::curState
1D31C6:  CMP             R0, #0
1D31C8:  ITT NE
1D31CA:  MOVNE           R0, #0; this
1D31CC:  BLXNE           j__ZN13RQVertexState5ApplyEPS_; RQVertexState::Apply(RQVertexState*)
1D31D0:  LDR             R0, =(cachedDescription_ptr - 0x1D31D8)
1D31D2:  MOVS            R2, #0x8C; size_t
1D31D4:  ADD             R0, PC; cachedDescription_ptr
1D31D6:  LDR             R1, [R0]; cachedDescription ; void *
1D31D8:  MOV             R0, R4; void *
1D31DA:  BLX             memcmp
1D31DE:  LDR             R1, =(bufferChanged_ptr - 0x1D31E6)
1D31E0:  CMP             R0, #0
1D31E2:  ADD             R1, PC; bufferChanged_ptr
1D31E4:  LDR             R1, [R1]; bufferChanged
1D31E6:  LDRB            R5, [R1]
1D31E8:  IT EQ
1D31EA:  CMPEQ           R5, #0
1D31EC:  BEQ             loc_1D32B4
1D31EE:  LDR             R0, =(cachedDescription_ptr - 0x1D31F8)
1D31F0:  MOV             R1, R4; void *
1D31F2:  MOVS            R2, #0x8C; size_t
1D31F4:  ADD             R0, PC; cachedDescription_ptr
1D31F6:  LDR             R0, [R0]; cachedDescription ; void *
1D31F8:  BLX             memcpy_0
1D31FC:  LDR             R0, =(renderQueue_ptr - 0x1D3204)
1D31FE:  MOVS            R2, #0xD
1D3200:  ADD             R0, PC; renderQueue_ptr
1D3202:  LDR             R6, [R0]; renderQueue
1D3204:  LDR             R0, [R6]
1D3206:  LDR.W           R1, [R0,#0x274]
1D320A:  STR.W           R2, [R0,#0x278]
1D320E:  STR             R2, [R1]
1D3210:  MOVS            R2, #0x8C; size_t
1D3212:  LDR.W           R1, [R0,#0x274]
1D3216:  ADDS            R1, #4
1D3218:  STR.W           R1, [R0,#0x274]
1D321C:  LDR             R0, [R6]
1D321E:  LDR.W           R1, [R0,#0x274]
1D3222:  STR             R5, [R1]
1D3224:  LDR.W           R1, [R0,#0x274]
1D3228:  ADDS            R1, #4
1D322A:  STR.W           R1, [R0,#0x274]
1D322E:  LDR             R5, [R6]
1D3230:  MOV             R1, R4; void *
1D3232:  LDR.W           R0, [R5,#0x274]; void *
1D3236:  BLX             memcpy_1
1D323A:  LDR.W           R0, [R5,#0x274]
1D323E:  ADDS            R0, #0x8C
1D3240:  STR.W           R0, [R5,#0x274]
1D3244:  LDR             R4, [R6]
1D3246:  LDRB.W          R0, [R4,#0x259]
1D324A:  CMP             R0, #0
1D324C:  ITT NE
1D324E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3252:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D3256:  LDRD.W          R1, R2, [R4,#0x270]
1D325A:  ADD.W           R0, R4, #0x270
1D325E:  DMB.W           ISH
1D3262:  SUBS            R1, R2, R1
1D3264:  LDREX.W         R2, [R0]
1D3268:  ADD             R2, R1
1D326A:  STREX.W         R3, R2, [R0]
1D326E:  CMP             R3, #0
1D3270:  BNE             loc_1D3264
1D3272:  DMB.W           ISH
1D3276:  LDRB.W          R0, [R4,#0x259]
1D327A:  CMP             R0, #0
1D327C:  ITT NE
1D327E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3282:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D3286:  LDRB.W          R0, [R4,#0x258]
1D328A:  CMP             R0, #0
1D328C:  ITT EQ
1D328E:  MOVEQ           R0, R4; this
1D3290:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D3294:  LDR.W           R1, [R4,#0x270]
1D3298:  LDR.W           R0, [R4,#0x264]
1D329C:  ADD.W           R1, R1, #0x400
1D32A0:  CMP             R1, R0
1D32A2:  ITT HI
1D32A4:  MOVHI           R0, R4; this
1D32A6:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D32AA:  LDR             R0, =(bufferChanged_ptr - 0x1D32B2)
1D32AC:  MOVS            R1, #0
1D32AE:  ADD             R0, PC; bufferChanged_ptr
1D32B0:  LDR             R0, [R0]; bufferChanged
1D32B2:  STRB            R1, [R0]
1D32B4:  POP.W           {R11}
1D32B8:  POP             {R4-R7,PC}
