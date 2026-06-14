; =========================================================
; Game Engine Function: sub_147F30
; Address            : 0x147F30 - 0x148072
; =========================================================

147F30:  PUSH            {R4-R7,LR}
147F32:  ADD             R7, SP, #0xC
147F34:  PUSH.W          {R8}
147F38:  SUB             SP, SP, #0x180
147F3A:  MOV             R4, R0
147F3C:  LDRH            R0, [R0,#8]
147F3E:  CMP.W           R0, #0x3E8
147F42:  BHI.W           loc_14806A
147F46:  MOV             R5, R1
147F48:  LDR             R1, =(off_23496C - 0x147F4E)
147F4A:  ADD             R1, PC; off_23496C
147F4C:  LDR.W           R8, [R1]; dword_23DEF4
147F50:  LDR.W           R1, [R8]
147F54:  LDR.W           R1, [R1,#0x3B0]
147F58:  LDR             R1, [R1,#0x10]
147F5A:  ADDS            R2, R1, R0
147F5C:  LDRB            R2, [R2,#4]
147F5E:  CMP             R2, #0
147F60:  BEQ.W           loc_14806A
147F64:  ADD.W           R0, R1, R0,LSL#2
147F68:  LDR.W           R6, [R0,#0x3EC]
147F6C:  CMP             R6, #0
147F6E:  BEQ             loc_14806A
147F70:  BL              sub_F0B30
147F74:  LDR             R1, [R4,#0xC]
147F76:  SUBS            R0, R0, R1
147F78:  CMP             R0, #0xFB
147F7A:  BCC             loc_14806A
147F7C:  ADD             R1, SP, #0x190+var_54
147F7E:  MOV             R0, R6
147F80:  BL              sub_F8910
147F84:  ADD             R1, SP, #0x190+var_60
147F86:  MOV             R0, R6
147F88:  ADDS            R2, R1, #4
147F8A:  ADD.W           R3, R1, #8
147F8E:  BL              sub_1021F0
147F92:  ADD             R0, SP, #0x190+var_174
147F94:  BL              sub_17D4A8
147F98:  LDRB            R0, [R4,#0xA]
147F9A:  CBZ             R0, loc_147FA4
147F9C:  ADD             R0, SP, #0x190+var_174
147F9E:  BL              sub_17D84A
147FA2:  B               loc_147FAA
147FA4:  ADD             R0, SP, #0x190+var_174
147FA6:  BL              sub_17D828
147FAA:  LDRH            R0, [R4,#8]
147FAC:  STRH.W          R0, [SP,#0x190+var_14]
147FB0:  ADD             R0, SP, #0x190+var_174
147FB2:  ADD             R1, SP, #0x190+var_14
147FB4:  MOVS            R2, #0x10
147FB6:  MOVS            R3, #1
147FB8:  BL              sub_17D628
147FBC:  STR             R5, [SP,#0x190+var_14]
147FBE:  ADD             R0, SP, #0x190+var_174
147FC0:  ADD             R1, SP, #0x190+var_14
147FC2:  MOVS            R2, #0x20 ; ' '
147FC4:  MOVS            R3, #1
147FC6:  BL              sub_17D628
147FCA:  LDR             R0, [SP,#0x190+var_24]
147FCC:  STR             R0, [SP,#0x190+var_14]
147FCE:  ADD             R0, SP, #0x190+var_174
147FD0:  ADD             R1, SP, #0x190+var_14
147FD2:  MOVS            R2, #0x20 ; ' '
147FD4:  MOVS            R3, #1
147FD6:  BL              sub_17D628
147FDA:  LDR             R0, [SP,#0x190+var_20]
147FDC:  STR             R0, [SP,#0x190+var_14]
147FDE:  ADD             R0, SP, #0x190+var_174
147FE0:  ADD             R1, SP, #0x190+var_14
147FE2:  MOVS            R2, #0x20 ; ' '
147FE4:  MOVS            R3, #1
147FE6:  BL              sub_17D628
147FEA:  LDR             R0, [SP,#0x190+var_1C]
147FEC:  STR             R0, [SP,#0x190+var_14]
147FEE:  ADD             R0, SP, #0x190+var_174
147FF0:  ADD             R1, SP, #0x190+var_14
147FF2:  MOVS            R2, #0x20 ; ' '
147FF4:  MOVS            R3, #1
147FF6:  BL              sub_17D628
147FFA:  LDR             R0, [SP,#0x190+var_60]
147FFC:  STR             R0, [SP,#0x190+var_14]
147FFE:  ADD             R0, SP, #0x190+var_174
148000:  ADD             R1, SP, #0x190+var_14
148002:  MOVS            R2, #0x20 ; ' '
148004:  MOVS            R3, #1
148006:  BL              sub_17D628
14800A:  LDR             R0, [SP,#0x190+var_5C]
14800C:  STR             R0, [SP,#0x190+var_14]
14800E:  ADD             R0, SP, #0x190+var_174
148010:  ADD             R1, SP, #0x190+var_14
148012:  MOVS            R2, #0x20 ; ' '
148014:  MOVS            R3, #1
148016:  BL              sub_17D628
14801A:  LDR             R0, [SP,#0x190+var_58]
14801C:  STR             R0, [SP,#0x190+var_14]
14801E:  ADD             R0, SP, #0x190+var_174
148020:  ADD             R1, SP, #0x190+var_14
148022:  MOVS            R2, #0x20 ; ' '
148024:  MOVS            R3, #1
148026:  BL              sub_17D628
14802A:  LDR.W           R0, [R8]
14802E:  MOVS            R3, #0
148030:  LDR.W           R0, [R0,#0x210]
148034:  LDR             R1, =(off_234CDC - 0x14803A)
148036:  ADD             R1, PC; off_234CDC
148038:  LDR             R2, [R0]
14803A:  LDR             R1, [R1]; unk_23C7FC
14803C:  LDR.W           LR, [R2,#0x6C]
148040:  MOV.W           R12, #0xFFFFFFFF
148044:  MOVS            R6, #9
148046:  ADD             R2, SP, #0x190+var_174
148048:  MOVW            R5, #0xFFFF
14804C:  STRD.W          R6, R3, [SP,#0x190+var_190]
148050:  STRD.W          R3, R12, [SP,#0x190+var_188]
148054:  STR             R3, [SP,#0x190+var_178]
148056:  MOVS            R3, #1
148058:  STRD.W          R5, R5, [SP,#0x190+var_180]
14805C:  BLX             LR
14805E:  BL              sub_F0B30
148062:  STR             R0, [R4,#0xC]
148064:  ADD             R0, SP, #0x190+var_174
148066:  BL              sub_17D542
14806A:  ADD             SP, SP, #0x180
14806C:  POP.W           {R8}
148070:  POP             {R4-R7,PC}
