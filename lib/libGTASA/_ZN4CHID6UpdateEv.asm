; =========================================================
; Game Engine Function: _ZN4CHID6UpdateEv
; Address            : 0x28C108 - 0x28C138
; =========================================================

28C108:  LDR             R0, =(_ZN4CHID13m_nDeadFramesE_ptr - 0x28C110)
28C10A:  LDR             R1, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C114)
28C10C:  ADD             R0, PC; _ZN4CHID13m_nDeadFramesE_ptr
28C10E:  LDR             R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C118)
28C110:  ADD             R1, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C112:  LDR             R0, [R0]; CHID::m_nDeadFrames ...
28C114:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C116:  LDR             R1, [R1]; CHID::currentInstanceIndex ...
28C118:  LDR             R2, [R2]; CHID::m_pInstance ...
28C11A:  LDR             R3, [R0]; CHID::m_nDeadFrames
28C11C:  LDR             R1, [R1]; CHID::currentInstanceIndex
28C11E:  SUBS            R3, #1
28C120:  CMP             R3, #0
28C122:  IT LE
28C124:  MOVLE           R3, #0
28C126:  STR             R3, [R0]; CHID::m_nDeadFrames
28C128:  LDR.W           R0, [R2,R1,LSL#2]
28C12C:  CMP             R0, #0
28C12E:  IT EQ
28C130:  BXEQ            LR
28C132:  LDR             R1, [R0]
28C134:  LDR             R1, [R1,#0x48]
28C136:  BX              R1
