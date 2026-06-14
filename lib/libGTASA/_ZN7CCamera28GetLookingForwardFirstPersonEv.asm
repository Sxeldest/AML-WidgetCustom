; =========================================================
; Game Engine Function: _ZN7CCamera28GetLookingForwardFirstPersonEv
; Address            : 0x3DBA44 - 0x3DBA68
; =========================================================

3DBA44:  LDRB.W          R1, [R0,#0x57]
3DBA48:  ADD.W           R1, R1, R1,LSL#5
3DBA4C:  ADD.W           R0, R0, R1,LSL#4
3DBA50:  LDRH.W          R1, [R0,#0x17E]
3DBA54:  CMP             R1, #0x10
3DBA56:  ITT EQ
3DBA58:  LDREQ.W         R0, [R0,#0x190]
3DBA5C:  CMPEQ           R0, #3
3DBA5E:  BEQ             loc_3DBA64
3DBA60:  MOVS            R0, #0
3DBA62:  BX              LR
3DBA64:  MOVS            R0, #1
3DBA66:  BX              LR
