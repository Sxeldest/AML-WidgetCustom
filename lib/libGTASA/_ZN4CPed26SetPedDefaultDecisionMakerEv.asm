; =========================================================
; Game Engine Function: _ZN4CPed26SetPedDefaultDecisionMakerEv
; Address            : 0x49FA2C - 0x49FA64
; =========================================================

49FA2C:  LDR.W           R1, [R0,#0x59C]
49FA30:  CMP             R1, #1
49FA32:  BHI             loc_49FA40
49FA34:  LDR.W           R0, [R0,#0x440]; this
49FA38:  MOV             R1, #0xFFFFFFFE; int
49FA3C:  B.W             sub_19F018
49FA40:  LDRB.W          R1, [R0,#0x448]
49FA44:  LDR.W           R2, [R0,#0x440]
49FA48:  CMP             R1, #2
49FA4A:  BNE             loc_49FA56
49FA4C:  MOV             R0, R2; this
49FA4E:  MOV.W           R1, #0xFFFFFFFF; int
49FA52:  B.W             sub_19F018
49FA56:  LDR.W           R0, [R0,#0x5A0]
49FA5A:  LDRSB.W         R1, [R0,#0x32]; int
49FA5E:  MOV             R0, R2; this
49FA60:  B.W             sub_19F018
