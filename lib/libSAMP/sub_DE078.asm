; =========================================================
; Game Engine Function: sub_DE078
; Address            : 0xDE078 - 0xDE1BA
; =========================================================

DE078:  PUSH            {R4-R7,LR}
DE07A:  ADD             R7, SP, #0xC
DE07C:  PUSH.W          {R8-R11}
DE080:  SUB             SP, SP, #0x24
DE082:  LDR             R5, [R1,#8]
DE084:  MOV             R4, R0
DE086:  CMP             R5, #0x21 ; '!'
DE088:  BGT             loc_DE0B2
DE08A:  CMP             R5, #9
DE08C:  BEQ             loc_DE0E4
DE08E:  CMP             R5, #0xA
DE090:  BEQ             loc_DE100
DE092:  CMP             R5, #0xD
DE094:  BNE             loc_DE0D8
DE096:  LDRD.W          R0, R2, [R4,#8]
DE09A:  ADDS            R1, R0, #1
DE09C:  CMP             R2, R1
DE09E:  BCS             loc_DE0AC
DE0A0:  LDR             R0, [R4]
DE0A2:  LDR             R2, [R0]
DE0A4:  MOV             R0, R4
DE0A6:  BLX             R2
DE0A8:  LDR             R0, [R4,#8]
DE0AA:  ADDS            R1, R0, #1
DE0AC:  LDR             R2, [R4,#4]
DE0AE:  MOVS            R5, #0x72 ; 'r'
DE0B0:  B               loc_DE11A
DE0B2:  CMP             R5, #0x22 ; '"'
DE0B4:  IT NE
DE0B6:  CMPNE           R5, #0x27 ; '''
DE0B8:  BNE             loc_DE0D4
DE0BA:  LDRD.W          R0, R2, [R4,#8]
DE0BE:  ADDS            R1, R0, #1
DE0C0:  CMP             R2, R1
DE0C2:  BCS             loc_DE0D0
DE0C4:  LDR             R0, [R4]
DE0C6:  LDR             R2, [R0]
DE0C8:  MOV             R0, R4
DE0CA:  BLX             R2
DE0CC:  LDR             R0, [R4,#8]
DE0CE:  ADDS            R1, R0, #1
DE0D0:  LDR             R2, [R4,#4]
DE0D2:  B               loc_DE11A
DE0D4:  CMP             R5, #0x5C ; '\'
DE0D6:  BEQ             loc_DE0BA
DE0D8:  CMP             R5, #0xFF
DE0DA:  BHI             loc_DE148
DE0DC:  LDR             R1, =(aX02x - 0xDE0E2); "\\x{:02x}" ...
DE0DE:  ADD             R1, PC; "\\x{:02x}"
DE0E0:  MOVS            R0, #0
DE0E2:  B               loc_DE154
DE0E4:  LDRD.W          R0, R2, [R4,#8]
DE0E8:  ADDS            R1, R0, #1
DE0EA:  CMP             R2, R1
DE0EC:  BCS             loc_DE0FA
DE0EE:  LDR             R0, [R4]
DE0F0:  LDR             R2, [R0]
DE0F2:  MOV             R0, R4
DE0F4:  BLX             R2
DE0F6:  LDR             R0, [R4,#8]
DE0F8:  ADDS            R1, R0, #1
DE0FA:  LDR             R2, [R4,#4]
DE0FC:  MOVS            R5, #0x74 ; 't'
DE0FE:  B               loc_DE11A
DE100:  LDRD.W          R0, R2, [R4,#8]
DE104:  ADDS            R1, R0, #1
DE106:  CMP             R2, R1
DE108:  BCS             loc_DE116
DE10A:  LDR             R0, [R4]
DE10C:  LDR             R2, [R0]
DE10E:  MOV             R0, R4
DE110:  BLX             R2
DE112:  LDR             R0, [R4,#8]
DE114:  ADDS            R1, R0, #1
DE116:  LDR             R2, [R4,#4]
DE118:  MOVS            R5, #0x6E ; 'n'
DE11A:  STR             R1, [R4,#8]
DE11C:  ADD             R0, R2
DE11E:  MOVS            R1, #0x5C ; '\'
DE120:  STRB            R1, [R0]
DE122:  LDRD.W          R0, R2, [R4,#8]
DE126:  ADDS            R1, R0, #1
DE128:  CMP             R2, R1
DE12A:  BCS             loc_DE138
DE12C:  LDR             R0, [R4]
DE12E:  LDR             R2, [R0]
DE130:  MOV             R0, R4
DE132:  BLX             R2
DE134:  LDR             R0, [R4,#8]
DE136:  ADDS            R1, R0, #1
DE138:  LDR             R2, [R4,#4]
DE13A:  STR             R1, [R4,#8]
DE13C:  STRB            R5, [R2,R0]
DE13E:  MOV             R0, R4
DE140:  ADD             SP, SP, #0x24 ; '$'
DE142:  POP.W           {R8-R11}
DE146:  POP             {R4-R7,PC}
DE148:  MOVS            R0, #0
DE14A:  CMP.W           R0, R5,LSR#16
DE14E:  BNE             loc_DE170
DE150:  LDR             R1, =(aU04x - 0xDE156); "\\u{:04x}" ...
DE152:  ADD             R1, PC; "\\u{:04x}"
DE154:  ADD             R2, SP, #0x40+var_28
DE156:  MOVS            R3, #2; int
DE158:  STR             R0, [SP,#0x40+var_24]
DE15A:  STRD.W          R2, R0, [SP,#0x40+var_38]; int
DE15E:  MOVS            R2, #8; int
DE160:  STRD.W          R3, R0, [SP,#0x40+var_40]; int
DE164:  STR             R0, [SP,#0x40+var_30]; int
DE166:  MOV             R0, R4; int
DE168:  STR             R5, [SP,#0x40+var_28]
DE16A:  BL              sub_DCAC4
DE16E:  B               loc_DE13E
DE170:  LSRS            R0, R5, #0x10
DE172:  CMP             R0, #0x10
DE174:  BHI             loc_DE17C
DE176:  LDR             R1, =(aU08x - 0xDE17C); "\\U{:08x}" ...
DE178:  ADD             R1, PC; "\\U{:08x}"
DE17A:  B               loc_DE0E0
DE17C:  LDRD.W          R6, R0, [R1]
DE180:  SUBS            R5, R0, R6
DE182:  BEQ             loc_DE13E
DE184:  LDR             R0, =(aX02x - 0xDE196); "\\x{:02x}" ...
DE186:  ADD.W           R8, SP, #0x40+var_28
DE18A:  MOV.W           R9, #2
DE18E:  MOV.W           R10, #0
DE192:  ADD             R0, PC; "\\x{:02x}"
DE194:  MOV             R11, R0
DE196:  LDRB.W          R0, [R6],#1
DE19A:  MOV             R1, R11; s
DE19C:  STRD.W          R0, R10, [SP,#0x40+var_28]
DE1A0:  MOV             R0, R4; int
DE1A2:  MOVS            R2, #8; int
DE1A4:  STRD.W          R9, R10, [SP,#0x40+var_40]; int
DE1A8:  STRD.W          R8, R10, [SP,#0x40+var_38]; int
DE1AC:  STR.W           R10, [SP,#0x40+var_30]; int
DE1B0:  BL              sub_DCAC4
DE1B4:  SUBS            R5, #1
DE1B6:  BNE             loc_DE196
DE1B8:  B               loc_DE13E
