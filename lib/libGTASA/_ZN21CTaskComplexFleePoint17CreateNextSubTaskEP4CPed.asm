; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePoint17CreateNextSubTaskEP4CPed
; Address            : 0x512CC8 - 0x512FA8
; =========================================================

512CC8:  PUSH            {R4-R7,LR}
512CCA:  ADD             R7, SP, #0xC
512CCC:  PUSH.W          {R8-R10}
512CD0:  VPUSH           {D8}
512CD4:  SUB             SP, SP, #0x18
512CD6:  MOV             R4, R0
512CD8:  MOV             R10, R1
512CDA:  LDR             R0, [R4,#8]
512CDC:  LDR             R1, [R0]
512CDE:  LDR             R1, [R1,#0x14]
512CE0:  BLX             R1
512CE2:  LDR             R0, [R4,#8]
512CE4:  LDR             R1, [R0]
512CE6:  LDR             R1, [R1,#0x14]
512CE8:  BLX             R1
512CEA:  MOVW            R1, #0x387; unsigned int
512CEE:  MOVS            R6, #0
512CF0:  CMP             R0, R1
512CF2:  BEQ.W           loc_512E1A
512CF6:  CMP.W           R0, #0x384
512CFA:  BEQ.W           loc_512E60
512CFE:  MOVW            R1, #0x2CA
512D02:  CMP             R0, R1
512D04:  BNE.W           loc_512F9A
512D08:  LDR.W           R0, [R10,#0x14]
512D0C:  ADD.W           R5, R10, #4
512D10:  VLDR            S0, [R4,#0xC]
512D14:  MOV.W           R9, #0
512D18:  CMP             R0, #0
512D1A:  MOV             R1, R5
512D1C:  VLDR            S2, [R4,#0x10]
512D20:  IT NE
512D22:  ADDNE.W         R1, R0, #0x30 ; '0'
512D26:  VLDR            S4, [R1]
512D2A:  ADD             R0, SP, #0x38+var_2C; this
512D2C:  VLDR            S6, [R1,#4]
512D30:  VSUB.F32        S0, S4, S0
512D34:  VSTR            S0, [SP,#0x38+var_2C]
512D38:  VSUB.F32        S0, S6, S2
512D3C:  STR.W           R9, [SP,#0x38+var_24]
512D40:  VSTR            S0, [SP,#0x38+var_28]
512D44:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
512D48:  BLX             rand
512D4C:  VMOV            S0, R0
512D50:  VLDR            S16, =4.6566e-10
512D54:  VLDR            S2, =0.66
512D58:  VCVT.F32.S32    S0, S0
512D5C:  VMUL.F32        S0, S0, S16
512D60:  VMUL.F32        S0, S0, S2
512D64:  VLDR            S2, =-0.33
512D68:  VADD.F32        S0, S0, S2
512D6C:  VMOV            R6, S0
512D70:  MOV             R0, R6; x
512D72:  BLX             cosf
512D76:  MOV             R8, R0
512D78:  MOV             R0, R6; x
512D7A:  BLX             sinf
512D7E:  MOV             R6, R0
512D80:  BLX             rand
512D84:  VMOV            S0, R0
512D88:  VMOV.F32        S2, #3.0
512D8C:  VCVT.F32.S32    S0, S0
512D90:  VLDR            S6, [SP,#0x38+var_2C]
512D94:  VMOV            S10, R8
512D98:  VLDR            S8, [SP,#0x38+var_28]
512D9C:  VMOV            S4, R6
512DA0:  LDR.W           R0, [R10,#0x14]
512DA4:  VMUL.F32        S6, S10, S6
512DA8:  VMUL.F32        S4, S4, S8
512DAC:  CMP             R0, #0
512DAE:  IT NE
512DB0:  ADDNE.W         R5, R0, #0x30 ; '0'
512DB4:  MOVS            R0, #word_2C; this
512DB6:  VMUL.F32        S0, S0, S16
512DBA:  VMUL.F32        S0, S0, S2
512DBE:  VADD.F32        S0, S0, S2
512DC2:  VADD.F32        S2, S6, S4
512DC6:  VSUB.F32        S4, S6, S4
512DCA:  VLDR            S6, [R5]
512DCE:  VMUL.F32        S2, S0, S2
512DD2:  VMUL.F32        S0, S0, S4
512DD6:  VADD.F32        S2, S6, S2
512DDA:  VSTR            S2, [R4,#0x18]
512DDE:  VLDR            S2, [R5,#4]
512DE2:  VADD.F32        S0, S0, S2
512DE6:  VLDR            S2, =0.0
512DEA:  VSTR            S0, [R4,#0x1C]
512DEE:  VLDR            S0, [R5,#8]
512DF2:  VADD.F32        S0, S0, S2
512DF6:  VSTR            S0, [R4,#0x20]
512DFA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512DFE:  MOV             R6, R0
512E00:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x512E0C)
512E02:  ADD.W           R2, R4, #0x18; CVector *
512E06:  MOVS            R1, #7; int
512E08:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
512E0A:  STRD.W          R9, R9, [SP,#0x38+var_38]; bool
512E0E:  LDR             R0, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
512E10:  LDR             R3, [R0]; float
512E12:  MOV             R0, R6; this
512E14:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
512E18:  B               loc_512F9A
512E1A:  MOVS            R0, #dword_40; this
512E1C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512E20:  MOV             R4, R0
512E22:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
512E26:  MOVS            R0, #dword_20; this
512E28:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512E2C:  MOVS            R1, #0
512E2E:  MOVS            R2, #0xA5
512E30:  MOV.W           R3, #0x40800000
512E34:  MOV             R5, R0
512E36:  STR             R6, [SP,#0x38+var_38]
512E38:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
512E3C:  MOV             R0, R4; this
512E3E:  MOV             R1, R5; CTask *
512E40:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
512E44:  MOVS            R0, #dword_1C; this
512E46:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512E4A:  MOV.W           R1, #0x7D0; int
512E4E:  MOV             R5, R0
512E50:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
512E54:  MOV             R0, R4; this
512E56:  MOV             R1, R5; CTask *
512E58:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
512E5C:  MOV             R6, R4
512E5E:  B               loc_512F9A
512E60:  LDR.W           R0, [R10,#0x14]
512E64:  ADD.W           R5, R10, #4
512E68:  VLDR            S0, [R4,#0xC]
512E6C:  CMP             R0, #0
512E6E:  MOV             R1, R5
512E70:  VLDR            S2, [R4,#0x10]
512E74:  IT NE
512E76:  ADDNE.W         R1, R0, #0x30 ; '0'
512E7A:  VLDR            S4, [R1]
512E7E:  MOVS            R0, #0
512E80:  VLDR            S6, [R1,#4]
512E84:  VSUB.F32        S0, S4, S0
512E88:  VSTR            S0, [SP,#0x38+var_2C]
512E8C:  VSUB.F32        S0, S6, S2
512E90:  STR             R0, [SP,#0x38+var_24]
512E92:  ADD             R0, SP, #0x38+var_2C; this
512E94:  VSTR            S0, [SP,#0x38+var_28]
512E98:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
512E9C:  BLX             rand
512EA0:  VMOV            S0, R0
512EA4:  VLDR            S16, =4.6566e-10
512EA8:  VLDR            S2, =0.66
512EAC:  VCVT.F32.S32    S0, S0
512EB0:  VMUL.F32        S0, S0, S16
512EB4:  VMUL.F32        S0, S0, S2
512EB8:  VLDR            S2, =-0.33
512EBC:  VADD.F32        S0, S0, S2
512EC0:  VMOV            R6, S0
512EC4:  MOV             R0, R6; x
512EC6:  BLX             cosf
512ECA:  MOV             R8, R0
512ECC:  MOV             R0, R6; x
512ECE:  BLX             sinf
512ED2:  MOV             R6, R0
512ED4:  BLX             rand
512ED8:  VMOV            S0, R0
512EDC:  MOV.W           R1, #0x384
512EE0:  VMOV.F32        S2, #3.0
512EE4:  VCVT.F32.S32    S0, S0
512EE8:  VLDR            S6, [SP,#0x38+var_2C]
512EEC:  VMOV            S10, R8
512EF0:  VLDR            S8, [SP,#0x38+var_28]
512EF4:  VMOV            S4, R6
512EF8:  LDR.W           R0, [R10,#0x14]
512EFC:  VMUL.F32        S6, S10, S6
512F00:  VMUL.F32        S4, S4, S8
512F04:  CMP             R0, #0
512F06:  IT NE
512F08:  ADDNE.W         R5, R0, #0x30 ; '0'
512F0C:  MOV             R0, R4; this
512F0E:  VMUL.F32        S0, S0, S16
512F12:  VMUL.F32        S0, S0, S2
512F16:  VADD.F32        S0, S0, S2
512F1A:  VADD.F32        S2, S6, S4
512F1E:  VSUB.F32        S4, S6, S4
512F22:  VLDR            S6, [R5]
512F26:  VMUL.F32        S2, S0, S2
512F2A:  VMUL.F32        S0, S0, S4
512F2E:  VADD.F32        S2, S6, S2
512F32:  VSTR            S2, [R4,#0x18]
512F36:  VLDR            S4, [R5,#4]
512F3A:  VADD.F32        S0, S0, S4
512F3E:  VLDR            S4, =0.0
512F42:  VSTR            S0, [R4,#0x1C]
512F46:  VLDR            S6, [R5,#8]
512F4A:  VADD.F32        S4, S6, S4
512F4E:  VSTR            S4, [R4,#0x20]
512F52:  VLDR            S6, [R4,#0xC]
512F56:  VLDR            S8, [R4,#0x10]
512F5A:  VSUB.F32        S2, S2, S6
512F5E:  VLDR            S10, [R4,#0x14]
512F62:  VSUB.F32        S0, S0, S8
512F66:  VLDR            S12, [R4,#0x34]
512F6A:  VSUB.F32        S4, S4, S10
512F6E:  VMUL.F32        S2, S2, S2
512F72:  VMUL.F32        S0, S0, S0
512F76:  VMUL.F32        S4, S4, S4
512F7A:  VADD.F32        S0, S2, S0
512F7E:  VMUL.F32        S2, S12, S12
512F82:  VADD.F32        S0, S0, S4
512F86:  VCMPE.F32       S0, S2
512F8A:  VMRS            APSR_nzcv, FPSCR
512F8E:  IT GT
512F90:  MOVWGT          R1, #0x387; int
512F94:  BLX             j__ZN21CTaskComplexFleePoint13CreateSubTaskEi; CTaskComplexFleePoint::CreateSubTask(int)
512F98:  MOV             R6, R0
512F9A:  MOV             R0, R6
512F9C:  ADD             SP, SP, #0x18
512F9E:  VPOP            {D8}
512FA2:  POP.W           {R8-R10}
512FA6:  POP             {R4-R7,PC}
