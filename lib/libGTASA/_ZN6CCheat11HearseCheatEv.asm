; =========================================================
; Game Engine Function: _ZN6CCheat11HearseCheatEv
; Address            : 0x2FDA48 - 0x2FDA50
; =========================================================

2FDA48:  MOV.W           R0, #(elf_hash_bucket+0xBE); this
2FDA4C:  B.W             _ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
