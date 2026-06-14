; =========================================================
; Game Engine Function: _ZNK29CTaskComplexWaitForDryWeather5CloneEv
; Address            : 0x4F3648 - 0x4F3662
; =========================================================

4F3648:  PUSH            {R7,LR}
4F364A:  MOV             R7, SP
4F364C:  MOVS            R0, #(byte_9+3); this
4F364E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F3652:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F3656:  LDR             R1, =(_ZTV29CTaskComplexWaitForDryWeather_ptr - 0x4F365C)
4F3658:  ADD             R1, PC; _ZTV29CTaskComplexWaitForDryWeather_ptr
4F365A:  LDR             R1, [R1]; `vtable for'CTaskComplexWaitForDryWeather ...
4F365C:  ADDS            R1, #8
4F365E:  STR             R1, [R0]
4F3660:  POP             {R7,PC}
