; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel9GetLengthEv
; Address            : 0x3A971C - 0x3A9736
; =========================================================

3A971C:  MOV             R1, #0x24038
3A9724:  LDR             R0, [R0,R1]
3A9726:  CMP             R0, #0
3A9728:  ITT EQ
3A972A:  MOVEQ.W         R0, #0xFFFFFFFF
3A972E:  BXEQ            LR
3A9730:  LDR             R1, [R0]
3A9732:  LDR             R1, [R1,#8]
3A9734:  BX              R1
