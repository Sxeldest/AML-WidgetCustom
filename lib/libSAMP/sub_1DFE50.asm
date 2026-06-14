; =========================================================
; Game Engine Function: sub_1DFE50
; Address            : 0x1DFE50 - 0x1E0160
; =========================================================

1DFE50:  PUSH            {R4,R5,R11,LR}
1DFE54:  ADD             R11, SP, #8
1DFE58:  LDR             LR, [R0,#0x154]
1DFE5C:  LDR             R12, [R0,#0x1D8]
1DFE60:  LDR             R5, [R0,#0x13C]
1DFE64:  SUB             R3, R12, LR
1DFE68:  LDR             R4, [R0,#0x140]
1DFE6C:  AND             R3, R5, R3
1DFE70:  VLDR            S0, [R0,#0x124]
1DFE74:  VLDR            S4, [R0,#0x164]
1DFE78:  ADD             R3, R4, R3,LSL#2
1DFE7C:  LDR             R4, [R0,#0x12C]
1DFE80:  LDR             R5, [R0,#0x130]
1DFE84:  VLDR            S2, [R3]
1DFE88:  LDR             R3, [R0,#0x14C]
1DFE8C:  VMUL.F32        S0, S2, S0
1DFE90:  VLDR            S2, [R1,#8]
1DFE94:  SUB             R3, R12, R3
1DFE98:  VLDR            S8, [R0,#0xD4]
1DFE9C:  AND             R3, R4, R3
1DFEA0:  ADD             R3, R5, R3,LSL#2
1DFEA4:  VADD.F32        S0, S0, S2
1DFEA8:  VLDR            S2, [R0,#0x174]
1DFEAC:  VSUB.F32        S2, S2, S0
1DFEB0:  VMUL.F32        S2, S2, S4
1DFEB4:  VLDR            S4, [R0,#0x120]
1DFEB8:  VADD.F32        S6, S2, S0
1DFEBC:  VLDR            S0, [R0,#0xDC]
1DFEC0:  VLDR            S2, [R0,#0x11C]
1DFEC4:  VSTR            S6, [R0,#0x174]
1DFEC8:  VLDR            S10, [R3]
1DFECC:  VLDR            S12, [R0,#0x15C]
1DFED0:  VMUL.F32        S2, S10, S2
1DFED4:  VLDR            S10, [R1]
1DFED8:  LDR             R3, [R0,#0x158]
1DFEDC:  LDR             R4, [R0,#0x144]
1DFEE0:  SUB             R3, R12, R3
1DFEE4:  LDR             R5, [R0,#0x148]
1DFEE8:  AND             R3, R4, R3
1DFEEC:  ADD             R3, R5, R3,LSL#2
1DFEF0:  VADD.F32        S2, S2, S10
1DFEF4:  VLDR            S10, [R0,#0x16C]
1DFEF8:  VSUB.F32        S10, S10, S2
1DFEFC:  VMUL.F32        S10, S10, S12
1DFF00:  VADD.F32        S10, S10, S2
1DFF04:  VLDR            S2, [R0,#0x128]
1DFF08:  VSTR            S10, [R0,#0x16C]
1DFF0C:  VLDR            S12, [R3]
1DFF10:  VLDR            S14, [R0,#0x168]
1DFF14:  VMUL.F32        S2, S12, S2
1DFF18:  VLDR            S12, [R1,#0xC]
1DFF1C:  LDR             R3, [R0,#0x150]
1DFF20:  LDR             R4, [R0,#0x134]
1DFF24:  SUB             R3, R12, R3
1DFF28:  LDR             R5, [R0,#0x138]
1DFF2C:  AND             R3, R4, R3
1DFF30:  ADD             R3, R5, R3,LSL#2
1DFF34:  VADD.F32        S2, S2, S12
1DFF38:  VLDR            S12, [R0,#0x178]
1DFF3C:  VSUB.F32        S12, S12, S2
1DFF40:  VMUL.F32        S12, S12, S14
1DFF44:  VADD.F32        S12, S12, S2
1DFF48:  VSTR            S12, [R0,#0x178]
1DFF4C:  VLDR            S2, [R3]
1DFF50:  VLDR            S14, [R0,#0x160]
1DFF54:  VMUL.F32        S2, S2, S4
1DFF58:  VLDR            S4, [R1,#4]
1DFF5C:  LDR             R5, [R0,#0x10C]
1DFF60:  LDR             R1, [R0,#0xEC]
1DFF64:  SUB             R5, R12, R5
1DFF68:  LDR             R3, [R0,#0xF0]
1DFF6C:  AND             R5, R1, R5
1DFF70:  AND             R1, R1, R12
1DFF74:  ADD             R5, R3, R5,LSL#2
1DFF78:  ADD             R1, R3, R1,LSL#2
1DFF7C:  VADD.F32        S2, S2, S4
1DFF80:  VLDR            S4, [R0,#0x170]
1DFF84:  VSUB.F32        S4, S4, S2
1DFF88:  VMUL.F32        S4, S4, S14
1DFF8C:  VADD.F32        S4, S4, S2
1DFF90:  VMUL.F32        S2, S8, S6
1DFF94:  VSTR            S4, [R0,#0x170]
1DFF98:  VLDR            S14, [R5]
1DFF9C:  VSUB.F32        S1, S14, S2
1DFFA0:  VMUL.F32        S0, S14, S0
1DFFA4:  VMUL.F32        S8, S1, S8
1DFFA8:  VSUB.F32        S14, S0, S2
1DFFAC:  VSUB.F32        S0, S2, S0
1DFFB0:  VADD.F32        S6, S8, S6
1DFFB4:  VSTR            S6, [R1]
1DFFB8:  VLDR            S6, [R0,#0xD4]
1DFFBC:  LDR             R3, [R0,#0x110]
1DFFC0:  LDR             R1, [R0,#0x1D8]
1DFFC4:  VMUL.F32        S1, S6, S10
1DFFC8:  LDR             R5, [R0,#0xF4]
1DFFCC:  SUB             R3, R1, R3
1DFFD0:  LDR             R4, [R0,#0xF8]
1DFFD4:  AND             R3, R5, R3
1DFFD8:  VLDR            S8, [R0,#0xE0]
1DFFDC:  ADD             R3, R4, R3,LSL#2
1DFFE0:  VLDR            S3, [R3]
1DFFE4:  AND             R3, R5, R1
1DFFE8:  VSUB.F32        S5, S3, S1
1DFFEC:  ADD             R3, R4, R3,LSL#2
1DFFF0:  VMUL.F32        S8, S3, S8
1DFFF4:  VMUL.F32        S6, S5, S6
1DFFF8:  VSUB.F32        S8, S8, S1
1DFFFC:  VADD.F32        S6, S6, S10
1E0000:  VSUB.F32        S0, S0, S8
1E0004:  VSTR            S6, [R3]
1E0008:  LDR             R3, [R0,#0x114]
1E000C:  VLDR            S6, [R0,#0xD4]
1E0010:  LDR             R5, [R0,#0xFC]
1E0014:  SUB             R3, R1, R3
1E0018:  VMUL.F32        S5, S6, S12
1E001C:  LDR             R4, [R0,#0x100]
1E0020:  AND             R3, R5, R3
1E0024:  VLDR            S10, [R0,#0xE4]
1E0028:  ADD             R3, R4, R3,LSL#2
1E002C:  VLDR            S7, [R3]
1E0030:  AND             R3, R5, R1
1E0034:  VSUB.F32        S9, S7, S5
1E0038:  ADD             R3, R4, R3,LSL#2
1E003C:  VMUL.F32        S10, S7, S10
1E0040:  VMUL.F32        S6, S9, S6
1E0044:  VSUB.F32        S10, S10, S5
1E0048:  VSUB.F32        S5, S14, S8
1E004C:  VADD.F32        S6, S6, S12
1E0050:  VSUB.F32        S1, S8, S10
1E0054:  VSUB.F32        S0, S0, S10
1E0058:  VSTR            S6, [R3]
1E005C:  LDR             R4, [R0,#0x118]
1E0060:  VLDR            S6, [R0,#0xD4]
1E0064:  LDR             R3, [R0,#0x104]
1E0068:  SUB             R4, R1, R4
1E006C:  VMUL.F32        S3, S6, S4
1E0070:  LDR             R5, [R0,#0x108]
1E0074:  AND             R4, R3, R4
1E0078:  VLDR            S12, [R0,#0xE8]
1E007C:  AND             R1, R3, R1
1E0080:  ADD             R4, R5, R4,LSL#2
1E0084:  ADD             R1, R5, R1,LSL#2
1E0088:  VLDR            S7, [R4]
1E008C:  VSUB.F32        S9, S7, S3
1E0090:  VMUL.F32        S12, S7, S12
1E0094:  VMUL.F32        S6, S9, S6
1E0098:  VSUB.F32        S12, S12, S3
1E009C:  VADD.F32        S4, S6, S4
1E00A0:  VADD.F32        S1, S1, S12
1E00A4:  VSUB.F32        S6, S10, S14
1E00A8:  VSTR            S4, [R1]
1E00AC:  VLDR            S3, [R0,#0xD8]
1E00B0:  VADD.F32        S6, S6, S12
1E00B4:  VLDR            S4, [R0,#0xCC]
1E00B8:  VMUL.F32        S1, S1, S3
1E00BC:  VMUL.F32        S0, S3, S0
1E00C0:  VMUL.F32        S2, S6, S3
1E00C4:  VADD.F32        S14, S1, S14
1E00C8:  VADD.F32        S6, S5, S12
1E00CC:  VADD.F32        S0, S0, S12
1E00D0:  VADD.F32        S2, S2, S8
1E00D4:  VMUL.F32        S4, S14, S4
1E00D8:  VMUL.F32        S6, S6, S3
1E00DC:  VSTR            S4, [R2]
1E00E0:  VLDR            S4, [R0,#0xCC]
1E00E4:  VADD.F32        S6, S6, S10
1E00E8:  VMUL.F32        S4, S4, S2
1E00EC:  VSTR            S4, [R2,#4]
1E00F0:  VLDR            S4, [R0,#0xCC]
1E00F4:  VMUL.F32        S4, S4, S6
1E00F8:  VSTR            S4, [R2,#8]
1E00FC:  VLDR            S4, [R0,#0xCC]
1E0100:  VMUL.F32        S4, S4, S0
1E0104:  VSTR            S4, [R2,#0xC]
1E0108:  LDR             R1, [R0,#0x12C]
1E010C:  LDR             R3, [R0,#0x1D8]
1E0110:  LDR             R2, [R0,#0x130]
1E0114:  AND             R1, R1, R3
1E0118:  ADD             R1, R2, R1,LSL#2
1E011C:  VSTR            S14, [R1]
1E0120:  LDR             R1, [R0,#0x134]
1E0124:  LDR             R2, [R0,#0x138]
1E0128:  AND             R1, R1, R3
1E012C:  ADD             R1, R2, R1,LSL#2
1E0130:  VSTR            S2, [R1]
1E0134:  LDR             R1, [R0,#0x13C]
1E0138:  LDR             R2, [R0,#0x140]
1E013C:  AND             R1, R1, R3
1E0140:  ADD             R1, R2, R1,LSL#2
1E0144:  VSTR            S6, [R1]
1E0148:  LDR             R1, [R0,#0x144]
1E014C:  LDR             R0, [R0,#0x148]
1E0150:  AND             R1, R1, R3
1E0154:  ADD             R0, R0, R1,LSL#2
1E0158:  VSTR            S0, [R0]
1E015C:  POP             {R4,R5,R11,PC}
