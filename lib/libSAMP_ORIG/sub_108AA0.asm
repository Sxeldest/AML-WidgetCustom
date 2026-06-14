; =========================================================
; Game Engine Function: sub_108AA0
; Address            : 0x108AA0 - 0x108AE0
; =========================================================

108AA0:  VMOV            D16, R0, R1
108AA4:  MOV             R0, #0
108AA8:  VCMP.F64        D16, #0.0
108AAC:  MOV             R1, #0
108AB0:  VMRS            APSR_nzcv, FPSCR
108AB4:  BXLS            LR
108AB8:  VLDR            D17, =2.32830644e-10
108ABC:  VLDR            D18, =-4.2949673e9
108AC0:  VMUL.F64        D17, D16, D17
108AC4:  VCVT.U32.F64    S0, D17
108AC8:  VCVT.F64.U32    D17, S0
108ACC:  VMLA.F64        D16, D17, D18
108AD0:  VMOV            R1, S0
108AD4:  VCVT.U32.F64    S0, D16
108AD8:  VMOV            R0, S0
108ADC:  BX              LR
