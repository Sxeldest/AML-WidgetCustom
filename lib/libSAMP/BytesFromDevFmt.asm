; =========================================================
; Game Engine Function: BytesFromDevFmt
; Address            : 0x1BB07C - 0x1BB094
; =========================================================

1BB07C:  SUB             R0, R0, #0x1400
1BB080:  CMP             R0, #6
1BB084:  ADRLS           R1, dword_1BB094
1BB088:  MOVHI           R0, #0
1BB08C:  LDRLS           R0, [R1,R0,LSL#2]
1BB090:  BX              LR
