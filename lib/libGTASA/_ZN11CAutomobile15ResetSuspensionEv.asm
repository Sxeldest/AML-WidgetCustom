; =========================================================
; Game Engine Function: _ZN11CAutomobile15ResetSuspensionEv
; Address            : 0x559498 - 0x5594C2
; =========================================================

559498:  VMOV.I32        Q9, #0
55949C:  ADDW            R1, R0, #0x808
5594A0:  VMOV.F32        Q8, #1.0
5594A4:  VST1.32         {D18-D19}, [R1]
5594A8:  ADD.W           R1, R0, #0x7E8
5594AC:  VST1.32         {D16-D17}, [R1]
5594B0:  ADDW            R1, R0, #0x83C
5594B4:  ADDW            R0, R0, #0x97C
5594B8:  VST1.32         {D18-D19}, [R1]
5594BC:  VST1.32         {D18-D19}, [R0]
5594C0:  BX              LR
