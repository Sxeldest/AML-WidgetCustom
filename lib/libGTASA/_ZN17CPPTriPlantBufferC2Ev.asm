; =========================================================
; Game Engine Function: _ZN17CPPTriPlantBufferC2Ev
; Address            : 0x2CD688 - 0x2CD69E
; =========================================================

2CD688:  MOVS            R1, #0
2CD68A:  VMOV.I32        Q8, #0
2CD68E:  STR.W           R1, [R0,#0xB94]
2CD692:  STR             R1, [R0]
2CD694:  ADDW            R1, R0, #0xB84
2CD698:  VST1.32         {D16-D17}, [R1]
2CD69C:  BX              LR
