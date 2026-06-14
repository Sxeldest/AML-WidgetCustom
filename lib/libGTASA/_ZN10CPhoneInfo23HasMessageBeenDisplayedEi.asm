; =========================================================
; Game Engine Function: _ZN10CPhoneInfo23HasMessageBeenDisplayedEi
; Address            : 0x31CF38 - 0x31CF5A
; =========================================================

31CF38:  LDR             R2, =(byte_7AF320 - 0x31CF3E)
31CF3A:  ADD             R2, PC; byte_7AF320
31CF3C:  LDRB            R2, [R2]
31CF3E:  CMP             R2, #0
31CF40:  ITT NE
31CF42:  MOVNE           R0, #0
31CF44:  BXNE            LR
31CF46:  MOVS            R2, #0x34 ; '4'
31CF48:  MLA.W           R0, R1, R2, R0
31CF4C:  LDR             R0, [R0,#0x34]
31CF4E:  SUBS            R1, R0, #6
31CF50:  MOVS            R0, #0
31CF52:  CMP             R1, #3
31CF54:  IT CC
31CF56:  MOVCC           R0, #1
31CF58:  BX              LR
