; =========================================================
; Game Engine Function: _ZN6CCheat10DozerCheatEv
; Address            : 0x2FE75C - 0x2FE764
; =========================================================

2FE75C:  MOV.W           R0, #(elf_hash_bucket+0xEA); this
2FE760:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
