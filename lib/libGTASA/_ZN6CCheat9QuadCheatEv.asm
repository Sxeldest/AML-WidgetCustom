; =========================================================
; Game Engine Function: _ZN6CCheat9QuadCheatEv
; Address            : 0x2FE656 - 0x2FE65E
; =========================================================

2FE656:  MOVW            R0, #(elf_hash_bucket+0xDB); this
2FE65A:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
