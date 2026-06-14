; =========================================================
; Game Engine Function: sub_154C6C
; Address            : 0x154C6C - 0x154CCA
; =========================================================

154C6C:  PUSH            {R4,R5,R7,LR}
154C6E:  ADD             R7, SP, #8
154C70:  SUB             SP, SP, #0x10
154C72:  MOV             R5, R0
154C74:  LDR             R0, [R0,#0x5C]
154C76:  CBZ             R0, loc_154C7C
154C78:  MOVS            R4, #1
154C7A:  B               loc_154CC4
154C7C:  MOVS            R0, #0
154C7E:  STRD.W          R0, R0, [SP,#0x18+var_18]
154C82:  STR             R0, [SP,#0x18+var_10]
154C84:  MOVS            R0, #0x20 ; ' '; unsigned int
154C86:  BLX             j__Znwj; operator new(uint)
154C8A:  VMOV.I32        Q8, #0
154C8E:  STR             R0, [R5,#0x5C]
154C90:  VST1.64         {D16-D17}, [R0]!
154C94:  VST1.64         {D16-D17}, [R0]
154C98:  MOV             R0, SP
154C9A:  ADDS            R1, R0, #1
154C9C:  MOV             R0, R5
154C9E:  MOVS            R2, #0
154CA0:  BL              sub_154CDC
154CA4:  MOV             R4, R0
154CA6:  CBZ             R0, loc_154CB6
154CA8:  LDR             R0, [R5,#0x5C]
154CAA:  LDR             R0, [R0]
154CAC:  LDR             R1, [R0]
154CAE:  LDR             R2, [R1,#0x14]
154CB0:  MOV.W           R1, #0x3F800000
154CB4:  BLX             R2
154CB6:  LDRB.W          R0, [SP,#0x18+var_18]
154CBA:  LSLS            R0, R0, #0x1F
154CBC:  BEQ             loc_154CC4
154CBE:  LDR             R0, [SP,#0x18+var_10]; void *
154CC0:  BLX             j__ZdlPv; operator delete(void *)
154CC4:  MOV             R0, R4
154CC6:  ADD             SP, SP, #0x10
154CC8:  POP             {R4,R5,R7,PC}
