; =========================================================
; Game Engine Function: sub_7D044
; Address            : 0x7D044 - 0x7D0E8
; =========================================================

7D044:  PUSH            {R4,R6,R7,LR}
7D046:  ADD             R7, SP, #8
7D048:  VPUSH           {D8-D9}
7D04C:  SUB             SP, SP, #0x10
7D04E:  LDR             R1, =(off_114CA0 - 0x7D058)
7D050:  MOV             R4, R0
7D052:  LDR             R0, =(__stack_chk_guard_ptr - 0x7D05A)
7D054:  ADD             R1, PC; off_114CA0
7D056:  ADD             R0, PC; __stack_chk_guard_ptr
7D058:  LDR             R1, [R1]; unk_116D60
7D05A:  LDR             R0, [R0]; __stack_chk_guard
7D05C:  LDR             R0, [R0]
7D05E:  STR             R0, [SP,#0x28+var_1C]
7D060:  LDR             R0, [R4,#0x54]
7D062:  VLDR            S16, [R1]
7D066:  LDR             R2, [R0]
7D068:  LDR             R1, [R2,#8]
7D06A:  BLX             R1
7D06C:  VMOV.F32        S18, #0.5
7D070:  LDR             R0, [R4,#0x54]
7D072:  VADD.F32        S2, S16, S16
7D076:  ADD             R1, SP, #0x28+var_24
7D078:  VLDR            S4, [R0,#0x14]
7D07C:  VLDR            S6, [R0,#0x18]
7D080:  MOV             R0, R4
7D082:  VMUL.F32        S0, S16, S18
7D086:  VADD.F32        S2, S2, S4
7D08A:  VADD.F32        S0, S0, S0
7D08E:  VSTR            S2, [SP,#0x28+var_24]
7D092:  VADD.F32        S0, S0, S6
7D096:  VSTR            S0, [SP,#0x28+var_20]
7D09A:  BL              sub_7C44C
7D09E:  LDR             R0, [R4,#0x54]
7D0A0:  ADD             R1, SP, #0x28+var_24
7D0A2:  VLDR            S0, [R4,#0x14]
7D0A6:  VLDR            S2, [R4,#0x18]
7D0AA:  VLDR            S4, [R0,#0x14]
7D0AE:  VLDR            S6, [R0,#0x18]
7D0B2:  VSUB.F32        S0, S0, S4
7D0B6:  VSUB.F32        S2, S2, S6
7D0BA:  VMUL.F32        S0, S0, S18
7D0BE:  VMUL.F32        S2, S2, S18
7D0C2:  VSTR            S0, [SP,#0x28+var_24]
7D0C6:  VSTR            S2, [SP,#0x28+var_20]
7D0CA:  BL              sub_7C4A6
7D0CE:  LDR             R0, [SP,#0x28+var_1C]
7D0D0:  LDR             R1, =(__stack_chk_guard_ptr - 0x7D0D6)
7D0D2:  ADD             R1, PC; __stack_chk_guard_ptr
7D0D4:  LDR             R1, [R1]; __stack_chk_guard
7D0D6:  LDR             R1, [R1]
7D0D8:  CMP             R1, R0
7D0DA:  ITTT EQ
7D0DC:  ADDEQ           SP, SP, #0x10
7D0DE:  VPOPEQ          {D8-D9}
7D0E2:  POPEQ           {R4,R6,R7,PC}
7D0E4:  BLX             __stack_chk_fail
