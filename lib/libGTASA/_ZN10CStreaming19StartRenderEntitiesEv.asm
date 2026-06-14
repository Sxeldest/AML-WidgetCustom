; =========================================================
; Game Engine Function: _ZN10CStreaming19StartRenderEntitiesEv
; Address            : 0x2D6508 - 0x2D6516
; =========================================================

2D6508:  LDR             R0, =(_ZN10CStreaming20ms_rwObjectInstancesE_ptr - 0x2D6510)
2D650A:  LDR             R1, =(dword_792FC8 - 0x2D6512)
2D650C:  ADD             R0, PC; _ZN10CStreaming20ms_rwObjectInstancesE_ptr
2D650E:  ADD             R1, PC; dword_792FC8
2D6510:  LDR             R0, [R0]; CStreaming::ms_rwObjectInstances ...
2D6512:  STR             R0, [R1]
2D6514:  BX              LR
