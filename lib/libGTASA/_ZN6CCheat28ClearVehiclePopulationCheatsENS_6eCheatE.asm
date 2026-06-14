; =========================================================
; Game Engine Function: _ZN6CCheat28ClearVehiclePopulationCheatsENS_6eCheatE
; Address            : 0x3004A0 - 0x300528
; =========================================================

3004A0:  PUSH            {R4,R6,R7,LR}
3004A2:  ADD             R7, SP, #8
3004A4:  MOV             R4, R0
3004A6:  CMP             R4, #0x31 ; '1'
3004A8:  BEQ             loc_3004BC
3004AA:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3004B0)
3004AC:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
3004AE:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
3004B0:  LDRB.W          R0, [R0,#(byte_796825 - 0x7967F4)]; this
3004B4:  CMP             R0, #0
3004B6:  IT NE
3004B8:  BLXNE           j__ZN6CCheat15BeachPartyCheatEv; CCheat::BeachPartyCheat(void)
3004BC:  CMP             R4, #0x36 ; '6'
3004BE:  BEQ             loc_3004D8
3004C0:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3004C6)
3004C2:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
3004C4:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
3004C6:  LDRB.W          R0, [R0,#(byte_79682A - 0x7967F4)]
3004CA:  CBZ             R0, loc_3004D8
3004CC:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3004D4)
3004CE:  MOVS            R1, #0
3004D0:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
3004D2:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
3004D4:  STRB.W          R1, [R0,#(byte_79682A - 0x7967F4)]
3004D8:  CMP             R4, #0x37 ; '7'
3004DA:  BEQ             loc_3004F4
3004DC:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3004E2)
3004DE:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
3004E0:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
3004E2:  LDRB.W          R0, [R0,#(byte_79682B - 0x7967F4)]
3004E6:  CBZ             R0, loc_3004F4
3004E8:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3004F0)
3004EA:  MOVS            R1, #0
3004EC:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
3004EE:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
3004F0:  STRB.W          R1, [R0,#(byte_79682B - 0x7967F4)]
3004F4:  CMP             R4, #0x4E ; 'N'
3004F6:  BEQ             loc_30050A
3004F8:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3004FE)
3004FA:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
3004FC:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
3004FE:  LDRB.W          R0, [R0,#(byte_796842 - 0x7967F4)]; this
300502:  CMP             R0, #0
300504:  IT NE
300506:  BLXNE           j__ZN6CCheat13FunhouseCheatEv; CCheat::FunhouseCheat(void)
30050A:  CMP             R4, #0x53 ; 'S'
30050C:  IT EQ
30050E:  POPEQ           {R4,R6,R7,PC}
300510:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x300516)
300512:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
300514:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
300516:  LDRB.W          R0, [R0,#(byte_796847 - 0x7967F4)]; this
30051A:  CMP             R0, #0
30051C:  ITT NE
30051E:  POPNE.W         {R4,R6,R7,LR}
300522:  BNE.W           sub_191C7C
300526:  POP             {R4,R6,R7,PC}
