; =========================================================
; Game Engine Function: _ZN7CWanted21SetMaximumWantedLevelEi
; Address            : 0x42222C - 0x42224C
; =========================================================

42222C:  CMP             R0, #6
42222E:  IT HI
422230:  BXHI            LR
422232:  LDR             R1, =(_ZN7CWanted19nMaximumWantedLevelE_ptr - 0x42223A)
422234:  LDR             R2, =(_ZN7CWanted18MaximumWantedLevelE_ptr - 0x42223E)
422236:  ADD             R1, PC; _ZN7CWanted19nMaximumWantedLevelE_ptr
422238:  LDR             R3, =(unk_617CD0 - 0x422240)
42223A:  ADD             R2, PC; _ZN7CWanted18MaximumWantedLevelE_ptr
42223C:  ADD             R3, PC; unk_617CD0
42223E:  LDR             R1, [R1]; CWanted::nMaximumWantedLevel ...
422240:  LDR             R2, [R2]; CWanted::MaximumWantedLevel ...
422242:  LDR.W           R3, [R3,R0,LSL#2]
422246:  STR             R3, [R1]; CWanted::nMaximumWantedLevel
422248:  STR             R0, [R2]; CWanted::MaximumWantedLevel
42224A:  BX              LR
