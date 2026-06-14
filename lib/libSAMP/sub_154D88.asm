; =========================================================
; Game Engine Function: sub_154D88
; Address            : 0x154D88 - 0x154E60
; =========================================================

154D88:  PUSH            {R4,R5,R7,LR}
154D8A:  ADD             R7, SP, #8
154D8C:  SUB             SP, SP, #8
154D8E:  MOV             R4, R0
154D90:  LDRB.W          R0, [R0,#0x7D]
154D94:  CMP             R0, #0
154D96:  BEQ             loc_154E5C
154D98:  LDRB.W          R5, [R4,#0x7E]
154D9C:  BL              sub_15E510
154DA0:  CMP             R5, R0
154DA2:  BEQ             loc_154DB2
154DA4:  BL              sub_15E510
154DA8:  EOR.W           R1, R0, #1
154DAC:  MOV             R0, R4
154DAE:  BL              sub_154E98
154DB2:  LDRB.W          R0, [R4,#0x7E]
154DB6:  CBNZ            R0, loc_154DC6
154DB8:  LDR.W           R0, [R4,#0x80]
154DBC:  CMP             R0, #0x31 ; '1'
154DBE:  ITT LE
154DC0:  ADDLE           R0, #1
154DC2:  STRLE.W         R0, [R4,#0x80]
154DC6:  LDRB.W          R0, [R4,#0x84]
154DCA:  DMB.W           ISH
154DCE:  LSLS            R0, R0, #0x1F
154DD0:  BEQ             loc_154DEA
154DD2:  MOVS            R0, #0
154DD4:  DMB.W           ISH
154DD8:  STRB.W          R0, [R4,#0x84]
154DDC:  DMB.W           ISH
154DE0:  LDR             R0, [R4,#0x58]
154DE2:  CBZ             R0, loc_154DEA
154DE4:  MOV             R0, R4
154DE6:  BL              sub_154EF2
154DEA:  LDR             R0, [R4,#0x58]
154DEC:  CBZ             R0, loc_154E5C
154DEE:  MOV             R0, R4
154DF0:  BL              sub_154F18
154DF4:  ADD.W           R0, R4, #0x14
154DF8:  BL              sub_15C6C2
154DFC:  LDR             R0, [R4,#0x5C]
154DFE:  LDR             R1, [R0]
154E00:  CBZ             R1, loc_154E5C
154E02:  BL              sub_157EA4
154E06:  CBZ             R0, loc_154E18
154E08:  LDRB.W          R0, [R4,#0x7C]
154E0C:  CBZ             R0, loc_154E14
154E0E:  BL              sub_15E514
154E12:  CBZ             R0, loc_154E22
154E14:  MOVS            R1, #0
154E16:  B               loc_154E2A
154E18:  MOV             R0, R4
154E1A:  MOVS            R1, #0
154E1C:  BL              sub_154D48
154E20:  B               loc_154E5C
154E22:  BL              sub_15E538
154E26:  EOR.W           R1, R0, #1
154E2A:  LDR             R0, [R4,#0x58]
154E2C:  BL              sub_15249E
154E30:  MOV             R1, R0
154E32:  LDR             R0, [R4,#0x5C]
154E34:  CBZ             R1, loc_154E3C
154E36:  BL              sub_157E40
154E3A:  B               loc_154E40
154E3C:  BL              sub_157E92
154E40:  LDRB.W          R0, [R4,#0x7C]
154E44:  CBZ             R0, loc_154E5C
154E46:  LDRD.W          R0, R1, [R4,#0x58]
154E4A:  MOV             R3, R1
154E4C:  LDR.W           R5, [R3],#0xC
154E50:  ADD.W           R2, R1, #8
154E54:  ADD.W           R1, R5, #0x18
154E58:  BL              sub_152B5A
154E5C:  ADD             SP, SP, #8
154E5E:  POP             {R4,R5,R7,PC}
