; =========================================================
; Game Engine Function: sub_FB2B4
; Address            : 0xFB2B4 - 0xFB356
; =========================================================

FB2B4:  PUSH            {R4-R7,LR}
FB2B6:  ADD             R7, SP, #0xC
FB2B8:  PUSH.W          {R8-R11}
FB2BC:  SUB             SP, SP, #0x14
FB2BE:  MOV             R9, R2
FB2C0:  MOV             R5, R1
FB2C2:  MOV             R10, R0
FB2C4:  ADD             R0, SP, #0x30+var_28
FB2C6:  MOV             R1, R10
FB2C8:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_; std::ostream::sentry::sentry(std::ostream&)
FB2CC:  LDRB.W          R0, [SP,#0x30+var_28]
FB2D0:  CBZ             R0, loc_FB346
FB2D2:  LDR.W           R0, [R10]
FB2D6:  LDR.W           R0, [R0,#-0xC]
FB2DA:  ADD.W           R6, R10, R0
FB2DE:  LDR             R4, [R6,#0x4C]
FB2E0:  LDR.W           R11, [R6,#4]
FB2E4:  LDR.W           R8, [R6,#0x18]
FB2E8:  ADDS            R0, R4, #1
FB2EA:  BNE             loc_FB312
FB2EC:  ADD             R0, SP, #0x30+var_20; this
FB2EE:  MOV             R1, R6
FB2F0:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
FB2F4:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0xFB2FA)
FB2F6:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
FB2F8:  LDR             R1, [R0]; std::locale::id *
FB2FA:  ADD             R0, SP, #0x30+var_20; this
FB2FC:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
FB300:  LDR             R1, [R0]
FB302:  LDR             R2, [R1,#0x1C]
FB304:  MOVS            R1, #0x20 ; ' '
FB306:  BLX             R2
FB308:  MOV             R4, R0
FB30A:  ADD             R0, SP, #0x30+var_20; this
FB30C:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
FB310:  STR             R4, [R6,#0x4C]
FB312:  ADD.W           R3, R5, R9
FB316:  UXTB            R0, R4
FB318:  MOV             R2, R3
FB31A:  STRD.W          R6, R0, [SP,#0x30+var_30]
FB31E:  AND.W           R0, R11, #0xB0
FB322:  CMP             R0, #0x20 ; ' '
FB324:  MOV             R0, R8
FB326:  MOV             R1, R5
FB328:  IT NE
FB32A:  MOVNE           R2, R5
FB32C:  BL              sub_FB398
FB330:  CBNZ            R0, loc_FB346
FB332:  LDR.W           R0, [R10]
FB336:  LDR.W           R0, [R0,#-0xC]
FB33A:  ADD             R0, R10; this
FB33C:  LDR             R1, [R0,#0x10]
FB33E:  ORR.W           R1, R1, #5; unsigned int
FB342:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
FB346:  ADD             R0, SP, #0x30+var_28
FB348:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev; std::ostream::sentry::~sentry()
FB34C:  MOV             R0, R10
FB34E:  ADD             SP, SP, #0x14
FB350:  POP.W           {R8-R11}
FB354:  POP             {R4-R7,PC}
