; =========================================================
; Game Engine Function: INT123_id3_to_utf8
; Address            : 0x226FF4 - 0x2270B0
; =========================================================

226FF4:  PUSH            {R4-R7,LR}
226FF6:  ADD             R7, SP, #0xC
226FF8:  PUSH.W          {R8-R10}
226FFC:  SUB             SP, SP, #8
226FFE:  LDR.W           R8, [R7,#arg_0]
227002:  MOV             R5, R1
227004:  MOV             R6, R3
227006:  MOV             R4, R2
227008:  MOV             R9, R0
22700A:  CMP             R5, #4
22700C:  BCC             loc_227032
22700E:  CMP.W           R8, #0
227012:  BNE             loc_227082
227014:  LDR.W           R0, [R9]; p
227018:  CMP             R0, #0
22701A:  IT NE
22701C:  BLXNE           free
227020:  MOVS            R0, #0
227022:  STRD.W          R0, R0, [R9]
227026:  STR.W           R0, [R9,#8]
22702A:  ADD             SP, SP, #8
22702C:  POP.W           {R8-R10}
227030:  POP             {R4-R7,PC}
227032:  LDR             R0, =(unk_5F58DC - 0x22703A)
227034:  CMP             R5, #2
227036:  ADD             R0, PC; unk_5F58DC
227038:  LDR.W           R1, [R0,R5,LSL#2]
22703C:  BEQ             loc_22704E
22703E:  CMP             R1, R6
227040:  BCS             loc_22704E
227042:  LDRB            R0, [R4]
227044:  CBNZ            R0, loc_22704E
227046:  SUBS            R6, #1
227048:  ADDS            R4, #1
22704A:  CMP             R6, R1
22704C:  BHI             loc_227042
22704E:  MOV             R0, R6
227050:  BLX             __aeabi_uidivmod
227054:  MOV             R10, R1
227056:  CMP.W           R10, #0
22705A:  BEQ             loc_227066
22705C:  CMP.W           R8, #0
227060:  BNE             loc_227098
227062:  SUB.W           R6, R6, R10
227066:  LDR             R0, =(funcs_227080 - 0x227072)
227068:  MOV             R1, R4
22706A:  MOV             R2, R6
22706C:  MOV             R3, R8
22706E:  ADD             R0, PC; funcs_227080
227070:  LDR.W           R12, [R0,R5,LSL#2]
227074:  MOV             R0, R9
227076:  ADD             SP, SP, #8
227078:  POP.W           {R8-R10}
22707C:  POP.W           {R4-R7,LR}
227080:  BX              R12 ; sub_23AD9C sub_23AECC sub_23B110
227082:  LDR             R0, =(off_677664 - 0x22708E)
227084:  MOVS            R2, #0xE3
227086:  LDR             R1, =(aCProjectsOswra_8 - 0x227090); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
227088:  MOV             R3, R5
22708A:  ADD             R0, PC; off_677664
22708C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22708E:  LDR             R0, [R0]
227090:  LDR             R0, [R0]; stream
227092:  BLX             fprintf
227096:  B               loc_227014
227098:  LDR             R0, =(off_677664 - 0x2270A4)
22709A:  MOVS            R2, #0xF4
22709C:  LDR             R1, =(aCProjectsOswra_9 - 0x2270A6); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22709E:  MOV             R3, R6
2270A0:  ADD             R0, PC; off_677664
2270A2:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2270A4:  LDR             R0, [R0]
2270A6:  LDR             R0, [R0]; stream
2270A8:  STR             R5, [SP,#0x20+var_20]
2270AA:  BLX             fprintf
2270AE:  B               loc_227062
