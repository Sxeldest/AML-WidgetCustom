; =========================================================
; Game Engine Function: sub_145F44
; Address            : 0x145F44 - 0x1460E6
; =========================================================

145F44:  PUSH            {R4-R7,LR}
145F46:  ADD             R7, SP, #0xC
145F48:  PUSH.W          {R8}
145F4C:  SUB.W           SP, SP, #0x240
145F50:  LDRD.W          R1, R0, [R0]; src
145F54:  ADD             R4, SP, #0x250+var_22C
145F56:  ASRS            R2, R0, #0x1F
145F58:  MOVS            R3, #0
145F5A:  ADD.W           R0, R0, R2,LSR#29
145F5E:  MOVS            R2, #1
145F60:  ADD.W           R2, R2, R0,ASR#3; size
145F64:  MOV             R0, R4; int
145F66:  BL              sub_17D4F2
145F6A:  ADD             R0, SP, #0x250+s; int
145F6C:  MOV.W           R1, #0x100; n
145F70:  BLX             sub_22178C
145F74:  ADD             R1, SP, #0x250+var_14; int
145F76:  MOV             R0, R4; int
145F78:  MOVS            R2, #0x20 ; ' '
145F7A:  MOVS            R3, #1
145F7C:  BL              sub_17D786
145F80:  ADD             R0, SP, #0x250+var_22C; int
145F82:  ADD             R1, SP, #0x250+var_18; int
145F84:  MOVS            R2, #0x20 ; ' '
145F86:  MOVS            R3, #1
145F88:  BL              sub_17D786
145F8C:  LDR             R0, =(off_234C50 - 0x145F94)
145F8E:  LDR             R2, [SP,#0x250+var_18]
145F90:  ADD             R0, PC; off_234C50
145F92:  CMP             R2, #0xFF
145F94:  LDR             R6, [R0]; dword_239034
145F96:  MOV.W           R0, #0
145F9A:  STRB            R0, [R6,#(byte_23903A - 0x239034)]
145F9C:  BHI.W           loc_1460D6
145FA0:  ADD             R4, SP, #0x250+s
145FA2:  ADD             R0, SP, #0x250+var_22C; int
145FA4:  MOV             R1, R4; dest
145FA6:  BL              sub_17D744
145FAA:  LDR             R0, =(off_234A24 - 0x145FB4)
145FAC:  MOVS            R2, #0
145FAE:  LDR             R1, [SP,#0x250+var_18]
145FB0:  ADD             R0, PC; off_234A24
145FB2:  LDR             R0, [R0]; dword_23DEEC
145FB4:  STRB            R2, [R4,R1]
145FB6:  LDR             R0, [R0]
145FB8:  CBZ             R0, loc_14602C
145FBA:  ADD             R5, SP, #0x250+s
145FBC:  LDR             R4, [R0,#0x60]
145FBE:  MOV             R0, R5; s
145FC0:  BLX             strlen
145FC4:  MOV             R2, R0
145FC6:  ADD             R0, SP, #0x250+var_238
145FC8:  MOV             R1, R5
145FCA:  BL              sub_164D04
145FCE:  LDR             R0, [SP,#0x250+var_14]
145FD0:  VLDR            S6, =0.0039216
145FD4:  UBFX.W          R1, R0, #8, #8
145FD8:  UBFX.W          R2, R0, #0x10, #8
145FDC:  LSRS            R0, R0, #0x18
145FDE:  VMOV            S4, R0
145FE2:  MOV.W           R0, #0x3F800000
145FE6:  VMOV            S0, R1
145FEA:  STR             R0, [SP,#0x250+var_23C]
145FEC:  VMOV            S2, R2
145FF0:  VCVT.F32.S32    S0, S0
145FF4:  VCVT.F32.S32    S2, S2
145FF8:  VCVT.F32.S32    S4, S4
145FFC:  VMUL.F32        S0, S0, S6
146000:  VMUL.F32        S2, S2, S6
146004:  VMUL.F32        S4, S4, S6
146008:  VSTR            S0, [SP,#0x250+var_240]
14600C:  VSTR            S2, [SP,#0x250+var_244]
146010:  VSTR            S4, [SP,#0x250+var_248]
146014:  ADD             R1, SP, #0x250+var_238
146016:  ADD             R2, SP, #0x250+var_248
146018:  MOV             R0, R4
14601A:  BL              sub_12D678
14601E:  LDRB.W          R0, [SP,#0x250+var_238]
146022:  LSLS            R0, R0, #0x1F
146024:  ITT NE
146026:  LDRNE           R0, [SP,#0x250+var_230]; void *
146028:  BLXNE           j__ZdlPv; operator delete(void *)
14602C:  LDR             R0, =(off_23496C - 0x146032)
14602E:  ADD             R0, PC; off_23496C
146030:  LDR             R0, [R0]; dword_23DEF4
146032:  LDR             R0, [R0]
146034:  CMP             R0, #0
146036:  BEQ             loc_1460D6
146038:  LDR.W           R0, [R0,#0x3B0]
14603C:  LDR             R5, [R0]
14603E:  CMP             R5, #0
146040:  BEQ             loc_1460D6
146042:  LDR             R0, [SP,#0x250+var_14]
146044:  MOV             R1, #0xFF6347FF
14604C:  CMP             R0, R1
14604E:  BNE             loc_1460D6
146050:  LDR             R1, =(unk_8A639 - 0x146058)
146052:  ADD             R4, SP, #0x250+s
146054:  ADD             R1, PC; unk_8A639 ; needle
146056:  MOV             R0, R4; haystack
146058:  BLX             strstr
14605C:  CBZ             R0, loc_1460D6
14605E:  CMP             R0, R4
146060:  BNE             loc_1460D6
146062:  LDR             R0, =(unk_8A639 - 0x146068)
146064:  ADD             R0, PC; unk_8A639 ; char *
146066:  MOVS            R1, #0x10; size_t
146068:  BLX             __strlen_chk
14606C:  LDR             R1, =(unk_8ED2B - 0x146074)
14606E:  ADD             R0, R4; haystack
146070:  ADD             R1, PC; unk_8ED2B ; needle
146072:  BLX             strstr
146076:  CBZ             R0, loc_1460D6
146078:  MOV             R4, R0
14607A:  LDR             R0, =(unk_8ED2B - 0x146080)
14607C:  ADD             R0, PC; unk_8ED2B ; char *
14607E:  MOVS            R1, #0x10; size_t
146080:  BLX             __strlen_chk
146084:  ADD             R4, R0
146086:  MOVW            R0, #0x13A2
14608A:  ADD.W           R8, R5, R0
14608E:  MOV             R0, R4; haystack
146090:  MOV             R1, R8; needle
146092:  BLX             strstr
146096:  CBZ             R0, loc_1460D6
146098:  CMP             R0, R4
14609A:  BNE             loc_1460D6
14609C:  MOV             R0, R8; char *
14609E:  MOV.W           R1, #0xFFFFFFFF; size_t
1460A2:  BLX             __strlen_chk
1460A6:  LDRB            R1, [R4,R0]
1460A8:  CMP             R1, #0x5B ; '['
1460AA:  BNE             loc_1460D6
1460AC:  ADD             R4, R0
1460AE:  MOV.W           R0, #0x13A0
1460B2:  LDRH            R0, [R5,R0]
1460B4:  ADD             R5, SP, #0x250+var_248
1460B6:  MOVS            R1, #0
1460B8:  STR             R0, [SP,#0x250+var_250]
1460BA:  MOV             R0, R5
1460BC:  STRD.W          R1, R1, [SP,#0x250+var_248]
1460C0:  BL              sub_146128
1460C4:  MOV             R0, R4; haystack
1460C6:  MOV             R1, R5; needle
1460C8:  BLX             strstr
1460CC:  CBZ             R0, loc_1460D6
1460CE:  CMP             R0, R4
1460D0:  ITT EQ
1460D2:  MOVEQ           R0, #1
1460D4:  STRBEQ          R0, [R6,#(byte_23903A - 0x239034)]
1460D6:  ADD             R0, SP, #0x250+var_22C
1460D8:  BL              sub_17D542
1460DC:  ADD.W           SP, SP, #0x240
1460E0:  POP.W           {R8}
1460E4:  POP             {R4-R7,PC}
