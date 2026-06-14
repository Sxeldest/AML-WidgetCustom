; =========================================================
; Game Engine Function: _ZN6CCheat18VillagePeopleCheatEv
; Address            : 0x2FDCB0 - 0x2FDD0A
; =========================================================

2FDCB0:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDCB6)
2FDCB2:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDCB4:  LDR             R1, [R0]; CCheat::m_aCheatsActive ...
2FDCB6:  MOVS            R0, #0; this
2FDCB8:  LDRB.W          R2, [R1,#(byte_796824 - 0x7967F4)]
2FDCBC:  CMP             R2, #0
2FDCBE:  MOV.W           R2, #0
2FDCC2:  IT EQ
2FDCC4:  MOVEQ           R2, #1
2FDCC6:  STRB.W          R2, [R1,#(byte_796824 - 0x7967F4)]
2FDCCA:  BEQ             loc_2FDCD6
2FDCCC:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDCD2)
2FDCCE:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDCD0:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2FDCD2:  STRB            R0, [R1,#(byte_79680B - 0x7967F4)]
2FDCD4:  B               _ZN6CCheat27EverybodyAttacksPlayerCheatEv; CCheat::EverybodyAttacksPlayerCheat(void)
2FDCD6:  PUSH            {R7,LR}
2FDCD8:  MOV             R7, SP
2FDCDA:  SUB             SP, SP, #0x20 ; ' '
2FDCDC:  LDR             R0, =(unk_60FCC8 - 0x2FDCE2)
2FDCDE:  ADD             R0, PC; unk_60FCC8
2FDCE0:  VLD1.64         {D16-D17}, [R0]!
2FDCE4:  VLD1.64         {D18-D19}, [R0]
2FDCE8:  MOV             R0, SP; this
2FDCEA:  MOV             R1, R0
2FDCEC:  VST1.64         {D16-D17}, [R1]!; int *
2FDCF0:  VST1.64         {D18-D19}, [R1]
2FDCF4:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
2FDCF8:  BLX             j__ZN6CCheat27EverybodyAttacksPlayerCheatEv; CCheat::EverybodyAttacksPlayerCheat(void)
2FDCFC:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDD04)
2FDCFE:  MOVS            R1, #1
2FDD00:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDD02:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDD04:  STRB            R1, [R0,#(byte_79680B - 0x7967F4)]
2FDD06:  ADD             SP, SP, #0x20 ; ' '
2FDD08:  POP             {R7,PC}
