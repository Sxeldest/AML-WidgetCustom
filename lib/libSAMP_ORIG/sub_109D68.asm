; =========================================================
; Game Engine Function: sub_109D68
; Address            : 0x109D68 - 0x109E74
; =========================================================

109D68:  PUSH            {R4-R6,R10,R11,LR}
109D6C:  ADD             R11, SP, #0x10
109D70:  LDR             R6, [R11,#arg_0]
109D74:  MOV             R5, R2
109D78:  MOV             R4, R0
109D7C:  CMP             R1, #5
109D80:  BEQ             loc_109DB8
109D84:  CMP             R1, #1
109D88:  BEQ             loc_109DC8
109D8C:  CMP             R1, #0
109D90:  BNE             loc_109E3C
109D94:  MOV             R0, #2
109D98:  CMP             R5, #0xF
109D9C:  BHI             locret_109DC4
109DA0:  CMP             R3, #0
109DA4:  BNE             locret_109DC4
109DA8:  LDR             R2, [R6]
109DAC:  MOV             R0, R4
109DB0:  MOV             R1, R5
109DB4:  B               loc_109E00
109DB8:  ORRS            R0, R3, R5
109DBC:  MOV             R0, #2
109DC0:  BEQ             loc_109DF4
109DC4:  POP             {R4-R6,R10,R11,PC}
109DC8:  BIC             R1, R3, #4
109DCC:  MOV             R0, #2
109DD0:  CMP             R1, #1
109DD4:  BNE             locret_109DC4
109DD8:  CMP             R3, #1
109DDC:  BNE             loc_109E14
109DE0:  CMP             R5, #0xF
109DE4:  BHI             locret_109DC4
109DE8:  MOV             R0, R4
109DEC:  BL              sub_10ADE0
109DF0:  B               loc_109E1C
109DF4:  LDR             R2, [R6]
109DF8:  MOV             R0, R4
109DFC:  MOV             R1, #0x8F
109E00:  BL              sub_10ABD4
109E04:  CMP             R0, #0
109E08:  MOVWNE          R0, #1
109E0C:  MOV             R0, R0,LSL#1
109E10:  POP             {R4-R6,R10,R11,PC}
109E14:  CMP             R5, #0x1F
109E18:  BHI             locret_109DC4
109E1C:  LDRD            R2, R3, [R6]
109E20:  ADD             R1, R5, #0x100
109E24:  MOV             R0, R4
109E28:  BL              sub_10AD14
109E2C:  CMP             R0, #0
109E30:  MOVWNE          R0, #1
109E34:  MOV             R0, R0,LSL#1
109E38:  POP             {R4-R6,R10,R11,PC}
109E3C:  LDR             R1, =(aLibunwindSS - 0x109E50); "libunwind: %s - %s\n" ...
109E40:  LDR             R2, =(aUnwindVrsSet - 0x109E58); "_Unwind_VRS_Set" ...
109E44:  LDR             R3, =(aUnsupportedReg - 0x109E5C); "unsupported register class" ...
109E48:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
109E4C:  LDR             R0, =(__sF_ptr - 0x109E60)
109E50:  ADD             R2, PC, R2; "_Unwind_VRS_Set"
109E54:  ADD             R3, PC, R3; "unsupported register class"
109E58:  LDR             R0, [PC,R0]; __sF
109E5C:  ADD             R4, R0, #0xA8
109E60:  MOV             R0, R4; stream
109E64:  BL              fprintf
109E68:  MOV             R0, R4; stream
109E6C:  BL              fflush
109E70:  BL              abort
