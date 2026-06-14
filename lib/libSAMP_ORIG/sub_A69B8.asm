; =========================================================
; Game Engine Function: sub_A69B8
; Address            : 0xA69B8 - 0xA6B96
; =========================================================

A69B8:  PUSH            {R4-R7,LR}
A69BA:  ADD             R7, SP, #0xC
A69BC:  PUSH.W          {R8-R10}
A69C0:  VPUSH           {D8-D9}
A69C4:  SUB             SP, SP, #0x38
A69C6:  MOV             R4, R0
A69C8:  LDR             R0, =(off_114D5C - 0xA69D4)
A69CA:  MOVW            R3, #0x1550
A69CE:  ADD             R5, SP, #0x60+var_40
A69D0:  ADD             R0, PC; off_114D5C
A69D2:  MOV.W           R10, #0
A69D6:  LDR             R0, [R0]; dword_1ACF68
A69D8:  LDR             R0, [R0]
A69DA:  LDR             R2, =(__stack_chk_guard_ptr - 0xA69E4)
A69DC:  ADD.W           R9, R0, R3
A69E0:  ADD             R2, PC; __stack_chk_guard_ptr
A69E2:  LDR             R2, [R2]; __stack_chk_guard
A69E4:  LDR             R2, [R2]
A69E6:  STR             R2, [SP,#0x60+var_2C]
A69E8:  MOVW            R2, #0x19AC
A69EC:  VLDR            S0, [R9]
A69F0:  VLDR            S2, [R9,#4]
A69F4:  VLDR            S4, [R9,#0x378]
A69F8:  VADD.F32        S0, S0, S0
A69FC:  VLDR            S8, [R1,#4]
A6A00:  VADD.F32        S2, S2, S2
A6A04:  VLDR            S6, [R1]
A6A08:  VADD.F32        S8, S4, S8
A6A0C:  LDR.W           R8, [R0,R2]
A6A10:  VADD.F32        S4, S4, S6
A6A14:  LDRD.W          R0, R1, [R1]
A6A18:  MOVS            R2, #0
A6A1A:  STRD.W          R0, R1, [SP,#0x60+var_40]
A6A1E:  MOV             R0, R5
A6A20:  MOV             R1, R4
A6A22:  VADD.F32        S2, S8, S2
A6A26:  VADD.F32        S0, S4, S0
A6A2A:  VSTR            S2, [SP,#0x60+var_34]
A6A2E:  VSTR            S0, [SP,#0x60+var_38]
A6A32:  BL              sub_8B314
A6A36:  SUB.W           R2, R7, #-var_41
A6A3A:  SUB.W           R3, R7, #-var_42
A6A3E:  MOV             R6, R0
A6A40:  MOV             R0, R5
A6A42:  MOV             R1, R4
A6A44:  STR.W           R10, [SP,#0x60+var_60]
A6A48:  BL              sub_A634C
A6A4C:  MOV             R4, R0
A6A4E:  CMP             R6, #0
A6A50:  BEQ.W           loc_A6B74
A6A54:  LDRB.W          R1, [R7,#var_42]
A6A58:  MOVS            R0, #0x17
A6A5A:  MOV.W           R6, #0x3F800000
A6A5E:  CMP             R1, #0
A6A60:  MOV.W           R1, #0x3F800000
A6A64:  IT EQ
A6A66:  MOVEQ           R0, #0x16
A6A68:  BL              sub_88C10
A6A6C:  VLDR            S0, [SP,#0x60+var_40]
A6A70:  VMOV.F32        S16, #0.5
A6A74:  VLDR            S4, [SP,#0x60+var_38]
A6A78:  MOV             R3, R0; int
A6A7A:  VLDR            S2, [SP,#0x60+var_3C]
A6A7E:  VLDR            S6, [SP,#0x60+var_34]
A6A82:  VADD.F32        S0, S0, S4
A6A86:  LDRB.W          R0, [R7,#var_41]
A6A8A:  VADD.F32        S2, S2, S6
A6A8E:  VMUL.F32        S0, S0, S16
A6A92:  VMUL.F32        S2, S2, S16
A6A96:  VSTR            S0, [SP,#0x60+var_4C]
A6A9A:  VSTR            S2, [SP,#0x60+var_48]
A6A9E:  CBZ             R0, loc_A6AD0
A6AA0:  VMOV.F32        S0, #1.0
A6AA4:  VLDR            S2, [R9,#0x378]
A6AA8:  VMOV.F32        S4, #2.0
A6AAC:  MOVS            R1, #0xC
A6AAE:  VMLA.F32        S0, S2, S16
A6AB2:  VCMP.F32        S0, S4
A6AB6:  VMRS            APSR_nzcv, FPSCR
A6ABA:  IT LS
A6ABC:  VMOVLS.F32      S0, S4
A6AC0:  VMOV            R2, S0; int
A6AC4:  LDR.W           R0, [R8,#0x27C]; int
A6AC8:  STR             R1, [SP,#0x60+var_60]; int
A6ACA:  ADD             R1, SP, #0x60+var_4C; int
A6ACC:  BL              sub_9D838
A6AD0:  MOVS            R0, #0
A6AD2:  MOV.W           R1, #0x3F800000
A6AD6:  VLDR            S18, [R9,#0x378]
A6ADA:  BL              sub_88C10
A6ADE:  VMUL.F32        S2, S18, S16
A6AE2:  VLDR            S4, [SP,#0x60+var_4C]
A6AE6:  VMOV.F32        S0, #-0.5
A6AEA:  VLDR            S6, [SP,#0x60+var_48]
A6AEE:  VMOV.F32        S16, #-1.0
A6AF2:  VLDR            S8, =0.7071
A6AF6:  MOV             R5, R0
A6AF8:  LDR.W           R0, [R8,#0x27C]; int
A6AFC:  ADD             R1, SP, #0x60+var_54; int
A6AFE:  ADD             R2, SP, #0x60+var_5C; int
A6B00:  MOV             R3, R5; int
A6B02:  STR             R6, [SP,#0x60+var_60]
A6B04:  VADD.F32        S6, S6, S0
A6B08:  VMLA.F32        S16, S2, S8
A6B0C:  VADD.F32        S0, S4, S0
A6B10:  VSTR            S6, [SP,#0x60+var_48]
A6B14:  VADD.F32        S2, S16, S6
A6B18:  VSUB.F32        S8, S6, S16
A6B1C:  VADD.F32        S4, S16, S0
A6B20:  VSTR            S0, [SP,#0x60+var_4C]
A6B24:  VSUB.F32        S10, S0, S16
A6B28:  VSTR            S2, [SP,#0x60+var_50]
A6B2C:  VSTR            S8, [SP,#0x60+var_58]
A6B30:  VSTR            S4, [SP,#0x60+var_54]
A6B34:  VSTR            S10, [SP,#0x60+var_5C]
A6B38:  BL              sub_9D43C
A6B3C:  VLDR            S0, [SP,#0x60+var_4C]
A6B40:  ADD             R1, SP, #0x60+var_54; int
A6B42:  VLDR            S2, [SP,#0x60+var_48]
A6B46:  ADD             R2, SP, #0x60+var_5C; int
A6B48:  VADD.F32        S6, S16, S0
A6B4C:  LDR.W           R0, [R8,#0x27C]; int
A6B50:  VSUB.F32        S4, S2, S16
A6B54:  MOV             R3, R5; int
A6B56:  VADD.F32        S2, S16, S2
A6B5A:  STR             R6, [SP,#0x60+var_60]
A6B5C:  VSUB.F32        S0, S0, S16
A6B60:  VSTR            S6, [SP,#0x60+var_54]
A6B64:  VSTR            S4, [SP,#0x60+var_50]
A6B68:  VSTR            S2, [SP,#0x60+var_58]
A6B6C:  VSTR            S0, [SP,#0x60+var_5C]
A6B70:  BL              sub_9D43C
A6B74:  LDR             R0, [SP,#0x60+var_2C]
A6B76:  LDR             R1, =(__stack_chk_guard_ptr - 0xA6B7C)
A6B78:  ADD             R1, PC; __stack_chk_guard_ptr
A6B7A:  LDR             R1, [R1]; __stack_chk_guard
A6B7C:  LDR             R1, [R1]
A6B7E:  CMP             R1, R0
A6B80:  ITTTT EQ
A6B82:  MOVEQ           R0, R4
A6B84:  ADDEQ           SP, SP, #0x38 ; '8'
A6B86:  VPOPEQ          {D8-D9}
A6B8A:  POPEQ.W         {R8-R10}
A6B8E:  IT EQ
A6B90:  POPEQ           {R4-R7,PC}
A6B92:  BLX             __stack_chk_fail
