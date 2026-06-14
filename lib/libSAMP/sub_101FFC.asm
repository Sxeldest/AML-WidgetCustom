; =========================================================
; Game Engine Function: sub_101FFC
; Address            : 0x101FFC - 0x10207C
; =========================================================

101FFC:  PUSH            {R4,R5,R7,LR}
101FFE:  ADD             R7, SP, #8
102000:  SUB             SP, SP, #0x30
102002:  CBZ             R1, loc_102078
102004:  MOV             R4, R0
102006:  LDR             R0, [R1,#8]
102008:  MOV             R5, R1
10200A:  BL              sub_108354
10200E:  CBZ             R0, loc_102078
102010:  LDR             R0, [R4,#8]
102012:  BL              sub_108324
102016:  CBZ             R0, loc_102078
102018:  LDR             R0, =(unk_B3432 - 0x102020)
10201A:  LDR             R1, [R4,#8]
10201C:  ADD             R0, PC; unk_B3432
10201E:  BL              sub_107188
102022:  CBNZ            R0, loc_102078
102024:  VLDR            S0, [R4,#0x10]
102028:  VLDR            S2, [R4,#0x14]
10202C:  VLDR            S4, [R4,#0x18]
102030:  VLDR            S6, [R4,#0x1C]
102034:  VLDR            S8, [R4,#0x20]
102038:  VLDR            S10, [R4,#0x24]
10203C:  VCVT.F64.F32    D17, S8
102040:  LDR             R2, [R5,#8]
102042:  LDR             R1, [R4,#8]
102044:  LDR             R0, =(unk_B3446 - 0x10204A)
102046:  ADD             R0, PC; unk_B3446
102048:  VCVT.F64.F32    D16, S10
10204C:  VCVT.F64.F32    D18, S6
102050:  VCVT.F64.F32    D19, S4
102054:  VCVT.F64.F32    D20, S2
102058:  VCVT.F64.F32    D21, S0
10205C:  VSTR            D21, [SP,#0x38+var_38]
102060:  VSTR            D20, [SP,#0x38+var_30]
102064:  VSTR            D19, [SP,#0x38+var_28]
102068:  VSTR            D18, [SP,#0x38+var_20]
10206C:  VSTR            D17, [SP,#0x38+var_18]
102070:  VSTR            D16, [SP,#0x38+var_10]
102074:  BL              sub_107188
102078:  ADD             SP, SP, #0x30 ; '0'
10207A:  POP             {R4,R5,R7,PC}
