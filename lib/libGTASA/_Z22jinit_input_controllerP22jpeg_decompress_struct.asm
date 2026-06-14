; =========================================================
; Game Engine Function: _Z22jinit_input_controllerP22jpeg_decompress_struct
; Address            : 0x47D3B4 - 0x47D3F4
; =========================================================

47D3B4:  PUSH            {R4-R7,LR}
47D3B6:  ADD             R7, SP, #0xC
47D3B8:  PUSH.W          {R11}
47D3BC:  MOV             R4, R0
47D3BE:  MOVS            R1, #0
47D3C0:  LDR             R0, [R4,#4]
47D3C2:  MOVS            R2, #0x18
47D3C4:  MOVS            R6, #0
47D3C6:  LDR             R3, [R0]
47D3C8:  MOV             R0, R4
47D3CA:  BLX             R3
47D3CC:  LDR             R2, =(sub_47D838+1 - 0x47D3D6)
47D3CE:  LDR             R5, =(sub_47D63C+1 - 0x47D3DA)
47D3D0:  LDR             R1, =(sub_47D404+1 - 0x47D3E4)
47D3D2:  ADD             R2, PC; sub_47D838
47D3D4:  LDR             R3, =(sub_47D670+1 - 0x47D3E8)
47D3D6:  ADD             R5, PC; sub_47D63C
47D3D8:  STR.W           R0, [R4,#0x190]
47D3DC:  MOVS            R4, #1
47D3DE:  STRB            R4, [R0,#0x14]
47D3E0:  ADD             R1, PC; sub_47D404
47D3E2:  STRH            R6, [R0,#0x10]
47D3E4:  ADD             R3, PC; sub_47D670
47D3E6:  STRD.W          R1, R5, [R0]
47D3EA:  STRD.W          R3, R2, [R0,#8]
47D3EE:  POP.W           {R11}
47D3F2:  POP             {R4-R7,PC}
