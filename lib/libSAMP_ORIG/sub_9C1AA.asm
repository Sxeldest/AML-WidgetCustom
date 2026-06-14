; =========================================================
; Game Engine Function: sub_9C1AA
; Address            : 0x9C1AA - 0x9C1B4
; =========================================================

9C1AA:  LDR             R1, [R0,#0x4C]
9C1AC:  SUBS            R1, #1
9C1AE:  STR             R1, [R0,#0x4C]
9C1B0:  B.W             sub_9BF30
