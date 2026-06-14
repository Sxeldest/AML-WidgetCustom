; =========================================================
; Game Engine Function: _ZN22CTaskComplexFleeEntityC2EP7CEntitybfiif
; Address            : 0x5131F8 - 0x513250
; =========================================================

5131F8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexFleeEntity::CTaskComplexFleeEntity(CEntity *, bool, float, int, int, float)'
5131FA:  ADD             R7, SP, #0xC
5131FC:  PUSH.W          {R8}
513200:  MOV             R6, R3
513202:  MOV             R8, R2
513204:  MOV             R5, R1
513206:  MOV             R4, R0
513208:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51320C:  LDR             R0, =(_ZTV22CTaskComplexFleeEntity_ptr - 0x513218)
51320E:  CMP             R5, #0
513210:  LDRD.W          R2, R1, [R7,#arg_0]
513214:  ADD             R0, PC; _ZTV22CTaskComplexFleeEntity_ptr
513216:  STR             R2, [R4,#0x1C]
513218:  MOV.W           R2, #0
51321C:  VLDR            S0, [R7,#arg_8]
513220:  LDR             R0, [R0]; `vtable for'CTaskComplexFleeEntity ...
513222:  STRH            R2, [R4,#0x28]
513224:  STR             R6, [R4,#0x2C]
513226:  ADD.W           R0, R0, #8
51322A:  STR             R1, [R4,#0x34]
51322C:  MOV             R1, R4
51322E:  VSTR            S0, [R4,#0x38]
513232:  STRB.W          R8, [R4,#0x30]
513236:  STRD.W          R2, R2, [R4,#0x20]
51323A:  STR             R0, [R4]
51323C:  STR.W           R5, [R1,#0xC]!; CEntity **
513240:  ITT NE
513242:  MOVNE           R0, R5; this
513244:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
513248:  MOV             R0, R4
51324A:  POP.W           {R8}
51324E:  POP             {R4-R7,PC}
