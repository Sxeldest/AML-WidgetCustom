; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleDrownInCar5CloneEv
; Address            : 0x4F28F0 - 0x4F290A
; =========================================================

4F28F0:  PUSH            {R7,LR}
4F28F2:  MOV             R7, SP
4F28F4:  MOVS            R0, #byte_8; this
4F28F6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F28FA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F28FE:  LDR             R1, =(_ZTV21CTaskSimpleDrownInCar_ptr - 0x4F2904)
4F2900:  ADD             R1, PC; _ZTV21CTaskSimpleDrownInCar_ptr
4F2902:  LDR             R1, [R1]; `vtable for'CTaskSimpleDrownInCar ...
4F2904:  ADDS            R1, #8
4F2906:  STR             R1, [R0]
4F2908:  POP             {R7,PC}
