; =========================================================
; Game Engine Function: _Z19GetEventGlobalGroupv
; Address            : 0x36F8EC - 0x36F946
; =========================================================

36F8EC:  LDR             R0, =(dword_820650 - 0x36F8F2)
36F8EE:  ADD             R0, PC; dword_820650
36F8F0:  LDR             R0, [R0]
36F8F2:  CMP             R0, #0
36F8F4:  IT NE
36F8F6:  BXNE            LR
36F8F8:  PUSH            {R7,LR}
36F8FA:  MOV             R7, SP
36F8FC:  MOVS            R0, #0x4C ; 'L'; unsigned int
36F8FE:  BLX             _Znwj; operator new(uint)
36F902:  VMOV.I32        Q8, #0
36F906:  ADD.W           R3, R0, #0x34 ; '4'
36F90A:  LDR             R2, =(_ZTV17CEventGlobalGroup_ptr - 0x36F91E)
36F90C:  ADDS            R1, R0, #4
36F90E:  LDR.W           R12, =(dword_820650 - 0x36F920)
36F912:  VST1.32         {D16-D17}, [R3]
36F916:  ADD.W           R3, R0, #0x24 ; '$'
36F91A:  ADD             R2, PC; _ZTV17CEventGlobalGroup_ptr
36F91C:  ADD             R12, PC; dword_820650
36F91E:  VST1.32         {D16-D17}, [R3]
36F922:  ADD.W           R3, R0, #0x14
36F926:  LDR             R2, [R2]; `vtable for'CEventGlobalGroup ...
36F928:  VST1.32         {D16-D17}, [R3]
36F92C:  MOVS            R3, #0
36F92E:  STR             R3, [R0,#0x48]
36F930:  VST1.32         {D16-D17}, [R1]
36F934:  ADD.W           R1, R2, #8
36F938:  STR             R3, [R0,#0x44]
36F93A:  STR             R1, [R0]
36F93C:  STR.W           R0, [R12]
36F940:  POP.W           {R7,LR}
36F944:  BX              LR
