; =========================================================
; Game Engine Function: _Z21OS_GamepadIsConnectedjP13OSGamepadType
; Address            : 0x2683D4 - 0x2683F0
; =========================================================

2683D4:  LDR             R2, =(lastGamepadType_ptr - 0x2683DA)
2683D6:  ADD             R2, PC; lastGamepadType_ptr
2683D8:  LDR             R2, [R2]; lastGamepadType
2683DA:  LDR.W           R0, [R2,R0,LSL#2]
2683DE:  ADDS            R2, R0, #1
2683E0:  ITT EQ
2683E2:  MOVEQ           R0, #0
2683E4:  BXEQ            LR
2683E6:  CMP             R1, #0
2683E8:  IT NE
2683EA:  STRNE           R0, [R1]
2683EC:  MOVS            R0, #1
2683EE:  BX              LR
