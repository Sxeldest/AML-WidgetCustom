; =========================================================
; Game Engine Function: _ZN6CCheat9DuskCheatEv
; Address            : 0x2FE134 - 0x2FE16E
; =========================================================

2FE134:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE13A)
2FE136:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE138:  LDR             R1, [R0]; CCheat::m_aCheatsActive ...
2FE13A:  MOVS            R0, #0
2FE13C:  LDRB.W          R2, [R1,#(byte_796834 - 0x7967F4)]
2FE140:  CMP             R2, #0
2FE142:  MOV.W           R2, #0
2FE146:  IT EQ
2FE148:  MOVEQ           R2, #1
2FE14A:  STRB.W          R2, [R1,#(byte_796834 - 0x7967F4)]
2FE14E:  IT NE
2FE150:  BXNE            LR
2FE152:  LDR             R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x2FE15C)
2FE154:  LDR             R2, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x2FE15E)
2FE156:  LDR             R3, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x2FE160)
2FE158:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
2FE15A:  ADD             R2, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
2FE15C:  ADD             R3, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
2FE15E:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
2FE160:  LDR             R2, [R2]; CClock::ms_nGameClockHours ...
2FE162:  LDR             R3, [R3]; CClock::ms_nGameClockSeconds ...
2FE164:  STRB            R0, [R1]; CClock::ms_nGameClockMinutes
2FE166:  MOVS            R1, #0x15
2FE168:  STRB            R1, [R2]; CClock::ms_nGameClockHours
2FE16A:  STRH            R0, [R3]; CClock::ms_nGameClockSeconds
2FE16C:  BX              LR
