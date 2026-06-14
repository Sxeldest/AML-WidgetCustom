; =========================================================
; Game Engine Function: sub_E3D7A
; Address            : 0xE3D7A - 0xE3DCE
; =========================================================

E3D7A:  PUSH            {R7,LR}
E3D7C:  MOV             R7, SP
E3D7E:  LDR             R3, [R0,#0x18]
E3D80:  MOV             R12, R1
E3D82:  LDR             R2, [R0,#0x2C]
E3D84:  CMP             R2, R3
E3D86:  ITT CC
E3D88:  STRCC           R3, [R0,#0x2C]
E3D8A:  MOVCC           R2, R3
E3D8C:  LDRD.W          R1, R3, [R0,#8]
E3D90:  CMP             R1, R3
E3D92:  BCS             loc_E3DBA
E3D94:  ADDS.W          R1, R12, #1
E3D98:  BEQ             loc_E3DC0
E3D9A:  LDRB.W          R1, [R0,#0x30]
E3D9E:  LSLS            R1, R1, #0x1B
E3DA0:  BMI             loc_E3DAE
E3DA2:  LDRB.W          R1, [R3,#-1]
E3DA6:  UXTB.W          LR, R12
E3DAA:  CMP             R1, LR
E3DAC:  BNE             loc_E3DBA
E3DAE:  SUBS            R1, R3, #1
E3DB0:  STRD.W          R1, R2, [R0,#0xC]
E3DB4:  STRB.W          R12, [R3,#-1]
E3DB8:  B               loc_E3DCA
E3DBA:  MOV.W           R12, #0xFFFFFFFF
E3DBE:  B               loc_E3DCA
E3DC0:  SUBS            R1, R3, #1
E3DC2:  STRD.W          R1, R2, [R0,#0xC]
E3DC6:  MOV.W           R12, #0
E3DCA:  MOV             R0, R12
E3DCC:  POP             {R7,PC}
