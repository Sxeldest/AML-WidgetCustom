; =========================================================
; Game Engine Function: _ZN15CTouchInterface11IsTouchDownEi
; Address            : 0x2B0A38 - 0x2B0A52
; =========================================================

2B0A38:  PUSH            {R4,R6,R7,LR}
2B0A3A:  ADD             R7, SP, #8
2B0A3C:  MOVS            R1, #0; int
2B0A3E:  MOVS            R4, #0
2B0A40:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
2B0A44:  ORR.W           R0, R0, #1
2B0A48:  CMP             R0, #3
2B0A4A:  IT EQ
2B0A4C:  MOVEQ           R4, #1
2B0A4E:  MOV             R0, R4
2B0A50:  POP             {R4,R6,R7,PC}
