; =========================================================
; Game Engine Function: _ZN10CMemoryMgr13GetMemoryUsedEi
; Address            : 0x5D3210 - 0x5D321E
; =========================================================

5D3210:  LDR             R1, =(_ZN10CMemoryMgr15m_pMemUsedArrayE_ptr - 0x5D3216)
5D3212:  ADD             R1, PC; _ZN10CMemoryMgr15m_pMemUsedArrayE_ptr
5D3214:  LDR             R1, [R1]; CMemoryMgr::m_pMemUsedArray ...
5D3216:  LDR             R1, [R1]; CMemoryMgr::m_pMemUsedArray
5D3218:  LDR.W           R0, [R1,R0,LSL#2]
5D321C:  BX              LR
