; =========================================================
; Game Engine Function: _ZN6CCheat11ApacheCheatEv
; Address            : 0x2FE64E - 0x2FE656
; =========================================================

2FE64E:  MOVW            R0, #(elf_hash_bucket+0xAD); this
2FE652:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
