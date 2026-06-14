; =========================================================
; Game Engine Function: sub_B0300
; Address            : 0xB0300 - 0xB04A2
; =========================================================

B0300:  PUSH            {R4-R7,LR}
B0302:  ADD             R7, SP, #0xC
B0304:  PUSH.W          {R8-R11}
B0308:  SUB             SP, SP, #0x5C
B030A:  MOV             R10, R0
B030C:  LDR             R0, =(__stack_chk_guard_ptr - 0xB0314)
B030E:  CMP             R1, #0
B0310:  ADD             R0, PC; __stack_chk_guard_ptr
B0312:  LDR             R0, [R0]; __stack_chk_guard
B0314:  LDR             R0, [R0]
B0316:  STR             R0, [SP,#0x78+var_20]
B0318:  BEQ.W           loc_B0446
B031C:  ADD.W           R8, SP, #0x78+var_68
B0320:  VMOV.I32        Q8, #0
B0324:  MOV             R11, R1
B0326:  MOVS            R1, #0
B0328:  MOV             R0, R8
B032A:  VST1.64         {D16-D17}, [R0]!
B032E:  VST1.64         {D16-D17}, [R0]!
B0332:  VST1.64         {D16-D17}, [R0]!
B0336:  VST1.64         {D16-D17}, [R0]!
B033A:  STR             R1, [R0]
B033C:  ADD             R0, SP, #0x78+var_74
B033E:  BL              sub_AFE00
B0342:  LDRD.W          R9, R2, [SP,#0x78+var_74]
B0346:  MOV.W           R12, #0
B034A:  CMP             R9, R2
B034C:  BEQ             loc_B03CA
B034E:  MOV             R6, R9
B0350:  B               loc_B0358
B0352:  ADDS            R6, #0x48 ; 'H'
B0354:  CMP             R6, R2
B0356:  BEQ             loc_B03CA
B0358:  LDRD.W          R3, R0, [R6]
B035C:  ORRS.W          R1, R3, R0
B0360:  BEQ             loc_B0352
B0362:  LDRD.W          R5, R1, [R6,#8]
B0366:  ORRS.W          R4, R5, R1
B036A:  ITT NE
B036C:  LDRNE           R4, [R6,#0x10]
B036E:  CMPNE           R4, #0
B0370:  BEQ             loc_B0352
B0372:  SUBS.W          R3, R11, R3
B0376:  SBCS.W          R0, R12, R0
B037A:  BCC             loc_B0352
B037C:  SUBS.W          R0, R5, R11
B0380:  SBCS.W          R0, R1, #0
B0384:  BCC             loc_B0352
B0386:  MOV             R0, R6
B0388:  VLD1.64         {D16-D17}, [R0]!
B038C:  VLD1.64         {D18-D19}, [R0]!
B0390:  VLDR            D20, [R0]
B0394:  MOV             R0, R8
B0396:  VST1.64         {D16-D17}, [R0]!
B039A:  VST1.64         {D18-D19}, [R0]!
B039E:  VSTR            D20, [R0]
B03A2:  ADD.W           R0, R8, #0x28 ; '('
B03A6:  ADD.W           R1, R6, #0x28 ; '('
B03AA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
B03AE:  LDR             R0, [R6,#0x34]
B03B0:  STR             R0, [SP,#0x78+var_34]
B03B2:  ADD.W           R0, R8, #0x38 ; '8'
B03B6:  ADD.W           R1, R6, #0x38 ; '8'
B03BA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
B03BE:  LDR.W           R9, [SP,#0x78+var_74]
B03C2:  MOV.W           R12, #0
B03C6:  LDR             R0, [SP,#0x78+var_34]
B03C8:  B               loc_B03CC
B03CA:  MOVS            R0, #0
B03CC:  VLD1.64         {D16-D17}, [R8]!
B03D0:  CMP.W           R9, #0
B03D4:  VLDR            D20, [SP,#0x78+var_40]
B03D8:  VLDR            D21, [SP,#0x78+var_30]
B03DC:  LDR             R1, [SP,#0x78+var_28]
B03DE:  LDR             R2, [SP,#0x78+var_38]
B03E0:  VLD1.64         {D18-D19}, [R8]!
B03E4:  STRD.W          R2, R0, [R10,#0x30]
B03E8:  STR.W           R1, [R10,#0x40]
B03EC:  VSTR            D20, [R10,#0x28]
B03F0:  VSTR            D21, [R10,#0x38]
B03F4:  VST1.64         {D16-D17}, [R10]!
B03F8:  VLDR            D22, [R8]
B03FC:  VST1.64         {D18-D19}, [R10]!
B0400:  VSTR            D22, [R10]
B0404:  STRD.W          R12, R12, [SP,#0x78+var_40]
B0408:  STR.W           R12, [SP,#0x78+var_38]
B040C:  STR.W           R12, [SP,#0x78+var_28]
B0410:  STRD.W          R12, R12, [SP,#0x78+var_30]
B0414:  BEQ             loc_B047A
B0416:  LDR             R5, [SP,#0x78+var_70]
B0418:  CMP             R5, R9
B041A:  BEQ             loc_B0462
B041C:  LDRB.W          R0, [R5,#-0x10]
B0420:  LSLS            R0, R0, #0x1F
B0422:  ITT NE
B0424:  LDRNE.W         R0, [R5,#-8]; void *
B0428:  BLXNE           j__ZdlPv; operator delete(void *)
B042C:  LDRB.W          R0, [R5,#-0x20]
B0430:  LSLS            R0, R0, #0x1F
B0432:  ITT NE
B0434:  LDRNE.W         R0, [R5,#-0x18]; void *
B0438:  BLXNE           j__ZdlPv; operator delete(void *)
B043C:  SUBS            R5, #0x48 ; 'H'
B043E:  CMP             R5, R9
B0440:  BNE             loc_B041C
B0442:  LDR             R0, [SP,#0x78+var_74]
B0444:  B               loc_B0464
B0446:  VMOV.I32        Q8, #0
B044A:  MOVS            R0, #0
B044C:  VST1.64         {D16-D17}, [R10]!
B0450:  VST1.64         {D16-D17}, [R10]!
B0454:  VST1.64         {D16-D17}, [R10]!
B0458:  VST1.64         {D16-D17}, [R10]!
B045C:  STR.W           R0, [R10]
B0460:  B               loc_B0488
B0462:  MOV             R0, R9; void *
B0464:  STR.W           R9, [SP,#0x78+var_70]
B0468:  BLX             j__ZdlPv; operator delete(void *)
B046C:  LDRB.W          R0, [SP,#0x78+var_30]
B0470:  LSLS            R0, R0, #0x1F
B0472:  ITT NE
B0474:  LDRNE           R0, [SP,#0x78+var_28]; void *
B0476:  BLXNE           j__ZdlPv; operator delete(void *)
B047A:  LDRB.W          R0, [SP,#0x78+var_40]
B047E:  LSLS            R0, R0, #0x1F
B0480:  BEQ             loc_B0488
B0482:  LDR             R0, [SP,#0x78+var_38]; void *
B0484:  BLX             j__ZdlPv; operator delete(void *)
B0488:  LDR             R0, [SP,#0x78+var_20]
B048A:  LDR             R1, =(__stack_chk_guard_ptr - 0xB0490)
B048C:  ADD             R1, PC; __stack_chk_guard_ptr
B048E:  LDR             R1, [R1]; __stack_chk_guard
B0490:  LDR             R1, [R1]
B0492:  CMP             R1, R0
B0494:  ITTT EQ
B0496:  ADDEQ           SP, SP, #0x5C ; '\'
B0498:  POPEQ.W         {R8-R11}
B049C:  POPEQ           {R4-R7,PC}
B049E:  BLX             __stack_chk_fail
