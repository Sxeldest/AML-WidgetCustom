; =========================================================
; Game Engine Function: _ZN14COnscreenTimer17ProcessForDisplayEv
; Address            : 0x314DB0 - 0x314F94
; =========================================================

314DB0:  PUSH            {R4-R7,LR}
314DB2:  ADD             R7, SP, #0xC
314DB4:  PUSH.W          {R8}
314DB8:  MOV             R4, R0
314DBA:  LDR             R0, =(_ZN4CHud19m_Wants_To_Draw_HudE_ptr - 0x314DC0)
314DBC:  ADD             R0, PC; _ZN4CHud19m_Wants_To_Draw_HudE_ptr
314DBE:  LDR             R0, [R0]; CHud::m_Wants_To_Draw_Hud ...
314DC0:  LDRB            R0, [R0]; CHud::m_Wants_To_Draw_Hud
314DC2:  CMP             R0, #0
314DC4:  BEQ.W           loc_314F8E
314DC8:  LDR             R0, [R4]
314DCA:  MOV.W           R8, #0
314DCE:  STRB.W          R8, [R4,#0x38]
314DD2:  CMP             R0, #0
314DD4:  STRB.W          R8, [R4,#0x150]
314DD8:  BEQ             loc_314E4E
314DDA:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314DE8)
314DDC:  MOV             R2, #0x45E7B273
314DE4:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314DE6:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
314DE8:  LDR             R0, [R1,R0]
314DEA:  MOV             R1, #0x10624DD3
314DF2:  SMMUL.W         R1, R0, R1
314DF6:  SMMUL.W         R0, R0, R2
314DFA:  ASRS            R2, R1, #6
314DFC:  ADD.W           R3, R2, R1,LSR#31
314E00:  ASRS            R1, R0, #0xE
314E02:  ADD.W           R0, R1, R0,LSR#31
314E06:  MOV             R1, #0x51EB851F
314E0E:  SMMUL.W         R2, R0, R1
314E12:  MOV             R1, #0x88888889
314E1A:  SMMLA.W         R5, R1, R3, R3
314E1E:  LDR             R1, =(a02d02d_0 - 0x314E24); "%02d:%02d"
314E20:  ADD             R1, PC; "%02d:%02d"
314E22:  ASRS            R6, R2, #5
314E24:  ADD.W           R2, R6, R2,LSR#31
314E28:  ASRS            R6, R5, #5
314E2A:  ADD.W           R6, R6, R5,LSR#31
314E2E:  MOVS            R5, #0x64 ; 'd'
314E30:  MLS.W           R2, R2, R5, R0
314E34:  RSB.W           R0, R6, R6,LSL#4
314E38:  SUB.W           R3, R3, R0,LSL#2
314E3C:  ADD.W           R0, R4, #0xE
314E40:  BL              sub_5E6BC0
314E44:  MOVS            R0, #1
314E46:  STRB.W          R0, [R4,#0x38]
314E4A:  STRB.W          R0, [R4,#0x150]
314E4E:  LDR             R0, [R4,#0x40]
314E50:  STRB.W          R8, [R4,#0x7E]
314E54:  CBZ             R0, loc_314E9A
314E56:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314E5C)
314E58:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314E5A:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
314E5C:  LDR             R2, [R1,R0]
314E5E:  LDRH.W          R0, [R4,#0x52]
314E62:  CMP             R2, #0
314E64:  IT LE
314E66:  MOVLE           R2, #0
314E68:  CMP             R0, #2
314E6A:  BCS             loc_314E78
314E6C:  ADD.W           R0, R4, #0x54 ; 'T'
314E70:  ADR             R1, dword_314FA4
314E72:  BL              sub_5E6BC0
314E76:  B               loc_314E90
314E78:  BNE             loc_314E90
314E7A:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314E82)
314E7C:  LDR             R1, [R4,#0x44]
314E7E:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314E80:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
314E82:  LDR             R3, [R0,R1]
314E84:  ADD.W           R0, R4, #0x54 ; 'T'
314E88:  LDR             R1, =(aDD_1 - 0x314E8E); "%d / %d"
314E8A:  ADD             R1, PC; "%d / %d"
314E8C:  BL              sub_5E6BC0
314E90:  MOVS            R0, #1
314E92:  STRB.W          R0, [R4,#0x150]
314E96:  STRB.W          R0, [R4,#0x7E]
314E9A:  LDR.W           R0, [R4,#0x84]
314E9E:  MOVS            R5, #0
314EA0:  STRB.W          R5, [R4,#0xC2]
314EA4:  CBZ             R0, loc_314EEC
314EA6:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314EAC)
314EA8:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314EAA:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
314EAC:  LDR             R2, [R1,R0]
314EAE:  LDRH.W          R0, [R4,#0x96]
314EB2:  CMP             R2, #0
314EB4:  IT LE
314EB6:  MOVLE           R2, R5
314EB8:  CMP             R0, #2
314EBA:  BCS             loc_314EC8
314EBC:  ADD.W           R0, R4, #0x98
314EC0:  ADR             R1, dword_314FA4
314EC2:  BL              sub_5E6BC0
314EC6:  B               loc_314EE2
314EC8:  BNE             loc_314EE2
314ECA:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314ED4)
314ECC:  LDR.W           R3, [R4,#0x88]
314ED0:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314ED2:  LDR             R1, =(aDD_1 - 0x314EDA); "%d / %d"
314ED4:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
314ED6:  ADD             R1, PC; "%d / %d"
314ED8:  LDR             R3, [R0,R3]
314EDA:  ADD.W           R0, R4, #0x98
314EDE:  BL              sub_5E6BC0
314EE2:  MOVS            R0, #1
314EE4:  STRB.W          R0, [R4,#0x150]
314EE8:  STRB.W          R0, [R4,#0xC2]
314EEC:  LDR.W           R0, [R4,#0xC8]
314EF0:  STRB.W          R5, [R4,#0x106]
314EF4:  CBZ             R0, loc_314F3C
314EF6:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314EFC)
314EF8:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314EFA:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
314EFC:  LDR             R2, [R1,R0]
314EFE:  LDRH.W          R0, [R4,#0xDA]
314F02:  CMP             R2, #0
314F04:  IT LE
314F06:  MOVLE           R2, #0
314F08:  CMP             R0, #2
314F0A:  BCS             loc_314F18
314F0C:  ADD.W           R0, R4, #0xDC
314F10:  ADR             R1, dword_314FA4
314F12:  BL              sub_5E6BC0
314F16:  B               loc_314F32
314F18:  BNE             loc_314F32
314F1A:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314F24)
314F1C:  LDR.W           R3, [R4,#0xCC]
314F20:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314F22:  LDR             R1, =(aDD_1 - 0x314F2A); "%d / %d"
314F24:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
314F26:  ADD             R1, PC; "%d / %d"
314F28:  LDR             R3, [R0,R3]
314F2A:  ADD.W           R0, R4, #0xDC
314F2E:  BL              sub_5E6BC0
314F32:  MOVS            R0, #1
314F34:  STRB.W          R0, [R4,#0x150]
314F38:  STRB.W          R0, [R4,#0x106]
314F3C:  LDR.W           R0, [R4,#0x10C]
314F40:  MOVS            R2, #0
314F42:  STRB.W          R2, [R4,#0x14A]
314F46:  CBZ             R0, loc_314F8E
314F48:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314F4E)
314F4A:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314F4C:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
314F4E:  LDR             R0, [R1,R0]
314F50:  LDRH.W          R1, [R4,#0x11E]
314F54:  CMP             R0, #0
314F56:  IT GT
314F58:  MOVGT           R2, R0
314F5A:  CMP             R1, #2
314F5C:  BCS             loc_314F6A
314F5E:  ADD.W           R0, R4, #0x120
314F62:  ADR             R1, dword_314FA4
314F64:  BL              sub_5E6BC0
314F68:  B               loc_314F84
314F6A:  BNE             loc_314F84
314F6C:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314F76)
314F6E:  LDR.W           R3, [R4,#0x110]
314F72:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314F74:  LDR             R1, =(aDD_1 - 0x314F7C); "%d / %d"
314F76:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
314F78:  ADD             R1, PC; "%d / %d"
314F7A:  LDR             R3, [R0,R3]
314F7C:  ADD.W           R0, R4, #0x120
314F80:  BL              sub_5E6BC0
314F84:  MOVS            R0, #1
314F86:  STRB.W          R0, [R4,#0x150]
314F8A:  STRB.W          R0, [R4,#0x14A]
314F8E:  POP.W           {R8}
314F92:  POP             {R4-R7,PC}
