; =========================================================
; Game Engine Function: _ZN11CTagManager9GetTagPosEi
; Address            : 0x361DAC - 0x361DC4
; =========================================================

361DAC:  LDR             R1, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x361DB2)
361DAE:  ADD             R1, PC; _ZN11CTagManager10ms_tagDescE_ptr
361DB0:  LDR             R1, [R1]; CTagManager::ms_tagDesc ...
361DB2:  LDR.W           R1, [R1,R0,LSL#3]
361DB6:  LDR             R2, [R1,#0x14]
361DB8:  ADD.W           R0, R2, #0x30 ; '0'
361DBC:  CMP             R2, #0
361DBE:  IT EQ
361DC0:  ADDEQ           R0, R1, #4
361DC2:  BX              LR
