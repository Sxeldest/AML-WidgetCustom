; =========================================================
; Game Engine Function: _ZN7CWanted17UpdateWantedLevelEv
; Address            : 0x421AEC - 0x421C26
; =========================================================

421AEC:  PUSH            {R4,R5,R7,LR}
421AEE:  ADD             R7, SP, #8
421AF0:  MOV             R4, R0
421AF2:  LDR             R0, =(_ZN7CWanted19nMaximumWantedLevelE_ptr - 0x421AFA)
421AF4:  LDR             R5, [R4,#0x2C]
421AF6:  ADD             R0, PC; _ZN7CWanted19nMaximumWantedLevelE_ptr
421AF8:  LDR             R1, [R0]; CWanted::nMaximumWantedLevel ...
421AFA:  LDR             R0, [R4]
421AFC:  LDR             R1, [R1]; CWanted::nMaximumWantedLevel
421AFE:  CMP             R0, R1
421B00:  ITT GT
421B02:  STRGT           R1, [R4]
421B04:  MOVGT           R0, R1
421B06:  MOVW            R1, #0x11F8
421B0A:  CMP             R0, R1
421B0C:  BLT             loc_421B2E
421B0E:  RSB.W           R0, R5, #6
421B12:  VMOV            S0, R0
421B16:  MOVS            R0, #(dword_80+3); this
421B18:  VCVT.F32.S32    S0, S0
421B1C:  VMOV            R1, S0; unsigned __int16
421B20:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
421B24:  MOVS            R0, #0x1E
421B26:  MOVS            R1, #0xA
421B28:  MOVS            R3, #3
421B2A:  MOVS            R2, #6; float
421B2C:  B               loc_421C00
421B2E:  CMP.W           R0, #0x960
421B32:  BLT             loc_421B54
421B34:  RSB.W           R0, R5, #5
421B38:  VMOV            S0, R0
421B3C:  MOVS            R0, #(dword_80+3); this
421B3E:  VCVT.F32.S32    S0, S0
421B42:  VMOV            R1, S0; unsigned __int16
421B46:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
421B4A:  MOVS            R0, #0x18
421B4C:  MOVS            R1, #8
421B4E:  MOVS            R3, #3
421B50:  MOVS            R2, #5; float
421B52:  B               loc_421C00
421B54:  CMP.W           R0, #0x4B0
421B58:  BLT             loc_421B7A
421B5A:  RSB.W           R0, R5, #4
421B5E:  VMOV            S0, R0
421B62:  MOVS            R0, #(dword_80+3); this
421B64:  VCVT.F32.S32    S0, S0
421B68:  VMOV            R1, S0; unsigned __int16
421B6C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
421B70:  MOVS            R0, #0x12
421B72:  MOVS            R1, #6
421B74:  MOVS            R3, #2
421B76:  MOVS            R2, #4; float
421B78:  B               loc_421C00
421B7A:  MOVW            R1, #0x226
421B7E:  CMP             R0, R1
421B80:  BLT             loc_421BA2
421B82:  RSB.W           R0, R5, #3
421B86:  VMOV            S0, R0
421B8A:  MOVS            R0, #(dword_80+3); this
421B8C:  VCVT.F32.S32    S0, S0
421B90:  VMOV            R1, S0; unsigned __int16
421B94:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
421B98:  MOVS            R0, #0xC
421B9A:  MOVS            R1, #4
421B9C:  MOVS            R3, #2
421B9E:  MOVS            R2, #3; float
421BA0:  B               loc_421C00
421BA2:  CMP             R0, #0xB4
421BA4:  BLT             loc_421BC6
421BA6:  RSB.W           R0, R5, #2
421BAA:  VMOV            S0, R0
421BAE:  MOVS            R0, #(dword_80+3); this
421BB0:  VCVT.F32.S32    S0, S0
421BB4:  VMOV            R1, S0; unsigned __int16
421BB8:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
421BBC:  MOVS            R0, #0
421BBE:  MOVS            R1, #3
421BC0:  MOVS            R2, #2; float
421BC2:  MOVS            R3, #2
421BC4:  B               loc_421C00
421BC6:  CMP             R0, #0x32 ; '2'
421BC8:  BLT             loc_421BEA
421BCA:  RSB.W           R0, R5, #1
421BCE:  VMOV            S0, R0
421BD2:  MOVS            R0, #(dword_80+3); this
421BD4:  VCVT.F32.S32    S0, S0
421BD8:  VMOV            R1, S0; unsigned __int16
421BDC:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
421BE0:  MOVS            R0, #0
421BE2:  MOVS            R2, #1; float
421BE4:  MOVS            R3, #1
421BE6:  MOVS            R1, #1
421BE8:  B               loc_421C00
421BEA:  CMP             R5, #1
421BEC:  BNE             loc_421BF8
421BEE:  MOVS            R0, #dword_84; this
421BF0:  MOV.W           R1, #0x3F800000; unsigned __int16
421BF4:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
421BF8:  MOVS            R2, #0
421BFA:  MOVS            R3, #0
421BFC:  MOVS            R1, #0
421BFE:  MOVS            R0, #0
421C00:  CMP             R5, R2
421C02:  STRB            R3, [R4,#0x1A]
421C04:  STR             R2, [R4,#0x2C]
421C06:  STRB            R1, [R4,#0x19]
421C08:  STRH            R0, [R4,#0x1C]
421C0A:  BEQ             loc_421C16
421C0C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x421C12)
421C0E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421C10:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
421C12:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
421C14:  STR             R0, [R4,#0xC]
421C16:  LDRB            R0, [R4,#0x1E]
421C18:  LSLS            R0, R0, #0x1D
421C1A:  ITTT NE
421C1C:  MOVNE           R0, #0
421C1E:  STRHNE          R0, [R4,#0x1C]
421C20:  STRHNE.W        R0, [R4,#0x19]
421C24:  POP             {R4,R5,R7,PC}
