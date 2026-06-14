; =========================================================
; Game Engine Function: _ZNK21CPedGroupIntelligence14GetTaskDefaultEP4CPed
; Address            : 0x4B3998 - 0x4B3A08
; =========================================================

4B3998:  LDR.W           R2, [R0,#0x1EC]
4B399C:  CMP             R2, R1
4B399E:  BEQ             loc_4B39E0
4B39A0:  LDR.W           R2, [R0,#0x200]
4B39A4:  CMP             R2, R1
4B39A6:  BEQ             loc_4B39E4
4B39A8:  LDR.W           R2, [R0,#0x214]
4B39AC:  CMP             R2, R1
4B39AE:  BEQ             loc_4B39E8
4B39B0:  LDR.W           R2, [R0,#0x228]
4B39B4:  CMP             R2, R1
4B39B6:  BEQ             loc_4B39EC
4B39B8:  LDR.W           R2, [R0,#0x23C]
4B39BC:  CMP             R2, R1
4B39BE:  BEQ             loc_4B39F0
4B39C0:  LDR.W           R2, [R0,#0x250]
4B39C4:  CMP             R2, R1
4B39C6:  BEQ             loc_4B39F4
4B39C8:  LDR.W           R2, [R0,#0x264]
4B39CC:  CMP             R2, R1
4B39CE:  BEQ             loc_4B39F8
4B39D0:  LDR.W           R2, [R0,#0x278]
4B39D4:  CMP             R2, R1
4B39D6:  ITT NE
4B39D8:  MOVNE           R0, #0
4B39DA:  BXNE            LR
4B39DC:  MOVS            R1, #7
4B39DE:  B               loc_4B39FA
4B39E0:  MOVS            R1, #0
4B39E2:  B               loc_4B39FA
4B39E4:  MOVS            R1, #1
4B39E6:  B               loc_4B39FA
4B39E8:  MOVS            R1, #2
4B39EA:  B               loc_4B39FA
4B39EC:  MOVS            R1, #3
4B39EE:  B               loc_4B39FA
4B39F0:  MOVS            R1, #4
4B39F2:  B               loc_4B39FA
4B39F4:  MOVS            R1, #5
4B39F6:  B               loc_4B39FA
4B39F8:  MOVS            R1, #6
4B39FA:  ADD.W           R1, R1, R1,LSL#2
4B39FE:  ADD.W           R0, R0, R1,LSL#2
4B3A02:  LDR.W           R0, [R0,#0x1F0]
4B3A06:  BX              LR
