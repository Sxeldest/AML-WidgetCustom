; =========================================================
; Game Engine Function: _ZNK15CTaskSimpleDuck5CloneEv
; Address            : 0x543F00 - 0x543F54
; =========================================================

543F00:  PUSH            {R4-R7,LR}
543F02:  ADD             R7, SP, #0xC
543F04:  PUSH.W          {R11}
543F08:  MOV             R4, R0
543F0A:  MOVS            R0, #word_28; this
543F0C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
543F10:  LDR             R6, [R4,#0xC]
543F12:  LDRB.W          R4, [R4,#0x24]
543F16:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
543F1A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x543F28)
543F1C:  MOVS            R5, #0xFF
543F1E:  LDR             R2, =(_ZTV15CTaskSimpleDuck_ptr - 0x543F2E)
543F20:  MOVW            R12, #0
543F24:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
543F26:  STRB.W          R5, [R0,#0x25]
543F2A:  ADD             R2, PC; _ZTV15CTaskSimpleDuck_ptr
543F2C:  STRB.W          R4, [R0,#0x24]
543F30:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
543F32:  MOVT            R12, #0x101
543F36:  LDR             R2, [R2]; `vtable for'CTaskSimpleDuck ...
543F38:  MOVS            R3, #0
543F3A:  ADDS            R2, #8
543F3C:  STR             R2, [R0]
543F3E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
543F40:  STRD.W          R1, R6, [R0,#8]
543F44:  STRD.W          R3, R3, [R0,#0x10]
543F48:  STRD.W          R12, R3, [R0,#0x18]
543F4C:  STR             R3, [R0,#0x20]
543F4E:  POP.W           {R11}
543F52:  POP             {R4-R7,PC}
