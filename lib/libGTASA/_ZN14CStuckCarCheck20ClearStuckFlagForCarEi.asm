; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck20ClearStuckFlagForCarEi
; Address            : 0x328D7E - 0x328E56
; =========================================================

328D7E:  LDR             R2, [R0]
328D80:  CMP             R2, R1
328D82:  ITT EQ
328D84:  MOVEQ           R2, #0
328D86:  STRBEQ          R2, [R0,#0x1C]
328D88:  LDR             R2, [R0,#0x24]
328D8A:  CMP             R2, R1
328D8C:  ITT EQ
328D8E:  MOVEQ           R2, #0
328D90:  STRBEQ.W        R2, [R0,#0x40]
328D94:  LDR             R2, [R0,#0x48]
328D96:  CMP             R2, R1
328D98:  ITT EQ
328D9A:  MOVEQ           R2, #0
328D9C:  STRBEQ.W        R2, [R0,#0x64]
328DA0:  LDR             R2, [R0,#0x6C]
328DA2:  CMP             R2, R1
328DA4:  ITT EQ
328DA6:  MOVEQ           R2, #0
328DA8:  STRBEQ.W        R2, [R0,#0x88]
328DAC:  LDR.W           R2, [R0,#0x90]
328DB0:  CMP             R2, R1
328DB2:  ITT EQ
328DB4:  MOVEQ           R2, #0
328DB6:  STRBEQ.W        R2, [R0,#0xAC]
328DBA:  LDR.W           R2, [R0,#0xB4]
328DBE:  CMP             R2, R1
328DC0:  ITT EQ
328DC2:  MOVEQ           R2, #0
328DC4:  STRBEQ.W        R2, [R0,#0xD0]
328DC8:  LDR.W           R2, [R0,#0xD8]
328DCC:  CMP             R2, R1
328DCE:  ITT EQ
328DD0:  MOVEQ           R2, #0
328DD2:  STRBEQ.W        R2, [R0,#0xF4]
328DD6:  LDR.W           R2, [R0,#0xFC]
328DDA:  CMP             R2, R1
328DDC:  ITT EQ
328DDE:  MOVEQ           R2, #0
328DE0:  STRBEQ.W        R2, [R0,#0x118]
328DE4:  LDR.W           R2, [R0,#0x120]
328DE8:  CMP             R2, R1
328DEA:  ITT EQ
328DEC:  MOVEQ           R2, #0
328DEE:  STRBEQ.W        R2, [R0,#0x13C]
328DF2:  LDR.W           R2, [R0,#0x144]
328DF6:  CMP             R2, R1
328DF8:  ITT EQ
328DFA:  MOVEQ           R2, #0
328DFC:  STRBEQ.W        R2, [R0,#0x160]
328E00:  LDR.W           R2, [R0,#0x168]
328E04:  CMP             R2, R1
328E06:  ITT EQ
328E08:  MOVEQ           R2, #0
328E0A:  STRBEQ.W        R2, [R0,#0x184]
328E0E:  LDR.W           R2, [R0,#0x18C]
328E12:  CMP             R2, R1
328E14:  ITT EQ
328E16:  MOVEQ           R2, #0
328E18:  STRBEQ.W        R2, [R0,#0x1A8]
328E1C:  LDR.W           R2, [R0,#0x1B0]
328E20:  CMP             R2, R1
328E22:  ITT EQ
328E24:  MOVEQ           R2, #0
328E26:  STRBEQ.W        R2, [R0,#0x1CC]
328E2A:  LDR.W           R2, [R0,#0x1D4]
328E2E:  CMP             R2, R1
328E30:  ITT EQ
328E32:  MOVEQ           R2, #0
328E34:  STRBEQ.W        R2, [R0,#0x1F0]
328E38:  LDR.W           R2, [R0,#0x1F8]
328E3C:  CMP             R2, R1
328E3E:  ITT EQ
328E40:  MOVEQ           R2, #0
328E42:  STRBEQ.W        R2, [R0,#0x214]
328E46:  LDR.W           R2, [R0,#0x21C]
328E4A:  CMP             R2, R1
328E4C:  ITT EQ
328E4E:  MOVEQ           R1, #0
328E50:  STRBEQ.W        R1, [R0,#0x238]
328E54:  BX              LR
