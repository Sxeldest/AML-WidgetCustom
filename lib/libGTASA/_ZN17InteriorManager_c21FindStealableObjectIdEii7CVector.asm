; =========================================================
; Game Engine Function: _ZN17InteriorManager_c21FindStealableObjectIdEii7CVector
; Address            : 0x44C83A - 0x44C8C0
; =========================================================

44C83A:  PUSH            {R4-R7,LR}
44C83C:  ADD             R7, SP, #0xC
44C83E:  PUSH.W          {R11}
44C842:  MOVW            R12, #0x43A8
44C846:  LDR.W           R12, [R0,R12]
44C84A:  CMP.W           R12, #1
44C84E:  BLT             loc_44C8B6
44C850:  LDRD.W          R5, R6, [R7,#arg_0]
44C854:  MOVW            R4, #0x43C0
44C858:  ADD.W           LR, R0, R4
44C85C:  VMOV            S0, R3
44C860:  VMOV            S4, R6
44C864:  MOVS            R0, #0
44C866:  VMOV            S2, R5
44C86A:  LDR.W           R3, [LR,#-0xC]
44C86E:  CMP             R3, R1
44C870:  ITT EQ
44C872:  LDREQ.W         R3, [LR,#-0x10]
44C876:  CMPEQ           R3, R2
44C878:  BEQ             loc_44C886
44C87A:  ADDS            R0, #1
44C87C:  ADD.W           LR, LR, #0x1C
44C880:  CMP             R0, R12
44C882:  BLT             loc_44C86A
44C884:  B               loc_44C8B6
44C886:  VLDR            S6, [LR,#-8]
44C88A:  VCMP.F32        S6, S0
44C88E:  VMRS            APSR_nzcv, FPSCR
44C892:  ITTT EQ
44C894:  VLDREQ          S6, [LR,#-4]
44C898:  VCMPEQ.F32      S6, S2
44C89C:  VMRSEQ          APSR_nzcv, FPSCR
44C8A0:  BNE             loc_44C87A
44C8A2:  VLDR            S6, [LR]
44C8A6:  VCMP.F32        S6, S4
44C8AA:  VMRS            APSR_nzcv, FPSCR
44C8AE:  BNE             loc_44C87A
44C8B0:  POP.W           {R11}
44C8B4:  POP             {R4-R7,PC}
44C8B6:  MOV.W           R0, #0xFFFFFFFF
44C8BA:  POP.W           {R11}
44C8BE:  POP             {R4-R7,PC}
