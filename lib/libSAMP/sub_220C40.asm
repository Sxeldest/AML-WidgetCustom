; =========================================================
; Game Engine Function: sub_220C40
; Address            : 0x220C40 - 0x220C84
; =========================================================

220C40:  VMOV            S0, R0
220C44:  MOV             R0, #0
220C48:  MOV             R1, #0
220C4C:  VCMP.F32        S0, #0.0
220C50:  VMRS            APSR_nzcv, FPSCR
220C54:  BXLS            LR
220C58:  VCVT.F64.F32    D16, S0
220C5C:  VLDR            D17, =2.32830644e-10
220C60:  VLDR            D18, =-4.2949673e9
220C64:  VMUL.F64        D17, D16, D17
220C68:  VCVT.U32.F64    S0, D17
220C6C:  VCVT.F64.U32    D17, S0
220C70:  VMLA.F64        D16, D17, D18
220C74:  VMOV            R1, S0
220C78:  VCVT.U32.F64    S0, D16
220C7C:  VMOV            R0, S0
220C80:  BX              LR
