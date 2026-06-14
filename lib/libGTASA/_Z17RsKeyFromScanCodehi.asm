; =========================================================
; Game Engine Function: _Z17RsKeyFromScanCodehi
; Address            : 0x4D41B0 - 0x4D41C4
; =========================================================

4D41B0:  LDR             R2, =(unk_61E386 - 0x4D41BA)
4D41B2:  CMP             R1, #0
4D41B4:  LDR             R3, =(unk_61E186 - 0x4D41BC)
4D41B6:  ADD             R2, PC; unk_61E386
4D41B8:  ADD             R3, PC; unk_61E186
4D41BA:  IT EQ
4D41BC:  MOVEQ           R3, R2
4D41BE:  LDRB.W          R0, [R3,R0,LSL#1]
4D41C2:  BX              LR
