; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity23GetMissionAudioPositionEh
; Address            : 0x3A4FFC - 0x3A5072
; =========================================================

3A4FFC:  ADD.W           R1, R0, R1,LSL#5
3A5000:  LDR.W           R2, [R1,#0x9C]
3A5004:  CBZ             R2, loc_3A5014
3A5006:  LDR             R1, [R2,#0x14]
3A5008:  ADD.W           R0, R1, #0x30 ; '0'
3A500C:  CMP             R1, #0
3A500E:  IT EQ
3A5010:  ADDEQ           R0, R2, #4
3A5012:  BX              LR
3A5014:  VLDR            S2, =-1000.0
3A5018:  VLDR            S0, [R1,#0x90]
3A501C:  VCMP.F32        S0, S2
3A5020:  VMRS            APSR_nzcv, FPSCR
3A5024:  ITTT EQ
3A5026:  VLDREQ          S4, [R1,#0x94]
3A502A:  VCMPEQ.F32      S4, S2
3A502E:  VMRSEQ          APSR_nzcv, FPSCR
3A5032:  BNE             loc_3A5042
3A5034:  VLDR            S4, [R1,#0x98]
3A5038:  VCMP.F32        S4, S2
3A503C:  VMRS            APSR_nzcv, FPSCR
3A5040:  BEQ             loc_3A506E
3A5042:  VCMP.F32        S0, #0.0
3A5046:  ADD.W           R0, R1, #0x90
3A504A:  VMRS            APSR_nzcv, FPSCR
3A504E:  IT NE
3A5050:  BXNE            LR
3A5052:  VLDR            S0, [R1,#0x94]
3A5056:  VCMP.F32        S0, #0.0
3A505A:  VMRS            APSR_nzcv, FPSCR
3A505E:  ITTT EQ
3A5060:  VLDREQ          S0, [R1,#0x98]
3A5064:  VCMPEQ.F32      S0, #0.0
3A5068:  VMRSEQ          APSR_nzcv, FPSCR
3A506C:  BNE             locret_3A5070
3A506E:  MOVS            R0, #0
3A5070:  BX              LR
