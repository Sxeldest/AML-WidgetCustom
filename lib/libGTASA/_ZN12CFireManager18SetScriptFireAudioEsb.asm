; =========================================================
; Game Engine Function: _ZN12CFireManager18SetScriptFireAudioEsb
; Address            : 0x3F34D6 - 0x3F34F0
; =========================================================

3F34D6:  ADD.W           R12, R1, R1,LSL#2
3F34DA:  CMP             R2, #0
3F34DC:  LDRB.W          R3, [R0,R12,LSL#3]
3F34E0:  AND.W           R1, R3, #0xFB
3F34E4:  IT NE
3F34E6:  ORRNE.W         R1, R3, #4
3F34EA:  STRB.W          R1, [R0,R12,LSL#3]
3F34EE:  BX              LR
