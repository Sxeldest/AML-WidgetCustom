; =========================================================
; Game Engine Function: _ZN17CStuntJumpManager9SetActiveEb
; Address            : 0x361D48 - 0x361D52
; =========================================================

361D48:  LDR             R1, =(_ZN17CStuntJumpManager9m_bActiveE_ptr - 0x361D4E)
361D4A:  ADD             R1, PC; _ZN17CStuntJumpManager9m_bActiveE_ptr
361D4C:  LDR             R1, [R1]; CStuntJumpManager::m_bActive ...
361D4E:  STRB            R0, [R1]; CStuntJumpManager::m_bActive
361D50:  BX              LR
