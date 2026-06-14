; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity27UpdateLoopingCollisionSoundEP8CAESoundP7CEntityS3_hhfR7CVectorh
; Address            : 0x393DBC - 0x394042
; =========================================================

393DBC:  PUSH            {R4-R7,LR}
393DBE:  ADD             R7, SP, #0xC
393DC0:  PUSH.W          {R11}
393DC4:  VPUSH           {D8-D10}
393DC8:  SUB             SP, SP, #0x18
393DCA:  MOV             R4, R1
393DCC:  LDRD.W          R5, R12, [R7,#arg_C]
393DD0:  LDRD.W          R1, R0, [R7,#arg_0]
393DD4:  CMP             R1, #0x3F ; '?'
393DD6:  IT EQ
393DD8:  CMPEQ           R0, #0x3F ; '?'
393DDA:  BNE             loc_393E60
393DDC:  VLDR            S4, [R3,#0x48]
393DE0:  VLDR            S10, [R2,#0x48]
393DE4:  VLDR            S2, [R3,#0x4C]
393DE8:  VLDR            S8, [R2,#0x4C]
393DEC:  VSUB.F32        S15, S10, S4
393DF0:  VLDR            S12, [R3,#0x54]
393DF4:  VLDR            S1, [R2,#0x54]
393DF8:  VSUB.F32        S13, S8, S2
393DFC:  VLDR            S14, [R3,#0x58]
393E00:  VLDR            S5, [R2,#0x58]
393E04:  VSUB.F32        S11, S1, S12
393E08:  VLDR            S0, [R3,#0x50]
393E0C:  VSUB.F32        S9, S5, S14
393E10:  VLDR            S6, [R2,#0x50]
393E14:  VLDR            S3, [R3,#0x5C]
393E18:  VMUL.F32        S15, S15, S15
393E1C:  VLDR            S7, [R2,#0x5C]
393E20:  VSUB.F32        S18, S6, S0
393E24:  VMUL.F32        S13, S13, S13
393E28:  VSUB.F32        S16, S7, S3
393E2C:  VMUL.F32        S11, S11, S11
393E30:  VMUL.F32        S9, S9, S9
393E34:  VADD.F32        S13, S15, S13
393E38:  VMUL.F32        S16, S16, S16
393E3C:  VADD.F32        S9, S11, S9
393E40:  VMUL.F32        S11, S18, S18
393E44:  VADD.F32        S9, S9, S16
393E48:  VADD.F32        S11, S13, S11
393E4C:  VCMPE.F32       S11, S9
393E50:  VMRS            APSR_nzcv, FPSCR
393E54:  BLE             loc_393EE8
393E56:  MOV.W           LR, #1
393E5A:  MOVS            R3, #0
393E5C:  ADD             R2, SP, #0x40+var_34
393E5E:  B               loc_393F08
393E60:  CMP             R0, #0x3E ; '>'
393E62:  BEQ             loc_393E68
393E64:  CMP             R1, #0x3F ; '?'
393E66:  BEQ             loc_393E74
393E68:  VLDR            S0, =0.0
393E6C:  CMP             R1, #0x3E ; '>'
393E6E:  BEQ             loc_393F3E
393E70:  CMP             R0, #0x3F ; '?'
393E72:  BNE             loc_393F3E
393E74:  VLDR            S0, [R2,#0x48]
393E78:  ADD.W           R3, R2, #0x54 ; 'T'
393E7C:  VLDR            S2, [R2,#0x4C]
393E80:  VLDR            S6, [R2,#0x54]
393E84:  VMUL.F32        S0, S0, S0
393E88:  VLDR            S8, [R2,#0x58]
393E8C:  VMUL.F32        S2, S2, S2
393E90:  VMUL.F32        S6, S6, S6
393E94:  VLDR            S4, [R2,#0x50]
393E98:  VMUL.F32        S8, S8, S8
393E9C:  VLDR            S10, [R2,#0x5C]
393EA0:  VMUL.F32        S4, S4, S4
393EA4:  VMUL.F32        S10, S10, S10
393EA8:  VADD.F32        S0, S0, S2
393EAC:  VADD.F32        S6, S6, S8
393EB0:  VADD.F32        S0, S0, S4
393EB4:  VADD.F32        S2, S6, S10
393EB8:  VCMPE.F32       S0, S2
393EBC:  VMRS            APSR_nzcv, FPSCR
393EC0:  IT GT
393EC2:  ADDGT.W         R3, R2, #0x48 ; 'H'
393EC6:  VLDR            S0, [R3]
393ECA:  VLDR            S2, [R3,#4]
393ECE:  VMUL.F32        S0, S0, S0
393ED2:  VLDR            S4, [R3,#8]
393ED6:  VMUL.F32        S2, S2, S2
393EDA:  VMUL.F32        S4, S4, S4
393EDE:  VADD.F32        S0, S0, S2
393EE2:  VADD.F32        S0, S0, S4
393EE6:  B               loc_393F3A
393EE8:  VMOV.F32        S0, S3
393EEC:  MOV.W           LR, #0
393EF0:  VMOV.F32        S6, S7
393EF4:  MOVS            R3, #1
393EF6:  VMOV.F32        S2, S14
393EFA:  MOV             R2, SP
393EFC:  VMOV.F32        S8, S5
393F00:  VMOV.F32        S4, S12
393F04:  VMOV.F32        S10, S1
393F08:  VSUB.F32        S4, S10, S4
393F0C:  CMP             R3, #0
393F0E:  VSUB.F32        S2, S8, S2
393F12:  CMP.W           LR, #1
393F16:  VSUB.F32        S6, S6, S0
393F1A:  VMUL.F32        S8, S4, S4
393F1E:  VSTR            S4, [R2]
393F22:  VMUL.F32        S0, S2, S2
393F26:  VSTR            S2, [R2,#4]
393F2A:  VMUL.F32        S10, S6, S6
393F2E:  VSTR            S6, [R2,#8]
393F32:  VADD.F32        S0, S8, S0
393F36:  VADD.F32        S0, S0, S10
393F3A:  VSQRT.F32       S0, S0
393F3E:  LDR             R2, =(gCollisionLookup_ptr - 0x393F50)
393F40:  VMOV.F32        S16, #1.0
393F44:  VMOV.F32        S20, #0.75
393F48:  CMP.W           R12, #0
393F4C:  ADD             R2, PC; gCollisionLookup_ptr
393F4E:  LDR             R2, [R2]; gCollisionLookup
393F50:  ADD.W           R0, R2, R0,LSL#4
393F54:  VLDR            S2, [R0,#0xC]
393F58:  ADD.W           R0, R2, R1,LSL#4
393F5C:  LDR             R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x393F6A)
393F5E:  VLDR            S4, [R0,#0xC]
393F62:  VCVT.F32.S32    S2, S2
393F66:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
393F68:  VCVT.F32.S32    S4, S4
393F6C:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
393F6E:  VMUL.F32        S2, S4, S2
393F72:  VLDR            S4, =10000.0
393F76:  VDIV.F32        S2, S2, S4
393F7A:  VMUL.F32        S0, S0, S2
393F7E:  VMOV.F32        S4, #3.0
393F82:  VMOV.F32        S2, #6.0
393F86:  VMUL.F32        S0, S0, S4
393F8A:  VMIN.F32        D0, D0, D8
393F8E:  VDIV.F32        S18, S0, S2
393F92:  IT EQ
393F94:  VMOVEQ.F32      S18, S0
393F98:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes
393F9A:  LDRSB.W         R6, [R1,#0x74]
393F9E:  VDIV.F32        S0, S18, S20
393FA2:  VMIN.F32        D0, D0, D8
393FA6:  VMOV            R0, S0; x
393FAA:  BLX             log10f
393FAE:  VMOV.F32        S0, #20.0
393FB2:  VLDR            S6, =0.8
393FB6:  VMOV            S4, R6
393FBA:  VMOV            S2, R0
393FBE:  VCVT.F32.S32    S4, S4
393FC2:  VMUL.F32        S0, S2, S0
393FC6:  VADD.F32        S2, S0, S4
393FCA:  VLDR            S4, [R4,#0x14]
393FCE:  VMAX.F32        D0, D9, D10
393FD2:  VMUL.F32        S0, S0, S6
393FD6:  VCMPE.F32       S2, S4
393FDA:  VMRS            APSR_nzcv, FPSCR
393FDE:  BLE             loc_393FEA
393FE0:  VADD.F32        S4, S4, S16
393FE4:  VMIN.F32        D1, D2, D1
393FE8:  B               loc_393FF8
393FEA:  BGE             loc_393FFC
393FEC:  VMOV.F32        S6, #-1.0
393FF0:  VADD.F32        S4, S4, S6
393FF4:  VMAX.F32        D1, D2, D1
393FF8:  VSTR            S2, [R4,#0x14]
393FFC:  VLDR            S2, [R4,#0x1C]
394000:  VCMPE.F32       S0, S2
394004:  VMRS            APSR_nzcv, FPSCR
394008:  BLE             loc_394018
39400A:  VLDR            S4, =0.1
39400E:  VADD.F32        S2, S2, S4
394012:  VMIN.F32        D0, D1, D0
394016:  B               loc_394026
394018:  BGE             loc_39402A
39401A:  VLDR            S4, =-0.1
39401E:  VADD.F32        S2, S2, S4
394022:  VMAX.F32        D0, D1, D0
394026:  VSTR            S0, [R4,#0x1C]
39402A:  LDM.W           R5, {R1-R3}
39402E:  MOV             R0, R4
394030:  ADD             SP, SP, #0x18
394032:  VPOP            {D8-D10}
394036:  POP.W           {R11}
39403A:  POP.W           {R4-R7,LR}
39403E:  B.W             j_j__ZN8CAESound11SetPositionE7CVector; j_CAESound::SetPosition(CVector)
