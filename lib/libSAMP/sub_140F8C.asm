; =========================================================
; Game Engine Function: sub_140F8C
; Address            : 0x140F8C - 0x1410AE
; =========================================================

140F8C:  PUSH            {R4-R7,LR}
140F8E:  ADD             R7, SP, #0xC
140F90:  PUSH.W          {R8-R11}
140F94:  SUB             SP, SP, #0x74
140F96:  MOV             R4, R0
140F98:  LDR             R0, [R0,#0xC]
140F9A:  CMP             R0, #0
140F9C:  BEQ.W           loc_1410A6
140FA0:  LDR             R1, =(unk_314218 - 0x140FA6)
140FA2:  ADD             R1, PC; unk_314218
140FA4:  BL              sub_F8910
140FA8:  LDR             R5, =(dword_314258 - 0x140FB0)
140FAA:  LDR             R0, [R4,#0x1C]
140FAC:  ADD             R5, PC; dword_314258
140FAE:  MOV             R1, R5
140FB0:  BL              sub_F8910
140FB4:  LDR             R1, =(unk_314298 - 0x140FBC)
140FB6:  LDR             R0, [R4,#0xC]
140FB8:  ADD             R1, PC; unk_314298
140FBA:  STR             R1, [SP,#0x90+var_40]
140FBC:  BL              sub_F8994
140FC0:  LDR             R6, =(unk_3142A4 - 0x140FC8)
140FC2:  LDR             R0, [R4,#0xC]
140FC4:  ADD             R6, PC; unk_3142A4
140FC6:  MOV             R1, R6
140FC8:  BL              sub_F89E0
140FCC:  LDR             R0, [R4,#0x1C]
140FCE:  MOVS            R1, #0
140FD0:  STR             R1, [SP,#0x90+var_90]
140FD2:  SUB.W           R1, R7, #-var_1E
140FD6:  ADD             R2, SP, #0x90+var_20
140FD8:  SUB.W           R3, R7, #-var_21
140FDC:  BL              sub_104BA4
140FE0:  LDRB.W          R0, [R4,#0x1A0]
140FE4:  CMP             R0, #0
140FE6:  BEQ             loc_14108A
140FE8:  LDRH.W          R0, [R7,#var_1E]
140FEC:  CMP             R0, #0
140FEE:  BNE             loc_14108A
140FF0:  LDRH.W          R0, [SP,#0x90+var_20]
140FF4:  CMP             R0, #0
140FF6:  BNE             loc_14108A
140FF8:  LDR             R1, =(unk_314218 - 0x141006)
140FFA:  ADD.W           R2, R4, #0x194
140FFE:  ADD.W           R0, R5, #0x30 ; '0'
141002:  ADD             R1, PC; unk_314218
141004:  BL              sub_108F30
141008:  LDR             R0, [R5]
14100A:  ADD.W           R3, R5, #0x34 ; '4'
14100E:  STR             R0, [SP,#0x90+var_48]
141010:  ADD.W           R11, R5, #0x14
141014:  LDR             R0, [R5,#(dword_31425C - 0x314258)]
141016:  STR             R0, [SP,#0x90+var_4C]
141018:  LDR             R0, [R5,#(dword_314260 - 0x314258)]
14101A:  STR             R0, [SP,#0x90+var_50]
14101C:  LDR             R0, [R5,#(dword_31427C - 0x314258)]
14101E:  STR             R0, [SP,#0x90+var_54]
141020:  LDR             R0, [R5,#(dword_314280 - 0x314258)]
141022:  LDM             R3, {R1-R3}
141024:  LDM.W           R11, {R8-R11}
141028:  STR             R0, [SP,#0x90+var_58]
14102A:  STR             R6, [SP,#0x90+var_44]
14102C:  LDRD.W          R6, R0, [R5,#(dword_314284 - 0x314258)]
141030:  LDRD.W          R12, LR, [R5,#(dword_314264 - 0x314258)]
141034:  LDR             R5, [R4,#0x1C]
141036:  STRD.W          R6, R0, [SP,#0x90+var_70]
14103A:  ADD             R0, SP, #0x90+var_68
14103C:  STM             R0!, {R1-R3}
14103E:  ADD             R0, SP, #0x90+var_88
141040:  STM.W           R0, {R8-R11}
141044:  LDR             R0, [SP,#0x90+var_54]
141046:  LDR             R1, [SP,#0x90+var_48]
141048:  LDRD.W          R3, R2, [SP,#0x90+var_50]
14104C:  STR             R0, [SP,#0x90+var_78]
14104E:  LDR             R0, [SP,#0x90+var_58]
141050:  STR             R0, [SP,#0x90+var_74]
141052:  MOV             R0, R5
141054:  STRD.W          R12, LR, [SP,#0x90+var_90]
141058:  BL              sub_F8F58
14105C:  LDR             R0, [R4,#0x1C]
14105E:  ADD             R1, SP, #0x90+var_30
141060:  BL              sub_F8994
141064:  LDR             R0, [SP,#0x90+var_40]
141066:  LDR             R3, [SP,#0x90+var_28]
141068:  LDRD.W          R1, R2, [R0]
14106C:  LDR             R0, [R4,#0x1C]
14106E:  BL              sub_F89BC
141072:  LDR             R0, [R4,#0x1C]
141074:  ADD             R1, SP, #0x90+var_3C
141076:  BL              sub_F89E0
14107A:  LDR             R0, [SP,#0x90+var_44]
14107C:  LDRD.W          R1, R2, [SP,#0x90+var_3C]
141080:  LDR             R3, [R0,#8]
141082:  LDR             R0, [R4,#0x1C]
141084:  BL              sub_F8A08
141088:  B               loc_1410A6
14108A:  LDR             R6, =(unk_3142B0 - 0x141092)
14108C:  LDR             R1, =(unk_314218 - 0x141094)
14108E:  ADD             R6, PC; unk_3142B0
141090:  ADD             R1, PC; unk_314218
141092:  MOV             R0, R6
141094:  BL              sub_140F4A
141098:  ADD.W           R0, R4, #0x194
14109C:  ADD.W           R2, R5, #0x30 ; '0'
1410A0:  MOV             R1, R6
1410A2:  BL              sub_108F30
1410A6:  ADD             SP, SP, #0x74 ; 't'
1410A8:  POP.W           {R8-R11}
1410AC:  POP             {R4-R7,PC}
