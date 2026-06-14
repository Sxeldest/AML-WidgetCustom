; =========================================================
; Game Engine Function: sub_E6328
; Address            : 0xE6328 - 0xE658A
; =========================================================

E6328:  PUSH            {R4-R7,LR}
E632A:  ADD             R7, SP, #0xC
E632C:  PUSH.W          {R8}
E6330:  SUB             SP, SP, #0x108
E6332:  MOV             R5, R0
E6334:  LDR             R0, [R0,#0x10]
E6336:  MOV             R8, R2
E6338:  MOV             R6, R1
E633A:  CBZ             R0, loc_E6366
E633C:  ADD             R4, SP, #0x118+var_88
E633E:  MOV             R1, R5
E6340:  MOV             R0, R4
E6342:  BL              sub_E67B8
E6346:  LDRB.W          R3, [R5,#0x80]
E634A:  ADD             R0, SP, #0x118+var_70
E634C:  MOV             R1, R8
E634E:  MOV             R2, R4
E6350:  BL              sub_E749C
E6354:  LDR             R0, [SP,#0x118+var_78]
E6356:  CMP             R4, R0
E6358:  BEQ.W           loc_E646E
E635C:  CMP             R0, #0
E635E:  BEQ.W           loc_E6478
E6362:  MOVS            R1, #5
E6364:  B               loc_E6470
E6366:  VMOV.I32        Q8, #0
E636A:  ADD             R1, SP, #0x118+var_70
E636C:  LDRB.W          R0, [R5,#0x80]
E6370:  ADDS            R2, R1, #4
E6372:  MOVS            R3, #0
E6374:  STR.W           R8, [SP,#0x118+var_70]
E6378:  VST1.32         {D16-D17}, [R2]!
E637C:  STRB            R3, [R2]
E637E:  STRB.W          R0, [SP,#0x118+var_5B]
E6382:  MOV             R0, R5
E6384:  BL              sub_E8260
E6388:  CMP             R6, #0
E638A:  BEQ             loc_E6434
E638C:  ADD.W           R4, R5, #0x20 ; ' '
E6390:  MOV             R0, R4
E6392:  BL              sub_E67FC
E6396:  CMP             R0, #0xF
E6398:  STR             R0, [R5,#0x18]
E639A:  BEQ             loc_E6434
E639C:  LDR             R6, [R5,#0x34]
E639E:  ADD             R0, SP, #0x118+var_94
E63A0:  MOV             R1, R4
E63A2:  BL              sub_E7C78
E63A6:  VLDR            D16, [R5,#0x34]
E63AA:  LDR             R0, [R5,#0x3C]
E63AC:  LDR             R1, =(aValue - 0xE63B4); "value" ...
E63AE:  STR             R0, [SP,#0x118+var_B0]
E63B0:  ADD             R1, PC; "value"
E63B2:  VSTR            D16, [SP,#0x118+var_B8]
E63B6:  ADD             R0, SP, #0x118+var_D0; int
E63B8:  BL              sub_DC6DC
E63BC:  ADD             R0, SP, #0x118+var_C4
E63BE:  ADD             R3, SP, #0x118+var_D0
E63C0:  MOV             R1, R5
E63C2:  MOVS            R2, #0xF
E63C4:  BL              sub_E7F28
E63C8:  MOVS            R0, #0
E63CA:  STR             R0, [SP,#0x118+var_D8]
E63CC:  STRB.W          R0, [SP,#0x118+var_E0]
E63D0:  ADD             R0, SP, #0x118+var_E0
E63D2:  STR             R0, [SP,#0x118+var_118]
E63D4:  ADD             R0, SP, #0x118+var_A8
E63D6:  ADD             R2, SP, #0x118+var_B8
E63D8:  ADD             R3, SP, #0x118+var_C4
E63DA:  MOVS            R1, #0x65 ; 'e'
E63DC:  BL              sub_E7CE4
E63E0:  ADD             R5, SP, #0x118+var_A8
E63E2:  ADD             R0, SP, #0x118+var_70
E63E4:  ADD             R2, SP, #0x118+var_94
E63E6:  MOV             R1, R6
E63E8:  MOV             R3, R5
E63EA:  BL              sub_E8960
E63EE:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE63F4); `vtable for'nlohmann::detail::exception ...
E63F0:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E63F2:  ADDS            R0, #8
E63F4:  STR             R0, [SP,#0x118+var_A8]
E63F6:  ADD.W           R0, R5, #8; this
E63FA:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E63FE:  MOV             R0, R5; this
E6400:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
E6404:  ADD             R0, SP, #0x118+var_E0
E6406:  BL              sub_E3F7A
E640A:  LDRB.W          R0, [SP,#0x118+var_C4]
E640E:  LSLS            R0, R0, #0x1F
E6410:  ITT NE
E6412:  LDRNE           R0, [SP,#0x118+var_BC]; void *
E6414:  BLXNE           j__ZdlPv; operator delete(void *)
E6418:  LDRB.W          R0, [SP,#0x118+var_D0]
E641C:  LSLS            R0, R0, #0x1F
E641E:  ITT NE
E6420:  LDRNE           R0, [SP,#0x118+var_C8]; void *
E6422:  BLXNE           j__ZdlPv; operator delete(void *)
E6426:  LDRB.W          R0, [SP,#0x118+var_94]
E642A:  LSLS            R0, R0, #0x1F
E642C:  ITT NE
E642E:  LDRNE           R0, [SP,#0x118+var_8C]; void *
E6430:  BLXNE           j__ZdlPv; operator delete(void *)
E6434:  LDRB.W          R0, [SP,#0x118+var_5C]
E6438:  CBZ             R0, loc_E645E
E643A:  LDR             R0, [SP,#0x118+var_104]
E643C:  MOVS            R6, #0
E643E:  LDRD.W          R2, R3, [R8,#8]
E6442:  LDRB.W          R1, [R8]
E6446:  STRD.W          R6, R0, [R8,#8]
E644A:  MOVS            R0, #9
E644C:  STRB.W          R0, [R8]
E6450:  ADD             R0, SP, #0x118+var_110
E6452:  STRD.W          R2, R3, [SP,#0x118+var_108]
E6456:  STRB.W          R1, [SP,#0x118+var_110]
E645A:  BL              sub_E3F7A
E645E:  LDR             R0, [SP,#0x118+var_6C]; void *
E6460:  CMP             R0, #0
E6462:  BEQ.W           loc_E6582
E6466:  STR             R0, [SP,#0x118+var_68]
E6468:  BLX             j__ZdlPv; operator delete(void *)
E646C:  B               loc_E6582
E646E:  MOVS            R1, #4
E6470:  LDR             R2, [R0]
E6472:  LDR.W           R1, [R2,R1,LSL#2]
E6476:  BLX             R1
E6478:  ADD             R1, SP, #0x118+var_70
E647A:  MOV             R0, R5
E647C:  BL              sub_E7540
E6480:  CMP             R6, #0
E6482:  BEQ             loc_E652C
E6484:  ADD.W           R4, R5, #0x20 ; ' '
E6488:  MOV             R0, R4
E648A:  BL              sub_E67FC
E648E:  CMP             R0, #0xF
E6490:  STR             R0, [R5,#0x18]
E6492:  BEQ             loc_E652C
E6494:  LDR             R6, [R5,#0x34]
E6496:  ADD             R0, SP, #0x118+var_94
E6498:  MOV             R1, R4
E649A:  BL              sub_E7C78
E649E:  VLDR            D16, [R5,#0x34]
E64A2:  LDR             R0, [R5,#0x3C]
E64A4:  LDR             R1, =(aValue - 0xE64AC); "value" ...
E64A6:  STR             R0, [SP,#0x118+var_B0]
E64A8:  ADD             R1, PC; "value"
E64AA:  VSTR            D16, [SP,#0x118+var_B8]
E64AE:  ADD             R0, SP, #0x118+var_D0; int
E64B0:  BL              sub_DC6DC
E64B4:  ADD             R0, SP, #0x118+var_C4
E64B6:  ADD             R3, SP, #0x118+var_D0
E64B8:  MOV             R1, R5
E64BA:  MOVS            R2, #0xF
E64BC:  BL              sub_E7F28
E64C0:  MOVS            R0, #0
E64C2:  STR             R0, [SP,#0x118+var_D8]
E64C4:  STRB.W          R0, [SP,#0x118+var_E0]
E64C8:  ADD             R0, SP, #0x118+var_E0
E64CA:  STR             R0, [SP,#0x118+var_118]
E64CC:  ADD             R0, SP, #0x118+var_A8
E64CE:  ADD             R2, SP, #0x118+var_B8
E64D0:  ADD             R3, SP, #0x118+var_C4
E64D2:  MOVS            R1, #0x65 ; 'e'
E64D4:  BL              sub_E7CE4
E64D8:  ADD             R5, SP, #0x118+var_A8
E64DA:  ADD             R0, SP, #0x118+var_70
E64DC:  ADD             R2, SP, #0x118+var_94
E64DE:  MOV             R1, R6
E64E0:  MOV             R3, R5
E64E2:  BL              sub_E7C40
E64E6:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE64EC); `vtable for'nlohmann::detail::exception ...
E64E8:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E64EA:  ADDS            R0, #8
E64EC:  STR             R0, [SP,#0x118+var_A8]
E64EE:  ADD.W           R0, R5, #8; this
E64F2:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E64F6:  MOV             R0, R5; this
E64F8:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
E64FC:  ADD             R0, SP, #0x118+var_E0
E64FE:  BL              sub_E3F7A
E6502:  LDRB.W          R0, [SP,#0x118+var_C4]
E6506:  LSLS            R0, R0, #0x1F
E6508:  ITT NE
E650A:  LDRNE           R0, [SP,#0x118+var_BC]; void *
E650C:  BLXNE           j__ZdlPv; operator delete(void *)
E6510:  LDRB.W          R0, [SP,#0x118+var_D0]
E6514:  LSLS            R0, R0, #0x1F
E6516:  ITT NE
E6518:  LDRNE           R0, [SP,#0x118+var_C8]; void *
E651A:  BLXNE           j__ZdlPv; operator delete(void *)
E651E:  LDRB.W          R0, [SP,#0x118+var_94]
E6522:  LSLS            R0, R0, #0x1F
E6524:  ITT NE
E6526:  LDRNE           R0, [SP,#0x118+var_8C]; void *
E6528:  BLXNE           j__ZdlPv; operator delete(void *)
E652C:  LDRB.W          R0, [SP,#0x118+var_44]
E6530:  CBZ             R0, loc_E6554
E6532:  LDR             R0, [SP,#0x118+var_E4]
E6534:  MOVS            R6, #0
E6536:  LDRD.W          R2, R3, [R8,#8]
E653A:  LDRB.W          R1, [R8]
E653E:  STRD.W          R6, R0, [R8,#8]
E6542:  MOVS            R0, #9
E6544:  STRB.W          R0, [R8]
E6548:  ADD             R0, SP, #0x118+var_F0
E654A:  STRD.W          R2, R3, [SP,#0x118+var_E8]
E654E:  STRB.W          R1, [SP,#0x118+var_F0]
E6552:  B               loc_E6578
E6554:  LDRB.W          R0, [R8]
E6558:  CMP             R0, #9
E655A:  BNE             loc_E657C
E655C:  LDR             R0, [SP,#0x118+var_F4]
E655E:  MOVS            R3, #0
E6560:  LDRD.W          R1, R2, [R8,#8]
E6564:  STRB.W          R3, [R8]
E6568:  STRD.W          R3, R0, [R8,#8]
E656C:  MOVS            R0, #9
E656E:  STRB.W          R0, [SP,#0x118+var_100]
E6572:  ADD             R0, SP, #0x118+var_100
E6574:  STRD.W          R1, R2, [SP,#0x118+var_F8]
E6578:  BL              sub_E3F7A
E657C:  ADD             R0, SP, #0x118+var_70
E657E:  BL              sub_E8218
E6582:  ADD             SP, SP, #0x108
E6584:  POP.W           {R8}
E6588:  POP             {R4-R7,PC}
