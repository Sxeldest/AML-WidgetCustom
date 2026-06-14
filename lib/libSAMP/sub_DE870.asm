; =========================================================
; Game Engine Function: sub_DE870
; Address            : 0xDE870 - 0xDE97A
; =========================================================

DE870:  PUSH            {R4-R7,LR}
DE872:  ADD             R7, SP, #0xC
DE874:  PUSH.W          {R8-R10}
DE878:  MOV             R5, R0
DE87A:  LDRD.W          R0, R2, [R1,#8]
DE87E:  MOV             R4, R1
DE880:  CMP.W           R5, #0xFFFFFFFF
DE884:  ADD.W           R1, R0, #1
DE888:  BLE             loc_DE8A2
DE88A:  CMP             R2, R1
DE88C:  BCS             loc_DE89A
DE88E:  LDR             R0, [R4]
DE890:  LDR             R2, [R0]
DE892:  MOV             R0, R4
DE894:  BLX             R2
DE896:  LDR             R0, [R4,#8]
DE898:  ADDS            R1, R0, #1
DE89A:  LDR             R2, [R4,#4]
DE89C:  STR             R1, [R4,#8]
DE89E:  MOVS            R1, #0x2B ; '+'
DE8A0:  B               loc_DE8BA
DE8A2:  CMP             R2, R1
DE8A4:  BCS             loc_DE8B2
DE8A6:  LDR             R0, [R4]
DE8A8:  LDR             R2, [R0]
DE8AA:  MOV             R0, R4
DE8AC:  BLX             R2
DE8AE:  LDR             R0, [R4,#8]
DE8B0:  ADDS            R1, R0, #1
DE8B2:  LDR             R2, [R4,#4]
DE8B4:  NEGS            R5, R5
DE8B6:  STR             R1, [R4,#8]
DE8B8:  MOVS            R1, #0x2D ; '-'
DE8BA:  STRB            R1, [R2,R0]
DE8BC:  LDR             R3, =(a00010203040506 - 0xDE8C4); "000102030405060708091011121314151617181"... ...
DE8BE:  CMP             R5, #0x64 ; 'd'
DE8C0:  ADD             R3, PC; "000102030405060708091011121314151617181"...
DE8C2:  BCC             loc_DE930
DE8C4:  MOVW            R0, #0x851F
DE8C8:  CMP.W           R5, #0x3E8
DE8CC:  MOVT            R0, #0x51EB
DE8D0:  UMULL.W         R0, R1, R5, R0
DE8D4:  MOV.W           R8, R1,LSR#5
DE8D8:  ADD.W           R9, R3, R8,LSL#1
DE8DC:  BCC             loc_DE904
DE8DE:  LDRD.W          R0, R2, [R4,#8]
DE8E2:  LDRB.W          R10, [R9]
DE8E6:  ADDS            R1, R0, #1
DE8E8:  CMP             R2, R1
DE8EA:  BCS             loc_DE8FC
DE8EC:  LDR             R0, [R4]
DE8EE:  MOV             R6, R3
DE8F0:  LDR             R2, [R0]
DE8F2:  MOV             R0, R4
DE8F4:  BLX             R2
DE8F6:  LDR             R0, [R4,#8]
DE8F8:  MOV             R3, R6
DE8FA:  ADDS            R1, R0, #1
DE8FC:  LDR             R2, [R4,#4]
DE8FE:  STR             R1, [R4,#8]
DE900:  STRB.W          R10, [R2,R0]
DE904:  LDRD.W          R0, R2, [R4,#8]
DE908:  LDRB.W          R9, [R9,#1]
DE90C:  ADDS            R1, R0, #1
DE90E:  CMP             R2, R1
DE910:  BCS             loc_DE922
DE912:  LDR             R0, [R4]
DE914:  MOV             R6, R3
DE916:  LDR             R2, [R0]
DE918:  MOV             R0, R4
DE91A:  BLX             R2
DE91C:  LDR             R0, [R4,#8]
DE91E:  MOV             R3, R6
DE920:  ADDS            R1, R0, #1
DE922:  MOVS            R2, #0x64 ; 'd'
DE924:  STR             R1, [R4,#8]
DE926:  MLS.W           R5, R8, R2, R5
DE92A:  LDR             R2, [R4,#4]
DE92C:  STRB.W          R9, [R2,R0]
DE930:  LDRD.W          R0, R2, [R4,#8]
DE934:  ADD.W           R6, R3, R5,LSL#1
DE938:  LDRB.W          R5, [R3,R5,LSL#1]
DE93C:  ADDS            R1, R0, #1
DE93E:  CMP             R2, R1
DE940:  BCS             loc_DE94E
DE942:  LDR             R0, [R4]
DE944:  LDR             R2, [R0]
DE946:  MOV             R0, R4
DE948:  BLX             R2
DE94A:  LDR             R0, [R4,#8]
DE94C:  ADDS            R1, R0, #1
DE94E:  LDR             R2, [R4,#4]
DE950:  STR             R1, [R4,#8]
DE952:  STRB            R5, [R2,R0]
DE954:  LDRD.W          R0, R2, [R4,#8]
DE958:  LDRB            R5, [R6,#1]
DE95A:  ADDS            R1, R0, #1
DE95C:  CMP             R2, R1
DE95E:  BCS             loc_DE96C
DE960:  LDR             R0, [R4]
DE962:  LDR             R2, [R0]
DE964:  MOV             R0, R4
DE966:  BLX             R2
DE968:  LDR             R0, [R4,#8]
DE96A:  ADDS            R1, R0, #1
DE96C:  LDR             R2, [R4,#4]
DE96E:  STR             R1, [R4,#8]
DE970:  STRB            R5, [R2,R0]
DE972:  MOV             R0, R4
DE974:  POP.W           {R8-R10}
DE978:  POP             {R4-R7,PC}
