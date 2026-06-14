; =========================================================
; Game Engine Function: sub_137F94
; Address            : 0x137F94 - 0x13801E
; =========================================================

137F94:  PUSH            {R4-R7,LR}
137F96:  ADD             R7, SP, #0xC
137F98:  PUSH.W          {R11}
137F9C:  SUB             SP, SP, #8
137F9E:  LDR             R5, =(word_3141DC - 0x137FA8)
137FA0:  MOV             R4, R0
137FA2:  LDR             R0, =(unk_3141C8 - 0x137FAE)
137FA4:  ADD             R5, PC; word_3141DC
137FA6:  STRB.W          R1, [R7,#var_11]
137FAA:  ADD             R0, PC; unk_3141C8
137FAC:  SUB.W           R1, R7, #-var_11
137FB0:  LDR             R6, [R5,#(dword_3141E0 - 0x3141DC)]
137FB2:  BL              sub_13934C
137FB6:  CBZ             R0, loc_138016
137FB8:  LDR             R0, [R0,#0xC]
137FBA:  LDR             R0, [R0,#0x74]
137FBC:  CMP             R6, R0
137FBE:  ITT EQ
137FC0:  LDRBEQ          R0, [R5,#(word_3141DC+1 - 0x3141DC)]
137FC2:  CMPEQ           R0, #0
137FC4:  BNE             loc_137FCC
137FC6:  MOVS            R0, #1
137FC8:  BL              sub_138038
137FCC:  LDR             R0, =(unk_3141C8 - 0x137FD6)
137FCE:  SUB.W           R1, R7, #-var_11
137FD2:  ADD             R0, PC; unk_3141C8
137FD4:  BL              sub_13934C
137FD8:  CBZ             R0, loc_138016
137FDA:  LDR             R0, [R0,#0xC]
137FDC:  LDR.W           R1, [R0,#0xA8]
137FE0:  MOV             R0, R4
137FE2:  BL              sub_12BE22
137FE6:  LDR             R0, =(unk_3141C8 - 0x137FF0)
137FE8:  SUB.W           R1, R7, #-var_11
137FEC:  ADD             R0, PC; unk_3141C8
137FEE:  BL              sub_13934C
137FF2:  CBZ             R0, loc_138016
137FF4:  LDR             R1, [R0,#0xC]
137FF6:  MOV             R0, R4
137FF8:  BL              sub_12BE22
137FFC:  LDR             R0, =(unk_3141C8 - 0x138006)
137FFE:  SUB.W           R1, R7, #-var_11
138002:  ADD             R0, PC; unk_3141C8
138004:  BL              sub_1393F2
138008:  MOV             R0, R4
13800A:  BL              sub_137E48
13800E:  ADD             SP, SP, #8
138010:  POP.W           {R11}
138014:  POP             {R4-R7,PC}
138016:  LDR             R0, =(aUnorderedMapAt - 0x13801C); "unordered_map::at: key not found" ...
138018:  ADD             R0, PC; "unordered_map::at: key not found"
13801A:  BL              sub_EE13C
