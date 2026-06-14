; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck15ControlDuckMoveE9CVector2D
; Address            : 0x543590 - 0x543640
; =========================================================

543590:  VMOV.F32        S0, #1.0
543594:  MOVS            R3, #1
543596:  STRB            R3, [R0,#0x1B]
543598:  VLDR            S4, [R0,#0x1C]
54359C:  VCMP.F32        S4, S0
5435A0:  VMRS            APSR_nzcv, FPSCR
5435A4:  ITTT NE
5435A6:  VMOVNE.F32      S2, #-1.0
5435AA:  VCMPNE.F32      S4, S2
5435AE:  VMRSNE          APSR_nzcv, FPSCR
5435B2:  BEQ             loc_54363C
5435B4:  LDR             R3, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5435C2)
5435B6:  VMOV            S4, R2
5435BA:  VLDR            S6, [R0,#0x20]
5435BE:  ADD             R3, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5435C0:  VLDR            S8, =0.07
5435C4:  VSUB.F32        S10, S4, S6
5435C8:  LDR             R3, [R3]; CTimer::ms_fTimeStep ...
5435CA:  VLDR            S12, [R3]
5435CE:  VMUL.F32        S8, S12, S8
5435D2:  VCMPE.F32       S10, S8
5435D6:  VMRS            APSR_nzcv, FPSCR
5435DA:  BLE             loc_5435E6
5435DC:  VADD.F32        S6, S6, S8
5435E0:  VSTR            S6, [R0,#0x20]
5435E4:  B               loc_5435FE
5435E6:  VNEG.F32        S12, S8
5435EA:  VCMPE.F32       S10, S12
5435EE:  VMRS            APSR_nzcv, FPSCR
5435F2:  ITEE GE
5435F4:  STRGE           R2, [R0,#0x20]
5435F6:  VSUBLT.F32      S6, S6, S8
5435FA:  VSTRLT          S6, [R0,#0x20]
5435FE:  VABS.F32        S4, S4
543602:  VLDR            S6, =0.1
543606:  VCMPE.F32       S4, S6
54360A:  VMRS            APSR_nzcv, FPSCR
54360E:  BGE             loc_54363C
543610:  VMOV            S4, R1
543614:  VLDR            S8, =0.9
543618:  VABS.F32        S6, S4
54361C:  VCMPE.F32       S6, S8
543620:  VMRS            APSR_nzcv, FPSCR
543624:  BLE             loc_54363C
543626:  VCMPE.F32       S4, #0.0
54362A:  MOVS            R1, #0
54362C:  VMRS            APSR_nzcv, FPSCR
543630:  IT GT
543632:  VMOVGT.F32      S2, S0
543636:  STR             R1, [R0,#0x20]
543638:  VSTR            S2, [R0,#0x1C]
54363C:  MOVS            R0, #1
54363E:  BX              LR
