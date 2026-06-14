; =========================================================
; Game Engine Function: sub_1041FA
; Address            : 0x1041FA - 0x10421A
; =========================================================

1041FA:  LDR             R0, [R0,#0x5C]
1041FC:  CBZ             R0, loc_104216
1041FE:  LDR.W           R0, [R0,#0x544]
104202:  VMOV            S0, R0
104206:  MOVS            R0, #0
104208:  VCMP.F32        S0, #0.0
10420C:  VMRS            APSR_nzcv, FPSCR
104210:  IT LE
104212:  MOVLE           R0, #1
104214:  BX              LR
104216:  MOVS            R0, #1
104218:  BX              LR
