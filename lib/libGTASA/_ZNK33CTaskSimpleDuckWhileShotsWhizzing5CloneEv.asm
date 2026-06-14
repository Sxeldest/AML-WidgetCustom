; =========================================================
; Game Engine Function: _ZNK33CTaskSimpleDuckWhileShotsWhizzing5CloneEv
; Address            : 0x544050 - 0x5440A8
; =========================================================

544050:  PUSH            {R4,R5,R7,LR}
544052:  ADD             R7, SP, #8
544054:  MOV             R4, R0
544056:  MOVS            R0, #word_28; this
544058:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54405C:  LDRH            R5, [R4,#0xC]
54405E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
544062:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x544070)
544064:  MOVS            R3, #0
544066:  LDR             R2, =(_ZTV15CTaskSimpleDuck_ptr - 0x544076)
544068:  MOVT            R3, #0x101
54406C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54406E:  LDR.W           R12, =(_ZTV33CTaskSimpleDuckWhileShotsWhizzing_ptr - 0x544080)
544072:  ADD             R2, PC; _ZTV15CTaskSimpleDuck_ptr
544074:  STR             R3, [R0,#0x18]
544076:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
544078:  MOVS            R3, #0
54407A:  LDR             R2, [R2]; `vtable for'CTaskSimpleDuck ...
54407C:  ADD             R12, PC; _ZTV33CTaskSimpleDuckWhileShotsWhizzing_ptr
54407E:  MOV.W           R4, #0xFF00
544082:  STRD.W          R3, R3, [R0,#0x1C]
544086:  STRH            R4, [R0,#0x24]
544088:  ADDS            R2, #8
54408A:  STR             R2, [R0]
54408C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
54408E:  LDR.W           R2, [R12]; `vtable for'CTaskSimpleDuckWhileShotsWhizzing ...
544092:  STRH            R5, [R0,#0xC]
544094:  STR             R1, [R0,#8]
544096:  MOVW            R1, #0xFFFF
54409A:  STRH            R1, [R0,#0xE]
54409C:  ADD.W           R1, R2, #8
5440A0:  STRD.W          R3, R3, [R0,#0x10]
5440A4:  STR             R1, [R0]
5440A6:  POP             {R4,R5,R7,PC}
