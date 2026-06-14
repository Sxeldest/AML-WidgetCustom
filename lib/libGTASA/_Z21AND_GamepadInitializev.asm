; =========================================================
; Game Engine Function: _Z21AND_GamepadInitializev
; Address            : 0x267944 - 0x267978
; =========================================================

267944:  LDR             R0, =(lastGamepadAxis_ptr - 0x26794E)
267946:  VMOV.I32        Q8, #0
26794A:  ADD             R0, PC; lastGamepadAxis_ptr
26794C:  LDR             R0, [R0]; lastGamepadAxis
26794E:  ADD.W           R1, R0, #0x50 ; 'P'
267952:  VST1.32         {D16-D17}, [R1]
267956:  ADD.W           R1, R0, #0x40 ; '@'
26795A:  VST1.32         {D16-D17}, [R1]
26795E:  ADD.W           R1, R0, #0x30 ; '0'
267962:  VST1.32         {D16-D17}, [R1]
267966:  ADD.W           R1, R0, #0x20 ; ' '
26796A:  VST1.32         {D16-D17}, [R1]
26796E:  VST1.32         {D16-D17}, [R0]!
267972:  VST1.32         {D16-D17}, [R0]
267976:  BX              LR
