; =========================================================
; Game Engine Function: sub_1C2230
; Address            : 0x1C2230 - 0x1C2246
; =========================================================

1C2230:  LDR             R1, =(RpHAnimAtomicGlobals_ptr - 0x1C223A)
1C2232:  MOV.W           R2, #0xFFFFFFFF
1C2236:  ADD             R1, PC; RpHAnimAtomicGlobals_ptr
1C2238:  LDR             R1, [R1]; RpHAnimAtomicGlobals
1C223A:  LDR             R1, [R1]
1C223C:  STR             R2, [R0,R1]
1C223E:  ADD             R1, R0
1C2240:  MOVS            R2, #0
1C2242:  STR             R2, [R1,#4]
1C2244:  BX              LR
