; =========================================================
; Game Engine Function: _Z23RxLockedPipeAddFragmentP10RxPipelinePjP16RxNodeDefinitionz
; Address            : 0x1DFA4C - 0x1DFBE4
; =========================================================

1DFA4C:  SUB             SP, SP, #4
1DFA4E:  PUSH            {R4-R7,LR}
1DFA50:  ADD             R7, SP, #0xC
1DFA52:  PUSH.W          {R8-R11}
1DFA56:  SUB             SP, SP, #0x18
1DFA58:  MOV             R4, R0
1DFA5A:  CMP             R4, #0
1DFA5C:  STR             R3, [R7,#var_s8]
1DFA5E:  BEQ             loc_1DFAB0
1DFA60:  LDR             R0, [R4]
1DFA62:  CBZ             R0, loc_1DFABC
1DFA64:  ADD.W           R0, R7, #8
1DFA68:  CMP             R2, #0
1DFA6A:  STR             R0, [SP,#0x34+var_20]
1DFA6C:  BEQ.W           loc_1DFBB6
1DFA70:  LDR             R3, [SP,#0x34+var_20]
1DFA72:  MOVS            R5, #0
1DFA74:  ADDS            R6, R3, #4
1DFA76:  STR             R6, [SP,#0x34+var_20]
1DFA78:  SUBS            R5, #1
1DFA7A:  LDR.W           R3, [R6,#-4]
1DFA7E:  ADDS            R6, #4
1DFA80:  CMP             R3, #0
1DFA82:  BNE             loc_1DFA76
1DFA84:  CMP             R5, #0
1DFA86:  BEQ.W           loc_1DFBB6
1DFA8A:  LDR             R6, =(_rxPipelineGlobalsOffset_ptr - 0x1DFA92)
1DFA8C:  LDR             R3, =(RwEngineInstance_ptr - 0x1DFA98)
1DFA8E:  ADD             R6, PC; _rxPipelineGlobalsOffset_ptr
1DFA90:  LDR.W           R12, [R4,#4]
1DFA94:  ADD             R3, PC; RwEngineInstance_ptr
1DFA96:  LDR             R6, [R6]; _rxPipelineGlobalsOffset
1DFA98:  LDR             R3, [R3]; RwEngineInstance
1DFA9A:  LDR             R6, [R6]
1DFA9C:  LDR             R3, [R3]
1DFA9E:  ADD             R3, R6
1DFAA0:  LDR             R6, [R3,#0x38]
1DFAA2:  SUB.W           R3, R12, R5
1DFAA6:  CMP             R3, R6
1DFAA8:  BLS             loc_1DFAD0
1DFAAA:  MOVS            R4, #0
1DFAAC:  MOVS            R0, #0x2A ; '*'
1DFAAE:  B               loc_1DFAC0
1DFAB0:  MOVS            R0, #0x16
1DFAB2:  MOVS            R4, #0
1DFAB4:  STR             R4, [SP,#0x34+var_28]
1DFAB6:  MOVT            R0, #0x8000
1DFABA:  B               loc_1DFAC2
1DFABC:  MOVS            R4, #0
1DFABE:  MOVS            R0, #0x34 ; '4'; int
1DFAC0:  STR             R4, [SP,#0x34+var_28]
1DFAC2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DFAC6:  STR             R0, [SP,#0x34+var_24]
1DFAC8:  ADD             R0, SP, #0x34+var_28
1DFACA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DFACE:  B               loc_1DFBB8
1DFAD0:  CMP             R2, #0
1DFAD2:  STR             R1, [SP,#0x34+var_30]
1DFAD4:  STR             R0, [SP,#0x34+var_20]
1DFAD6:  BEQ             loc_1DFB8E
1DFAD8:  ADD.W           R0, R12, R12,LSL#2
1DFADC:  MOV.W           R8, #0
1DFAE0:  MOVS            R6, #0
1DFAE2:  STR.W           R12, [SP,#0x34+var_2C]
1DFAE6:  MOV.W           R11, R0,LSL#3
1DFAEA:  LDR.W           R10, [R4,#8]
1DFAEE:  MOV             R0, R4
1DFAF0:  ADD.W           R9, R10, R11
1DFAF4:  MOV             R1, R9
1DFAF6:  BL              sub_1DFBEC
1DFAFA:  CMP             R0, #0
1DFAFC:  BEQ             loc_1DFBD0
1DFAFE:  CMP.W           R8, #0
1DFB02:  BEQ             loc_1DFB6A
1DFB04:  LDR.W           R0, [R8]
1DFB08:  CBZ             R0, loc_1DFB1A
1DFB0A:  LDR.W           R0, [R8,#4]
1DFB0E:  CMP             R0, #0
1DFB10:  ITE NE
1DFB12:  LDRNE.W         R0, [R8,#8]
1DFB16:  MOVEQ           R0, #0
1DFB18:  B               loc_1DFB1C
1DFB1A:  MOVS            R0, #0
1DFB1C:  CMP.W           R9, #0
1DFB20:  ITT NE
1DFB22:  LDRNE.W         R1, [R10,R11]
1DFB26:  CMPNE           R1, #0
1DFB28:  BEQ             loc_1DFB30
1DFB2A:  MOV             R1, R9
1DFB2C:  CBNZ            R0, loc_1DFB36
1DFB2E:  B               loc_1DFBC8
1DFB30:  MOVS            R1, #0
1DFB32:  CMP             R0, #0
1DFB34:  BEQ             loc_1DFBC8
1DFB36:  LDR             R2, [R4]
1DFB38:  CMP             R2, #0
1DFB3A:  IT NE
1DFB3C:  CMPNE           R1, #0
1DFB3E:  BEQ             loc_1DFBC8
1DFB40:  LDR             R2, [R0]
1DFB42:  ADDS            R2, #1
1DFB44:  BNE             loc_1DFBC8
1DFB46:  LDR             R2, [R1]
1DFB48:  CMP             R2, #0
1DFB4A:  ITTT NE
1DFB4C:  LDRNE           R2, [R4,#8]
1DFB4E:  SUBNE           R1, R1, R2
1DFB50:  ADDSNE.W        R2, R1, #0x28 ; '('
1DFB54:  BEQ             loc_1DFBC8
1DFB56:  MOVW            R3, #0xCCCD
1DFB5A:  ASRS            R1, R1, #3
1DFB5C:  MOVT            R3, #0xCCCC
1DFB60:  LDR             R2, [R4,#4]
1DFB62:  MULS            R1, R3
1DFB64:  CMP             R1, R2
1DFB66:  BCS             loc_1DFBC8
1DFB68:  STR             R1, [R0]
1DFB6A:  LDR.W           R12, [SP,#0x34+var_2C]
1DFB6E:  ADD.W           R11, R11, #0x28 ; '('
1DFB72:  ADD.W           R0, R6, R12
1DFB76:  ADDS            R6, #1
1DFB78:  ADD.W           R0, R0, R0,LSL#2
1DFB7C:  ADD.W           R8, R10, R0,LSL#3
1DFB80:  LDR             R0, [SP,#0x34+var_20]
1DFB82:  ADDS            R1, R0, #4
1DFB84:  STR             R1, [SP,#0x34+var_20]
1DFB86:  LDR             R2, [R0]
1DFB88:  CMP             R2, #0
1DFB8A:  BNE             loc_1DFAEA
1DFB8C:  B               loc_1DFB90
1DFB8E:  MOVS            R6, #0
1DFB90:  ADDS            R0, R6, R5
1DFB92:  BEQ             loc_1DFBD8
1DFB94:  CBZ             R6, loc_1DFBB6
1DFB96:  ADD.W           R0, R6, R12
1DFB9A:  MOV             R1, #0xFFFFFFD8
1DFB9E:  ADD.W           R0, R0, R0,LSL#2
1DFBA2:  ADD.W           R5, R1, R0,LSL#3
1DFBA6:  LDR             R0, [R4,#8]
1DFBA8:  MOV             R1, R4
1DFBAA:  ADD             R0, R5
1DFBAC:  BLX             j__Z19PipelineNodeDestroyP14RxPipelineNodeP10RxPipeline; PipelineNodeDestroy(RxPipelineNode *,RxPipeline *)
1DFBB0:  SUBS            R5, #0x28 ; '('
1DFBB2:  SUBS            R6, #1
1DFBB4:  BNE             loc_1DFBA6
1DFBB6:  MOVS            R4, #0
1DFBB8:  MOV             R0, R4
1DFBBA:  ADD             SP, SP, #0x18
1DFBBC:  POP.W           {R8-R11}
1DFBC0:  POP.W           {R4-R7,LR}
1DFBC4:  ADD             SP, SP, #4
1DFBC6:  BX              LR
1DFBC8:  MOV             R0, R9
1DFBCA:  MOV             R1, R4
1DFBCC:  BLX             j__Z19PipelineNodeDestroyP14RxPipelineNodeP10RxPipeline; PipelineNodeDestroy(RxPipelineNode *,RxPipeline *)
1DFBD0:  LDR.W           R12, [SP,#0x34+var_2C]
1DFBD4:  ADDS            R0, R6, R5
1DFBD6:  BNE             loc_1DFB94
1DFBD8:  LDR             R0, [SP,#0x34+var_30]
1DFBDA:  CMP             R0, #0
1DFBDC:  IT NE
1DFBDE:  STRNE.W         R12, [R0]
1DFBE2:  B               loc_1DFBB8
