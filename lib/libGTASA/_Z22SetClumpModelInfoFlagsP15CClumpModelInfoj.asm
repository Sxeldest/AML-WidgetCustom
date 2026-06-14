; =========================================================
; Game Engine Function: _Z22SetClumpModelInfoFlagsP15CClumpModelInfoj
; Address            : 0x46ADB0 - 0x46AE10
; =========================================================

46ADB0:  LDRH            R2, [R0,#0x28]
46ADB2:  TST.W           R1, #0xC
46ADB6:  BIC.W           R3, R2, #2
46ADBA:  IT NE
46ADBC:  ORRNE.W         R3, R2, #2
46ADC0:  TST.W           R1, #8
46ADC4:  BIC.W           R2, R3, #4
46ADC8:  IT NE
46ADCA:  ORRNE.W         R2, R3, #4
46ADCE:  TST.W           R1, #0x40
46ADD2:  BIC.W           R3, R2, #8
46ADD6:  IT NE
46ADD8:  ORRNE.W         R3, R2, #8
46ADDC:  MOVW            R2, #0xFFEF
46ADE0:  ANDS            R2, R3
46ADE2:  TST.W           R1, #0x80
46ADE6:  IT NE
46ADE8:  ORRNE.W         R2, R3, #0x10
46ADEC:  MOVW            R3, #0xFFBF
46ADF0:  ANDS            R3, R2
46ADF2:  TST.W           R1, #0x200000
46ADF6:  IT EQ
46ADF8:  ORREQ.W         R3, R2, #0x40 ; '@'
46ADFC:  MOVW            R2, #0xFBFF
46AE00:  ANDS            R2, R3
46AE02:  TST.W           R1, #0x20
46AE06:  IT NE
46AE08:  ORRNE.W         R2, R3, #0x400
46AE0C:  STRH            R2, [R0,#0x28]
46AE0E:  BX              LR
