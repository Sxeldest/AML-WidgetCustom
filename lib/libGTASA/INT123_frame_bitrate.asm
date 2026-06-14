; =========================================================
; Game Engine Function: INT123_frame_bitrate
; Address            : 0x2260AC - 0x2260DA
; =========================================================

2260AC:  MOVW            R2, #0x92C8
2260B0:  LDR.W           R12, =(unk_5F1040 - 0x2260C4)
2260B4:  LDR             R2, [R0,R2]
2260B6:  MOVW            R3, #0x92E4
2260BA:  MOVW            R1, #0x92D8
2260BE:  LDR             R3, [R0,R3]
2260C0:  ADD             R12, PC; unk_5F1040
2260C2:  LDR             R0, [R0,R1]
2260C4:  ADD.W           R1, R2, R2,LSL#1
2260C8:  ADD.W           R1, R12, R1,LSL#6
2260CC:  ADD.W           R0, R1, R0,LSL#6
2260D0:  ADD.W           R0, R0, R3,LSL#2
2260D4:  LDR.W           R0, [R0,#-0x40]
2260D8:  BX              LR
