; =========================================================
; Game Engine Function: sub_180D28
; Address            : 0x180D28 - 0x180DEC
; =========================================================

180D28:  PUSH            {R4-R7,LR}
180D2A:  ADD             R7, SP, #0xC
180D2C:  PUSH.W          {R8-R11}
180D30:  SUB             SP, SP, #4
180D32:  LDR             R5, [R0,#0xC]
180D34:  MOV             R4, R1
180D36:  MOV             R8, R0
180D38:  CMP             R5, #0
180D3A:  BEQ             loc_180DC4
180D3C:  LDR.W           R1, [R8,#8]
180D40:  LDR.W           R0, [R8]
180D44:  LDR             R2, [R4]
180D46:  ADD.W           R9, R1, #1
180D4A:  STR.W           R9, [R8,#8]
180D4E:  CMP             R9, R5
180D50:  STR.W           R2, [R0,R1,LSL#2]
180D54:  ITT EQ
180D56:  MOVEQ.W         R9, #0
180D5A:  STREQ.W         R9, [R8,#8]
180D5E:  LDR.W           R0, [R8,#4]
180D62:  CMP             R9, R0
180D64:  BNE             loc_180DE4
180D66:  MOV             R0, #0x3FFFFFFE
180D6E:  AND.W           R0, R0, R5,LSL#1
180D72:  SUBS.W          R1, R0, R5,LSL#1
180D76:  MOV.W           R0, R5,LSL#3
180D7A:  IT NE
180D7C:  MOVNE           R1, #1
180D7E:  CMP             R1, #0
180D80:  IT NE
180D82:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
180D86:  BLX             j__Znaj; operator new[](uint)
180D8A:  LDR.W           R4, [R8]
180D8E:  MOV             R11, R0
180D90:  MOV.W           R10, R5,LSL#1
180D94:  MOVS            R6, #0
180D96:  ADD.W           R0, R9, R6
180D9A:  MOV             R1, R5
180D9C:  BLX             sub_221798
180DA0:  LDR.W           R0, [R4,R1,LSL#2]
180DA4:  STR.W           R0, [R11,R6,LSL#2]
180DA8:  ADDS            R6, #1
180DAA:  CMP             R5, R6
180DAC:  BNE             loc_180D96
180DAE:  MOVS            R0, #0
180DB0:  ADD.W           R1, R8, #4
180DB4:  STM.W           R1, {R0,R5,R10}
180DB8:  MOV             R0, R4; void *
180DBA:  BLX             j__ZdaPv; operator delete[](void *)
180DBE:  STR.W           R11, [R8]
180DC2:  B               loc_180DE4
180DC4:  MOVS            R0, #0x40 ; '@'; unsigned int
180DC6:  BLX             j__Znaj; operator new[](uint)
180DCA:  MOVS            R1, #1
180DCC:  STR.W           R0, [R8]
180DD0:  STR.W           R1, [R8,#8]
180DD4:  MOVS            R1, #0
180DD6:  STR.W           R1, [R8,#4]
180DDA:  MOVS            R2, #0x10
180DDC:  LDR             R1, [R4]
180DDE:  STR.W           R2, [R8,#0xC]
180DE2:  STR             R1, [R0]
180DE4:  ADD             SP, SP, #4
180DE6:  POP.W           {R8-R11}
180DEA:  POP             {R4-R7,PC}
