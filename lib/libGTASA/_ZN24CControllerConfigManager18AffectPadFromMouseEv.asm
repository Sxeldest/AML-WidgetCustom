; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager18AffectPadFromMouseEv
; Address            : 0x3E8934 - 0x3E89C0
; =========================================================

3E8934:  PUSH            {R4-R7,LR}
3E8936:  ADD             R7, SP, #0xC
3E8938:  PUSH.W          {R8-R11}
3E893C:  SUB             SP, SP, #4
3E893E:  MOVW            R1, #0x3920
3E8942:  ADDS            R6, R0, R1
3E8944:  MOVW            R1, #0x3EE0
3E8948:  ADD.W           R8, R0, R1
3E894C:  ADD.W           R9, R0, #0x3DC0
3E8950:  LDR             R0, =(gMobileMenu_ptr - 0x3E895A)
3E8952:  MOV.W           R10, #0
3E8956:  ADD             R0, PC; gMobileMenu_ptr
3E8958:  LDR.W           R11, [R0]; gMobileMenu
3E895C:  LDR.W           R4, [R6,R10]
3E8960:  MOV             R1, R4
3E8962:  BLX             j__ZN24CControllerConfigManager20GetIsMouseButtonDownE10RsKeyCodes; CControllerConfigManager::GetIsMouseButtonDown(RsKeyCodes)
3E8966:  MOV             R1, R4
3E8968:  BLX             j__ZN24CControllerConfigManager18GetIsMouseButtonUpE10RsKeyCodes; CControllerConfigManager::GetIsMouseButtonUp(RsKeyCodes)
3E896C:  CMP             R0, #1
3E896E:  BNE             loc_3E89AE
3E8970:  MOVS            R0, #0; this
3E8972:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E8976:  MOV             R5, R0
3E8978:  CBZ             R4, loc_3E89AE
3E897A:  MOVS            R0, #0; this
3E897C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E8980:  CBZ             R0, loc_3E89AE
3E8982:  LDR.W           R0, [R11,#(dword_6E0090 - 0x6E006C)]
3E8986:  CMP             R0, #0
3E8988:  ITT EQ
3E898A:  LDREQ.W         R0, [R11,#(dword_6E0098 - 0x6E006C)]
3E898E:  CMPEQ           R0, #0
3E8990:  BNE             loc_3E89AE
3E8992:  LDR.W           R0, [R8]
3E8996:  CMP             R0, R4
3E8998:  ITT EQ
3E899A:  MOVEQ           R0, #0
3E899C:  STRHEQ.W        R0, [R5,#0x104]
3E89A0:  LDR.W           R0, [R9]
3E89A4:  CMP             R0, R4
3E89A6:  ITT EQ
3E89A8:  MOVEQ           R0, #0
3E89AA:  STRHEQ.W        R0, [R5,#0x108]
3E89AE:  ADD.W           R10, R10, #0x20 ; ' '
3E89B2:  CMP.W           R10, #0x16C0
3E89B6:  BNE             loc_3E895C
3E89B8:  ADD             SP, SP, #4
3E89BA:  POP.W           {R8-R11}
3E89BE:  POP             {R4-R7,PC}
