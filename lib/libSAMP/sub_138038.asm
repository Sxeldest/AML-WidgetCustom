; =========================================================
; Game Engine Function: sub_138038
; Address            : 0x138038 - 0x1380D0
; =========================================================

138038:  PUSH            {R4-R7,LR}
13803A:  ADD             R7, SP, #0xC
13803C:  PUSH.W          {R8,R9,R11}
138040:  MOV             R8, R0
138042:  LDR             R0, =(unk_3141C8 - 0x13804A)
138044:  LDR             R2, =(word_3141DC - 0x13804C)
138046:  ADD             R0, PC; unk_3141C8
138048:  ADD             R2, PC; word_3141DC
13804A:  LDR             R4, [R0,#(dword_3141D0 - 0x3141C8)]
13804C:  STRB.W          R8, [R2,#(word_3141DC+1 - 0x3141DC)]
138050:  CBZ             R4, loc_13809A
138052:  MOV             R9, R2
138054:  LDR             R5, [R4,#0xC]
138056:  LDR.W           R6, [R5,#0xA8]
13805A:  LDRB.W          R0, [R6,#0x50]
13805E:  CMP             R0, R8
138060:  BEQ             loc_138070
138062:  LDR             R0, [R6]
138064:  MOV             R1, R8
138066:  LDR             R2, [R0,#0x24]
138068:  MOV             R0, R6
13806A:  BLX             R2
13806C:  LDR             R5, [R4,#0xC]
13806E:  MOV             R2, R9
138070:  LDR             R0, [R5,#0x74]
138072:  LDR             R1, [R2,#(dword_3141E0 - 0x3141DC)]
138074:  STRB.W          R8, [R6,#0x50]
138078:  CMP             R1, R0
13807A:  BEQ             loc_138094
13807C:  LDRB.W          R0, [R5,#0x50]
138080:  CMP             R0, R8
138082:  BEQ             loc_138090
138084:  LDR             R0, [R5]
138086:  MOV             R1, R8
138088:  LDR             R2, [R0,#0x24]
13808A:  MOV             R0, R5
13808C:  BLX             R2
13808E:  MOV             R2, R9
138090:  STRB.W          R8, [R5,#0x50]
138094:  LDR             R4, [R4]
138096:  CMP             R4, #0
138098:  BNE             loc_138054
13809A:  CMP.W           R8, #0
13809E:  BEQ             loc_1380B8
1380A0:  LDR             R0, [R2,#(dword_3141E0 - 0x3141DC)]
1380A2:  CBZ             R0, loc_1380A8
1380A4:  MOVS            R0, #0
1380A6:  STR             R0, [R2,#(dword_3141E0 - 0x3141DC)]
1380A8:  LDRB            R0, [R2,#(byte_3141E4 - 0x3141DC)]
1380AA:  CBZ             R0, loc_1380B0
1380AC:  MOVS            R0, #0
1380AE:  STRB            R0, [R2,#(byte_3141E4 - 0x3141DC)]
1380B0:  LDRB            R0, [R2]
1380B2:  CBZ             R0, loc_1380B8
1380B4:  MOVS            R0, #0
1380B6:  STRB            R0, [R2]
1380B8:  LDR             R0, =(off_234A24 - 0x1380BE)
1380BA:  ADD             R0, PC; off_234A24
1380BC:  LDR             R0, [R0]; dword_23DEEC
1380BE:  LDR             R0, [R0]
1380C0:  LDR.W           R0, [R0,#0x84]
1380C4:  POP.W           {R8,R9,R11}
1380C8:  POP.W           {R4-R7,LR}
1380CC:  B.W             sub_137E48
