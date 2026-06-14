; =========================================================
; Game Engine Function: sub_1153F4
; Address            : 0x1153F4 - 0x11545C
; =========================================================

1153F4:  PUSH            {R4-R7,LR}
1153F6:  ADD             R7, SP, #0xC
1153F8:  PUSH.W          {R8}
1153FC:  ADD.W           R8, R0, #4
115400:  MOV             R6, R0
115402:  MOV             R5, R1
115404:  MOV             R0, R8; this
115406:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
11540A:  LDR             R4, [R5,#4]
11540C:  ADD.W           R0, R6, #8
115410:  BL              sub_111E0C
115414:  MOV             R5, R0
115416:  LDR             R0, [R0]
115418:  LDR             R1, [R5,#4]
11541A:  LDR.W           R2, [R0,R4,LSL#3]
11541E:  LDR.W           R3, [R1,#-8]
115422:  STR.W           R3, [R0,R4,LSL#3]
115426:  ADD.W           R0, R0, R4,LSL#3
11542A:  STR.W           R2, [R1,#-8]
11542E:  LDR.W           R2, [R1,#-4]
115432:  LDR             R3, [R0,#4]
115434:  STR             R2, [R0,#4]
115436:  STR.W           R3, [R1,#-4]
11543A:  LDRD.W          R0, R1, [R5]
11543E:  LDR.W           R0, [R0,R4,LSL#3]
115442:  STR             R4, [R0,#4]
115444:  SUB.W           R0, R1, #8
115448:  BL              sub_111CE6
11544C:  STR             R0, [R5,#4]
11544E:  MOV             R0, R8
115450:  POP.W           {R8}
115454:  POP.W           {R4-R7,LR}
115458:  B.W             sub_224304
