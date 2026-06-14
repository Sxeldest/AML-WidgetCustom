; =========================================================
; Game Engine Function: _ZN11CMenuSystem5InputEh
; Address            : 0x43C2F8 - 0x43C314
; =========================================================

43C2F8:  LDR             R1, =(MenuNumber_ptr - 0x43C2FE)
43C2FA:  ADD             R1, PC; MenuNumber_ptr
43C2FC:  LDR             R1, [R1]; MenuNumber
43C2FE:  LDR.W           R1, [R1,R0,LSL#2]
43C302:  LDRB.W          R1, [R1,#0x40]; unsigned __int8
43C306:  CMP             R1, #1
43C308:  IT EQ
43C30A:  BEQ             _ZN11CMenuSystem13InputGridMenuEh; CMenuSystem::InputGridMenu(uchar)
43C30C:  CMP             R1, #0
43C30E:  IT NE
43C310:  BXNE            LR
43C312:  B               _ZN11CMenuSystem17InputStandardMenuEh; CMenuSystem::InputStandardMenu(uchar)
