; =========================================================
; Game Engine Function: _ZN4CHID10ImplementsE10HIDMapping
; Address            : 0x28C070 - 0x28C092
; =========================================================

28C070:  MOV             R1, R0
28C072:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C07A)
28C074:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C07C)
28C076:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C078:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C07A:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C07C:  LDR             R2, [R2]; CHID::m_pInstance ...
28C07E:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C080:  LDR.W           R0, [R2,R0,LSL#2]
28C084:  CMP             R0, #0
28C086:  ITT EQ
28C088:  MOVEQ           R0, #0
28C08A:  BXEQ            LR
28C08C:  LDR             R2, [R0]
28C08E:  LDR             R2, [R2]
28C090:  BX              R2
