; =========================================================
; Game Engine Function: _Z21RtQuatSetupSlerpCacheP6RtQuatS0_P16RtQuatSlerpCache
; Address            : 0x211AC0 - 0x211E4A
; =========================================================

211AC0:  PUSH            {R4,R6,R7,LR}
211AC2:  ADD             R7, SP, #8
211AC4:  VPUSH           {D8-D12}
211AC8:  VLD1.32         {D16-D17}, [R0]
211ACC:  MOV             R4, R2
211ACE:  VST1.32         {D16-D17}, [R4]
211AD2:  VLDR            S0, [R1]
211AD6:  VLDR            S8, [R0]
211ADA:  VLDR            S4, [R1,#4]
211ADE:  VLDR            S10, [R0,#4]
211AE2:  VMUL.F32        S0, S8, S0
211AE6:  VLDR            S6, [R1,#8]
211AEA:  VMUL.F32        S4, S10, S4
211AEE:  VLDR            S12, [R0,#8]
211AF2:  VLDR            S2, [R1,#0xC]
211AF6:  VMUL.F32        S6, S12, S6
211AFA:  VLDR            S14, [R0,#0xC]
211AFE:  VADD.F32        S0, S0, S4
211B02:  VMUL.F32        S4, S14, S2
211B06:  VADD.F32        S0, S0, S6
211B0A:  VADD.F32        S0, S0, S4
211B0E:  VCMPE.F32       S0, #0.0
211B12:  VMRS            APSR_nzcv, FPSCR
211B16:  BGE             loc_211B60
211B18:  VNEG.F32        S2, S2
211B1C:  VMOV.F32        S4, #-1.0
211B20:  VMOV.F32        S6, #1.0
211B24:  VNEG.F32        S16, S0
211B28:  VSTR            S2, [R4,#0x1C]
211B2C:  VLDR            S2, [R1]
211B30:  VCMPE.F32       S0, S4
211B34:  VMRS            APSR_nzcv, FPSCR
211B38:  VNEG.F32        S2, S2
211B3C:  VSTR            S2, [R4,#0x10]
211B40:  VLDR            S2, [R1,#4]
211B44:  VNEG.F32        S2, S2
211B48:  VSTR            S2, [R4,#0x14]
211B4C:  VLDR            S2, [R1,#8]
211B50:  IT LT
211B52:  VMOVLT.F32      S16, S6
211B56:  VNEG.F32        S2, S2
211B5A:  VSTR            S2, [R4,#0x18]
211B5E:  B               loc_211B74
211B60:  VMOV.F32        S2, #1.0
211B64:  VLD1.32         {D16-D17}, [R1]
211B68:  ADD.W           R0, R4, #0x10
211B6C:  VST1.32         {D16-D17}, [R0]
211B70:  VMIN.F32        D8, D0, D1
211B74:  VMOV            R0, S16
211B78:  BIC.W           R1, R0, #0x80000000
211B7C:  CMP.W           R1, #0x3F800000
211B80:  BCC             loc_211B90
211B82:  ADR             R1, dword_211E88
211B84:  CMP             R0, #0
211B86:  IT GT
211B88:  ADDGT           R1, #4
211B8A:  VLDR            S0, [R1]
211B8E:  B               loc_211DBA
211B90:  LSRS            R2, R1, #0x18
211B92:  CMP             R2, #0x3E ; '>'
211B94:  BHI             loc_211BA2
211B96:  CMP.W           R1, #0x23000000
211B9A:  BHI             loc_211C6C
211B9C:  VLDR            S0, =1.5708
211BA0:  B               loc_211DBA
211BA2:  CMP.W           R0, #0xFFFFFFFF
211BA6:  BLE.W           loc_211D06
211BAA:  VMOV.F32        S18, #1.0
211BAE:  VLDR            S4, =-0.040056
211BB2:  VMOV.F32        S0, #0.5
211BB6:  VSUB.F32        S2, S18, S16
211BBA:  VMUL.F32        S20, S2, S0
211BBE:  VLDR            S0, =0.000034793
211BC2:  VLDR            S2, =0.00079154
211BC6:  VMUL.F32        S0, S20, S0
211BCA:  VMOV            R0, S20; float
211BCE:  VADD.F32        S0, S0, S2
211BD2:  VLDR            S2, =0.077038
211BD6:  VMUL.F32        S2, S20, S2
211BDA:  VMUL.F32        S0, S20, S0
211BDE:  VADD.F32        S0, S0, S4
211BE2:  VLDR            S4, =-0.68828
211BE6:  VADD.F32        S2, S2, S4
211BEA:  VLDR            S4, =0.20121
211BEE:  VMUL.F32        S0, S20, S0
211BF2:  VMUL.F32        S2, S20, S2
211BF6:  VADD.F32        S0, S0, S4
211BFA:  VLDR            S4, =2.0209
211BFE:  VADD.F32        S2, S2, S4
211C02:  VLDR            S4, =-0.32557
211C06:  VMUL.F32        S0, S20, S0
211C0A:  VMUL.F32        S2, S20, S2
211C0E:  VADD.F32        S0, S0, S4
211C12:  VLDR            S4, =-2.4034
211C16:  VADD.F32        S2, S2, S4
211C1A:  VLDR            S4, =0.16667
211C1E:  VMUL.F32        S0, S20, S0
211C22:  VMUL.F32        S22, S20, S2
211C26:  VADD.F32        S24, S0, S4
211C2A:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
211C2E:  MOVW            R1, #0xFFF
211C32:  VADD.F32        S4, S22, S18
211C36:  BIC.W           R1, R0, R1
211C3A:  VMUL.F32        S6, S20, S24
211C3E:  VMOV            S8, R0
211C42:  VMOV            S0, R1
211C46:  VMUL.F32        S2, S0, S0
211C4A:  VADD.F32        S10, S8, S0
211C4E:  VDIV.F32        S4, S6, S4
211C52:  VSUB.F32        S2, S20, S2
211C56:  VMUL.F32        S4, S4, S8
211C5A:  VDIV.F32        S2, S2, S10
211C5E:  VADD.F32        S2, S4, S2
211C62:  VADD.F32        S0, S2, S0
211C66:  VADD.F32        S0, S0, S0
211C6A:  B               loc_211DBA
211C6C:  VMUL.F32        S0, S16, S16
211C70:  VLDR            S2, =0.000034793
211C74:  VLDR            S4, =0.00079154
211C78:  VMOV.F32        S8, #1.0
211C7C:  VLDR            S6, =-0.040056
211C80:  VMUL.F32        S2, S0, S2
211C84:  VADD.F32        S2, S2, S4
211C88:  VLDR            S4, =0.077038
211C8C:  VMUL.F32        S4, S0, S4
211C90:  VMUL.F32        S2, S0, S2
211C94:  VADD.F32        S2, S2, S6
211C98:  VLDR            S6, =-0.68828
211C9C:  VADD.F32        S4, S4, S6
211CA0:  VLDR            S6, =0.20121
211CA4:  VMUL.F32        S2, S0, S2
211CA8:  VMUL.F32        S4, S0, S4
211CAC:  VADD.F32        S2, S2, S6
211CB0:  VLDR            S6, =2.0209
211CB4:  VADD.F32        S4, S4, S6
211CB8:  VLDR            S6, =-0.32557
211CBC:  VMUL.F32        S2, S0, S2
211CC0:  VMUL.F32        S4, S0, S4
211CC4:  VADD.F32        S2, S2, S6
211CC8:  VLDR            S6, =-2.4034
211CCC:  VADD.F32        S4, S4, S6
211CD0:  VLDR            S6, =0.16667
211CD4:  VMUL.F32        S2, S0, S2
211CD8:  VMUL.F32        S4, S0, S4
211CDC:  VADD.F32        S2, S2, S6
211CE0:  VADD.F32        S4, S4, S8
211CE4:  VMUL.F32        S0, S0, S2
211CE8:  VLDR            S2, =7.5498e-8
211CEC:  VDIV.F32        S0, S0, S4
211CF0:  VMUL.F32        S0, S16, S0
211CF4:  VSUB.F32        S0, S2, S0
211CF8:  VLDR            S2, =1.5708
211CFC:  VSUB.F32        S0, S16, S0
211D00:  VSUB.F32        S0, S2, S0
211D04:  B               loc_211DBA
211D06:  VMOV.F32        S0, #1.0
211D0A:  VLDR            S6, =0.00079154
211D0E:  VMOV.F32        S2, #0.5
211D12:  VLDR            S8, =-0.040056
211D16:  VADD.F32        S4, S16, S0
211D1A:  VMUL.F32        S2, S4, S2
211D1E:  VLDR            S4, =0.000034793
211D22:  VMUL.F32        S4, S2, S4
211D26:  VMOV            R0, S2; float
211D2A:  VADD.F32        S4, S4, S6
211D2E:  VLDR            S6, =0.077038
211D32:  VMUL.F32        S6, S2, S6
211D36:  VMUL.F32        S4, S2, S4
211D3A:  VADD.F32        S4, S4, S8
211D3E:  VLDR            S8, =-0.68828
211D42:  VADD.F32        S6, S6, S8
211D46:  VLDR            S8, =0.20121
211D4A:  VMUL.F32        S4, S2, S4
211D4E:  VMUL.F32        S6, S2, S6
211D52:  VADD.F32        S4, S4, S8
211D56:  VLDR            S8, =2.0209
211D5A:  VADD.F32        S6, S6, S8
211D5E:  VLDR            S8, =-0.32557
211D62:  VMUL.F32        S4, S2, S4
211D66:  VMUL.F32        S6, S2, S6
211D6A:  VADD.F32        S4, S4, S8
211D6E:  VLDR            S8, =-2.4034
211D72:  VADD.F32        S6, S6, S8
211D76:  VLDR            S8, =0.16667
211D7A:  VMUL.F32        S4, S2, S4
211D7E:  VMUL.F32        S6, S2, S6
211D82:  VADD.F32        S4, S4, S8
211D86:  VADD.F32        S0, S6, S0
211D8A:  VMUL.F32        S4, S2, S4
211D8E:  VDIV.F32        S18, S4, S0
211D92:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
211D96:  VMOV            S0, R0
211D9A:  VLDR            S4, =-7.5498e-8
211D9E:  VMUL.F32        S2, S18, S0
211DA2:  VADD.F32        S2, S2, S4
211DA6:  VMOV.F32        S4, #-2.0
211DAA:  VADD.F32        S0, S0, S2
211DAE:  VLDR            S2, =3.1416
211DB2:  VMUL.F32        S0, S0, S4
211DB6:  VADD.F32        S0, S0, S2
211DBA:  VLDR            S2, =0.99999
211DBE:  MOVS            R0, #0
211DC0:  VSTR            S0, [R4,#0x20]
211DC4:  VCMPE.F32       S16, S2
211DC8:  VMRS            APSR_nzcv, FPSCR
211DCC:  IT GE
211DCE:  MOVGE           R0, #1
211DD0:  STR             R0, [R4,#0x24]
211DD2:  BGE             loc_211E44
211DD4:  VMUL.F32        S2, S0, S0
211DD8:  VLDR            S4, =1.5897e-10
211DDC:  VLDR            S6, =-2.5051e-8
211DE0:  VLD1.32         {D16-D17}, [R4]
211DE4:  VMUL.F32        S4, S2, S4
211DE8:  VADD.F32        S4, S4, S6
211DEC:  VLDR            S6, =0.0000027557
211DF0:  VMUL.F32        S4, S2, S4
211DF4:  VADD.F32        S4, S4, S6
211DF8:  VLDR            S6, =-0.00019841
211DFC:  VMUL.F32        S4, S2, S4
211E00:  VADD.F32        S4, S4, S6
211E04:  VLDR            S6, =0.0083333
211E08:  VMUL.F32        S4, S2, S4
211E0C:  VADD.F32        S4, S4, S6
211E10:  VLDR            S6, =-0.16667
211E14:  VMUL.F32        S4, S2, S4
211E18:  VMUL.F32        S2, S0, S2
211E1C:  VADD.F32        S4, S4, S6
211E20:  VMUL.F32        S2, S2, S4
211E24:  VMOV.F32        S4, #1.0
211E28:  VADD.F32        S0, S0, S2
211E2C:  VDIV.F32        S0, S4, S0
211E30:  VMUL.F32        Q8, Q8, D0[0]
211E34:  VST1.32         {D16-D17}, [R4]!
211E38:  VLD1.32         {D16-D17}, [R4]
211E3C:  VMUL.F32        Q8, Q8, D0[0]
211E40:  VST1.32         {D16-D17}, [R4]
211E44:  VPOP            {D8-D12}
211E48:  POP             {R4,R6,R7,PC}
