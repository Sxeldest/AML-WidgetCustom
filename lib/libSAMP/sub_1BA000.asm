; =========================================================
; Game Engine Function: sub_1BA000
; Address            : 0x1BA000 - 0x1BA298
; =========================================================

1BA000:  PUSH            {R4-R11,LR}
1BA004:  ADD             R11, SP, #0x1C
1BA008:  SUB             SP, SP, #0x2C
1BA00C:  MOV             R6, R0
1BA010:  LDR             R0, =(__stack_chk_guard_ptr - 0x1BA024)
1BA014:  LDR             R1, =(dword_382774 - 0x1BA03C)
1BA018:  MOV             R2, #0
1BA01C:  LDR             R0, [PC,R0]; __stack_chk_guard
1BA020:  LDR             R0, [R0]
1BA024:  STR             R0, [R11,#var_20]
1BA028:  MOV             R0, #0x28958
1BA030:  LDR             R9, [R6,R0]
1BA034:  LDR             R0, [PC,R1]; dword_382774
1BA038:  LDR             R1, [R0]
1BA03C:  LDR             R3, [R1,#0x10]
1BA040:  ADD             R1, SP, #0x48+var_24
1BA044:  BLX             R3
1BA048:  LDR             R0, [SP,#0x48+var_24]
1BA04C:  MOV             R8, #2
1BA050:  LDR             R1, [R0]
1BA054:  LDR             R2, [R1,#0x4C]
1BA058:  MOV             R1, #2
1BA05C:  BLX             R2
1BA060:  LDR             R10, [R6,#0xC]
1BA064:  STR             R10, [SP,#0x48+var_34]
1BA068:  LDR             R0, [R6,#0x18]
1BA06C:  BL              j_ChannelsFromDevFmt
1BA070:  CMP             R0, #1
1BA074:  LDR             R0, [R6,#0x1C]
1BA078:  MOV             R7, #3
1BA07C:  MOVWEQ          R7, #2
1BA080:  BL              j_BytesFromDevFmt
1BA084:  CMP             R0, #1
1BA088:  LDR             R0, =(dword_382784 - 0x1BA09C)
1BA08C:  MOVWEQ          R8, #3
1BA090:  MOV             R3, R10
1BA094:  LDR             R2, [PC,R0]; dword_382784
1BA098:  LDR             R0, [SP,#0x48+var_24]
1BA09C:  LDR             R1, [R0]
1BA0A0:  LDR             R5, [R1,#0x204]
1BA0A4:  LDR             R1, =(dword_38277C - 0x1BA0B0)
1BA0A8:  ADD             R4, PC, R1; dword_38277C
1BA0AC:  LDR             R1, [R4]
1BA0B0:  STMEA           SP, {R7,R8}
1BA0B4:  BLX             R5
1BA0B8:  MOV             R10, R0
1BA0BC:  LDR             R0, [R6,#0x18]
1BA0C0:  LDR             R5, [R6,#0x1C]
1BA0C4:  BL              j_ChannelsFromDevFmt
1BA0C8:  STR             R0, [SP,#0x48+var_2C]
1BA0CC:  MOV             R0, R5
1BA0D0:  BL              j_BytesFromDevFmt
1BA0D4:  STR             R0, [SP,#0x48+var_30]
1BA0D8:  MOV             R12, #1
1BA0DC:  LDR             R0, =(dword_382780 - 0x1BA0E8)
1BA0E0:  LDR             R2, [PC,R0]; dword_382780
1BA0E4:  LDR             R0, [SP,#0x48+var_24]
1BA0E8:  LDR             R1, [R0]
1BA0EC:  LDR             R5, [R1,#0x70]
1BA0F0:  STR             R6, [SP,#0x48+var_28]
1BA0F4:  LDR             R3, [R6,#0x14]
1BA0F8:  LDR             R1, [R4]
1BA0FC:  LDR             R6, [SP,#0x48+var_34]
1BA100:  MUL             R3, R3, R10
1BA104:  STMEA           SP, {R6-R8}
1BA108:  STR             R3, [SP,#0x48+var_3C]
1BA10C:  MOV             R3, #3
1BA110:  STR             R12, [SP,#0x48+var_38]
1BA114:  BLX             R5
1BA118:  MOV             R8, R0
1BA11C:  LDR             R0, =(dword_382788 - 0x1BA12C)
1BA120:  LDR             R2, [R4]
1BA124:  LDR             R3, [PC,R0]; dword_382788
1BA128:  LDR             R0, [SP,#0x48+var_24]
1BA12C:  LDR             R1, [R0]
1BA130:  LDR             R7, [R1,#0x16C]
1BA134:  MOV             R1, R8
1BA138:  BLX             R7
1BA13C:  LDR             R0, [SP,#0x48+var_2C]
1BA140:  LDR             R1, [SP,#0x48+var_30]
1BA144:  MUL             R1, R1, R0
1BA148:  MOV             R0, R10
1BA14C:  BL              sub_220A6C
1BA150:  MOV             R7, R0
1BA154:  LDR             R0, [SP,#0x48+var_24]
1BA158:  LDR             R1, [R0]
1BA15C:  LDR             R2, [R1,#0x2C0]
1BA160:  MOV             R1, R10
1BA164:  BLX             R2
1BA168:  MOV             R4, R0
1BA16C:  B               loc_1BA1CC
1BA170:  LDR             R0, [SP,#0x48+var_28]
1BA174:  MOV             R1, R5
1BA178:  MOV             R2, R7
1BA17C:  BL              j_aluMixData
1BA180:  LDR             R0, [SP,#0x48+var_24]
1BA184:  MOV             R2, R5
1BA188:  MOV             R3, #0
1BA18C:  LDR             R1, [R0]
1BA190:  LDR             R6, [R1,#0x37C]
1BA194:  MOV             R1, R4
1BA198:  BLX             R6
1BA19C:  LDR             R0, [SP,#0x48+var_24]
1BA1A0:  LDR             R2, =(dword_382794 - 0x1BA1B0)
1BA1A4:  LDR             R1, [R0]
1BA1A8:  LDR             R3, [PC,R2]; dword_382794
1BA1AC:  LDR             R2, =(dword_38277C - 0x1BA1C4)
1BA1B0:  LDR             R6, [R1,#0x13C]
1BA1B4:  MOV             R1, #0
1BA1B8:  STR             R4, [SP,#0x48+var_48]
1BA1BC:  LDR             R2, [PC,R2]; dword_38277C
1BA1C0:  STMFA           SP, {R1,R10}
1BA1C4:  MOV             R1, R8
1BA1C8:  BLX             R6
1BA1CC:  LDR             R2, [R9,#4]
1BA1D0:  LDR             R0, [SP,#0x48+var_24]
1BA1D4:  CMP             R2, #0
1BA1D8:  LDR             R1, [R0]
1BA1DC:  BEQ             loc_1BA20C
1BA1E0:  LDR             R3, [R1,#0x378]
1BA1E4:  MOV             R1, R4
1BA1E8:  MOV             R2, #0
1BA1EC:  BLX             R3
1BA1F0:  MOV             R5, R0
1BA1F4:  CMP             R5, #0
1BA1F8:  BNE             loc_1BA170
1BA1FC:  ADR             R0, aThreadFunction; "thread_function"
1BA200:  ADR             R1, aFailedToGetPoi; "Failed to get pointer to array bytes"
1BA204:  BL              j_al_print
1BA208:  B               loc_1BA1CC
1BA20C:  LDR             R7, =(dword_38277C - 0x1BA21C)
1BA210:  LDR             R2, =(dword_38278C - 0x1BA228)
1BA214:  ADD             R4, PC, R7; dword_38277C
1BA218:  LDR             R6, [R1,#0x16C]
1BA21C:  MOV             R1, R8
1BA220:  LDR             R3, [PC,R2]; dword_38278C
1BA224:  LDR             R2, [R4]
1BA228:  BLX             R6
1BA22C:  LDR             R0, [SP,#0x48+var_24]
1BA230:  LDR             R1, =(dword_382790 - 0x1BA244)
1BA234:  LDR             R2, [R4]
1BA238:  LDR             R7, [R0]
1BA23C:  LDR             R3, [PC,R1]; dword_382790
1BA240:  MOV             R1, R8
1BA244:  LDR             R7, [R7,#0x16C]
1BA248:  BLX             R7
1BA24C:  LDR             R0, [SP,#0x48+var_24]
1BA250:  LDR             R1, [R0]
1BA254:  LDR             R2, [R1,#0x50]
1BA258:  MOV             R1, #0
1BA25C:  BLX             R2
1BA260:  LDR             R0, =(dword_382774 - 0x1BA26C)
1BA264:  LDR             R0, [PC,R0]; dword_382774
1BA268:  LDR             R1, [R0]
1BA26C:  LDR             R1, [R1,#0x14]
1BA270:  BLX             R1
1BA274:  LDR             R0, =(__stack_chk_guard_ptr - 0x1BA284)
1BA278:  LDR             R1, [R11,#var_20]
1BA27C:  LDR             R0, [PC,R0]; __stack_chk_guard
1BA280:  LDR             R0, [R0]
1BA284:  SUBS            R0, R0, R1
1BA288:  MOVEQ           R0, #0
1BA28C:  SUBEQ           SP, R11, #0x1C
1BA290:  POPEQ           {R4-R11,PC}
1BA294:  BL              __stack_chk_fail
