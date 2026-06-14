; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation14SetCurrentTimeEf
; Address            : 0x389F5A - 0x389FF6
; =========================================================

389F5A:  PUSH            {R4-R7,LR}
389F5C:  ADD             R7, SP, #0xC
389F5E:  PUSH.W          {R11}
389F62:  MOV             R4, R0
389F64:  VMOV            S0, R1
389F68:  LDR             R0, [R4,#0x14]; this
389F6A:  STR             R1, [R4,#0x20]
389F6C:  VLDR            S2, [R0,#0x10]
389F70:  VCMPE.F32       S2, S0
389F74:  VMRS            APSR_nzcv, FPSCR
389F78:  BGT             loc_389F9E
389F7A:  LDRH            R1, [R4,#0x2E]
389F7C:  AND.W           R1, R1, #2; CAnimBlendHierarchy *
389F80:  CBZ             R1, loc_389F9A
389F82:  VSUB.F32        S0, S0, S2
389F86:  VSTR            S0, [R4,#0x20]
389F8A:  VLDR            S2, [R0,#0x10]
389F8E:  VCMPE.F32       S0, S2
389F92:  VMRS            APSR_nzcv, FPSCR
389F96:  BGE             loc_389F80
389F98:  B               loc_389F9E
389F9A:  VSTR            S2, [R4,#0x20]
389F9E:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
389FA2:  LDR             R0, [R4,#0x14]
389FA4:  LDRSH.W         R1, [R4,#0xC]
389FA8:  LDRB            R0, [R0,#0xB]
389FAA:  CBZ             R0, loc_389FCE
389FAC:  CMP             R1, #1
389FAE:  BLT             loc_389FF0
389FB0:  MOVS            R5, #0
389FB2:  MOVS            R6, #0
389FB4:  LDR             R0, [R4,#0x10]
389FB6:  ADD             R0, R5; this
389FB8:  LDR             R2, [R0,#0x10]
389FBA:  CBZ             R2, loc_389FC2
389FBC:  BLX             j__ZN14CAnimBlendNode23SetupKeyFrameCompressedEv; CAnimBlendNode::SetupKeyFrameCompressed(void)
389FC0:  LDRH            R1, [R4,#0xC]
389FC2:  ADDS            R5, #0x18
389FC4:  ADDS            R6, #1
389FC6:  SXTH            R0, R1
389FC8:  CMP             R6, R0
389FCA:  BLT             loc_389FB4
389FCC:  B               loc_389FF0
389FCE:  CMP             R1, #1
389FD0:  BLT             loc_389FF0
389FD2:  MOVS            R5, #0
389FD4:  MOVS            R6, #0
389FD6:  LDR             R0, [R4,#0x10]
389FD8:  ADD             R0, R5; this
389FDA:  LDR             R2, [R0,#0x10]
389FDC:  CBZ             R2, loc_389FE6
389FDE:  LDR             R1, [R4,#0x20]; float
389FE0:  BLX             j__ZN14CAnimBlendNode12FindKeyFrameEf; CAnimBlendNode::FindKeyFrame(float)
389FE4:  LDRH            R1, [R4,#0xC]
389FE6:  ADDS            R5, #0x18
389FE8:  ADDS            R6, #1
389FEA:  SXTH            R0, R1
389FEC:  CMP             R6, R0
389FEE:  BLT             loc_389FD6
389FF0:  POP.W           {R11}
389FF4:  POP             {R4-R7,PC}
