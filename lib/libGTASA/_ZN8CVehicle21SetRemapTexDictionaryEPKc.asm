; =========================================================
; Game Engine Function: _ZN8CVehicle21SetRemapTexDictionaryEPKc
; Address            : 0x581E20 - 0x581E3E
; =========================================================

581E20:  LDR.W           R2, [R0,#0x5A8]
581E24:  CMP             R2, R1
581E26:  IT EQ
581E28:  BXEQ            LR
581E2A:  CMP             R1, #0
581E2C:  ITTT EQ
581E2E:  MOVEQ           R2, #0
581E30:  STREQ.W         R2, [R0,#0x5A8]
581E34:  STREQ.W         R2, [R0,#0x5B0]
581E38:  STR.W           R1, [R0,#0x5AC]
581E3C:  BX              LR
