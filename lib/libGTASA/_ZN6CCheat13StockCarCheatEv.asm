; =========================================================
; Game Engine Function: _ZN6CCheat13StockCarCheatEv
; Address            : 0x2FDA28 - 0x2FDA30
; =========================================================

2FDA28:  MOV.W           R0, #(elf_hash_bucket+0xFC); this
2FDA2C:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
