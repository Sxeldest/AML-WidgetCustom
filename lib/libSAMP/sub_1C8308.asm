; =========================================================
; Game Engine Function: sub_1C8308
; Address            : 0x1C8308 - 0x1C8CCC
; =========================================================

1C8308:  PUSH            {R4-R11,LR}
1C830C:  ADD             R11, SP, #0x1C
1C8310:  SUB             SP, SP, #0x17C
1C8314:  STR             R3, [SP,#0x198+var_194]
1C8318:  MOV             R3, R0
1C831C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C8334)
1C8320:  MOV             LR, R2
1C8324:  LDR             R4, [R11,#arg_C]
1C8328:  LDR             R6, [R11,#arg_4]
1C832C:  LDR             R0, [PC,R0]; __stack_chk_guard
1C8330:  LDR             R0, [R0]
1C8334:  STR             R0, [R11,#var_24]
1C8338:  MOVW            R0, #0x12E8
1C833C:  LDR             R0, [R3,R0]
1C8340:  STR             R0, [SP,#0x198+var_12C]
1C8344:  LDR             R0, [R11,#arg_0]
1C8348:  LDR             R2, [R3,#0xD0]
1C834C:  LDR             R9, [R0]
1C8350:  CMP             R2, #0
1C8354:  MOV             R0, R2
1C8358:  STR             R3, [SP,#0x198+var_130]
1C835C:  STR             R0, [SP,#0x198+var_128]
1C8360:  STR             R9, [SP,#0x198+var_170]
1C8364:  STR             R1, [SP,#0x198+var_14C]
1C8368:  BEQ             loc_1C8ABC
1C836C:  ADD             R0, R1, #0x128
1C8370:  ADD             R8, R3, #0x1300
1C8374:  ADD             R0, R0, #0x28800
1C8378:  STR             R0, [SP,#0x198+var_184]
1C837C:  ADD             R0, R1, #0x104
1C8380:  STR             LR, [SP,#0x198+var_150]
1C8384:  ADD             R0, R0, #0x28800
1C8388:  STR             R0, [SP,#0x198+var_188]
1C838C:  MOVW            R0, #0x1D44
1C8390:  ADD             R0, R3, R0
1C8394:  STR             R0, [SP,#0x198+var_160]
1C8398:  MOVW            R0, #0x1C48
1C839C:  ADD             R0, R3, R0
1C83A0:  STR             R0, [SP,#0x198+var_16C]
1C83A4:  MOVW            R0, #0x1C44
1C83A8:  ADD             R12, R3, R0
1C83AC:  ADD             R0, R1, #0x12C
1C83B0:  STR             R12, [SP,#0x198+var_17C]
1C83B4:  ADD             R0, R0, #0x28800
1C83B8:  STR             R0, [SP,#0x198+var_18C]
1C83BC:  ADD             R0, R1, #0x108
1C83C0:  MOV             R1, #0
1C83C4:  ADD             R0, R0, #0x28800
1C83C8:  STR             R0, [SP,#0x198+var_190]
1C83CC:  MOVW            R0, #0x1E90
1C83D0:  STR             R1, [SP,#0x198+var_138]
1C83D4:  ADD             R0, R3, R0
1C83D8:  STR             R0, [SP,#0x198+var_13C]
1C83DC:  MOVW            R0, #0x1D48
1C83E0:  ADD             R0, R3, R0
1C83E4:  STR             R0, [SP,#0x198+var_164]
1C83E8:  MOVW            R0, #0x12E0
1C83EC:  ADD             R0, R3, R0
1C83F0:  STR             R0, [SP,#0x198+var_180]
1C83F4:  ADD             R0, SP, #0x198+var_124
1C83F8:  ADD             R5, R0, #4
1C83FC:  STR             R5, [SP,#0x198+var_144]
1C8400:  LDR             R1, [R3,#0xDC]
1C8404:  MOV             R0, R3
1C8408:  MOV             R2, #0
1C840C:  CMP             R1, R6
1C8410:  MOVLS           R1, R6
1C8414:  SUB             R9, R1, R6
1C8418:  VMOV            S0, R9
1C841C:  VCVT.F32.S32    S0, S0
1C8420:  LDR             R1, [SP,#0x198+var_180]
1C8424:  LDR             R1, [R1]
1C8428:  ADD             R3, R12, R2
1C842C:  ADD             R7, R5, R2
1C8430:  VLDR            S2, [R3]
1C8434:  VLDR            S4, [R3,#4]
1C8438:  ADD             R3, R8, R2
1C843C:  VMUL.F32        S2, S2, S0
1C8440:  ADD             R2, R2, #8
1C8444:  VLDR            S6, [R3,#-4]
1C8448:  CMP             R2, #0x100
1C844C:  VSUB.F32        S2, S6, S2
1C8450:  VSTR            S2, [R7,#-4]
1C8454:  VMUL.F32        S2, S4, S0
1C8458:  VLDR            S4, [R3]
1C845C:  VSUB.F32        S2, S4, S2
1C8460:  VSTR            S2, [R7]
1C8464:  BNE             loc_1C8428
1C8468:  LDR             R2, [SP,#0x198+var_164]
1C846C:  MOV             R3, #0x1C00
1C8470:  LDR             R5, [SP,#0x198+var_138]
1C8474:  MOVW            R4, #0x1BFC
1C8478:  LDR             R7, [SP,#0x198+var_160]
1C847C:  CMP             R6, #0
1C8480:  LDR             R2, [R2]
1C8484:  MOV             R12, R0
1C8488:  ADD             R10, R0, R5,LSL#3
1C848C:  LDR             R7, [R7]
1C8490:  LDR             R3, [R10,R3]
1C8494:  MLS             R2, R2, R9, R3
1C8498:  LDR             R4, [R10,R4]
1C849C:  MLS             R7, R7, R9, R4
1C84A0:  ADD             R4, R1, R6
1C84A4:  ADDEQ           R1, LR, R5,LSL#2
1C84A8:  ADDEQ           R6, R4, #1
1C84AC:  ADD             R0, R2, #0x8000
1C84B0:  STR             R0, [SP,#0x198+var_134]
1C84B4:  VLDREQ          S0, [R1]
1C84B8:  MOVWEQ          R1, #0x1E94
1C84BC:  ADDEQ           R1, R10, R1
1C84C0:  ADD             R0, R7, #0x8000
1C84C4:  ANDEQ           R7, R4, #0x3F ; '?'
1C84C8:  ANDEQ           R6, R6, #0x1F
1C84CC:  VLDREQ          S2, [R1]
1C84D0:  LDREQ           R1, [SP,#0x198+var_13C]
1C84D4:  VSUBEQ.F32      S2, S2, S0
1C84D8:  VLDREQ          S4, [R1]
1C84DC:  MOVWEQ          R1, #0x1E98
1C84E0:  ADDEQ           R1, R10, R1
1C84E4:  VMULEQ.F32      S2, S2, S4
1C84E8:  VADDEQ.F32      S0, S2, S0
1C84EC:  VLDREQ          S2, [R1]
1C84F0:  ADDEQ           R1, R12, R5,LSL#8
1C84F4:  MOV             R12, #0
1C84F8:  ADDEQ           R2, R1, #0xE0
1C84FC:  ADDEQ           R1, R1, R6,LSL#3
1C8500:  ADDEQ           R7, R2, R7,LSL#2
1C8504:  MOVEQ           R6, #0
1C8508:  VSUBEQ.F32      S2, S2, S0
1C850C:  VMULEQ.F32      S2, S2, S4
1C8510:  VADDEQ.F32      S0, S2, S0
1C8514:  VSTREQ          S0, [R7]
1C8518:  SUBEQ           R7, R4, R0,LSR#16
1C851C:  ANDEQ           R7, R7, #0x3F ; '?'
1C8520:  LDREQ           R3, [SP,#0x198+var_188]
1C8524:  VLDREQ          S4, [SP,#0x198+var_124]
1C8528:  ADDEQ           R7, R2, R7,LSL#2
1C852C:  VLDREQ          S6, [R3]
1C8530:  VLDREQ          S0, [R7]
1C8534:  ADDEQ           R7, R1, #0x9E0
1C8538:  VLDREQ          S2, [R7]
1C853C:  VMULEQ.F32      S0, S4, S0
1C8540:  LDREQ           R7, [SP,#0x198+var_134]
1C8544:  VSUBEQ.F32      S2, S6, S2
1C8548:  SUBEQ           R7, R4, R7,LSR#16
1C854C:  ANDEQ           R7, R7, #0x3F ; '?'
1C8550:  ADDEQ           R2, R2, R7,LSL#2
1C8554:  VSUBEQ.F32      S0, S2, S0
1C8558:  VLDREQ          S2, [R2]
1C855C:  MOVWEQ          R2, #0x9E4
1C8560:  ADDEQ           R1, R1, R2
1C8564:  VSTREQ          S0, [R3]
1C8568:  VLDREQ          S0, [R1]
1C856C:  LDREQ           R1, [SP,#0x198+var_190]
1C8570:  VLDREQ          S4, [SP,#0x198+var_120]
1C8574:  VLDREQ          S6, [R1]
1C8578:  VMULEQ.F32      S2, S4, S2
1C857C:  VSUBEQ.F32      S0, S6, S0
1C8580:  VSUBEQ.F32      S0, S0, S2
1C8584:  VSTREQ          S0, [R1]
1C8588:  CMP             R9, #1
1C858C:  LDR             R2, [SP,#0x198+var_134]
1C8590:  STR             R6, [SP,#0x198+var_140]
1C8594:  STR             R8, [SP,#0x198+var_178]
1C8598:  STR             R10, [SP,#0x198+var_174]
1C859C:  BLT             loc_1C879C
1C85A0:  LDR             R1, [R11,#arg_C]
1C85A4:  MOV             R6, R2
1C85A8:  CMP             R1, #0
1C85AC:  BEQ             loc_1C87B0
1C85B0:  MOVW            R1, #0x1E94
1C85B4:  MOV             R7, #0
1C85B8:  ADD             R1, R10, R1
1C85BC:  LDR             R10, [SP,#0x198+var_170]
1C85C0:  MOV             R12, #0
1C85C4:  STR             R1, [SP,#0x198+var_168]
1C85C8:  LDR             R1, [SP,#0x198+var_128]
1C85CC:  ADD             R8, R4, #1
1C85D0:  LDR             R2, [SP,#0x198+var_168]
1C85D4:  STR             R12, [SP,#0x198+var_148]
1C85D8:  MUL             R1, R7, R1
1C85DC:  VLDR            S0, [R2]
1C85E0:  VLDR            S2, [R2,#4]
1C85E4:  ADD             R1, LR, R1,LSL#2
1C85E8:  ADD             R1, R1, R5,LSL#2
1C85EC:  VLDR            S4, [R1]
1C85F0:  LDR             R1, [SP,#0x198+var_13C]
1C85F4:  VSUB.F32        S0, S0, S4
1C85F8:  VLDR            S6, [R1]
1C85FC:  VMUL.F32        S0, S0, S6
1C8600:  VADD.F32        S0, S0, S4
1C8604:  VSUB.F32        S2, S2, S0
1C8608:  VSTR            S0, [R2]
1C860C:  VMUL.F32        S2, S2, S6
1C8610:  VADD.F32        S2, S2, S0
1C8614:  VSTR            S2, [R2,#4]
1C8618:  AND             R2, R4, #0x3F ; '?'
1C861C:  LDR             R1, [SP,#0x198+var_130]
1C8620:  ADD             LR, R1, R5,LSL#8
1C8624:  SUB             R5, R4, R6,LSR#16
1C8628:  ADD             R1, LR, #0xE0
1C862C:  AND             R5, R5, #0x3F ; '?'
1C8630:  ADD             R2, R1, R2,LSL#2
1C8634:  VSTR            S2, [R2]
1C8638:  SUB             R2, R4, R0,LSR#16
1C863C:  AND             R2, R2, #0x3F ; '?'
1C8640:  STR             R0, [SP,#0x198+var_154]
1C8644:  STR             R6, [SP,#0x198+var_134]
1C8648:  ADD             R2, R1, R2,LSL#2
1C864C:  ADD             R1, R1, R5,LSL#2
1C8650:  AND             R5, R4, #0x1F
1C8654:  VLDR            S2, [R2]
1C8658:  LDR             R2, [SP,#0x198+var_164]
1C865C:  VLDR            S0, [R1]
1C8660:  ADD             R1, LR, R5,LSL#3
1C8664:  LDR             R0, [R2]
1C8668:  LDR             R2, [SP,#0x198+var_160]
1C866C:  STR             R0, [SP,#0x198+var_15C]
1C8670:  LDR             R0, [R2]
1C8674:  MOV             R2, #0
1C8678:  STR             R0, [SP,#0x198+var_158]
1C867C:  MOVW            R0, #0x9E4
1C8680:  STR             R2, [R1,#0x9E0]
1C8684:  STR             R2, [R1,#0x9E4]
1C8688:  MOV             R1, #1
1C868C:  LDR             R5, [SP,#0x198+var_16C]
1C8690:  LDR             R2, [SP,#0x198+var_144]
1C8694:  VLDR            S4, [R2,#-4]
1C8698:  ADD             R3, R4, R1
1C869C:  AND             R3, R3, #0x1F
1C86A0:  ADD             R1, R1, #1
1C86A4:  VMUL.F32        S6, S4, S2
1C86A8:  CMP             R1, #0x21 ; '!'
1C86AC:  ADD             R3, LR, R3,LSL#3
1C86B0:  ADD             R12, R3, #0x9E0
1C86B4:  ADD             R3, R3, R0
1C86B8:  VLDR            S8, [R12]
1C86BC:  VADD.F32        S6, S8, S6
1C86C0:  VSTR            S6, [R12]
1C86C4:  VLDR            S6, [R2]
1C86C8:  VLDR            S10, [R3]
1C86CC:  VMUL.F32        S8, S6, S0
1C86D0:  VADD.F32        S8, S10, S8
1C86D4:  VSTR            S8, [R3]
1C86D8:  VLDR            S8, [R5,#-4]
1C86DC:  VLDR            S10, [R5]
1C86E0:  ADD             R5, R5, #8
1C86E4:  VADD.F32        S4, S4, S8
1C86E8:  VADD.F32        S6, S6, S10
1C86EC:  VSTR            S4, [R2,#-4]
1C86F0:  VSTR            S6, [R2]
1C86F4:  ADD             R2, R2, #8
1C86F8:  BNE             loc_1C8694
1C86FC:  LDR             R5, [SP,#0x198+var_140]
1C8700:  CMP             R9, #2
1C8704:  LDR             R2, [SP,#0x198+var_14C]
1C8708:  ADD             R1, R5, R5,LSL#3
1C870C:  ADD             R5, R5, #1
1C8710:  ADD             R1, R2, R1,LSL#2
1C8714:  AND             R2, R8, #0x1F
1C8718:  ADD             R2, LR, R2,LSL#3
1C871C:  VLDR            S0, [R1,#0xB8]
1C8720:  ADD             R3, R2, #0x9E0
1C8724:  ADD             R2, R2, R0
1C8728:  VLDR            S2, [R1,#0xBC]
1C872C:  VLDR            S4, [R3]
1C8730:  VADD.F32        S0, S0, S4
1C8734:  VSTR            S0, [R1,#0xB8]
1C8738:  VLDR            S0, [R2]
1C873C:  VADD.F32        S0, S2, S0
1C8740:  VSTR            S0, [R1,#0xBC]
1C8744:  LDR             R6, [SP,#0x198+var_134]
1C8748:  LDR             R0, [SP,#0x198+var_15C]
1C874C:  LDR             R1, [SP,#0x198+var_158]
1C8750:  ADD             R6, R0, R6
1C8754:  LDR             R0, [SP,#0x198+var_154]
1C8758:  LDR             R12, [SP,#0x198+var_148]
1C875C:  ADD             R0, R1, R0
1C8760:  LDR             R1, [SP,#0x198+var_12C]
1C8764:  ADD             R12, R12, #1
1C8768:  STR             R5, [SP,#0x198+var_140]
1C876C:  ADD             R10, R10, R1
1C8770:  ADD             R7, R7, R10,LSR#14
1C8774:  BFC             R10, #0xE, #0x12
1C8778:  BLT             loc_1C87C0
1C877C:  LDR             R1, [R11,#arg_C]
1C8780:  SUB             R9, R9, #1
1C8784:  LDR             LR, [SP,#0x198+var_150]
1C8788:  MOV             R4, R8
1C878C:  LDR             R5, [SP,#0x198+var_138]
1C8790:  CMP             R12, R1
1C8794:  BCC             loc_1C85C8
1C8798:  B               loc_1C87C8
1C879C:  MOV             R8, R4
1C87A0:  LDR             R10, [SP,#0x198+var_170]
1C87A4:  MOV             R7, #0
1C87A8:  MOV             R6, R2
1C87AC:  B               loc_1C87C8
1C87B0:  MOV             R8, R4
1C87B4:  LDR             R10, [SP,#0x198+var_170]
1C87B8:  MOV             R7, #0
1C87BC:  B               loc_1C87C8
1C87C0:  LDR             LR, [SP,#0x198+var_150]
1C87C4:  LDR             R5, [SP,#0x198+var_138]
1C87C8:  LDR             R4, [R11,#arg_C]
1C87CC:  MOV             R1, R6,LSR#16
1C87D0:  MOV             R0, R0,LSR#16
1C87D4:  STR             R1, [SP,#0x198+var_134]
1C87D8:  CMP             R12, R4
1C87DC:  STR             R0, [SP,#0x198+var_154]
1C87E0:  BCS             loc_1C898C
1C87E4:  LDR             R6, [SP,#0x198+var_140]
1C87E8:  MOVW            R1, #0x1E94
1C87EC:  LDR             R2, [SP,#0x198+var_174]
1C87F0:  ADD             R0, R6, R4
1C87F4:  STR             R0, [SP,#0x198+var_168]
1C87F8:  ADD             R0, R8, R4
1C87FC:  LDR             R3, [SP,#0x198+var_130]
1C8800:  STR             R0, [SP,#0x198+var_15C]
1C8804:  ADD             R0, R2, R1
1C8808:  STR             R0, [SP,#0x198+var_158]
1C880C:  MOVW            R0, #0x9E4
1C8810:  STR             R12, [SP,#0x198+var_148]
1C8814:  LDR             R1, [SP,#0x198+var_128]
1C8818:  ADD             R9, R3, R5,LSL#8
1C881C:  LDR             R4, [SP,#0x198+var_158]
1C8820:  AND             R3, R8, #0x3F ; '?'
1C8824:  MUL             R2, R7, R1
1C8828:  LDR             R1, [SP,#0x198+var_13C]
1C882C:  VLDR            S0, [R4]
1C8830:  VLDR            S2, [R4,#4]
1C8834:  VLDR            S6, [R1]
1C8838:  ADD             R2, LR, R2,LSL#2
1C883C:  ADD             R2, R2, R5,LSL#2
1C8840:  VLDR            S4, [R2]
1C8844:  ADD             R2, R9, #0xE0
1C8848:  ADD             R3, R2, R3,LSL#2
1C884C:  VSUB.F32        S0, S0, S4
1C8850:  VMUL.F32        S0, S0, S6
1C8854:  VADD.F32        S0, S0, S4
1C8858:  VSUB.F32        S2, S2, S0
1C885C:  VSTR            S0, [R4]
1C8860:  VMUL.F32        S2, S2, S6
1C8864:  VADD.F32        S2, S2, S0
1C8868:  VSTR            S2, [R4,#4]
1C886C:  VSTR            S2, [R3]
1C8870:  LDR             R1, [SP,#0x198+var_154]
1C8874:  SUB             R3, R8, R1
1C8878:  LDR             R1, [SP,#0x198+var_134]
1C887C:  AND             R3, R3, #0x3F ; '?'
1C8880:  SUB             R5, R8, R1
1C8884:  MOV             R1, #0
1C8888:  AND             R5, R5, #0x3F ; '?'
1C888C:  ADD             R3, R2, R3,LSL#2
1C8890:  ADD             R2, R2, R5,LSL#2
1C8894:  AND             R5, R8, #0x1F
1C8898:  VLDR            S2, [R3]
1C889C:  ADD             R3, R8, #1
1C88A0:  ADD             R5, R9, R5,LSL#3
1C88A4:  VLDR            S0, [R2]
1C88A8:  MOV             R2, #1
1C88AC:  STR             R1, [R5,#0x9E0]
1C88B0:  STR             R1, [R5,#0x9E4]
1C88B4:  LDR             R5, [SP,#0x198+var_144]
1C88B8:  VLDR            S4, [R5,#-4]
1C88BC:  ADD             LR, R8, R2
1C88C0:  AND             R4, LR, #0x1F
1C88C4:  ADD             R2, R2, #1
1C88C8:  VMUL.F32        S4, S4, S2
1C88CC:  CMP             R2, #0x21 ; '!'
1C88D0:  ADD             R4, R9, R4,LSL#3
1C88D4:  ADD             R1, R4, #0x9E0
1C88D8:  VLDR            S6, [R1]
1C88DC:  VADD.F32        S4, S6, S4
1C88E0:  VSTR            S4, [R1]
1C88E4:  ADD             R1, R4, R0
1C88E8:  VLDR            S4, [R5]
1C88EC:  ADD             R5, R5, #8
1C88F0:  VLDR            S6, [R1]
1C88F4:  VMUL.F32        S4, S4, S0
1C88F8:  VADD.F32        S4, S6, S4
1C88FC:  VSTR            S4, [R1]
1C8900:  BNE             loc_1C88B8
1C8904:  ADD             R1, R6, R6,LSL#3
1C8908:  LDR             R2, [SP,#0x198+var_14C]
1C890C:  LDR             R4, [R11,#arg_C]
1C8910:  MOV             R8, R3
1C8914:  ADD             R1, R2, R1,LSL#2
1C8918:  AND             R2, R3, #0x1F
1C891C:  ADD             R12, R12, #1
1C8920:  ADD             R6, R6, #1
1C8924:  ADD             R2, R9, R2,LSL#3
1C8928:  VLDR            S0, [R1,#0xB8]
1C892C:  ADD             R5, R2, #0x9E0
1C8930:  ADD             R2, R2, R0
1C8934:  VLDR            S2, [R1,#0xBC]
1C8938:  CMP             R12, R4
1C893C:  VLDR            S4, [R5]
1C8940:  VADD.F32        S0, S0, S4
1C8944:  VSTR            S0, [R1,#0xB8]
1C8948:  VLDR            S0, [R2]
1C894C:  VADD.F32        S0, S2, S0
1C8950:  VSTR            S0, [R1,#0xBC]
1C8954:  LDR             R1, [SP,#0x198+var_12C]
1C8958:  LDR             LR, [SP,#0x198+var_150]
1C895C:  ADD             R10, R10, R1
1C8960:  LDR             R3, [SP,#0x198+var_130]
1C8964:  LDR             R5, [SP,#0x198+var_138]
1C8968:  ADD             R7, R7, R10,LSR#14
1C896C:  BFC             R10, #0xE, #0x12
1C8970:  BNE             loc_1C8814
1C8974:  LDR             R1, [SP,#0x198+var_148]
1C8978:  LDR             R2, [SP,#0x198+var_168]
1C897C:  SUB             R6, R2, R1
1C8980:  LDR             R2, [SP,#0x198+var_15C]
1C8984:  SUB             R8, R2, R1
1C8988:  B               loc_1C8998
1C898C:  LDR             R3, [SP,#0x198+var_130]
1C8990:  MOVW            R0, #0x9E4
1C8994:  LDR             R6, [SP,#0x198+var_140]
1C8998:  LDR             R1, [R11,#arg_8]
1C899C:  LDR             R9, [SP,#0x198+var_170]
1C89A0:  CMP             R6, R1
1C89A4:  LDR             R1, [SP,#0x198+var_128]
1C89A8:  LDREQ           R3, [SP,#0x198+var_174]
1C89AC:  MOVWEQ          R2, #0x1E94
1C89B0:  LDREQ           R1, [SP,#0x198+var_128]
1C89B4:  SUB             R6, R6, R4
1C89B8:  ADDEQ           R2, R3, R2
1C89BC:  MULEQ           R1, R7, R1
1C89C0:  VLDREQ          S0, [R2]
1C89C4:  ADDEQ           R1, LR, R1,LSL#2
1C89C8:  ADDEQ           R1, R1, R5,LSL#2
1C89CC:  VLDREQ          S2, [R1]
1C89D0:  LDREQ           R1, [SP,#0x198+var_13C]
1C89D4:  VSUBEQ.F32      S0, S0, S2
1C89D8:  VLDREQ          S4, [R1]
1C89DC:  MOVWEQ          R1, #0x1E98
1C89E0:  ADDEQ           R1, R3, R1
1C89E4:  ANDEQ           R3, R8, #0x3F ; '?'
1C89E8:  VMULEQ.F32      S0, S0, S4
1C89EC:  VADDEQ.F32      S0, S0, S2
1C89F0:  VLDREQ          S2, [R1]
1C89F4:  LDREQ           R1, [SP,#0x198+var_130]
1C89F8:  ADDEQ           R1, R1, R5,LSL#8
1C89FC:  ADD             R5, R5, #1
1C8A00:  ADDEQ           R2, R1, #0xE0
1C8A04:  ADDEQ           R3, R2, R3,LSL#2
1C8A08:  VSUBEQ.F32      S2, S2, S0
1C8A0C:  VMULEQ.F32      S2, S2, S4
1C8A10:  VADDEQ.F32      S0, S2, S0
1C8A14:  VSTREQ          S0, [R3]
1C8A18:  LDREQ           R3, [SP,#0x198+var_154]
1C8A1C:  VLDREQ          S2, [SP,#0x198+var_124]
1C8A20:  SUBEQ           R3, R8, R3
1C8A24:  LDREQ           R12, [SP,#0x198+var_184]
1C8A28:  ANDEQ           R3, R3, #0x3F ; '?'
1C8A2C:  ADDEQ           R3, R2, R3,LSL#2
1C8A30:  VLDREQ          S0, [R3]
1C8A34:  ADDEQ           R3, R8, #1
1C8A38:  ANDEQ           R3, R3, #0x1F
1C8A3C:  VMULEQ.F32      S0, S2, S0
1C8A40:  ADDEQ           R1, R1, R3,LSL#3
1C8A44:  ADDEQ           R3, R1, #0x9E0
1C8A48:  ADDEQ           R1, R1, R0
1C8A4C:  VLDREQ          S2, [R3]
1C8A50:  LDREQ           R3, [SP,#0x198+var_134]
1C8A54:  VADDEQ.F32      S0, S0, S2
1C8A58:  VLDREQ          S2, [R12]
1C8A5C:  SUBEQ           R3, R8, R3
1C8A60:  ANDEQ           R3, R3, #0x3F ; '?'
1C8A64:  ADDEQ           R2, R2, R3,LSL#2
1C8A68:  LDREQ           R3, [SP,#0x198+var_130]
1C8A6C:  VADDEQ.F32      S0, S0, S2
1C8A70:  VLDREQ          S2, [R2]
1C8A74:  VSTREQ          S0, [R12]
1C8A78:  VLDREQ          S0, [SP,#0x198+var_120]
1C8A7C:  VMULEQ.F32      S0, S0, S2
1C8A80:  VLDREQ          S2, [R1]
1C8A84:  LDREQ           R1, [SP,#0x198+var_18C]
1C8A88:  VADDEQ.F32      S0, S0, S2
1C8A8C:  VLDREQ          S2, [R1]
1C8A90:  VADDEQ.F32      S0, S0, S2
1C8A94:  VSTREQ          S0, [R1]
1C8A98:  LDREQ           R1, [SP,#0x198+var_128]
1C8A9C:  LDR             R8, [SP,#0x198+var_178]
1C8AA0:  STR             R5, [SP,#0x198+var_138]
1C8AA4:  CMP             R5, R1
1C8AA8:  LDR             R12, [SP,#0x198+var_17C]
1C8AAC:  ADD             R8, R8, #0x100
1C8AB0:  LDR             R5, [SP,#0x198+var_144]
1C8AB4:  BNE             loc_1C8400
1C8AB8:  B               loc_1C8AC4
1C8ABC:  MOV             R7, #0
1C8AC0:  MOV             R10, R9
1C8AC4:  LDR             R0, [SP,#0x198+var_14C]
1C8AC8:  LDR             R0, [R0,#0x38]
1C8ACC:  STR             R0, [SP,#0x198+var_144]
1C8AD0:  CMP             R0, #0
1C8AD4:  BEQ             loc_1C8C94
1C8AD8:  MOV             R1, #0
1C8ADC:  MOVW            R12, #0x1EE8
1C8AE0:  ADD             R0, R1, R1,LSL#1
1C8AE4:  STR             R1, [SP,#0x198+var_140]
1C8AE8:  ADD             R8, R3, R0,LSL#4
1C8AEC:  MOVW            R0, #0x1EDC
1C8AF0:  LDR             R0, [R8,R0]
1C8AF4:  CMP             R0, #0
1C8AF8:  LDRNE           R1, [SP,#0x198+var_128]
1C8AFC:  CMPNE           R1, #0
1C8B00:  BEQ             loc_1C8C7C
1C8B04:  MOVW            R1, #0x40CC
1C8B08:  ADD             R1, R0, R1
1C8B0C:  STR             R1, [SP,#0x198+var_134]
1C8B10:  MOVW            R1, #0x1EE0
1C8B14:  ADD             R1, R8, R1
1C8B18:  VLDR            S0, [R1]
1C8B1C:  MOVW            R1, #0x40C8
1C8B20:  ADD             R1, R0, R1
1C8B24:  STR             R1, [SP,#0x198+var_138]
1C8B28:  MOVW            R1, #0x1EE4
1C8B2C:  ADD             R3, R8, R1
1C8B30:  MOV             R1, #0
1C8B34:  ADD             R0, R0, #0xC8
1C8B38:  STR             R0, [SP,#0x198+var_13C]
1C8B3C:  CMP             R6, #0
1C8B40:  ADDEQ           R0, LR, R1,LSL#2
1C8B44:  VLDREQ          S6, [R3]
1C8B48:  MOVEQ           R6, #0
1C8B4C:  VLDREQ          S2, [R0]
1C8B50:  ADDEQ           R0, R8, R1,LSL#2
1C8B54:  ADDEQ           R0, R0, R12
1C8B58:  VLDREQ          S4, [R0]
1C8B5C:  LDREQ           R0, [SP,#0x198+var_138]
1C8B60:  VSUBEQ.F32      S4, S2, S4
1C8B64:  VMULEQ.F32      S4, S4, S6
1C8B68:  VSUBEQ.F32      S2, S4, S2
1C8B6C:  VLDREQ          S4, [R0]
1C8B70:  VMULEQ.F32      S2, S2, S0
1C8B74:  VADDEQ.F32      S2, S4, S2
1C8B78:  VSTREQ          S2, [R0]
1C8B7C:  CMP             R4, #0
1C8B80:  BEQ             loc_1C8C18
1C8B84:  LDR             R0, [SP,#0x198+var_13C]
1C8B88:  ADD             R2, R8, R1,LSL#2
1C8B8C:  MOV             R10, R9
1C8B90:  MOVW            R5, #0x1EE8
1C8B94:  MOV             R12, LR
1C8B98:  ADD             LR, R2, R5
1C8B9C:  MOV             R2, R4
1C8BA0:  LDR             R9, [SP,#0x198+var_12C]
1C8BA4:  LDR             R4, [SP,#0x198+var_128]
1C8BA8:  ADD             R0, R0, R6,LSL#2
1C8BAC:  MOV             R7, #0
1C8BB0:  MUL             R5, R7, R4
1C8BB4:  VLDR            S2, [LR]
1C8BB8:  VLDR            S6, [R3]
1C8BBC:  ADD             R10, R10, R9
1C8BC0:  SUBS            R2, R2, #1
1C8BC4:  ADD             R7, R7, R10,LSR#14
1C8BC8:  BFC             R10, #0xE, #0x12
1C8BCC:  ADD             R5, R12, R5,LSL#2
1C8BD0:  ADD             R5, R5, R1,LSL#2
1C8BD4:  VLDR            S4, [R5]
1C8BD8:  VSUB.F32        S2, S2, S4
1C8BDC:  VMUL.F32        S2, S2, S6
1C8BE0:  VADD.F32        S2, S2, S4
1C8BE4:  VMUL.F32        S4, S2, S0
1C8BE8:  VSTR            S2, [LR]
1C8BEC:  VLDR            S2, [R0]
1C8BF0:  VADD.F32        S2, S4, S2
1C8BF4:  VSTR            S2, [R0]
1C8BF8:  ADD             R0, R0, #4
1C8BFC:  BNE             loc_1C8BB0
1C8C00:  LDR             R4, [R11,#arg_C]
1C8C04:  MOV             LR, R12
1C8C08:  LDR             R9, [SP,#0x198+var_170]
1C8C0C:  MOVW            R12, #0x1EE8
1C8C10:  ADD             R6, R6, R4
1C8C14:  B               loc_1C8C20
1C8C18:  MOV             R7, #0
1C8C1C:  MOV             R10, R9
1C8C20:  LDR             R0, [R11,#arg_8]
1C8C24:  LDR             R5, [SP,#0x198+var_128]
1C8C28:  CMP             R6, R0
1C8C2C:  SUB             R6, R6, R4
1C8C30:  ADDEQ           R2, R8, R1,LSL#2
1C8C34:  VLDREQ          S6, [R3]
1C8C38:  MULEQ           R0, R7, R5
1C8C3C:  ADDEQ           R2, R2, R12
1C8C40:  VLDREQ          S2, [R2]
1C8C44:  ADDEQ           R0, LR, R0,LSL#2
1C8C48:  ADDEQ           R0, R0, R1,LSL#2
1C8C4C:  ADD             R1, R1, #1
1C8C50:  VLDREQ          S4, [R0]
1C8C54:  LDREQ           R0, [SP,#0x198+var_134]
1C8C58:  VSUBEQ.F32      S2, S2, S4
1C8C5C:  VMULEQ.F32      S2, S2, S6
1C8C60:  VADDEQ.F32      S2, S2, S4
1C8C64:  VLDREQ          S4, [R0]
1C8C68:  VMULEQ.F32      S2, S2, S0
1C8C6C:  VADDEQ.F32      S2, S2, S4
1C8C70:  VSTREQ          S2, [R0]
1C8C74:  CMP             R1, R5
1C8C78:  BNE             loc_1C8B3C
1C8C7C:  LDR             R1, [SP,#0x198+var_140]
1C8C80:  LDR             R0, [SP,#0x198+var_144]
1C8C84:  LDR             R3, [SP,#0x198+var_130]
1C8C88:  ADD             R1, R1, #1
1C8C8C:  CMP             R1, R0
1C8C90:  BCC             loc_1C8AE0
1C8C94:  LDR             R1, [SP,#0x198+var_194]
1C8C98:  LDR             R0, [R1]
1C8C9C:  ADD             R0, R0, R7
1C8CA0:  STR             R0, [R1]
1C8CA4:  LDR             R0, [R11,#arg_0]
1C8CA8:  STR             R10, [R0]
1C8CAC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C8CBC)
1C8CB0:  LDR             R1, [R11,#var_24]
1C8CB4:  LDR             R0, [PC,R0]; __stack_chk_guard
1C8CB8:  LDR             R0, [R0]
1C8CBC:  SUBS            R0, R0, R1
1C8CC0:  SUBEQ           SP, R11, #0x1C
1C8CC4:  POPEQ           {R4-R11,PC}
1C8CC8:  BL              __stack_chk_fail
