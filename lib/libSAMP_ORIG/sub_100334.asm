; =========================================================
; Game Engine Function: sub_100334
; Address            : 0x100334 - 0x10042A
; =========================================================

100334:  PUSH            {R4-R7,LR}
100336:  ADD             R7, SP, #0xC
100338:  PUSH.W          {R8}
10033C:  SUB             SP, SP, #0x10
10033E:  MOV             R4, R0
100340:  LDR             R0, =(__stack_chk_guard_ptr - 0x100348)
100342:  MOV             R5, R1
100344:  ADD             R0, PC; __stack_chk_guard_ptr
100346:  LDR             R0, [R0]; __stack_chk_guard
100348:  LDR             R0, [R0]
10034A:  STR             R0, [SP,#0x20+var_14]
10034C:  LDRD.W          R0, R1, [R4]
100350:  CMP             R1, R0
100352:  BEQ             loc_100372
100354:  LDRB            R0, [R0]
100356:  CMP             R0, #0x55 ; 'U'
100358:  BNE             loc_100364
10035A:  MOV             R0, R4
10035C:  MOV             R1, R5
10035E:  BL              sub_102C48
100362:  B               loc_1003E8
100364:  SUBS            R0, #0x31 ; '1'
100366:  CMP             R0, #8
100368:  BHI             loc_100372
10036A:  MOV             R0, R4
10036C:  BL              sub_104164
100370:  B               loc_1003E8
100372:  LDR             R1, =(aDc - 0x10037A); "DC" ...
100374:  MOV             R0, R4
100376:  ADD             R1, PC; "DC"
100378:  ADDS            R2, R1, #2
10037A:  BL              sub_FE18C
10037E:  CBZ             R0, loc_1003E0
100380:  MOV             R6, R4
100382:  LDR.W           R0, [R6,#8]!
100386:  LDR             R1, [R6,#4]
100388:  ADD             R5, SP, #0x20+var_1C
10038A:  SUBS            R0, R1, R0
10038C:  MOV.W           R8, R0,ASR#2
100390:  MOV             R0, R4
100392:  BL              sub_104164
100396:  STR             R0, [SP,#0x20+var_1C]
100398:  CBZ             R0, loc_10040E
10039A:  MOV             R0, R6
10039C:  MOV             R1, R5
10039E:  BL              sub_FF894
1003A2:  LDRD.W          R0, R1, [R4]
1003A6:  CMP             R0, R1
1003A8:  BEQ             loc_100390
1003AA:  LDRB            R1, [R0]
1003AC:  CMP             R1, #0x45 ; 'E'
1003AE:  BNE             loc_100390
1003B0:  ADDS            R0, #1
1003B2:  STR             R0, [R4]
1003B4:  ADD             R0, SP, #0x20+var_1C
1003B6:  MOV             R1, R4
1003B8:  MOV             R2, R8
1003BA:  BL              sub_FF908
1003BE:  ADD.W           R0, R4, #0x198
1003C2:  MOVS            R1, #0x10
1003C4:  BL              sub_FFA98
1003C8:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle21StructuredBindingNameE - 0x1003D2); `vtable for'`anonymous namespace'::itanium_demangle::StructuredBindingName ...
1003CA:  MOV             R1, R0
1003CC:  LDR             R0, =0x101012E
1003CE:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::StructuredBindingName
1003D0:  LDRD.W          R3, R5, [SP,#0x20+var_1C]
1003D4:  ADDS            R2, #8
1003D6:  STRD.W          R3, R5, [R1,#8]
1003DA:  STRD.W          R2, R0, [R1]
1003DE:  B               loc_1003EC
1003E0:  MOV             R0, R4
1003E2:  MOV             R1, R5
1003E4:  BL              sub_10427C
1003E8:  MOV             R1, R0
1003EA:  CBZ             R0, loc_10040E
1003EC:  LDR             R0, [SP,#0x20+var_14]
1003EE:  LDR             R2, =(__stack_chk_guard_ptr - 0x1003F4)
1003F0:  ADD             R2, PC; __stack_chk_guard_ptr
1003F2:  LDR             R2, [R2]; __stack_chk_guard
1003F4:  LDR             R2, [R2]
1003F6:  CMP             R2, R0
1003F8:  ITTTT EQ
1003FA:  MOVEQ           R0, R4
1003FC:  ADDEQ           SP, SP, #0x10
1003FE:  POPEQ.W         {R8}
100402:  POPEQ.W         {R4-R7,LR}
100406:  IT EQ
100408:  BEQ.W           sub_1002A4
10040C:  B               loc_100426
10040E:  LDR             R0, [SP,#0x20+var_14]
100410:  LDR             R1, =(__stack_chk_guard_ptr - 0x100416)
100412:  ADD             R1, PC; __stack_chk_guard_ptr
100414:  LDR             R1, [R1]; __stack_chk_guard
100416:  LDR             R1, [R1]
100418:  CMP             R1, R0
10041A:  ITTTT EQ
10041C:  MOVEQ           R0, #0
10041E:  ADDEQ           SP, SP, #0x10
100420:  POPEQ.W         {R8}
100424:  POPEQ           {R4-R7,PC}
100426:  BLX             __stack_chk_fail
