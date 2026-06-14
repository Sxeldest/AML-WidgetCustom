; =========================================================
; Game Engine Function: _ZN5CBoat12FillBoatListEv
; Address            : 0x56CC6C - 0x56CF00
; =========================================================

56CC6C:  LDR             R0, =(TheCamera_ptr - 0x56CC76)
56CC6E:  VMOV.I32        Q8, #0
56CC72:  ADD             R0, PC; TheCamera_ptr
56CC74:  LDR             R0, [R0]; TheCamera
56CC76:  ADD.W           R1, R0, #0x910
56CC7A:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
56CC7C:  VLDR            S0, [R1]
56CC80:  ADDW            R1, R0, #0x90C
56CC84:  CMP             R2, #0
56CC86:  VLDR            S2, [R1]
56CC8A:  VMUL.F32        S4, S0, S0
56CC8E:  LDR             R1, =(_ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr - 0x56CC98)
56CC90:  VMUL.F32        S6, S2, S2
56CC94:  ADD             R1, PC; _ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr
56CC96:  LDR             R1, [R1]; CBoat::apFrameWakeGeneratingBoats ...
56CC98:  VST1.32         {D16-D17}, [R1]
56CC9C:  ADD.W           R1, R2, #0x30 ; '0'
56CCA0:  VADD.F32        S4, S6, S4
56CCA4:  IT EQ
56CCA6:  ADDEQ           R1, R0, #4
56CCA8:  VLDR            S6, [R1,#4]
56CCAC:  VSQRT.F32       S8, S4
56CCB0:  VCMPE.F32       S8, #0.0
56CCB4:  VLDR            S4, [R1]
56CCB8:  VMRS            APSR_nzcv, FPSCR
56CCBC:  BLE             loc_56CCC6
56CCBE:  VDIV.F32        S0, S0, S8
56CCC2:  VDIV.F32        S2, S2, S8
56CCC6:  PUSH            {R4-R7,LR}
56CCC8:  ADD             R7, SP, #0x14+var_8
56CCCA:  PUSH.W          {R8-R11}
56CCCE:  SUB             SP, SP, #4
56CCD0:  VPUSH           {D8-D12}
56CCD4:  SUB             SP, SP, #8
56CCD6:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x56CCDC)
56CCD8:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
56CCDA:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
56CCDC:  LDR             R0, [R0]; CPools::ms_pVehiclePool
56CCDE:  LDR             R2, [R0,#8]
56CCE0:  CMP             R2, #0
56CCE2:  BEQ.W           loc_56CEF2
56CCE6:  LDR             R3, =(_ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr - 0x56CCF4)
56CCE8:  MOVW            R1, #0xA2C
56CCEC:  MULS            R1, R2
56CCEE:  LDR             R4, =(_ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr - 0x56CCFA)
56CCF0:  ADD             R3, PC; _ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr
56CCF2:  VMOV.F32        S10, #-15.0
56CCF6:  ADD             R4, PC; _ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr
56CCF8:  LDR.W           R12, [R3]; CBoat::apFrameWakeGeneratingBoats ...
56CCFC:  SUBS            R2, #1
56CCFE:  LDR             R3, =(_ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr - 0x56CD10)
56CD00:  MOV.W           LR, #0
56CD04:  SUBW            R1, R1, #0xA2C
56CD08:  VLDR            S8, =100.0
56CD0C:  ADD             R3, PC; _ZN5CBoat26apFrameWakeGeneratingBoatsE_ptr
56CD0E:  VLDR            S12, =6400.0
56CD12:  VLDR            S14, =1000000.0
56CD16:  LDR.W           R9, [R3]; CBoat::apFrameWakeGeneratingBoats ...
56CD1A:  LDR             R3, [R4]; CBoat::apFrameWakeGeneratingBoats ...
56CD1C:  LDR             R5, [R0,#4]
56CD1E:  LDRSB           R5, [R5,R2]
56CD20:  CMP             R5, #0
56CD22:  BLT.W           loc_56CEE6
56CD26:  LDR             R5, [R0]
56CD28:  ADDS            R5, R5, R1
56CD2A:  BEQ.W           loc_56CEE6
56CD2E:  LDR.W           R6, [R5,#0x5A0]
56CD32:  CMP             R6, #5
56CD34:  BNE.W           loc_56CEE6
56CD38:  LDRH.W          R6, [R5,#0x658]
56CD3C:  CMP             R6, #0
56CD3E:  BEQ.W           loc_56CEE6
56CD42:  LDR             R6, [R5,#0x14]
56CD44:  ADD.W           R4, R6, #0x30 ; '0'
56CD48:  CMP             R6, #0
56CD4A:  IT EQ
56CD4C:  ADDEQ           R4, R5, #4
56CD4E:  VLDR            S1, [R4]
56CD52:  VLDR            S3, [R4,#4]
56CD56:  VSUB.F32        S1, S1, S4
56CD5A:  VSUB.F32        S3, S3, S6
56CD5E:  VMUL.F32        S7, S2, S1
56CD62:  VMUL.F32        S5, S0, S3
56CD66:  VADD.F32        S5, S7, S5
56CD6A:  VCMPE.F32       S5, S8
56CD6E:  VMRS            APSR_nzcv, FPSCR
56CD72:  BGT.W           loc_56CEE6
56CD76:  VCMPE.F32       S5, S10
56CD7A:  VMRS            APSR_nzcv, FPSCR
56CD7E:  BLT.W           loc_56CEE6
56CD82:  VMUL.F32        S3, S3, S3
56CD86:  VMUL.F32        S1, S1, S1
56CD8A:  VADD.F32        S1, S1, S3
56CD8E:  VCMPE.F32       S1, S12
56CD92:  VMRS            APSR_nzcv, FPSCR
56CD96:  BGT.W           loc_56CEE6
56CD9A:  SXTH.W          R6, LR
56CD9E:  CMP             R6, #4
56CDA0:  BGE             loc_56CDAC
56CDA2:  STR.W           R5, [R12,R6,LSL#2]
56CDA6:  ADD.W           LR, LR, #1
56CDAA:  B               loc_56CEE6
56CDAC:  STRD.W          R3, R12, [SP,#0x58+var_58]
56CDB0:  LDRD.W          R4, R11, [R9]; CBoat::apFrameWakeGeneratingBoats
56CDB4:  LDRD.W          R6, R10, [R9,#(dword_A02588 - 0xA02580)]
56CDB8:  LDR             R3, [R4,#0x14]
56CDBA:  ADD.W           R8, R3, #0x30 ; '0'
56CDBE:  CMP             R3, #0
56CDC0:  IT EQ
56CDC2:  ADDEQ.W         R8, R4, #4
56CDC6:  LDR             R4, [R6,#0x14]
56CDC8:  VLDR            S3, [R8]
56CDCC:  VLDR            S5, [R8,#4]
56CDD0:  ADD.W           R12, R4, #0x30 ; '0'
56CDD4:  VSUB.F32        S3, S3, S4
56CDD8:  LDR.W           R3, [R11,#0x14]
56CDDC:  VSUB.F32        S5, S5, S6
56CDE0:  CMP             R4, #0
56CDE2:  LDR.W           R8, [R10,#0x14]
56CDE6:  IT EQ
56CDE8:  ADDEQ.W         R12, R6, #4
56CDEC:  ADD.W           R4, R3, #0x30 ; '0'
56CDF0:  CMP             R3, #0
56CDF2:  IT EQ
56CDF4:  ADDEQ.W         R4, R11, #4
56CDF8:  ADD.W           R3, R8, #0x30 ; '0'
56CDFC:  CMP.W           R8, #0
56CE00:  VLDR            S7, [R4]
56CE04:  VLDR            S9, [R4,#4]
56CE08:  MOV.W           R6, #0
56CE0C:  VMUL.F32        S3, S3, S3
56CE10:  VLDR            S11, [R12]
56CE14:  VMUL.F32        S5, S5, S5
56CE18:  VLDR            S13, [R12,#4]
56CE1C:  IT EQ
56CE1E:  ADDEQ.W         R3, R10, #4
56CE22:  VSUB.F32        S7, S7, S4
56CE26:  VLDM            R3, {S15-S16}
56CE2A:  VSUB.F32        S9, S9, S6
56CE2E:  VSUB.F32        S11, S11, S4
56CE32:  VSUB.F32        S15, S15, S4
56CE36:  VSUB.F32        S13, S13, S6
56CE3A:  VSUB.F32        S16, S16, S6
56CE3E:  VADD.F32        S5, S3, S5
56CE42:  VMUL.F32        S7, S7, S7
56CE46:  VMUL.F32        S3, S9, S9
56CE4A:  VMUL.F32        S11, S11, S11
56CE4E:  VMUL.F32        S15, S15, S15
56CE52:  VMUL.F32        S9, S13, S13
56CE56:  VMUL.F32        S13, S16, S16
56CE5A:  VCMPE.F32       S5, S14
56CE5E:  VMRS            APSR_nzcv, FPSCR
56CE62:  VCMPE.F32       S5, S14
56CE66:  VADD.F32        S20, S7, S3
56CE6A:  VMOV            D9, D7
56CE6E:  VADD.F32        S22, S11, S9
56CE72:  VADD.F32        S3, S15, S13
56CE76:  IT LT
56CE78:  VMOVLT.F32      S18, S5
56CE7C:  VMRS            APSR_nzcv, FPSCR
56CE80:  VCMPE.F32       S20, S18
56CE84:  VMIN.F32        D12, D10, D9
56CE88:  VMIN.F32        D8, D11, D12
56CE8C:  IT GE
56CE8E:  MOVGE.W         R6, #0xFFFFFFFF
56CE92:  VMRS            APSR_nzcv, FPSCR
56CE96:  VCMPE.F32       S22, S24
56CE9A:  IT LT
56CE9C:  MOVLT           R6, #1
56CE9E:  VMRS            APSR_nzcv, FPSCR
56CEA2:  VCMPE.F32       S3, S16
56CEA6:  IT LT
56CEA8:  MOVLT           R6, #2
56CEAA:  VMRS            APSR_nzcv, FPSCR
56CEAE:  IT LT
56CEB0:  MOVLT           R6, #3
56CEB2:  ADDS            R3, R6, #1
56CEB4:  BEQ             loc_56CEE2
56CEB6:  VCMPE.F32       S3, S16
56CEBA:  VMRS            APSR_nzcv, FPSCR
56CEBE:  IT LT
56CEC0:  VMOVLT.F32      S16, S3
56CEC4:  VCMPE.F32       S1, S16
56CEC8:  VMRS            APSR_nzcv, FPSCR
56CECC:  BLT             loc_56CED6
56CECE:  LDRB.W          R3, [R5,#0x3A]
56CED2:  CMP             R3, #7
56CED4:  BHI             loc_56CEE2
56CED6:  LDR             R3, [SP,#0x58+var_58]
56CED8:  LDR.W           R12, [SP,#0x58+var_54]
56CEDC:  STR.W           R5, [R3,R6,LSL#2]
56CEE0:  B               loc_56CEE6
56CEE2:  LDRD.W          R3, R12, [SP,#0x58+var_58]
56CEE6:  SUBS            R2, #1
56CEE8:  SUBW            R1, R1, #0xA2C
56CEEC:  ADDS            R4, R2, #1
56CEEE:  BNE.W           loc_56CD1C
56CEF2:  ADD             SP, SP, #8
56CEF4:  VPOP            {D8-D12}
56CEF8:  ADD             SP, SP, #4
56CEFA:  POP.W           {R8-R11}
56CEFE:  POP             {R4-R7,PC}
