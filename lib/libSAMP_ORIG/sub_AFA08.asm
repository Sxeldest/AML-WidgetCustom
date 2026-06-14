; =========================================================
; Game Engine Function: sub_AFA08
; Address            : 0xAFA08 - 0xAFD9C
; =========================================================

AFA08:  PUSH            {R4-R7,LR}
AFA0A:  ADD             R7, SP, #0xC
AFA0C:  PUSH.W          {R8-R11}
AFA10:  SUB             SP, SP, #0x64
AFA12:  MOV             R4, R0
AFA14:  LDR             R0, =(__stack_chk_guard_ptr - 0xAFA1A)
AFA16:  ADD             R0, PC; __stack_chk_guard_ptr
AFA18:  LDR             R0, [R0]; __stack_chk_guard
AFA1A:  LDR             R0, [R0]
AFA1C:  STR             R0, [SP,#0x80+var_20]
AFA1E:  CBZ             R4, loc_AFA72
AFA20:  MOV             R11, R1
AFA22:  CBZ             R1, loc_AFA7C
AFA24:  MOV             R9, R2
AFA26:  CBZ             R2, loc_AFA90
AFA28:  LDR             R0, =(byte_1AEE90 - 0xAFA30)
AFA2A:  MOV             R5, R3
AFA2C:  ADD             R0, PC; byte_1AEE90
AFA2E:  LDRB            R0, [R0]
AFA30:  DMB.W           ISH
AFA34:  LSLS            R0, R0, #0x1F
AFA36:  BEQ.W           loc_AFD68
AFA3A:  CBZ             R5, loc_AFAA0
AFA3C:  LDR             R2, =(dword_1AEE84 - 0xAFA42)
AFA3E:  ADD             R2, PC; dword_1AEE84
AFA40:  MOV             R10, R2
AFA42:  LDR.W           R6, [R10,#(dword_1AEE88 - 0x1AEE84)]!
AFA46:  CMP             R6, #0
AFA48:  BEQ.W           loc_AFB4E
AFA4C:  ADDS            R0, R2, #4
AFA4E:  B               loc_AFA5C
AFA50:  LDR             R1, [R6]
AFA52:  CMP             R1, #0
AFA54:  BEQ.W           loc_AFBA4
AFA58:  MOV             R0, R6
AFA5A:  MOV             R6, R1
AFA5C:  LDR             R1, [R6,#0x10]
AFA5E:  CMP             R1, R4
AFA60:  BHI             loc_AFA50
AFA62:  BCS             loc_AFB48
AFA64:  MOV             R0, R6
AFA66:  LDR.W           R1, [R0,#4]!
AFA6A:  CMP             R1, #0
AFA6C:  BEQ             loc_AFB48
AFA6E:  MOV             R6, R0
AFA70:  B               loc_AFA58
AFA72:  LDR             R1, =(aKittymemory - 0xAFA7A); "KittyMemory" ...
AFA74:  LDR             R2, =(aMemwriteErrAdd - 0xAFA7C); "memWrite err address (%p) is null" ...
AFA76:  ADD             R1, PC; "KittyMemory"
AFA78:  ADD             R2, PC; "memWrite err address (%p) is null"
AFA7A:  B               loc_AFA84
AFA7C:  LDR             R1, =(aKittymemory - 0xAFA84); "KittyMemory" ...
AFA7E:  LDR             R2, =(aMemwriteErrBuf - 0xAFA86); "memWrite err buffer (%p) is null" ...
AFA80:  ADD             R1, PC; "KittyMemory"
AFA82:  ADD             R2, PC; "memWrite err buffer (%p) is null"
AFA84:  MOVS            R0, #6; prio
AFA86:  MOVS            R3, #0
AFA88:  MOVS            R4, #0
AFA8A:  BLX             __android_log_print
AFA8E:  B               loc_AFCFC
AFA90:  LDR             R1, =(aKittymemory - 0xAFA9A); "KittyMemory" ...
AFA92:  MOVS            R0, #6; prio
AFA94:  LDR             R2, =(aMemwriteErrInv - 0xAFA9C); "memWrite err invalid len" ...
AFA96:  ADD             R1, PC; "KittyMemory"
AFA98:  ADD             R2, PC; "memWrite err invalid len"
AFA9A:  BLX             __android_log_print
AFA9E:  B               loc_AFC6A
AFAA0:  ADD             R0, SP, #0x80+var_68
AFAA2:  MOV             R1, R4
AFAA4:  STRD.W          R9, R11, [SP,#0x80+var_70]
AFAA8:  BL              sub_B0300
AFAAC:  LDRB.W          R0, [SP,#0x80+var_30]
AFAB0:  ADD.W           R9, SP, #0x80+var_60
AFAB4:  LDRD.W          R10, R11, [SP,#0x80+var_68]
AFAB8:  LDM.W           R9, {R5,R8,R9}
AFABC:  LSLS            R0, R0, #0x1F
AFABE:  LDR             R6, [SP,#0x80+var_54]
AFAC0:  ITT NE
AFAC2:  LDRNE           R0, [SP,#0x80+var_28]; void *
AFAC4:  BLXNE           j__ZdlPv; operator delete(void *)
AFAC8:  LDRB.W          R0, [SP,#0x80+var_40]
AFACC:  LSLS            R0, R0, #0x1F
AFACE:  ITT NE
AFAD0:  LDRNE           R0, [SP,#0x80+var_38]; void *
AFAD2:  BLXNE           j__ZdlPv; operator delete(void *)
AFAD6:  CMP.W           R9, #0
AFADA:  IT EQ
AFADC:  MOVEQ           R6, R9
AFADE:  ORRS.W          R0, R5, R8
AFAE2:  IT NE
AFAE4:  MOVNE           R0, R6
AFAE6:  ORRS.W          R5, R10, R11
AFAEA:  IT NE
AFAEC:  MOVNE           R5, R0
AFAEE:  LDRD.W          R9, R11, [SP,#0x80+var_70]
AFAF2:  CMP             R5, #0
AFAF4:  BEQ.W           loc_AFC5A
AFAF8:  LSLS            R0, R5, #0x1E
AFAFA:  BMI.W           loc_AFCF0
AFAFE:  ADD.W           R0, R4, R9
AFB02:  SUB.W           R10, R0, #1
AFB06:  MOVS            R0, #0x28 ; '('; name
AFB08:  BLX             sysconf
AFB0C:  MOV             R8, R0
AFB0E:  MOVS            R0, #0x28 ; '('; name
AFB10:  BLX             sysconf
AFB14:  NEGS            R0, R0
AFB16:  AND.W           R6, R10, R0
AFB1A:  MOVS            R0, #0x28 ; '('; name
AFB1C:  BLX             sysconf
AFB20:  NEGS            R0, R0
AFB22:  ANDS            R0, R4
AFB24:  SUBS            R6, R6, R0
AFB26:  MOVS            R0, #0x28 ; '('; name
AFB28:  BLX             sysconf
AFB2C:  ADDS            R1, R6, R0; len
AFB2E:  RSB.W           R0, R8, #0
AFB32:  ANDS            R0, R4; addr
AFB34:  ORR.W           R2, R5, #2; prot
AFB38:  BLX             mprotect
AFB3C:  CBZ             R0, loc_AFB52
AFB3E:  LDR             R1, =(aKittymemory - 0xAFB46); "KittyMemory" ...
AFB40:  LDR             R2, =(aMemwriteErrCou - 0xAFB48); "memWrite err couldn't add write perm to"... ...
AFB42:  ADD             R1, PC; "KittyMemory"
AFB44:  ADD             R2, PC; "memWrite err couldn't add write perm to"...
AFB46:  B               loc_AFB9E
AFB48:  MOV             R10, R6
AFB4A:  MOV             R6, R0
AFB4C:  B               loc_AFBA6
AFB4E:  MOV             R6, R10
AFB50:  B               loc_AFBA6
AFB52:  MOV             R0, R4; dest
AFB54:  MOV             R1, R11; src
AFB56:  MOV             R2, R9; n
AFB58:  BLX             j_memcpy
AFB5C:  MOVS            R0, #0x28 ; '('; name
AFB5E:  BLX             sysconf
AFB62:  MOV             R8, R0
AFB64:  MOVS            R0, #0x28 ; '('; name
AFB66:  BLX             sysconf
AFB6A:  NEGS            R0, R0
AFB6C:  AND.W           R6, R10, R0
AFB70:  MOVS            R0, #0x28 ; '('; name
AFB72:  BLX             sysconf
AFB76:  NEGS            R0, R0
AFB78:  ANDS            R0, R4
AFB7A:  SUBS            R6, R6, R0
AFB7C:  MOVS            R0, #0x28 ; '('; name
AFB7E:  BLX             sysconf
AFB82:  ADDS            R1, R6, R0; len
AFB84:  RSB.W           R0, R8, #0
AFB88:  ANDS            R0, R4; addr
AFB8A:  MOV             R2, R5; prot
AFB8C:  BLX             mprotect
AFB90:  CMP             R0, #0
AFB92:  BEQ.W           loc_AFCFA
AFB96:  LDR             R1, =(aKittymemory - 0xAFB9E); "KittyMemory" ...
AFB98:  LDR             R2, =(aMemwriteErrCou_0 - 0xAFBA0); "memWrite err couldn't revert protection"... ...
AFB9A:  ADD             R1, PC; "KittyMemory"
AFB9C:  ADD             R2, PC; "memWrite err couldn't revert protection"...
AFB9E:  STRD.W          R9, R5, [SP,#0x80+var_80]
AFBA2:  B               loc_AFC62
AFBA4:  MOV             R10, R6
AFBA6:  LDR             R5, [R6]
AFBA8:  STR             R2, [SP,#0x80+var_70]
AFBAA:  CBNZ            R5, loc_AFBE2
AFBAC:  MOVS            R0, #0x18; unsigned int
AFBAE:  BLX             j__Znwj; operator new(uint)
AFBB2:  LDR             R2, [SP,#0x80+var_70]
AFBB4:  MOVS            R1, #0
AFBB6:  STR             R4, [R0,#0x10]
AFBB8:  MOV             R5, R0
AFBBA:  STRD.W          R1, R1, [R0]
AFBBE:  STR.W           R10, [R0,#8]
AFBC2:  STR             R0, [R6]
AFBC4:  LDR             R0, [R2]
AFBC6:  LDR             R0, [R0]
AFBC8:  STR             R1, [R5,#0x14]
AFBCA:  CMP             R0, #0
AFBCC:  ITTE NE
AFBCE:  STRNE           R0, [R2]
AFBD0:  LDRNE           R1, [R6]
AFBD2:  MOVEQ           R1, R5
AFBD4:  LDR             R0, [R2,#4]
AFBD6:  BL              sub_77D8A
AFBDA:  LDR             R2, [SP,#0x80+var_70]
AFBDC:  LDR             R0, [R2,#8]
AFBDE:  ADDS            R0, #1
AFBE0:  STR             R0, [R2,#8]
AFBE2:  LDR             R0, [R5,#0x14]
AFBE4:  CBZ             R0, loc_AFC12
AFBE6:  MOV             R10, R2
AFBE8:  LDR.W           R6, [R10,#4]!
AFBEC:  CMP             R6, #0
AFBEE:  BEQ             loc_AFC74
AFBF0:  ADDS            R0, R2, #4
AFBF2:  B               loc_AFBFE
AFBF4:  LDR             R1, [R6]
AFBF6:  CMP             R1, #0
AFBF8:  BEQ             loc_AFCAC
AFBFA:  MOV             R0, R6
AFBFC:  MOV             R6, R1
AFBFE:  LDR             R1, [R6,#0x10]
AFC00:  CMP             R1, R4
AFC02:  BHI             loc_AFBF4
AFC04:  BCS             loc_AFC6E
AFC06:  MOV             R0, R6
AFC08:  LDR.W           R1, [R0,#4]!
AFC0C:  CBZ             R1, loc_AFC6E
AFC0E:  MOV             R6, R0
AFC10:  B               loc_AFBFA
AFC12:  ADD             R0, SP, #0x80+var_68
AFC14:  MOV             R1, R4
AFC16:  STR.W           R11, [SP,#0x80+var_6C]
AFC1A:  BL              sub_B0300
AFC1E:  LDRB.W          R0, [SP,#0x80+var_30]
AFC22:  LDRD.W          R1, R10, [SP,#0x80+var_58]
AFC26:  LDRD.W          R11, R6, [SP,#0x80+var_68]
AFC2A:  LSLS            R0, R0, #0x1F
AFC2C:  LDRD.W          R8, R5, [SP,#0x80+var_60]
AFC30:  STR             R1, [SP,#0x80+var_74]
AFC32:  ITT NE
AFC34:  LDRNE           R0, [SP,#0x80+var_28]; void *
AFC36:  BLXNE           j__ZdlPv; operator delete(void *)
AFC3A:  LDRB.W          R0, [SP,#0x80+var_40]
AFC3E:  LSLS            R0, R0, #0x1F
AFC40:  ITT NE
AFC42:  LDRNE           R0, [SP,#0x80+var_38]; void *
AFC44:  BLXNE           j__ZdlPv; operator delete(void *)
AFC48:  ORRS.W          R0, R11, R6
AFC4C:  BEQ             loc_AFC5A
AFC4E:  ORRS.W          R0, R8, R5
AFC52:  ITT NE
AFC54:  LDRNE           R0, [SP,#0x80+var_74]
AFC56:  CMPNE           R0, #0
AFC58:  BNE             loc_AFC78
AFC5A:  LDR             R1, =(aKittymemory - 0xAFC62); "KittyMemory" ...
AFC5C:  LDR             R2, =(aMemwriteErrCou_1 - 0xAFC64); "memWrite err couldn't find address (%p)"... ...
AFC5E:  ADD             R1, PC; "KittyMemory"
AFC60:  ADD             R2, PC; "memWrite err couldn't find address (%p)"...
AFC62:  MOVS            R0, #6; prio
AFC64:  MOV             R3, R4
AFC66:  BLX             __android_log_print
AFC6A:  MOVS            R4, #0
AFC6C:  B               loc_AFCFC
AFC6E:  MOV             R10, R6
AFC70:  MOV             R6, R0
AFC72:  B               loc_AFCAE
AFC74:  MOV             R6, R10
AFC76:  B               loc_AFCAE
AFC78:  CMP.W           R10, #0
AFC7C:  BEQ             loc_AFC5A
AFC7E:  LDR             R2, [SP,#0x80+var_70]
AFC80:  MOV             R11, R2
AFC82:  LDR.W           R6, [R11,#4]!
AFC86:  CMP             R6, #0
AFC88:  BEQ             loc_AFD1E
AFC8A:  ADDS            R0, R2, #4
AFC8C:  B               loc_AFC98
AFC8E:  LDR             R1, [R6]
AFC90:  CMP             R1, #0
AFC92:  BEQ             loc_AFD22
AFC94:  MOV             R0, R6
AFC96:  MOV             R6, R1
AFC98:  LDR             R1, [R6,#0x10]
AFC9A:  CMP             R1, R4
AFC9C:  BHI             loc_AFC8E
AFC9E:  BCS             loc_AFD18
AFCA0:  MOV             R0, R6
AFCA2:  LDR.W           R1, [R0,#4]!
AFCA6:  CBZ             R1, loc_AFD18
AFCA8:  MOV             R6, R0
AFCAA:  B               loc_AFC94
AFCAC:  MOV             R10, R6
AFCAE:  LDR             R5, [R6]
AFCB0:  CBNZ            R5, loc_AFCE8
AFCB2:  MOVS            R0, #0x18; unsigned int
AFCB4:  BLX             j__Znwj; operator new(uint)
AFCB8:  LDR             R2, [SP,#0x80+var_70]
AFCBA:  MOVS            R1, #0
AFCBC:  STR             R4, [R0,#0x10]
AFCBE:  MOV             R5, R0
AFCC0:  STRD.W          R1, R1, [R0]
AFCC4:  STR.W           R10, [R0,#8]
AFCC8:  STR             R0, [R6]
AFCCA:  LDR             R0, [R2]
AFCCC:  LDR             R0, [R0]
AFCCE:  STR             R1, [R5,#0x14]
AFCD0:  CMP             R0, #0
AFCD2:  ITTE NE
AFCD4:  STRNE           R0, [R2]
AFCD6:  LDRNE           R1, [R6]
AFCD8:  MOVEQ           R1, R5
AFCDA:  LDR             R0, [R2,#4]
AFCDC:  MOV             R6, R2
AFCDE:  BL              sub_77D8A
AFCE2:  LDR             R0, [R6,#8]
AFCE4:  ADDS            R0, #1
AFCE6:  STR             R0, [R6,#8]
AFCE8:  LDR             R5, [R5,#0x14]
AFCEA:  LSLS            R0, R5, #0x1E
AFCEC:  BPL.W           loc_AFAFE
AFCF0:  MOV             R0, R4; dest
AFCF2:  MOV             R1, R11; src
AFCF4:  MOV             R2, R9; n
AFCF6:  BLX             j_memcpy
AFCFA:  MOVS            R4, #1
AFCFC:  LDR             R0, [SP,#0x80+var_20]
AFCFE:  LDR             R1, =(__stack_chk_guard_ptr - 0xAFD04)
AFD00:  ADD             R1, PC; __stack_chk_guard_ptr
AFD02:  LDR             R1, [R1]; __stack_chk_guard
AFD04:  LDR             R1, [R1]
AFD06:  CMP             R1, R0
AFD08:  ITTTT EQ
AFD0A:  MOVEQ           R0, R4
AFD0C:  ADDEQ           SP, SP, #0x64 ; 'd'
AFD0E:  POPEQ.W         {R8-R11}
AFD12:  POPEQ           {R4-R7,PC}
AFD14:  BLX             __stack_chk_fail
AFD18:  MOV             R11, R6
AFD1A:  MOV             R6, R0
AFD1C:  B               loc_AFD24
AFD1E:  MOV             R6, R11
AFD20:  B               loc_AFD24
AFD22:  MOV             R11, R6
AFD24:  LDR             R5, [R6]
AFD26:  CBNZ            R5, loc_AFD5E
AFD28:  MOVS            R0, #0x18; unsigned int
AFD2A:  BLX             j__Znwj; operator new(uint)
AFD2E:  LDR             R2, [SP,#0x80+var_70]
AFD30:  MOVS            R1, #0
AFD32:  STR             R4, [R0,#0x10]
AFD34:  MOV             R5, R0
AFD36:  STRD.W          R1, R1, [R0]
AFD3A:  STR.W           R11, [R0,#8]
AFD3E:  STR             R0, [R6]
AFD40:  LDR             R0, [R2]
AFD42:  LDR             R0, [R0]
AFD44:  STR             R1, [R5,#0x14]
AFD46:  CMP             R0, #0
AFD48:  ITTE NE
AFD4A:  STRNE           R0, [R2]
AFD4C:  LDRNE           R1, [R6]
AFD4E:  MOVEQ           R1, R5
AFD50:  LDR             R0, [R2,#4]
AFD52:  BL              sub_77D8A
AFD56:  LDR             R2, [SP,#0x80+var_70]
AFD58:  LDR             R0, [R2,#8]
AFD5A:  ADDS            R0, #1
AFD5C:  STR             R0, [R2,#8]
AFD5E:  LDR.W           R11, [SP,#0x80+var_6C]
AFD62:  STR.W           R10, [R5,#0x14]
AFD66:  B               loc_AFBE6
AFD68:  LDR             R0, =(byte_1AEE90 - 0xAFD6E)
AFD6A:  ADD             R0, PC; byte_1AEE90 ; __guard *
AFD6C:  BLX             j___cxa_guard_acquire
AFD70:  CMP             R0, #0
AFD72:  BEQ.W           loc_AFA3A
AFD76:  LDR             R1, =(dword_1AEE84 - 0xAFD82)
AFD78:  MOVS            R3, #0
AFD7A:  LDR             R0, =(sub_AFDF0+1 - 0xAFD84)
AFD7C:  LDR             R2, =(off_110560 - 0xAFD86)
AFD7E:  ADD             R1, PC; dword_1AEE84 ; obj
AFD80:  ADD             R0, PC; sub_AFDF0 ; lpfunc
AFD82:  ADD             R2, PC; off_110560 ; lpdso_handle
AFD84:  MOV             R6, R1
AFD86:  STR.W           R3, [R6,#(dword_1AEE88 - 0x1AEE84)]!
AFD8A:  STR             R3, [R1,#(dword_1AEE8C - 0x1AEE84)]
AFD8C:  STR             R6, [R1]
AFD8E:  BLX             __cxa_atexit
AFD92:  LDR             R0, =(byte_1AEE90 - 0xAFD98)
AFD94:  ADD             R0, PC; byte_1AEE90 ; __guard *
AFD96:  BLX             j___cxa_guard_release
AFD9A:  B               loc_AFA3A
