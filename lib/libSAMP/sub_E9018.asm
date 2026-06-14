; =========================================================
; Game Engine Function: sub_E9018
; Address            : 0xE9018 - 0xE90C4
; =========================================================

E9018:  PUSH            {R4,R5,R7,LR}
E901A:  ADD             R7, SP, #8
E901C:  SUB             SP, SP, #0x40
E901E:  MOV             R4, R0
E9020:  MOVS            R0, #0
E9022:  STRD.W          R0, R0, [SP,#0x48+var_20]
E9026:  MOVS            R0, #3
E9028:  STRB.W          R0, [SP,#0x48+var_28]
E902C:  MOV             R0, R1
E902E:  MOV             R5, R1
E9030:  BL              sub_EA114
E9034:  LDRD.W          R1, R2, [R4,#4]
E9038:  STR             R0, [SP,#0x48+var_20]
E903A:  SUBS            R1, R2, R1
E903C:  ADD.W           R0, R4, #0x30 ; '0'
E9040:  ADD             R3, SP, #0x48+var_28
E9042:  MOVS            R2, #4
E9044:  ASRS            R1, R1, #2
E9046:  BL              sub_E9460
E904A:  STRB.W          R0, [R7,#var_29]
E904E:  ADD.W           R0, R4, #0x1C
E9052:  SUB.W           R1, R7, #-var_29
E9056:  BL              sub_E8994
E905A:  LDRB.W          R0, [R7,#var_29]
E905E:  CBZ             R0, loc_E90B8
E9060:  LDR             R0, [R4,#8]
E9062:  LDR.W           R0, [R0,#-4]
E9066:  CBZ             R0, loc_E90B8
E9068:  ADD.W           R1, R4, #0x50 ; 'P'
E906C:  ADD             R0, SP, #0x48+var_40
E906E:  BL              sub_E4834
E9072:  LDR             R0, [R4,#8]
E9074:  LDR.W           R0, [R0,#-4]
E9078:  LDR             R1, [R0,#8]
E907A:  LDR             R3, =(unk_9216D - 0xE9082)
E907C:  STR             R5, [SP,#0x48+var_14]
E907E:  ADD             R3, PC; unk_9216D
E9080:  ADD             R0, SP, #0x48+var_18
E9082:  ADD             R2, SP, #0x48+var_14
E9084:  STRD.W          R2, R0, [SP,#0x48+var_48]
E9088:  ADD             R0, SP, #0x48+var_10
E908A:  MOV             R2, R5
E908C:  BL              sub_EA136
E9090:  LDR             R0, [SP,#0x48+var_10]
E9092:  LDR             R5, [SP,#0x48+var_34]
E9094:  LDR             R2, [SP,#0x48+var_38]
E9096:  LDRB.W          R12, [R0,#0x20]!
E909A:  LDRB.W          R1, [SP,#0x48+var_40]
E909E:  LDRD.W          R3, LR, [R0,#8]
E90A2:  STRB            R1, [R0]
E90A4:  STRD.W          R2, R5, [R0,#8]
E90A8:  STR             R0, [R4,#0x28]
E90AA:  ADD             R0, SP, #0x48+var_40
E90AC:  STRB.W          R12, [SP,#0x48+var_40]
E90B0:  STRD.W          R3, LR, [SP,#0x48+var_38]
E90B4:  BL              sub_E3F7A
E90B8:  ADD             R0, SP, #0x48+var_28
E90BA:  BL              sub_E3F7A
E90BE:  MOVS            R0, #1
E90C0:  ADD             SP, SP, #0x40 ; '@'
E90C2:  POP             {R4,R5,R7,PC}
