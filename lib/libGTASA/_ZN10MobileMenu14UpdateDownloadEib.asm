; =========================================================
; Game Engine Function: _ZN10MobileMenu14UpdateDownloadEib
; Address            : 0x296E8C - 0x296F82
; =========================================================

296E8C:  PUSH            {R4-R7,LR}
296E8E:  ADD             R7, SP, #0xC
296E90:  PUSH.W          {R8-R10}
296E94:  MOV             R4, R0
296E96:  LDR             R0, [R4,#0x2C]
296E98:  CBZ             R0, loc_296EA0
296E9A:  POP.W           {R8-R10}
296E9E:  POP             {R4-R7,PC}
296EA0:  CMP             R2, #1
296EA2:  BNE             loc_296ED2
296EA4:  LDR             R0, [R4,#0x24]
296EA6:  CBZ             R0, loc_296EEA
296EA8:  CMP             R0, #1
296EAA:  BNE             loc_296EDE
296EAC:  LDR             R0, [R4,#0x28]
296EAE:  MOVS            R1, #0
296EB0:  LDR             R0, [R0]
296EB2:  STR             R1, [R4,#0x24]
296EB4:  CBZ             R0, loc_296EEA
296EB6:  LDR             R1, [R0]
296EB8:  LDR             R1, [R1,#4]
296EBA:  BLX             R1
296EBC:  LDR             R0, [R4,#0x24]
296EBE:  CBZ             R0, loc_296EEA
296EC0:  LDR             R1, [R4,#0x28]
296EC2:  ADD.W           R0, R1, R0,LSL#2
296EC6:  LDR.W           R0, [R0,#-4]
296ECA:  LDR             R1, [R0]
296ECC:  LDR             R1, [R1,#0x10]
296ECE:  BLX             R1
296ED0:  B               loc_296EEA
296ED2:  LDR             R0, [R4,#0x28]
296ED4:  LDR             R0, [R0]
296ED6:  STR             R1, [R0,#0x44]
296ED8:  POP.W           {R8-R10}
296EDC:  POP             {R4-R7,PC}
296EDE:  LDR             R1, [R4,#0x28]
296EE0:  ADD.W           R0, R1, R0,LSL#2
296EE4:  LDR.W           R0, [R0,#-8]
296EE8:  STR             R0, [R4,#0x2C]
296EEA:  MOVS            R0, #0x58 ; 'X'; unsigned int
296EEC:  BLX             _Znwj; operator new(uint)
296EF0:  MOVS            R1, #0; bool
296EF2:  MOVS            R2, #0; bool
296EF4:  MOV             R5, R0
296EF6:  BLX             j__ZN10FlowScreenC2Ebb; FlowScreen::FlowScreen(bool,bool)
296EFA:  LDR             R0, =(_ZTV14MainMenuScreen_ptr - 0x296F00)
296EFC:  ADD             R0, PC; _ZTV14MainMenuScreen_ptr
296EFE:  LDR             R0, [R0]; `vtable for'MainMenuScreen ...
296F00:  ADDS            R0, #8
296F02:  STR             R0, [R5]
296F04:  MOV             R0, R5; this
296F06:  BLX             j__ZN14MainMenuScreen11AddAllItemsEv; MainMenuScreen::AddAllItems(void)
296F0A:  LDR             R0, [R4,#0x2C]
296F0C:  CMP             R0, #0
296F0E:  ITT NE
296F10:  MOVNE           R0, R4; this
296F12:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
296F16:  LDRD.W          R1, R6, [R4,#0x20]
296F1A:  ADDS            R0, R6, #1
296F1C:  CMP             R1, R0
296F1E:  BCS             loc_296F64
296F20:  MOVW            R1, #0xAAAB
296F24:  LSLS            R0, R0, #2
296F26:  MOVT            R1, #0xAAAA
296F2A:  UMULL.W         R0, R1, R0, R1
296F2E:  MOVS            R0, #3
296F30:  ADD.W           R10, R0, R1,LSR#1
296F34:  MOV.W           R0, R10,LSL#2; byte_count
296F38:  BLX             malloc
296F3C:  LDR.W           R8, [R4,#0x28]
296F40:  MOV             R9, R0
296F42:  CMP.W           R8, #0
296F46:  BEQ             loc_296F5A
296F48:  LSLS            R2, R6, #2; size_t
296F4A:  MOV             R0, R9; void *
296F4C:  MOV             R1, R8; void *
296F4E:  BLX             memcpy_0
296F52:  MOV             R0, R8; p
296F54:  BLX             free
296F58:  LDR             R6, [R4,#0x24]
296F5A:  STR.W           R9, [R4,#0x28]
296F5E:  STR.W           R10, [R4,#0x20]
296F62:  B               loc_296F68
296F64:  LDR.W           R9, [R4,#0x28]
296F68:  STR.W           R5, [R9,R6,LSL#2]
296F6C:  LDR             R0, [R4,#0x24]
296F6E:  ADDS            R0, #1
296F70:  STR             R0, [R4,#0x24]
296F72:  LDR             R0, [R5]
296F74:  LDR             R1, [R0,#0x10]
296F76:  MOV             R0, R5
296F78:  POP.W           {R8-R10}
296F7C:  POP.W           {R4-R7,LR}
296F80:  BX              R1
