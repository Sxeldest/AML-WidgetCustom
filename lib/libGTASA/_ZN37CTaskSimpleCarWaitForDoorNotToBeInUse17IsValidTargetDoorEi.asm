; =========================================================
; Game Engine Function: _ZN37CTaskSimpleCarWaitForDoorNotToBeInUse17IsValidTargetDoorEi
; Address            : 0x50233C - 0x502358
; =========================================================

50233C:  SUBS            R0, #8
50233E:  CMP             R0, #0xA
502340:  ITT HI
502342:  MOVHI           R0, #0
502344:  BXHI            LR
502346:  BFC.W           R0, #0xB, #0x15
50234A:  MOVW            R1, #0x40F
50234E:  LSR.W           R0, R1, R0
502352:  AND.W           R0, R0, #1
502356:  BX              LR
