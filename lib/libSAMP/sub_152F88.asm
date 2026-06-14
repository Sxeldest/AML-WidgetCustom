; =========================================================
; Game Engine Function: sub_152F88
; Address            : 0x152F88 - 0x1530BE
; =========================================================

152F88:  PUSH            {R4-R7,LR}
152F8A:  ADD             R7, SP, #0xC
152F8C:  PUSH.W          {R8-R11}
152F90:  SUB             SP, SP, #0xC
152F92:  LDR             R6, [R1,#4]
152F94:  MOV             R5, R2
152F96:  MOV             R2, R0
152F98:  MOV.W           R0, #0x55555555
152F9C:  MOV             R9, R1
152F9E:  MOV.W           R1, #0x33333333
152FA2:  AND.W           R0, R0, R6,LSR#1
152FA6:  LDR.W           R10, [R5,#4]
152FAA:  SUBS            R0, R6, R0
152FAC:  AND.W           R1, R1, R0,LSR#2
152FB0:  BIC.W           R0, R0, #0xCCCCCCCC
152FB4:  ADD             R0, R1
152FB6:  MOV.W           R1, #0x1010101
152FBA:  ADD.W           R0, R0, R0,LSR#4
152FBE:  BIC.W           R0, R0, #0xF0F0F0F0
152FC2:  MULS            R0, R1
152FC4:  MOV.W           R8, R0,LSR#24
152FC8:  CMP.W           R8, #1
152FCC:  BHI             loc_152FD6
152FCE:  SUBS            R0, R6, #1
152FD0:  AND.W           R10, R10, R0
152FD4:  B               loc_152FE8
152FD6:  CMP             R10, R6
152FD8:  BCC             loc_152FE8
152FDA:  MOV             R0, R10
152FDC:  MOV             R1, R6
152FDE:  MOV             R4, R2
152FE0:  BLX             sub_221798
152FE4:  MOV             R2, R4
152FE6:  MOV             R10, R1
152FE8:  LDR.W           R11, [R9]
152FEC:  LDR.W           R0, [R11,R10,LSL#2]
152FF0:  MOV             R4, R0
152FF2:  LDR             R0, [R0]
152FF4:  CMP             R0, R5
152FF6:  BNE             loc_152FF0
152FF8:  ADD.W           R12, R9, #8
152FFC:  CMP             R4, R12
152FFE:  BEQ             loc_153026
153000:  LDR             R0, [R4,#4]
153002:  CMP.W           R8, #1
153006:  BHI             loc_15300E
153008:  SUBS            R1, R6, #1
15300A:  ANDS            R0, R1
15300C:  B               loc_153022
15300E:  CMP             R0, R6
153010:  BCC             loc_153022
153012:  MOV             R1, R6
153014:  STRD.W          R12, R2, [SP,#0x28+var_24]
153018:  BLX             sub_221798
15301C:  LDRD.W          R12, R2, [SP,#0x28+var_24]
153020:  MOV             R0, R1
153022:  CMP             R0, R10
153024:  BEQ             loc_153056
153026:  LDR             R0, [R5]
153028:  CBZ             R0, loc_153050
15302A:  LDR             R0, [R0,#4]
15302C:  CMP.W           R8, #1
153030:  BHI             loc_153038
153032:  SUBS            R1, R6, #1
153034:  ANDS            R0, R1
153036:  B               loc_15304C
153038:  CMP             R0, R6
15303A:  BCC             loc_15304C
15303C:  MOV             R1, R6
15303E:  STRD.W          R12, R2, [SP,#0x28+var_24]
153042:  BLX             sub_221798
153046:  LDRD.W          R12, R2, [SP,#0x28+var_24]
15304A:  MOV             R0, R1
15304C:  CMP             R0, R10
15304E:  BEQ             loc_153056
153050:  MOVS            R0, #0
153052:  STR.W           R0, [R11,R10,LSL#2]
153056:  LDR.W           R11, [R5]
15305A:  MOVS            R3, #0
15305C:  CMP.W           R11, #0
153060:  BEQ             loc_153072
153062:  LDR.W           R0, [R11,#4]
153066:  CMP.W           R8, #1
15306A:  BHI             loc_153078
15306C:  SUBS            R1, R6, #1
15306E:  ANDS            R0, R1
153070:  B               loc_15308E
153072:  MOV.W           R11, #0
153076:  B               loc_15309E
153078:  CMP             R0, R6
15307A:  BCC             loc_15308E
15307C:  MOV             R1, R6
15307E:  MOV             R8, R2
153080:  MOV             R6, R12
153082:  BLX             sub_221798
153086:  MOVS            R3, #0
153088:  MOV             R12, R6
15308A:  MOV             R2, R8
15308C:  MOV             R0, R1
15308E:  CMP             R0, R10
153090:  ITTT NE
153092:  LDRNE.W         R1, [R9]
153096:  STRNE.W         R4, [R1,R0,LSL#2]
15309A:  LDRNE.W         R11, [R5]
15309E:  MOVS            R0, #1
1530A0:  STR.W           R11, [R4]
1530A4:  STRB            R0, [R2,#8]
1530A6:  LDR.W           R0, [R9,#0xC]
1530AA:  STRD.W          R5, R12, [R2]
1530AE:  SUBS            R0, #1
1530B0:  STR             R3, [R5]
1530B2:  STR.W           R0, [R9,#0xC]
1530B6:  ADD             SP, SP, #0xC
1530B8:  POP.W           {R8-R11}
1530BC:  POP             {R4-R7,PC}
