; =========================================================
; Game Engine Function: _ZN11CMenuSystem17IsCarColourInGridEhh
; Address            : 0x43DC14 - 0x43DC38
; =========================================================

43DC14:  LDR             R2, =(MenuNumber_ptr - 0x43DC1A)
43DC16:  ADD             R2, PC; MenuNumber_ptr
43DC18:  LDR             R3, [R2]; MenuNumber
43DC1A:  MOVS            R2, #0
43DC1C:  LDR.W           R0, [R3,R0,LSL#2]
43DC20:  LDRB            R3, [R0,R2]
43DC22:  CMP             R3, R1
43DC24:  ITT EQ
43DC26:  MOVEQ           R0, #1
43DC28:  BXEQ            LR
43DC2A:  ADDS            R3, R2, #1
43DC2C:  CMP             R2, #0x3E ; '>'
43DC2E:  MOV             R2, R3
43DC30:  ITT GT
43DC32:  MOVGT           R0, #0
43DC34:  BXGT            LR
43DC36:  B               loc_43DC20
