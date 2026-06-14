; =========================================================
; Game Engine Function: _ZN9CPathFind25RecordNodesClosestToCoorsE7CVectorhiP12CNodeAddressfbbbb
; Address            : 0x317B50 - 0x317C7C
; =========================================================

317B50:  PUSH            {R4-R7,LR}
317B52:  ADD             R7, SP, #0xC
317B54:  PUSH.W          {R8-R11}
317B58:  SUB             SP, SP, #4
317B5A:  VPUSH           {D8}
317B5E:  SUB             SP, SP, #0x28
317B60:  LDR.W           R9, [R7,#arg_8]
317B64:  MOV             R8, R0
317B66:  LDR.W           R12, [R7,#arg_0]
317B6A:  VLDR            S16, [R7,#arg_C]
317B6E:  STR             R2, [SP,#0x50+var_2C]
317B70:  STRD.W          R3, R1, [SP,#0x50+var_34]
317B74:  MOVS            R1, #0
317B76:  MOVW            R3, #0x1104
317B7A:  ADD.W           R5, R8, R1,LSL#2
317B7E:  LDR.W           R6, [R5,#0x804]
317B82:  CBZ             R6, loc_317BF4
317B84:  CMP.W           R12, #1
317B88:  BEQ             loc_317B96
317B8A:  CMP.W           R12, #0
317B8E:  BNE             loc_317BA0
317B90:  ADDS            R2, R5, R3
317B92:  MOVS            R0, #0
317B94:  B               loc_317B9C
317B96:  LDR             R0, [R5,R3]
317B98:  ADDW            R2, R5, #0xFE4
317B9C:  LDR.W           R10, [R2]
317BA0:  CMP             R0, R10
317BA2:  BGE             loc_317BF4
317BA4:  RSB.W           R2, R0, R0,LSL#3
317BA8:  ADD.W           R6, R6, R2,LSL#2
317BAC:  LDRH.W          R4, [R6,#0x18]!
317BB0:  BIC.W           R4, R4, #0x200
317BB4:  STRH            R4, [R6]
317BB6:  ADDS            R4, R0, #1
317BB8:  CMP             R4, R10
317BBA:  BEQ             loc_317BF4
317BBC:  SUB.W           R4, R10, #1
317BC0:  MOVS            R3, #0x34 ; '4'
317BC2:  ADDW            R5, R5, #0x804
317BC6:  SUBS            R6, R4, R0
317BC8:  ADD.W           R2, R3, R2,LSL#2
317BCC:  LDR             R4, [R5]
317BCE:  SUBS            R6, #1
317BD0:  ADD.W           LR, R4, R2
317BD4:  LDRH.W          R12, [R4,R2]
317BD8:  LDRB.W          R11, [LR,#2]
317BDC:  BIC.W           R3, R12, #0x200
317BE0:  STRH            R3, [R4,R2]
317BE2:  ADD.W           R2, R2, #0x1C
317BE6:  STRB.W          R11, [LR,#2]
317BEA:  BNE             loc_317BCC
317BEC:  LDR.W           R12, [R7,#arg_0]
317BF0:  MOVW            R3, #0x1104
317BF4:  ADDS            R1, #1
317BF6:  CMP             R1, #0x48 ; 'H'
317BF8:  BNE             loc_317B7A
317BFA:  LDR             R0, [R7,#arg_4]
317BFC:  LDR             R4, [SP,#0x50+var_34]
317BFE:  CMP             R0, #1
317C00:  BLT             loc_317C6E
317C02:  ADD.W           R11, R0, #1
317C06:  MOV.W           R10, #1
317C0A:  MOVS            R5, #0
317C0C:  MOVW            R6, #0xFFFF
317C10:  LDR             R0, [R7,#arg_10]
317C12:  ADD             R1, SP, #0x50+var_48
317C14:  MOV             R3, R4
317C16:  STM.W           R1, {R0,R5,R10}
317C1A:  LDR             R0, [R7,#arg_18]
317C1C:  STR             R0, [SP,#0x50+var_3C]
317C1E:  LDR             R0, [R7,#arg_1C]
317C20:  STR             R0, [SP,#0x50+var_38]
317C22:  MOV             R0, R8
317C24:  VSTR            S16, [SP,#0x50+var_4C]
317C28:  STR.W           R12, [SP,#0x50+var_50]
317C2C:  LDRD.W          R1, R2, [SP,#0x50+var_30]
317C30:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
317C34:  LDR.W           R12, [R7,#arg_0]
317C38:  UXTH            R1, R0
317C3A:  CMP             R1, R6
317C3C:  BEQ             loc_317C6E
317C3E:  ADD.W           R1, R8, R1,LSL#2
317C42:  LSRS            R2, R0, #0x10
317C44:  LSLS            R2, R2, #3
317C46:  SUB.W           R11, R11, #1
317C4A:  LDR.W           R1, [R1,#0x804]
317C4E:  SUB.W           R2, R2, R0,LSR#16
317C52:  CMP.W           R11, #1
317C56:  ADD.W           R1, R1, R2,LSL#2
317C5A:  LDRH.W          R2, [R1,#0x18]!
317C5E:  LDRB            R3, [R1,#2]
317C60:  ORR.W           R2, R2, #0x200
317C64:  STRH            R2, [R1]
317C66:  STRB            R3, [R1,#2]
317C68:  STR.W           R0, [R9],#4
317C6C:  BGT             loc_317C10
317C6E:  ADD             SP, SP, #0x28 ; '('
317C70:  VPOP            {D8}
317C74:  ADD             SP, SP, #4
317C76:  POP.W           {R8-R11}
317C7A:  POP             {R4-R7,PC}
