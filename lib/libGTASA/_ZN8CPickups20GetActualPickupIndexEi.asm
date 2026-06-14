; =========================================================
; Game Engine Function: _ZN8CPickups20GetActualPickupIndexEi
; Address            : 0x31F50C - 0x31F530
; =========================================================

31F50C:  MOV             R1, R0
31F50E:  ADDS            R0, R1, #1
31F510:  MOV.W           R0, #0xFFFFFFFF
31F514:  IT EQ
31F516:  BXEQ            LR
31F518:  LDR             R2, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F520)
31F51A:  UXTH            R3, R1
31F51C:  ADD             R2, PC; _ZN8CPickups8aPickUpsE_ptr
31F51E:  LDR             R2, [R2]; CPickups::aPickUps ...
31F520:  ADD.W           R2, R2, R3,LSL#5
31F524:  LDRH            R2, [R2,#0x1A]
31F526:  CMP.W           R2, R1,LSR#16
31F52A:  IT EQ
31F52C:  MOVEQ           R0, R3
31F52E:  BX              LR
