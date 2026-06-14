; =========================================================
; Game Engine Function: _ZN9OALSource12ObtainSourceEv
; Address            : 0x27FB1C - 0x27FBDE
; =========================================================

27FB1C:  PUSH            {R4-R7,LR}
27FB1E:  ADD             R7, SP, #0xC
27FB20:  PUSH.W          {R8-R10}
27FB24:  MOV             R5, R0
27FB26:  MOV             R4, R5
27FB28:  LDR.W           R0, [R4,#8]!
27FB2C:  CMP             R0, #0
27FB2E:  BNE             loc_27FBC4
27FB30:  MOVS            R0, #1
27FB32:  MOV             R1, R4
27FB34:  BLX             j_alGenSources
27FB38:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27FB3E)
27FB3A:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27FB3C:  LDR             R0, [R0]; OALSource::activeSources ...
27FB3E:  LDRD.W          R1, R6, [R0]; OALSource::activeSources
27FB42:  ADDS            R0, R6, #1
27FB44:  CMP             R1, R0
27FB46:  BCS             loc_27FB9E
27FB48:  MOVW            R1, #0xAAAB
27FB4C:  LSLS            R0, R0, #2
27FB4E:  MOVT            R1, #0xAAAA
27FB52:  UMULL.W         R0, R1, R0, R1
27FB56:  MOVS            R0, #3
27FB58:  ADD.W           R10, R0, R1,LSR#1
27FB5C:  MOV.W           R0, R10,LSL#2; byte_count
27FB60:  BLX             malloc
27FB64:  MOV             R8, R0
27FB66:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27FB6C)
27FB68:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27FB6A:  LDR             R0, [R0]; OALSource::activeSources ...
27FB6C:  LDR.W           R9, [R0,#(dword_6DFD78 - 0x6DFD70)]
27FB70:  CMP.W           R9, #0
27FB74:  BEQ             loc_27FB8E
27FB76:  LSLS            R2, R6, #2; size_t
27FB78:  MOV             R0, R8; void *
27FB7A:  MOV             R1, R9; void *
27FB7C:  BLX             memcpy_0
27FB80:  MOV             R0, R9; p
27FB82:  BLX             free
27FB86:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27FB8C)
27FB88:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27FB8A:  LDR             R0, [R0]; OALSource::activeSources ...
27FB8C:  LDR             R6, [R0,#(dword_6DFD74 - 0x6DFD70)]
27FB8E:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27FB94)
27FB90:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27FB92:  LDR             R0, [R0]; OALSource::activeSources ...
27FB94:  STR.W           R8, [R0,#(dword_6DFD78 - 0x6DFD70)]
27FB98:  STR.W           R10, [R0]; OALSource::activeSources
27FB9C:  B               loc_27FBA8
27FB9E:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27FBA4)
27FBA0:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27FBA2:  LDR             R0, [R0]; OALSource::activeSources ...
27FBA4:  LDR.W           R8, [R0,#(dword_6DFD78 - 0x6DFD70)]
27FBA8:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27FBB2)
27FBAA:  STR.W           R5, [R8,R6,LSL#2]
27FBAE:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27FBB0:  LDR             R0, [R0]; OALSource::activeSources ...
27FBB2:  LDR             R1, [R0,#(dword_6DFD74 - 0x6DFD70)]
27FBB4:  ADDS            R1, #1
27FBB6:  STR             R1, [R0,#(dword_6DFD74 - 0x6DFD70)]
27FBB8:  LDR             R0, [R5,#0x10]
27FBBA:  CMP             R0, #0
27FBBC:  ITT NE
27FBBE:  LDRNE           R1, [R5,#0xC]
27FBC0:  CMPNE           R1, #2
27FBC2:  BNE             loc_27FBCA
27FBC4:  POP.W           {R8-R10}
27FBC8:  POP             {R4-R7,PC}
27FBCA:  LDR             R2, [R0,#8]
27FBCC:  MOVW            R1, #0x1009
27FBD0:  LDR             R0, [R4]
27FBD2:  POP.W           {R8-R10}
27FBD6:  POP.W           {R4-R7,LR}
27FBDA:  B.W             j_j_alSourcei
