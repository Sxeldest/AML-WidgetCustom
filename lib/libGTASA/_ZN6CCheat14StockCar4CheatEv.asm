; =========================================================
; Game Engine Function: _ZN6CCheat14StockCar4CheatEv
; Address            : 0x2FDA40 - 0x2FDA48
; =========================================================

2FDA40:  MOVW            R0, #(elf_hash_bucket+0xFB); this
2FDA44:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
