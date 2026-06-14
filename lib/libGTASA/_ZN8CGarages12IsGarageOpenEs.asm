; =========================================================
; Game Engine Function: _ZN8CGarages12IsGarageOpenEs
; Address            : 0x3139A4 - 0x3139C6
; =========================================================

3139A4:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x3139AC)
3139A6:  MOVS            R2, #0xD8
3139A8:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
3139AA:  LDR             R1, [R1]; CGarages::aGarages ...
3139AC:  SMLABB.W        R0, R0, R2, R1
3139B0:  LDRB.W          R1, [R0,#0x4D]
3139B4:  CMP             R1, #1
3139B6:  ITT EQ
3139B8:  MOVEQ           R0, #1
3139BA:  BXEQ            LR
3139BC:  MOVS            R0, #0
3139BE:  CMP             R1, #4
3139C0:  IT EQ
3139C2:  MOVEQ           R0, #1
3139C4:  BX              LR
