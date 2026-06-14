; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander22GetWanderTaskByPedTypeEi
; Address            : 0x520A24 - 0x520BFA
; =========================================================

520A24:  PUSH            {R4-R7,LR}
520A26:  ADD             R7, SP, #0xC
520A28:  PUSH.W          {R11}
520A2C:  SUBS            R0, #6
520A2E:  MOVW            R6, #0xFFFF
520A32:  MOV.W           R0, R0,ROR#1
520A36:  CMP             R0, #8; switch 9 cases
520A38:  BHI             def_520A3A; jumptable 00520A3A default case, cases 1-5
520A3A:  TBB.W           [PC,R0]; switch jump
520A3E:  DCB 5; jump table for switch statement
520A3F:  DCB 0x3F
520A40:  DCB 0x3F
520A41:  DCB 0x3F
520A42:  DCB 0x3F
520A43:  DCB 0x3F
520A44:  DCB 0x51; unsigned int
520A45:  DCB 0x79
520A46:  DCB 0xA3
520A47:  ALIGN 2
520A48:  MOVS            R0, #dword_50; jumptable 00520A3A case 0
520A4A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520A4E:  MOV             R4, R0
520A50:  BLX             rand
520A54:  MOV             R5, R0
520A56:  MOV             R0, R4; this
520A58:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520A5C:  UXTH            R1, R5
520A5E:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x520A78)
520A60:  VMOV            S2, R1
520A64:  VLDR            S4, =0.000015259
520A68:  VMOV.I32        Q8, #0
520A6C:  ADD.W           R1, R4, #0x38 ; '8'
520A70:  VCVT.F32.S32    S2, S2
520A74:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
520A76:  VMOV.F32        S0, #8.0
520A7A:  VST1.32         {D16-D17}, [R1]
520A7E:  MOVS            R1, #4
520A80:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderCop ...
520A82:  STR             R1, [R4,#0xC]
520A84:  MOV.W           R1, #0x3F000000
520A88:  STR             R1, [R4,#0x14]
520A8A:  MOVS            R1, #0; unsigned int
520A8C:  VMUL.F32        S2, S2, S4
520A90:  STRH            R6, [R4,#0x18]
520A92:  STRH            R6, [R4,#0x1C]
520A94:  ADDS            R0, #8
520A96:  STR             R1, [R4,#0x20]
520A98:  STR             R0, [R4]
520A9A:  LDRB.W          R0, [R4,#0x24]
520A9E:  STR.W           R1, [R4,#0x32]
520AA2:  STR.W           R1, [R4,#0x2E]
520AA6:  AND.W           R0, R0, #0xF0
520AAA:  STRD.W          R1, R1, [R4,#0x28]
520AAE:  VMUL.F32        S0, S2, S0
520AB2:  STR.W           R1, [R4,#0x4A]
520AB6:  STR.W           R1, [R4,#0x46]
520ABA:  B               loc_520BE0
520ABC:  MOVS            R0, #dword_38; jumptable 00520A3A default case, cases 1-5
520ABE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520AC2:  MOV             R4, R0
520AC4:  BLX             rand
520AC8:  MOV             R5, R0
520ACA:  MOV             R0, R4; this
520ACC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520AD0:  UXTH            R0, R5
520AD2:  VMOV            S0, R0
520AD6:  LDR             R0, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x520AE0)
520AD8:  VCVT.F32.S32    S0, S0
520ADC:  ADD             R0, PC; _ZTV26CTaskComplexWanderStandard_ptr
520ADE:  B               loc_520B52
520AE0:  MOVS            R0, #word_28; jumptable 00520A3A case 6
520AE2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520AE6:  MOV             R4, R0
520AE8:  BLX             rand
520AEC:  MOV             R5, R0
520AEE:  MOV             R0, R4; this
520AF0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520AF4:  UXTH            R0, R5
520AF6:  VLDR            S2, =0.000015259
520AFA:  VMOV            S0, R0
520AFE:  LDR             R0, =(_ZTV23CTaskComplexWanderMedic_ptr - 0x520B0E)
520B00:  VMOV.F32        S4, #8.0
520B04:  MOVS            R1, #4
520B06:  VCVT.F32.S32    S0, S0
520B0A:  ADD             R0, PC; _ZTV23CTaskComplexWanderMedic_ptr
520B0C:  STR             R1, [R4,#0xC]
520B0E:  MOV.W           R1, #0x3F000000
520B12:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderMedic ...
520B14:  STR             R1, [R4,#0x14]
520B16:  MOVS            R1, #0; unsigned int
520B18:  STRH            R6, [R4,#0x18]
520B1A:  ADDS            R0, #8
520B1C:  STRH            R6, [R4,#0x1C]
520B1E:  LDRB.W          R2, [R4,#0x24]
520B22:  VMUL.F32        S0, S0, S2
520B26:  STR             R1, [R4,#0x20]
520B28:  STR             R0, [R4]
520B2A:  VMUL.F32        S0, S0, S4
520B2E:  B               loc_520BDC
520B30:  MOVS            R0, #dword_38; jumptable 00520A3A case 7
520B32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520B36:  MOV             R4, R0
520B38:  BLX             rand
520B3C:  MOV             R5, R0
520B3E:  MOV             R0, R4; this
520B40:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520B44:  UXTH            R0, R5
520B46:  VMOV            S0, R0
520B4A:  LDR             R0, =(_ZTV26CTaskComplexWanderCriminal_ptr - 0x520B54)
520B4C:  VCVT.F32.S32    S0, S0
520B50:  ADD             R0, PC; _ZTV26CTaskComplexWanderCriminal_ptr
520B52:  VLDR            S2, =0.000015259
520B56:  VMOV.F32        S4, #8.0
520B5A:  MOVS            R1, #4
520B5C:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderStandard
520B5E:  VMUL.F32        S0, S0, S2
520B62:  STR             R1, [R4,#0xC]
520B64:  MOV.W           R1, #0x3F000000
520B68:  ADDS            R0, #8
520B6A:  STR             R1, [R4,#0x14]
520B6C:  MOVS            R1, #0; unsigned int
520B6E:  STRH            R6, [R4,#0x18]
520B70:  STRH            R6, [R4,#0x1C]
520B72:  STR             R1, [R4,#0x20]
520B74:  LDRB.W          R2, [R4,#0x24]
520B78:  VMUL.F32        S0, S0, S4
520B7C:  STR             R0, [R4]
520B7E:  STRH            R1, [R4,#0x30]
520B80:  STR             R1, [R4,#0x34]
520B82:  B               loc_520BD8
520B84:  MOVS            R0, #off_3C; jumptable 00520A3A case 8
520B86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520B8A:  MOV             R4, R0
520B8C:  BLX             rand
520B90:  MOV             R5, R0
520B92:  MOV             R0, R4; this
520B94:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520B98:  UXTH            R0, R5
520B9A:  VLDR            S2, =0.000015259
520B9E:  VMOV            S0, R0
520BA2:  LDR             R0, =(_ZTV28CTaskComplexWanderProstitute_ptr - 0x520BB2)
520BA4:  VMOV.F32        S4, #8.0
520BA8:  MOVS            R1, #4
520BAA:  VCVT.F32.S32    S0, S0
520BAE:  ADD             R0, PC; _ZTV28CTaskComplexWanderProstitute_ptr
520BB0:  STR             R1, [R4,#0xC]
520BB2:  MOV.W           R1, #0x3F000000
520BB6:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderProstitute ...
520BB8:  STR             R1, [R4,#0x14]
520BBA:  MOVS            R1, #0
520BBC:  STRH            R6, [R4,#0x18]
520BBE:  ADDS            R0, #8
520BC0:  STRH            R6, [R4,#0x1C]
520BC2:  STR             R1, [R4,#0x20]
520BC4:  VMUL.F32        S0, S0, S2
520BC8:  STRH            R1, [R4,#0x30]
520BCA:  LDRB.W          R2, [R4,#0x24]
520BCE:  STR             R0, [R4]
520BD0:  STRD.W          R1, R1, [R4,#0x34]
520BD4:  VMUL.F32        S0, S0, S4
520BD8:  STR             R1, [R4,#0x28]
520BDA:  STR             R1, [R4,#0x2C]
520BDC:  AND.W           R0, R2, #0xF0
520BE0:  VCVT.S32.F32    S0, S0
520BE4:  ORR.W           R0, R0, #1
520BE8:  STRB.W          R0, [R4,#0x24]
520BEC:  VMOV            R0, S0
520BF0:  STRB            R0, [R4,#0x10]
520BF2:  MOV             R0, R4
520BF4:  POP.W           {R11}
520BF8:  POP             {R4-R7,PC}
