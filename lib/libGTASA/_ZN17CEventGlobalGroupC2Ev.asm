; =========================================================
; Game Engine Function: _ZN17CEventGlobalGroupC2Ev
; Address            : 0x36F954 - 0x36F988
; =========================================================

36F954:  VMOV.I32        Q8, #0
36F958:  ADD.W           R2, R0, #0x34 ; '4'
36F95C:  LDR             R1, =(_ZTV17CEventGlobalGroup_ptr - 0x36F96C)
36F95E:  ADDS            R3, R0, #4
36F960:  VST1.32         {D16-D17}, [R2]
36F964:  ADD.W           R2, R0, #0x24 ; '$'
36F968:  ADD             R1, PC; _ZTV17CEventGlobalGroup_ptr
36F96A:  VST1.32         {D16-D17}, [R2]
36F96E:  ADD.W           R2, R0, #0x14
36F972:  LDR             R1, [R1]; `vtable for'CEventGlobalGroup ...
36F974:  VST1.32         {D16-D17}, [R2]
36F978:  MOVS            R2, #0
36F97A:  ADDS            R1, #8
36F97C:  STR             R2, [R0,#0x48]
36F97E:  VST1.32         {D16-D17}, [R3]
36F982:  STR             R2, [R0,#0x44]
36F984:  STR             R1, [R0]
36F986:  BX              LR
