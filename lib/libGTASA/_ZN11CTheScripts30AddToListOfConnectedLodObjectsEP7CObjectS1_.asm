; =========================================================
; Game Engine Function: _ZN11CTheScripts30AddToListOfConnectedLodObjectsEP7CObjectS1_
; Address            : 0x335540 - 0x33569E
; =========================================================

335540:  PUSH            {R4-R7,LR}
335542:  ADD             R7, SP, #0xC
335544:  PUSH.W          {R8-R11}
335548:  LDR             R2, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x335558)
33554A:  MOV             R5, #0xD8FD8FD9
335552:  LDR             R6, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x33555A)
335554:  ADD             R2, PC; _ZN6CPools14ms_pObjectPoolE_ptr
335556:  ADD             R6, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
335558:  LDR             R2, [R2]; CPools::ms_pObjectPool ...
33555A:  LDR             R2, [R2]; CPools::ms_pObjectPool
33555C:  LDRD.W          R3, R2, [R2]
335560:  SUBS            R1, R1, R3
335562:  SUBS            R0, R0, R3
335564:  LDR             R3, [R6]; CTheScripts::ScriptConnectLodsObjects ...
335566:  ASRS            R1, R1, #2
335568:  ASRS            R0, R0, #2
33556A:  MULS            R1, R5
33556C:  MULS            R5, R0
33556E:  LDRB            R0, [R2,R1]
335570:  LDRB            R6, [R2,R5]
335572:  ORR.W           R0, R0, R1,LSL#8
335576:  LDR             R2, [R3]; CTheScripts::ScriptConnectLodsObjects
335578:  ORR.W           R1, R6, R5,LSL#8
33557C:  CMP             R2, R1
33557E:  ITT EQ
335580:  LDREQ           R3, [R3,#(dword_8199EC - 0x8199E8)]
335582:  CMPEQ           R3, R0
335584:  BEQ.W           loc_335698
335588:  LDR             R3, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x33558E)
33558A:  ADD             R3, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
33558C:  LDR             R6, [R3]; CTheScripts::ScriptConnectLodsObjects ...
33558E:  LDR             R3, [R6,#(dword_8199F0 - 0x8199E8)]
335590:  CMP             R3, R1
335592:  ITT EQ
335594:  LDREQ           R6, [R6,#(dword_8199F4 - 0x8199E8)]
335596:  CMPEQ           R6, R0
335598:  BEQ             loc_335698
33559A:  LDR             R6, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x3355A0)
33559C:  ADD             R6, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
33559E:  LDR             R6, [R6]; CTheScripts::ScriptConnectLodsObjects ...
3355A0:  LDR.W           R12, [R6,#(dword_8199F8 - 0x8199E8)]
3355A4:  CMP             R12, R1
3355A6:  ITT EQ
3355A8:  LDREQ           R6, [R6,#(dword_8199FC - 0x8199E8)]
3355AA:  CMPEQ           R6, R0
3355AC:  BEQ             loc_335698
3355AE:  LDR             R6, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x3355B4)
3355B0:  ADD             R6, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
3355B2:  LDR             R4, [R6]; CTheScripts::ScriptConnectLodsObjects ...
3355B4:  LDR.W           LR, [R4,#(dword_819A00 - 0x8199E8)]
3355B8:  CMP             LR, R1
3355BA:  ITT EQ
3355BC:  LDREQ           R4, [R4,#(dword_819A04 - 0x8199E8)]
3355BE:  CMPEQ           R4, R0
3355C0:  BEQ             loc_335698
3355C2:  LDR             R4, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x3355C8)
3355C4:  ADD             R4, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
3355C6:  LDR             R5, [R4]; CTheScripts::ScriptConnectLodsObjects ...
3355C8:  LDR             R4, [R5,#(dword_819A08 - 0x8199E8)]
3355CA:  CMP             R4, R1
3355CC:  ITT EQ
3355CE:  LDREQ           R5, [R5,#(dword_819A0C - 0x8199E8)]
3355D0:  CMPEQ           R5, R0
3355D2:  BEQ             loc_335698
3355D4:  LDR             R5, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x3355DA)
3355D6:  ADD             R5, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
3355D8:  LDR             R6, [R5]; CTheScripts::ScriptConnectLodsObjects ...
3355DA:  LDR             R5, [R6,#(dword_819A10 - 0x8199E8)]
3355DC:  CMP             R5, R1
3355DE:  ITT EQ
3355E0:  LDREQ           R6, [R6,#(dword_819A14 - 0x8199E8)]
3355E2:  CMPEQ           R6, R0
3355E4:  BEQ             loc_335698
3355E6:  LDR             R6, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x3355EC)
3355E8:  ADD             R6, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
3355EA:  LDR             R6, [R6]; CTheScripts::ScriptConnectLodsObjects ...
3355EC:  LDR.W           R11, [R6,#(dword_819A18 - 0x8199E8)]
3355F0:  CMP             R11, R1
3355F2:  ITT EQ
3355F4:  LDREQ           R6, [R6,#(dword_819A1C - 0x8199E8)]
3355F6:  CMPEQ           R6, R0
3355F8:  BEQ             loc_335698
3355FA:  LDR             R6, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x335600)
3355FC:  ADD             R6, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
3355FE:  LDR             R6, [R6]; CTheScripts::ScriptConnectLodsObjects ...
335600:  LDR.W           R8, [R6,#(dword_819A20 - 0x8199E8)]
335604:  CMP             R8, R1
335606:  ITT EQ
335608:  LDREQ           R6, [R6,#(dword_819A24 - 0x8199E8)]
33560A:  CMPEQ           R6, R0
33560C:  BEQ             loc_335698
33560E:  LDR             R6, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x335614)
335610:  ADD             R6, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
335612:  LDR             R6, [R6]; CTheScripts::ScriptConnectLodsObjects ...
335614:  LDR.W           R9, [R6,#(dword_819A28 - 0x8199E8)]
335618:  CMP             R9, R1
33561A:  ITT EQ
33561C:  LDREQ           R6, [R6,#(dword_819A2C - 0x8199E8)]
33561E:  CMPEQ           R6, R0
335620:  BEQ             loc_335698
335622:  LDR             R6, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x335628)
335624:  ADD             R6, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
335626:  LDR             R6, [R6]; CTheScripts::ScriptConnectLodsObjects ...
335628:  LDR.W           R10, [R6,#(dword_819A30 - 0x8199E8)]
33562C:  CMP             R10, R1
33562E:  ITT EQ
335630:  LDREQ           R6, [R6,#(dword_819A34 - 0x8199E8)]
335632:  CMPEQ           R6, R0
335634:  BEQ             loc_335698
335636:  ADDS            R2, #1
335638:  MOV.W           R2, #0
33563C:  IT NE
33563E:  MOVNE.W         R2, #0xFFFFFFFF
335642:  ADDS            R3, #1
335644:  IT EQ
335646:  MOVEQ           R2, #1
335648:  ADDS.W          R3, R12, #1
33564C:  IT EQ
33564E:  MOVEQ           R2, #2
335650:  ADDS.W          R3, LR, #1
335654:  IT EQ
335656:  MOVEQ           R2, #3
335658:  ADDS            R3, R4, #1
33565A:  IT EQ
33565C:  MOVEQ           R2, #4
33565E:  ADDS            R3, R5, #1
335660:  IT EQ
335662:  MOVEQ           R2, #5
335664:  ADDS.W          R3, R11, #1
335668:  IT EQ
33566A:  MOVEQ           R2, #6
33566C:  ADDS.W          R3, R8, #1
335670:  IT EQ
335672:  MOVEQ           R2, #7
335674:  ADDS.W          R3, R9, #1
335678:  IT EQ
33567A:  MOVEQ           R2, #8
33567C:  ADDS.W          R3, R10, #1
335680:  IT EQ
335682:  MOVEQ           R2, #9
335684:  ADDS            R3, R2, #1
335686:  BEQ             loc_335698
335688:  LDR             R3, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x33568E)
33568A:  ADD             R3, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
33568C:  LDR             R3, [R3]; CTheScripts::ScriptConnectLodsObjects ...
33568E:  STR.W           R1, [R3,R2,LSL#3]
335692:  ADD.W           R1, R3, R2,LSL#3
335696:  STR             R0, [R1,#(dword_819A34 - 0x819A30)]
335698:  POP.W           {R8-R11}
33569C:  POP             {R4-R7,PC}
