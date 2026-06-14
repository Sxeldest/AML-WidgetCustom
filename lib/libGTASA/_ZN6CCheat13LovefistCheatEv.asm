; =========================================================
; Game Engine Function: _ZN6CCheat13LovefistCheatEv
; Address            : 0x2FDA50 - 0x2FDA58
; =========================================================

2FDA50:  MOVW            R0, #(elf_hash_bucket+0x9D); this
2FDA54:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
