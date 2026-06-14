; =========================================================
; Game Engine Function: sub_187A22
; Address            : 0x187A22 - 0x188056
; =========================================================

187A22:  PUSH            {R4-R7,LR}
187A24:  ADD             R7, SP, #0xC
187A26:  PUSH.W          {R8-R11}
187A2A:  SUB             SP, SP, #0x164
187A2C:  STR             R3, [SP,#0x180+var_170]
187A2E:  MOV             R5, R2
187A30:  MOV             R8, R1
187A32:  MOV             R11, R0
187A34:  STR             R2, [SP,#0x180+var_20]
187A36:  BL              sub_17E2E4
187A3A:  MOV.W           R10, #1
187A3E:  CMP.W           R8, #0
187A42:  BEQ.W           loc_18804C
187A46:  CMP             R5, #2
187A48:  BLT.W           loc_18804C
187A4C:  LDRB.W          R0, [R11,#0x680]
187A50:  CBZ             R0, loc_187A58
187A52:  MOVS            R0, #0
187A54:  STRB.W          R0, [R11,#0x680]
187A58:  ADDW            R6, R11, #0x414
187A5C:  MOV             R0, R6
187A5E:  BL              sub_17E0BA
187A62:  CBZ             R0, loc_187A7C
187A64:  ADD             R0, SP, #0x180+var_20
187A66:  STR             R0, [SP,#0x180+var_180]
187A68:  MOV             R0, R6
187A6A:  MOV             R1, R8
187A6C:  MOV             R2, R5
187A6E:  MOV             R3, R8
187A70:  BL              sub_17E1FC
187A74:  LDR             R5, [SP,#0x180+var_20]
187A76:  CMP             R0, #0
187A78:  BEQ.W           loc_187B86
187A7C:  LDR.W           R0, [R11,#0x374]
187A80:  MOV             R2, R5; size
187A82:  LDR.W           R1, [R11,#0x37C]
187A86:  MOVS            R3, #0
187A88:  ADDS            R0, #1
187A8A:  STR.W           R0, [R11,#0x374]
187A8E:  ADD.W           R1, R1, R5,LSL#3
187A92:  ADD             R0, SP, #0x180+var_134; int
187A94:  STR.W           R1, [R11,#0x37C]
187A98:  MOV             R1, R8; src
187A9A:  MOV.W           R10, #0
187A9E:  BL              sub_17D4F2
187AA2:  BL              sub_17E348
187AA6:  STRD.W          R1, R0, [SP,#0x180+var_15C]
187AAA:  LDR             R1, [SP,#0x180+var_134]
187AAC:  LDR             R0, [SP,#0x180+var_12C]
187AAE:  STRD.W          R10, R10, [SP,#0x180+var_140]
187AB2:  CMP             R0, R1
187AB4:  STR.W           R10, [SP,#0x180+var_138]
187AB8:  BGE             loc_187BAC
187ABA:  LDR             R1, [SP,#0x180+var_128]
187ABC:  ASRS            R2, R0, #3
187ABE:  LDRB            R1, [R1,R2]
187AC0:  ADDS            R2, R0, #1
187AC2:  AND.W           R0, R0, #7
187AC6:  STR             R2, [SP,#0x180+var_12C]
187AC8:  LSL.W           R0, R1, R0
187ACC:  LSLS            R0, R0, #0x18
187ACE:  BPL             loc_187BA8
187AD0:  ADD             R0, SP, #0x180+var_140
187AD2:  ADD             R1, SP, #0x180+var_134
187AD4:  BL              sub_188098
187AD8:  CMP             R0, #0
187ADA:  BEQ             loc_187BA2
187ADC:  LDR             R0, [SP,#0x180+var_13C]
187ADE:  CMP             R0, #0
187AE0:  BEQ             loc_187B80
187AE2:  LDR             R0, [SP,#0x180+var_140]
187AE4:  ADD.W           R10, R11, #0x40 ; '@'
187AE8:  ADD.W           R9, SP, #0x180+var_150
187AEC:  MOV.W           R8, #0
187AF0:  MOVS            R5, #0
187AF2:  LDRH.W          R6, [R0,R5,LSL#2]
187AF6:  ADD.W           R0, R0, R5,LSL#2
187AFA:  LDRH            R0, [R0,#2]
187AFC:  CMP             R6, R0
187AFE:  BHI             loc_187BA2
187B00:  UXTH            R1, R6
187B02:  MOV             R0, R10
187B04:  MOV             R2, R9
187B06:  BL              sub_189D76
187B0A:  CBZ             R0, loc_187B16
187B0C:  LDR             R1, [SP,#0x180+var_150]
187B0E:  LDR             R0, [R1,#0x38]
187B10:  STRD.W          R8, R8, [R1,#0x28]
187B14:  B               loc_187B24
187B16:  LDR.W           R0, [R11,#0x388]
187B1A:  ADDS            R0, #1
187B1C:  STR.W           R0, [R11,#0x388]
187B20:  MOV.W           R0, #0xFFFFFFFF
187B24:  ADDS            R1, R0, #1
187B26:  BEQ             loc_187B48
187B28:  LDRD.W          R1, R2, [R11,#0x3D8]
187B2C:  LDR             R3, [SP,#0x180+var_158]
187B2E:  SUBS            R1, R3, R1
187B30:  LDR             R1, [SP,#0x180+var_15C]
187B32:  SBCS            R1, R2
187B34:  BLT             loc_187B48
187B36:  LDR.W           R1, [R11,#0x3E0]
187B3A:  CMP             R0, R1
187B3C:  ITTT EQ
187B3E:  LDREQ.W         R0, [R11,#0x3EC]
187B42:  ADDEQ           R0, #1
187B44:  STREQ.W         R0, [R11,#0x3EC]
187B48:  LDR             R0, [SP,#0x180+var_140]
187B4A:  ADDS            R6, #1
187B4C:  LDR.W           R1, [R11,#0x50]
187B50:  LDR             R4, [SP,#0x180+var_15C]
187B52:  LDRH.W          R2, [R0,R5,LSL#2]
187B56:  CMP             R1, #0
187B58:  MOV             R3, R1
187B5A:  IT NE
187B5C:  MOVNE           R3, R4
187B5E:  LDR             R4, [SP,#0x180+var_158]
187B60:  IT NE
187B62:  MOVNE           R1, R4
187B64:  STRD.W          R1, R3, [R11,#0xB8]
187B68:  UXTH            R1, R6
187B6A:  CMP             R1, R2
187B6C:  BCC             loc_187B78
187B6E:  ADD.W           R2, R0, R5,LSL#2
187B72:  LDRH            R2, [R2,#2]
187B74:  CMP             R1, R2
187B76:  BLS             loc_187B00
187B78:  LDR             R1, [SP,#0x180+var_13C]
187B7A:  ADDS            R5, #1
187B7C:  CMP             R5, R1
187B7E:  BCC             loc_187AF2
187B80:  MOV.W           R10, #1
187B84:  B               loc_187BAC
187B86:  LDR.W           R0, [R11,#0x378]
187B8A:  MOV.W           R10, #0
187B8E:  LDR.W           R1, [R11,#0x380]
187B92:  ADDS            R0, #1
187B94:  STR.W           R0, [R11,#0x378]
187B98:  ADD.W           R1, R1, R5,LSL#3
187B9C:  STR.W           R1, [R11,#0x380]
187BA0:  B               loc_18804C
187BA2:  MOV.W           R10, #0
187BA6:  B               loc_188022
187BA8:  MOV.W           R10, #0
187BAC:  LDRD.W          R3, R2, [SP,#0x180+var_15C]
187BB0:  ADD             R1, SP, #0x180+var_134
187BB2:  MOV             R0, R11
187BB4:  BL              sub_188150
187BB8:  MOV             R5, R0
187BBA:  CMP             R0, #0
187BBC:  STR             R0, [SP,#0x180+var_144]
187BBE:  BEQ.W           loc_188022
187BC2:  LDRD.W          R1, R0, [SP,#0x180+var_15C]
187BC6:  MOV.W           R2, #0x3E8
187BCA:  MOVS            R3, #0
187BCC:  LDRD.W          R8, R9, [R7,#arg_0]
187BD0:  BLX             sub_221404
187BD4:  STR             R0, [SP,#0x180+var_154]
187BD6:  ADD.W           R0, R11, #0xC
187BDA:  LDR.W           R10, [SP,#0x180+var_170]
187BDE:  STR             R0, [SP,#0x180+var_164]
187BE0:  ADD.W           R0, R11, #0x6A0
187BE4:  STR             R0, [SP,#0x180+var_168]
187BE6:  ADD.W           R0, R11, #0x3B0
187BEA:  STR             R0, [SP,#0x180+var_160]
187BEC:  ADD.W           R0, R11, #0x1C
187BF0:  STR             R0, [SP,#0x180+var_16C]
187BF2:  LDR.W           R0, [R9,#4]
187BF6:  CBZ             R0, loc_187C28
187BF8:  MOVS            R6, #0
187BFA:  LDR.W           R0, [R9]
187BFE:  LDR.W           R2, [R11,#0x674]
187C02:  LDR.W           R0, [R0,R6,LSL#2]
187C06:  LDR             R1, [R0]
187C08:  LDR             R4, [R1,#0x24]
187C0A:  LDR             R1, [SP,#0x180+var_154]
187C0C:  MOV             R3, R10
187C0E:  STR             R1, [SP,#0x180+var_17C]
187C10:  MOVS            R1, #0
187C12:  STR             R1, [SP,#0x180+var_178]
187C14:  MOV             R1, R5
187C16:  STR.W           R8, [SP,#0x180+var_180]
187C1A:  BLX             R4
187C1C:  LDR             R5, [SP,#0x180+var_144]
187C1E:  ADDS            R6, #1
187C20:  LDR.W           R0, [R9,#4]
187C24:  CMP             R6, R0
187C26:  BCC             loc_187BFA
187C28:  LDR             R0, [R5,#0xC]
187C2A:  SUBS            R0, #8
187C2C:  CMP             R0, #2
187C2E:  BHI             loc_187C42
187C30:  LDR.W           R0, [R11,#0x32C]
187C34:  LDRH            R1, [R5]
187C36:  ADDS            R0, #1
187C38:  STR.W           R0, [R11,#0x32C]
187C3C:  LDR             R0, [SP,#0x180+var_16C]
187C3E:  BL              sub_189E52
187C42:  LDRB.W          R0, [R11,#0x3C2]
187C46:  CBZ             R0, loc_187C5E
187C48:  LDR             R0, [SP,#0x180+var_160]
187C4A:  MOV.W           R1, #0x200
187C4E:  BL              sub_18829C
187C52:  MOVS            R2, #0
187C54:  STRB.W          R2, [R11,#0x3C2]
187C58:  STRH.W          R2, [R11,#0x3C0]
187C5C:  B               loc_187C62
187C5E:  LDRH.W          R2, [R11,#0x3C0]
187C62:  LDR             R1, [SP,#0x180+var_144]
187C64:  LDRH            R0, [R1]
187C66:  SUBS            R0, R0, R2
187C68:  UXTH            R5, R0
187C6A:  CBZ             R5, loc_187C90
187C6C:  CMP.W           R5, #0x8000
187C70:  BLS             loc_187CBC
187C72:  LDR             R0, [R1,#0x34]; void *
187C74:  LDR.W           R2, [R11,#0x394]
187C78:  ADD.W           R2, R2, #1
187C7C:  STR.W           R2, [R11,#0x394]
187C80:  CBZ             R0, loc_187C88
187C82:  BLX             j__ZdaPv; operator delete[](void *)
187C86:  LDR             R1, [SP,#0x180+var_144]
187C88:  LDR             R0, [SP,#0x180+var_168]
187C8A:  BL              sub_17E56C
187C8E:  B               loc_187FE2
187C90:  LDRD.W          R3, R8, [R11,#0x3B4]
187C94:  MOVS            R6, #0
187C96:  LDR.W           R1, [R11,#0x3BC]
187C9A:  CMP             R8, R3
187C9C:  SUB.W           R5, R8, R3
187CA0:  IT CC
187CA2:  NEGCC           R6, R1
187CA4:  CMP             R5, R6
187CA6:  BEQ             loc_187CB4
187CA8:  ADDS            R6, R3, #1
187CAA:  SUBS            R3, R6, R1
187CAC:  IT NE
187CAE:  MOVNE           R3, R6
187CB0:  STR.W           R3, [R11,#0x3B4]
187CB4:  ADDS            R2, #1
187CB6:  STRH.W          R2, [R11,#0x3C0]
187CBA:  B               loc_187D3E
187CBC:  LDRD.W          R3, R8, [R11,#0x3B4]
187CC0:  LDR.W           R6, [R11,#0x3BC]
187CC4:  SUBS.W          R4, R8, R3
187CC8:  IT CC
187CCA:  ADDCC           R4, R6
187CCC:  CMP             R4, R5
187CCE:  BLS             loc_187CF4
187CD0:  LDR             R0, [SP,#0x180+var_160]
187CD2:  ADD             R5, R3
187CD4:  SUBS            R6, R5, R6
187CD6:  LDR             R4, [R0]
187CD8:  IT CC
187CDA:  MOVCC           R6, R5
187CDC:  LDR.W           R5, [R4,R6,LSL#3]
187CE0:  ADD.W           R6, R4, R6,LSL#3
187CE4:  LDR             R4, [R6,#4]
187CE6:  ORRS            R5, R4
187CE8:  BEQ.W           loc_187EF6
187CEC:  MOVS            R0, #0
187CEE:  STRD.W          R0, R0, [R6]
187CF2:  B               loc_187D3E
187CF4:  LDR             R6, [SP,#0x180+var_160]
187CF6:  ADD.W           R8, SP, #0x180+var_150
187CFA:  MOV.W           R4, #0x3E8
187CFE:  BCS             loc_187D28
187D00:  LDR.W           R0, [R11,#0x2E0]
187D04:  LDRD.W          R2, R1, [SP,#0x180+var_15C]
187D08:  UMLAL.W         R1, R2, R0, R4
187D0C:  STRD.W          R1, R2, [SP,#0x180+var_150]
187D10:  MOV             R0, R6
187D12:  MOV             R1, R8
187D14:  BL              sub_1882D2
187D18:  ADD.W           R2, R11, #0x3B4
187D1C:  LDM             R2, {R0-R2}
187D1E:  SUBS            R0, R1, R0
187D20:  IT CC
187D22:  ADDCC           R0, R2
187D24:  CMP             R0, R5
187D26:  BCC             loc_187D00
187D28:  MOVS            R0, #0
187D2A:  STRD.W          R0, R0, [SP,#0x180+var_150]
187D2E:  MOV             R0, R6
187D30:  MOV             R1, R8
187D32:  BL              sub_1882D2
187D36:  LDRD.W          R3, R8, [R11,#0x3B4]
187D3A:  LDRH.W          R2, [R11,#0x3C0]
187D3E:  LDR.W           R9, [R11,#0x3BC]
187D42:  SUBS.W          R5, R8, R3
187D46:  IT CC
187D48:  ADDCC           R5, R9
187D4A:  CBZ             R5, loc_187D9A
187D4C:  LDR.W           R6, [R11,#0x3B0]
187D50:  LDR             R0, [SP,#0x180+var_158]
187D52:  ADD.W           R4, R6, R3,LSL#3
187D56:  LDR.W           R12, [R6,R3,LSL#3]
187D5A:  LDR.W           LR, [R4,#4]
187D5E:  SUBS.W          R4, R12, R0
187D62:  LDR             R0, [SP,#0x180+var_15C]
187D64:  SBCS.W          R4, LR, R0
187D68:  BGE             loc_187DA4
187D6A:  ADDS            R0, R3, #1
187D6C:  ADDS            R2, #1
187D6E:  SUBS.W          R3, R0, R9
187D72:  IT NE
187D74:  MOVNE           R3, R0
187D76:  SUBS.W          R5, R8, R3
187D7A:  STR.W           R3, [R11,#0x3B4]
187D7E:  IT CC
187D80:  ADDCC           R5, R9
187D82:  CBZ             R5, loc_187D9E
187D84:  LDR.W           R4, [R6,R3,LSL#3]
187D88:  ADD.W           R0, R6, R3,LSL#3
187D8C:  LDR             R1, [SP,#0x180+var_158]
187D8E:  LDR             R0, [R0,#4]
187D90:  SUBS            R4, R4, R1
187D92:  LDR             R1, [SP,#0x180+var_15C]
187D94:  SBCS            R0, R1
187D96:  BLT             loc_187D6A
187D98:  B               loc_187DA0
187D9A:  MOVS            R5, #0
187D9C:  B               loc_187DA4
187D9E:  MOVS            R5, #0
187DA0:  STRH.W          R2, [R11,#0x3C0]
187DA4:  LDR.W           R0, [R11,#0x38C]
187DA8:  CMP.W           R9, #0x200
187DAC:  LDR.W           R8, [R7,#arg_0]
187DB0:  ADD.W           R0, R0, #1
187DB4:  STR.W           R0, [R11,#0x38C]
187DB8:  ITT HI
187DBA:  ADDHI.W         R0, R5, R5,LSL#1
187DBE:  CMPHI           R9, R0
187DC0:  BLS             loc_187DC8
187DC2:  LDR             R0, [SP,#0x180+var_160]
187DC4:  BL              sub_1883A0
187DC8:  LDR             R1, [SP,#0x180+var_144]
187DCA:  LDR             R0, [R1,#0x1C]
187DCC:  CBZ             R0, loc_187DDA
187DCE:  LDRD.W          R3, R2, [SP,#0x180+var_15C]
187DD2:  MOV             R0, R11
187DD4:  BL              sub_188454
187DD8:  LDR             R1, [SP,#0x180+var_144]
187DDA:  LDR             R0, [R1,#0xC]
187DDC:  CMP             R0, #0xA
187DDE:  IT NE
187DE0:  CMPNE           R0, #7
187DE2:  BNE             loc_187DFC
187DE4:  LDRB            R0, [R1,#0x10]
187DE6:  CMP             R0, #0x20 ; ' '
187DE8:  BCC             loc_187E50
187DEA:  LDR             R0, [R1,#0x34]; void *
187DEC:  CBZ             R0, loc_187DF4
187DEE:  BLX             j__ZdaPv; operator delete[](void *)
187DF2:  LDR             R1, [SP,#0x180+var_144]
187DF4:  LDR             R0, [SP,#0x180+var_168]
187DF6:  BL              sub_17E56C
187DFA:  B               loc_187FE2
187DFC:  LDR             R2, [R1,#0x1C]
187DFE:  CBZ             R2, loc_187E2C
187E00:  CMP             R0, #9
187E02:  ITT NE
187E04:  MOVNE           R0, #0xFF
187E06:  STRBNE          R0, [R1,#0x10]
187E08:  LDRD.W          R3, R2, [SP,#0x180+var_15C]
187E0C:  MOV             R0, R11
187E0E:  BL              sub_188520
187E12:  LDR             R0, [SP,#0x180+var_144]
187E14:  LDRH            R1, [R0,#0x14]
187E16:  LDRD.W          R3, R2, [SP,#0x180+var_15C]
187E1A:  MOV             R0, R11
187E1C:  BL              sub_18863A
187E20:  MOV             R1, R0
187E22:  CMP             R1, #0
187E24:  STR             R1, [SP,#0x180+var_144]
187E26:  BEQ.W           loc_187FE2
187E2A:  LDR             R0, [R1,#0xC]
187E2C:  CMP             R0, #9
187E2E:  BNE             loc_187E74
187E30:  LDRB.W          R8, [R1,#0x10]
187E34:  CMP.W           R8, #0x20 ; ' '
187E38:  BCC             loc_187F18
187E3A:  LDR             R0, [R1,#0x34]; void *
187E3C:  LDR.W           R8, [R7,#arg_0]
187E40:  CBZ             R0, loc_187E48
187E42:  BLX             j__ZdaPv; operator delete[](void *)
187E46:  LDR             R1, [SP,#0x180+var_144]
187E48:  LDR             R0, [SP,#0x180+var_168]
187E4A:  BL              sub_17E56C
187E4E:  B               loc_187FE2
187E50:  ADD.W           R0, R11, R0,LSL#1
187E54:  LDRH            R2, [R1,#0x12]
187E56:  LDRSH.W         R6, [R0,#0x294]
187E5A:  CMP.W           R6, #0xFFFFFFFF
187E5E:  UXTH            R3, R6
187E60:  BLE             loc_187E7E
187E62:  CMP             R2, R3
187E64:  BCC             loc_187ED8
187E66:  MOV             R6, #0xFFFF8000
187E6E:  EORS            R3, R6
187E70:  UXTH            R3, R3
187E72:  B               loc_187E88
187E74:  LDR             R0, [SP,#0x180+var_164]
187E76:  ADD             R1, SP, #0x180+var_144
187E78:  BL              sub_17E430
187E7C:  B               loc_187FDE
187E7E:  CMP             R2, R3
187E80:  BCS             loc_187E8C
187E82:  MOVW            R6, #0x7FFE
187E86:  SUBS            R3, R3, R6
187E88:  CMP             R3, R2
187E8A:  BLS             loc_187ED8
187E8C:  LDR             R6, [R1,#0x1C]
187E8E:  LDR.W           R3, [R11,#0x368]
187E92:  CMP             R6, #0
187E94:  ADD.W           R3, R3, #1
187E98:  STR.W           R3, [R11,#0x368]
187E9C:  BEQ.W           loc_187FCE
187EA0:  LDRD.W          R3, R2, [SP,#0x180+var_15C]
187EA4:  MOV             R0, R11
187EA6:  BL              sub_188520
187EAA:  LDR             R0, [SP,#0x180+var_144]
187EAC:  LDRH            R1, [R0,#0x14]
187EAE:  LDRD.W          R3, R2, [SP,#0x180+var_15C]
187EB2:  MOV             R0, R11
187EB4:  BL              sub_18863A
187EB8:  CMP             R0, #0
187EBA:  STR             R0, [SP,#0x180+var_144]
187EBC:  BEQ.W           loc_187FE2
187EC0:  LDRB            R1, [R0,#0x10]
187EC2:  LDRH            R0, [R0,#0x12]
187EC4:  ADD.W           R1, R11, R1,LSL#1
187EC8:  ADDS            R0, #1
187ECA:  STRH.W          R0, [R1,#0x294]
187ECE:  LDR             R0, [SP,#0x180+var_164]
187ED0:  ADD             R1, SP, #0x180+var_144
187ED2:  BL              sub_17E430
187ED6:  B               loc_187FDE
187ED8:  LDR             R0, [R1,#0x34]; void *
187EDA:  LDR.W           R2, [R11,#0x364]
187EDE:  ADD.W           R2, R2, #1
187EE2:  STR.W           R2, [R11,#0x364]
187EE6:  CBZ             R0, loc_187EEE
187EE8:  BLX             j__ZdaPv; operator delete[](void *)
187EEC:  LDR             R1, [SP,#0x180+var_144]
187EEE:  LDR             R0, [SP,#0x180+var_168]
187EF0:  BL              sub_17E56C
187EF4:  B               loc_187FE2
187EF6:  LDR             R0, [R1,#0x34]; void *
187EF8:  LDR.W           R2, [R11,#0x394]
187EFC:  ADD.W           R2, R2, #1
187F00:  STR.W           R2, [R11,#0x394]
187F04:  CBZ             R0, loc_187F0C
187F06:  BLX             j__ZdaPv; operator delete[](void *)
187F0A:  LDR             R1, [SP,#0x180+var_144]
187F0C:  LDR             R0, [SP,#0x180+var_168]
187F0E:  BL              sub_17E56C
187F12:  LDR.W           R8, [R7,#arg_0]
187F16:  B               loc_187FE2
187F18:  ADD.W           R5, R11, R8,LSL#1
187F1C:  LDRH            R0, [R1,#0x12]
187F1E:  LDRH.W          R2, [R5,#0x254]
187F22:  CMP             R2, R0
187F24:  BNE             loc_187FFE
187F26:  LDR.W           R0, [R11,#0x370]
187F2A:  ADDS            R0, #1
187F2C:  STR.W           R0, [R11,#0x370]
187F30:  LDR             R0, [SP,#0x180+var_164]
187F32:  ADD             R1, SP, #0x180+var_144
187F34:  BL              sub_17E430
187F38:  ADD.W           R5, R5, #0x254
187F3C:  LDR.W           R1, [R11,#4]
187F40:  MOVS            R2, #0
187F42:  LDRH            R0, [R5]
187F44:  CMP             R1, R8
187F46:  STR             R2, [SP,#0x180+var_144]
187F48:  ADD.W           R0, R0, #1
187F4C:  STRH            R0, [R5]
187F4E:  BLS             loc_187FC0
187F50:  LDR.W           R1, [R11]
187F54:  LDR.W           R10, [R1,R8,LSL#2]
187F58:  CMP.W           R10, #0
187F5C:  BEQ             loc_187FC0
187F5E:  LDR.W           R8, [R10]
187F62:  CMP.W           R8, #0
187F66:  BEQ             loc_187FC0
187F68:  LDR.W           R1, [R10,#4]
187F6C:  CBZ             R1, loc_187F72
187F6E:  STR.W           R1, [R10,#8]
187F72:  CMP.W           R8, #1
187F76:  BLT             loc_187FC0
187F78:  MOVS            R1, #0
187F7A:  LDR.W           R2, [R10,#8]
187F7E:  UXTH            R4, R0
187F80:  LDR             R6, [R2]
187F82:  LDRH            R3, [R6,#0x12]
187F84:  CMP             R3, R4
187F86:  BNE             loc_187FA2
187F88:  MOV             R0, R10
187F8A:  BL              sub_18A29A
187F8E:  STR             R6, [SP,#0x180+var_150]
187F90:  LDR             R0, [SP,#0x180+var_164]
187F92:  ADD             R1, SP, #0x180+var_150
187F94:  BL              sub_17E430
187F98:  LDRH            R0, [R5]
187F9A:  MOVS            R1, #1
187F9C:  ADDS            R0, #1
187F9E:  STRH            R0, [R5]
187FA0:  B               loc_187FB6
187FA2:  LDR.W           R3, [R10]
187FA6:  CBZ             R3, loc_187FB6
187FA8:  LDR             R2, [R2,#8]
187FAA:  LDR.W           R3, [R10,#4]
187FAE:  CMP             R2, R3
187FB0:  IT NE
187FB2:  STRNE.W         R2, [R10,#8]
187FB6:  SUBS.W          R8, R8, #1
187FBA:  BNE             loc_187F7A
187FBC:  LSLS            R1, R1, #0x1F
187FBE:  BNE             loc_187F5E
187FC0:  MOVS            R0, #0
187FC2:  LDR.W           R10, [SP,#0x180+var_170]
187FC6:  STR             R0, [SP,#0x180+var_144]
187FC8:  LDR.W           R8, [R7,#arg_0]
187FCC:  B               loc_187FE2
187FCE:  ADD.W           R0, R0, #0x294
187FD2:  ADDS            R1, R2, #1
187FD4:  STRH            R1, [R0]
187FD6:  LDR             R0, [SP,#0x180+var_164]
187FD8:  ADD             R1, SP, #0x180+var_144
187FDA:  BL              sub_17E430
187FDE:  MOVS            R0, #0
187FE0:  STR             R0, [SP,#0x180+var_144]
187FE2:  LDRD.W          R3, R2, [SP,#0x180+var_15C]
187FE6:  ADD             R1, SP, #0x180+var_134
187FE8:  MOV             R0, R11
187FEA:  BL              sub_188150
187FEE:  LDR.W           R9, [R7,#arg_4]
187FF2:  MOV             R5, R0
187FF4:  CMP             R0, #0
187FF6:  STR             R0, [SP,#0x180+var_144]
187FF8:  BNE.W           loc_187BF2
187FFC:  B               loc_188014
187FFE:  LDR.W           R0, [R11,#0x36C]
188002:  ADDS            R0, #1
188004:  STR.W           R0, [R11,#0x36C]
188008:  MOV             R0, R11
18800A:  BL              sub_188780
18800E:  LDR.W           R8, [R7,#arg_0]
188012:  B               loc_187FE2
188014:  LDR.W           R0, [R11,#0x674]
188018:  MOV.W           R10, #1
18801C:  ADDS            R0, #1
18801E:  STR.W           R0, [R11,#0x674]
188022:  LDR             R0, [SP,#0x180+var_138]
188024:  CBZ             R0, loc_188040
188026:  CMP.W           R0, #0x200
18802A:  BLS             loc_18803C
18802C:  LDR             R0, [SP,#0x180+var_140]
18802E:  CBZ             R0, loc_188036
188030:  SUBS            R0, #8; void *
188032:  BLX             j__ZdaPv; operator delete[](void *)
188036:  MOVS            R0, #0
188038:  STR             R0, [SP,#0x180+var_140]
18803A:  STR             R0, [SP,#0x180+var_138]
18803C:  MOVS            R0, #0
18803E:  STR             R0, [SP,#0x180+var_13C]
188040:  ADD             R0, SP, #0x180+var_140
188042:  BL              sub_18A16A
188046:  ADD             R0, SP, #0x180+var_134
188048:  BL              sub_17D542
18804C:  MOV             R0, R10
18804E:  ADD             SP, SP, #0x164
188050:  POP.W           {R8-R11}
188054:  POP             {R4-R7,PC}
