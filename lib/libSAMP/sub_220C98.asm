; =========================================================
; Game Engine Function: sub_220C98
; Address            : 0x220C98 - 0x220CC4
; =========================================================

220C98:  VMOV            S0, R1
220C9C:  VLDR            D17, =4.2949673e9
220CA0:  VLDR            D18, =-4.50359963e15
220CA4:  MOVW            R1, #0
220CA8:  VCVT.F64.S32    D16, S0
220CAC:  MOVT            R1, #0x4330
220CB0:  VMLA.F64        D18, D16, D17
220CB4:  VMOV            D16, R0, R1
220CB8:  VADD.F64        D16, D18, D16
220CBC:  VMOV            R0, R1, D16
220CC0:  BX              LR
