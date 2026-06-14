; =========================================================
; Game Engine Function: _ZN10CGameLogic17LaRiotsActiveHereEv
; Address            : 0x309FF4 - 0x30A0C2
; =========================================================

309FF4:  PUSH            {R7,LR}
309FF6:  MOV             R7, SP
309FF8:  SUB             SP, SP, #0x10
309FFA:  ADD             R0, SP, #0x18+var_14; int
309FFC:  MOV.W           R1, #0xFFFFFFFF
30A000:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30A004:  VLDR            S0, [SP,#0x18+var_C]
30A008:  VLDR            S2, =950.0
30A00C:  VCMPE.F32       S0, S2
30A010:  VMRS            APSR_nzcv, FPSCR
30A014:  BLE             loc_30A01C
30A016:  MOVS            R0, #0
30A018:  ADD             SP, SP, #0x10
30A01A:  POP             {R7,PC}
30A01C:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x30A022)
30A01E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
30A020:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
30A022:  LDRB.W          R0, [R0,#(byte_796841 - 0x7967F4)]
30A026:  CBZ             R0, loc_30A02E
30A028:  MOVS            R0, #1
30A02A:  ADD             SP, SP, #0x10
30A02C:  POP             {R7,PC}
30A02E:  LDR             R0, =(gbLARiots_ptr - 0x30A034)
30A030:  ADD             R0, PC; gbLARiots_ptr
30A032:  LDR             R0, [R0]; gbLARiots
30A034:  LDRB            R0, [R0]
30A036:  CMP             R0, #0
30A038:  BEQ             loc_30A016
30A03A:  ADD             R0, SP, #0x18+var_14; int
30A03C:  MOV.W           R1, #0xFFFFFFFF
30A040:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30A044:  VLDR            S2, =1620.0
30A048:  VLDR            S0, [SP,#0x18+var_14]
30A04C:  VCMPE.F32       S0, S2
30A050:  VMRS            APSR_nzcv, FPSCR
30A054:  BLE             loc_30A084
30A056:  VLDR            S2, =2824.0
30A05A:  VCMPE.F32       S0, S2
30A05E:  VMRS            APSR_nzcv, FPSCR
30A062:  BGE             loc_30A084
30A064:  VLDR            S2, [SP,#0x18+var_10]
30A068:  VLDR            S4, =-2178.0
30A06C:  VCMPE.F32       S2, S4
30A070:  VMRS            APSR_nzcv, FPSCR
30A074:  BLE             loc_30A084
30A076:  VLDR            S4, =-1067.0
30A07A:  VCMPE.F32       S2, S4
30A07E:  VMRS            APSR_nzcv, FPSCR
30A082:  BLT             loc_30A028
30A084:  VLDR            S2, =157.0
30A088:  VCMPE.F32       S0, S2
30A08C:  VMRS            APSR_nzcv, FPSCR
30A090:  BLE             loc_30A016
30A092:  VLDR            S2, =1630.0
30A096:  VCMPE.F32       S0, S2
30A09A:  VMRS            APSR_nzcv, FPSCR
30A09E:  BGE             loc_30A016
30A0A0:  VLDR            S0, [SP,#0x18+var_10]
30A0A4:  VLDR            S2, =-1950.0
30A0A8:  VCMPE.F32       S0, S2
30A0AC:  VMRS            APSR_nzcv, FPSCR
30A0B0:  BLE             loc_30A016
30A0B2:  VLDR            S2, =-1192.0
30A0B6:  VCMPE.F32       S0, S2
30A0BA:  VMRS            APSR_nzcv, FPSCR
30A0BE:  BLT             loc_30A028
30A0C0:  B               loc_30A016
