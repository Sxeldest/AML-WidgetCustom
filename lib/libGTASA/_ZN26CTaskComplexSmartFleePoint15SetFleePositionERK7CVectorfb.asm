; =========================================================
; Game Engine Function: _ZN26CTaskComplexSmartFleePoint15SetFleePositionERK7CVectorfb
; Address            : 0x513BA0 - 0x513C0A
; =========================================================

513BA0:  VLDR            S2, [R1]
513BA4:  VMOV            S0, R2
513BA8:  VLDR            S4, [R0,#0x18]
513BAC:  VCMP.F32        S4, S2
513BB0:  VMRS            APSR_nzcv, FPSCR
513BB4:  BNE             loc_513BE8
513BB6:  VLDR            S2, [R1,#4]
513BBA:  VLDR            S4, [R0,#0x1C]
513BBE:  VCMP.F32        S4, S2
513BC2:  VMRS            APSR_nzcv, FPSCR
513BC6:  BNE             loc_513BE8
513BC8:  VLDR            S2, [R1,#8]
513BCC:  VLDR            S4, [R0,#0x20]
513BD0:  VCMP.F32        S4, S2
513BD4:  VMRS            APSR_nzcv, FPSCR
513BD8:  BNE             loc_513BE8
513BDA:  VLDR            S2, [R0,#0x2C]
513BDE:  VCMP.F32        S2, S0
513BE2:  VMRS            APSR_nzcv, FPSCR
513BE6:  BEQ             loc_513C04
513BE8:  VLDR            D16, [R1]
513BEC:  ADD.W           R2, R0, #0x18
513BF0:  LDR             R1, [R1,#8]
513BF2:  MOV.W           R12, #1
513BF6:  STR             R1, [R2,#8]
513BF8:  VSTR            D16, [R2]
513BFC:  STRB.W          R12, [R0,#0x41]
513C00:  VSTR            S0, [R0,#0x2C]
513C04:  STRB.W          R3, [R0,#0x24]
513C08:  BX              LR
