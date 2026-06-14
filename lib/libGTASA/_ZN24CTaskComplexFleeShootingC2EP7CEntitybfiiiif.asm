; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeShootingC2EP7CEntitybfiiiif
; Address            : 0x5140E8 - 0x514176
; =========================================================

5140E8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexFleeShooting::CTaskComplexFleeShooting(CEntity *, bool, float, int, int, int, int, float)'
5140EA:  ADD             R7, SP, #0xC
5140EC:  PUSH.W          {R8-R10}
5140F0:  MOV             R5, R3
5140F2:  MOV             R8, R2
5140F4:  MOV             R6, R1
5140F6:  MOV             R4, R0
5140F8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5140FC:  LDR             R1, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514106)
5140FE:  CMP             R6, #0
514100:  LDR             R0, [R7,#arg_0]
514102:  ADD             R1, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
514104:  VLDR            S0, [R7,#arg_10]
514108:  LDRD.W          R10, R9, [R7,#arg_4]
51410C:  STRD.W          R0, R5, [R4,#0x1C]
514110:  MOV.W           R0, #7
514114:  LDR             R2, [R7,#arg_C]
514116:  MOV             R5, R4
514118:  STRB.W          R8, [R4,#0x24]
51411C:  MOV.W           R8, #0
514120:  STR             R2, [R4,#0x28]
514122:  VSTR            S0, [R4,#0x2C]
514126:  STR             R0, [R4,#0x30]
514128:  LDR             R0, [R1]; `vtable for'CTaskComplexSmartFleeEntity ...
51412A:  STRH.W          R8, [R4,#0x3C]
51412E:  STRD.W          R8, R8, [R4,#0x34]
514132:  ADD.W           R0, R0, #8
514136:  STR             R0, [R4]
514138:  STR.W           R6, [R5,#0xC]!
51413C:  BEQ             loc_51414A
51413E:  MOV             R0, R6; this
514140:  MOV             R1, R5; CEntity **
514142:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
514146:  LDR             R0, [R5]
514148:  B               loc_51414C
51414A:  MOVS            R0, #0; this
51414C:  LDR             R1, =(_ZTV24CTaskComplexFleeShooting_ptr - 0x514158)
51414E:  CMP             R0, #0
514150:  STRD.W          R10, R9, [R4,#0x40]
514154:  ADD             R1, PC; _ZTV24CTaskComplexFleeShooting_ptr
514156:  STRH.W          R8, [R4,#0x50]
51415A:  STRD.W          R8, R8, [R4,#0x48]
51415E:  LDR             R1, [R1]; `vtable for'CTaskComplexFleeShooting ...
514160:  ADD.W           R1, R1, #8
514164:  STR             R1, [R4]
514166:  ITT NE
514168:  MOVNE           R1, R5; CEntity **
51416A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51416E:  MOV             R0, R4
514170:  POP.W           {R8-R10}
514174:  POP             {R4-R7,PC}
