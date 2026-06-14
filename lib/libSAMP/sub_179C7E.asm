; =========================================================
; Game Engine Function: sub_179C7E
; Address            : 0x179C7E - 0x179CCC
; =========================================================

179C7E:  PUSH            {R7,LR}
179C80:  MOV             R7, SP
179C82:  SUB             SP, SP, #0x10
179C84:  VLDR            S2, [R0,#8]
179C88:  VLDR            S4, [R0,#0x10]
179C8C:  VLDR            S0, [R0,#0xC]
179C90:  VCMP.F32        S2, S4
179C94:  VMRS            APSR_nzcv, FPSCR
179C98:  BNE             loc_179CA8
179C9A:  VLDR            S4, [R0,#0x14]
179C9E:  VCMP.F32        S0, S4
179CA2:  VMRS            APSR_nzcv, FPSCR
179CA6:  BEQ             loc_179CC8
179CA8:  VCVT.S32.F32    S2, S2
179CAC:  MOVS            R1, #0
179CAE:  VCVT.S32.F32    S0, S0
179CB2:  STRD.W          R1, R1, [SP,#0x18+var_18]
179CB6:  STRD.W          R1, R1, [SP,#0x18+var_10]
179CBA:  MOVS            R1, #2
179CBC:  VMOV            R2, S2
179CC0:  VMOV            R3, S0
179CC4:  BL              sub_179CCC
179CC8:  ADD             SP, SP, #0x10
179CCA:  POP             {R7,PC}
