; =========================================================
; Game Engine Function: sub_11EBDC
; Address            : 0x11EBDC - 0x11EC48
; =========================================================

11EBDC:  PUSH            {R4,R5,R7,LR}
11EBDE:  ADD             R7, SP, #8
11EBE0:  MOV             R4, R0
11EBE2:  LDR             R0, =(off_23494C - 0x11EBEC)
11EBE4:  MOVW            R1, #0xA110
11EBE8:  ADD             R0, PC; off_23494C
11EBEA:  MOVT            R1, #0x67 ; 'g'
11EBEE:  LDR             R0, [R0]; dword_23DF24
11EBF0:  LDR             R0, [R0]
11EBF2:  LDR             R5, [R0,R1]
11EBF4:  LDR.W           R0, [R5,#0x220]
11EBF8:  CMP             R0, #0x21 ; '!'
11EBFA:  BLT             loc_11EC10
11EBFC:  LDR             R1, =(aMatriciesStack - 0x11EC08); "{}: matricies stack overflow" ...
11EBFE:  MOVS            R0, #3
11EC00:  LDR             R3, =(aEmuGlpushmatri - 0x11EC0A); "emu_glPushMatrix" ...
11EC02:  MOVS            R2, #0x1C
11EC04:  ADD             R1, PC; "{}: matricies stack overflow"
11EC06:  ADD             R3, PC; "emu_glPushMatrix"
11EC08:  BL              sub_11F470
11EC0C:  LDR.W           R0, [R5,#0x220]
11EC10:  CMP             R0, #6
11EC12:  BGT             loc_11EC1C
11EC14:  LDR             R0, [R4]
11EC16:  POP.W           {R4,R5,R7,LR}
11EC1A:  BX              R0
11EC1C:  ADDS            R2, R0, #1
11EC1E:  ADD.W           R0, R0, R0,LSL#4
11EC22:  CMP             R2, #8
11EC24:  IT EQ
11EC26:  MOVEQ           R2, #9
11EC28:  ADD.W           R1, R5, R0,LSL#2; src
11EC2C:  ADD.W           R0, R2, R2,LSL#4
11EC30:  STR.W           R2, [R5,#0x220]
11EC34:  MOVS            R2, #0x44 ; 'D'; n
11EC36:  ADD.W           R4, R5, R0,LSL#2
11EC3A:  MOV             R0, R4; dest
11EC3C:  BLX             j_memcpy
11EC40:  MOVS            R0, #1
11EC42:  STRB.W          R0, [R4,#0x40]
11EC46:  POP             {R4,R5,R7,PC}
