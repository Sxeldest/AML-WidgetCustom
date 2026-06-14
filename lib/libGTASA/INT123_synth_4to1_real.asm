; =========================================================
; Game Engine Function: INT123_synth_4to1_real
; Address            : 0x2389A8 - 0x238DC0
; =========================================================

2389A8:  PUSH            {R4-R7,LR}
2389AA:  ADD             R7, SP, #0xC
2389AC:  PUSH.W          {R8-R11}
2389B0:  SUB             SP, SP, #4
2389B2:  MOV             R5, R2
2389B4:  MOV             R2, R0
2389B6:  MOVW            R12, #0xB2A8
2389BA:  MOVW            R0, #0xB2A0
2389BE:  LDR             R6, [R5,R0]
2389C0:  MOVW            R0, #0x4848
2389C4:  LDR.W           LR, [R5,R12]
2389C8:  LDR             R0, [R5,R0]
2389CA:  MOV             R8, R3
2389CC:  CBZ             R0, loc_2389F6
2389CE:  ADD.W           R0, R5, R1,LSL#8
2389D2:  MOVW            R4, #0x4850
2389D6:  ADD             R4, R0
2389D8:  MOVS            R0, #0
2389DA:  ADDS            R3, R4, R0
2389DC:  VLDR            D16, [R3]
2389E0:  ADDS            R3, R2, R0
2389E2:  ADDS            R0, #8
2389E4:  VLDR            D17, [R3]
2389E8:  CMP.W           R0, #0x100
2389EC:  VMUL.F64        D16, D17, D16
2389F0:  VSTR            D16, [R3]
2389F4:  BNE             loc_2389DA
2389F6:  ADD.W           R4, R6, LR
2389FA:  MOVW            R0, #0x4838
2389FE:  CBZ             R1, loc_238A0A
238A00:  LDR.W           R10, [R5,R0]
238A04:  ADDS            R4, #8
238A06:  MOVS            R1, #1
238A08:  B               loc_238A18
238A0A:  LDR             R1, [R5,R0]
238A0C:  ADDS            R1, #0xF
238A0E:  AND.W           R10, R1, #0xF
238A12:  STR.W           R10, [R5,R0]
238A16:  MOVS            R1, #0
238A18:  ADD.W           R0, R5, R1,LSL#3
238A1C:  MOVW            R1, #0x4820
238A20:  ADD.W           R9, R5, R12
238A24:  ADD             R1, R0
238A26:  MOVS.W          R3, R10,LSL#31
238A2A:  BNE             loc_238A4A
238A2C:  MOVW            R3, #0x4824
238A30:  LDR             R1, [R1]
238A32:  LDR.W           R11, [R0,R3]
238A36:  ADD.W           R0, R1, R10,LSL#3
238A3A:  ADD.W           R1, R11, R10,LSL#3
238A3E:  ADDS            R1, #8
238A40:  BLX             j_INT123_dct64
238A44:  ADD.W           R10, R10, #1
238A48:  B               loc_238A68
238A4A:  ADD.W           R3, R10, #1
238A4E:  LDR.W           R11, [R1]
238A52:  MOVW            R1, #0x4824
238A56:  AND.W           R3, R3, #0xF
238A5A:  LDR             R0, [R0,R1]
238A5C:  ADD.W           R1, R11, R10,LSL#3
238A60:  ADD.W           R0, R0, R3,LSL#3
238A64:  BLX             j_INT123_dct64
238A68:  MOVW            R0, #0x4844
238A6C:  RSB.W           R1, R10, #0x190
238A70:  LDR             R0, [R5,R0]
238A72:  RSB.W           R12, R10, #0x210
238A76:  VLDR            D16, =0.0000305175781
238A7A:  SUB.W           R2, R0, R10,LSL#3
238A7E:  ADD.W           R1, R0, R1,LSL#3
238A82:  ADD.W           R3, R2, #0x80
238A86:  MOVS            R5, #0
238A88:  MOV             R6, R11
238A8A:  VLDM            R6, {D17-D20}
238A8E:  ADDS            R2, R4, R5
238A90:  ADDS            R5, #0x10
238A92:  VLDM            R3, {D21-D24}
238A96:  CMP             R5, #0x40 ; '@'
238A98:  VMUL.F64        D18, D22, D18
238A9C:  VMUL.F64        D17, D21, D17
238AA0:  VMUL.F64        D19, D23, D19
238AA4:  VSUB.F64        D17, D17, D18
238AA8:  VMUL.F64        D20, D24, D20
238AAC:  VADD.F64        D17, D17, D19
238AB0:  VLDR            D18, [R6,#0x20]
238AB4:  VLDR            D21, [R3,#0x20]
238AB8:  VSUB.F64        D17, D17, D20
238ABC:  VMUL.F64        D18, D21, D18
238AC0:  VLDR            D19, [R6,#0x28]
238AC4:  VLDR            D22, [R3,#0x28]
238AC8:  VADD.F64        D17, D17, D18
238ACC:  VMUL.F64        D19, D22, D19
238AD0:  VLDR            D20, [R6,#0x30]
238AD4:  VLDR            D21, [R3,#0x30]
238AD8:  VSUB.F64        D17, D17, D19
238ADC:  VMUL.F64        D20, D21, D20
238AE0:  VLDR            D18, [R6,#0x38]
238AE4:  VLDR            D22, [R3,#0x38]
238AE8:  VADD.F64        D17, D17, D20
238AEC:  VMUL.F64        D18, D22, D18
238AF0:  VLDR            D19, [R6,#0x40]
238AF4:  VLDR            D21, [R3,#0x40]
238AF8:  VSUB.F64        D17, D17, D18
238AFC:  VMUL.F64        D19, D21, D19
238B00:  VLDR            D20, [R6,#0x48]
238B04:  VLDR            D22, [R3,#0x48]
238B08:  VADD.F64        D17, D17, D19
238B0C:  VMUL.F64        D20, D22, D20
238B10:  VLDR            D18, [R6,#0x50]
238B14:  VLDR            D21, [R3,#0x50]
238B18:  VSUB.F64        D17, D17, D20
238B1C:  VMUL.F64        D18, D21, D18
238B20:  VLDR            D19, [R6,#0x58]
238B24:  VLDR            D22, [R3,#0x58]
238B28:  VADD.F64        D17, D17, D18
238B2C:  VMUL.F64        D19, D22, D19
238B30:  VLDR            D20, [R6,#0x60]
238B34:  VLDR            D21, [R3,#0x60]
238B38:  VSUB.F64        D17, D17, D19
238B3C:  VMUL.F64        D20, D21, D20
238B40:  VLDR            D18, [R6,#0x68]
238B44:  VLDR            D22, [R3,#0x68]
238B48:  VADD.F64        D17, D17, D20
238B4C:  VMUL.F64        D18, D22, D18
238B50:  VLDR            D19, [R6,#0x70]
238B54:  VLDR            D21, [R3,#0x70]
238B58:  VSUB.F64        D17, D17, D18
238B5C:  VMUL.F64        D19, D21, D19
238B60:  VLDR            D20, [R6,#0x78]
238B64:  ADD.W           R6, R6, #0x200
238B68:  VLDR            D22, [R3,#0x78]
238B6C:  ADD.W           R3, R3, #0x400
238B70:  VADD.F64        D17, D17, D19
238B74:  VMUL.F64        D18, D22, D20
238B78:  VSUB.F64        D17, D17, D18
238B7C:  VMUL.F64        D17, D17, D16
238B80:  VSTR            D17, [R2]
238B84:  BNE             loc_238A8A
238B86:  ADD.W           R2, R0, R12,LSL#3
238B8A:  ADD.W           R3, R1, #0x410
238B8E:  ADD.W           R0, R0, R10,LSL#3
238B92:  VLDR            D17, [R2]
238B96:  ADD.W           R2, R11, #0x810
238B9A:  VLDR            D19, [R3]
238B9E:  ADD.W           R3, R11, #0x830
238BA2:  VLDR            D18, [R2]
238BA6:  ADD.W           R2, R11, #0x800
238BAA:  VLDR            D20, [R2]
238BAE:  ADD.W           R2, R1, #0x420
238BB2:  VMUL.F64        D18, D19, D18
238BB6:  VMUL.F64        D17, D17, D20
238BBA:  VLDR            D19, [R3]
238BBE:  ADD.W           R3, R11, #0x820
238BC2:  VLDR            D21, [R2]
238BC6:  ADD.W           R2, R1, #0x430
238BCA:  VLDR            D20, [R3]
238BCE:  ADD.W           R3, R11, #0x850
238BD2:  VADD.F64        D17, D17, D18
238BD6:  VMUL.F64        D20, D21, D20
238BDA:  VLDR            D22, [R2]
238BDE:  ADD.W           R2, R1, #0x440
238BE2:  VADD.F64        D17, D17, D20
238BE6:  VMUL.F64        D18, D22, D19
238BEA:  VLDR            D19, [R3]
238BEE:  ADD.W           R3, R11, #0x840
238BF2:  VLDR            D21, [R2]
238BF6:  ADD.W           R2, R1, #0x450
238BFA:  VLDR            D20, [R3]
238BFE:  ADD.W           R3, R11, #0x870
238C02:  VADD.F64        D17, D17, D18
238C06:  VMUL.F64        D20, D21, D20
238C0A:  VLDR            D22, [R2]
238C0E:  ADD.W           R2, R1, #0x460
238C12:  VADD.F64        D17, D17, D20
238C16:  ADD.W           R1, R1, #0x470
238C1A:  VMUL.F64        D18, D22, D19
238C1E:  VLDR            D19, [R3]
238C22:  ADD.W           R3, R11, #0x860
238C26:  VLDR            D21, [R2]
238C2A:  ADD.W           R2, R11, #0x600
238C2E:  VLDR            D20, [R3]
238C32:  MOVS            R3, #0
238C34:  VADD.F64        D17, D17, D18
238C38:  VMUL.F64        D20, D21, D20
238C3C:  VLDR            D22, [R1]
238C40:  ADD.W           R1, R4, #0x50 ; 'P'
238C44:  VADD.F64        D17, D17, D20
238C48:  VMUL.F64        D18, D22, D19
238C4C:  VADD.F64        D17, D17, D18
238C50:  VMUL.F64        D17, D17, D16
238C54:  VSTR            D17, [R4,#0x40]
238C58:  ADDS            R6, R0, R3
238C5A:  VLDM            R2, {D17-D20}
238C5E:  ADD.W           R5, R6, #0xC70
238C62:  SUB.W           R3, R3, #0x400
238C66:  CMN.W           R3, #0xC00
238C6A:  VLDR            D21, [R5]
238C6E:  ADDW            R5, R6, #0xC78
238C72:  VLDR            D22, [R5]
238C76:  ADDW            R5, R6, #0xC68
238C7A:  VMUL.F64        D18, D21, D18
238C7E:  VNMUL.F64       D17, D22, D17
238C82:  VLDR            D21, [R5]
238C86:  ADD.W           R5, R6, #0xC60
238C8A:  VSUB.F64        D17, D17, D18
238C8E:  VMUL.F64        D19, D21, D19
238C92:  VLDR            D22, [R5]
238C96:  ADDW            R5, R6, #0xC58
238C9A:  VSUB.F64        D17, D17, D19
238C9E:  VMUL.F64        D18, D22, D20
238CA2:  VLDR            D21, [R5]
238CA6:  ADD.W           R5, R6, #0xC50
238CAA:  VLDR            D20, [R2,#0x20]
238CAE:  VSUB.F64        D17, D17, D18
238CB2:  VMUL.F64        D20, D21, D20
238CB6:  VLDR            D22, [R5]
238CBA:  ADDW            R5, R6, #0xC48
238CBE:  VLDR            D19, [R2,#0x28]
238CC2:  VSUB.F64        D17, D17, D20
238CC6:  VMUL.F64        D18, D22, D19
238CCA:  VLDR            D21, [R5]
238CCE:  ADD.W           R5, R6, #0xC40
238CD2:  VLDR            D20, [R2,#0x30]
238CD6:  VSUB.F64        D17, D17, D18
238CDA:  VMUL.F64        D20, D21, D20
238CDE:  VLDR            D22, [R5]
238CE2:  ADDW            R5, R6, #0xC38
238CE6:  VLDR            D19, [R2,#0x38]
238CEA:  VSUB.F64        D17, D17, D20
238CEE:  VMUL.F64        D18, D22, D19
238CF2:  VLDR            D21, [R5]
238CF6:  ADD.W           R5, R6, #0xC30
238CFA:  VLDR            D20, [R2,#0x40]
238CFE:  VSUB.F64        D17, D17, D18
238D02:  VMUL.F64        D20, D21, D20
238D06:  VLDR            D22, [R5]
238D0A:  ADDW            R5, R6, #0xC28
238D0E:  VLDR            D19, [R2,#0x48]
238D12:  VSUB.F64        D17, D17, D20
238D16:  VMUL.F64        D18, D22, D19
238D1A:  VLDR            D21, [R5]
238D1E:  ADD.W           R5, R6, #0xC20
238D22:  VLDR            D20, [R2,#0x50]
238D26:  VSUB.F64        D17, D17, D18
238D2A:  VMUL.F64        D20, D21, D20
238D2E:  VLDR            D22, [R5]
238D32:  ADDW            R5, R6, #0xC18
238D36:  VLDR            D19, [R2,#0x58]
238D3A:  VSUB.F64        D17, D17, D20
238D3E:  VMUL.F64        D18, D22, D19
238D42:  VLDR            D21, [R5]
238D46:  ADD.W           R5, R6, #0xC10
238D4A:  VLDR            D20, [R2,#0x60]
238D4E:  VSUB.F64        D17, D17, D18
238D52:  VMUL.F64        D20, D21, D20
238D56:  VLDR            D22, [R5]
238D5A:  ADDW            R5, R6, #0xC08
238D5E:  VLDR            D19, [R2,#0x68]
238D62:  ADD.W           R6, R6, #0xC00
238D66:  VSUB.F64        D17, D17, D20
238D6A:  VMUL.F64        D18, D22, D19
238D6E:  VLDR            D20, [R2,#0x70]
238D72:  VLDR            D21, [R5]
238D76:  VSUB.F64        D17, D17, D18
238D7A:  VMUL.F64        D20, D21, D20
238D7E:  VLDR            D19, [R2,#0x78]
238D82:  SUB.W           R2, R2, #0x200
238D86:  VLDR            D22, [R6]
238D8A:  VSUB.F64        D17, D17, D20
238D8E:  VMUL.F64        D18, D22, D19
238D92:  VSUB.F64        D17, D17, D18
238D96:  VMUL.F64        D17, D17, D16
238D9A:  VSTR            D17, [R1]
238D9E:  ADD.W           R1, R1, #0x10
238DA2:  BNE.W           loc_238C58
238DA6:  CMP.W           R8, #0
238DAA:  ITTT NE
238DAC:  LDRNE.W         R0, [R9]
238DB0:  ADDNE           R0, #0x80
238DB2:  STRNE.W         R0, [R9]
238DB6:  MOVS            R0, #0
238DB8:  ADD             SP, SP, #4
238DBA:  POP.W           {R8-R11}
238DBE:  POP             {R4-R7,PC}
