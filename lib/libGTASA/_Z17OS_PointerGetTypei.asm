; =========================================================
; Game Engine Function: _Z17OS_PointerGetTypei
; Address            : 0x26B0C2 - 0x26B0D0
; =========================================================

26B0C2:  MOV.W           R1, #0xFFFFFFFF
26B0C6:  CMP             R0, #2
26B0C8:  IT CC
26B0CA:  MOVCC           R1, #2
26B0CC:  MOV             R0, R1
26B0CE:  BX              LR
