; =========================================================
; Game Engine Function: sub_10CEC0
; Address            : 0x10CEC0 - 0x10CF80
; =========================================================

10CEC0:  PUSH            {R4-R7,LR}
10CEC2:  ADD             R7, SP, #0xC
10CEC4:  PUSH.W          {R8-R11}
10CEC8:  SUB             SP, SP, #0x4C
10CECA:  MOV             R4, R0
10CECC:  LDR             R0, =(off_23494C - 0x10CED6)
10CECE:  LDR             R1, =(sub_10CFCC+1 - 0x10CEDA)
10CED0:  MOVS            R2, #0
10CED2:  ADD             R0, PC; off_23494C
10CED4:  MOV             R9, SP
10CED6:  ADD             R1, PC; sub_10CFCC
10CED8:  MOV             R3, R4
10CEDA:  LDR             R0, [R0]; dword_23DF24
10CEDC:  LDR.W           R10, [R0]
10CEE0:  MOV             R0, R9
10CEE2:  STR             R2, [R4]
10CEE4:  MOVS            R2, #0
10CEE6:  BL              sub_10CFEE
10CEEA:  ADD.W           R11, SP, #0x68+var_50
10CEEE:  MOV             R1, R9
10CEF0:  MOV             R0, R11
10CEF2:  BL              sub_10D180
10CEF6:  BL              sub_10D128
10CEFA:  LDR             R0, =(unk_263230 - 0x10CF00)
10CEFC:  ADD             R0, PC; unk_263230
10CEFE:  LDR             R6, [R0,#(dword_263240 - 0x263230)]
10CF00:  CBNZ            R6, loc_10CF34
10CF02:  ADD.W           R8, SP, #0x68+var_50
10CF06:  ADD             R0, SP, #0x68+var_38
10CF08:  MOV             R1, R8
10CF0A:  BL              sub_10D180
10CF0E:  BL              sub_10D128
10CF12:  LDR             R0, =(unk_263230 - 0x10CF18)
10CF14:  ADD             R0, PC; unk_263230
10CF16:  ADD             R5, SP, #0x68+var_38
10CF18:  MOV             R1, R5
10CF1A:  BL              sub_10D1AC
10CF1E:  LDR             R0, [SP,#0x68+var_28]
10CF20:  CMP             R5, R0
10CF22:  BEQ             loc_10CF2A
10CF24:  CBZ             R0, loc_10CF34
10CF26:  MOVS            R1, #5
10CF28:  B               loc_10CF2C
10CF2A:  MOVS            R1, #4
10CF2C:  LDR             R2, [R0]
10CF2E:  LDR.W           R1, [R2,R1,LSL#2]
10CF32:  BLX             R1
10CF34:  LDR             R0, [SP,#0x68+var_40]
10CF36:  CMP             R11, R0
10CF38:  BEQ             loc_10CF40
10CF3A:  CBZ             R0, loc_10CF4A
10CF3C:  MOVS            R1, #5
10CF3E:  B               loc_10CF42
10CF40:  MOVS            R1, #4
10CF42:  LDR             R2, [R0]
10CF44:  LDR.W           R1, [R2,R1,LSL#2]
10CF48:  BLX             R1
10CF4A:  CBNZ            R6, loc_10CF60
10CF4C:  MOVW            R0, #0x4014
10CF50:  LDR             R1, =(sub_10D0FC+1 - 0x10CF5C)
10CF52:  MOVT            R0, #0x67 ; 'g'
10CF56:  ADD             R0, R10
10CF58:  ADD             R1, PC; sub_10D0FC
10CF5A:  MOV             R2, R4
10CF5C:  BL              sub_164196
10CF60:  LDR             R0, [SP,#0x68+var_58]
10CF62:  CMP             R9, R0
10CF64:  BEQ             loc_10CF6C
10CF66:  CBZ             R0, loc_10CF76
10CF68:  MOVS            R1, #5
10CF6A:  B               loc_10CF6E
10CF6C:  MOVS            R1, #4
10CF6E:  LDR             R2, [R0]
10CF70:  LDR.W           R1, [R2,R1,LSL#2]
10CF74:  BLX             R1
10CF76:  MOV             R0, R4
10CF78:  ADD             SP, SP, #0x4C ; 'L'
10CF7A:  POP.W           {R8-R11}
10CF7E:  POP             {R4-R7,PC}
