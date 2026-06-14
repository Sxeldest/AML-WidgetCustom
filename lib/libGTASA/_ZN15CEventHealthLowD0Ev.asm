; =========================================================
; Game Engine Function: _ZN15CEventHealthLowD0Ev
; Address            : 0x378340 - 0x37836C
; =========================================================

378340:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378346)
378342:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378344:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378346:  LDR             R1, [R1]; CPools::ms_pEventPool
378348:  LDRD.W          R2, R3, [R1]
37834C:  SUBS            R0, R0, R2
37834E:  MOV             R2, #0xF0F0F0F1
378356:  ASRS            R0, R0, #2
378358:  MULS            R0, R2
37835A:  LDRB            R2, [R3,R0]
37835C:  ORR.W           R2, R2, #0x80
378360:  STRB            R2, [R3,R0]
378362:  LDR             R2, [R1,#0xC]
378364:  CMP             R0, R2
378366:  IT LT
378368:  STRLT           R0, [R1,#0xC]
37836A:  BX              LR
