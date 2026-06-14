; =========================================================
; Game Engine Function: _ZN11CPopulation11IsSunbatherEi
; Address            : 0x4CF170 - 0x4CF18E
; =========================================================

4CF170:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CF176)
4CF172:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CF174:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CF176:  LDR.W           R0, [R1,R0,LSL#2]
4CF17A:  LDR             R1, [R0,#0x44]
4CF17C:  CMP             R1, #0x26 ; '&'
4CF17E:  ITT EQ
4CF180:  MOVEQ           R0, #1
4CF182:  BXEQ            LR
4CF184:  MOVS            R0, #0
4CF186:  CMP             R1, #0x27 ; '''
4CF188:  IT EQ
4CF18A:  MOVEQ           R0, #1
4CF18C:  BX              LR
