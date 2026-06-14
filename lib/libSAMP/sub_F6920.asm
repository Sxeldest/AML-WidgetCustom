; =========================================================
; Game Engine Function: sub_F6920
; Address            : 0xF6920 - 0xF6A86
; =========================================================

F6920:  PUSH            {R4-R7,LR}
F6922:  ADD             R7, SP, #0xC
F6924:  PUSH.W          {R8-R10}
F6928:  MOV             R9, R1
F692A:  MOV             R10, R0
F692C:  BLX             strcmp
F6930:  CBZ             R0, loc_F698A
F6932:  LDR             R0, =(byte_2402B0 - 0xF6938)
F6934:  ADD             R0, PC; byte_2402B0
F6936:  LDRB            R0, [R0]
F6938:  DMB.W           ISH
F693C:  LSLS            R0, R0, #0x1F
F693E:  BEQ             loc_F6992
F6940:  LDR             R0, =(unk_2401F0 - 0xF6948)
F6942:  MOVS            R6, #0
F6944:  ADD             R0, PC; unk_2401F0
F6946:  MOV             R8, R0
F6948:  LDRB.W          R0, [R8,R6]
F694C:  ADD.W           R5, R8, R6
F6950:  LDR             R4, [R5,#8]
F6952:  LSLS            R0, R0, #0x1F
F6954:  IT EQ
F6956:  ADDEQ           R4, R5, #1
F6958:  MOV             R0, R9; haystack
F695A:  MOV             R1, R4; needle
F695C:  BLX             strstr
F6960:  CBZ             R0, loc_F6980
F6962:  MOV             R0, R10; haystack
F6964:  MOV             R1, R4; needle
F6966:  BLX             strstr
F696A:  CBNZ            R0, loc_F698A
F696C:  LDRB            R0, [R5,#0xC]
F696E:  LDR             R1, [R5,#0x14]
F6970:  LSLS            R0, R0, #0x1F
F6972:  IT EQ
F6974:  ADDEQ.W         R1, R5, #0xD; s2
F6978:  MOV             R0, R10; s1
F697A:  BLX             strcmp
F697E:  CBZ             R0, loc_F698A
F6980:  ADDS            R6, #0x18
F6982:  CMP             R6, #0xC0
F6984:  BNE             loc_F6948
F6986:  MOVS            R0, #0
F6988:  B               loc_F698C
F698A:  MOVS            R0, #1
F698C:  POP.W           {R8-R10}
F6990:  POP             {R4-R7,PC}
F6992:  LDR             R0, =(byte_2402B0 - 0xF6998)
F6994:  ADD             R0, PC; byte_2402B0 ; __guard *
F6996:  BLX             j___cxa_guard_acquire
F699A:  CMP             R0, #0
F699C:  BEQ             loc_F6940
F699E:  LDR             R4, =(unk_2401F0 - 0xF69A6)
F69A0:  LDR             R1, =(aWad - 0xF69A8); "_wad" ...
F69A2:  ADD             R4, PC; unk_2401F0
F69A4:  ADD             R1, PC; "_wad"
F69A6:  MOV             R0, R4; int
F69A8:  BL              sub_DC6DC
F69AC:  LDR             R1, =(aWad_0 - 0xF69B2); "wad" ...
F69AE:  ADD             R1, PC; "wad"
F69B0:  ADD.W           R0, R4, #0xC; int
F69B4:  BL              sub_DC6DC
F69B8:  LDR             R1, =(aWnd - 0xF69BE); "_wnd" ...
F69BA:  ADD             R1, PC; "_wnd"
F69BC:  ADD.W           R8, R4, #0x18
F69C0:  MOV             R0, R8; int
F69C2:  BL              sub_DC6DC
F69C6:  LDR             R1, =(aWnd_0 - 0xF69CC); "wnd" ...
F69C8:  ADD             R1, PC; "wnd"
F69CA:  ADD.W           R0, R4, #0x24 ; '$'; int
F69CE:  BL              sub_DC6DC
F69D2:  LDR             R1, =(aWdorF - 0xF69D8); "_wdor_f" ...
F69D4:  ADD             R1, PC; "_wdor_f"
F69D6:  ADD.W           R8, R4, #0x30 ; '0'
F69DA:  MOV             R0, R8; int
F69DC:  BL              sub_DC6DC
F69E0:  LDR             R1, =(aWdorF_0 - 0xF69E6); "wdor_f" ...
F69E2:  ADD             R1, PC; "wdor_f"
F69E4:  ADD.W           R0, R4, #0x3C ; '<'; int
F69E8:  BL              sub_DC6DC
F69EC:  LDR             R1, =(aWdorR - 0xF69F2); "_wdor_r" ...
F69EE:  ADD             R1, PC; "_wdor_r"
F69F0:  ADD.W           R8, R4, #0x48 ; 'H'
F69F4:  MOV             R0, R8; int
F69F6:  BL              sub_DC6DC
F69FA:  LDR             R1, =(aWdorR_0 - 0xF6A00); "wdor_r" ...
F69FC:  ADD             R1, PC; "wdor_r"
F69FE:  ADD.W           R0, R4, #0x54 ; 'T'; int
F6A02:  BL              sub_DC6DC
F6A06:  LDR             R1, =(aWndRr - 0xF6A0C); "_wnd_rr" ...
F6A08:  ADD             R1, PC; "_wnd_rr"
F6A0A:  ADD.W           R8, R4, #0x60 ; '`'
F6A0E:  MOV             R0, R8; int
F6A10:  BL              sub_DC6DC
F6A14:  LDR             R1, =(aWndRr_0 - 0xF6A1A); "wnd_rr" ...
F6A16:  ADD             R1, PC; "wnd_rr"
F6A18:  ADD.W           R0, R4, #0x6C ; 'l'; int
F6A1C:  BL              sub_DC6DC
F6A20:  LDR             R1, =(aWndfrl - 0xF6A26); "_wndfrl" ...
F6A22:  ADD             R1, PC; "_wndfrl"
F6A24:  ADD.W           R8, R4, #0x78 ; 'x'
F6A28:  MOV             R0, R8; int
F6A2A:  BL              sub_DC6DC
F6A2E:  LDR             R1, =(aWndfrl_0 - 0xF6A34); "wndfrl" ...
F6A30:  ADD             R1, PC; "wndfrl"
F6A32:  ADD.W           R0, R4, #0x84; int
F6A36:  BL              sub_DC6DC
F6A3A:  LDR             R1, =(aWndrrl - 0xF6A40); "_wndrrl" ...
F6A3C:  ADD             R1, PC; "_wndrrl"
F6A3E:  ADD.W           R8, R4, #0x90
F6A42:  MOV             R0, R8; int
F6A44:  BL              sub_DC6DC
F6A48:  LDR             R1, =(aWndrrl_0 - 0xF6A4E); "wndrrl" ...
F6A4A:  ADD             R1, PC; "wndrrl"
F6A4C:  ADD.W           R0, R4, #0x9C; int
F6A50:  BL              sub_DC6DC
F6A54:  LDR             R1, =(aWsup - 0xF6A5A); "_wsup" ...
F6A56:  ADD             R1, PC; "_wsup"
F6A58:  ADD.W           R8, R4, #0xA8
F6A5C:  MOV             R0, R8; int
F6A5E:  BL              sub_DC6DC
F6A62:  LDR             R1, =(aWsup_0 - 0xF6A68); "wsup" ...
F6A64:  ADD             R1, PC; "wsup"
F6A66:  ADD.W           R0, R4, #0xB4; int
F6A6A:  BL              sub_DC6DC
F6A6E:  LDR             R0, =(sub_F6854+1 - 0xF6A78)
F6A70:  MOVS            R1, #0; obj
F6A72:  LDR             R2, =(off_22A540 - 0xF6A7A)
F6A74:  ADD             R0, PC; sub_F6854 ; lpfunc
F6A76:  ADD             R2, PC; off_22A540 ; lpdso_handle
F6A78:  BLX             __cxa_atexit
F6A7C:  LDR             R0, =(byte_2402B0 - 0xF6A82)
F6A7E:  ADD             R0, PC; byte_2402B0 ; __guard *
F6A80:  BLX             j___cxa_guard_release
F6A84:  B               loc_F6940
