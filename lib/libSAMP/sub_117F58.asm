; =========================================================
; Game Engine Function: sub_117F58
; Address            : 0x117F58 - 0x117F86
; =========================================================

117F58:  PUSH            {R7,LR}
117F5A:  MOV             R7, SP
117F5C:  SUB             SP, SP, #8
117F5E:  VLDR            S0, =0.1
117F62:  VMOV            S2, R1
117F66:  MOVW            R2, #0xCA60
117F6A:  MOVS            R3, #0
117F6C:  VMUL.F32        S0, S2, S0
117F70:  MOVT            R2, #0xFF5D
117F74:  STR             R2, [SP,#0x10+var_10]
117F76:  ADD.W           R2, R0, #0x64 ; 'd'
117F7A:  VMOV            R1, S0
117F7E:  BL              sub_117D08
117F82:  ADD             SP, SP, #8
117F84:  POP             {R7,PC}
