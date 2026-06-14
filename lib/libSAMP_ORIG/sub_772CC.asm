; =========================================================
; Game Engine Function: sub_772CC
; Address            : 0x772CC - 0x77380
; =========================================================

772CC:  PUSH            {R4-R7,LR}
772CE:  ADD             R7, SP, #0xC
772D0:  PUSH.W          {R8}
772D4:  SUB             SP, SP, #0x40
772D6:  MOV             R6, R0
772D8:  LDR             R0, =(__stack_chk_guard_ptr - 0x772E2)
772DA:  MOV             R8, R3
772DC:  MOV             R5, R2
772DE:  ADD             R0, PC; __stack_chk_guard_ptr
772E0:  LDR             R0, [R0]; __stack_chk_guard
772E2:  LDR             R0, [R0]
772E4:  STR             R0, [SP,#0x50+var_14]
772E6:  ADD             R0, SP, #0x50+var_2C
772E8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
772EC:  ADD             R0, SP, #0x50+var_38
772EE:  MOV             R1, R5
772F0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
772F4:  MOVS            R0, #0
772F6:  STRH.W          R0, [SP,#0x50+var_44]
772FA:  ADD             R5, SP, #0x50+var_20
772FC:  ADD             R0, SP, #0x50+var_44
772FE:  ADD             R2, SP, #0x50+var_2C
77300:  ADD             R3, SP, #0x50+var_38
77302:  STR             R0, [SP,#0x50+var_50]
77304:  MOV             R0, R5
77306:  MOV             R1, R6
77308:  BL              sub_773B8
7730C:  LDRB.W          R0, [SP,#0x50+var_44]
77310:  LSLS            R0, R0, #0x1F
77312:  ITT NE
77314:  LDRNE           R0, [SP,#0x50+var_3C]; void *
77316:  BLXNE           j__ZdlPv; operator delete(void *)
7731A:  LDRB.W          R0, [SP,#0x50+var_38]
7731E:  LSLS            R0, R0, #0x1F
77320:  ITT NE
77322:  LDRNE           R0, [SP,#0x50+var_30]; void *
77324:  BLXNE           j__ZdlPv; operator delete(void *)
77328:  LDRB.W          R0, [SP,#0x50+var_2C]
7732C:  LSLS            R0, R0, #0x1F
7732E:  ITT NE
77330:  LDRNE           R0, [SP,#0x50+var_24]; void *
77332:  BLXNE           j__ZdlPv; operator delete(void *)
77336:  LDRB.W          R0, [SP,#0x50+var_20]
7733A:  ADD             R1, SP, #0x50+endptr; endptr
7733C:  LDR             R6, [SP,#0x50+var_18]
7733E:  MOVS            R2, #0; base
77340:  LSLS            R0, R0, #0x1F
77342:  IT EQ
77344:  ADDEQ           R6, R5, #1
77346:  MOV             R0, R6; nptr
77348:  BLX             strtol
7734C:  MOV             R5, R0
7734E:  LDRB.W          R0, [SP,#0x50+var_20]
77352:  LDR             R4, [SP,#0x50+endptr]
77354:  LSLS            R0, R0, #0x1F
77356:  ITT NE
77358:  LDRNE           R0, [SP,#0x50+var_18]; void *
7735A:  BLXNE           j__ZdlPv; operator delete(void *)
7735E:  CMP             R4, R6
77360:  IT HI
77362:  MOVHI           R8, R5
77364:  LDR             R0, [SP,#0x50+var_14]
77366:  LDR             R1, =(__stack_chk_guard_ptr - 0x7736C)
77368:  ADD             R1, PC; __stack_chk_guard_ptr
7736A:  LDR             R1, [R1]; __stack_chk_guard
7736C:  LDR             R1, [R1]
7736E:  CMP             R1, R0
77370:  ITTTT EQ
77372:  MOVEQ           R0, R8
77374:  ADDEQ           SP, SP, #0x40 ; '@'
77376:  POPEQ.W         {R8}
7737A:  POPEQ           {R4-R7,PC}
7737C:  BLX             __stack_chk_fail
