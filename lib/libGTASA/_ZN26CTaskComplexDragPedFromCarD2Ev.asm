; =========================================================
; Game Engine Function: _ZN26CTaskComplexDragPedFromCarD2Ev
; Address            : 0x4F7214 - 0x4F723C
; =========================================================

4F7214:  PUSH            {R4,R6,R7,LR}
4F7216:  ADD             R7, SP, #8
4F7218:  MOV             R4, R0
4F721A:  LDR             R0, =(_ZTV26CTaskComplexDragPedFromCar_ptr - 0x4F7222)
4F721C:  MOV             R1, R4
4F721E:  ADD             R0, PC; _ZTV26CTaskComplexDragPedFromCar_ptr
4F7220:  LDR             R2, [R0]; `vtable for'CTaskComplexDragPedFromCar ...
4F7222:  LDR.W           R0, [R1,#0x50]!; CEntity **
4F7226:  ADDS            R2, #8
4F7228:  STR             R2, [R4]
4F722A:  CMP             R0, #0
4F722C:  IT NE
4F722E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F7232:  MOV             R0, R4; this
4F7234:  POP.W           {R4,R6,R7,LR}
4F7238:  B.W             _ZN31CTaskComplexEnterCarAsPassengerD2Ev; CTaskComplexEnterCarAsPassenger::~CTaskComplexEnterCarAsPassenger()
