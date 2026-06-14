; =========================================================
; Game Engine Function: sub_1358F4
; Address            : 0x1358F4 - 0x13594C
; =========================================================

1358F4:  PUSH            {R4,R6,R7,LR}
1358F6:  ADD             R7, SP, #8
1358F8:  LDR             R1, =(_ZTV13CheckedButton - 0x135904); `vtable for'CheckedButton ...
1358FA:  MOV             R4, R0
1358FC:  LDR.W           R0, [R0,#0x88]
135900:  ADD             R1, PC; `vtable for'CheckedButton
135902:  ADDS            R1, #8
135904:  STR             R1, [R4]
135906:  ADD.W           R1, R4, #0x78 ; 'x'
13590A:  CMP             R1, R0
13590C:  BEQ             loc_135914
13590E:  CBZ             R0, loc_13591E
135910:  MOVS            R1, #5
135912:  B               loc_135916
135914:  MOVS            R1, #4
135916:  LDR             R2, [R0]
135918:  LDR.W           R1, [R2,R1,LSL#2]
13591C:  BLX             R1
13591E:  LDR             R0, =(off_234C0C - 0x135924)
135920:  ADD             R0, PC; off_234C0C
135922:  LDR             R1, [R0]; `vtable for'Button ...
135924:  LDR             R0, [R4,#0x68]
135926:  ADDS            R1, #8
135928:  STR             R1, [R4]
13592A:  ADD.W           R1, R4, #0x58 ; 'X'
13592E:  CMP             R1, R0
135930:  BEQ             loc_135938
135932:  CBZ             R0, loc_135942
135934:  MOVS            R1, #5
135936:  B               loc_13593A
135938:  MOVS            R1, #4
13593A:  LDR             R2, [R0]
13593C:  LDR.W           R1, [R2,R1,LSL#2]
135940:  BLX             R1
135942:  MOV             R0, R4
135944:  POP.W           {R4,R6,R7,LR}
135948:  B.W             sub_12BCE4
