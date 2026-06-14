; =========================================================
; Game Engine Function: _Z14GLDrawModeToRQj
; Address            : 0x1BCC58 - 0x1BCC6C
; =========================================================

1BCC58:  SUBS            R0, #1
1BCC5A:  CMP             R0, #6
1BCC5C:  ITT HI
1BCC5E:  MOVHI           R0, #0
1BCC60:  BXHI            LR
1BCC62:  LDR             R1, =(unk_5E8810 - 0x1BCC68)
1BCC64:  ADD             R1, PC; unk_5E8810
1BCC66:  LDR.W           R0, [R1,R0,LSL#2]
1BCC6A:  BX              LR
