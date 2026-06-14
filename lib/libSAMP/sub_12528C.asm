; =========================================================
; Game Engine Function: sub_12528C
; Address            : 0x12528C - 0x125378
; =========================================================

12528C:  PUSH            {R4-R7,LR}
12528E:  ADD             R7, SP, #0xC
125290:  PUSH.W          {R11}
125294:  SUB             SP, SP, #8
125296:  MOV             R4, R1
125298:  BL              sub_125A8C
12529C:  LDR             R6, =(dword_238E90 - 0x1252A4)
12529E:  MOV             R1, R0
1252A0:  ADD             R6, PC; dword_238E90
1252A2:  LDR             R0, [R6]
1252A4:  CMP             R1, R0
1252A6:  BNE             loc_12535E
1252A8:  LDR             R5, =(dword_238EA0 - 0x1252AE)
1252AA:  ADD             R5, PC; dword_238EA0
1252AC:  LDR             R0, [R5]
1252AE:  ADDS            R0, #1
1252B0:  CMP             R0, R1
1252B2:  BLT             loc_1252E6
1252B4:  LDR             R1, =(aAxl - 0x1252C0); "AXL" ...
1252B6:  MOVS            R0, #4; prio
1252B8:  LDR             R2, =(aChandlinghookN_3 - 0x1252C2); "CHandlingHook: No free entries for car "... ...
1252BA:  MOV             R3, R4
1252BC:  ADD             R1, PC; "AXL"
1252BE:  ADD             R2, PC; "CHandlingHook: No free entries for car "...
1252C0:  BLX             __android_log_print
1252C4:  LDR             R0, =(dword_238E94 - 0x1252CE)
1252C6:  LDR             R1, =(dword_238E98 - 0x1252D0)
1252C8:  LDR             R2, =(dword_238E9C - 0x1252D2)
1252CA:  ADD             R0, PC; dword_238E94
1252CC:  ADD             R1, PC; dword_238E98
1252CE:  ADD             R2, PC; dword_238E9C
1252D0:  LDR             R0, [R0]
1252D2:  LDR             R3, [R1]
1252D4:  LDR             R1, [R6]
1252D6:  LDR             R2, [R2]
1252D8:  ADDS            R1, #1
1252DA:  STR             R2, [SP,#0x18+var_18]
1252DC:  MOV             R2, R0
1252DE:  BL              sub_1246CC
1252E2:  LDR             R0, [R5]
1252E4:  ADDS            R0, #1; int
1252E6:  MOV             R1, R4; s
1252E8:  BL              sub_125AF0
1252EC:  BL              sub_124658
1252F0:  LDR             R0, =(dword_263C74 - 0x1252FA)
1252F2:  MOVS            R2, #0x18
1252F4:  LDR             R1, =(aEvehicleTVehic - 0x1252FC); "{ eVehicle_t::VEHICLE, \"" ...
1252F6:  ADD             R0, PC; dword_263C74
1252F8:  ADD             R1, PC; "{ eVehicle_t::VEHICLE, \""
1252FA:  BL              sub_FB2B4
1252FE:  MOV             R5, R0
125300:  MOV             R0, R4; s
125302:  BLX             strlen
125306:  MOV             R2, R0
125308:  MOV             R0, R5
12530A:  MOV             R1, R4
12530C:  BL              sub_FB2B4
125310:  LDR             R1, =(asc_8E558 - 0x125318); "\" }," ...
125312:  MOVS            R2, #4
125314:  ADD             R1, PC; "\" },"
125316:  BL              sub_FB2B4
12531A:  MOV             R4, R0
12531C:  LDR             R0, [R0]
12531E:  ADD             R5, SP, #0x18+var_14
125320:  LDR.W           R0, [R0,#-0xC]
125324:  ADDS            R1, R4, R0
125326:  MOV             R0, R5; this
125328:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
12532C:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x125332)
12532E:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
125330:  LDR             R1, [R0]; std::locale::id *
125332:  MOV             R0, R5; this
125334:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
125338:  LDR             R1, [R0]
12533A:  LDR             R2, [R1,#0x1C]
12533C:  MOVS            R1, #0xA
12533E:  BLX             R2
125340:  MOV             R5, R0
125342:  ADD             R0, SP, #0x18+var_14; this
125344:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
125348:  MOV             R0, R4
12534A:  MOV             R1, R5
12534C:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
125350:  MOV             R0, R4
125352:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
125356:  ADD             SP, SP, #8
125358:  POP.W           {R11}
12535C:  POP             {R4-R7,PC}
12535E:  LDR             R1, =(aAxl - 0x12536A); "AXL" ...
125360:  MOVS            R0, #5
125362:  LDR             R2, =(aChandlinghookC - 0x12536C); "CHandlingHook: Can't add handling for c"... ...
125364:  MOV             R3, R4
125366:  ADD             R1, PC; "AXL"
125368:  ADD             R2, PC; "CHandlingHook: Can't add handling for c"...
12536A:  ADD             SP, SP, #8
12536C:  POP.W           {R11}
125370:  POP.W           {R4-R7,LR}
125374:  B.W             sub_2242C8
