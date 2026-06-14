; =========================================================
; Game Engine Function: _ZN10CMemoryMgr18InitMemoryTrackingEi
; Address            : 0x5D303C - 0x5D30FA
; =========================================================

5D303C:  PUSH            {R4-R7,LR}
5D303E:  ADD             R7, SP, #0xC
5D3040:  PUSH.W          {R8-R11}
5D3044:  SUB             SP, SP, #4
5D3046:  MOV             R4, R0
5D3048:  LDR             R0, =(_ZN10CMemoryMgr9m_idStackE_ptr - 0x5D3054)
5D304A:  LDR             R1, =(_ZN10CMemoryMgr4m_idE_ptr - 0x5D3058)
5D304C:  MOV.W           R8, #0
5D3050:  ADD             R0, PC; _ZN10CMemoryMgr9m_idStackE_ptr
5D3052:  LDR             R2, =(_ZN10CMemoryMgr9m_memUsedE_ptr - 0x5D305E)
5D3054:  ADD             R1, PC; _ZN10CMemoryMgr4m_idE_ptr
5D3056:  LSLS            R6, R4, #2
5D3058:  LDR             R5, [R0]; CMemoryMgr::m_idStack ...
5D305A:  ADD             R2, PC; _ZN10CMemoryMgr9m_memUsedE_ptr
5D305C:  LDR.W           R9, [R1]; CMemoryMgr::m_id ...
5D3060:  LDR             R0, [R2]; CMemoryMgr::m_memUsed ...
5D3062:  LDR             R1, [R5,#(dword_A83E9C - 0xA83E5C)]
5D3064:  LDR.W           R2, [R9]; CMemoryMgr::m_id
5D3068:  STR.W           R8, [R0]; CMemoryMgr::m_memUsed
5D306C:  STR.W           R2, [R5,R1,LSL#2]
5D3070:  MOVS            R1, #1
5D3072:  LDR             R0, [R5,#(dword_A83E9C - 0xA83E5C)]
5D3074:  ADDS            R0, #1
5D3076:  STR             R0, [R5,#(dword_A83E9C - 0xA83E5C)]
5D3078:  STR.W           R1, [R5,R0,LSL#2]
5D307C:  MOV             R0, R6; byte_count
5D307E:  LDR.W           R11, [R5,#(dword_A83E9C - 0xA83E5C)]
5D3082:  BLX.W           malloc
5D3086:  MOV             R10, R0
5D3088:  LDR             R0, =(_ZN10CMemoryMgr15m_pMemUsedArrayE_ptr - 0x5D308E)
5D308A:  ADD             R0, PC; _ZN10CMemoryMgr15m_pMemUsedArrayE_ptr
5D308C:  LDR             R0, [R0]; CMemoryMgr::m_pMemUsedArray ...
5D308E:  STR.W           R10, [R0]; CMemoryMgr::m_pMemUsedArray
5D3092:  MOV             R0, R6; byte_count
5D3094:  BLX.W           malloc
5D3098:  LDR             R1, =(_ZN10CMemoryMgr13m_pBlockArrayE_ptr - 0x5D30A2)
5D309A:  CMP             R4, #1
5D309C:  LDR             R2, =(unk_A83D74 - 0x5D30A6)
5D309E:  ADD             R1, PC; _ZN10CMemoryMgr13m_pBlockArrayE_ptr
5D30A0:  LDR             R3, =(dword_A83DBC - 0x5D30AE)
5D30A2:  ADD             R2, PC; unk_A83D74
5D30A4:  STR.W           R11, [R5,#(dword_A83E9C - 0xA83E5C)]
5D30A8:  LDR             R1, [R1]; CMemoryMgr::m_pBlockArray ...
5D30AA:  ADD             R3, PC; dword_A83DBC
5D30AC:  STR             R0, [R1]; CMemoryMgr::m_pBlockArray
5D30AE:  LDR.W           R0, [R5,R11,LSL#2]
5D30B2:  STR             R0, [R2,#(dword_A83DB8 - 0xA83D74)]
5D30B4:  STR.W           R0, [R9]; CMemoryMgr::m_id
5D30B8:  STR             R0, [R3,#(dword_A83E00 - 0xA83DBC)]
5D30BA:  BLT             loc_5D30F2
5D30BC:  LDR             R0, =(_ZN10CMemoryMgr13m_pBlockArrayE_ptr - 0x5D30C8)
5D30BE:  CMP             R4, #1
5D30C0:  STR.W           R8, [R10]
5D30C4:  ADD             R0, PC; _ZN10CMemoryMgr13m_pBlockArrayE_ptr
5D30C6:  LDR             R0, [R0]; CMemoryMgr::m_pBlockArray ...
5D30C8:  LDR             R0, [R0]; CMemoryMgr::m_pBlockArray
5D30CA:  STR.W           R8, [R0]
5D30CE:  BEQ             loc_5D30F2
5D30D0:  LDR             R1, =(_ZN10CMemoryMgr15m_pMemUsedArrayE_ptr - 0x5D30DC)
5D30D2:  MOVS            R0, #1
5D30D4:  LDR             R3, =(_ZN10CMemoryMgr13m_pBlockArrayE_ptr - 0x5D30DE)
5D30D6:  MOVS            R2, #0
5D30D8:  ADD             R1, PC; _ZN10CMemoryMgr15m_pMemUsedArrayE_ptr
5D30DA:  ADD             R3, PC; _ZN10CMemoryMgr13m_pBlockArrayE_ptr
5D30DC:  LDR             R1, [R1]; CMemoryMgr::m_pMemUsedArray ...
5D30DE:  LDR             R3, [R3]; CMemoryMgr::m_pBlockArray ...
5D30E0:  LDR             R6, [R1]; CMemoryMgr::m_pMemUsedArray
5D30E2:  STR.W           R2, [R6,R0,LSL#2]
5D30E6:  LDR             R6, [R3]; CMemoryMgr::m_pBlockArray
5D30E8:  STR.W           R2, [R6,R0,LSL#2]
5D30EC:  ADDS            R0, #1
5D30EE:  CMP             R4, R0
5D30F0:  BNE             loc_5D30E0
5D30F2:  ADD             SP, SP, #4
5D30F4:  POP.W           {R8-R11}
5D30F8:  POP             {R4-R7,PC}
