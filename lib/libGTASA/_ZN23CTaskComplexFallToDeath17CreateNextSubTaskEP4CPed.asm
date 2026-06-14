; =========================================================
; Game Engine Function: _ZN23CTaskComplexFallToDeath17CreateNextSubTaskEP4CPed
; Address            : 0x52D06C - 0x52D1E2
; =========================================================

52D06C:  PUSH            {R4,R5,R7,LR}
52D06E:  ADD             R7, SP, #8
52D070:  VPUSH           {D8}
52D074:  MOV             R4, R0
52D076:  MOV             R5, R1
52D078:  LDR             R0, [R4,#8]
52D07A:  LDR             R1, [R0]
52D07C:  LDR             R1, [R1,#0x14]
52D07E:  BLX             R1
52D080:  CMP             R0, #0xF2
52D082:  BEQ             loc_52D0D4
52D084:  CMP             R0, #0xF1
52D086:  BNE             loc_52D164
52D088:  MOVS            R0, #dword_14; this
52D08A:  VLDR            S16, [R5,#0x50]
52D08E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52D092:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52D096:  VABS.F32        S0, S16
52D09A:  LDR             R1, =(_ZTV15CTaskSimpleLand_ptr - 0x52D0A6)
52D09C:  VLDR            S2, =0.1
52D0A0:  MOVS            R2, #0
52D0A2:  ADD             R1, PC; _ZTV15CTaskSimpleLand_ptr
52D0A4:  STR             R2, [R0,#8]
52D0A6:  LDR             R1, [R1]; `vtable for'CTaskSimpleLand ...
52D0A8:  ADDS            R1, #8
52D0AA:  STR             R1, [R0]
52D0AC:  VCMPE.F32       S0, S2
52D0B0:  VMRS            APSR_nzcv, FPSCR
52D0B4:  BGE.W           loc_52D1C0
52D0B8:  LDRB            R1, [R0,#0x10]
52D0BA:  MOV.W           R2, #0xFFFFFFFF
52D0BE:  STR             R2, [R0,#0xC]
52D0C0:  AND.W           R1, R1, #0xF8
52D0C4:  ORR.W           R1, R1, #6
52D0C8:  STRB            R1, [R0,#0x10]
52D0CA:  LDRB.W          R1, [R4,#0x21]
52D0CE:  AND.W           R1, R1, #0xFB
52D0D2:  B               loc_52D1D8
52D0D4:  LDRB.W          R0, [R4,#0x21]
52D0D8:  TST.W           R0, #1
52D0DC:  BNE             loc_52D16C
52D0DE:  VLDR            S0, [R5,#0x50]
52D0E2:  VLDR            S2, =0.01
52D0E6:  VABS.F32        S0, S0
52D0EA:  VCMPE.F32       S0, S2
52D0EE:  VMRS            APSR_nzcv, FPSCR
52D0F2:  BLT             loc_52D16C
52D0F4:  LDR.W           R1, [R5,#0x588]
52D0F8:  CMP             R1, #0
52D0FA:  ITTT NE
52D0FC:  LDRBNE.W        R1, [R1,#0x3A]
52D100:  ANDNE.W         R1, R1, #7; unsigned int
52D104:  CMPNE           R1, #1
52D106:  BNE             loc_52D16C
52D108:  ORR.W           R0, R0, #1
52D10C:  STRB.W          R0, [R4,#0x21]
52D110:  MOVS            R0, #off_3C; this
52D112:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52D116:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52D11A:  LDR             R2, =(_ZTV16CTaskSimpleInAir_ptr - 0x52D124)
52D11C:  MOVS            R3, #0
52D11E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52D12A)
52D120:  ADD             R2, PC; _ZTV16CTaskSimpleInAir_ptr
52D122:  STR.W           R3, [R0,#0x32]
52D126:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52D128:  STR.W           R3, [R0,#0x2E]
52D12C:  LDR             R2, [R2]; `vtable for'CTaskSimpleInAir ...
52D12E:  STRD.W          R3, R3, [R0,#0x28]
52D132:  STR             R3, [R0,#0x38]
52D134:  ADDS            R2, #8
52D136:  LDRB.W          R5, [R0,#0x24]
52D13A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
52D13C:  STR             R2, [R0]
52D13E:  AND.W           R2, R5, #0xF8
52D142:  STRD.W          R3, R3, [R0,#0x1C]
52D146:  ORR.W           R2, R2, #2
52D14A:  STRB.W          R2, [R0,#0x24]
52D14E:  MOV.W           R2, #0x1F4
52D152:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
52D154:  STRD.W          R1, R2, [R0,#0x2C]
52D158:  MOVS            R1, #1
52D15A:  STRB.W          R1, [R0,#0x34]
52D15E:  VPOP            {D8}
52D162:  POP             {R4,R5,R7,PC}
52D164:  MOVS            R0, #0
52D166:  VPOP            {D8}
52D16A:  POP             {R4,R5,R7,PC}
52D16C:  LSLS            R0, R0, #0x1D
52D16E:  BMI             loc_52D19A
52D170:  LDR             R1, [R4,#0x18]
52D172:  ADDS            R0, R1, #1
52D174:  BEQ             loc_52D188
52D176:  LDR             R0, [R5,#0x18]
52D178:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52D17C:  CMP             R0, #0
52D17E:  ITTT NE
52D180:  MOVNE           R1, #0
52D182:  MOVTNE          R1, #0xC47A
52D186:  STRNE           R1, [R0,#0x1C]
52D188:  MOVS            R0, #0x18
52D18A:  MOVS            R1, #0; int
52D18C:  STR             R0, [R4,#0x1C]
52D18E:  MOVS            R2, #0x18; unsigned int
52D190:  LDR             R0, [R5,#0x18]; int
52D192:  MOV.W           R3, #0x41000000
52D196:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52D19A:  LDR.W           R0, [R5,#0x440]; this
52D19E:  MOVS            R1, #0; bool
52D1A0:  MOVS            R2, #1; bool
52D1A2:  BLX             j__ZN16CPedIntelligence10ClearTasksEbb; CPedIntelligence::ClearTasks(bool,bool)
52D1A6:  MOVS            R0, #word_10; this
52D1A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52D1AC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52D1B4)
52D1AE:  MOVS            R2, #0; bool
52D1B0:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52D1B2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
52D1B4:  LDR             R1, [R1]; int
52D1B6:  BLX             j__ZN15CTaskSimpleDeadC2Eib; CTaskSimpleDead::CTaskSimpleDead(int,bool)
52D1BA:  VPOP            {D8}
52D1BE:  POP             {R4,R5,R7,PC}
52D1C0:  LDRB            R1, [R0,#0x10]
52D1C2:  MOVS            R2, #0x18
52D1C4:  STR             R2, [R0,#0xC]
52D1C6:  AND.W           R1, R1, #0xF8
52D1CA:  ORR.W           R1, R1, #4
52D1CE:  STRB            R1, [R0,#0x10]
52D1D0:  LDRB.W          R1, [R4,#0x21]
52D1D4:  ORR.W           R1, R1, #4
52D1D8:  STRB.W          R1, [R4,#0x21]
52D1DC:  VPOP            {D8}
52D1E0:  POP             {R4,R5,R7,PC}
