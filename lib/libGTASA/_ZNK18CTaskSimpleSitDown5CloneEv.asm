; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleSitDown5CloneEv
; Address            : 0x4F2D30 - 0x4F2D56
; =========================================================

4F2D30:  PUSH            {R4,R6,R7,LR}
4F2D32:  ADD             R7, SP, #8
4F2D34:  MOV             R4, R0
4F2D36:  MOVS            R0, #word_10; this
4F2D38:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2D3C:  LDRB            R4, [R4,#8]
4F2D3E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F2D42:  LDR             R1, =(_ZTV18CTaskSimpleSitDown_ptr - 0x4F2D4C)
4F2D44:  MOVS            R2, #0
4F2D46:  STRB            R4, [R0,#8]
4F2D48:  ADD             R1, PC; _ZTV18CTaskSimpleSitDown_ptr
4F2D4A:  STRB            R2, [R0,#9]
4F2D4C:  STR             R2, [R0,#0xC]
4F2D4E:  LDR             R1, [R1]; `vtable for'CTaskSimpleSitDown ...
4F2D50:  ADDS            R1, #8
4F2D52:  STR             R1, [R0]
4F2D54:  POP             {R4,R6,R7,PC}
