; =========================================================
; Game Engine Function: _ZN14CEntityScannerC2Ev
; Address            : 0x4BA630 - 0x4BA666
; =========================================================

4BA630:  LDR             R1, =(_ZTV14CEntityScanner_ptr - 0x4BA63E)
4BA632:  VMOV.I32        Q8, #0
4BA636:  ADD.W           R2, R0, #0x40 ; '@'
4BA63A:  ADD             R1, PC; _ZTV14CEntityScanner_ptr
4BA63C:  VST1.32         {D16-D17}, [R2]
4BA640:  ADD.W           R2, R0, #0x34 ; '4'
4BA644:  LDR             R1, [R1]; `vtable for'CEntityScanner ...
4BA646:  VST1.32         {D16-D17}, [R2]
4BA64A:  ADD.W           R2, R0, #0x24 ; '$'
4BA64E:  ADDS            R1, #8
4BA650:  VST1.32         {D16-D17}, [R2]
4BA654:  MOVS            R2, #0x10
4BA656:  STR             R1, [R0]
4BA658:  ADDS            R1, R0, #4
4BA65A:  VST1.32         {D16-D17}, [R1]!
4BA65E:  STR             R2, [R0,#8]
4BA660:  VST1.32         {D16-D17}, [R1]
4BA664:  BX              LR
