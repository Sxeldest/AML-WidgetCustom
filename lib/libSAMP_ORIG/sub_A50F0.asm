; =========================================================
; Game Engine Function: sub_A50F0
; Address            : 0xA50F0 - 0xA520E
; =========================================================

A50F0:  PUSH            {R4-R7,LR}
A50F2:  ADD             R7, SP, #0xC
A50F4:  PUSH.W          {R8,R9,R11}
A50F8:  VLDR            S8, [R0,#0x14]
A50FC:  VLDR            S6, [R0,#0x10]
A5100:  VADD.F32        S8, S8, S1
A5104:  LDR             R2, [R0]
A5106:  VADD.F32        S0, S6, S0
A510A:  CMP             R2, #0
A510C:  VADD.F32        S6, S8, S3
A5110:  VADD.F32        S2, S0, S2
A5114:  VCVT.S32.F32    S8, S8
A5118:  VCVT.S32.F32    S0, S0
A511C:  VADD.F32        S10, S6, S5
A5120:  VADD.F32        S4, S2, S4
A5124:  VCVT.S32.F32    S6, S6
A5128:  VCVT.S32.F32    S2, S2
A512C:  VMOV            R8, S8
A5130:  VMOV            R1, S0
A5134:  VCVT.S32.F32    S12, S10
A5138:  VSTR            S10, [R0,#0x14]
A513C:  VCVT.S32.F32    S14, S4
A5140:  VSTR            S4, [R0,#0x10]
A5144:  VMOV            R12, S6
A5148:  VMOV            LR, S2
A514C:  VMOV            R5, S12
A5150:  VMOV            R3, S14
A5154:  BEQ             loc_A51E0
A5156:  LDR.W           R9, [R0,#0x1C]
A515A:  CMP             R9, R3
A515C:  BLT             loc_A5162
A515E:  LDR             R4, [R0,#4]
A5160:  CBNZ            R4, loc_A5166
A5162:  MOV             R9, R3
A5164:  STR             R3, [R0,#0x1C]
A5166:  LDR             R4, [R0,#0x24]
A5168:  CMP             R4, R5
A516A:  BLT             loc_A5170
A516C:  LDR             R6, [R0,#4]
A516E:  CBNZ            R6, loc_A5174
A5170:  MOV             R4, R5
A5172:  STR             R5, [R0,#0x24]
A5174:  LDR             R6, [R0,#0x18]
A5176:  CMP             R6, R3
A5178:  BGT             loc_A517E
A517A:  LDR             R2, [R0,#4]
A517C:  CBNZ            R2, loc_A5182
A517E:  MOV             R6, R3
A5180:  STR             R3, [R0,#0x18]
A5182:  LDR             R3, [R0,#0x20]
A5184:  CMP             R3, R5
A5186:  BGT             loc_A518C
A5188:  LDR             R2, [R0,#4]
A518A:  CBNZ            R2, loc_A5190
A518C:  MOV             R3, R5
A518E:  STR             R5, [R0,#0x20]
A5190:  MOVS            R2, #1
A5192:  CMP             R9, R1
A5194:  STR             R2, [R0,#4]
A5196:  ITT LT
A5198:  STRLT           R1, [R0,#0x1C]
A519A:  MOVLT           R9, R1
A519C:  CMP             R4, R8
A519E:  ITT LT
A51A0:  STRLT.W         R8, [R0,#0x24]
A51A4:  MOVLT           R4, R8
A51A6:  CMP             R6, R1
A51A8:  ITT GT
A51AA:  STRGT           R1, [R0,#0x18]
A51AC:  MOVGT           R6, R1
A51AE:  CMP             R3, R8
A51B0:  ITT GT
A51B2:  STRGT.W         R8, [R0,#0x20]
A51B6:  MOVGT           R3, R8
A51B8:  CMP             R9, LR
A51BA:  IT LT
A51BC:  STRLT.W         LR, [R0,#0x1C]
A51C0:  CMP             R4, R12
A51C2:  IT LT
A51C4:  STRLT.W         R12, [R0,#0x24]
A51C8:  CMP             R6, LR
A51CA:  IT GT
A51CC:  STRGT.W         LR, [R0,#0x18]
A51D0:  CMP             R3, R12
A51D2:  IT GT
A51D4:  STRGT.W         R12, [R0,#0x20]
A51D8:  MOVS            R1, #1
A51DA:  LDR             R2, [R0,#0x2C]
A51DC:  STR             R1, [R0,#4]
A51DE:  B               loc_A5204
A51E0:  LDRD.W          R4, R2, [R0,#0x28]
A51E4:  RSB.W           R6, R2, R2,LSL#3
A51E8:  STRH.W          R3, [R4,R6,LSL#1]
A51EC:  ADD.W           R3, R4, R6,LSL#1
A51F0:  MOVS            R4, #4
A51F2:  STRB            R4, [R3,#0xC]
A51F4:  STRH.W          R12, [R3,#0xA]
A51F8:  STRH.W          LR, [R3,#8]
A51FC:  STRH.W          R8, [R3,#6]
A5200:  STRH            R1, [R3,#4]
A5202:  STRH            R5, [R3,#2]
A5204:  ADDS            R1, R2, #1
A5206:  STR             R1, [R0,#0x2C]
A5208:  POP.W           {R8,R9,R11}
A520C:  POP             {R4-R7,PC}
