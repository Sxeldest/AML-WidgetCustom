; =========================================================
; Game Engine Function: _ZN10CPhoneInfo23IsMessageBeingDisplayedEi
; Address            : 0x31CF60 - 0x31CF7A
; =========================================================

31CF60:  MOVS            R3, #0x34 ; '4'
31CF62:  LDR             R2, =(dword_7AF324 - 0x31CF6C)
31CF64:  MLA.W           R0, R1, R3, R0
31CF68:  ADD             R2, PC; dword_7AF324
31CF6A:  LDR             R1, [R2]
31CF6C:  ADD.W           R2, R0, #8
31CF70:  MOVS            R0, #0
31CF72:  CMP             R1, R2
31CF74:  IT EQ
31CF76:  MOVEQ           R0, #1
31CF78:  BX              LR
