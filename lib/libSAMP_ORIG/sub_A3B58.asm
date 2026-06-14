; =========================================================
; Game Engine Function: sub_A3B58
; Address            : 0xA3B58 - 0xA3D4C
; =========================================================

A3B58:  PUSH            {R4-R7,LR}
A3B5A:  ADD             R7, SP, #0xC
A3B5C:  PUSH.W          {R8-R10}
A3B60:  VPUSH           {D8-D14}
A3B64:  SUB             SP, SP, #0x48
A3B66:  MOV             R4, R0
A3B68:  LDR             R0, =(__stack_chk_guard_ptr - 0xA3B70)
A3B6A:  LDR             R6, [R7,#arg_0]
A3B6C:  ADD             R0, PC; __stack_chk_guard_ptr
A3B6E:  LDR             R0, [R0]; __stack_chk_guard
A3B70:  LDR             R0, [R0]
A3B72:  STR             R0, [SP,#0x98+var_54]
A3B74:  ADDS            R0, R6, #1
A3B76:  BEQ.W           loc_A3D2E
A3B7A:  CMP             R6, #7
A3B7C:  BHI.W           loc_A3D2E
A3B80:  LDR             R0, [R4,#0x28]
A3B82:  LDR             R0, [R0,#8]
A3B84:  LDR             R0, [R0,#0x38]
A3B86:  LDRB            R5, [R0,#4]
A3B88:  LSLS            R5, R5, #0x1E
A3B8A:  BMI.W           loc_A3D2E
A3B8E:  VMOV            S2, R1
A3B92:  LDR             R1, [R0,#0x58]
A3B94:  VMOV            S0, R2
A3B98:  LDR             R2, [R0,#0x48]
A3B9A:  VMOV            S16, R3
A3B9E:  ADD.W           R8, SP, #0x98+var_74
A3BA2:  RSB.W           R1, R1, R1,LSL#3
A3BA6:  ADD.W           R9, R8, #0x10
A3BAA:  ADD.W           R1, R2, R1,LSL#2
A3BAE:  LDRH            R2, [R1,#8]
A3BB0:  LDRH            R1, [R1,#0xA]
A3BB2:  LDR             R3, =(unk_537C0 - 0xA3BCC)
A3BB4:  VMOV            S4, R2
A3BB8:  VLDR            S3, [R0,#0x28]
A3BBC:  VMOV            S6, R1
A3BC0:  ADD.W           R1, R6, R6,LSL#1
A3BC4:  VCVT.F32.U32    S4, S4
A3BC8:  ADD             R3, PC; unk_537C0
A3BCA:  ADD.W           R1, R3, R1,LSL#3
A3BCE:  VCVT.F32.U32    S6, S6
A3BD2:  VLDR            S1, [R0,#0x24]
A3BD6:  VLDR            S8, [R1]
A3BDA:  VLDR            S10, [R1,#4]
A3BDE:  VLDR            S12, [R1,#0x10]
A3BE2:  VLDR            S14, [R1,#0x14]
A3BE6:  VADD.F32        S4, S8, S4
A3BEA:  VLDR            S8, =109.0
A3BEE:  VADD.F32        S6, S10, S6
A3BF2:  VLDR            S24, [R1,#0xC]
A3BF6:  VLDR            S22, [R1,#8]
A3BFA:  VSUB.F32        S18, S0, S14
A3BFE:  VSUB.F32        S20, S2, S12
A3C02:  LDR             R5, [R0,#8]
A3C04:  MOV             R0, R4
A3C06:  MOV             R1, R5
A3C08:  VADD.F32        S8, S4, S8
A3C0C:  VADD.F32        S2, S4, S22
A3C10:  VADD.F32        S10, S6, S24
A3C14:  VSTR            S18, [SP,#0x98+var_78]
A3C18:  VMUL.F32        S0, S6, S3
A3C1C:  VSTR            S20, [SP,#0x98+var_7C]
A3C20:  VMUL.F32        S4, S4, S1
A3C24:  VADD.F32        S6, S8, S22
A3C28:  VMUL.F32        S8, S8, S1
A3C2C:  VMUL.F32        S10, S10, S3
A3C30:  VMUL.F32        S2, S2, S1
A3C34:  VSTR            S0, [SP,#0x98+var_60]
A3C38:  VSTR            S0, [SP,#0x98+var_70]
A3C3C:  VSTR            S4, [SP,#0x98+var_74]
A3C40:  VMUL.F32        S6, S6, S1
A3C44:  VSTR            S8, [SP,#0x98+var_64]
A3C48:  VSTR            S10, [SP,#0x98+var_58]
A3C4C:  VSTR            S10, [SP,#0x98+var_68]
A3C50:  VSTR            S2, [SP,#0x98+var_6C]
A3C54:  VSTR            S6, [SP,#0x98+var_5C]
A3C58:  BL              sub_9C138
A3C5C:  VMOV.F32        S26, S18
A3C60:  VLDR            S0, =0.0
A3C64:  VMUL.F32        S24, S24, S16
A3C68:  ADD.W           R6, R8, #0x18
A3C6C:  VMUL.F32        S22, S22, S16
A3C70:  ADD             R2, SP, #0x98+var_84
A3C72:  ADD             R3, SP, #0x98+var_8C
A3C74:  MOV.W           R10, #0x30000000
A3C78:  MOV             R0, R4
A3C7A:  MOV             R1, R5
A3C7C:  STRD.W          R9, R6, [SP,#0x98+var_98]
A3C80:  VMLA.F32        S26, S16, S0
A3C84:  STR.W           R10, [SP,#0x98+var_90]
A3C88:  VADD.F32        S0, S20, S16
A3C8C:  VADD.F32        S28, S24, S26
A3C90:  VSTR            S26, [SP,#0x98+var_80]
A3C94:  VADD.F32        S2, S22, S0
A3C98:  VSTR            S0, [SP,#0x98+var_84]
A3C9C:  VSTR            S28, [SP,#0x98+var_88]
A3CA0:  VSTR            S2, [SP,#0x98+var_8C]
A3CA4:  BL              sub_9DF08
A3CA8:  VADD.F32        S0, S16, S16
A3CAC:  ADD             R2, SP, #0x98+var_84
A3CAE:  ADD             R3, SP, #0x98+var_8C
A3CB0:  MOV             R0, R4
A3CB2:  MOV             R1, R5
A3CB4:  VSTR            S26, [SP,#0x98+var_80]
A3CB8:  VSTR            S28, [SP,#0x98+var_88]
A3CBC:  STRD.W          R9, R6, [SP,#0x98+var_98]
A3CC0:  STR.W           R10, [SP,#0x98+var_90]
A3CC4:  VADD.F32        S0, S0, S20
A3CC8:  VADD.F32        S2, S22, S0
A3CCC:  VSTR            S0, [SP,#0x98+var_84]
A3CD0:  VSTR            S2, [SP,#0x98+var_8C]
A3CD4:  BL              sub_9DF08
A3CD8:  VADD.F32        S16, S24, S18
A3CDC:  STRD.W          R9, R6, [SP,#0x98+var_98]
A3CE0:  VADD.F32        S18, S22, S20
A3CE4:  ADD             R6, SP, #0x98+var_7C
A3CE6:  MOV.W           R0, #0xFF000000
A3CEA:  ADD             R3, SP, #0x98+var_84
A3CEC:  STR             R0, [SP,#0x98+var_90]
A3CEE:  MOV             R0, R4
A3CF0:  MOV             R1, R5
A3CF2:  MOV             R2, R6
A3CF4:  VSTR            S16, [SP,#0x98+var_80]
A3CF8:  VSTR            S18, [SP,#0x98+var_84]
A3CFC:  BL              sub_9DF08
A3D00:  ADD.W           R1, R8, #8
A3D04:  MOV.W           R0, #0xFFFFFFFF
A3D08:  ADD             R3, SP, #0x98+var_84
A3D0A:  STR             R0, [SP,#0x98+var_90]
A3D0C:  STRD.W          R8, R1, [SP,#0x98+var_98]
A3D10:  MOV             R0, R4
A3D12:  MOV             R1, R5
A3D14:  MOV             R2, R6
A3D16:  VSTR            S16, [SP,#0x98+var_80]
A3D1A:  VSTR            S18, [SP,#0x98+var_84]
A3D1E:  BL              sub_9DF08
A3D22:  LDR             R0, [R4,#0x4C]
A3D24:  SUBS            R0, #1
A3D26:  STR             R0, [R4,#0x4C]
A3D28:  MOV             R0, R4
A3D2A:  BL              sub_9BF30
A3D2E:  LDR             R0, [SP,#0x98+var_54]
A3D30:  LDR             R1, =(__stack_chk_guard_ptr - 0xA3D36)
A3D32:  ADD             R1, PC; __stack_chk_guard_ptr
A3D34:  LDR             R1, [R1]; __stack_chk_guard
A3D36:  LDR             R1, [R1]
A3D38:  CMP             R1, R0
A3D3A:  ITTTT EQ
A3D3C:  ADDEQ           SP, SP, #0x48 ; 'H'
A3D3E:  VPOPEQ          {D8-D14}
A3D42:  POPEQ.W         {R8-R10}
A3D46:  POPEQ           {R4-R7,PC}
A3D48:  BLX             __stack_chk_fail
