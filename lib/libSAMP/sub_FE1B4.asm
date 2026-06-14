; =========================================================
; Game Engine Function: sub_FE1B4
; Address            : 0xFE1B4 - 0xFE294
; =========================================================

FE1B4:  PUSH            {R4-R7,LR}
FE1B6:  ADD             R7, SP, #0xC
FE1B8:  PUSH.W          {R8-R11}
FE1BC:  SUB             SP, SP, #4
FE1BE:  MOV             R8, R0
FE1C0:  LDR             R0, =(aGtaInt - 0xFE1C6); "gta_int" ...
FE1C2:  ADD             R0, PC; "gta_int"
FE1C4:  BL              sub_163A6C
FE1C8:  LDR             R4, =(dword_247594 - 0xFE1D0)
FE1CA:  LDR             R1, =(aGta3 - 0xFE1D2); "gta3" ...
FE1CC:  ADD             R4, PC; dword_247594
FE1CE:  ADD             R1, PC; "gta3"
FE1D0:  STR             R0, [R4]
FE1D2:  MOV             R0, R1
FE1D4:  BL              sub_163A6C
FE1D8:  STR             R0, [R4,#(dword_247598 - 0x247594)]
FE1DA:  MOV             R11, R4
FE1DC:  LDR             R6, =(off_22AF48 - 0xFE1E6); "samp" ...
FE1DE:  MOVS            R5, #0
FE1E0:  LDR             R0, =(aAxl - 0xFE1E8); "AXL" ...
FE1E2:  ADD             R6, PC; off_22AF48
FE1E4:  ADD             R0, PC; "AXL"
FE1E6:  MOV             R9, R0
FE1E8:  LDR             R0, =(aInvalidTexture - 0xFE1EE); "Invalid texture database. Can't find \""... ...
FE1EA:  ADD             R0, PC; "Invalid texture database. Can't find \""...
FE1EC:  MOV             R10, R0
FE1EE:  LDR.W           R4, [R6,R5,LSL#2]
FE1F2:  MOV             R0, R4
FE1F4:  BL              sub_163A6C
FE1F8:  MOV             R1, R11
FE1FA:  ADD.W           R1, R11, R5,LSL#2
FE1FE:  STR             R0, [R1,#8]
FE200:  CBNZ            R0, loc_FE20E
FE202:  MOVS            R0, #6; prio
FE204:  MOV             R1, R9; tag
FE206:  MOV             R2, R10; fmt
FE208:  MOV             R3, R4
FE20A:  BLX             __android_log_print
FE20E:  ADDS            R5, #1
FE210:  CMP             R5, #0xE
FE212:  BNE             loc_FE1EE
FE214:  LDR             R0, =(off_234AC8 - 0xFE21A)
FE216:  ADD             R0, PC; off_234AC8
FE218:  LDR             R0, [R0]; dword_381A9C
FE21A:  LDR             R0, [R0]
FE21C:  LDR.W           R10, [R0]
FE220:  CMP.W           R10, #0
FE224:  BEQ             loc_FE27A
FE226:  LDR             R0, =(off_234ACC - 0xFE22E)
FE228:  MOV             R4, R11
FE22A:  ADD             R0, PC; off_234ACC
FE22C:  LDR             R0, [R0]; dword_381A98
FE22E:  LDR             R0, [R0]
FE230:  LDR.W           R9, [R0]
FE234:  LDR             R5, [R4]
FE236:  CBZ             R5, loc_FE26E
FE238:  CMP.W           R10, #1
FE23C:  MOV             R0, R9
FE23E:  MOV             R1, R10
FE240:  BLT             loc_FE24E
FE242:  LDR             R2, [R0]
FE244:  CMP             R2, R5
FE246:  BEQ             loc_FE264
FE248:  ADDS            R0, #4
FE24A:  SUBS            R1, #1
FE24C:  BNE             loc_FE242
FE24E:  MOV             R0, R5
FE250:  BL              sub_16398C
FE254:  MOV             R0, R8
FE256:  BL              sub_1639EC
FE25A:  MOV             R6, R0
FE25C:  MOV             R0, R5
FE25E:  BL              sub_1639BC
FE262:  B               loc_FE26C
FE264:  MOV             R0, R8
FE266:  BL              sub_FE160
FE26A:  MOV             R6, R0
FE26C:  CBNZ            R6, loc_FE28A
FE26E:  MOV             R0, R11
FE270:  ADDS            R4, #4
FE272:  ADD.W           R0, R11, #0x40 ; '@'
FE276:  CMP             R4, R0
FE278:  BNE             loc_FE234
FE27A:  MOV             R0, R8
FE27C:  ADD             SP, SP, #4
FE27E:  POP.W           {R8-R11}
FE282:  POP.W           {R4-R7,LR}
FE286:  B.W             sub_FE160
FE28A:  MOV             R0, R6
FE28C:  ADD             SP, SP, #4
FE28E:  POP.W           {R8-R11}
FE292:  POP             {R4-R7,PC}
