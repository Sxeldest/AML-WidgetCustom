; =========================================================
; Game Engine Function: sub_16F2AC
; Address            : 0x16F2AC - 0x16F2FA
; =========================================================

16F2AC:  AND.W           R3, R1, #0x3000000
16F2B0:  STRD.W          R2, R0, [R0,#0x2F8]
16F2B4:  CMP.W           R3, #0x1000000
16F2B8:  STRD.W          R0, R0, [R0,#0x300]
16F2BC:  BNE             loc_16F2C8
16F2BE:  CBZ             R2, loc_16F2C8
16F2C0:  LDR.W           R3, [R2,#0x2FC]
16F2C4:  STR.W           R3, [R0,#0x2FC]
16F2C8:  TST.W           R1, #0x5000000
16F2CC:  IT NE
16F2CE:  CMPNE           R2, #0
16F2D0:  BEQ             loc_16F2E0
16F2D2:  ANDS.W          R1, R1, #0x8000000
16F2D6:  ITT EQ
16F2D8:  LDREQ.W         R1, [R2,#0x300]
16F2DC:  STREQ.W         R1, [R0,#0x300]
16F2E0:  LDRB            R1, [R0,#0xA]
16F2E2:  LSLS            R1, R1, #0x18
16F2E4:  IT PL
16F2E6:  BXPL            LR
16F2E8:  LDRB            R1, [R2,#0xA]
16F2EA:  LSLS            R1, R1, #0x18
16F2EC:  BPL             loc_16F2F4
16F2EE:  LDR.W           R2, [R2,#0x2F8]
16F2F2:  B               loc_16F2E8
16F2F4:  STR.W           R2, [R0,#0x304]
16F2F8:  BX              LR
