; =========================================================
; Game Engine Function: mpg123_open_handle
; Address            : 0x22F9F0 - 0x22FB38
; =========================================================

22F9F0:  PUSH            {R4-R7,LR}
22F9F2:  ADD             R7, SP, #0xC
22F9F4:  PUSH.W          {R8}
22F9F8:  MOV             R4, R0
22F9FA:  MOV             R8, R1
22F9FC:  CMP             R4, #0
22F9FE:  BEQ.W           loc_22FB1A
22FA02:  MOVW            R1, #0xB2E0
22FA06:  ADDS            R6, R4, R1
22FA08:  LDR             R0, [R4,R1]
22FA0A:  CBZ             R0, loc_22FA16
22FA0C:  LDR             R1, [R0,#4]
22FA0E:  CMP             R1, #0
22FA10:  ITT NE
22FA12:  MOVNE           R0, R4
22FA14:  BLXNE           R1
22FA16:  MOVS            R5, #0
22FA18:  STR             R5, [R6]
22FA1A:  LDR             R0, [R4,#4]
22FA1C:  CBZ             R0, loc_22FA32
22FA1E:  MOVW            R0, #0xB2B8
22FA22:  STR             R5, [R4,R0]
22FA24:  MOVW            R0, #0xB2BC
22FA28:  STR             R5, [R4,R0]
22FA2A:  MOVW            R0, #0xB2B0
22FA2E:  STR             R5, [R4,R0]
22FA30:  STR             R5, [R4,#4]
22FA32:  MOVW            R0, #0xB290
22FA36:  MOVW            R1, #0xB288
22FA3A:  STR             R5, [R4,R0]
22FA3C:  MOVW            R0, #0xB2A8
22FA40:  MOVW            R2, #0xB28C
22FA44:  STR             R5, [R4,R0]
22FA46:  MOVW            R0, #0xA308
22FA4A:  ADD             R0, R4
22FA4C:  STR             R0, [R4,R1]
22FA4E:  MOVW            R1, #0x4834
22FA52:  LDR             R1, [R4,R1]
22FA54:  STR             R0, [R4,R2]
22FA56:  MOVW            R0, #0x4830
22FA5A:  LDR             R0, [R4,R0]
22FA5C:  MOVW            R2, #0x9384
22FA60:  STR             R5, [R4,R2]
22FA62:  BLX             j___aeabi_memclr8_1
22FA66:  MOVW            R0, #0x9388
22FA6A:  MOV.W           R1, #0x1F00
22FA6E:  ADD             R0, R4
22FA70:  BLX             j___aeabi_memclr8
22FA74:  MOVW            R0, #0x4A70
22FA78:  VMOV.I32        Q8, #0
22FA7C:  STRH            R5, [R4,R0]
22FA7E:  MOVW            R0, #0x4A60
22FA82:  ADD             R0, R4
22FA84:  MOVW            R1, #0x4808
22FA88:  VST1.64         {D16-D17}, [R0]
22FA8C:  MOVW            R0, #0x4A50
22FA90:  ADD             R0, R4
22FA92:  VST1.64         {D16-D17}, [R0]
22FA96:  ADD.W           R0, R4, #8
22FA9A:  BLX             j___aeabi_memclr8
22FA9E:  MOV             R0, R4
22FAA0:  BL              sub_225790
22FAA4:  MOVW            R1, #0x9324
22FAA8:  LDR             R0, [R4,R1]; p
22FAAA:  CBZ             R0, loc_22FAB6
22FAAC:  ADDS            R5, R4, R1
22FAAE:  BLX             free
22FAB2:  MOVS            R0, #0
22FAB4:  STR             R0, [R5]
22FAB6:  MOVW            R0, #0xB308
22FABA:  LDR             R0, [R4,R0]
22FABC:  CBZ             R0, loc_22FB12
22FABE:  MOVW            R1, #0xB530
22FAC2:  ADDS            R5, R4, R1
22FAC4:  LDR             R0, [R4,R1]; p
22FAC6:  CMP             R0, #0
22FAC8:  IT NE
22FACA:  BLXNE           free
22FACE:  MOVS            R0, #0
22FAD0:  MOV.W           R1, #0xFFFFFFFF
22FAD4:  STR             R0, [R5]
22FAD6:  MOVW            R0, #0xB2F0
22FADA:  STR.W           R8, [R4,R0]
22FADE:  MOVW            R0, #0xB2EC
22FAE2:  MOVS            R2, #0x40 ; '@'
22FAE4:  STR             R1, [R4,R0]
22FAE6:  MOVW            R0, #0xB2F4
22FAEA:  STR             R2, [R4,R0]
22FAEC:  MOVW            R0, #0xB448
22FAF0:  MOVW            R2, #0xB2E4
22FAF4:  LDR             R0, [R4,R0]
22FAF6:  STR             R1, [R4,R2]
22FAF8:  CMP             R0, #1
22FAFA:  BLT             loc_22FB24
22FAFC:  LDR             R1, =(off_685330 - 0x22FB0C)
22FAFE:  MOVW            R2, #0xB538
22FB02:  STR             R0, [R4,R2]
22FB04:  MOVW            R2, #0xB534
22FB08:  ADD             R1, PC; off_685330
22FB0A:  STR             R0, [R4,R2]
22FB0C:  ADD.W           R0, R1, #0x30 ; '0'
22FB10:  B               loc_22FB28
22FB12:  MOVW            R0, #0xB468
22FB16:  MOVS            R1, #0x29 ; ')'
22FB18:  STR             R1, [R4,R0]
22FB1A:  MOV.W           R0, #0xFFFFFFFF
22FB1E:  POP.W           {R8}
22FB22:  POP             {R4-R7,PC}
22FB24:  LDR             R0, =(off_685330 - 0x22FB2A)
22FB26:  ADD             R0, PC; off_685330
22FB28:  STR             R0, [R6]
22FB2A:  LDR             R1, [R0]
22FB2C:  MOV             R0, R4
22FB2E:  BLX             R1; sub_23B830
22FB30:  ASRS            R0, R0, #0x1F
22FB32:  POP.W           {R8}
22FB36:  POP             {R4-R7,PC}
