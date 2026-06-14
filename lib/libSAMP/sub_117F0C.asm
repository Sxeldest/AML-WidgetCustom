; =========================================================
; Game Engine Function: sub_117F0C
; Address            : 0x117F0C - 0x117F52
; =========================================================

117F0C:  PUSH            {R4-R7,LR}
117F0E:  ADD             R7, SP, #0xC
117F10:  PUSH.W          {R11}
117F14:  SUB             SP, SP, #8
117F16:  MOV             R6, R0
117F18:  MOV             R5, R0
117F1A:  LDR.W           R0, [R6],#0x68
117F1E:  MOV             R4, R1
117F20:  LDR             R1, [R0,#4]
117F22:  MOV             R0, R5
117F24:  BLX             R1
117F26:  VMOV            S2, R0
117F2A:  VLDR            S0, =128.0
117F2E:  MOVW            R0, #0xA7E6
117F32:  MOV             R1, R4
117F34:  VMUL.F32        S0, S2, S0
117F38:  MOVT            R0, #0xFF1E
117F3C:  STR             R0, [SP,#0x18+var_18]
117F3E:  MOV             R0, R5
117F40:  MOV             R2, R6
117F42:  VMOV            R3, S0
117F46:  BL              sub_117D08
117F4A:  ADD             SP, SP, #8
117F4C:  POP.W           {R11}
117F50:  POP             {R4-R7,PC}
