; =========================================================
; Game Engine Function: _ZN4CHID15MappingIsAnalogE10HIDMapping
; Address            : 0x28C314 - 0x28C336
; =========================================================

28C314:  MOV             R1, R0
28C316:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C31E)
28C318:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C320)
28C31A:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C31C:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C31E:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C320:  LDR             R2, [R2]; CHID::m_pInstance ...
28C322:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C324:  LDR.W           R0, [R2,R0,LSL#2]
28C328:  CMP             R0, #0
28C32A:  ITT EQ
28C32C:  MOVEQ           R0, #0
28C32E:  BXEQ            LR
28C330:  LDR             R2, [R0]
28C332:  LDR             R2, [R2,#0x38]
28C334:  BX              R2
