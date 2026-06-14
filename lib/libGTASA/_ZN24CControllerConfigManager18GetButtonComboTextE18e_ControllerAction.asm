; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager18GetButtonComboTextE18e_ControllerAction
; Address            : 0x3EA8EC - 0x3EA900
; =========================================================

3EA8EC:  CMP             R1, #0x24 ; '$'
3EA8EE:  ITT NE
3EA8F0:  MOVNE           R0, #0
3EA8F2:  BXNE            LR
3EA8F4:  LDR             R0, =(TheText_ptr - 0x3EA8FC)
3EA8F6:  ADR             R1, aFecLbc; "FEC_LBC"
3EA8F8:  ADD             R0, PC; TheText_ptr
3EA8FA:  LDR             R0, [R0]; TheText ; this
3EA8FC:  B.W             j_j__ZN5CText3GetEPKc; j_CText::Get(char const*)
