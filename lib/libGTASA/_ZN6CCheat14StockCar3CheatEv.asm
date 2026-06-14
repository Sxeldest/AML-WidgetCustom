; =========================================================
; Game Engine Function: _ZN6CCheat14StockCar3CheatEv
; Address            : 0x2FDA38 - 0x2FDA40
; =========================================================

2FDA38:  MOV.W           R0, #(elf_hash_bucket+0xFA); this
2FDA3C:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
