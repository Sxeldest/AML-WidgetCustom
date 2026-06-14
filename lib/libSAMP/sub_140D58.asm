; =========================================================
; Game Engine Function: sub_140D58
; Address            : 0x140D58 - 0x140DF6
; =========================================================

140D58:  LDR             R2, [R1]
140D5A:  STR             R2, [R0]
140D5C:  LDR             R2, [R1,#0x10]
140D5E:  VLDR            S0, [R1,#0x34]
140D62:  STR             R2, [R0,#4]
140D64:  VLDR            S2, [R1,#4]
140D68:  VLDR            S6, [R1,#0x30]
140D6C:  VMUL.F32        S4, S2, S0
140D70:  VLDR            S8, [R1]
140D74:  LDR             R2, [R1,#0x20]
140D76:  VSTR            S2, [R0,#0x10]
140D7A:  VMLA.F32        S4, S6, S8
140D7E:  VLDR            S6, [R1,#0x38]
140D82:  STR             R2, [R0,#8]
140D84:  VLDR            S8, [R1,#8]
140D88:  LDR             R2, [R1,#0x14]
140D8A:  STR             R2, [R0,#0x14]
140D8C:  LDR             R2, [R1,#0x24]
140D8E:  VMLA.F32        S4, S6, S8
140D92:  VLDR            S2, [R1,#0x14]
140D96:  STR             R2, [R0,#0x18]
140D98:  VLDR            S10, [R1,#0x18]
140D9C:  VMUL.F32        S0, S0, S2
140DA0:  VSTR            S8, [R0,#0x20]
140DA4:  VSTR            S10, [R0,#0x24]
140DA8:  LDR             R2, [R1,#0x28]
140DAA:  VLDR            S2, [R1,#0x10]
140DAE:  VNEG.F32        S4, S4
140DB2:  STR             R2, [R0,#0x28]
140DB4:  VSTR            S4, [R0,#0x30]
140DB8:  VLDR            S4, [R1,#0x30]
140DBC:  VMLA.F32        S0, S4, S2
140DC0:  VLDR            S2, [R1,#0x24]
140DC4:  VMLA.F32        S0, S6, S10
140DC8:  VNEG.F32        S0, S0
140DCC:  VSTR            S0, [R0,#0x34]
140DD0:  VLDR            S0, [R1,#0x34]
140DD4:  VMUL.F32        S0, S0, S2
140DD8:  VLDR            S2, [R1,#0x20]
140DDC:  VMLA.F32        S0, S4, S2
140DE0:  VLDR            S2, [R1,#0x28]
140DE4:  MOVS            R1, #3
140DE6:  STR             R1, [R0,#0xC]
140DE8:  VMLA.F32        S0, S6, S2
140DEC:  VNEG.F32        S0, S0
140DF0:  VSTR            S0, [R0,#0x38]
140DF4:  BX              LR
