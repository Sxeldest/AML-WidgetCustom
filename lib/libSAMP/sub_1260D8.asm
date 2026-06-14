; =========================================================
; Game Engine Function: sub_1260D8
; Address            : 0x1260D8 - 0x12613E
; =========================================================

1260D8:  PUSH            {R4,R5,R7,LR}
1260DA:  ADD             R7, SP, #8
1260DC:  SUB             SP, SP, #0x10
1260DE:  MOV             R5, R0
1260E0:  LDR             R0, =(byte_263E08 - 0x1260E8)
1260E2:  MOV             R4, R1
1260E4:  ADD             R0, PC; byte_263E08
1260E6:  LDRB            R0, [R0]
1260E8:  DMB.W           ISH
1260EC:  LSLS            R0, R0, #0x1F
1260EE:  BEQ             loc_126112
1260F0:  CMP             R5, #3
1260F2:  MOV.W           R0, #0xFFFFFFFF
1260F6:  IT LS
1260F8:  CMPLS           R4, #2
1260FA:  BHI             loc_12610E
1260FC:  LDR             R0, =(dword_263E04 - 0x126106)
1260FE:  RSB.W           R1, R5, R5,LSL#3
126102:  ADD             R0, PC; dword_263E04
126104:  LDR             R0, [R0]
126106:  ADD.W           R0, R0, R1,LSL#4
12610A:  LDR.W           R0, [R0,R4,LSL#2]
12610E:  ADD             SP, SP, #0x10
126110:  POP             {R4,R5,R7,PC}
126112:  LDR             R0, =(byte_263E08 - 0x126118)
126114:  ADD             R0, PC; byte_263E08 ; __guard *
126116:  BLX             j___cxa_guard_acquire
12611A:  CMP             R0, #0
12611C:  BEQ             loc_1260F0
12611E:  LDR             R1, =(aLibgtasaSo - 0x126126); "libGTASA.so" ...
126120:  LDR             R2, =(aPointers - 0x126128); "pointers" ...
126122:  ADD             R1, PC; "libGTASA.so"
126124:  ADD             R2, PC; "pointers"
126126:  ADD             R0, SP, #0x18+var_14
126128:  BL              sub_164106
12612C:  LDR             R1, =(dword_263E04 - 0x126136)
12612E:  LDR             R2, [SP,#0x18+var_10]
126130:  LDR             R0, =(byte_263E08 - 0x126138)
126132:  ADD             R1, PC; dword_263E04
126134:  ADD             R0, PC; byte_263E08 ; __guard *
126136:  STR             R2, [R1]
126138:  BLX             j___cxa_guard_release
12613C:  B               loc_1260F0
