; =========================================================
; Game Engine Function: sub_1032CC
; Address            : 0x1032CC - 0x10344A
; =========================================================

1032CC:  PUSH            {R4-R7,LR}
1032CE:  ADD             R7, SP, #0xC
1032D0:  PUSH.W          {R8-R10}
1032D4:  SUB             SP, SP, #0x48
1032D6:  MOV             R4, R0
1032D8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1032DE)
1032DA:  ADD             R0, PC; __stack_chk_guard_ptr
1032DC:  LDR             R0, [R0]; __stack_chk_guard
1032DE:  LDR             R0, [R0]
1032E0:  STR             R0, [SP,#0x60+var_1C]
1032E2:  MOV             R0, R4
1032E4:  STR             R4, [SP,#0x60+var_54]
1032E6:  LDR             R1, =(aTy - 0x1032EC); "Ty" ...
1032E8:  ADD             R1, PC; "Ty"
1032EA:  ADDS            R2, R1, #2
1032EC:  BL              sub_FE18C
1032F0:  CBZ             R0, loc_103320
1032F2:  ADD             R0, SP, #0x60+var_54
1032F4:  MOVS            R1, #0
1032F6:  MOVS            R5, #0
1032F8:  BL              sub_103538
1032FC:  CMP             R0, #0
1032FE:  BEQ.W           loc_10342E
103302:  MOV             R6, R0
103304:  ADD.W           R0, R4, #0x198
103308:  MOVS            R1, #0xC
10330A:  BL              sub_FFA98
10330E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle21TypeTemplateParamDeclE - 0x103318); `vtable for'`anonymous namespace'::itanium_demangle::TypeTemplateParamDecl ...
103310:  MOV             R5, R0
103312:  LDR             R0, =0x101001C
103314:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::TypeTemplateParamDecl
103316:  ADDS            R1, #8
103318:  STR             R1, [R5]
10331A:  STR             R0, [R5,#4]
10331C:  STR             R6, [R5,#8]
10331E:  B               loc_10342E
103320:  LDR             R1, =(aTn - 0x103328); "Tn" ...
103322:  MOV             R0, R4
103324:  ADD             R1, PC; "Tn"
103326:  ADDS            R2, R1, #2
103328:  BL              sub_FE18C
10332C:  CBZ             R0, loc_103366
10332E:  ADD             R0, SP, #0x60+var_54
103330:  MOVS            R1, #1
103332:  BL              sub_103538
103336:  CMP             R0, #0
103338:  BEQ             loc_1033F4
10333A:  MOV             R6, R0
10333C:  MOV             R0, R4
10333E:  BL              sub_FE7F0
103342:  CMP             R0, #0
103344:  BEQ             loc_1033F4
103346:  MOV             R8, R0
103348:  ADD.W           R0, R4, #0x198
10334C:  MOVS            R1, #0x10
10334E:  BL              sub_FFA98
103352:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle24NonTypeTemplateParamDeclE - 0x10335C); `vtable for'`anonymous namespace'::itanium_demangle::NonTypeTemplateParamDecl ...
103354:  MOV             R5, R0
103356:  LDR             R0, =0x101001D
103358:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NonTypeTemplateParamDecl
10335A:  STRD.W          R6, R8, [R5,#8]
10335E:  ADDS            R1, #8
103360:  STRD.W          R1, R0, [R5]
103364:  B               loc_10342E
103366:  LDR             R1, =(aTt_0 - 0x10336E); "Tt" ...
103368:  MOV             R0, R4
10336A:  ADD             R1, PC; "Tt"
10336C:  ADDS            R2, R1, #2
10336E:  BL              sub_FE18C
103372:  CBZ             R0, loc_1033C8
103374:  ADD             R0, SP, #0x60+var_54
103376:  MOVS            R1, #2
103378:  BL              sub_103538
10337C:  CBZ             R0, loc_1033F4
10337E:  MOV             R5, R4
103380:  MOV             R9, R0
103382:  LDR.W           R8, [R5,#8]!
103386:  MOV             R1, R4
103388:  LDR             R6, [R4,#0xC]
10338A:  ADD             R0, SP, #0x60+var_50
10338C:  BL              sub_103268
103390:  SUB.W           R0, R6, R8
103394:  LDR             R6, =(aE - 0x10339E); "E" ...
103396:  ADD.W           R10, SP, #0x60+var_5C
10339A:  ADD             R6, PC; "E"
10339C:  MOV.W           R8, R0,ASR#2
1033A0:  MOV             R0, R6; char *
1033A2:  MOVS            R1, #2; size_t
1033A4:  BLX             __strlen_chk
1033A8:  ADDS            R2, R6, R0
1033AA:  MOV             R0, R4
1033AC:  MOV             R1, R6
1033AE:  BL              sub_FE18C
1033B2:  CBNZ            R0, loc_1033F8
1033B4:  MOV             R0, R4
1033B6:  BL              sub_1032CC
1033BA:  STR             R0, [SP,#0x60+var_5C]
1033BC:  CBZ             R0, loc_103426
1033BE:  MOV             R0, R5
1033C0:  MOV             R1, R10
1033C2:  BL              sub_FF894
1033C6:  B               loc_1033A0
1033C8:  LDR             R1, =(aTp - 0x1033D0); "Tp" ...
1033CA:  MOV             R0, R4
1033CC:  ADD             R1, PC; "Tp"
1033CE:  ADDS            R2, R1, #2
1033D0:  BL              sub_FE18C
1033D4:  CBZ             R0, loc_1033F4
1033D6:  MOV             R0, R4
1033D8:  BL              sub_1032CC
1033DC:  CBZ             R0, loc_1033F4
1033DE:  MOV             R6, R0
1033E0:  ADD.W           R0, R4, #0x198
1033E4:  MOVS            R1, #0xC
1033E6:  BL              sub_FFA98
1033EA:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle21TemplateParamPackDeclE - 0x1033F4); `vtable for'`anonymous namespace'::itanium_demangle::TemplateParamPackDecl ...
1033EC:  MOV             R5, R0
1033EE:  LDR             R0, =0x101001F
1033F0:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::TemplateParamPackDecl
1033F2:  B               loc_103316
1033F4:  MOVS            R5, #0
1033F6:  B               loc_10342E
1033F8:  ADD             R0, SP, #0x60+var_5C
1033FA:  MOV             R1, R4
1033FC:  MOV             R2, R8
1033FE:  BL              sub_FF908
103402:  ADD.W           R0, R4, #0x198
103406:  MOVS            R1, #0x14
103408:  BL              sub_FFA98
10340C:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle25TemplateTemplateParamDeclE - 0x10341A); `vtable for'`anonymous namespace'::itanium_demangle::TemplateTemplateParamDecl ...
10340E:  MOV             R5, R0
103410:  LDRD.W          R2, R3, [SP,#0x60+var_5C]
103414:  LDR             R0, =0x101001E
103416:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::TemplateTemplateParamDecl
103418:  ADDS            R1, #8
10341A:  STR             R3, [R5,#0x10]
10341C:  STRD.W          R9, R2, [R5,#8]
103420:  STRD.W          R1, R0, [R5]
103424:  B               loc_103428
103426:  MOVS            R5, #0
103428:  ADD             R0, SP, #0x60+var_50
10342A:  BL              sub_103494
10342E:  LDR             R0, [SP,#0x60+var_1C]
103430:  LDR             R1, =(__stack_chk_guard_ptr - 0x103436)
103432:  ADD             R1, PC; __stack_chk_guard_ptr
103434:  LDR             R1, [R1]; __stack_chk_guard
103436:  LDR             R1, [R1]
103438:  CMP             R1, R0
10343A:  ITTTT EQ
10343C:  MOVEQ           R0, R5
10343E:  ADDEQ           SP, SP, #0x48 ; 'H'
103440:  POPEQ.W         {R8-R10}
103444:  POPEQ           {R4-R7,PC}
103446:  BLX             __stack_chk_fail
