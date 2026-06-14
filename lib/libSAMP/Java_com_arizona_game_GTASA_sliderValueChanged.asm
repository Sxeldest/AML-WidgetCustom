; =========================================================
; Game Engine Function: Java_com_arizona_game_GTASA_sliderValueChanged
; Address            : 0x17CEB8 - 0x17CF50
; =========================================================

17CEB8:  UXTB            R0, R2
17CEBA:  CMP             R0, #0x1B
17CEBC:  BHI             locret_17CF1C
17CEBE:  LDR             R0, =(dword_381BF4 - 0x17CEC4)
17CEC0:  ADD             R0, PC; dword_381BF4
17CEC2:  LDR             R0, [R0]
17CEC4:  CBZ             R0, locret_17CF1C
17CEC6:  LDR             R1, =(off_23496C - 0x17CECC)
17CEC8:  ADD             R1, PC; off_23496C
17CECA:  LDR             R1, [R1]; dword_23DEF4
17CECC:  LDR             R1, [R1]
17CECE:  CBZ             R1, locret_17CF1C
17CED0:  UXTAB.W         R0, R0, R2
17CED4:  LDRB.W          R0, [R0,#0x68]
17CED8:  CBZ             R0, locret_17CF1C
17CEDA:  LDR.W           R12, [SP,#arg_0]
17CEDE:  CMP             R2, #3
17CEE0:  BEQ             loc_17CF02
17CEE2:  CMP             R2, #2
17CEE4:  IT NE
17CEE6:  BXNE            LR
17CEE8:  CMP             R3, #3; switch 4 cases
17CEEA:  BHI             def_17CEEC; jumptable 0017CEEC default case
17CEEC:  TBB.W           [PC,R3]; switch jump
17CEF0:  DCB 2; jump table for switch statement
17CEF1:  DCB 0x1B
17CEF2:  DCB 0x22
17CEF3:  DCB 0x29
17CEF4:  LDR             R0, =(off_234A54 - 0x17CEFC); jumptable 0017CEEC case 0
17CEF6:  MOV             R1, R12
17CEF8:  ADD             R0, PC; off_234A54
17CEFA:  LDR             R0, [R0]; dword_381A0C
17CEFC:  LDR             R0, [R0]
17CEFE:  B.W             sub_155C20
17CF02:  SUBS            R0, R3, #1
17CF04:  MOVW            R1, #0x3EA
17CF08:  CMP             R0, R1
17CF0A:  BHI             locret_17CF1C
17CF0C:  LDR             R0, =(off_234A54 - 0x17CF16)
17CF0E:  UXTH            R1, R3
17CF10:  MOV             R2, R12
17CF12:  ADD             R0, PC; off_234A54
17CF14:  LDR             R0, [R0]; dword_381A0C
17CF16:  LDR             R0, [R0]
17CF18:  B.W             sub_155E80
17CF1C:  BX              LR
17CF1E:  MOV             R0, R3; jumptable 0017CEEC default case
17CF20:  MOV             R1, R12
17CF22:  B.W             sub_138138
17CF26:  LDR             R0, =(off_234A54 - 0x17CF2E); jumptable 0017CEEC case 1
17CF28:  MOV             R1, R12
17CF2A:  ADD             R0, PC; off_234A54
17CF2C:  LDR             R0, [R0]; dword_381A0C
17CF2E:  LDR             R0, [R0]
17CF30:  B.W             sub_155CA8
17CF34:  LDR             R0, =(off_234A54 - 0x17CF3C); jumptable 0017CEEC case 2
17CF36:  MOV             R1, R12
17CF38:  ADD             R0, PC; off_234A54
17CF3A:  LDR             R0, [R0]; dword_381A0C
17CF3C:  LDR             R0, [R0]
17CF3E:  B.W             sub_155D58
17CF42:  LDR             R0, =(off_234A54 - 0x17CF4A); jumptable 0017CEEC case 3
17CF44:  MOV             R1, R12
17CF46:  ADD             R0, PC; off_234A54
17CF48:  LDR             R0, [R0]; dword_381A0C
17CF4A:  LDR             R0, [R0]
17CF4C:  B.W             sub_155DEC
