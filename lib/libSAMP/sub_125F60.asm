; =========================================================
; Game Engine Function: sub_125F60
; Address            : 0x125F60 - 0x1260AA
; =========================================================

125F60:  PUSH            {R4-R7,LR}
125F62:  ADD             R7, SP, #0xC
125F64:  PUSH.W          {R8,R9,R11}
125F68:  SUB             SP, SP, #8
125F6A:  MOV             R8, R0
125F6C:  LDR             R0, =(off_23494C - 0x125F76)
125F6E:  MOVW            R9, #0x9E94
125F72:  ADD             R0, PC; off_23494C
125F74:  MOVT            R9, #0x67 ; 'g'
125F78:  LDR             R4, [R0]; dword_23DF24
125F7A:  LDR             R6, [R4]
125F7C:  ADD.W           R5, R6, R9
125F80:  MOV             R0, R5
125F82:  BL              sub_1641C4
125F86:  MOVS            R0, #0x70 ; 'p'; size
125F88:  BLX             malloc
125F8C:  CMP             R5, #0
125F8E:  STR.W           R0, [R6,R9]
125F92:  BEQ             loc_12606E
125F94:  LDR             R1, [R4]
125F96:  MOV             R2, #0x6D707C
125F9E:  ADDS            R6, R1, R2
125FA0:  MOVS            R2, #0x38 ; '8'; n
125FA2:  MOV             R1, R6; src
125FA4:  BLX             j_memcpy
125FA8:  LDR             R0, [R5]
125FAA:  MOV             R1, R6; src
125FAC:  MOVS            R2, #0x38 ; '8'; n
125FAE:  ADDS            R0, #0x38 ; '8'; dest
125FB0:  BLX             j_memcpy
125FB4:  LDR             R5, [R4]
125FB6:  MOV             R6, #0x685D3C
125FBE:  ADDS            R0, R5, R6
125FC0:  BL              sub_1641C4
125FC4:  MOVS            R0, #4
125FC6:  MOVS            R2, #0
125FC8:  STR             R0, [R5,R6]
125FCA:  MOVS            R5, #0
125FCC:  LDR             R0, [R4]
125FCE:  LDR             R1, =(sub_1260D8+1 - 0x125FD8)
125FD0:  ADD.W           R0, R0, #0x670000
125FD4:  ADD             R1, PC; sub_1260D8
125FD6:  ADD.W           R0, R0, #0x1B20
125FDA:  BL              sub_164196
125FDE:  LDR             R0, [R4]
125FE0:  MOVW            R3, #0x2728
125FE4:  LDR             R1, =(sub_12616C+1 - 0x125FF2)
125FE6:  MOVT            R3, #0x67 ; 'g'
125FEA:  LDR             R2, =(off_263DB8 - 0x125FF4)
125FEC:  ADD             R0, R3
125FEE:  ADD             R1, PC; sub_12616C
125FF0:  ADD             R2, PC; off_263DB8
125FF2:  BL              sub_164196
125FF6:  LDR             R0, =(byte_263DC0 - 0x125FFC)
125FF8:  ADD             R0, PC; byte_263DC0
125FFA:  LDRB            R0, [R0]
125FFC:  DMB.W           ISH
126000:  LDR             R6, =(dword_263DBC - 0x126006)
126002:  ADD             R6, PC; dword_263DBC
126004:  LSLS            R0, R0, #0x1F
126006:  BEQ             loc_126086
126008:  LDR             R0, [R6]
12600A:  MOVS            R2, #:lower16:(elf_gnu_hash_indexes+0x1948)
12600C:  STR             R5, [SP,#0x20+var_1C]
12600E:  MOVT            R2, #:upper16:(elf_gnu_hash_indexes+0x1948)
126012:  LDR             R1, [R0]
126014:  LDR             R3, [R1,#0x18]
126016:  ADD             R1, SP, #0x20+var_1C
126018:  BLX             R3
12601A:  LDR             R0, [SP,#0x20+var_1C]
12601C:  MOVW            R3, #0xAB23
126020:  LDR             R2, [R4]
126022:  MOVT            R3, #0x60 ; '`'
126026:  LDR             R1, [R0]
126028:  LDR             R6, [R1,#0x18]
12602A:  ADDS            R1, R2, R3
12602C:  BLX             R6
12602E:  MOV             R5, R0
126030:  LDR             R0, [SP,#0x20+var_1C]
126032:  LDR             R1, [R0]
126034:  LDR.W           R2, [R1,#0x360]
126038:  MOV             R1, R5
12603A:  BLX             R2
12603C:  MOVW            R9, #0x1E40
126040:  LDR             R0, [R4]
126042:  MOVT            R9, #0x66 ; 'f'
126046:  ADD.W           R6, R9, #0x2C ; ','
12604A:  ADD             R0, R6
12604C:  BL              sub_1641C4
126050:  LDR             R0, [SP,#0x20+var_1C]
126052:  LDR             R1, [R4]
126054:  LDR             R2, =(sub_126248+1 - 0x12605C)
126056:  LDR             R3, [R0]
126058:  ADD             R2, PC; sub_126248
12605A:  STR             R2, [R1,R6]
12605C:  LDR             R1, [R4]
12605E:  LDR.W           R6, [R3,#0x35C]
126062:  MOVS            R3, #0xD
126064:  ADD.W           R2, R1, R9
126068:  MOV             R1, R5
12606A:  BLX             R6
12606C:  B               loc_12607C
12606E:  LDR             R1, =(aAxl - 0x126078); "AXL" ...
126070:  MOVS            R0, #6; prio
126072:  LDR             R2, =(aCanTAllocateMe - 0x12607A); "Can't allocate memory for extend touch "... ...
126074:  ADD             R1, PC; "AXL"
126076:  ADD             R2, PC; "Can't allocate memory for extend touch "...
126078:  BLX             __android_log_print
12607C:  MOV             R0, R8
12607E:  ADD             SP, SP, #8
126080:  POP.W           {R8,R9,R11}
126084:  POP             {R4-R7,PC}
126086:  LDR             R0, =(byte_263DC0 - 0x12608C)
126088:  ADD             R0, PC; byte_263DC0 ; __guard *
12608A:  BLX             j___cxa_guard_acquire
12608E:  CMP             R0, #0
126090:  BEQ             loc_126008
126092:  LDR             R0, [R4]
126094:  MOV             R1, #0x6D9A38
12609C:  LDR             R1, [R0,R1]
12609E:  LDR             R0, =(byte_263DC0 - 0x1260A6)
1260A0:  STR             R1, [R6]
1260A2:  ADD             R0, PC; byte_263DC0 ; __guard *
1260A4:  BLX             j___cxa_guard_release
1260A8:  B               loc_126008
