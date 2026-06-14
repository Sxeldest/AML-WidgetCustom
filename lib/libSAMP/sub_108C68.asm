; =========================================================
; Game Engine Function: sub_108C68
; Address            : 0x108C68 - 0x108CAC
; =========================================================

108C68:  CMP             R0, #0xC7
108C6A:  IT HI
108C6C:  BXHI            LR
108C6E:  PUSH            {R4-R7,LR}
108C70:  ADD             R7, SP, #0x14+var_8
108C72:  PUSH.W          {R11}
108C76:  LDR             R5, =(unk_2629D0 - 0x108C82)
108C78:  MOV             R4, R0
108C7A:  LDR             R1, =(unk_262908 - 0x108C84)
108C7C:  MOVS            R6, #0
108C7E:  ADD             R5, PC; unk_2629D0
108C80:  ADD             R1, PC; unk_262908
108C82:  LDR.W           R0, [R5,R0,LSL#2]
108C86:  STRB            R6, [R1,R4]
108C88:  CBZ             R0, loc_108C9E
108C8A:  LDR             R1, =(off_23494C - 0x108C98)
108C8C:  MOV             R2, #0x1DB765
108C94:  ADD             R1, PC; off_23494C
108C96:  LDR             R1, [R1]; dword_23DF24
108C98:  LDR             R1, [R1]
108C9A:  ADD             R1, R2
108C9C:  BLX             R1
108C9E:  STR.W           R6, [R5,R4,LSL#2]
108CA2:  POP.W           {R11}
108CA6:  POP.W           {R4-R7,LR}
108CAA:  BX              LR
