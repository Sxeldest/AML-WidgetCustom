; =========================================================
; Game Engine Function: _ZN27CTaskComplexGotoDoorAndOpen14ControlSubTaskEP4CPed
; Address            : 0x525E68 - 0x525EEE
; =========================================================

525E68:  PUSH            {R4-R7,LR}
525E6A:  ADD             R7, SP, #0xC
525E6C:  PUSH.W          {R11}
525E70:  MOV             R5, R0
525E72:  MOV             R6, R1
525E74:  LDRB.W          R0, [R5,#0x30]
525E78:  CBZ             R0, loc_525EA6
525E7A:  LDRB.W          R0, [R5,#0x31]
525E7E:  CBZ             R0, loc_525E94
525E80:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x525E88)
525E82:  MOVS            R1, #0
525E84:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
525E86:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
525E88:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
525E8A:  STRB.W          R1, [R5,#0x31]
525E8E:  STR             R0, [R5,#0x28]
525E90:  MOV             R1, R0
525E92:  B               loc_525E9E
525E94:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x525E9C)
525E96:  LDR             R1, [R5,#0x28]
525E98:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
525E9A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
525E9C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
525E9E:  LDR             R2, [R5,#0x2C]
525EA0:  ADD             R1, R2
525EA2:  CMP             R1, R0
525EA4:  BLS             loc_525EB2
525EA6:  LDR             R0, [R5,#0xC]
525EA8:  CBNZ            R0, loc_525EE4
525EAA:  LDRB.W          R0, [R5,#0x34]
525EAE:  LSLS            R0, R0, #0x1F
525EB0:  BEQ             loc_525EE4
525EB2:  LDR             R0, [R5,#8]
525EB4:  MOVS            R2, #1
525EB6:  MOVS            R3, #0
525EB8:  LDR             R1, [R0]
525EBA:  LDR             R4, [R1,#0x1C]
525EBC:  MOV             R1, R6
525EBE:  BLX             R4
525EC0:  CMP             R0, #1
525EC2:  BNE             loc_525EE4
525EC4:  MOV             R0, R6; this
525EC6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
525ECA:  MOVS            R4, #0
525ECC:  CMP             R0, #1
525ECE:  BNE             loc_525EE6
525ED0:  MOVS            R0, #0; this
525ED2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
525ED6:  LDRH.W          R1, [R0,#0x110]
525EDA:  ORR.W           R1, R1, #8
525EDE:  STRH.W          R1, [R0,#0x110]
525EE2:  B               loc_525EE6
525EE4:  LDR             R4, [R5,#8]
525EE6:  MOV             R0, R4
525EE8:  POP.W           {R11}
525EEC:  POP             {R4-R7,PC}
