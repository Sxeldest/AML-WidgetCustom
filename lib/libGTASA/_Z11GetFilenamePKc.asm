; =========================================================
; Game Engine Function: _Z11GetFilenamePKc
; Address            : 0x466940 - 0x466956
; =========================================================

466940:  PUSH            {R4,R6,R7,LR}
466942:  ADD             R7, SP, #8
466944:  MOVS            R1, #0x5C ; '\'; int
466946:  MOV             R4, R0
466948:  BLX             strrchr
46694C:  CMP             R0, #0
46694E:  IT NE
466950:  ADDNE           R4, R0, #1
466952:  MOV             R0, R4
466954:  POP             {R4,R6,R7,PC}
