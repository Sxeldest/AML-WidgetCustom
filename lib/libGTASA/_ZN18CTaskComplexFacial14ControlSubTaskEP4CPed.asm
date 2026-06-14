; =========================================================
; Game Engine Function: _ZN18CTaskComplexFacial14ControlSubTaskEP4CPed
; Address            : 0x54101C - 0x541198
; =========================================================

54101C:  PUSH            {R4-R7,LR}
54101E:  ADD             R7, SP, #0xC
541020:  PUSH.W          {R8}
541024:  MOV             R5, R1
541026:  MOV             R4, R0
541028:  MOV             R0, R5; this
54102A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
54102E:  CBNZ            R0, loc_541066
541030:  LDR             R0, [R4,#8]
541032:  MOVS            R2, #2
541034:  MOVS            R3, #0
541036:  MOV.W           R8, #0
54103A:  LDR             R1, [R0]
54103C:  LDR             R6, [R1,#0x1C]
54103E:  MOV             R1, R5
541040:  BLX             R6
541042:  CMP             R0, #1
541044:  BNE             loc_541066
541046:  MOVS            R0, #off_18; this
541048:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54104C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
541050:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x54105E)
541052:  MOVW            R2, #0x1388
541056:  STRH.W          R8, [R0,#0x10]
54105A:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
54105C:  STR             R2, [R0,#0x14]
54105E:  STRD.W          R8, R8, [R0,#8]
541062:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
541064:  B               loc_5410D4
541066:  LDRB            R0, [R4,#0xE]
541068:  CBZ             R0, loc_541094
54106A:  LDR             R0, [R4,#8]
54106C:  MOVS            R2, #1
54106E:  MOVS            R3, #0
541070:  MOV.W           R8, #0
541074:  LDR             R1, [R0]
541076:  LDR             R6, [R1,#0x1C]
541078:  MOV             R1, R5
54107A:  BLX             R6
54107C:  CMP             R0, #1
54107E:  BNE             loc_541094
541080:  MOVS            R0, #off_18; this
541082:  STRH.W          R8, [R4,#0xD]
541086:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54108A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
54108E:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x541094)
541090:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
541092:  B               loc_54110A
541094:  LDR             R0, [R5,#0x18]
541096:  MOVS            R1, #0xC
541098:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
54109C:  CBZ             R0, loc_5410DE
54109E:  LDR             R0, [R5,#0x18]
5410A0:  MOVS            R1, #0xA0
5410A2:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5410A6:  MOV.W           R1, #0xFFFFFFFF
5410AA:  CMP             R0, #0
5410AC:  STR             R1, [R4,#0x18]
5410AE:  MOV.W           R1, #1; unsigned int
5410B2:  STRB            R1, [R4,#0xD]
5410B4:  BNE             loc_541160
5410B6:  MOVS            R0, #dword_1C; this
5410B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5410BC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5410C0:  LDR             R1, =(_ZTV17CTaskSimpleFacial_ptr - 0x5410CC)
5410C2:  MOVS            R2, #0
5410C4:  MOVS            R3, #7
5410C6:  STRH            R2, [R0,#0x10]
5410C8:  ADD             R1, PC; _ZTV17CTaskSimpleFacial_ptr
5410CA:  STR             R2, [R0,#0x18]
5410CC:  STR             R3, [R0,#0x14]
5410CE:  LDR             R1, [R1]; `vtable for'CTaskSimpleFacial ...
5410D0:  STRD.W          R2, R2, [R0,#8]
5410D4:  ADDS            R1, #8
5410D6:  STR             R1, [R0]
5410D8:  POP.W           {R8}
5410DC:  POP             {R4-R7,PC}
5410DE:  LDRB            R0, [R4,#0xD]
5410E0:  CBZ             R0, loc_541128
5410E2:  LDR             R0, [R4,#8]
5410E4:  MOVS            R2, #1
5410E6:  MOVS            R3, #0
5410E8:  MOV.W           R8, #0
5410EC:  LDR             R1, [R0]
5410EE:  LDR             R6, [R1,#0x1C]
5410F0:  MOV             R1, R5
5410F2:  BLX             R6
5410F4:  CMP             R0, #1
5410F6:  BNE             loc_541128
5410F8:  MOVS            R0, #off_18; this
5410FA:  STRB.W          R8, [R4,#0xD]
5410FE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
541102:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
541106:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x54110C)
541108:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
54110A:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
54110C:  STRH.W          R8, [R0,#0x10]
541110:  ADDS            R1, #8
541112:  STR             R1, [R0]
541114:  MOVW            R1, #0x1388
541118:  STR             R1, [R0,#0x14]
54111A:  STR.W           R8, [R0,#8]
54111E:  STR.W           R8, [R0,#0xC]
541122:  POP.W           {R8}
541126:  POP             {R4-R7,PC}
541128:  LDR             R0, [R4,#0x10]
54112A:  ADDS            R0, #1
54112C:  BEQ             loc_541160
54112E:  LDR             R0, [R4,#8]
541130:  LDR             R1, [R0]
541132:  LDR             R1, [R1,#0x14]
541134:  BLX             R1
541136:  MOVW            R1, #0x12F; unsigned int
54113A:  CMP             R0, R1
54113C:  BNE             loc_541168
54113E:  LDR             R0, [R4,#8]
541140:  LDR             R5, [R4,#0x10]
541142:  LDR             R1, [R0,#0x14]
541144:  CMP             R1, R5
541146:  BNE             loc_54116A
541148:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x541152)
54114A:  MOVS            R3, #1
54114C:  LDR             R2, [R4,#0x14]
54114E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
541150:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
541152:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
541154:  STRB            R3, [R0,#0x10]
541156:  STRD.W          R1, R2, [R0,#8]
54115A:  MOV.W           R0, #0xFFFFFFFF
54115E:  STR             R0, [R4,#0x10]
541160:  LDR             R0, [R4,#8]
541162:  POP.W           {R8}
541166:  POP             {R4-R7,PC}
541168:  LDR             R5, [R4,#0x10]
54116A:  MOV.W           R0, #0xFFFFFFFF
54116E:  STR             R0, [R4,#0x10]
541170:  MOVS            R0, #dword_1C; this
541172:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
541176:  LDR             R4, [R4,#0x14]
541178:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
54117C:  LDR             R1, =(_ZTV17CTaskSimpleFacial_ptr - 0x541186)
54117E:  MOVS            R2, #0
541180:  STRH            R2, [R0,#0x10]
541182:  ADD             R1, PC; _ZTV17CTaskSimpleFacial_ptr
541184:  LDR             R1, [R1]; `vtable for'CTaskSimpleFacial ...
541186:  ADDS            R1, #8
541188:  STR             R1, [R0]
54118A:  STRD.W          R5, R4, [R0,#0x14]
54118E:  STRD.W          R2, R2, [R0,#8]
541192:  POP.W           {R8}
541196:  POP             {R4-R7,PC}
