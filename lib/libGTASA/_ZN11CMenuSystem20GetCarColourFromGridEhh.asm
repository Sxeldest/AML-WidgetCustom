; =========================================================
; Game Engine Function: _ZN11CMenuSystem20GetCarColourFromGridEhh
; Address            : 0x43DBDC - 0x43DBEA
; =========================================================

43DBDC:  LDR             R2, =(MenuNumber_ptr - 0x43DBE2)
43DBDE:  ADD             R2, PC; MenuNumber_ptr
43DBE0:  LDR             R2, [R2]; MenuNumber
43DBE2:  LDR.W           R0, [R2,R0,LSL#2]
43DBE6:  LDRB            R0, [R0,R1]
43DBE8:  BX              LR
