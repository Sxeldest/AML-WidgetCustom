; =========================================================
; Game Engine Function: _ZN9CColAccel14isCacheLoadingEv
; Address            : 0x466224 - 0x466236
; =========================================================

466224:  LDR             R0, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x46622A)
466226:  ADD             R0, PC; _ZN9CColAccel13m_iCacheStateE_ptr
466228:  LDR             R0, [R0]; CColAccel::m_iCacheState ...
46622A:  LDR             R1, [R0]; CColAccel::m_iCacheState
46622C:  MOVS            R0, #0
46622E:  CMP             R1, #2
466230:  IT EQ
466232:  MOVEQ           R0, #1
466234:  BX              LR
