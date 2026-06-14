; =========================================================
; Game Engine Function: sub_B0130
; Address            : 0xB0130 - 0xB02CA
; =========================================================

B0130:  PUSH            {R4-R7,LR}
B0132:  ADD             R7, SP, #0xC
B0134:  PUSH.W          {R8-R11}
B0138:  SUB             SP, SP, #0x24
B013A:  MOV             R9, R0
B013C:  LDR             R0, =(__stack_chk_guard_ptr - 0xB0144)
B013E:  MOV             R11, R1
B0140:  ADD             R0, PC; __stack_chk_guard_ptr
B0142:  LDR             R0, [R0]; __stack_chk_guard
B0144:  LDR             R0, [R0]
B0146:  STR             R0, [SP,#0x40+var_20]
B0148:  LDRB            R0, [R1]
B014A:  LDR             R1, [R1,#4]
B014C:  LSLS            R2, R0, #0x1F
B014E:  IT EQ
B0150:  LSREQ           R1, R0, #1
B0152:  MOVS            R0, #0
B0154:  CBZ             R1, loc_B016C
B0156:  STR             R0, [SP,#0x40+var_24]
B0158:  STRD.W          R0, R0, [SP,#0x40+var_2C]
B015C:  ADD             R0, SP, #0x40+var_38
B015E:  BL              sub_AFE00
B0162:  LDRD.W          R4, R6, [SP,#0x40+var_38]
B0166:  CMP             R4, R6
B0168:  BNE             loc_B0184
B016A:  B               loc_B0228
B016C:  STRD.W          R0, R0, [R9]
B0170:  STR.W           R0, [R9,#8]
B0174:  B               loc_B02B0
B0176:  ADD             R0, SP, #0x40+var_2C
B0178:  MOV             R1, R4
B017A:  BL              sub_B07C0
B017E:  ADDS            R4, #0x48 ; 'H'
B0180:  CMP             R4, R6
B0182:  BEQ             loc_B0226
B0184:  LDRD.W          R0, R1, [R4]
B0188:  ORRS            R0, R1
B018A:  BEQ             loc_B017E
B018C:  LDRD.W          R0, R1, [R4,#8]
B0190:  ORRS            R0, R1
B0192:  ITT NE
B0194:  LDRNE           R0, [R4,#0x10]
B0196:  CMPNE           R0, #0
B0198:  BEQ             loc_B017E
B019A:  MOV             R5, R4
B019C:  LDRB.W          R1, [R5,#0x38]!
B01A0:  LDR             R0, [R5,#4]
B01A2:  LSLS            R2, R1, #0x1F
B01A4:  IT EQ
B01A6:  LSREQ           R0, R1, #1
B01A8:  CMP             R0, #0
B01AA:  BEQ             loc_B017E
B01AC:  LDRB.W          R3, [R11]
B01B0:  LDR.W           R2, [R11,#4]
B01B4:  ANDS.W          R1, R3, #1
B01B8:  IT EQ
B01BA:  LSREQ           R2, R3, #1
B01BC:  CMP             R0, R2
B01BE:  BCC             loc_B017E
B01C0:  LDR.W           R3, [R11,#8]
B01C4:  CMP             R1, #0
B01C6:  SUB.W           R1, R0, R2
B01CA:  MOV             R0, R5
B01CC:  STR             R2, [SP,#0x40+var_40]
B01CE:  IT EQ
B01D0:  ADDEQ.W         R3, R11, #1
B01D4:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
B01D8:  CMP             R0, #0
B01DA:  BNE             loc_B017E
B01DC:  LDRD.W          R8, R0, [SP,#0x40+var_28]
B01E0:  CMP             R8, R0
B01E2:  BEQ             loc_B0176
B01E4:  MOV             R0, R4
B01E6:  ADD.W           R10, R8, #0x28 ; '('
B01EA:  VLD1.64         {D16-D17}, [R0]!
B01EE:  VLD1.64         {D18-D19}, [R0]!
B01F2:  VLDR            D20, [R0]
B01F6:  MOV             R0, R8
B01F8:  VST1.64         {D16-D17}, [R0]!
B01FC:  VST1.64         {D18-D19}, [R0]!
B0200:  VSTR            D20, [R0]
B0204:  ADD.W           R1, R4, #0x28 ; '('
B0208:  MOV             R0, R10
B020A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
B020E:  LDR             R0, [R4,#0x34]
B0210:  STR.W           R0, [R8,#0x34]
B0214:  ADD.W           R0, R8, #0x38 ; '8'
B0218:  MOV             R1, R5
B021A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
B021E:  ADD.W           R0, R8, #0x48 ; 'H'
B0222:  STR             R0, [SP,#0x40+var_28]
B0224:  B               loc_B017E
B0226:  LDR             R4, [SP,#0x40+var_38]
B0228:  ADD             R2, SP, #0x40+var_2C
B022A:  LDM             R2, {R0-R2}
B022C:  STM.W           R9, {R0-R2}
B0230:  MOV.W           R0, #0
B0234:  STR             R0, [SP,#0x40+var_24]
B0236:  STRD.W          R0, R0, [SP,#0x40+var_2C]
B023A:  CBZ             R4, loc_B02B0
B023C:  LDR             R5, [SP,#0x40+var_34]
B023E:  CMP             R5, R4
B0240:  BEQ             loc_B026C
B0242:  LDRB.W          R0, [R5,#-0x10]
B0246:  LSLS            R0, R0, #0x1F
B0248:  ITT NE
B024A:  LDRNE.W         R0, [R5,#-8]; void *
B024E:  BLXNE           j__ZdlPv; operator delete(void *)
B0252:  LDRB.W          R0, [R5,#-0x20]
B0256:  LSLS            R0, R0, #0x1F
B0258:  ITT NE
B025A:  LDRNE.W         R0, [R5,#-0x18]; void *
B025E:  BLXNE           j__ZdlPv; operator delete(void *)
B0262:  SUBS            R5, #0x48 ; 'H'
B0264:  CMP             R5, R4
B0266:  BNE             loc_B0242
B0268:  LDR             R0, [SP,#0x40+var_38]
B026A:  B               loc_B026E
B026C:  MOV             R0, R4; void *
B026E:  STR             R4, [SP,#0x40+var_34]
B0270:  BLX             j__ZdlPv; operator delete(void *)
B0274:  LDR             R4, [SP,#0x40+var_2C]
B0276:  CBZ             R4, loc_B02B0
B0278:  LDR             R5, [SP,#0x40+var_28]
B027A:  CMP             R5, R4
B027C:  BEQ             loc_B02A8
B027E:  LDRB.W          R0, [R5,#-0x10]
B0282:  LSLS            R0, R0, #0x1F
B0284:  ITT NE
B0286:  LDRNE.W         R0, [R5,#-8]; void *
B028A:  BLXNE           j__ZdlPv; operator delete(void *)
B028E:  LDRB.W          R0, [R5,#-0x20]
B0292:  LSLS            R0, R0, #0x1F
B0294:  ITT NE
B0296:  LDRNE.W         R0, [R5,#-0x18]; void *
B029A:  BLXNE           j__ZdlPv; operator delete(void *)
B029E:  SUBS            R5, #0x48 ; 'H'
B02A0:  CMP             R5, R4
B02A2:  BNE             loc_B027E
B02A4:  LDR             R0, [SP,#0x40+var_2C]
B02A6:  B               loc_B02AA
B02A8:  MOV             R0, R4; void *
B02AA:  STR             R4, [SP,#0x40+var_28]
B02AC:  BLX             j__ZdlPv; operator delete(void *)
B02B0:  LDR             R0, [SP,#0x40+var_20]
B02B2:  LDR             R1, =(__stack_chk_guard_ptr - 0xB02B8)
B02B4:  ADD             R1, PC; __stack_chk_guard_ptr
B02B6:  LDR             R1, [R1]; __stack_chk_guard
B02B8:  LDR             R1, [R1]
B02BA:  CMP             R1, R0
B02BC:  ITTT EQ
B02BE:  ADDEQ           SP, SP, #0x24 ; '$'
B02C0:  POPEQ.W         {R8-R11}
B02C4:  POPEQ           {R4-R7,PC}
B02C6:  BLX             __stack_chk_fail
