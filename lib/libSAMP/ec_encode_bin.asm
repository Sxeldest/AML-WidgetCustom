; =========================================================
; Game Engine Function: ec_encode_bin
; Address            : 0x1950CC - 0x1951A8
; =========================================================

1950CC:  PUSH            {R4-R7,LR}
1950CE:  ADD             R7, SP, #0xC
1950D0:  PUSH.W          {R8}
1950D4:  LDR             R5, [R0,#0x1C]
1950D6:  MOVS            R4, #1
1950D8:  MOVW            R12, #1
1950DC:  LSLS            R4, R3
1950DE:  MOVT            R12, #0x80
1950E2:  CMP             R1, #0
1950E4:  LSR.W           R3, R5, R3
1950E8:  BEQ             loc_1950FC
1950EA:  SUBS            R4, R4, R1
1950EC:  SUBS            R1, R2, R1
1950EE:  LDR             R2, [R0,#0x20]
1950F0:  MLS.W           R5, R3, R4, R5
1950F4:  MULS            R1, R3
1950F6:  ADD             R2, R5
1950F8:  STR             R2, [R0,#0x20]
1950FA:  B               loc_195102
1950FC:  SUBS            R1, R4, R2
1950FE:  MLS.W           R1, R3, R1, R5
195102:  CMP             R1, R12
195104:  STR             R1, [R0,#0x1C]
195106:  BCS             loc_1951A2
195108:  LDR             R3, [R0,#0x20]
19510A:  MOVW            R8, #0xFF00
19510E:  MOV.W           LR, #0xFF
195112:  MOVT            R8, #0x7FFF
195116:  CMP.W           LR, R3,LSR#23
19511A:  BNE             loc_195124
19511C:  LDR             R2, [R0,#0x24]
19511E:  ADDS            R2, #1
195120:  STR             R2, [R0,#0x24]
195122:  B               loc_19518C
195124:  LDR             R4, [R0,#0x28]
195126:  LSRS            R1, R3, #0x1F
195128:  CMP             R4, #0
19512A:  BLT             loc_195150
19512C:  LDRD.W          R6, R2, [R0,#4]
195130:  LDR             R5, [R0,#0x18]
195132:  ADD             R2, R5
195134:  CMP             R2, R6
195136:  BCS             loc_195146
195138:  LDR             R2, [R0]
19513A:  ADD             R4, R1
19513C:  ADDS            R6, R5, #1
19513E:  STR             R6, [R0,#0x18]
195140:  STRB            R4, [R2,R5]
195142:  MOVS            R4, #0
195144:  B               loc_19514A
195146:  MOV.W           R4, #0xFFFFFFFF
19514A:  LDR             R2, [R0,#0x2C]
19514C:  ORRS            R2, R4
19514E:  STR             R2, [R0,#0x2C]
195150:  LSRS            R4, R3, #0x17
195152:  LDR             R3, [R0,#0x24]
195154:  CBZ             R3, loc_195184
195156:  ADDS            R1, #0xFF
195158:  LDRD.W          R2, R6, [R0,#4]
19515C:  LDR             R5, [R0,#0x18]
19515E:  ADD             R6, R5
195160:  CMP             R6, R2
195162:  BCS             loc_195172
195164:  LDR             R2, [R0]
195166:  ADDS            R3, R5, #1
195168:  STR             R3, [R0,#0x18]
19516A:  STRB            R1, [R2,R5]
19516C:  MOVS            R5, #0
19516E:  LDR             R3, [R0,#0x24]
195170:  B               loc_195176
195172:  MOV.W           R5, #0xFFFFFFFF
195176:  LDR             R2, [R0,#0x2C]
195178:  SUBS            R3, #1
19517A:  STR             R3, [R0,#0x24]
19517C:  ORR.W           R2, R2, R5
195180:  STR             R2, [R0,#0x2C]
195182:  BNE             loc_195158
195184:  UXTB            R2, R4
195186:  LDRD.W          R1, R3, [R0,#0x1C]
19518A:  STR             R2, [R0,#0x28]
19518C:  LDR             R2, [R0,#0x14]
19518E:  AND.W           R3, R8, R3,LSL#8
195192:  LSLS            R1, R1, #8
195194:  CMP             R1, R12
195196:  STRD.W          R1, R3, [R0,#0x1C]
19519A:  ADD.W           R2, R2, #8
19519E:  STR             R2, [R0,#0x14]
1951A0:  BCC             loc_195116
1951A2:  POP.W           {R8}
1951A6:  POP             {R4-R7,PC}
