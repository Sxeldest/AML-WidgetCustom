; =========================================================
; Game Engine Function: _ZN6CCheat9TankCheatEv
; Address            : 0x2FDA20 - 0x2FDA28
; =========================================================

2FDA20:  MOV.W           R0, #(elf_hash_bucket+0xB4); this
2FDA24:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
