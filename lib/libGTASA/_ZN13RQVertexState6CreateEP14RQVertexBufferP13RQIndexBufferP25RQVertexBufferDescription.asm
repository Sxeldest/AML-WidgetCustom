; =========================================================
; Game Engine Function: _ZN13RQVertexState6CreateEP14RQVertexBufferP13RQIndexBufferP25RQVertexBufferDescription
; Address            : 0x1CBC74 - 0x1CBD74
; =========================================================

1CBC74:  PUSH            {R4-R7,LR}
1CBC76:  ADD             R7, SP, #0xC
1CBC78:  PUSH.W          {R8,R9,R11}
1CBC7C:  MOV             R5, R0
1CBC7E:  MOVS            R0, #8; unsigned int
1CBC80:  MOV             R8, R2
1CBC82:  MOV             R9, R1
1CBC84:  BLX             _Znwj; operator new(uint)
1CBC88:  LDR             R1, =(_ZTV14ES2VertexState_ptr - 0x1CBC94)
1CBC8A:  MOV             R4, R0
1CBC8C:  LDR             R0, =(renderQueue_ptr - 0x1CBC96)
1CBC8E:  MOVS            R2, #0xA
1CBC90:  ADD             R1, PC; _ZTV14ES2VertexState_ptr
1CBC92:  ADD             R0, PC; renderQueue_ptr
1CBC94:  LDR             R6, [R0]; renderQueue
1CBC96:  LDR             R0, [R1]; `vtable for'ES2VertexState ...
1CBC98:  MOVS            R1, #0
1CBC9A:  ADDS            R0, #8
1CBC9C:  STRD.W          R0, R1, [R4]
1CBCA0:  LDR             R0, [R6]
1CBCA2:  LDR.W           R1, [R0,#0x274]
1CBCA6:  STR.W           R2, [R0,#0x278]
1CBCAA:  STR             R2, [R1]
1CBCAC:  MOVS            R2, #0x8C; size_t
1CBCAE:  LDR.W           R1, [R0,#0x274]
1CBCB2:  ADDS            R1, #4
1CBCB4:  STR.W           R1, [R0,#0x274]
1CBCB8:  LDR             R0, [R6]
1CBCBA:  LDR.W           R1, [R0,#0x274]
1CBCBE:  STR             R4, [R1]
1CBCC0:  LDR.W           R1, [R0,#0x274]
1CBCC4:  ADDS            R1, #4
1CBCC6:  STR.W           R1, [R0,#0x274]
1CBCCA:  LDR             R0, [R6]
1CBCCC:  LDR.W           R1, [R0,#0x274]
1CBCD0:  STR             R5, [R1]
1CBCD2:  LDR.W           R1, [R0,#0x274]
1CBCD6:  ADDS            R1, #4
1CBCD8:  STR.W           R1, [R0,#0x274]
1CBCDC:  LDR             R0, [R6]
1CBCDE:  LDR.W           R1, [R0,#0x274]
1CBCE2:  STR.W           R9, [R1]
1CBCE6:  LDR.W           R1, [R0,#0x274]
1CBCEA:  ADDS            R1, #4
1CBCEC:  STR.W           R1, [R0,#0x274]
1CBCF0:  LDR             R5, [R6]
1CBCF2:  MOV             R1, R8; void *
1CBCF4:  LDR.W           R0, [R5,#0x274]; void *
1CBCF8:  BLX             memcpy_1
1CBCFC:  LDR.W           R0, [R5,#0x274]
1CBD00:  ADDS            R0, #0x8C
1CBD02:  STR.W           R0, [R5,#0x274]
1CBD06:  LDR             R5, [R6]
1CBD08:  LDRB.W          R0, [R5,#0x259]
1CBD0C:  CMP             R0, #0
1CBD0E:  ITT NE
1CBD10:  LDRNE.W         R0, [R5,#0x25C]; mutex
1CBD14:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1CBD18:  LDRD.W          R1, R2, [R5,#0x270]
1CBD1C:  ADD.W           R0, R5, #0x270
1CBD20:  DMB.W           ISH
1CBD24:  SUBS            R1, R2, R1
1CBD26:  LDREX.W         R2, [R0]
1CBD2A:  ADD             R2, R1
1CBD2C:  STREX.W         R3, R2, [R0]
1CBD30:  CMP             R3, #0
1CBD32:  BNE             loc_1CBD26
1CBD34:  DMB.W           ISH
1CBD38:  LDRB.W          R0, [R5,#0x259]
1CBD3C:  CMP             R0, #0
1CBD3E:  ITT NE
1CBD40:  LDRNE.W         R0, [R5,#0x25C]; mutex
1CBD44:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1CBD48:  LDRB.W          R0, [R5,#0x258]
1CBD4C:  CMP             R0, #0
1CBD4E:  ITT EQ
1CBD50:  MOVEQ           R0, R5; this
1CBD52:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1CBD56:  LDR.W           R1, [R5,#0x270]
1CBD5A:  LDR.W           R0, [R5,#0x264]
1CBD5E:  ADD.W           R1, R1, #0x400
1CBD62:  CMP             R1, R0
1CBD64:  ITT HI
1CBD66:  MOVHI           R0, R5; this
1CBD68:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1CBD6C:  MOV             R0, R4
1CBD6E:  POP.W           {R8,R9,R11}
1CBD72:  POP             {R4-R7,PC}
