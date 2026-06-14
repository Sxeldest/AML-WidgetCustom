; =========================================================
; Game Engine Function: sub_F7290
; Address            : 0xF7290 - 0xF7440
; =========================================================

F7290:  PUSH            {R4-R7,LR}
F7292:  ADD             R7, SP, #0xC
F7294:  PUSH.W          {R8-R11}
F7298:  SUB             SP, SP, #0x6C
F729A:  LDR             R1, =(dword_2402C0 - 0xF72AC)
F729C:  ADD             R6, SP, #0x88+var_54
F729E:  LDR             R3, =(unk_92D14 - 0xF72AE)
F72A0:  ADD             R5, SP, #0x88+var_3C
F72A2:  STR             R0, [SP,#0x88+var_20]
F72A4:  ADD             R2, SP, #0x88+var_20
F72A6:  ADD             R0, SP, #0x88+var_48
F72A8:  ADD             R1, PC; dword_2402C0
F72AA:  ADD             R3, PC; unk_92D14
F72AC:  STRD.W          R0, R6, [SP,#0x88+var_88]
F72B0:  MOV             R0, R5
F72B2:  STR             R2, [SP,#0x88+var_48]
F72B4:  BL              sub_F7976
F72B8:  LDR             R0, [SP,#0x88+var_3C]
F72BA:  LDRD.W          R4, R0, [R0,#0x14]
F72BE:  CMP             R4, R0
F72C0:  STR             R0, [SP,#0x88+var_74]
F72C2:  BEQ.W           loc_F7438
F72C6:  LDR             R0, =(dword_2402B4 - 0xF72D0)
F72C8:  ADD.W           R6, R5, #0xC
F72CC:  ADD             R0, PC; dword_2402B4
F72CE:  STR             R0, [SP,#0x88+var_78]
F72D0:  LDR             R0, =(unk_92D14 - 0xF72D6)
F72D2:  ADD             R0, PC; unk_92D14
F72D4:  STRD.W          R6, R0, [SP,#0x88+var_80]
F72D8:  ADD             R0, SP, #0x88+var_3C
F72DA:  MOV             R1, R4
F72DC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F72E0:  ADD.W           R1, R4, #0xC
F72E4:  MOV             R0, R6
F72E6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F72EA:  LDR             R0, [R4,#0x18]
F72EC:  STR             R4, [SP,#0x88+var_70]
F72EE:  STR             R0, [SP,#0x88+var_24]
F72F0:  STR             R6, [SP,#0x88+var_54]
F72F2:  ADD             R0, SP, #0x88+var_54
F72F4:  STR             R0, [SP,#0x88+var_88]
F72F6:  ADD             R0, SP, #0x88+var_60
F72F8:  LDR             R1, [SP,#0x88+var_78]
F72FA:  LDR             R3, [SP,#0x88+var_7C]
F72FC:  MOV             R2, R6
F72FE:  STR             R0, [SP,#0x88+var_84]
F7300:  ADD             R0, SP, #0x88+var_48
F7302:  BL              sub_F7BFA
F7306:  LDR             R0, [SP,#0x88+var_48]
F7308:  LDR.W           R9, [R0,#0x1C]
F730C:  CMP.W           R9, #0
F7310:  BEQ             loc_F740E
F7312:  MOVS            R0, #0
F7314:  STR             R0, [SP,#0x88+var_40]
F7316:  STRD.W          R0, R0, [SP,#0x88+var_48]
F731A:  BL              sub_F61A4
F731E:  LDR             R1, [SP,#0x88+var_20]
F7320:  ADD             R2, SP, #0x88+var_48
F7322:  BL              sub_15EAE0
F7326:  LDRD.W          R4, R0, [SP,#0x88+var_48]
F732A:  CMP             R4, R0
F732C:  STR             R0, [SP,#0x88+var_6C]
F732E:  BEQ             loc_F7404
F7330:  LDR             R0, =(off_23494C - 0xF7340)
F7332:  MOVW            R3, #:lower16:(aConfigParseErr_0+9); "rse error: error reallocating config en"...
F7336:  LDR             R1, =(sub_F650E+1 - 0xF7342)
F7338:  MOVT            R3, #:upper16:(aConfigParseErr_0+9); "rse error: error reallocating config en"...
F733C:  ADD             R0, PC; off_23494C
F733E:  ADD             R1, PC; sub_F650E
F7340:  LDR             R2, [R0]; dword_23DF24
F7342:  MOVS            R0, #0
F7344:  STR             R0, [SP,#0x88+var_4C]
F7346:  STRD.W          R0, R0, [SP,#0x88+var_54]
F734A:  LDR             R0, [R4]
F734C:  STR             R2, [SP,#0x88+var_64]
F734E:  LDR             R2, [R2]
F7350:  ADD             R3, R2
F7352:  ADD             R2, SP, #0x88+var_54
F7354:  BLX             R3
F7356:  STR             R4, [SP,#0x88+var_68]
F7358:  LDRD.W          R8, R4, [SP,#0x88+var_54]
F735C:  CMP             R8, R4
F735E:  BEQ             loc_F73E8
F7360:  LDR.W           R0, [R8]
F7364:  MOVS            R2, #0
F7366:  LDR             R1, =(sub_F64E6+1 - 0xF7374)
F7368:  STRD.W          R2, R2, [SP,#0x88+var_5C]
F736C:  LDR.W           R10, [R0,#0x18]
F7370:  ADD             R1, PC; sub_F64E6
F7372:  LDR             R0, [SP,#0x88+var_64]
F7374:  STR             R2, [SP,#0x88+var_60]
F7376:  MOV             R2, #0x215FB1
F737E:  LDR             R0, [R0]
F7380:  ADDS            R3, R0, R2
F7382:  ADD             R2, SP, #0x88+var_60
F7384:  MOV             R0, R10
F7386:  BLX             R3
F7388:  LDRD.W          R6, R11, [SP,#0x88+var_60]
F738C:  CMP             R6, R11
F738E:  BEQ             loc_F73D2
F7390:  LDR             R0, [R6]
F7392:  LDR             R0, [R0]
F7394:  CBZ             R0, loc_F73CA
F7396:  LDRB.W          R2, [SP,#0x88+var_3C]
F739A:  LDR             R1, [SP,#0x88+var_34]
F739C:  LSLS            R2, R2, #0x1F
F739E:  IT EQ
F73A0:  ADDEQ           R1, R5, #1
F73A2:  ADDS            R0, #0x10
F73A4:  BL              sub_F6920
F73A8:  CBZ             R0, loc_F73CA
F73AA:  BL              sub_F61A4
F73AE:  LDR             R1, [SP,#0x88+var_20]
F73B0:  LDR             R2, [R6]
F73B2:  MOV             R3, R9
F73B4:  BL              sub_15E8B8
F73B8:  BL              sub_F61A4
F73BC:  LDRD.W          R3, R1, [SP,#0x88+var_24]
F73C0:  LDR             R2, [R6]
F73C2:  STR             R3, [SP,#0x88+var_88]
F73C4:  MOV             R3, R10
F73C6:  BL              sub_15E87C
F73CA:  ADDS            R6, #4
F73CC:  CMP             R6, R11
F73CE:  BNE             loc_F7390
F73D0:  LDR             R6, [SP,#0x88+var_60]
F73D2:  CBZ             R6, loc_F73DC
F73D4:  MOV             R0, R6; void *
F73D6:  STR             R6, [SP,#0x88+var_5C]
F73D8:  BLX             j__ZdlPv; operator delete(void *)
F73DC:  ADD.W           R8, R8, #4
F73E0:  CMP             R8, R4
F73E2:  BNE             loc_F7360
F73E4:  LDR.W           R8, [SP,#0x88+var_54]
F73E8:  CMP.W           R8, #0
F73EC:  ITTT NE
F73EE:  STRNE.W         R8, [SP,#0x88+var_50]
F73F2:  MOVNE           R0, R8; void *
F73F4:  BLXNE           j__ZdlPv; operator delete(void *)
F73F8:  LDR             R4, [SP,#0x88+var_68]
F73FA:  LDR             R0, [SP,#0x88+var_6C]
F73FC:  ADDS            R4, #4
F73FE:  CMP             R4, R0
F7400:  BNE             loc_F7330
F7402:  LDR             R4, [SP,#0x88+var_48]
F7404:  CBZ             R4, loc_F740E
F7406:  MOV             R0, R4; void *
F7408:  STR             R4, [SP,#0x88+var_44]
F740A:  BLX             j__ZdlPv; operator delete(void *)
F740E:  LDRB.W          R0, [SP,#0x88+var_30]
F7412:  LSLS            R0, R0, #0x1F
F7414:  ITT NE
F7416:  LDRNE           R0, [SP,#0x88+var_28]; void *
F7418:  BLXNE           j__ZdlPv; operator delete(void *)
F741C:  LDRB.W          R0, [SP,#0x88+var_3C]
F7420:  LDR             R4, [SP,#0x88+var_70]
F7422:  LDR             R6, [SP,#0x88+var_80]
F7424:  LSLS            R0, R0, #0x1F
F7426:  ITT NE
F7428:  LDRNE           R0, [SP,#0x88+var_34]; void *
F742A:  BLXNE           j__ZdlPv; operator delete(void *)
F742E:  LDR             R0, [SP,#0x88+var_74]
F7430:  ADDS            R4, #0x1C
F7432:  CMP             R4, R0
F7434:  BNE.W           loc_F72D8
F7438:  ADD             SP, SP, #0x6C ; 'l'
F743A:  POP.W           {R8-R11}
F743E:  POP             {R4-R7,PC}
