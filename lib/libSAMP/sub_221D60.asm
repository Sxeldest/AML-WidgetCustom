; =========================================================
; Game Engine Function: sub_221D60
; Address            : 0x221D60 - 0x221E68
; =========================================================

221D60:  PUSH            {R4-R6,R10,R11,LR}
221D64:  ADD             R11, SP, #0x10
221D68:  LDR             R4, [R11,#arg_0]
221D6C:  MOV             R6, R2
221D70:  MOV             R5, R0
221D74:  CMP             R1, #5
221D78:  BEQ             loc_221DAC
221D7C:  CMP             R1, #1
221D80:  BEQ             loc_221DBC
221D84:  CMP             R1, #0
221D88:  BNE             loc_221E30
221D8C:  MOV             R0, #2
221D90:  CMP             R6, #0xF
221D94:  BHI             locret_221DB8
221D98:  CMP             R3, #0
221D9C:  BNE             locret_221DB8
221DA0:  MOV             R0, R5
221DA4:  MOV             R1, R6
221DA8:  B               loc_221DF0
221DAC:  ORRS            R0, R3, R6
221DB0:  MOV             R0, #2
221DB4:  BEQ             loc_221DE8
221DB8:  POP             {R4-R6,R10,R11,PC}
221DBC:  BIC             R1, R3, #4
221DC0:  MOV             R0, #2
221DC4:  CMP             R1, #1
221DC8:  BNE             locret_221DB8
221DCC:  CMP             R3, #1
221DD0:  BNE             loc_221E08
221DD4:  CMP             R6, #0xF
221DD8:  BHI             locret_221DB8
221DDC:  MOV             R0, R5
221DE0:  BL              sub_222EF0
221DE4:  B               loc_221E10
221DE8:  MOV             R0, R5
221DEC:  MOV             R1, #0x8F
221DF0:  MOV             R2, R4
221DF4:  BL              sub_222C8C
221DF8:  CMP             R0, #0
221DFC:  MOVWNE          R0, #1
221E00:  MOV             R0, R0,LSL#1
221E04:  POP             {R4-R6,R10,R11,PC}
221E08:  CMP             R6, #0x1F
221E0C:  BHI             locret_221DB8
221E10:  ADD             R1, R6, #0x100
221E14:  MOV             R0, R5
221E18:  MOV             R2, R4
221E1C:  BL              sub_222DCC
221E20:  CMP             R0, #0
221E24:  MOVWNE          R0, #1
221E28:  MOV             R0, R0,LSL#1
221E2C:  POP             {R4-R6,R10,R11,PC}
221E30:  LDR             R1, =(aLibunwindSS - 0x221E44); "libunwind: %s - %s\n" ...
221E34:  LDR             R2, =(aUnwindVrsGetIn - 0x221E4C); "_Unwind_VRS_Get_Internal" ...
221E38:  LDR             R3, =(aUnsupportedReg - 0x221E50); "unsupported register class" ...
221E3C:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
221E40:  LDR             R0, =(__sF_ptr - 0x221E54)
221E44:  ADD             R2, PC, R2; "_Unwind_VRS_Get_Internal"
221E48:  ADD             R3, PC, R3; "unsupported register class"
221E4C:  LDR             R0, [PC,R0]; __sF
221E50:  ADD             R4, R0, #0xA8
221E54:  MOV             R0, R4; stream
221E58:  BL              fprintf
221E5C:  MOV             R0, R4; stream
221E60:  BL              fflush
221E64:  BL              abort
