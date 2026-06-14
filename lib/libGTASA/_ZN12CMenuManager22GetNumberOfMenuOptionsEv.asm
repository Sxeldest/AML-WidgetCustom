; =========================================================
; Game Engine Function: _ZN12CMenuManager22GetNumberOfMenuOptionsEv
; Address            : 0x432134 - 0x432324
; =========================================================

432134:  LDRB.W          R1, [R0,#0x121]
432138:  MOVS            R0, #2
43213A:  CMP             R1, #2
43213C:  IT NE
43213E:  CMPNE           R1, #5
432140:  BEQ.W           loc_432320
432144:  LDR             R0, =(dword_6AB464 - 0x43214C)
432146:  SXTB            R1, R1
432148:  ADD             R0, PC; dword_6AB464
43214A:  LDR             R0, [R0]
43214C:  CMP             R0, R1
43214E:  BNE             loc_43215A
432150:  LDR             R0, =(byte_990BFB - 0x432156)
432152:  ADD             R0, PC; byte_990BFB
432154:  LDRB            R0, [R0]
432156:  UXTB            R0, R0
432158:  BX              LR
43215A:  LDR             R0, =(aScreens_ptr - 0x432164)
43215C:  MOVS            R3, #0xE2
43215E:  LDR             R2, =(byte_990BFB - 0x432166)
432160:  ADD             R0, PC; aScreens_ptr
432162:  ADD             R2, PC; byte_990BFB
432164:  LDR             R0, [R0]; "FEP_STA" ...
432166:  SMLABB.W        R3, R1, R3, R0
43216A:  MOVS            R0, #0
43216C:  STRB            R0, [R2]
43216E:  LDRB            R2, [R3,#0xA]
432170:  CMP             R2, #0
432172:  BEQ.W           loc_43231A
432176:  CMP             R2, #1
432178:  IT NE
43217A:  CMPNE           R2, #0x14
43217C:  BEQ             loc_432186
43217E:  LDR             R2, =(byte_990BFB - 0x432186)
432180:  MOVS            R0, #1
432182:  ADD             R2, PC; byte_990BFB
432184:  STRB            R0, [R2]
432186:  LDR             R3, =(aScreens_ptr - 0x43218E)
432188:  MOVS            R2, #0xE2
43218A:  ADD             R3, PC; aScreens_ptr
43218C:  LDR             R3, [R3]; "FEP_STA" ...
43218E:  SMLABB.W        R3, R1, R2, R3
432192:  LDRB            R3, [R3,#0x1C]
432194:  CMP             R3, #0x14
432196:  IT NE
432198:  CMPNE           R3, #1
43219A:  BEQ             loc_4321AA
43219C:  CMP             R3, #0
43219E:  BEQ.W           loc_43231A
4321A2:  LDR             R3, =(byte_990BFB - 0x4321AA)
4321A4:  ADDS            R0, #1
4321A6:  ADD             R3, PC; byte_990BFB
4321A8:  STRB            R0, [R3]
4321AA:  LDR             R3, =(aScreens_ptr - 0x4321B0)
4321AC:  ADD             R3, PC; aScreens_ptr
4321AE:  LDR             R3, [R3]; "FEP_STA" ...
4321B0:  SMLABB.W        R2, R1, R2, R3
4321B4:  LDRB.W          R2, [R2,#0x2E]
4321B8:  CMP             R2, #0
4321BA:  BEQ.W           loc_43231A
4321BE:  CMP             R2, #1
4321C0:  IT NE
4321C2:  CMPNE           R2, #0x14
4321C4:  BEQ             loc_4321CE
4321C6:  LDR             R2, =(byte_990BFB - 0x4321CE)
4321C8:  ADDS            R0, #1
4321CA:  ADD             R2, PC; byte_990BFB
4321CC:  STRB            R0, [R2]
4321CE:  LDR             R2, =(aScreens_ptr - 0x4321D6)
4321D0:  MOVS            R3, #0xE2
4321D2:  ADD             R2, PC; aScreens_ptr
4321D4:  LDR             R2, [R2]; "FEP_STA" ...
4321D6:  SMLABB.W        R2, R1, R3, R2
4321DA:  LDRB.W          R2, [R2,#0x40]
4321DE:  CMP             R2, #0
4321E0:  BEQ.W           loc_43231A
4321E4:  CMP             R2, #1
4321E6:  IT NE
4321E8:  CMPNE           R2, #0x14
4321EA:  BEQ             loc_4321F4
4321EC:  LDR             R2, =(byte_990BFB - 0x4321F4)
4321EE:  ADDS            R0, #1
4321F0:  ADD             R2, PC; byte_990BFB
4321F2:  STRB            R0, [R2]
4321F4:  LDR             R2, =(aScreens_ptr - 0x4321FC)
4321F6:  MOVS            R3, #0xE2
4321F8:  ADD             R2, PC; aScreens_ptr
4321FA:  LDR             R2, [R2]; "FEP_STA" ...
4321FC:  SMLABB.W        R2, R1, R3, R2
432200:  LDRB.W          R2, [R2,#0x52]
432204:  CMP             R2, #0
432206:  BEQ.W           loc_43231A
43220A:  CMP             R2, #1
43220C:  IT NE
43220E:  CMPNE           R2, #0x14
432210:  BEQ             loc_43221A
432212:  LDR             R2, =(byte_990BFB - 0x43221A)
432214:  ADDS            R0, #1
432216:  ADD             R2, PC; byte_990BFB
432218:  STRB            R0, [R2]
43221A:  LDR             R2, =(aScreens_ptr - 0x432222)
43221C:  MOVS            R3, #0xE2
43221E:  ADD             R2, PC; aScreens_ptr
432220:  LDR             R2, [R2]; "FEP_STA" ...
432222:  SMLABB.W        R2, R1, R3, R2
432226:  LDRB.W          R2, [R2,#0x64]
43222A:  CMP             R2, #0
43222C:  BEQ             loc_43231A
43222E:  CMP             R2, #1
432230:  IT NE
432232:  CMPNE           R2, #0x14
432234:  BEQ             loc_43223E
432236:  LDR             R2, =(byte_990BFB - 0x43223E)
432238:  ADDS            R0, #1
43223A:  ADD             R2, PC; byte_990BFB
43223C:  STRB            R0, [R2]
43223E:  LDR             R2, =(aScreens_ptr - 0x432246)
432240:  MOVS            R3, #0xE2
432242:  ADD             R2, PC; aScreens_ptr
432244:  LDR             R2, [R2]; "FEP_STA" ...
432246:  SMLABB.W        R2, R1, R3, R2
43224A:  LDRB.W          R2, [R2,#0x76]
43224E:  CMP             R2, #0
432250:  BEQ             loc_43231A
432252:  CMP             R2, #1
432254:  IT NE
432256:  CMPNE           R2, #0x14
432258:  BEQ             loc_432262
43225A:  LDR             R2, =(byte_990BFB - 0x432262)
43225C:  ADDS            R0, #1
43225E:  ADD             R2, PC; byte_990BFB
432260:  STRB            R0, [R2]
432262:  LDR             R2, =(aScreens_ptr - 0x43226A)
432264:  MOVS            R3, #0xE2
432266:  ADD             R2, PC; aScreens_ptr
432268:  LDR             R2, [R2]; "FEP_STA" ...
43226A:  SMLABB.W        R2, R1, R3, R2
43226E:  LDRB.W          R2, [R2,#0x88]
432272:  CMP             R2, #0
432274:  BEQ             loc_43231A
432276:  CMP             R2, #1
432278:  IT NE
43227A:  CMPNE           R2, #0x14
43227C:  BEQ             loc_432286
43227E:  LDR             R2, =(byte_990BFB - 0x432286)
432280:  ADDS            R0, #1
432282:  ADD             R2, PC; byte_990BFB
432284:  STRB            R0, [R2]
432286:  LDR             R2, =(aScreens_ptr - 0x43228E)
432288:  MOVS            R3, #0xE2
43228A:  ADD             R2, PC; aScreens_ptr
43228C:  LDR             R2, [R2]; "FEP_STA" ...
43228E:  SMLABB.W        R2, R1, R3, R2
432292:  LDRB.W          R2, [R2,#0x9A]
432296:  CMP             R2, #0
432298:  BEQ             loc_43231A
43229A:  CMP             R2, #1
43229C:  IT NE
43229E:  CMPNE           R2, #0x14
4322A0:  BEQ             loc_4322AA
4322A2:  LDR             R2, =(byte_990BFB - 0x4322AA)
4322A4:  ADDS            R0, #1
4322A6:  ADD             R2, PC; byte_990BFB
4322A8:  STRB            R0, [R2]
4322AA:  LDR             R2, =(aScreens_ptr - 0x4322B2)
4322AC:  MOVS            R3, #0xE2
4322AE:  ADD             R2, PC; aScreens_ptr
4322B0:  LDR             R2, [R2]; "FEP_STA" ...
4322B2:  SMLABB.W        R2, R1, R3, R2
4322B6:  LDRB.W          R2, [R2,#0xAC]
4322BA:  CBZ             R2, loc_43231A
4322BC:  CMP             R2, #1
4322BE:  IT NE
4322C0:  CMPNE           R2, #0x14
4322C2:  BEQ             loc_4322CC
4322C4:  LDR             R2, =(byte_990BFB - 0x4322CC)
4322C6:  ADDS            R0, #1
4322C8:  ADD             R2, PC; byte_990BFB
4322CA:  STRB            R0, [R2]
4322CC:  LDR             R2, =(aScreens_ptr - 0x4322D4)
4322CE:  MOVS            R3, #0xE2
4322D0:  ADD             R2, PC; aScreens_ptr
4322D2:  LDR             R2, [R2]; "FEP_STA" ...
4322D4:  SMLABB.W        R2, R1, R3, R2
4322D8:  LDRB.W          R2, [R2,#0xBE]
4322DC:  CBZ             R2, loc_43231A
4322DE:  CMP             R2, #1
4322E0:  IT NE
4322E2:  CMPNE           R2, #0x14
4322E4:  BEQ             loc_4322EE
4322E6:  LDR             R2, =(byte_990BFB - 0x4322EE)
4322E8:  ADDS            R0, #1
4322EA:  ADD             R2, PC; byte_990BFB
4322EC:  STRB            R0, [R2]
4322EE:  LDR             R2, =(aScreens_ptr - 0x4322F6)
4322F0:  MOVS            R3, #0xE2
4322F2:  ADD             R2, PC; aScreens_ptr
4322F4:  LDR             R2, [R2]; "FEP_STA" ...
4322F6:  SMLABB.W        R2, R1, R3, R2
4322FA:  LDRB.W          R2, [R2,#0xD0]
4322FE:  CMP             R2, #0x14
432300:  BHI             loc_432312
432302:  MOVS            R3, #1
432304:  LSL.W           R2, R3, R2
432308:  MOVS            R3, #0x100003
43230E:  TST             R2, R3
432310:  BNE             loc_43231A
432312:  LDR             R2, =(byte_990BFB - 0x43231A)
432314:  ADDS            R0, #1
432316:  ADD             R2, PC; byte_990BFB
432318:  STRB            R0, [R2]
43231A:  LDR             R2, =(dword_6AB464 - 0x432320)
43231C:  ADD             R2, PC; dword_6AB464
43231E:  STR             R1, [R2]
432320:  UXTB            R0, R0
432322:  BX              LR
