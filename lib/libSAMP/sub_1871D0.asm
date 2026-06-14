; =========================================================
; Game Engine Function: sub_1871D0
; Address            : 0x1871D0 - 0x1872BC
; =========================================================

1871D0:  PUSH            {R4-R7,LR}
1871D2:  ADD             R7, SP, #0xC
1871D4:  PUSH.W          {R8-R11}
1871D8:  SUB             SP, SP, #4
1871DA:  MOVS            R5, #0
1871DC:  MOVS            R4, #0x10
1871DE:  MOV             R11, R0
1871E0:  STR             R4, [R0,#0x18]
1871E2:  STRD.W          R5, R5, [R0]
1871E6:  STR             R5, [R0,#8]
1871E8:  MOVS            R0, #0x40 ; '@'; unsigned int
1871EA:  BLX             j__Znaj; operator new[](uint)
1871EE:  MOV             R10, R11
1871F0:  VMOV.I32        Q8, #0
1871F4:  STR.W           R5, [R10,#0x1C]!
1871F8:  STRD.W          R0, R5, [R10,#-0x10]
1871FC:  ADD.W           R0, R10, #0x28 ; '('
187200:  VST1.32         {D16-D17}, [R0]!
187204:  STR.W           R5, [R10,#-8]
187208:  STRD.W          R5, R5, [R10,#4]
18720C:  STR.W           R4, [R10,#0x48]
187210:  STR             R5, [R0]
187212:  MOVS            R0, #0x40 ; '@'; unsigned int
187214:  BLX             j__Znaj; operator new[](uint)
187218:  MOVS            R6, #0
18721A:  MOV.W           R8, #0x10
18721E:  MOVS            R5, #0
187220:  STRD.W          R0, R6, [R11,#0x58]
187224:  STR.W           R6, [R11,#0x60]
187228:  ADD.W           R4, R11, R5
18722C:  STR.W           R8, [R4,#0x74]
187230:  MOVS            R0, #0x40 ; '@'; unsigned int
187232:  BLX             j__Znaj; operator new[](uint)
187236:  ADDS            R5, #0x10
187238:  STRD.W          R0, R6, [R4,#0x68]
18723C:  CMP             R5, #0x40 ; '@'
18723E:  STR             R6, [R4,#0x70]
187240:  BNE             loc_187228
187242:  MOVS            R0, #0
187244:  MOV             R6, R11
187246:  STR.W           R0, [R6,#0xA8]!
18724A:  ADD.W           R8, R6, #0x18
18724E:  STRD.W          R0, R0, [R6,#4]
187252:  MOV             R0, R8; int
187254:  MOV.W           R1, #0x230; size
187258:  BL              sub_17D4C0
18725C:  MOVS            R0, #0x10
18725E:  STR.W           R0, [R11,#0x3BC]
187262:  MOVS            R0, #0x80; unsigned int
187264:  BLX             j__Znaj; operator new[](uint)
187268:  ADDW            R9, R11, #0x414
18726C:  MOVS            R4, #0
18726E:  STRD.W          R0, R4, [R11,#0x3B0]
187272:  STR.W           R4, [R11,#0x3B8]
187276:  MOV             R0, R9
187278:  BL              sub_17E0B0
18727C:  ADD.W           R5, R11, #0x6A0
187280:  STR.W           R4, [R11,#0x684]
187284:  STR.W           R4, [R11,#0x688]
187288:  STR.W           R4, [R11,#0x68C]
18728C:  MOV             R0, R5
18728E:  BL              sub_17E3A0
187292:  MOVW            R0, #0x2710
187296:  VMOV.I32        Q8, #0
18729A:  STR.W           R0, [R11,#0x2E0]
18729E:  MOVS            R0, #0
1872A0:  STRB.W          R0, [R11,#0x680]
1872A4:  ADD.W           R0, R11, #0x690
1872A8:  VST1.64         {D16-D17}, [R0]
1872AC:  MOV             R0, R11
1872AE:  BL              sub_187396
1872B2:  MOV             R0, R11
1872B4:  ADD             SP, SP, #4
1872B6:  POP.W           {R8-R11}
1872BA:  POP             {R4-R7,PC}
