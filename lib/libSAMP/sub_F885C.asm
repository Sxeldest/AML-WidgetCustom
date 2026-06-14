; =========================================================
; Game Engine Function: sub_F885C
; Address            : 0xF885C - 0xF88E2
; =========================================================

F885C:  STR             R1, [R0,#0xC]
F885E:  B.W             loc_F8864
F8862:  BMI             loc_F880C+2
F8864:  PUSH            {R4,R6,R7,LR}
F8866:  ADD             R7, SP, #0x10+var_8
F8868:  SUB             SP, SP, #0x48 ; 'H'
F886A:  LDR             R0, [R0,#0xC]
F886C:  CBZ             R0, loc_F88DE
F886E:  ADD             R4, SP, #0x58+var_50
F8870:  MOV             R1, R4
F8872:  BL              sub_F8910
F8876:  VLDR            S0, =-20000.0
F887A:  VLDR            S4, [SP,#0x58+var_20]
F887E:  VCMP.F32        S4, S0
F8882:  VMRS            APSR_nzcv, FPSCR
F8886:  BLE             loc_F88DE
F8888:  VLDR            S2, =20000.0
F888C:  VCMP.F32        S4, S2
F8890:  VMRS            APSR_nzcv, FPSCR
F8894:  BPL             loc_F88DE
F8896:  VLDR            S4, [SP,#0x58+var_1C]
F889A:  VCMP.F32        S4, S0
F889E:  VMRS            APSR_nzcv, FPSCR
F88A2:  BLE             loc_F88DE
F88A4:  VCMP.F32        S4, S2
F88A8:  VMRS            APSR_nzcv, FPSCR
F88AC:  BPL             loc_F88DE
F88AE:  VLDR            S0, [SP,#0x58+var_18]
F88B2:  VLDR            S2, =-10000.0
F88B6:  VCMP.F32        S0, S2
F88BA:  VMRS            APSR_nzcv, FPSCR
F88BE:  BLE             loc_F88DE
F88C0:  VLDR            S2, =100000.0
F88C4:  VCMP.F32        S0, S2
F88C8:  VMRS            APSR_nzcv, FPSCR
F88CC:  BPL             loc_F88DE
F88CE:  ADD.W           R1, R4, #0x30 ; '0'
F88D2:  MOVS            R0, #1
F88D4:  MOVS            R3, #0x64 ; 'd'
F88D6:  STR             R0, [SP,#0x58+var_58]
F88D8:  MOV             R2, R1
F88DA:  BL              sub_F871C
F88DE:  ADD             SP, SP, #0x48 ; 'H'
F88E0:  POP             {R4,R6,R7,PC}
