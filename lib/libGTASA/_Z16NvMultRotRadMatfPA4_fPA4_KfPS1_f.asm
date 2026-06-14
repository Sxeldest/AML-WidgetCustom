; =========================================================
; Game Engine Function: _Z16NvMultRotRadMatfPA4_fPA4_KfPS1_f
; Address            : 0x2789F0 - 0x278CC2
; =========================================================

2789F0:  PUSH            {R4-R7,LR}
2789F2:  ADD             R7, SP, #0xC
2789F4:  PUSH.W          {R11}
2789F8:  VPUSH           {D8-D12}
2789FC:  VLDR            S22, [R2]
278A00:  VMOV.F32        S16, #1.0
278A04:  VLDR            S20, [R2,#4]
278A08:  MOV             R5, R1
278A0A:  VMUL.F32        S2, S22, S22
278A0E:  VLDR            S18, [R2,#8]
278A12:  VMUL.F32        S0, S20, S20
278A16:  MOV             R4, R0
278A18:  VMUL.F32        S4, S18, S18
278A1C:  VADD.F32        S0, S2, S0
278A20:  VADD.F32        S0, S0, S4
278A24:  VSQRT.F32       S24, S0
278A28:  VLDR            S0, =1.1921e-7
278A2C:  VCMPE.F32       S24, S0
278A30:  VMRS            APSR_nzcv, FPSCR
278A34:  BLE             loc_278A6C
278A36:  VMOV.F32        S0, #0.5
278A3A:  VMOV            S2, R3
278A3E:  VMUL.F32        S0, S2, S0
278A42:  VMOV            R6, S0
278A46:  MOV             R0, R6; x
278A48:  BLX             sinf
278A4C:  VMOV            S0, R0
278A50:  MOV             R0, R6; x
278A52:  VDIV.F32        S0, S0, S24
278A56:  VMUL.F32        S18, S18, S0
278A5A:  VMUL.F32        S20, S20, S0
278A5E:  VMUL.F32        S22, S22, S0
278A62:  BLX             cosf
278A66:  VMOV            S6, R0
278A6A:  B               loc_278A7C
278A6C:  VLDR            S18, =0.0
278A70:  VMOV.F32        S6, S16
278A74:  VMOV.F32        S20, S18
278A78:  VMOV.F32        S22, S18
278A7C:  VMUL.F32        S0, S20, S20
278A80:  VLDR            S5, [R5]
278A84:  VMUL.F32        S8, S18, S18
278A88:  VLDR            S7, [R5,#0x10]
278A8C:  VMUL.F32        S10, S20, S22
278A90:  VLDR            S9, [R5,#0x20]
278A94:  VMUL.F32        S12, S6, S18
278A98:  VMOV.F32        S14, #-2.0
278A9C:  VMUL.F32        S2, S6, S20
278AA0:  VMUL.F32        S4, S18, S22
278AA4:  VMUL.F32        S6, S6, S22
278AA8:  VADD.F32        S1, S8, S0
278AAC:  VADD.F32        S3, S12, S10
278AB0:  VSUB.F32        S10, S10, S12
278AB4:  VMUL.F32        S14, S1, S14
278AB8:  VSUB.F32        S1, S4, S2
278ABC:  VADD.F32        S3, S3, S3
278AC0:  VADD.F32        S10, S10, S10
278AC4:  VADD.F32        S2, S2, S4
278AC8:  VADD.F32        S14, S14, S16
278ACC:  VADD.F32        S1, S1, S1
278AD0:  VMUL.F32        S7, S7, S3
278AD4:  VADD.F32        S2, S2, S2
278AD8:  VMUL.F32        S5, S5, S14
278ADC:  VMUL.F32        S9, S9, S1
278AE0:  VADD.F32        S5, S5, S7
278AE4:  VADD.F32        S5, S9, S5
278AE8:  VSTR            S5, [R4]
278AEC:  VLDR            S5, [R5,#4]
278AF0:  VLDR            S7, [R5,#0x14]
278AF4:  VMUL.F32        S5, S14, S5
278AF8:  VLDR            S9, [R5,#0x24]
278AFC:  VMUL.F32        S7, S3, S7
278B00:  VMUL.F32        S9, S1, S9
278B04:  VADD.F32        S5, S5, S7
278B08:  VADD.F32        S5, S5, S9
278B0C:  VSTR            S5, [R4,#4]
278B10:  VLDR            S5, [R5,#8]
278B14:  VLDR            S7, [R5,#0x18]
278B18:  VMUL.F32        S5, S14, S5
278B1C:  VLDR            S9, [R5,#0x28]
278B20:  VMUL.F32        S7, S3, S7
278B24:  VMUL.F32        S9, S1, S9
278B28:  VADD.F32        S5, S5, S7
278B2C:  VMUL.F32        S7, S22, S22
278B30:  VADD.F32        S5, S5, S9
278B34:  VADD.F32        S8, S8, S7
278B38:  VADD.F32        S0, S0, S7
278B3C:  VSTR            S5, [R4,#8]
278B40:  VLDR            S5, [R5,#0xC]
278B44:  VADD.F32        S8, S8, S8
278B48:  VLDR            S9, [R5,#0x1C]
278B4C:  VADD.F32        S0, S0, S0
278B50:  VMUL.F32        S14, S14, S5
278B54:  VLDR            S11, [R5,#0x2C]
278B58:  VMUL.F32        S3, S3, S9
278B5C:  VMUL.F32        S1, S1, S11
278B60:  VSUB.F32        S8, S16, S8
278B64:  VSUB.F32        S0, S16, S0
278B68:  VADD.F32        S14, S14, S3
278B6C:  VMUL.F32        S3, S18, S20
278B70:  VADD.F32        S12, S14, S1
278B74:  VADD.F32        S14, S3, S6
278B78:  VSUB.F32        S6, S3, S6
278B7C:  VSTR            S12, [R4,#0xC]
278B80:  VLDR            S12, [R5]
278B84:  VADD.F32        S14, S14, S14
278B88:  VLDR            S1, [R5,#0x10]
278B8C:  VADD.F32        S6, S6, S6
278B90:  VMUL.F32        S12, S10, S12
278B94:  VLDR            S5, [R5,#0x20]
278B98:  VMUL.F32        S1, S8, S1
278B9C:  VMUL.F32        S5, S14, S5
278BA0:  VADD.F32        S12, S12, S1
278BA4:  VADD.F32        S12, S12, S5
278BA8:  VSTR            S12, [R4,#0x10]
278BAC:  VLDR            S12, [R5,#4]
278BB0:  VLDR            S1, [R5,#0x14]
278BB4:  VMUL.F32        S12, S10, S12
278BB8:  VLDR            S5, [R5,#0x24]
278BBC:  VMUL.F32        S1, S8, S1
278BC0:  VMUL.F32        S5, S14, S5
278BC4:  VADD.F32        S12, S12, S1
278BC8:  VADD.F32        S12, S12, S5
278BCC:  VSTR            S12, [R4,#0x14]
278BD0:  VLDR            S12, [R5,#8]
278BD4:  VLDR            S1, [R5,#0x18]
278BD8:  VMUL.F32        S12, S10, S12
278BDC:  VLDR            S5, [R5,#0x28]
278BE0:  VMUL.F32        S1, S8, S1
278BE4:  VMUL.F32        S5, S14, S5
278BE8:  VADD.F32        S12, S12, S1
278BEC:  VADD.F32        S12, S12, S5
278BF0:  VSTR            S12, [R4,#0x18]
278BF4:  VLDR            S12, [R5,#0xC]
278BF8:  VLDR            S1, [R5,#0x1C]
278BFC:  VMUL.F32        S10, S10, S12
278C00:  VLDR            S5, [R5,#0x2C]
278C04:  VMUL.F32        S8, S8, S1
278C08:  VMUL.F32        S12, S14, S5
278C0C:  VADD.F32        S8, S10, S8
278C10:  VADD.F32        S4, S8, S12
278C14:  VSTR            S4, [R4,#0x1C]
278C18:  VLDR            S4, [R5]
278C1C:  VLDR            S8, [R5,#0x10]
278C20:  VMUL.F32        S4, S2, S4
278C24:  VLDR            S10, [R5,#0x20]
278C28:  VMUL.F32        S8, S6, S8
278C2C:  VMUL.F32        S10, S0, S10
278C30:  VADD.F32        S4, S4, S8
278C34:  VADD.F32        S4, S4, S10
278C38:  VSTR            S4, [R4,#0x20]
278C3C:  VLDR            S4, [R5,#4]
278C40:  VLDR            S8, [R5,#0x14]
278C44:  VMUL.F32        S4, S2, S4
278C48:  VLDR            S10, [R5,#0x24]
278C4C:  VMUL.F32        S8, S6, S8
278C50:  VMUL.F32        S10, S0, S10
278C54:  VADD.F32        S4, S4, S8
278C58:  VADD.F32        S4, S4, S10
278C5C:  VSTR            S4, [R4,#0x24]
278C60:  VLDR            S4, [R5,#8]
278C64:  VLDR            S8, [R5,#0x18]
278C68:  VMUL.F32        S4, S2, S4
278C6C:  VLDR            S10, [R5,#0x28]
278C70:  VMUL.F32        S8, S6, S8
278C74:  VMUL.F32        S10, S0, S10
278C78:  VADD.F32        S4, S4, S8
278C7C:  VADD.F32        S4, S4, S10
278C80:  VSTR            S4, [R4,#0x28]
278C84:  VLDR            S4, [R5,#0xC]
278C88:  VLDR            S8, [R5,#0x1C]
278C8C:  VMUL.F32        S2, S2, S4
278C90:  VLDR            S10, [R5,#0x2C]
278C94:  VMUL.F32        S6, S6, S8
278C98:  VMUL.F32        S0, S0, S10
278C9C:  VADD.F32        S2, S2, S6
278CA0:  VADD.F32        S0, S2, S0
278CA4:  VSTR            S0, [R4,#0x2C]
278CA8:  LDR             R0, [R5,#0x30]
278CAA:  STR             R0, [R4,#0x30]
278CAC:  LDR             R0, [R5,#0x34]
278CAE:  STR             R0, [R4,#0x34]
278CB0:  LDR             R0, [R5,#0x38]
278CB2:  STR             R0, [R4,#0x38]
278CB4:  LDR             R0, [R5,#0x3C]
278CB6:  STR             R0, [R4,#0x3C]
278CB8:  VPOP            {D8-D12}
278CBC:  POP.W           {R11}
278CC0:  POP             {R4-R7,PC}
