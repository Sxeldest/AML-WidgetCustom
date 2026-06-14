; =========================================================
; Game Engine Function: _ZNK19CTaskComplexInWater5CloneEv
; Address            : 0x4F4118 - 0x4F4132
; =========================================================

4F4118:  PUSH            {R7,LR}
4F411A:  MOV             R7, SP
4F411C:  MOVS            R0, #(byte_9+3); this
4F411E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F4122:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F4126:  LDR             R1, =(_ZTV19CTaskComplexInWater_ptr - 0x4F412C)
4F4128:  ADD             R1, PC; _ZTV19CTaskComplexInWater_ptr
4F412A:  LDR             R1, [R1]; `vtable for'CTaskComplexInWater ...
4F412C:  ADDS            R1, #8
4F412E:  STR             R1, [R0]
4F4130:  POP             {R7,PC}
