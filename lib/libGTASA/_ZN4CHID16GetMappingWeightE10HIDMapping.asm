; =========================================================
; Game Engine Function: _ZN4CHID16GetMappingWeightE10HIDMapping
; Address            : 0x28C1F8 - 0x28C21C
; =========================================================

28C1F8:  MOV             R1, R0
28C1FA:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C202)
28C1FC:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C204)
28C1FE:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C200:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C202:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C204:  LDR             R2, [R2]; CHID::m_pInstance ...
28C206:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C208:  LDR.W           R0, [R2,R0,LSL#2]
28C20C:  CMP             R0, #0
28C20E:  ITT EQ
28C210:  MOVEQ.W         R0, #0x3F800000
28C214:  BXEQ            LR
28C216:  LDR             R2, [R0]
28C218:  LDR             R2, [R2,#0x3C]
28C21A:  BX              R2
