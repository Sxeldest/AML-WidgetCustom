; =========================================================
; Game Engine Function: _ZN11CMenuSystem7DisplayEhh
; Address            : 0x43C2D4 - 0x43C2F2
; =========================================================

43C2D4:  LDR             R2, =(MenuNumber_ptr - 0x43C2DA)
43C2D6:  ADD             R2, PC; MenuNumber_ptr
43C2D8:  LDR             R2, [R2]; MenuNumber
43C2DA:  LDR.W           R2, [R2,R0,LSL#2]
43C2DE:  LDRB.W          R2, [R2,#0x40]; unsigned __int8
43C2E2:  CMP             R2, #1
43C2E4:  IT EQ
43C2E6:  BEQ.W           _ZN11CMenuSystem15DisplayGridMenuEhh; CMenuSystem::DisplayGridMenu(uchar,uchar)
43C2EA:  CMP             R2, #0
43C2EC:  IT NE
43C2EE:  BXNE            LR
43C2F0:  B               _ZN11CMenuSystem19DisplayStandardMenuEhh; CMenuSystem::DisplayStandardMenu(uchar,uchar)
