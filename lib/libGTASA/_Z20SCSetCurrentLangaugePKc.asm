; =========================================================
; Game Engine Function: _Z20SCSetCurrentLangaugePKc
; Address            : 0x2966D0 - 0x2966DA
; =========================================================

2966D0:  MOV             R1, R0; char *
2966D2:  LDR             R0, =(aSetlocale - 0x2966D8); "SetLocale"
2966D4:  ADD             R0, PC; "SetLocale"
2966D6:  B.W             j_j__Z20OS_ServiceAppCommandPKcS0_; j_OS_ServiceAppCommand(char const*,char const*)
