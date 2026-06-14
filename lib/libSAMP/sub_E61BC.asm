; =========================================================
; Game Engine Function: sub_E61BC
; Address            : 0xE61BC - 0xE6292
; =========================================================

E61BC:  PUSH            {R4-R7,LR}
E61BE:  ADD             R7, SP, #0xC
E61C0:  PUSH.W          {R11}
E61C4:  MOV             R4, R0
E61C6:  LDR             R0, [R0,#0x40]
E61C8:  CBZ             R0, loc_E61D4
E61CA:  MOVS            R6, #0
E61CC:  MOV             R0, R6; jumptable 000E61EA default case
E61CE:  POP.W           {R11}
E61D2:  POP             {R4-R7,PC}
E61D4:  MOV             R5, R2
E61D6:  LDR             R2, =(aWe - 0xE61E2); "we" ...
E61D8:  BIC.W           R0, R5, #2
E61DC:  MOVS            R6, #0
E61DE:  ADD             R2, PC; "we"
E61E0:  CMP             R0, #0x2F ; '/'
E61E2:  BGT             loc_E6214
E61E4:  SUBS            R0, #1; switch 29 cases
E61E6:  CMP             R0, #0x1C
E61E8:  BHI             def_E61EA; jumptable 000E61EA default case
E61EA:  TBB.W           [PC,R0]; switch jump
E61EE:  DCB 0x10; jump table for switch statement
E61EF:  DCB 0xF
E61F0:  DCB 0xF
E61F1:  DCB 0xF
E61F2:  DCB 0x23
E61F3:  DCB 0xF
E61F4:  DCB 0xF
E61F5:  DCB 0x2C
E61F6:  DCB 0x26
E61F7:  DCB 0xF
E61F8:  DCB 0xF
E61F9:  DCB 0x2F
E61FA:  DCB 0x29
E61FB:  DCB 0xF
E61FC:  DCB 0xF
E61FD:  DCB 0x3A
E61FE:  DCB 0x10
E61FF:  DCB 0xF
E6200:  DCB 0xF
E6201:  DCB 0x19
E6202:  DCB 0x23
E6203:  DCB 0xF
E6204:  DCB 0xF
E6205:  DCB 0x32
E6206:  DCB 0x26
E6207:  DCB 0xF
E6208:  DCB 0xF
E6209:  DCB 0x35
E620A:  DCB 0x29
E620B:  ALIGN 2
E620C:  B               def_E61EA; jumptable 000E61EA cases 2-4,6,7,10,11,14,15,18,19,22,23,26,27
E620E:  LDR             R2, =(aAe - 0xE6214); jumptable 000E61EA cases 1,17
E6210:  ADD             R2, PC; "ae"
E6212:  B               loc_E6262; jumptable 000E61EA case 16
E6214:  CMP             R0, #0x37 ; '7'
E6216:  BGT             loc_E6226
E6218:  CMP             R0, #0x30 ; '0'
E621A:  BEQ             loc_E6262; jumptable 000E61EA case 16
E621C:  CMP             R0, #0x34 ; '4'
E621E:  BNE             def_E61EA; jumptable 000E61EA default case
E6220:  LDR             R2, =(aWbe - 0xE6226); jumptable 000E61EA case 20
E6222:  ADD             R2, PC; "wbe"
E6224:  B               loc_E6262; jumptable 000E61EA case 16
E6226:  CMP             R0, #0x38 ; '8'
E6228:  BEQ             loc_E625E
E622A:  CMP             R0, #0x3C ; '<'
E622C:  BNE             def_E61EA; jumptable 000E61EA default case
E622E:  LDR             R2, =(aWBe - 0xE6234); "w+be" ...
E6230:  ADD             R2, PC; "w+be"
E6232:  B               loc_E6262; jumptable 000E61EA case 16
E6234:  LDR             R2, =(aAbe - 0xE623A); jumptable 000E61EA cases 5,21
E6236:  ADD             R2, PC; "abe"
E6238:  B               loc_E6262; jumptable 000E61EA case 16
E623A:  LDR             R2, =(aAE - 0xE6240); jumptable 000E61EA cases 9,25
E623C:  ADD             R2, PC; "a+e"
E623E:  B               loc_E6262; jumptable 000E61EA case 16
E6240:  LDR             R2, =(aABe - 0xE6246); jumptable 000E61EA cases 13,29
E6242:  ADD             R2, PC; "a+be"
E6244:  B               loc_E6262; jumptable 000E61EA case 16
E6246:  LDR             R2, =(aRe - 0xE624C); jumptable 000E61EA case 8
E6248:  ADD             R2, PC; "re"
E624A:  B               loc_E6262; jumptable 000E61EA case 16
E624C:  LDR             R2, =(aRbe - 0xE6252); jumptable 000E61EA case 12
E624E:  ADD             R2, PC; "rbe"
E6250:  B               loc_E6262; jumptable 000E61EA case 16
E6252:  LDR             R2, =(aRE - 0xE6258); jumptable 000E61EA case 24
E6254:  ADD             R2, PC; "r+e"
E6256:  B               loc_E6262; jumptable 000E61EA case 16
E6258:  LDR             R2, =(aRBe - 0xE625E); jumptable 000E61EA case 28
E625A:  ADD             R2, PC; "r+be"
E625C:  B               loc_E6262; jumptable 000E61EA case 16
E625E:  LDR             R2, =(aWE - 0xE6264); "w+e" ...
E6260:  ADD             R2, PC; "w+e"
E6262:  MOV             R0, R1; jumptable 000E61EA case 16
E6264:  MOV             R1, R2; modes
E6266:  BLX             fopen
E626A:  CMP             R0, #0
E626C:  STR             R0, [R4,#0x40]
E626E:  BEQ.W           loc_E61CA
E6272:  LSLS            R1, R5, #0x1E
E6274:  STR             R5, [R4,#0x50]
E6276:  BPL             loc_E628E
E6278:  MOVS            R1, #0; off
E627A:  MOVS            R2, #2; whence
E627C:  MOVS            R6, #0
E627E:  BLX             fseek
E6282:  CBZ             R0, loc_E628E
E6284:  LDR             R0, [R4,#0x40]; stream
E6286:  BLX             fclose
E628A:  STR             R6, [R4,#0x40]
E628C:  B               def_E61EA; jumptable 000E61EA default case
E628E:  MOV             R6, R4
E6290:  B               def_E61EA; jumptable 000E61EA default case
