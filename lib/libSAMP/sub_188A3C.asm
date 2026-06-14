; =========================================================
; Game Engine Function: sub_188A3C
; Address            : 0x188A3C - 0x188D40
; =========================================================

188A3C:  PUSH            {R4-R7,LR}
188A3E:  ADD             R7, SP, #0xC
188A40:  PUSH.W          {R8-R11}
188A44:  SUB             SP, SP, #0x3C
188A46:  MOV             R4, R0
188A48:  MOVS            R0, #1
188A4A:  MOV             R10, R1
188A4C:  STR.W           R0, [R10,#0x1C]!
188A50:  LDR.W           R0, [R10,#-0x10]
188A54:  SUBS            R0, #7
188A56:  CMP             R0, #3
188A58:  BHI             loc_188A64
188A5A:  LDR             R3, =(unk_91E10 - 0x188A60)
188A5C:  ADD             R3, PC; unk_91E10
188A5E:  LDR.W           R0, [R3,R0,LSL#2]
188A62:  B               loc_188A68
188A64:  MOV             R0, #0xFFFFFFEF
188A68:  STR.W           R1, [R7,#var_38]
188A6C:  ADDS            R5, R0, R2
188A6E:  LDR.W           R1, [R7,#var_38]
188A72:  ADDW            R0, R4, #0x414
188A76:  LDR.W           R8, [R1,#0x30]
188A7A:  BL              sub_17E0BA
188A7E:  MOV             R1, #0xFFFFFFE4
188A82:  CMP             R0, #0
188A84:  IT NE
188A86:  MOVNE           R1, #0xFFFFFFD4
188A8A:  ADD.W           R11, R5, R1
188A8E:  ADD.W           R1, R8, #7
188A92:  MOV.W           R0, #0xFFFFFFFF
188A96:  LDR.W           R5, [R7,#var_38]
188A9A:  ADD.W           R0, R0, R1,LSR#3
188A9E:  MOV             R8, R1
188AA0:  MOV             R1, R11
188AA2:  BLX             sub_220A40
188AA6:  LDR.W           R2, [R4,#0x354]
188AAA:  ADDS            R0, #1
188AAC:  LDR             R1, =(aRequireBytesFo - 0x188ABA); "{}: require {} bytes for {} pointers" ...
188AAE:  LDR             R3, =(aSplitpacket - 0x188ABC); "SplitPacket" ...
188AB0:  ADD             R2, R0
188AB2:  STR             R0, [R5,#0x1C]
188AB4:  LSLS            R0, R0, #2
188AB6:  ADD             R1, PC; "{}: require {} bytes for {} pointers"
188AB8:  ADD             R3, PC; "SplitPacket"
188ABA:  STR.W           R2, [R4,#0x354]
188ABE:  STR.W           R11, [R7,#var_24]
188AC2:  STR.W           R0, [R7,#var_28]
188AC6:  SUB             SP, SP, #8
188AC8:  SUB.W           R0, R7, #-var_28
188ACC:  STRD.W          R0, R10, [SP,#0x60+var_60]
188AD0:  MOVS            R0, #1
188AD2:  MOVS            R2, #0x24 ; '$'
188AD4:  BL              sub_18B26C
188AD8:  ADD             SP, SP, #8
188ADA:  LDR             R0, [R5,#0x1C]
188ADC:  MOVS            R1, #0
188ADE:  STR.W           R4, [R7,#var_3C]
188AE2:  LSLS            R2, R0, #2
188AE4:  CMP.W           R1, R2,LSR#20
188AE8:  STR.W           R2, [R7,#var_54]
188AEC:  BNE             loc_188B00
188AEE:  LDR             R0, =(aStack - 0x188AFA); "stack" ...
188AF0:  ADDS            R1, R2, #7
188AF2:  BIC.W           R1, R1, #7
188AF6:  ADD             R0, PC; "stack"
188AF8:  SUB.W           R9, SP, R1
188AFC:  MOV             SP, R9
188AFE:  B               loc_188B1E
188B00:  BIC.W           R1, R0, #0xC0000000
188B04:  SUBS            R0, R0, R1
188B06:  IT NE
188B08:  MOVNE           R0, #1
188B0A:  CMP             R0, #0
188B0C:  MOV             R0, R2
188B0E:  IT NE
188B10:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
188B14:  BLX             j__Znaj; operator new[](uint)
188B18:  MOV             R9, R0
188B1A:  LDR             R0, =(aHeap - 0x188B20); "heap" ...
188B1C:  ADD             R0, PC; "heap"
188B1E:  LDR             R1, =(aInternalpacket - 0x188B28); "{}: internalPacketArray = {:08X} at {}" ...
188B20:  MOV             R4, R8
188B22:  LDR             R3, =(aSplitpacket - 0x188B2E); "SplitPacket" ...
188B24:  ADD             R1, PC; "{}: internalPacketArray = {:08X} at {}"
188B26:  STRD.W          R0, R9, [R7,#var_2C]
188B2A:  ADD             R3, PC; "SplitPacket"
188B2C:  SUB             SP, SP, #8
188B2E:  SUB.W           R2, R7, #-var_2C
188B32:  SUB.W           R0, R7, #-var_28
188B36:  STRD.W          R0, R2, [SP,#0x60+var_60]
188B3A:  MOVS            R0, #1
188B3C:  MOVS            R2, #0x26 ; '&'
188B3E:  BL              sub_18B34C
188B42:  ADD             SP, SP, #8
188B44:  LDR.W           R0, [R10]
188B48:  MOV.W           R8, #0
188B4C:  LDR.W           R1, [R7,#var_3C]
188B50:  CMP             R0, #1
188B52:  STR.W           R8, [R7,#var_34]
188B56:  ADD.W           R1, R1, #0x6A0
188B5A:  STR.W           R1, [R7,#var_50]
188B5E:  BLT             loc_188BBC
188B60:  STR.W           R4, [R7,#var_44]
188B64:  LDR             R0, =(aInstallPointer - 0x188B6A); "{}: Install pointer for packet {}" ...
188B66:  ADD             R0, PC; "{}: Install pointer for packet {}"
188B68:  STR.W           R0, [R7,#var_40]
188B6C:  LDR             R5, =(aSplitpacket - 0x188B7A); "SplitPacket" ...
188B6E:  LDR.W           R6, [R7,#var_50]
188B72:  LDR.W           R4, [R7,#var_38]
188B76:  ADD             R5, PC; "SplitPacket"
188B78:  SUB             SP, SP, #8
188B7A:  LDR.W           R1, [R7,#var_40]
188B7E:  SUB.W           R0, R7, #-var_34
188B82:  STR             R0, [SP,#0x60+var_60]
188B84:  MOVS            R0, #1
188B86:  MOVS            R2, #0x21 ; '!'
188B88:  MOV             R3, R5
188B8A:  BL              sub_18B42C
188B8E:  ADD             SP, SP, #8
188B90:  MOV             R0, R6
188B92:  BL              sub_1889FC
188B96:  LDR.W           R11, [R7,#var_34]
188B9A:  MOV             R1, R4; src
188B9C:  MOVS            R2, #0x40 ; '@'; n
188B9E:  STR.W           R0, [R9,R11,LSL#2]
188BA2:  BLX             j_memcpy
188BA6:  LDR             R0, [R4,#0x1C]
188BA8:  ADD.W           R1, R11, #1
188BAC:  STR.W           R1, [R7,#var_34]
188BB0:  CMP             R1, R0
188BB2:  BLT             loc_188B78
188BB4:  LDR.W           R11, [R7,#var_24]
188BB8:  LDR.W           R4, [R7,#var_44]
188BBC:  LSRS            R0, R4, #3
188BBE:  STR.W           R8, [R7,#var_30]
188BC2:  STR.W           R0, [R7,#var_40]
188BC6:  LDR             R0, =(aAllocateBytesT - 0x188BCC); "{}: Allocate {} bytes to send split pac"... ...
188BC8:  ADD             R0, PC; "{}: Allocate {} bytes to send split pac"...
188BCA:  STR.W           R0, [R7,#var_44]
188BCE:  LDR             R0, =(aSplitpacket - 0x188BD4); "SplitPacket" ...
188BD0:  ADD             R0, PC; "SplitPacket"
188BD2:  STR.W           R0, [R7,#var_48]
188BD6:  LDR             R0, =(aCopyBytesToSpl - 0x188BDC); "{}: Copy {} bytes to split packet {}, f"... ...
188BD8:  ADD             R0, PC; "{}: Copy {} bytes to split packet {}, f"...
188BDA:  STR.W           R0, [R7,#var_4C]
188BDE:  LDR.W           R0, [R7,#var_40]
188BE2:  MUL.W           R1, R11, R8
188BE6:  MLS.W           R0, R11, R8, R0
188BEA:  STR.W           R1, [R7,#var_28]
188BEE:  CMP             R0, R11
188BF0:  IT GT
188BF2:  MOVGT           R0, R11
188BF4:  STR.W           R0, [R7,#var_2C]
188BF8:  SUB             SP, SP, #8
188BFA:  LDR.W           R6, [R7,#var_48]
188BFE:  MOVS            R0, #1
188C00:  LDR.W           R1, [R7,#var_44]
188C04:  MOVS            R2, #0x2D ; '-'
188C06:  SUB.W           R5, R7, #-var_2C
188C0A:  SUB.W           R4, R7, #-var_30
188C0E:  MOV             R3, R6
188C10:  STR             R5, [SP,#0x60+var_60]
188C12:  STR             R4, [SP,#0x60+var_5C]
188C14:  BL              sub_18B500
188C18:  ADD             SP, SP, #8
188C1A:  LDR.W           R0, [R7,#var_2C]; unsigned int
188C1E:  BLX             j__Znaj; operator new[](uint)
188C22:  LDR.W           R1, [R7,#var_30]
188C26:  LDR.W           R1, [R9,R1,LSL#2]
188C2A:  STR             R0, [R1,#0x34]
188C2C:  SUB             SP, SP, #0x18
188C2E:  SUB.W           R0, R7, #-var_28
188C32:  LDR.W           R1, [R7,#var_4C]
188C36:  STRD.W          R0, R4, [SP,#0x70+var_68]
188C3A:  SUB.W           R0, R7, #-var_24
188C3E:  STR             R0, [SP,#0x70+var_60]
188C40:  MOVS            R0, #1
188C42:  MOVS            R2, #0x6E ; 'n'
188C44:  MOV             R3, R6
188C46:  STRD.W          R5, R4, [SP,#0x70+var_70]
188C4A:  BL              sub_18B5E0
188C4E:  ADD             SP, SP, #0x18
188C50:  LDR.W           R0, [R7,#var_30]
188C54:  LDR.W           R4, [R7,#var_38]
188C58:  LDRD.W          R2, R3, [R7,#var_2C]; n
188C5C:  LDR.W           R0, [R9,R0,LSL#2]
188C60:  LDR             R1, [R4,#0x34]
188C62:  ADD             R1, R3; src
188C64:  LDR             R0, [R0,#0x34]; dest
188C66:  BLX             j_memcpy
188C6A:  LDR.W           R11, [R7,#var_24]
188C6E:  LDR.W           R1, [R7,#var_2C]
188C72:  CMP             R1, R11
188C74:  BNE             loc_188C7E
188C76:  LDR.W           R0, [R7,#var_30]
188C7A:  LSLS            R2, R1, #3
188C7C:  B               loc_188C8C
188C7E:  LDR.W           R0, [R7,#var_30]
188C82:  LDR             R2, [R4,#0x30]
188C84:  MUL.W           R1, R11, R0
188C88:  SUB.W           R2, R2, R1,LSL#3
188C8C:  LDR.W           R5, [R7,#var_3C]
188C90:  MOV             R6, R10
188C92:  LDR.W           R3, [R9,R0,LSL#2]
188C96:  LDR.W           R4, [R10]
188C9A:  LDRH.W          R1, [R5,#0x2DC]
188C9E:  STR             R2, [R3,#0x30]
188CA0:  STRH            R1, [R3,#0x14]
188CA2:  STRD.W          R0, R4, [R3,#0x18]
188CA6:  CBZ             R0, loc_188CB4
188CA8:  LDRH.W          R2, [R5,#0xB4]
188CAC:  STRH            R2, [R3]
188CAE:  ADDS            R2, #1
188CB0:  STRH.W          R2, [R5,#0xB4]
188CB4:  LDR             R2, [R6]
188CB6:  ADD.W           R8, R0, #1
188CBA:  MOV             R10, R6
188CBC:  STR.W           R8, [R7,#var_30]
188CC0:  CMP             R8, R2
188CC2:  BCC             loc_188BDE
188CC4:  LDR.W           R4, [R7,#var_3C]
188CC8:  ADDS            R0, R1, #1
188CCA:  LDR.W           R5, [R7,#var_50]
188CCE:  CMP             R2, #1
188CD0:  LDR.W           R6, [R7,#var_38]
188CD4:  STRH.W          R0, [R4,#0x2DC]
188CD8:  MOV.W           R0, #0
188CDC:  STR.W           R0, [R7,#var_34]
188CE0:  BLT             loc_188D04
188CE2:  MOVS            R0, #0
188CE4:  LDR             R2, [R6,#8]
188CE6:  ADD.W           R1, R9, R0,LSL#2
188CEA:  ADD.W           R0, R4, R2,LSL#4
188CEE:  ADDS            R0, #0x68 ; 'h'
188CF0:  BL              sub_17E430
188CF4:  LDR.W           R0, [R7,#var_34]
188CF8:  LDR             R1, [R6,#0x1C]
188CFA:  ADDS            R0, #1
188CFC:  STR.W           R0, [R7,#var_34]
188D00:  CMP             R0, R1
188D02:  BLT             loc_188CE4
188D04:  LDR             R0, [R6,#0x34]; void *
188D06:  CBZ             R0, loc_188D0C
188D08:  BLX             j__ZdaPv; operator delete[](void *)
188D0C:  MOV             R0, R5
188D0E:  MOV             R1, R6
188D10:  BL              sub_17E56C
188D14:  LDR.W           R0, [R7,#var_54]
188D18:  CMP.W           R0, #0x100000
188D1C:  ITT CS
188D1E:  MOVCS           R0, R9; void *
188D20:  BLXCS           j__ZdaPv; operator delete[](void *)
188D24:  LDR             R1, =(aDone - 0x188D30); "{}: Done!" ...
188D26:  MOVS            R0, #1
188D28:  LDR             R3, =(aSplitpacket - 0x188D32); "SplitPacket" ...
188D2A:  MOVS            R2, #9
188D2C:  ADD             R1, PC; "{}: Done!"
188D2E:  ADD             R3, PC; "SplitPacket"
188D30:  BL              sub_18B6F0
188D34:  SUB.W           R4, R7, #-var_1C
188D38:  MOV             SP, R4
188D3A:  POP.W           {R8-R11}
188D3E:  POP             {R4-R7,PC}
