; =========================================================
; Game Engine Function: _ZN14CEntryInfoNodedlEPv
; Address            : 0x3EEE7C - 0x3EEEA8
; =========================================================

3EEE7C:  LDR             R1, =(_ZN6CPools21ms_pEntryInfoNodePoolE_ptr - 0x3EEE82)
3EEE7E:  ADD             R1, PC; _ZN6CPools21ms_pEntryInfoNodePoolE_ptr
3EEE80:  LDR             R1, [R1]; CPools::ms_pEntryInfoNodePool ...
3EEE82:  LDR             R1, [R1]; CPools::ms_pEntryInfoNodePool
3EEE84:  LDRD.W          R2, R3, [R1]
3EEE88:  SUBS            R0, R0, R2
3EEE8A:  MOV             R2, #0xCCCCCCCD
3EEE92:  ASRS            R0, R0, #2
3EEE94:  MULS            R0, R2
3EEE96:  LDRB            R2, [R3,R0]
3EEE98:  ORR.W           R2, R2, #0x80
3EEE9C:  STRB            R2, [R3,R0]
3EEE9E:  LDR             R2, [R1,#0xC]
3EEEA0:  CMP             R0, R2
3EEEA2:  IT LT
3EEEA4:  STRLT           R0, [R1,#0xC]
3EEEA6:  BX              LR
