; =========================================================
; Game Engine Function: _ZN23CTaskComplexSignalAtPed17CreateNextSubTaskEP4CPed
; Address            : 0x519F4C - 0x51A038
; =========================================================

519F4C:  PUSH            {R4,R5,R7,LR}
519F4E:  ADD             R7, SP, #8
519F50:  SUB             SP, SP, #8
519F52:  MOV             R4, R0
519F54:  LDR             R0, [R4,#8]
519F56:  LDR             R1, [R0]
519F58:  LDR             R1, [R1,#0x14]
519F5A:  BLX             R1
519F5C:  CMP.W           R0, #0x398
519F60:  BNE             loc_519FAA
519F62:  LDR             R5, [R4,#0x10]
519F64:  ADDS            R0, R5, #1
519F66:  BNE             loc_519F8E
519F68:  BLX             rand
519F6C:  UXTH            R0, R0
519F6E:  VLDR            S2, =0.000015259
519F72:  VMOV            S0, R0
519F76:  VCVT.F32.S32    S0, S0
519F7A:  VMUL.F32        S0, S0, S2
519F7E:  VLDR            S2, =2000.0
519F82:  VMUL.F32        S0, S0, S2
519F86:  VCVT.S32.F32    S0, S0
519F8A:  VMOV            R5, S0
519F8E:  MOVS            R0, #dword_20; this
519F90:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519F94:  MOV             R4, R0
519F96:  MOV.W           R0, #0x41000000
519F9A:  STR             R0, [SP,#0x10+var_10]; float
519F9C:  MOV             R0, R4; this
519F9E:  MOV             R1, R5; int
519FA0:  MOVS            R2, #0; bool
519FA2:  MOVS            R3, #0; bool
519FA4:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
519FA8:  B               loc_51A032
519FAA:  LDR             R0, [R4,#8]
519FAC:  LDR             R1, [R0]
519FAE:  LDR             R1, [R1,#0x14]
519FB0:  BLX             R1
519FB2:  CMP             R0, #0xCB
519FB4:  BNE             loc_519FD2
519FB6:  MOVS            R0, #(byte_9+3); this
519FB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519FBC:  MOV             R4, R0
519FBE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
519FC2:  LDR             R0, =(_ZTV23CTaskSimpleDoHandSignal_ptr - 0x519FCC)
519FC4:  MOVS            R1, #0
519FC6:  STRB            R1, [R4,#8]
519FC8:  ADD             R0, PC; _ZTV23CTaskSimpleDoHandSignal_ptr
519FCA:  LDR             R0, [R0]; `vtable for'CTaskSimpleDoHandSignal ...
519FCC:  ADDS            R0, #8
519FCE:  STR             R0, [R4]
519FD0:  B               loc_51A032
519FD2:  LDR             R0, [R4,#8]
519FD4:  LDR             R1, [R0]
519FD6:  LDR             R1, [R1,#0x14]
519FD8:  BLX             R1
519FDA:  MOVW            R1, #0x4BE; unsigned int
519FDE:  CMP             R0, R1
519FE0:  BNE             loc_51A030
519FE2:  LDRB            R0, [R4,#0x15]
519FE4:  CBZ             R0, loc_51A030
519FE6:  LDRB            R0, [R4,#0x14]
519FE8:  MOVS            R4, #0
519FEA:  CBZ             R0, loc_51A032
519FEC:  MOVS            R0, #dword_20; this
519FEE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519FF2:  MOV             R5, R0
519FF4:  BLX             rand
519FF8:  UXTH            R0, R0
519FFA:  VLDR            S2, =0.000015259
519FFE:  VMOV            S0, R0
51A002:  MOVS            R1, #0x34 ; '4'
51A004:  VMOV.F32        S4, #8.0
51A008:  MOV.W           R3, #0x40800000
51A00C:  VCVT.F32.S32    S0, S0
51A010:  VMUL.F32        S0, S0, S2
51A014:  VMUL.F32        S0, S0, S4
51A018:  VCVT.S32.F32    S0, S0
51A01C:  STR             R4, [SP,#0x10+var_10]
51A01E:  VMOV            R0, S0
51A022:  ADDW            R2, R0, #0x117
51A026:  MOV             R0, R5
51A028:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
51A02C:  MOV             R4, R5
51A02E:  B               loc_51A032
51A030:  MOVS            R4, #0
51A032:  MOV             R0, R4
51A034:  ADD             SP, SP, #8
51A036:  POP             {R4,R5,R7,PC}
