; =========================================================
; Game Engine Function: sub_17BDB8
; Address            : 0x17BDB8 - 0x17BE0E
; =========================================================

17BDB8:  MOVS            R1, #0
17BDBA:  STR             R2, [R0]
17BDBC:  STR             R1, [R0,#8]
17BDBE:  CBZ             R3, loc_17BDC6
17BDC0:  STRD.W          R1, R1, [R0,#0x18]
17BDC4:  STR             R1, [R0,#0x20]
17BDC6:  VMOV            S2, R2
17BDCA:  VLDR            S0, =0.0
17BDCE:  MOVS            R2, #0
17BDD0:  CBZ             R2, loc_17BDE8
17BDD2:  ADDS            R3, R0, R2
17BDD4:  VLDR            S4, [R3,#0x18]
17BDD8:  VCMP.F32        S4, #0.0
17BDDC:  VMRS            APSR_nzcv, FPSCR
17BDE0:  IT GT
17BDE2:  VADDGT.F32      S0, S0, S2
17BDE6:  B               loc_17BDEC
17BDE8:  VLDR            S4, [R0,#0x18]
17BDEC:  VCVT.S32.F32    S6, S0
17BDF0:  ADDS            R3, R0, R2
17BDF2:  VADD.F32        S0, S0, S4
17BDF6:  ADDS            R2, #4
17BDF8:  CMP             R2, #0xC
17BDFA:  STR             R1, [R3,#0x18]
17BDFC:  VCVT.F32.S32    S6, S6
17BE00:  VSTR            S6, [R3,#0xC]
17BE04:  ITT EQ
17BE06:  VSTREQ          S0, [R0,#4]
17BE0A:  BXEQ            LR
17BE0C:  B               loc_17BDD0
