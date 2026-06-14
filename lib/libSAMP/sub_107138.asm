; =========================================================
; Game Engine Function: sub_107138
; Address            : 0x107138 - 0x10714E
; =========================================================

107138:  PUSH            {R7,LR}
10713A:  MOV             R7, SP
10713C:  LDR             R0, =(unk_25C9E8 - 0x107148)
10713E:  MOV.W           R2, #0xFA0; n
107142:  LDR             R1, =(unk_237E80 - 0x10714A)
107144:  ADD             R0, PC; unk_25C9E8 ; dest
107146:  ADD             R1, PC; unk_237E80 ; src
107148:  BLX             j_memcpy
10714C:  POP             {R7,PC}
