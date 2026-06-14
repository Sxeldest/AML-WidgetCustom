; =========================================================
; Game Engine Function: _Z17GLDepthFuncFromRQ11RQDepthFunc
; Address            : 0x1CFA98 - 0x1CFAA6
; =========================================================

1CFA98:  CMP             R0, #7
1CFA9A:  ITE HI
1CFA9C:  MOVWHI          R0, #0x207
1CFAA0:  ADDLS.W         R0, R0, #0x200
1CFAA4:  BX              LR
