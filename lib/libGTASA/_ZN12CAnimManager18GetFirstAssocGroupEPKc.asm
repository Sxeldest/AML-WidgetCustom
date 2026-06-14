; =========================================================
; Game Engine Function: _ZN12CAnimManager18GetFirstAssocGroupEPKc
; Address            : 0x38DEF4 - 0x38DF2E
; =========================================================

38DEF4:  PUSH            {R4-R7,LR}
38DEF6:  ADD             R7, SP, #0xC
38DEF8:  PUSH.W          {R11}
38DEFC:  MOV             R4, R0
38DEFE:  LDR             R0, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38DF08)
38DF00:  MOV.W           R6, #0xFFFFFFFF
38DF04:  ADD             R0, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38DF06:  LDR             R0, [R0]; "default" ...
38DF08:  ADD.W           R5, R0, #0x10
38DF0C:  MOV             R0, R5; char *
38DF0E:  MOV             R1, R4; char *
38DF10:  BLX             strcasecmp
38DF14:  CBZ             R0, loc_38DF26
38DF16:  ADDS            R6, #1
38DF18:  ADDS            R5, #0x30 ; '0'
38DF1A:  CMP             R6, #0x75 ; 'u'
38DF1C:  BLT             loc_38DF0C
38DF1E:  MOVS            R0, #0x76 ; 'v'
38DF20:  POP.W           {R11}
38DF24:  POP             {R4-R7,PC}
38DF26:  ADDS            R0, R6, #1
38DF28:  POP.W           {R11}
38DF2C:  POP             {R4-R7,PC}
