; =========================================================
; Game Engine Function: alListener3i
; Address            : 0x1E1B38 - 0x1E1BA4
; =========================================================

1E1B38:  PUSH            {R4,R10,R11,LR}
1E1B3C:  ADD             R11, SP, #8
1E1B40:  ORR             R12, R0, #2
1E1B44:  MOVW            R4, #0x1006
1E1B48:  CMP             R12, R4
1E1B4C:  BNE             loc_1E1B7C
1E1B50:  VMOV            S0, R1
1E1B54:  VMOV            S2, R2
1E1B58:  VMOV            S4, R3
1E1B5C:  VCVT.F32.S32    S0, S0
1E1B60:  VCVT.F32.S32    S2, S2
1E1B64:  VCVT.F32.S32    S4, S4
1E1B68:  VMOV            R1, S0
1E1B6C:  VMOV            R2, S2
1E1B70:  VMOV            R3, S4
1E1B74:  POP             {R4,R10,R11,LR}
1E1B78:  B               j_alListener3f
1E1B7C:  BL              j_GetContextRef
1E1B80:  MOV             R4, R0
1E1B84:  CMP             R4, #0
1E1B88:  POPEQ           {R4,R10,R11,PC}
1E1B8C:  MOV             R0, R4
1E1B90:  MOVW            R1, #0xA002
1E1B94:  BL              j_alSetError
1E1B98:  MOV             R0, R4
1E1B9C:  POP             {R4,R10,R11,LR}
1E1BA0:  B               j_ALCcontext_DecRef
