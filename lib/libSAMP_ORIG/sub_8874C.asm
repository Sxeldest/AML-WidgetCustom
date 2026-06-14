; =========================================================
; Game Engine Function: sub_8874C
; Address            : 0x8874C - 0x88826
; =========================================================

8874C:  PUSH            {R4-R7,LR}
8874E:  ADD             R7, SP, #0xC
88750:  PUSH.W          {R8-R11}
88754:  SUB             SP, SP, #4
88756:  MOV             R8, R3
88758:  MOV             R4, R2
8875A:  CMP             R2, #0
8875C:  ITT NE
8875E:  MOVNE           R2, #0
88760:  STRNE           R2, [R4]
88762:  BLX             fopen
88766:  CBZ             R0, loc_8877A
88768:  MOVS            R1, #0; off
8876A:  MOVS            R2, #2; whence
8876C:  MOV             R6, R0
8876E:  BLX             fseek
88772:  CBZ             R0, loc_88786
88774:  MOV             R0, R6; stream
88776:  BLX             fclose
8877A:  MOVS            R5, #0
8877C:  MOV             R0, R5
8877E:  ADD             SP, SP, #4
88780:  POP.W           {R8-R11}
88784:  POP             {R4-R7,PC}
88786:  MOV             R0, R6; stream
88788:  BLX             ftell
8878C:  MOV             R9, R0
8878E:  ADDS            R0, #1
88790:  BEQ             loc_88774
88792:  MOV             R0, R6; stream
88794:  MOVS            R1, #0; off
88796:  MOVS            R2, #0; whence
88798:  BLX             fseek
8879C:  CMP             R0, #0
8879E:  BNE             loc_88774
887A0:  LDR             R0, =(dword_1ACF68 - 0x887A6)
887A2:  ADD             R0, PC; dword_1ACF68
887A4:  LDR             R1, [R0]
887A6:  MOV             R10, R0
887A8:  ADD.W           R0, R9, R8
887AC:  CMP             R1, #0
887AE:  ITTT NE
887B0:  LDRNE.W         R2, [R1,#0x370]
887B4:  ADDNE           R2, #1
887B6:  STRNE.W         R2, [R1,#0x370]
887BA:  LDR             R1, =(dword_1ACF70 - 0x887C2)
887BC:  LDR             R2, =(off_117248 - 0x887C4)
887BE:  ADD             R1, PC; dword_1ACF70
887C0:  ADD             R2, PC; off_117248
887C2:  MOV             R11, R1
887C4:  LDR             R1, [R1]
887C6:  LDR             R2, [R2]; sub_9A720
887C8:  BLX             R2; sub_9A720
887CA:  CMP             R0, #0
887CC:  BEQ             loc_88774
887CE:  MOVS            R1, #1; size
887D0:  MOV             R2, R9; n
887D2:  MOV             R3, R6; stream
887D4:  MOV             R5, R0
887D6:  BLX             fread
887DA:  CMP             R0, R9
887DC:  BNE             loc_887FE
887DE:  CMP.W           R8, #1
887E2:  ITTT GE
887E4:  ADDGE.W         R0, R5, R9; int
887E8:  MOVGE           R1, R8; n
887EA:  BLXGE           sub_10967C
887EE:  MOV             R0, R6; stream
887F0:  BLX             fclose
887F4:  CMP             R4, #0
887F6:  IT NE
887F8:  STRNE.W         R9, [R4]
887FC:  B               loc_8877C
887FE:  MOV             R0, R6; stream
88800:  BLX             fclose
88804:  LDR.W           R0, [R10]
88808:  CMP             R0, #0
8880A:  ITTT NE
8880C:  LDRNE.W         R1, [R0,#0x370]
88810:  SUBNE           R1, #1
88812:  STRNE.W         R1, [R0,#0x370]
88816:  LDR             R0, =(off_11724C - 0x88820)
88818:  LDR.W           R1, [R11]
8881C:  ADD             R0, PC; off_11724C
8881E:  LDR             R2, [R0]; j_opus_decoder_destroy_0
88820:  MOV             R0, R5
88822:  BLX             R2; j_opus_decoder_destroy_0
88824:  B               loc_8877A
