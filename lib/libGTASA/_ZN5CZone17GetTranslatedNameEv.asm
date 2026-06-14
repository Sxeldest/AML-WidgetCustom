; =========================================================
; Game Engine Function: _ZN5CZone17GetTranslatedNameEv
; Address            : 0x42CD00 - 0x42CD10
; =========================================================

42CD00:  LDR             R1, =(TheText_ptr - 0x42CD06)
42CD02:  ADD             R1, PC; TheText_ptr
42CD04:  LDR             R2, [R1]; TheText
42CD06:  ADD.W           R1, R0, #8; char *
42CD0A:  MOV             R0, R2; this
42CD0C:  B.W             j_j__ZN5CText3GetEPKc; j_CText::Get(char const*)
