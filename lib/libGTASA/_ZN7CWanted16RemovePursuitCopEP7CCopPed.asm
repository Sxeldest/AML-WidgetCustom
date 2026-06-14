; =========================================================
; Game Engine Function: _ZN7CWanted16RemovePursuitCopEP7CCopPed
; Address            : 0x422AFA - 0x422B92
; =========================================================

422AFA:  LDR.W           R2, [R0,#0x1F4]
422AFE:  CMP             R2, R1
422B00:  BEQ             loc_422B52
422B02:  LDR.W           R2, [R0,#0x1F8]
422B06:  CMP             R2, R1
422B08:  BEQ             loc_422B58
422B0A:  LDR.W           R2, [R0,#0x1FC]
422B0E:  CMP             R2, R1
422B10:  BEQ             loc_422B5E
422B12:  LDR.W           R2, [R0,#0x200]
422B16:  CMP             R2, R1
422B18:  BEQ             loc_422B64
422B1A:  LDR.W           R2, [R0,#0x204]
422B1E:  CMP             R2, R1
422B20:  BEQ             loc_422B6A
422B22:  LDR.W           R2, [R0,#0x208]
422B26:  CMP             R2, R1
422B28:  BEQ             loc_422B70
422B2A:  LDR.W           R2, [R0,#0x20C]
422B2E:  CMP             R2, R1
422B30:  BEQ             loc_422B76
422B32:  LDR.W           R2, [R0,#0x210]
422B36:  CMP             R2, R1
422B38:  BEQ             loc_422B7C
422B3A:  LDR.W           R2, [R0,#0x214]
422B3E:  CMP             R2, R1
422B40:  BEQ             loc_422B82
422B42:  LDR.W           R2, [R0,#0x218]
422B46:  CMP             R2, R1
422B48:  IT NE
422B4A:  BXNE            LR
422B4C:  ADD.W           R1, R0, #0x218
422B50:  B               loc_422B86
422B52:  ADD.W           R1, R0, #0x1F4
422B56:  B               loc_422B86
422B58:  ADD.W           R1, R0, #0x1F8
422B5C:  B               loc_422B86
422B5E:  ADD.W           R1, R0, #0x1FC
422B62:  B               loc_422B86
422B64:  ADD.W           R1, R0, #0x200
422B68:  B               loc_422B86
422B6A:  ADD.W           R1, R0, #0x204
422B6E:  B               loc_422B86
422B70:  ADD.W           R1, R0, #0x208
422B74:  B               loc_422B86
422B76:  ADD.W           R1, R0, #0x20C
422B7A:  B               loc_422B86
422B7C:  ADD.W           R1, R0, #0x210
422B80:  B               loc_422B86
422B82:  ADD.W           R1, R0, #0x214
422B86:  MOVS            R2, #0
422B88:  STR             R2, [R1]
422B8A:  LDRB            R1, [R0,#0x18]
422B8C:  SUBS            R1, #1
422B8E:  STRB            R1, [R0,#0x18]
422B90:  BX              LR
