; =========================================================
; Game Engine Function: _Z16OS_BillingUpdatev
; Address            : 0x26CD00 - 0x26CD06
; =========================================================

26CD00:  MOVS            R0, #1; bool
26CD02:  B.W             _Z17AND_BillingUpdateb; AND_BillingUpdate(bool)
