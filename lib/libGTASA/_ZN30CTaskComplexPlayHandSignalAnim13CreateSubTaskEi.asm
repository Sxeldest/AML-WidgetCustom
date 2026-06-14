; =========================================================
; Game Engine Function: _ZN30CTaskComplexPlayHandSignalAnim13CreateSubTaskEi
; Address            : 0x4D7A14 - 0x4D7AE4
; =========================================================

4D7A14:  PUSH            {R4-R7,LR}
4D7A16:  ADD             R7, SP, #0xC
4D7A18:  PUSH.W          {R8-R10}
4D7A1C:  SUB             SP, SP, #8
4D7A1E:  MOV             R6, R0
4D7A20:  MOVW            R0, #0x1A9
4D7A24:  MOVS            R4, #0
4D7A26:  CMP             R1, R0
4D7A28:  BEQ             loc_4D7A4A
4D7A2A:  CMP             R1, #0xCB
4D7A2C:  BNE             loc_4D7ADA
4D7A2E:  MOVS            R0, #dword_20; this
4D7A30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D7A34:  MOV             R4, R0
4D7A36:  MOV.W           R0, #0x41000000
4D7A3A:  STR             R0, [SP,#0x20+var_20]; float
4D7A3C:  MOV             R0, R4; this
4D7A3E:  MOVS            R1, #0; int
4D7A40:  MOVS            R2, #1; bool
4D7A42:  MOVS            R3, #0; bool
4D7A44:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4D7A48:  B               loc_4D7ADA
4D7A4A:  MOVS            R0, #dword_40; this
4D7A4C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D7A50:  MOV             R8, R0
4D7A52:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
4D7A56:  MOVS            R0, #dword_20; this
4D7A58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D7A5C:  MOV             R5, R0
4D7A5E:  BLX             rand
4D7A62:  UXTH            R0, R0
4D7A64:  VLDR            S2, =0.000015259
4D7A68:  VMOV            S0, R0
4D7A6C:  MOV.W           R0, #0x41000000
4D7A70:  MOVS            R2, #0; bool
4D7A72:  MOVS            R3, #0; bool
4D7A74:  VCVT.F32.S32    S0, S0
4D7A78:  VMUL.F32        S0, S0, S2
4D7A7C:  VLDR            S2, =1500.0
4D7A80:  VMUL.F32        S0, S0, S2
4D7A84:  VCVT.S32.F32    S0, S0
4D7A88:  STR             R0, [SP,#0x20+var_20]; float
4D7A8A:  MOV             R0, R5; this
4D7A8C:  VMOV            R1, S0; int
4D7A90:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4D7A94:  MOV             R0, R8; this
4D7A96:  MOV             R1, R5; CTask *
4D7A98:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4D7A9C:  MOVS            R0, #dword_24; this
4D7A9E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D7AA2:  LDRD.W          R9, R10, [R6,#0xC]
4D7AA6:  MOV             R5, R0
4D7AA8:  LDRB            R6, [R6,#0x14]
4D7AAA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D7AAE:  LDR             R0, =(_ZTV29CTaskSimplePlayHandSignalAnim_ptr - 0x4D7AB6)
4D7AB0:  STR             R4, [R5,#8]
4D7AB2:  ADD             R0, PC; _ZTV29CTaskSimplePlayHandSignalAnim_ptr
4D7AB4:  LDR             R0, [R0]; `vtable for'CTaskSimplePlayHandSignalAnim ...
4D7AB6:  ADDS            R0, #8
4D7AB8:  STR             R0, [R5]
4D7ABA:  STRD.W          R9, R10, [R5,#0x10]
4D7ABE:  LDRB            R0, [R5,#0xC]
4D7AC0:  UBFX.W          R1, R6, #3, #1
4D7AC4:  STRB            R1, [R5,#0x18]
4D7AC6:  MOV             R1, R5; CTask *
4D7AC8:  AND.W           R0, R0, #0xF8
4D7ACC:  STRD.W          R4, R4, [R5,#0x1C]
4D7AD0:  STRB            R0, [R5,#0xC]
4D7AD2:  MOV             R0, R8; this
4D7AD4:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4D7AD8:  MOV             R4, R8
4D7ADA:  MOV             R0, R4
4D7ADC:  ADD             SP, SP, #8
4D7ADE:  POP.W           {R8-R10}
4D7AE2:  POP             {R4-R7,PC}
