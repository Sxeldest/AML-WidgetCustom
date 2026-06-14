; =========================================================
; Game Engine Function: _ZN6CCheat14StockCar2CheatEv
; Address            : 0x2FDA30 - 0x2FDA38
; =========================================================

2FDA30:  MOVW            R0, #(elf_hash_bucket+0xFD); this
2FDA34:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
