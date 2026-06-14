; =========================================================
; Game Engine Function: _ZN4CHID12GetInputTypeEv
; Address            : 0x28CC04 - 0x28CC24
; =========================================================

28CC04:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28CC0C)
28CC06:  LDR             R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28CC0E)
28CC08:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28CC0A:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28CC0C:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28CC0E:  LDR             R1, [R1]; CHID::m_pInstance ...
28CC10:  LDR             R0, [R0]; CHID::currentInstanceIndex
28CC12:  LDR.W           R0, [R1,R0,LSL#2]
28CC16:  CMP             R0, #0
28CC18:  ITT EQ
28CC1A:  MOVEQ           R0, #0
28CC1C:  BXEQ            LR
28CC1E:  LDR             R1, [R0]
28CC20:  LDR             R1, [R1,#0x18]
28CC22:  BX              R1
