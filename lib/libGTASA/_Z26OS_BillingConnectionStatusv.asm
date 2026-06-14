; =========================================================
; Game Engine Function: _Z26OS_BillingConnectionStatusv
; Address            : 0x26D20C - 0x26D228
; =========================================================

26D20C:  LDR             R0, =(byte_6D7111 - 0x26D212)
26D20E:  ADD             R0, PC; byte_6D7111
26D210:  LDRB            R0, [R0]
26D212:  CMP             R0, #1
26D214:  ITT NE
26D216:  MOVNE           R0, #1
26D218:  BXNE            LR
26D21A:  LDR             R0, =(byte_6D7112 - 0x26D220)
26D21C:  ADD             R0, PC; byte_6D7112
26D21E:  LDRB            R0, [R0]
26D220:  CMP             R0, #0
26D222:  IT NE
26D224:  MOVNE           R0, #2
26D226:  BX              LR
