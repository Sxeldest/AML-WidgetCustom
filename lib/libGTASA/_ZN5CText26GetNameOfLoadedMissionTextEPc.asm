; =========================================================
; Game Engine Function: _ZN5CText26GetNameOfLoadedMissionTextEPc
; Address            : 0x54DE9C - 0x54DEA8
; =========================================================

54DE9C:  ADD.W           R2, R0, #0x24 ; '$'
54DEA0:  MOV             R0, R1; char *
54DEA2:  MOV             R1, R2; char *
54DEA4:  B.W             j_strcpy
