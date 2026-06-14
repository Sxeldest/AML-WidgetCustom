; =========================================================
; Game Engine Function: _ZN25CAEWaterCannonAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x3B94BE - 0x3B94FE
; =========================================================

3B94BE:  ADDS            R2, #1
3B94C0:  IT NE
3B94C2:  BXNE            LR
3B94C4:  LDR.W           R2, [R0,#0x90]
3B94C8:  CMP             R2, R1
3B94CA:  ITT EQ
3B94CC:  MOVEQ           R2, #0
3B94CE:  STREQ.W         R2, [R0,#0x90]
3B94D2:  LDR.W           R2, [R0,#0x94]
3B94D6:  CMP             R2, R1
3B94D8:  ITT EQ
3B94DA:  MOVEQ           R2, #0
3B94DC:  STREQ.W         R2, [R0,#0x94]
3B94E0:  LDR.W           R2, [R0,#0x98]
3B94E4:  CMP             R2, R1
3B94E6:  ITT EQ
3B94E8:  MOVEQ           R2, #0
3B94EA:  STREQ.W         R2, [R0,#0x98]
3B94EE:  LDR.W           R2, [R0,#0x9C]
3B94F2:  CMP             R2, R1
3B94F4:  ITT EQ
3B94F6:  MOVEQ           R1, #0
3B94F8:  STREQ.W         R1, [R0,#0x9C]
3B94FC:  BX              LR
