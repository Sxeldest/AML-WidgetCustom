; =========================================================
; Game Engine Function: _Z18OS_ThreadIsRunningPv
; Address            : 0x26C192 - 0x26C1A6
; =========================================================

26C192:  CMP             R0, #0
26C194:  ITT EQ
26C196:  MOVEQ           R0, #0
26C198:  BXEQ            LR
26C19A:  LDRB.W          R0, [R0,#0x41]
26C19E:  CMP             R0, #0
26C1A0:  IT NE
26C1A2:  MOVNE           R0, #1
26C1A4:  BX              LR
