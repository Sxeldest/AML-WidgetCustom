; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard22RestoreDefaultMappingsEv
; Address            : 0x295BA0 - 0x295BCE
; =========================================================

295BA0:  LDR             R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x295BA6)
295BA2:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
295BA4:  LDR             R0, [R0]; CHID::m_pInstance ...
295BA6:  LDR             R0, [R0]; this
295BA8:  CMP             R0, #0
295BAA:  IT EQ
295BAC:  BXEQ            LR
295BAE:  PUSH            {R7,LR}
295BB0:  MOV             R7, SP
295BB2:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
295BB6:  CMP             R0, #2
295BB8:  POP.W           {R7,LR}
295BBC:  BNE             locret_295BCC
295BBE:  LDR             R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x295BC4)
295BC0:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
295BC2:  LDR             R0, [R0]; CHID::m_pInstance ...
295BC4:  LDR             R0, [R0]; CHID::m_pInstance
295BC6:  LDR             R1, [R0]
295BC8:  LDR             R1, [R1,#0x58]
295BCA:  BX              R1
295BCC:  BX              LR
