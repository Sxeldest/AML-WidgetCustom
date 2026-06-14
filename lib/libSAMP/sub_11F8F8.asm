; =========================================================
; Game Engine Function: sub_11F8F8
; Address            : 0x11F8F8 - 0x11FA90
; =========================================================

11F8F8:  PUSH            {R4-R7,LR}
11F8FA:  ADD             R7, SP, #0xC
11F8FC:  PUSH.W          {R8,R9,R11}
11F900:  MOV             R8, R0
11F902:  LDR             R0, =(off_23494C - 0x11F90E)
11F904:  LDR             R1, =(off_234B5C - 0x11F914)
11F906:  MOVW            R2, #0x7BF4
11F90A:  ADD             R0, PC; off_23494C
11F90C:  MOVW            R9, #0x7E48
11F910:  ADD             R1, PC; off_234B5C
11F912:  MOVT            R2, #0x98
11F916:  LDR             R4, [R0]; dword_23DF24
11F918:  MOVT            R9, #0x66 ; 'f'
11F91C:  LDR             R0, [R1]; dword_381A94
11F91E:  LDR             R1, [R4]
11F920:  LDR             R5, =(sub_11F704+1 - 0x11F930)
11F922:  LDR             R6, =(unk_2638A4 - 0x11F932)
11F924:  ADD             R2, R1
11F926:  STR             R2, [R0]
11F928:  ADD.W           R0, R1, R9
11F92C:  ADD             R5, PC; sub_11F704
11F92E:  ADD             R6, PC; unk_2638A4
11F930:  SUB.W           R0, R0, #0x184
11F934:  MOV             R1, R5
11F936:  MOV             R2, R6
11F938:  BL              sub_164222
11F93C:  LDR             R0, [R4]
11F93E:  MOV             R1, R5
11F940:  MOV             R2, R6
11F942:  ADD             R0, R9
11F944:  BL              sub_164222
11F948:  LDR             R0, [R4]
11F94A:  MOV             R1, R5
11F94C:  MOV             R2, R6
11F94E:  ADD             R0, R9
11F950:  ADDS            R0, #0x68 ; 'h'
11F952:  BL              sub_164222
11F956:  LDR             R0, [R4]
11F958:  MOV             R1, R5
11F95A:  MOV             R2, R6
11F95C:  ADD             R0, R9
11F95E:  ADDS            R0, #0xD0
11F960:  BL              sub_164222
11F964:  LDR             R0, [R4]
11F966:  MOV             R1, R5
11F968:  MOV             R2, R6
11F96A:  ADD.W           R0, R0, #0x668000
11F96E:  ADD.W           R0, R0, #0x460
11F972:  BL              sub_164222
11F976:  LDR             R0, [R4]
11F978:  MOV             R9, #0x668AAC
11F980:  MOV             R1, R5
11F982:  ADD             R0, R9
11F984:  MOV             R2, R6
11F986:  BL              sub_164222
11F98A:  LDR             R0, [R4]
11F98C:  MOV             R1, R5
11F98E:  MOV             R2, R6
11F990:  ADD             R0, R9
11F992:  ADDS            R0, #0x74 ; 't'
11F994:  BL              sub_164222
11F998:  LDR             R0, [R4]
11F99A:  MOV             R1, R5
11F99C:  MOV             R2, R6
11F99E:  ADD             R0, R9
11F9A0:  ADD.W           R0, R0, #0x14C
11F9A4:  BL              sub_164222
11F9A8:  LDR             R0, [R4]
11F9AA:  MOV             R1, R5
11F9AC:  MOV             R2, R6
11F9AE:  ADD             R0, R9
11F9B0:  ADD.W           R0, R0, #0x1C4
11F9B4:  BL              sub_164222
11F9B8:  LDR             R0, [R4]
11F9BA:  MOV             R9, #0x669290
11F9C2:  MOV             R1, R5
11F9C4:  ADD             R0, R9
11F9C6:  MOV             R2, R6
11F9C8:  BL              sub_164222
11F9CC:  LDR             R0, [R4]
11F9CE:  MOV             R1, R5
11F9D0:  MOV             R2, R6
11F9D2:  ADD             R0, R9
11F9D4:  ADD.W           R0, R0, #0x4400
11F9D8:  BL              sub_164222
11F9DC:  LDR             R0, [R4]
11F9DE:  MOV             R9, #0x66D808
11F9E6:  MOV             R1, R5
11F9E8:  ADD             R0, R9
11F9EA:  MOV             R2, R6
11F9EC:  BL              sub_164222
11F9F0:  LDR             R0, [R4]
11F9F2:  MOV             R1, R5
11F9F4:  MOV             R2, R6
11F9F6:  ADD             R0, R9
11F9F8:  ADD.W           R0, R0, #0x118
11F9FC:  BL              sub_164222
11FA00:  LDR             R0, [R4]
11FA02:  MOV             R1, R5
11FA04:  MOV             R2, R6
11FA06:  ADD             R0, R9
11FA08:  ADD.W           R0, R0, #0x230
11FA0C:  BL              sub_164222
11FA10:  LDR             R0, [R4]
11FA12:  MOV             R1, R5
11FA14:  MOV             R2, R6
11FA16:  ADD             R0, R9
11FA18:  ADD.W           R0, R0, #0x344
11FA1C:  BL              sub_164222
11FA20:  LDR             R0, [R4]
11FA22:  MOV             R9, #0x66DC74
11FA2A:  MOV             R1, R5
11FA2C:  ADD             R0, R9
11FA2E:  MOV             R2, R6
11FA30:  BL              sub_164222
11FA34:  LDR             R0, [R4]
11FA36:  MOV             R1, R5
11FA38:  MOV             R2, R6
11FA3A:  ADD             R0, R9
11FA3C:  ADD.W           R0, R0, #0x128
11FA40:  BL              sub_164222
11FA44:  LDR             R0, [R4]
11FA46:  MOV             R1, R5
11FA48:  MOV             R2, R6
11FA4A:  ADD             R0, R9
11FA4C:  ADD.W           R0, R0, #0x250
11FA50:  BL              sub_164222
11FA54:  LDR             R0, [R4]
11FA56:  MOV             R1, R5
11FA58:  MOV             R2, R6
11FA5A:  ADD             R0, R9
11FA5C:  ADD.W           R0, R0, #0x378
11FA60:  BL              sub_164222
11FA64:  LDR             R0, [R4]
11FA66:  MOV             R1, R5
11FA68:  MOV             R2, R6
11FA6A:  ADD             R0, R9
11FA6C:  ADD.W           R0, R0, #0x4A0
11FA70:  BL              sub_164222
11FA74:  LDR             R0, [R4]
11FA76:  MOV             R1, #0x66E228
11FA7E:  MOV             R2, R6
11FA80:  ADD             R0, R1
11FA82:  MOV             R1, R5
11FA84:  BL              sub_164222
11FA88:  MOV             R0, R8
11FA8A:  POP.W           {R8,R9,R11}
11FA8E:  POP             {R4-R7,PC}
