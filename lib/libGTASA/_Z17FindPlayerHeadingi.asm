; =========================================================
; Game Engine Function: _Z17FindPlayerHeadingi
; Address            : 0x40BDE0 - 0x40BE44
; =========================================================

40BDE0:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40BDEA)
40BDE2:  MOV.W           R2, #0x194
40BDE6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40BDE8:  LDR             R1, [R1]; CWorld::Players ...
40BDEA:  MLA.W           R1, R0, R2, R1
40BDEE:  LDR.W           R1, [R1,#0xB0]
40BDF2:  CBNZ            R1, loc_40BE2E
40BDF4:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BDFE)
40BDF6:  CMP             R0, #0
40BDF8:  LDR             R3, =(_ZN6CWorld7PlayersE_ptr - 0x40BE00)
40BDFA:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BDFC:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
40BDFE:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
40BE00:  LDR             R1, [R1]; CWorld::PlayerInFocus
40BE02:  IT GE
40BE04:  MOVGE           R1, R0
40BE06:  MULS            R1, R2
40BE08:  LDR             R2, [R3]; CWorld::Players ...
40BE0A:  LDR             R1, [R2,R1]
40BE0C:  CMP             R1, #0
40BE0E:  ITT NE
40BE10:  LDRBNE.W        R2, [R1,#0x485]
40BE14:  MOVSNE.W        R2, R2,LSL#31
40BE18:  BEQ             loc_40BE20
40BE1A:  LDR.W           R1, [R1,#0x590]
40BE1E:  CBNZ            R1, loc_40BE2E
40BE20:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40BE2C)
40BE22:  MOV.W           R2, #0x194
40BE26:  MULS            R0, R2
40BE28:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40BE2A:  LDR             R1, [R1]; CWorld::Players ...
40BE2C:  LDR             R1, [R1,R0]
40BE2E:  LDR             R0, [R1,#0x14]
40BE30:  CMP             R0, #0
40BE32:  ITTT NE
40BE34:  LDRDNE.W        R2, R1, [R0,#0x10]; x
40BE38:  EORNE.W         R0, R2, #0x80000000; y
40BE3C:  BNE.W           j_atan2f
40BE40:  LDR             R0, [R1,#0x10]
40BE42:  BX              LR
