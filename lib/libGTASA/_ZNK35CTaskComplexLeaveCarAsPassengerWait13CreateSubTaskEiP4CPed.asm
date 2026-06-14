; =========================================================
; Game Engine Function: _ZNK35CTaskComplexLeaveCarAsPassengerWait13CreateSubTaskEiP4CPed
; Address            : 0x4F7FE8 - 0x4F8224
; =========================================================

4F7FE8:  PUSH            {R4-R7,LR}
4F7FEA:  ADD             R7, SP, #0xC
4F7FEC:  PUSH.W          {R8-R10}
4F7FF0:  VPUSH           {D8-D15}
4F7FF4:  SUB             SP, SP, #0x40
4F7FF6:  MOV             R5, R2
4F7FF8:  MOV             R6, R0
4F7FFA:  MOVS            R4, #0
4F7FFC:  CMP.W           R1, #0x384
4F8000:  BEQ             loc_4F80B6
4F8002:  MOVW            R0, #0x2C5
4F8006:  CMP             R1, R0
4F8008:  BEQ.W           loc_4F81A8
4F800C:  CMP.W           R1, #0x2C0
4F8010:  BNE.W           loc_4F8216
4F8014:  ADD.W           R8, SP, #0x98+var_70
4F8018:  LDR             R1, [R6,#0xC]; CVehicle *
4F801A:  MOVS            R2, #8; int
4F801C:  MOVS            R3, #1; bool
4F801E:  MOV             R0, R8; this
4F8020:  MOV.W           R9, #1
4F8024:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4F8028:  MOV             R1, R5; CPed *
4F802A:  STRB.W          R9, [SP,#0x98+var_5F]
4F802E:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
4F8032:  ADD             R4, SP, #0x98+var_90
4F8034:  LDR             R1, [R6,#0xC]; CVehicle *
4F8036:  MOVS            R2, #8; int
4F8038:  MOVS            R3, #0; CTaskUtilityLineUpPedWithCar *
4F803A:  MOV             R0, R4; this
4F803C:  MOV.W           R10, #0
4F8040:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F8044:  MOV             R1, R5; CPed *
4F8046:  STRB.W          R9, [SP,#0x98+var_74]
4F804A:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassenger10ProcessPedEP4CPed; CTaskSimpleCarSetPedInAsPassenger::ProcessPed(CPed *)
4F804E:  MOV             R0, R4; this
4F8050:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerD2Ev; CTaskSimpleCarSetPedInAsPassenger::~CTaskSimpleCarSetPedInAsPassenger()
4F8054:  MOV             R0, R8; this
4F8056:  BLX             j__ZN23CTaskSimpleCarSetPedOutD2Ev; CTaskSimpleCarSetPedOut::~CTaskSimpleCarSetPedOut()
4F805A:  MOVS            R0, #dword_34; this
4F805C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F8060:  MOV             R4, R0
4F8062:  LDR             R5, [R6,#0xC]
4F8064:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F8068:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F807A)
4F806A:  MOV.W           R1, #0x40800000
4F806E:  MOV.W           R2, #0x3F800000
4F8072:  ADD.W           R3, R4, #0x24 ; '$'
4F8076:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F8078:  CMP             R5, #0
4F807A:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4F807C:  ADD.W           R0, R0, #8
4F8080:  STR             R0, [R4]
4F8082:  MOV.W           R0, #0xF
4F8086:  STRD.W          R10, R10, [R4,#0x10]
4F808A:  STRH.W          R9, [R4,#0x18]
4F808E:  STRB.W          R10, [R4,#0x1A]
4F8092:  STR.W           R10, [R4,#0x1C]
4F8096:  STRB.W          R10, [R4,#0x20]
4F809A:  STRB.W          R10, [R4,#0x21]
4F809E:  STM             R3!, {R0-R2}
4F80A0:  MOV             R1, R4
4F80A2:  STRB.W          R10, [R4,#0x30]
4F80A6:  STR.W           R5, [R1,#0xC]!; CEntity **
4F80AA:  BEQ.W           loc_4F8216
4F80AE:  MOV             R0, R5; this
4F80B0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F80B4:  B               loc_4F8216
4F80B6:  LDR             R0, [R6,#0xC]
4F80B8:  LDR             R0, [R0,#0x14]
4F80BA:  VLDR            S16, [R0]
4F80BE:  VLDR            S18, [R0,#4]
4F80C2:  VLDR            S20, [R0,#8]
4F80C6:  VLDR            S22, [R0,#0x10]
4F80CA:  VLDR            S24, [R0,#0x14]
4F80CE:  VLDR            S26, [R0,#0x18]
4F80D2:  BLX             rand
4F80D6:  MOV             R6, R0
4F80D8:  BLX             rand
4F80DC:  VMOV            S0, R0
4F80E0:  VLDR            S30, =4.6566e-10
4F80E4:  VMOV            S2, R6
4F80E8:  VCVT.F32.S32    S0, S0
4F80EC:  VCVT.F32.S32    S28, S2
4F80F0:  VMUL.F32        S17, S0, S30
4F80F4:  BLX             rand
4F80F8:  VLDR            S6, =0.0
4F80FC:  VMOV.F32        S8, #0.5
4F8100:  VMOV            S0, R0
4F8104:  VADD.F32        S6, S17, S6
4F8108:  VCVT.F32.S32    S0, S0
4F810C:  VMOV.F32        S2, #1.0
4F8110:  VMUL.F32        S4, S28, S30
4F8114:  VMOV.F32        S10, #-1.0
4F8118:  VCMPE.F32       S6, S8
4F811C:  VMRS            APSR_nzcv, FPSCR
4F8120:  VMUL.F32        S0, S0, S30
4F8124:  VADD.F32        S4, S4, S2
4F8128:  VADD.F32        S0, S0, S2
4F812C:  IT GT
4F812E:  VMOVGT.F32      S10, S2
4F8132:  VMUL.F32        S2, S4, S10
4F8136:  VMUL.F32        S4, S20, S0
4F813A:  VMUL.F32        S6, S26, S2
4F813E:  VMUL.F32        S8, S22, S2
4F8142:  VMUL.F32        S2, S24, S2
4F8146:  VADD.F32        S4, S4, S6
4F814A:  VMUL.F32        S6, S16, S0
4F814E:  VMUL.F32        S0, S18, S0
4F8152:  VSTR            S4, [SP,#0x98+var_88]
4F8156:  VADD.F32        S6, S6, S8
4F815A:  LDR             R0, [R5,#0x14]
4F815C:  VADD.F32        S0, S0, S2
4F8160:  ADD.W           R1, R0, #0x30 ; '0'
4F8164:  CMP             R0, #0
4F8166:  IT EQ
4F8168:  ADDEQ           R1, R5, #4; unsigned int
4F816A:  MOVS            R0, #word_2C; this
4F816C:  VLDR            S8, [R1]
4F8170:  VLDR            S10, [R1,#4]
4F8174:  VLDR            S12, [R1,#8]
4F8178:  VADD.F32        S6, S8, S6
4F817C:  VADD.F32        S0, S10, S0
4F8180:  VSTR            S6, [SP,#0x98+var_90]
4F8184:  VSTR            S0, [SP,#0x98+var_8C]
4F8188:  VADD.F32        S0, S12, S4
4F818C:  VSTR            S0, [SP,#0x98+var_88]
4F8190:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F8194:  ADD             R2, SP, #0x98+var_90; CVector *
4F8196:  MOVS            R1, #4; int
4F8198:  MOV.W           R3, #0x3FC00000; float
4F819C:  STRD.W          R4, R4, [SP,#0x98+var_98]; bool
4F81A0:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
4F81A4:  MOV             R4, R0
4F81A6:  B               loc_4F8216
4F81A8:  MOVS            R0, #dword_60; this
4F81AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F81AE:  MOV             R4, R0
4F81B0:  LDR             R5, [R6,#0xC]
4F81B2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F81B6:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4F81C4)
4F81B8:  VMOV.I32        Q8, #0
4F81BC:  MOVS            R6, #0
4F81BE:  CMP             R5, #0
4F81C0:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4F81C2:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarDrive ...
4F81C4:  ADD.W           R0, R4, #0xC
4F81C8:  VST1.32         {D16-D17}, [R0]
4F81CC:  ADD.W           R1, R1, #8
4F81D0:  STRH            R6, [R4,#0x1C]
4F81D2:  STR.W           R6, [R4,#0x56]
4F81D6:  STR.W           R6, [R4,#0x52]
4F81DA:  STRD.W          R6, R6, [R4,#0x4C]
4F81DE:  LDRB.W          R0, [R4,#0x5C]
4F81E2:  STR             R1, [R4]
4F81E4:  MOV.W           R1, #2
4F81E8:  BFI.W           R0, R1, #2, #4
4F81EC:  MOV             R1, R4
4F81EE:  STRB.W          R0, [R4,#0x5C]
4F81F2:  STR.W           R5, [R1,#8]!; CEntity **
4F81F6:  BEQ             loc_4F8202
4F81F8:  MOV             R0, R5; this
4F81FA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F81FE:  LDRB.W          R0, [R4,#0x5C]
4F8202:  MOV.W           R1, #0xFFFFFFFF
4F8206:  AND.W           R0, R0, #0xFC
4F820A:  STR             R1, [R4,#0x20]
4F820C:  STRB.W          R0, [R4,#0x5C]
4F8210:  STRD.W          R6, R6, [R4,#0x3C]
4F8214:  STR             R6, [R4,#0x44]
4F8216:  MOV             R0, R4
4F8218:  ADD             SP, SP, #0x40 ; '@'
4F821A:  VPOP            {D8-D15}
4F821E:  POP.W           {R8-R10}
4F8222:  POP             {R4-R7,PC}
