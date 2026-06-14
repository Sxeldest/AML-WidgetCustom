; =========================================================
; Game Engine Function: _Z25RQ_Command_rqSelectShaderRPc
; Address            : 0x1CDB18 - 0x1CDCE2
; =========================================================

1CDB18:  PUSH            {R4-R7,LR}
1CDB1A:  ADD             R7, SP, #0xC
1CDB1C:  PUSH.W          {R8,R9,R11}
1CDB20:  SUB             SP, SP, #0x28
1CDB22:  MOV             R4, R0
1CDB24:  LDR             R0, [R4]
1CDB26:  LDR.W           R6, [R0],#4
1CDB2A:  STR             R0, [R4]
1CDB2C:  BLX             j__Z14RQ_CheckThreadv; RQ_CheckThread(void)
1CDB30:  LDR             R0, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CDB36)
1CDB32:  ADD             R0, PC; _ZN9ES2Shader12activeShaderE_ptr
1CDB34:  LDR             R0, [R0]; ES2Shader::activeShader ...
1CDB36:  LDR             R0, [R0]; ES2Shader::activeShader
1CDB38:  CMP             R0, R6
1CDB3A:  BEQ             loc_1CDB4C
1CDB3C:  LDR             R0, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CDB42)
1CDB3E:  ADD             R0, PC; _ZN9ES2Shader12activeShaderE_ptr
1CDB40:  LDR             R0, [R0]; ES2Shader::activeShader ...
1CDB42:  STR             R6, [R0]; ES2Shader::activeShader
1CDB44:  LDR.W           R0, [R6,#0x3E8]
1CDB48:  BLX             glUseProgram
1CDB4C:  LDR             R0, [R4]
1CDB4E:  MOV             R2, R0
1CDB50:  LDR.W           R1, [R2],#4
1CDB54:  STR             R2, [R4]
1CDB56:  CMP             R1, #8
1CDB58:  BEQ.W           loc_1CDCDA
1CDB5C:  ADD.W           R5, R6, #0x3D4
1CDB60:  ADD.W           R8, SP, #0x40+var_3C
1CDB64:  MOV.W           R9, #0x4C ; 'L'
1CDB68:  CMP             R1, #6
1CDB6A:  BNE             loc_1CDB70
1CDB6C:  MOV             R0, R5
1CDB6E:  B               loc_1CDB98
1CDB70:  LDR             R3, [R2]
1CDB72:  ADD.W           R2, R0, #8
1CDB76:  ORR.W           R0, R1, #1
1CDB7A:  STR             R2, [R4]
1CDB7C:  CMP             R0, #5
1CDB7E:  BNE             loc_1CDB8A
1CDB80:  MLA.W           R0, R3, R9, R6
1CDB84:  ADD.W           R0, R0, #0x2A4
1CDB88:  B               loc_1CDB98
1CDB8A:  CMP             R1, #7
1CDB8C:  BEQ             loc_1CDBDE; jumptable 001CDBA4 case 7
1CDB8E:  RSB.W           R0, R3, R3,LSL#3
1CDB92:  ADD.W           R0, R6, R0,LSL#2
1CDB96:  ADDS            R0, #4
1CDB98:  LDR             R0, [R0]
1CDB9A:  CMP             R0, #0
1CDB9C:  BLT             loc_1CDBC2
1CDB9E:  CMP             R1, #7; switch 8 cases
1CDBA0:  BHI.W           def_1CDBA4; jumptable 001CDBA4 default case
1CDBA4:  TBB.W           [PC,R1]; switch jump
1CDBA8:  DCB 4; jump table for switch statement
1CDBA9:  DCB 0x25
1CDBAA:  DCB 0x2F
1CDBAB:  DCB 0x39
1CDBAC:  DCB 0x43
1CDBAD:  DCB 0x61
1CDBAE:  DCB 0x6C
1CDBAF:  DCB 0x1B
1CDBB0:  ADDS            R1, R2, #3; jumptable 001CDBA4 case 0
1CDBB2:  BIC.W           R2, R1, #3
1CDBB6:  ADDS            R1, R2, #4
1CDBB8:  STR             R1, [R4]
1CDBBA:  MOVS            R1, #1
1CDBBC:  BLX             glUniform1fv
1CDBC0:  B               def_1CDBA4; jumptable 001CDBA4 default case
1CDBC2:  CMP             R1, #6; switch 7 cases
1CDBC4:  BHI.W           def_1CDBA4; jumptable 001CDBA4 default case
1CDBC8:  TBB.W           [PC,R1]; switch jump
1CDBCC:  DCB 0x64; jump table for switch statement
1CDBCD:  DCB 0x69
1CDBCE:  DCB 0x6E
1CDBCF:  DCB 0x73
1CDBD0:  DCB 4
1CDBD1:  DCB 4
1CDBD2:  DCB 0x78
1CDBD3:  ALIGN 2
1CDBD4:  ADDS            R0, R2, #3; jumptable 001CDBC8 cases 4,5
1CDBD6:  BIC.W           R0, R0, #3
1CDBDA:  ADDS            R0, #0x40 ; '@'
1CDBDC:  B               loc_1CDCC8
1CDBDE:  ADDS            R0, R2, #3; jumptable 001CDBA4 case 7
1CDBE0:  BIC.W           R1, R0, #3
1CDBE4:  ADD.W           R0, R1, #0x10
1CDBE8:  STR             R0, [R4]
1CDBEA:  MOVS            R0, #3
1CDBEC:  BLX             glVertexAttrib4fv
1CDBF0:  B               def_1CDBA4; jumptable 001CDBA4 default case
1CDBF2:  ADDS            R1, R2, #3; jumptable 001CDBA4 case 1
1CDBF4:  BIC.W           R2, R1, #3
1CDBF8:  ADD.W           R1, R2, #8
1CDBFC:  STR             R1, [R4]
1CDBFE:  MOVS            R1, #1
1CDC00:  BLX             glUniform2fv
1CDC04:  B               def_1CDBA4; jumptable 001CDBA4 default case
1CDC06:  ADDS            R1, R2, #3; jumptable 001CDBA4 case 2
1CDC08:  BIC.W           R2, R1, #3
1CDC0C:  ADD.W           R1, R2, #0xC
1CDC10:  STR             R1, [R4]
1CDC12:  MOVS            R1, #1
1CDC14:  BLX             glUniform3fv
1CDC18:  B               def_1CDBA4; jumptable 001CDBA4 default case
1CDC1A:  ADDS            R1, R2, #3; jumptable 001CDBA4 case 3
1CDC1C:  BIC.W           R2, R1, #3
1CDC20:  ADD.W           R1, R2, #0x10
1CDC24:  STR             R1, [R4]
1CDC26:  MOVS            R1, #1
1CDC28:  BLX             glUniform4fv
1CDC2C:  B               def_1CDBA4; jumptable 001CDBA4 default case
1CDC2E:  ADDS            R1, R2, #3; jumptable 001CDBA4 case 4
1CDC30:  BIC.W           R1, R1, #3
1CDC34:  ADD.W           R2, R1, #0x40 ; '@'
1CDC38:  STR             R2, [R4]
1CDC3A:  LDR             R2, [R1]
1CDC3C:  STR             R2, [SP,#0x40+var_3C]
1CDC3E:  LDR             R2, [R1,#4]
1CDC40:  STR             R2, [SP,#0x40+var_38]
1CDC42:  LDR             R2, [R1,#8]
1CDC44:  STR             R2, [SP,#0x40+var_34]
1CDC46:  LDR             R2, [R1,#0x10]
1CDC48:  STR             R2, [SP,#0x40+var_30]
1CDC4A:  LDR             R2, [R1,#0x14]
1CDC4C:  STR             R2, [SP,#0x40+var_2C]
1CDC4E:  LDR             R2, [R1,#0x18]
1CDC50:  STR             R2, [SP,#0x40+var_28]
1CDC52:  LDRD.W          R2, R3, [R1,#0x20]
1CDC56:  LDR             R1, [R1,#0x28]
1CDC58:  STRD.W          R2, R3, [SP,#0x40+var_24]
1CDC5C:  MOVS            R2, #0
1CDC5E:  STR             R1, [SP,#0x40+var_1C]
1CDC60:  MOVS            R1, #1
1CDC62:  MOV             R3, R8
1CDC64:  BLX             glUniformMatrix3fv
1CDC68:  B               def_1CDBA4; jumptable 001CDBA4 default case
1CDC6A:  ADDS            R1, R2, #3; jumptable 001CDBA4 case 5
1CDC6C:  MOVS            R2, #0
1CDC6E:  BIC.W           R3, R1, #3
1CDC72:  ADD.W           R1, R3, #0x40 ; '@'
1CDC76:  STR             R1, [R4]
1CDC78:  MOVS            R1, #1
1CDC7A:  BLX             glUniformMatrix4fv
1CDC7E:  B               def_1CDBA4; jumptable 001CDBA4 default case
1CDC80:  LDR.W           R1, [R2],#7; jumptable 001CDBA4 case 6
1CDC84:  BIC.W           R2, R2, #3
1CDC88:  ADD.W           R3, R2, R1,LSL#4
1CDC8C:  STR             R3, [R4]
1CDC8E:  BLX             glUniform4fv
1CDC92:  B               def_1CDBA4; jumptable 001CDBA4 default case
1CDC94:  ADDS            R0, R2, #3; jumptable 001CDBC8 case 0
1CDC96:  BIC.W           R0, R0, #3
1CDC9A:  ADDS            R0, #4
1CDC9C:  B               loc_1CDCC8
1CDC9E:  ADDS            R0, R2, #3; jumptable 001CDBC8 case 1
1CDCA0:  BIC.W           R0, R0, #3
1CDCA4:  ADDS            R0, #8
1CDCA6:  B               loc_1CDCC8
1CDCA8:  ADDS            R0, R2, #3; jumptable 001CDBC8 case 2
1CDCAA:  BIC.W           R0, R0, #3
1CDCAE:  ADDS            R0, #0xC
1CDCB0:  B               loc_1CDCC8
1CDCB2:  ADDS            R0, R2, #3; jumptable 001CDBC8 case 3
1CDCB4:  BIC.W           R0, R0, #3
1CDCB8:  ADDS            R0, #0x10
1CDCBA:  B               loc_1CDCC8
1CDCBC:  LDR.W           R0, [R2],#7; jumptable 001CDBC8 case 6
1CDCC0:  BIC.W           R1, R2, #3
1CDCC4:  ADD.W           R0, R1, R0,LSL#4
1CDCC8:  STR             R0, [R4]
1CDCCA:  LDR             R0, [R4]; jumptable 001CDBA4 default case
1CDCCC:  MOV             R2, R0
1CDCCE:  LDR.W           R1, [R2],#4
1CDCD2:  STR             R2, [R4]
1CDCD4:  CMP             R1, #8
1CDCD6:  BNE.W           loc_1CDB68
1CDCDA:  ADD             SP, SP, #0x28 ; '('
1CDCDC:  POP.W           {R8,R9,R11}
1CDCE0:  POP             {R4-R7,PC}
