; =========================================================
; Game Engine Function: sub_10300C
; Address            : 0x10300C - 0x10304A
; =========================================================

10300C:  PUSH            {R7,LR}
10300E:  MOV             R7, SP
103010:  LDR             R1, =(off_234A74 - 0x103016)
103012:  ADD             R1, PC; off_234A74
103014:  LDR             R1, [R1]; dword_2402E4
103016:  LDR             R1, [R1]
103018:  LDR             R1, [R1]
10301A:  CBZ             R1, loc_10302C
10301C:  LDR             R0, =(unk_25B22C - 0x103026)
10301E:  RSB.W           R1, R1, R1,LSL#3
103022:  ADD             R0, PC; unk_25B22C
103024:  ADD.W           R0, R0, R1,LSL#2
103028:  LDRB            R0, [R0,#5]
10302A:  POP             {R7,PC}
10302C:  LDR             R1, =(off_25C980 - 0x103032)
10302E:  ADD             R1, PC; off_25C980
103030:  LDR             R1, [R1]
103032:  BLX             R1
103034:  LDR             R1, =(word_25B210 - 0x103040)
103036:  CMP             R0, #0
103038:  IT NE
10303A:  MOVNE           R0, #1
10303C:  ADD             R1, PC; word_25B210
10303E:  STRB            R0, [R1,#(byte_25B215 - 0x25B210)]
103040:  ITEE EQ
103042:  MOVEQ           R0, #0
103044:  MOVNE           R0, #1
103046:  STRBNE          R0, [R1,#(dword_25B223+2 - 0x25B210)]
103048:  POP             {R7,PC}
