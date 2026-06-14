; =========================================================
; Game Engine Function: _ZN6CCheat17MonsterTruckCheatEv
; Address            : 0x2FE76C - 0x2FE774
; =========================================================

2FE76C:  MOV.W           R0, #(elf_hash_bucket+0x130); this
2FE770:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
