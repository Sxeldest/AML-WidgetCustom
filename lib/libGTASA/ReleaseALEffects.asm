; =========================================================
; Game Engine Function: ReleaseALEffects
; Address            : 0x253B48 - 0x253CF0
; =========================================================

253B48:  PUSH            {R4-R7,LR}
253B4A:  ADD             R7, SP, #0xC
253B4C:  PUSH.W          {R8-R11}
253B50:  SUB             SP, SP, #0x14
253B52:  LDR             R1, [R0,#0x68]
253B54:  CMP             R1, #1
253B56:  BLT.W           loc_253CE8
253B5A:  LDR             R2, =(dword_6D681C - 0x253B6A)
253B5C:  MOVS            R6, #0
253B5E:  LDR             R4, =(dword_6D681C - 0x253B70)
253B60:  MOVS            R5, #1
253B62:  LDR.W           R8, =(dword_6D681C - 0x253B76)
253B66:  ADD             R2, PC; dword_6D681C
253B68:  LDR.W           R10, =(dword_6D681C - 0x253B7C)
253B6C:  ADD             R4, PC; dword_6D681C
253B6E:  LDR.W           R9, =(dword_6D681C - 0x253B7E)
253B72:  ADD             R8, PC; dword_6D681C
253B74:  LDR.W           R11, =(dword_6D681C - 0x253B82)
253B78:  ADD             R10, PC; dword_6D681C
253B7A:  ADD             R9, PC; dword_6D681C
253B7C:  MOVS            R3, #0
253B7E:  ADD             R11, PC; dword_6D681C
253B80:  STR             R0, [SP,#0x30+var_2C]
253B82:  LDR             R0, [R0,#0x64]
253B84:  STR             R3, [SP,#0x30+var_20]
253B86:  ADD.W           R0, R0, R3,LSL#3
253B8A:  LDR             R1, [R0,#4]
253B8C:  STR             R6, [R0,#4]
253B8E:  STR             R1, [SP,#0x30+p]
253B90:  LDR.W           R0, [R1,#0xB4]
253B94:  STR             R0, [SP,#0x30+var_28]
253B96:  DMB.W           ISH
253B9A:  LDREX.W         R0, [R2,#0xC]
253B9E:  STREX.W         R1, R5, [R2,#0xC]
253BA2:  CMP             R1, #0
253BA4:  BNE             loc_253B9A
253BA6:  B               loc_253BBC
253BA8:  BLX             sched_yield
253BAC:  DMB.W           ISH
253BB0:  LDREX.W         R0, [R4,#0xC]
253BB4:  STREX.W         R1, R5, [R4,#0xC]
253BB8:  CMP             R1, #0
253BBA:  BNE             loc_253BB0
253BBC:  CMP             R0, #1
253BBE:  DMB.W           ISH
253BC2:  BEQ             loc_253BA8
253BC4:  LDR             R2, =(dword_6D681C - 0x253BCE)
253BC6:  DMB.W           ISH
253BCA:  ADD             R2, PC; dword_6D681C
253BCC:  LDREX.W         R0, [R2,#8]
253BD0:  STREX.W         R1, R5, [R2,#8]
253BD4:  CMP             R1, #0
253BD6:  BNE             loc_253BCC
253BD8:  B               loc_253BEE
253BDA:  BLX             sched_yield
253BDE:  DMB.W           ISH
253BE2:  LDREX.W         R0, [R8,#8]
253BE6:  STREX.W         R1, R5, [R8,#8]
253BEA:  CMP             R1, #0
253BEC:  BNE             loc_253BE2
253BEE:  CMP             R0, #1
253BF0:  DMB.W           ISH
253BF4:  BEQ             loc_253BDA
253BF6:  LDR             R3, =(dword_6D681C - 0x253C00)
253BF8:  DMB.W           ISH
253BFC:  ADD             R3, PC; dword_6D681C
253BFE:  LDREX.W         R0, [R3]
253C02:  ADDS            R1, R0, #1
253C04:  STREX.W         R2, R1, [R3]
253C08:  CMP             R2, #0
253C0A:  BNE             loc_253BFE
253C0C:  CMP             R0, #0
253C0E:  DMB.W           ISH
253C12:  BNE             loc_253C46
253C14:  LDR             R2, =(dword_6D681C - 0x253C1E)
253C16:  DMB.W           ISH
253C1A:  ADD             R2, PC; dword_6D681C
253C1C:  LDREX.W         R0, [R2,#0x10]
253C20:  STREX.W         R1, R5, [R2,#0x10]
253C24:  CMP             R1, #0
253C26:  BNE             loc_253C1C
253C28:  B               loc_253C3E
253C2A:  BLX             sched_yield
253C2E:  DMB.W           ISH
253C32:  LDREX.W         R0, [R10,#0x10]
253C36:  STREX.W         R1, R5, [R10,#0x10]
253C3A:  CMP             R1, #0
253C3C:  BNE             loc_253C32
253C3E:  CMP             R0, #1
253C40:  DMB.W           ISH
253C44:  BEQ             loc_253C2A
253C46:  LDR             R1, =(dword_6D681C - 0x253C50)
253C48:  DMB.W           ISH
253C4C:  ADD             R1, PC; dword_6D681C
253C4E:  LDREX.W         R0, [R1,#8]
253C52:  STREX.W         R0, R6, [R1,#8]
253C56:  CMP             R0, #0
253C58:  BNE             loc_253C4E
253C5A:  DMB.W           ISH
253C5E:  DMB.W           ISH
253C62:  LDREX.W         R0, [R9,#0xC]
253C66:  STREX.W         R0, R6, [R9,#0xC]
253C6A:  CMP             R0, #0
253C6C:  BNE             loc_253C62
253C6E:  LDR             R0, =(dword_6D6830 - 0x253C78)
253C70:  DMB.W           ISH
253C74:  ADD             R0, PC; dword_6D6830
253C76:  LDR             R1, [R0]
253C78:  LDR             R0, [SP,#0x30+var_28]
253C7A:  SUBS            R0, #1
253C7C:  CMP             R0, R1
253C7E:  BCS             loc_253C9E
253C80:  LDR             R1, =(dword_6D6834 - 0x253C86)
253C82:  ADD             R1, PC; dword_6D6834
253C84:  LDR             R1, [R1]
253C86:  DMB.W           ISH
253C8A:  ADD.W           R0, R1, R0,LSL#2
253C8E:  LDREX.W         R1, [R0]
253C92:  STREX.W         R1, R6, [R0]
253C96:  CMP             R1, #0
253C98:  BNE             loc_253C8E
253C9A:  DMB.W           ISH
253C9E:  DMB.W           ISH
253CA2:  LDREX.W         R0, [R11]
253CA6:  SUBS            R1, R0, #1
253CA8:  STREX.W         R2, R1, [R11]
253CAC:  CMP             R2, #0
253CAE:  BNE             loc_253CA2
253CB0:  CMP             R0, #1
253CB2:  DMB.W           ISH
253CB6:  BNE             loc_253CD0
253CB8:  LDR             R1, =(dword_6D681C - 0x253CC2)
253CBA:  DMB.W           ISH
253CBE:  ADD             R1, PC; dword_6D681C
253CC0:  LDREX.W         R0, [R1,#0x10]
253CC4:  STREX.W         R0, R6, [R1,#0x10]
253CC8:  CMP             R0, #0
253CCA:  BNE             loc_253CC0
253CCC:  DMB.W           ISH
253CD0:  LDR             R0, [SP,#0x30+p]; p
253CD2:  BLX             free
253CD6:  LDR             R0, [SP,#0x30+var_2C]
253CD8:  LDR             R3, [SP,#0x30+var_20]
253CDA:  LDR             R2, =(dword_6D681C - 0x253CE4)
253CDC:  LDR             R1, [R0,#0x68]
253CDE:  ADDS            R3, #1
253CE0:  ADD             R2, PC; dword_6D681C
253CE2:  CMP             R3, R1
253CE4:  BLT.W           loc_253B82
253CE8:  ADD             SP, SP, #0x14
253CEA:  POP.W           {R8-R11}
253CEE:  POP             {R4-R7,PC}
