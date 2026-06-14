; =========================================================
; Game Engine Function: _Z21SetBaseModelInfoFlagsP14CBaseModelInfoj
; Address            : 0x46AC74 - 0x46ACC4
; =========================================================

46AC74:  LDRH            R2, [R0,#0x28]
46AC76:  TST.W           R1, #0xC
46AC7A:  BIC.W           R3, R2, #2
46AC7E:  IT NE
46AC80:  ORRNE.W         R3, R2, #2
46AC84:  TST.W           R1, #8
46AC88:  BIC.W           R2, R3, #4
46AC8C:  IT NE
46AC8E:  ORRNE.W         R2, R3, #4
46AC92:  TST.W           R1, #0x40
46AC96:  BIC.W           R3, R2, #8
46AC9A:  IT NE
46AC9C:  ORRNE.W         R3, R2, #8
46ACA0:  MOVW            R2, #0xFFEF
46ACA4:  ANDS            R2, R3
46ACA6:  TST.W           R1, #0x80
46ACAA:  IT NE
46ACAC:  ORRNE.W         R2, R3, #0x10
46ACB0:  MOVW            R3, #0xFFBF
46ACB4:  ANDS            R3, R2
46ACB6:  TST.W           R1, #0x200000
46ACBA:  IT EQ
46ACBC:  ORREQ.W         R3, R2, #0x40 ; '@'
46ACC0:  STRH            R3, [R0,#0x28]
46ACC2:  BX              LR
