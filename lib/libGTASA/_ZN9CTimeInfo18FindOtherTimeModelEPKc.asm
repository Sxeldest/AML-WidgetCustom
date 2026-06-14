; =========================================================
; Game Engine Function: _ZN9CTimeInfo18FindOtherTimeModelEPKc
; Address            : 0x384D00 - 0x384DAA
; =========================================================

384D00:  PUSH            {R4-R7,LR}
384D02:  ADD             R7, SP, #0xC
384D04:  PUSH.W          {R8-R10}
384D08:  SUB             SP, SP, #0x20
384D0A:  MOV             R8, R0
384D0C:  LDR             R0, =(__stack_chk_guard_ptr - 0x384D14)
384D0E:  ADD             R5, SP, #0x38+haystack
384D10:  ADD             R0, PC; __stack_chk_guard_ptr
384D12:  LDR             R0, [R0]; __stack_chk_guard
384D14:  LDR             R0, [R0]
384D16:  STR             R0, [SP,#0x38+var_1C]
384D18:  MOV             R0, R5; char *
384D1A:  BLX             strcpy
384D1E:  ADR             R1, dword_384DB0; needle
384D20:  MOV             R0, R5; haystack
384D22:  BLX             strstr
384D26:  CBZ             R0, loc_384D32
384D28:  MOV             R1, #0x79645F
384D30:  B               loc_384D44
384D32:  ADD             R0, SP, #0x38+haystack; haystack
384D34:  ADR             R1, dword_384DB4; needle
384D36:  BLX             strstr
384D3A:  CBZ             R0, loc_384D86
384D3C:  MOV             R1, #unk_746E5F; char *
384D44:  STR             R1, [R0]
384D46:  ADD             R0, SP, #0x38+haystack; this
384D48:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
384D4C:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x384D5A)
384D4E:  MOV             R9, R0
384D50:  MOVS            R0, #0
384D52:  MOVW            R10, #0x4E1F
384D56:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
384D58:  LDR             R4, [R1]; CModelInfo::ms_modelInfoPtrs ...
384D5A:  MOVS            R1, #0
384D5C:  MOV             R5, R1
384D5E:  LDR.W           R6, [R4,R5,LSL#2]
384D62:  CBZ             R6, loc_384D78
384D64:  LDR             R0, [R6]
384D66:  LDR             R1, [R0,#0x18]
384D68:  MOV             R0, R6
384D6A:  BLX             R1
384D6C:  CBZ             R0, loc_384D76
384D6E:  LDR             R1, [R6,#4]
384D70:  CMP             R1, R9
384D72:  BNE             loc_384D78
384D74:  B               loc_384D8A
384D76:  MOVS            R0, #0
384D78:  ADDS            R1, R5, #1
384D7A:  CMP             R5, R10
384D7C:  BLT             loc_384D5C
384D7E:  MOVW            R2, #0x4E20
384D82:  CMP             R1, R2
384D84:  BNE             loc_384D8C
384D86:  MOVS            R0, #0
384D88:  B               loc_384D90
384D8A:  MOV             R1, R5
384D8C:  STRH.W          R1, [R8,#2]
384D90:  LDR             R1, =(__stack_chk_guard_ptr - 0x384D98)
384D92:  LDR             R2, [SP,#0x38+var_1C]
384D94:  ADD             R1, PC; __stack_chk_guard_ptr
384D96:  LDR             R1, [R1]; __stack_chk_guard
384D98:  LDR             R1, [R1]
384D9A:  SUBS            R1, R1, R2
384D9C:  ITTT EQ
384D9E:  ADDEQ           SP, SP, #0x20 ; ' '
384DA0:  POPEQ.W         {R8-R10}
384DA4:  POPEQ           {R4-R7,PC}
384DA6:  BLX             __stack_chk_fail
