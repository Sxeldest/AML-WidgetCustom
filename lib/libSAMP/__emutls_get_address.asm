; =========================================================
; Game Engine Function: __emutls_get_address
; Address            : 0x220F00 - 0x2210CC
; =========================================================

220F00:  PUSH            {R4-R9,R11,LR}
220F04:  LDR             R7, [R0,#8]
220F08:  DMB             ISH
220F0C:  LDR             R8, =(byte_384180 - 0x220F20)
220F10:  MOV             R9, R0
220F14:  CMP             R7, #0
220F18:  ADD             R8, PC, R8; byte_384180
220F1C:  BEQ             loc_220F84
220F20:  LDR             R0, [R8,#(dword_384184 - 0x384180)]; key
220F24:  BL              pthread_getspecific
220F28:  CMP             R0, #0
220F2C:  BEQ             loc_220FD8
220F30:  LDR             R4, [R0,#4]
220F34:  MOV             R5, R0
220F38:  CMP             R4, R7
220F3C:  BCS             loc_221024
220F40:  ADD             R0, R7, #0x11
220F44:  BIC             R0, R0, #0xF
220F48:  SUB             R6, R0, #2
220F4C:  MOV             R0, #8
220F50:  ADD             R1, R0, R6,LSL#2; size
220F54:  MOV             R0, R5; ptr
220F58:  BL              realloc
220F5C:  CMP             R0, #0
220F60:  BEQ             loc_2210C8
220F64:  MOV             R5, R0
220F68:  ADD             R0, R0, R4,LSL#2
220F6C:  SUB             R1, R6, R4
220F70:  ADD             R0, R0, #8; s
220F74:  MOV             R2, R1,LSL#2; n
220F78:  MOV             R1, #0; c
220F7C:  BL              memset
220F80:  B               loc_221014
220F84:  LDR             R1, =(sub_221104 - 0x220F94)
220F88:  ADD             R0, R8, #0xC; once_control
220F8C:  ADD             R1, PC, R1; sub_221104 ; init_routine
220F90:  BL              pthread_once
220F94:  ADD             R5, R8, #0x10
220F98:  MOV             R0, R5; mutex
220F9C:  BL              EnterCriticalSection_0
220FA0:  LDR             R7, [R9,#8]
220FA4:  CMP             R7, #0
220FA8:  BNE             loc_220FC0
220FAC:  LDR             R0, [R8,#(dword_384188 - 0x384180)]
220FB0:  ADD             R7, R0, #1
220FB4:  STR             R7, [R8,#(dword_384188 - 0x384180)]
220FB8:  DMB             ISH
220FBC:  STR             R7, [R9,#8]
220FC0:  MOV             R0, R5; mutex
220FC4:  BL              LeaveCriticalSection_0
220FC8:  LDR             R0, [R8,#(dword_384184 - 0x384180)]; key
220FCC:  BL              pthread_getspecific
220FD0:  CMP             R0, #0
220FD4:  BNE             loc_220F30
220FD8:  ADD             R0, R7, #0x11
220FDC:  BIC             R0, R0, #0xF
220FE0:  SUB             R6, R0, #2
220FE4:  MOV             R0, #8
220FE8:  ADD             R0, R0, R6,LSL#2; size
220FEC:  BL              malloc
220FF0:  CMP             R0, #0
220FF4:  BEQ             loc_2210BC
220FF8:  MOV             R5, R0
220FFC:  ADD             R0, R0, #8; s
221000:  MOV             R2, R6,LSL#2; n
221004:  MOV             R1, #0; c
221008:  BL              memset
22100C:  MOV             R0, #1
221010:  STR             R0, [R5]
221014:  STR             R6, [R5,#4]
221018:  MOV             R1, R5; pointer
22101C:  LDR             R0, [R8,#(dword_384184 - 0x384180)]; key
221020:  BL              pthread_setspecific
221024:  SUB             R0, R7, #1
221028:  ADD             R7, R5, R0,LSL#2
22102C:  LDR             R5, [R7,#8]!
221030:  CMP             R5, #0
221034:  BEQ             loc_221040
221038:  MOV             R0, R5
22103C:  POP             {R4-R9,R11,PC}
221040:  LDR             R5, [R9,#4]
221044:  CMP             R5, #4
221048:  MOVLS           R5, #4
22104C:  SUB             R0, R5, #1
221050:  TST             R5, R0
221054:  BNE             loc_2210C0
221058:  LDR             R6, [R9]
22105C:  ADD             R4, R5, #3
221060:  ADD             R0, R4, R6; size
221064:  BL              malloc
221068:  CMP             R0, #0
22106C:  BEQ             loc_2210C4
221070:  ADD             R1, R0, R4
221074:  RSB             R2, R5, #0
221078:  AND             R5, R1, R2
22107C:  STR             R0, [R5,#-4]
221080:  MOV             R0, R5; dest
221084:  LDR             R1, [R9,#0xC]; src
221088:  CMP             R1, #0
22108C:  BEQ             loc_2210A4
221090:  MOV             R2, R6; n
221094:  BL              memcpy
221098:  STR             R5, [R7]
22109C:  MOV             R0, R5
2210A0:  POP             {R4-R9,R11,PC}
2210A4:  MOV             R1, #0; c
2210A8:  MOV             R2, R6; n
2210AC:  BL              memset
2210B0:  STR             R5, [R7]
2210B4:  MOV             R0, R5
2210B8:  POP             {R4-R9,R11,PC}
2210BC:  BL              abort
2210C0:  BL              abort
2210C4:  BL              abort
2210C8:  BL              abort
