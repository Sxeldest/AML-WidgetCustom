; =========================================================
; Game Engine Function: sub_109748
; Address            : 0x109748 - 0x109C50
; =========================================================

109748:  PUSH            {R4-R11,LR}
10974C:  ADD             R11, SP, #0x1C
109750:  SUB             SP, SP, #0xC
109754:  MOV             R4, R0
109758:  CMP             R2, R3
10975C:  STR             R3, [SP,#0x28+var_24]
109760:  BCS             loc_109C24
109764:  LDR             R6, [SP,#0x28+var_24]
109768:  MOV             R0, #0
10976C:  MOV             R10, R2
109770:  MOV             R8, R1
109774:  STR             R0, [SP,#0x28+var_28]
109778:  B               loc_1097A4
10977C:  LDR             R1, [SP,#0x28+var_20]
109780:  AND             R0, R0, #0xFC
109784:  SUB             R0, R1, R0
109788:  SUB             R2, R0, #4
10978C:  MOV             R0, R4
109790:  MOV             R1, #0xD
109794:  STR             R2, [SP,#0x28+var_20]
109798:  BL              sub_10ABD4
10979C:  CMP             R10, R6
1097A0:  BCS             loc_109C14; jumptable 001098E0 case 176
1097A4:  EOR             R0, R10, #3
1097A8:  MOV             R7, R10
1097AC:  ADD             R10, R10, #1
1097B0:  LDRB            R9, [R8,R0]
1097B4:  TST             R9, #0x80
1097B8:  BNE             loc_1097E8
1097BC:  ADD             R2, SP, #0x28+var_20
1097C0:  MOV             R0, R4
1097C4:  MOV             R1, #0xD
1097C8:  BL              sub_10AB7C
1097CC:  MOV             R0, R9,LSL#2
1097D0:  TST             R9, #0x40
1097D4:  BNE             loc_10977C
1097D8:  LDR             R1, [SP,#0x28+var_20]
1097DC:  ADD             R0, R0, R1
1097E0:  ADD             R2, R0, #4
1097E4:  B               loc_10978C
1097E8:  AND             R0, R9, #0xF0
1097EC:  SUB             R0, R0, #0x80
1097F0:  MOV             R1, R0,LSR#4
1097F4:  MOV             R0, #9
1097F8:  CMP             R1, #5; switch 6 cases
1097FC:  BHI             def_109808; jumptable 00109808 default case
109800:  ADR             R2, jpt_109808
109804:  LDR             R1, [R2,R1,LSL#2]
109808:  ADD             PC, R2, R1; switch jump
10980C:  DCD loc_109824 - 0x10980C; jump table for switch statement
109810:  DCD loc_109870 - 0x10980C; jumptable 00109808 case 1
109814:  DCD loc_1098A0 - 0x10980C; jumptable 00109808 case 2
109818:  DCD loc_1098CC - 0x10980C; jumptable 00109808 case 3
10981C:  DCD loc_109938 - 0x10980C; jumptable 00109808 case 4
109820:  DCD loc_1099DC - 0x10980C; jumptable 00109808 case 5
109824:  CMP             R10, R6; jumptable 00109808 case 0
109828:  BCS             def_109808; jumptable 00109808 default case
10982C:  EOR             R1, R10, #3
109830:  MOV             R2, R9,LSL#12
109834:  UXTH            R2, R2
109838:  LDRB            R1, [R8,R1]
10983C:  ORR             R2, R2, R1,LSL#4
109840:  CMP             R2, #0
109844:  BEQ             def_109808; jumptable 00109808 default case
109848:  MOV             R0, R4
10984C:  MOV             R1, #0
109850:  MOV             R3, #0
109854:  BL              sub_109E84
109858:  AND             R0, R9, #8
10985C:  LDR             R1, [SP,#0x28+var_28]
109860:  ADD             R10, R7, #2
109864:  ORR             R1, R1, R0,LSR#3
109868:  STR             R1, [SP,#0x28+var_28]
10986C:  B               loc_109BE4
109870:  AND             R1, R9, #0xD; jumptable 00109808 case 1
109874:  CMP             R1, #0xD
109878:  BEQ             def_109808; jumptable 00109808 default case
10987C:  AND             R1, R9, #0xF
109880:  ADD             R2, SP, #0x28+var_20
109884:  MOV             R0, R4
109888:  BL              sub_10AB7C
10988C:  LDR             R2, [SP,#0x28+var_20]
109890:  MOV             R0, R4
109894:  MOV             R1, #0xD
109898:  BL              sub_10ABD4
10989C:  B               loc_109BE4
1098A0:  AND             R0, R9, #7; jumptable 00109808 case 2
1098A4:  MOV             R1, #0x20 ; ' '
1098A8:  MOV             R2, #0xFFFFFFF0
1098AC:  MOV             R3, #0
1098B0:  ADD             R0, R2, R1,LSL R0
1098B4:  AND             R1, R9, #8
1098B8:  ORR             R2, R0, R1,LSL#11
1098BC:  MOV             R0, R4
1098C0:  MOV             R1, #0
1098C4:  BL              sub_109E84
1098C8:  B               loc_10979C
1098CC:  SUB             R1, R9, #0xB0; jumptable 00109808 case 3
1098D0:  CMP             R1, #7
1098D4:  BHI             def_1098E0; jumptable 001098E0 default case
1098D8:  ADR             R2, jpt_1098E0
1098DC:  LDR             R1, [R2,R1,LSL#2]
1098E0:  ADD             PC, R2, R1; switch jump
1098E4:  DCD loc_109C14 - 0x1098E4; jump table for switch statement
1098E8:  DCD loc_109904 - 0x1098E4; jumptable 001098E0 case 177
1098EC:  DCD loc_109B60 - 0x1098E4; jumptable 001098E0 case 178
1098F0:  DCD loc_109BB4 - 0x1098E4; jumptable 001098E0 case 179
1098F4:  DCD loc_109BEC - 0x1098E4; jumptable 001098E0 case 180
1098F8:  DCD def_109808 - 0x1098E4; jumptable 00109808 default case
1098FC:  DCD def_109808 - 0x1098E4; jumptable 00109808 default case
109900:  DCD def_109808 - 0x1098E4; jumptable 00109808 default case
109904:  LDR             R1, [SP,#0x28+var_24]; jumptable 001098E0 case 177
109908:  CMP             R10, R1
10990C:  BCS             def_109808; jumptable 00109808 default case
109910:  EOR             R1, R10, #3
109914:  LDRB            R2, [R8,R1]
109918:  CMP             R2, #0
10991C:  BEQ             def_109808; jumptable 00109808 default case
109920:  ANDS            R1, R2, #0xF0
109924:  BNE             def_109808; jumptable 00109808 default case
109928:  MOV             R0, R4
10992C:  MOV             R1, #0
109930:  MOV             R3, #0
109934:  B               loc_109BDC
109938:  AND             R1, R9, #0xFE; jumptable 00109808 case 4
10993C:  CMP             R1, #0xC8
109940:  BNE             def_109808; jumptable 00109808 default case
109944:  EOR             R1, R10, #3
109948:  SUB             R3, R9, #0xC8
10994C:  CLZ             R3, R3
109950:  LDRB            R1, [R8,R1]
109954:  MOV             R3, R3,LSR#5
109958:  MOV             R2, R1,LSR#4
10995C:  ORR             R5, R2, R3,LSL#4
109960:  AND             R1, R1, #0xF
109964:  ADD             R6, R5, R1
109968:  CMP             R6, #0x1F
10996C:  BHI             def_109808; jumptable 00109808 default case
109970:  ADD             R2, SP, #0x28+var_20
109974:  MOV             R0, R4
109978:  MOV             R1, #0xD
10997C:  BL              sub_10AB7C
109980:  CMP             R0, #0
109984:  BNE             loc_109BE0
109988:  ADD             R6, R6, #1
10998C:  LDR             R0, [SP,#0x28+var_20]
109990:  CMP             R5, #0x20 ; ' '
109994:  MOV             R1, R0
109998:  LDR             R2, [R1],#8
10999C:  STR             R1, [SP,#0x28+var_20]
1099A0:  BEQ             loc_109BE0
1099A4:  LDR             R3, [R0,#4]
1099A8:  ADD             R1, R5, #0x100
1099AC:  MOV             R0, R4
1099B0:  BL              sub_10AD14
1099B4:  CMP             R0, #0
1099B8:  BNE             loc_109BE0
1099BC:  ADD             R5, R5, #1
1099C0:  CMP             R5, R6
1099C4:  BCC             loc_10998C
1099C8:  LDR             R2, [SP,#0x28+var_20]
1099CC:  MOV             R0, R4
1099D0:  MOV             R1, #0xD
1099D4:  BL              sub_10ABD4
1099D8:  B               loc_109BE0
1099DC:  TST             R9, #8; jumptable 00109808 case 5
1099E0:  BNE             def_109808; jumptable 00109808 default case
1099E4:  ADD             R2, SP, #0x28+var_20
1099E8:  MOV             R0, R4
1099EC:  MOV             R1, #0xD
1099F0:  BL              sub_10AB7C
1099F4:  CMP             R0, #0
1099F8:  BNE             loc_109BE4
1099FC:  LDR             R0, [SP,#0x28+var_20]
109A00:  MOV             R1, #0x108
109A04:  LDM             R0!, {R2,R3}
109A08:  STR             R0, [SP,#0x28+var_20]
109A0C:  MOV             R0, R4
109A10:  BL              sub_10AD14
109A14:  CMP             R0, #0
109A18:  BNE             loc_109BE4
109A1C:  ANDS            R5, R9, #7
109A20:  BEQ             loc_10988C
109A24:  LDR             R0, [SP,#0x28+var_20]
109A28:  MOVW            R1, #0x109
109A2C:  LDM             R0!, {R2,R3}
109A30:  STR             R0, [SP,#0x28+var_20]
109A34:  MOV             R0, R4
109A38:  BL              sub_10AD14
109A3C:  CMP             R0, #0
109A40:  BNE             loc_109BE4
109A44:  ADD             R7, R5, #9
109A48:  CMP             R7, #0xA
109A4C:  BEQ             loc_10988C
109A50:  LDR             R0, [SP,#0x28+var_20]
109A54:  MOVW            R1, #0x10A
109A58:  LDM             R0!, {R2,R3}
109A5C:  STR             R0, [SP,#0x28+var_20]
109A60:  MOV             R0, R4
109A64:  BL              sub_10AD14
109A68:  CMP             R0, #0
109A6C:  BNE             loc_109BE4
109A70:  CMP             R7, #0xB
109A74:  BEQ             loc_10988C
109A78:  LDR             R0, [SP,#0x28+var_20]
109A7C:  MOVW            R1, #0x10B
109A80:  LDM             R0!, {R2,R3}
109A84:  STR             R0, [SP,#0x28+var_20]
109A88:  MOV             R0, R4
109A8C:  BL              sub_10AD14
109A90:  CMP             R0, #0
109A94:  BNE             loc_109BE4
109A98:  CMP             R7, #0xC
109A9C:  BEQ             loc_10988C
109AA0:  LDR             R0, [SP,#0x28+var_20]
109AA4:  MOV             R1, #0x10C
109AA8:  LDM             R0!, {R2,R3}
109AAC:  STR             R0, [SP,#0x28+var_20]
109AB0:  MOV             R0, R4
109AB4:  BL              sub_10AD14
109AB8:  CMP             R0, #0
109ABC:  BNE             loc_109BE4
109AC0:  CMP             R7, #0xD
109AC4:  BEQ             loc_10988C
109AC8:  LDR             R0, [SP,#0x28+var_20]
109ACC:  MOVW            R1, #0x10D
109AD0:  LDM             R0!, {R2,R3}
109AD4:  STR             R0, [SP,#0x28+var_20]
109AD8:  MOV             R0, R4
109ADC:  BL              sub_10AD14
109AE0:  CMP             R0, #0
109AE4:  BNE             loc_109BE4
109AE8:  CMP             R7, #0xE
109AEC:  BEQ             loc_10988C
109AF0:  LDR             R0, [SP,#0x28+var_20]
109AF4:  MOVW            R1, #0x10E
109AF8:  LDM             R0!, {R2,R3}
109AFC:  STR             R0, [SP,#0x28+var_20]
109B00:  MOV             R0, R4
109B04:  BL              sub_10AD14
109B08:  CMP             R0, #0
109B0C:  BNE             loc_109BE4
109B10:  CMP             R7, #0xF
109B14:  BEQ             loc_10988C
109B18:  LDR             R0, [SP,#0x28+var_20]
109B1C:  MOVW            R1, #0x10F
109B20:  LDM             R0!, {R2,R3}
109B24:  STR             R0, [SP,#0x28+var_20]
109B28:  MOV             R0, R4
109B2C:  BL              sub_10AD14
109B30:  CMP             R0, #0
109B34:  BNE             loc_109BE4
109B38:  B               loc_10988C
109B3C:  MOVW            R1, #:lower16:(off_80000+1); jumptable 001098E0 default case
109B40:  AND             R0, R9, #7
109B44:  MOVT            R1, #:upper16:(off_80000+1)
109B48:  ADD             R2, R0, R1
109B4C:  MOV             R0, R4
109B50:  MOV             R1, #1
109B54:  MOV             R3, #1
109B58:  BL              sub_109E84
109B5C:  B               loc_10979C
109B60:  LDR             R6, [SP,#0x28+var_24]; jumptable 001098E0 case 178
109B64:  MOV             R5, #0
109B68:  MOV             R1, #0
109B6C:  CMP             R10, R6
109B70:  BCS             def_109808; jumptable 00109808 default case
109B74:  EOR             R2, R10, #3
109B78:  ADD             R10, R10, #1
109B7C:  LDRB            R2, [R8,R2]
109B80:  AND             R3, R2, #0x7F
109B84:  TST             R2, #0x80
109B88:  ORR             R5, R5, R3,LSL R1
109B8C:  ADD             R1, R1, #7
109B90:  BNE             loc_109B6C
109B94:  ADD             R2, SP, #0x28+var_20
109B98:  MOV             R0, R4
109B9C:  MOV             R1, #0xD
109BA0:  BL              sub_10AB7C
109BA4:  LDR             R0, [SP,#0x28+var_20]
109BA8:  ADD             R0, R0, R5,LSL#2
109BAC:  ADD             R2, R0, #0x204
109BB0:  B               loc_10978C
109BB4:  EOR             R0, R10, #3; jumptable 001098E0 case 179
109BB8:  MOV             R1, #0xF000F
109BC0:  MOV             R3, #1
109BC4:  LDRB            R0, [R8,R0]
109BC8:  ORR             R0, R0, R0,LSL#12
109BCC:  AND             R0, R0, R1
109BD0:  MOV             R1, #1
109BD4:  ADD             R2, R0, #1
109BD8:  MOV             R0, R4
109BDC:  BL              sub_109E84
109BE0:  ADD             R10, R7, #2
109BE4:  LDR             R6, [SP,#0x28+var_24]
109BE8:  B               loc_10979C
109BEC:  ADD             R2, SP, #0x28+var_20; jumptable 001098E0 case 180
109BF0:  MOV             R0, R4
109BF4:  MOV             R1, #0xD
109BF8:  BL              sub_10AB7C
109BFC:  CMP             R0, #0
109C00:  BNE             loc_109BE4
109C04:  LDR             R0, [SP,#0x28+var_20]
109C08:  ADD             R2, R0, #4
109C0C:  STR             R2, [SP,#0x28+var_20]
109C10:  B               loc_109890
109C14:  LDR             R1, [SP,#0x28+var_28]; jumptable 001098E0 case 176
109C18:  MOV             R0, #8
109C1C:  TST             R1, #1
109C20:  BNE             def_109808; jumptable 00109808 default case
109C24:  ADD             R2, SP, #0x28+var_20
109C28:  MOV             R0, R4
109C2C:  MOV             R1, #0xE
109C30:  BL              sub_10AB7C
109C34:  LDR             R2, [SP,#0x28+var_20]
109C38:  MOV             R0, R4
109C3C:  MOV             R1, #0xF
109C40:  BL              sub_10ABD4
109C44:  MOV             R0, #8
109C48:  SUB             SP, R11, #0x1C; jumptable 00109808 default case
109C4C:  POP             {R4-R11,PC}
