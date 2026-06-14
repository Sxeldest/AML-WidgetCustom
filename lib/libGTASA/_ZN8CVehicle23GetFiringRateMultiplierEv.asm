; =========================================================
; Game Engine Function: _ZN8CVehicle23GetFiringRateMultiplierEv
; Address            : 0x58F640 - 0x58F678
; =========================================================

58F640:  LDR.W           R1, [R0,#0x5A4]
58F644:  CMP             R1, #3
58F646:  BEQ             loc_58F65C
58F648:  CMP             R1, #4
58F64A:  ITTT NE
58F64C:  VMOVNE.F32      S0, #1.0
58F650:  VMOVNE          R0, S0
58F654:  BXNE            LR
58F656:  ADDW            R0, R0, #0x9EC
58F65A:  B               loc_58F660
58F65C:  ADDW            R0, R0, #0xA24
58F660:  LDRB            R0, [R0]
58F662:  VLDR            S2, =0.0625
58F666:  VMOV            S0, R0
58F66A:  VCVT.F32.U32    S0, S0
58F66E:  VMUL.F32        S0, S0, S2
58F672:  VMOV            R0, S0
58F676:  BX              LR
