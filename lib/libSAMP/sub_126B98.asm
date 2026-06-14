; =========================================================
; Game Engine Function: sub_126B98
; Address            : 0x126B98 - 0x126C34
; =========================================================

126B98:  PUSH            {R4-R7,LR}
126B9A:  ADD             R7, SP, #0xC
126B9C:  PUSH.W          {R11}
126BA0:  MOV             R4, R0
126BA2:  LDR             R0, =(off_23494C - 0x126BAA)
126BA4:  LDR             R1, [R4,#0x14]
126BA6:  ADD             R0, PC; off_23494C
126BA8:  LDR             R5, [R0]; dword_23DF24
126BAA:  LDR             R0, [R5]
126BAC:  ADD.W           R0, R0, #0x670000
126BB0:  ADD.W           R0, R0, #0x10C
126BB4:  MOVS            R2, #0
126BB6:  BL              sub_164196
126BBA:  LDR             R0, [R5]
126BBC:  MOVW            R2, #0xE870
126BC0:  LDR             R1, [R4,#0x18]
126BC2:  MOVT            R2, #0x66 ; 'f'
126BC6:  ADD             R0, R2
126BC8:  MOVS            R2, #0
126BCA:  BL              sub_164196
126BCE:  LDR             R0, [R5]
126BD0:  MOV             R6, #0x674568
126BD8:  LDR             R1, [R4,#0x1C]
126BDA:  ADD             R0, R6
126BDC:  ADD.W           R0, R0, #0x468
126BE0:  MOVS            R2, #0
126BE2:  BL              sub_164196
126BE6:  LDR             R0, [R5]
126BE8:  LDR             R1, [R4,#0x20]
126BEA:  ADD             R0, R6
126BEC:  MOVS            R2, #0
126BEE:  BL              sub_164196
126BF2:  LDR             R0, [R5]
126BF4:  MOVW            R2, #0x375C
126BF8:  LDR             R1, [R4,#0x24]
126BFA:  MOVT            R2, #0x67 ; 'g'
126BFE:  ADD             R0, R2
126C00:  MOVS            R2, #0
126C02:  BL              sub_164196
126C06:  LDR             R1, [R5]
126C08:  MOV             R6, #0x678ED0
126C10:  LDR             R0, [R1,R6]; void *
126C12:  CBZ             R0, loc_126C1E
126C14:  BLX             j__ZdlPv; operator delete(void *)
126C18:  LDR             R0, [R5]
126C1A:  ADD             R0, R6
126C1C:  B               loc_126C20
126C1E:  ADDS            R0, R1, R6
126C20:  LDR             R1, [R4,#0x10]
126C22:  STR             R1, [R0]
126C24:  ADDS            R0, R4, #4
126C26:  LDR             R1, [R4,#8]
126C28:  BL              sub_127108
126C2C:  MOV             R0, R4
126C2E:  POP.W           {R11}
126C32:  POP             {R4-R7,PC}
