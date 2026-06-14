; =========================================================
; Game Engine Function: sub_133FF0
; Address            : 0x133FF0 - 0x134024
; =========================================================

133FF0:  PUSH            {R4,R6,R7,LR}
133FF2:  ADD             R7, SP, #8
133FF4:  MOV             R4, R0
133FF6:  LDR             R0, =(off_234C0C - 0x133FFC)
133FF8:  ADD             R0, PC; off_234C0C
133FFA:  LDR             R1, [R0]; `vtable for'Button ...
133FFC:  LDR             R0, [R4,#0x68]
133FFE:  ADDS            R1, #8
134000:  STR             R1, [R4]
134002:  ADD.W           R1, R4, #0x58 ; 'X'
134006:  CMP             R1, R0
134008:  BEQ             loc_134010
13400A:  CBZ             R0, loc_13401A
13400C:  MOVS            R1, #5
13400E:  B               loc_134012
134010:  MOVS            R1, #4
134012:  LDR             R2, [R0]
134014:  LDR.W           R1, [R2,R1,LSL#2]
134018:  BLX             R1
13401A:  MOV             R0, R4
13401C:  POP.W           {R4,R6,R7,LR}
134020:  B.W             sub_12BCE4
