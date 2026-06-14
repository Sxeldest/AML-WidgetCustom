; =========================================================
; Game Engine Function: _ZN22CTaskComplexDestroyCar18CreateFirstSubTaskEP4CPed
; Address            : 0x4E5F8C - 0x4E60A0
; =========================================================

4E5F8C:  PUSH            {R4-R7,LR}
4E5F8E:  ADD             R7, SP, #0xC
4E5F90:  PUSH.W          {R8,R9,R11}
4E5F94:  SUB             SP, SP, #8
4E5F96:  MOV             R5, R0
4E5F98:  MOV             R6, R1
4E5F9A:  LDR             R0, [R5,#0x10]
4E5F9C:  MOVS            R4, #0
4E5F9E:  STRB            R4, [R5,#0xC]
4E5FA0:  CMP             R0, #0
4E5FA2:  BEQ             loc_4E6096
4E5FA4:  LDR.W           R0, [R6,#0x590]
4E5FA8:  CMP             R0, #0
4E5FAA:  ITT NE
4E5FAC:  LDRBNE.W        R0, [R6,#0x485]
4E5FB0:  MOVSNE.W        R0, R0,LSL#31
4E5FB4:  BNE             loc_4E6012
4E5FB6:  LDRSB.W         R0, [R6,#0x71C]
4E5FBA:  RSB.W           R0, R0, R0,LSL#3
4E5FBE:  ADD.W           R0, R6, R0,LSL#2
4E5FC2:  ADDW            R0, R0, #0x5A4; this
4E5FC6:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4E5FCA:  CMP             R0, #1
4E5FCC:  BNE             loc_4E6032
4E5FCE:  MOVS            R0, #dword_34; this
4E5FD0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E5FD4:  MOV             R4, R0
4E5FD6:  LDR             R5, [R5,#0x10]
4E5FD8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E5FDC:  LDR             R0, =(_ZTV27CTaskComplexDestroyCarMelee_ptr - 0x4E5FEE)
4E5FDE:  VMOV.I32        Q8, #0
4E5FE2:  ADD.W           R1, R4, #0x14
4E5FE6:  MOV.W           R2, #0xFFFFFFFF
4E5FEA:  ADD             R0, PC; _ZTV27CTaskComplexDestroyCarMelee_ptr
4E5FEC:  CMP             R5, #0
4E5FEE:  VST1.32         {D16-D17}, [R1]
4E5FF2:  MOV.W           R1, #0
4E5FF6:  LDR             R0, [R0]; `vtable for'CTaskComplexDestroyCarMelee ...
4E5FF8:  STRH            R1, [R4,#0xC]
4E5FFA:  STRD.W          R1, R1, [R4,#0x28]
4E5FFE:  MOV             R1, R4
4E6000:  STR             R2, [R4,#0x30]
4E6002:  ADD.W           R0, R0, #8
4E6006:  STR             R0, [R4]
4E6008:  STR.W           R5, [R1,#0x10]!; unsigned int
4E600C:  BEQ             loc_4E6096
4E600E:  MOV             R0, R5
4E6010:  B               loc_4E6092
4E6012:  MOVS            R0, #dword_34; this
4E6014:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E6018:  LDR.W           R1, [R6,#0x590]; CVehicle *
4E601C:  MOV             R4, R0
4E601E:  MOVS            R0, #0
4E6020:  MOVS            R2, #1
4E6022:  STRD.W          R2, R0, [SP,#0x20+var_20]; bool
4E6026:  MOV             R0, R4; this
4E6028:  MOVS            R2, #0; int
4E602A:  MOVS            R3, #0; int
4E602C:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
4E6030:  B               loc_4E6096
4E6032:  MOVS            R0, #dword_64; this
4E6034:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E6038:  ADD.W           R9, R5, #0x10
4E603C:  MOV             R4, R0
4E603E:  LDM.W           R9, {R6,R8,R9}
4E6042:  LDR             R5, [R5,#0x1C]
4E6044:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E6048:  VMOV.I32        Q8, #0
4E604C:  ADD.W           R1, R4, #0x41 ; 'A'
4E6050:  LDR             R0, =(_ZTV27CTaskComplexDestroyCarArmed_ptr - 0x4E6064)
4E6052:  ADD.W           R2, R4, #0x54 ; 'T'
4E6056:  CMP             R6, #0
4E6058:  VST1.8          {D16-D17}, [R1]
4E605C:  ADD.W           R1, R4, #0x34 ; '4'
4E6060:  ADD             R0, PC; _ZTV27CTaskComplexDestroyCarArmed_ptr
4E6062:  VST1.32         {D16-D17}, [R1]
4E6066:  ADD.W           R1, R4, #0x24 ; '$'
4E606A:  VST1.32         {D16-D17}, [R1]
4E606E:  ADD.W           R1, R4, #0x14
4E6072:  LDR             R0, [R0]; `vtable for'CTaskComplexDestroyCarArmed ...
4E6074:  VST1.32         {D16-D17}, [R1]
4E6078:  MOV.W           R1, #0xFFFFFFFF
4E607C:  ADD.W           R0, R0, #8
4E6080:  STM.W           R2, {R1,R8,R9}
4E6084:  MOV             R1, R4
4E6086:  STR             R5, [R4,#0x60]
4E6088:  STR             R0, [R4]
4E608A:  STR.W           R6, [R1,#0x10]!; CEntity **
4E608E:  BEQ             loc_4E6096
4E6090:  MOV             R0, R6; this
4E6092:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E6096:  MOV             R0, R4
4E6098:  ADD             SP, SP, #8
4E609A:  POP.W           {R8,R9,R11}
4E609E:  POP             {R4-R7,PC}
