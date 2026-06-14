; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler27ComputeHassleThreatResponseEP9CPedGroupP4CPedS3_b
; Address            : 0x4B5F68 - 0x4B611A
; =========================================================

4B5F68:  PUSH            {R4-R7,LR}
4B5F6A:  ADD             R7, SP, #0xC
4B5F6C:  PUSH.W          {R8-R11}
4B5F70:  SUB             SP, SP, #0x64
4B5F72:  MOV             R9, R1
4B5F74:  STR             R3, [SP,#0x80+var_6C]
4B5F76:  CMP.W           R9, #0
4B5F7A:  ITT NE
4B5F7C:  LDRNE           R1, [R0,#0x28]
4B5F7E:  CMPNE           R1, #0
4B5F80:  BEQ.W           loc_4B6086
4B5F84:  LDR             R2, [R1,#0x14]
4B5F86:  LDR.W           R3, [R9,#0x14]
4B5F8A:  ADD.W           R6, R2, #0x30 ; '0'
4B5F8E:  CMP             R2, #0
4B5F90:  IT EQ
4B5F92:  ADDEQ           R6, R1, #4
4B5F94:  ADD.W           R1, R3, #0x30 ; '0'
4B5F98:  CMP             R3, #0
4B5F9A:  VLDR            S0, [R6]
4B5F9E:  IT EQ
4B5FA0:  ADDEQ.W         R1, R9, #4
4B5FA4:  VLDR            D16, [R6,#4]
4B5FA8:  VLDR            S2, [R1]
4B5FAC:  VLDR            D17, [R1,#4]
4B5FB0:  VSUB.F32        S0, S2, S0
4B5FB4:  VSUB.F32        D16, D17, D16
4B5FB8:  VMUL.F32        D1, D16, D16
4B5FBC:  VMUL.F32        S0, S0, S0
4B5FC0:  VADD.F32        S0, S0, S2
4B5FC4:  VADD.F32        S0, S0, S3
4B5FC8:  VLDR            S2, =144.0
4B5FCC:  VCMPE.F32       S0, S2
4B5FD0:  VMRS            APSR_nzcv, FPSCR
4B5FD4:  BGT             loc_4B6086
4B5FD6:  LDRB.W          R1, [R9,#0x485]
4B5FDA:  LSLS            R1, R1, #0x1F
4B5FDC:  ITT NE
4B5FDE:  LDRNE.W         R1, [R9,#0x590]
4B5FE2:  CMPNE           R1, #0
4B5FE4:  BEQ             loc_4B5FEE
4B5FE6:  LDR.W           R1, [R1,#0x5A4]
4B5FEA:  CMP             R1, #0
4B5FEC:  BEQ             loc_4B6090
4B5FEE:  ADD.W           R5, R0, #0xC
4B5FF2:  ADD.W           R10, R0, #0x3C ; '<'
4B5FF6:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B6006)
4B5FF8:  ADD             R4, SP, #0x80+var_60
4B5FFA:  ADD.W           R11, SP, #0x80+var_68
4B5FFE:  MOV.W           R8, #0
4B6002:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B6004:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B6006:  ADDS            R0, #8
4B6008:  STR             R0, [SP,#0x80+var_70]
4B600A:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B6010)
4B600C:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B600E:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B6010:  ADDS            R0, #8
4B6012:  STR             R0, [SP,#0x80+var_74]
4B6014:  LDR.W           R6, [R5,R8,LSL#2]
4B6018:  CBZ             R6, loc_4B607C
4B601A:  LDR             R0, [SP,#0x80+var_6C]
4B601C:  CMP             R0, #1
4B601E:  BNE             loc_4B603E
4B6020:  MOVW            R0, #0x4E20
4B6024:  MOV             R1, R9; CPed *
4B6026:  STR             R0, [SP,#0x80+var_80]; int
4B6028:  MOV             R0, R4; this
4B602A:  MOVS            R2, #2; int
4B602C:  MOVW            R3, #0x2EE0; int
4B6030:  BLX             j__ZN18CTaskGangHasslePedC2EP4CPediii; CTaskGangHasslePed::CTaskGangHasslePed(CPed *,int,int,int)
4B6034:  MOV             R0, R11; this
4B6036:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B603A:  LDR             R0, [SP,#0x80+var_70]
4B603C:  B               loc_4B605A
4B603E:  MOVW            R0, #0x4E20
4B6042:  MOV             R1, R9; CPed *
4B6044:  STR             R0, [SP,#0x80+var_80]; int
4B6046:  MOV             R0, R4; this
4B6048:  MOVS            R2, #1; int
4B604A:  MOVW            R3, #0x2EE0; int
4B604E:  BLX             j__ZN18CTaskGangHasslePedC2EP4CPediii; CTaskGangHasslePed::CTaskGangHasslePed(CPed *,int,int,int)
4B6052:  MOV             R0, R11; this
4B6054:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B6058:  LDR             R0, [SP,#0x80+var_74]
4B605A:  STR             R0, [SP,#0x80+var_68]
4B605C:  MOV.W           R0, #0xFFFFFFFF
4B6060:  STR             R0, [SP,#0x80+var_80]; int
4B6062:  MOVS            R0, #0; this
4B6064:  MOV             R1, R6; CPed *
4B6066:  MOV             R2, R4; CTask *
4B6068:  MOV             R3, R10; CPedTaskPair *
4B606A:  STR             R0, [SP,#0x80+var_7C]; bool
4B606C:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B6070:  MOV             R0, R11; this
4B6072:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B6076:  MOV             R0, R4; this
4B6078:  BLX             j__ZN18CTaskGangHasslePedD2Ev; CTaskGangHasslePed::~CTaskGangHasslePed()
4B607C:  ADD.W           R8, R8, #1
4B6080:  CMP.W           R8, #8
4B6084:  BNE             loc_4B6014
4B6086:  MOVS            R0, #0
4B6088:  ADD             SP, SP, #0x64 ; 'd'
4B608A:  POP.W           {R8-R11}
4B608E:  POP             {R4-R7,PC}
4B6090:  LDR             R1, [SP,#0x80+var_6C]
4B6092:  CMP             R1, #0
4B6094:  BNE             loc_4B6086
4B6096:  ADD.W           R6, R0, #0xC
4B609A:  ADDS            R0, #0x3C ; '<'
4B609C:  STR             R0, [SP,#0x80+var_70]
4B609E:  ADD             R5, SP, #0x80+var_60
4B60A0:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B60AE)
4B60A2:  ADD.W           R8, SP, #0x80+var_68
4B60A6:  MOV.W           R10, #0
4B60AA:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B60AC:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B60AE:  ADD.W           R11, R0, #8
4B60B2:  LDR.W           R4, [R6,R10,LSL#2]
4B60B6:  CBZ             R4, loc_4B610E
4B60B8:  LDR.W           R0, [R9,#0x590]; this
4B60BC:  BLX             j__ZN8CVehicle19GetSpareHasslePosIdEv; CVehicle::GetSpareHasslePosId(void)
4B60C0:  ADDS            R0, #1
4B60C2:  BEQ             loc_4B610E
4B60C4:  MOV.W           R0, #0x3E800000
4B60C8:  LDR.W           R1, [R9,#0x590]; CVehicle *
4B60CC:  STR             R0, [SP,#0x80+var_80]; float
4B60CE:  MOVW            R0, #0x6666
4B60D2:  LDR             R3, [SP,#0x80+var_6C]; unsigned __int8
4B60D4:  MOVT            R0, #0x3F26
4B60D8:  STR             R0, [SP,#0x80+var_7C]; float
4B60DA:  MOV             R0, R5; this
4B60DC:  MOV.W           R2, #0xFFFFFFFF; int
4B60E0:  BLX             j__ZN22CTaskGangHassleVehicleC2EP8CVehicleihff; CTaskGangHassleVehicle::CTaskGangHassleVehicle(CVehicle *,int,uchar,float,float)
4B60E4:  MOV             R0, R8; this
4B60E6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B60EA:  LDR             R3, [SP,#0x80+var_70]; CPedTaskPair *
4B60EC:  MOV.W           R0, #0xFFFFFFFF
4B60F0:  STR             R0, [SP,#0x80+var_80]; int
4B60F2:  MOVS            R0, #0; this
4B60F4:  MOV             R1, R4; CPed *
4B60F6:  MOV             R2, R5; CTask *
4B60F8:  STR.W           R11, [SP,#0x80+var_68]
4B60FC:  STR             R0, [SP,#0x80+var_7C]; bool
4B60FE:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B6102:  MOV             R0, R8; this
4B6104:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B6108:  MOV             R0, R5; this
4B610A:  BLX             j__ZN22CTaskGangHassleVehicleD2Ev; CTaskGangHassleVehicle::~CTaskGangHassleVehicle()
4B610E:  ADD.W           R10, R10, #1
4B6112:  CMP.W           R10, #8
4B6116:  BNE             loc_4B60B2
4B6118:  B               loc_4B6086
