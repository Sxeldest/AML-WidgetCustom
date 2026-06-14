; =========================================================
; Game Engine Function: sub_60820
; Address            : 0x60820 - 0x60A56
; =========================================================

60820:  PUSH            {R4-R7,LR}
60822:  ADD             R7, SP, #0xC
60824:  PUSH.W          {R8}
60828:  SUB             SP, SP, #0x28
6082A:  LDR             R0, =(byte_117514 - 0x60832)
6082C:  LDR             R1, =(__stack_chk_guard_ptr - 0x60834)
6082E:  ADD             R0, PC; byte_117514
60830:  ADD             R1, PC; __stack_chk_guard_ptr
60832:  LDR             R1, [R1]; __stack_chk_guard
60834:  LDR             R1, [R1]
60836:  STR             R1, [SP,#0x38+var_14]
60838:  LDRB            R0, [R0]
6083A:  DMB.W           ISH
6083E:  LSLS            R0, R0, #0x1F
60840:  BEQ.W           loc_60A18
60844:  LDR             R4, =(unk_117500 - 0x6084A)
60846:  ADD             R4, PC; unk_117500
60848:  MOV             R0, R4
6084A:  BL              sub_60BF6
6084E:  LDR             R1, =(aSampOrig - 0x60858); "SAMP_ORIG" ...
60850:  MOVS            R0, #4; prio
60852:  MOV             R2, R4; fmt
60854:  ADD             R1, PC; "SAMP_ORIG"
60856:  BLX             __android_log_print
6085A:  LDR             R0, =(off_114AA8 - 0x6086C)
6085C:  MOV             R8, #0x952CB0
60864:  MOV.W           R1, #0x1000
60868:  ADD             R0, PC; off_114AA8
6086A:  MOVS            R2, #7
6086C:  LDR             R5, [R0]; dword_1A4404
6086E:  LDR             R0, [R5]
60870:  ADD.W           R4, R0, R8
60874:  MOV             R0, R4
60876:  BL              sub_AF9C0
6087A:  CBZ             R0, loc_6088A
6087C:  MOV             R0, R4
6087E:  MOV.W           R1, #0x1000
60882:  MOVS            R2, #3
60884:  BL              sub_AF9C0
60888:  B               loc_6089A
6088A:  LDR             R1, =(aMemory - 0x60896); "Memory" ...
6088C:  MOVS            R0, #4; prio
6088E:  LDR             R2, =(aProtectaddrPro - 0x60898); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
60890:  MOV             R3, R4
60892:  ADD             R1, PC; "Memory"
60894:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
60896:  BLX             __android_log_print
6089A:  LDR             R0, =(dword_1174B4 - 0x608A4)
6089C:  MOVS            R2, #7
6089E:  LDR             R1, [R5]
608A0:  ADD             R0, PC; dword_1174B4
608A2:  ADD.W           R4, R1, R8
608A6:  MOV.W           R1, #0x1000
608AA:  STR             R4, [R0]
608AC:  MOV             R0, R4
608AE:  BL              sub_AF9C0
608B2:  CBZ             R0, loc_608C2
608B4:  MOV             R0, R4
608B6:  MOV.W           R1, #0x1000
608BA:  MOVS            R2, #3
608BC:  BL              sub_AF9C0
608C0:  B               loc_608D2
608C2:  LDR             R1, =(aMemory - 0x608CE); "Memory" ...
608C4:  MOVS            R0, #4; prio
608C6:  LDR             R2, =(aProtectaddrPro - 0x608D0); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
608C8:  MOV             R3, R4
608CA:  ADD             R1, PC; "Memory"
608CC:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
608CE:  BLX             __android_log_print
608D2:  LDR             R1, =(dword_1174BC - 0x608E4)
608D4:  MOVW            R6, #0x6A90
608D8:  LDR             R2, =(dword_1174B0 - 0x608E8)
608DA:  MOVT            R6, #0xA2
608DE:  LDR             R3, =(dword_1174D4 - 0x608EC)
608E0:  ADD             R1, PC; dword_1174BC
608E2:  LDR             R0, =(dword_1174B8 - 0x608EE)
608E4:  ADD             R2, PC; dword_1174B0
608E6:  LDR             R4, [R5]
608E8:  ADD             R3, PC; dword_1174D4
608EA:  ADD             R0, PC; dword_1174B8
608EC:  ADD             R6, R4
608EE:  MOV             R12, R0
608F0:  LDR             R0, =(dword_1174C0 - 0x6090C)
608F2:  STR             R6, [R1]
608F4:  ADD.W           R1, R4, #0x960000
608F8:  ADD.W           R6, R1, #0xB500
608FC:  LDR             R1, =(sub_603B4+1 - 0x60924)
608FE:  STR             R6, [R2]
60900:  MOV             R2, #0x678854
60908:  ADD             R0, PC; dword_1174C0
6090A:  ADDS            R6, R4, R2
6090C:  LDR             R2, =(off_1174C4 - 0x60926)
6090E:  STR             R6, [R3]
60910:  ADD.W           R3, R8, R4
60914:  ADDS            R6, R3, #4
60916:  ADD.W           R3, R3, #0x240
6091A:  STR             R3, [R0]
6091C:  ADD.W           R0, R4, #0x670000
60920:  ADD             R1, PC; sub_603B4
60922:  ADD             R2, PC; off_1174C4
60924:  ADD.W           R0, R0, #0x2880
60928:  STR.W           R6, [R12]
6092C:  BL              sub_60B0C
60930:  LDR             R0, [R5]
60932:  MOVW            R4, #0xF9D0
60936:  LDR             R1, =(sub_604C8+1 - 0x60944)
60938:  MOVT            R4, #0x66 ; 'f'
6093C:  LDR             R2, =(off_1174C8 - 0x60946)
6093E:  ADD             R0, R4
60940:  ADD             R1, PC; sub_604C8
60942:  ADD             R2, PC; off_1174C8
60944:  BL              sub_60B0C
60948:  LDR             R0, [R5]
6094A:  MOVW            R6, #0x1548
6094E:  LDR             R1, =(sub_60534+1 - 0x6095C)
60950:  MOVT            R6, #0x67 ; 'g'
60954:  LDR             R2, =(off_1174D0 - 0x60962)
60956:  ADD             R0, R6
60958:  ADD             R1, PC; sub_60534
6095A:  ADD.W           R0, R0, #0x274
6095E:  ADD             R2, PC; off_1174D0
60960:  BL              sub_60B0C
60964:  LDR             R0, [R5]
60966:  LDR             R1, =(sub_60594+1 - 0x60970)
60968:  LDR             R2, =(off_1174EC - 0x60972)
6096A:  ADD             R0, R6
6096C:  ADD             R1, PC; sub_60594
6096E:  ADD             R2, PC; off_1174EC
60970:  BL              sub_60B0C
60974:  LDR             R0, [R5]
60976:  MOVW            R3, #0x54E0
6097A:  LDR             R1, =(sub_6071C+1 - 0x60988)
6097C:  MOVT            R3, #0x67 ; 'g'
60980:  LDR             R2, =(off_1174F0 - 0x6098A)
60982:  ADD             R0, R3
60984:  ADD             R1, PC; sub_6071C
60986:  ADD             R2, PC; off_1174F0
60988:  BL              sub_60B0C
6098C:  LDR             R0, [R5]
6098E:  LDR             R1, =(sub_607E0+1 - 0x60998)
60990:  LDR             R2, =(off_1174F4 - 0x6099E)
60992:  ADD             R0, R4
60994:  ADD             R1, PC; sub_607E0
60996:  ADD.W           R0, R0, #0x870
6099A:  ADD             R2, PC; off_1174F4
6099C:  BL              sub_60B0C
609A0:  LDR             R0, [R5]
609A2:  MOV             R2, #0x557FC6
609AA:  VMOV.I32        Q8, #0
609AE:  ADDS            R4, R0, R2
609B0:  ADD             R1, SP, #0x38+var_28
609B2:  MOV             R0, R4
609B4:  VST1.64         {D16-D17}, [R1]
609B8:  BLX             dladdr
609BC:  CBZ             R0, loc_609F0
609BE:  LDRD.W          R0, R12, [SP,#0x38+var_28]
609C2:  LDRD.W          R5, LR, [SP,#0x38+var_20]
609C6:  LDR             R1, =(aMemory - 0x609D2); "Memory" ...
609C8:  CMP             R0, #0
609CA:  LDR             R2, =(aHookingS0xXFro - 0x609D6); "Hooking %s (0x%X) from %s (0x%X)" ...
609CC:  LDR             R3, =(aUnknownSymbol - 0x609D8); "unknown symbol" ...
609CE:  ADD             R1, PC; "Memory"
609D0:  LDR             R6, =(aUnknownFile - 0x609DA); "unknown file" ...
609D2:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
609D4:  ADD             R3, PC; "unknown symbol"
609D6:  ADD             R6, PC; "unknown file"
609D8:  IT NE
609DA:  MOVNE           R6, R0
609DC:  MOVS            R0, #4; prio
609DE:  STRD.W          LR, R6, [SP,#0x38+var_38]
609E2:  CMP             R5, #0
609E4:  STR.W           R12, [SP,#0x38+var_30]
609E8:  IT NE
609EA:  MOVNE           R3, R5
609EC:  BLX             __android_log_print
609F0:  LDR             R1, =(sub_604FC+1 - 0x609FA)
609F2:  ADDS            R0, R4, #1
609F4:  LDR             R2, =(off_1174CC - 0x609FC)
609F6:  ADD             R1, PC; sub_604FC
609F8:  ADD             R2, PC; off_1174CC
609FA:  BLX             DobbyHook
609FE:  LDR             R0, [SP,#0x38+var_14]
60A00:  LDR             R1, =(__stack_chk_guard_ptr - 0x60A06)
60A02:  ADD             R1, PC; __stack_chk_guard_ptr
60A04:  LDR             R1, [R1]; __stack_chk_guard
60A06:  LDR             R1, [R1]
60A08:  CMP             R1, R0
60A0A:  ITTT EQ
60A0C:  ADDEQ           SP, SP, #0x28 ; '('
60A0E:  POPEQ.W         {R8}
60A12:  POPEQ           {R4-R7,PC}
60A14:  BLX             __stack_chk_fail
60A18:  LDR             R0, =(byte_117514 - 0x60A1E)
60A1A:  ADD             R0, PC; byte_117514 ; __guard *
60A1C:  BLX             j___cxa_guard_acquire
60A20:  CMP             R0, #0
60A22:  BEQ.W           loc_60844
60A26:  LDR             R1, =(unk_117500 - 0x60A36)
60A28:  ADR             R0, dword_60A60
60A2A:  VLD1.64         {D16-D17}, [R0@128]
60A2E:  MOVW            R6, #0x7229
60A32:  ADD             R1, PC; unk_117500 ; obj
60A34:  MOVT            R6, #0x5A73
60A38:  LDR             R0, =(sub_60BE6+1 - 0x60A46)
60A3A:  LDR             R2, =(off_110560 - 0x60A48)
60A3C:  MOV             R3, R1
60A3E:  VST1.8          {D16-D17}, [R3@128]!
60A42:  ADD             R0, PC; sub_60BE6 ; lpfunc
60A44:  ADD             R2, PC; off_110560 ; lpdso_handle
60A46:  STR             R6, [R3]
60A48:  BLX             __cxa_atexit
60A4C:  LDR             R0, =(byte_117514 - 0x60A52)
60A4E:  ADD             R0, PC; byte_117514 ; __guard *
60A50:  BLX             j___cxa_guard_release
60A54:  B               loc_60844
