; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck24HasCarBeenStuckForAWhileEi
; Address            : 0x328CB2 - 0x328D7E
; =========================================================

328CB2:  LDR             R2, [R0]
328CB4:  CMP             R2, R1
328CB6:  BNE             loc_328CBC
328CB8:  MOVS            R1, #0
328CBA:  B               loc_328D6C
328CBC:  LDR             R2, [R0,#0x24]
328CBE:  CMP             R2, R1
328CC0:  BNE             loc_328CC6
328CC2:  MOVS            R1, #1
328CC4:  B               loc_328D6C
328CC6:  LDR             R2, [R0,#0x48]
328CC8:  CMP             R2, R1
328CCA:  BNE             loc_328CD0
328CCC:  MOVS            R1, #2
328CCE:  B               loc_328D6C
328CD0:  LDR             R2, [R0,#0x6C]
328CD2:  CMP             R2, R1
328CD4:  BNE             loc_328CDA
328CD6:  MOVS            R1, #3
328CD8:  B               loc_328D6C
328CDA:  LDR.W           R2, [R0,#0x90]
328CDE:  CMP             R2, R1
328CE0:  BNE             loc_328CE6
328CE2:  MOVS            R1, #4
328CE4:  B               loc_328D6C
328CE6:  LDR.W           R2, [R0,#0xB4]
328CEA:  CMP             R2, R1
328CEC:  BNE             loc_328CF2
328CEE:  MOVS            R1, #5
328CF0:  B               loc_328D6C
328CF2:  LDR.W           R2, [R0,#0xD8]
328CF6:  CMP             R2, R1
328CF8:  BNE             loc_328CFE
328CFA:  MOVS            R1, #6
328CFC:  B               loc_328D6C
328CFE:  LDR.W           R2, [R0,#0xFC]
328D02:  CMP             R2, R1
328D04:  BNE             loc_328D0A
328D06:  MOVS            R1, #7
328D08:  B               loc_328D6C
328D0A:  LDR.W           R2, [R0,#0x120]
328D0E:  CMP             R2, R1
328D10:  BNE             loc_328D16
328D12:  MOVS            R1, #8
328D14:  B               loc_328D6C
328D16:  LDR.W           R2, [R0,#0x144]
328D1A:  CMP             R2, R1
328D1C:  BNE             loc_328D22
328D1E:  MOVS            R1, #9
328D20:  B               loc_328D6C
328D22:  LDR.W           R2, [R0,#0x168]
328D26:  CMP             R2, R1
328D28:  BNE             loc_328D2E
328D2A:  MOVS            R1, #0xA
328D2C:  B               loc_328D6C
328D2E:  LDR.W           R2, [R0,#0x18C]
328D32:  CMP             R2, R1
328D34:  BNE             loc_328D3A
328D36:  MOVS            R1, #0xB
328D38:  B               loc_328D6C
328D3A:  LDR.W           R2, [R0,#0x1B0]
328D3E:  CMP             R2, R1
328D40:  BNE             loc_328D46
328D42:  MOVS            R1, #0xC
328D44:  B               loc_328D6C
328D46:  LDR.W           R2, [R0,#0x1D4]
328D4A:  CMP             R2, R1
328D4C:  BNE             loc_328D52
328D4E:  MOVS            R1, #0xD
328D50:  B               loc_328D6C
328D52:  LDR.W           R2, [R0,#0x1F8]
328D56:  CMP             R2, R1
328D58:  BNE             loc_328D5E
328D5A:  MOVS            R1, #0xE
328D5C:  B               loc_328D6C
328D5E:  LDR.W           R2, [R0,#0x21C]
328D62:  CMP             R2, R1
328D64:  ITT NE
328D66:  MOVNE           R0, #0
328D68:  BXNE            LR
328D6A:  MOVS            R1, #0xF
328D6C:  ADD.W           R1, R1, R1,LSL#3
328D70:  ADD.W           R0, R0, R1,LSL#2
328D74:  LDRB            R0, [R0,#0x1C]
328D76:  CMP             R0, #0
328D78:  IT NE
328D7A:  MOVNE           R0, #1
328D7C:  BX              LR
