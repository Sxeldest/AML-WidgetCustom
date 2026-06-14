; =========================================================
; Game Engine Function: sub_178FFE
; Address            : 0x178FFE - 0x1790EC
; =========================================================

178FFE:  PUSH            {R4-R7,LR}
179000:  ADD             R7, SP, #0xC
179002:  PUSH.W          {R8-R11}
179006:  SUB             SP, SP, #0xC
179008:  MOV             R6, R0
17900A:  LDR             R0, [R0,#8]
17900C:  MOV             R8, R3
17900E:  MOV             R10, R1
179010:  MOV             R9, R2
179012:  AND.W           R3, R0, R0,ASR#31
179016:  MOV             R1, R0
179018:  STR             R3, [R6,#4]
17901A:  CMP             R3, R1
17901C:  BGE             loc_1790E4
17901E:  MOV             R11, R3
179020:  MOV             R2, R3
179022:  LDR             R4, [R6]
179024:  LDRB            R3, [R4,R2]
179026:  CMP             R3, #0x1C
179028:  BCC             loc_17907A
17902A:  CMP             R3, #0x1E
17902C:  BNE             loc_17905E
17902E:  CMP.W           R2, #0xFFFFFFFF
179032:  MOV             R3, R1
179034:  IT GE
179036:  ADDGE           R3, R2, #1
179038:  STR             R3, [R6,#4]
17903A:  CMP             R3, R1
17903C:  IT GT
17903E:  MOVGT           R1, R3
179040:  CMP             R1, R3
179042:  BEQ             loc_17906A
179044:  ADDS            R2, R3, #1
179046:  STR             R2, [R6,#4]
179048:  LDRB            R3, [R4,R3]
17904A:  AND.W           R5, R3, #0xF
17904E:  CMP             R5, #0xF
179050:  BEQ             loc_17906C
179052:  AND.W           R3, R3, #0xF0
179056:  CMP             R3, #0xF0
179058:  MOV             R3, R2
17905A:  BNE             loc_179040
17905C:  B               loc_17906C
17905E:  MOV             R0, R6
179060:  BL              sub_1791AA
179064:  LDRD.W          R2, R0, [R6,#4]
179068:  B               loc_17906C
17906A:  MOV             R2, R1
17906C:  CMP             R2, R0
17906E:  MOV             R1, R0
179070:  BLT             loc_179022
179072:  MOVS            R5, #0
179074:  MOV             R1, R0
179076:  MOV             R3, R2
179078:  B               loc_17909C
17907A:  ADDS            R3, R2, #1
17907C:  STR             R3, [R6,#4]
17907E:  LDRB            R5, [R4,R2]
179080:  CMP             R5, #0xC
179082:  BNE             loc_17909C
179084:  CMP             R3, R1
179086:  BGE             loc_179096
179088:  ADD.W           R12, R2, #2
17908C:  STR.W           R12, [R6,#4]
179090:  LDRB            R5, [R4,R3]
179092:  MOV             R3, R12
179094:  B               loc_179098
179096:  MOVS            R5, #0
179098:  ADD.W           R5, R5, #0x100
17909C:  CMP             R5, R10
17909E:  BNE             loc_17901A
1790A0:  MOVS            R0, #0
1790A2:  STR             R0, [SP,#0x28+var_24]
1790A4:  SUB.W           R0, R2, R11
1790A8:  ORRS.W          R3, R0, R11
1790AC:  BMI             loc_1790E4
1790AE:  CMP             R1, R11
1790B0:  IT GE
1790B2:  CMPGE           R1, R2
1790B4:  BLT             loc_1790E4
1790B6:  LDR             R1, [R6]
1790B8:  CMP.W           R9, #1
1790BC:  STR             R0, [SP,#0x28+var_20]
1790BE:  ADD             R1, R11
1790C0:  STR             R1, [SP,#0x28+var_28]
1790C2:  IT GE
1790C4:  CMPGE           R0, #1
1790C6:  BLT             loc_1790E4
1790C8:  MOVS            R5, #0
1790CA:  MOV             R4, SP
1790CC:  MOV             R0, R4
1790CE:  BL              sub_1791AA
1790D2:  STR.W           R0, [R8,R5,LSL#2]
1790D6:  ADDS            R5, #1
1790D8:  CMP             R5, R9
1790DA:  ITT LT
1790DC:  LDRDLT.W        R0, R1, [SP,#0x28+var_24]
1790E0:  CMPLT           R0, R1
1790E2:  BLT             loc_1790CC
1790E4:  ADD             SP, SP, #0xC
1790E6:  POP.W           {R8-R11}
1790EA:  POP             {R4-R7,PC}
