; =========================================================
; Game Engine Function: _ZNK26CTaskComplexWanderStandard5CloneEv
; Address            : 0x526DEC - 0x526E48
; =========================================================

526DEC:  PUSH            {R4-R7,LR}
526DEE:  ADD             R7, SP, #0xC
526DF0:  PUSH.W          {R11}
526DF4:  MOV             R4, R0
526DF6:  MOVS            R0, #dword_38; this
526DF8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
526DFC:  LDRB.W          R5, [R4,#0x24]
526E00:  LDR             R6, [R4,#0xC]
526E02:  LDRB            R4, [R4,#0x10]
526E04:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
526E08:  LDR             R1, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x526E14)
526E0A:  MOV.W           R2, #0x3F000000
526E0E:  STRB            R4, [R0,#0x10]
526E10:  ADD             R1, PC; _ZTV26CTaskComplexWanderStandard_ptr
526E12:  STR             R6, [R0,#0xC]
526E14:  STR             R2, [R0,#0x14]
526E16:  MOVW            R2, #0xFFFF
526E1A:  STRH            R2, [R0,#0x18]
526E1C:  STRH            R2, [R0,#0x1C]
526E1E:  MOVS            R2, #0
526E20:  LDR             R1, [R1]; `vtable for'CTaskComplexWanderStandard ...
526E22:  STR             R2, [R0,#0x20]
526E24:  STRH            R2, [R0,#0x30]
526E26:  ADDS            R1, #8
526E28:  STR             R2, [R0,#0x34]
526E2A:  STRD.W          R2, R2, [R0,#0x28]
526E2E:  LDRB.W          R2, [R0,#0x24]
526E32:  STR             R1, [R0]
526E34:  AND.W           R1, R5, #1
526E38:  AND.W           R2, R2, #0xF0
526E3C:  ORRS            R1, R2
526E3E:  STRB.W          R1, [R0,#0x24]
526E42:  POP.W           {R11}
526E46:  POP             {R4-R7,PC}
