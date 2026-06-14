; =========================================================
; Game Engine Function: _ZNK27CTaskComplexFollowNodeRoute13CreateSubTaskEiP4CPed
; Address            : 0x51FF94 - 0x52015E
; =========================================================

51FF94:  PUSH            {R4-R7,LR}
51FF96:  ADD             R7, SP, #0xC
51FF98:  PUSH.W          {R8,R9,R11}
51FF9C:  VPUSH           {D8}
51FFA0:  SUB             SP, SP, #0x10
51FFA2:  MOV             R6, R2
51FFA4:  MOV             R5, R0
51FFA6:  MOVS            R4, #0
51FFA8:  CMP.W           R1, #0x384
51FFAC:  BLT             loc_52001E
51FFAE:  MOVW            R0, #0x39E
51FFB2:  CMP             R1, R0
51FFB4:  BEQ             loc_52004A
51FFB6:  MOVW            R0, #0x387
51FFBA:  CMP             R1, R0
51FFBC:  BEQ             loc_52007E
51FFBE:  CMP.W           R1, #0x384
51FFC2:  BNE.W           loc_520150
51FFC6:  MOVS            R0, #word_2C; this
51FFC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51FFCC:  MOV             R4, R0
51FFCE:  LDR             R6, [R5,#0x18]
51FFD0:  LDR.W           R8, [R5,#0x30]
51FFD4:  LDR             R5, [R5,#0x38]
51FFD6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51FFDA:  LDR             R0, =(_ZTV15CTaskSimpleGoTo_ptr - 0x51FFE2)
51FFDC:  LDR             R1, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x51FFE6)
51FFDE:  ADD             R0, PC; _ZTV15CTaskSimpleGoTo_ptr
51FFE0:  STR             R6, [R4,#8]
51FFE2:  ADD             R1, PC; _ZTV20CTaskSimpleGoToPoint_ptr
51FFE4:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoTo ...
51FFE6:  LDR             R1, [R1]; unsigned int
51FFE8:  ADDS            R0, #8
51FFEA:  STR             R0, [R4]
51FFEC:  ADD.W           R0, R5, R5,LSL#1
51FFF0:  LDRB            R2, [R4,#0x1C]
51FFF2:  LDRB            R3, [R4,#0x1D]
51FFF4:  ADD.W           R0, R8, R0,LSL#2
51FFF8:  VLDR            D16, [R0,#4]
51FFFC:  LDR             R0, [R0,#0xC]
51FFFE:  STR             R0, [R4,#0x14]
520000:  ADD.W           R0, R1, #8
520004:  STR             R0, [R4]
520006:  MOV.W           R0, #0x3F000000
52000A:  STR             R0, [R4,#0x18]
52000C:  AND.W           R0, R3, #0xE0
520010:  STRB            R0, [R4,#0x1D]
520012:  AND.W           R0, R2, #0xC0
520016:  STRB            R0, [R4,#0x1C]
520018:  VSTR            D16, [R4,#0xC]
52001C:  B               loc_520150
52001E:  CMP             R1, #0xCB
520020:  BEQ             loc_520120
520022:  CMP.W           R1, #0x2C0
520026:  BNE.W           loc_520150
52002A:  MOVS            R0, #dword_34; this
52002C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520030:  LDR.W           R1, [R6,#0x590]; CVehicle *
520034:  MOV             R4, R0
520036:  MOVS            R0, #0
520038:  MOVS            R2, #1
52003A:  STRD.W          R2, R0, [SP,#0x30+var_30]; bool
52003E:  MOV             R0, R4; this
520040:  MOVS            R2, #0; int
520042:  MOVS            R3, #0; int
520044:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
520048:  B               loc_520150
52004A:  MOVS            R0, #dword_24; this
52004C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520050:  MOV             R4, R0
520052:  LDR             R0, [R5,#0x18]
520054:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
520058:  LDR             R2, [R5,#0x38]
52005A:  MOV             R1, R0
52005C:  LDR             R0, [R5,#0x30]
52005E:  MOVS            R6, #0
520060:  MOV.W           R5, #0x3F000000
520064:  ADD.W           R2, R2, R2,LSL#1
520068:  ADD.W           R0, R0, R2,LSL#2
52006C:  LDRD.W          R2, R3, [R0,#4]
520070:  LDR             R0, [R0,#0xC]
520072:  STMEA.W         SP, {R0,R5,R6}
520076:  MOV             R0, R4
520078:  BLX             j__ZN24CTaskSimpleGoToPointFineC2Ef7CVectorfP7CEntity; CTaskSimpleGoToPointFine::CTaskSimpleGoToPointFine(float,CVector,float,CEntity *)
52007C:  B               loc_520150
52007E:  MOVS            R0, #word_28; this
520080:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520084:  VLDR            S16, [R5,#0x20]
520088:  MOV             R4, R0
52008A:  LDRD.W          R6, R8, [R5,#0x18]
52008E:  LDR.W           R9, [R5,#0x30]
520092:  LDR             R5, [R5,#0x38]
520094:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520098:  LDR             R0, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x5200A0)
52009A:  STR             R6, [R4,#0xC]
52009C:  ADD             R0, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
52009E:  LDRB.W          R1, [R4,#0x24]
5200A2:  VLDR            S0, [R4,#0x10]
5200A6:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAndStandStill ...
5200A8:  ADDS            R0, #8
5200AA:  STR             R0, [R4]
5200AC:  BIC.W           R0, R1, #0x1B
5200B0:  ADD.W           R1, R5, R5,LSL#1
5200B4:  STRB.W          R0, [R4,#0x24]
5200B8:  ADD.W           R1, R9, R1,LSL#2
5200BC:  VLDR            S2, [R1,#4]
5200C0:  VCMP.F32        S0, S2
5200C4:  VMRS            APSR_nzcv, FPSCR
5200C8:  BNE             loc_5200FC
5200CA:  VLDR            S0, [R4,#0x14]
5200CE:  VLDR            S2, [R1,#8]
5200D2:  VCMP.F32        S0, S2
5200D6:  VMRS            APSR_nzcv, FPSCR
5200DA:  BNE             loc_5200FC
5200DC:  VLDR            S0, [R4,#0x18]
5200E0:  VLDR            S2, [R1,#0xC]
5200E4:  VCMP.F32        S0, S2
5200E8:  VMRS            APSR_nzcv, FPSCR
5200EC:  BNE             loc_5200FC
5200EE:  VLDR            S0, [R4,#0x20]
5200F2:  VCMP.F32        S0, S16
5200F6:  VMRS            APSR_nzcv, FPSCR
5200FA:  BEQ             loc_520150
5200FC:  ADDS            R1, #4
5200FE:  ADD.W           R2, R4, #0x10
520102:  ORR.W           R0, R0, #4
520106:  VLDR            D16, [R1]
52010A:  LDR             R1, [R1,#8]; unsigned int
52010C:  STR             R1, [R2,#8]
52010E:  VSTR            D16, [R2]
520112:  VSTR            S16, [R4,#0x20]
520116:  STR.W           R8, [R4,#0x1C]
52011A:  STRB.W          R0, [R4,#0x24]
52011E:  B               loc_520150
520120:  MOVS            R0, #dword_20; this
520122:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520126:  MOV             R4, R0
520128:  MOV.W           R0, #0x41000000
52012C:  STR             R0, [SP,#0x30+var_30]; float
52012E:  MOV             R0, R4; this
520130:  MOVS            R1, #0; int
520132:  MOVS            R2, #0; bool
520134:  MOVS            R3, #0; bool
520136:  MOV.W           R8, #0
52013A:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
52013E:  LDR             R0, [R6]
520140:  ADD.W           R3, R5, #0xC
520144:  LDM             R3, {R1-R3}
520146:  LDR             R5, [R0,#0x3C]
520148:  MOV             R0, R6
52014A:  STR.W           R8, [SP,#0x30+var_30]
52014E:  BLX             R5
520150:  MOV             R0, R4
520152:  ADD             SP, SP, #0x10
520154:  VPOP            {D8}
520158:  POP.W           {R8,R9,R11}
52015C:  POP             {R4-R7,PC}
