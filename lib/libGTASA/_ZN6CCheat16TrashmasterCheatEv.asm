; =========================================================
; Game Engine Function: _ZN6CCheat16TrashmasterCheatEv
; Address            : 0x2FDA58 - 0x2FDA60
; =========================================================

2FDA58:  MOV.W           R0, #(elf_hash_bucket+0x9C); this
2FDA5C:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
