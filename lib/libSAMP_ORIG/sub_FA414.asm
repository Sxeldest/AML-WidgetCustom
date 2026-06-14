; =========================================================
; Game Engine Function: sub_FA414
; Address            : 0xFA414 - 0xFA452
; =========================================================

FA414:  PUSH            {R4-R7,LR}
FA416:  ADD             R7, SP, #0xC
FA418:  PUSH.W          {R8}
FA41C:  LDR.W           R8, [R7,#n]
FA420:  CMP.W           R8, #0
FA424:  BEQ             loc_FA448
FA426:  CMP             R3, R1
FA428:  IT CC
FA42A:  ADDCC           R1, R3, #1
FA42C:  SUBS            R5, R0, #4
FA42E:  MOV             R4, R2
FA430:  LSLS            R6, R1, #2
FA432:  CBZ             R6, loc_FA448
FA434:  ADDS            R2, R5, R6
FA436:  MOV             R0, R4; int
FA438:  MOV             R1, R8; n
FA43A:  BLX             j__ZNSt6__ndk111char_traitsIwE4findEPKwjRS2_; std::char_traits<wchar_t>::find(wchar_t const*,uint,wchar_t const&)
FA43E:  SUBS            R6, #4
FA440:  CMP             R0, #0
FA442:  BEQ             loc_FA432
FA444:  ASRS            R0, R6, #2
FA446:  B               loc_FA44C
FA448:  MOV.W           R0, #0xFFFFFFFF
FA44C:  POP.W           {R8}
FA450:  POP             {R4-R7,PC}
