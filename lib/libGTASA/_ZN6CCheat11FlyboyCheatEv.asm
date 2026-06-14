; =========================================================
; Game Engine Function: _ZN6CCheat11FlyboyCheatEv
; Address            : 0x2FE0DC - 0x2FE0E4
; =========================================================

2FE0DC:  MOV.W           R0, #(elf_hash_bucket+0x10C); this
2FE0E0:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
