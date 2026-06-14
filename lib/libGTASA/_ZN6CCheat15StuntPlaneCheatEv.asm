; =========================================================
; Game Engine Function: _ZN6CCheat15StuntPlaneCheatEv
; Address            : 0x2FE764 - 0x2FE76C
; =========================================================

2FE764:  MOVW            R0, #(elf_hash_bucket+0x105); this
2FE768:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
