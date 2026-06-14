; =========================================================
; Game Engine Function: _ZN24CTaskSimpleGoToPointFine12SetTargetPosE7CVector
; Address            : 0x517C88 - 0x517CF6
; =========================================================

517C88:  LDR.W           R12, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x517C98)
517C8C:  VMOV            S4, R1
517C90:  VLDR            S2, [R0,#0xC]
517C94:  ADD             R12, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
517C96:  VCMP.F32        S2, S4
517C9A:  LDR.W           R12, [R12]; CTaskSimpleGoTo::ms_fTargetRadius ...
517C9E:  VMRS            APSR_nzcv, FPSCR
517CA2:  VLDR            S0, [R12]
517CA6:  BNE             loc_517CDC
517CA8:  VMOV            S2, R2
517CAC:  VLDR            S4, [R0,#0x10]
517CB0:  VCMP.F32        S4, S2
517CB4:  VMRS            APSR_nzcv, FPSCR
517CB8:  BNE             loc_517CDC
517CBA:  VMOV            S2, R3
517CBE:  VLDR            S4, [R0,#0x14]
517CC2:  VCMP.F32        S4, S2
517CC6:  VMRS            APSR_nzcv, FPSCR
517CCA:  BNE             loc_517CDC
517CCC:  VLDR            S2, [R0,#0x18]
517CD0:  VCMP.F32        S2, S0
517CD4:  VMRS            APSR_nzcv, FPSCR
517CD8:  IT EQ
517CDA:  BXEQ            LR
517CDC:  LDRB.W          R12, [R0,#0x1C]
517CE0:  STR             R1, [R0,#0xC]
517CE2:  AND.W           R1, R12, #0xD0
517CE6:  STR             R2, [R0,#0x10]
517CE8:  STR             R3, [R0,#0x14]
517CEA:  ORR.W           R1, R1, #0x20 ; ' '
517CEE:  VSTR            S0, [R0,#0x18]
517CF2:  STRB            R1, [R0,#0x1C]
517CF4:  BX              LR
