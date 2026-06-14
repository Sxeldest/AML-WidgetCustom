; =========================================================
; Game Engine Function: _ZN4CPed12ClearWeaponsEv
; Address            : 0x49F7C6 - 0x49F856
; =========================================================

49F7C6:  PUSH            {R4,R6,R7,LR}
49F7C8:  ADD             R7, SP, #8
49F7CA:  MOV.W           R1, #0xFFFFFFFF; int
49F7CE:  MOV             R4, R0
49F7D0:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
49F7D4:  MOV             R0, R4; this
49F7D6:  BLX             j__ZN4CPed18RemoveGogglesModelEv; CPed::RemoveGogglesModel(void)
49F7DA:  ADDW            R0, R4, #0x5A4; this
49F7DE:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F7E2:  ADD.W           R0, R4, #0x5C0; this
49F7E6:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F7EA:  ADDW            R0, R4, #0x5DC; this
49F7EE:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F7F2:  ADD.W           R0, R4, #0x5F8; this
49F7F6:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F7FA:  ADDW            R0, R4, #0x614; this
49F7FE:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F802:  ADD.W           R0, R4, #0x630; this
49F806:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F80A:  ADDW            R0, R4, #0x64C; this
49F80E:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F812:  ADD.W           R0, R4, #0x668; this
49F816:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F81A:  ADDW            R0, R4, #0x684; this
49F81E:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F822:  ADD.W           R0, R4, #0x6A0; this
49F826:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F82A:  ADDW            R0, R4, #0x6BC; this
49F82E:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F832:  ADD.W           R0, R4, #0x6D8; this
49F836:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F83A:  ADDW            R0, R4, #0x6F4; this
49F83E:  BLX             j__ZN7CWeapon8ShutdownEv; CWeapon::Shutdown(void)
49F842:  MOVS            R0, #0
49F844:  MOVS            R1, #1
49F846:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
49F84A:  LDR             R1, [R0,#0x14]; int
49F84C:  MOV             R0, R4; this
49F84E:  POP.W           {R4,R6,R7,LR}
49F852:  B.W             _ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
