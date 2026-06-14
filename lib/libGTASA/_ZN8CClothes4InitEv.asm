; =========================================================
; Game Engine Function: _ZN8CClothes4InitEv
; Address            : 0x4579C4 - 0x457A36
; =========================================================

4579C4:  PUSH            {R4,R5,R7,LR}
4579C6:  ADD             R7, SP, #8
4579C8:  LDR             R1, =(unk_9A74B8 - 0x4579DC)
4579CA:  MOVW            LR, #:lower16:(stru_3E008.st_value+3)
4579CE:  LDR             R0, =(dword_619090 - 0x4579DE)
4579D0:  MOV             R2, #0xFFFFFFEE
4579D4:  LDR.W           R12, =(unk_9A74B8 - 0x4579E2)
4579D8:  ADD             R1, PC; unk_9A74B8
4579DA:  ADD             R0, PC; dword_619090
4579DC:  ADDS            R1, #0x28 ; '('
4579DE:  ADD             R12, PC; unk_9A74B8
4579E0:  MOVT            LR, #:upper16:(stru_3E008.st_value+3)
4579E4:  MOV.W           R3, #0xFFFFFFFF
4579E8:  ADD.W           R5, R2, #0x12
4579EC:  MOVS            R4, #1
4579EE:  CMP             R5, R2
4579F0:  IT CS
4579F2:  MOVCS           R4, #0
4579F4:  CMP             R4, #0
4579F6:  MOV             R4, R1
4579F8:  BEQ             loc_457A0C
4579FA:  LSR.W           R4, LR, R5
4579FE:  LSLS            R4, R4, #0x1F
457A00:  MOV             R4, R1
457A02:  ITTT NE
457A04:  LDRNE           R4, [R0]
457A06:  STRNE           R3, [R1]
457A08:  ADDNE.W         R4, R12, R4,LSL#2
457A0C:  ADDS            R1, #4
457A0E:  ADDS            R0, #4
457A10:  ADDS            R2, #1; bool
457A12:  STR             R3, [R4]
457A14:  BNE             loc_4579E8
457A16:  LDR             R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x457A1E)
457A18:  MOVS            R1, #0
457A1A:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
457A1C:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
457A1E:  STR             R1, [R0]; CClothes::ms_numRuleTags
457A20:  ADR             R0, aTexdbPlayerImg; "TEXDB\\PLAYER.IMG"
457A22:  MOVS            R1, #0; char *
457A24:  BLX             j__ZN10CStreaming14AddImageToListEPKcb; CStreaming::AddImageToList(char const*,bool)
457A28:  LDR             R1, =(_ZN8CClothes17ms_clothesImageIdE_ptr - 0x457A2E)
457A2A:  ADD             R1, PC; _ZN8CClothes17ms_clothesImageIdE_ptr
457A2C:  LDR             R1, [R1]; CClothes::ms_clothesImageId ...
457A2E:  STR             R0, [R1]; CClothes::ms_clothesImageId
457A30:  POP.W           {R4,R5,R7,LR}
457A34:  B               _ZN8CClothes15LoadClothesFileEv; CClothes::LoadClothesFile(void)
