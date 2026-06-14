; =========================================================
; Game Engine Function: _ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif
; Address            : 0x4FC10C - 0x4FC184
; =========================================================

4FC10C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *, CEntity *, int, int, float)'
4FC10E:  ADD             R7, SP, #0xC
4FC110:  PUSH.W          {R8}
4FC114:  MOV             R8, R3
4FC116:  MOV             R5, R2
4FC118:  MOV             R6, R1
4FC11A:  MOV             R4, R0
4FC11C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FC120:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FC132)
4FC122:  MOV.W           R2, #0xFFFFFFFF
4FC126:  LDR             R1, [R7,#arg_0]
4FC128:  CMP             R6, #0
4FC12A:  VLDR            S0, [R7,#arg_4]
4FC12E:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FC130:  VSTR            S0, [R4,#0x10]
4FC134:  STRD.W          R2, R1, [R4,#0x14]
4FC138:  MOV.W           R1, #1
4FC13C:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FC13E:  STRB            R1, [R4,#0x1C]
4FC140:  MOV.W           R1, #0
4FC144:  STRB.W          R1, [R4,#0x20]
4FC148:  MOV             R1, R4
4FC14A:  ADD.W           R0, R0, #8
4FC14E:  STR             R0, [R4]
4FC150:  STR.W           R6, [R1,#0xC]!; CEntity **
4FC154:  ITT NE
4FC156:  MOVNE           R0, R6; this
4FC158:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FC15C:  LDR             R0, =(_ZTV27CTaskComplexCarDriveMission_ptr - 0x4FC16A)
4FC15E:  MOV             R1, R4
4FC160:  STR.W           R8, [R4,#0x28]
4FC164:  CMP             R5, #0
4FC166:  ADD             R0, PC; _ZTV27CTaskComplexCarDriveMission_ptr
4FC168:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDriveMission ...
4FC16A:  ADD.W           R0, R0, #8
4FC16E:  STR             R0, [R4]
4FC170:  STR.W           R5, [R1,#0x24]!; CEntity **
4FC174:  ITT NE
4FC176:  MOVNE           R0, R5; this
4FC178:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FC17C:  MOV             R0, R4
4FC17E:  POP.W           {R8}
4FC182:  POP             {R4-R7,PC}
