; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOut18CreateFirstSubTaskEP4CPed
; Address            : 0x50502C - 0x505178
; =========================================================

50502C:  PUSH            {R4-R7,LR}
50502E:  ADD             R7, SP, #0xC
505030:  PUSH.W          {R8-R10}
505034:  VPUSH           {D8-D10}
505038:  SUB             SP, SP, #0x10
50503A:  MOV             R5, R1
50503C:  MOV             R4, R0
50503E:  LDRB.W          R0, [R5,#0x485]
505042:  LSLS            R0, R0, #0x1F
505044:  BEQ             loc_50506A
505046:  LDR.W           R0, [R5,#0x590]
50504A:  CBZ             R0, loc_50506A
50504C:  LDR             R0, [R4,#0x10]
50504E:  CMP             R0, #0xA
505050:  BNE             loc_50507E
505052:  LDR             R1, [R4,#0xC]
505054:  LDR.W           R0, [R1,#0x464]; this
505058:  CBZ             R0, loc_50506E
50505A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50505E:  LDR             R1, [R4,#0xC]
505060:  MOVS            R2, #0x20 ; ' '
505062:  CMP             R0, #0
505064:  IT NE
505066:  MOVNE           R2, #0x48 ; 'H'
505068:  B               loc_505070
50506A:  MOVS            R5, #0
50506C:  B               loc_50516A
50506E:  MOVS            R2, #0x20 ; ' '
505070:  LDRB.W          R0, [R1,#0x3A]
505074:  AND.W           R0, R0, #7
505078:  ORRS            R0, R2
50507A:  STRB.W          R0, [R1,#0x3A]
50507E:  ADDW            R1, R5, #0x55C
505082:  LDR             R0, [R5,#0x14]; this
505084:  VLDR            S0, [R1]
505088:  CBZ             R0, loc_5050CA
50508A:  VMOV            R3, S0; float
50508E:  MOVS            R1, #0; x
505090:  MOVS            R2, #0; float
505092:  VLDR            S16, [R0,#0x30]
505096:  VLDR            S18, [R0,#0x34]
50509A:  VLDR            S20, [R0,#0x38]
50509E:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
5050A2:  LDR             R0, [R5,#0x14]
5050A4:  VLDR            S0, [R0,#0x30]
5050A8:  VLDR            S2, [R0,#0x34]
5050AC:  VLDR            S4, [R0,#0x38]
5050B0:  VADD.F32        S0, S16, S0
5050B4:  VADD.F32        S2, S18, S2
5050B8:  VADD.F32        S4, S20, S4
5050BC:  VSTR            S0, [R0,#0x30]
5050C0:  VSTR            S2, [R0,#0x34]
5050C4:  VSTR            S4, [R0,#0x38]
5050C8:  B               loc_5050CE
5050CA:  VSTR            S0, [R5,#0x10]
5050CE:  MOV             R0, R5; CPed *
5050D0:  MOVS            R1, #0
5050D2:  MOV.W           R8, #0
5050D6:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
5050DA:  MOVS            R0, #0x1C; unsigned int
5050DC:  STRD.W          R8, R8, [SP,#0x40+var_3C]
5050E0:  STR.W           R8, [SP,#0x40+var_34]
5050E4:  BLX             _Znwj; operator new(uint)
5050E8:  LDR             R1, [R4,#0x10]
5050EA:  MOVS            R2, #0; int
5050EC:  STR             R1, [SP,#0x40+var_40]; int
5050EE:  ADD             R1, SP, #0x40+var_3C; CVector *
5050F0:  MOVS            R3, #0; int
5050F2:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii; CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&,int,int,int)
5050F6:  STR             R0, [R4,#0x18]
5050F8:  LDRB            R0, [R4,#0x14]
5050FA:  CMP             R0, #0
5050FC:  BEQ             loc_505124
5050FE:  MOVS            R0, #dword_1C; this
505100:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
505104:  LDRD.W          R6, R9, [R4,#0xC]
505108:  MOV             R5, R0
50510A:  LDR             R4, [R4,#0x18]
50510C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
505110:  LDR             R0, =(_ZTV21CTaskSimpleCarFallOut_ptr - 0x50511A)
505112:  STRB.W          R8, [R5,#8]
505116:  ADD             R0, PC; _ZTV21CTaskSimpleCarFallOut_ptr
505118:  STR.W           R8, [R5,#0xC]
50511C:  STRD.W          R9, R4, [R5,#0x14]
505120:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarFallOut ...
505122:  B               loc_505156
505124:  MOVS            R0, #dword_20; this
505126:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50512A:  LDRD.W          R6, R9, [R4,#0xC]
50512E:  MOV             R5, R0
505130:  LDR.W           R10, [R4,#0x18]
505134:  LDRB            R4, [R4,#0x14]
505136:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50513A:  LDR             R0, =(_ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr - 0x505144)
50513C:  STRB.W          R8, [R5,#8]
505140:  ADD             R0, PC; _ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr
505142:  STR.W           R8, [R5,#0xC]
505146:  STR.W           R9, [R5,#0x14]
50514A:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSlowBeDraggedOut ...
50514C:  STRB            R4, [R5,#0x18]
50514E:  STRB.W          R8, [R5,#0x19]
505152:  STR.W           R10, [R5,#0x1C]
505156:  MOV             R1, R5
505158:  ADDS            R0, #8
50515A:  STR             R0, [R5]
50515C:  CMP             R6, #0
50515E:  STR.W           R6, [R1,#0x10]!; CEntity **
505162:  ITT NE
505164:  MOVNE           R0, R6; this
505166:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50516A:  MOV             R0, R5
50516C:  ADD             SP, SP, #0x10
50516E:  VPOP            {D8-D10}
505172:  POP.W           {R8-R10}
505176:  POP             {R4-R7,PC}
