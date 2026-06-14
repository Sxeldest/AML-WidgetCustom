; =========================================================
; Game Engine Function: _ZN24CTaskComplexPartnerGreet18GetPartnerSequenceEv
; Address            : 0x534EDC - 0x535286
; =========================================================

534EDC:  PUSH            {R4-R7,LR}
534EDE:  ADD             R7, SP, #0xC
534EE0:  PUSH.W          {R8-R11}
534EE4:  SUB             SP, SP, #4
534EE6:  VPUSH           {D8-D11}
534EEA:  SUB             SP, SP, #0x20
534EEC:  MOV             R5, R0
534EEE:  MOVS            R0, #dword_40; this
534EF0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534EF4:  MOV             R4, R0
534EF6:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
534EFA:  MOVS            R0, #word_28; this
534EFC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534F00:  MOV             R6, R0
534F02:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x534F0E)
534F04:  LDR             R1, [R5,#0x38]; CEntity *
534F06:  MOVW            R3, #0x126F
534F0A:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
534F0C:  MOVT            R3, #0x3A83; float
534F10:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
534F12:  LDR             R2, [R0]; float
534F14:  MOV             R0, R6; this
534F16:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
534F1A:  MOV             R0, R4; this
534F1C:  MOV             R1, R6; CTask *
534F1E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
534F22:  LDR             R0, [R5,#0x74]
534F24:  CMP             R0, #5; switch 6 cases
534F26:  BHI             def_534F28; jumptable 00534F28 default case
534F28:  TBB.W           [PC,R0]; switch jump
534F2C:  DCB 3; jump table for switch statement
534F2D:  DCB 0xE
534F2E:  DCB 0x19
534F2F:  DCB 0x30
534F30:  DCB 0x3B
534F31:  DCB 0x46
534F32:  MOVS            R0, #dword_20; jumptable 00534F28 case 0
534F34:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534F38:  MOV             R6, R0
534F3A:  MOVS            R0, #0
534F3C:  STR             R0, [SP,#0x60+var_60]
534F3E:  MOV             R0, R6
534F40:  MOVS            R1, #0x34 ; '4'
534F42:  MOVW            R2, #0x121
534F46:  B               loc_534FCC
534F48:  MOVS            R0, #dword_20; jumptable 00534F28 case 1
534F4A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534F4E:  MOV             R6, R0
534F50:  MOVS            R0, #0
534F52:  STR             R0, [SP,#0x60+var_60]
534F54:  MOV             R0, R6
534F56:  MOVS            R1, #0x34 ; '4'
534F58:  MOV.W           R2, #0x122
534F5C:  B               loc_534FCC
534F5E:  MOVS            R0, #dword_20; jumptable 00534F28 case 2
534F60:  LDRB.W          R6, [R5,#0x58]
534F64:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534F68:  MOV             R8, R0
534F6A:  MOVS            R0, #0
534F6C:  CMP             R6, #0
534F6E:  STR             R0, [SP,#0x60+var_60]
534F70:  ITE NE
534F72:  MOVWNE          R2, #0x123
534F76:  MOVEQ.W         R2, #0x124
534F7A:  MOV             R0, R8
534F7C:  MOVS            R1, #0x34 ; '4'
534F7E:  MOV.W           R3, #0x40800000
534F82:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
534F86:  MOV             R0, R4
534F88:  MOV             R1, R8
534F8A:  B               loc_534FD8
534F8C:  MOVS            R0, #dword_20; jumptable 00534F28 case 3
534F8E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534F92:  MOV             R6, R0
534F94:  MOVS            R0, #0
534F96:  STR             R0, [SP,#0x60+var_60]
534F98:  MOV             R0, R6
534F9A:  MOVS            R1, #0x34 ; '4'
534F9C:  MOVW            R2, #0x125
534FA0:  B               loc_534FCC
534FA2:  MOVS            R0, #dword_20; jumptable 00534F28 case 4
534FA4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534FA8:  MOV             R6, R0
534FAA:  MOVS            R0, #0
534FAC:  STR             R0, [SP,#0x60+var_60]
534FAE:  MOV             R0, R6
534FB0:  MOVS            R1, #0x34 ; '4'
534FB2:  MOV.W           R2, #0x126
534FB6:  B               loc_534FCC
534FB8:  MOVS            R0, #dword_20; jumptable 00534F28 case 5
534FBA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534FBE:  MOV             R6, R0
534FC0:  MOVS            R0, #0
534FC2:  STR             R0, [SP,#0x60+var_60]
534FC4:  MOV             R0, R6
534FC6:  MOVS            R1, #0x34 ; '4'
534FC8:  MOVW            R2, #0x127
534FCC:  MOV.W           R3, #0x40800000
534FD0:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
534FD4:  MOV             R0, R4; this
534FD6:  MOV             R1, R6; CTask *
534FD8:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
534FDC:  BLX             rand; jumptable 00534F28 default case
534FE0:  UXTH            R0, R0
534FE2:  VMOV            S0, R0
534FE6:  VCVT.F32.S32    S16, S0
534FEA:  BLX             rand
534FEE:  UXTH            R0, R0
534FF0:  VMOV            S0, R0
534FF4:  VCVT.F32.S32    S18, S0
534FF8:  BLX             rand
534FFC:  UXTH            R0, R0
534FFE:  VMOV            S0, R0
535002:  VCVT.F32.S32    S20, S0
535006:  BLX             rand
53500A:  UXTH            R0, R0
53500C:  VLDR            S2, =0.000015259
535010:  VMOV            S0, R0
535014:  VMUL.F32        S4, S16, S2
535018:  VCVT.F32.S32    S0, S0
53501C:  VMUL.F32        S6, S18, S2
535020:  VMUL.F32        S8, S20, S2
535024:  VMUL.F32        S0, S0, S2
535028:  VLDR            S2, =4000.0
53502C:  VMUL.F32        S4, S4, S2
535030:  VMUL.F32        S6, S6, S2
535034:  VMUL.F32        S16, S8, S2
535038:  VMUL.F32        S18, S0, S2
53503C:  VCVT.S32.F32    S20, S4
535040:  VCVT.S32.F32    S22, S6
535044:  BLX             rand
535048:  VMOV            R2, S20
53504C:  LDRB.W          R1, [R5,#0x58]; unsigned int
535050:  VCVT.S32.F32    S0, S16
535054:  AND.W           R11, R0, #1
535058:  VCVT.S32.F32    S2, S18
53505C:  CMP             R1, #0
53505E:  ADDW            R5, R2, #0xBB8
535062:  VMOV            R2, S22
535066:  ADDW            R9, R2, #0xBB8
53506A:  VMOV            R2, S0
53506E:  ADDW            R3, R2, #0xBB8
535072:  VMOV            R2, S2
535076:  ADDW            R2, R2, #0xBB8
53507A:  STRD.W          R3, R2, [SP,#0x60+var_48]
53507E:  BEQ             loc_535172
535080:  MOVS            R0, #(byte_9+3); this
535082:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535086:  MOV             R6, R0
535088:  BLX             j__ZN23CTaskSimpleDoHandSignalC2Ev; CTaskSimpleDoHandSignal::CTaskSimpleDoHandSignal(void)
53508C:  MOV             R0, R4; this
53508E:  MOV             R1, R6; CTask *
535090:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
535094:  MOVS            R0, #dword_20; this
535096:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53509A:  MOV.W           R8, #0x41000000
53509E:  MOV.W           R1, #0x3E8; int
5350A2:  MOVS            R2, #0; bool
5350A4:  MOVS            R3, #0; bool
5350A6:  MOV             R6, R0
5350A8:  STR.W           R8, [SP,#0x60+var_60]; float
5350AC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5350B0:  MOV             R0, R4; this
5350B2:  MOV             R1, R6; CTask *
5350B4:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
5350B8:  MOVS            R0, #dword_20; this
5350BA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5350BE:  MOV             R1, R5; int
5350C0:  MOVS            R2, #0; bool
5350C2:  MOVS            R3, #0; bool
5350C4:  MOV             R6, R0
5350C6:  STR.W           R8, [SP,#0x60+var_60]; float
5350CA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5350CE:  MOV             R0, R4; this
5350D0:  MOV             R1, R6; CTask *
5350D2:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
5350D6:  MOVS            R0, #dword_34; this
5350D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5350DC:  MOV             R5, R0
5350DE:  LDR             R0, =(aChat - 0x5350EC); "Chat"
5350E0:  MOVW            R10, #0
5350E4:  MOV.W           R6, #0x1A0
5350E8:  ADD             R0, PC; "Chat"
5350EA:  MOVT            R10, #0xC080
5350EE:  STRD.W          R10, R9, [SP,#0x60+var_60]; float
5350F2:  MOV.W           R9, #0
5350F6:  STRD.W          R6, R0, [SP,#0x60+var_58]; int
5350FA:  MOV             R0, R5; int
5350FC:  MOVS            R1, #0; int
5350FE:  MOVS            R2, #0xC; int
535100:  MOV.W           R3, #0x40800000; int
535104:  STR.W           R9, [SP,#0x60+var_50]; int
535108:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
53510C:  LDR             R0, =(_ZTV15CTaskSimpleChat_ptr - 0x535114)
53510E:  MOV             R1, R5; CTask *
535110:  ADD             R0, PC; _ZTV15CTaskSimpleChat_ptr
535112:  LDR             R0, [R0]; `vtable for'CTaskSimpleChat ...
535114:  ADDS            R0, #8
535116:  STR             R0, [R5]
535118:  MOV             R0, R4; this
53511A:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
53511E:  CMP.W           R11, #0
535122:  BEQ.W           loc_535276
535126:  MOVS            R0, #dword_20; this
535128:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53512C:  LDR             R1, [SP,#0x60+var_48]; int
53512E:  MOVS            R2, #0; bool
535130:  MOVS            R3, #0; bool
535132:  MOV             R5, R0
535134:  STR.W           R8, [SP,#0x60+var_60]; float
535138:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
53513C:  MOV             R0, R4; this
53513E:  MOV             R1, R5; CTask *
535140:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
535144:  MOVS            R0, #dword_34; this
535146:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53514A:  MOV             R5, R0
53514C:  LDR             R0, =(aChat - 0x535156); "Chat"
53514E:  LDR             R1, [SP,#0x60+var_44]
535150:  MOVS            R2, #0xC; int
535152:  ADD             R0, PC; "Chat"
535154:  STR.W           R10, [SP,#0x60+var_60]; float
535158:  STRD.W          R1, R6, [SP,#0x60+var_5C]; int
53515C:  MOVS            R1, #0; int
53515E:  STRD.W          R0, R9, [SP,#0x60+var_54]; int
535162:  MOV             R0, R5; int
535164:  MOV.W           R3, #0x40800000; int
535168:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
53516C:  LDR             R0, =(_ZTV15CTaskSimpleChat_ptr - 0x535172)
53516E:  ADD             R0, PC; _ZTV15CTaskSimpleChat_ptr
535170:  B               loc_535268
535172:  MOVS            R0, #dword_20; this
535174:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535178:  MOV.W           R10, #0x41000000
53517C:  MOV.W           R1, #0x3E8; int
535180:  MOVS            R2, #0; bool
535182:  MOVS            R3, #0; bool
535184:  MOV             R6, R0
535186:  STR.W           R10, [SP,#0x60+var_60]; float
53518A:  MOV.W           R8, #0
53518E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
535192:  MOV             R0, R4; this
535194:  MOV             R1, R6; CTask *
535196:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
53519A:  MOVS            R0, #(byte_9+3); this
53519C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5351A0:  MOV             R6, R0
5351A2:  BLX             j__ZN23CTaskSimpleDoHandSignalC2Ev; CTaskSimpleDoHandSignal::CTaskSimpleDoHandSignal(void)
5351A6:  MOV             R0, R4; this
5351A8:  MOV             R1, R6; CTask *
5351AA:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
5351AE:  MOVS            R0, #dword_34; this
5351B0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5351B4:  MOV             R6, R0
5351B6:  LDR             R0, =(aChat - 0x5351C2); "Chat"
5351B8:  MOVS            R2, #0
5351BA:  MOV.W           R1, #0x1A0
5351BE:  ADD             R0, PC; "Chat"
5351C0:  MOVT            R2, #0xC080
5351C4:  STRD.W          R2, R5, [SP,#0x60+var_60]; float
5351C8:  MOVS            R2, #0xC; int
5351CA:  STRD.W          R1, R0, [SP,#0x60+var_58]; int
5351CE:  MOV             R0, R6; int
5351D0:  MOVS            R1, #0; int
5351D2:  MOV.W           R3, #0x40800000; int
5351D6:  STR.W           R8, [SP,#0x60+var_50]; int
5351DA:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
5351DE:  LDR             R0, =(_ZTV15CTaskSimpleChat_ptr - 0x5351E6)
5351E0:  MOV             R1, R6; CTask *
5351E2:  ADD             R0, PC; _ZTV15CTaskSimpleChat_ptr
5351E4:  LDR             R0, [R0]; `vtable for'CTaskSimpleChat ...
5351E6:  ADDS            R0, #8
5351E8:  STR             R0, [R6]
5351EA:  MOV             R0, R4; this
5351EC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
5351F0:  MOVS            R0, #dword_20; this
5351F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5351F6:  MOV             R1, R9; int
5351F8:  MOVS            R2, #0; bool
5351FA:  MOVS            R3, #0; bool
5351FC:  MOV             R5, R0
5351FE:  STR.W           R10, [SP,#0x60+var_60]; float
535202:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
535206:  MOV             R0, R4; this
535208:  MOV             R1, R5; CTask *
53520A:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
53520E:  CMP.W           R11, #0
535212:  BEQ             loc_535276
535214:  MOVS            R0, #dword_20; this
535216:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53521A:  LDR             R1, [SP,#0x60+var_48]; int
53521C:  MOVS            R2, #0; bool
53521E:  MOVS            R3, #0; bool
535220:  MOV             R5, R0
535222:  STR.W           R10, [SP,#0x60+var_60]; float
535226:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
53522A:  MOV             R0, R4; this
53522C:  MOV             R1, R5; CTask *
53522E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
535232:  MOVS            R0, #dword_34; this
535234:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535238:  MOVS            R1, #0
53523A:  MOV             R5, R0
53523C:  LDR             R0, =(aChat - 0x53524C); "Chat"
53523E:  MOVT            R1, #0xC080
535242:  STR             R1, [SP,#0x60+var_60]; float
535244:  MOVS            R2, #0xC; int
535246:  LDR             R1, [SP,#0x60+var_44]
535248:  ADD             R0, PC; "Chat"
53524A:  STR             R1, [SP,#0x60+var_5C]; int
53524C:  MOV.W           R1, #0x1A0
535250:  STRD.W          R1, R0, [SP,#0x60+var_58]; int
535254:  MOVS            R0, #0
535256:  STR             R0, [SP,#0x60+var_50]; int
535258:  MOV             R0, R5; int
53525A:  MOVS            R1, #0; int
53525C:  MOV.W           R3, #0x40800000; int
535260:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
535264:  LDR             R0, =(_ZTV15CTaskSimpleChat_ptr - 0x53526A)
535266:  ADD             R0, PC; _ZTV15CTaskSimpleChat_ptr
535268:  LDR             R0, [R0]; `vtable for'CTaskSimpleChat ...
53526A:  MOV             R1, R5; CTask *
53526C:  ADDS            R0, #8
53526E:  STR             R0, [R5]
535270:  MOV             R0, R4; this
535272:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
535276:  MOV             R0, R4
535278:  ADD             SP, SP, #0x20 ; ' '
53527A:  VPOP            {D8-D11}
53527E:  ADD             SP, SP, #4
535280:  POP.W           {R8-R11}
535284:  POP             {R4-R7,PC}
