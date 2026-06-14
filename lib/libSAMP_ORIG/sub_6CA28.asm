; =========================================================
; Game Engine Function: sub_6CA28
; Address            : 0x6CA28 - 0x6EAF8
; =========================================================

6CA28:  PUSH            {R4-R7,LR}
6CA2A:  ADD             R7, SP, #0xC
6CA2C:  PUSH.W          {R8-R11}
6CA30:  SUB.W           SP, SP, #0x10000
6CA34:  SUB             SP, SP, #0x1B4
6CA36:  LDR             R1, =(aSampOrig - 0x6CA42); "SAMP_ORIG" ...
6CA38:  LDR             R2, =(aInitializingSe - 0x6CA44); "Initializing settings..." ...
6CA3A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x6CA46)
6CA3E:  ADD             R1, PC; "SAMP_ORIG"
6CA40:  ADD             R2, PC; "Initializing settings..."
6CA42:  ADD             R0, PC; __stack_chk_guard_ptr
6CA44:  LDR             R0, [R0]; __stack_chk_guard
6CA46:  LDR             R0, [R0]
6CA48:  STR.W           R0, [R7,#var_24]
6CA4C:  MOVS            R0, #4; prio
6CA4E:  BLX             __android_log_print
6CA52:  LDR             R2, =(byte_1A443A - 0x6CA58)
6CA54:  ADD             R2, PC; byte_1A443A
6CA56:  LDRB            R0, [R2]
6CA58:  CMP             R0, #0
6CA5A:  BNE.W           loc_6EAB4
6CA5E:  LDR             R0, =(off_114AA8 - 0x6CA6C)
6CA60:  MOV             R1, #0x6D687C
6CA68:  ADD             R0, PC; off_114AA8
6CA6A:  LDR             R0, [R0]; dword_1A4404
6CA6C:  LDR             R0, [R0]
6CA6E:  ADDS            R3, R0, R1
6CA70:  BEQ.W           loc_6EAD4
6CA74:  ADD.W           LR, SP, #0x101D0+var_10123
6CA78:  STR             R2, [SP,#0x101D0+var_10190]
6CA7A:  ADD.W           R4, LR, #0x10000
6CA7E:  MOV             R0, R4
6CA80:  BL              sub_6EBD0
6CA84:  LDR             R1, =(aRb - 0x6CA8C); "rb" ...
6CA86:  MOV             R0, R4; filename
6CA88:  ADD             R1, PC; "rb"
6CA8A:  BLX             fopen
6CA8E:  CMP             R0, #0
6CA90:  BEQ.W           loc_6EAE6
6CA94:  MOV             R3, R0; stream
6CA96:  ADD.W           R0, SP, #0x101D0+ptr; ptr
6CA9A:  MOVW            R1, #0xFFFF
6CA9E:  MOVS            R4, #0
6CAA0:  STR             R1, [SP,#0x101D0+var_10178]
6CAA2:  MOVS            R1, #1; size
6CAA4:  MOVW            R2, #0xFFFF; n
6CAA8:  STRD.W          R4, R4, [SP,#0x101D0+var_1016C]
6CAAC:  STRD.W          R4, R0, [SP,#0x101D0+var_10174]
6CAB0:  MOVS            R5, #1
6CAB2:  STRD.W          R3, R0, [SP,#0x101D0+var_10180]
6CAB6:  STRB.W          R4, [SP,#0x101D0+var_10164]
6CABA:  STR             R3, [SP,#0x101D0+stream]
6CABC:  BLX             fread
6CAC0:  LDRD.W          R1, R2, [SP,#0x101D0+var_1017C]
6CAC4:  CMP             R0, R2
6CAC6:  STRD.W          R1, R0, [SP,#0x101D0+var_10170]
6CACA:  ADD             R1, R0
6CACC:  SUB.W           R3, R1, #1
6CAD0:  STR             R3, [SP,#0x101D0+var_10174]
6CAD2:  BCS             loc_6CAE0
6CAD4:  STRB            R4, [R1]
6CAD6:  LDR             R0, [SP,#0x101D0+var_10174]
6CAD8:  STRB.W          R5, [SP,#0x101D0+var_10164]
6CADC:  ADDS            R0, #1
6CADE:  STR             R0, [SP,#0x101D0+var_10174]
6CAE0:  ADD             R0, SP, #0x101D0+var_10160
6CAE2:  MOVS            R1, #0
6CAE4:  MOV.W           R2, #0x400
6CAE8:  MOVS            R3, #0
6CAEA:  BL              sub_6EC24
6CAEE:  ADD             R1, SP, #0x101D0+var_10180
6CAF0:  BL              sub_6ECB0
6CAF4:  LDR             R6, =(aClient - 0x6CAFA); "client" ...
6CAF6:  ADD             R6, PC; "client"
6CAF8:  MOV             R0, R6; char *
6CAFA:  MOVS            R1, #7; size_t
6CAFC:  BLX             __strlen_chk
6CB00:  LDR.W           R11, [SP,#0x101D0+s2]
6CB04:  LDR.W           R10, [SP,#0x101D0+var_10160]
6CB08:  CMP.W           R10, #0
6CB0C:  MOV             R4, R11
6CB0E:  BEQ             loc_6CB50
6CB10:  MOV             R5, R0
6CB12:  MOV.W           R8, R10,LSL#5
6CB16:  MOV             R4, R11
6CB18:  B               loc_6CB24
6CB1A:  SUBS.W          R8, R8, #0x20 ; ' '
6CB1E:  ADD.W           R4, R4, #0x20 ; ' '
6CB22:  BEQ             loc_6CB5C
6CB24:  LDRH            R0, [R4,#0xE]
6CB26:  LDR             R2, [R4]
6CB28:  ANDS.W          R0, R0, #0x1000
6CB2C:  LDRB            R1, [R4,#0xD]
6CB2E:  IT NE
6CB30:  RSBNE.W         R2, R1, #0xD
6CB34:  CMP             R5, R2
6CB36:  BNE             loc_6CB1A
6CB38:  LDR             R1, [R4,#8]
6CB3A:  CMP             R0, #0
6CB3C:  IT NE
6CB3E:  MOVNE           R1, R4; s2
6CB40:  CMP             R1, R6
6CB42:  BEQ             loc_6CB50
6CB44:  MOV             R0, R6; s1
6CB46:  MOV             R2, R5; n
6CB48:  BLX             memcmp
6CB4C:  CMP             R0, #0
6CB4E:  BNE             loc_6CB1A
6CB50:  ADD.W           R0, R11, R10,LSL#5
6CB54:  CMP             R4, R0
6CB56:  BEQ             loc_6CB5C
6CB58:  ADDS            R4, #0x10
6CB5A:  B               loc_6CB6E
6CB5C:  LDR             R0, =(unk_116D20 - 0x6CB62)
6CB5E:  ADD             R0, PC; unk_116D20
6CB60:  BLX             j___emutls_get_address
6CB64:  VMOV.I32        Q8, #0
6CB68:  MOV             R4, R0
6CB6A:  VST1.64         {D16-D17}, [R4]
6CB6E:  LDR             R0, =(aServer - 0x6CB74); "server" ...
6CB70:  ADD             R0, PC; "server"
6CB72:  MOVS            R1, #7; size_t
6CB74:  MOV             R8, R0
6CB76:  BLX             __strlen_chk
6CB7A:  LDR.W           R11, [R4,#8]
6CB7E:  LDR.W           R10, [R4]
6CB82:  CMP.W           R10, #0
6CB86:  MOV             R4, R11
6CB88:  BEQ             loc_6CBC8
6CB8A:  MOV             R5, R0
6CB8C:  MOV.W           R6, R10,LSL#5
6CB90:  MOV             R4, R11
6CB92:  B               loc_6CB9C
6CB94:  SUBS            R6, #0x20 ; ' '
6CB96:  ADD.W           R4, R4, #0x20 ; ' '
6CB9A:  BEQ             loc_6CBD4
6CB9C:  LDRH            R0, [R4,#0xE]
6CB9E:  LDR             R2, [R4]
6CBA0:  ANDS.W          R0, R0, #0x1000
6CBA4:  LDRB            R1, [R4,#0xD]
6CBA6:  IT NE
6CBA8:  RSBNE.W         R2, R1, #0xD
6CBAC:  CMP             R5, R2
6CBAE:  BNE             loc_6CB94
6CBB0:  LDR             R1, [R4,#8]
6CBB2:  CMP             R0, #0
6CBB4:  IT NE
6CBB6:  MOVNE           R1, R4; s2
6CBB8:  CMP             R1, R8
6CBBA:  BEQ             loc_6CBC8
6CBBC:  MOV             R0, R8; s1
6CBBE:  MOV             R2, R5; n
6CBC0:  BLX             memcmp
6CBC4:  CMP             R0, #0
6CBC6:  BNE             loc_6CB94
6CBC8:  ADD.W           R0, R11, R10,LSL#5
6CBCC:  CMP             R4, R0
6CBCE:  BEQ             loc_6CBD4
6CBD0:  ADDS            R4, #0x10
6CBD2:  B               loc_6CBE6
6CBD4:  LDR             R0, =(unk_116D20 - 0x6CBDA)
6CBD6:  ADD             R0, PC; unk_116D20
6CBD8:  BLX             j___emutls_get_address
6CBDC:  VMOV.I32        Q8, #0
6CBE0:  MOV             R4, R0
6CBE2:  VST1.64         {D16-D17}, [R4]
6CBE6:  LDR             R0, =(aHost - 0x6CBEC); "host" ...
6CBE8:  ADD             R0, PC; "host"
6CBEA:  MOVS            R1, #5; size_t
6CBEC:  MOV             R8, R0
6CBEE:  BLX             __strlen_chk
6CBF2:  LDR.W           R11, [R4,#8]
6CBF6:  LDR.W           R10, [R4]
6CBFA:  CMP.W           R10, #0
6CBFE:  MOV             R4, R11
6CC00:  BEQ             loc_6CC40
6CC02:  MOV             R5, R0
6CC04:  MOV.W           R6, R10,LSL#5
6CC08:  MOV             R4, R11
6CC0A:  B               loc_6CC14
6CC0C:  SUBS            R6, #0x20 ; ' '
6CC0E:  ADD.W           R4, R4, #0x20 ; ' '
6CC12:  BEQ             loc_6CC52
6CC14:  LDRH            R0, [R4,#0xE]
6CC16:  LDR             R2, [R4]
6CC18:  ANDS.W          R0, R0, #0x1000
6CC1C:  LDRB            R1, [R4,#0xD]
6CC1E:  IT NE
6CC20:  RSBNE.W         R2, R1, #0xD
6CC24:  CMP             R5, R2
6CC26:  BNE             loc_6CC0C
6CC28:  LDR             R1, [R4,#8]
6CC2A:  CMP             R0, #0
6CC2C:  IT NE
6CC2E:  MOVNE           R1, R4; s2
6CC30:  CMP             R1, R8
6CC32:  BEQ             loc_6CC40
6CC34:  MOV             R0, R8; s1
6CC36:  MOV             R2, R5; n
6CC38:  BLX             memcmp
6CC3C:  CMP             R0, #0
6CC3E:  BNE             loc_6CC0C
6CC40:  ADD.W           R0, R11, R10,LSL#5
6CC44:  CMP             R4, R0
6CC46:  BEQ             loc_6CC52
6CC48:  LDR             R1, [R4,#0x18]
6CC4A:  ADD.W           R0, R4, #0x10
6CC4E:  LDRH            R3, [R4,#0x1E]
6CC50:  B               loc_6CC66
6CC52:  LDR             R0, =(unk_116D20 - 0x6CC58)
6CC54:  ADD             R0, PC; unk_116D20
6CC56:  BLX             j___emutls_get_address
6CC5A:  VMOV.I32        Q8, #0
6CC5E:  MOVS            R1, #0
6CC60:  MOVS            R3, #0
6CC62:  VST1.64         {D16-D17}, [R0]
6CC66:  LDR             R2, =(a127001 - 0x6CC72); "127.0.0.1"
6CC68:  LSLS            R3, R3, #0x13
6CC6A:  IT MI
6CC6C:  MOVMI           R1, R0
6CC6E:  ADD             R2, PC; "127.0.0.1"
6CC70:  MOV             R0, R2
6CC72:  MOVS            R2, #0x40 ; '@'
6CC74:  BLX             __strcpy_chk
6CC78:  LDR             R0, =(aClient - 0x6CC7E); "client" ...
6CC7A:  ADD             R0, PC; "client"
6CC7C:  MOVS            R1, #7; size_t
6CC7E:  MOV             R8, R0
6CC80:  BLX             __strlen_chk
6CC84:  LDR.W           R11, [SP,#0x101D0+s2]
6CC88:  LDR.W           R10, [SP,#0x101D0+var_10160]
6CC8C:  CMP.W           R10, #0
6CC90:  MOV             R4, R11
6CC92:  BEQ             loc_6CCD2
6CC94:  MOV             R5, R0
6CC96:  MOV.W           R6, R10,LSL#5
6CC9A:  MOV             R4, R11
6CC9C:  B               loc_6CCA6
6CC9E:  SUBS            R6, #0x20 ; ' '
6CCA0:  ADD.W           R4, R4, #0x20 ; ' '
6CCA4:  BEQ             loc_6CCDE
6CCA6:  LDRH            R0, [R4,#0xE]
6CCA8:  LDR             R2, [R4]
6CCAA:  ANDS.W          R0, R0, #0x1000
6CCAE:  LDRB            R1, [R4,#0xD]
6CCB0:  IT NE
6CCB2:  RSBNE.W         R2, R1, #0xD
6CCB6:  CMP             R5, R2
6CCB8:  BNE             loc_6CC9E
6CCBA:  LDR             R1, [R4,#8]
6CCBC:  CMP             R0, #0
6CCBE:  IT NE
6CCC0:  MOVNE           R1, R4; s2
6CCC2:  CMP             R1, R8
6CCC4:  BEQ             loc_6CCD2
6CCC6:  MOV             R0, R8; s1
6CCC8:  MOV             R2, R5; n
6CCCA:  BLX             memcmp
6CCCE:  CMP             R0, #0
6CCD0:  BNE             loc_6CC9E
6CCD2:  ADD.W           R0, R11, R10,LSL#5
6CCD6:  CMP             R4, R0
6CCD8:  BEQ             loc_6CCDE
6CCDA:  ADDS            R4, #0x10
6CCDC:  B               loc_6CCF0
6CCDE:  LDR             R0, =(unk_116D20 - 0x6CCE4)
6CCE0:  ADD             R0, PC; unk_116D20
6CCE2:  BLX             j___emutls_get_address
6CCE6:  VMOV.I32        Q8, #0
6CCEA:  MOV             R4, R0
6CCEC:  VST1.64         {D16-D17}, [R4]
6CCF0:  LDR             R0, =(aServer - 0x6CCF6); "server" ...
6CCF2:  ADD             R0, PC; "server"
6CCF4:  MOVS            R1, #7; size_t
6CCF6:  MOV             R8, R0
6CCF8:  BLX             __strlen_chk
6CCFC:  LDR.W           R11, [R4,#8]
6CD00:  LDR.W           R10, [R4]
6CD04:  CMP.W           R10, #0
6CD08:  MOV             R4, R11
6CD0A:  BEQ             loc_6CD4A
6CD0C:  MOV             R5, R0
6CD0E:  MOV.W           R6, R10,LSL#5
6CD12:  MOV             R4, R11
6CD14:  B               loc_6CD1E
6CD16:  SUBS            R6, #0x20 ; ' '
6CD18:  ADD.W           R4, R4, #0x20 ; ' '
6CD1C:  BEQ             loc_6CD56
6CD1E:  LDRH            R0, [R4,#0xE]
6CD20:  LDR             R2, [R4]
6CD22:  ANDS.W          R0, R0, #0x1000
6CD26:  LDRB            R1, [R4,#0xD]
6CD28:  IT NE
6CD2A:  RSBNE.W         R2, R1, #0xD
6CD2E:  CMP             R5, R2
6CD30:  BNE             loc_6CD16
6CD32:  LDR             R1, [R4,#8]
6CD34:  CMP             R0, #0
6CD36:  IT NE
6CD38:  MOVNE           R1, R4; s2
6CD3A:  CMP             R1, R8
6CD3C:  BEQ             loc_6CD4A
6CD3E:  MOV             R0, R8; s1
6CD40:  MOV             R2, R5; n
6CD42:  BLX             memcmp
6CD46:  CMP             R0, #0
6CD48:  BNE             loc_6CD16
6CD4A:  ADD.W           R0, R11, R10,LSL#5
6CD4E:  CMP             R4, R0
6CD50:  BEQ             loc_6CD56
6CD52:  ADDS            R4, #0x10
6CD54:  B               loc_6CD68
6CD56:  LDR             R0, =(unk_116D20 - 0x6CD5C)
6CD58:  ADD             R0, PC; unk_116D20
6CD5A:  BLX             j___emutls_get_address
6CD5E:  VMOV.I32        Q8, #0
6CD62:  MOV             R4, R0
6CD64:  VST1.64         {D16-D17}, [R4]
6CD68:  LDR             R0, =(aPort - 0x6CD6E); "port" ...
6CD6A:  ADD             R0, PC; "port"
6CD6C:  MOVS            R1, #5; size_t
6CD6E:  MOV             R8, R0
6CD70:  BLX             __strlen_chk
6CD74:  LDR.W           R11, [R4,#8]
6CD78:  LDR.W           R10, [R4]
6CD7C:  CMP.W           R10, #0
6CD80:  MOV             R4, R11
6CD82:  BEQ             loc_6CDCC
6CD84:  MOV             R5, R0
6CD86:  MOV.W           R6, R10,LSL#5
6CD8A:  MOV             R4, R11
6CD8C:  B               loc_6CDA0
6CD8E:  ALIGN 0x10
6CD90:  DCD aInitializingSe - 0x6CA44
6CD94:  DCD aSampOrig - 0x6CA42
6CD98:  SUBS            R6, #0x20 ; ' '
6CD9A:  ADD.W           R4, R4, #0x20 ; ' '
6CD9E:  BEQ             loc_6CE18
6CDA0:  LDRH            R0, [R4,#0xE]
6CDA2:  LDR             R2, [R4]
6CDA4:  ANDS.W          R0, R0, #0x1000
6CDA8:  LDRB            R1, [R4,#0xD]
6CDAA:  IT NE
6CDAC:  RSBNE.W         R2, R1, #0xD
6CDB0:  CMP             R5, R2
6CDB2:  BNE             loc_6CD98
6CDB4:  LDR             R1, [R4,#8]
6CDB6:  CMP             R0, #0
6CDB8:  IT NE
6CDBA:  MOVNE           R1, R4; s2
6CDBC:  CMP             R1, R8
6CDBE:  BEQ             loc_6CDCC
6CDC0:  MOV             R0, R8; s1
6CDC2:  MOV             R2, R5; n
6CDC4:  BLX             memcmp
6CDC8:  CMP             R0, #0
6CDCA:  BNE             loc_6CD98
6CDCC:  ADD.W           R0, R11, R10,LSL#5
6CDD0:  CMP             R4, R0
6CDD2:  BEQ             loc_6CE18
6CDD4:  LDR             R2, [R4,#0x10]
6CDD6:  B               loc_6CE2A
6CDD8:  DCD __stack_chk_guard_ptr - 0x6CA46
6CDDC:  DCD byte_1A443A - 0x6CA58
6CDE0:  DCD off_114AA8 - 0x6CA6C
6CDE4:  DCD aRb - 0x6CA8C
6CDE8:  DCD aClient - 0x6CAFA
6CDEC:  DCD unk_116D20 - 0x6CB62
6CDF0:  DCD aServer - 0x6CB74
6CDF4:  DCD unk_116D20 - 0x6CBDA
6CDF8:  DCD aHost - 0x6CBEC
6CDFC:  DCD unk_116D20 - 0x6CC58
6CE00:  DCD a127001 - 0x6CC72
6CE04:  DCD aClient - 0x6CC7E
6CE08:  DCD unk_116D20 - 0x6CCE4
6CE0C:  DCD aServer - 0x6CCF6
6CE10:  DCD unk_116D20 - 0x6CD5C
6CE14:  DCD aPort - 0x6CD6E
6CE18:  LDR             R0, =(unk_116D20 - 0x6CE1E)
6CE1A:  ADD             R0, PC; unk_116D20
6CE1C:  BLX             j___emutls_get_address
6CE20:  VMOV.I32        Q8, #0
6CE24:  MOVS            R2, #0
6CE26:  VST1.64         {D16-D17}, [R0]
6CE2A:  LDR             R1, =(dword_116CE0 - 0x6CE32)
6CE2C:  LDR             R0, =(aClient - 0x6CE36); "client" ...
6CE2E:  ADD             R1, PC; dword_116CE0
6CE30:  STR             R1, [SP,#0x101D0+var_1018C]
6CE32:  ADD             R0, PC; "client"
6CE34:  STR             R2, [R1]
6CE36:  MOVS            R1, #7; size_t
6CE38:  MOV             R9, R0
6CE3A:  BLX             __strlen_chk
6CE3E:  LDR.W           R11, [SP,#0x101D0+s2]
6CE42:  LDR.W           R10, [SP,#0x101D0+var_10160]
6CE46:  CMP.W           R10, #0
6CE4A:  MOV             R4, R11
6CE4C:  BEQ             loc_6CE8C
6CE4E:  MOV             R5, R0
6CE50:  MOV.W           R6, R10,LSL#5
6CE54:  MOV             R4, R11
6CE56:  B               loc_6CE60
6CE58:  SUBS            R6, #0x20 ; ' '
6CE5A:  ADD.W           R4, R4, #0x20 ; ' '
6CE5E:  BEQ             loc_6CE98
6CE60:  LDRH            R0, [R4,#0xE]
6CE62:  LDR             R2, [R4]
6CE64:  ANDS.W          R0, R0, #0x1000
6CE68:  LDRB            R1, [R4,#0xD]
6CE6A:  IT NE
6CE6C:  RSBNE.W         R2, R1, #0xD
6CE70:  CMP             R5, R2
6CE72:  BNE             loc_6CE58
6CE74:  LDR             R1, [R4,#8]
6CE76:  CMP             R0, #0
6CE78:  IT NE
6CE7A:  MOVNE           R1, R4; s2
6CE7C:  CMP             R1, R9
6CE7E:  BEQ             loc_6CE8C
6CE80:  MOV             R0, R9; s1
6CE82:  MOV             R2, R5; n
6CE84:  BLX             memcmp
6CE88:  CMP             R0, #0
6CE8A:  BNE             loc_6CE58
6CE8C:  ADD.W           R0, R11, R10,LSL#5
6CE90:  CMP             R4, R0
6CE92:  BEQ             loc_6CE98
6CE94:  ADDS            R4, #0x10
6CE96:  B               loc_6CEAA
6CE98:  LDR             R0, =(unk_116D20 - 0x6CE9E)
6CE9A:  ADD             R0, PC; unk_116D20
6CE9C:  BLX             j___emutls_get_address
6CEA0:  VMOV.I32        Q8, #0
6CEA4:  MOV             R4, R0
6CEA6:  VST1.64         {D16-D17}, [R4]
6CEAA:  LDR             R0, =(aServer - 0x6CEB0); "server" ...
6CEAC:  ADD             R0, PC; "server"
6CEAE:  MOVS            R1, #7; size_t
6CEB0:  MOV             R8, R0
6CEB2:  BLX             __strlen_chk
6CEB6:  LDR.W           R11, [R4,#8]
6CEBA:  LDR.W           R10, [R4]
6CEBE:  CMP.W           R10, #0
6CEC2:  MOV             R4, R11
6CEC4:  BEQ             loc_6CF04
6CEC6:  MOV             R5, R0
6CEC8:  MOV.W           R6, R10,LSL#5
6CECC:  MOV             R4, R11
6CECE:  B               loc_6CED8
6CED0:  SUBS            R6, #0x20 ; ' '
6CED2:  ADD.W           R4, R4, #0x20 ; ' '
6CED6:  BEQ             loc_6CF10
6CED8:  LDRH            R0, [R4,#0xE]
6CEDA:  LDR             R2, [R4]
6CEDC:  ANDS.W          R0, R0, #0x1000
6CEE0:  LDRB            R1, [R4,#0xD]
6CEE2:  IT NE
6CEE4:  RSBNE.W         R2, R1, #0xD
6CEE8:  CMP             R5, R2
6CEEA:  BNE             loc_6CED0
6CEEC:  LDR             R1, [R4,#8]
6CEEE:  CMP             R0, #0
6CEF0:  IT NE
6CEF2:  MOVNE           R1, R4; s2
6CEF4:  CMP             R1, R8
6CEF6:  BEQ             loc_6CF04
6CEF8:  MOV             R0, R8; s1
6CEFA:  MOV             R2, R5; n
6CEFC:  BLX             memcmp
6CF00:  CMP             R0, #0
6CF02:  BNE             loc_6CED0
6CF04:  ADD.W           R0, R11, R10,LSL#5
6CF08:  CMP             R4, R0
6CF0A:  BEQ             loc_6CF10
6CF0C:  ADDS            R4, #0x10
6CF0E:  B               loc_6CF22
6CF10:  LDR             R0, =(unk_116D20 - 0x6CF16)
6CF12:  ADD             R0, PC; unk_116D20
6CF14:  BLX             j___emutls_get_address
6CF18:  VMOV.I32        Q8, #0
6CF1C:  MOV             R4, R0
6CF1E:  VST1.64         {D16-D17}, [R4]
6CF22:  LDR             R0, =(aPassword - 0x6CF28); "password" ...
6CF24:  ADD             R0, PC; "password"
6CF26:  MOVS            R1, #9; size_t
6CF28:  MOV             R8, R0
6CF2A:  BLX             __strlen_chk
6CF2E:  LDR.W           R11, [R4,#8]
6CF32:  LDR.W           R10, [R4]
6CF36:  CMP.W           R10, #0
6CF3A:  MOV             R4, R11
6CF3C:  BEQ             loc_6CF7C
6CF3E:  MOV             R5, R0
6CF40:  MOV.W           R6, R10,LSL#5
6CF44:  MOV             R4, R11
6CF46:  B               loc_6CF50
6CF48:  SUBS            R6, #0x20 ; ' '
6CF4A:  ADD.W           R4, R4, #0x20 ; ' '
6CF4E:  BEQ             loc_6CF8E
6CF50:  LDRH            R0, [R4,#0xE]
6CF52:  LDR             R2, [R4]
6CF54:  ANDS.W          R0, R0, #0x1000
6CF58:  LDRB            R1, [R4,#0xD]
6CF5A:  IT NE
6CF5C:  RSBNE.W         R2, R1, #0xD
6CF60:  CMP             R5, R2
6CF62:  BNE             loc_6CF48
6CF64:  LDR             R1, [R4,#8]
6CF66:  CMP             R0, #0
6CF68:  IT NE
6CF6A:  MOVNE           R1, R4; s2
6CF6C:  CMP             R1, R8
6CF6E:  BEQ             loc_6CF7C
6CF70:  MOV             R0, R8; s1
6CF72:  MOV             R2, R5; n
6CF74:  BLX             memcmp
6CF78:  CMP             R0, #0
6CF7A:  BNE             loc_6CF48
6CF7C:  ADD.W           R0, R11, R10,LSL#5
6CF80:  CMP             R4, R0
6CF82:  BEQ             loc_6CF8E
6CF84:  LDR             R1, [R4,#0x18]
6CF86:  ADD.W           R0, R4, #0x10
6CF8A:  LDRH            R3, [R4,#0x1E]
6CF8C:  B               loc_6CFA2
6CF8E:  LDR             R0, =(unk_116D20 - 0x6CF94)
6CF90:  ADD             R0, PC; unk_116D20
6CF92:  BLX             j___emutls_get_address
6CF96:  VMOV.I32        Q8, #0
6CF9A:  MOVS            R1, #0
6CF9C:  MOVS            R3, #0
6CF9E:  VST1.64         {D16-D17}, [R0]
6CFA2:  LDR             R2, =(unk_1A443B - 0x6CFAE)
6CFA4:  LSLS            R3, R3, #0x13
6CFA6:  IT MI
6CFA8:  MOVMI           R1, R0
6CFAA:  ADD             R2, PC; unk_1A443B
6CFAC:  MOV             R0, R2
6CFAE:  MOVS            R2, #0x40 ; '@'
6CFB0:  BLX             __strcpy_chk
6CFB4:  LDR             R0, =(aClient - 0x6CFBA); "client" ...
6CFB6:  ADD             R0, PC; "client"
6CFB8:  MOVS            R1, #7; size_t
6CFBA:  MOV             R8, R0
6CFBC:  BLX             __strlen_chk
6CFC0:  LDR.W           R11, [SP,#0x101D0+s2]
6CFC4:  LDR.W           R10, [SP,#0x101D0+var_10160]
6CFC8:  CMP.W           R10, #0
6CFCC:  MOV             R4, R11
6CFCE:  BEQ             loc_6D00E
6CFD0:  MOV             R5, R0
6CFD2:  MOV.W           R6, R10,LSL#5
6CFD6:  MOV             R4, R11
6CFD8:  B               loc_6CFE2
6CFDA:  SUBS            R6, #0x20 ; ' '
6CFDC:  ADD.W           R4, R4, #0x20 ; ' '
6CFE0:  BEQ             loc_6D01A
6CFE2:  LDRH            R0, [R4,#0xE]
6CFE4:  LDR             R2, [R4]
6CFE6:  ANDS.W          R0, R0, #0x1000
6CFEA:  LDRB            R1, [R4,#0xD]
6CFEC:  IT NE
6CFEE:  RSBNE.W         R2, R1, #0xD
6CFF2:  CMP             R5, R2
6CFF4:  BNE             loc_6CFDA
6CFF6:  LDR             R1, [R4,#8]
6CFF8:  CMP             R0, #0
6CFFA:  IT NE
6CFFC:  MOVNE           R1, R4; s2
6CFFE:  CMP             R1, R8
6D000:  BEQ             loc_6D00E
6D002:  MOV             R0, R8; s1
6D004:  MOV             R2, R5; n
6D006:  BLX             memcmp
6D00A:  CMP             R0, #0
6D00C:  BNE             loc_6CFDA
6D00E:  ADD.W           R0, R11, R10,LSL#5
6D012:  CMP             R4, R0
6D014:  BEQ             loc_6D01A
6D016:  ADDS            R4, #0x10
6D018:  B               loc_6D02C
6D01A:  LDR             R0, =(unk_116D20 - 0x6D020)
6D01C:  ADD             R0, PC; unk_116D20
6D01E:  BLX             j___emutls_get_address
6D022:  VMOV.I32        Q8, #0
6D026:  MOV             R4, R0
6D028:  VST1.64         {D16-D17}, [R4]
6D02C:  LDR             R0, =(aSettings - 0x6D032); "settings" ...
6D02E:  ADD             R0, PC; "settings"
6D030:  MOVS            R1, #9; size_t
6D032:  MOV             R8, R0
6D034:  BLX             __strlen_chk
6D038:  LDR.W           R11, [R4,#8]
6D03C:  LDR.W           R10, [R4]
6D040:  CMP.W           R10, #0
6D044:  MOV             R4, R11
6D046:  BEQ             loc_6D086
6D048:  MOV             R5, R0
6D04A:  MOV.W           R6, R10,LSL#5
6D04E:  MOV             R4, R11
6D050:  B               loc_6D05A
6D052:  SUBS            R6, #0x20 ; ' '
6D054:  ADD.W           R4, R4, #0x20 ; ' '
6D058:  BEQ             loc_6D092
6D05A:  LDRH            R0, [R4,#0xE]
6D05C:  LDR             R2, [R4]
6D05E:  ANDS.W          R0, R0, #0x1000
6D062:  LDRB            R1, [R4,#0xD]
6D064:  IT NE
6D066:  RSBNE.W         R2, R1, #0xD
6D06A:  CMP             R5, R2
6D06C:  BNE             loc_6D052
6D06E:  LDR             R1, [R4,#8]
6D070:  CMP             R0, #0
6D072:  IT NE
6D074:  MOVNE           R1, R4; s2
6D076:  CMP             R1, R8
6D078:  BEQ             loc_6D086
6D07A:  MOV             R0, R8; s1
6D07C:  MOV             R2, R5; n
6D07E:  BLX             memcmp
6D082:  CMP             R0, #0
6D084:  BNE             loc_6D052
6D086:  ADD.W           R0, R11, R10,LSL#5
6D08A:  CMP             R4, R0
6D08C:  BEQ             loc_6D092
6D08E:  ADDS            R4, #0x10
6D090:  B               loc_6D0A4
6D092:  LDR             R0, =(unk_116D20 - 0x6D098)
6D094:  ADD             R0, PC; unk_116D20
6D096:  BLX             j___emutls_get_address
6D09A:  VMOV.I32        Q8, #0
6D09E:  MOV             R4, R0
6D0A0:  VST1.64         {D16-D17}, [R4]
6D0A4:  LDR             R0, =(aNickName - 0x6D0AA); "nick_name" ...
6D0A6:  ADD             R0, PC; "nick_name"
6D0A8:  MOVS            R1, #0xA; size_t
6D0AA:  MOV             R8, R0
6D0AC:  BLX             __strlen_chk
6D0B0:  LDR.W           R11, [R4,#8]
6D0B4:  LDR.W           R10, [R4]
6D0B8:  CMP.W           R10, #0
6D0BC:  MOV             R4, R11
6D0BE:  BEQ             loc_6D0FE
6D0C0:  MOV             R5, R0
6D0C2:  MOV.W           R6, R10,LSL#5
6D0C6:  MOV             R4, R11
6D0C8:  B               loc_6D0D2
6D0CA:  SUBS            R6, #0x20 ; ' '
6D0CC:  ADD.W           R4, R4, #0x20 ; ' '
6D0D0:  BEQ             loc_6D110
6D0D2:  LDRH            R0, [R4,#0xE]
6D0D4:  LDR             R2, [R4]
6D0D6:  ANDS.W          R0, R0, #0x1000
6D0DA:  LDRB            R1, [R4,#0xD]
6D0DC:  IT NE
6D0DE:  RSBNE.W         R2, R1, #0xD
6D0E2:  CMP             R5, R2
6D0E4:  BNE             loc_6D0CA
6D0E6:  LDR             R1, [R4,#8]
6D0E8:  CMP             R0, #0
6D0EA:  IT NE
6D0EC:  MOVNE           R1, R4; s2
6D0EE:  CMP             R1, R8
6D0F0:  BEQ             loc_6D0FE
6D0F2:  MOV             R0, R8; s1
6D0F4:  MOV             R2, R5; n
6D0F6:  BLX             memcmp
6D0FA:  CMP             R0, #0
6D0FC:  BNE             loc_6D0CA
6D0FE:  ADD.W           R0, R11, R10,LSL#5
6D102:  CMP             R4, R0
6D104:  BEQ             loc_6D110
6D106:  LDR             R1, [R4,#0x18]
6D108:  ADD.W           R0, R4, #0x10
6D10C:  LDRH            R3, [R4,#0x1E]
6D10E:  B               loc_6D124
6D110:  LDR             R0, =(unk_116D20 - 0x6D116)
6D112:  ADD             R0, PC; unk_116D20
6D114:  BLX             j___emutls_get_address
6D118:  VMOV.I32        Q8, #0
6D11C:  MOVS            R1, #0
6D11E:  MOVS            R3, #0
6D120:  VST1.64         {D16-D17}, [R0]
6D124:  LDR             R2, =(aSampPlayer - 0x6D130); "samp_player"
6D126:  LSLS            R3, R3, #0x13
6D128:  IT MI
6D12A:  MOVMI           R1, R0
6D12C:  ADD             R2, PC; "samp_player"
6D12E:  MOV             R0, R2
6D130:  MOVS            R2, #0x1E
6D132:  BLX             __strcpy_chk
6D136:  LDR             R0, =(aClient - 0x6D13C); "client" ...
6D138:  ADD             R0, PC; "client"
6D13A:  MOVS            R1, #7; size_t
6D13C:  MOV             R8, R0
6D13E:  BLX             __strlen_chk
6D142:  LDR.W           R11, [SP,#0x101D0+s2]
6D146:  LDR.W           R10, [SP,#0x101D0+var_10160]
6D14A:  CMP.W           R10, #0
6D14E:  MOV             R4, R11
6D150:  BEQ             loc_6D190
6D152:  MOV             R5, R0
6D154:  MOV.W           R6, R10,LSL#5
6D158:  MOV             R4, R11
6D15A:  B               loc_6D164
6D15C:  SUBS            R6, #0x20 ; ' '
6D15E:  ADD.W           R4, R4, #0x20 ; ' '
6D162:  BEQ             loc_6D1E0
6D164:  LDRH            R0, [R4,#0xE]
6D166:  LDR             R2, [R4]
6D168:  ANDS.W          R0, R0, #0x1000
6D16C:  LDRB            R1, [R4,#0xD]
6D16E:  IT NE
6D170:  RSBNE.W         R2, R1, #0xD
6D174:  CMP             R5, R2
6D176:  BNE             loc_6D15C
6D178:  LDR             R1, [R4,#8]
6D17A:  CMP             R0, #0
6D17C:  IT NE
6D17E:  MOVNE           R1, R4; s2
6D180:  CMP             R1, R8
6D182:  BEQ             loc_6D190
6D184:  MOV             R0, R8; s1
6D186:  MOV             R2, R5; n
6D188:  BLX             memcmp
6D18C:  CMP             R0, #0
6D18E:  BNE             loc_6D15C
6D190:  ADD.W           R0, R11, R10,LSL#5
6D194:  CMP             R4, R0
6D196:  BEQ             loc_6D1E0
6D198:  ADDS            R4, #0x10
6D19A:  B               loc_6D1F2
6D19C:  DCD unk_116D20 - 0x6CE1E
6D1A0:  DCD dword_116CE0 - 0x6CE32
6D1A4:  DCD aClient - 0x6CE36
6D1A8:  DCD unk_116D20 - 0x6CE9E
6D1AC:  DCD aServer - 0x6CEB0
6D1B0:  DCD unk_116D20 - 0x6CF16
6D1B4:  DCD aPassword - 0x6CF28
6D1B8:  DCD unk_116D20 - 0x6CF94
6D1BC:  DCD unk_1A443B - 0x6CFAE
6D1C0:  DCD aClient - 0x6CFBA
6D1C4:  DCD unk_116D20 - 0x6D020
6D1C8:  DCD aSettings - 0x6D032
6D1CC:  DCD unk_116D20 - 0x6D098
6D1D0:  DCD aNickName - 0x6D0AA
6D1D4:  DCD unk_116D20 - 0x6D116
6D1D8:  DCD aSampPlayer - 0x6D130
6D1DC:  DCD aClient - 0x6D13C
6D1E0:  LDR             R0, =(unk_116D20 - 0x6D1E6)
6D1E2:  ADD             R0, PC; unk_116D20
6D1E4:  BLX             j___emutls_get_address
6D1E8:  VMOV.I32        Q8, #0
6D1EC:  MOV             R4, R0
6D1EE:  VST1.64         {D16-D17}, [R4]
6D1F2:  LDR             R0, =(aSettings - 0x6D1F8); "settings" ...
6D1F4:  ADD             R0, PC; "settings"
6D1F6:  MOVS            R1, #9; size_t
6D1F8:  MOV             R8, R0
6D1FA:  BLX             __strlen_chk
6D1FE:  LDR.W           R11, [R4,#8]
6D202:  LDR.W           R10, [R4]
6D206:  CMP.W           R10, #0
6D20A:  MOV             R4, R11
6D20C:  BEQ             loc_6D24C
6D20E:  MOV             R5, R0
6D210:  MOV.W           R6, R10,LSL#5
6D214:  MOV             R4, R11
6D216:  B               loc_6D220
6D218:  SUBS            R6, #0x20 ; ' '
6D21A:  ADD.W           R4, R4, #0x20 ; ' '
6D21E:  BEQ             loc_6D258
6D220:  LDRH            R0, [R4,#0xE]
6D222:  LDR             R2, [R4]
6D224:  ANDS.W          R0, R0, #0x1000
6D228:  LDRB            R1, [R4,#0xD]
6D22A:  IT NE
6D22C:  RSBNE.W         R2, R1, #0xD
6D230:  CMP             R5, R2
6D232:  BNE             loc_6D218
6D234:  LDR             R1, [R4,#8]
6D236:  CMP             R0, #0
6D238:  IT NE
6D23A:  MOVNE           R1, R4; s2
6D23C:  CMP             R1, R8
6D23E:  BEQ             loc_6D24C
6D240:  MOV             R0, R8; s1
6D242:  MOV             R2, R5; n
6D244:  BLX             memcmp
6D248:  CMP             R0, #0
6D24A:  BNE             loc_6D218
6D24C:  ADD.W           R0, R11, R10,LSL#5
6D250:  CMP             R4, R0
6D252:  BEQ             loc_6D258
6D254:  ADDS            R4, #0x10
6D256:  B               loc_6D26A
6D258:  LDR             R0, =(unk_116D20 - 0x6D25E)
6D25A:  ADD             R0, PC; unk_116D20
6D25C:  BLX             j___emutls_get_address
6D260:  VMOV.I32        Q8, #0
6D264:  MOV             R4, R0
6D266:  VST1.64         {D16-D17}, [R4]
6D26A:  LDR             R0, =(aSampVersion - 0x6D270); "samp_version" ...
6D26C:  ADD             R0, PC; "samp_version"
6D26E:  MOVS            R1, #0xD; size_t
6D270:  MOV             R8, R0
6D272:  BLX             __strlen_chk
6D276:  LDR.W           R11, [R4,#8]
6D27A:  LDR.W           R10, [R4]
6D27E:  CMP.W           R10, #0
6D282:  MOV             R4, R11
6D284:  BEQ             loc_6D2C4
6D286:  MOV             R5, R0
6D288:  MOV.W           R6, R10,LSL#5
6D28C:  MOV             R4, R11
6D28E:  B               loc_6D298
6D290:  SUBS            R6, #0x20 ; ' '
6D292:  ADD.W           R4, R4, #0x20 ; ' '
6D296:  BEQ             loc_6D2D0
6D298:  LDRH            R0, [R4,#0xE]
6D29A:  LDR             R2, [R4]
6D29C:  ANDS.W          R0, R0, #0x1000
6D2A0:  LDRB            R1, [R4,#0xD]
6D2A2:  IT NE
6D2A4:  RSBNE.W         R2, R1, #0xD
6D2A8:  CMP             R5, R2
6D2AA:  BNE             loc_6D290
6D2AC:  LDR             R1, [R4,#8]
6D2AE:  CMP             R0, #0
6D2B0:  IT NE
6D2B2:  MOVNE           R1, R4; s2
6D2B4:  CMP             R1, R8
6D2B6:  BEQ             loc_6D2C4
6D2B8:  MOV             R0, R8; s1
6D2BA:  MOV             R2, R5; n
6D2BC:  BLX             memcmp
6D2C0:  CMP             R0, #0
6D2C2:  BNE             loc_6D290
6D2C4:  ADD.W           R0, R11, R10,LSL#5
6D2C8:  CMP             R4, R0
6D2CA:  BEQ             loc_6D2D0
6D2CC:  LDR             R2, [R4,#0x10]
6D2CE:  B               loc_6D2E2
6D2D0:  LDR             R0, =(unk_116D20 - 0x6D2D6)
6D2D2:  ADD             R0, PC; unk_116D20
6D2D4:  BLX             j___emutls_get_address
6D2D8:  VMOV.I32        Q8, #0
6D2DC:  MOVS            R2, #0
6D2DE:  VST1.64         {D16-D17}, [R0]
6D2E2:  LDR             R1, =(dword_1A447C - 0x6D2EA)
6D2E4:  LDR             R0, =(aClient - 0x6D2EE); "client" ...
6D2E6:  ADD             R1, PC; dword_1A447C
6D2E8:  STR             R1, [SP,#0x101D0+var_10198]
6D2EA:  ADD             R0, PC; "client"
6D2EC:  STR             R2, [R1]
6D2EE:  MOVS            R1, #7; size_t
6D2F0:  MOV             R9, R0
6D2F2:  BLX             __strlen_chk
6D2F6:  LDR.W           R11, [SP,#0x101D0+s2]
6D2FA:  LDR.W           R10, [SP,#0x101D0+var_10160]
6D2FE:  CMP.W           R10, #0
6D302:  MOV             R4, R11
6D304:  BEQ             loc_6D344
6D306:  MOV             R5, R0
6D308:  MOV.W           R6, R10,LSL#5
6D30C:  MOV             R4, R11
6D30E:  B               loc_6D318
6D310:  SUBS            R6, #0x20 ; ' '
6D312:  ADD.W           R4, R4, #0x20 ; ' '
6D316:  BEQ             loc_6D350
6D318:  LDRH            R0, [R4,#0xE]
6D31A:  LDR             R2, [R4]
6D31C:  ANDS.W          R0, R0, #0x1000
6D320:  LDRB            R1, [R4,#0xD]
6D322:  IT NE
6D324:  RSBNE.W         R2, R1, #0xD
6D328:  CMP             R5, R2
6D32A:  BNE             loc_6D310
6D32C:  LDR             R1, [R4,#8]
6D32E:  CMP             R0, #0
6D330:  IT NE
6D332:  MOVNE           R1, R4; s2
6D334:  CMP             R1, R9
6D336:  BEQ             loc_6D344
6D338:  MOV             R0, R9; s1
6D33A:  MOV             R2, R5; n
6D33C:  BLX             memcmp
6D340:  CMP             R0, #0
6D342:  BNE             loc_6D310
6D344:  ADD.W           R0, R11, R10,LSL#5
6D348:  CMP             R4, R0
6D34A:  BEQ             loc_6D350
6D34C:  ADDS            R4, #0x10
6D34E:  B               loc_6D362
6D350:  LDR             R0, =(unk_116D20 - 0x6D356)
6D352:  ADD             R0, PC; unk_116D20
6D354:  BLX             j___emutls_get_address
6D358:  VMOV.I32        Q8, #0
6D35C:  MOV             R4, R0
6D35E:  VST1.64         {D16-D17}, [R4]
6D362:  LDR             R0, =(aSettings - 0x6D368); "settings" ...
6D364:  ADD             R0, PC; "settings"
6D366:  MOVS            R1, #9; size_t
6D368:  MOV             R8, R0
6D36A:  BLX             __strlen_chk
6D36E:  LDR.W           R11, [R4,#8]
6D372:  LDR.W           R10, [R4]
6D376:  CMP.W           R10, #0
6D37A:  MOV             R4, R11
6D37C:  BEQ             loc_6D3BC
6D37E:  MOV             R5, R0
6D380:  MOV.W           R6, R10,LSL#5
6D384:  MOV             R4, R11
6D386:  B               loc_6D390
6D388:  SUBS            R6, #0x20 ; ' '
6D38A:  ADD.W           R4, R4, #0x20 ; ' '
6D38E:  BEQ             loc_6D3C8
6D390:  LDRH            R0, [R4,#0xE]
6D392:  LDR             R2, [R4]
6D394:  ANDS.W          R0, R0, #0x1000
6D398:  LDRB            R1, [R4,#0xD]
6D39A:  IT NE
6D39C:  RSBNE.W         R2, R1, #0xD
6D3A0:  CMP             R5, R2
6D3A2:  BNE             loc_6D388
6D3A4:  LDR             R1, [R4,#8]
6D3A6:  CMP             R0, #0
6D3A8:  IT NE
6D3AA:  MOVNE           R1, R4; s2
6D3AC:  CMP             R1, R8
6D3AE:  BEQ             loc_6D3BC
6D3B0:  MOV             R0, R8; s1
6D3B2:  MOV             R2, R5; n
6D3B4:  BLX             memcmp
6D3B8:  CMP             R0, #0
6D3BA:  BNE             loc_6D388
6D3BC:  ADD.W           R0, R11, R10,LSL#5
6D3C0:  CMP             R4, R0
6D3C2:  BEQ             loc_6D3C8
6D3C4:  ADDS            R4, #0x10
6D3C6:  B               loc_6D3DA
6D3C8:  LDR             R0, =(unk_116D20 - 0x6D3CE)
6D3CA:  ADD             R0, PC; unk_116D20
6D3CC:  BLX             j___emutls_get_address
6D3D0:  VMOV.I32        Q8, #0
6D3D4:  MOV             R4, R0
6D3D6:  VST1.64         {D16-D17}, [R4]
6D3DA:  LDR             R0, =(aNewInterface - 0x6D3E0); "new_interface" ...
6D3DC:  ADD             R0, PC; "new_interface"
6D3DE:  MOVS            R1, #0xE; size_t
6D3E0:  MOV             R8, R0
6D3E2:  BLX             __strlen_chk
6D3E6:  LDR.W           R11, [R4,#8]
6D3EA:  LDR.W           R10, [R4]
6D3EE:  CMP.W           R10, #0
6D3F2:  MOV             R4, R11
6D3F4:  BEQ             loc_6D434
6D3F6:  MOV             R5, R0
6D3F8:  MOV.W           R6, R10,LSL#5
6D3FC:  MOV             R4, R11
6D3FE:  B               loc_6D408
6D400:  SUBS            R6, #0x20 ; ' '
6D402:  ADD.W           R4, R4, #0x20 ; ' '
6D406:  BEQ             loc_6D440
6D408:  LDRH            R0, [R4,#0xE]
6D40A:  LDR             R2, [R4]
6D40C:  ANDS.W          R0, R0, #0x1000
6D410:  LDRB            R1, [R4,#0xD]
6D412:  IT NE
6D414:  RSBNE.W         R2, R1, #0xD
6D418:  CMP             R5, R2
6D41A:  BNE             loc_6D400
6D41C:  LDR             R1, [R4,#8]
6D41E:  CMP             R0, #0
6D420:  IT NE
6D422:  MOVNE           R1, R4; s2
6D424:  CMP             R1, R8
6D426:  BEQ             loc_6D434
6D428:  MOV             R0, R8; s1
6D42A:  MOV             R2, R5; n
6D42C:  BLX             memcmp
6D430:  CMP             R0, #0
6D432:  BNE             loc_6D400
6D434:  ADD.W           R0, R11, R10,LSL#5
6D438:  CMP             R4, R0
6D43A:  BEQ             loc_6D440
6D43C:  LDRH            R2, [R4,#0x1E]
6D43E:  B               loc_6D452
6D440:  LDR             R0, =(unk_116D20 - 0x6D446)
6D442:  ADD             R0, PC; unk_116D20
6D444:  BLX             j___emutls_get_address
6D448:  VMOV.I32        Q8, #0
6D44C:  MOVS            R2, #0
6D44E:  VST1.64         {D16-D17}, [R0]
6D452:  LDR             R0, =(aClient - 0x6D460); "client" ...
6D454:  SUBS            R2, #0xA
6D456:  LDR             R1, =(byte_1A4480 - 0x6D462)
6D458:  CLZ.W           R2, R2
6D45C:  ADD             R0, PC; "client"
6D45E:  ADD             R1, PC; byte_1A4480
6D460:  LSRS            R2, R2, #5
6D462:  STR             R1, [SP,#0x101D0+var_1019C]
6D464:  STRB            R2, [R1]
6D466:  MOVS            R1, #7; size_t
6D468:  MOV             R9, R0
6D46A:  BLX             __strlen_chk
6D46E:  LDR.W           R11, [SP,#0x101D0+s2]
6D472:  LDR.W           R10, [SP,#0x101D0+var_10160]
6D476:  CMP.W           R10, #0
6D47A:  MOV             R4, R11
6D47C:  BEQ             loc_6D4BC
6D47E:  MOV             R5, R0
6D480:  MOV.W           R6, R10,LSL#5
6D484:  MOV             R4, R11
6D486:  B               loc_6D490
6D488:  SUBS            R6, #0x20 ; ' '
6D48A:  ADD.W           R4, R4, #0x20 ; ' '
6D48E:  BEQ             loc_6D4C8
6D490:  LDRH            R0, [R4,#0xE]
6D492:  LDR             R2, [R4]
6D494:  ANDS.W          R0, R0, #0x1000
6D498:  LDRB            R1, [R4,#0xD]
6D49A:  IT NE
6D49C:  RSBNE.W         R2, R1, #0xD
6D4A0:  CMP             R5, R2
6D4A2:  BNE             loc_6D488
6D4A4:  LDR             R1, [R4,#8]
6D4A6:  CMP             R0, #0
6D4A8:  IT NE
6D4AA:  MOVNE           R1, R4; s2
6D4AC:  CMP             R1, R9
6D4AE:  BEQ             loc_6D4BC
6D4B0:  MOV             R0, R9; s1
6D4B2:  MOV             R2, R5; n
6D4B4:  BLX             memcmp
6D4B8:  CMP             R0, #0
6D4BA:  BNE             loc_6D488
6D4BC:  ADD.W           R0, R11, R10,LSL#5
6D4C0:  CMP             R4, R0
6D4C2:  BEQ             loc_6D4C8
6D4C4:  ADDS            R4, #0x10
6D4C6:  B               loc_6D4DA
6D4C8:  LDR             R0, =(unk_116D20 - 0x6D4CE)
6D4CA:  ADD             R0, PC; unk_116D20
6D4CC:  BLX             j___emutls_get_address
6D4D0:  VMOV.I32        Q8, #0
6D4D4:  MOV             R4, R0
6D4D6:  VST1.64         {D16-D17}, [R4]
6D4DA:  LDR             R0, =(aSettings - 0x6D4E0); "settings" ...
6D4DC:  ADD             R0, PC; "settings"
6D4DE:  MOVS            R1, #9; size_t
6D4E0:  MOV             R8, R0
6D4E2:  BLX             __strlen_chk
6D4E6:  LDR.W           R11, [R4,#8]
6D4EA:  LDR.W           R10, [R4]
6D4EE:  CMP.W           R10, #0
6D4F2:  MOV             R4, R11
6D4F4:  BEQ             loc_6D534
6D4F6:  MOV             R5, R0
6D4F8:  MOV.W           R6, R10,LSL#5
6D4FC:  MOV             R4, R11
6D4FE:  B               loc_6D508
6D500:  SUBS            R6, #0x20 ; ' '
6D502:  ADD.W           R4, R4, #0x20 ; ' '
6D506:  BEQ             loc_6D580
6D508:  LDRH            R0, [R4,#0xE]
6D50A:  LDR             R2, [R4]
6D50C:  ANDS.W          R0, R0, #0x1000
6D510:  LDRB            R1, [R4,#0xD]
6D512:  IT NE
6D514:  RSBNE.W         R2, R1, #0xD
6D518:  CMP             R5, R2
6D51A:  BNE             loc_6D500
6D51C:  LDR             R1, [R4,#8]
6D51E:  CMP             R0, #0
6D520:  IT NE
6D522:  MOVNE           R1, R4; s2
6D524:  CMP             R1, R8
6D526:  BEQ             loc_6D534
6D528:  MOV             R0, R8; s1
6D52A:  MOV             R2, R5; n
6D52C:  BLX             memcmp
6D530:  CMP             R0, #0
6D532:  BNE             loc_6D500
6D534:  ADD.W           R0, R11, R10,LSL#5
6D538:  CMP             R4, R0
6D53A:  BEQ             loc_6D580
6D53C:  ADDS            R4, #0x10
6D53E:  B               loc_6D592
6D540:  DCD unk_116D20 - 0x6D1E6
6D544:  DCD aSettings - 0x6D1F8
6D548:  DCD unk_116D20 - 0x6D25E
6D54C:  DCD aSampVersion - 0x6D270
6D550:  DCD unk_116D20 - 0x6D2D6
6D554:  DCD dword_1A447C - 0x6D2EA
6D558:  DCD aClient - 0x6D2EE
6D55C:  DCD unk_116D20 - 0x6D356
6D560:  DCD aSettings - 0x6D368
6D564:  DCD unk_116D20 - 0x6D3CE
6D568:  DCD aNewInterface - 0x6D3E0
6D56C:  DCD unk_116D20 - 0x6D446
6D570:  DCD aClient - 0x6D460
6D574:  DCD byte_1A4480 - 0x6D462
6D578:  DCD unk_116D20 - 0x6D4CE
6D57C:  DCD aSettings - 0x6D4E0
6D580:  LDR             R0, =(unk_116D20 - 0x6D586)
6D582:  ADD             R0, PC; unk_116D20
6D584:  BLX             j___emutls_get_address
6D588:  VMOV.I32        Q8, #0
6D58C:  MOV             R4, R0
6D58E:  VST1.64         {D16-D17}, [R4]
6D592:  LDR             R0, =(aSystemKeyboard - 0x6D598); "system_keyboard" ...
6D594:  ADD             R0, PC; "system_keyboard"
6D596:  MOVS            R1, #0x10; size_t
6D598:  MOV             R8, R0
6D59A:  BLX             __strlen_chk
6D59E:  LDR.W           R11, [R4,#8]
6D5A2:  LDR.W           R10, [R4]
6D5A6:  CMP.W           R10, #0
6D5AA:  MOV             R4, R11
6D5AC:  BEQ             loc_6D5EC
6D5AE:  MOV             R5, R0
6D5B0:  MOV.W           R6, R10,LSL#5
6D5B4:  MOV             R4, R11
6D5B6:  B               loc_6D5C0
6D5B8:  SUBS            R6, #0x20 ; ' '
6D5BA:  ADD.W           R4, R4, #0x20 ; ' '
6D5BE:  BEQ             loc_6D5F8
6D5C0:  LDRH            R0, [R4,#0xE]
6D5C2:  LDR             R2, [R4]
6D5C4:  ANDS.W          R0, R0, #0x1000
6D5C8:  LDRB            R1, [R4,#0xD]
6D5CA:  IT NE
6D5CC:  RSBNE.W         R2, R1, #0xD
6D5D0:  CMP             R5, R2
6D5D2:  BNE             loc_6D5B8
6D5D4:  LDR             R1, [R4,#8]
6D5D6:  CMP             R0, #0
6D5D8:  IT NE
6D5DA:  MOVNE           R1, R4; s2
6D5DC:  CMP             R1, R8
6D5DE:  BEQ             loc_6D5EC
6D5E0:  MOV             R0, R8; s1
6D5E2:  MOV             R2, R5; n
6D5E4:  BLX             memcmp
6D5E8:  CMP             R0, #0
6D5EA:  BNE             loc_6D5B8
6D5EC:  ADD.W           R0, R11, R10,LSL#5
6D5F0:  CMP             R4, R0
6D5F2:  BEQ             loc_6D5F8
6D5F4:  LDRH            R2, [R4,#0x1E]
6D5F6:  B               loc_6D60A
6D5F8:  LDR             R0, =(unk_116D20 - 0x6D5FE)
6D5FA:  ADD             R0, PC; unk_116D20
6D5FC:  BLX             j___emutls_get_address
6D600:  VMOV.I32        Q8, #0
6D604:  MOVS            R2, #0
6D606:  VST1.64         {D16-D17}, [R0]
6D60A:  LDR             R0, =(aClient - 0x6D618); "client" ...
6D60C:  SUBS            R2, #0xA
6D60E:  LDR             R1, =(byte_1A4481 - 0x6D61A)
6D610:  CLZ.W           R2, R2
6D614:  ADD             R0, PC; "client"
6D616:  ADD             R1, PC; byte_1A4481
6D618:  LSRS            R2, R2, #5
6D61A:  STR             R1, [SP,#0x101D0+var_101A0]
6D61C:  STRB            R2, [R1]
6D61E:  MOVS            R1, #7; size_t
6D620:  MOV             R9, R0
6D622:  BLX             __strlen_chk
6D626:  LDR.W           R11, [SP,#0x101D0+s2]
6D62A:  LDR.W           R10, [SP,#0x101D0+var_10160]
6D62E:  CMP.W           R10, #0
6D632:  MOV             R4, R11
6D634:  BEQ             loc_6D674
6D636:  MOV             R5, R0
6D638:  MOV.W           R6, R10,LSL#5
6D63C:  MOV             R4, R11
6D63E:  B               loc_6D648
6D640:  SUBS            R6, #0x20 ; ' '
6D642:  ADD.W           R4, R4, #0x20 ; ' '
6D646:  BEQ             loc_6D680
6D648:  LDRH            R0, [R4,#0xE]
6D64A:  LDR             R2, [R4]
6D64C:  ANDS.W          R0, R0, #0x1000
6D650:  LDRB            R1, [R4,#0xD]
6D652:  IT NE
6D654:  RSBNE.W         R2, R1, #0xD
6D658:  CMP             R5, R2
6D65A:  BNE             loc_6D640
6D65C:  LDR             R1, [R4,#8]
6D65E:  CMP             R0, #0
6D660:  IT NE
6D662:  MOVNE           R1, R4; s2
6D664:  CMP             R1, R9
6D666:  BEQ             loc_6D674
6D668:  MOV             R0, R9; s1
6D66A:  MOV             R2, R5; n
6D66C:  BLX             memcmp
6D670:  CMP             R0, #0
6D672:  BNE             loc_6D640
6D674:  ADD.W           R0, R11, R10,LSL#5
6D678:  CMP             R4, R0
6D67A:  BEQ             loc_6D680
6D67C:  ADDS            R4, #0x10
6D67E:  B               loc_6D692
6D680:  LDR             R0, =(unk_116D20 - 0x6D686)
6D682:  ADD             R0, PC; unk_116D20
6D684:  BLX             j___emutls_get_address
6D688:  VMOV.I32        Q8, #0
6D68C:  MOV             R4, R0
6D68E:  VST1.64         {D16-D17}, [R4]
6D692:  LDR             R0, =(aSettings - 0x6D698); "settings" ...
6D694:  ADD             R0, PC; "settings"
6D696:  MOVS            R1, #9; size_t
6D698:  MOV             R8, R0
6D69A:  BLX             __strlen_chk
6D69E:  LDR.W           R11, [R4,#8]
6D6A2:  LDR.W           R10, [R4]
6D6A6:  CMP.W           R10, #0
6D6AA:  MOV             R4, R11
6D6AC:  BEQ             loc_6D6EC
6D6AE:  MOV             R5, R0
6D6B0:  MOV.W           R6, R10,LSL#5
6D6B4:  MOV             R4, R11
6D6B6:  B               loc_6D6C0
6D6B8:  SUBS            R6, #0x20 ; ' '
6D6BA:  ADD.W           R4, R4, #0x20 ; ' '
6D6BE:  BEQ             loc_6D6F8
6D6C0:  LDRH            R0, [R4,#0xE]
6D6C2:  LDR             R2, [R4]
6D6C4:  ANDS.W          R0, R0, #0x1000
6D6C8:  LDRB            R1, [R4,#0xD]
6D6CA:  IT NE
6D6CC:  RSBNE.W         R2, R1, #0xD
6D6D0:  CMP             R5, R2
6D6D2:  BNE             loc_6D6B8
6D6D4:  LDR             R1, [R4,#8]
6D6D6:  CMP             R0, #0
6D6D8:  IT NE
6D6DA:  MOVNE           R1, R4; s2
6D6DC:  CMP             R1, R8
6D6DE:  BEQ             loc_6D6EC
6D6E0:  MOV             R0, R8; s1
6D6E2:  MOV             R2, R5; n
6D6E4:  BLX             memcmp
6D6E8:  CMP             R0, #0
6D6EA:  BNE             loc_6D6B8
6D6EC:  ADD.W           R0, R11, R10,LSL#5
6D6F0:  CMP             R4, R0
6D6F2:  BEQ             loc_6D6F8
6D6F4:  ADDS            R4, #0x10
6D6F6:  B               loc_6D70A
6D6F8:  LDR             R0, =(unk_116D20 - 0x6D6FE)
6D6FA:  ADD             R0, PC; unk_116D20
6D6FC:  BLX             j___emutls_get_address
6D700:  VMOV.I32        Q8, #0
6D704:  MOV             R4, R0
6D706:  VST1.64         {D16-D17}, [R4]
6D70A:  LDR             R0, =(aTimestamp - 0x6D710); "timestamp" ...
6D70C:  ADD             R0, PC; "timestamp"
6D70E:  MOVS            R1, #0xA; size_t
6D710:  MOV             R8, R0
6D712:  BLX             __strlen_chk
6D716:  LDR.W           R11, [R4,#8]
6D71A:  LDR.W           R10, [R4]
6D71E:  CMP.W           R10, #0
6D722:  MOV             R4, R11
6D724:  BEQ             loc_6D764
6D726:  MOV             R5, R0
6D728:  MOV.W           R6, R10,LSL#5
6D72C:  MOV             R4, R11
6D72E:  B               loc_6D738
6D730:  SUBS            R6, #0x20 ; ' '
6D732:  ADD.W           R4, R4, #0x20 ; ' '
6D736:  BEQ             loc_6D770
6D738:  LDRH            R0, [R4,#0xE]
6D73A:  LDR             R2, [R4]
6D73C:  ANDS.W          R0, R0, #0x1000
6D740:  LDRB            R1, [R4,#0xD]
6D742:  IT NE
6D744:  RSBNE.W         R2, R1, #0xD
6D748:  CMP             R5, R2
6D74A:  BNE             loc_6D730
6D74C:  LDR             R1, [R4,#8]
6D74E:  CMP             R0, #0
6D750:  IT NE
6D752:  MOVNE           R1, R4; s2
6D754:  CMP             R1, R8
6D756:  BEQ             loc_6D764
6D758:  MOV             R0, R8; s1
6D75A:  MOV             R2, R5; n
6D75C:  BLX             memcmp
6D760:  CMP             R0, #0
6D762:  BNE             loc_6D730
6D764:  ADD.W           R0, R11, R10,LSL#5
6D768:  CMP             R4, R0
6D76A:  BEQ             loc_6D770
6D76C:  LDRH            R2, [R4,#0x1E]
6D76E:  B               loc_6D782
6D770:  LDR             R0, =(unk_116D20 - 0x6D776)
6D772:  ADD             R0, PC; unk_116D20
6D774:  BLX             j___emutls_get_address
6D778:  VMOV.I32        Q8, #0
6D77C:  MOVS            R2, #0
6D77E:  VST1.64         {D16-D17}, [R0]
6D782:  LDR             R0, =(aClient - 0x6D790); "client" ...
6D784:  SUBS            R2, #0xA
6D786:  LDR             R1, =(byte_1A4482 - 0x6D792)
6D788:  CLZ.W           R2, R2
6D78C:  ADD             R0, PC; "client"
6D78E:  ADD             R1, PC; byte_1A4482
6D790:  LSRS            R2, R2, #5
6D792:  STR             R1, [SP,#0x101D0+var_101A4]
6D794:  STRB            R2, [R1]
6D796:  MOVS            R1, #7; size_t
6D798:  MOV             R9, R0
6D79A:  BLX             __strlen_chk
6D79E:  LDR.W           R11, [SP,#0x101D0+s2]
6D7A2:  LDR.W           R10, [SP,#0x101D0+var_10160]
6D7A6:  CMP.W           R10, #0
6D7AA:  MOV             R4, R11
6D7AC:  BEQ             loc_6D7EC
6D7AE:  MOV             R5, R0
6D7B0:  MOV.W           R6, R10,LSL#5
6D7B4:  MOV             R4, R11
6D7B6:  B               loc_6D7C0
6D7B8:  SUBS            R6, #0x20 ; ' '
6D7BA:  ADD.W           R4, R4, #0x20 ; ' '
6D7BE:  BEQ             loc_6D7F8
6D7C0:  LDRH            R0, [R4,#0xE]
6D7C2:  LDR             R2, [R4]
6D7C4:  ANDS.W          R0, R0, #0x1000
6D7C8:  LDRB            R1, [R4,#0xD]
6D7CA:  IT NE
6D7CC:  RSBNE.W         R2, R1, #0xD
6D7D0:  CMP             R5, R2
6D7D2:  BNE             loc_6D7B8
6D7D4:  LDR             R1, [R4,#8]
6D7D6:  CMP             R0, #0
6D7D8:  IT NE
6D7DA:  MOVNE           R1, R4; s2
6D7DC:  CMP             R1, R9
6D7DE:  BEQ             loc_6D7EC
6D7E0:  MOV             R0, R9; s1
6D7E2:  MOV             R2, R5; n
6D7E4:  BLX             memcmp
6D7E8:  CMP             R0, #0
6D7EA:  BNE             loc_6D7B8
6D7EC:  ADD.W           R0, R11, R10,LSL#5
6D7F0:  CMP             R4, R0
6D7F2:  BEQ             loc_6D7F8
6D7F4:  ADDS            R4, #0x10
6D7F6:  B               loc_6D80A
6D7F8:  LDR             R0, =(unk_116D20 - 0x6D7FE)
6D7FA:  ADD             R0, PC; unk_116D20
6D7FC:  BLX             j___emutls_get_address
6D800:  VMOV.I32        Q8, #0
6D804:  MOV             R4, R0
6D806:  VST1.64         {D16-D17}, [R4]
6D80A:  LDR             R0, =(aSettings - 0x6D810); "settings" ...
6D80C:  ADD             R0, PC; "settings"
6D80E:  MOVS            R1, #9; size_t
6D810:  MOV             R8, R0
6D812:  BLX             __strlen_chk
6D816:  LDR.W           R11, [R4,#8]
6D81A:  LDR.W           R10, [R4]
6D81E:  CMP.W           R10, #0
6D822:  MOV             R4, R11
6D824:  BEQ             loc_6D864
6D826:  MOV             R5, R0
6D828:  MOV.W           R6, R10,LSL#5
6D82C:  MOV             R4, R11
6D82E:  B               loc_6D838
6D830:  SUBS            R6, #0x20 ; ' '
6D832:  ADD.W           R4, R4, #0x20 ; ' '
6D836:  BEQ             loc_6D870
6D838:  LDRH            R0, [R4,#0xE]
6D83A:  LDR             R2, [R4]
6D83C:  ANDS.W          R0, R0, #0x1000
6D840:  LDRB            R1, [R4,#0xD]
6D842:  IT NE
6D844:  RSBNE.W         R2, R1, #0xD
6D848:  CMP             R5, R2
6D84A:  BNE             loc_6D830
6D84C:  LDR             R1, [R4,#8]
6D84E:  CMP             R0, #0
6D850:  IT NE
6D852:  MOVNE           R1, R4; s2
6D854:  CMP             R1, R8
6D856:  BEQ             loc_6D864
6D858:  MOV             R0, R8; s1
6D85A:  MOV             R2, R5; n
6D85C:  BLX             memcmp
6D860:  CMP             R0, #0
6D862:  BNE             loc_6D830
6D864:  ADD.W           R0, R11, R10,LSL#5
6D868:  CMP             R4, R0
6D86A:  BEQ             loc_6D870
6D86C:  ADDS            R4, #0x10
6D86E:  B               loc_6D882
6D870:  LDR             R0, =(unk_116D20 - 0x6D876)
6D872:  ADD             R0, PC; unk_116D20
6D874:  BLX             j___emutls_get_address
6D878:  VMOV.I32        Q8, #0
6D87C:  MOV             R4, R0
6D87E:  VST1.64         {D16-D17}, [R4]
6D882:  LDR             R0, =(aFastConnect - 0x6D888); "fast_connect" ...
6D884:  ADD             R0, PC; "fast_connect"
6D886:  MOVS            R1, #0xD; size_t
6D888:  MOV             R8, R0
6D88A:  BLX             __strlen_chk
6D88E:  LDR.W           R11, [R4,#8]
6D892:  LDR.W           R10, [R4]
6D896:  CMP.W           R10, #0
6D89A:  MOV             R4, R11
6D89C:  BEQ             loc_6D8DC
6D89E:  MOV             R5, R0
6D8A0:  MOV.W           R6, R10,LSL#5
6D8A4:  MOV             R4, R11
6D8A6:  B               loc_6D8B0
6D8A8:  SUBS            R6, #0x20 ; ' '
6D8AA:  ADD.W           R4, R4, #0x20 ; ' '
6D8AE:  BEQ             loc_6D928
6D8B0:  LDRH            R0, [R4,#0xE]
6D8B2:  LDR             R2, [R4]
6D8B4:  ANDS.W          R0, R0, #0x1000
6D8B8:  LDRB            R1, [R4,#0xD]
6D8BA:  IT NE
6D8BC:  RSBNE.W         R2, R1, #0xD
6D8C0:  CMP             R5, R2
6D8C2:  BNE             loc_6D8A8
6D8C4:  LDR             R1, [R4,#8]
6D8C6:  CMP             R0, #0
6D8C8:  IT NE
6D8CA:  MOVNE           R1, R4; s2
6D8CC:  CMP             R1, R8
6D8CE:  BEQ             loc_6D8DC
6D8D0:  MOV             R0, R8; s1
6D8D2:  MOV             R2, R5; n
6D8D4:  BLX             memcmp
6D8D8:  CMP             R0, #0
6D8DA:  BNE             loc_6D8A8
6D8DC:  ADD.W           R0, R11, R10,LSL#5
6D8E0:  CMP             R4, R0
6D8E2:  BEQ             loc_6D928
6D8E4:  LDRH            R2, [R4,#0x1E]
6D8E6:  B               loc_6D93A
6D8E8:  DCD unk_116D20 - 0x6D586
6D8EC:  DCD aSystemKeyboard - 0x6D598
6D8F0:  DCD unk_116D20 - 0x6D5FE
6D8F4:  DCD aClient - 0x6D618
6D8F8:  DCD byte_1A4481 - 0x6D61A
6D8FC:  DCD unk_116D20 - 0x6D686
6D900:  DCD aSettings - 0x6D698
6D904:  DCD unk_116D20 - 0x6D6FE
6D908:  DCD aTimestamp - 0x6D710
6D90C:  DCD unk_116D20 - 0x6D776
6D910:  DCD aClient - 0x6D790
6D914:  DCD byte_1A4482 - 0x6D792
6D918:  DCD unk_116D20 - 0x6D7FE
6D91C:  DCD aSettings - 0x6D810
6D920:  DCD unk_116D20 - 0x6D876
6D924:  DCD aFastConnect - 0x6D888
6D928:  LDR             R0, =(unk_116D20 - 0x6D92E)
6D92A:  ADD             R0, PC; unk_116D20
6D92C:  BLX             j___emutls_get_address
6D930:  VMOV.I32        Q8, #0
6D934:  MOVS            R2, #0
6D936:  VST1.64         {D16-D17}, [R0]
6D93A:  LDR             R0, =(aClient - 0x6D948); "client" ...
6D93C:  SUBS            R2, #0xA
6D93E:  LDR             R1, =(byte_1A4483 - 0x6D94A)
6D940:  CLZ.W           R2, R2
6D944:  ADD             R0, PC; "client"
6D946:  ADD             R1, PC; byte_1A4483
6D948:  LSRS            R2, R2, #5
6D94A:  STR             R1, [SP,#0x101D0+var_101A8]
6D94C:  STRB            R2, [R1]
6D94E:  MOVS            R1, #7; size_t
6D950:  MOV             R9, R0
6D952:  BLX             __strlen_chk
6D956:  LDR.W           R11, [SP,#0x101D0+s2]
6D95A:  LDR.W           R10, [SP,#0x101D0+var_10160]
6D95E:  CMP.W           R10, #0
6D962:  MOV             R4, R11
6D964:  BEQ             loc_6D9A4
6D966:  MOV             R5, R0
6D968:  MOV.W           R6, R10,LSL#5
6D96C:  MOV             R4, R11
6D96E:  B               loc_6D978
6D970:  SUBS            R6, #0x20 ; ' '
6D972:  ADD.W           R4, R4, #0x20 ; ' '
6D976:  BEQ             loc_6D9B0
6D978:  LDRH            R0, [R4,#0xE]
6D97A:  LDR             R2, [R4]
6D97C:  ANDS.W          R0, R0, #0x1000
6D980:  LDRB            R1, [R4,#0xD]
6D982:  IT NE
6D984:  RSBNE.W         R2, R1, #0xD
6D988:  CMP             R5, R2
6D98A:  BNE             loc_6D970
6D98C:  LDR             R1, [R4,#8]
6D98E:  CMP             R0, #0
6D990:  IT NE
6D992:  MOVNE           R1, R4; s2
6D994:  CMP             R1, R9
6D996:  BEQ             loc_6D9A4
6D998:  MOV             R0, R9; s1
6D99A:  MOV             R2, R5; n
6D99C:  BLX             memcmp
6D9A0:  CMP             R0, #0
6D9A2:  BNE             loc_6D970
6D9A4:  ADD.W           R0, R11, R10,LSL#5
6D9A8:  CMP             R4, R0
6D9AA:  BEQ             loc_6D9B0
6D9AC:  ADDS            R4, #0x10
6D9AE:  B               loc_6D9C2
6D9B0:  LDR             R0, =(unk_116D20 - 0x6D9B6)
6D9B2:  ADD             R0, PC; unk_116D20
6D9B4:  BLX             j___emutls_get_address
6D9B8:  VMOV.I32        Q8, #0
6D9BC:  MOV             R4, R0
6D9BE:  VST1.64         {D16-D17}, [R4]
6D9C2:  LDR             R0, =(aSettings - 0x6D9C8); "settings" ...
6D9C4:  ADD             R0, PC; "settings"
6D9C6:  MOVS            R1, #9; size_t
6D9C8:  MOV             R8, R0
6D9CA:  BLX             __strlen_chk
6D9CE:  LDR.W           R11, [R4,#8]
6D9D2:  LDR.W           R10, [R4]
6D9D6:  CMP.W           R10, #0
6D9DA:  MOV             R4, R11
6D9DC:  BEQ             loc_6DA1C
6D9DE:  MOV             R5, R0
6D9E0:  MOV.W           R6, R10,LSL#5
6D9E4:  MOV             R4, R11
6D9E6:  B               loc_6D9F0
6D9E8:  SUBS            R6, #0x20 ; ' '
6D9EA:  ADD.W           R4, R4, #0x20 ; ' '
6D9EE:  BEQ             loc_6DA28
6D9F0:  LDRH            R0, [R4,#0xE]
6D9F2:  LDR             R2, [R4]
6D9F4:  ANDS.W          R0, R0, #0x1000
6D9F8:  LDRB            R1, [R4,#0xD]
6D9FA:  IT NE
6D9FC:  RSBNE.W         R2, R1, #0xD
6DA00:  CMP             R5, R2
6DA02:  BNE             loc_6D9E8
6DA04:  LDR             R1, [R4,#8]
6DA06:  CMP             R0, #0
6DA08:  IT NE
6DA0A:  MOVNE           R1, R4; s2
6DA0C:  CMP             R1, R8
6DA0E:  BEQ             loc_6DA1C
6DA10:  MOV             R0, R8; s1
6DA12:  MOV             R2, R5; n
6DA14:  BLX             memcmp
6DA18:  CMP             R0, #0
6DA1A:  BNE             loc_6D9E8
6DA1C:  ADD.W           R0, R11, R10,LSL#5
6DA20:  CMP             R4, R0
6DA22:  BEQ             loc_6DA28
6DA24:  ADDS            R4, #0x10
6DA26:  B               loc_6DA3A
6DA28:  LDR             R0, =(unk_116D20 - 0x6DA2E)
6DA2A:  ADD             R0, PC; unk_116D20
6DA2C:  BLX             j___emutls_get_address
6DA30:  VMOV.I32        Q8, #0
6DA34:  MOV             R4, R0
6DA36:  VST1.64         {D16-D17}, [R4]
6DA3A:  LDR             R0, =(aVoiceChat - 0x6DA40); "voice_chat" ...
6DA3C:  ADD             R0, PC; "voice_chat"
6DA3E:  MOVS            R1, #0xB; size_t
6DA40:  MOV             R8, R0
6DA42:  BLX             __strlen_chk
6DA46:  LDR.W           R11, [R4,#8]
6DA4A:  LDR.W           R10, [R4]
6DA4E:  CMP.W           R10, #0
6DA52:  MOV             R4, R11
6DA54:  BEQ             loc_6DA94
6DA56:  MOV             R5, R0
6DA58:  MOV.W           R6, R10,LSL#5
6DA5C:  MOV             R4, R11
6DA5E:  B               loc_6DA68
6DA60:  SUBS            R6, #0x20 ; ' '
6DA62:  ADD.W           R4, R4, #0x20 ; ' '
6DA66:  BEQ             loc_6DAA0
6DA68:  LDRH            R0, [R4,#0xE]
6DA6A:  LDR             R2, [R4]
6DA6C:  ANDS.W          R0, R0, #0x1000
6DA70:  LDRB            R1, [R4,#0xD]
6DA72:  IT NE
6DA74:  RSBNE.W         R2, R1, #0xD
6DA78:  CMP             R5, R2
6DA7A:  BNE             loc_6DA60
6DA7C:  LDR             R1, [R4,#8]
6DA7E:  CMP             R0, #0
6DA80:  IT NE
6DA82:  MOVNE           R1, R4; s2
6DA84:  CMP             R1, R8
6DA86:  BEQ             loc_6DA94
6DA88:  MOV             R0, R8; s1
6DA8A:  MOV             R2, R5; n
6DA8C:  BLX             memcmp
6DA90:  CMP             R0, #0
6DA92:  BNE             loc_6DA60
6DA94:  ADD.W           R0, R11, R10,LSL#5
6DA98:  CMP             R4, R0
6DA9A:  BEQ             loc_6DAA0
6DA9C:  LDRH            R2, [R4,#0x1E]
6DA9E:  B               loc_6DAB2
6DAA0:  LDR             R0, =(unk_116D20 - 0x6DAA6)
6DAA2:  ADD             R0, PC; unk_116D20
6DAA4:  BLX             j___emutls_get_address
6DAA8:  VMOV.I32        Q8, #0
6DAAC:  MOVS            R2, #0
6DAAE:  VST1.64         {D16-D17}, [R0]
6DAB2:  LDR             R0, =(aClient - 0x6DAC0); "client" ...
6DAB4:  SUBS            R2, #0xA
6DAB6:  LDR             R1, =(byte_1A4484 - 0x6DAC2)
6DAB8:  CLZ.W           R2, R2
6DABC:  ADD             R0, PC; "client"
6DABE:  ADD             R1, PC; byte_1A4484
6DAC0:  LSRS            R2, R2, #5
6DAC2:  STR             R1, [SP,#0x101D0+var_101AC]
6DAC4:  STRB            R2, [R1]
6DAC6:  MOVS            R1, #7; size_t
6DAC8:  MOV             R9, R0
6DACA:  BLX             __strlen_chk
6DACE:  LDR.W           R11, [SP,#0x101D0+s2]
6DAD2:  LDR.W           R10, [SP,#0x101D0+var_10160]
6DAD6:  CMP.W           R10, #0
6DADA:  MOV             R4, R11
6DADC:  BEQ             loc_6DB1C
6DADE:  MOV             R5, R0
6DAE0:  MOV.W           R6, R10,LSL#5
6DAE4:  MOV             R4, R11
6DAE6:  B               loc_6DAF0
6DAE8:  SUBS            R6, #0x20 ; ' '
6DAEA:  ADD.W           R4, R4, #0x20 ; ' '
6DAEE:  BEQ             loc_6DB28
6DAF0:  LDRH            R0, [R4,#0xE]
6DAF2:  LDR             R2, [R4]
6DAF4:  ANDS.W          R0, R0, #0x1000
6DAF8:  LDRB            R1, [R4,#0xD]
6DAFA:  IT NE
6DAFC:  RSBNE.W         R2, R1, #0xD
6DB00:  CMP             R5, R2
6DB02:  BNE             loc_6DAE8
6DB04:  LDR             R1, [R4,#8]
6DB06:  CMP             R0, #0
6DB08:  IT NE
6DB0A:  MOVNE           R1, R4; s2
6DB0C:  CMP             R1, R9
6DB0E:  BEQ             loc_6DB1C
6DB10:  MOV             R0, R9; s1
6DB12:  MOV             R2, R5; n
6DB14:  BLX             memcmp
6DB18:  CMP             R0, #0
6DB1A:  BNE             loc_6DAE8
6DB1C:  ADD.W           R0, R11, R10,LSL#5
6DB20:  CMP             R4, R0
6DB22:  BEQ             loc_6DB28
6DB24:  ADDS            R4, #0x10
6DB26:  B               loc_6DB3A
6DB28:  LDR             R0, =(unk_116D20 - 0x6DB2E)
6DB2A:  ADD             R0, PC; unk_116D20
6DB2C:  BLX             j___emutls_get_address
6DB30:  VMOV.I32        Q8, #0
6DB34:  MOV             R4, R0
6DB36:  VST1.64         {D16-D17}, [R4]
6DB3A:  LDR             R0, =(aSettings - 0x6DB40); "settings" ...
6DB3C:  ADD             R0, PC; "settings"
6DB3E:  MOVS            R1, #9; size_t
6DB40:  MOV             R8, R0
6DB42:  BLX             __strlen_chk
6DB46:  LDR.W           R11, [R4,#8]
6DB4A:  LDR.W           R10, [R4]
6DB4E:  CMP.W           R10, #0
6DB52:  MOV             R4, R11
6DB54:  BEQ             loc_6DB94
6DB56:  MOV             R5, R0
6DB58:  MOV.W           R6, R10,LSL#5
6DB5C:  MOV             R4, R11
6DB5E:  B               loc_6DB68
6DB60:  SUBS            R6, #0x20 ; ' '
6DB62:  ADD.W           R4, R4, #0x20 ; ' '
6DB66:  BEQ             loc_6DBA0
6DB68:  LDRH            R0, [R4,#0xE]
6DB6A:  LDR             R2, [R4]
6DB6C:  ANDS.W          R0, R0, #0x1000
6DB70:  LDRB            R1, [R4,#0xD]
6DB72:  IT NE
6DB74:  RSBNE.W         R2, R1, #0xD
6DB78:  CMP             R5, R2
6DB7A:  BNE             loc_6DB60
6DB7C:  LDR             R1, [R4,#8]
6DB7E:  CMP             R0, #0
6DB80:  IT NE
6DB82:  MOVNE           R1, R4; s2
6DB84:  CMP             R1, R8
6DB86:  BEQ             loc_6DB94
6DB88:  MOV             R0, R8; s1
6DB8A:  MOV             R2, R5; n
6DB8C:  BLX             memcmp
6DB90:  CMP             R0, #0
6DB92:  BNE             loc_6DB60
6DB94:  ADD.W           R0, R11, R10,LSL#5
6DB98:  CMP             R4, R0
6DB9A:  BEQ             loc_6DBA0
6DB9C:  ADDS            R4, #0x10
6DB9E:  B               loc_6DBB2
6DBA0:  LDR             R0, =(unk_116D20 - 0x6DBA6)
6DBA2:  ADD             R0, PC; unk_116D20
6DBA4:  BLX             j___emutls_get_address
6DBA8:  VMOV.I32        Q8, #0
6DBAC:  MOV             R4, R0
6DBAE:  VST1.64         {D16-D17}, [R4]
6DBB2:  LDR             R0, =(aDisplayFps - 0x6DBB8); "display_fps" ...
6DBB4:  ADD             R0, PC; "display_fps"
6DBB6:  MOVS            R1, #0xC; size_t
6DBB8:  MOV             R8, R0
6DBBA:  BLX             __strlen_chk
6DBBE:  LDR.W           R11, [R4,#8]
6DBC2:  LDR.W           R10, [R4]
6DBC6:  CMP.W           R10, #0
6DBCA:  MOV             R4, R11
6DBCC:  BEQ             loc_6DC0C
6DBCE:  MOV             R5, R0
6DBD0:  MOV.W           R6, R10,LSL#5
6DBD4:  MOV             R4, R11
6DBD6:  B               loc_6DBE0
6DBD8:  SUBS            R6, #0x20 ; ' '
6DBDA:  ADD.W           R4, R4, #0x20 ; ' '
6DBDE:  BEQ             loc_6DC18
6DBE0:  LDRH            R0, [R4,#0xE]
6DBE2:  LDR             R2, [R4]
6DBE4:  ANDS.W          R0, R0, #0x1000
6DBE8:  LDRB            R1, [R4,#0xD]
6DBEA:  IT NE
6DBEC:  RSBNE.W         R2, R1, #0xD
6DBF0:  CMP             R5, R2
6DBF2:  BNE             loc_6DBD8
6DBF4:  LDR             R1, [R4,#8]
6DBF6:  CMP             R0, #0
6DBF8:  IT NE
6DBFA:  MOVNE           R1, R4; s2
6DBFC:  CMP             R1, R8
6DBFE:  BEQ             loc_6DC0C
6DC00:  MOV             R0, R8; s1
6DC02:  MOV             R2, R5; n
6DC04:  BLX             memcmp
6DC08:  CMP             R0, #0
6DC0A:  BNE             loc_6DBD8
6DC0C:  ADD.W           R0, R11, R10,LSL#5
6DC10:  CMP             R4, R0
6DC12:  BEQ             loc_6DC18
6DC14:  LDRH            R2, [R4,#0x1E]
6DC16:  B               loc_6DC2A
6DC18:  LDR             R0, =(unk_116D20 - 0x6DC1E)
6DC1A:  ADD             R0, PC; unk_116D20
6DC1C:  BLX             j___emutls_get_address
6DC20:  VMOV.I32        Q8, #0
6DC24:  MOVS            R2, #0
6DC26:  VST1.64         {D16-D17}, [R0]
6DC2A:  LDR             R0, =(aClient - 0x6DC38); "client" ...
6DC2C:  SUBS            R2, #0xA
6DC2E:  LDR             R1, =(byte_1A4485 - 0x6DC3A)
6DC30:  CLZ.W           R2, R2
6DC34:  ADD             R0, PC; "client"
6DC36:  ADD             R1, PC; byte_1A4485
6DC38:  LSRS            R2, R2, #5
6DC3A:  STR             R1, [SP,#0x101D0+var_101B0]
6DC3C:  STRB            R2, [R1]
6DC3E:  MOVS            R1, #7; size_t
6DC40:  MOV             R9, R0
6DC42:  BLX             __strlen_chk
6DC46:  LDR.W           R11, [SP,#0x101D0+s2]
6DC4A:  LDR.W           R10, [SP,#0x101D0+var_10160]
6DC4E:  CMP.W           R10, #0
6DC52:  MOV             R4, R11
6DC54:  BEQ             loc_6DC94
6DC56:  MOV             R5, R0
6DC58:  MOV.W           R6, R10,LSL#5
6DC5C:  MOV             R4, R11
6DC5E:  B               loc_6DC68
6DC60:  SUBS            R6, #0x20 ; ' '
6DC62:  ADD.W           R4, R4, #0x20 ; ' '
6DC66:  BEQ             loc_6DCE4
6DC68:  LDRH            R0, [R4,#0xE]
6DC6A:  LDR             R2, [R4]
6DC6C:  ANDS.W          R0, R0, #0x1000
6DC70:  LDRB            R1, [R4,#0xD]
6DC72:  IT NE
6DC74:  RSBNE.W         R2, R1, #0xD
6DC78:  CMP             R5, R2
6DC7A:  BNE             loc_6DC60
6DC7C:  LDR             R1, [R4,#8]
6DC7E:  CMP             R0, #0
6DC80:  IT NE
6DC82:  MOVNE           R1, R4; s2
6DC84:  CMP             R1, R9
6DC86:  BEQ             loc_6DC94
6DC88:  MOV             R0, R9; s1
6DC8A:  MOV             R2, R5; n
6DC8C:  BLX             memcmp
6DC90:  CMP             R0, #0
6DC92:  BNE             loc_6DC60
6DC94:  ADD.W           R0, R11, R10,LSL#5
6DC98:  CMP             R4, R0
6DC9A:  BEQ             loc_6DCE4
6DC9C:  ADDS            R4, #0x10
6DC9E:  B               loc_6DCF6
6DCA0:  DCD unk_116D20 - 0x6D92E
6DCA4:  DCD aClient - 0x6D948
6DCA8:  DCD byte_1A4483 - 0x6D94A
6DCAC:  DCD unk_116D20 - 0x6D9B6
6DCB0:  DCD aSettings - 0x6D9C8
6DCB4:  DCD unk_116D20 - 0x6DA2E
6DCB8:  DCD aVoiceChat - 0x6DA40
6DCBC:  DCD unk_116D20 - 0x6DAA6
6DCC0:  DCD aClient - 0x6DAC0
6DCC4:  DCD byte_1A4484 - 0x6DAC2
6DCC8:  DCD unk_116D20 - 0x6DB2E
6DCCC:  DCD aSettings - 0x6DB40
6DCD0:  DCD unk_116D20 - 0x6DBA6
6DCD4:  DCD aDisplayFps - 0x6DBB8
6DCD8:  DCD unk_116D20 - 0x6DC1E
6DCDC:  DCD aClient - 0x6DC38
6DCE0:  DCD byte_1A4485 - 0x6DC3A
6DCE4:  LDR             R0, =(unk_116D20 - 0x6DCEA)
6DCE6:  ADD             R0, PC; unk_116D20
6DCE8:  BLX             j___emutls_get_address
6DCEC:  VMOV.I32        Q8, #0
6DCF0:  MOV             R4, R0
6DCF2:  VST1.64         {D16-D17}, [R4]
6DCF6:  LDR             R0, =(aSettings - 0x6DCFC); "settings" ...
6DCF8:  ADD             R0, PC; "settings"
6DCFA:  MOVS            R1, #9; size_t
6DCFC:  MOV             R8, R0
6DCFE:  BLX             __strlen_chk
6DD02:  LDR.W           R11, [R4,#8]
6DD06:  LDR.W           R10, [R4]
6DD0A:  CMP.W           R10, #0
6DD0E:  MOV             R4, R11
6DD10:  BEQ             loc_6DD50
6DD12:  MOV             R5, R0
6DD14:  MOV.W           R6, R10,LSL#5
6DD18:  MOV             R4, R11
6DD1A:  B               loc_6DD24
6DD1C:  SUBS            R6, #0x20 ; ' '
6DD1E:  ADD.W           R4, R4, #0x20 ; ' '
6DD22:  BEQ             loc_6DD5C
6DD24:  LDRH            R0, [R4,#0xE]
6DD26:  LDR             R2, [R4]
6DD28:  ANDS.W          R0, R0, #0x1000
6DD2C:  LDRB            R1, [R4,#0xD]
6DD2E:  IT NE
6DD30:  RSBNE.W         R2, R1, #0xD
6DD34:  CMP             R5, R2
6DD36:  BNE             loc_6DD1C
6DD38:  LDR             R1, [R4,#8]
6DD3A:  CMP             R0, #0
6DD3C:  IT NE
6DD3E:  MOVNE           R1, R4; s2
6DD40:  CMP             R1, R8
6DD42:  BEQ             loc_6DD50
6DD44:  MOV             R0, R8; s1
6DD46:  MOV             R2, R5; n
6DD48:  BLX             memcmp
6DD4C:  CMP             R0, #0
6DD4E:  BNE             loc_6DD1C
6DD50:  ADD.W           R0, R11, R10,LSL#5
6DD54:  CMP             R4, R0
6DD56:  BEQ             loc_6DD5C
6DD58:  ADDS            R4, #0x10
6DD5A:  B               loc_6DD6E
6DD5C:  LDR             R0, =(unk_116D20 - 0x6DD62)
6DD5E:  ADD             R0, PC; unk_116D20
6DD60:  BLX             j___emutls_get_address
6DD64:  VMOV.I32        Q8, #0
6DD68:  MOV             R4, R0
6DD6A:  VST1.64         {D16-D17}, [R4]
6DD6E:  LDR             R0, =(aFpsLimit - 0x6DD74); "fps_limit" ...
6DD70:  ADD             R0, PC; "fps_limit"
6DD72:  MOVS            R1, #0xA; size_t
6DD74:  MOV             R8, R0
6DD76:  BLX             __strlen_chk
6DD7A:  LDR.W           R11, [R4,#8]
6DD7E:  LDR.W           R10, [R4]
6DD82:  CMP.W           R10, #0
6DD86:  MOV             R4, R11
6DD88:  BEQ             loc_6DDC8
6DD8A:  MOV             R5, R0
6DD8C:  MOV.W           R6, R10,LSL#5
6DD90:  MOV             R4, R11
6DD92:  B               loc_6DD9C
6DD94:  SUBS            R6, #0x20 ; ' '
6DD96:  ADD.W           R4, R4, #0x20 ; ' '
6DD9A:  BEQ             loc_6DDD4
6DD9C:  LDRH            R0, [R4,#0xE]
6DD9E:  LDR             R2, [R4]
6DDA0:  ANDS.W          R0, R0, #0x1000
6DDA4:  LDRB            R1, [R4,#0xD]
6DDA6:  IT NE
6DDA8:  RSBNE.W         R2, R1, #0xD
6DDAC:  CMP             R5, R2
6DDAE:  BNE             loc_6DD94
6DDB0:  LDR             R1, [R4,#8]
6DDB2:  CMP             R0, #0
6DDB4:  IT NE
6DDB6:  MOVNE           R1, R4; s2
6DDB8:  CMP             R1, R8
6DDBA:  BEQ             loc_6DDC8
6DDBC:  MOV             R0, R8; s1
6DDBE:  MOV             R2, R5; n
6DDC0:  BLX             memcmp
6DDC4:  CMP             R0, #0
6DDC6:  BNE             loc_6DD94
6DDC8:  ADD.W           R0, R11, R10,LSL#5
6DDCC:  CMP             R4, R0
6DDCE:  BEQ             loc_6DDD4
6DDD0:  LDR             R2, [R4,#0x10]
6DDD2:  B               loc_6DDE6
6DDD4:  LDR             R0, =(unk_116D20 - 0x6DDDA)
6DDD6:  ADD             R0, PC; unk_116D20
6DDD8:  BLX             j___emutls_get_address
6DDDC:  VMOV.I32        Q8, #0
6DDE0:  MOVS            R2, #0
6DDE2:  VST1.64         {D16-D17}, [R0]
6DDE6:  LDR             R1, =(dword_116D04 - 0x6DDEE)
6DDE8:  LDR             R0, =(aClient - 0x6DDF0); "client" ...
6DDEA:  ADD             R1, PC; dword_116D04
6DDEC:  ADD             R0, PC; "client"
6DDEE:  MOV             R9, R1
6DDF0:  STR             R2, [R1]
6DDF2:  MOVS            R1, #7; size_t
6DDF4:  MOV             R8, R0
6DDF6:  BLX             __strlen_chk
6DDFA:  LDR.W           R11, [SP,#0x101D0+s2]
6DDFE:  LDR.W           R10, [SP,#0x101D0+var_10160]
6DE02:  CMP.W           R10, #0
6DE06:  MOV             R4, R11
6DE08:  BEQ             loc_6DE48
6DE0A:  MOV             R5, R0
6DE0C:  MOV.W           R6, R10,LSL#5
6DE10:  MOV             R4, R11
6DE12:  B               loc_6DE1C
6DE14:  SUBS            R6, #0x20 ; ' '
6DE16:  ADD.W           R4, R4, #0x20 ; ' '
6DE1A:  BEQ             loc_6DE54
6DE1C:  LDRH            R0, [R4,#0xE]
6DE1E:  LDR             R2, [R4]
6DE20:  ANDS.W          R0, R0, #0x1000
6DE24:  LDRB            R1, [R4,#0xD]
6DE26:  IT NE
6DE28:  RSBNE.W         R2, R1, #0xD
6DE2C:  CMP             R5, R2
6DE2E:  BNE             loc_6DE14
6DE30:  LDR             R1, [R4,#8]
6DE32:  CMP             R0, #0
6DE34:  IT NE
6DE36:  MOVNE           R1, R4; s2
6DE38:  CMP             R1, R8
6DE3A:  BEQ             loc_6DE48
6DE3C:  MOV             R0, R8; s1
6DE3E:  MOV             R2, R5; n
6DE40:  BLX             memcmp
6DE44:  CMP             R0, #0
6DE46:  BNE             loc_6DE14
6DE48:  ADD.W           R0, R11, R10,LSL#5
6DE4C:  CMP             R4, R0
6DE4E:  BEQ             loc_6DE54
6DE50:  ADDS            R4, #0x10
6DE52:  B               loc_6DE66
6DE54:  LDR             R0, =(unk_116D20 - 0x6DE5A)
6DE56:  ADD             R0, PC; unk_116D20
6DE58:  BLX             j___emutls_get_address
6DE5C:  VMOV.I32        Q8, #0
6DE60:  MOV             R4, R0
6DE62:  VST1.64         {D16-D17}, [R4]
6DE66:  LDR             R0, =(aSettings - 0x6DE6C); "settings" ...
6DE68:  ADD             R0, PC; "settings"
6DE6A:  MOVS            R1, #9; size_t
6DE6C:  MOV             R8, R0
6DE6E:  BLX             __strlen_chk
6DE72:  LDR.W           R11, [R4,#8]
6DE76:  LDR.W           R10, [R4]
6DE7A:  CMP.W           R10, #0
6DE7E:  MOV             R4, R11
6DE80:  BEQ             loc_6DEC0
6DE82:  MOV             R5, R0
6DE84:  MOV.W           R6, R10,LSL#5
6DE88:  MOV             R4, R11
6DE8A:  B               loc_6DE94
6DE8C:  SUBS            R6, #0x20 ; ' '
6DE8E:  ADD.W           R4, R4, #0x20 ; ' '
6DE92:  BEQ             loc_6DECC
6DE94:  LDRH            R0, [R4,#0xE]
6DE96:  LDR             R2, [R4]
6DE98:  ANDS.W          R0, R0, #0x1000
6DE9C:  LDRB            R1, [R4,#0xD]
6DE9E:  IT NE
6DEA0:  RSBNE.W         R2, R1, #0xD
6DEA4:  CMP             R5, R2
6DEA6:  BNE             loc_6DE8C
6DEA8:  LDR             R1, [R4,#8]
6DEAA:  CMP             R0, #0
6DEAC:  IT NE
6DEAE:  MOVNE           R1, R4; s2
6DEB0:  CMP             R1, R8
6DEB2:  BEQ             loc_6DEC0
6DEB4:  MOV             R0, R8; s1
6DEB6:  MOV             R2, R5; n
6DEB8:  BLX             memcmp
6DEBC:  CMP             R0, #0
6DEBE:  BNE             loc_6DE8C
6DEC0:  ADD.W           R0, R11, R10,LSL#5
6DEC4:  CMP             R4, R0
6DEC6:  BEQ             loc_6DECC
6DEC8:  ADDS            R4, #0x10
6DECA:  B               loc_6DEDE
6DECC:  LDR             R0, =(unk_116D20 - 0x6DED2)
6DECE:  ADD             R0, PC; unk_116D20
6DED0:  BLX             j___emutls_get_address
6DED4:  VMOV.I32        Q8, #0
6DED8:  MOV             R4, R0
6DEDA:  VST1.64         {D16-D17}, [R4]
6DEDE:  LDR             R0, =(aChatStrings - 0x6DEE4); "chat_strings" ...
6DEE0:  ADD             R0, PC; "chat_strings"
6DEE2:  MOVS            R1, #0xD; size_t
6DEE4:  MOV             R8, R0
6DEE6:  BLX             __strlen_chk
6DEEA:  LDR.W           R11, [R4,#8]
6DEEE:  LDR.W           R10, [R4]
6DEF2:  CMP.W           R10, #0
6DEF6:  MOV             R4, R11
6DEF8:  BEQ             loc_6DF38
6DEFA:  MOV             R5, R0
6DEFC:  MOV.W           R6, R10,LSL#5
6DF00:  MOV             R4, R11
6DF02:  B               loc_6DF0C
6DF04:  SUBS            R6, #0x20 ; ' '
6DF06:  ADD.W           R4, R4, #0x20 ; ' '
6DF0A:  BEQ             loc_6DF44
6DF0C:  LDRH            R0, [R4,#0xE]
6DF0E:  LDR             R2, [R4]
6DF10:  ANDS.W          R0, R0, #0x1000
6DF14:  LDRB            R1, [R4,#0xD]
6DF16:  IT NE
6DF18:  RSBNE.W         R2, R1, #0xD
6DF1C:  CMP             R5, R2
6DF1E:  BNE             loc_6DF04
6DF20:  LDR             R1, [R4,#8]
6DF22:  CMP             R0, #0
6DF24:  IT NE
6DF26:  MOVNE           R1, R4; s2
6DF28:  CMP             R1, R8
6DF2A:  BEQ             loc_6DF38
6DF2C:  MOV             R0, R8; s1
6DF2E:  MOV             R2, R5; n
6DF30:  BLX             memcmp
6DF34:  CMP             R0, #0
6DF36:  BNE             loc_6DF04
6DF38:  ADD.W           R0, R11, R10,LSL#5
6DF3C:  CMP             R4, R0
6DF3E:  BEQ             loc_6DF44
6DF40:  LDR             R2, [R4,#0x10]
6DF42:  B               loc_6DF56
6DF44:  LDR             R0, =(unk_116D20 - 0x6DF4A)
6DF46:  ADD             R0, PC; unk_116D20
6DF48:  BLX             j___emutls_get_address
6DF4C:  VMOV.I32        Q8, #0
6DF50:  MOVS            R2, #0
6DF52:  VST1.64         {D16-D17}, [R0]
6DF56:  LDR             R1, =(dword_116D08 - 0x6DF5E)
6DF58:  LDR             R0, =(aClient - 0x6DF62); "client" ...
6DF5A:  ADD             R1, PC; dword_116D08
6DF5C:  STR             R1, [SP,#0x101D0+var_101B4]
6DF5E:  ADD             R0, PC; "client"
6DF60:  STR             R2, [R1]
6DF62:  MOVS            R1, #7; size_t
6DF64:  MOV             R8, R0
6DF66:  BLX             __strlen_chk
6DF6A:  LDR.W           R11, [SP,#0x101D0+s2]
6DF6E:  LDR.W           R10, [SP,#0x101D0+var_10160]
6DF72:  CMP.W           R10, #0
6DF76:  MOV             R4, R11
6DF78:  BEQ             loc_6DFB8
6DF7A:  MOV             R5, R0
6DF7C:  MOV.W           R6, R10,LSL#5
6DF80:  MOV             R4, R11
6DF82:  B               loc_6DF8C
6DF84:  SUBS            R6, #0x20 ; ' '
6DF86:  ADD.W           R4, R4, #0x20 ; ' '
6DF8A:  BEQ             loc_6DFC4
6DF8C:  LDRH            R0, [R4,#0xE]
6DF8E:  LDR             R2, [R4]
6DF90:  ANDS.W          R0, R0, #0x1000
6DF94:  LDRB            R1, [R4,#0xD]
6DF96:  IT NE
6DF98:  RSBNE.W         R2, R1, #0xD
6DF9C:  CMP             R5, R2
6DF9E:  BNE             loc_6DF84
6DFA0:  LDR             R1, [R4,#8]
6DFA2:  CMP             R0, #0
6DFA4:  IT NE
6DFA6:  MOVNE           R1, R4; s2
6DFA8:  CMP             R1, R8
6DFAA:  BEQ             loc_6DFB8
6DFAC:  MOV             R0, R8; s1
6DFAE:  MOV             R2, R5; n
6DFB0:  BLX             memcmp
6DFB4:  CMP             R0, #0
6DFB6:  BNE             loc_6DF84
6DFB8:  ADD.W           R0, R11, R10,LSL#5
6DFBC:  CMP             R4, R0
6DFBE:  BEQ             loc_6DFC4
6DFC0:  ADDS            R4, #0x10
6DFC2:  B               loc_6DFD6
6DFC4:  LDR             R0, =(unk_116D20 - 0x6DFCA)
6DFC6:  ADD             R0, PC; unk_116D20
6DFC8:  BLX             j___emutls_get_address
6DFCC:  VMOV.I32        Q8, #0
6DFD0:  MOV             R4, R0
6DFD2:  VST1.64         {D16-D17}, [R4]
6DFD6:  LDR             R0, =(aSettings - 0x6DFDC); "settings" ...
6DFD8:  ADD             R0, PC; "settings"
6DFDA:  MOVS            R1, #9; size_t
6DFDC:  MOV             R8, R0
6DFDE:  BLX             __strlen_chk
6DFE2:  LDR.W           R11, [R4,#8]
6DFE6:  LDR.W           R10, [R4]
6DFEA:  CMP.W           R10, #0
6DFEE:  MOV             R4, R11
6DFF0:  BEQ             loc_6E030
6DFF2:  MOV             R5, R0
6DFF4:  MOV.W           R6, R10,LSL#5
6DFF8:  MOV             R4, R11
6DFFA:  B               loc_6E004
6DFFC:  SUBS            R6, #0x20 ; ' '
6DFFE:  ADD.W           R4, R4, #0x20 ; ' '
6E002:  BEQ             loc_6E07C
6E004:  LDRH            R0, [R4,#0xE]
6E006:  LDR             R2, [R4]
6E008:  ANDS.W          R0, R0, #0x1000
6E00C:  LDRB            R1, [R4,#0xD]
6E00E:  IT NE
6E010:  RSBNE.W         R2, R1, #0xD
6E014:  CMP             R5, R2
6E016:  BNE             loc_6DFFC
6E018:  LDR             R1, [R4,#8]
6E01A:  CMP             R0, #0
6E01C:  IT NE
6E01E:  MOVNE           R1, R4; s2
6E020:  CMP             R1, R8
6E022:  BEQ             loc_6E030
6E024:  MOV             R0, R8; s1
6E026:  MOV             R2, R5; n
6E028:  BLX             memcmp
6E02C:  CMP             R0, #0
6E02E:  BNE             loc_6DFFC
6E030:  ADD.W           R0, R11, R10,LSL#5
6E034:  CMP             R4, R0
6E036:  BEQ             loc_6E07C
6E038:  ADDS            R4, #0x10
6E03A:  B               loc_6E08E
6E03C:  DCD unk_116D20 - 0x6DCEA
6E040:  DCD aSettings - 0x6DCFC
6E044:  DCD unk_116D20 - 0x6DD62
6E048:  DCD aFpsLimit - 0x6DD74
6E04C:  DCD unk_116D20 - 0x6DDDA
6E050:  DCD dword_116D04 - 0x6DDEE
6E054:  DCD aClient - 0x6DDF0
6E058:  DCD unk_116D20 - 0x6DE5A
6E05C:  DCD aSettings - 0x6DE6C
6E060:  DCD unk_116D20 - 0x6DED2
6E064:  DCD aChatStrings - 0x6DEE4
6E068:  DCD unk_116D20 - 0x6DF4A
6E06C:  DCD dword_116D08 - 0x6DF5E
6E070:  DCD aClient - 0x6DF62
6E074:  DCD unk_116D20 - 0x6DFCA
6E078:  DCD aSettings - 0x6DFDC
6E07C:  LDR             R0, =(unk_116D20 - 0x6E082)
6E07E:  ADD             R0, PC; unk_116D20
6E080:  BLX             j___emutls_get_address
6E084:  VMOV.I32        Q8, #0
6E088:  MOV             R4, R0
6E08A:  VST1.64         {D16-D17}, [R4]
6E08E:  LDR             R0, =(aAspectRatio - 0x6E094); "aspect_ratio" ...
6E090:  ADD             R0, PC; "aspect_ratio"
6E092:  MOVS            R1, #0xD; size_t
6E094:  MOV             R8, R0
6E096:  BLX             __strlen_chk
6E09A:  LDR.W           R11, [R4,#8]
6E09E:  LDR.W           R10, [R4]
6E0A2:  CMP.W           R10, #0
6E0A6:  MOV             R4, R11
6E0A8:  BEQ             loc_6E0E8
6E0AA:  MOV             R5, R0
6E0AC:  MOV.W           R6, R10,LSL#5
6E0B0:  MOV             R4, R11
6E0B2:  B               loc_6E0BC
6E0B4:  SUBS            R6, #0x20 ; ' '
6E0B6:  ADD.W           R4, R4, #0x20 ; ' '
6E0BA:  BEQ             loc_6E0F4
6E0BC:  LDRH            R0, [R4,#0xE]
6E0BE:  LDR             R2, [R4]
6E0C0:  ANDS.W          R0, R0, #0x1000
6E0C4:  LDRB            R1, [R4,#0xD]
6E0C6:  IT NE
6E0C8:  RSBNE.W         R2, R1, #0xD
6E0CC:  CMP             R5, R2
6E0CE:  BNE             loc_6E0B4
6E0D0:  LDR             R1, [R4,#8]
6E0D2:  CMP             R0, #0
6E0D4:  IT NE
6E0D6:  MOVNE           R1, R4; s2
6E0D8:  CMP             R1, R8
6E0DA:  BEQ             loc_6E0E8
6E0DC:  MOV             R0, R8; s1
6E0DE:  MOV             R2, R5; n
6E0E0:  BLX             memcmp
6E0E4:  CMP             R0, #0
6E0E6:  BNE             loc_6E0B4
6E0E8:  ADD.W           R0, R11, R10,LSL#5
6E0EC:  CMP             R4, R0
6E0EE:  BEQ             loc_6E0F4
6E0F0:  LDR             R2, [R4,#0x10]
6E0F2:  B               loc_6E106
6E0F4:  LDR             R0, =(unk_116D20 - 0x6E0FA)
6E0F6:  ADD             R0, PC; unk_116D20
6E0F8:  BLX             j___emutls_get_address
6E0FC:  VMOV.I32        Q8, #0
6E100:  MOVS            R2, #0
6E102:  VST1.64         {D16-D17}, [R0]
6E106:  LDR             R1, =(dword_1A4488 - 0x6E10E)
6E108:  LDR             R0, =(aClient - 0x6E112); "client" ...
6E10A:  ADD             R1, PC; dword_1A4488
6E10C:  STR             R1, [SP,#0x101D0+var_101B8]
6E10E:  ADD             R0, PC; "client"
6E110:  STR             R2, [R1]
6E112:  MOVS            R1, #7; size_t
6E114:  MOV             R8, R0
6E116:  BLX             __strlen_chk
6E11A:  LDR.W           R11, [SP,#0x101D0+s2]
6E11E:  LDR.W           R10, [SP,#0x101D0+var_10160]
6E122:  CMP.W           R10, #0
6E126:  MOV             R4, R11
6E128:  BEQ             loc_6E168
6E12A:  MOV             R5, R0
6E12C:  MOV.W           R6, R10,LSL#5
6E130:  MOV             R4, R11
6E132:  B               loc_6E13C
6E134:  SUBS            R6, #0x20 ; ' '
6E136:  ADD.W           R4, R4, #0x20 ; ' '
6E13A:  BEQ             loc_6E174
6E13C:  LDRH            R0, [R4,#0xE]
6E13E:  LDR             R2, [R4]
6E140:  ANDS.W          R0, R0, #0x1000
6E144:  LDRB            R1, [R4,#0xD]
6E146:  IT NE
6E148:  RSBNE.W         R2, R1, #0xD
6E14C:  CMP             R5, R2
6E14E:  BNE             loc_6E134
6E150:  LDR             R1, [R4,#8]
6E152:  CMP             R0, #0
6E154:  IT NE
6E156:  MOVNE           R1, R4; s2
6E158:  CMP             R1, R8
6E15A:  BEQ             loc_6E168
6E15C:  MOV             R0, R8; s1
6E15E:  MOV             R2, R5; n
6E160:  BLX             memcmp
6E164:  CMP             R0, #0
6E166:  BNE             loc_6E134
6E168:  ADD.W           R0, R11, R10,LSL#5
6E16C:  CMP             R4, R0
6E16E:  BEQ             loc_6E174
6E170:  ADDS            R4, #0x10
6E172:  B               loc_6E186
6E174:  LDR             R0, =(unk_116D20 - 0x6E17A)
6E176:  ADD             R0, PC; unk_116D20
6E178:  BLX             j___emutls_get_address
6E17C:  VMOV.I32        Q8, #0
6E180:  MOV             R4, R0
6E182:  VST1.64         {D16-D17}, [R4]
6E186:  LDR             R0, =(aSettings - 0x6E18C); "settings" ...
6E188:  ADD             R0, PC; "settings"
6E18A:  MOVS            R1, #9; size_t
6E18C:  MOV             R8, R0
6E18E:  BLX             __strlen_chk
6E192:  LDR.W           R11, [R4,#8]
6E196:  LDR.W           R10, [R4]
6E19A:  CMP.W           R10, #0
6E19E:  MOV             R4, R11
6E1A0:  BEQ             loc_6E1E0
6E1A2:  MOV             R5, R0
6E1A4:  MOV.W           R6, R10,LSL#5
6E1A8:  MOV             R4, R11
6E1AA:  B               loc_6E1B4
6E1AC:  SUBS            R6, #0x20 ; ' '
6E1AE:  ADD.W           R4, R4, #0x20 ; ' '
6E1B2:  BEQ             loc_6E1EC
6E1B4:  LDRH            R0, [R4,#0xE]
6E1B6:  LDR             R2, [R4]
6E1B8:  ANDS.W          R0, R0, #0x1000
6E1BC:  LDRB            R1, [R4,#0xD]
6E1BE:  IT NE
6E1C0:  RSBNE.W         R2, R1, #0xD
6E1C4:  CMP             R5, R2
6E1C6:  BNE             loc_6E1AC
6E1C8:  LDR             R1, [R4,#8]
6E1CA:  CMP             R0, #0
6E1CC:  IT NE
6E1CE:  MOVNE           R1, R4; s2
6E1D0:  CMP             R1, R8
6E1D2:  BEQ             loc_6E1E0
6E1D4:  MOV             R0, R8; s1
6E1D6:  MOV             R2, R5; n
6E1D8:  BLX             memcmp
6E1DC:  CMP             R0, #0
6E1DE:  BNE             loc_6E1AC
6E1E0:  ADD.W           R0, R11, R10,LSL#5
6E1E4:  CMP             R4, R0
6E1E6:  BEQ             loc_6E1EC
6E1E8:  ADDS            R4, #0x10
6E1EA:  B               loc_6E1FE
6E1EC:  LDR             R0, =(unk_116D20 - 0x6E1F2)
6E1EE:  ADD             R0, PC; unk_116D20
6E1F0:  BLX             j___emutls_get_address
6E1F4:  VMOV.I32        Q8, #0
6E1F8:  MOV             R4, R0
6E1FA:  VST1.64         {D16-D17}, [R4]
6E1FE:  LDR             R0, =(aFontSize - 0x6E204); "font_size" ...
6E200:  ADD             R0, PC; "font_size"
6E202:  MOVS            R1, #0xA; size_t
6E204:  MOV             R8, R0
6E206:  BLX             __strlen_chk
6E20A:  LDR.W           R11, [R4,#8]
6E20E:  LDR.W           R10, [R4]
6E212:  CMP.W           R10, #0
6E216:  MOV             R4, R11
6E218:  BEQ             loc_6E258
6E21A:  MOV             R5, R0
6E21C:  MOV.W           R6, R10,LSL#5
6E220:  MOV             R4, R11
6E222:  B               loc_6E22C
6E224:  SUBS            R6, #0x20 ; ' '
6E226:  ADD.W           R4, R4, #0x20 ; ' '
6E22A:  BEQ             loc_6E27C
6E22C:  LDRH            R0, [R4,#0xE]
6E22E:  LDR             R2, [R4]
6E230:  ANDS.W          R0, R0, #0x1000
6E234:  LDRB            R1, [R4,#0xD]
6E236:  IT NE
6E238:  RSBNE.W         R2, R1, #0xD
6E23C:  CMP             R5, R2
6E23E:  BNE             loc_6E224
6E240:  LDR             R1, [R4,#8]
6E242:  CMP             R0, #0
6E244:  IT NE
6E246:  MOVNE           R1, R4; s2
6E248:  CMP             R1, R8
6E24A:  BEQ             loc_6E258
6E24C:  MOV             R0, R8; s1
6E24E:  MOV             R2, R5; n
6E250:  BLX             memcmp
6E254:  CMP             R0, #0
6E256:  BNE             loc_6E224
6E258:  ADD.W           R0, R11, R10,LSL#5
6E25C:  CMP             R4, R0
6E25E:  BEQ             loc_6E27C
6E260:  LDRH            R2, [R4,#0x1E]
6E262:  LSLS            R0, R2, #0x16
6E264:  BMI             loc_6E29E
6E266:  LSLS            R0, R2, #0x1A
6E268:  BMI             loc_6E2A4
6E26A:  LSLS            R0, R2, #0x19
6E26C:  BMI             loc_6E2AE
6E26E:  LDRD.W          R0, R1, [R4,#0x10]
6E272:  LSLS            R2, R2, #0x18
6E274:  BPL             loc_6E294
6E276:  BLX             sub_108B48
6E27A:  B               loc_6E298
6E27C:  LDR             R0, =(unk_116D20 - 0x6E282)
6E27E:  ADD             R0, PC; unk_116D20
6E280:  BLX             j___emutls_get_address
6E284:  VMOV.I32        Q8, #0
6E288:  MOVS            R1, #4
6E28A:  MOV             R2, R0
6E28C:  VST1.64         {D16-D17}, [R2],R1
6E290:  LDR             R0, [R0]
6E292:  LDR             R1, [R2]
6E294:  BLX             sub_108CB0
6E298:  VMOV            D16, R0, R1
6E29C:  B               loc_6E2B6
6E29E:  VLDR            D16, [R4,#0x10]
6E2A2:  B               loc_6E2B6
6E2A4:  VLDR            S0, [R4,#0x10]
6E2A8:  VCVT.F64.S32    D16, S0
6E2AC:  B               loc_6E2B6
6E2AE:  VLDR            S0, [R4,#0x10]
6E2B2:  VCVT.F64.U32    D16, S0
6E2B6:  VCVT.F32.F64    S0, D16
6E2BA:  LDR             R1, =(unk_116D0C - 0x6E2C2)
6E2BC:  LDR             R0, =(aClient - 0x6E2C6); "client" ...
6E2BE:  ADD             R1, PC; unk_116D0C
6E2C0:  STR             R1, [SP,#0x101D0+var_101BC]
6E2C2:  ADD             R0, PC; "client"
6E2C4:  VSTR            S0, [R1]
6E2C8:  MOVS            R1, #7; size_t
6E2CA:  MOV             R8, R0
6E2CC:  BLX             __strlen_chk
6E2D0:  LDR.W           R11, [SP,#0x101D0+s2]
6E2D4:  LDR.W           R10, [SP,#0x101D0+var_10160]
6E2D8:  CMP.W           R10, #0
6E2DC:  MOV             R4, R11
6E2DE:  BEQ             loc_6E31E
6E2E0:  MOV             R5, R0
6E2E2:  MOV.W           R6, R10,LSL#5
6E2E6:  MOV             R4, R11
6E2E8:  B               loc_6E2F2
6E2EA:  SUBS            R6, #0x20 ; ' '
6E2EC:  ADD.W           R4, R4, #0x20 ; ' '
6E2F0:  BEQ             loc_6E32A
6E2F2:  LDRH            R0, [R4,#0xE]
6E2F4:  LDR             R2, [R4]
6E2F6:  ANDS.W          R0, R0, #0x1000
6E2FA:  LDRB            R1, [R4,#0xD]
6E2FC:  IT NE
6E2FE:  RSBNE.W         R2, R1, #0xD
6E302:  CMP             R5, R2
6E304:  BNE             loc_6E2EA
6E306:  LDR             R1, [R4,#8]
6E308:  CMP             R0, #0
6E30A:  IT NE
6E30C:  MOVNE           R1, R4; s2
6E30E:  CMP             R1, R8
6E310:  BEQ             loc_6E31E
6E312:  MOV             R0, R8; s1
6E314:  MOV             R2, R5; n
6E316:  BLX             memcmp
6E31A:  CMP             R0, #0
6E31C:  BNE             loc_6E2EA
6E31E:  ADD.W           R0, R11, R10,LSL#5
6E322:  CMP             R4, R0
6E324:  BEQ             loc_6E32A
6E326:  ADDS            R4, #0x10
6E328:  B               loc_6E33C
6E32A:  LDR             R0, =(unk_116D20 - 0x6E330)
6E32C:  ADD             R0, PC; unk_116D20
6E32E:  BLX             j___emutls_get_address
6E332:  VMOV.I32        Q8, #0
6E336:  MOV             R4, R0
6E338:  VST1.64         {D16-D17}, [R4]
6E33C:  LDR             R0, =(aSettings - 0x6E342); "settings" ...
6E33E:  ADD             R0, PC; "settings"
6E340:  MOVS            R1, #9; size_t
6E342:  MOV             R8, R0
6E344:  BLX             __strlen_chk
6E348:  LDR.W           R11, [R4,#8]
6E34C:  LDR.W           R10, [R4]
6E350:  CMP.W           R10, #0
6E354:  MOV             R4, R11
6E356:  BEQ             loc_6E396
6E358:  MOV             R5, R0
6E35A:  MOV.W           R6, R10,LSL#5
6E35E:  MOV             R4, R11
6E360:  B               loc_6E36A
6E362:  SUBS            R6, #0x20 ; ' '
6E364:  ADD.W           R4, R4, #0x20 ; ' '
6E368:  BEQ             loc_6E3A2
6E36A:  LDRH            R0, [R4,#0xE]
6E36C:  LDR             R2, [R4]
6E36E:  ANDS.W          R0, R0, #0x1000
6E372:  LDRB            R1, [R4,#0xD]
6E374:  IT NE
6E376:  RSBNE.W         R2, R1, #0xD
6E37A:  CMP             R5, R2
6E37C:  BNE             loc_6E362
6E37E:  LDR             R1, [R4,#8]
6E380:  CMP             R0, #0
6E382:  IT NE
6E384:  MOVNE           R1, R4; s2
6E386:  CMP             R1, R8
6E388:  BEQ             loc_6E396
6E38A:  MOV             R0, R8; s1
6E38C:  MOV             R2, R5; n
6E38E:  BLX             memcmp
6E392:  CMP             R0, #0
6E394:  BNE             loc_6E362
6E396:  ADD.W           R0, R11, R10,LSL#5
6E39A:  CMP             R4, R0
6E39C:  BEQ             loc_6E3A2
6E39E:  ADDS            R4, #0x10
6E3A0:  B               loc_6E3B4
6E3A2:  LDR             R0, =(unk_116D20 - 0x6E3A8)
6E3A4:  ADD             R0, PC; unk_116D20
6E3A6:  BLX             j___emutls_get_address
6E3AA:  VMOV.I32        Q8, #0
6E3AE:  MOV             R4, R0
6E3B0:  VST1.64         {D16-D17}, [R4]
6E3B4:  LDR             R0, =(aChatPosx - 0x6E3BA); "chat_posx" ...
6E3B6:  ADD             R0, PC; "chat_posx"
6E3B8:  MOVS            R1, #0xA; size_t
6E3BA:  MOV             R8, R0
6E3BC:  BLX             __strlen_chk
6E3C0:  LDR.W           R11, [R4,#8]
6E3C4:  LDR.W           R10, [R4]
6E3C8:  CMP.W           R10, #0
6E3CC:  MOV             R4, R11
6E3CE:  BEQ             loc_6E450
6E3D0:  MOV             R5, R0
6E3D2:  MOV.W           R6, R10,LSL#5
6E3D6:  MOV             R4, R11
6E3D8:  B               loc_6E424
6E3DA:  ALIGN 4
6E3DC:  DCD unk_116D20 - 0x6E082
6E3E0:  DCD aAspectRatio - 0x6E094
6E3E4:  DCD unk_116D20 - 0x6E0FA
6E3E8:  DCD dword_1A4488 - 0x6E10E
6E3EC:  DCD aClient - 0x6E112
6E3F0:  DCD unk_116D20 - 0x6E17A
6E3F4:  DCD aSettings - 0x6E18C
6E3F8:  DCD unk_116D20 - 0x6E1F2
6E3FC:  DCD aFontSize - 0x6E204
6E400:  DCD unk_116D20 - 0x6E282
6E404:  DCD unk_116D0C - 0x6E2C2
6E408:  DCD aClient - 0x6E2C6
6E40C:  DCD unk_116D20 - 0x6E330
6E410:  DCD aSettings - 0x6E342
6E414:  DCD unk_116D20 - 0x6E3A8
6E418:  DCD aChatPosx - 0x6E3BA
6E41C:  SUBS            R6, #0x20 ; ' '
6E41E:  ADD.W           R4, R4, #0x20 ; ' '
6E422:  BEQ             loc_6E45C
6E424:  LDRH            R0, [R4,#0xE]
6E426:  LDR             R2, [R4]
6E428:  ANDS.W          R0, R0, #0x1000
6E42C:  LDRB            R1, [R4,#0xD]
6E42E:  IT NE
6E430:  RSBNE.W         R2, R1, #0xD
6E434:  CMP             R5, R2
6E436:  BNE             loc_6E41C
6E438:  LDR             R1, [R4,#8]
6E43A:  CMP             R0, #0
6E43C:  IT NE
6E43E:  MOVNE           R1, R4; s2
6E440:  CMP             R1, R8
6E442:  BEQ             loc_6E450
6E444:  MOV             R0, R8; s1
6E446:  MOV             R2, R5; n
6E448:  BLX             memcmp
6E44C:  CMP             R0, #0
6E44E:  BNE             loc_6E41C
6E450:  ADD.W           R0, R11, R10,LSL#5
6E454:  CMP             R4, R0
6E456:  BEQ             loc_6E45C
6E458:  LDR             R0, [R4,#0x10]
6E45A:  B               loc_6E46E
6E45C:  LDR             R0, =(unk_116D20 - 0x6E462)
6E45E:  ADD             R0, PC; unk_116D20
6E460:  BLX             j___emutls_get_address
6E464:  VMOV.I32        Q8, #0
6E468:  VST1.64         {D16-D17}, [R0]
6E46C:  MOVS            R0, #0
6E46E:  VMOV            S0, R0
6E472:  LDR             R1, =(dword_116D10 - 0x6E47E)
6E474:  LDR             R0, =(aClient - 0x6E480); "client" ...
6E476:  VCVT.F32.S32    S0, S0
6E47A:  ADD             R1, PC; dword_116D10
6E47C:  ADD             R0, PC; "client"
6E47E:  STR             R1, [SP,#0x101D0+var_10184]
6E480:  VSTR            S0, [R1]
6E484:  MOVS            R1, #7; size_t
6E486:  MOV             R8, R0
6E488:  BLX             __strlen_chk
6E48C:  LDR.W           R11, [SP,#0x101D0+s2]
6E490:  LDR.W           R10, [SP,#0x101D0+var_10160]
6E494:  CMP.W           R10, #0
6E498:  MOV             R4, R11
6E49A:  BEQ             loc_6E4DA
6E49C:  MOV             R5, R0
6E49E:  MOV.W           R6, R10,LSL#5
6E4A2:  MOV             R4, R11
6E4A4:  B               loc_6E4AE
6E4A6:  SUBS            R6, #0x20 ; ' '
6E4A8:  ADD.W           R4, R4, #0x20 ; ' '
6E4AC:  BEQ             loc_6E4E6
6E4AE:  LDRH            R0, [R4,#0xE]
6E4B0:  LDR             R2, [R4]
6E4B2:  ANDS.W          R0, R0, #0x1000
6E4B6:  LDRB            R1, [R4,#0xD]
6E4B8:  IT NE
6E4BA:  RSBNE.W         R2, R1, #0xD
6E4BE:  CMP             R5, R2
6E4C0:  BNE             loc_6E4A6
6E4C2:  LDR             R1, [R4,#8]
6E4C4:  CMP             R0, #0
6E4C6:  IT NE
6E4C8:  MOVNE           R1, R4; s2
6E4CA:  CMP             R1, R8
6E4CC:  BEQ             loc_6E4DA
6E4CE:  MOV             R0, R8; s1
6E4D0:  MOV             R2, R5; n
6E4D2:  BLX             memcmp
6E4D6:  CMP             R0, #0
6E4D8:  BNE             loc_6E4A6
6E4DA:  ADD.W           R0, R11, R10,LSL#5
6E4DE:  CMP             R4, R0
6E4E0:  BEQ             loc_6E4E6
6E4E2:  ADDS            R4, #0x10
6E4E4:  B               loc_6E4F8
6E4E6:  LDR             R0, =(unk_116D20 - 0x6E4EC)
6E4E8:  ADD             R0, PC; unk_116D20
6E4EA:  BLX             j___emutls_get_address
6E4EE:  VMOV.I32        Q8, #0
6E4F2:  MOV             R4, R0
6E4F4:  VST1.64         {D16-D17}, [R4]
6E4F8:  LDR             R0, =(aSettings - 0x6E4FE); "settings" ...
6E4FA:  ADD             R0, PC; "settings"
6E4FC:  MOVS            R1, #9; size_t
6E4FE:  MOV             R8, R0
6E500:  BLX             __strlen_chk
6E504:  LDR.W           R11, [R4,#8]
6E508:  LDR.W           R10, [R4]
6E50C:  CMP.W           R10, #0
6E510:  MOV             R4, R11
6E512:  BEQ             loc_6E552
6E514:  MOV             R5, R0
6E516:  MOV.W           R6, R10,LSL#5
6E51A:  MOV             R4, R11
6E51C:  B               loc_6E526
6E51E:  SUBS            R6, #0x20 ; ' '
6E520:  ADD.W           R4, R4, #0x20 ; ' '
6E524:  BEQ             loc_6E55E
6E526:  LDRH            R0, [R4,#0xE]
6E528:  LDR             R2, [R4]
6E52A:  ANDS.W          R0, R0, #0x1000
6E52E:  LDRB            R1, [R4,#0xD]
6E530:  IT NE
6E532:  RSBNE.W         R2, R1, #0xD
6E536:  CMP             R5, R2
6E538:  BNE             loc_6E51E
6E53A:  LDR             R1, [R4,#8]
6E53C:  CMP             R0, #0
6E53E:  IT NE
6E540:  MOVNE           R1, R4; s2
6E542:  CMP             R1, R8
6E544:  BEQ             loc_6E552
6E546:  MOV             R0, R8; s1
6E548:  MOV             R2, R5; n
6E54A:  BLX             memcmp
6E54E:  CMP             R0, #0
6E550:  BNE             loc_6E51E
6E552:  ADD.W           R0, R11, R10,LSL#5
6E556:  CMP             R4, R0
6E558:  BEQ             loc_6E55E
6E55A:  ADDS            R4, #0x10
6E55C:  B               loc_6E570
6E55E:  LDR             R0, =(unk_116D20 - 0x6E564)
6E560:  ADD             R0, PC; unk_116D20
6E562:  BLX             j___emutls_get_address
6E566:  VMOV.I32        Q8, #0
6E56A:  MOV             R4, R0
6E56C:  VST1.64         {D16-D17}, [R4]
6E570:  LDR             R0, =(aChatPosy - 0x6E576); "chat_posy" ...
6E572:  ADD             R0, PC; "chat_posy"
6E574:  MOVS            R1, #0xA; size_t
6E576:  MOV             R8, R0
6E578:  BLX             __strlen_chk
6E57C:  LDR.W           R11, [R4,#8]
6E580:  LDR.W           R10, [R4]
6E584:  CMP.W           R10, #0
6E588:  MOV             R4, R11
6E58A:  BEQ             loc_6E5CA
6E58C:  MOV             R5, R0
6E58E:  MOV.W           R6, R10,LSL#5
6E592:  MOV             R4, R11
6E594:  B               loc_6E59E
6E596:  SUBS            R6, #0x20 ; ' '
6E598:  ADD.W           R4, R4, #0x20 ; ' '
6E59C:  BEQ             loc_6E5D6
6E59E:  LDRH            R0, [R4,#0xE]
6E5A0:  LDR             R2, [R4]
6E5A2:  ANDS.W          R0, R0, #0x1000
6E5A6:  LDRB            R1, [R4,#0xD]
6E5A8:  IT NE
6E5AA:  RSBNE.W         R2, R1, #0xD
6E5AE:  CMP             R5, R2
6E5B0:  BNE             loc_6E596
6E5B2:  LDR             R1, [R4,#8]
6E5B4:  CMP             R0, #0
6E5B6:  IT NE
6E5B8:  MOVNE           R1, R4; s2
6E5BA:  CMP             R1, R8
6E5BC:  BEQ             loc_6E5CA
6E5BE:  MOV             R0, R8; s1
6E5C0:  MOV             R2, R5; n
6E5C2:  BLX             memcmp
6E5C6:  CMP             R0, #0
6E5C8:  BNE             loc_6E596
6E5CA:  ADD.W           R0, R11, R10,LSL#5
6E5CE:  CMP             R4, R0
6E5D0:  BEQ             loc_6E5D6
6E5D2:  LDR             R0, [R4,#0x10]
6E5D4:  B               loc_6E5E8
6E5D6:  LDR             R0, =(unk_116D20 - 0x6E5DC)
6E5D8:  ADD             R0, PC; unk_116D20
6E5DA:  BLX             j___emutls_get_address
6E5DE:  VMOV.I32        Q8, #0
6E5E2:  VST1.64         {D16-D17}, [R0]
6E5E6:  MOVS            R0, #0
6E5E8:  VMOV            S0, R0
6E5EC:  LDR             R1, =(aClient - 0x6E5F8); "client" ...
6E5EE:  LDR             R0, [SP,#0x101D0+var_10184]
6E5F0:  VCVT.F32.S32    S0, S0
6E5F4:  ADD             R1, PC; "client"
6E5F6:  VSTR            S0, [R0,#4]
6E5FA:  MOV             R8, R1
6E5FC:  MOV             R0, R1; char *
6E5FE:  MOVS            R1, #7; size_t
6E600:  BLX             __strlen_chk
6E604:  LDR.W           R11, [SP,#0x101D0+s2]
6E608:  LDR.W           R10, [SP,#0x101D0+var_10160]
6E60C:  CMP.W           R10, #0
6E610:  MOV             R4, R11
6E612:  BEQ             loc_6E652
6E614:  MOV             R5, R0
6E616:  MOV.W           R6, R10,LSL#5
6E61A:  MOV             R4, R11
6E61C:  B               loc_6E626
6E61E:  SUBS            R6, #0x20 ; ' '
6E620:  ADD.W           R4, R4, #0x20 ; ' '
6E624:  BEQ             loc_6E65E
6E626:  LDRH            R0, [R4,#0xE]
6E628:  LDR             R2, [R4]
6E62A:  ANDS.W          R0, R0, #0x1000
6E62E:  LDRB            R1, [R4,#0xD]
6E630:  IT NE
6E632:  RSBNE.W         R2, R1, #0xD
6E636:  CMP             R5, R2
6E638:  BNE             loc_6E61E
6E63A:  LDR             R1, [R4,#8]
6E63C:  CMP             R0, #0
6E63E:  IT NE
6E640:  MOVNE           R1, R4; s2
6E642:  CMP             R1, R8
6E644:  BEQ             loc_6E652
6E646:  MOV             R0, R8; s1
6E648:  MOV             R2, R5; n
6E64A:  BLX             memcmp
6E64E:  CMP             R0, #0
6E650:  BNE             loc_6E61E
6E652:  ADD.W           R0, R11, R10,LSL#5
6E656:  CMP             R4, R0
6E658:  BEQ             loc_6E65E
6E65A:  ADDS            R4, #0x10
6E65C:  B               loc_6E670
6E65E:  LDR             R0, =(unk_116D20 - 0x6E664)
6E660:  ADD             R0, PC; unk_116D20
6E662:  BLX             j___emutls_get_address
6E666:  VMOV.I32        Q8, #0
6E66A:  MOV             R4, R0
6E66C:  VST1.64         {D16-D17}, [R4]
6E670:  LDR             R0, =(aSettings - 0x6E676); "settings" ...
6E672:  ADD             R0, PC; "settings"
6E674:  MOVS            R1, #9; size_t
6E676:  MOV             R8, R0
6E678:  BLX             __strlen_chk
6E67C:  LDR.W           R11, [R4,#8]
6E680:  LDR.W           R10, [R4]
6E684:  CMP.W           R10, #0
6E688:  MOV             R4, R11
6E68A:  BEQ             loc_6E6CA
6E68C:  MOV             R5, R0
6E68E:  MOV.W           R6, R10,LSL#5
6E692:  MOV             R4, R11
6E694:  B               loc_6E69E
6E696:  SUBS            R6, #0x20 ; ' '
6E698:  ADD.W           R4, R4, #0x20 ; ' '
6E69C:  BEQ             loc_6E6D6
6E69E:  LDRH            R0, [R4,#0xE]
6E6A0:  LDR             R2, [R4]
6E6A2:  ANDS.W          R0, R0, #0x1000
6E6A6:  LDRB            R1, [R4,#0xD]
6E6A8:  IT NE
6E6AA:  RSBNE.W         R2, R1, #0xD
6E6AE:  CMP             R5, R2
6E6B0:  BNE             loc_6E696
6E6B2:  LDR             R1, [R4,#8]
6E6B4:  CMP             R0, #0
6E6B6:  IT NE
6E6B8:  MOVNE           R1, R4; s2
6E6BA:  CMP             R1, R8
6E6BC:  BEQ             loc_6E6CA
6E6BE:  MOV             R0, R8; s1
6E6C0:  MOV             R2, R5; n
6E6C2:  BLX             memcmp
6E6C6:  CMP             R0, #0
6E6C8:  BNE             loc_6E696
6E6CA:  ADD.W           R0, R11, R10,LSL#5
6E6CE:  CMP             R4, R0
6E6D0:  BEQ             loc_6E6D6
6E6D2:  ADDS            R4, #0x10
6E6D4:  B               loc_6E6E8
6E6D6:  LDR             R0, =(unk_116D20 - 0x6E6DC)
6E6D8:  ADD             R0, PC; unk_116D20
6E6DA:  BLX             j___emutls_get_address
6E6DE:  VMOV.I32        Q8, #0
6E6E2:  MOV             R4, R0
6E6E4:  VST1.64         {D16-D17}, [R4]
6E6E8:  LDR             R0, =(aChatSizex - 0x6E6EE); "chat_sizex" ...
6E6EA:  ADD             R0, PC; "chat_sizex"
6E6EC:  MOVS            R1, #0xB; size_t
6E6EE:  MOV             R8, R0
6E6F0:  BLX             __strlen_chk
6E6F4:  LDR.W           R11, [R4,#8]
6E6F8:  LDR.W           R10, [R4]
6E6FC:  CMP.W           R10, #0
6E700:  MOV             R4, R11
6E702:  BEQ             loc_6E742
6E704:  MOV             R5, R0
6E706:  MOV.W           R6, R10,LSL#5
6E70A:  MOV             R4, R11
6E70C:  B               loc_6E716
6E70E:  SUBS            R6, #0x20 ; ' '
6E710:  ADD.W           R4, R4, #0x20 ; ' '
6E714:  BEQ             loc_6E74E
6E716:  LDRH            R0, [R4,#0xE]
6E718:  LDR             R2, [R4]
6E71A:  ANDS.W          R0, R0, #0x1000
6E71E:  LDRB            R1, [R4,#0xD]
6E720:  IT NE
6E722:  RSBNE.W         R2, R1, #0xD
6E726:  CMP             R5, R2
6E728:  BNE             loc_6E70E
6E72A:  LDR             R1, [R4,#8]
6E72C:  CMP             R0, #0
6E72E:  IT NE
6E730:  MOVNE           R1, R4; s2
6E732:  CMP             R1, R8
6E734:  BEQ             loc_6E742
6E736:  MOV             R0, R8; s1
6E738:  MOV             R2, R5; n
6E73A:  BLX             memcmp
6E73E:  CMP             R0, #0
6E740:  BNE             loc_6E70E
6E742:  ADD.W           R0, R11, R10,LSL#5
6E746:  CMP             R4, R0
6E748:  BEQ             loc_6E74E
6E74A:  LDR             R0, [R4,#0x10]
6E74C:  B               loc_6E760
6E74E:  LDR             R0, =(unk_116D20 - 0x6E754)
6E750:  ADD             R0, PC; unk_116D20
6E752:  BLX             j___emutls_get_address
6E756:  VMOV.I32        Q8, #0
6E75A:  VST1.64         {D16-D17}, [R0]
6E75E:  MOVS            R0, #0
6E760:  VMOV            S0, R0
6E764:  LDR             R1, =(dword_116D18 - 0x6E770)
6E766:  LDR             R0, =(aClient - 0x6E772); "client" ...
6E768:  VCVT.F32.S32    S0, S0
6E76C:  ADD             R1, PC; dword_116D18
6E76E:  ADD             R0, PC; "client"
6E770:  STR             R1, [SP,#0x101D0+var_10188]
6E772:  VSTR            S0, [R1]
6E776:  MOVS            R1, #7; size_t
6E778:  MOV             R8, R0
6E77A:  BLX             __strlen_chk
6E77E:  LDR.W           R11, [SP,#0x101D0+s2]
6E782:  LDR.W           R10, [SP,#0x101D0+var_10160]
6E786:  CMP.W           R10, #0
6E78A:  MOV             R4, R11
6E78C:  BEQ             loc_6E7CC
6E78E:  MOV             R5, R0
6E790:  MOV.W           R6, R10,LSL#5
6E794:  MOV             R4, R11
6E796:  B               loc_6E7A0
6E798:  SUBS            R6, #0x20 ; ' '
6E79A:  ADD.W           R4, R4, #0x20 ; ' '
6E79E:  BEQ             loc_6E80C
6E7A0:  LDRH            R0, [R4,#0xE]
6E7A2:  LDR             R2, [R4]
6E7A4:  ANDS.W          R0, R0, #0x1000
6E7A8:  LDRB            R1, [R4,#0xD]
6E7AA:  IT NE
6E7AC:  RSBNE.W         R2, R1, #0xD
6E7B0:  CMP             R5, R2
6E7B2:  BNE             loc_6E798
6E7B4:  LDR             R1, [R4,#8]
6E7B6:  CMP             R0, #0
6E7B8:  IT NE
6E7BA:  MOVNE           R1, R4; s2
6E7BC:  CMP             R1, R8
6E7BE:  BEQ             loc_6E7CC
6E7C0:  MOV             R0, R8; s1
6E7C2:  MOV             R2, R5; n
6E7C4:  BLX             memcmp
6E7C8:  CMP             R0, #0
6E7CA:  BNE             loc_6E798
6E7CC:  ADD.W           R0, R11, R10,LSL#5
6E7D0:  CMP             R4, R0
6E7D2:  BEQ             loc_6E80C
6E7D4:  ADDS            R4, #0x10
6E7D6:  B               loc_6E81E
6E7D8:  DCD unk_116D20 - 0x6E462
6E7DC:  DCD dword_116D10 - 0x6E47E
6E7E0:  DCD aClient - 0x6E480
6E7E4:  DCD unk_116D20 - 0x6E4EC
6E7E8:  DCD aSettings - 0x6E4FE
6E7EC:  DCD unk_116D20 - 0x6E564
6E7F0:  DCD aChatPosy - 0x6E576
6E7F4:  DCD unk_116D20 - 0x6E5DC
6E7F8:  DCD aClient - 0x6E5F8
6E7FC:  DCD unk_116D20 - 0x6E664
6E800:  DCD aSettings - 0x6E676
6E804:  DCD unk_116D20 - 0x6E6DC
6E808:  DCD aChatSizex - 0x6E6EE
6E80C:  LDR             R0, =(unk_116D20 - 0x6E812)
6E80E:  ADD             R0, PC; unk_116D20
6E810:  BLX             j___emutls_get_address
6E814:  VMOV.I32        Q8, #0
6E818:  MOV             R4, R0
6E81A:  VST1.64         {D16-D17}, [R4]
6E81E:  LDR             R0, =(aSettings - 0x6E824); "settings" ...
6E820:  ADD             R0, PC; "settings"
6E822:  MOVS            R1, #9; size_t
6E824:  MOV             R8, R0
6E826:  BLX             __strlen_chk
6E82A:  LDR.W           R11, [R4,#8]
6E82E:  LDR.W           R10, [R4]
6E832:  CMP.W           R10, #0
6E836:  MOV             R4, R11
6E838:  BEQ             loc_6E878
6E83A:  MOV             R5, R0
6E83C:  MOV.W           R6, R10,LSL#5
6E840:  MOV             R4, R11
6E842:  B               loc_6E84C
6E844:  SUBS            R6, #0x20 ; ' '
6E846:  ADD.W           R4, R4, #0x20 ; ' '
6E84A:  BEQ             loc_6E884
6E84C:  LDRH            R0, [R4,#0xE]
6E84E:  LDR             R2, [R4]
6E850:  ANDS.W          R0, R0, #0x1000
6E854:  LDRB            R1, [R4,#0xD]
6E856:  IT NE
6E858:  RSBNE.W         R2, R1, #0xD
6E85C:  CMP             R5, R2
6E85E:  BNE             loc_6E844
6E860:  LDR             R1, [R4,#8]
6E862:  CMP             R0, #0
6E864:  IT NE
6E866:  MOVNE           R1, R4; s2
6E868:  CMP             R1, R8
6E86A:  BEQ             loc_6E878
6E86C:  MOV             R0, R8; s1
6E86E:  MOV             R2, R5; n
6E870:  BLX             memcmp
6E874:  CMP             R0, #0
6E876:  BNE             loc_6E844
6E878:  ADD.W           R0, R11, R10,LSL#5
6E87C:  CMP             R4, R0
6E87E:  BEQ             loc_6E884
6E880:  ADDS            R4, #0x10
6E882:  B               loc_6E896
6E884:  LDR             R0, =(unk_116D20 - 0x6E88A)
6E886:  ADD             R0, PC; unk_116D20
6E888:  BLX             j___emutls_get_address
6E88C:  VMOV.I32        Q8, #0
6E890:  MOV             R4, R0
6E892:  VST1.64         {D16-D17}, [R4]
6E896:  LDR             R0, =(aChatSizey - 0x6E89C); "chat_sizey" ...
6E898:  ADD             R0, PC; "chat_sizey"
6E89A:  MOVS            R1, #0xB; size_t
6E89C:  MOV             R8, R0
6E89E:  BLX             __strlen_chk
6E8A2:  LDR.W           R11, [R4,#8]
6E8A6:  LDR.W           R10, [R4]
6E8AA:  CMP.W           R10, #0
6E8AE:  MOV             R4, R11
6E8B0:  BEQ             loc_6E8F0
6E8B2:  MOV             R5, R0
6E8B4:  MOV.W           R6, R10,LSL#5
6E8B8:  MOV             R4, R11
6E8BA:  B               loc_6E8C4
6E8BC:  SUBS            R6, #0x20 ; ' '
6E8BE:  ADD.W           R4, R4, #0x20 ; ' '
6E8C2:  BEQ             loc_6E902
6E8C4:  LDRH            R0, [R4,#0xE]
6E8C6:  LDR             R2, [R4]
6E8C8:  ANDS.W          R0, R0, #0x1000
6E8CC:  LDRB            R1, [R4,#0xD]
6E8CE:  IT NE
6E8D0:  RSBNE.W         R2, R1, #0xD
6E8D4:  CMP             R5, R2
6E8D6:  BNE             loc_6E8BC
6E8D8:  LDR             R1, [R4,#8]
6E8DA:  CMP             R0, #0
6E8DC:  IT NE
6E8DE:  MOVNE           R1, R4; s2
6E8E0:  CMP             R1, R8
6E8E2:  BEQ             loc_6E8F0
6E8E4:  MOV             R0, R8; s1
6E8E6:  MOV             R2, R5; n
6E8E8:  BLX             memcmp
6E8EC:  CMP             R0, #0
6E8EE:  BNE             loc_6E8BC
6E8F0:  ADD.W           R0, R11, R10,LSL#5
6E8F4:  CMP             R4, R0
6E8F6:  BEQ             loc_6E902
6E8F8:  VLDR            S0, [R4,#0x10]
6E8FC:  VCVT.F32.S32    S0, S0
6E900:  B               loc_6E916
6E902:  LDR             R0, =(unk_116D20 - 0x6E908)
6E904:  ADD             R0, PC; unk_116D20
6E906:  BLX             j___emutls_get_address
6E90A:  VMOV.I32        Q8, #0
6E90E:  VLDR            S0, =0.0
6E912:  VST1.64         {D16-D17}, [R0]
6E916:  LDR             R1, =(aSampOrig - 0x6E920); "SAMP_ORIG" ...
6E918:  LDR             R2, =(aHostS - 0x6E924); "host %s" ...
6E91A:  LDR             R3, =(a127001 - 0x6E926); "127.0.0.1"
6E91C:  ADD             R1, PC; "SAMP_ORIG"
6E91E:  LDR             R0, [SP,#0x101D0+var_10188]
6E920:  ADD             R2, PC; "host %s"
6E922:  ADD             R3, PC; "127.0.0.1"
6E924:  VSTR            S0, [R0,#4]
6E928:  MOVS            R0, #4; prio
6E92A:  BLX             __android_log_print
6E92E:  LDR             R0, [SP,#0x101D0+var_1018C]
6E930:  LDR             R3, [R0]
6E932:  LDR             R1, =(aSampOrig - 0x6E93A); "SAMP_ORIG" ...
6E934:  LDR             R2, =(aPortD - 0x6E93C); "port %d" ...
6E936:  ADD             R1, PC; "SAMP_ORIG"
6E938:  ADD             R2, PC; "port %d"
6E93A:  MOVS            R0, #4; prio
6E93C:  BLX             __android_log_print
6E940:  LDR             R1, =(aSampOrig - 0x6E94A); "SAMP_ORIG" ...
6E942:  LDR             R2, =(aPasswordS - 0x6E94C); "password %s" ...
6E944:  LDR             R3, =(unk_1A443B - 0x6E94E)
6E946:  ADD             R1, PC; "SAMP_ORIG"
6E948:  ADD             R2, PC; "password %s"
6E94A:  ADD             R3, PC; unk_1A443B
6E94C:  MOVS            R0, #4; prio
6E94E:  BLX             __android_log_print
6E952:  LDR             R1, =(aSampOrig - 0x6E95C); "SAMP_ORIG" ...
6E954:  LDR             R2, =(aNickNameS - 0x6E95E); "nick_name %s" ...
6E956:  LDR             R3, =(aSampPlayer - 0x6E960); "samp_player"
6E958:  ADD             R1, PC; "SAMP_ORIG"
6E95A:  ADD             R2, PC; "nick_name %s"
6E95C:  ADD             R3, PC; "samp_player"
6E95E:  MOVS            R0, #4; prio
6E960:  BLX             __android_log_print
6E964:  LDR             R0, [SP,#0x101D0+var_10198]
6E966:  LDR             R3, [R0]
6E968:  LDR             R1, =(aSampOrig - 0x6E970); "SAMP_ORIG" ...
6E96A:  LDR             R2, =(aSampVersionD - 0x6E972); "samp_version %d" ...
6E96C:  ADD             R1, PC; "SAMP_ORIG"
6E96E:  ADD             R2, PC; "samp_version %d"
6E970:  MOVS            R0, #4; prio
6E972:  BLX             __android_log_print
6E976:  LDR             R0, [SP,#0x101D0+var_1019C]
6E978:  LDRB            R3, [R0]
6E97A:  LDR             R1, =(aSampOrig - 0x6E982); "SAMP_ORIG" ...
6E97C:  LDR             R2, =(aNewInterfaceD - 0x6E984); "new_interface %d" ...
6E97E:  ADD             R1, PC; "SAMP_ORIG"
6E980:  ADD             R2, PC; "new_interface %d"
6E982:  MOVS            R0, #4; prio
6E984:  BLX             __android_log_print
6E988:  LDR             R0, [SP,#0x101D0+var_101A0]
6E98A:  LDRB            R3, [R0]
6E98C:  LDR             R1, =(aSampOrig - 0x6E994); "SAMP_ORIG" ...
6E98E:  LDR             R2, =(aSystemKeyboard_0 - 0x6E996); "system_keyboard %d" ...
6E990:  ADD             R1, PC; "SAMP_ORIG"
6E992:  ADD             R2, PC; "system_keyboard %d"
6E994:  MOVS            R0, #4; prio
6E996:  BLX             __android_log_print
6E99A:  LDR             R0, [SP,#0x101D0+var_101A4]
6E99C:  LDRB            R3, [R0]
6E99E:  LDR             R1, =(aSampOrig - 0x6E9A6); "SAMP_ORIG" ...
6E9A0:  LDR             R2, =(aTimestampD - 0x6E9A8); "timestamp %d" ...
6E9A2:  ADD             R1, PC; "SAMP_ORIG"
6E9A4:  ADD             R2, PC; "timestamp %d"
6E9A6:  MOVS            R0, #4; prio
6E9A8:  BLX             __android_log_print
6E9AC:  LDR             R0, [SP,#0x101D0+var_101A8]
6E9AE:  LDRB            R3, [R0]
6E9B0:  LDR             R1, =(aSampOrig - 0x6E9B8); "SAMP_ORIG" ...
6E9B2:  LDR             R2, =(aFastConnectD - 0x6E9BA); "fast_connect %d" ...
6E9B4:  ADD             R1, PC; "SAMP_ORIG"
6E9B6:  ADD             R2, PC; "fast_connect %d"
6E9B8:  MOVS            R0, #4; prio
6E9BA:  BLX             __android_log_print
6E9BE:  LDR             R0, [SP,#0x101D0+var_101AC]
6E9C0:  LDRB            R3, [R0]
6E9C2:  LDR             R1, =(aSampOrig - 0x6E9CA); "SAMP_ORIG" ...
6E9C4:  LDR             R2, =(aVoiceChatD - 0x6E9CC); "voice_chat %d" ...
6E9C6:  ADD             R1, PC; "SAMP_ORIG"
6E9C8:  ADD             R2, PC; "voice_chat %d"
6E9CA:  MOVS            R0, #4; prio
6E9CC:  BLX             __android_log_print
6E9D0:  LDR             R0, [SP,#0x101D0+var_101B0]
6E9D2:  LDRB            R3, [R0]
6E9D4:  LDR             R1, =(aSampOrig - 0x6E9DC); "SAMP_ORIG" ...
6E9D6:  LDR             R2, =(aDisplayFpsD - 0x6E9DE); "display_fps %d" ...
6E9D8:  ADD             R1, PC; "SAMP_ORIG"
6E9DA:  ADD             R2, PC; "display_fps %d"
6E9DC:  MOVS            R0, #4; prio
6E9DE:  BLX             __android_log_print
6E9E2:  LDR.W           R3, [R9]
6E9E6:  LDR             R1, =(aSampOrig - 0x6E9EE); "SAMP_ORIG" ...
6E9E8:  LDR             R2, =(aFpsLimitD - 0x6E9F0); "fps_limit %d" ...
6E9EA:  ADD             R1, PC; "SAMP_ORIG"
6E9EC:  ADD             R2, PC; "fps_limit %d"
6E9EE:  MOVS            R0, #4; prio
6E9F0:  BLX             __android_log_print
6E9F4:  LDR             R0, [SP,#0x101D0+var_101B4]
6E9F6:  LDR             R3, [R0]
6E9F8:  LDR             R1, =(aSampOrig - 0x6EA00); "SAMP_ORIG" ...
6E9FA:  LDR             R2, =(aChatStringsD - 0x6EA02); "chat_strings %d" ...
6E9FC:  ADD             R1, PC; "SAMP_ORIG"
6E9FE:  ADD             R2, PC; "chat_strings %d"
6EA00:  MOVS            R0, #4; prio
6EA02:  BLX             __android_log_print
6EA06:  LDR             R0, [SP,#0x101D0+var_101B8]
6EA08:  LDR             R3, [R0]
6EA0A:  LDR             R1, =(aSampOrig - 0x6EA12); "SAMP_ORIG" ...
6EA0C:  LDR             R2, =(aAspectRatioD - 0x6EA14); "aspect_ratio %d" ...
6EA0E:  ADD             R1, PC; "SAMP_ORIG"
6EA10:  ADD             R2, PC; "aspect_ratio %d"
6EA12:  MOVS            R0, #4; prio
6EA14:  BLX             __android_log_print
6EA18:  LDR             R0, [SP,#0x101D0+var_101BC]
6EA1A:  VLDR            S0, [R0]
6EA1E:  LDR             R1, =(aSampOrig - 0x6EA2A); "SAMP_ORIG" ...
6EA20:  LDR             R2, =(aFontSize2f - 0x6EA2C); "font_size %.2f" ...
6EA22:  VCVT.F64.F32    D16, S0
6EA26:  ADD             R1, PC; "SAMP_ORIG"
6EA28:  ADD             R2, PC; "font_size %.2f"
6EA2A:  MOVS            R0, #4; prio
6EA2C:  VSTR            D16, [SP,#0x101D0+var_101D0]
6EA30:  BLX             __android_log_print
6EA34:  LDR             R0, [SP,#0x101D0+var_10184]
6EA36:  VLDR            S0, [R0]
6EA3A:  VLDR            S2, [R0,#4]
6EA3E:  LDR             R1, =(aSampOrig - 0x6EA4A); "SAMP_ORIG" ...
6EA40:  VCVT.F64.F32    D17, S0
6EA44:  LDR             R2, =(aChatPos2f2f - 0x6EA4C); "chat_pos %.2f %.2f" ...
6EA46:  ADD             R1, PC; "SAMP_ORIG"
6EA48:  ADD             R2, PC; "chat_pos %.2f %.2f"
6EA4A:  VCVT.F64.F32    D16, S2
6EA4E:  MOVS            R0, #4; prio
6EA50:  VSTR            D17, [SP,#0x101D0+var_101D0]
6EA54:  VSTR            D16, [SP,#0x101D0+var_101C8]
6EA58:  BLX             __android_log_print
6EA5C:  LDR             R0, [SP,#0x101D0+var_10188]
6EA5E:  VLDR            S0, [R0]
6EA62:  VLDR            S2, [R0,#4]
6EA66:  LDR             R1, =(aSampOrig - 0x6EA72); "SAMP_ORIG" ...
6EA68:  VCVT.F64.F32    D17, S0
6EA6C:  LDR             R2, =(aChatSize2f2f - 0x6EA74); "chat_size %.2f %.2f" ...
6EA6E:  ADD             R1, PC; "SAMP_ORIG"
6EA70:  ADD             R2, PC; "chat_size %.2f %.2f"
6EA72:  VCVT.F64.F32    D16, S2
6EA76:  MOVS            R0, #4; prio
6EA78:  VSTR            D17, [SP,#0x101D0+var_101D0]
6EA7C:  VSTR            D16, [SP,#0x101D0+var_101C8]
6EA80:  BLX             __android_log_print
6EA84:  LDR             R0, [SP,#0x101D0+stream]; stream
6EA86:  BLX             fclose
6EA8A:  LDR             R0, [SP,#0x101D0+var_1014C]
6EA8C:  MOVS            R1, #1
6EA8E:  LDR             R2, [SP,#0x101D0+var_10190]
6EA90:  STRB            R1, [R2]
6EA92:  CBZ             R0, loc_6EA9E
6EA94:  VMOV.I32        Q8, #0
6EA98:  ADD             R0, SP, #0x101D0+var_10160
6EA9A:  VST1.64         {D16-D17}, [R0]
6EA9E:  ADD             R0, SP, #0x101D0+var_10160
6EAA0:  BL              sub_6EDE2
6EAA4:  LDR             R0, [SP,#0x101D0+var_10140]; ptr
6EAA6:  BLX             free
6EAAA:  LDR             R0, [SP,#0x101D0+var_10144]; void *
6EAAC:  CMP             R0, #0
6EAAE:  IT NE
6EAB0:  BLXNE           j__ZdlPv; operator delete(void *)
6EAB4:  LDR.W           R0, [R7,#var_24]
6EAB8:  LDR             R1, =(__stack_chk_guard_ptr - 0x6EABE)
6EABA:  ADD             R1, PC; __stack_chk_guard_ptr
6EABC:  LDR             R1, [R1]; __stack_chk_guard
6EABE:  LDR             R1, [R1]
6EAC0:  CMP             R1, R0
6EAC2:  ITTTT EQ
6EAC4:  ADDEQ.W         SP, SP, #0x10000
6EAC8:  ADDEQ           SP, SP, #0x1B4
6EACA:  POPEQ.W         {R8-R11}
6EACE:  POPEQ           {R4-R7,PC}
6EAD0:  BLX             __stack_chk_fail
6EAD4:  LDR             R1, =(aSampOrig - 0x6EADE); "SAMP_ORIG" ...
6EAD6:  MOVS            R0, #6; prio
6EAD8:  LDR             R2, =(aFailedToInitia - 0x6EAE0); "Failed to initialize settings. (game st"... ...
6EADA:  ADD             R1, PC; "SAMP_ORIG"
6EADC:  ADD             R2, PC; "Failed to initialize settings. (game st"...
6EADE:  BLX             __android_log_print
6EAE2:  BLX             j__ZSt9terminatev; std::terminate(void)
6EAE6:  LDR             R1, =(aSampOrig - 0x6EAF0); "SAMP_ORIG" ...
6EAE8:  MOVS            R0, #4; prio
6EAEA:  LDR             R2, =(aFailedToInitia_0 - 0x6EAF2); "Failed to initialize settings. (setting"... ...
6EAEC:  ADD             R1, PC; "SAMP_ORIG"
6EAEE:  ADD             R2, PC; "Failed to initialize settings. (setting"...
6EAF0:  BLX             __android_log_print
6EAF4:  BLX             j__ZSt9terminatev; std::terminate(void)
