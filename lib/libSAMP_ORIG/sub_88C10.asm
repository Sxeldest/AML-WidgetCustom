; =========================================================
; Game Engine Function: sub_88C10
; Address            : 0x88C10 - 0x88D1A
; =========================================================

88C10:  LDR             R2, =(dword_1ACF68 - 0x88C1E)
88C12:  MOVW            R3, #0x1518
88C16:  VMOV            S0, R1
88C1A:  ADD             R2, PC; dword_1ACF68
88C1C:  LDR             R2, [R2]
88C1E:  ADDS            R1, R2, R3
88C20:  ADD.W           R0, R1, R0,LSL#4
88C24:  VLDR            S2, [R1]
88C28:  VLDR            S10, [R0,#0xB8]
88C2C:  VMUL.F32        S0, S2, S0
88C30:  VLDR            S6, [R0,#0xB0]
88C34:  VMOV.F32        S2, #1.0
88C38:  VLDR            S4, [R0,#0xAC]
88C3C:  VLDR            S8, [R0,#0xB4]
88C40:  VMOV.F32        S12, S4
88C44:  VMOV.F32        S14, S8
88C48:  VMUL.F32        S0, S10, S0
88C4C:  VCMP.F32        S6, S2
88C50:  VMRS            APSR_nzcv, FPSCR
88C54:  VMOV.F32        S10, S6
88C58:  VCMP.F32        S4, S2
88C5C:  IT GT
88C5E:  VMOVGT.F32      S10, S2
88C62:  VMRS            APSR_nzcv, FPSCR
88C66:  VCMP.F32        S8, S2
88C6A:  IT GT
88C6C:  VMOVGT.F32      S12, S2
88C70:  VMRS            APSR_nzcv, FPSCR
88C74:  IT GT
88C76:  VMOVGT.F32      S14, S2
88C7A:  VCMP.F32        S0, S2
88C7E:  VMRS            APSR_nzcv, FPSCR
88C82:  VCMP.F32        S6, #0.0
88C86:  VMOV.F32        S6, #0.5
88C8A:  VMOV.F32        S1, S0
88C8E:  IT GT
88C90:  VMOVGT.F32      S1, S2
88C94:  VMRS            APSR_nzcv, FPSCR
88C98:  VCMP.F32        S4, #0.0
88C9C:  VLDR            S2, =0.0
88CA0:  IT MI
88CA2:  VMOVMI.F32      S10, S2
88CA6:  VMRS            APSR_nzcv, FPSCR
88CAA:  VCMP.F32        S8, #0.0
88CAE:  IT MI
88CB0:  VMOVMI.F32      S12, S2
88CB4:  VMRS            APSR_nzcv, FPSCR
88CB8:  VCMP.F32        S0, #0.0
88CBC:  IT MI
88CBE:  VMOVMI.F32      S14, S2
88CC2:  VMRS            APSR_nzcv, FPSCR
88CC6:  IT MI
88CC8:  VMOVMI.F32      S1, S2
88CCC:  VMOV.F32        S2, S6
88CD0:  VMOV.F32        S4, S6
88CD4:  VLDR            S0, =255.0
88CD8:  VMOV.F32        S8, S6
88CDC:  VMLA.F32        S6, S1, S0
88CE0:  VMLA.F32        S2, S10, S0
88CE4:  VMLA.F32        S4, S12, S0
88CE8:  VMLA.F32        S8, S14, S0
88CEC:  VCVT.S32.F32    S0, S2
88CF0:  VCVT.S32.F32    S2, S4
88CF4:  VCVT.S32.F32    S4, S8
88CF8:  VMOV            R0, S0
88CFC:  VMOV            R1, S2
88D00:  VCVT.S32.F32    S0, S6
88D04:  ORR.W           R0, R1, R0,LSL#8
88D08:  VMOV            R1, S4
88D0C:  ORR.W           R0, R0, R1,LSL#16
88D10:  VMOV            R1, S0
88D14:  ORR.W           R0, R0, R1,LSL#24
88D18:  BX              LR
