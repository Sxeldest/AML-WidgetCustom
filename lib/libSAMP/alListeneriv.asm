; =========================================================
; Game Engine Function: alListeneriv
; Address            : 0x1E1BA4 - 0x1E1CC0
; =========================================================

1E1BA4:  PUSH            {R4,R5,R11,LR}
1E1BA8:  ADD             R11, SP, #8
1E1BAC:  SUB             SP, SP, #0x20
1E1BB0:  MOV             R4, R1
1E1BB4:  LDR             R1, =(__stack_chk_guard_ptr - 0x1E1BC4)
1E1BB8:  CMP             R4, #0
1E1BBC:  LDR             R1, [PC,R1]; __stack_chk_guard
1E1BC0:  LDR             R1, [R1]
1E1BC4:  STR             R1, [R11,#var_C]
1E1BC8:  BEQ             loc_1E1C1C
1E1BCC:  MOVW            R1, #0x1004
1E1BD0:  CMP             R0, R1
1E1BD4:  BEQ             loc_1E1BF0
1E1BD8:  MOVW            R1, #0x100F
1E1BDC:  CMP             R0, R1
1E1BE0:  BEQ             loc_1E1C4C
1E1BE4:  MOVW            R1, #0x1006
1E1BE8:  CMP             R0, R1
1E1BEC:  BNE             loc_1E1C1C
1E1BF0:  VLDR            S0, [R4]
1E1BF4:  VLDR            S2, [R4,#4]
1E1BF8:  VLDR            S4, [R4,#8]
1E1BFC:  VCVT.F32.S32    S0, S0
1E1C00:  VCVT.F32.S32    S2, S2
1E1C04:  VCVT.F32.S32    S4, S4
1E1C08:  VMOV            R1, S0
1E1C0C:  VMOV            R2, S2
1E1C10:  VMOV            R3, S4
1E1C14:  BL              j_alListener3f
1E1C18:  B               loc_1E1CA0
1E1C1C:  BL              j_GetContextRef
1E1C20:  MOV             R5, R0
1E1C24:  CMP             R5, #0
1E1C28:  BEQ             loc_1E1CA0
1E1C2C:  CMP             R4, #0
1E1C30:  MOV             R0, R5
1E1C34:  MOVWEQ          R1, #0xA003
1E1C38:  MOVWNE          R1, #0xA002
1E1C3C:  BL              j_alSetError
1E1C40:  MOV             R0, R5
1E1C44:  BL              j_ALCcontext_DecRef
1E1C48:  B               loc_1E1CA0
1E1C4C:  VLDR            S0, [R4]
1E1C50:  ADD             R1, SP, #0x28+var_24
1E1C54:  MOVW            R0, #0x100F
1E1C58:  VCVT.F32.S32    S0, S0
1E1C5C:  VSTR            S0, [SP,#0x28+var_24]
1E1C60:  VLDR            S0, [R4,#4]
1E1C64:  VCVT.F32.S32    S0, S0
1E1C68:  VSTR            S0, [SP,#0x28+var_20]
1E1C6C:  VLDR            S0, [R4,#8]
1E1C70:  VCVT.F32.S32    S0, S0
1E1C74:  VSTR            S0, [SP,#0x28+var_1C]
1E1C78:  VLDR            S0, [R4,#0xC]
1E1C7C:  VCVT.F32.S32    S0, S0
1E1C80:  VSTR            S0, [SP,#0x28+var_18]
1E1C84:  VLDR            S0, [R4,#0x10]
1E1C88:  VCVT.F32.S32    S0, S0
1E1C8C:  VSTR            S0, [SP,#0x28+var_14]
1E1C90:  VLDR            S0, [R4,#0x14]
1E1C94:  VCVT.F32.S32    S0, S0
1E1C98:  VSTR            S0, [SP,#0x28+var_10]
1E1C9C:  BL              j_alListenerfv
1E1CA0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1E1CB0)
1E1CA4:  LDR             R1, [R11,#var_C]
1E1CA8:  LDR             R0, [PC,R0]; __stack_chk_guard
1E1CAC:  LDR             R0, [R0]
1E1CB0:  SUBS            R0, R0, R1
1E1CB4:  SUBEQ           SP, R11, #8
1E1CB8:  POPEQ           {R4,R5,R11,PC}
1E1CBC:  BL              __stack_chk_fail
