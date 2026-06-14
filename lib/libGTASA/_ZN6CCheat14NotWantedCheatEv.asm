; =========================================================
; Game Engine Function: _ZN6CCheat14NotWantedCheatEv
; Address            : 0x2FE250 - 0x2FE27A
; =========================================================

2FE250:  PUSH            {R4,R6,R7,LR}
2FE252:  ADD             R7, SP, #8
2FE254:  MOV.W           R0, #0xFFFFFFFF; int
2FE258:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE25C:  MOVS            R1, #0; int
2FE25E:  MOVS            R4, #0
2FE260:  BLX             j__ZN10CPlayerPed16CheatWantedLevelEi; CPlayerPed::CheatWantedLevel(int)
2FE264:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE26A)
2FE266:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE268:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FE26A:  LDRB.W          R1, [R0,#(byte_79683D - 0x7967F4)]
2FE26E:  CMP             R1, #0
2FE270:  IT EQ
2FE272:  MOVEQ           R4, #1
2FE274:  STRB.W          R4, [R0,#(byte_79683D - 0x7967F4)]
2FE278:  POP             {R4,R6,R7,PC}
