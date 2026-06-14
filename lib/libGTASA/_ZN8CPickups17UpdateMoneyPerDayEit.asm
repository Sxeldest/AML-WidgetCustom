; =========================================================
; Game Engine Function: _ZN8CPickups17UpdateMoneyPerDayEit
; Address            : 0x31F534 - 0x31F55C
; =========================================================

31F534:  ADDS            R2, R0, #1
31F536:  BEQ             locret_31F55A
31F538:  LDR             R2, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F53E)
31F53A:  ADD             R2, PC; _ZN8CPickups8aPickUpsE_ptr
31F53C:  LDR             R3, [R2]; CPickups::aPickUps ...
31F53E:  UXTH            R2, R0
31F540:  ADD.W           R3, R3, R2,LSL#5
31F544:  LDRH            R3, [R3,#0x1A]
31F546:  CMP.W           R3, R0,LSR#16
31F54A:  IT NE
31F54C:  BXNE            LR
31F54E:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F554)
31F550:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31F552:  LDR             R0, [R0]; CPickups::aPickUps ...
31F554:  ADD.W           R0, R0, R2,LSL#5
31F558:  STRH            R1, [R0,#0x16]
31F55A:  BX              LR
