; =========================================================
; Game Engine Function: sub_109C50
; Address            : 0x109C50 - 0x109D58
; =========================================================

109C50:  PUSH            {R4-R6,R10,R11,LR}
109C54:  ADD             R11, SP, #0x10
109C58:  LDR             R4, [R11,#arg_0]
109C5C:  MOV             R6, R2
109C60:  MOV             R5, R0
109C64:  CMP             R1, #5
109C68:  BEQ             loc_109C9C
109C6C:  CMP             R1, #1
109C70:  BEQ             loc_109CAC
109C74:  CMP             R1, #0
109C78:  BNE             loc_109D20
109C7C:  MOV             R0, #2
109C80:  CMP             R6, #0xF
109C84:  BHI             locret_109CA8
109C88:  CMP             R3, #0
109C8C:  BNE             locret_109CA8
109C90:  MOV             R0, R5
109C94:  MOV             R1, R6
109C98:  B               loc_109CE0
109C9C:  ORRS            R0, R3, R6
109CA0:  MOV             R0, #2
109CA4:  BEQ             loc_109CD8
109CA8:  POP             {R4-R6,R10,R11,PC}
109CAC:  BIC             R1, R3, #4
109CB0:  MOV             R0, #2
109CB4:  CMP             R1, #1
109CB8:  BNE             locret_109CA8
109CBC:  CMP             R3, #1
109CC0:  BNE             loc_109CF8
109CC4:  CMP             R6, #0xF
109CC8:  BHI             locret_109CA8
109CCC:  MOV             R0, R5
109CD0:  BL              sub_10ADE0
109CD4:  B               loc_109D00
109CD8:  MOV             R0, R5
109CDC:  MOV             R1, #0x8F
109CE0:  MOV             R2, R4
109CE4:  BL              sub_10AB7C
109CE8:  CMP             R0, #0
109CEC:  MOVWNE          R0, #1
109CF0:  MOV             R0, R0,LSL#1
109CF4:  POP             {R4-R6,R10,R11,PC}
109CF8:  CMP             R6, #0x1F
109CFC:  BHI             locret_109CA8
109D00:  ADD             R1, R6, #0x100
109D04:  MOV             R0, R5
109D08:  MOV             R2, R4
109D0C:  BL              sub_10ACBC
109D10:  CMP             R0, #0
109D14:  MOVWNE          R0, #1
109D18:  MOV             R0, R0,LSL#1
109D1C:  POP             {R4-R6,R10,R11,PC}
109D20:  LDR             R1, =(aLibunwindSS - 0x109D34); "libunwind: %s - %s\n" ...
109D24:  LDR             R2, =(aUnwindVrsGetIn - 0x109D3C); "_Unwind_VRS_Get_Internal" ...
109D28:  LDR             R3, =(aUnsupportedReg - 0x109D40); "unsupported register class" ...
109D2C:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
109D30:  LDR             R0, =(__sF_ptr - 0x109D44)
109D34:  ADD             R2, PC, R2; "_Unwind_VRS_Get_Internal"
109D38:  ADD             R3, PC, R3; "unsupported register class"
109D3C:  LDR             R0, [PC,R0]; __sF
109D40:  ADD             R4, R0, #0xA8
109D44:  MOV             R0, R4; stream
109D48:  BL              fprintf
109D4C:  MOV             R0, R4; stream
109D50:  BL              fflush
109D54:  BL              abort
