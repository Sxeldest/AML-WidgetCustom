; =========================================================
; Game Engine Function: _ZN6CGlass12FindFreePaneEv
; Address            : 0x5ABFB4 - 0x5ABFD4
; =========================================================

5ABFB4:  LDR             R0, =(_ZN6CGlass11aGlassPanesE_ptr - 0x5ABFBE)
5ABFB6:  MOV.W           R1, #0xFFFFFFFF
5ABFBA:  ADD             R0, PC; _ZN6CGlass11aGlassPanesE_ptr
5ABFBC:  LDR             R0, [R0]; CGlass::aGlassPanes ...
5ABFBE:  LDRB.W          R2, [R0,#0x6D]
5ABFC2:  CMP             R2, #0
5ABFC4:  IT EQ
5ABFC6:  BXEQ            LR
5ABFC8:  ADDS            R1, #1
5ABFCA:  ADDS            R0, #0x70 ; 'p'
5ABFCC:  CMP             R1, #0x2C ; ','
5ABFCE:  BLT             loc_5ABFBE
5ABFD0:  MOVS            R0, #0
5ABFD2:  BX              LR
