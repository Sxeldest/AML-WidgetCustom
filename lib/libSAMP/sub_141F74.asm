; =========================================================
; Game Engine Function: sub_141F74
; Address            : 0x141F74 - 0x14202C
; =========================================================

141F74:  PUSH            {R4,R5,R7,LR}
141F76:  ADD             R7, SP, #8
141F78:  SUB             SP, SP, #0x10
141F7A:  LDR             R0, =(off_234970 - 0x141F80)
141F7C:  ADD             R0, PC; off_234970
141F7E:  LDR             R5, [R0]; dword_23DEF0
141F80:  LDR             R0, [R5]
141F82:  BL              sub_E35A0
141F86:  MOV             R4, R0
141F88:  BL              sub_104108
141F8C:  CBZ             R0, loc_141FAE
141F8E:  MOVW            R1, #0xACCD
141F92:  MOVW            R2, #0x9000
141F96:  MOVW            R3, #0x6BD4
141F9A:  MOVT            R1, #0x4488
141F9E:  MOVT            R2, #0xC4FE
141FA2:  MOVT            R3, #0x42A5
141FA6:  MOV             R0, R4
141FA8:  BL              sub_104098
141FAC:  B               loc_141FD0
141FAE:  LDR             R0, [R4]
141FB0:  MOVW            R1, #0xA19D
141FB4:  MOVW            R2, #0xCCE9
141FB8:  MOVW            R3, #0x3333
141FBC:  MOVT            R1, #0x448D
141FC0:  MOVT            R2, #0xC4FE
141FC4:  LDR.W           R12, [R0,#0x10]
141FC8:  MOVT            R3, #0x428A
141FCC:  MOV             R0, R4
141FCE:  BLX             R12
141FD0:  LDR             R0, [R5]
141FD2:  MOVS            R1, #0
141FD4:  MOVW            R2, #0x8000
141FD8:  MOVS            R3, #0
141FDA:  MOVT            R2, #0xC4FE; int
141FDE:  MOVT            R3, #0x42B4; int
141FE2:  LDR             R0, [R0,#4]; int
141FE4:  STRD.W          R1, R1, [SP,#0x18+var_18]; float
141FE8:  STR             R1, [SP,#0x18+var_10]; float
141FEA:  MOV             R1, #0x4488A000; int
141FF2:  BL              sub_F8630
141FF6:  LDR             R0, [R5]
141FF8:  MOVS            R1, #2
141FFA:  MOVW            R2, #0xA000
141FFE:  MOVS            R3, #0
142000:  MOVT            R2, #0xC4C2
142004:  MOVT            R3, #0x41A0
142008:  LDR             R0, [R0,#4]
14200A:  STR             R1, [SP,#0x18+var_18]
14200C:  MOVS            R1, #0x43C00000
142012:  BL              sub_F86AC
142016:  LDR             R0, [R5]
142018:  MOVS            R1, #1
14201A:  BL              sub_F977C
14201E:  LDR             R0, [R5]
142020:  MOVS            R1, #0
142022:  ADD             SP, SP, #0x10
142024:  POP.W           {R4,R5,R7,LR}
142028:  B.W             sub_F97A8
