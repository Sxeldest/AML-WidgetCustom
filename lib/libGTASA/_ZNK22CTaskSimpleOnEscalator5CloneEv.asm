; =========================================================
; Game Engine Function: _ZNK22CTaskSimpleOnEscalator5CloneEv
; Address            : 0x4F1D60 - 0x4F1D92
; =========================================================

4F1D60:  PUSH            {R7,LR}
4F1D62:  MOV             R7, SP
4F1D64:  MOVS            R0, #dword_20; this
4F1D66:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F1D6A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F1D6E:  LDR             R1, =(_ZTV22CTaskSimpleOnEscalator_ptr - 0x4F1D7E)
4F1D70:  MOVS            R2, #0
4F1D72:  MOV.W           R3, #0x41000000
4F1D76:  STR.W           R2, [R0,#0x12]
4F1D7A:  ADD             R1, PC; _ZTV22CTaskSimpleOnEscalator_ptr
4F1D7C:  STR.W           R2, [R0,#0xE]
4F1D80:  STR             R3, [R0,#0x1C]
4F1D82:  MOVS            R3, #1
4F1D84:  LDR             R1, [R1]; `vtable for'CTaskSimpleOnEscalator ...
4F1D86:  STRH            R3, [R0,#0x18]
4F1D88:  STRD.W          R2, R2, [R0,#8]
4F1D8C:  ADDS            R1, #8
4F1D8E:  STR             R1, [R0]
4F1D90:  POP             {R7,PC}
