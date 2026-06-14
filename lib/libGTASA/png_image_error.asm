; =========================================================
; Game Engine Function: png_image_error
; Address            : 0x1F1FF4 - 0x1F2036
; =========================================================

1F1FF4:  PUSH            {R4,R6,R7,LR}
1F1FF6:  ADD             R7, SP, #8
1F1FF8:  MOV             R4, R0
1F1FFA:  ADD.W           R0, R4, #0x20 ; ' '
1F1FFE:  MOV             R3, R1
1F2000:  MOVS            R1, #0x40 ; '@'
1F2002:  MOVS            R2, #0
1F2004:  BLX             j_png_safecat
1F2008:  LDR             R0, [R4,#0x1C]
1F200A:  CMP             R4, #0
1F200C:  ORR.W           R0, R0, #2
1F2010:  STR             R0, [R4,#0x1C]
1F2012:  ITT NE
1F2014:  LDRNE           R0, [R4]
1F2016:  CMPNE           R0, #0
1F2018:  BEQ             loc_1F201E
1F201A:  LDR             R0, [R0,#8]
1F201C:  CBZ             R0, loc_1F2022
1F201E:  MOVS            R0, #0
1F2020:  POP             {R4,R6,R7,PC}
1F2022:  LDR             R1, =(sub_1F1F78+1 - 0x1F202C)
1F2024:  MOV             R0, R4
1F2026:  MOV             R2, R4
1F2028:  ADD             R1, PC; sub_1F1F78
1F202A:  BLX             j_png_safe_execute
1F202E:  MOVS            R0, #0
1F2030:  STR             R0, [R4]
1F2032:  MOVS            R0, #0
1F2034:  POP             {R4,R6,R7,PC}
