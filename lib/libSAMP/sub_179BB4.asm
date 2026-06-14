; =========================================================
; Game Engine Function: sub_179BB4
; Address            : 0x179BB4 - 0x179C16
; =========================================================

179BB4:  PUSH            {R4,R6,R7,LR}
179BB6:  ADD             R7, SP, #8
179BB8:  VPUSH           {D8-D9}
179BBC:  SUB             SP, SP, #0x10
179BBE:  VMOV.F32        S16, S1
179BC2:  MOV             R4, R0
179BC4:  VMOV.F32        S18, S0
179BC8:  BL              sub_179C7E
179BCC:  VLDR            S0, [R4,#0x10]
179BD0:  MOVS            R0, #0
179BD2:  VLDR            S2, [R4,#0x14]
179BD6:  MOVS            R1, #1
179BD8:  VADD.F32        S0, S0, S18
179BDC:  VADD.F32        S2, S2, S16
179BE0:  VSTR            S0, [R4,#8]
179BE4:  VSTR            S0, [R4,#0x10]
179BE8:  VCVT.S32.F32    S0, S0
179BEC:  VSTR            S2, [R4,#0xC]
179BF0:  VSTR            S2, [R4,#0x14]
179BF4:  VCVT.S32.F32    S2, S2
179BF8:  STRD.W          R0, R0, [SP,#0x28+var_28]
179BFC:  STRD.W          R0, R0, [SP,#0x28+var_20]
179C00:  MOV             R0, R4
179C02:  VMOV            R2, S0
179C06:  VMOV            R3, S2
179C0A:  BL              sub_179CCC
179C0E:  ADD             SP, SP, #0x10
179C10:  VPOP            {D8-D9}
179C14:  POP             {R4,R6,R7,PC}
