; =========================================================
; Game Engine Function: _ZN14RQRenderTarget8ViewportEiijj
; Address            : 0x1D3BB8 - 0x1D3C9E
; =========================================================

1D3BB8:  PUSH            {R4,R5,R7,LR}
1D3BBA:  ADD             R7, SP, #8
1D3BBC:  LDR             R4, =(renderQueue_ptr - 0x1D3BC4)
1D3BBE:  MOVS            R5, #0x1D
1D3BC0:  ADD             R4, PC; renderQueue_ptr
1D3BC2:  LDR.W           R12, [R4]; renderQueue
1D3BC6:  LDR.W           R4, [R12]
1D3BCA:  LDR.W           LR, [R4,#0x274]
1D3BCE:  STR.W           R5, [R4,#0x278]
1D3BD2:  STR.W           R5, [LR]
1D3BD6:  LDR.W           R5, [R4,#0x274]
1D3BDA:  ADDS            R5, #4
1D3BDC:  STR.W           R5, [R4,#0x274]
1D3BE0:  LDR.W           R5, [R12]
1D3BE4:  LDR.W           R4, [R5,#0x274]
1D3BE8:  STR             R0, [R4]
1D3BEA:  LDR.W           R0, [R5,#0x274]
1D3BEE:  ADDS            R0, #4
1D3BF0:  STR.W           R0, [R5,#0x274]
1D3BF4:  LDR.W           R0, [R12]
1D3BF8:  LDR.W           R5, [R0,#0x274]
1D3BFC:  STR             R1, [R5]
1D3BFE:  LDR.W           R1, [R0,#0x274]
1D3C02:  ADDS            R1, #4
1D3C04:  STR.W           R1, [R0,#0x274]
1D3C08:  LDR.W           R0, [R12]
1D3C0C:  LDR.W           R1, [R0,#0x274]
1D3C10:  STR             R2, [R1]
1D3C12:  LDR.W           R1, [R0,#0x274]
1D3C16:  ADDS            R1, #4
1D3C18:  STR.W           R1, [R0,#0x274]
1D3C1C:  LDR.W           R0, [R12]
1D3C20:  LDR.W           R1, [R0,#0x274]
1D3C24:  STR             R3, [R1]
1D3C26:  LDR.W           R1, [R0,#0x274]
1D3C2A:  ADDS            R1, #4
1D3C2C:  STR.W           R1, [R0,#0x274]
1D3C30:  LDR.W           R4, [R12]
1D3C34:  LDRB.W          R0, [R4,#0x259]
1D3C38:  CMP             R0, #0
1D3C3A:  ITT NE
1D3C3C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3C40:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D3C44:  LDRD.W          R1, R2, [R4,#0x270]
1D3C48:  ADD.W           R0, R4, #0x270
1D3C4C:  DMB.W           ISH
1D3C50:  SUBS            R1, R2, R1
1D3C52:  LDREX.W         R2, [R0]
1D3C56:  ADD             R2, R1
1D3C58:  STREX.W         R3, R2, [R0]
1D3C5C:  CMP             R3, #0
1D3C5E:  BNE             loc_1D3C52
1D3C60:  DMB.W           ISH
1D3C64:  LDRB.W          R0, [R4,#0x259]
1D3C68:  CMP             R0, #0
1D3C6A:  ITT NE
1D3C6C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D3C70:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D3C74:  LDRB.W          R0, [R4,#0x258]
1D3C78:  CMP             R0, #0
1D3C7A:  ITT EQ
1D3C7C:  MOVEQ           R0, R4; this
1D3C7E:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D3C82:  LDR.W           R1, [R4,#0x270]
1D3C86:  LDR.W           R0, [R4,#0x264]
1D3C8A:  ADD.W           R1, R1, #0x400
1D3C8E:  CMP             R1, R0
1D3C90:  IT LS
1D3C92:  POPLS           {R4,R5,R7,PC}
1D3C94:  MOV             R0, R4; this
1D3C96:  POP.W           {R4,R5,R7,LR}
1D3C9A:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
