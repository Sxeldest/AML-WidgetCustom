; =========================================================
; Game Engine Function: sub_121054
; Address            : 0x121054 - 0x1210E0
; =========================================================

121054:  PUSH            {R4-R7,LR}
121056:  ADD             R7, SP, #0xC
121058:  PUSH.W          {R11}
12105C:  MOV             R4, R0
12105E:  LDR             R0, =(off_23494C - 0x121068)
121060:  MOVW            R6, #0x1FF0
121064:  ADD             R0, PC; off_23494C
121066:  MOVT            R6, #0x66 ; 'f'
12106A:  LDR             R5, [R0]; dword_23DF24
12106C:  LDR             R0, [R5]
12106E:  LDR             R1, =(off_26393C - 0x121076)
121070:  ADD             R0, R6
121072:  ADD             R1, PC; off_26393C
121074:  MOVS            R2, #0
121076:  BL              sub_164222
12107A:  LDR             R0, [R5]
12107C:  LDR             R1, =(unk_263940 - 0x121084)
12107E:  ADD             R0, R6
121080:  ADD             R1, PC; unk_263940
121082:  ADDS            R0, #0x64 ; 'd'
121084:  MOVS            R2, #0
121086:  BL              sub_164222
12108A:  LDR             R0, [R5]
12108C:  MOVW            R6, #0x7C0C
121090:  LDR             R1, =(unk_263944 - 0x12109C)
121092:  MOVT            R6, #0x66 ; 'f'
121096:  ADD             R0, R6
121098:  ADD             R1, PC; unk_263944
12109A:  MOVS            R2, #0
12109C:  BL              sub_164222
1210A0:  LDR             R0, [R5]
1210A2:  LDR             R1, =(unk_263948 - 0x1210AA)
1210A4:  ADD             R0, R6
1210A6:  ADD             R1, PC; unk_263948
1210A8:  ADDS            R0, #0x64 ; 'd'
1210AA:  MOVS            R2, #0
1210AC:  BL              sub_164222
1210B0:  LDR             R0, [R5]
1210B2:  LDR             R1, =(unk_26394C - 0x1210BA)
1210B4:  ADD             R0, R6
1210B6:  ADD             R1, PC; unk_26394C
1210B8:  ADD.W           R0, R0, #0x1F8
1210BC:  MOVS            R2, #0
1210BE:  BL              sub_164222
1210C2:  LDR             R0, [R5]
1210C4:  MOVW            R2, #0x8BB4
1210C8:  LDR             R1, =(unk_263950 - 0x1210D4)
1210CA:  MOVT            R2, #0x66 ; 'f'
1210CE:  ADD             R0, R2
1210D0:  ADD             R1, PC; unk_263950
1210D2:  MOVS            R2, #0
1210D4:  BL              sub_164222
1210D8:  MOV             R0, R4
1210DA:  POP.W           {R11}
1210DE:  POP             {R4-R7,PC}
