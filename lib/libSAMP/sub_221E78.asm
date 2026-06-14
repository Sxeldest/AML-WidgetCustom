; =========================================================
; Game Engine Function: sub_221E78
; Address            : 0x221E78 - 0x221F84
; =========================================================

221E78:  PUSH            {R4-R6,R10,R11,LR}
221E7C:  ADD             R11, SP, #0x10
221E80:  LDR             R6, [R11,#arg_0]
221E84:  MOV             R5, R2
221E88:  MOV             R4, R0
221E8C:  CMP             R1, #5
221E90:  BEQ             loc_221EC8
221E94:  CMP             R1, #1
221E98:  BEQ             loc_221ED8
221E9C:  CMP             R1, #0
221EA0:  BNE             loc_221F4C
221EA4:  MOV             R0, #2
221EA8:  CMP             R5, #0xF
221EAC:  BHI             locret_221ED4
221EB0:  CMP             R3, #0
221EB4:  BNE             locret_221ED4
221EB8:  LDR             R2, [R6]
221EBC:  MOV             R0, R4
221EC0:  MOV             R1, R5
221EC4:  B               loc_221F10
221EC8:  ORRS            R0, R3, R5
221ECC:  MOV             R0, #2
221ED0:  BEQ             loc_221F04
221ED4:  POP             {R4-R6,R10,R11,PC}
221ED8:  BIC             R1, R3, #4
221EDC:  MOV             R0, #2
221EE0:  CMP             R1, #1
221EE4:  BNE             locret_221ED4
221EE8:  CMP             R3, #1
221EEC:  BNE             loc_221F24
221EF0:  CMP             R5, #0xF
221EF4:  BHI             locret_221ED4
221EF8:  MOV             R0, R4
221EFC:  BL              sub_222EF0
221F00:  B               loc_221F2C
221F04:  LDR             R2, [R6]
221F08:  MOV             R0, R4
221F0C:  MOV             R1, #0x8F
221F10:  BL              sub_222CE4
221F14:  CMP             R0, #0
221F18:  MOVWNE          R0, #1
221F1C:  MOV             R0, R0,LSL#1
221F20:  POP             {R4-R6,R10,R11,PC}
221F24:  CMP             R5, #0x1F
221F28:  BHI             locret_221ED4
221F2C:  LDRD            R2, R3, [R6]
221F30:  ADD             R1, R5, #0x100
221F34:  MOV             R0, R4
221F38:  BL              sub_222E24
221F3C:  CMP             R0, #0
221F40:  MOVWNE          R0, #1
221F44:  MOV             R0, R0,LSL#1
221F48:  POP             {R4-R6,R10,R11,PC}
221F4C:  LDR             R1, =(aLibunwindSS - 0x221F60); "libunwind: %s - %s\n" ...
221F50:  LDR             R2, =(aUnwindVrsSet - 0x221F68); "_Unwind_VRS_Set" ...
221F54:  LDR             R3, =(aUnsupportedReg - 0x221F6C); "unsupported register class" ...
221F58:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
221F5C:  LDR             R0, =(__sF_ptr - 0x221F70)
221F60:  ADD             R2, PC, R2; "_Unwind_VRS_Set"
221F64:  ADD             R3, PC, R3; "unsupported register class"
221F68:  LDR             R0, [PC,R0]; __sF
221F6C:  ADD             R4, R0, #0xA8
221F70:  MOV             R0, R4; stream
221F74:  BL              fprintf
221F78:  MOV             R0, R4; stream
221F7C:  BL              fflush
221F80:  BL              abort
