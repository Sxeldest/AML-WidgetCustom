; =========================================================
; Game Engine Function: _ZN4CHID9IsPressedE10HIDMappingPf
; Address            : 0x28C180 - 0x28C1B0
; =========================================================

28C180:  MOV             R2, R1
28C182:  MOV             R1, R0
28C184:  LDR             R0, =(_ZN4CHID13m_nDeadFramesE_ptr - 0x28C18A)
28C186:  ADD             R0, PC; _ZN4CHID13m_nDeadFramesE_ptr
28C188:  LDR             R0, [R0]; CHID::m_nDeadFrames ...
28C18A:  LDR             R0, [R0]; CHID::m_nDeadFrames
28C18C:  CMP             R0, #0
28C18E:  BLE             loc_28C194
28C190:  MOVS            R0, #0
28C192:  BX              LR
28C194:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C19C)
28C196:  LDR             R3, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C19E)
28C198:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C19A:  ADD             R3, PC; _ZN4CHID11m_pInstanceE_ptr
28C19C:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C19E:  LDR             R3, [R3]; CHID::m_pInstance ...
28C1A0:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C1A2:  LDR.W           R0, [R3,R0,LSL#2]
28C1A6:  CMP             R0, #0
28C1A8:  BEQ             loc_28C190
28C1AA:  LDR             R3, [R0]
28C1AC:  LDR             R3, [R3,#0x10]
28C1AE:  BX              R3
