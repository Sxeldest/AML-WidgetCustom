; =========================================================
; Game Engine Function: _ZN11CWaterLevel26AddToQuadsAndTrianglesListEiiij
; Address            : 0x59430C - 0x5943A0
; =========================================================

59430C:  PUSH            {R4,R6,R7,LR}
59430E:  ADD             R7, SP, #8
594310:  LDR.W           R12, =(_ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr - 0x59431C)
594314:  ADD.W           R0, R0, R0,LSL#1
594318:  ADD             R12, PC; _ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr
59431A:  LDR.W           R12, [R12]; CWaterLevel::m_QuadsAndTrianglesInEachBlock ...
59431E:  ADD.W           R0, R12, R0,LSL#3
594322:  ADD.W           R12, R0, R1,LSL#1
594326:  LDRH.W          LR, [R0,R1,LSL#1]
59432A:  MOV.W           R0, #0xFFFFFFFF
59432E:  ADD.W           R0, R0, LR,LSR#14
594332:  CMP             R0, #2
594334:  BCS             loc_594362
594336:  LDR             R0, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x594342)
594338:  ORR.W           R2, R2, R3,LSL#14
59433C:  LDR             R1, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x594344)
59433E:  ADD             R0, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
594340:  ADD             R1, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
594342:  LDR             R0, [R0]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
594344:  LDR             R4, [R1]; CWaterLevel::m_QuadsAndTrianglesList ...
594346:  LDR             R1, [R0]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList
594348:  ADD.W           R0, R4, R1,LSL#1
59434C:  STRH.W          LR, [R4,R1,LSL#1]
594350:  STRH            R2, [R0,#2]
594352:  MOVS            R2, #0
594354:  STRH            R2, [R0,#4]
594356:  ORR.W           R0, R1, #0xC000
59435A:  STRH.W          R0, [R12]
59435E:  MOVS            R0, #3
594360:  B               loc_594394
594362:  MOVS.W          R0, LR,LSR#14
594366:  ITTT EQ
594368:  ORREQ.W         R0, R2, R3,LSL#14
59436C:  STRHEQ.W        R0, [R12]
594370:  POPEQ           {R4,R6,R7,PC}
594372:  LDR             R0, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x59437E)
594374:  ORR.W           R2, R2, R3,LSL#14
594378:  LDR             R1, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x594380)
59437A:  ADD             R0, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
59437C:  ADD             R1, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
59437E:  LDR             R0, [R0]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
594380:  LDR             R4, [R1]; CWaterLevel::m_QuadsAndTrianglesList ...
594382:  LDR             R1, [R0]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList
594384:  MOVS            R0, #0
594386:  STRH.W          R0, [R4,R1,LSL#1]
59438A:  ADD.W           R0, R4, R1,LSL#1
59438E:  STRH.W          R2, [R0,#-2]
594392:  MOVS            R0, #1
594394:  LDR             R2, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x59439C)
594396:  ADD             R0, R1
594398:  ADD             R2, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
59439A:  LDR             R2, [R2]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
59439C:  STR             R0, [R2]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList
59439E:  POP             {R4,R6,R7,PC}
