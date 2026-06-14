; =========================================================
; Game Engine Function: _ZN4CHID8ReplacesE10HIDMapping
; Address            : 0x28C09C - 0x28C0BE
; =========================================================

28C09C:  MOV             R1, R0
28C09E:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C0A6)
28C0A0:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C0A8)
28C0A2:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C0A4:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C0A6:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C0A8:  LDR             R2, [R2]; CHID::m_pInstance ...
28C0AA:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C0AC:  LDR.W           R0, [R2,R0,LSL#2]
28C0B0:  CMP             R0, #0
28C0B2:  ITT EQ
28C0B4:  MOVEQ           R0, #0
28C0B6:  BXEQ            LR
28C0B8:  LDR             R2, [R0]
28C0BA:  LDR             R2, [R2,#4]
28C0BC:  BX              R2
