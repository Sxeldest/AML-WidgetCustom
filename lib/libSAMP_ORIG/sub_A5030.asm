; =========================================================
; Game Engine Function: sub_A5030
; Address            : 0xA5030 - 0xA50F0
; =========================================================

A5030:  PUSH            {R4,R6,R7,LR}
A5032:  ADD             R7, SP, #8
A5034:  VPUSH           {D8-D9}
A5038:  VMOV.F32        S16, S1
A503C:  MOV             R4, R0
A503E:  VMOV.F32        S18, S0
A5042:  BL              sub_A520E
A5046:  VLDR            S0, [R4,#0x10]
A504A:  VLDR            S2, [R4,#0x14]
A504E:  VADD.F32        S0, S0, S18
A5052:  LDR             R2, [R4]
A5054:  VADD.F32        S2, S2, S16
A5058:  VCVT.S32.F32    S6, S0
A505C:  VSTR            S0, [R4,#8]
A5060:  VCVT.S32.F32    S4, S2
A5064:  VSTR            S2, [R4,#0xC]
A5068:  VSTR            S0, [R4,#0x10]
A506C:  VSTR            S2, [R4,#0x14]
A5070:  VMOV            R1, S6
A5074:  VMOV            R0, S4
A5078:  CBZ             R2, loc_A5084
A507A:  LDR             R2, [R4,#0x1C]
A507C:  CMP             R2, R1
A507E:  BGE             loc_A50A2
A5080:  STR             R1, [R4,#0x1C]
A5082:  B               loc_A50AA
A5084:  LDRD.W          R12, R2, [R4,#0x28]
A5088:  RSB.W           R3, R2, R2,LSL#3
A508C:  STRH.W          R1, [R12,R3,LSL#1]
A5090:  ADD.W           R1, R12, R3,LSL#1
A5094:  MOVS            R3, #0
A5096:  STR             R3, [R1,#8]
A5098:  STR             R3, [R1,#4]
A509A:  MOVS            R3, #1
A509C:  STRB            R3, [R1,#0xC]
A509E:  STRH            R0, [R1,#2]
A50A0:  B               loc_A50E6
A50A2:  LDR             R2, [R4,#4]
A50A4:  CMP             R2, #0
A50A6:  IT EQ
A50A8:  STREQ           R1, [R4,#0x1C]
A50AA:  LDR             R2, [R4,#0x24]
A50AC:  CMP             R2, R0
A50AE:  BGE             loc_A50B4
A50B0:  STR             R0, [R4,#0x24]
A50B2:  B               loc_A50BC
A50B4:  LDR             R2, [R4,#4]
A50B6:  CMP             R2, #0
A50B8:  IT EQ
A50BA:  STREQ           R0, [R4,#0x24]
A50BC:  LDR             R2, [R4,#0x18]
A50BE:  CMP             R2, R1
A50C0:  BLE             loc_A50C6
A50C2:  STR             R1, [R4,#0x18]
A50C4:  B               loc_A50CE
A50C6:  LDR             R2, [R4,#4]
A50C8:  CMP             R2, #0
A50CA:  IT EQ
A50CC:  STREQ           R1, [R4,#0x18]
A50CE:  LDR             R1, [R4,#0x20]
A50D0:  CMP             R1, R0
A50D2:  BLE             loc_A50D8
A50D4:  STR             R0, [R4,#0x20]
A50D6:  B               loc_A50E0
A50D8:  LDR             R1, [R4,#4]
A50DA:  CMP             R1, #0
A50DC:  IT EQ
A50DE:  STREQ           R0, [R4,#0x20]
A50E0:  MOVS            R0, #1
A50E2:  LDR             R2, [R4,#0x2C]
A50E4:  STR             R0, [R4,#4]
A50E6:  ADDS            R0, R2, #1
A50E8:  STR             R0, [R4,#0x2C]
A50EA:  VPOP            {D8-D9}
A50EE:  POP             {R4,R6,R7,PC}
