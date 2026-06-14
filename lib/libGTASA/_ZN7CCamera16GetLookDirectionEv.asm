; =========================================================
; Game Engine Function: _ZN7CCamera16GetLookDirectionEv
; Address            : 0x3DBA0A - 0x3DBA44
; =========================================================

3DBA0A:  LDRB.W          R1, [R0,#0x57]
3DBA0E:  ADD.W           R1, R1, R1,LSL#5
3DBA12:  ADD.W           R0, R0, R1,LSL#4
3DBA16:  LDRH.W          R1, [R0,#0x17E]
3DBA1A:  SUBS            R1, #4
3DBA1C:  UBFX.W          R2, R1, #1, #0xF
3DBA20:  ORR.W           R1, R2, R1,LSL#15
3DBA24:  UXTH            R1, R1
3DBA26:  CMP             R1, #9
3DBA28:  BHI             loc_3DBA40
3DBA2A:  MOVS            R2, #1
3DBA2C:  LSL.W           R1, R2, R1
3DBA30:  MOVW            R2, #0x2C1
3DBA34:  TST             R1, R2
3DBA36:  ITTT NE
3DBA38:  LDRNE.W         R0, [R0,#0x190]
3DBA3C:  CMPNE           R0, #3
3DBA3E:  BXNE            LR
3DBA40:  MOVS            R0, #3
3DBA42:  BX              LR
