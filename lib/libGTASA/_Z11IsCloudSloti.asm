; =========================================================
; Game Engine Function: _Z11IsCloudSloti
; Address            : 0x299898 - 0x2998B8
; =========================================================

299898:  LDR             R1, =(UseCloudSaves_ptr - 0x2998A6)
29989A:  ORR.W           R0, R0, #1
29989E:  MOVS            R2, #0
2998A0:  CMP             R0, #7
2998A2:  ADD             R1, PC; UseCloudSaves_ptr
2998A4:  LDR             R1, [R1]; UseCloudSaves
2998A6:  LDRB            R1, [R1]
2998A8:  IT EQ
2998AA:  MOVEQ           R2, #1
2998AC:  CMP             R1, #0
2998AE:  IT NE
2998B0:  MOVNE           R1, #1
2998B2:  AND.W           R0, R2, R1
2998B6:  BX              LR
