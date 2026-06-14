; =========================================================
; Game Engine Function: _ZN11CMenuSystem16CheckForSelectedEh
; Address            : 0x43C344 - 0x43C368
; =========================================================

43C344:  LDR             R1, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43C34A)
43C346:  ADD             R1, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43C348:  LDR             R1, [R1]; CMenuSystem::MenuInUse ...
43C34A:  LDRB            R1, [R1,R0]
43C34C:  CMP             R1, #0
43C34E:  ITTT EQ
43C350:  MOVEQ           R0, #0x9D
43C352:  SXTBEQ          R0, R0
43C354:  BXEQ            LR
43C356:  LDR             R1, =(MenuNumber_ptr - 0x43C35C)
43C358:  ADD             R1, PC; MenuNumber_ptr
43C35A:  LDR             R1, [R1]; MenuNumber
43C35C:  LDR.W           R0, [R1,R0,LSL#2]
43C360:  LDRB.W          R0, [R0,#0x415]
43C364:  SXTB            R0, R0
43C366:  BX              LR
