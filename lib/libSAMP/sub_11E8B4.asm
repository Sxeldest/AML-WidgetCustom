; =========================================================
; Game Engine Function: sub_11E8B4
; Address            : 0x11E8B4 - 0x11EB30
; =========================================================

11E8B4:  PUSH            {R4-R7,LR}
11E8B6:  ADD             R7, SP, #0xC
11E8B8:  PUSH.W          {R8-R11}
11E8BC:  SUB             SP, SP, #0x84
11E8BE:  MOV             R8, R0
11E8C0:  LDR             R0, =(off_23494C - 0x11E8CC)
11E8C2:  LDR             R1, =(sub_11EBDC+1 - 0x11E8D0)
11E8C4:  ADD.W           R9, SP, #0xA0+var_68
11E8C8:  ADD             R0, PC; off_23494C
11E8CA:  MOV             R11, R8
11E8CC:  ADD             R1, PC; sub_11EBDC
11E8CE:  MOV             R3, R8
11E8D0:  LDR             R4, [R0]; dword_23DF24
11E8D2:  MOVS            R0, #0
11E8D4:  STR.W           R0, [R11,#4]!
11E8D8:  LDR             R2, [R4]
11E8DA:  STR             R2, [SP,#0xA0+var_9C]
11E8DC:  MOV             R2, R8
11E8DE:  STR.W           R0, [R2,#8]!
11E8E2:  STR.W           R0, [R8]
11E8E6:  MOV             R0, R9
11E8E8:  STR             R2, [SP,#0xA0+var_A0]
11E8EA:  MOVS            R2, #0
11E8EC:  BL              sub_11EC54
11E8F0:  ADD             R5, SP, #0xA0+var_50
11E8F2:  MOV             R1, R9
11E8F4:  MOV             R0, R5
11E8F6:  BL              sub_10CD74
11E8FA:  BL              sub_11F054
11E8FE:  LDR             R0, =(unk_263848 - 0x11E904)
11E900:  ADD             R0, PC; unk_263848
11E902:  LDR.W           R10, [R0,#(dword_263858 - 0x263848)]
11E906:  CMP.W           R10, #0
11E90A:  BNE             loc_11E93C
11E90C:  ADD             R6, SP, #0xA0+var_50
11E90E:  ADD             R0, SP, #0xA0+var_38
11E910:  MOV             R1, R6
11E912:  BL              sub_10CD74
11E916:  BL              sub_11F054
11E91A:  LDR             R0, =(unk_263848 - 0x11E920)
11E91C:  ADD             R0, PC; unk_263848
11E91E:  ADD             R6, SP, #0xA0+var_38
11E920:  MOV             R1, R6
11E922:  BL              sub_10CDA0
11E926:  LDR             R0, [SP,#0xA0+var_28]
11E928:  CMP             R6, R0
11E92A:  BEQ             loc_11E932
11E92C:  CBZ             R0, loc_11E93C
11E92E:  MOVS            R1, #5
11E930:  B               loc_11E934
11E932:  MOVS            R1, #4
11E934:  LDR             R2, [R0]
11E936:  LDR.W           R1, [R2,R1,LSL#2]
11E93A:  BLX             R1
11E93C:  LDR             R0, [SP,#0xA0+var_40]
11E93E:  CMP             R5, R0
11E940:  BEQ             loc_11E948
11E942:  CBZ             R0, loc_11E952
11E944:  MOVS            R1, #5
11E946:  B               loc_11E94A
11E948:  MOVS            R1, #4
11E94A:  LDR             R2, [R0]
11E94C:  LDR.W           R1, [R2,R1,LSL#2]
11E950:  BLX             R1
11E952:  CMP.W           R10, #0
11E956:  BNE             loc_11E96C
11E958:  LDR             R0, [SP,#0xA0+var_9C]
11E95A:  LDR             R1, =(sub_11F030+1 - 0x11E968)
11E95C:  ADD.W           R0, R0, #0x670000
11E960:  ADD.W           R0, R0, #0x2F00
11E964:  ADD             R1, PC; sub_11F030
11E966:  MOV             R2, R8
11E968:  BL              sub_164196
11E96C:  LDR             R0, [SP,#0xA0+var_58]
11E96E:  CMP             R9, R0
11E970:  BEQ             loc_11E978
11E972:  CBZ             R0, loc_11E982
11E974:  MOVS            R1, #5
11E976:  B               loc_11E97A
11E978:  MOVS            R1, #4
11E97A:  LDR             R2, [R0]
11E97C:  LDR.W           R1, [R2,R1,LSL#2]
11E980:  BLX             R1
11E982:  LDR             R0, [R4]
11E984:  ADD.W           R9, SP, #0xA0+var_80
11E988:  STR             R0, [SP,#0xA0+var_9C]
11E98A:  MOVS            R2, #0
11E98C:  LDR             R1, =(sub_11EC90+1 - 0x11E996)
11E98E:  MOV             R0, R9
11E990:  MOV             R3, R8
11E992:  ADD             R1, PC; sub_11EC90
11E994:  BL              sub_11ED20
11E998:  ADD             R5, SP, #0xA0+var_50
11E99A:  MOV             R1, R9
11E99C:  MOV             R0, R5
11E99E:  BL              sub_11F200
11E9A2:  BL              sub_11F1A8
11E9A6:  LDR             R0, =(unk_263868 - 0x11E9AC)
11E9A8:  ADD             R0, PC; unk_263868
11E9AA:  LDR.W           R10, [R0,#(dword_263878 - 0x263868)]
11E9AE:  CMP.W           R10, #0
11E9B2:  BNE             loc_11E9E4
11E9B4:  ADD             R6, SP, #0xA0+var_50
11E9B6:  ADD             R0, SP, #0xA0+var_38
11E9B8:  MOV             R1, R6
11E9BA:  BL              sub_11F200
11E9BE:  BL              sub_11F1A8
11E9C2:  LDR             R0, =(unk_263868 - 0x11E9C8)
11E9C4:  ADD             R0, PC; unk_263868
11E9C6:  ADD             R6, SP, #0xA0+var_38
11E9C8:  MOV             R1, R6
11E9CA:  BL              sub_11F22C
11E9CE:  LDR             R0, [SP,#0xA0+var_28]
11E9D0:  CMP             R6, R0
11E9D2:  BEQ             loc_11E9DA
11E9D4:  CBZ             R0, loc_11E9E4
11E9D6:  MOVS            R1, #5
11E9D8:  B               loc_11E9DC
11E9DA:  MOVS            R1, #4
11E9DC:  LDR             R2, [R0]
11E9DE:  LDR.W           R1, [R2,R1,LSL#2]
11E9E2:  BLX             R1
11E9E4:  LDR             R0, [SP,#0xA0+var_40]
11E9E6:  CMP             R5, R0
11E9E8:  BEQ             loc_11E9F0
11E9EA:  CBZ             R0, loc_11E9FA
11E9EC:  MOVS            R1, #5
11E9EE:  B               loc_11E9F2
11E9F0:  MOVS            R1, #4
11E9F2:  LDR             R2, [R0]
11E9F4:  LDR.W           R1, [R2,R1,LSL#2]
11E9F8:  BLX             R1
11E9FA:  CMP.W           R10, #0
11E9FE:  BNE             loc_11EA16
11EA00:  MOVW            R0, #0xE7B0
11EA04:  LDR             R1, [SP,#0xA0+var_9C]
11EA06:  MOVT            R0, #0x66 ; 'f'
11EA0A:  ADD             R0, R1
11EA0C:  LDR             R1, =(sub_11F17C+1 - 0x11EA12)
11EA0E:  ADD             R1, PC; sub_11F17C
11EA10:  MOV             R2, R11
11EA12:  BL              sub_164196
11EA16:  LDR             R0, [SP,#0xA0+var_70]
11EA18:  CMP             R9, R0
11EA1A:  BEQ             loc_11EA22
11EA1C:  CBZ             R0, loc_11EA2C
11EA1E:  MOVS            R1, #5
11EA20:  B               loc_11EA24
11EA22:  MOVS            R1, #4
11EA24:  LDR             R2, [R0]
11EA26:  LDR.W           R1, [R2,R1,LSL#2]
11EA2A:  BLX             R1
11EA2C:  LDR.W           R11, [R4]
11EA30:  ADD.W           R10, SP, #0xA0+var_98
11EA34:  LDR             R1, =(sub_11ED5C+1 - 0x11EA40)
11EA36:  MOVS            R2, #0
11EA38:  MOV             R0, R10
11EA3A:  MOV             R3, R8
11EA3C:  ADD             R1, PC; sub_11ED5C
11EA3E:  BL              sub_11EC54
11EA42:  ADD             R6, SP, #0xA0+var_50
11EA44:  MOV             R1, R10
11EA46:  MOV             R0, R6
11EA48:  BL              sub_10CD74
11EA4C:  BL              sub_11F418
11EA50:  LDR             R0, =(unk_263888 - 0x11EA56)
11EA52:  ADD             R0, PC; unk_263888
11EA54:  LDR             R4, [R0,#(dword_263898 - 0x263888)]
11EA56:  CBNZ            R4, loc_11EA8A
11EA58:  ADD.W           R9, SP, #0xA0+var_50
11EA5C:  ADD             R0, SP, #0xA0+var_38
11EA5E:  MOV             R1, R9
11EA60:  BL              sub_10CD74
11EA64:  BL              sub_11F418
11EA68:  LDR             R0, =(unk_263888 - 0x11EA6E)
11EA6A:  ADD             R0, PC; unk_263888
11EA6C:  ADD             R5, SP, #0xA0+var_38
11EA6E:  MOV             R1, R5
11EA70:  BL              sub_10CDA0
11EA74:  LDR             R0, [SP,#0xA0+var_28]
11EA76:  CMP             R5, R0
11EA78:  BEQ             loc_11EA80
11EA7A:  CBZ             R0, loc_11EA8A
11EA7C:  MOVS            R1, #5
11EA7E:  B               loc_11EA82
11EA80:  MOVS            R1, #4
11EA82:  LDR             R2, [R0]
11EA84:  LDR.W           R1, [R2,R1,LSL#2]
11EA88:  BLX             R1
11EA8A:  LDR             R0, [SP,#0xA0+var_40]
11EA8C:  CMP             R6, R0
11EA8E:  BEQ             loc_11EA96
11EA90:  CBZ             R0, loc_11EAA0
11EA92:  MOVS            R1, #5
11EA94:  B               loc_11EA98
11EA96:  MOVS            R1, #4
11EA98:  LDR             R2, [R0]
11EA9A:  LDR.W           R1, [R2,R1,LSL#2]
11EA9E:  BLX             R1
11EAA0:  CBNZ            R4, loc_11EAB6
11EAA2:  MOVW            R0, #0x4FDC
11EAA6:  LDR             R1, =(sub_11F3F4+1 - 0x11EAB2)
11EAA8:  MOVT            R0, #0x67 ; 'g'
11EAAC:  ADD             R0, R11
11EAAE:  ADD             R1, PC; sub_11F3F4
11EAB0:  LDR             R2, [SP,#0xA0+var_A0]
11EAB2:  BL              sub_164196
11EAB6:  LDR             R0, [SP,#0xA0+var_88]
11EAB8:  CMP             R10, R0
11EABA:  BEQ             loc_11EAC2
11EABC:  CBZ             R0, loc_11EACC
11EABE:  MOVS            R1, #5
11EAC0:  B               loc_11EAC4
11EAC2:  MOVS            R1, #4
11EAC4:  LDR             R2, [R0]
11EAC6:  LDR.W           R1, [R2,R1,LSL#2]
11EACA:  BLX             R1
11EACC:  MOVW            R5, #0x37C4
11EAD0:  MOVW            R6, #0x8094
11EAD4:  MOVW            R4, #0x868
11EAD8:  MOVT            R5, #0x6B ; 'k'
11EADC:  MOVT            R6, #0x67 ; 'g'
11EAE0:  MOVT            R4, #0x66 ; 'f'
11EAE4:  MOV             R0, R5
11EAE6:  MOV             R1, R6
11EAE8:  MOV             R2, R4
11EAEA:  BL              sub_11EDC8
11EAEE:  MOVW            R9, #0x8900
11EAF2:  ADD.W           R0, R5, #0x224
11EAF6:  MOVT            R9, #0x67 ; 'g'
11EAFA:  ADD.W           R1, R9, #0x38 ; '8'
11EAFE:  ADD.W           R2, R4, #0xC
11EB02:  BL              sub_11EDC8
11EB06:  ADD.W           R0, R5, #0x448
11EB0A:  ADD.W           R1, R6, #0x698
11EB0E:  ADDS            R2, R4, #4
11EB10:  BL              sub_11EDC8
11EB14:  MOVW            R0, #0x3E30
11EB18:  ADD.W           R2, R4, #8
11EB1C:  MOVT            R0, #0x6B ; 'k'
11EB20:  MOV             R1, R9
11EB22:  BL              sub_11EDC8
11EB26:  MOV             R0, R8
11EB28:  ADD             SP, SP, #0x84
11EB2A:  POP.W           {R8-R11}
11EB2E:  POP             {R4-R7,PC}
