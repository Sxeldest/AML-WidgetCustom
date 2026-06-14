; =========================================================
; Game Engine Function: _ZN6CCheat13MidnightCheatEv
; Address            : 0x2FE0EC - 0x2FE124
; =========================================================

2FE0EC:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE0F2)
2FE0EE:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE0F0:  LDR             R1, [R0]; CCheat::m_aCheatsActive ...
2FE0F2:  MOVS            R0, #0
2FE0F4:  LDRB.W          R2, [R1,#(byte_796833 - 0x7967F4)]
2FE0F8:  CMP             R2, #0
2FE0FA:  MOV.W           R2, #0
2FE0FE:  IT EQ
2FE100:  MOVEQ           R2, #1
2FE102:  STRB.W          R2, [R1,#(byte_796833 - 0x7967F4)]
2FE106:  IT NE
2FE108:  BXNE            LR
2FE10A:  LDR             R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x2FE114)
2FE10C:  LDR             R2, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x2FE116)
2FE10E:  LDR             R3, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x2FE118)
2FE110:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
2FE112:  ADD             R2, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
2FE114:  ADD             R3, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
2FE116:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
2FE118:  LDR             R2, [R2]; CClock::ms_nGameClockHours ...
2FE11A:  LDR             R3, [R3]; CClock::ms_nGameClockSeconds ...
2FE11C:  STRB            R0, [R1]; CClock::ms_nGameClockMinutes
2FE11E:  STRB            R0, [R2]; CClock::ms_nGameClockHours
2FE120:  STRH            R0, [R3]; CClock::ms_nGameClockSeconds
2FE122:  BX              LR
