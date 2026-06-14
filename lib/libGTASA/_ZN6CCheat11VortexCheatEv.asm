; =========================================================
; Game Engine Function: _ZN6CCheat11VortexCheatEv
; Address            : 0x2FE0E4 - 0x2FE0EC
; =========================================================

2FE0E4:  MOVW            R0, #(elf_hash_bucket+0x11F); this
2FE0E8:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
