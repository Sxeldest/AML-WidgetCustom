; =========================================================
; Game Engine Function: _ZN4CHID13IsJustPressedE10HIDMapping
; Address            : 0x28C144 - 0x28C172
; =========================================================

28C144:  MOV             R1, R0
28C146:  LDR             R0, =(_ZN4CHID13m_nDeadFramesE_ptr - 0x28C14C)
28C148:  ADD             R0, PC; _ZN4CHID13m_nDeadFramesE_ptr
28C14A:  LDR             R0, [R0]; CHID::m_nDeadFrames ...
28C14C:  LDR             R0, [R0]; CHID::m_nDeadFrames
28C14E:  CMP             R0, #0
28C150:  BLE             loc_28C156
28C152:  MOVS            R0, #0
28C154:  BX              LR
28C156:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C15E)
28C158:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C160)
28C15A:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C15C:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C15E:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C160:  LDR             R2, [R2]; CHID::m_pInstance ...
28C162:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C164:  LDR.W           R0, [R2,R0,LSL#2]
28C168:  CMP             R0, #0
28C16A:  BEQ             loc_28C152
28C16C:  LDR             R2, [R0]
28C16E:  LDR             R2, [R2,#0xC]
28C170:  BX              R2
