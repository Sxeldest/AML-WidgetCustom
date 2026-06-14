; =========================================================
; Game Engine Function: _ZN7CCamera24GetLookingLRBFirstPersonEv
; Address            : 0x3DB9E6 - 0x3DBA0A
; =========================================================

3DB9E6:  LDRB.W          R1, [R0,#0x57]
3DB9EA:  ADD.W           R1, R1, R1,LSL#5
3DB9EE:  ADD.W           R0, R0, R1,LSL#4
3DB9F2:  LDRH.W          R1, [R0,#0x17E]
3DB9F6:  CMP             R1, #0x10
3DB9F8:  BNE             loc_3DBA06
3DB9FA:  LDR.W           R0, [R0,#0x190]
3DB9FE:  CMP             R0, #3
3DBA00:  ITT NE
3DBA02:  MOVNE           R0, #1
3DBA04:  BXNE            LR
3DBA06:  MOVS            R0, #0
3DBA08:  BX              LR
