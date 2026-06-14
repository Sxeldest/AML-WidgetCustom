; =========================================================
; Game Engine Function: _ZNK25CEventVehicleDamageWeapon13CloneEditableEv
; Address            : 0x4EA798 - 0x4EA7BA
; =========================================================

4EA798:  PUSH            {R4,R6,R7,LR}
4EA79A:  ADD             R7, SP, #8
4EA79C:  MOV             R4, R0
4EA79E:  MOVS            R0, #dword_1C; this
4EA7A0:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4EA7A4:  ADD.W           R3, R4, #0x10
4EA7A8:  LDM             R3, {R1-R3}; CEntity *
4EA7AA:  BLX             j__ZN19CEventVehicleDamageC2EP8CVehicleP7CEntity11eWeaponType; CEventVehicleDamage::CEventVehicleDamage(CVehicle *,CEntity *,eWeaponType)
4EA7AE:  LDR             R1, =(_ZTV25CEventVehicleDamageWeapon_ptr - 0x4EA7B4)
4EA7B0:  ADD             R1, PC; _ZTV25CEventVehicleDamageWeapon_ptr
4EA7B2:  LDR             R1, [R1]; `vtable for'CEventVehicleDamageWeapon ...
4EA7B4:  ADDS            R1, #8
4EA7B6:  STR             R1, [R0]
4EA7B8:  POP             {R4,R6,R7,PC}
