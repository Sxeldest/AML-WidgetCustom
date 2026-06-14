; =========================================================
; Game Engine Function: sub_129118
; Address            : 0x129118 - 0x1291DA
; =========================================================

129118:  PUSH            {R4-R7,LR}
12911A:  ADD             R7, SP, #0xC
12911C:  PUSH.W          {R8}
129120:  MOV             R4, R0
129122:  LDR             R0, =(off_23494C - 0x12912C)
129124:  MOVW            R3, #0x90C
129128:  ADD             R0, PC; off_23494C
12912A:  MOVT            R3, #0x67 ; 'g'
12912E:  LDR             R5, [R0]; dword_23DF24
129130:  LDR             R0, [R5]
129132:  LDR             R1, =(sub_129220+1 - 0x12913C)
129134:  LDR             R2, =(off_31413C - 0x12913E)
129136:  ADD             R0, R3
129138:  ADD             R1, PC; sub_129220
12913A:  ADD             R2, PC; off_31413C
12913C:  BL              sub_164196
129140:  LDR             R0, [R5]
129142:  MOVW            R8, #0x11D4
129146:  LDR             R1, =(loc_129304+1 - 0x129154)
129148:  MOVT            R8, #0x67 ; 'g'
12914C:  LDR             R2, =(off_314140 - 0x12915A)
12914E:  ADD             R0, R8
129150:  ADD             R1, PC; loc_129304
129152:  ADD.W           R0, R0, #0xEC0
129156:  ADD             R2, PC; off_314140
129158:  BL              sub_164196
12915C:  LDR             R0, [R5]
12915E:  MOVW            R6, #0xDDDC
129162:  LDR             R1, =(loc_129318+1 - 0x129170)
129164:  MOVT            R6, #0x66 ; 'f'
129168:  LDR             R2, =(off_314144 - 0x129172)
12916A:  ADD             R0, R6
12916C:  ADD             R1, PC; loc_129318
12916E:  ADD             R2, PC; off_314144
129170:  BL              sub_164222
129174:  LDR             R0, [R5]
129176:  LDR             R1, =(loc_129328+1 - 0x129180)
129178:  LDR             R2, =(unk_314148 - 0x129184)
12917A:  ADD             R0, R6
12917C:  ADD             R1, PC; loc_129328
12917E:  ADDS            R0, #0x1C
129180:  ADD             R2, PC; unk_314148
129182:  BL              sub_164222
129186:  LDR             R0, [R5]
129188:  LDR             R1, =(loc_12933C+1 - 0x129192)
12918A:  LDR             R2, =(unk_31414C - 0x129196)
12918C:  ADD             R0, R6
12918E:  ADD             R1, PC; loc_12933C
129190:  ADDS            R0, #0xCC
129192:  ADD             R2, PC; unk_31414C
129194:  BL              sub_164222
129198:  LDR             R0, [R5]
12919A:  LDR             R1, =(sub_12934C+1 - 0x1291A4)
12919C:  LDR             R2, =(unk_314150 - 0x1291A8)
12919E:  ADD             R0, R6
1291A0:  ADD             R1, PC; sub_12934C
1291A2:  ADDS            R0, #0x60 ; '`'
1291A4:  ADD             R2, PC; unk_314150
1291A6:  BL              sub_164222
1291AA:  LDR             R0, [R5]
1291AC:  MOVW            R3, #0x5034
1291B0:  LDR             R1, =(sub_129370+1 - 0x1291BE)
1291B2:  MOVT            R3, #0x67 ; 'g'
1291B6:  LDR             R2, =(unk_314154 - 0x1291C0)
1291B8:  ADD             R0, R3
1291BA:  ADD             R1, PC; sub_129370
1291BC:  ADD             R2, PC; unk_314154
1291BE:  BL              sub_164196
1291C2:  LDR             R0, [R5]
1291C4:  LDR             R1, =(sub_129394+1 - 0x1291CE)
1291C6:  LDR             R2, =(off_314158 - 0x1291D0)
1291C8:  ADD             R0, R8
1291CA:  ADD             R1, PC; sub_129394
1291CC:  ADD             R2, PC; off_314158
1291CE:  BL              sub_164196
1291D2:  MOV             R0, R4
1291D4:  POP.W           {R8}
1291D8:  POP             {R4-R7,PC}
