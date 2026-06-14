; =========================================================
; Game Engine Function: sub_DD1E8
; Address            : 0xDD1E8 - 0xDD252
; =========================================================

DD1E8:  PUSH            {R4-R7,LR}
DD1EA:  ADD             R7, SP, #0xC
DD1EC:  PUSH.W          {R11}
DD1F0:  SUB             SP, SP, #0x10
DD1F2:  MOV             R5, R0
DD1F4:  LDRB            R0, [R2,#8]
DD1F6:  MOV             R4, R2
DD1F8:  ORR.W           R0, R0, #0x10
DD1FC:  CMP             R0, #0x10
DD1FE:  BNE             loc_DD22E
DD200:  LDR             R0, =(aFalse - 0xDD20E); "false" ...
DD202:  CMP             R1, #0
DD204:  LDR             R6, =(aTrue_0 - 0xDD210); "true" ...
DD206:  MOV.W           R1, #6; size_t
DD20A:  ADD             R0, PC; "false"
DD20C:  ADD             R6, PC; "true"
DD20E:  IT EQ
DD210:  MOVEQ           R6, R0
DD212:  MOV             R0, R6; char *
DD214:  BLX             __strlen_chk
DD218:  MOV             R2, R0
DD21A:  STRD.W          R6, R0, [SP,#0x20+var_18]
DD21E:  ADD             R0, SP, #0x20+var_18
DD220:  STR             R0, [SP,#0x20+var_20]
DD222:  MOV             R0, R5
DD224:  MOV             R1, R4
DD226:  MOV             R3, R2
DD228:  BL              sub_DE1CC
DD22C:  B               loc_DD24A
DD22E:  LDRH.W          R0, [R4,#9]
DD232:  MOVS            R3, #0x1C
DD234:  LDR             R2, =(unk_91DB0 - 0xDD23E)
DD236:  AND.W           R0, R3, R0,LSR#2
DD23A:  ADD             R2, PC; unk_91DB0
DD23C:  MOVS            R3, #0
DD23E:  LDR             R2, [R2,R0]
DD240:  MOV             R0, R5
DD242:  STR             R3, [SP,#0x20+var_20]
DD244:  MOV             R3, R4
DD246:  BL              sub_DD260
DD24A:  ADD             SP, SP, #0x10
DD24C:  POP.W           {R11}
DD250:  POP             {R4-R7,PC}
