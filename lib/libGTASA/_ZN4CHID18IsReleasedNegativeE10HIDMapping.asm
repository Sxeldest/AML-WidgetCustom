; =========================================================
; Game Engine Function: _ZN4CHID18IsReleasedNegativeE10HIDMapping
; Address            : 0x28C260 - 0x28C28E
; =========================================================

28C260:  MOV             R1, R0
28C262:  LDR             R0, =(_ZN4CHID13m_nDeadFramesE_ptr - 0x28C268)
28C264:  ADD             R0, PC; _ZN4CHID13m_nDeadFramesE_ptr
28C266:  LDR             R0, [R0]; CHID::m_nDeadFrames ...
28C268:  LDR             R0, [R0]; CHID::m_nDeadFrames
28C26A:  CMP             R0, #0
28C26C:  BLE             loc_28C272
28C26E:  MOVS            R0, #0
28C270:  BX              LR
28C272:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C27A)
28C274:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C27C)
28C276:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C278:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C27A:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C27C:  LDR             R2, [R2]; CHID::m_pInstance ...
28C27E:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C280:  LDR.W           R0, [R2,R0,LSL#2]
28C284:  CMP             R0, #0
28C286:  BEQ             loc_28C26E
28C288:  LDR             R2, [R0]
28C28A:  LDR             R2, [R2,#0x2C]
28C28C:  BX              R2
