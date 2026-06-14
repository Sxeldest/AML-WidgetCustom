; =========================================================
; Game Engine Function: _ZN4CPed22CanUseTorsoWhenLookingEv
; Address            : 0x49FBF4 - 0x49FC14
; =========================================================

49FBF4:  LDR.W           R1, [R0,#0x44C]
49FBF8:  ORR.W           R1, R1, #8
49FBFC:  CMP             R1, #0x3A ; ':'
49FBFE:  ITT EQ
49FC00:  MOVEQ           R0, #0
49FC02:  BXEQ            LR
49FC04:  LDRB.W          R0, [R0,#0x487]
49FC08:  LSLS            R0, R0, #0x1D
49FC0A:  MOV.W           R0, #0
49FC0E:  IT PL
49FC10:  MOVPL           R0, #1
49FC12:  BX              LR
