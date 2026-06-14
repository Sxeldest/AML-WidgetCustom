; =========================================================
; Game Engine Function: sub_128BAC
; Address            : 0x128BAC - 0x128D56
; =========================================================

128BAC:  PUSH            {R4-R7,LR}
128BAE:  ADD             R7, SP, #0xC
128BB0:  PUSH.W          {R11}
128BB4:  LDR             R0, =(off_23494C - 0x128BC6)
128BB6:  MOV             R5, #unk_2D024C
128BBE:  MOVW            R1, #0x4E1F
128BC2:  ADD             R0, PC; off_23494C
128BC4:  MOVS            R2, #0
128BC6:  MOVS            R3, #0
128BC8:  LDR             R4, [R0]; dword_23DF24
128BCA:  LDR             R0, [R4]
128BCC:  ADD             R0, R5
128BCE:  SUB.W           R0, R0, #0x164
128BD2:  BL              sub_164250
128BD6:  LDR             R0, [R4]
128BD8:  MOVW            R1, #0x4E1F
128BDC:  MOVS            R2, #0
128BDE:  MOVS            R3, #0
128BE0:  ADD             R0, R5
128BE2:  ADD.W           R0, R0, #0x170
128BE6:  BL              sub_164250
128BEA:  LDR             R0, [R4]
128BEC:  MOVW            R1, #0x61A7
128BF0:  MOVS            R2, #0
128BF2:  MOVS            R3, #0
128BF4:  ADD             R0, R5
128BF6:  BL              sub_164250
128BFA:  LDR             R0, [R4]
128BFC:  MOVW            R1, #0x4E20
128C00:  MOVS            R2, #0
128C02:  MOVS            R3, #0
128C04:  ADD             R0, R5
128C06:  ADDS            R0, #8
128C08:  BL              sub_164250
128C0C:  LDR             R0, [R4]
128C0E:  MOV             R6, #0x2D03CA
128C16:  MOVW            R1, #0x61A7
128C1A:  ADD             R0, R6
128C1C:  MOVS            R2, #0
128C1E:  MOVS            R3, #0
128C20:  BL              sub_164250
128C24:  LDR             R0, [R4]
128C26:  MOVW            R1, #0x4E20
128C2A:  MOVS            R2, #0
128C2C:  MOVS            R3, #0
128C2E:  ADD             R0, R6
128C30:  ADDS            R0, #8
128C32:  BL              sub_164250
128C36:  LDR             R0, [R4]
128C38:  MOVW            R1, #0x62A6
128C3C:  MOVS            R2, #0
128C3E:  MOVS            R3, #0
128C40:  ADD             R0, R5
128C42:  ADDS            R0, #0x16
128C44:  BL              sub_164250
128C48:  LDR             R0, [R4]
128C4A:  MOVW            R1, #0x61A8
128C4E:  MOVS            R2, #0
128C50:  MOVS            R3, #0
128C52:  ADD             R0, R5
128C54:  ADDS            R0, #0x1E
128C56:  BL              sub_164250
128C5A:  LDR             R0, [R4]
128C5C:  MOVW            R1, #0x62A6
128C60:  MOVS            R2, #0
128C62:  MOVS            R3, #0
128C64:  ADD             R0, R6
128C66:  ADDS            R0, #0x16
128C68:  BL              sub_164250
128C6C:  LDR             R0, [R4]
128C6E:  MOVW            R1, #0x61A8
128C72:  MOVS            R2, #0
128C74:  MOVS            R3, #0
128C76:  ADD             R0, R6
128C78:  ADDS            R0, #0x1E
128C7A:  BL              sub_164250
128C7E:  LDR             R0, [R4]
128C80:  MOVW            R1, #0x63A6
128C84:  MOVS            R2, #0
128C86:  MOVS            R3, #0
128C88:  ADD             R0, R5
128C8A:  ADDS            R0, #0x2C ; ','
128C8C:  BL              sub_164250
128C90:  LDR             R0, [R4]
128C92:  MOVW            R1, #0x62A7
128C96:  MOVS            R2, #0
128C98:  MOVS            R3, #0
128C9A:  ADD             R0, R5
128C9C:  ADDS            R0, #0x34 ; '4'
128C9E:  BL              sub_164250
128CA2:  LDR             R0, [R4]
128CA4:  MOVW            R1, #0x63A6
128CA8:  MOVS            R2, #0
128CAA:  MOVS            R3, #0
128CAC:  ADD             R0, R6
128CAE:  ADDS            R0, #0x2C ; ','
128CB0:  BL              sub_164250
128CB4:  LDR             R0, [R4]
128CB6:  MOVW            R1, #0x62A7
128CBA:  MOVS            R2, #0
128CBC:  MOVS            R3, #0
128CBE:  ADD             R0, R6
128CC0:  ADDS            R0, #0x34 ; '4'
128CC2:  BL              sub_164250
128CC6:  LDR             R0, [R4]
128CC8:  MOVW            R1, #0x63E6
128CCC:  MOVS            R2, #0
128CCE:  MOVS            R3, #0
128CD0:  ADD             R0, R5
128CD2:  ADDS            R0, #0x42 ; 'B'
128CD4:  BL              sub_164250
128CD8:  LDR             R0, [R4]
128CDA:  MOVW            R1, #0x63A7
128CDE:  MOVS            R2, #1
128CE0:  MOVS            R3, #0
128CE2:  ADD             R0, R5
128CE4:  ADDS            R0, #0x4C ; 'L'
128CE6:  BL              sub_164250
128CEA:  LDR             R0, [R4]
128CEC:  MOVW            R1, #0x649A
128CF0:  MOVS            R2, #0
128CF2:  MOVS            R3, #0
128CF4:  ADD             R0, R5
128CF6:  ADDS            R0, #0x5E ; '^'
128CF8:  BL              sub_164250
128CFC:  LDR             R0, [R4]
128CFE:  MOVW            R1, #0x63E7
128D02:  MOVS            R2, #0
128D04:  MOVS            R3, #0
128D06:  ADD             R0, R5
128D08:  ADDS            R0, #0x66 ; 'f'
128D0A:  BL              sub_164250
128D0E:  LDR             R0, [R4]
128D10:  MOVW            R1, #0x63E7
128D14:  MOVS            R2, #0
128D16:  MOVS            R3, #0
128D18:  ADD             R0, R6
128D1A:  ADDS            R0, #0x42 ; 'B'
128D1C:  BL              sub_164250
128D20:  LDR             R0, [R4]
128D22:  MOVS            R1, #0xB3
128D24:  MOVS            R2, #0
128D26:  MOVS            R3, #0
128D28:  ADD             R0, R6
128D2A:  STRB.W          R1, [R0,#0x4A]
128D2E:  MOVW            R1, #0x6676
128D32:  LDR             R0, [R4]
128D34:  ADD             R0, R5
128D36:  ADDS            R0, #0x74 ; 't'
128D38:  BL              sub_164250
128D3C:  LDR             R0, [R4]
128D3E:  MOVW            R1, #0x6676
128D42:  MOVS            R2, #0
128D44:  MOVS            R3, #0
128D46:  ADD             R0, R6
128D48:  ADDS            R0, #0x54 ; 'T'
128D4A:  POP.W           {R11}
128D4E:  POP.W           {R4-R7,LR}
128D52:  B.W             sub_164250
