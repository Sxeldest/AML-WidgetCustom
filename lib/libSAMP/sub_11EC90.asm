; =========================================================
; Game Engine Function: sub_11EC90
; Address            : 0x11EC90 - 0x11ED14
; =========================================================

11EC90:  PUSH            {R4-R7,LR}
11EC92:  ADD             R7, SP, #0xC
11EC94:  PUSH.W          {R11}
11EC98:  MOV             R5, R0
11EC9A:  LDR             R0, =(off_23494C - 0x11ECA6)
11EC9C:  MOV             R4, R1
11EC9E:  MOVW            R1, #0xA110
11ECA2:  ADD             R0, PC; off_23494C
11ECA4:  MOVT            R1, #0x67 ; 'g'
11ECA8:  LDR             R0, [R0]; dword_23DF24
11ECAA:  LDR             R0, [R0]
11ECAC:  LDR             R6, [R0,R1]
11ECAE:  LDR.W           R0, [R6,#0x220]
11ECB2:  CMP             R0, #0x21 ; '!'
11ECB4:  BLT             loc_11ECCA
11ECB6:  LDR             R1, =(aMatriciesStack - 0x11ECC2); "{}: matricies stack overflow" ...
11ECB8:  MOVS            R0, #3
11ECBA:  LDR             R3, =(aEmuGlpushandlo - 0x11ECC4); "emu_glPushAndLoadMatrix" ...
11ECBC:  MOVS            R2, #0x1C
11ECBE:  ADD             R1, PC; "{}: matricies stack overflow"
11ECC0:  ADD             R3, PC; "emu_glPushAndLoadMatrix"
11ECC2:  BL              sub_11F53C
11ECC6:  LDR.W           R0, [R6,#0x220]
11ECCA:  CMP             R0, #6
11ECCC:  BGT             loc_11ECDC
11ECCE:  LDR             R1, [R5,#4]
11ECD0:  MOV             R0, R4
11ECD2:  POP.W           {R11}
11ECD6:  POP.W           {R4-R7,LR}
11ECDA:  BX              R1
11ECDC:  ADDS            R0, #1
11ECDE:  MOV             R1, R4; src
11ECE0:  CMP             R0, #8
11ECE2:  IT EQ
11ECE4:  MOVEQ           R0, #9
11ECE6:  STR.W           R0, [R6,#0x220]
11ECEA:  ADD.W           R0, R0, R0,LSL#4
11ECEE:  MOVS            R2, #0x44 ; 'D'; n
11ECF0:  ADD.W           R5, R6, R0,LSL#2
11ECF4:  MOV             R0, R5; dest
11ECF6:  BLX             j_memcpy
11ECFA:  MOVS            R0, #1
11ECFC:  STRB.W          R0, [R5,#0x40]
11ED00:  MOV.W           R0, #0x3F800000
11ED04:  STR             R0, [R5,#0x3C]
11ED06:  MOVS            R0, #0
11ED08:  STR             R0, [R5,#0x2C]
11ED0A:  STR             R0, [R5,#0x1C]
11ED0C:  STR             R0, [R5,#0xC]
11ED0E:  POP.W           {R11}
11ED12:  POP             {R4-R7,PC}
