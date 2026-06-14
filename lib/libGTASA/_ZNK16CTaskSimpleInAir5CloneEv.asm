; =========================================================
; Game Engine Function: _ZNK16CTaskSimpleInAir5CloneEv
; Address            : 0x532D50 - 0x532DAC
; =========================================================

532D50:  PUSH            {R4,R6,R7,LR}
532D52:  ADD             R7, SP, #8
532D54:  MOV             R4, R0
532D56:  MOVS            R0, #off_3C; this
532D58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532D5C:  LDRB.W          R4, [R4,#0x24]
532D60:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
532D64:  LDR             R2, =(_ZTV16CTaskSimpleInAir_ptr - 0x532D6E)
532D66:  MOVS            R3, #0
532D68:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x532D74)
532D6A:  ADD             R2, PC; _ZTV16CTaskSimpleInAir_ptr
532D6C:  STR.W           R3, [R0,#0x32]
532D70:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
532D72:  STR.W           R3, [R0,#0x2E]
532D76:  LDR             R2, [R2]; `vtable for'CTaskSimpleInAir ...
532D78:  STRD.W          R3, R3, [R0,#0x28]
532D7C:  STR             R3, [R0,#0x38]
532D7E:  ADDS            R2, #8
532D80:  STRD.W          R3, R3, [R0,#0x1C]
532D84:  LDRB.W          R3, [R0,#0x24]
532D88:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
532D8A:  STR             R2, [R0]
532D8C:  AND.W           R2, R4, #7
532D90:  AND.W           R3, R3, #0xF8
532D94:  ORRS            R2, R3
532D96:  STRB.W          R2, [R0,#0x24]
532D9A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
532D9C:  MOV.W           R2, #0x1F4
532DA0:  STRD.W          R1, R2, [R0,#0x2C]
532DA4:  MOVS            R1, #1
532DA6:  STRB.W          R1, [R0,#0x34]
532DAA:  POP             {R4,R6,R7,PC}
