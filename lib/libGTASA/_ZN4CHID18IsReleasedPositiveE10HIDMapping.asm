; =========================================================
; Game Engine Function: _ZN4CHID18IsReleasedPositiveE10HIDMapping
; Address            : 0x28C224 - 0x28C252
; =========================================================

28C224:  MOV             R1, R0
28C226:  LDR             R0, =(_ZN4CHID13m_nDeadFramesE_ptr - 0x28C22C)
28C228:  ADD             R0, PC; _ZN4CHID13m_nDeadFramesE_ptr
28C22A:  LDR             R0, [R0]; CHID::m_nDeadFrames ...
28C22C:  LDR             R0, [R0]; CHID::m_nDeadFrames
28C22E:  CMP             R0, #0
28C230:  BLE             loc_28C236
28C232:  MOVS            R0, #0
28C234:  BX              LR
28C236:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C23E)
28C238:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C240)
28C23A:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C23C:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C23E:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C240:  LDR             R2, [R2]; CHID::m_pInstance ...
28C242:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C244:  LDR.W           R0, [R2,R0,LSL#2]
28C248:  CMP             R0, #0
28C24A:  BEQ             loc_28C232
28C24C:  LDR             R2, [R0]
28C24E:  LDR             R2, [R2,#0x28]
28C250:  BX              R2
