; =========================================================
; Game Engine Function: _Z16RtSlerpGetMatrixP7RtSlerpP11RwMatrixTagf
; Address            : 0x21181C - 0x211ABC
; =========================================================

21181C:  PUSH            {R4,R6,R7,LR}
21181E:  ADD             R7, SP, #8
211820:  VPUSH           {D8-D15}
211824:  VMOV            S16, R2
211828:  MOV             R4, R1
21182A:  VCMPE.F32       S16, #0.0
21182E:  VMRS            APSR_nzcv, FPSCR
211832:  BLE.W           loc_2119D2
211836:  VMOV.F32        S0, #1.0
21183A:  VCMPE.F32       S16, S0
21183E:  VMRS            APSR_nzcv, FPSCR
211842:  BGE.W           loc_2119DA
211846:  LDR             R1, [R0,#0x1C]
211848:  CMP             R1, #0
21184A:  BEQ.W           loc_211A1A
21184E:  LDRD.W          R1, R2, [R0,#4]
211852:  VLDR            S0, [R2]
211856:  VLDR            S3, [R2,#4]
21185A:  VLDR            S10, [R1]
21185E:  VLDR            S12, [R1,#4]
211862:  VSUB.F32        S9, S0, S10
211866:  VLDR            S14, [R1,#8]
21186A:  VSUB.F32        S12, S3, S12
21186E:  VLDR            S1, [R1,#0x10]
211872:  VLDR            S5, [R2,#8]
211876:  VLDR            S7, [R2,#0x10]
21187A:  VLDR            S8, [R1,#0x30]
21187E:  VLDR            S11, [R2,#0x30]
211882:  VLDR            S4, [R1,#0x34]
211886:  VMUL.F32        S9, S9, S16
21188A:  VLDR            S6, [R2,#0x34]
21188E:  VMUL.F32        S12, S12, S16
211892:  VLDR            S0, [R1,#0x38]
211896:  VLDR            S2, [R2,#0x38]
21189A:  VSUB.F32        S8, S11, S8
21189E:  VLDR            S13, [R1,#0x20]
2118A2:  VSUB.F32        S4, S6, S4
2118A6:  VLDR            S15, [R1,#0x24]
2118AA:  VSUB.F32        S0, S2, S0
2118AE:  VLDR            S18, [R1,#0x28]
2118B2:  VLDR            S20, [R2,#0x20]
2118B6:  VADD.F32        S10, S10, S9
2118BA:  VLDR            S22, [R2,#0x24]
2118BE:  VLDR            S24, [R2,#0x28]
2118C2:  VLDR            S9, [R1,#0x18]
2118C6:  VMUL.F32        S8, S8, S16
2118CA:  VLDR            S26, [R2,#0x18]
2118CE:  VMUL.F32        S4, S4, S16
2118D2:  VLDR            S28, [R1,#0x14]
2118D6:  VMUL.F32        S0, S0, S16
2118DA:  VLDR            S30, [R2,#0x14]
2118DE:  VSTR            S10, [R4]
2118E2:  VSUB.F32        S10, S5, S14
2118E6:  LDR             R1, [R0,#4]
2118E8:  VLDR            S14, [R1,#4]
2118EC:  VADD.F32        S12, S12, S14
2118F0:  VMUL.F32        S10, S10, S16
2118F4:  VSUB.F32        S14, S7, S1
2118F8:  VSTR            S12, [R4,#4]
2118FC:  LDR             R1, [R0,#4]
2118FE:  VLDR            S12, [R1,#8]
211902:  VADD.F32        S10, S10, S12
211906:  VMUL.F32        S12, S14, S16
21190A:  VSUB.F32        S14, S30, S28
21190E:  VSTR            S10, [R4,#8]
211912:  LDR             R1, [R0,#4]
211914:  VLDR            S10, [R1,#0x10]
211918:  VADD.F32        S10, S12, S10
21191C:  VMUL.F32        S12, S14, S16
211920:  VSUB.F32        S14, S26, S9
211924:  VSTR            S10, [R4,#0x10]
211928:  LDR             R1, [R0,#4]
21192A:  VLDR            S10, [R1,#0x14]
21192E:  VADD.F32        S10, S12, S10
211932:  VMUL.F32        S12, S14, S16
211936:  VSUB.F32        S14, S20, S13
21193A:  VSTR            S10, [R4,#0x14]
21193E:  LDR             R1, [R0,#4]
211940:  VLDR            S10, [R1,#0x18]
211944:  VADD.F32        S10, S12, S10
211948:  VMUL.F32        S12, S14, S16
21194C:  VSUB.F32        S14, S22, S15
211950:  VSTR            S10, [R4,#0x18]
211954:  LDR             R1, [R0,#4]
211956:  VLDR            S10, [R1,#0x20]
21195A:  VADD.F32        S10, S12, S10
21195E:  VMUL.F32        S12, S14, S16
211962:  VSUB.F32        S14, S24, S18
211966:  VSTR            S10, [R4,#0x20]
21196A:  LDR             R1, [R0,#4]
21196C:  VLDR            S10, [R1,#0x24]
211970:  VADD.F32        S10, S12, S10
211974:  VMUL.F32        S12, S14, S16
211978:  VSTR            S10, [R4,#0x24]
21197C:  LDR             R1, [R0,#4]
21197E:  VLDR            S10, [R1,#0x28]
211982:  VADD.F32        S10, S12, S10
211986:  VSTR            S10, [R4,#0x28]
21198A:  LDR             R1, [R0,#4]
21198C:  VLDR            S10, [R1,#0x30]
211990:  VADD.F32        S6, S8, S10
211994:  VSTR            S6, [R4,#0x30]
211998:  LDR             R1, [R0,#4]
21199A:  VLDR            S6, [R1,#0x34]
21199E:  MOV             R1, R4
2119A0:  VADD.F32        S2, S4, S6
2119A4:  VSTR            S2, [R4,#0x34]
2119A8:  LDR             R0, [R0,#4]
2119AA:  VLDR            S2, [R0,#0x38]
2119AE:  MOV             R0, R4
2119B0:  VADD.F32        S0, S0, S2
2119B4:  VSTR            S0, [R4,#0x38]
2119B8:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
2119BC:  ADD.W           R0, R4, #0x10
2119C0:  MOV             R1, R0
2119C2:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
2119C6:  ADD.W           R0, R4, #0x20 ; ' '
2119CA:  MOV             R1, R0
2119CC:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
2119D0:  B               loc_211A12
2119D2:  LDR             R0, [R0,#4]
2119D4:  CMP             R0, R4
2119D6:  BNE             loc_2119E0
2119D8:  B               loc_211A12
2119DA:  LDR             R0, [R0,#8]
2119DC:  CMP             R0, R4
2119DE:  BEQ             loc_211A12
2119E0:  MOV             R1, R0
2119E2:  ADD.W           R2, R0, #0x20 ; ' '
2119E6:  ADDS            R0, #0x30 ; '0'
2119E8:  VLD1.32         {D16-D17}, [R1]!
2119EC:  VLD1.32         {D22-D23}, [R0]
2119F0:  ADD.W           R0, R4, #0x30 ; '0'
2119F4:  VLD1.32         {D18-D19}, [R2]
2119F8:  VLD1.32         {D20-D21}, [R1]
2119FC:  VST1.32         {D22-D23}, [R0]
211A00:  ADD.W           R0, R4, #0x20 ; ' '
211A04:  VST1.32         {D18-D19}, [R0]
211A08:  MOV             R0, R4
211A0A:  VST1.32         {D16-D17}, [R0]!
211A0E:  VST1.32         {D20-D21}, [R0]
211A12:  MOV             R0, R4
211A14:  VPOP            {D8-D15}
211A18:  POP             {R4,R6,R7,PC}
211A1A:  LDRD.W          R1, R12, [R0,#4]
211A1E:  VLDR            S18, [R12,#0x30]
211A22:  ADD.W           R2, R1, #0x20 ; ' '
211A26:  VLDR            S20, [R12,#0x34]
211A2A:  VLD1.32         {D18-D19}, [R2]
211A2E:  ADD.W           R2, R1, #0x30 ; '0'
211A32:  MOV             R3, R1
211A34:  VLDR            S24, [R1,#0x30]
211A38:  VLDR            S26, [R1,#0x34]
211A3C:  VLDR            S28, [R1,#0x38]
211A40:  ADD.W           R1, R4, #0x30 ; '0'
211A44:  VLD1.32         {D22-D23}, [R2]
211A48:  VLD1.32         {D16-D17}, [R3]!
211A4C:  VLD1.32         {D20-D21}, [R3]
211A50:  MOVS            R3, #2
211A52:  VLDR            S22, [R12,#0x38]
211A56:  VST1.32         {D22-D23}, [R1]
211A5A:  ADD.W           R1, R4, #0x20 ; ' '
211A5E:  VST1.32         {D18-D19}, [R1]
211A62:  MOV             R1, R4
211A64:  VST1.32         {D16-D17}, [R1]!
211A68:  VST1.32         {D20-D21}, [R1]
211A6C:  MOVS            R1, #0
211A6E:  STRD.W          R1, R1, [R4,#0x30]
211A72:  STR             R1, [R4,#0x38]
211A74:  ADD.W           R1, R0, #0xC
211A78:  VLDR            S0, [R0,#0x18]
211A7C:  MOV             R0, R4
211A7E:  VMUL.F32        S0, S0, S16
211A82:  VMOV            R2, S0
211A86:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
211A8A:  VSUB.F32        S0, S18, S24
211A8E:  VSUB.F32        S2, S22, S28
211A92:  VSUB.F32        S4, S20, S26
211A96:  VMUL.F32        S0, S0, S16
211A9A:  VMUL.F32        S2, S2, S16
211A9E:  VMUL.F32        S4, S4, S16
211AA2:  VADD.F32        S0, S24, S0
211AA6:  VADD.F32        S2, S28, S2
211AAA:  VADD.F32        S4, S26, S4
211AAE:  VSTR            S0, [R4,#0x30]
211AB2:  VSTR            S4, [R4,#0x34]
211AB6:  VSTR            S2, [R4,#0x38]
211ABA:  B               loc_211A12
