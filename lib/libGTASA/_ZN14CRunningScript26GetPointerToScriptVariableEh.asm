; =========================================================
; Game Engine Function: _ZN14CRunningScript26GetPointerToScriptVariableEh
; Address            : 0x329A2C - 0x329BB4
; =========================================================

329A2C:  PUSH            {R4,R5,R7,LR}
329A2E:  ADD             R7, SP, #8
329A30:  LDR             R3, [R0,#0x14]
329A32:  MOV             R1, R3
329A34:  LDRSB.W         R4, [R1],#1
329A38:  STR             R1, [R0,#0x14]
329A3A:  MOVS            R1, #0
329A3C:  SUBS            R2, R4, #2; switch 18 cases
329A3E:  CMP             R2, #0x11
329A40:  BHI.W           def_329A4C; jumptable 00329A4C default case, cases 4-6,9,14,15
329A44:  UXTB.W          LR, R4
329A48:  MOV.W           R5, #0xFFFFFFFF
329A4C:  TBB.W           [PC,R2]; switch jump
329A50:  DCB 9; jump table for switch statement
329A51:  DCB 0x2A
329A52:  DCB 0xA8
329A53:  DCB 0xA8
329A54:  DCB 0xA8
329A55:  DCB 0x3D
329A56:  DCB 0x13
329A57:  DCB 0xA8
329A58:  DCB 9
329A59:  DCB 0x2A
329A5A:  DCB 0x3D
329A5B:  DCB 0x13
329A5C:  DCB 0xA8
329A5D:  DCB 0xA8
329A5E:  DCB 9
329A5F:  DCB 0x2A
329A60:  DCB 0x3D
329A61:  DCB 0x13
329A62:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329A6E); jumptable 00329A4C cases 2,10,16
329A64:  LDRH.W          R2, [R3,#1]
329A68:  ADDS            R3, #3
329A6A:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329A6C:  STR             R3, [R0,#0x14]
329A6E:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
329A70:  ADD             R1, R2
329A72:  MOV             R0, R1
329A74:  POP             {R4,R5,R7,PC}
329A76:  LDRSH.W         R2, [R3,#5]; jumptable 00329A4C cases 8,13,19
329A7A:  LDRH.W          R1, [R3,#3]
329A7E:  LDRH.W          R12, [R3,#1]
329A82:  ADDS            R3, #7
329A84:  CMP             R2, R5
329A86:  BLE             loc_329AF8
329A88:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329A92)
329A8A:  LDRB.W          R4, [R0,#0xFC]
329A8E:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329A90:  CMP             R4, #0
329A92:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
329A94:  ADD.W           R2, R2, R1,LSL#2
329A98:  ADD.W           R1, R0, R1,LSL#2
329A9C:  IT EQ
329A9E:  ADDEQ.W         R2, R1, #0x3C ; '<'
329AA2:  B               loc_329B00
329AA4:  LDR             R1, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329AB0); jumptable 00329A4C cases 3,11,17
329AA6:  LDRH.W          R2, [R3,#1]
329AAA:  ADDS            R3, #3
329AAC:  ADD             R1, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329AAE:  LDRB.W          R5, [R0,#0xFC]
329AB2:  STR             R3, [R0,#0x14]
329AB4:  LDR             R1, [R1]; CTheScripts::LocalVariablesForCurrentMission ...
329AB6:  ADD.W           R0, R0, R2,LSL#2
329ABA:  CMP             R5, #0
329ABC:  ADD.W           R1, R1, R2,LSL#2
329AC0:  IT EQ
329AC2:  ADDEQ.W         R1, R0, #0x3C ; '<'
329AC6:  MOV             R0, R1
329AC8:  POP             {R4,R5,R7,PC}
329ACA:  LDRSH.W         R2, [R3,#5]; jumptable 00329A4C cases 7,12,18
329ACE:  LDRH.W          R1, [R3,#3]
329AD2:  LDRH.W          R12, [R3,#1]
329AD6:  ADDS            R3, #7
329AD8:  CMP             R2, R5
329ADA:  BLE             loc_329B38
329ADC:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329AE6)
329ADE:  LDRB.W          R4, [R0,#0xFC]
329AE2:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329AE4:  CMP             R4, #0
329AE6:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
329AE8:  ADD.W           R2, R2, R1,LSL#2
329AEC:  ADD.W           R1, R0, R1,LSL#2
329AF0:  IT EQ
329AF2:  ADDEQ.W         R2, R1, #0x3C ; '<'
329AF6:  B               loc_329B40
329AF8:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329AFE)
329AFA:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329AFC:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
329AFE:  ADD             R2, R1
329B00:  LDR             R1, [R2]
329B02:  CMP.W           LR, #0x13
329B06:  STR             R3, [R0,#0x14]
329B08:  BNE             loc_329B5A
329B0A:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329B1C)
329B0C:  MOV             R3, #0x3FFFC
329B14:  AND.W           R1, R3, R1,LSL#2
329B18:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329B1A:  LDRB.W          R3, [R0,#0xFC]
329B1E:  ADD.W           R5, R1, R12
329B22:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
329B24:  CMP             R3, #0
329B26:  ADD.W           R0, R0, R5,LSL#2
329B2A:  ADD.W           R1, R2, R5,LSL#2
329B2E:  IT EQ
329B30:  ADDEQ.W         R1, R0, #0x3C ; '<'
329B34:  MOV             R0, R1
329B36:  POP             {R4,R5,R7,PC}
329B38:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329B3E)
329B3A:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329B3C:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
329B3E:  ADD             R2, R1
329B40:  LDR             R1, [R2]
329B42:  CMP.W           LR, #0x12
329B46:  STR             R3, [R0,#0x14]
329B48:  BNE             loc_329B6C
329B4A:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329B54)
329B4C:  ADD.W           R1, R12, R1,LSL#4
329B50:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329B52:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
329B54:  ADD             R1, R0
329B56:  MOV             R0, R1
329B58:  POP             {R4,R5,R7,PC}
329B5A:  UXTH            R1, R1
329B5C:  CMP.W           LR, #0xD
329B60:  BNE             loc_329B82
329B62:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329B6C)
329B64:  ADD.W           R3, R12, R1,LSL#1
329B68:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329B6A:  B               loc_329B8A
329B6C:  CMP.W           LR, #0xC
329B70:  BNE             loc_329BA4
329B72:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329B7C)
329B74:  ADD.W           R1, R12, R1,LSL#3
329B78:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329B7A:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
329B7C:  ADD             R1, R0
329B7E:  MOV             R0, R1
329B80:  POP             {R4,R5,R7,PC}
329B82:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329B8C)
329B84:  ADD.W           R3, R1, R12
329B88:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329B8A:  LDR             R1, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
329B8C:  LDRB.W          R2, [R0,#0xFC]
329B90:  ADD.W           R0, R0, R3,LSL#2
329B94:  ADD.W           R1, R1, R3,LSL#2
329B98:  CMP             R2, #0
329B9A:  IT EQ
329B9C:  ADDEQ.W         R1, R0, #0x3C ; '<'
329BA0:  MOV             R0, R1; jumptable 00329A4C default case, cases 4-6,9,14,15
329BA2:  POP             {R4,R5,R7,PC}
329BA4:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329BAE)
329BA6:  ADD.W           R1, R12, R1,LSL#2
329BAA:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329BAC:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
329BAE:  ADD             R1, R0
329BB0:  MOV             R0, R1
329BB2:  POP             {R4,R5,R7,PC}
