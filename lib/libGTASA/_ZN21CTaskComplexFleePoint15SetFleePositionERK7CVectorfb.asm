; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePoint15SetFleePositionERK7CVectorfb
; Address            : 0x51318C - 0x5131F6
; =========================================================

51318C:  VLDR            S2, [R1]
513190:  VMOV            S0, R2
513194:  VLDR            S4, [R0,#0xC]
513198:  VCMP.F32        S4, S2
51319C:  VMRS            APSR_nzcv, FPSCR
5131A0:  BNE             loc_5131D4
5131A2:  VLDR            S2, [R1,#4]
5131A6:  VLDR            S4, [R0,#0x10]
5131AA:  VCMP.F32        S4, S2
5131AE:  VMRS            APSR_nzcv, FPSCR
5131B2:  BNE             loc_5131D4
5131B4:  VLDR            S2, [R1,#8]
5131B8:  VLDR            S4, [R0,#0x14]
5131BC:  VCMP.F32        S4, S2
5131C0:  VMRS            APSR_nzcv, FPSCR
5131C4:  BNE             loc_5131D4
5131C6:  VLDR            S2, [R0,#0x34]
5131CA:  VCMP.F32        S2, S0
5131CE:  VMRS            APSR_nzcv, FPSCR
5131D2:  BEQ             loc_5131F0
5131D4:  VLDR            D16, [R1]
5131D8:  ADD.W           R2, R0, #0xC
5131DC:  LDR             R1, [R1,#8]
5131DE:  MOV.W           R12, #1
5131E2:  STR             R1, [R2,#8]
5131E4:  VSTR            D16, [R2]
5131E8:  STRB.W          R12, [R0,#0x39]
5131EC:  VSTR            S0, [R0,#0x34]
5131F0:  STRB.W          R3, [R0,#0x38]
5131F4:  BX              LR
