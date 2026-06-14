; =========================================================
; Game Engine Function: _ZN12CTaskManagerC2EP4CPed
; Address            : 0x533840 - 0x53385A
; =========================================================

533840:  VMOV.I32        Q8, #0; Alternative name is 'CTaskManager::CTaskManager(CPed *)'
533844:  STR             R1, [R0,#0x2C]
533846:  ADD.W           R1, R0, #0x1C
53384A:  VST1.32         {D16-D17}, [R1]
53384E:  MOV             R1, R0
533850:  VST1.32         {D16-D17}, [R1]!
533854:  VST1.32         {D16-D17}, [R1]
533858:  BX              LR
