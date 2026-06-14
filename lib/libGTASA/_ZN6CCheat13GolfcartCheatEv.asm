; =========================================================
; Game Engine Function: _ZN6CCheat13GolfcartCheatEv
; Address            : 0x2FDA60 - 0x2FDA68
; =========================================================

2FDA60:  MOVW            R0, #(elf_hash_bucket+0xCD); this
2FDA64:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
