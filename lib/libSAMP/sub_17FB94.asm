; =========================================================
; Game Engine Function: sub_17FB94
; Address            : 0x17FB94 - 0x17FDB4
; =========================================================

17FB94:  PUSH            {R4-R7,LR}
17FB96:  ADD             R7, SP, #0xC
17FB98:  PUSH.W          {R8-R11}
17FB9C:  SUB             SP, SP, #0xD4
17FB9E:  MOV             R4, R0
17FBA0:  LDR             R0, [R0]
17FBA2:  MOV             R5, R1
17FBA4:  MOV             R10, R3
17FBA6:  MOV             R6, R2
17FBA8:  LDR             R1, [R0,#0x2C]
17FBAA:  MOV             R0, R4
17FBAC:  BLX             R1
17FBAE:  CMP             R0, #0
17FBB0:  BNE.W           loc_17FD5E
17FBB4:  CMP             R5, #0
17FBB6:  BEQ.W           loc_17FD5E
17FBBA:  LDR.W           R0, [R4,#0x7EC]
17FBBE:  LDR.W           R9, [R7,#arg_0]
17FBC2:  ADDS            R0, #1
17FBC4:  BNE             loc_17FBF2
17FBC6:  LDR             R0, =(off_234E88 - 0x17FBD2)
17FBC8:  MOV             R1, R6
17FBCA:  MOVS            R2, #1
17FBCC:  MOV             R3, R9
17FBCE:  ADD             R0, PC; off_234E88
17FBD0:  LDR.W           R8, [R0]; unk_382751
17FBD4:  MOV             R0, R8
17FBD6:  BL              sub_18CB94
17FBDA:  MOV             R1, R0; fd
17FBDC:  STR.W           R0, [R4,#0x7EC]
17FBE0:  ADDS            R0, #1
17FBE2:  BEQ.W           loc_17FD5E
17FBE6:  MOV             R0, R8; int
17FBE8:  BL              sub_18CE02
17FBEC:  CMP             R0, #0
17FBEE:  IT NE
17FBF0:  MOVNE           R6, R0
17FBF2:  LDRH            R0, [R4,#8]
17FBF4:  CMP             R0, #0
17FBF6:  BNE             loc_17FCD8
17FBF8:  LDRH            R0, [R4,#0xA]
17FBFA:  STRD.W          R10, R6, [SP,#0xF0+var_E0]
17FBFE:  CMP             R0, R5
17FC00:  ADD.W           R0, R5, R5,LSL#5
17FC04:  IT HI
17FC06:  STRHHI          R5, [R4,#0xA]
17FC08:  STRH            R5, [R4,#8]
17FC0A:  MOV.W           R8, R0,LSL#6
17FC0E:  ADD.W           R0, R8, #8; unsigned int
17FC12:  BLX             j__Znaj; operator new[](uint)
17FC16:  ADDW            R9, R0, #0x70C
17FC1A:  ADDW            R10, R0, #0x838
17FC1E:  MOV.W           R1, #0x840
17FC22:  MOVS            R6, #0
17FC24:  STRD.W          R1, R5, [R0]
17FC28:  STR             R0, [SP,#0xF0+var_D8]
17FC2A:  ADDS            R0, #8
17FC2C:  STR             R0, [SP,#0xF0+var_E4]
17FC2E:  LDR             R0, [SP,#0xF0+var_D8]
17FC30:  ADD.W           R11, R0, R6
17FC34:  ADD.W           R5, R11, #0x20 ; ' '
17FC38:  MOV             R0, R5
17FC3A:  BL              sub_1871D0
17FC3E:  ADD.W           R0, R9, R6
17FC42:  BL              sub_17D4A8
17FC46:  ADD.W           R0, R10, R6
17FC4A:  BL              sub_17E5DA
17FC4E:  ADD.W           R6, R6, #0x840
17FC52:  CMP             R8, R6
17FC54:  BNE             loc_17FC2E
17FC56:  LDR             R0, [SP,#0xF0+var_E4]
17FC58:  STR.W           R0, [R4,#0x340]
17FC5C:  LDRH            R0, [R4,#8]
17FC5E:  LDR.W           R10, [SP,#0xF0+var_E0]
17FC62:  CBZ             R0, loc_17FCC8
17FC64:  ADDW            R9, R4, #0x808
17FC68:  LDRH.W          R1, [R4,#0x812]
17FC6C:  LDR             R6, [SP,#0xF0+var_D8]
17FC6E:  MOV.W           R8, #0
17FC72:  VLDR            D16, [R9]
17FC76:  LDRH.W          R0, [R4,#0x810]
17FC7A:  VMOV            R2, R3, D16
17FC7E:  STRD.W          R0, R1, [SP,#0xF0+var_F0]
17FC82:  ADD.W           R0, R6, #0x20 ; ' '
17FC86:  STRB.W          R8, [R6,#8]
17FC8A:  BL              sub_189D3C
17FC8E:  LDRH            R0, [R4,#8]
17FC90:  CMP             R0, #2
17FC92:  BCC             loc_17FCC8
17FC94:  MOVS            R6, #1
17FC96:  MOVW            R5, #0x858
17FC9A:  VLDR            D16, [R9]
17FC9E:  LDR.W           R0, [R4,#0x340]
17FCA2:  VMOV            R2, R3, D16
17FCA6:  LDRH.W          R12, [R4,#0x812]
17FCAA:  ADD             R0, R5
17FCAC:  LDRH.W          R1, [R4,#0x810]
17FCB0:  STRB.W          R8, [R0,#-0x18]
17FCB4:  STRD.W          R1, R12, [SP,#0xF0+var_F0]
17FCB8:  BL              sub_189D3C
17FCBC:  LDRH            R0, [R4,#8]
17FCBE:  ADDS            R6, #1
17FCC0:  ADD.W           R5, R5, #0x840
17FCC4:  CMP             R6, R0
17FCC6:  BCC             loc_17FC9A
17FCC8:  ADD.W           R0, R4, #0x344
17FCCC:  MOVS            R1, #0
17FCCE:  BL              sub_1848EA
17FCD2:  LDR             R6, [SP,#0xF0+var_DC]
17FCD4:  LDR.W           R9, [R7,#arg_0]
17FCD8:  LDRB            R0, [R4,#4]
17FCDA:  CMP             R0, #0
17FCDC:  BEQ             loc_17FD62
17FCDE:  ADD.W           R0, R4, #0x3A4; int
17FCE2:  MOV.W           R1, #0x400; n
17FCE6:  BLX             sub_22178C
17FCEA:  MOVS            R0, #0
17FCEC:  VMOV.I32        Q8, #0
17FCF0:  STRB.W          R0, [R4,#0x354]
17FCF4:  MOVS            R1, #0x3C ; '<'
17FCF6:  STRB            R0, [R4,#4]
17FCF8:  ADDW            R0, R4, #0x7AC
17FCFC:  VST1.32         {D16-D17}, [R0],R1
17FD00:  STR.W           R10, [R0]
17FD04:  MOV             R0, R4
17FD06:  BL              sub_17FE12
17FD0A:  LDR             R0, =(off_234E88 - 0x17FD12)
17FD0C:  ADD             R5, SP, #0xF0+attr+0x18
17FD0E:  ADD             R0, PC; off_234E88
17FD10:  MOV             R1, R5
17FD12:  LDR             R0, [R0]; unk_382751
17FD14:  BL              sub_18CDAE
17FD18:  CMP.W           R9, #0
17FD1C:  STRH.W          R6, [R4,#0x238]
17FD20:  BEQ             loc_17FD2C
17FD22:  LDRB.W          R0, [R9]
17FD26:  CMP             R0, #0
17FD28:  IT NE
17FD2A:  MOVNE           R5, R9
17FD2C:  MOV             R0, R5; cp
17FD2E:  BLX             inet_addr
17FD32:  ADD             R5, SP, #0xF0+attr
17FD34:  STR.W           R0, [R4,#0x234]
17FD38:  MOV             R0, R5; attr
17FD3A:  BLX             pthread_attr_init
17FD3E:  MOV             R0, R5; attr
17FD40:  MOVS            R1, #1; detachstate
17FD42:  BLX             pthread_attr_setdetachstate
17FD46:  LDRB            R0, [R4,#5]
17FD48:  CBZ             R0, loc_17FD90
17FD4A:  MOVS            R1, #0
17FD4C:  LDRB            R0, [R4,#5]
17FD4E:  STR.W           R1, [R4,#0x364]
17FD52:  CBNZ            R0, loc_17FD62
17FD54:  MOVS            R0, #0xA
17FD56:  BL              sub_186FEC
17FD5A:  LDRB            R0, [R4,#5]
17FD5C:  B               loc_17FD52
17FD5E:  MOVS            R5, #0
17FD60:  B               loc_17FD86
17FD62:  LDR.W           R0, [R4,#0x384]
17FD66:  CBZ             R0, loc_17FD84
17FD68:  MOVS            R5, #0
17FD6A:  LDR.W           R0, [R4,#0x380]
17FD6E:  LDR.W           R0, [R0,R5,LSL#2]
17FD72:  LDR             R1, [R0]
17FD74:  LDR             R2, [R1,#8]
17FD76:  MOV             R1, R4
17FD78:  BLX             R2
17FD7A:  LDR.W           R0, [R4,#0x384]
17FD7E:  ADDS            R5, #1
17FD80:  CMP             R5, R0
17FD82:  BCC             loc_17FD6A
17FD84:  MOVS            R5, #1
17FD86:  MOV             R0, R5
17FD88:  ADD             SP, SP, #0xD4
17FD8A:  POP.W           {R8-R11}
17FD8E:  POP             {R4-R7,PC}
17FD90:  LDR             R2, =(sub_17FE74+1 - 0x17FD9E)
17FD92:  ADD.W           R0, R4, #0x364; newthread
17FD96:  ADD             R1, SP, #0xF0+attr; attr
17FD98:  MOV             R3, R4; arg
17FD9A:  ADD             R2, PC; sub_17FE74 ; start_routine
17FD9C:  BLX             pthread_create
17FDA0:  CMP             R0, #0
17FDA2:  BEQ             loc_17FD4A
17FDA4:  LDR             R0, [R4]
17FDA6:  MOVS            R1, #0
17FDA8:  MOVS            R2, #0
17FDAA:  MOVS            R5, #0
17FDAC:  LDR             R3, [R0,#0x28]
17FDAE:  MOV             R0, R4
17FDB0:  BLX             R3
17FDB2:  B               loc_17FD86
