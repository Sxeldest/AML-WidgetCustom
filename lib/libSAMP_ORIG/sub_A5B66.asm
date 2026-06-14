; =========================================================
; Game Engine Function: sub_A5B66
; Address            : 0xA5B66 - 0xA5CC2
; =========================================================

A5B66:  PUSH            {R4-R7,LR}
A5B68:  ADD             R7, SP, #0xC
A5B6A:  PUSH.W          {R11}
A5B6E:  VPUSH           {D8-D15}
A5B72:  CMP             R2, #0x10
A5B74:  BGT.W           loc_A5CB8
A5B78:  VMOV.F32        S28, S2
A5B7C:  ADDS            R6, R2, #1
A5B7E:  VSUB.F32        S2, S7, S1
A5B82:  MOV             R4, R1
A5B84:  VMOV.F32        S24, S4
A5B88:  MOV             R5, R0
A5B8A:  VSUB.F32        S4, S6, S0
A5B8E:  VMOV.F32        S20, S8
A5B92:  VMOV.F32        S16, S7
A5B96:  VMOV.F32        S18, S6
A5B9A:  VMOV.F32        S22, S5
A5B9E:  VMUL.F32        S2, S2, S2
A5BA2:  VMOV.F32        S26, S3
A5BA6:  VMOV.F32        S19, #0.5
A5BAA:  VMLA.F32        S2, S4, S4
A5BAE:  VSQRT.F32       S2, S2
A5BB2:  VSUB.F32        S4, S22, S26
A5BB6:  VSUB.F32        S6, S26, S1
A5BBA:  VSUB.F32        S10, S24, S28
A5BBE:  VSUB.F32        S12, S28, S0
A5BC2:  VSUB.F32        S8, S16, S22
A5BC6:  VSUB.F32        S14, S18, S24
A5BCA:  VMUL.F32        S4, S4, S4
A5BCE:  VMUL.F32        S6, S6, S6
A5BD2:  VMUL.F32        S8, S8, S8
A5BD6:  VMLA.F32        S4, S10, S10
A5BDA:  VMLA.F32        S6, S12, S12
A5BDE:  VMLA.F32        S8, S14, S14
A5BE2:  VSQRT.F32       S4, S4
A5BE6:  VSQRT.F32       S6, S6
A5BEA:  VSQRT.F32       S8, S8
A5BEE:  VADD.F32        S4, S6, S4
A5BF2:  VADD.F32        S4, S8, S4
A5BF6:  VMUL.F32        S4, S4, S4
A5BFA:  VMLS.F32        S4, S2, S2
A5BFE:  VCMP.F32        S4, S20
A5C02:  VMRS            APSR_nzcv, FPSCR
A5C06:  BLE             loc_A5CA2
A5C08:  VADD.F32        S4, S26, S22
A5C0C:  MOV             R0, R5
A5C0E:  VADD.F32        S2, S22, S16
A5C12:  MOV             R1, R4
A5C14:  VADD.F32        S6, S1, S26
A5C18:  MOV             R2, R6
A5C1A:  VADD.F32        S8, S24, S18
A5C1E:  VADD.F32        S10, S28, S24
A5C22:  VADD.F32        S12, S0, S28
A5C26:  VMUL.F32        S4, S4, S19
A5C2A:  VMUL.F32        S22, S2, S19
A5C2E:  VMUL.F32        S3, S6, S19
A5C32:  VMUL.F32        S24, S8, S19
A5C36:  VMUL.F32        S6, S10, S19
A5C3A:  VMUL.F32        S2, S12, S19
A5C3E:  VADD.F32        S8, S4, S22
A5C42:  VADD.F32        S4, S3, S4
A5C46:  VADD.F32        S10, S6, S24
A5C4A:  VADD.F32        S6, S2, S6
A5C4E:  VMUL.F32        S26, S8, S19
A5C52:  VMUL.F32        S5, S4, S19
A5C56:  VMUL.F32        S28, S10, S19
A5C5A:  VMUL.F32        S4, S6, S19
A5C5E:  VADD.F32        S6, S5, S26
A5C62:  VADD.F32        S8, S4, S28
A5C66:  VMUL.F32        S30, S6, S19
A5C6A:  VMUL.F32        S17, S8, S19
A5C6E:  VMOV.F32        S8, S20
A5C72:  VMOV.F32        S7, S30
A5C76:  VMOV.F32        S6, S17
A5C7A:  BL              sub_A5B66
A5C7E:  VSUB.F32        S0, S16, S30
A5C82:  ADDS            R6, #1
A5C84:  VSUB.F32        S2, S18, S17
A5C88:  CMP             R6, #0x12
A5C8A:  VMOV.F32        S1, S30
A5C8E:  VMUL.F32        S0, S0, S0
A5C92:  VMLA.F32        S0, S2, S2
A5C96:  VSQRT.F32       S2, S0
A5C9A:  VMOV.F32        S0, S17
A5C9E:  BNE             loc_A5BB2
A5CA0:  B               loc_A5CB8
A5CA2:  LDR             R0, [R4]
A5CA4:  CMP             R5, #0
A5CA6:  ITTT NE
A5CA8:  ADDNE.W         R1, R5, R0,LSL#3
A5CAC:  VSTRNE          S18, [R1]
A5CB0:  VSTRNE          S16, [R1,#4]
A5CB4:  ADDS            R0, #1
A5CB6:  STR             R0, [R4]
A5CB8:  VPOP            {D8-D15}
A5CBC:  POP.W           {R11}
A5CC0:  POP             {R4-R7,PC}
