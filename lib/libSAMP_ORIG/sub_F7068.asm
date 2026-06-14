; =========================================================
; Game Engine Function: sub_F7068
; Address            : 0xF7068 - 0xF70D0
; =========================================================

F7068:  PUSH            {R4,R5,R7,LR}
F706A:  ADD             R7, SP, #8
F706C:  VPUSH           {D8-D9}
F7070:  MOV             R4, R1
F7072:  MOV             R5, R0
F7074:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F7078:  MOV             R0, R5; nptr
F707A:  MOV             R1, R4; endptr
F707C:  BLX             strtod
F7080:  MOV             R2, R1
F7082:  VLDR            D9, =+Inf
F7086:  BFC.W           R2, #0x1F, #1
F708A:  VMOV            D8, R0, R1
F708E:  VMOV            D16, R0, R2
F7092:  VCMP.F64        D16, D9
F7096:  VMRS            APSR_nzcv, FPSCR
F709A:  BEQ             loc_F70C2
F709C:  BVS             loc_F70C2
F709E:  B               loc_F70A0
F70A0:  VLDR            D17, =3.40282347e38
F70A4:  VCMP.F64        D16, D17
F70A8:  VMRS            APSR_nzcv, FPSCR
F70AC:  BLE             loc_F70C2
F70AE:  BLX             __errno
F70B2:  VMOV.I32        D16, #0x80000000
F70B6:  MOVS            R1, #0x22 ; '"'
F70B8:  STR             R1, [R0]
F70BA:  VSHL.I64        D16, D16, #0x20 ; ' '
F70BE:  VBIF            D8, D9, D16
F70C2:  VCVT.F32.F64    S0, D8
F70C6:  VMOV            R0, S0
F70CA:  VPOP            {D8-D9}
F70CE:  POP             {R4,R5,R7,PC}
