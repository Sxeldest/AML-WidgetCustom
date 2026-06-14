; =========================================================
; Game Engine Function: _ZN6CCarAI23FindSwitchDistanceCloseEP8CVehicle
; Address            : 0x2E382C - 0x2E383E
; =========================================================

2E382C:  LDRB.W          R0, [R0,#0x3E1]
2E3830:  VMOV            S0, R0
2E3834:  VCVT.F32.U32    S0, S0
2E3838:  VMOV            R0, S0
2E383C:  BX              LR
