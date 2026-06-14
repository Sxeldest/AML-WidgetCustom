; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntity13CreateSubTaskEi
; Address            : 0x513CCC - 0x513DB4
; =========================================================

513CCC:  PUSH            {R4-R7,LR}
513CCE:  ADD             R7, SP, #0xC
513CD0:  PUSH.W          {R8-R10}
513CD4:  SUB             SP, SP, #8
513CD6:  MOV             R5, R0
513CD8:  MOVW            R0, #0x38E
513CDC:  MOVS            R4, #0
513CDE:  CMP             R1, R0
513CE0:  BEQ             loc_513D26
513CE2:  CMP             R1, #0xCB
513CE4:  BNE             loc_513DAA
513CE6:  MOVS            R0, #dword_20; this
513CE8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513CEC:  MOV             R4, R0
513CEE:  BLX             rand
513CF2:  UXTH            R0, R0
513CF4:  VLDR            S2, =0.000015259
513CF8:  VMOV            S0, R0
513CFC:  MOV.W           R0, #0x41000000
513D00:  MOVS            R2, #0; bool
513D02:  MOVS            R3, #0; bool
513D04:  VCVT.F32.S32    S0, S0
513D08:  VMUL.F32        S0, S0, S2
513D0C:  VLDR            S2, =50.0
513D10:  VMUL.F32        S0, S0, S2
513D14:  VCVT.S32.F32    S0, S0
513D18:  STR             R0, [SP,#0x20+var_20]; float
513D1A:  MOV             R0, R4; this
513D1C:  VMOV            R1, S0; int
513D20:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
513D24:  B               loc_513DAA
513D26:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513D32)
513D28:  MOV.W           R8, #1
513D2C:  LDR             R2, [R5,#0x28]
513D2E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513D30:  LDR             R1, [R5,#0xC]; unsigned int
513D32:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
513D34:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
513D36:  STRB.W          R8, [R5,#0x3C]
513D3A:  STRD.W          R0, R2, [R5,#0x34]
513D3E:  LDR             R0, [R1,#0x14]
513D40:  ADD.W           R2, R0, #0x30 ; '0'
513D44:  CMP             R0, #0
513D46:  IT EQ
513D48:  ADDEQ           R2, R1, #4
513D4A:  VLDR            D16, [R2]
513D4E:  LDR             R0, [R2,#8]
513D50:  STR             R0, [R5,#0x18]
513D52:  MOVS            R0, #dword_44; this
513D54:  VSTR            D16, [R5,#0x10]
513D58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513D5C:  LDRD.W          R6, R9, [R5,#0x1C]
513D60:  LDRB.W          R10, [R5,#0x24]
513D64:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
513D68:  LDR             R1, =(_ZTV26CTaskComplexSmartFleePoint_ptr - 0x513D6E)
513D6A:  ADD             R1, PC; _ZTV26CTaskComplexSmartFleePoint_ptr
513D6C:  LDR             R1, [R1]; `vtable for'CTaskComplexSmartFleePoint ...
513D6E:  ADDS            R1, #8
513D70:  STR             R1, [R0]
513D72:  LDR             R1, [R5,#0x18]
513D74:  VLDR            D16, [R5,#0x10]
513D78:  STR             R1, [R0,#0x20]
513D7A:  MOVS            R1, #7
513D7C:  STRD.W          R6, R9, [R0,#0x28]
513D80:  STRD.W          R1, R4, [R0,#0x30]
513D84:  ADDS            R1, R6, #1
513D86:  STR             R4, [R0,#0x38]
513D88:  STRB.W          R10, [R0,#0x24]
513D8C:  STRH            R4, [R0,#0x3C]
513D8E:  STRH.W          R4, [R0,#0x40]
513D92:  VSTR            D16, [R0,#0x18]
513D96:  BEQ             loc_513DA8
513D98:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513D9E)
513D9A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513D9C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
513D9E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
513DA0:  STRD.W          R1, R6, [R0,#0x34]
513DA4:  STRB.W          R8, [R0,#0x3C]
513DA8:  MOV             R4, R0
513DAA:  MOV             R0, R4
513DAC:  ADD             SP, SP, #8
513DAE:  POP.W           {R8-R10}
513DB2:  POP             {R4-R7,PC}
