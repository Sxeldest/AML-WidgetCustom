; =========================================================
; Game Engine Function: _ZN14RQRenderTarget6DeleteEPS_
; Address            : 0x1D0BB0 - 0x1D0D00
; =========================================================

1D0BB0:  PUSH            {R4,R5,R7,LR}
1D0BB2:  ADD             R7, SP, #8
1D0BB4:  MOV             R4, R0
1D0BB6:  LDR             R0, =(_ZN14RQRenderTarget8selectedE_ptr - 0x1D0BBC)
1D0BB8:  ADD             R0, PC; _ZN14RQRenderTarget8selectedE_ptr
1D0BBA:  LDR             R0, [R0]; RQRenderTarget::selected ...
1D0BBC:  LDR             R0, [R0]; RQRenderTarget::selected
1D0BBE:  CMP             R0, R4
1D0BC0:  BNE             loc_1D0C64
1D0BC2:  LDR             R0, =(renderQueue_ptr - 0x1D0BCA)
1D0BC4:  MOVS            R3, #0x1B
1D0BC6:  ADD             R0, PC; renderQueue_ptr
1D0BC8:  LDR             R0, [R0]; renderQueue
1D0BCA:  LDR             R1, [R0]
1D0BCC:  LDR.W           R2, [R1,#0x274]
1D0BD0:  STR.W           R3, [R1,#0x278]
1D0BD4:  STR             R3, [R2]
1D0BD6:  MOVS            R3, #0
1D0BD8:  LDR.W           R2, [R1,#0x274]
1D0BDC:  ADDS            R2, #4
1D0BDE:  STR.W           R2, [R1,#0x274]
1D0BE2:  LDR             R1, [R0]
1D0BE4:  LDR.W           R2, [R1,#0x274]
1D0BE8:  STR             R3, [R2]
1D0BEA:  LDR.W           R2, [R1,#0x274]
1D0BEE:  ADDS            R2, #4
1D0BF0:  STR.W           R2, [R1,#0x274]
1D0BF4:  LDR             R5, [R0]
1D0BF6:  LDRB.W          R0, [R5,#0x259]
1D0BFA:  CMP             R0, #0
1D0BFC:  ITT NE
1D0BFE:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D0C02:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D0C06:  LDRD.W          R1, R2, [R5,#0x270]
1D0C0A:  ADD.W           R0, R5, #0x270
1D0C0E:  DMB.W           ISH
1D0C12:  SUBS            R1, R2, R1
1D0C14:  LDREX.W         R2, [R0]
1D0C18:  ADD             R2, R1
1D0C1A:  STREX.W         R3, R2, [R0]
1D0C1E:  CMP             R3, #0
1D0C20:  BNE             loc_1D0C14
1D0C22:  DMB.W           ISH
1D0C26:  LDRB.W          R0, [R5,#0x259]
1D0C2A:  CMP             R0, #0
1D0C2C:  ITT NE
1D0C2E:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D0C32:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D0C36:  LDRB.W          R0, [R5,#0x258]
1D0C3A:  CMP             R0, #0
1D0C3C:  ITT EQ
1D0C3E:  MOVEQ           R0, R5; this
1D0C40:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D0C44:  LDR.W           R1, [R5,#0x270]
1D0C48:  LDR.W           R0, [R5,#0x264]
1D0C4C:  ADD.W           R1, R1, #0x400
1D0C50:  CMP             R1, R0
1D0C52:  ITT HI
1D0C54:  MOVHI           R0, R5; this
1D0C56:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D0C5A:  LDR             R0, =(_ZN14RQRenderTarget8selectedE_ptr - 0x1D0C62)
1D0C5C:  MOVS            R1, #0
1D0C5E:  ADD             R0, PC; _ZN14RQRenderTarget8selectedE_ptr
1D0C60:  LDR             R0, [R0]; RQRenderTarget::selected ...
1D0C62:  STR             R1, [R0]; RQRenderTarget::selected
1D0C64:  LDR             R0, =(renderQueue_ptr - 0x1D0C6C)
1D0C66:  MOVS            R3, #0x1C
1D0C68:  ADD             R0, PC; renderQueue_ptr
1D0C6A:  LDR             R0, [R0]; renderQueue
1D0C6C:  LDR             R1, [R0]
1D0C6E:  LDR.W           R2, [R1,#0x274]
1D0C72:  STR.W           R3, [R1,#0x278]
1D0C76:  STR             R3, [R2]
1D0C78:  LDR.W           R2, [R1,#0x274]
1D0C7C:  ADDS            R2, #4
1D0C7E:  STR.W           R2, [R1,#0x274]
1D0C82:  LDR             R1, [R0]
1D0C84:  LDR.W           R2, [R1,#0x274]
1D0C88:  STR             R4, [R2]
1D0C8A:  LDR.W           R2, [R1,#0x274]
1D0C8E:  ADDS            R2, #4
1D0C90:  STR.W           R2, [R1,#0x274]
1D0C94:  LDR             R4, [R0]
1D0C96:  LDRB.W          R0, [R4,#0x259]
1D0C9A:  CMP             R0, #0
1D0C9C:  ITT NE
1D0C9E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D0CA2:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D0CA6:  LDRD.W          R1, R2, [R4,#0x270]
1D0CAA:  ADD.W           R0, R4, #0x270
1D0CAE:  DMB.W           ISH
1D0CB2:  SUBS            R1, R2, R1
1D0CB4:  LDREX.W         R2, [R0]
1D0CB8:  ADD             R2, R1
1D0CBA:  STREX.W         R3, R2, [R0]
1D0CBE:  CMP             R3, #0
1D0CC0:  BNE             loc_1D0CB4
1D0CC2:  DMB.W           ISH
1D0CC6:  LDRB.W          R0, [R4,#0x259]
1D0CCA:  CMP             R0, #0
1D0CCC:  ITT NE
1D0CCE:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D0CD2:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D0CD6:  LDRB.W          R0, [R4,#0x258]
1D0CDA:  CMP             R0, #0
1D0CDC:  ITT EQ
1D0CDE:  MOVEQ           R0, R4; this
1D0CE0:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D0CE4:  LDR.W           R1, [R4,#0x270]
1D0CE8:  LDR.W           R0, [R4,#0x264]
1D0CEC:  ADD.W           R1, R1, #0x400
1D0CF0:  CMP             R1, R0
1D0CF2:  IT LS
1D0CF4:  POPLS           {R4,R5,R7,PC}
1D0CF6:  MOV             R0, R4; this
1D0CF8:  POP.W           {R4,R5,R7,LR}
1D0CFC:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
