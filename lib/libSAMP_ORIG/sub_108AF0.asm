; =========================================================
; Game Engine Function: sub_108AF0
; Address            : 0x108AF0 - 0x108B34
; =========================================================

108AF0:  VMOV            S0, R0
108AF4:  MOV             R0, #0
108AF8:  MOV             R1, #0
108AFC:  VCMP.F32        S0, #0.0
108B00:  VMRS            APSR_nzcv, FPSCR
108B04:  BXLS            LR
108B08:  VCVT.F64.F32    D16, S0
108B0C:  VLDR            D17, =2.32830644e-10
108B10:  VLDR            D18, =-4.2949673e9
108B14:  VMUL.F64        D17, D16, D17
108B18:  VCVT.U32.F64    S0, D17
108B1C:  VCVT.F64.U32    D17, S0
108B20:  VMLA.F64        D16, D17, D18
108B24:  VMOV            R1, S0
108B28:  VCVT.U32.F64    S0, D16
108B2C:  VMOV            R0, S0
108B30:  BX              LR
