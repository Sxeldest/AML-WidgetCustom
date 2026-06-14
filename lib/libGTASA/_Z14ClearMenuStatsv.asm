; =========================================================
; Game Engine Function: _Z14ClearMenuStatsv
; Address            : 0x2AD014 - 0x2AD050
; =========================================================

2AD014:  LDR             R0, =(MenuCounts_ptr - 0x2AD01E)
2AD016:  VMOV.I32        Q8, #0
2AD01A:  ADD             R0, PC; MenuCounts_ptr
2AD01C:  LDR             R0, [R0]; MenuCounts
2AD01E:  ADD.W           R1, R0, #0x5C ; '\'
2AD022:  VST1.32         {D16-D17}, [R1]
2AD026:  ADD.W           R1, R0, #0x50 ; 'P'
2AD02A:  VST1.32         {D16-D17}, [R1]
2AD02E:  ADD.W           R1, R0, #0x40 ; '@'
2AD032:  VST1.32         {D16-D17}, [R1]
2AD036:  ADD.W           R1, R0, #0x30 ; '0'
2AD03A:  VST1.32         {D16-D17}, [R1]
2AD03E:  ADD.W           R1, R0, #0x20 ; ' '
2AD042:  VST1.32         {D16-D17}, [R1]
2AD046:  VST1.32         {D16-D17}, [R0]!
2AD04A:  VST1.32         {D16-D17}, [R0]
2AD04E:  BX              LR
