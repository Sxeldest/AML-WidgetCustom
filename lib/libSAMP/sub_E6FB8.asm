; =========================================================
; Game Engine Function: sub_E6FB8
; Address            : 0xE6FB8 - 0xE71C0
; =========================================================

E6FB8:  PUSH            {R4-R7,LR}
E6FBA:  ADD             R7, SP, #0xC
E6FBC:  PUSH.W          {R8}
E6FC0:  SUB             SP, SP, #8
E6FC2:  MOV             R4, R0
E6FC4:  BL              sub_E7374
E6FC8:  LDR             R0, [R4,#0xC]
E6FCA:  SUB.W           R1, R0, #0x31 ; '1'
E6FCE:  CMP             R1, #9
E6FD0:  BCS             loc_E7072
E6FD2:  MOVS            R6, #5
E6FD4:  ADD.W           R5, R4, #0x2C ; ','
E6FD8:  UXTB            R1, R0
E6FDA:  MOV             R0, R5
E6FDC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E6FE0:  MOV             R0, R4
E6FE2:  BL              sub_E71D0
E6FE6:  SUB.W           R1, R0, #0x30 ; '0'
E6FEA:  CMP             R1, #0xA
E6FEC:  BCS             loc_E6FF2
E6FEE:  LDRB            R1, [R4,#0xC]
E6FF0:  B               loc_E6FDA
E6FF2:  CMP             R0, #0x2E ; '.'
E6FF4:  BEQ             loc_E70EE
E6FF6:  CMP             R0, #0x45 ; 'E'
E6FF8:  IT NE
E6FFA:  CMPNE           R0, #0x65 ; 'e'
E6FFC:  BNE.W           loc_E712C
E7000:  LDRB            R1, [R4,#0xC]
E7002:  MOV             R0, R5
E7004:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E7008:  MOV             R0, R4
E700A:  BL              sub_E71D0
E700E:  SUB.W           R1, R0, #0x30 ; '0'
E7012:  CMP             R1, #0xA
E7014:  BCS             loc_E709A
E7016:  ADD.W           R5, R4, #0x2C ; ','
E701A:  LDRB            R1, [R4,#0xC]
E701C:  MOV             R0, R5
E701E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E7022:  MOV             R0, R4
E7024:  BL              sub_E71D0
E7028:  SUBS            R0, #0x30 ; '0'
E702A:  CMP             R0, #9
E702C:  BHI             loc_E7046
E702E:  ADD.W           R5, R4, #0x2C ; ','
E7032:  LDRB            R1, [R4,#0xC]
E7034:  MOV             R0, R5
E7036:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E703A:  MOV             R0, R4
E703C:  BL              sub_E71D0
E7040:  SUBS            R0, #0x30 ; '0'
E7042:  CMP             R0, #0xA
E7044:  BCC             loc_E7032
E7046:  MOV             R0, R4
E7048:  BL              sub_E7238
E704C:  MOVS            R5, #0
E704E:  STR             R5, [SP,#0x18+endptr]
E7050:  BLX             __errno
E7054:  STR             R5, [R0]
E7056:  LDRB.W          R1, [R4,#0x2C]
E705A:  LDR             R0, [R4,#0x34]
E705C:  LSLS            R1, R1, #0x1F
E705E:  IT EQ
E7060:  ADDEQ.W         R0, R4, #0x2D ; '-'; nptr
E7064:  ADD             R1, SP, #0x18+endptr; endptr
E7066:  BLX             strtod
E706A:  STRD.W          R0, R1, [R4,#0x50]
E706E:  MOVS            R0, #7
E7070:  B               loc_E7178
E7072:  CMP             R0, #0x30 ; '0'
E7074:  BEQ             loc_E70C0
E7076:  CMP             R0, #0x2D ; '-'
E7078:  BNE             loc_E7084
E707A:  ADD.W           R0, R4, #0x2C ; ','
E707E:  MOVS            R1, #0x2D ; '-'
E7080:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E7084:  MOV             R0, R4
E7086:  BL              sub_E71D0
E708A:  SUB.W           R1, R0, #0x31 ; '1'
E708E:  CMP             R1, #9
E7090:  BCS.W           loc_E71A8
E7094:  LDR             R0, [R4,#0xC]
E7096:  MOVS            R6, #6
E7098:  B               loc_E6FD4
E709A:  CMP             R0, #0x2D ; '-'
E709C:  IT NE
E709E:  CMPNE           R0, #0x2B ; '+'
E70A0:  BNE             loc_E70E0
E70A2:  ADD.W           R5, R4, #0x2C ; ','
E70A6:  LDRB            R1, [R4,#0xC]
E70A8:  MOV             R0, R5
E70AA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E70AE:  MOV             R0, R4
E70B0:  BL              sub_E71D0
E70B4:  SUBS            R0, #0x30 ; '0'
E70B6:  CMP             R0, #0xA
E70B8:  BCC             loc_E701A
E70BA:  LDR             R0, =(aInvalidNumberE - 0xE70C0); "invalid number; expected digit after ex"... ...
E70BC:  ADD             R0, PC; "invalid number; expected digit after ex"...
E70BE:  B               loc_E7174
E70C0:  ADD.W           R0, R4, #0x2C ; ','
E70C4:  MOVS            R1, #0x30 ; '0'
E70C6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E70CA:  MOVS            R6, #5
E70CC:  MOV             R0, R4
E70CE:  BL              sub_E71D0
E70D2:  CMP             R0, #0x65 ; 'e'
E70D4:  IT NE
E70D6:  CMPNE           R0, #0x45 ; 'E'
E70D8:  BNE             loc_E70E6
E70DA:  ADD.W           R5, R4, #0x2C ; ','
E70DE:  B               loc_E7000
E70E0:  LDR             R0, =(aInvalidNumberE_0 - 0xE70E6); "invalid number; expected '+', '-', or d"... ...
E70E2:  ADD             R0, PC; "invalid number; expected '+', '-', or d"...
E70E4:  B               loc_E7174
E70E6:  CMP             R0, #0x2E ; '.'
E70E8:  BNE             loc_E712C
E70EA:  ADD.W           R5, R4, #0x2C ; ','
E70EE:  LDRB.W          R1, [R4,#0x58]
E70F2:  MOV             R0, R5
E70F4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E70F8:  MOV             R0, R4
E70FA:  BL              sub_E71D0
E70FE:  SUBS            R0, #0x30 ; '0'
E7100:  CMP             R0, #9
E7102:  BHI             loc_E7170
E7104:  ADD.W           R5, R4, #0x2C ; ','
E7108:  LDRB            R1, [R4,#0xC]
E710A:  MOV             R0, R5
E710C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E7110:  MOV             R0, R4
E7112:  BL              sub_E71D0
E7116:  SUB.W           R1, R0, #0x30 ; '0'
E711A:  CMP             R1, #0xA
E711C:  BCC             loc_E7108
E711E:  CMP             R0, #0x65 ; 'e'
E7120:  BEQ.W           loc_E7000
E7124:  CMP             R0, #0x45 ; 'E'
E7126:  BEQ.W           loc_E7000
E712A:  B               loc_E7046
E712C:  MOV             R0, R4
E712E:  BL              sub_E7238
E7132:  MOVS            R5, #0
E7134:  STR             R5, [SP,#0x18+endptr]
E7136:  BLX             __errno
E713A:  MOV             R8, R0
E713C:  CMP             R6, #6
E713E:  STR             R5, [R0]
E7140:  BEQ             loc_E7180
E7142:  CMP             R6, #5
E7144:  BNE.W           loc_E7056
E7148:  LDRB.W          R1, [R4,#0x2C]
E714C:  MOVS            R2, #0xA; base
E714E:  LDR             R0, [R4,#0x34]
E7150:  LSLS            R1, R1, #0x1F
E7152:  IT EQ
E7154:  ADDEQ.W         R0, R4, #0x2D ; '-'; nptr
E7158:  ADD             R1, SP, #0x18+endptr; endptr
E715A:  BLX             strtoull
E715E:  LDR.W           R2, [R8]
E7162:  CMP             R2, #0
E7164:  BNE.W           loc_E7056
E7168:  STRD.W          R0, R1, [R4,#0x48]
E716C:  MOVS            R0, #5
E716E:  B               loc_E7178
E7170:  LDR             R0, =(aInvalidNumberE_1 - 0xE7176); "invalid number; expected digit after '."... ...
E7172:  ADD             R0, PC; "invalid number; expected digit after '."...
E7174:  STR             R0, [R4,#0x38]
E7176:  MOVS            R0, #0xE
E7178:  ADD             SP, SP, #8
E717A:  POP.W           {R8}
E717E:  POP             {R4-R7,PC}
E7180:  LDRB.W          R1, [R4,#0x2C]
E7184:  MOVS            R2, #0xA; base
E7186:  LDR             R0, [R4,#0x34]
E7188:  LSLS            R1, R1, #0x1F
E718A:  IT EQ
E718C:  ADDEQ.W         R0, R4, #0x2D ; '-'; nptr
E7190:  ADD             R1, SP, #0x18+endptr; endptr
E7192:  BLX             strtoll
E7196:  LDR.W           R2, [R8]
E719A:  CMP             R2, #0
E719C:  BNE.W           loc_E7056
E71A0:  STRD.W          R0, R1, [R4,#0x40]
E71A4:  MOVS            R0, #6
E71A6:  B               loc_E7178
E71A8:  CMP             R0, #0x30 ; '0'
E71AA:  BNE             loc_E71BA
E71AC:  LDRB            R1, [R4,#0xC]
E71AE:  ADD.W           R0, R4, #0x2C ; ','
E71B2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E71B6:  MOVS            R6, #6
E71B8:  B               loc_E70CC
E71BA:  LDR             R0, =(aInvalidNumberE_2 - 0xE71C0); "invalid number; expected digit after '-"... ...
E71BC:  ADD             R0, PC; "invalid number; expected digit after '-"...
E71BE:  B               loc_E7174
