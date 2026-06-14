; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode6UpdateER7CVectorR11CQuaternionf
; Address            : 0x38AA44 - 0x38ABC6
; =========================================================

38AA44:  PUSH            {R4-R7,LR}
38AA46:  ADD             R7, SP, #0xC
38AA48:  PUSH.W          {R8}
38AA4C:  VPUSH           {D8}
38AA50:  SUB             SP, SP, #0x30; float
38AA52:  MOV             R4, SP
38AA54:  BFC.W           R4, #0, #4
38AA58:  MOV             SP, R4
38AA5A:  VMOV.I32        Q8, #0
38AA5E:  MOV             R8, R2
38AA60:  MOV             R4, R1
38AA62:  MOVS            R6, #0
38AA64:  STRD.W          R6, R6, [R4]
38AA68:  MOV             R5, R0
38AA6A:  STR             R6, [R4,#8]
38AA6C:  VMOV            S16, R3
38AA70:  VST1.32         {D16-D17}, [R8]
38AA74:  LDR             R0, [R5,#0x14]
38AA76:  LDRB.W          R1, [R0,#0x2E]
38AA7A:  LSLS            R1, R1, #0x1F
38AA7C:  BEQ             loc_38AAA6
38AA7E:  VLDR            S0, [R0,#0x28]
38AA82:  VLDR            S2, [R5,#0xC]
38AA86:  VSUB.F32        S0, S2, S0
38AA8A:  VCMPE.F32       S0, #0.0
38AA8E:  VSTR            S0, [R5,#0xC]
38AA92:  VMRS            APSR_nzcv, FPSCR
38AA96:  BLE             loc_38AA9C
38AA98:  MOVS            R6, #0
38AA9A:  B               loc_38AAA6
38AA9C:  MOV             R0, R5; this
38AA9E:  BLX             j__ZN14CAnimBlendNode12NextKeyFrameEv; CAnimBlendNode::NextKeyFrame(void)
38AAA2:  MOV             R6, R0
38AAA4:  LDR             R0, [R5,#0x14]
38AAA6:  VLDR            S0, [R0,#0x18]
38AAAA:  LDRB.W          R0, [R0,#0x2E]
38AAAE:  VMUL.F32        S16, S0, S16
38AAB2:  LSLS            R0, R0, #0x1B
38AAB4:  IT MI
38AAB6:  VMOVMI.F32      S16, S0
38AABA:  VCMPE.F32       S16, #0.0
38AABE:  VMRS            APSR_nzcv, FPSCR
38AAC2:  BLE             loc_38ABA8
38AAC4:  LDR             R0, [R5,#0x10]
38AAC6:  LDRSH.W         R3, [R5,#0xA]
38AACA:  LDRSH.W         R1, [R5,#8]
38AACE:  LDRH.W          LR, [R0,#4]
38AAD2:  ADD.W           R2, R3, R3,LSL#2
38AAD6:  LDR             R0, [R0,#8]
38AAD8:  ANDS.W          R12, LR, #2
38AADC:  MOV.W           R2, R2,LSL#2
38AAE0:  IT NE
38AAE2:  LSLNE           R2, R3, #5
38AAE4:  ADD.W           R3, R1, R1,LSL#2
38AAE8:  MOV.W           R3, R3,LSL#2
38AAEC:  IT NE
38AAEE:  LSLNE           R3, R1, #5
38AAF0:  ADDS            R1, R0, R2
38AAF2:  ADD             R3, R0
38AAF4:  VLDR            S0, [R3,#0x10]
38AAF8:  VCMP.F32        S0, #0.0
38AAFC:  VMRS            APSR_nzcv, FPSCR
38AB00:  BEQ             loc_38ABBA
38AB02:  VLDR            S2, [R5,#0xC]
38AB06:  VSUB.F32        S2, S0, S2
38AB0A:  VDIV.F32        S0, S2, S0
38AB0E:  CMP.W           R12, #0
38AB12:  BEQ             loc_38AB6E
38AB14:  VLDR            S2, [R1,#0x14]
38AB18:  VLDR            S8, [R3,#0x14]
38AB1C:  VLDR            S4, [R1,#0x18]
38AB20:  VLDR            S10, [R3,#0x18]
38AB24:  VSUB.F32        S8, S8, S2
38AB28:  VLDR            S6, [R1,#0x1C]
38AB2C:  VLDR            S12, [R3,#0x1C]
38AB30:  VSUB.F32        S10, S10, S4
38AB34:  VSUB.F32        S12, S12, S6
38AB38:  VMUL.F32        S8, S0, S8
38AB3C:  VMUL.F32        S10, S0, S10
38AB40:  VMUL.F32        S12, S0, S12
38AB44:  VADD.F32        S2, S2, S8
38AB48:  VADD.F32        S4, S4, S10
38AB4C:  VADD.F32        S6, S6, S12
38AB50:  VMUL.F32        S2, S16, S2
38AB54:  VMUL.F32        S4, S16, S4
38AB58:  VMUL.F32        S6, S16, S6
38AB5C:  VSTR            S2, [R4]
38AB60:  VSTR            S4, [R4,#4]
38AB64:  VSTR            S6, [R4,#8]
38AB68:  LDR             R0, [R5,#0x10]
38AB6A:  LDRH.W          LR, [R0,#4]
38AB6E:  MOVS.W          R0, LR,LSL#31
38AB72:  BEQ             loc_38ABA8
38AB74:  VLD1.32         {D16-D17}, [R1]
38AB78:  ADD             R1, SP, #0x48+var_28; CQuaternion *
38AB7A:  ADD             R2, SP, #0x48+var_38; CQuaternion *
38AB7C:  MOV             R0, R8; this
38AB7E:  VST1.64         {D16-D17}, [R1@128]
38AB82:  VLD1.32         {D16-D17}, [R3]
38AB86:  VST1.64         {D16-D17}, [R2@128]
38AB8A:  LDR             R3, [R5]; float
38AB8C:  VLDR            S2, [R5,#4]
38AB90:  VSTR            S2, [SP,#0x48+var_48]
38AB94:  VSTR            S0, [SP,#0x48+var_44]
38AB98:  BLX             j__ZN11CQuaternion5SlerpERKS_S1_fff; CQuaternion::Slerp(CQuaternion const&,CQuaternion const&,float,float,float)
38AB9C:  VLD1.32         {D16-D17}, [R8]
38ABA0:  VMUL.F32        Q8, Q8, D8[0]
38ABA4:  VST1.32         {D16-D17}, [R8]
38ABA8:  SUB.W           R4, R7, #-var_18
38ABAC:  MOV             R0, R6
38ABAE:  MOV             SP, R4
38ABB0:  VPOP            {D8}
38ABB4:  POP.W           {R8}
38ABB8:  POP             {R4-R7,PC}
38ABBA:  VLDR            S0, =0.0
38ABBE:  CMP.W           R12, #0
38ABC2:  BNE             loc_38AB14
38ABC4:  B               loc_38AB6E
