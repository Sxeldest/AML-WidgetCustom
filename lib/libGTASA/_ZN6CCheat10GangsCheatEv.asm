; =========================================================
; Game Engine Function: _ZN6CCheat10GangsCheatEv
; Address            : 0x2FDE38 - 0x2FDE7C
; =========================================================

2FDE38:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDE40)
2FDE3A:  MOVS            R2, #0
2FDE3C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDE3E:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDE40:  LDRB.W          R1, [R0,#(byte_796826 - 0x7967F4)]
2FDE44:  CMP             R1, #0
2FDE46:  IT EQ
2FDE48:  MOVEQ           R2, #1
2FDE4A:  STRB.W          R2, [R0,#(byte_796826 - 0x7967F4)]
2FDE4E:  IT NE
2FDE50:  BXNE            LR
2FDE52:  PUSH            {R7,LR}
2FDE54:  MOV             R7, SP
2FDE56:  SUB             SP, SP, #0x20 ; ' '
2FDE58:  LDR             R0, =(unk_60FD08 - 0x2FDE5E)
2FDE5A:  ADD             R0, PC; unk_60FD08
2FDE5C:  VLD1.64         {D16-D17}, [R0]!
2FDE60:  VLD1.64         {D18-D19}, [R0]
2FDE64:  MOV             R0, SP; this
2FDE66:  MOV             R1, R0
2FDE68:  VST1.64         {D16-D17}, [R1]!; int *
2FDE6C:  VST1.64         {D18-D19}, [R1]
2FDE70:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
2FDE74:  ADD             SP, SP, #0x20 ; ' '
2FDE76:  POP.W           {R7,LR}
2FDE7A:  BX              LR
