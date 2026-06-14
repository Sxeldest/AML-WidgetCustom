; =========================================================
; Game Engine Function: sub_13A168
; Address            : 0x13A168 - 0x13A4B2
; =========================================================

13A168:  PUSH            {R4-R7,LR}
13A16A:  ADD             R7, SP, #0xC
13A16C:  PUSH.W          {R8-R11}
13A170:  SUB             SP, SP, #0xFC
13A172:  MOV             R9, R0
13A174:  LDRB            R0, [R3]
13A176:  LDR.W           R11, [R7,#arg_8]
13A17A:  MOV             R10, R2
13A17C:  LDRD.W          R8, R4, [R7,#arg_0]
13A180:  MOV             R6, R1
13A182:  LDR             R1, [R3,#4]
13A184:  LSLS            R2, R0, #0x1F
13A186:  STRH.W          R6, [R7,#var_1E]
13A18A:  IT EQ
13A18C:  LSREQ           R1, R0, #1
13A18E:  CBZ             R1, loc_13A1E6
13A190:  LDRB.W          R0, [R8]
13A194:  LDR.W           R1, [R8,#4]
13A198:  LSLS            R2, R0, #0x1F
13A19A:  IT EQ
13A19C:  LSREQ           R1, R0, #1
13A19E:  CBZ             R1, loc_13A1E6
13A1A0:  LDR             R0, =(off_2349A8 - 0x13A1A6)
13A1A2:  ADD             R0, PC; off_2349A8
13A1A4:  LDR             R5, [R0]; dword_381BF4
13A1A6:  LDR             R0, [R5]
13A1A8:  LDRB.W          R1, [R0,#0x84]
13A1AC:  CBNZ            R1, loc_13A1BE
13A1AE:  MOVS            R1, #0
13A1B0:  STRD.W          R4, R3, [SP,#0x118+var_F4]
13A1B4:  BL              sub_17C1DA
13A1B8:  LDRD.W          R4, R3, [SP,#0x118+var_F4]
13A1BC:  CBZ             R0, loc_13A200
13A1BE:  ADDS.W          R0, R10, #1
13A1C2:  BEQ.W           loc_13A4AA
13A1C6:  STRH.W          R6, [R9,#0x74]
13A1CA:  MOV             R1, R6
13A1CC:  STRD.W          R8, R4, [R7,#arg_0]
13A1D0:  MOV             R2, R10
13A1D2:  STR.W           R11, [R7,#arg_8]
13A1D6:  LDR             R0, [R5]
13A1D8:  ADD             SP, SP, #0xFC
13A1DA:  POP.W           {R8-R11}
13A1DE:  POP.W           {R4-R7,LR}
13A1E2:  B.W             sub_17C4D0
13A1E6:  LDR             R1, =(aAxl - 0x13A1F2); "AXL" ...
13A1E8:  MOVS            R0, #4
13A1EA:  LDR             R2, =(aDialogDIsEmpty - 0x13A1F4); "dialog %d is empty" ...
13A1EC:  MOV             R3, R6
13A1EE:  ADD             R1, PC; "AXL"
13A1F0:  ADD             R2, PC; "dialog %d is empty"
13A1F2:  ADD             SP, SP, #0xFC
13A1F4:  POP.W           {R8-R11}
13A1F8:  POP.W           {R4-R7,LR}
13A1FC:  B.W             sub_2242C8
13A200:  ADD.W           R0, R9, #0x7C ; '|'
13A204:  STR.W           R10, [R9,#0x78]
13A208:  STR             R0, [SP,#0x118+var_EC]
13A20A:  BL              sub_F4D48
13A20E:  CMP.W           R10, #5
13A212:  BHI.W           loc_13A3A6
13A216:  MOVS            R0, #1
13A218:  LSL.W           R0, R0, R10
13A21C:  TST.W           R0, #0x34
13A220:  BEQ.W           loc_13A3A6
13A224:  LDR             R0, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x13A22E)
13A226:  MOVS            R2, #0
13A228:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13A232)
13A22A:  ADD             R0, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
13A22C:  STR             R2, [SP,#0x118+var_AC]
13A22E:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13A230:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13A232:  LDR             R4, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13A234:  ADD.W           R1, R0, #0x20 ; ' '
13A238:  ADDS            R0, #0xC
13A23A:  STR             R0, [SP,#0x118+var_B0]
13A23C:  ADD             R0, SP, #0x118+var_B0
13A23E:  ADD.W           R5, R4, #0x20 ; ' '
13A242:  ADD.W           R6, R0, #0xC
13A246:  ADDS            R0, #0x40 ; '@'; this
13A248:  STR             R1, [SP,#0x118+var_70]
13A24A:  STR             R5, [SP,#0x118+var_A8]
13A24C:  MOV             R1, R6; void *
13A24E:  STR             R0, [SP,#0x118+var_F8]
13A250:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
13A254:  MOV.W           R0, #0xFFFFFFFF
13A258:  STR             R5, [SP,#0x118+var_A8]
13A25A:  STR             R0, [SP,#0x118+var_24]
13A25C:  MOVS            R0, #0
13A25E:  STR             R0, [SP,#0x118+var_28]
13A260:  ADD.W           R0, R4, #0x34 ; '4'
13A264:  STR             R0, [SP,#0x118+var_100]
13A266:  STR             R0, [SP,#0x118+var_70]
13A268:  ADD.W           R0, R4, #0xC
13A26C:  MOV             R4, R5
13A26E:  STR             R0, [SP,#0x118+var_104]
13A270:  STR             R0, [SP,#0x118+var_B0]
13A272:  MOV             R0, R6
13A274:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
13A278:  STRD.W          R11, R10, [SP,#0x118+var_10C]
13A27C:  VMOV.I32        Q8, #0
13A280:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13A28C)
13A282:  ADD             R1, SP, #0x118+var_B0
13A284:  ADDS            R1, #0x2C ; ','
13A286:  MOVS            R2, #0x18
13A288:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13A28A:  VST1.32         {D16-D17}, [R1]!
13A28E:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
13A290:  STR             R2, [R1]
13A292:  ADDS            R0, #8
13A294:  STR             R0, [SP,#0x118+var_114]
13A296:  STR             R0, [SP,#0x118+var_A4]
13A298:  MOV             R0, R6
13A29A:  MOV             R1, R8
13A29C:  STR             R6, [SP,#0x118+var_FC]
13A29E:  STR.W           R8, [SP,#0x118+var_110]
13A2A2:  BL              sub_E3EC0
13A2A6:  ADD.W           R11, SP, #0x118+var_C0
13A2AA:  ADD.W           R10, SP, #0x118+var_D0
13A2AE:  MOVS            R0, #0
13A2B0:  MOV             R5, R4
13A2B2:  STRD.W          R0, R0, [SP,#0x118+var_C0]
13A2B6:  STR             R0, [SP,#0x118+var_B8]
13A2B8:  ADD             R0, SP, #0x118+var_B0
13A2BA:  MOV             R1, R11
13A2BC:  MOVS            R2, #0xA
13A2BE:  BL              sub_E384C
13A2C2:  LDR             R1, [R0]
13A2C4:  LDR.W           R2, [R1,#-0xC]
13A2C8:  LDRB.W          R1, [SP,#0x118+var_C0]
13A2CC:  ADD             R0, R2
13A2CE:  LDRB            R2, [R0,#0x10]
13A2D0:  AND.W           R0, R1, #1
13A2D4:  TST.W           R2, #5
13A2D8:  BNE             loc_13A35E
13A2DA:  LDR             R6, [SP,#0x118+var_BC]
13A2DC:  CMP             R0, #0
13A2DE:  IT EQ
13A2E0:  LSREQ           R6, R1, #1
13A2E2:  CMP             R6, #0
13A2E4:  BEQ             loc_13A2B8
13A2E6:  MOV.W           R8, #0
13A2EA:  STRD.W          R8, R8, [SP,#0x118+var_D0]
13A2EE:  STR.W           R8, [SP,#0x118+var_C8]
13A2F2:  LDR             R0, [SP,#0x118+var_B8]
13A2F4:  LSLS            R1, R1, #0x1F
13A2F6:  IT EQ
13A2F8:  ADDEQ.W         R0, R11, #1
13A2FC:  LDRB.W          R1, [R0,R8]
13A300:  CMP             R1, #0x7B ; '{'
13A302:  BNE             loc_13A312
13A304:  ADD.W           R2, R8, #7
13A308:  CMP             R2, R6
13A30A:  BHI             loc_13A312
13A30C:  LDRB            R0, [R0,R2]
13A30E:  CMP             R0, #0x7D ; '}'
13A310:  BEQ             loc_13A31A
13A312:  MOV             R0, R10
13A314:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
13A318:  MOV             R2, R8
13A31A:  ADD.W           R8, R2, #1
13A31E:  CMP             R8, R6
13A320:  BCS             loc_13A328
13A322:  LDRB.W          R1, [SP,#0x118+var_C0]
13A326:  B               loc_13A2F2
13A328:  LDRD.W          R6, R0, [R9,#0x80]
13A32C:  CMP             R6, R0
13A32E:  BEQ             loc_13A344
13A330:  MOV             R0, R6
13A332:  MOV             R1, R10
13A334:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
13A338:  ADD.W           R0, R6, #0xC
13A33C:  MOV             R5, R4
13A33E:  STR.W           R0, [R9,#0x80]
13A342:  B               loc_13A34E
13A344:  LDR             R0, [SP,#0x118+var_EC]
13A346:  MOV             R1, R10
13A348:  BL              sub_126DEE
13A34C:  MOV             R5, R4
13A34E:  LDRB.W          R0, [SP,#0x118+var_D0]
13A352:  LSLS            R0, R0, #0x1F
13A354:  BEQ             loc_13A2B8
13A356:  LDR             R0, [SP,#0x118+var_C8]; void *
13A358:  BLX             j__ZdlPv; operator delete(void *)
13A35C:  B               loc_13A2B8
13A35E:  LDR             R4, [SP,#0x118+var_FC]
13A360:  CBZ             R0, loc_13A368
13A362:  LDR             R0, [SP,#0x118+var_B8]; void *
13A364:  BLX             j__ZdlPv; operator delete(void *)
13A368:  LDR             R1, [SP,#0x118+var_100]
13A36A:  LDRB.W          R0, [SP,#0x118+var_84]
13A36E:  STR             R1, [SP,#0x118+var_70]
13A370:  LDR             R1, [SP,#0x118+var_104]
13A372:  STR             R1, [SP,#0x118+var_B0]
13A374:  LSLS            R0, R0, #0x1F
13A376:  LDR             R1, [SP,#0x118+var_114]
13A378:  LDR.W           R10, [SP,#0x118+var_108]
13A37C:  LDRD.W          R8, R11, [SP,#0x118+var_110]
13A380:  STRD.W          R5, R1, [SP,#0x118+var_A8]
13A384:  ITT NE
13A386:  LDRNE           R0, [SP,#0x118+var_7C]; void *
13A388:  BLXNE           j__ZdlPv; operator delete(void *)
13A38C:  MOV             R0, R4
13A38E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
13A392:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13A398)
13A394:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13A396:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13A398:  ADDS            R1, R0, #4
13A39A:  ADD             R0, SP, #0x118+var_B0
13A39C:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
13A3A0:  LDR             R0, [SP,#0x118+var_F8]
13A3A2:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
13A3A6:  LDR.W           R0, [R9,#0x68]
13A3AA:  LDR             R1, [SP,#0x118+var_F0]
13A3AC:  LDR             R0, [R0,#0x54]
13A3AE:  BL              sub_13D450
13A3B2:  LDR.W           R0, [R9,#0x70]
13A3B6:  LDR             R1, [SP,#0x118+var_F4]
13A3B8:  LDR             R0, [R0,#0x6C]
13A3BA:  LDR             R0, [R0,#0x54]
13A3BC:  BL              sub_13D450
13A3C0:  LDR.W           R0, [R9,#0x70]
13A3C4:  MOV             R1, R11
13A3C6:  LDR             R0, [R0,#0x70]
13A3C8:  LDR             R0, [R0,#0x54]
13A3CA:  BL              sub_13D450
13A3CE:  LDRB.W          R0, [R9,#0x53]
13A3D2:  CBZ             R0, loc_13A414
13A3D4:  ADD.W           R5, R9, #0x54 ; 'T'
13A3D8:  SUB.W           R1, R7, #-var_1E
13A3DC:  MOV             R0, R5
13A3DE:  BL              sub_13B450
13A3E2:  CBZ             R0, loc_13A414
13A3E4:  SUB.W           R1, R7, #-var_1E
13A3E8:  MOV             R0, R5
13A3EA:  LDR.W           R6, [R9,#0x6C]
13A3EE:  BL              sub_13A558
13A3F2:  ADD             R5, SP, #0x118+var_E8
13A3F4:  ADDS            R1, R0, #4
13A3F6:  MOV             R0, R5
13A3F8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
13A3FC:  MOV             R0, R6
13A3FE:  MOV             R1, R10
13A400:  MOV             R2, R8
13A402:  MOV             R3, R5
13A404:  BL              sub_139D94
13A408:  LDRB.W          R0, [SP,#0x118+var_E8]
13A40C:  LSLS            R0, R0, #0x1F
13A40E:  BEQ             loc_13A440
13A410:  ADD             R0, SP, #0x118+var_E8
13A412:  B               loc_13A43A
13A414:  LDR             R1, =(byte_8F794 - 0x13A420)
13A416:  ADD             R6, SP, #0x118+var_DC
13A418:  LDR.W           R5, [R9,#0x6C]
13A41C:  ADD             R1, PC; byte_8F794 ; s
13A41E:  MOV             R0, R6; int
13A420:  BL              sub_DC6DC
13A424:  MOV             R0, R5
13A426:  MOV             R1, R10
13A428:  MOV             R2, R8
13A42A:  MOV             R3, R6
13A42C:  BL              sub_139D94
13A430:  LDRB.W          R0, [SP,#0x118+var_DC]
13A434:  LSLS            R0, R0, #0x1F
13A436:  BEQ             loc_13A440
13A438:  ADD             R0, SP, #0x118+var_DC
13A43A:  LDR             R0, [R0,#8]; void *
13A43C:  BLX             j__ZdlPv; operator delete(void *)
13A440:  LDR.W           R0, [R9]
13A444:  LDR             R1, [R0,#8]
13A446:  MOV             R0, R9
13A448:  BLX             R1
13A44A:  LDRB.W          R0, [R9,#0x53]
13A44E:  CBZ             R0, loc_13A488
13A450:  ADD.W           R5, R9, #0x54 ; 'T'
13A454:  SUB.W           R1, R7, #-var_1E
13A458:  MOV             R0, R5
13A45A:  BL              sub_13B450
13A45E:  CBZ             R0, loc_13A488
13A460:  CMP.W           R10, #5
13A464:  BHI             loc_13A488
13A466:  MOVS            R0, #1
13A468:  LSL.W           R0, R0, R10
13A46C:  TST.W           R0, #0x34
13A470:  BEQ             loc_13A488
13A472:  SUB.W           R1, R7, #-var_1E
13A476:  MOV             R0, R5
13A478:  LDR.W           R6, [R9,#0x6C]
13A47C:  BL              sub_13A558
13A480:  LDRH            R1, [R0]
13A482:  MOV             R0, R6
13A484:  BL              sub_139FC8
13A488:  LDRB.W          R0, [R9,#0x50]
13A48C:  CMP             R0, #1
13A48E:  BEQ             loc_13A49C
13A490:  LDR.W           R0, [R9]
13A494:  MOVS            R1, #1
13A496:  LDR             R2, [R0,#0x24]
13A498:  MOV             R0, R9
13A49A:  BLX             R2
13A49C:  LDRH.W          R0, [R7,#var_1E]
13A4A0:  MOVS            R1, #1
13A4A2:  STRB.W          R1, [R9,#0x50]
13A4A6:  STRH.W          R0, [R9,#0x74]
13A4AA:  ADD             SP, SP, #0xFC
13A4AC:  POP.W           {R8-R11}
13A4B0:  POP             {R4-R7,PC}
