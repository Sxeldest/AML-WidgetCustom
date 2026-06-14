; =========================================================
; Game Engine Function: _ZNK20CTaskComplexDieInCar5CloneEv
; Address            : 0x4F2754 - 0x4F277C
; =========================================================

4F2754:  PUSH            {R4,R6,R7,LR}
4F2756:  ADD             R7, SP, #8
4F2758:  MOV             R4, R0
4F275A:  MOVS            R0, #dword_1C; this
4F275C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2760:  LDR             R4, [R4,#0xC]
4F2762:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F2766:  LDR             R1, =(_ZTV20CTaskComplexDieInCar_ptr - 0x4F2770)
4F2768:  MOVS            R2, #0
4F276A:  STR             R4, [R0,#0xC]
4F276C:  ADD             R1, PC; _ZTV20CTaskComplexDieInCar_ptr
4F276E:  STRH            R2, [R0,#0x18]
4F2770:  STRD.W          R2, R2, [R0,#0x10]
4F2774:  LDR             R1, [R1]; `vtable for'CTaskComplexDieInCar ...
4F2776:  ADDS            R1, #8
4F2778:  STR             R1, [R0]
4F277A:  POP             {R4,R6,R7,PC}
