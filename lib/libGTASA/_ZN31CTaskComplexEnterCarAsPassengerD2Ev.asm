; =========================================================
; Game Engine Function: _ZN31CTaskComplexEnterCarAsPassengerD2Ev
; Address            : 0x4F46F4 - 0x4F4746
; =========================================================

4F46F4:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexEnterCar::~CTaskComplexEnterCar()'
4F46F6:  ADD             R7, SP, #8
4F46F8:  MOV             R4, R0
4F46FA:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4F4702)
4F46FC:  MOV             R5, R4
4F46FE:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4F4700:  LDR             R1, [R0]; `vtable for'CTaskComplexEnterCar ...
4F4702:  LDR.W           R0, [R5,#0xC]!; this
4F4706:  ADDS            R1, #8
4F4708:  STR             R1, [R4]
4F470A:  CMP             R0, #0
4F470C:  ITT NE
4F470E:  MOVNE           R1, R5; CEntity **
4F4710:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F4714:  LDR             R0, [R4,#0x38]; this
4F4716:  CBZ             R0, loc_4F4720
4F4718:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarD2Ev; CTaskUtilityLineUpPedWithCar::~CTaskUtilityLineUpPedWithCar()
4F471C:  BLX             _ZdlPv; operator delete(void *)
4F4720:  LDR             R0, [R5]
4F4722:  CBZ             R0, loc_4F473C
4F4724:  LDRB.W          R1, [R4,#0x28]
4F4728:  LDRB.W          R2, [R0,#0x489]
4F472C:  SUBS            R1, R2, R1
4F472E:  STRB.W          R1, [R0,#0x489]
4F4732:  LDRB.W          R1, [R4,#0x44]; unsigned __int8
4F4736:  LDR             R0, [R4,#0xC]; this
4F4738:  BLX             j__ZN8CVehicle19ClearGettingInFlagsEh; CVehicle::ClearGettingInFlags(uchar)
4F473C:  MOV             R0, R4; this
4F473E:  POP.W           {R4,R5,R7,LR}
4F4742:  B.W             sub_18EDE8
