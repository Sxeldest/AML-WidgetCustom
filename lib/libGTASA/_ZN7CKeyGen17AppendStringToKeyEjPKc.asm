; =========================================================
; Game Engine Function: _ZN7CKeyGen17AppendStringToKeyEjPKc
; Address            : 0x3F4ED0 - 0x3F4EF8
; =========================================================

3F4ED0:  LDRB            R2, [R1]
3F4ED2:  CMP             R2, #0
3F4ED4:  IT EQ
3F4ED6:  BXEQ            LR
3F4ED8:  LDR             R3, =(_ZN7CKeyGen8keyTableE_ptr - 0x3F4EE0)
3F4EDA:  ADDS            R1, #1
3F4EDC:  ADD             R3, PC; _ZN7CKeyGen8keyTableE_ptr
3F4EDE:  LDR.W           R12, [R3]; CKeyGen::keyTable ...
3F4EE2:  EORS            R2, R0
3F4EE4:  UXTB            R2, R2
3F4EE6:  LDR.W           R3, [R12,R2,LSL#2]
3F4EEA:  LDRB.W          R2, [R1],#1
3F4EEE:  EOR.W           R0, R3, R0,LSR#8
3F4EF2:  CMP             R2, #0
3F4EF4:  BNE             loc_3F4EE2
3F4EF6:  BX              LR
