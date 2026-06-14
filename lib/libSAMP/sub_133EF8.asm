; =========================================================
; Game Engine Function: sub_133EF8
; Address            : 0x133EF8 - 0x133F6E
; =========================================================

133EF8:  PUSH            {R4,R5,R7,LR}
133EFA:  ADD             R7, SP, #8
133EFC:  VPUSH           {D8-D9}
133F00:  SUB             SP, SP, #8
133F02:  VLDR            S0, =0.6
133F06:  MOV             R4, R0
133F08:  VLDR            S16, [R0,#0x14]
133F0C:  MOVS            R5, #0
133F0E:  LDR             R0, [R0,#0x54]
133F10:  VMUL.F32        S18, S16, S0
133F14:  LDR             R1, [R4,#0x18]
133F16:  STRD.W          R5, R5, [SP,#0x20+var_20]
133F1A:  STR             R1, [R0,#0x28]
133F1C:  STR             R1, [R0,#0x20]
133F1E:  STR             R1, [R0,#0x18]
133F20:  MOV             R1, SP
133F22:  VSTR            S18, [R0,#0x24]
133F26:  VSTR            S18, [R0,#0x1C]
133F2A:  VSTR            S18, [R0,#0x14]
133F2E:  LDR             R0, [R4,#0x54]
133F30:  BL              sub_12BD92
133F34:  VLDR            S0, =0.4
133F38:  LDR             R1, [R4,#0x58]
133F3A:  VMUL.F32        S0, S16, S0
133F3E:  LDR             R0, [R4,#0x18]
133F40:  STR             R5, [SP,#0x20+var_1C]
133F42:  STR             R0, [R1,#0x28]
133F44:  STR             R0, [R1,#0x20]
133F46:  STR             R0, [R1,#0x18]
133F48:  VSTR            S18, [SP,#0x20+var_20]
133F4C:  VSTR            S0, [R1,#0x24]
133F50:  VSTR            S0, [R1,#0x1C]
133F54:  VSTR            S0, [R1,#0x14]
133F58:  MOV             R1, SP
133F5A:  LDR             R0, [R4,#0x58]
133F5C:  BL              sub_12BD92
133F60:  MOV             R0, R4
133F62:  BL              sub_12C0E6
133F66:  ADD             SP, SP, #8
133F68:  VPOP            {D8-D9}
133F6C:  POP             {R4,R5,R7,PC}
