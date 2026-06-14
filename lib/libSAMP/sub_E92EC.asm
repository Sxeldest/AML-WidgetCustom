; =========================================================
; Game Engine Function: sub_E92EC
; Address            : 0xE92EC - 0xE93DE
; =========================================================

E92EC:  PUSH            {R4-R7,LR}
E92EE:  ADD             R7, SP, #0xC
E92F0:  PUSH.W          {R8}
E92F4:  SUB             SP, SP, #0x48
E92F6:  MOV             R5, R1
E92F8:  LDR             R1, =(aOutOfRange - 0xE9302); "out_of_range" ...
E92FA:  ADD             R4, SP, #0x58+var_48
E92FC:  MOV             R8, R0
E92FE:  ADD             R1, PC; "out_of_range"
E9300:  MOV             R6, R2
E9302:  MOV             R0, R4; int
E9304:  BL              sub_DC6DC
E9308:  ADD             R0, SP, #0x58+var_3C
E930A:  MOV             R1, R4
E930C:  MOV             R2, R5
E930E:  BL              sub_E5F8C
E9312:  LDR             R1, =(byte_8F794 - 0xE9318)
E9314:  ADD             R1, PC; byte_8F794 ; s
E9316:  ADD             R0, SP, #0x58+var_54; int
E9318:  BL              sub_DC6DC
E931C:  LDRB.W          R3, [SP,#0x58+var_54]
E9320:  LDRD.W          R2, R1, [SP,#0x58+var_50]
E9324:  ANDS.W          R4, R3, #1
E9328:  ITT EQ
E932A:  ADDEQ           R1, R0, #1
E932C:  LSREQ           R2, R3, #1
E932E:  ADD             R0, SP, #0x58+var_3C
E9330:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E9334:  VLDR            D16, [R0]
E9338:  MOVS            R4, #0
E933A:  LDR             R1, [R0,#8]
E933C:  STR             R1, [SP,#0x58+var_28]
E933E:  VSTR            D16, [SP,#0x58+var_30]
E9342:  STRD.W          R4, R4, [R0]
E9346:  STR             R4, [R0,#8]
E9348:  LDRB            R0, [R6]
E934A:  LDRD.W          R2, R1, [R6,#4]
E934E:  ANDS.W          R3, R0, #1
E9352:  ITT EQ
E9354:  ADDEQ           R1, R6, #1
E9356:  LSREQ           R2, R0, #1
E9358:  ADD             R0, SP, #0x58+var_30
E935A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E935E:  VLDR            D16, [R0]
E9362:  LDR             R1, [R0,#8]
E9364:  STR             R1, [SP,#0x58+var_18]
E9366:  VSTR            D16, [SP,#0x58+var_20]
E936A:  STRD.W          R4, R4, [R0]
E936E:  STR             R4, [R0,#8]
E9370:  LDRB.W          R0, [SP,#0x58+var_30]
E9374:  LSLS            R0, R0, #0x1F
E9376:  ITT NE
E9378:  LDRNE           R0, [SP,#0x58+var_28]; void *
E937A:  BLXNE           j__ZdlPv; operator delete(void *)
E937E:  LDRB.W          R0, [SP,#0x58+var_54]
E9382:  LSLS            R0, R0, #0x1F
E9384:  ITT NE
E9386:  LDRNE           R0, [SP,#0x58+var_4C]; void *
E9388:  BLXNE           j__ZdlPv; operator delete(void *)
E938C:  LDRB.W          R0, [SP,#0x58+var_3C]
E9390:  LSLS            R0, R0, #0x1F
E9392:  ITT NE
E9394:  LDRNE           R0, [SP,#0x58+var_34]; void *
E9396:  BLXNE           j__ZdlPv; operator delete(void *)
E939A:  LDRB.W          R0, [SP,#0x58+var_48]
E939E:  LSLS            R0, R0, #0x1F
E93A0:  ITT NE
E93A2:  LDRNE           R0, [SP,#0x58+var_40]; void *
E93A4:  BLXNE           j__ZdlPv; operator delete(void *)
E93A8:  LDRB.W          R0, [SP,#0x58+var_20]
E93AC:  ADD             R1, SP, #0x58+var_20
E93AE:  LDR             R2, [SP,#0x58+var_18]
E93B0:  LSLS            R0, R0, #0x1F
E93B2:  IT EQ
E93B4:  ADDEQ           R2, R1, #1; char *
E93B6:  MOV             R0, R8; int
E93B8:  MOV             R1, R5; int
E93BA:  BL              sub_E60A8
E93BE:  LDR             R0, =(_ZTVN8nlohmann6detail12out_of_rangeE - 0xE93C8); `vtable for'nlohmann::detail::out_of_range ...
E93C0:  LDRB.W          R1, [SP,#0x58+var_20]
E93C4:  ADD             R0, PC; `vtable for'nlohmann::detail::out_of_range
E93C6:  ADDS            R0, #8
E93C8:  STR.W           R0, [R8]
E93CC:  LSLS            R0, R1, #0x1F
E93CE:  ITT NE
E93D0:  LDRNE           R0, [SP,#0x58+var_18]; void *
E93D2:  BLXNE           j__ZdlPv; operator delete(void *)
E93D6:  ADD             SP, SP, #0x48 ; 'H'
E93D8:  POP.W           {R8}
E93DC:  POP             {R4-R7,PC}
