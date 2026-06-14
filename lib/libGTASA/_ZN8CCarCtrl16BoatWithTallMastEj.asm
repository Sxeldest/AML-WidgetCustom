; =========================================================
; Game Engine Function: _ZN8CCarCtrl16BoatWithTallMastEj
; Address            : 0x2FB768 - 0x2FB77E
; =========================================================

2FB768:  MOV             R1, R0
2FB76A:  MOVS            R0, #1
2FB76C:  CMP.W           R1, #0x1C6
2FB770:  IT EQ
2FB772:  BXEQ            LR
2FB774:  CMP.W           R1, #0x1E4
2FB778:  IT NE
2FB77A:  MOVNE           R0, #0
2FB77C:  BX              LR
