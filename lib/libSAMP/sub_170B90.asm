; =========================================================
; Game Engine Function: sub_170B90
; Address            : 0x170B90 - 0x170C84
; =========================================================

170B90:  PUSH            {R4-R7,LR}
170B92:  ADD             R7, SP, #0xC
170B94:  PUSH.W          {R8-R11}
170B98:  SUB             SP, SP, #0x1C
170B9A:  LDR             R4, =(dword_381B58 - 0x170BA8)
170B9C:  MOVW            R1, #0x2D14
170BA0:  MOV             R11, SP
170BA2:  MOV             R9, R0
170BA4:  ADD             R4, PC; dword_381B58
170BA6:  VMOV.I32        Q8, #0
170BAA:  MOV             R5, R11
170BAC:  LDR             R2, [R4]
170BAE:  ADDS            R6, R2, R1
170BB0:  LDR             R0, [R2,R1]
170BB2:  MOVS            R1, #9
170BB4:  LDR             R3, [R6,#4]
170BB6:  VST1.64         {D16-D17}, [R5],R1
170BBA:  CMP             R0, R3
170BBC:  VST1.8          {D16-D17}, [R5]
170BC0:  BNE             loc_170C38
170BC2:  CMP             R0, #0
170BC4:  ADD.W           R5, R0, #1
170BC8:  ITTE NE
170BCA:  ADDNE.W         R1, R0, R0,LSR#31
170BCE:  ADDNE.W         R1, R0, R1,ASR#1
170BD2:  MOVEQ           R1, #8
170BD4:  CMP             R1, R5
170BD6:  IT GT
170BD8:  MOVGT           R5, R1
170BDA:  MOV             R10, R4
170BDC:  CMP             R0, R5
170BDE:  BGE             loc_170C38
170BE0:  LDR             R0, =(off_2390AC - 0x170BE8)
170BE2:  LDR             R4, =(dword_381B60 - 0x170BEE)
170BE4:  ADD             R0, PC; off_2390AC
170BE6:  LDR.W           R3, [R2,#0x370]
170BEA:  ADD             R4, PC; dword_381B60
170BEC:  LDR.W           R12, [R0]; sub_171190
170BF0:  ADDS            R0, R3, #1
170BF2:  STR.W           R0, [R2,#0x370]
170BF6:  RSB.W           R0, R5, R5,LSL#3
170BFA:  LDR             R1, [R4]
170BFC:  LSLS            R0, R0, #2
170BFE:  BLX             R12; sub_171190
170C00:  LDR             R1, [R6,#8]; src
170C02:  MOV             R8, R0
170C04:  CBZ             R1, loc_170C32
170C06:  LDR             R0, [R6]
170C08:  RSB.W           R0, R0, R0,LSL#3
170C0C:  LSLS            R2, R0, #2; n
170C0E:  MOV             R0, R8; dest
170C10:  BLX             j_memcpy
170C14:  LDR             R0, [R6,#8]
170C16:  CBZ             R0, loc_170C28
170C18:  LDR.W           R1, [R10]
170C1C:  CBZ             R1, loc_170C28
170C1E:  LDR.W           R2, [R1,#0x370]
170C22:  SUBS            R2, #1
170C24:  STR.W           R2, [R1,#0x370]
170C28:  LDR             R2, =(off_2390B0 - 0x170C30)
170C2A:  LDR             R1, [R4]
170C2C:  ADD             R2, PC; off_2390B0
170C2E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
170C30:  BLX             R2; j_opus_decoder_destroy_0
170C32:  LDR             R0, [R6]
170C34:  STRD.W          R5, R8, [R6,#4]
170C38:  MOVS            R1, #0xC
170C3A:  LDR             R2, [R6,#8]
170C3C:  RSB.W           R0, R0, R0,LSL#3
170C40:  VLD1.8          {D16-D17}, [R11],R1
170C44:  ADD.W           R0, R2, R0,LSL#2
170C48:  VLD1.32         {D18-D19}, [R11]
170C4C:  VST1.8          {D16-D17}, [R0],R1
170C50:  VST1.8          {D18-D19}, [R0]
170C54:  LDR             R0, [R6]
170C56:  LDR             R4, [R6,#8]
170C58:  ADDS            R1, R0, #1
170C5A:  STR             R1, [R6]
170C5C:  RSB.W           R5, R0, R0,LSL#3
170C60:  MOV             R0, R9
170C62:  BL              sub_165460
170C66:  STR.W           R0, [R4,R5,LSL#2]
170C6A:  MOV             R0, R9
170C6C:  MOVS            R1, #0
170C6E:  MOVS            R2, #0
170C70:  ADD.W           R5, R4, R5,LSL#2
170C74:  BL              sub_16560C
170C78:  STR             R0, [R5,#4]
170C7A:  MOV             R0, R5
170C7C:  ADD             SP, SP, #0x1C
170C7E:  POP.W           {R8-R11}
170C82:  POP             {R4-R7,PC}
