; =========================================================
; Game Engine Function: sub_1409B8
; Address            : 0x1409B8 - 0x140B34
; =========================================================

1409B8:  PUSH            {R4-R7,LR}
1409BA:  ADD             R7, SP, #0xC
1409BC:  PUSH.W          {R8-R11}
1409C0:  SUB.W           SP, SP, #0x21C
1409C4:  MOV             R8, R0
1409C6:  LSRS            R0, R1, #4
1409C8:  CMP             R0, #0x7C ; '|'
1409CA:  BHI.W           loc_140B2A
1409CE:  LDR             R0, =(off_23496C - 0x1409D6)
1409D0:  MOV             R6, R1
1409D2:  ADD             R0, PC; off_23496C
1409D4:  LDR             R4, [R0]; dword_23DEF4
1409D6:  LDR             R0, [R4]
1409D8:  LDR.W           R0, [R0,#0x3B0]
1409DC:  LDR             R5, [R0,#4]
1409DE:  MOV             R0, R5
1409E0:  BL              sub_F2396
1409E4:  CMP             R0, #0
1409E6:  BEQ.W           loc_140B2A
1409EA:  LDR.W           R5, [R5,R6,LSL#2]
1409EE:  CMP             R5, #0
1409F0:  BEQ.W           loc_140B2A
1409F4:  ADD             R0, SP, #0x238+src
1409F6:  ADD             R1, SP, #0x238+var_98
1409F8:  ADD.W           R11, R0, #2
1409FC:  MOV             R0, R5
1409FE:  STR             R4, [SP,#0x238+var_200]
140A00:  BL              sub_F8910
140A04:  ADR             R0, dword_140B40
140A06:  ADD.W           R12, SP, #0x238+var_6C
140A0A:  VLD1.64         {D16-D17}, [R0]
140A0E:  ADD.W           R9, SP, #0x238+var_A8
140A12:  LDR             R0, [SP,#0x238+var_98]
140A14:  STR             R0, [SP,#0x238+var_1E0]
140A16:  LDR             R0, [SP,#0x238+var_94]
140A18:  STR             R0, [SP,#0x238+var_1E4]
140A1A:  LDR             R0, [SP,#0x238+var_90]
140A1C:  STR             R0, [SP,#0x238+var_1E8]
140A1E:  LDR             R0, [SP,#0x238+var_8C]
140A20:  STR             R0, [SP,#0x238+var_1EC]
140A22:  LDR             R0, [SP,#0x238+var_88]
140A24:  STR             R0, [SP,#0x238+var_1F0]
140A26:  LDRD.W          R4, R0, [SP,#0x238+var_7C]
140A2A:  LDRD.W          LR, R10, [SP,#0x238+var_84]
140A2E:  STR             R0, [SP,#0x238+var_1F4]
140A30:  LDR             R0, [SP,#0x238+var_74]
140A32:  STR             R0, [SP,#0x238+var_1F8]
140A34:  LDR             R0, [SP,#0x238+var_70]
140A36:  STR             R0, [SP,#0x238+var_1FC]
140A38:  LDM.W           R12, {R0-R3,R12}
140A3C:  STR             R0, [SP,#0x238+var_218]
140A3E:  LDR             R0, [SP,#0x238+var_1EC]
140A40:  STR             R0, [SP,#0x238+var_238]
140A42:  LDR             R0, [SP,#0x238+var_1F0]
140A44:  STRD.W          R0, LR, [SP,#0x238+var_234]
140A48:  LDR             R0, [SP,#0x238+var_1F4]
140A4A:  STR             R1, [SP,#0x238+var_214]
140A4C:  STR             R0, [SP,#0x238+var_224]
140A4E:  LDR             R0, [SP,#0x238+var_1F8]
140A50:  STR             R2, [SP,#0x238+var_210]
140A52:  STR             R3, [SP,#0x238+var_20C]
140A54:  LDR             R1, [SP,#0x238+var_1E0]
140A56:  LDRD.W          R3, R2, [SP,#0x238+var_1E8]
140A5A:  STR             R0, [SP,#0x238+var_220]
140A5C:  LDR             R0, [SP,#0x238+var_1FC]
140A5E:  STR             R0, [SP,#0x238+var_21C]
140A60:  MOV             R0, R9
140A62:  VST1.64         {D16-D17}, [R9]
140A66:  STR.W           R12, [SP,#0x238+var_208]
140A6A:  STRD.W          R10, R4, [SP,#0x238+var_22C]
140A6E:  BL              sub_17D12C
140A72:  MOV             R0, R9
140A74:  BL              sub_17D2F2
140A78:  ADD             R2, SP, #0x238+var_68
140A7A:  VLD1.64         {D16-D17}, [R9]
140A7E:  ADD             R4, SP, #0x238+src
140A80:  LDM             R2, {R0-R2}
140A82:  STR.W           R1, [R11,#4]
140A86:  ADD             R1, SP, #0x238+var_B8
140A88:  STR.W           R0, [R11]
140A8C:  MOV             R0, R5
140A8E:  STRH.W          R6, [SP,#0x238+src]
140A92:  ADD.W           R6, R4, #0xE
140A96:  STR.W           R2, [R11,#8]
140A9A:  VST1.16         {D16-D17}, [R6]!
140A9E:  BL              sub_F8994
140AA2:  VLDR            D16, [SP,#0x238+var_B8]
140AA6:  ADD             R1, SP, #0x238+var_C8
140AA8:  LDR             R0, [SP,#0x238+var_B0]
140AAA:  STR             R0, [R6,#8]
140AAC:  MOV             R0, R5
140AAE:  VST1.16         {D16}, [R6]
140AB2:  BL              sub_F89E0
140AB6:  VLDR            D16, [SP,#0x238+var_C8]
140ABA:  ADD.W           R1, R4, #0x2A ; '*'
140ABE:  ADDW            R5, R8, #0x15B
140AC2:  LDR             R0, [SP,#0x238+var_C0]
140AC4:  STR             R0, [R1,#8]
140AC6:  MOV             R2, R4
140AC8:  VST1.16         {D16}, [R1]
140ACC:  MOV             R0, R8
140ACE:  MOV             R1, R5
140AD0:  MOVS            R3, #0x36 ; '6'
140AD2:  BL              sub_140978
140AD6:  CBZ             R0, loc_140B2A
140AD8:  BL              sub_F0B30
140ADC:  STR.W           R0, [R8,#0x1C4]
140AE0:  ADD             R0, SP, #0x238+var_1DC
140AE2:  BL              sub_17D4A8
140AE6:  MOVS            R1, #0xD2
140AE8:  STRB.W          R1, [R7,#var_1D]
140AEC:  SUB.W           R1, R7, #-var_1D
140AF0:  MOVS            R2, #8
140AF2:  MOVS            R3, #1
140AF4:  BL              sub_17D628
140AF8:  ADD             R0, SP, #0x238+var_1DC
140AFA:  ADD             R1, SP, #0x238+src
140AFC:  MOVS            R2, #0x36 ; '6'
140AFE:  BL              sub_17D566
140B02:  LDR             R0, [SP,#0x238+var_200]
140B04:  LDR             R0, [R0]
140B06:  LDR.W           R0, [R0,#0x210]
140B0A:  LDR             R1, [R0]
140B0C:  LDR             R6, [R1,#0x20]
140B0E:  MOVS            R1, #1
140B10:  MOVS            R2, #1
140B12:  STR             R1, [SP,#0x238+var_238]
140B14:  ADD             R1, SP, #0x238+var_1DC
140B16:  MOVS            R3, #7
140B18:  BLX             R6
140B1A:  ADD             R1, SP, #0x238+src; src
140B1C:  MOV             R0, R5; dest
140B1E:  MOVS            R2, #0x36 ; '6'; n
140B20:  BLX             j_memcpy
140B24:  ADD             R0, SP, #0x238+var_1DC
140B26:  BL              sub_17D542
140B2A:  ADD.W           SP, SP, #0x21C
140B2E:  POP.W           {R8-R11}
140B32:  POP             {R4-R7,PC}
