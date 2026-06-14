; =========================================================
; Game Engine Function: sub_107C70
; Address            : 0x107C70 - 0x107D98
; =========================================================

107C70:  PUSH            {R4-R7,LR}
107C72:  ADD             R7, SP, #0xC
107C74:  PUSH.W          {R8}
107C78:  MOV             R4, R0
107C7A:  MOVS            R0, #1
107C7C:  STRB.W          R0, [R4,#0x9E0]
107C80:  ADDW            R0, R4, #0x964; int
107C84:  MOV             R6, R1
107C86:  MOVS            R1, #0x64 ; 'd'; n
107C88:  MOV             R8, R2
107C8A:  BLX             sub_22178C
107C8E:  LDR.W           R0, [R6,#1]
107C92:  MOVS            R5, #0
107C94:  LDR.W           R1, [R6,#9]
107C98:  LDR.W           R2, [R6,#0x15]
107C9C:  STR.W           R0, [R4,#0x964]
107CA0:  LDR.W           R0, [R6,#5]
107CA4:  STRB.W          R5, [R4,#0x970]
107CA8:  STR.W           R1, [R4,#0x96C]
107CAC:  STR.W           R0, [R4,#0x968]
107CB0:  LDRB            R0, [R6]
107CB2:  UBFX.W          R0, R0, #3, #1
107CB6:  STRB.W          R0, [R4,#0x971]
107CBA:  LDRB            R0, [R6]
107CBC:  AND.W           R0, R0, #1
107CC0:  STRB.W          R0, [R4,#0x972]
107CC4:  LDR.W           R0, [R6,#0xD]
107CC8:  STR.W           R0, [R4,#0x974]
107CCC:  LDR.W           R0, [R6,#0x11]
107CD0:  STR.W           R2, [R4,#0x97C]
107CD4:  STR.W           R0, [R4,#0x978]
107CD8:  LDRB            R0, [R6]
107CDA:  LDRH.W          R1, [R6,#0x19]
107CDE:  LDR.W           R2, [R6,#0x1B]
107CE2:  STR.W           R2, [R4,#0x984]
107CE6:  UBFX.W          R0, R0, #4, #1
107CEA:  STRH.W          R1, [R4,#0x988]
107CEE:  MOV.W           R2, #0xFFFFFFFF
107CF2:  STRB.W          R0, [R4,#0x980]
107CF6:  LDRB            R0, [R6]
107CF8:  UBFX.W          R0, R0, #1, #1
107CFC:  STRB.W          R0, [R4,#0x98A]
107D00:  LDRB            R0, [R6]
107D02:  UBFX.W          R0, R0, #2, #1
107D06:  STRB.W          R0, [R4,#0x98B]
107D0A:  LDRB            R0, [R6,#0x1F]
107D0C:  STR.W           R0, [R4,#0x98C]
107D10:  LDR.W           R0, [R6,#0x21]
107D14:  STR.W           R0, [R4,#0x990]
107D18:  LDR.W           R0, [R6,#0x25]
107D1C:  STR.W           R0, [R4,#0x994]
107D20:  ADD.W           R0, R6, #0x2B ; '+'
107D24:  LDRB.W          R1, [R6,#0x20]
107D28:  VLD1.8          {D16-D17}, [R0]!
107D2C:  STRB.W          R1, [R4,#0x9AC]
107D30:  LDRH.W          R1, [R6,#0x29]
107D34:  STRH.W          R1, [R4,#0x9AE]
107D38:  ADD.W           R1, R4, #0x9B0
107D3C:  VST1.32         {D16-D17}, [R1]!
107D40:  LDRH            R0, [R0]
107D42:  STRH            R0, [R1]
107D44:  MOV             R1, R8
107D46:  LDRH.W          R0, [R6,#0x3D]
107D4A:  STRH.W          R0, [R4,#0x9C2]
107D4E:  MOV             R0, R4
107D50:  STR.W           R2, [R4,#0x9A4]
107D54:  STR.W           R2, [R4,#0x9A0]
107D58:  STRB.W          R5, [R4,#0x9C5]
107D5C:  STR.W           R2, [R4,#0x9A8]
107D60:  BL              sub_107D98
107D64:  LDR.W           R0, [R4,#0x98C]
107D68:  CMP             R0, #4
107D6A:  BNE             loc_107D7A
107D6C:  BL              sub_108C44
107D70:  STR.W           R0, [R4,#0x9A8]
107D74:  MOV             R0, R4
107D76:  BL              sub_107DDC
107D7A:  VMOV.I32        Q8, #0
107D7E:  ADDW            R0, R4, #0x9C8
107D82:  STR.W           R5, [R4,#0x9DC]
107D86:  STRB.W          R5, [R4,#0x9C4]
107D8A:  VST1.32         {D16-D17}, [R0]!
107D8E:  STRB            R5, [R0]
107D90:  MOV             R0, R4
107D92:  POP.W           {R8}
107D96:  POP             {R4-R7,PC}
