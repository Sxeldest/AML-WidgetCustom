; =========================================================
; Game Engine Function: sub_FC834
; Address            : 0xFC834 - 0xFC84A
; =========================================================

FC834:  CMP             R1, #0x63 ; 'c'
FC836:  IT LS
FC838:  BLS.W           sub_FC6E8
FC83C:  LSRS            R2, R1, #3
FC83E:  CMP             R2, #0x7C ; '|'
FC840:  IT LS
FC842:  BLS.W           sub_FC860
FC846:  B.W             sub_FC6F8
