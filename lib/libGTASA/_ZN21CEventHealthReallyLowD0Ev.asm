; =========================================================
; Game Engine Function: _ZN21CEventHealthReallyLowD0Ev
; Address            : 0x37840C - 0x378438
; =========================================================

37840C:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378412)
37840E:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378410:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378412:  LDR             R1, [R1]; CPools::ms_pEventPool
378414:  LDRD.W          R2, R3, [R1]
378418:  SUBS            R0, R0, R2
37841A:  MOV             R2, #0xF0F0F0F1
378422:  ASRS            R0, R0, #2
378424:  MULS            R0, R2
378426:  LDRB            R2, [R3,R0]
378428:  ORR.W           R2, R2, #0x80
37842C:  STRB            R2, [R3,R0]
37842E:  LDR             R2, [R1,#0xC]
378430:  CMP             R0, R2
378432:  IT LT
378434:  STRLT           R0, [R1,#0xC]
378436:  BX              LR
