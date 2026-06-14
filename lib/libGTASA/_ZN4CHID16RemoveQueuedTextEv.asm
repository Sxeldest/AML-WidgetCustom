; =========================================================
; Game Engine Function: _ZN4CHID16RemoveQueuedTextEv
; Address            : 0x28C3FC - 0x28C41A
; =========================================================

28C3FC:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C404)
28C3FE:  LDR             R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C406)
28C400:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C402:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C404:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C406:  LDR             R1, [R1]; CHID::m_pInstance ...
28C408:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C40A:  LDR.W           R0, [R1,R0,LSL#2]
28C40E:  CMP             R0, #0
28C410:  IT EQ
28C412:  BXEQ            LR
28C414:  LDR             R1, [R0]
28C416:  LDR             R1, [R1,#0x44]
28C418:  BX              R1
