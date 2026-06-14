; =========================================================
; Game Engine Function: _Z12readDataFilePKcPcj
; Address            : 0x279FE4 - 0x27A032
; =========================================================

279FE4:  PUSH            {R4-R7,LR}
279FE6:  ADD             R7, SP, #0xC
279FE8:  PUSH.W          {R8}
279FEC:  MOV             R4, R2
279FEE:  MOV             R5, R1
279FF0:  CBZ             R0, loc_27A028
279FF2:  CMP             R5, #0
279FF4:  IT NE
279FF6:  CMPNE           R4, #0
279FF8:  BEQ             loc_27A028
279FFA:  ADR             R1, dword_27A034; modes
279FFC:  BLX             fopen
27A000:  MOV             R6, R0
27A002:  CBZ             R6, loc_27A028
27A004:  MOV             R0, R5; ptr
27A006:  MOVS            R1, #1; size
27A008:  MOV             R2, R4; n
27A00A:  MOV             R3, R6; stream
27A00C:  BLX             fread
27A010:  MOV             R8, R0
27A012:  MOV             R0, R6; stream
27A014:  BLX             fclose
27A018:  ADDS            R0, R5, R4
27A01A:  MOVS            R1, #0
27A01C:  STRB.W          R1, [R0,#-1]
27A020:  MOV             R0, R8
27A022:  POP.W           {R8}
27A026:  POP             {R4-R7,PC}
27A028:  MOV.W           R0, #0xFFFFFFFF
27A02C:  POP.W           {R8}
27A030:  POP             {R4-R7,PC}
