; =========================================================
; Game Engine Function: _ZNK21CTaskComplexWanderCop5CloneEv
; Address            : 0x526E80 - 0x526EE6
; =========================================================

526E80:  PUSH            {R4,R5,R7,LR}
526E82:  ADD             R7, SP, #8
526E84:  MOV             R4, R0
526E86:  MOVS            R0, #dword_50; this
526E88:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
526E8C:  LDR             R5, [R4,#0xC]
526E8E:  LDRB            R4, [R4,#0x10]
526E90:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
526E94:  VMOV.I32        Q8, #0
526E98:  ADD.W           R2, R0, #0x38 ; '8'
526E9C:  LDR             R1, =(_ZTV21CTaskComplexWanderCop_ptr - 0x526EAA)
526E9E:  VST1.32         {D16-D17}, [R2]
526EA2:  MOV.W           R2, #0x3F000000
526EA6:  ADD             R1, PC; _ZTV21CTaskComplexWanderCop_ptr
526EA8:  STRB            R4, [R0,#0x10]
526EAA:  STR             R5, [R0,#0xC]
526EAC:  STR             R2, [R0,#0x14]
526EAE:  MOVW            R2, #0xFFFF
526EB2:  STRH            R2, [R0,#0x18]
526EB4:  STRH            R2, [R0,#0x1C]
526EB6:  MOVS            R2, #0
526EB8:  LDR             R1, [R1]; `vtable for'CTaskComplexWanderCop ...
526EBA:  STR             R2, [R0,#0x20]
526EBC:  STR.W           R2, [R0,#0x32]
526EC0:  ADDS            R1, #8
526EC2:  STR.W           R2, [R0,#0x2E]
526EC6:  STRD.W          R2, R2, [R0,#0x28]
526ECA:  STR.W           R2, [R0,#0x4A]
526ECE:  LDRB.W          R3, [R0,#0x24]
526ED2:  STR.W           R2, [R0,#0x46]
526ED6:  STR             R1, [R0]
526ED8:  AND.W           R1, R3, #0xF0
526EDC:  ORR.W           R1, R1, #1
526EE0:  STRB.W          R1, [R0,#0x24]
526EE4:  POP             {R4,R5,R7,PC}
