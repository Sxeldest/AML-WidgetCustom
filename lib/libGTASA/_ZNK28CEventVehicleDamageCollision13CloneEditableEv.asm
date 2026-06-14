; =========================================================
; Game Engine Function: _ZNK28CEventVehicleDamageCollision13CloneEditableEv
; Address            : 0x5603B0 - 0x5603D2
; =========================================================

5603B0:  PUSH            {R4,R6,R7,LR}
5603B2:  ADD             R7, SP, #8
5603B4:  MOV             R4, R0
5603B6:  MOVS            R0, #dword_1C; this
5603B8:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
5603BC:  ADD.W           R3, R4, #0x10
5603C0:  LDM             R3, {R1-R3}; CEntity *
5603C2:  BLX             j__ZN19CEventVehicleDamageC2EP8CVehicleP7CEntity11eWeaponType; CEventVehicleDamage::CEventVehicleDamage(CVehicle *,CEntity *,eWeaponType)
5603C6:  LDR             R1, =(_ZTV28CEventVehicleDamageCollision_ptr - 0x5603CC)
5603C8:  ADD             R1, PC; _ZTV28CEventVehicleDamageCollision_ptr
5603CA:  LDR             R1, [R1]; `vtable for'CEventVehicleDamageCollision ...
5603CC:  ADDS            R1, #8
5603CE:  STR             R1, [R0]
5603D0:  POP             {R4,R6,R7,PC}
