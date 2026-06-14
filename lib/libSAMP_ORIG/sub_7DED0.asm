; =========================================================
; Game Engine Function: sub_7DED0
; Address            : 0x7DED0 - 0x7DFDE
; =========================================================

7DED0:  PUSH            {R4-R7,LR}
7DED2:  ADD             R7, SP, #0xC
7DED4:  PUSH.W          {R8-R10}
7DED8:  MOV             R9, R0
7DEDA:  LDR             R0, =(off_114CD8 - 0x7DEE2)
7DEDC:  MOV             R6, R1
7DEDE:  ADD             R0, PC; off_114CD8
7DEE0:  LDR             R0, [R0]; off_1ABF1C
7DEE2:  LDR             R4, [R0]
7DEE4:  MOV             R0, R1
7DEE6:  BL              sub_7DB44
7DEEA:  LDR.W           R1, [R9]
7DEEE:  BLX             R4
7DEF0:  CBZ             R0, loc_7DF3A
7DEF2:  MOV             R8, R0
7DEF4:  LDR             R0, =(off_114CDC - 0x7DEFE)
7DEF6:  LDR.W           R1, [R9,#8]
7DEFA:  ADD             R0, PC; off_114CDC
7DEFC:  LDR             R0, [R0]; off_1ABF24
7DEFE:  LDR             R2, [R0]
7DF00:  MOV             R0, R8
7DF02:  BLX             R2
7DF04:  CBZ             R0, loc_7DF56
7DF06:  MOV             R0, R6
7DF08:  BL              sub_7DB44
7DF0C:  MOV             R5, R9
7DF0E:  MOV             R6, R0
7DF10:  LDR.W           R4, [R5,#0x18]!
7DF14:  CBZ             R4, loc_7DF82
7DF16:  ADD.W           R5, R9, #0x18
7DF1A:  B               loc_7DF24
7DF1C:  LDR             R0, [R4]
7DF1E:  CBZ             R0, loc_7DF86
7DF20:  MOV             R5, R4
7DF22:  MOV             R4, R0
7DF24:  LDR             R0, [R4,#0x10]
7DF26:  CMP             R6, R0
7DF28:  BCC             loc_7DF1C
7DF2A:  CMP             R0, R6
7DF2C:  BCS             loc_7DF88
7DF2E:  MOV             R5, R4
7DF30:  LDR.W           R0, [R5,#4]!
7DF34:  CBZ             R0, loc_7DF88
7DF36:  MOV             R4, R5
7DF38:  B               loc_7DF20
7DF3A:  LDR             R0, =(off_114CB0 - 0x7DF40)
7DF3C:  ADD             R0, PC; off_114CB0
7DF3E:  LDR             R0, [R0]; off_1ABF0C
7DF40:  LDR             R0, [R0]
7DF42:  BLX             R0
7DF44:  MOV             R1, R0
7DF46:  LDR             R0, =(aSvErrEffectApp - 0x7DF4C); "[sv:err:effect:apply] : failed to creat"... ...
7DF48:  ADD             R0, PC; "[sv:err:effect:apply] : failed to creat"...
7DF4A:  POP.W           {R8-R10}
7DF4E:  POP.W           {R4-R7,LR}
7DF52:  B.W             sub_80664
7DF56:  LDR             R0, =(off_114CB0 - 0x7DF5C)
7DF58:  ADD             R0, PC; off_114CB0
7DF5A:  LDR             R0, [R0]; off_1ABF0C
7DF5C:  LDR             R0, [R0]
7DF5E:  BLX             R0
7DF60:  MOV             R1, R0
7DF62:  LDR             R0, =(aSvErrEffectApp_0 - 0x7DF68); "[sv:err:effect:apply] : failed to set p"... ...
7DF64:  ADD             R0, PC; "[sv:err:effect:apply] : failed to set p"...
7DF66:  BL              sub_80664
7DF6A:  LDR             R0, =(off_114CD4 - 0x7DF70)
7DF6C:  ADD             R0, PC; off_114CD4
7DF6E:  LDR             R0, [R0]; off_1ABF20
7DF70:  LDR             R4, [R0]
7DF72:  MOV             R0, R6
7DF74:  BL              sub_7DB44
7DF78:  MOV             R1, R8
7DF7A:  BLX             R4
7DF7C:  POP.W           {R8-R10}
7DF80:  POP             {R4-R7,PC}
7DF82:  MOV             R4, R5
7DF84:  B               loc_7DF88
7DF86:  MOV             R5, R4
7DF88:  LDR.W           R10, [R5]
7DF8C:  CMP.W           R10, #0
7DF90:  BNE             loc_7DFD4
7DF92:  MOVS            R0, #0x18; unsigned int
7DF94:  BLX             j__Znwj; operator new(uint)
7DF98:  MOV             R10, R0
7DF9A:  MOVS            R0, #0
7DF9C:  STRD.W          R0, R0, [R10]
7DFA0:  STR.W           R4, [R10,#8]
7DFA4:  STR.W           R10, [R5]
7DFA8:  LDR.W           R1, [R9,#0x14]
7DFAC:  STR.W           R0, [R10,#0x14]
7DFB0:  STR.W           R6, [R10,#0x10]
7DFB4:  LDR             R0, [R1]
7DFB6:  CMP             R0, #0
7DFB8:  ITTE NE
7DFBA:  STRNE.W         R0, [R9,#0x14]
7DFBE:  LDRNE           R1, [R5]
7DFC0:  MOVEQ           R1, R10
7DFC2:  LDR.W           R0, [R9,#0x18]
7DFC6:  BL              sub_77D8A
7DFCA:  LDR.W           R0, [R9,#0x1C]
7DFCE:  ADDS            R0, #1
7DFD0:  STR.W           R0, [R9,#0x1C]
7DFD4:  STR.W           R8, [R10,#0x14]
7DFD8:  POP.W           {R8-R10}
7DFDC:  POP             {R4-R7,PC}
