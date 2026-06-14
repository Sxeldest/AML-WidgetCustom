; =========================================================
; Game Engine Function: sub_10FFF4
; Address            : 0x10FFF4 - 0x110034
; =========================================================

10FFF4:  PUSH            {R7,LR}
10FFF6:  MOV             R7, SP
10FFF8:  LDR             R0, =(byte_263398 - 0x10FFFE)
10FFFA:  ADD             R0, PC; byte_263398
10FFFC:  LDRB            R0, [R0]
10FFFE:  DMB.W           ISH
110002:  LSLS            R0, R0, #0x1F
110004:  IT NE
110006:  POPNE           {R7,PC}
110008:  LDR             R0, =(byte_263398 - 0x11000E)
11000A:  ADD             R0, PC; byte_263398 ; __guard *
11000C:  BLX             j___cxa_guard_acquire
110010:  CBZ             R0, locret_110032
110012:  LDR             R1, =(unk_263380 - 0x11001E)
110014:  MOVS            R3, #0
110016:  LDR             R0, =(sub_10FF44+1 - 0x110020)
110018:  LDR             R2, =(off_22A540 - 0x110022)
11001A:  ADD             R1, PC; unk_263380 ; obj
11001C:  ADD             R0, PC; sub_10FF44 ; lpfunc
11001E:  ADD             R2, PC; off_22A540 ; lpdso_handle
110020:  STR             R3, [R1,#(dword_263390 - 0x263380)]
110022:  BLX             __cxa_atexit
110026:  LDR             R0, =(byte_263398 - 0x11002C)
110028:  ADD             R0, PC; byte_263398
11002A:  POP.W           {R7,LR}
11002E:  B.W             sub_2242B0
110032:  POP             {R7,PC}
