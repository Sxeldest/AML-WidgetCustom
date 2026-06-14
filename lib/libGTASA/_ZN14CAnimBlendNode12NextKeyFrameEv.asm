; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode12NextKeyFrameEv
; Address            : 0x38ABCC - 0x38AD22
; =========================================================

38ABCC:  PUSH            {R4-R7,LR}
38ABCE:  ADD             R7, SP, #0xC
38ABD0:  PUSH.W          {R8}
38ABD4:  VPUSH           {D8}
38ABD8:  MOV             R4, R0
38ABDA:  LDR             R0, [R4,#0x10]
38ABDC:  LDRH.W          R12, [R0,#6]
38ABE0:  SXTH.W          R3, R12
38ABE4:  CMP             R3, #2
38ABE6:  BGE             loc_38ABEE
38ABE8:  MOV.W           R8, #0
38ABEC:  B               loc_38AD14
38ABEE:  VLDR            S0, [R4,#0xC]
38ABF2:  MOV.W           R8, #0
38ABF6:  LDRH            R1, [R4,#8]
38ABF8:  VCMPE.F32       S0, #0.0
38ABFC:  STRH            R1, [R4,#0xA]
38ABFE:  VMRS            APSR_nzcv, FPSCR
38AC02:  BGT             loc_38AC4E
38AC04:  MOV             R2, R1
38AC06:  ADDS            R1, R2, #1
38AC08:  STRH            R1, [R4,#8]
38AC0A:  SXTH            R1, R1
38AC0C:  CMP             R3, R1
38AC0E:  BGT             loc_38AC22
38AC10:  LDR             R1, [R4,#0x14]
38AC12:  LDRB.W          R1, [R1,#0x2E]
38AC16:  LSLS            R1, R1, #0x1E
38AC18:  BPL             loc_38AD00
38AC1A:  MOVS            R1, #0
38AC1C:  MOV.W           R8, #1
38AC20:  STRH            R1, [R4,#8]
38AC22:  ADD.W           R6, R1, R1,LSL#2
38AC26:  LDRH            R5, [R0,#4]
38AC28:  LDR             R2, [R0,#8]
38AC2A:  LSLS            R6, R6, #2
38AC2C:  TST.W           R5, #2
38AC30:  IT NE
38AC32:  LSLNE           R6, R1, #5
38AC34:  ADD             R2, R6
38AC36:  VLDR            S2, [R2,#0x10]
38AC3A:  MOV             R2, R1
38AC3C:  VADD.F32        S0, S2, S0
38AC40:  VCMPE.F32       S0, #0.0
38AC44:  VSTR            S0, [R4,#0xC]
38AC48:  VMRS            APSR_nzcv, FPSCR
38AC4C:  BLE             loc_38AC06
38AC4E:  SUBS            R3, R1, #1
38AC50:  MOVW            R2, #0xFFFF
38AC54:  UXTAH.W         R2, R2, R1
38AC58:  SXTH            R6, R3
38AC5A:  CMP             R6, #0
38AC5C:  IT LT
38AC5E:  UXTAHLT.W       R2, R12, R3
38AC62:  STRH            R2, [R4,#0xA]
38AC64:  LDRH            R3, [R0,#4]
38AC66:  TST.W           R3, #1
38AC6A:  BEQ             loc_38AD14
38AC6C:  ANDS.W          R3, R3, #2
38AC70:  SXTH            R1, R1
38AC72:  MOV.W           R3, R2,LSL#16
38AC76:  SXTH            R2, R2
38AC78:  ADD.W           R2, R2, R2,LSL#2
38AC7C:  LDR             R0, [R0,#8]
38AC7E:  VMOV.F32        S16, #1.0
38AC82:  MOV.W           R2, R2,LSL#2
38AC86:  IT NE
38AC88:  ASRNE           R2, R3, #0xB
38AC8A:  ADD.W           R3, R1, R1,LSL#2
38AC8E:  MOV.W           R3, R3,LSL#2
38AC92:  IT NE
38AC94:  LSLNE           R3, R1, #5
38AC96:  ADDS            R1, R0, R3
38AC98:  ADD             R0, R2
38AC9A:  VLDR            S0, [R1]
38AC9E:  VLDR            S8, [R0]
38ACA2:  VLDR            S2, [R1,#4]
38ACA6:  VLDR            S10, [R0,#4]
38ACAA:  VMUL.F32        S0, S8, S0
38ACAE:  VLDR            S4, [R1,#8]
38ACB2:  VMUL.F32        S2, S10, S2
38ACB6:  VLDR            S12, [R0,#8]
38ACBA:  VLDR            S6, [R1,#0xC]
38ACBE:  VMUL.F32        S4, S12, S4
38ACC2:  VLDR            S14, [R0,#0xC]
38ACC6:  VADD.F32        S0, S0, S2
38ACCA:  VMUL.F32        S2, S14, S6
38ACCE:  VADD.F32        S0, S0, S4
38ACD2:  VADD.F32        S0, S0, S2
38ACD6:  VMIN.F32        D0, D0, D8
38ACDA:  VMOV            R0, S0; x
38ACDE:  BLX             acosf
38ACE2:  VMOV            S0, R0; x
38ACE6:  STR             R0, [R4]
38ACE8:  VCMP.F32        S0, #0.0
38ACEC:  VMRS            APSR_nzcv, FPSCR
38ACF0:  BEQ             loc_38AD0C
38ACF2:  BLX             sinf
38ACF6:  VMOV            S0, R0
38ACFA:  VDIV.F32        S0, S16, S0
38ACFE:  B               loc_38AD10
38AD00:  MOV.W           R8, #0
38AD04:  STR.W           R8, [R4,#0xC]
38AD08:  STRH            R2, [R4,#8]
38AD0A:  B               loc_38AD14
38AD0C:  VLDR            S0, =0.0
38AD10:  VSTR            S0, [R4,#4]
38AD14:  AND.W           R0, R8, #1
38AD18:  VPOP            {D8}
38AD1C:  POP.W           {R8}
38AD20:  POP             {R4-R7,PC}
