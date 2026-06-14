; =========================================================
; Game Engine Function: sub_221858
; Address            : 0x221858 - 0x221D60
; =========================================================

221858:  PUSH            {R4-R11,LR}
22185C:  ADD             R11, SP, #0x1C
221860:  SUB             SP, SP, #0xC
221864:  MOV             R4, R0
221868:  CMP             R2, R3
22186C:  STR             R3, [SP,#0x28+var_24]
221870:  BCS             loc_221D34
221874:  LDR             R6, [SP,#0x28+var_24]
221878:  MOV             R0, #0
22187C:  MOV             R10, R2
221880:  MOV             R8, R1
221884:  STR             R0, [SP,#0x28+var_28]
221888:  B               loc_2218B4
22188C:  LDR             R1, [SP,#0x28+var_20]
221890:  AND             R0, R0, #0xFC
221894:  SUB             R0, R1, R0
221898:  SUB             R2, R0, #4
22189C:  MOV             R0, R4
2218A0:  MOV             R1, #0xD
2218A4:  STR             R2, [SP,#0x28+var_20]
2218A8:  BL              sub_222CE4
2218AC:  CMP             R10, R6
2218B0:  BCS             loc_221D24; jumptable 002219F0 case 176
2218B4:  EOR             R0, R10, #3
2218B8:  MOV             R7, R10
2218BC:  ADD             R10, R10, #1
2218C0:  LDRB            R9, [R8,R0]
2218C4:  TST             R9, #0x80
2218C8:  BNE             loc_2218F8
2218CC:  ADD             R2, SP, #0x28+var_20
2218D0:  MOV             R0, R4
2218D4:  MOV             R1, #0xD
2218D8:  BL              sub_222C8C
2218DC:  MOV             R0, R9,LSL#2
2218E0:  TST             R9, #0x40
2218E4:  BNE             loc_22188C
2218E8:  LDR             R1, [SP,#0x28+var_20]
2218EC:  ADD             R0, R0, R1
2218F0:  ADD             R2, R0, #4
2218F4:  B               loc_22189C
2218F8:  AND             R0, R9, #0xF0
2218FC:  SUB             R0, R0, #0x80
221900:  MOV             R1, R0,LSR#4
221904:  MOV             R0, #9
221908:  CMP             R1, #5; switch 6 cases
22190C:  BHI             def_221918; jumptable 00221918 default case
221910:  ADR             R2, jpt_221918
221914:  LDR             R1, [R2,R1,LSL#2]
221918:  ADD             PC, R2, R1; switch jump
22191C:  DCD loc_221934 - 0x22191C; jump table for switch statement
221920:  DCD loc_221980 - 0x22191C; jumptable 00221918 case 1
221924:  DCD loc_2219B0 - 0x22191C; jumptable 00221918 case 2
221928:  DCD loc_2219DC - 0x22191C; jumptable 00221918 case 3
22192C:  DCD loc_221A48 - 0x22191C; jumptable 00221918 case 4
221930:  DCD loc_221AEC - 0x22191C; jumptable 00221918 case 5
221934:  CMP             R10, R6; jumptable 00221918 case 0
221938:  BCS             def_221918; jumptable 00221918 default case
22193C:  EOR             R1, R10, #3
221940:  MOV             R2, R9,LSL#12
221944:  UXTH            R2, R2
221948:  LDRB            R1, [R8,R1]
22194C:  ORR             R2, R2, R1,LSL#4
221950:  CMP             R2, #0
221954:  BEQ             def_221918; jumptable 00221918 default case
221958:  MOV             R0, R4
22195C:  MOV             R1, #0
221960:  MOV             R3, #0
221964:  BL              sub_221F94
221968:  AND             R0, R9, #8
22196C:  LDR             R1, [SP,#0x28+var_28]
221970:  ADD             R10, R7, #2
221974:  ORR             R1, R1, R0,LSR#3
221978:  STR             R1, [SP,#0x28+var_28]
22197C:  B               loc_221CF4
221980:  AND             R1, R9, #0xD; jumptable 00221918 case 1
221984:  CMP             R1, #0xD
221988:  BEQ             def_221918; jumptable 00221918 default case
22198C:  AND             R1, R9, #0xF
221990:  ADD             R2, SP, #0x28+var_20
221994:  MOV             R0, R4
221998:  BL              sub_222C8C
22199C:  LDR             R2, [SP,#0x28+var_20]
2219A0:  MOV             R0, R4
2219A4:  MOV             R1, #0xD
2219A8:  BL              sub_222CE4
2219AC:  B               loc_221CF4
2219B0:  AND             R0, R9, #7; jumptable 00221918 case 2
2219B4:  MOV             R1, #0x20 ; ' '
2219B8:  MOV             R2, #0xFFFFFFF0
2219BC:  MOV             R3, #0
2219C0:  ADD             R0, R2, R1,LSL R0
2219C4:  AND             R1, R9, #8
2219C8:  ORR             R2, R0, R1,LSL#11
2219CC:  MOV             R0, R4
2219D0:  MOV             R1, #0
2219D4:  BL              sub_221F94
2219D8:  B               loc_2218AC
2219DC:  SUB             R1, R9, #0xB0; jumptable 00221918 case 3
2219E0:  CMP             R1, #7
2219E4:  BHI             def_2219F0; jumptable 002219F0 default case
2219E8:  ADR             R2, jpt_2219F0
2219EC:  LDR             R1, [R2,R1,LSL#2]
2219F0:  ADD             PC, R2, R1; switch jump
2219F4:  DCD loc_221D24 - 0x2219F4; jump table for switch statement
2219F8:  DCD loc_221A14 - 0x2219F4; jumptable 002219F0 case 177
2219FC:  DCD loc_221C70 - 0x2219F4; jumptable 002219F0 case 178
221A00:  DCD loc_221CC4 - 0x2219F4; jumptable 002219F0 case 179
221A04:  DCD loc_221CFC - 0x2219F4; jumptable 002219F0 case 180
221A08:  DCD def_221918 - 0x2219F4; jumptable 00221918 default case
221A0C:  DCD def_221918 - 0x2219F4; jumptable 00221918 default case
221A10:  DCD def_221918 - 0x2219F4; jumptable 00221918 default case
221A14:  LDR             R1, [SP,#0x28+var_24]; jumptable 002219F0 case 177
221A18:  CMP             R10, R1
221A1C:  BCS             def_221918; jumptable 00221918 default case
221A20:  EOR             R1, R10, #3
221A24:  LDRB            R2, [R8,R1]
221A28:  CMP             R2, #0
221A2C:  BEQ             def_221918; jumptable 00221918 default case
221A30:  ANDS            R1, R2, #0xF0
221A34:  BNE             def_221918; jumptable 00221918 default case
221A38:  MOV             R0, R4
221A3C:  MOV             R1, #0
221A40:  MOV             R3, #0
221A44:  B               loc_221CEC
221A48:  AND             R1, R9, #0xFE; jumptable 00221918 case 4
221A4C:  CMP             R1, #0xC8
221A50:  BNE             def_221918; jumptable 00221918 default case
221A54:  EOR             R1, R10, #3
221A58:  SUB             R3, R9, #0xC8
221A5C:  CLZ             R3, R3
221A60:  LDRB            R1, [R8,R1]
221A64:  MOV             R3, R3,LSR#5
221A68:  MOV             R2, R1,LSR#4
221A6C:  ORR             R5, R2, R3,LSL#4
221A70:  AND             R1, R1, #0xF
221A74:  ADD             R6, R5, R1
221A78:  CMP             R6, #0x1F
221A7C:  BHI             def_221918; jumptable 00221918 default case
221A80:  ADD             R2, SP, #0x28+var_20
221A84:  MOV             R0, R4
221A88:  MOV             R1, #0xD
221A8C:  BL              sub_222C8C
221A90:  CMP             R0, #0
221A94:  BNE             loc_221CF0
221A98:  ADD             R6, R6, #1
221A9C:  LDR             R0, [SP,#0x28+var_20]
221AA0:  CMP             R5, #0x20 ; ' '
221AA4:  MOV             R1, R0
221AA8:  LDR             R2, [R1],#8
221AAC:  STR             R1, [SP,#0x28+var_20]
221AB0:  BEQ             loc_221CF0
221AB4:  LDR             R3, [R0,#4]
221AB8:  ADD             R1, R5, #0x100
221ABC:  MOV             R0, R4
221AC0:  BL              sub_222E24
221AC4:  CMP             R0, #0
221AC8:  BNE             loc_221CF0
221ACC:  ADD             R5, R5, #1
221AD0:  CMP             R5, R6
221AD4:  BCC             loc_221A9C
221AD8:  LDR             R2, [SP,#0x28+var_20]
221ADC:  MOV             R0, R4
221AE0:  MOV             R1, #0xD
221AE4:  BL              sub_222CE4
221AE8:  B               loc_221CF0
221AEC:  TST             R9, #8; jumptable 00221918 case 5
221AF0:  BNE             def_221918; jumptable 00221918 default case
221AF4:  ADD             R2, SP, #0x28+var_20
221AF8:  MOV             R0, R4
221AFC:  MOV             R1, #0xD
221B00:  BL              sub_222C8C
221B04:  CMP             R0, #0
221B08:  BNE             loc_221CF4
221B0C:  LDR             R0, [SP,#0x28+var_20]
221B10:  MOV             R1, #0x108
221B14:  LDM             R0!, {R2,R3}
221B18:  STR             R0, [SP,#0x28+var_20]
221B1C:  MOV             R0, R4
221B20:  BL              sub_222E24
221B24:  CMP             R0, #0
221B28:  BNE             loc_221CF4
221B2C:  ANDS            R5, R9, #7
221B30:  BEQ             loc_22199C
221B34:  LDR             R0, [SP,#0x28+var_20]
221B38:  MOVW            R1, #0x109
221B3C:  LDM             R0!, {R2,R3}
221B40:  STR             R0, [SP,#0x28+var_20]
221B44:  MOV             R0, R4
221B48:  BL              sub_222E24
221B4C:  CMP             R0, #0
221B50:  BNE             loc_221CF4
221B54:  ADD             R7, R5, #9
221B58:  CMP             R7, #0xA
221B5C:  BEQ             loc_22199C
221B60:  LDR             R0, [SP,#0x28+var_20]
221B64:  MOVW            R1, #0x10A
221B68:  LDM             R0!, {R2,R3}
221B6C:  STR             R0, [SP,#0x28+var_20]
221B70:  MOV             R0, R4
221B74:  BL              sub_222E24
221B78:  CMP             R0, #0
221B7C:  BNE             loc_221CF4
221B80:  CMP             R7, #0xB
221B84:  BEQ             loc_22199C
221B88:  LDR             R0, [SP,#0x28+var_20]
221B8C:  MOVW            R1, #0x10B
221B90:  LDM             R0!, {R2,R3}
221B94:  STR             R0, [SP,#0x28+var_20]
221B98:  MOV             R0, R4
221B9C:  BL              sub_222E24
221BA0:  CMP             R0, #0
221BA4:  BNE             loc_221CF4
221BA8:  CMP             R7, #0xC
221BAC:  BEQ             loc_22199C
221BB0:  LDR             R0, [SP,#0x28+var_20]
221BB4:  MOV             R1, #0x10C
221BB8:  LDM             R0!, {R2,R3}
221BBC:  STR             R0, [SP,#0x28+var_20]
221BC0:  MOV             R0, R4
221BC4:  BL              sub_222E24
221BC8:  CMP             R0, #0
221BCC:  BNE             loc_221CF4
221BD0:  CMP             R7, #0xD
221BD4:  BEQ             loc_22199C
221BD8:  LDR             R0, [SP,#0x28+var_20]
221BDC:  MOVW            R1, #0x10D
221BE0:  LDM             R0!, {R2,R3}
221BE4:  STR             R0, [SP,#0x28+var_20]
221BE8:  MOV             R0, R4
221BEC:  BL              sub_222E24
221BF0:  CMP             R0, #0
221BF4:  BNE             loc_221CF4
221BF8:  CMP             R7, #0xE
221BFC:  BEQ             loc_22199C
221C00:  LDR             R0, [SP,#0x28+var_20]
221C04:  MOVW            R1, #0x10E
221C08:  LDM             R0!, {R2,R3}
221C0C:  STR             R0, [SP,#0x28+var_20]
221C10:  MOV             R0, R4
221C14:  BL              sub_222E24
221C18:  CMP             R0, #0
221C1C:  BNE             loc_221CF4
221C20:  CMP             R7, #0xF
221C24:  BEQ             loc_22199C
221C28:  LDR             R0, [SP,#0x28+var_20]
221C2C:  MOVW            R1, #0x10F
221C30:  LDM             R0!, {R2,R3}
221C34:  STR             R0, [SP,#0x28+var_20]
221C38:  MOV             R0, R4
221C3C:  BL              sub_222E24
221C40:  CMP             R0, #0
221C44:  BNE             loc_221CF4
221C48:  B               loc_22199C
221C4C:  MOVW            R1, #:lower16:unk_80001; jumptable 002219F0 default case
221C50:  AND             R0, R9, #7
221C54:  MOVT            R1, #:upper16:unk_80001
221C58:  ADD             R2, R0, R1
221C5C:  MOV             R0, R4
221C60:  MOV             R1, #1
221C64:  MOV             R3, #1
221C68:  BL              sub_221F94
221C6C:  B               loc_2218AC
221C70:  LDR             R6, [SP,#0x28+var_24]; jumptable 002219F0 case 178
221C74:  MOV             R5, #0
221C78:  MOV             R1, #0
221C7C:  CMP             R10, R6
221C80:  BCS             def_221918; jumptable 00221918 default case
221C84:  EOR             R2, R10, #3
221C88:  ADD             R10, R10, #1
221C8C:  LDRB            R2, [R8,R2]
221C90:  AND             R3, R2, #0x7F
221C94:  TST             R2, #0x80
221C98:  ORR             R5, R5, R3,LSL R1
221C9C:  ADD             R1, R1, #7
221CA0:  BNE             loc_221C7C
221CA4:  ADD             R2, SP, #0x28+var_20
221CA8:  MOV             R0, R4
221CAC:  MOV             R1, #0xD
221CB0:  BL              sub_222C8C
221CB4:  LDR             R0, [SP,#0x28+var_20]
221CB8:  ADD             R0, R0, R5,LSL#2
221CBC:  ADD             R2, R0, #0x204
221CC0:  B               loc_22189C
221CC4:  EOR             R0, R10, #3; jumptable 002219F0 case 179
221CC8:  MOV             R1, #0xF000F
221CD0:  MOV             R3, #1
221CD4:  LDRB            R0, [R8,R0]
221CD8:  ORR             R0, R0, R0,LSL#12
221CDC:  AND             R0, R0, R1
221CE0:  MOV             R1, #1
221CE4:  ADD             R2, R0, #1
221CE8:  MOV             R0, R4
221CEC:  BL              sub_221F94
221CF0:  ADD             R10, R7, #2
221CF4:  LDR             R6, [SP,#0x28+var_24]
221CF8:  B               loc_2218AC
221CFC:  ADD             R2, SP, #0x28+var_20; jumptable 002219F0 case 180
221D00:  MOV             R0, R4
221D04:  MOV             R1, #0xD
221D08:  BL              sub_222C8C
221D0C:  CMP             R0, #0
221D10:  BNE             loc_221CF4
221D14:  LDR             R0, [SP,#0x28+var_20]
221D18:  ADD             R2, R0, #4
221D1C:  STR             R2, [SP,#0x28+var_20]
221D20:  B               loc_2219A0
221D24:  LDR             R1, [SP,#0x28+var_28]; jumptable 002219F0 case 176
221D28:  MOV             R0, #8
221D2C:  TST             R1, #1
221D30:  BNE             def_221918; jumptable 00221918 default case
221D34:  ADD             R2, SP, #0x28+var_20
221D38:  MOV             R0, R4
221D3C:  MOV             R1, #0xE
221D40:  BL              sub_222C8C
221D44:  LDR             R2, [SP,#0x28+var_20]
221D48:  MOV             R0, R4
221D4C:  MOV             R1, #0xF
221D50:  BL              sub_222CE4
221D54:  MOV             R0, #8
221D58:  SUB             SP, R11, #0x1C; jumptable 00221918 default case
221D5C:  POP             {R4-R11,PC}
