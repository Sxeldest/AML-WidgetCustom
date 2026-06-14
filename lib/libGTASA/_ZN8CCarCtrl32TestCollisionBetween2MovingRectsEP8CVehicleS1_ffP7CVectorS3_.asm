; =========================================================
; Game Engine Function: _ZN8CCarCtrl32TestCollisionBetween2MovingRectsEP8CVehicleS1_ffP7CVectorS3_
; Address            : 0x2EEA60 - 0x2EED58
; =========================================================

2EEA60:  PUSH            {R4,R6,R7,LR}
2EEA62:  ADD             R7, SP, #8
2EEA64:  VPUSH           {D8-D15}
2EEA68:  LDR.W           R12, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2EEA7C)
2EEA6C:  VMOV            S4, R3
2EEA70:  LDR.W           LR, [R7,#arg_0]
2EEA74:  VMOV            S6, R2
2EEA78:  ADD             R12, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2EEA7A:  LDRSH.W         R4, [R1,#0x26]
2EEA7E:  VLDR            S15, =0.0
2EEA82:  VLDR            S0, [LR]
2EEA86:  VLDR            S2, [LR,#4]
2EEA8A:  LDR.W           LR, [R12]; CModelInfo::ms_modelInfoPtrs ...
2EEA8E:  VMUL.F32        S12, S0, S6
2EEA92:  VMUL.F32        S10, S2, S4
2EEA96:  LDRSH.W         R12, [R0,#0x26]
2EEA9A:  VMUL.F32        S14, S0, S4
2EEA9E:  LDR.W           R2, [LR,R4,LSL#2]
2EEAA2:  VMUL.F32        S1, S2, S6
2EEAA6:  LDR             R4, [R0,#0x14]
2EEAA8:  LDR             R2, [R2,#0x2C]
2EEAAA:  VADD.F32        S10, S12, S10
2EEAAE:  VLDR            S4, [R2,#4]
2EEAB2:  VLDR            S8, [R2,#0x10]
2EEAB6:  VSUB.F32        S12, S1, S14
2EEABA:  VLDR            S6, [R2,#0xC]
2EEABE:  VSUB.F32        S3, S8, S4
2EEAC2:  LDR             R2, [R1,#0x14]
2EEAC4:  VADD.F32        S1, S6, S6
2EEAC8:  ADD.W           R3, R2, #0x30 ; '0'
2EEACC:  CMP             R2, #0
2EEACE:  IT EQ
2EEAD0:  ADDEQ           R3, R1, #4
2EEAD2:  ADD.W           R1, R4, #0x30 ; '0'
2EEAD6:  CMP             R4, #0
2EEAD8:  VLDR            S7, [R3]
2EEADC:  VLDR            S5, [R3,#4]
2EEAE0:  IT EQ
2EEAE2:  ADDEQ           R1, R0, #4
2EEAE4:  VLDR            S9, [R1]
2EEAE8:  VDIV.F32        S14, S3, S10
2EEAEC:  LDR.W           R0, [LR,R12,LSL#2]
2EEAF0:  VDIV.F32        S1, S1, S12
2EEAF4:  VMOV.F32        S3, #1.0
2EEAF8:  VLDR            S11, [R1,#4]
2EEAFC:  VSUB.F32        S7, S9, S7
2EEB00:  LDR             R1, [R0,#0x2C]
2EEB02:  VSUB.F32        S5, S11, S5
2EEB06:  LDR             R0, [R7,#arg_4]
2EEB08:  VNEG.F32        S9, S6
2EEB0C:  VLDR            S11, [R1,#0xC]
2EEB10:  VLDR            S13, [R1,#0x10]
2EEB14:  MOVS            R1, #0
2EEB16:  VMOV.F32        S16, S3
2EEB1A:  CMP             R1, #1
2EEB1C:  BEQ             loc_2EEB4A
2EEB1E:  CBNZ            R1, loc_2EEB72
2EEB20:  VLDR            S18, [R0]
2EEB24:  VLDR            S20, [R0,#4]
2EEB28:  VMUL.F32        S24, S13, S18
2EEB2C:  VMUL.F32        S22, S13, S20
2EEB30:  VMUL.F32        S18, S11, S18
2EEB34:  VMUL.F32        S20, S11, S20
2EEB38:  VADD.F32        S24, S7, S24
2EEB3C:  VADD.F32        S22, S5, S22
2EEB40:  VADD.F32        S20, S24, S20
2EEB44:  VSUB.F32        S18, S22, S18
2EEB48:  B               loc_2EEB72
2EEB4A:  VLDR            S18, [R0]
2EEB4E:  VLDR            S20, [R0,#4]
2EEB52:  VMUL.F32        S24, S13, S18
2EEB56:  VMUL.F32        S22, S13, S20
2EEB5A:  VMUL.F32        S18, S11, S18
2EEB5E:  VMUL.F32        S20, S11, S20
2EEB62:  VADD.F32        S24, S7, S24
2EEB66:  VADD.F32        S22, S5, S22
2EEB6A:  VSUB.F32        S20, S24, S20
2EEB6E:  VADD.F32        S18, S18, S22
2EEB72:  VMUL.F32        S22, S18, S0
2EEB76:  VMUL.F32        S24, S20, S2
2EEB7A:  VSUB.F32        S26, S24, S22
2EEB7E:  VCMPE.F32       S26, S6
2EEB82:  VMRS            APSR_nzcv, FPSCR
2EEB86:  BLE             loc_2EEBCC
2EEB88:  VMOV.F32        S22, S3
2EEB8C:  VMOV.F32        S24, S3
2EEB90:  VCMPE.F32       S12, #0.0
2EEB94:  VMRS            APSR_nzcv, FPSCR
2EEB98:  BGE             loc_2EEC48
2EEB9A:  VSUB.F32        S22, S26, S6
2EEB9E:  VMOV.F32        S24, S3
2EEBA2:  VNEG.F32        S22, S22
2EEBA6:  VDIV.F32        S26, S22, S12
2EEBAA:  VMOV.F32        S22, S3
2EEBAE:  VCMPE.F32       S26, S3
2EEBB2:  VMRS            APSR_nzcv, FPSCR
2EEBB6:  BGE             loc_2EEC48
2EEBB8:  VSUB.F32        S22, S26, S1
2EEBBC:  VCMPE.F32       S22, S3
2EEBC0:  VMRS            APSR_nzcv, FPSCR
2EEBC4:  BLT             loc_2EEC18
2EEBC6:  VMOV.F32        S22, S3
2EEBCA:  B               loc_2EEC18
2EEBCC:  VCMPE.F32       S26, S9
2EEBD0:  VMRS            APSR_nzcv, FPSCR
2EEBD4:  BGE             loc_2EEC1E
2EEBD6:  VMOV.F32        S22, S3
2EEBDA:  VMOV.F32        S24, S3
2EEBDE:  VCMPE.F32       S12, #0.0
2EEBE2:  VMRS            APSR_nzcv, FPSCR
2EEBE6:  BLE             loc_2EEC48
2EEBE8:  VADD.F32        S22, S6, S26
2EEBEC:  VMOV.F32        S24, S3
2EEBF0:  VNEG.F32        S22, S22
2EEBF4:  VDIV.F32        S26, S22, S12
2EEBF8:  VMOV.F32        S22, S3
2EEBFC:  VCMPE.F32       S26, S3
2EEC00:  VMRS            APSR_nzcv, FPSCR
2EEC04:  BGE             loc_2EEC48
2EEC06:  VADD.F32        S22, S1, S26
2EEC0A:  VCMPE.F32       S22, S3
2EEC0E:  VMRS            APSR_nzcv, FPSCR
2EEC12:  IT GE
2EEC14:  VMOVGE.F32      S22, S3
2EEC18:  VMOV.F64        D12, D13
2EEC1C:  B               loc_2EEC48
2EEC1E:  VCMPE.F32       S12, #0.0
2EEC22:  VMRS            APSR_nzcv, FPSCR
2EEC26:  BLE             loc_2EEC2E
2EEC28:  VSUB.F32        S22, S6, S26
2EEC2C:  B               loc_2EEC40
2EEC2E:  VMOV.F32        S22, S3
2EEC32:  VMOV.F32        S24, S15
2EEC36:  BGE             loc_2EEC48
2EEC38:  VADD.F32        S22, S6, S26
2EEC3C:  VNEG.F32        S22, S22
2EEC40:  VDIV.F32        S22, S22, S12
2EEC44:  VMOV.F32        S24, S15
2EEC48:  VMUL.F32        S26, S18, S2
2EEC4C:  VMUL.F32        S28, S20, S0
2EEC50:  VADD.F32        S28, S28, S26
2EEC54:  VCMPE.F32       S28, S8
2EEC58:  VMRS            APSR_nzcv, FPSCR
2EEC5C:  BLE             loc_2EECA2
2EEC5E:  VMOV.F32        S26, S3
2EEC62:  VMOV.F32        S30, S3
2EEC66:  VCMPE.F32       S10, #0.0
2EEC6A:  VMRS            APSR_nzcv, FPSCR
2EEC6E:  BGE             loc_2EED1E
2EEC70:  VSUB.F32        S26, S28, S8
2EEC74:  VMOV.F32        S30, S3
2EEC78:  VNEG.F32        S26, S26
2EEC7C:  VDIV.F32        S28, S26, S10
2EEC80:  VMOV.F32        S26, S3
2EEC84:  VCMPE.F32       S28, S3
2EEC88:  VMRS            APSR_nzcv, FPSCR
2EEC8C:  BGE             loc_2EED1E
2EEC8E:  VSUB.F32        S26, S28, S14
2EEC92:  VCMPE.F32       S26, S3
2EEC96:  VMRS            APSR_nzcv, FPSCR
2EEC9A:  BLT             loc_2EECEE
2EEC9C:  VMOV.F32        S26, S3
2EECA0:  B               loc_2EECEE
2EECA2:  VCMPE.F32       S28, S4
2EECA6:  VMRS            APSR_nzcv, FPSCR
2EECAA:  BGE             loc_2EECF4
2EECAC:  VMOV.F32        S26, S3
2EECB0:  VMOV.F32        S30, S3
2EECB4:  VCMPE.F32       S10, #0.0
2EECB8:  VMRS            APSR_nzcv, FPSCR
2EECBC:  BLE             loc_2EED1E
2EECBE:  VSUB.F32        S26, S28, S4
2EECC2:  VMOV.F32        S30, S3
2EECC6:  VNEG.F32        S26, S26
2EECCA:  VDIV.F32        S28, S26, S10
2EECCE:  VMOV.F32        S26, S3
2EECD2:  VCMPE.F32       S28, S3
2EECD6:  VMRS            APSR_nzcv, FPSCR
2EECDA:  BGE             loc_2EED1E
2EECDC:  VADD.F32        S26, S14, S28
2EECE0:  VCMPE.F32       S26, S3
2EECE4:  VMRS            APSR_nzcv, FPSCR
2EECE8:  IT GE
2EECEA:  VMOVGE.F32      S26, S3
2EECEE:  VMOV.F64        D15, D14
2EECF2:  B               loc_2EED1E
2EECF4:  VCMPE.F32       S10, #0.0
2EECF8:  VMRS            APSR_nzcv, FPSCR
2EECFC:  BLE             loc_2EED04
2EECFE:  VSUB.F32        S26, S8, S28
2EED02:  B               loc_2EED16
2EED04:  VMOV.F32        S26, S3
2EED08:  VMOV.F32        S30, S15
2EED0C:  BGE             loc_2EED1E
2EED0E:  VSUB.F32        S26, S28, S4
2EED12:  VNEG.F32        S26, S26
2EED16:  VDIV.F32        S26, S26, S10
2EED1A:  VMOV.F32        S30, S15
2EED1E:  VMAX.F32        D12, D12, D15
2EED22:  ADDS            R1, #1
2EED24:  VMIN.F32        D14, D8, D12
2EED28:  VCMPE.F32       S24, S26
2EED2C:  VMRS            APSR_nzcv, FPSCR
2EED30:  VMOV.F32        S26, S16
2EED34:  VCMPE.F32       S24, S22
2EED38:  IT LT
2EED3A:  VMOVLT.F32      S26, S28
2EED3E:  VMRS            APSR_nzcv, FPSCR
2EED42:  IT LT
2EED44:  VMOVLT.F32      S16, S26
2EED48:  CMP             R1, #2
2EED4A:  BNE.W           loc_2EEB1A
2EED4E:  VMOV            R0, S16
2EED52:  VPOP            {D8-D15}
2EED56:  POP             {R4,R6,R7,PC}
