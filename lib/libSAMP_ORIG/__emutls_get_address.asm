; =========================================================
; Game Engine Function: __emutls_get_address
; Address            : 0x108DEC - 0x108FB8
; =========================================================

108DEC:  PUSH            {R4-R9,R11,LR}
108DF0:  LDR             R7, [R0,#8]
108DF4:  DMB             ISH
108DF8:  LDR             R8, =(byte_1AF8A8 - 0x108E0C)
108DFC:  MOV             R9, R0
108E00:  CMP             R7, #0
108E04:  ADD             R8, PC, R8; byte_1AF8A8
108E08:  BEQ             loc_108E70
108E0C:  LDR             R0, [R8,#(dword_1AF8AC - 0x1AF8A8)]; key
108E10:  BL              pthread_getspecific
108E14:  CMP             R0, #0
108E18:  BEQ             loc_108EC4
108E1C:  LDR             R4, [R0,#4]
108E20:  MOV             R5, R0
108E24:  CMP             R4, R7
108E28:  BCS             loc_108F10
108E2C:  ADD             R0, R7, #0x11
108E30:  BIC             R0, R0, #0xF
108E34:  SUB             R6, R0, #2
108E38:  MOV             R0, #8
108E3C:  ADD             R1, R0, R6,LSL#2; size
108E40:  MOV             R0, R5; ptr
108E44:  BL              realloc
108E48:  CMP             R0, #0
108E4C:  BEQ             loc_108FB4
108E50:  MOV             R5, R0
108E54:  ADD             R0, R0, R4,LSL#2
108E58:  SUB             R1, R6, R4
108E5C:  ADD             R0, R0, #8; s
108E60:  MOV             R2, R1,LSL#2; n
108E64:  MOV             R1, #0; c
108E68:  BL              memset
108E6C:  B               loc_108F00
108E70:  LDR             R1, =(sub_108FF0 - 0x108E80)
108E74:  ADD             R0, R8, #0xC; once_control
108E78:  ADD             R1, PC, R1; sub_108FF0 ; init_routine
108E7C:  BL              pthread_once
108E80:  ADD             R5, R8, #0x10
108E84:  MOV             R0, R5; mutex
108E88:  BL              pthread_mutex_lock
108E8C:  LDR             R7, [R9,#8]
108E90:  CMP             R7, #0
108E94:  BNE             loc_108EAC
108E98:  LDR             R0, [R8,#(dword_1AF8B0 - 0x1AF8A8)]
108E9C:  ADD             R7, R0, #1
108EA0:  STR             R7, [R8,#(dword_1AF8B0 - 0x1AF8A8)]
108EA4:  DMB             ISH
108EA8:  STR             R7, [R9,#8]
108EAC:  MOV             R0, R5; mutex
108EB0:  BL              pthread_mutex_unlock
108EB4:  LDR             R0, [R8,#(dword_1AF8AC - 0x1AF8A8)]; key
108EB8:  BL              pthread_getspecific
108EBC:  CMP             R0, #0
108EC0:  BNE             loc_108E1C
108EC4:  ADD             R0, R7, #0x11
108EC8:  BIC             R0, R0, #0xF
108ECC:  SUB             R6, R0, #2
108ED0:  MOV             R0, #8
108ED4:  ADD             R0, R0, R6,LSL#2; size
108ED8:  BL              malloc
108EDC:  CMP             R0, #0
108EE0:  BEQ             loc_108FA8
108EE4:  MOV             R5, R0
108EE8:  ADD             R0, R0, #8; s
108EEC:  MOV             R2, R6,LSL#2; n
108EF0:  MOV             R1, #0; c
108EF4:  BL              memset
108EF8:  MOV             R0, #1
108EFC:  STR             R0, [R5]
108F00:  STR             R6, [R5,#4]
108F04:  MOV             R1, R5; pointer
108F08:  LDR             R0, [R8,#(dword_1AF8AC - 0x1AF8A8)]; key
108F0C:  BL              pthread_setspecific
108F10:  SUB             R0, R7, #1
108F14:  ADD             R7, R5, R0,LSL#2
108F18:  LDR             R5, [R7,#8]!
108F1C:  CMP             R5, #0
108F20:  BEQ             loc_108F2C
108F24:  MOV             R0, R5
108F28:  POP             {R4-R9,R11,PC}
108F2C:  LDR             R5, [R9,#4]
108F30:  CMP             R5, #4
108F34:  MOVLS           R5, #4
108F38:  SUB             R0, R5, #1
108F3C:  TST             R5, R0
108F40:  BNE             loc_108FAC
108F44:  LDR             R6, [R9]
108F48:  ADD             R4, R5, #3
108F4C:  ADD             R0, R4, R6; size
108F50:  BL              malloc
108F54:  CMP             R0, #0
108F58:  BEQ             loc_108FB0
108F5C:  ADD             R1, R0, R4
108F60:  RSB             R2, R5, #0
108F64:  AND             R5, R1, R2
108F68:  STR             R0, [R5,#-4]
108F6C:  MOV             R0, R5; dest
108F70:  LDR             R1, [R9,#0xC]; src
108F74:  CMP             R1, #0
108F78:  BEQ             loc_108F90
108F7C:  MOV             R2, R6; n
108F80:  BL              memcpy
108F84:  STR             R5, [R7]
108F88:  MOV             R0, R5
108F8C:  POP             {R4-R9,R11,PC}
108F90:  MOV             R1, #0; c
108F94:  MOV             R2, R6; n
108F98:  BL              memset
108F9C:  STR             R5, [R7]
108FA0:  MOV             R0, R5
108FA4:  POP             {R4-R9,R11,PC}
108FA8:  BL              abort
108FAC:  BL              abort
108FB0:  BL              abort
108FB4:  BL              abort
