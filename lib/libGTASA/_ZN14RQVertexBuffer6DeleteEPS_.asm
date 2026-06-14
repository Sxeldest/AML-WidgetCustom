; =========================================================
; Game Engine Function: _ZN14RQVertexBuffer6DeleteEPS_
; Address            : 0x1D2AE4 - 0x1D2C30
; =========================================================

1D2AE4:  PUSH            {R4,R5,R7,LR}
1D2AE6:  ADD             R7, SP, #8
1D2AE8:  MOV             R4, R0
1D2AEA:  LDR             R0, =(_ZN14RQVertexBuffer9curBufferE_ptr - 0x1D2AF0)
1D2AEC:  ADD             R0, PC; _ZN14RQVertexBuffer9curBufferE_ptr
1D2AEE:  LDR             R0, [R0]; RQVertexBuffer::curBuffer ...
1D2AF0:  LDR             R0, [R0]; RQVertexBuffer::curBuffer
1D2AF2:  CMP             R0, R4
1D2AF4:  BNE             loc_1D2B94
1D2AF6:  LDR             R0, =(renderQueue_ptr - 0x1D2B00)
1D2AF8:  MOVS            R3, #0
1D2AFA:  LDR             R1, =(_ZN14RQVertexBuffer9curBufferE_ptr - 0x1D2B02)
1D2AFC:  ADD             R0, PC; renderQueue_ptr
1D2AFE:  ADD             R1, PC; _ZN14RQVertexBuffer9curBufferE_ptr
1D2B00:  LDR             R0, [R0]; renderQueue
1D2B02:  LDR             R1, [R1]; RQVertexBuffer::curBuffer ...
1D2B04:  LDR             R2, [R0]
1D2B06:  STR             R3, [R1]; RQVertexBuffer::curBuffer
1D2B08:  LDR.W           R1, [R2,#0x274]
1D2B0C:  STR.W           R3, [R2,#0x278]
1D2B10:  STR             R3, [R1]
1D2B12:  LDR.W           R1, [R2,#0x274]
1D2B16:  ADDS            R1, #4
1D2B18:  STR.W           R1, [R2,#0x274]
1D2B1C:  LDR             R1, [R0]
1D2B1E:  LDR.W           R2, [R1,#0x274]
1D2B22:  STR             R3, [R2]
1D2B24:  LDR.W           R2, [R1,#0x274]
1D2B28:  ADDS            R2, #4
1D2B2A:  STR.W           R2, [R1,#0x274]
1D2B2E:  LDR             R5, [R0]
1D2B30:  LDRB.W          R0, [R5,#0x259]
1D2B34:  CMP             R0, #0
1D2B36:  ITT NE
1D2B38:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D2B3C:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D2B40:  LDRD.W          R1, R2, [R5,#0x270]
1D2B44:  ADD.W           R0, R5, #0x270
1D2B48:  DMB.W           ISH
1D2B4C:  SUBS            R1, R2, R1
1D2B4E:  LDREX.W         R2, [R0]
1D2B52:  ADD             R2, R1
1D2B54:  STREX.W         R3, R2, [R0]
1D2B58:  CMP             R3, #0
1D2B5A:  BNE             loc_1D2B4E
1D2B5C:  DMB.W           ISH
1D2B60:  LDRB.W          R0, [R5,#0x259]
1D2B64:  CMP             R0, #0
1D2B66:  ITT NE
1D2B68:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D2B6C:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D2B70:  LDRB.W          R0, [R5,#0x258]
1D2B74:  CMP             R0, #0
1D2B76:  ITT EQ
1D2B78:  MOVEQ           R0, R5; this
1D2B7A:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D2B7E:  LDR.W           R1, [R5,#0x270]
1D2B82:  LDR.W           R0, [R5,#0x264]
1D2B86:  ADD.W           R1, R1, #0x400
1D2B8A:  CMP             R1, R0
1D2B8C:  ITT HI
1D2B8E:  MOVHI           R0, R5; this
1D2B90:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D2B94:  LDR             R0, =(renderQueue_ptr - 0x1D2B9C)
1D2B96:  MOVS            R3, #4
1D2B98:  ADD             R0, PC; renderQueue_ptr
1D2B9A:  LDR             R0, [R0]; renderQueue
1D2B9C:  LDR             R1, [R0]
1D2B9E:  LDR.W           R2, [R1,#0x274]
1D2BA2:  STR.W           R3, [R1,#0x278]
1D2BA6:  STR             R3, [R2]
1D2BA8:  LDR.W           R2, [R1,#0x274]
1D2BAC:  ADDS            R2, #4
1D2BAE:  STR.W           R2, [R1,#0x274]
1D2BB2:  LDR             R1, [R0]
1D2BB4:  LDR.W           R2, [R1,#0x274]
1D2BB8:  STR             R4, [R2]
1D2BBA:  LDR.W           R2, [R1,#0x274]
1D2BBE:  ADDS            R2, #4
1D2BC0:  STR.W           R2, [R1,#0x274]
1D2BC4:  LDR             R4, [R0]
1D2BC6:  LDRB.W          R0, [R4,#0x259]
1D2BCA:  CMP             R0, #0
1D2BCC:  ITT NE
1D2BCE:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D2BD2:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D2BD6:  LDRD.W          R1, R2, [R4,#0x270]
1D2BDA:  ADD.W           R0, R4, #0x270
1D2BDE:  DMB.W           ISH
1D2BE2:  SUBS            R1, R2, R1
1D2BE4:  LDREX.W         R2, [R0]
1D2BE8:  ADD             R2, R1
1D2BEA:  STREX.W         R3, R2, [R0]
1D2BEE:  CMP             R3, #0
1D2BF0:  BNE             loc_1D2BE4
1D2BF2:  DMB.W           ISH
1D2BF6:  LDRB.W          R0, [R4,#0x259]
1D2BFA:  CMP             R0, #0
1D2BFC:  ITT NE
1D2BFE:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D2C02:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D2C06:  LDRB.W          R0, [R4,#0x258]
1D2C0A:  CMP             R0, #0
1D2C0C:  ITT EQ
1D2C0E:  MOVEQ           R0, R4; this
1D2C10:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D2C14:  LDR.W           R1, [R4,#0x270]
1D2C18:  LDR.W           R0, [R4,#0x264]
1D2C1C:  ADD.W           R1, R1, #0x400
1D2C20:  CMP             R1, R0
1D2C22:  IT LS
1D2C24:  POPLS           {R4,R5,R7,PC}
1D2C26:  MOV             R0, R4; this
1D2C28:  POP.W           {R4,R5,R7,LR}
1D2C2C:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
